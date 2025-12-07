char *sub_217B2CB84(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_2811BC428, MEMORY[0x277D837D0]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2CC94(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_2811BC418, MEMORY[0x277D84A28]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_217B2CD9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_2811BC420, MEMORY[0x277D849A8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_217B2CEA4(void *result, int64_t a2, char a3, void *a4)
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
    sub_217A4AA00(0, &qword_27CB9F918, sub_217B2CFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    sub_217B2CFF0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_217B2CFF0()
{
  result = qword_27CBA3B80;
  if (!qword_27CBA3B80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CBA3B80);
  }

  return result;
}

void sub_217B2D054(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PuzzleStatsData.playDuration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PuzzleStatsData.currentStreak.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PuzzleStatsData.rankId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PuzzleStatsData.rankId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PuzzleStatsData.init(playDuration:currentStreak:rankId:puzzleModalType:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

uint64_t sub_217B2D208()
{
  v1 = 0x6172754479616C70;
  v2 = 0x64496B6E6172;
  if (*v0 != 2)
  {
    v2 = 0x6F4D656C7A7A7570;
  }

  if (*v0)
  {
    v1 = 0x53746E6572727563;
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

uint64_t sub_217B2D2A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B2DBF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B2D2C8(uint64_t a1)
{
  v2 = sub_217B2D54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2D304(uint64_t a1)
{
  v2 = sub_217B2D54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleStatsData.encode(to:)(void *a1)
{
  sub_217B2D874(0, &qword_27CB9F920, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v8 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = v8;
  HIDWORD(v12) = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2D54C();
  sub_217D89E7C();
  v22 = 0;
  v9 = v17;
  sub_217D89C5C();
  if (!v9)
  {
    v10 = BYTE4(v12);
    v21 = 1;
    sub_217D89C5C();
    v20 = 2;
    sub_217D89C0C();
    v19 = v10;
    v18 = 3;
    sub_217B2D5A0();
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B2D54C()
{
  result = qword_27CB9F928;
  if (!qword_27CB9F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F928);
  }

  return result;
}

unint64_t sub_217B2D5A0()
{
  result = qword_27CB9F930;
  if (!qword_27CB9F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F930);
  }

  return result;
}

uint64_t PuzzleStatsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B2D874(0, &qword_27CB9F938, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v25 = 1;
  v24 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2D54C();
  sub_217D89E5C();
  if (!v2)
  {
    v30 = 0;
    v10 = sub_217D89B7C();
    v25 = v11 & 1;
    v29 = 1;
    v23 = sub_217D89B7C();
    v24 = v13 & 1;
    v28 = 2;
    v14 = sub_217D89B2C();
    v16 = v15;
    v22 = v14;
    v26 = 3;
    sub_217B2D8D8();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v17 = v27;
    v18 = v25;
    v19 = v24;
    *a2 = v10;
    *(a2 + 8) = v18;
    v20 = v22;
    *(a2 + 16) = v23;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2D874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2D54C();
    v7 = a3(a1, &type metadata for PuzzleStatsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2D8D8()
{
  result = qword_27CB9F940;
  if (!qword_27CB9F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F940);
  }

  return result;
}

unint64_t sub_217B2D930()
{
  result = qword_2811C6568;
  if (!qword_2811C6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6568);
  }

  return result;
}

unint64_t sub_217B2D988()
{
  result = qword_2811C6570;
  if (!qword_2811C6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6570);
  }

  return result;
}

uint64_t sub_217B2DA0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_217B2DA68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_217B2DAF0()
{
  result = qword_27CB9F948;
  if (!qword_27CB9F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F948);
  }

  return result;
}

unint64_t sub_217B2DB48()
{
  result = qword_27CB9F950;
  if (!qword_27CB9F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F950);
  }

  return result;
}

unint64_t sub_217B2DBA0()
{
  result = qword_27CB9F958;
  if (!qword_27CB9F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F958);
  }

  return result;
}

uint64_t sub_217B2DBF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172754479616C70 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496B6E6172 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4D656C7A7A7570 && a2 == 0xEF657079546C6164)
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

uint64_t sub_217B2DE30()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F990);
  __swift_project_value_buffer(v0, qword_27CB9F990);
  return sub_217D8866C();
}

uint64_t WebEmbedFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 20);
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 20);
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 24);
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedFailureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 24);
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.contentModelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 28);
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8, &type metadata for ContentModelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B2E394()
{
  result = qword_27CB9F9B0;
  if (!qword_27CB9F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9B0);
  }

  return result;
}

unint64_t sub_217B2E3E8()
{
  result = qword_27CB9F9B8;
  if (!qword_27CB9F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9B8);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.contentModelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 28);
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8, &type metadata for ContentModelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 32);
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 32);
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedFailureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 36);
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0, &type metadata for WebEmbedFailureData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B2E79C()
{
  result = qword_27CB9F9C8;
  if (!qword_27CB9F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9C8);
  }

  return result;
}

unint64_t sub_217B2E7F0()
{
  result = qword_27CB9F9D0;
  if (!qword_27CB9F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9D0);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.webEmbedFailureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 36);
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0, &type metadata for WebEmbedFailureData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedEnvironmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 40);
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48, &type metadata for WebEmbedEnvironmentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B2E9F4()
{
  result = qword_27CB9F9E0;
  if (!qword_27CB9F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9E0);
  }

  return result;
}

unint64_t sub_217B2EA48()
{
  result = qword_27CB9F9E8;
  if (!qword_27CB9F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9E8);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.webEmbedEnvironmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 40);
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48, &type metadata for WebEmbedEnvironmentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedFailureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8, &type metadata for ContentModelData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0, &type metadata for WebEmbedFailureData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48, &type metadata for WebEmbedEnvironmentData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t WebEmbedFailureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebEmbedFailureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t WebEmbedFailureEvent.Model.contentModelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t WebEmbedFailureEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedFailureEvent.Model.webEmbedFailureData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t WebEmbedFailureEvent.Model.webEmbedEnvironmentData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 WebEmbedFailureEvent.Model.init(eventData:feedData:viewData:contentModelData:webEmbedData:webEmbedFailureData:webEmbedEnvironmentData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 8);
  v27 = *a2;
  v28 = *a4;
  v14 = *(a4 + 2);
  v15 = *a5;
  v16 = a5[1];
  v30 = a6[1];
  v31 = *a6;
  v17 = *(a6 + 4);
  v29 = *(a6 + 5);
  v32 = a7[1];
  v33 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v27;
  *(v20 + 16) = v10;
  v21 = a8 + v19[6];
  *v21 = v11;
  *(v21 + 8) = v12;
  *(v21 + 16) = v13;
  v22 = a8 + v19[7];
  *v22 = v28;
  *(v22 + 16) = v14;
  v23 = (a8 + v19[8]);
  *v23 = v15;
  v23[1] = v16;
  v24 = a8 + v19[9];
  result = v30;
  *v24 = v31;
  *(v24 + 16) = v30;
  *(v24 + 32) = v17;
  *(v24 + 40) = v29;
  v26 = (a8 + v19[10]);
  *v26 = v33;
  v26[1] = v32;
  return result;
}

uint64_t sub_217B2F25C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6174614464656566;
    if (v1 != 1)
    {
      v5 = 0x6174614477656976;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x746144746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0x6465626D45626577;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217B2F350@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B308EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B2F378(uint64_t a1)
{
  v2 = sub_217B2F834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2F3B4(uint64_t a1)
{
  v2 = sub_217B2F834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B2FED8(0, &qword_27CB9F9F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2F834();
  sub_217D89E7C();
  LOBYTE(v30) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WebEmbedFailureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = v11[2];
    *&v30 = *v11;
    *(&v30 + 1) = v12;
    v31 = v13;
    v35 = 1;
    sub_217AD1A68(v30, v12, v13);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v30, *(&v30 + 1), v31);
    v14 = (v3 + v10[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    *&v30 = v15;
    *(&v30 + 1) = v16;
    LOWORD(v31) = v14;
    v35 = 2;
    sub_217A5E790();

    sub_217D89C3C();

    v17 = (v3 + v10[7]);
    v18 = *(v17 + 2);
    v30 = *v17;
    v31 = v18;
    v35 = 3;
    sub_217B2E3E8();

    sub_217D89C3C();

    v20 = (v3 + v10[8]);
    v21 = v20[1];
    *&v30 = *v20;
    *(&v30 + 1) = v21;
    v35 = 4;
    sub_217AE89C8();

    sub_217D89CAC();

    v22 = (v3 + v10[9]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    *&v30 = *v22;
    *(&v30 + 1) = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = 5;
    sub_217B2E7F0();

    sub_217D89CAC();

    v28 = (v3 + v10[10]);
    v29 = v28[1];
    *&v30 = *v28;
    *(&v30 + 1) = v29;
    v35 = 6;
    sub_217B2EA48();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B2F834()
{
  result = qword_27CB9F9F8;
  if (!qword_27CB9F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9F8);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_217D8899C();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B2FED8(0, &qword_27CB9FA00, MEMORY[0x277D844C8]);
  v37 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2F834();
  v36 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v34;
  v31 = v11;
  LOBYTE(v38) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v35;
  sub_217D89BCC();
  v14 = v31;
  (*(v33 + 32))(v31, v13, v4);
  v42 = 1;
  sub_217A5B978();
  sub_217D89B5C();
  v30 = v4;
  v15 = v39;
  v16 = v14 + v9[5];
  *v16 = v38;
  *(v16 + 16) = v15;
  v42 = 2;
  sub_217A5E738();
  v35 = 0;
  sub_217D89B5C();
  v17 = v39;
  v18 = v14 + v9[6];
  *v18 = v38;
  *(v18 + 16) = v17;
  v42 = 3;
  sub_217B2E394();
  sub_217D89B5C();
  v19 = v39;
  v20 = v14 + v9[7];
  *v20 = v38;
  *(v20 + 16) = v19;
  v42 = 4;
  sub_217AE8974();
  sub_217D89BCC();
  v21 = *(&v38 + 1);
  v22 = (v14 + v9[8]);
  *v22 = v38;
  v22[1] = v21;
  v42 = 5;
  sub_217B2E79C();
  sub_217D89BCC();
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v14 + v9[9];
  *v26 = v38;
  *(v26 + 16) = v23;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  v42 = 6;
  sub_217B2E9F4();
  sub_217D89BCC();
  (*(v12 + 8))(v36, v37);
  v27 = *(&v38 + 1);
  v28 = (v14 + v9[10]);
  *v28 = v38;
  v28[1] = v27;
  sub_217B2FF3C(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B2FFA0(v14);
}

void sub_217B2FED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2F834();
    v7 = a3(a1, &type metadata for WebEmbedFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B2FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B2FFA0(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B300D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8, &type metadata for ContentModelData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0, &type metadata for WebEmbedFailureData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48, &type metadata for WebEmbedEnvironmentData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_217B30460(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A603DC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A603DC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217A603DC(319, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8, &type metadata for ContentModelData);
        if (v4 <= 0x3F)
        {
          sub_217A603DC(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
          if (v5 <= 0x3F)
          {
            sub_217A603DC(319, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0, &type metadata for WebEmbedFailureData);
            if (v6 <= 0x3F)
            {
              sub_217A603DC(319, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48, &type metadata for WebEmbedEnvironmentData);
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

void sub_217B306D4(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FA28, &type metadata for ContentModelData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217B307E8()
{
  result = qword_27CB9FA30;
  if (!qword_27CB9FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA30);
  }

  return result;
}

unint64_t sub_217B30840()
{
  result = qword_27CB9FA38;
  if (!qword_27CB9FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA38);
  }

  return result;
}

unint64_t sub_217B30898()
{
  result = qword_27CB9FA40;
  if (!qword_27CB9FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA40);
  }

  return result;
}

uint64_t sub_217B308EC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCDA70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDA90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCDAB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t WebEmbedFailureData.contentDomain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebEmbedFailureData.contentDomain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WebEmbedFailureData.embedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebEmbedFailureData.embedName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WebEmbedFailureData.errorType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebEmbedFailureData.errorType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall WebEmbedFailureData.init(contentDomain:embedName:errorType:)(NewsAnalytics::WebEmbedFailureData *__return_ptr retstr, Swift::String contentDomain, Swift::String embedName, Swift::String errorType)
{
  retstr->contentDomain = contentDomain;
  retstr->embedName = embedName;
  retstr->errorType = errorType;
}

uint64_t sub_217B30CF8()
{
  v1 = 0x6D614E6465626D65;
  if (*v0 != 1)
  {
    v1 = 0x707954726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_217B30D68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B31458(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B30D90(uint64_t a1)
{
  v2 = sub_217B30FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B30DCC(uint64_t a1)
{
  v2 = sub_217B30FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedFailureData.encode(to:)(void *a1)
{
  sub_217B31294(0, &qword_27CB9FA48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B30FB8();
  sub_217D89E7C();
  v15 = 0;
  v10 = v12[5];
  sub_217D89C6C();
  if (!v10)
  {
    v14 = 1;
    sub_217D89C6C();
    v13 = 2;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B30FB8()
{
  result = qword_27CB9FA50;
  if (!qword_27CB9FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA50);
  }

  return result;
}

uint64_t WebEmbedFailureData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B31294(0, &qword_27CB9FA58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B30FB8();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v21 = sub_217D89B8C();
  v22 = v13;
  v24 = 2;
  v14 = sub_217D89B8C();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v9, v6);
  v18 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B31294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B30FB8();
    v7 = a3(a1, &type metadata for WebEmbedFailureData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B31354()
{
  result = qword_27CB9FA60;
  if (!qword_27CB9FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA60);
  }

  return result;
}

unint64_t sub_217B313AC()
{
  result = qword_27CB9FA68;
  if (!qword_27CB9FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA68);
  }

  return result;
}

unint64_t sub_217B31404()
{
  result = qword_27CB9FA70;
  if (!qword_27CB9FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA70);
  }

  return result;
}

uint64_t sub_217B31458(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xED00006E69616D6FLL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6465626D65 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065)
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

uint64_t UserEventHistoryAggregateStoreData.baselineTimestamp.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineStatelessEventCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineTotalEventCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

__n128 UserEventHistoryAggregateStoreData.aggregateCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 89);
  result = *(v1 + 48);
  v6 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 UserEventHistoryAggregateStoreData.aggregateCounts.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 89) = v4;
  return result;
}

__n128 UserEventHistoryAggregateStoreData.init(baselineTimestamp:baselineStatelessEventCount:baselineTotalEventCount:aggregateCounts:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a7 + 32);
  v9 = *(a7 + 40);
  v12 = *(a7 + 41);
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  result = *a7;
  v11 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v11;
  *(a8 + 80) = v8;
  *(a8 + 88) = v9;
  *(a8 + 89) = v12;
  return result;
}

unint64_t sub_217B3170C()
{
  v1 = 0x7461676572676761;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_217B317A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B320EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B317CC(uint64_t a1)
{
  v2 = sub_217B31A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B31808(uint64_t a1)
{
  v2 = sub_217B31A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventHistoryAggregateStoreData.encode(to:)(void *a1)
{
  sub_217B31DA4(0, &qword_2811BC530, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v29 = *(v1 + 24);
  v21 = *(v1 + 32);
  v22 = v8;
  v20 = *(v1 + 40);
  v9 = *(v1 + 48);
  v15 = *(v1 + 64);
  v16 = v9;
  v19 = *(v1 + 80);
  LODWORD(v8) = *(v1 + 88);
  v17 = *(v1 + 89);
  v18 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B31A7C();
  sub_217D89E7C();
  LOBYTE(v24) = 0;
  v10 = v23;
  sub_217D89C5C();
  if (!v10)
  {
    v12 = v17;
    v11 = v18;
    v13 = v19;
    LOBYTE(v24) = 1;
    sub_217D89C5C();
    LOBYTE(v24) = 2;
    sub_217D89C5C();
    v24 = v16;
    v25 = v15;
    v26 = v13;
    v27 = v11;
    v28 = v12;
    v30 = 3;
    sub_217B31AD0();
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B31A7C()
{
  result = qword_2811BDA58[0];
  if (!qword_2811BDA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BDA58);
  }

  return result;
}

unint64_t sub_217B31AD0()
{
  result = qword_2811BD4D0;
  if (!qword_2811BD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4D0);
  }

  return result;
}

uint64_t UserEventHistoryAggregateStoreData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B31DA4(0, &qword_2811BC928, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v34 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B31A7C();
  sub_217D89E5C();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    v10 = sub_217D89B7C();
    v32 = v11 & 1;
    LOBYTE(v25) = 1;
    v12 = sub_217D89B7C();
    v31 = v13 & 1;
    LOBYTE(v25) = 2;
    v24 = sub_217D89B7C();
    v30 = v14 & 1;
    v33 = 3;
    sub_217B31E08();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v34 = v29;
    v19 = v32;
    v20 = v31;
    v21 = v30;
    *a2 = v10;
    *(a2 + 8) = v19;
    *(a2 + 16) = v12;
    *(a2 + 24) = v20;
    *(a2 + 32) = v24;
    *(a2 + 40) = v21;
    v22 = v26;
    *(a2 + 48) = v25;
    *(a2 + 64) = v22;
    *(a2 + 80) = v16;
    *(a2 + 88) = v17;
    *(a2 + 89) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B31DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B31A7C();
    v7 = a3(a1, &type metadata for UserEventHistoryAggregateStoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B31E08()
{
  result = qword_2811BD4C8;
  if (!qword_2811BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4C8);
  }

  return result;
}

unint64_t sub_217B31E60()
{
  result = qword_2811BDA38;
  if (!qword_2811BDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA38);
  }

  return result;
}

unint64_t sub_217B31EB8()
{
  result = qword_2811BDA40;
  if (!qword_2811BDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA40);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217B31F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 90))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B31F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 90) = v3;
  return result;
}

unint64_t sub_217B31FE8()
{
  result = qword_27CB9FA78;
  if (!qword_27CB9FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA78);
  }

  return result;
}

unint64_t sub_217B32040()
{
  result = qword_2811BDA48;
  if (!qword_2811BDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA48);
  }

  return result;
}

unint64_t sub_217B32098()
{
  result = qword_2811BDA50;
  if (!qword_2811BDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA50);
  }

  return result;
}

uint64_t sub_217B320EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DCDAD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCDAF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCDB10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEF73746E756F4365)
  {

    return 3;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AdState.init(bannerState:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_217D88F1C();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D2D190])
  {
    (*(v5 + 96))(a1, v4);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v7 = 3;
  }

  else
  {
    if (result != *MEMORY[0x277D2D178])
    {
      if (result != *MEMORY[0x277D2D180])
      {
        if (result == *MEMORY[0x277D2D188])
        {
          v7 = 1;
          goto LABEL_10;
        }

        result = (*(v5 + 8))(a1, v4);
      }

      v7 = 0;
      goto LABEL_10;
    }

    (*(v5 + 96))(a1, v4);
    v8 = sub_217D88F0C();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v7 = 2;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

BOOL BannerAdState.instrumentationAllowed.getter()
{
  v1 = v0;
  v2 = sub_217D88F1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6;
  v8 = *MEMORY[0x277D2D190];
  if (v6 == *MEMORY[0x277D2D190])
  {
    (*(v3 + 96))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else if (v6 == *MEMORY[0x277D2D178])
  {
    (*(v3 + 96))(v5, v2);
    v9 = sub_217D88F0C();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  else if (v6 != *MEMORY[0x277D2D180] && v6 != *MEMORY[0x277D2D188])
  {
    (*(v3 + 8))(v5, v2);
  }

  return v7 == v8;
}

NewsAnalytics::VideoAdLoadState_optional __swiftcall VideoAdLoadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VideoAdLoadState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000012;
  v4 = 0x54676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6572676F72506E69;
  if (v1 != 1)
  {
    v5 = 0x506F547964616572;
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

unint64_t sub_217B32700()
{
  result = qword_27CB9FA80;
  if (!qword_27CB9FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA80);
  }

  return result;
}

uint64_t sub_217B3275C(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217B32878(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000217DCABB0;
  v6 = 0xD000000000000012;
  v7 = 0xEE0074756F656D69;
  v8 = 0x54676E6964616F6CLL;
  if (v2 != 4)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007373;
  v10 = 0x6572676F72506E69;
  if (v2 != 1)
  {
    v10 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217B32A10()
{
  result = qword_27CB9FA88;
  if (!qword_27CB9FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA88);
  }

  return result;
}

NewsAnalytics::ContentModelType_optional __swiftcall ContentModelType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContentModelType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x656C7A7A7570;
  if (v1 != 5)
  {
    v3 = 0x657069636572;
  }

  v4 = 0x6575737369;
  if (v1 != 3)
  {
    v4 = 0x76457374726F7073;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C6369747261;
  if (v1 != 1)
  {
    v5 = 6775156;
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

unint64_t sub_217B32BA0()
{
  result = qword_27CB9FA90;
  if (!qword_27CB9FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA90);
  }

  return result;
}

uint64_t sub_217B32C00(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217B32D18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x656C7A7A7570;
  if (v2 != 5)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6575737369;
  if (v2 != 3)
  {
    v8 = 0x76457374726F7073;
    v7 = 0xEB00000000746E65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656C6369747261;
  if (v2 != 1)
  {
    v10 = 6775156;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
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

unint64_t sub_217B32EAC()
{
  result = qword_27CB9FA98;
  if (!qword_27CB9FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA98);
  }

  return result;
}

uint64_t WebEmbedEnvironmentData.embedLocation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebEmbedEnvironmentData.embedLocation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B32FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636F4C6465626D65 && a2 == 0xED00006E6F697461)
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

uint64_t sub_217B3304C(uint64_t a1)
{
  v2 = sub_217B33210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B33088(uint64_t a1)
{
  v2 = sub_217B33210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedEnvironmentData.encode(to:)(void *a1)
{
  sub_217B333E8(0, &qword_27CB9FAA0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33210();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B33210()
{
  result = qword_27CB9FAA8;
  if (!qword_27CB9FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAA8);
  }

  return result;
}

uint64_t WebEmbedEnvironmentData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B333E8(0, &qword_27CB9FAB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33210();
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

void sub_217B333E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B33210();
    v7 = a3(a1, &type metadata for WebEmbedEnvironmentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B3346C(void *a1)
{
  sub_217B333E8(0, &qword_27CB9FAA0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33210();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B335DC()
{
  result = qword_27CB9FAB8;
  if (!qword_27CB9FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAB8);
  }

  return result;
}

unint64_t sub_217B33634()
{
  result = qword_27CB9FAC0;
  if (!qword_27CB9FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAC0);
  }

  return result;
}

unint64_t sub_217B3368C()
{
  result = qword_27CB9FAC8;
  if (!qword_27CB9FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAC8);
  }

  return result;
}

uint64_t ContentModelData.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ContentModelData.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::ContentModelData __swiftcall ContentModelData.init(type:identifier:)(NewsAnalytics::ContentModelType type, Swift::String identifier)
{
  *v2 = *type;
  *(v2 + 8) = identifier;
  result.identifier = identifier;
  result.type = type;
  return result;
}

uint64_t sub_217B337B8()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_217B337F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_217B338D4(uint64_t a1)
{
  v2 = sub_217B33ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B33910(uint64_t a1)
{
  v2 = sub_217B33ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentModelData.encode(to:)(void *a1)
{
  sub_217B33D54(0, &qword_27CB9FAD0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33ADC();
  sub_217D89E7C();
  v15 = v9;
  v14 = 0;
  sub_217B33B30();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = 1;
    sub_217D89C6C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B33ADC()
{
  result = qword_27CB9FAD8;
  if (!qword_27CB9FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAD8);
  }

  return result;
}

unint64_t sub_217B33B30()
{
  result = qword_27CB9FAE0;
  if (!qword_27CB9FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAE0);
  }

  return result;
}

uint64_t ContentModelData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B33D54(0, &qword_27CB9FAE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33ADC();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    sub_217B33DB8();
    sub_217D89BCC();
    v10 = v18;
    v16 = 1;
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B33D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B33ADC();
    v7 = a3(a1, &type metadata for ContentModelData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B33DB8()
{
  result = qword_27CB9FAF0;
  if (!qword_27CB9FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAF0);
  }

  return result;
}

uint64_t sub_217B33E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217B33E8C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_217B33EF0()
{
  result = qword_27CB9FAF8;
  if (!qword_27CB9FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAF8);
  }

  return result;
}

unint64_t sub_217B33F48()
{
  result = qword_27CB9FB00;
  if (!qword_27CB9FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB00);
  }

  return result;
}

unint64_t sub_217B33FA0()
{
  result = qword_27CB9FB08;
  if (!qword_27CB9FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB08);
  }

  return result;
}

NewsAnalytics::ArticleTextSizeData __swiftcall ArticleTextSizeData.init(textSizeChangeType:endTextSize:)(NewsAnalytics::TextSizeChangeType textSizeChangeType, NewsAnalytics::TextSize_optional endTextSize)
{
  v3 = *endTextSize.value;
  *v2 = *textSizeChangeType;
  v2[1] = v3;
  result.textSizeChangeType = textSizeChangeType;
  return result;
}

uint64_t sub_217B34080()
{
  if (*v0)
  {
    return 0x5374786554646E65;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_217B340C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DCDB30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5374786554646E65 && a2 == 0xEB00000000657A69)
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

uint64_t sub_217B341B4(uint64_t a1)
{
  v2 = sub_217B343D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B341F0(uint64_t a1)
{
  v2 = sub_217B343D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleTextSizeData.encode(to:)(void *a1)
{
  sub_217B34664(0, &qword_2811BC690, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B343D8();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217B3442C();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217A67A74();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B343D8()
{
  result = qword_2811C2AB0[0];
  if (!qword_2811C2AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2AB0);
  }

  return result;
}

unint64_t sub_217B3442C()
{
  result = qword_2811C2DD0;
  if (!qword_2811C2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DD0);
  }

  return result;
}

uint64_t ArticleTextSizeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B34664(0, &qword_2811BCA00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B343D8();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217B346C8();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217B3471C();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B34664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B343D8();
    v7 = a3(a1, &type metadata for ArticleTextSizeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B346C8()
{
  result = qword_2811C2DC0;
  if (!qword_2811C2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DC0);
  }

  return result;
}

unint64_t sub_217B3471C()
{
  result = qword_2811BD278;
  if (!qword_2811BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD278);
  }

  return result;
}

unint64_t sub_217B34774()
{
  result = qword_2811C2A90;
  if (!qword_2811C2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A90);
  }

  return result;
}

unint64_t sub_217B347CC()
{
  result = qword_2811C2A98;
  if (!qword_2811C2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaywallData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for PaywallData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_217B349B8()
{
  result = qword_27CB9FB10;
  if (!qword_27CB9FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB10);
  }

  return result;
}

unint64_t sub_217B34A10()
{
  result = qword_2811C2AA0;
  if (!qword_2811C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2AA0);
  }

  return result;
}

unint64_t sub_217B34A68()
{
  result = qword_2811C2AA8;
  if (!qword_2811C2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2AA8);
  }

  return result;
}

NewsAnalytics::OriginationType_optional __swiftcall OriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OriginationType.rawValue.getter()
{
  if (*v0)
  {
    return 1937204590;
  }

  else
  {
    return 0x697261666173;
  }
}

uint64_t sub_217B34B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1937204590;
  }

  else
  {
    v3 = 0x697261666173;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1937204590;
  }

  else
  {
    v5 = 0x697261666173;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();
  }

  return v8 & 1;
}

unint64_t sub_217B34BF0()
{
  result = qword_27CB9FB18;
  if (!qword_27CB9FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB18);
  }

  return result;
}

uint64_t sub_217B34C44()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B34CBC(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B34D20(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B34D94@<X0>(char *a2@<X8>)
{
  v3 = sub_217D89B0C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_217B34DF4(uint64_t *a1@<X8>)
{
  v2 = 1937204590;
  if (!*v1)
  {
    v2 = 0x697261666173;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_217B34EE8()
{
  result = qword_27CB9FB20;
  if (!qword_27CB9FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB20);
  }

  return result;
}

uint64_t sub_217B34F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_217B35020(uint64_t a1)
{
  v2 = sub_217B351F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3505C(uint64_t a1)
{
  v2 = sub_217B351F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationStatusData.encode(to:)(void *a1)
{
  sub_217B35434(0, &qword_27CB9FB28, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B351F4();
  sub_217D89E7C();
  v11 = v8;
  sub_217B35248();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B351F4()
{
  result = qword_27CB9FB30;
  if (!qword_27CB9FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB30);
  }

  return result;
}

unint64_t sub_217B35248()
{
  result = qword_27CB9FB38;
  if (!qword_27CB9FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB38);
  }

  return result;
}

uint64_t NotificationStatusData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B35434(0, &qword_27CB9FB40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B351F4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B35498();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B35434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B351F4();
    v7 = a3(a1, &type metadata for NotificationStatusData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B35498()
{
  result = qword_27CB9FB48;
  if (!qword_27CB9FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB48);
  }

  return result;
}

unint64_t sub_217B354F0()
{
  result = qword_27CB9FB50;
  if (!qword_27CB9FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB50);
  }

  return result;
}

unint64_t sub_217B35548()
{
  result = qword_27CB9FB58;
  if (!qword_27CB9FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB58);
  }

  return result;
}

unint64_t sub_217B355F0()
{
  result = qword_27CB9FB60;
  if (!qword_27CB9FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB60);
  }

  return result;
}

unint64_t sub_217B35648()
{
  result = qword_27CB9FB68;
  if (!qword_27CB9FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB68);
  }

  return result;
}

unint64_t sub_217B356A0()
{
  result = qword_27CB9FB70;
  if (!qword_27CB9FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB70);
  }

  return result;
}

NewsAnalytics::OrientationData __swiftcall OrientationData.init(deviceOrientation:interfaceOrientation:)(NewsAnalytics::DeviceOrientation deviceOrientation, NewsAnalytics::InterfaceOrientation interfaceOrientation)
{
  v3 = *interfaceOrientation;
  *v2 = *deviceOrientation;
  v2[1] = v3;
  result.deviceOrientation = deviceOrientation;
  return result;
}

unint64_t sub_217B35780()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_217B357BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DCDB50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCDB70 == a2)
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

uint64_t sub_217B358A0(uint64_t a1)
{
  v2 = sub_217B35AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B358DC(uint64_t a1)
{
  v2 = sub_217B35AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrientationData.encode(to:)(void *a1)
{
  sub_217B35DA4(0, &qword_2811BC750, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B35AC4();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217B35B18();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217B35B6C();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B35AC4()
{
  result = qword_2811C65D8;
  if (!qword_2811C65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65D8);
  }

  return result;
}

unint64_t sub_217B35B18()
{
  result = qword_2811C4680[0];
  if (!qword_2811C4680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4680);
  }

  return result;
}

unint64_t sub_217B35B6C()
{
  result = qword_2811C1F20[0];
  if (!qword_2811C1F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1F20);
  }

  return result;
}

uint64_t OrientationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B35DA4(0, &qword_2811BCAA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B35AC4();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217B35E08();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217B35E5C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B35DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B35AC4();
    v7 = a3(a1, &type metadata for OrientationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B35E08()
{
  result = qword_2811C4670;
  if (!qword_2811C4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4670);
  }

  return result;
}

unint64_t sub_217B35E5C()
{
  result = qword_2811C1F10;
  if (!qword_2811C1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrientationData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrientationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B36048()
{
  result = qword_27CB9FB78;
  if (!qword_27CB9FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB78);
  }

  return result;
}

unint64_t sub_217B360A0()
{
  result = qword_2811C65C8;
  if (!qword_2811C65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65C8);
  }

  return result;
}

unint64_t sub_217B360F8()
{
  result = qword_2811C65D0;
  if (!qword_2811C65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65D0);
  }

  return result;
}

uint64_t ExperimentationData.experimentID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExperimentationData.experimentID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExperimentationData.variant.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExperimentationData.variant.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::ExperimentationData __swiftcall ExperimentationData.init(experimentID:variant:)(Swift::String experimentID, Swift::String variant)
{
  *v2 = experimentID;
  v2[1] = variant;
  result.variant = variant;
  result.experimentID = experimentID;
  return result;
}

uint64_t sub_217B36270()
{
  if (*v0)
  {
    return 0x746E6169726176;
  }

  else
  {
    return 0x656D697265707865;
  }
}

uint64_t sub_217B362B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D697265707865 && a2 == 0xEC0000004449746ELL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
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

uint64_t sub_217B36394(uint64_t a1)
{
  v2 = sub_217B3658C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B363D0(uint64_t a1)
{
  v2 = sub_217B3658C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExperimentationData.encode(to:)(void *a1)
{
  sub_217B367F0(0, &qword_27CB9FB80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3658C();
  sub_217D89E7C();
  v13 = 0;
  v9 = v11[3];
  sub_217D89C6C();
  if (!v9)
  {
    v12 = 1;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B3658C()
{
  result = qword_27CB9FB88;
  if (!qword_27CB9FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB88);
  }

  return result;
}

uint64_t ExperimentationData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B367F0(0, &qword_27CB9FB90, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3658C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_217D89B8C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B367F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3658C();
    v7 = a3(a1, &type metadata for ExperimentationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B36858()
{
  result = qword_2811C2A70;
  if (!qword_2811C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A70);
  }

  return result;
}

unint64_t sub_217B368B0()
{
  result = qword_2811C2A78;
  if (!qword_2811C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A78);
  }

  return result;
}

unint64_t sub_217B36958()
{
  result = qword_27CB9FB98;
  if (!qword_27CB9FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB98);
  }

  return result;
}

unint64_t sub_217B369B0()
{
  result = qword_27CB9FBA0;
  if (!qword_27CB9FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBA0);
  }

  return result;
}

unint64_t sub_217B36A08()
{
  result = qword_27CB9FBA8;
  if (!qword_27CB9FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBA8);
  }

  return result;
}

uint64_t sub_217B36AA8(uint64_t a1)
{
  v2 = sub_217B36C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B36AE4(uint64_t a1)
{
  v2 = sub_217B36C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdPlacementData.encode(to:)(void *a1)
{
  sub_217B36EBC(0, &qword_27CB9FBB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B36C7C();
  sub_217D89E7C();
  v11 = v8;
  sub_217B36CD0();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B36C7C()
{
  result = qword_27CB9FBB8;
  if (!qword_27CB9FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBB8);
  }

  return result;
}

unint64_t sub_217B36CD0()
{
  result = qword_27CB9FBC0;
  if (!qword_27CB9FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBC0);
  }

  return result;
}

uint64_t BannerAdPlacementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B36EBC(0, &qword_27CB9FBC8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B36C7C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B36F20();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B36EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B36C7C();
    v7 = a3(a1, &type metadata for BannerAdPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B36F20()
{
  result = qword_27CB9FBD0;
  if (!qword_27CB9FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBD0);
  }

  return result;
}

unint64_t sub_217B36F78()
{
  result = qword_27CB9FBD8;
  if (!qword_27CB9FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBD8);
  }

  return result;
}

unint64_t sub_217B36FD0()
{
  result = qword_27CB9FBE0;
  if (!qword_27CB9FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBE0);
  }

  return result;
}

unint64_t sub_217B37078()
{
  result = qword_27CB9FBE8;
  if (!qword_27CB9FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBE8);
  }

  return result;
}

unint64_t sub_217B370D0()
{
  result = qword_27CB9FBF0;
  if (!qword_27CB9FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBF0);
  }

  return result;
}

unint64_t sub_217B37128()
{
  result = qword_27CB9FBF8;
  if (!qword_27CB9FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBF8);
  }

  return result;
}

NewsAnalytics::IssueViewContext_optional __swiftcall IssueViewContext.init(rawValue:)(Swift::String rawValue)
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

uint64_t IssueViewContext.rawValue.getter()
{
  v1 = 0x6572676761736964;
  if (*v0 != 1)
  {
    v1 = 0x6575737369;
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

uint64_t sub_217B3723C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676761736964;
  v4 = 0xED00006465746167;
  if (v2 != 1)
  {
    v3 = 0x6575737369;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6572676761736964;
  v8 = 0xED00006465746167;
  if (*a2 != 1)
  {
    v7 = 0x6575737369;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
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

unint64_t sub_217B37354()
{
  result = qword_27CB9FC00;
  if (!qword_27CB9FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC00);
  }

  return result;
}

uint64_t sub_217B373A8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B37454(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B374EC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B375A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED00006465746167;
  v5 = 0x6572676761736964;
  if (v2 != 1)
  {
    v5 = 0x6575737369;
    v4 = 0xE500000000000000;
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

unint64_t sub_217B376C8()
{
  result = qword_2811C5200;
  if (!qword_2811C5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5200);
  }

  return result;
}

uint64_t sub_217B377E4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FC38);
  __swift_project_value_buffer(v0, qword_27CB9FC38);
  return sub_217D8866C();
}

uint64_t NotificationSubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationSubscribeEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.notificationSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B37EF8()
{
  result = qword_2811BEE48;
  if (!qword_2811BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE48);
  }

  return result;
}

unint64_t sub_217B37F4C()
{
  result = qword_2811BEE50[0];
  if (!qword_2811BEE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEE50);
  }

  return result;
}

uint64_t NotificationSubscribeEvent.notificationSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B38300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t NotificationSubscribeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationSubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t NotificationSubscribeEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void NotificationSubscribeEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 24));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

void NotificationSubscribeEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 28));
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

  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

uint64_t NotificationSubscribeEvent.Model.notificationSubscribedData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NotificationSubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NotificationSubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 36));
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

uint64_t NotificationSubscribeEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NotificationSubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 NotificationSubscribeEvent.Model.init(eventData:tagData:channelData:campaignData:notificationSubscribedData:userBundleSubscriptionContextData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a3 + 4);
  v16 = *(a4 + 4);
  v17 = *(a4 + 5);
  v30 = *a5;
  v31 = *a7;
  v18 = sub_217D8899C();
  v28 = a4[1];
  v29 = *a4;
  v26 = a3[1];
  v27 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v13;
  v20[1] = v14;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v26;
  *(v21 + 32) = v15;
  v22 = a8 + v19[7];
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  *(a8 + v19[8]) = v30;
  v23 = a8 + v19[9];
  v24 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v24;
  result = *(a6 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v31;
  return result;
}

uint64_t sub_217B38B14()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x61746144676174;
    if (v1 != 1)
    {
      v5 = 0x446C656E6E616863;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x746144746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD00000000000001ALL;
    if (v1 == 3)
    {
      v3 = 0x6E676961706D6163;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217B38C10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B3A1A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B38C38(uint64_t a1)
{
  v2 = sub_217B39108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B38C74(uint64_t a1)
{
  v2 = sub_217B39108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B3976C(0, &qword_27CB9FC50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B39108();
  sub_217D89E7C();
  LOBYTE(v38) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for NotificationSubscribeEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v38 = *v11;
    *(&v38 + 1) = v12;
    LOBYTE(v34) = 1;
    sub_217AF6B14();

    sub_217D89C3C();

    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    *&v38 = *v13;
    *(&v38 + 1) = v14;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    *&v40 = v17;
    LOBYTE(v34) = 2;
    sub_217AD86BC(v38, v14, v15, v16, v17);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v38, *(&v38 + 1), v39, *(&v39 + 1), v40);
    v18 = (v3 + v10[7]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    *&v38 = *v18;
    *(&v38 + 1) = v19;
    *&v39 = v20;
    *(&v39 + 1) = v21;
    *&v40 = v22;
    *(&v40 + 1) = v23;
    LOBYTE(v34) = 3;
    sub_217B1563C(v38, v19, v20, v21, v22, v23);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1));
    v43 = *(v3 + v10[8]);
    v42 = 4;
    sub_217B37F4C();
    sub_217D89CAC();
    v24 = (v3 + v10[9]);
    v25 = v24[1];
    v38 = *v24;
    v39 = v25;
    v27 = *v24;
    v26 = v24[1];
    v40 = v24[2];
    v41 = *(v24 + 48);
    v34 = v27;
    v35 = v26;
    v36 = v24[2];
    v37 = *(v24 + 48);
    v33 = 5;
    sub_217ACC004(&v38, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v32 = v37;
    sub_217ACC69C(v31);
    v30 = *(v3 + v10[10]);
    v29[11] = 6;
    sub_217ACFB8C();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B39108()
{
  result = qword_27CB9FC58;
  if (!qword_27CB9FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC58);
  }

  return result;
}

void NotificationSubscribeEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_217D8899C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B3976C(0, &qword_27CB9FC60, MEMORY[0x277D844C8]);
  v25 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B39108();
  v26 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v23;
    LOBYTE(v27) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v24;
    sub_217D89BCC();
    (*(v22 + 32))(v11, v13, v4);
    LOBYTE(v31) = 1;
    sub_217AF6AC0();
    sub_217D89B5C();
    v24 = 0;
    *&v11[v9[5]] = v27;
    LOBYTE(v31) = 2;
    sub_217AD07F8();
    sub_217D89B5C();
    v14 = v29;
    v15 = &v11[v9[6]];
    v16 = v28;
    *v15 = v27;
    *(v15 + 1) = v16;
    *(v15 + 4) = v14;
    LOBYTE(v31) = 3;
    sub_217A66A84();
    sub_217D89B5C();
    v17 = &v11[v9[7]];
    v18 = v28;
    *v17 = v27;
    *(v17 + 1) = v18;
    *(v17 + 2) = v29;
    LOBYTE(v31) = 4;
    sub_217B37EF8();
    sub_217D89BCC();
    *&v11[v9[8]] = v27;
    v33 = 5;
    sub_217A54D08();
    sub_217D89BCC();
    v19 = &v11[v9[9]];
    v20 = v28;
    *v19 = v27;
    *(v19 + 1) = v20;
    *(v19 + 2) = v29;
    v19[48] = v30;
    v32 = 6;
    sub_217ACFB38();
    sub_217D89B5C();
    (*(v12 + 8))(v26, v25);
    *&v11[v9[10]] = v31;
    sub_217B397D0(v11, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217B39834(v11);
  }
}

void sub_217B3976C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B39108();
    v7 = a3(a1, &type metadata for NotificationSubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B397D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B39834(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B39968@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v7, v18);
}

void sub_217B39CF4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B38300(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217B38300(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217B38300(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
        if (v4 <= 0x3F)
        {
          sub_217B38300(319, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
          if (v5 <= 0x3F)
          {
            sub_217B38300(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
            if (v6 <= 0x3F)
            {
              sub_217B38300(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
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

void sub_217B39F68(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD360, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7A98, &type metadata for CampaignData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C01C8, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B3A0A0()
{
  result = qword_27CB9FC68;
  if (!qword_27CB9FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC68);
  }

  return result;
}

unint64_t sub_217B3A0F8()
{
  result = qword_27CB9FC70;
  if (!qword_27CB9FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC70);
  }

  return result;
}

unint64_t sub_217B3A150()
{
  result = qword_27CB9FC78;
  if (!qword_27CB9FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC78);
  }

  return result;
}

uint64_t sub_217B3A1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCDB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

NewsAnalytics::TrackVariant_optional __swiftcall TrackVariant.init(rawValue:)(Swift::String rawValue)
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

uint64_t TrackVariant.rawValue.getter()
{
  v1 = 0x656C706D6173;
  if (*v0 != 1)
  {
    v1 = 1819047270;
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

uint64_t sub_217B3A4B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C706D6173;
  if (v2 != 1)
  {
    v4 = 1819047270;
    v3 = 0xE400000000000000;
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

  v7 = 0xE600000000000000;
  v8 = 0x656C706D6173;
  if (*a2 != 1)
  {
    v8 = 1819047270;
    v7 = 0xE400000000000000;
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

unint64_t sub_217B3A5A0()
{
  result = qword_27CB9FC80;
  if (!qword_27CB9FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC80);
  }

  return result;
}

uint64_t sub_217B3A5F4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B3A68C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B3A710(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B3A7B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C706D6173;
  if (v2 != 1)
  {
    v5 = 1819047270;
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

unint64_t sub_217B3A8C4()
{
  result = qword_27CB9FC88;
  if (!qword_27CB9FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC88);
  }

  return result;
}

uint64_t sub_217B3A9E0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FCC0);
  __swift_project_value_buffer(v0, qword_27CB9FCC0);
  return sub_217D8866C();
}

uint64_t IgnoreTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IgnoreTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 20);
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 20);
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 24);
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 24);
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 28);
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 28);
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IgnoreTagEvent(0);
  v5 = v4[5];
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t IgnoreTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreTagEvent.Model(0) + 20));
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

uint64_t IgnoreTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IgnoreTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreTagEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 IgnoreTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 8);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for IgnoreTagEvent.Model(0);
  v15 = a5 + v14[5];
  v16 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v16;
  result = *(a2 + 32);
  *(v15 + 32) = result;
  *(v15 + 48) = *(a2 + 48);
  v18 = (a5 + v14[6]);
  *v18 = v8;
  v18[1] = v9;
  v19 = a5 + v14[7];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  return result;
}

unint64_t sub_217B3B434()
{
  v1 = 0x746144746E657665;
  v2 = 0x61746144676174;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_217B3B4B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B3C4BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B3B4E0(uint64_t a1)
{
  v2 = sub_217B3B8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3B51C(uint64_t a1)
{
  v2 = sub_217B3B8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IgnoreTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B3BD8C(0, &qword_27CB9FCD8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3B8A4();
  sub_217D89E7C();
  v37 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for IgnoreTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v34 = v11[1];
    v35 = v12;
    v33 = v13;
    v36 = *(v11 + 48);
    v29 = v14;
    v30 = v34;
    v31 = v11[2];
    v32 = *(v11 + 48);
    v28 = 1;
    sub_217ACC004(&v33, v26);
    sub_217A55B98();
    sub_217D89CAC();
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v27 = v32;
    sub_217ACC69C(v26);
    v15 = (v3 + v10[6]);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v25 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v17 = (v3 + v10[7]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 8);
    v22 = v18;
    v23 = v19;
    v24 = v17;
    v25 = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B3B8A4()
{
  result = qword_27CB9FCE0;
  if (!qword_27CB9FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FCE0);
  }

  return result;
}

uint64_t IgnoreTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B3BD8C(0, &qword_27CB9FCE8, MEMORY[0x277D844C8]);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for IgnoreTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3B8A4();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v25;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v37 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v14 = &v11[v9[5]];
  v15 = v33;
  *v14 = v32;
  *(v14 + 1) = v15;
  *(v14 + 2) = v34;
  v14[48] = v35;
  v36 = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v16 = v30;
  v17 = &v11[v9[6]];
  *v17 = v29;
  *(v17 + 1) = v16;
  v36 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v26 + 8))(v28, v27);
  v18 = v30;
  v19 = v31;
  v20 = &v11[v9[7]];
  *v20 = v29;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  sub_217B3BDF0(v11, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B3BE54(v11);
}

void sub_217B3BD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3B8A4();
    v7 = a3(a1, &type metadata for IgnoreTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B3BDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B3BE54(uint64_t a1)
{
  v2 = type metadata accessor for IgnoreTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B3BF88@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217B3C198(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62904(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62904(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
      if (v3 <= 0x3F)
      {
        sub_217A62904(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217B3C31C(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B3C3B8()
{
  result = qword_27CB9FCF0;
  if (!qword_27CB9FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FCF0);
  }

  return result;
}

unint64_t sub_217B3C410()
{
  result = qword_27CB9FCF8;
  if (!qword_27CB9FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FCF8);
  }

  return result;
}

unint64_t sub_217B3C468()
{
  result = qword_27CB9FD00;
  if (!qword_27CB9FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD00);
  }

  return result;
}

uint64_t sub_217B3C4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

uint64_t sub_217B3C630()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811BFEA8);
  v1 = __swift_project_value_buffer(v0, qword_2811BFEA8);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217B3C71C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CB9FD08);
  v1 = __swift_project_value_buffer(v0, qword_27CB9FD08);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B3C7DC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FD20);
  __swift_project_value_buffer(v0, qword_27CB9FD20);
  return sub_217D8866C();
}

uint64_t NativeAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NativeAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NativeAdImpressionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 20);
  sub_217A6018C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 28);
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 28);
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 32);
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B3CE30()
{
  result = qword_2811C6968;
  if (!qword_2811C6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6968);
  }

  return result;
}

unint64_t sub_217B3CE84()
{
  result = qword_2811C6970;
  if (!qword_2811C6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6970);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 32);
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 36);
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B3D088()
{
  result = qword_2811C7110;
  if (!qword_2811C7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7110);
  }

  return result;
}

unint64_t sub_217B3D0DC()
{
  result = qword_2811C7118;
  if (!qword_2811C7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7118);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 36);
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 40);
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 40);
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 44);
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B3D490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

unint64_t sub_217B3D50C()
{
  result = qword_2811C7E10;
  if (!qword_2811C7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E10);
  }

  return result;
}

unint64_t sub_217B3D560()
{
  result = qword_2811C7E18;
  if (!qword_2811C7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E18);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 44);
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NativeAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A6018C(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A608E0(0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v14, v19);
}

uint64_t NativeAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217B3DA8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_217B3DB64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NativeAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 28));
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

uint64_t NativeAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NativeAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NativeAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NativeAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 NativeAdImpressionEvent.Model.init(adUserData:eventData:timedData:userBundleSubscriptionContextData:adPlacementData:adPositionData:adFeedData:adGroupData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, int *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  v13 = a1[1];
  v15 = *a5;
  v14 = a5[1];
  v16 = *a6;
  v17 = *(a6 + 4);
  v28 = *a7;
  v29 = *a8;
  *a9 = *a1;
  *(a9 + 1) = v13;
  v18 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v19 = v18[5];
  v20 = sub_217D8899C();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  v21 = v18[6];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(&a9[v21], a3, v22);
  v23 = &a9[v18[7]];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 1) = v24;
  result = *(a4 + 32);
  *(v23 + 2) = result;
  v23[48] = *(a4 + 48);
  v26 = &a9[v18[8]];
  *v26 = v15;
  *(v26 + 1) = v14;
  v27 = &a9[v18[9]];
  *v27 = v16;
  v27[4] = v17;
  a9[v18[10]] = v28;
  a9[v18[11]] = v29;
  return result;
}

uint64_t sub_217B3DE98()
{
  v1 = *v0;
  v2 = 0x6144726573556461;
  v3 = 0x6144646565466461;
  if (v1 != 6)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x6D6563616C506461;
  if (v1 != 4)
  {
    v4 = 0x697469736F506461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 2)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_217B3DFC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B3F720(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B3DFE8(uint64_t a1)
{
  v2 = sub_217B3E52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3E024(uint64_t a1)
{
  v2 = sub_217B3E52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NativeAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B3EC98(0, &qword_27CB9FD38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3E52C();
  sub_217D89E7C();
  v10 = v3[1];
  *&v32[0] = *v3;
  *(&v32[0] + 1) = v10;
  LOBYTE(v28) = 0;
  sub_217A586D4();

  sub_217D89CAC();

  if (!v2)
  {
    v11 = type metadata accessor for NativeAdImpressionEvent.Model(0);
    LOBYTE(v32[0]) = 1;
    sub_217D8899C();
    sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
    sub_217D89CAC();
    v34[0] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v12 = v3 + v11[7];
    v13 = *(v12 + 1);
    v32[0] = *v12;
    v32[1] = v13;
    v15 = *v12;
    v14 = *(v12 + 1);
    v32[2] = *(v12 + 2);
    v33 = v12[48];
    v28 = v15;
    v29 = v14;
    v30 = *(v12 + 2);
    v31 = v12[48];
    v27 = 3;
    sub_217ACC004(v32, v25);
    sub_217A55B98();
    sub_217D89CAC();
    v25[0] = v28;
    v25[1] = v29;
    v25[2] = v30;
    v26 = v31;
    sub_217ACC69C(v25);
    v16 = (v3 + v11[8]);
    v17 = v16[1];
    v23 = *v16;
    v24 = v17;
    v22 = 4;
    sub_217B3CE84();

    sub_217D89CAC();

    v18 = v3 + v11[9];
    v19 = *v18;
    LOBYTE(v18) = v18[4];
    LODWORD(v23) = v19;
    BYTE4(v23) = v18;
    v22 = 5;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v23) = *(v3 + v11[10]);
    v22 = 6;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v23) = *(v3 + v11[11]);
    v22 = 7;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B3E52C()
{
  result = qword_27CB9FD40;
  if (!qword_27CB9FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD40);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B3EC98(0, &qword_27CB9FD48, MEMORY[0x277D844C8]);
  v37 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_217B3E52C();
  v38 = v12;
  v17 = v39;
  sub_217D89E5C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v31 = v6;
  v18 = v36;
  v39 = v7;
  LOBYTE(v41) = 0;
  sub_217A5867C();
  sub_217D89BCC();
  v19 = *(&v43 + 1);
  *v15 = v43;
  *(v15 + 1) = v19;
  LOBYTE(v43) = 1;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v20 = v39;
  sub_217D89BCC();
  (*(v18 + 32))(&v15[v13[5]], v9, v20);
  LOBYTE(v43) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v21 = v31;
  v22 = v33;
  sub_217D89BCC();
  (*(v34 + 32))(&v15[v13[6]], v21, v22);
  v48 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v23 = v35;
  v24 = &v15[v13[7]];
  v25 = v44;
  *v24 = v43;
  *(v24 + 1) = v25;
  *(v24 + 2) = v45;
  v24[48] = v46;
  v47 = 4;
  sub_217B3CE30();
  sub_217D89BCC();
  v26 = v42;
  v27 = &v15[v13[8]];
  *v27 = v41;
  *(v27 + 1) = v26;
  v47 = 5;
  sub_217B3D088();
  sub_217D89B5C();
  v28 = BYTE4(v41);
  v29 = &v15[v13[9]];
  *v29 = v41;
  v29[4] = v28;
  v47 = 6;
  sub_217A5BD70();
  sub_217D89B5C();
  v15[v13[10]] = v41;
  v47 = 7;
  sub_217B3D50C();
  sub_217D89B5C();
  (*(v23 + 8))(v38, v37);
  v15[v13[11]] = v41;
  sub_217B3ECFC(v15, v32);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_217B3ED60(v15);
}

void sub_217B3EC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3E52C();
    v7 = a3(a1, &type metadata for NativeAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B3ECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B3ED60(uint64_t a1)
{
  v2 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B3EE94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A608E0(0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v15, v20);
}

void sub_217B3F258(uint64_t a1)
{
  sub_217B3D490(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  if (v1 <= 0x3F)
  {
    sub_217A6018C(319);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        sub_217B3D490(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217B3D490(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
          if (v5 <= 0x3F)
          {
            sub_217B3D490(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
            if (v6 <= 0x3F)
            {
              sub_217B3D490(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
              if (v7 <= 0x3F)
              {
                sub_217B3D490(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
                if (v8 <= 0x3F)
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

void sub_217B3F4E4(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9FD60, &type metadata for AdPositionData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD68, &type metadata for AdFeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD70, &type metadata for AdGroupData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B3F61C()
{
  result = qword_27CB9FD78;
  if (!qword_27CB9FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD78);
  }

  return result;
}

unint64_t sub_217B3F674()
{
  result = qword_27CB9FD80;
  if (!qword_27CB9FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD80);
  }

  return result;
}

unint64_t sub_217B3F6CC()
{
  result = qword_27CB9FD88;
  if (!qword_27CB9FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD88);
  }

  return result;
}

uint64_t sub_217B3F720(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_217B3FA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xEC000000646F6874)
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

uint64_t sub_217B3FAE0(uint64_t a1)
{
  v2 = sub_217B3FCB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3FB1C(uint64_t a1)
{
  v2 = sub_217B3FCB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionData.encode(to:)(void *a1)
{
  sub_217B3FEF4(0, &qword_27CB9FD90, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3FCB4();
  sub_217D89E7C();
  v11 = v8;
  sub_217B3FD08();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B3FCB4()
{
  result = qword_27CB9FD98;
  if (!qword_27CB9FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD98);
  }

  return result;
}

unint64_t sub_217B3FD08()
{
  result = qword_27CB9FDA0;
  if (!qword_27CB9FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDA0);
  }

  return result;
}

uint64_t ActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B3FEF4(0, &qword_27CB9FDA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3FCB4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B3FF58();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B3FEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3FCB4();
    v7 = a3(a1, &type metadata for ActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B3FF58()
{
  result = qword_27CB9FDB0;
  if (!qword_27CB9FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDB0);
  }

  return result;
}

unint64_t sub_217B40008()
{
  result = qword_27CB9FDB8;
  if (!qword_27CB9FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDB8);
  }

  return result;
}

unint64_t sub_217B40060()
{
  result = qword_27CB9FDC0;
  if (!qword_27CB9FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDC0);
  }

  return result;
}

unint64_t sub_217B400B8()
{
  result = qword_27CB9FDC8;
  if (!qword_27CB9FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDC8);
  }

  return result;
}

uint64_t sub_217B40158(uint64_t a1)
{
  v2 = sub_217B4032C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B40194(uint64_t a1)
{
  v2 = sub_217B4032C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailShareResultData.encode(to:)(void *a1)
{
  sub_217B4056C(0, &qword_27CB9FDD0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4032C();
  sub_217D89E7C();
  v11 = v8;
  sub_217B40380();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B4032C()
{
  result = qword_27CB9FDD8;
  if (!qword_27CB9FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDD8);
  }

  return result;
}

unint64_t sub_217B40380()
{
  result = qword_27CB9FDE0;
  if (!qword_27CB9FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDE0);
  }

  return result;
}

uint64_t EmailShareResultData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B4056C(0, &qword_27CB9FDE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4032C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B405D0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B4056C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4032C();
    v7 = a3(a1, &type metadata for EmailShareResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B405D0()
{
  result = qword_27CB9FDF0;
  if (!qword_27CB9FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDF0);
  }

  return result;
}

unint64_t sub_217B40628()
{
  result = qword_27CB9FDF8;
  if (!qword_27CB9FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDF8);
  }

  return result;
}

unint64_t sub_217B40680()
{
  result = qword_27CB9FE00;
  if (!qword_27CB9FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE00);
  }

  return result;
}

unint64_t sub_217B40728()
{
  result = qword_27CB9FE08;
  if (!qword_27CB9FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE08);
  }

  return result;
}

unint64_t sub_217B40780()
{
  result = qword_27CB9FE10;
  if (!qword_27CB9FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE10);
  }

  return result;
}

unint64_t sub_217B407D8()
{
  result = qword_27CB9FE18;
  if (!qword_27CB9FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE18);
  }

  return result;
}

id sub_217B4085C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_217B40A58()
{
  result = qword_27CB9FEA0;
  if (!qword_27CB9FEA0)
  {
    sub_217D88AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FEA0);
  }

  return result;
}

uint64_t GalleryData.galleryID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t GalleryData.galleryID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *GalleryData.init(galleryType:galleryID:galleryImageCount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_217B40BBC()
{
  v1 = 0x497972656C6C6167;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x547972656C6C6167;
  }
}

uint64_t sub_217B40C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B4141C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B40C50(uint64_t a1)
{
  v2 = sub_217B40E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B40C8C(uint64_t a1)
{
  v2 = sub_217B40E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GalleryData.encode(to:)(void *a1)
{
  sub_217B41164(0, &qword_2811BC850, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  v13 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B40E84();
  sub_217D89E7C();
  v17 = v9;
  v16 = 0;
  sub_217B40ED8();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C6C();
    v14 = 2;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B40E84()
{
  result = qword_2811C7D58;
  if (!qword_2811C7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D58);
  }

  return result;
}

unint64_t sub_217B40ED8()
{
  result = qword_2811C7D30;
  if (!qword_2811C7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D30);
  }

  return result;
}

uint64_t GalleryData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B41164(0, &qword_27CB9FEA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B40E84();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_217B411C8();
  sub_217D89BCC();
  v10 = v21;
  v19 = 1;
  v11 = sub_217D89B8C();
  v13 = v12;
  v17 = v11;
  v18 = 2;
  v14 = sub_217D89BDC();
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B41164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B40E84();
    v7 = a3(a1, &type metadata for GalleryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B411C8()
{
  result = qword_27CB9FEB0;
  if (!qword_27CB9FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FEB0);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_217B41268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217B412B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B41318()
{
  result = qword_27CB9FEB8;
  if (!qword_27CB9FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FEB8);
  }

  return result;
}

unint64_t sub_217B41370()
{
  result = qword_2811C7D48;
  if (!qword_2811C7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D48);
  }

  return result;
}

unint64_t sub_217B413C8()
{
  result = qword_2811C7D50;
  if (!qword_2811C7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D50);
  }

  return result;
}

uint64_t sub_217B4141C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972656C6C6167 && a2 == 0xEB00000000657079;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x497972656C6C6167 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCDD40 == a2)
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

uint64_t sub_217B41610()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FEF0);
  __swift_project_value_buffer(v0, qword_27CB9FEF0);
  return sub_217D8866C();
}

uint64_t ArticleUnsaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleUnsaveEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 20);
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 20);
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 24);
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 24);
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 28);
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 28);
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 32);
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 32);
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 36);
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 36);
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 40);
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 40);
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 44);
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 44);
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 48);
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 48);
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 52);
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B42594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleUnsaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 52);
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleUnsaveEvent(0);
  v5 = v4[5];
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t ArticleUnsaveEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 20);
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

uint64_t ArticleUnsaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleUnsaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleUnsaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleUnsaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 32));
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

uint64_t ArticleUnsaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleUnsaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleUnsaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 44));
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

uint64_t ArticleUnsaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 48);
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

void ArticleUnsaveEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

__n128 ArticleUnsaveEvent.Model.init(eventData:articleData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11)
{
  v16 = *a3;
  v40 = *a4;
  v17 = *(a4 + 2);
  v18 = *a6;
  v19 = a6[1];
  v43 = a7[1];
  v44 = *a7;
  v41 = *(a6 + 8);
  v42 = *(a7 + 1);
  v52 = *a10;
  v51 = a10[1];
  v49 = *(a10 + 17);
  v50 = *(a10 + 16);
  v47 = a10[4];
  v48 = a10[3];
  v20 = sub_217D8899C();
  v45 = a11[1];
  v46 = *a11;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a2 + 127);
  v25 = *(a2 + 112);
  *(v22 + 96) = *(a2 + 96);
  *(v22 + 112) = v25;
  v26 = *(a2 + 80);
  *(v22 + 64) = *(a2 + 64);
  *(v22 + 80) = v26;
  *(a9 + v21[6]) = v16;
  v27 = a9 + v21[7];
  *v27 = v40;
  *(v27 + 16) = v17;
  v28 = (a9 + v21[8]);
  v29 = a5[3];
  v28[2] = a5[2];
  v28[3] = v29;
  v30 = a5[1];
  *v28 = *a5;
  v28[1] = v30;
  v31 = a5[8];
  v28[7] = a5[7];
  v28[8] = v31;
  v32 = a5[6];
  v28[5] = a5[5];
  v28[6] = v32;
  v28[4] = a5[4];
  v33 = a9 + v21[9];
  *v33 = v18;
  *(v33 + 8) = v19;
  *(v33 + 16) = v41;
  v34 = a9 + v21[10];
  *v34 = v44;
  *(v34 + 1) = v43;
  *(v34 + 2) = v42;
  v35 = a9 + v21[11];
  v36 = *(a8 + 16);
  *v35 = *a8;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a8 + 32);
  *(v35 + 48) = *(a8 + 48);
  v37 = a9 + v21[12];
  *v37 = v52;
  *(v37 + 8) = v51;
  *(v37 + 16) = v50;
  *(v37 + 17) = v49;
  *(v37 + 24) = v48;
  *(v37 + 32) = v47;
  v38 = (a9 + v21[13]);
  result = v46;
  *v38 = v46;
  v38[1] = v45;
  return result;
}

unint64_t sub_217B43184(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    v6 = 0x446C656E6E616863;
    if (a1 != 8)
    {
      v6 = 0x7461446575737369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174614477656976;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x61446E6F69746361;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x44656C6369747261;
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

uint64_t sub_217B432E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B450AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B4330C(uint64_t a1)
{
  v2 = sub_217B43AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B43348(uint64_t a1)
{
  v2 = sub_217B43AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleUnsaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B44400(0, &qword_27CB9FF08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B43AC4();
  sub_217D89E7C();
  v120[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v121 = v7;
  v55 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v56 = v3;
  v11 = v3 + *(v55 + 20);
  v12 = *(v11 + 96);
  v13 = *(v11 + 64);
  v117 = *(v11 + 80);
  v118 = v12;
  v14 = *(v11 + 96);
  *v119 = *(v11 + 112);
  v15 = *(v11 + 16);
  v16 = *(v11 + 48);
  v114 = *(v11 + 32);
  v115 = v16;
  v17 = *(v11 + 48);
  v116 = *(v11 + 64);
  v18 = *(v11 + 16);
  v113[0] = *v11;
  v113[1] = v18;
  v110 = v117;
  v111 = v14;
  v112[0] = *(v11 + 112);
  v107 = v114;
  v108 = v17;
  v109 = v13;
  *&v119[15] = *(v11 + 127);
  *(v112 + 15) = *(v11 + 127);
  v105 = v113[0];
  v106 = v15;
  v104 = 1;
  sub_217AD1630(v113, &v89);
  sub_217ACF52C();
  sub_217D89CAC();
  v102[5] = v110;
  v102[6] = v111;
  *v103 = v112[0];
  *&v103[15] = *(v112 + 15);
  v102[2] = v107;
  v102[3] = v108;
  v102[4] = v109;
  v102[0] = v105;
  v102[1] = v106;
  sub_217AD2864(v102);
  v20 = v55;
  v19 = v56;
  LOBYTE(v89) = *(v56 + *(v55 + 24));
  LOBYTE(v80) = 2;
  sub_217AED190();
  sub_217D89CAC();
  v21 = (v19 + v20[7]);
  v22 = v21[1];
  v23 = v21[2];
  v99 = *v21;
  v100 = v22;
  v101 = v23;
  v98 = 3;
  sub_217AD1A68(v99, v22, v23);
  sub_217A5BA2C();
  sub_217D89C3C();
  v24 = v121;
  sub_217AD290C(v99, v100, v101);
  v25 = (v19 + v20[8]);
  v26 = v25[6];
  v27 = v25[4];
  v94 = v25[5];
  v95 = v26;
  v28 = v25[6];
  v29 = v25[8];
  v96 = v25[7];
  v97 = v29;
  v30 = v25[2];
  v31 = *v25;
  v90 = v25[1];
  v91 = v30;
  v32 = v25[2];
  v33 = v25[4];
  v92 = v25[3];
  v93 = v33;
  v34 = *v25;
  v86 = v28;
  v87 = v96;
  v88 = v25[8];
  v89 = v34;
  v82 = v32;
  v83 = v92;
  v84 = v27;
  v85 = v94;
  v80 = v31;
  v81 = v90;
  v79 = 4;
  sub_217AD87FC(&v89, v78);
  sub_217A5D3B4();
  sub_217D89C3C();
  v78[6] = v86;
  v78[7] = v87;
  v78[8] = v88;
  v78[2] = v82;
  v78[3] = v83;
  v78[4] = v84;
  v78[5] = v85;
  v78[0] = v80;
  v78[1] = v81;
  sub_217AD96E8(v78);
  v35 = (v19 + v20[9]);
  v36 = *v35;
  v37 = v35[1];
  LOWORD(v35) = *(v35 + 8);
  *&v70 = v36;
  *(&v70 + 1) = v37;
  LOWORD(v71) = v35;
  LOBYTE(v66) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v38 = (v19 + v20[10]);
  v39 = *v38;
  v40 = v38[1];
  LOWORD(v38) = *(v38 + 1);
  v75 = v39;
  v76 = v40;
  v77 = v38;
  v74 = 6;
  sub_217ACFB8C();
  sub_217D89CAC();
  v41 = (v19 + v20[11]);
  v42 = v41[1];
  v70 = *v41;
  v71 = v42;
  v44 = *v41;
  v43 = v41[1];
  v72 = v41[2];
  v73 = *(v41 + 48);
  v66 = v44;
  v67 = v43;
  v68 = v41[2];
  v69 = *(v41 + 48);
  v65 = 7;
  sub_217ACC004(&v70, v63);
  sub_217A55B98();
  sub_217D89CAC();
  v63[0] = v66;
  v63[1] = v67;
  v63[2] = v68;
  v64 = v69;
  sub_217ACC69C(v63);
  v45 = v19 + v20[12];
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 17);
  v49 = *(v45 + 24);
  v50 = *(v45 + 32);
  v58 = *v45;
  v59 = v46;
  LOBYTE(v60) = v47;
  BYTE1(v60) = v48;
  v61 = v49;
  v62 = v50;
  v57 = 8;
  sub_217AD084C();

  sub_217D89CAC();

  v51 = (v19 + v20[13]);
  v52 = v51[1];
  v53 = v51[2];
  v54 = v51[3];
  v58 = *v51;
  v59 = v52;
  v60 = v53;
  v61 = v54;
  v57 = 9;
  sub_217AE39D0(v58, v52, v53, v54);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v58, v59, v60, v61);
  return (*(v24 + 8))(v9, v6);
}

unint64_t sub_217B43AC4()
{
  result = qword_27CB9FF10;
  if (!qword_27CB9FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF10);
  }

  return result;
}

uint64_t ArticleUnsaveEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217D8899C();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B44400(0, &qword_27CB9FF18, MEMORY[0x277D844C8]);
  v53 = v5;
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B43AC4();
  v54 = v7;
  v11 = v83;
  sub_217D89E5C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v51;
  v83 = a1;
  v47 = v8;
  v48 = v10;
  LOBYTE(v74) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v52;
  sub_217D89BCC();
  v14 = v48;
  (*(v50 + 32))(v48, v13, v3);
  v65 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v46 = v3;
  v52 = 0;
  v15 = v47;
  v16 = &v14[v47[5]];
  v17 = *v73;
  *(v16 + 6) = v72;
  *(v16 + 7) = v17;
  *(v16 + 127) = *&v73[15];
  v18 = v69;
  *(v16 + 2) = v68;
  *(v16 + 3) = v18;
  v19 = v71;
  *(v16 + 4) = v70;
  *(v16 + 5) = v19;
  v20 = v67;
  *v16 = v66;
  *(v16 + 1) = v20;
  LOBYTE(v60) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v14[v15[6]] = v74;
  LOBYTE(v60) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v21 = v75;
  v22 = &v14[v15[7]];
  *v22 = v74;
  *(v22 + 2) = v21;
  v64 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v23 = &v14[v15[8]];
  v24 = v79;
  v25 = v81;
  *(v23 + 6) = v80;
  *(v23 + 7) = v25;
  *(v23 + 8) = v82;
  v26 = v77;
  *(v23 + 2) = v76;
  *(v23 + 3) = v26;
  *(v23 + 4) = v78;
  *(v23 + 5) = v24;
  v27 = v75;
  *v23 = v74;
  *(v23 + 1) = v27;
  LOBYTE(v56) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v28 = v61;
  v29 = &v14[v15[9]];
  *v29 = v60;
  *(v29 + 8) = v28;
  LOBYTE(v56) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v30 = BYTE1(v60);
  v31 = WORD1(v60);
  v32 = &v14[v15[10]];
  *v32 = v60;
  v32[1] = v30;
  *(v32 + 1) = v31;
  v59 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v33 = v47;
  v34 = &v48[v47[11]];
  v35 = v61;
  *v34 = v60;
  *(v34 + 1) = v35;
  *(v34 + 2) = v62;
  v34[48] = v63;
  v55 = 8;
  sub_217AD07F8();
  sub_217D89BCC();
  v36 = *(&v56 + 1);
  v37 = v57;
  v38 = BYTE1(v57);
  v39 = *(&v57 + 1);
  v40 = v58;
  v41 = &v48[v33[12]];
  *v41 = v56;
  *(v41 + 1) = v36;
  v41[16] = v37;
  v41[17] = v38;
  *(v41 + 3) = v39;
  *(v41 + 4) = v40;
  v55 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  (*(v12 + 8))(v54, v53);
  v42 = v48;
  v43 = &v48[v47[13]];
  v44 = v57;
  *v43 = v56;
  *(v43 + 1) = v44;
  sub_217B44464(v42, v49);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return sub_217B444C8(v42);
}

void sub_217B44400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B43AC4();
    v7 = a3(a1, &type metadata for ArticleUnsaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B44464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B444C8(uint64_t a1)
{
  v2 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B445FC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_217B44AF0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B42594(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217B42594(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217B42594(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217B42594(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217B42594(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217B42594(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
              if (v7 <= 0x3F)
              {
                sub_217B42594(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
                {
                  sub_217B42594(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B42594(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
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

void sub_217B44E54(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B44FA8()
{
  result = qword_27CB9FF20;
  if (!qword_27CB9FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF20);
  }

  return result;
}

unint64_t sub_217B45000()
{
  result = qword_27CB9FF28;
  if (!qword_27CB9FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF28);
  }

  return result;
}

unint64_t sub_217B45058()
{
  result = qword_27CB9FF30;
  if (!qword_27CB9FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF30);
  }

  return result;
}

uint64_t sub_217B450AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_217B454C8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FF68);
  __swift_project_value_buffer(v0, qword_27CB9FF68);
  return sub_217D8866C();
}

uint64_t FavoriteTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FavoriteTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FavoriteTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FavoriteTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FavoriteTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FavoriteTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B45A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t FavoriteTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FavoriteTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FavoriteTagEvent(0);
  v5 = v4[5];
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t FavoriteTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FavoriteTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FavoriteTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FavoriteTagEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FavoriteTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FavoriteTagEvent.Model(0) + 28));
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

__n128 FavoriteTagEvent.Model.init(eventData:tagData:viewData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for FavoriteTagEvent.Model(0);
  v15 = (a5 + v14[5]);
  *v15 = v8;
  v15[1] = v9;
  v16 = a5 + v14[6];
  *v16 = v10;
  *(v16 + 8) = v11;
  *(v16 + 16) = v12;
  v17 = a5 + v14[7];
  v18 = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = v18;
  result = *(a4 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217B45F98()
{
  v1 = 0x746144746E657665;
  v2 = 0x6174614477656976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x61746144676174;
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

uint64_t sub_217B4601C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B46FD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B46044(uint64_t a1)
{
  v2 = sub_217B463D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B46080(uint64_t a1)
{
  v2 = sub_217B463D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FavoriteTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B468A4(0, &qword_27CB9FF80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B463D0();
  sub_217D89E7C();
  LOBYTE(v27[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FavoriteTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v27[0] = *v11;
    *(&v27[0] + 1) = v12;
    LOBYTE(v23) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v29 = v14;
    v30 = v15;
    v31 = v13;
    v33 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v27[2] = v16[2];
    v28 = *(v16 + 48);
    v23 = v19;
    v24 = v18;
    v25 = v16[2];
    v26 = *(v16 + 48);
    v32 = 3;
    sub_217ACC004(v27, v21);
    sub_217A55B98();
    sub_217D89CAC();
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v22 = v26;
    sub_217ACC69C(v21);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B463D0()
{
  result = qword_27CB9FF88;
  if (!qword_27CB9FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF88);
  }

  return result;
}

uint64_t FavoriteTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B468A4(0, &qword_27CB9FF90, MEMORY[0x277D844C8]);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for FavoriteTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B463D0();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  LOBYTE(v29) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v25;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v33 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v14 = *(&v29 + 1);
  v15 = &v11[v9[5]];
  *v15 = v29;
  *(v15 + 1) = v14;
  v33 = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v16 = *(&v29 + 1);
  v17 = v30;
  v18 = &v11[v9[6]];
  *v18 = v29;
  *(v18 + 1) = v16;
  *(v18 + 8) = v17;
  v33 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v28, v27);
  v19 = &v11[v9[7]];
  v20 = v30;
  *v19 = v29;
  *(v19 + 1) = v20;
  *(v19 + 2) = v31;
  v19[48] = v32;
  sub_217B46908(v11, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B4696C(v11);
}

void sub_217B468A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B463D0();
    v7 = a3(a1, &type metadata for FavoriteTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B46908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B4696C(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B46AA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217B46CB0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B45A2C(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217B45A2C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217B45A2C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217B46E34(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B46ED0()
{
  result = qword_27CB9FFB8;
  if (!qword_27CB9FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFB8);
  }

  return result;
}

unint64_t sub_217B46F28()
{
  result = qword_27CB9FFC0;
  if (!qword_27CB9FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFC0);
  }

  return result;
}

unint64_t sub_217B46F80()
{
  result = qword_27CB9FFC8;
  if (!qword_27CB9FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFC8);
  }

  return result;
}

uint64_t sub_217B46FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t sub_217B471AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_217B47234(uint64_t a1)
{
  v2 = sub_217B47408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B47270(uint64_t a1)
{
  v2 = sub_217B47408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetLocationData.encode(to:)(void *a1)
{
  sub_217B47648(0, &qword_2811BC6A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47408();
  sub_217D89E7C();
  v11 = v8;
  sub_217B4745C();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B47408()
{
  result = qword_2811C2DB8;
  if (!qword_2811C2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DB8);
  }

  return result;
}

unint64_t sub_217B4745C()
{
  result = qword_2811C69C8[0];
  if (!qword_2811C69C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C69C8);
  }

  return result;
}

uint64_t WidgetLocationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B47648(0, &qword_2811BCA10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47408();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B476AC();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B47648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B47408();
    v7 = a3(a1, &type metadata for WidgetLocationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B476AC()
{
  result = qword_2811C69B8;
  if (!qword_2811C69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69B8);
  }

  return result;
}

unint64_t sub_217B4775C()
{
  result = qword_27CB9FFD0;
  if (!qword_27CB9FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFD0);
  }

  return result;
}

unint64_t sub_217B477B4()
{
  result = qword_2811C2DA8;
  if (!qword_2811C2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DA8);
  }

  return result;
}

unint64_t sub_217B4780C()
{
  result = qword_2811C2DB0;
  if (!qword_2811C2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DB0);
  }

  return result;
}

uint64_t sub_217B478C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4364656863746566 && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_217B4794C(uint64_t a1)
{
  v2 = sub_217B47B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B47988(uint64_t a1)
{
  v2 = sub_217B47B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFetchFavoritesSyncData.encode(to:)(void *a1)
{
  sub_217B47CE0(0, &qword_2811BC558, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47B0C();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B47B0C()
{
  result = qword_2811BE8F0[0];
  if (!qword_2811BE8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BE8F0);
  }

  return result;
}

uint64_t SportsFetchFavoritesSyncData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B47CE0(0, &qword_27CB9FFD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47B0C();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B47CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B47B0C();
    v7 = a3(a1, &type metadata for SportsFetchFavoritesSyncData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B47D48()
{
  result = qword_2811BE8D0;
  if (!qword_2811BE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8D0);
  }

  return result;
}

unint64_t sub_217B47DA0()
{
  result = qword_2811BE8D8;
  if (!qword_2811BE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8D8);
  }

  return result;
}

uint64_t sub_217B47E0C(void *a1)
{
  sub_217B47CE0(0, &qword_2811BC558, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47B0C();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B47F78()
{
  result = qword_27CB9FFE0;
  if (!qword_27CB9FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFE0);
  }

  return result;
}

unint64_t sub_217B47FD0()
{
  result = qword_2811BE8E0;
  if (!qword_2811BE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8E0);
  }

  return result;
}

unint64_t sub_217B48028()
{
  result = qword_2811BE8E8;
  if (!qword_2811BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8E8);
  }

  return result;
}

uint64_t sub_217B48144()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0018);
  __swift_project_value_buffer(v0, qword_27CBA0018);
  return sub_217D8866C();
}

uint64_t NotificationUnsubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationUnsubscribeEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.notificationSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.notificationSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}