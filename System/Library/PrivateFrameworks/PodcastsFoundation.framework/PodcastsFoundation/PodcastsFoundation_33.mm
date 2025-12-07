unint64_t sub_1D90451D4()
{
  result = qword_1ECAB9540;
  if (!qword_1ECAB9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9540);
  }

  return result;
}

unint64_t sub_1D904522C()
{
  result = qword_1ECAB9548;
  if (!qword_1ECAB9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9548);
  }

  return result;
}

uint64_t sub_1D9045280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D9045398(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001D91D3C10 == a2;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D3C30 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D90454D0(uint64_t a1)
{
  v2 = sub_1D90456EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D904550C(uint64_t a1)
{
  v2 = sub_1D90456EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeTranscriptContainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9550, &qword_1D91AB760);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90456EC();

  sub_1D9179F1C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9558, &qword_1D91AB768);
  sub_1D9045944(&qword_1ECAB9560, sub_1D9045740, MEMORY[0x1E69E6300]);
  sub_1D91799FC();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D90456EC()
{
  result = qword_1ECAB18D8;
  if (!qword_1ECAB18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18D8);
  }

  return result;
}

unint64_t sub_1D9045740()
{
  result = qword_1ECAB9568;
  if (!qword_1ECAB9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9568);
  }

  return result;
}

uint64_t EpisodeTranscriptContainer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9570, &qword_1D91AB770);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90456EC();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9558, &qword_1D91AB768);
    sub_1D9045944(&qword_1ECAAFF38, sub_1D90459BC, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9045944(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9558, &qword_1D91AB768);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90459BC()
{
  result = qword_1ECAB1D48;
  if (!qword_1ECAB1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D48);
  }

  return result;
}

double EpisodeTranscriptData.attributes.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;

  return result;
}

void sub_1D9045AC0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9045B50(uint64_t a1)
{
  v2 = sub_1D9045D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9045B8C(uint64_t a1)
{
  v2 = sub_1D9045D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeTranscriptData.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9578, &qword_1D91AB778);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v11 - v4;
  v6 = v1[1];
  v13 = *v1;
  v12 = *(v1 + 16);
  v7 = v1[3];
  v11 = v1[4];
  v8 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9045D88();

  sub_1D9179F1C();
  v15 = v13;
  v16 = v6;
  v17 = v12;
  v18 = v7;
  v19 = v11;
  v20 = v8;
  sub_1D9045DDC();
  v9 = v14;
  sub_1D91799FC();

  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1D9045D88()
{
  result = qword_1ECAB1D60;
  if (!qword_1ECAB1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D60);
  }

  return result;
}

unint64_t sub_1D9045DDC()
{
  result = qword_1ECAB9580;
  if (!qword_1ECAB9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9580);
  }

  return result;
}

uint64_t EpisodeTranscriptData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9588, &qword_1D91AB780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9045D88();
  sub_1D9179EEC();
  if (!v2)
  {
    sub_1D9045FB8();
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v9 = v14[1];
    v10 = v15;
    v11 = v16;
    v12 = v17;
    *a2 = v14[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D9045FB8()
{
  result = qword_1ECAB1388;
  if (!qword_1ECAB1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1388);
  }

  return result;
}

uint64_t EpisodeTranscriptDataAttributes.ttmlToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EpisodeTranscriptDataAttributes.snippet.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D90460B0()
{
  v1 = 0x656B6F546C6D7474;
  v2 = 0x707954726566666FLL;
  if (*v0 != 2)
  {
    v2 = 0x74657070696E73;
  }

  if (*v0)
  {
    v1 = 0x72756F5374786574;
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

uint64_t sub_1D904613C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9046BF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9046164(uint64_t a1)
{
  v2 = sub_1D9046434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90461A0(uint64_t a1)
{
  v2 = sub_1D9046434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeTranscriptDataAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9590, &unk_1D91AB788);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v13 = *(v1 + 16);
  v7 = *(v1 + 24);
  v11[1] = *(v1 + 32);
  v12 = v7;
  v11[0] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9046434();
  sub_1D9179F1C();
  v20 = 0;
  v8 = v14;
  sub_1D91799BC();
  if (!v8)
  {
    v9 = v12;
    v19 = v13;
    v18 = 1;
    sub_1D9046488();
    sub_1D91799FC();
    v15 = v9;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    sub_1D90448F0(&qword_1ECAB94E8, sub_1D9044968, MEMORY[0x1E69E6300]);
    sub_1D91799FC();
    v16 = 3;
    sub_1D917994C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9046434()
{
  result = qword_1ECAB13A0[0];
  if (!qword_1ECAB13A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB13A0);
  }

  return result;
}

unint64_t sub_1D9046488()
{
  result = qword_1ECAB9598;
  if (!qword_1ECAB9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9598);
  }

  return result;
}

void EpisodeTranscriptDataAttributes.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB95A0, &qword_1D91AB798);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9046434();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v26 = 0;
    v9 = sub_1D91798BC();
    v11 = v10;
    v12 = v9;
    v24 = 1;
    sub_1D90467FC();
    sub_1D91798FC();
    v20 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    v23 = 2;
    sub_1D90448F0(&qword_1ECAAFF00, sub_1D9044C88, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    v19 = v21;
    v22 = 3;
    v13 = sub_1D917984C();
    v15 = v14;
    v16 = *(v6 + 8);
    v18 = v13;
    v16(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    v17 = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v17;
    *(a2 + 40) = v15;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t sub_1D90467FC()
{
  result = qword_1ECAB2638;
  if (!qword_1ECAB2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2638);
  }

  return result;
}

unint64_t sub_1D90468E4()
{
  result = qword_1ECAB95A8;
  if (!qword_1ECAB95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95A8);
  }

  return result;
}

unint64_t sub_1D904693C()
{
  result = qword_1ECAB95B0;
  if (!qword_1ECAB95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95B0);
  }

  return result;
}

unint64_t sub_1D9046994()
{
  result = qword_1ECAB95B8;
  if (!qword_1ECAB95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95B8);
  }

  return result;
}

unint64_t sub_1D90469EC()
{
  result = qword_1ECAB1390;
  if (!qword_1ECAB1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1390);
  }

  return result;
}

unint64_t sub_1D9046A44()
{
  result = qword_1ECAB1398;
  if (!qword_1ECAB1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1398);
  }

  return result;
}

unint64_t sub_1D9046A9C()
{
  result = qword_1ECAB1D50;
  if (!qword_1ECAB1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D50);
  }

  return result;
}

unint64_t sub_1D9046AF4()
{
  result = qword_1ECAB1D58;
  if (!qword_1ECAB1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D58);
  }

  return result;
}

unint64_t sub_1D9046B4C()
{
  result = qword_1ECAB18C8;
  if (!qword_1ECAB18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18C8);
  }

  return result;
}

unint64_t sub_1D9046BA4()
{
  result = qword_1ECAB18D0;
  if (!qword_1ECAB18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18D0);
  }

  return result;
}

uint64_t sub_1D9046BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F546C6D7474 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F5374786574 && a2 == 0xEA00000000006563 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74657070696E73 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

id GenericDataSourceSection.__allocating_init(title:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v6 = sub_1D8E3B050;
  v6[1] = 0;
  v7 = &v5[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v7 = a1;
  *(v7 + 1) = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t GenericDataSourceSection.storedTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTGenericDataSourceSection_storedTitle);

  return v1;
}

uint64_t sub_1D9046F00()
{
  v1 = (v0 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D9046F58(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_1D904702C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D904708C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D9047554;
  a2[1] = v6;
}

uint64_t sub_1D9047118(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  *v6 = sub_1D904751C;
  v6[1] = v5;
}

id GenericDataSourceSection.init(title:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v3 = sub_1D8E3B050;
  v3[1] = 0;
  v4 = &v2[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v4 = a1;
  *(v4 + 1) = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for GenericDataSourceSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

id GenericDataSourceSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenericDataSourceSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericDataSourceSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9047554@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.init(serverEpisode:showViewModelTypeIsSerial:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1D90475B8(SEL *a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (!v7)
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x1DA72AA90](0, v9);

    v11 = *(v17 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);

    swift_unknownObjectRelease();
    if (!v11)
    {
      return 0;
    }

LABEL_9:
    v12 = *(v11 + 16);

    if (v12)
    {
      v9 = *(v12 + 16);

      if (!(v9 >> 62))
      {
        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_12:
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1DA72AA90](0, v9);
          }

          else
          {
            if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v13 = *(v9 + 32);
          }

          v14 = v13;

          v15 = [v14 *a1];

          if (v15)
          {
            v16 = sub_1D917820C();

            return v16;
          }

          return 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      result = sub_1D917935C();
      if (result)
      {
        goto LABEL_12;
      }

LABEL_23:

      return 0;
    }

    return 0;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(v9 + 32) + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (v11)
  {

    goto LABEL_9;
  }

  return 0;
}

uint64_t IntermediateEyebrowBuilderEpisode.entitlementState.getter()
{
  v1 = [*v0 priceType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = sub_1D8FCEA04(v3, v5);
  if (v7)
  {
    return 0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.episodeTypeResolvedValue.getter()
{
  v1 = 1;
  if (*(*(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 168))
  {

    v2 = sub_1D917980C();

    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if (v2 == 2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return v1;
}

BOOL IntermediateEyebrowBuilderEpisode.mediaType.getter()
{
  v0 = sub_1D91772BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  v4 = PodcastEpisodeAttributes.uti.getter();
  v6 = v5;

  sub_1D917729C();
  v7 = sub_1D917721C();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (!v6)
  {

    return 0;
  }

  if (v4 != v7 || v6 != v9)
  {
    v11 = sub_1D9179ACC();

    return (v11 & 1) != 0;
  }

  return 1;
}

uint64_t IntermediateEyebrowBuilderEpisode.isExplicit.getter()
{
  if (!*(*(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 224) || (, v1 = sub_1D917980C(), , v1 != 1))
  {
    LOBYTE(v1) = sub_1D9179ACC();
  }

  return v1 & 1;
}

uint64_t IntermediateEyebrowBuilderEpisode.seasonNumberOpt.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 360))
  {
    return 0;
  }

  result = *(v1 + 352);
  if (result <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.episodeNumberOpt.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 344))
  {
    return 0;
  }

  result = *(v1 + 336);
  if (result <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{

  PodcastEpisodeAttributes.releaseDateResolved.getter(a1);
}

uint64_t sub_1D9047C6C()
{
  v1 = [*v0 priceType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = sub_1D8FCEA04(v3, v5);
  if (v7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D9047D70()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 360))
  {
    return 0;
  }

  result = *(v1 + 352);
  if (result < 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D9047DAC()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 344))
  {
    return 0;
  }

  result = *(v1 + 336);
  if (result < 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D9047DE8@<X0>(uint64_t a1@<X8>)
{

  PodcastEpisodeAttributes.releaseDateResolved.getter(a1);
}

unint64_t sub_1D9047E7C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D904817C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MAPIContentType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0x5374736163646F70;
      case 4:
        return 0x697263736E617274;
      case 5:
        return 0x69726F6765746163;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x74736163646F70;
      case 1:
        return 0x4574736163646F70;
      case 2:
        return 0x4374736163646F70;
    }
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D9047FE8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 2)
  {
    switch(v2)
    {
      case 0:
        return 0x74736163646F70;
      case 1:
        return 0x4574736163646F70;
      case 2:
        return 0x4374736163646F70;
    }

    goto LABEL_16;
  }

  switch(v2)
  {
    case 3:
      return 0x5374736163646F70;
    case 4:
      v4 = 0x63736E617274;
      break;
    case 5:
      v4 = 0x6F6765746163;
      break;
    default:
LABEL_16:
      result = sub_1D9179C9C();
      __break(1u);
      return result;
  }

  return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
}

unint64_t MAPIContentType.mediaRequestContentType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    result = sub_1D9179C9C();
    __break(1u);
  }

  else
  {
    *a2 = 0x50402030001uLL >> (8 * result);
  }

  return result;
}

unint64_t sub_1D904817C(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D9048190()
{
  result = qword_1ECAB95D0;
  if (!qword_1ECAB95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95D0);
  }

  return result;
}

unint64_t sub_1D90481E8()
{
  result = qword_1ECAB95D8;
  if (!qword_1ECAB95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB95E0, &qword_1D91ABE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95D8);
  }

  return result;
}

uint64_t sub_1D904825C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  return sub_1D8CFD9D8(v1 + v3, a1);
}

uint64_t sub_1D90482B4(uint64_t a1)
{
  v3 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1D8D04E9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D904837C(uint64_t a1, uint64_t *a2)
{
  sub_1D8CFD9D8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1D8D04E9C(v6, v3 + v4);
  return swift_endAccess();
}

id BaseMAPIRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseMAPIRequest.init()()
{
  v1 = v0;
  v2 = type metadata accessor for MediaRequestController();
  v3 = [objc_allocWithZone(v2) init];
  v4 = &v1[OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController];
  *(v4 + 3) = v2;
  *(v4 + 4) = &protocol witness table for MediaRequestController;
  *v4 = v3;
  swift_beginAccess();
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(1, v5, v6);
  swift_endAccess();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BaseMAPIRequest();
  return objc_msgSendSuper2(&v8, sel_init);
}

id BaseMAPIRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseMAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D90486E0(unint64_t a1, unint64_t a2, SEL *a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v26 = v4 & 0xFFFFFFFFFFFFFF8;
      v27 = v4 & 0xC000000000000001;
      v25 = v4;
      do
      {
        if (v27)
        {
          v9 = MEMORY[0x1DA72AA90](v6, v4);
        }

        else
        {
          if (v6 >= *(v26 + 16))
          {
            goto LABEL_23;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v29 = v6 + 1;
        v11 = [v9 *a3];
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = *a2;
        v30 = *a2;
        v14 = a2;
        *a2 = 0x8000000000000000;
        a2 = sub_1D8D490F4(v11);
        v16 = *(v4 + 16);
        v17 = (v15 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_24;
        }

        v19 = v15;
        if (*(v4 + 24) >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v4 = v30;
            if (v15)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D8F84A00();
            v4 = v30;
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D9008460(v18, isUniquelyReferenced_nonNull_native);
          v20 = sub_1D8D490F4(v11);
          if ((v19 & 1) != (v21 & 1))
          {
            sub_1D9179CFC();
            __break(1u);
            return;
          }

          a2 = v20;
          v4 = v30;
          if (v19)
          {
LABEL_4:
            v7 = *(v4 + 56);
            v8 = *(v7 + 8 * a2);
            *(v7 + 8 * a2) = v12;

            goto LABEL_5;
          }
        }

        *(v4 + 8 * (a2 >> 6) + 64) |= 1 << a2;
        *(*(v4 + 48) + 8 * a2) = v11;
        *(*(v4 + 56) + 8 * a2) = v12;
        v22 = *(v4 + 16);
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_25;
        }

        *(v4 + 16) = v24;
LABEL_5:
        a2 = v14;
        *v14 = v4;

        ++v6;
        v4 = v25;
      }

      while (v29 != v5);
    }
  }
}

uint64_t sub_1D9048914()
{
  sub_1D8CF2154(0, &qword_1EDCD76D0, 0x1E696AEC0);
  result = sub_1D917917C();
  qword_1ECAB95F0 = result;
  return result;
}

uint64_t sub_1D9048A74(uint64_t a1)
{
  v3 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D9048ACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id MAPIResponseDatabaseObjectProvider.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache;
  *&v3[v4] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing] = 1;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC] = 0;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC] = 0;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate] = 0;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_response] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MAPIResponseDatabaseObjectProvider.init(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing] = 1;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC] = 0;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC] = 0;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate] = 0;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_response] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MAPIResponseDatabaseObjectProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D9048D4C(uint64_t a1, uint64_t a2)
{
  sub_1D9048F34();
  v5 = qword_1ECAB36C8;
  v6 = *(v2 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache);
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = [v6 objectForKey_];

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9628, qword_1D91ABF70);
    sub_1D917804C();
  }

  v8 = sub_1D8E27440(MEMORY[0x1E69E7CC0]);

  if (v8[2] && (v9 = sub_1D8D490F4(a2), (v10 & 1) != 0) && (v11 = *(v8[7] + 8 * v9), , , *(v11 + 16)) && (v12 = sub_1D8D490F4(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    return v14;
  }

  else
  {

    return 0;
  }
}

void sub_1D9048F34()
{
  v1 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing;
  if (*(v0 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing) == 1)
  {
    v2 = v0;
    sub_1D8E27440(MEMORY[0x1E69E7CC0]);
    v3 = qword_1F54618C0;
    v4 = sub_1D9049194(qword_1F54618C0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v4, v3, isUniquelyReferenced_nonNull_native);
    v6 = qword_1F54618C8;
    v7 = sub_1D9049194(qword_1F54618C8);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v7, v6, v8);
    v9 = qword_1F54618D0;
    v10 = sub_1D9049194(qword_1F54618D0);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v10, v9, v11);
    v12 = qword_1F54618D8;
    v13 = sub_1D9049194(qword_1F54618D8);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v13, v12, v14);
    v15 = qword_1F54618E0;
    v16 = sub_1D9049194(qword_1F54618E0);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v16, v15, v17);
    v18 = qword_1F54618E8;
    v19 = sub_1D9049194(qword_1F54618E8);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v19, v18, v20);
    v21 = *(v0 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9628, qword_1D91ABF70);
    v22 = sub_1D917802C();

    if (qword_1ECAB36C8 != -1)
    {
      swift_once();
    }

    [v21 setObject:v22 forKey:qword_1ECAB95F0];

    *(v2 + v1) = 0;
  }
}

unint64_t sub_1D9049194(void *a1)
{
  v95[1] = *MEMORY[0x1E69E9840];
  v5 = [*(v1 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_response) itemsFor_];
  v6 = sub_1D91785FC();

  v90 = a1;
  if (v6 >> 62)
  {
    v7 = sub_1D917935C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = (v6 & 0xC000000000000001);
  v91 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if (v9)
    {
      v3 = MEMORY[0x1DA72AA90](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v3 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v85 = v9;
        v86 = sub_1D9176A6C();

        swift_willThrow();
        v28 = v2;

        goto LABEL_33;
      }
    }

    if (([v3 respondsToSelector_] & 1) == 0)
    {
      __break(1u);
    }

    v11 = [v3 id];
    v12 = sub_1D917820C();
    v14 = v13;

    v2 = sub_1D8FF31C8(v12, v14);
    LOBYTE(v14) = v15;
    swift_unknownObjectRelease();
    ++v8;
    if ((v14 & 1) == 0)
    {
      v16 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D8ECC9FC(0, *(v91 + 2) + 1, 1, v91);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      v91 = v16;
      if (v18 >= v17 >> 1)
      {
        v91 = sub_1D8ECC9FC((v17 > 1), v18 + 1, 1, v16);
      }

      *(v91 + 2) = v18 + 1;
      *&v91[8 * v18 + 32] = v2;
      v8 = v10;
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v95[0] = sub_1D8E27344(MEMORY[0x1E69E7CC0]);
  if (v90 - 2 < 4)
  {

    v20 = sub_1D8E27344(MEMORY[0x1E69E7CC0]);

    return v20;
  }

  if (!v90)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D9189060;
    *(v22 + 32) = sub_1D917820C();
    *(v22 + 40) = v23;
    *(v22 + 48) = sub_1D917820C();
    *(v22 + 56) = v24;
    *(v22 + 64) = sub_1D917820C();
    *(v22 + 72) = v25;
    v26 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v3 = v26;
    v27 = *(v91 + 2);
    v28 = v89;
    if (v27)
    {
      v92 = v26;
      v94 = v19;
      sub_1D91795CC();
      v29 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v29 += 8;
        --v27;
      }

      while (v27);

      v30 = v94;
      v3 = v92;
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v43 = objc_opt_self();
    sub_1D8FC0EF8(v30);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v44 = sub_1D9178A8C();

    v45 = [v43 predicateForPodcastStoreIDs_];

    v46 = [v43 predicateForNotHiddenPodcasts];
    v47 = [v45 AND_];

    [v3 setPredicate_];
    sub_1D8F60B24(v22);
    v48 = sub_1D91785DC();

    [v3 setPropertiesToFetch_];

    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v49 = sub_1D91785DC();
    [v3 setSortDescriptors_];

    v8 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC;
    if (*(v89 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC))
    {

      goto LABEL_33;
    }

    v54 = objc_opt_self();
    v55 = v3;
    v56 = [v54 sharedInstance];
    v57 = [v56 mainQueueContext];

    v58 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v55 managedObjectContext:v57 sectionNameKeyPath:0 cacheName:0];
    v59 = *(v89 + v8);
    v2 = v89;
    *(v89 + v8) = v58;
    v60 = v58;

    if (v60)
    {
      v61 = sub_1D91785DC();

      [v60 setPropertyKeys_];

      v62 = *(v89 + v8);
      if (!v62)
      {
        goto LABEL_47;
      }
    }

    else
    {

      v62 = *(v89 + v8);
      if (!v62)
      {
        goto LABEL_47;
      }
    }

    v28 = v89;
    [v62 setDelegate_];
    v80 = *(v89 + v8);
    if (!v80)
    {
      goto LABEL_47;
    }

    v94 = 0;
    v81 = [v80 performFetch_];
    v9 = v94;
    if (!v81)
    {
      goto LABEL_61;
    }

    v82 = v94;
LABEL_33:
    v50 = *(v28 + v8);
    if (!v50 || (v51 = [v50 fetchedObjects]) == 0)
    {
LABEL_46:
      v55 = v3;
LABEL_47:

      return v95[0];
    }

    v52 = v51;
    sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    v53 = &selRef_storeCollectionId;
LABEL_45:
    v71 = sub_1D91785FC();

    sub_1D90486E0(v71, v95, v53);

    goto LABEL_46;
  }

  v31 = v89;
  if (v90 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D9197860;
    *(v32 + 32) = sub_1D917820C();
    *(v32 + 40) = v33;
    *(v32 + 48) = sub_1D917820C();
    *(v32 + 56) = v34;
    *(v32 + 64) = sub_1D917820C();
    *(v32 + 72) = v35;
    *(v32 + 80) = sub_1D917820C();
    *(v32 + 88) = v36;
    *(v32 + 96) = sub_1D917820C();
    *(v32 + 104) = v37;
    *(v32 + 112) = sub_1D917820C();
    *(v32 + 120) = v38;
    v39 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v3 = v39;
    v40 = *(v91 + 2);
    if (v40)
    {
      v93 = v39;
      v94 = v19;
      sub_1D91795CC();
      v41 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v41 += 8;
        --v40;
      }

      while (v40);

      v42 = v94;
      v3 = v93;
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    v63 = objc_opt_self();
    sub_1D8FC0EF8(v42);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v64 = sub_1D9178A8C();

    v65 = [v63 predicateForEpisodeStoreTrackIds_];

    [v3 setPredicate_];
    sub_1D8F60B24(v32);
    v66 = sub_1D91785DC();

    [v3 setPropertiesToFetch_];

    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v67 = sub_1D91785DC();
    [v3 setSortDescriptors_];

    v68 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC;
    if (*(v89 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC))
    {
    }

    else
    {
      v72 = objc_opt_self();
      v55 = v3;
      v73 = [v72 sharedInstance];
      v74 = [v73 mainQueueContext];

      v75 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v55 managedObjectContext:v74 sectionNameKeyPath:0 cacheName:0];
      v76 = *(v89 + v68);
      *(v89 + v68) = v75;
      v77 = v75;

      if (v77)
      {
        v78 = sub_1D91785DC();

        [v77 setPropertyKeys_];

        v79 = *(v89 + v68);
        if (!v79)
        {
          goto LABEL_47;
        }
      }

      else
      {

        v79 = *(v89 + v68);
        if (!v79)
        {
          goto LABEL_47;
        }
      }

      v31 = v89;
      [v79 setDelegate_];
      v83 = *(v89 + v68);
      if (!v83)
      {
        goto LABEL_47;
      }

      v94 = 0;
      if ([v83 performFetch_])
      {
        v84 = v94;
      }

      else
      {
        v87 = v94;
        v88 = sub_1D9176A6C();

        swift_willThrow();
        v31 = v89;
      }
    }

    v69 = *(v31 + v68);
    if (!v69)
    {
      goto LABEL_46;
    }

    v70 = [v69 fetchedObjects];
    if (!v70)
    {
      goto LABEL_46;
    }

    v52 = v70;
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    v53 = &selRef_storeTrackId;
    goto LABEL_45;
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

id sub_1D9049DA0()
{
  *(v0 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing) = 1;
  v1 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result mapiResponseDatabaseObjectsDidChange];
  }

  return result;
}

id MAPIResponseDatabaseObjectProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAPIResponseDatabaseObjectProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAPIResponseDatabaseObjectProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MediaAPIRequest<>.parse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19MediaAPIClientErrorO(unint64_t *a1)
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

uint64_t sub_1D904A1B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D904A214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D904A264(void *result, unsigned int a2)
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

uint64_t MediaAPIResponse.contentHash.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MediaAPIResponse.init(objects:response:contentHash:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v8 = a7 + *(type metadata accessor for MediaAPIResponse(0, a6, a3, a4) + 36);

  return sub_1D8D85D0C(a5, v8);
}

void sub_1D904A39C(uint64_t a1)
{
  sub_1D91786FC();
  if (v1 <= 0x3F)
  {
    sub_1D904A47C();
    if (v2 <= 0x3F)
    {
      sub_1D8CF4344();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MediaRequest.Params(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D904A47C()
{
  result = qword_1ECAAFDD8;
  if (!qword_1ECAAFDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFDD8);
  }

  return result;
}

id MediaRequestController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D904A528, 0, 0);
}

uint64_t sub_1D904A528()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v12 = *(v0 + 48);
  *(v5 + 16) = v2;
  *(v5 + 24) = v12;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v9 = type metadata accessor for MediaAPIResponse(0, v12, v7, v8);
  *v6 = v0;
  v6[1] = sub_1D904A658;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000039, 0x80000001D91C99C0, sub_1D904E9D8, v5, v9);
}

uint64_t sub_1D904A658()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F49730, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

char *MediaRequestController.__allocating_init(responseQueue:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = a1;
  v6 = v3;

  return v6;
}

uint64_t MediaRequestControllerProtocol.perform(params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D904A838, 0, 0);
}

uint64_t sub_1D904A838()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CF8, &unk_1D91A6E00);
  *v4 = v0;
  v4[1] = sub_1D904A94C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000010, 0x80000001D91D27C0, sub_1D904EDE4, v3, v5);
}

uint64_t sub_1D904A94C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D904AA94;
  }

  else
  {

    v2 = sub_1D904AA68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D904AA94()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D904AAF8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D904AB58()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D904ABAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D904AC64()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D904ACA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1D904AD58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v44 = a4;
  v48 = a2;
  v43 = a1;
  v7 = type metadata accessor for MediaRequest.Params(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v49 = v14;
  *(v14 + 2) = v13;
  *(v14 + 3) = a3;
  v47 = v13;
  *(v14 + 4) = a4;
  sub_1D9179E2C();
  sub_1D8D85B08(a1, v12);
  v15 = *(v8 + 80);
  v16 = (v15 + 16) & ~v15;
  v46 = v9 + 7;
  v17 = (v9 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 79) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1D8D85D0C(v12, v20 + v16);
  *(v20 + v17) = MEMORY[0x1E69E7CC0];
  v21 = v20 + v18;
  *(v21 + 64) = v60;
  v22 = v59;
  *(v21 + 32) = v58;
  *(v21 + 48) = v22;
  v23 = v57;
  *v21 = v56;
  *(v21 + 16) = v23;
  v24 = v42;
  *(v20 + v19) = v42;
  v25 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v49;
  *v25 = sub_1D8E40BC8;
  v25[1] = v26;
  v27 = type metadata accessor for MediaRequestBuilder();

  v44 = v24;

  v28 = v43;
  sub_1D8D96644(v43);
  v29 = sub_1D8D963C0(v28);
  v30 = v45;
  sub_1D8D85B08(v28, v45);
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  sub_1D8D85D0C(v30, v31 + ((v15 + 24) & ~v15));
  v54 = sub_1D8D85220;
  v55 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1D8D85118;
  v53 = &block_descriptor_64;
  v32 = _Block_copy(&aBlock);

  v33 = [v29 thenWithBlock_];
  _Block_release(v32);

  sub_1D8D85B08(v28, v30);
  v34 = (v15 + 40) & ~v15;
  v35 = (v46 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = sub_1D904EE88;
  v36[4] = v20;
  sub_1D8D85D0C(v30, v36 + v34);
  v37 = v44;
  *(v36 + v35) = v44;
  v38 = v48;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v54 = sub_1D8D90DA8;
  v55 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1D8D5960C;
  v53 = &block_descriptor_22_1;
  v39 = _Block_copy(&aBlock);
  v40 = v38;
  v41 = v37;

  [v33 addFinishBlock_];

  _Block_release(v39);
}

char *sub_1D904B1C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a3;
  v39 = a8;
  v37 = a7;
  v40 = a2;
  v11 = sub_1D9177E0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = v12;
    v36 = v15;
    v20 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
    v21 = a5;
    v22 = result;
    swift_beginAccess();
    v34 = *&v22[v20];

    v23 = swift_allocObject();
    v24 = v38;
    v25 = v11;
    v26 = a1;
    v28 = v39;
    v27 = v40;
    v23[2] = v37;
    v23[3] = v28;
    v23[4] = v26;
    v23[5] = v27;
    v23[6] = v24;
    v23[7] = a4;
    v23[8] = v21;
    aBlock[4] = sub_1D905043C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_160_0;
    v29 = _Block_copy(aBlock);

    v30 = v27;

    v31 = v21;
    sub_1D9177E4C();
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v32 = v34;
    MEMORY[0x1DA72A400](0, v18, v14, v29);
    _Block_release(v29);

    (*(v35 + 8))(v14, v25);
    (*(v16 + 8))(v18, v36);
  }

  return result;
}

void sub_1D904B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = type metadata accessor for MediaRequest.Params(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_1D8D85B08(a1, v12);
  v14 = *(v7 + 80);
  v15 = (v14 + 40) & ~v14;
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v15;
  v35 = v16;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = v17;
  v18 = swift_allocObject();
  v18[2] = sub_1D904EE8C;
  v18[3] = v13;
  v36 = v13;
  v18[4] = MEMORY[0x1E69E7CC0];
  sub_1D8D85D0C(v12, v18 + v15);
  v19 = v33;
  *(v18 + v16) = v33;
  *(v18 + v17) = 0;
  v20 = type metadata accessor for MediaRequestBuilder();

  v33 = v19;
  v21 = v31;
  sub_1D8D96644(v31);
  v22 = sub_1D8D963C0(v21);
  sub_1D8D85B08(v21, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  sub_1D8D85D0C(v9, v23 + ((v14 + 24) & ~v14));
  v41 = sub_1D905064C;
  v42 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1D8D85118;
  v40 = &block_descriptor_35_1;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 thenWithBlock_];
  _Block_release(v24);

  sub_1D8D85B08(v21, v9);
  v26 = v32;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = sub_1D904EEB4;
  v27[4] = v18;
  sub_1D8D85D0C(v9, v27 + v34);
  v28 = v33;
  *(v27 + v35) = v33;
  *(v27 + v26) = 0;
  v41 = sub_1D9050650;
  v42 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1D8D5960C;
  v40 = &block_descriptor_42_0;
  v29 = _Block_copy(&aBlock);
  v30 = v28;

  [v25 addFinishBlock_];

  _Block_release(v29);
}

void sub_1D904B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = type metadata accessor for MediaRequest.Params(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaRequestBuilder();
  sub_1D8D96644(a1);
  v10 = sub_1D8D963C0(a1);
  sub_1D8D85B08(a1, v8);
  v11 = *(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  sub_1D8D85D0C(v8, v12 + ((v11 + 24) & ~v11));
  v28 = sub_1D905064C;
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D8D85118;
  v27 = &block_descriptor_49;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 thenWithBlock_];
  _Block_release(v13);

  sub_1D8D85B08(a1, v8);
  v15 = (v11 + 40) & ~v11;
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = 0;
  v17[3] = v18;
  v17[4] = a3;
  sub_1D8D85D0C(v8, v17 + v15);
  v19 = v23;
  *(v17 + v16) = v23;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v28 = sub_1D9050650;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D8D5960C;
  v27 = &block_descriptor_56_1;
  v20 = _Block_copy(&aBlock);

  v21 = v19;

  [v14 addFinishBlock_];
  _Block_release(v20);
}

void sub_1D904BB40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v27 = a3;
  v6 = type metadata accessor for MediaRequest.Params(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaRequestBuilder();
  sub_1D8D96644(a1);
  v11 = sub_1D8D963C0(a1);
  sub_1D8D85B08(a1, v9);
  v12 = *(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  sub_1D8D85D0C(v9, v13 + ((v12 + 24) & ~v12));
  v34 = sub_1D905064C;
  v35 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D8D85118;
  v33 = &block_descriptor_63_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v11 thenWithBlock_];
  _Block_release(v14);

  sub_1D8D85B08(a1, v9);
  v16 = (v12 + 40) & ~v12;
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v27;
  v19[2] = 0;
  v19[3] = v20;
  v19[4] = a4;
  sub_1D8D85D0C(v9, v19 + v16);
  v21 = v29;
  *(v19 + v17) = v29;
  v22 = v28;
  *(v19 + v18) = v28;
  v34 = sub_1D9050650;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D8D5960C;
  v33 = &block_descriptor_70_0;
  v23 = _Block_copy(&aBlock);
  v24 = v22;

  v25 = v21;

  [v15 addFinishBlock_];
  _Block_release(v23);
}

void sub_1D904BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void *), uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11)
{
  v16 = type metadata accessor for MediaRequest.Params(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v25 = MEMORY[0x1EEE9AC00](v21);
  if (a5)
  {
    v26 = a5;
    a6(0, a5);

    return;
  }

  v62 = a10;
  if (!a3)
  {
    (a6)(MEMORY[0x1E69E7CC0], 0, v25);
    return;
  }

  v59 = v24;
  v60 = v23;
  v27 = &v55 - v22;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = a11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a8 = sub_1D8ECD83C(0, a8[2] + 1, 1, a8);
  }

  v30 = a8[2];
  v29 = a8[3];
  if (v30 >= v29 >> 1)
  {
    a8 = sub_1D8ECD83C((v29 > 1), v30 + 1, 1, a8);
  }

  a8[2] = v30 + 1;
  a8[v30 + 4] = a3;
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a3);
  if (*(a9 + 202) == 1)
  {
    if (v31)
    {

      sub_1D8D85B08(a9, v27);
      v32 = *(v27 + 20);
      if (v27[168])
      {
        v32 = 0;
      }

      v33 = *(v27 + 24);
      if (v27[200])
      {
        v33 = 0;
      }

      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        __break(1u);
      }

      else
      {
        *(v27 + 24) = v35;
        v27[200] = 0;
        v55 = v27;
        sub_1D8D85B08(v27, v20);
        v36 = v59[80];
        v57 = (v36 + 40) & ~v36;
        v37 = (v17 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = v37;
        v56 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
        v38 = swift_allocObject();
        v38[2] = a6;
        v38[3] = a7;
        v38[4] = a8;
        sub_1D8D85D0C(v20, v38 + ((v36 + 40) & ~v36));
        v39 = v61;
        v40 = v62;
        *(v38 + v37) = v62;
        *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
        v41 = v39;
        v42 = type metadata accessor for MediaRequestBuilder();
        v59 = v41;

        v62 = v40;
        v43 = v55;
        sub_1D8D96644(v55);
        v44 = sub_1D8D963C0(v43);
        v45 = v60;
        sub_1D8D85B08(v43, v60);
        v46 = swift_allocObject();
        *(v46 + 16) = v42;
        sub_1D8D85D0C(v45, v46 + ((v36 + 24) & ~v36));
        v67 = sub_1D905064C;
        v68 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D8D85118;
        v66 = &block_descriptor_121;
        v47 = _Block_copy(&aBlock);

        v48 = [v44 thenWithBlock_];
        _Block_release(v47);

        sub_1D8D85B08(v43, v45);
        v49 = v56;
        v50 = swift_allocObject();
        v50[2] = 0;
        v50[3] = sub_1D9050620;
        v50[4] = v38;
        sub_1D8D85D0C(v45, v50 + v57);
        v51 = v62;
        *(v50 + v58) = v62;
        *(v50 + v49) = v61;
        v67 = sub_1D9050650;
        v68 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D8D5960C;
        v66 = &block_descriptor_128;
        v52 = _Block_copy(&aBlock);
        v53 = v51;
        v54 = v59;

        [v48 addFinishBlock_];
        _Block_release(v52);

        sub_1D8D90BEC(v43);
      }

      return;
    }
  }

  else
  {
  }

  a6(a8, 0);
}

void sub_1D904C368(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, __int128 *a8, void *a9, void *a10, uint64_t a11)
{
  v73 = a6;
  v75 = a11;
  v74 = a10;
  v70 = a9;
  v16 = type metadata accessor for MediaRequest.Params(0);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v69 - v22;
  if (a3)
  {
    type metadata accessor for MediaRequestResponseParser();
    _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a3);
    v24 = v23 == 0;
    if (v23)
    {
    }

    sub_1D90507E0(a3, &aBlock);
    v25 = aBlock;
    if (BYTE1(aBlock))
    {
      sub_1D904FAFC();
      a3 = swift_allocError();
      *v26 = v25;
      v27 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      LOBYTE(v76) = aBlock;
      v27 = sub_1D9052EB8(a3, &v76);
      a3 = v28;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v24 = 1;
  }

  *&aBlock = a7;

  sub_1D8E3016C(v27);
  v29 = aBlock;
  v30 = a8[3];
  v79 = a8[2];
  v80 = v30;
  v81 = *(a8 + 8);
  v31 = a8[1];
  v77 = *a8;
  v78 = v31;
  if (a4)
  {
    sub_1D904CA24();
    if (v32)
    {
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  if (a5)
  {

    v33 = a3;
    a3 = a5;
LABEL_15:
    v35 = a5;
    (v74)(0, a4, 0, 0, a3);

    return;
  }

  if (a3)
  {

    v34 = a3;
    v33 = a3;
    goto LABEL_15;
  }

  if (v24 || (*(v73 + 202) & 1) == 0)
  {
    v84 = v79;
    v85 = v80;
    v86 = v81;
    aBlock = v77;
    v83 = v78;
    v76 = sub_1D9179E0C();
    v36 = sub_1D9179A4C();
    (v74)(v29, a4, v36, v37, 0);
  }

  else
  {
    v38 = v72;
    sub_1D8D85B08(v73, v72);
    v39 = *(v38 + 160);
    if (*(v38 + 168))
    {
      v39 = 0;
    }

    v40 = *(v38 + 192);
    if (*(v38 + 200))
    {
      v40 = 0;
    }

    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      *(v38 + 192) = v42;
      *(v38 + 200) = 0;
      sub_1D8D85B08(v38, v20);
      v43 = *(v69 + 80);
      v44 = (v43 + 16) & ~v43;
      v73 = v17 + 7;
      v45 = (v17 + 7 + v44) & 0xFFFFFFFFFFFFFFF8;
      v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 79) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      sub_1D8D85D0C(v20, v48 + v44);
      *(v48 + v45) = v29;
      v49 = v48 + v46;
      *(v49 + 64) = v81;
      v50 = v80;
      *(v49 + 32) = v79;
      *(v49 + 48) = v50;
      v51 = v78;
      *v49 = v77;
      *(v49 + 16) = v51;
      v52 = v70;
      *(v48 + v47) = v70;
      v53 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
      v54 = v75;
      *v53 = v74;
      v53[1] = v54;
      v55 = type metadata accessor for MediaRequestBuilder();
      v74 = v52;

      v56 = v72;
      sub_1D8D96644(v72);
      v57 = sub_1D8D963C0(v56);
      v58 = v71;
      sub_1D8D85B08(v56, v71);
      v59 = swift_allocObject();
      *(v59 + 16) = v55;
      sub_1D8D85D0C(v58, v59 + ((v43 + 24) & ~v43));
      *&v84 = sub_1D905064C;
      *(&v84 + 1) = v59;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v83 = sub_1D8D85118;
      *(&v83 + 1) = &block_descriptor_147;
      v60 = _Block_copy(&aBlock);

      v61 = [v57 thenWithBlock_];
      _Block_release(v60);

      v62 = v56;
      sub_1D8D85B08(v56, v58);
      v63 = (v43 + 40) & ~v43;
      v64 = (v73 + v63) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = sub_1D9050624;
      v65[4] = v48;
      sub_1D8D85D0C(v58, v65 + v63);
      v66 = v74;
      *(v65 + v64) = v74;
      *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
      *&v84 = sub_1D9050650;
      *(&v84 + 1) = v65;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v83 = sub_1D8D5960C;
      *(&v83 + 1) = &block_descriptor_154;
      v67 = _Block_copy(&aBlock);
      v68 = v66;

      [v61 addFinishBlock_];
      _Block_release(v67);

      sub_1D8D90BEC(v62);
    }
  }
}

uint64_t sub_1D904CA24()
{
  v1 = [v0 allHeaderFields];
  v2 = sub_1D917805C();

  v8[0] = 1734440005;
  v8[1] = 0xE400000000000000;
  sub_1D91793EC();
  if (*(v2 + 16) && (v3 = sub_1D8D6550C(v7), (v4 & 1) != 0))
  {
    sub_1D8CFAD1C(*(v2 + 56) + 32 * v3, v8);
    sub_1D8D9A308(v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    sub_1D8D9A308(v7);
    return 0;
  }
}

uint64_t sub_1D904CB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_1D9176EAC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v29 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  a6(a1, a2, a3, a4, a5);
  swift_beginAccess();
  sub_1D8D76CE0(v21, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1D8D798AC(v17);
  }

  v23 = v29;
  (*(v19 + 32))(v29, v17, v18);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
    MEMORY[0x1EEE9AC00](Strong);
    *(&v28 - 2) = v23;
    *(&v28 - 1) = 0;
    v27 = v26;

    os_unfair_lock_lock(v25 + 6);
    sub_1D9050654(&v25[4]);
    os_unfair_lock_unlock(v25 + 6);
  }

  return (*(v19 + 8))(v23, v18);
}

id MediaRequestController.__allocating_init(concurrentOperationCount:requestEncodingType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConcurrentOperationCount:a1 requestEncodingType:a2];
}

id MediaRequestController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaRequestController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D904CEE8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t MediaRequestController.send<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26[0] = a2;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MediaRequest.Params(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = v6;
  (*(a5 + 32))(a4, a5, v15);
  v18 = (*(a5 + 40))(a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v11 + 16))(v13, a1, a4);
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = v26[0];
  *(v21 + 5) = a3;
  (*(v11 + 32))(&v21[v20], v13, a4);
  v22 = type metadata accessor for MediaRequestController();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v17, v18, 0, v24, sub_1D904EEB8, v21, v22, AssociatedTypeWitness, &protocol witness table for MediaRequestController, AssociatedConformanceWitness);

  return sub_1D8D90BEC(v17);
}

uint64_t sub_1D904D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8D58924;

  return MediaRequestController.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t MediaRequestController.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D904D3D0, 0, 0);
}

uint64_t sub_1D904D3D0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1D904D4F4;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1D904EEFC, v3, AssociatedTypeWitness);
}

uint64_t sub_1D904D4F4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D904D630, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D904D630()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D904D704(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  if (a4)
  {
    sub_1D9176E8C();
    v14 = sub_1D9176EAC();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_1D9176EAC();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  v16 = a3;
  v17 = a5;
  v18 = a1;
  a6(v13, a5);

  return sub_1D8D798AC(v13);
}

uint64_t sub_1D904D858(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a6;
  v37 = a5;
  v38 = a4;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v31 - v11;
  v34 = a7;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  sub_1D904FC24();
  v32 = AssociatedTypeWitness;
  v17 = sub_1D9179EAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v31 - v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v21 = sub_1D9179EAC();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v31 - v23);
  (*(v25 + 16))(&v31 - v23, v36, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    *v20 = v26;
    swift_storeEnumTagMultiPayload();
    v27 = v26;
    v38(v20);

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    (*(v14 + 32))(v16, v24, v13);
    (*(a8 + 48))(v16, v34, a8);
    v29 = v35;
    v30 = v32;
    (*(v35 + 16))(v20, v12, v32);
    swift_storeEnumTagMultiPayload();
    v38(v20);
    (*(v18 + 8))(v20, v17);
    (*(v29 + 8))(v12, v30);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_1D904DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v9 = sub_1D917877C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  MediaRequestController.send<A>(_:completion:)(a3, sub_1D904FB50, v15, a4, a5);
}

uint64_t sub_1D904DDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  sub_1D904FC24();
  v12 = sub_1D9179EAC();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v21 - v14);
  (*(v16 + 16))(v21 - v14, a1, v12, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v18 = swift_allocError();
    *v19 = v17;
    v21[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D917877C();
    return sub_1D917875C();
  }

  else
  {
    (*(v6 + 32))(v11, v15, AssociatedTypeWitness);
    (*(v6 + 16))(v8, v11, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D917877C();
    sub_1D917876C();
    return (*(v6 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t sub_1D904E09C(uint64_t a1, int a2, void *a3, uint64_t a4, char a5, void (*a6)(uint64_t, void, char *), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a1;
  v36 = a8;
  v33 = a4;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v16 = sub_1D9179EAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v31 - v23;
  if (a5)
  {
    *v24 = a3;
    swift_storeEnumTagMultiPayload();
    v25 = a3;
    v19 = v24;
LABEL_11:
    a6(v35, v34 & 1, v19);
    return (*(v17 + 8))(v19, v16);
  }

  v31[1] = a7;
  v32 = a6;
  if (v36)
  {
    v21 = [v36 beginParsing];
  }

  MEMORY[0x1EEE9AC00](v21);
  v31[-6] = a9;
  v31[-5] = a10;
  v31[-4] = a11;
  v31[-3] = a12;
  v26 = v33;
  v31[-2] = a3;
  v31[-1] = v26;
  sub_1D8D5D7BC(sub_1D90505C0, v19);
  v27 = v36;
  if (v36)
  {
    Result.failure.getter(v16, &v37);
    v28 = v37;
    a6 = v32;
    if (v37)
    {
      v29 = sub_1D9176A5C();
    }

    else
    {
      v29 = 0;
    }

    [v27 endParsingWithError_];

    goto LABEL_11;
  }

  v32(v35, v34 & 1, v19);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1D904E344(uint64_t a1, uint64_t a2, void x2_0, uint64_t a3, void x4_0, uint64_t a4, void *a5)
{
  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  sub_1D917654C();

  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

void sub_1D904E3F0(id a1, unint64_t a2, uint64_t a3, id a4, id a5, void (*a6)(id, uint64_t, id, unint64_t, uint64_t))
{
  if (!a4)
  {
    if (!a5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v32[0] = a5;
    v13 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v14 = v33;
      v15 = [v33 domain];
      v16 = sub_1D917820C();
      v18 = v17;

      if (v16 == sub_1D917820C() && v18 == v19)
      {
      }

      else
      {
        v21 = sub_1D9179ACC();

        if ((v21 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v24 = [v33 userInfo];
      v25 = sub_1D917805C();

      v26 = sub_1D917820C();
      if (*(v25 + 16))
      {
        v28 = sub_1D8D33C70(v26, v27);
        v30 = v29;

        if (v30)
        {
          sub_1D8CFAD1C(*(v25 + 56) + 32 * v28, v32);

          if (swift_dynamicCast())
          {
            v12 = 0;
            v11 = v33;
            goto LABEL_29;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_27:
    }

LABEL_28:
    v11 = 0;
    v12 = 1;
    goto LABEL_29;
  }

  v11 = [a4 statusCode];
  if (a5)
  {
    v12 = 0;
LABEL_29:
    v31 = a5;
    a6(v11, v12, a5, 0, 1);

    return;
  }

LABEL_13:
  if (a2 >> 60 == 15)
  {
    sub_1D904FAFC();
    v22 = swift_allocError();
    *v23 = 3;
    a6(v11, a4 == 0, v22, 0, 1);
  }

  else
  {
    sub_1D8D752C4(a1, a2);
    a6(v11, a4 == 0, a1, a2, 0);

    sub_1D8D75668(a1, a2);
  }
}

uint64_t sub_1D904E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v31 = a5;
  v32 = a4;
  v33 = a2;
  v11 = type metadata accessor for MediaRequest.Params(0);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaAPIResponse(255, a6, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v16 = sub_1D917877C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v28 - v20;
  (*(v17 + 16))(&v28 - v20, a1, v16, v19);
  sub_1D8D85B08(a3, v13);
  v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v23 = (v18 + *(v30 + 80) + v22) & ~*(v30 + 80);
  v24 = swift_allocObject();
  v25 = v31;
  v26 = v29;
  *(v24 + 2) = v31;
  *(v24 + 3) = v26;
  *(v24 + 4) = a7;
  (*(v17 + 32))(&v24[v22], v21, v16);
  sub_1D8D85D0C(v13, &v24[v23]);
  (*(a7 + 32))(a3, v32, sub_1D9050474, v24, v25, a7);
}

void sub_1D904E9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a6;
  v15 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MediaAPIResponse(0, a9, v18, v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v32 - v21);
  if (a1 && a2)
  {
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
    v24 = sub_1D91797FC();
    if (v24)
    {
      v25 = v24;
      sub_1D8D85B08(a7, v17);
      MediaAPIResponse.init(objects:response:contentHash:parameters:)(v25, v23, a3, a4, v17, a9, v22);

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
      sub_1D917877C();
      sub_1D917876C();
    }

    else
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9700, &qword_1D91AC300) | 0x8000000000000000;
      sub_1D8E40CCC();
      v30 = swift_allocError();
      *v31 = a9;
      v31[1] = v29;
      v33 = v30;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
      sub_1D917877C();
      sub_1D917875C();
    }
  }

  else
  {
    sub_1D8E40CCC();
    v26 = swift_allocError();
    *v27 = a5;
    v27[1] = 0;
    v33 = v26;
    v28 = a5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D917877C();
    sub_1D917875C();
  }
}

uint64_t sub_1D904EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  MediaRequestControllerProtocol.perform(params:account:telemetry:callback:)(a3, 0, 0, sub_1D9014CB0, v15, a4, a5);
}

uint64_t sub_1D904EDF0(void *a1, char a2, id a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
    return sub_1D917875C();
  }

  else
  {
    sub_1D8D752C4(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
    return sub_1D917876C();
  }
}

uint64_t sub_1D904EF08(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D8D798AC(v7);
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  v14 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v13);
  *(&v16 - 2) = v11;

  os_unfair_lock_lock((v14 + 24));
  sub_1D9050608((v14 + 16), &v17);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v17;

  result = (*(v9 + 8))(v11, v8);
  if (v15)
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      a2 = sub_1D9176A5C();
    }

    [v15 endRequestEncodingWithError_];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1D904F13C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D8D798AC(v5);
  }

  v11 = (*(v7 + 32))(v9, v5, v6);
  v12 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v11);
  *(&v14 - 2) = v9;

  os_unfair_lock_lock((v12 + 24));
  sub_1D9050608((v12 + 16), &v15);
  os_unfair_lock_unlock((v12 + 24));
  v13 = v15;

  result = (*(v7 + 8))(v9, v6);
  if (v13)
  {
    [v13 beginNetworking];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D904F340(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D8D798AC(v7);
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  v14 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v13);
  *(&v16 - 2) = v11;

  os_unfair_lock_lock((v14 + 24));
  sub_1D8D975C0((v14 + 16), &v17);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v17;

  result = (*(v9 + 8))(v11, v8);
  if (v15)
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      a2 = sub_1D9176A5C();
    }

    [v15 endNetworkingWithError_];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t dispatch thunk of MediaRequestControllerProtocol.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 88) + **(a6 + 88));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D8D58924;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D904FA1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D904FA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D904FAFC()
{
  result = qword_1EDCD6178;
  if (!qword_1EDCD6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6178);
  }

  return result;
}

uint64_t sub_1D904FB50(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v5 = *(sub_1D917877C() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1D904DDF4(a1, v6, v3, v4);
}

unint64_t sub_1D904FC24()
{
  result = qword_1ECAB96E0;
  if (!qword_1ECAB96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB96E0);
  }

  return result;
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

void sub_1D904FEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v12 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D904BDFC(a1, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24), *(v5 + 32), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

void sub_1D9050474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  type metadata accessor for MediaAPIResponse(255, v11, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v12 = *(sub_1D917877C() - 8);
  v13 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  sub_1D904E9E8(a1, a2, a3, a4, a5, v5 + v13, v5 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80)), v10, v11);
}

BOOL static MediaRequestResponseParser.parseResponse(_:params:)(uint64_t a1)
{
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a1);
  v3 = v2;
  if (v2)
  {
  }

  sub_1D90507E0(a1, v8);
  v4 = v8[0];
  if (v8[1])
  {
    sub_1D904FAFC();
    swift_allocError();
    *v5 = v4;
  }

  else
  {
    v7 = v8[0];
    sub_1D9052EB8(a1, &v7);
  }

  return v3 != 0;
}

PodcastsFoundation::MediaRequestResponseParser::MediaRequestResponseParseError_optional __swiftcall MediaRequestResponseParser.MediaRequestResponseParseError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D9050748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9053264();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D90507A0()
{
  sub_1D917656C();
  swift_allocObject();
  result = sub_1D917655C();
  qword_1ECAB18B8 = result;
  return result;
}

void sub_1D90507E0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (!*(v3 + 16))
  {

    v8 = 257;
    goto LABEL_11;
  }

  v4 = *(v3 + 32);

  sub_1D91793EC();
  if (!*(v4 + 16) || (v5 = sub_1D8D6550C(v9), (v6 & 1) == 0))
  {

    sub_1D8D9A308(v9);
    goto LABEL_9;
  }

  sub_1D8CFAD1C(*(v4 + 56) + 32 * v5, v10);
  sub_1D8D9A308(v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 256;
    goto LABEL_11;
  }

  v7._countAndFlagsBits = 1701869940;
  v7._object = 0xE400000000000000;
  MediaRequest.ContentType.init(rawValue:)(v7);
  if (v9[0] != 7)
  {
    *a2 = v9[0];
    a2[1] = 0;
    return;
  }

  v8 = 258;
LABEL_11:
  *a2 = v8;
}

uint64_t static MediaRequestResponseParser.parseContainerResponse<A>(containerType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a2);
  if (!v5)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  sub_1D905315C();
  v6 = sub_1D917843C();

  return v6;
}

void sub_1D9050A28(void **a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a7@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  v10 = sub_1D917802C();
  *&v43[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:v43];

  v12 = *&v43[0];
  if (!v11)
  {
    v30 = v12;
    v31 = sub_1D9176A6C();

    swift_willThrow();
    v29 = v31;
LABEL_21:

    v32 = 0;
    goto LABEL_27;
  }

  v35 = a2;
  v38 = sub_1D9176C8C();
  v39 = v13;

  v14 = &off_1F5461918;
  v15 = 3;
  do
  {

    v16 = sub_1D917802C();
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v18 = [v16 valueForKeyPath_];

    if (v18)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43[0] = v41;
    v43[1] = v42;
    if (*(&v42 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
      if (swift_dynamicCast())
      {
        v19 = v40;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8D08A50(v43, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    v14 += 2;
    --v15;
  }

  while (v15);
  v19 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v20 = sub_1D9050EB4(v19, a2);

  if (qword_1ECAB18B0 != -1)
  {
    swift_once();
  }

  sub_1D917654C();
  if (v36)
  {

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F20);
    v22 = v36;
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = sub_1D9176A5C();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Failed to parse container with error: %@", v25, 0xCu);
      sub_1D8D08A50(v26, &unk_1ECAB6C70, &unk_1D9188C30);
      v28 = v26;
      a2 = v35;
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    sub_1D8D7567C(v38, v39);

    v29 = *a2;
    *a2 = v36;
    goto LABEL_21;
  }

  v32 = *&v43[0];
  if (v20 >> 62)
  {
    v33 = sub_1D917935C();
  }

  else
  {
    v33 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33 <= 0)
  {

    v20 = 0;
  }

  (*(a5 + 16))(v20, a4);
  sub_1D8D7567C(v38, v39);
LABEL_27:
  *a7 = v32;
}

uint64_t sub_1D9050EB4(uint64_t a1, void **a2)
{
  v3 = v2;
  v35 = *MEMORY[0x1E69E9840];
  v34 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v6 >= v4)
        {
          __break(1u);
LABEL_23:
          __break(1u);
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }

        v32 = v6 + 1;
        v8 = objc_opt_self();

        v9 = sub_1D917802C();
        v33 = 0;
        v10 = [v8 dataWithJSONObject:v9 options:0 error:&v33];

        v11 = v33;
        if (v10)
        {
          break;
        }

        v26 = v11;
        v27 = sub_1D9176A6C();

        swift_willThrow();
        v7 = v27;
        v3 = 0;
LABEL_4:

        ++v6;
        if (v32 == v4)
        {
          return v30;
        }
      }

      v12 = sub_1D9176C8C();
      v14 = v13;

      if (qword_1ECAB18B0 != -1)
      {
        swift_once();
      }

      type metadata accessor for ServerPodcastEpisode();
      sub_1D90532B8(&qword_1ECAB1D70, type metadata accessor for ServerPodcastEpisode, &protocol conformance descriptor for ServerPodcastEpisode);
      v15 = v3;
      sub_1D917654C();
      if (v3)
      {
        if (qword_1EDCD0F18 != -1)
        {
          swift_once();
        }

        v16 = sub_1D917744C();
        __swift_project_value_buffer(v16, qword_1EDCD0F20);
        v17 = v3;
        v18 = sub_1D917741C();
        v19 = sub_1D9178CFC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = v4;
          v22 = swift_slowAlloc();
          *v20 = 138412290;
          v23 = sub_1D9176A5C();
          *(v20 + 4) = v23;
          *v22 = v23;
          _os_log_impl(&dword_1D8CEC000, v18, v19, "Failed to parse episode with error: %@", v20, 0xCu);
          sub_1D8D08A50(v22, &unk_1ECAB6C70, &unk_1D9188C30);
          v24 = v22;
          v4 = v21;
          MEMORY[0x1DA72CB90](v24, -1, -1);
          v25 = v20;
          v5 = a2;
          MEMORY[0x1DA72CB90](v25, -1, -1);
        }

        sub_1D8D7567C(v12, v14);

        v7 = *v5;
        *v5 = v15;
        v3 = 0;
        goto LABEL_4;
      }

      sub_1D8D7567C(v12, v14);

      MEMORY[0x1DA729B90](v28);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      v30 = v34;
      ++v6;
      if (v32 == v4)
      {
        return v30;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90512CC(uint64_t a1, void **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  type metadata accessor for ServerPodcastStation();
  v4 = objc_opt_self();
  v5 = sub_1D917802C();
  *&v36[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v36];

  v7 = *&v36[0];
  if (!v6)
  {
    v24 = v7;
    v25 = sub_1D9176A6C();

    swift_willThrow();
    v23 = v25;
LABEL_21:

    return 0;
  }

  v32 = a2;
  v30 = sub_1D9176C8C();
  v31 = v8;

  v9 = &off_1F545D1D0;
  v10 = 3;
  do
  {

    v11 = sub_1D917802C();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v13 = [v11 valueForKeyPath_];

    if (v13)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (*(&v35 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
      if (swift_dynamicCast())
      {
        v14 = v33;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8D08A50(v36, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v15 = sub_1D9050EB4(v14, v32);

  if (qword_1ECAB18B0 != -1)
  {
    swift_once();
  }

  sub_1D90532B8(&qword_1ECAB9728, type metadata accessor for ServerPodcastStation, &protocol conformance descriptor for ServerPodcastStation);
  sub_1D917654C();
  if (v2)
  {

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F20);
    v17 = v2;
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = sub_1D9176A5C();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Failed to parse container with error: %@", v20, 0xCu);
      sub_1D8D08A50(v21, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    sub_1D8D7567C(v30, v31);

    v23 = *v32;
    *v32 = v2;
    goto LABEL_21;
  }

  v26 = *&v36[0];
  if (v15 >> 62)
  {
    v27 = sub_1D917935C();
  }

  else
  {
    v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D8D7567C(v30, v31);
  if (v27 <= 0)
  {

    v15 = 0;
  }

  v28 = OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes;
  swift_beginAccess();
  *(v26 + v28) = v15;

  return v26;
}

uint64_t sub_1D9051798(uint64_t a1, void **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  type metadata accessor for ServerPodcast();
  v4 = objc_opt_self();
  v5 = sub_1D917802C();
  *&v36[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v36];

  v7 = *&v36[0];
  if (!v6)
  {
    v24 = v7;
    v25 = sub_1D9176A6C();

    swift_willThrow();
    v23 = v25;
LABEL_21:

    return 0;
  }

  v32 = a2;
  v30 = sub_1D9176C8C();
  v31 = v8;

  v9 = &off_1F545D220;
  v10 = 3;
  do
  {

    v11 = sub_1D917802C();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v13 = [v11 valueForKeyPath_];

    if (v13)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (*(&v35 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
      if (swift_dynamicCast())
      {
        v14 = v33;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8D08A50(v36, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v15 = sub_1D9050EB4(v14, v32);

  if (qword_1ECAB18B0 != -1)
  {
    swift_once();
  }

  sub_1D90532B8(&qword_1ECAB26C0, type metadata accessor for ServerPodcast, &protocol conformance descriptor for ServerPodcastBase);
  sub_1D917654C();
  if (v2)
  {

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F20);
    v17 = v2;
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = sub_1D9176A5C();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Failed to parse container with error: %@", v20, 0xCu);
      sub_1D8D08A50(v21, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    sub_1D8D7567C(v30, v31);

    v23 = *v32;
    *v32 = v2;
    goto LABEL_21;
  }

  v26 = *&v36[0];
  if (v15 >> 62)
  {
    v27 = sub_1D917935C();
  }

  else
  {
    v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D8D7567C(v30, v31);
  if (v27 <= 0)
  {

    v15 = 0;
  }

  v28 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  *(v26 + v28) = v15;

  return v26;
}

void sub_1D9051C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = 0;
  v6 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    v9 = a3(v8, a2);
    if (v3)
    {

      return;
    }

    v10 = v9;

    ++v5;
    if (v10)
    {
      MEMORY[0x1DA729B90](v11);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      v5 = v7;
    }
  }
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(uint64_t a1)
{
  v7[0] = 1635017060;
  v7[1] = 0xE400000000000000;
  sub_1D91793EC();
  if (*(a1 + 16) && (v2 = sub_1D8D6550C(v6), (v3 & 1) != 0))
  {
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v7);
    sub_1D8D9A308(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D9A308(v6);
    return 0;
  }
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC012parseChannelE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v20 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      do
      {
        v18 = v2;
        v6 = v5;
        while (1)
        {
          if (v6 >= *(v3 + 16))
          {
            __break(1u);
          }

          v9 = objc_opt_self();
          v10 = sub_1D917802C();
          v19 = 0;
          v11 = [v9 dataWithJSONObject:v10 options:0 error:&v19];

          v12 = v19;
          if (v11)
          {
            break;
          }

          v7 = v12;
          v8 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v6)
          {
            v2 = v18;
            goto LABEL_15;
          }
        }

        v13 = sub_1D9176C8C();
        v15 = v14;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerChannel();
        sub_1D90532B8(&qword_1ECAB9720, type metadata accessor for ServerChannel, &protocol conformance descriptor for ServerChannel);
        sub_1D917654C();
        v16 = sub_1D8D7567C(v13, v15);
        MEMORY[0x1DA729B90](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        v5 = v6 + 1;
        sub_1D917869C();
        v2 = v20;
      }

      while (v4 - 1 != v6);
    }

LABEL_15:
  }

  return v2;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC019parsePodcastEpisodeE0ySayAA06ServerhI0CGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v20 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      do
      {
        v18 = v2;
        v6 = v5;
        while (1)
        {
          if (v6 >= *(v3 + 16))
          {
            __break(1u);
          }

          v9 = objc_opt_self();
          v10 = sub_1D917802C();
          v19 = 0;
          v11 = [v9 dataWithJSONObject:v10 options:0 error:&v19];

          v12 = v19;
          if (v11)
          {
            break;
          }

          v7 = v12;
          v8 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v6)
          {
            v2 = v18;
            goto LABEL_15;
          }
        }

        v13 = sub_1D9176C8C();
        v15 = v14;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerPodcastEpisode();
        sub_1D90532B8(&qword_1ECAB1D70, type metadata accessor for ServerPodcastEpisode, &protocol conformance descriptor for ServerPodcastEpisode);
        sub_1D917654C();
        v16 = sub_1D8D7567C(v13, v15);
        MEMORY[0x1DA729B90](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        v5 = v6 + 1;
        sub_1D917869C();
        v2 = v20;
      }

      while (v4 - 1 != v6);
    }

LABEL_15:
  }

  return v2;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC015parseTranscriptE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v20 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      do
      {
        v18 = v2;
        v6 = v5;
        while (1)
        {
          if (v6 >= *(v3 + 16))
          {
            __break(1u);
          }

          v9 = objc_opt_self();
          v10 = sub_1D917802C();
          v19 = 0;
          v11 = [v9 dataWithJSONObject:v10 options:0 error:&v19];

          v12 = v19;
          if (v11)
          {
            break;
          }

          v7 = v12;
          v8 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v6)
          {
            v2 = v18;
            goto LABEL_15;
          }
        }

        v13 = sub_1D9176C8C();
        v15 = v14;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerTranscript(0);
        sub_1D90532B8(&qword_1ECAB2148, type metadata accessor for ServerTranscript, &protocol conformance descriptor for ServerTranscript);
        sub_1D917654C();
        v16 = sub_1D8D7567C(v13, v15);
        MEMORY[0x1DA729B90](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        v5 = v6 + 1;
        sub_1D917869C();
        v2 = v20;
      }

      while (v4 - 1 != v6);
    }

LABEL_15:
  }

  return v2;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC015parseCategoriesE0ySayAA14ServerCategoryCGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v20 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      do
      {
        v18 = v2;
        v6 = v5;
        while (1)
        {
          if (v6 >= *(v3 + 16))
          {
            __break(1u);
          }

          v9 = objc_opt_self();
          v10 = sub_1D917802C();
          v19 = 0;
          v11 = [v9 dataWithJSONObject:v10 options:0 error:&v19];

          v12 = v19;
          if (v11)
          {
            break;
          }

          v7 = v12;
          v8 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v6)
          {
            v2 = v18;
            goto LABEL_15;
          }
        }

        v13 = sub_1D9176C8C();
        v15 = v14;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerCategory();
        sub_1D90532B8(&qword_1ECAB8F68, type metadata accessor for ServerCategory, &protocol conformance descriptor for ServerCategory);
        sub_1D917654C();
        v16 = sub_1D8D7567C(v13, v15);
        MEMORY[0x1DA729B90](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        v5 = v6 + 1;
        sub_1D917869C();
        v2 = v20;
      }

      while (v4 - 1 != v6);
    }

LABEL_15:
  }

  return v2;
}

uint64_t sub_1D9052EB8(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 > 2)
  {
    if (*a2 <= 4u)
    {
      if (v2 == 3)
      {
        v3 = _s18PodcastsFoundation26MediaRequestResponseParserC012parseChannelE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(a1);
      }

      else
      {
        v3 = _s18PodcastsFoundation26MediaRequestResponseParserC015parseTranscriptE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(a1);
      }

      goto LABEL_17;
    }

    if (v2 == 5)
    {
      v3 = _s18PodcastsFoundation26MediaRequestResponseParserC015parseCategoriesE0ySayAA14ServerCategoryCGSDys11AnyHashableVypGFZ_0(a1);
LABEL_17:
      v7 = v3;
      if (v3 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
        v8 = sub_1D91796FC();
        goto LABEL_20;
      }

      sub_1D9179C4C();
      goto LABEL_19;
    }

LABEL_11:
    v3 = _s18PodcastsFoundation26MediaRequestResponseParserC019parsePodcastEpisodeE0ySayAA06ServerhI0CGSDys11AnyHashableVypGFZ_0(a1);
    goto LABEL_17;
  }

  if (!*a2)
  {
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    v4 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
    if (v4)
    {
      v10 = 0;
      v5 = sub_1D9051798;
      goto LABEL_14;
    }

LABEL_21:
    v7 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_15;
    }

LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
    v8 = sub_1D91796FC();

    goto LABEL_20;
  }

  v4 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  if (!v4)
  {
    goto LABEL_21;
  }

  v10 = 0;
  v5 = sub_1D90512CC;
LABEL_14:
  sub_1D9051C64(v4, &v10, v5);
  v7 = v6;

  if (v7 >> 62)
  {
    goto LABEL_22;
  }

LABEL_15:

  sub_1D9179C4C();
LABEL_19:
  v8 = v7;
LABEL_20:

  return v8;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v7[0] = 1954047342;
  v7[1] = 0xE400000000000000;
  sub_1D91793EC();
  if (*(a1 + 16) && (v2 = sub_1D8D6550C(v6), (v3 & 1) != 0))
  {
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v7);
    sub_1D8D9A308(v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D9A308(v6);
    return 0;
  }
}

unint64_t sub_1D905315C()
{
  result = qword_1EDCD0A68;
  if (!qword_1EDCD0A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB5240, qword_1D918E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A68);
  }

  return result;
}

unint64_t sub_1D90531C4()
{
  result = qword_1ECAB9710;
  if (!qword_1ECAB9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9710);
  }

  return result;
}

unint64_t sub_1D9053264()
{
  result = qword_1ECAB9718;
  if (!qword_1ECAB9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9718);
  }

  return result;
}

uint64_t sub_1D90532B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9053300(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v2 = sub_1D91797AC();
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_1D8E93CA4();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D8D65618(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D8D65618(v31, v32);
    v16 = sub_1D91793CC();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
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
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1D8D65618(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1D90535C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A0, &qword_1D9188F08);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1D8D33C70(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1D90537A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68B0, qword_1D91AC4E0);
        swift_dynamicCast();
        sub_1D8D65618(&v22, v24);
        sub_1D8D65618(v24, v25);
        sub_1D8D65618(v25, &v23);
        v16 = sub_1D8D33C70(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          sub_1D8D65618(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1D8D65618(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1D9053A00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1D8D65618(&v22, v24);
        sub_1D8D65618(v24, v25);
        sub_1D8D65618(v25, &v23);
        v16 = sub_1D8D33C70(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          sub_1D8D65618(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1D8D65618(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1D9053C58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v2 = sub_1D91797AC();
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D8D65618(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D8D65618(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D8D65618(v31, v32);
    v16 = sub_1D91793CC();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
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
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1D8D65618(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1D9053F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
    v2 = sub_1D91797AC();
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

  v8 = 0;
  while (v5)
  {
LABEL_16:
    v15 = *(*(a1 + 48) + (__clz(__rbit64(v5)) | (v8 << 6)));
    v5 &= v5 - 1;
    v20 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    swift_dynamicCast();
    sub_1D9179DBC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    v9 = sub_1D9179E1C();
    v10 = -1 << *(v2 + 32);
    v11 = v9 & ~v10;
    v12 = v11 >> 6;
    if (((-1 << v11) & ~*(v7 + 8 * (v11 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v10) >> 6;
      while (++v12 != v17 || (v16 & 1) == 0)
      {
        v18 = v12 == v17;
        if (v12 == v17)
        {
          v12 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v12);
        if (v19 != -1)
        {
          v13 = __clz(__rbit64(~v19)) + (v12 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_27;
    }

    v13 = __clz(__rbit64((-1 << v11) & ~*(v7 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v2 + 48) + v13) = v20;
    *(*(v2 + 56) + 16 * v13) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      v8 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1D9054384(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1D9189080;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = a1;
    sub_1D905454C(result, a2 & 1, *&a6, 0, a3, a4, a5);
    return swift_setDeallocating();
  }

  return result;
}

uint64_t sub_1D905454C(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v90 = a6;
  v91 = a7;
  LODWORD(v86) = a4;
  v81 = *&a3;
  LODWORD(v85) = a2;
  v87 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v74 - v9;
  v88 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v88);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D9176E3C();
  v12 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8908, &unk_1D91A4830);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_1D9176F0C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  if (([v22 isRunningOnHomepod] & 1) != 0 || (result = objc_msgSend(v22, sel_supportsLocalLibrary), (result & 1) == 0))
  {
    v83 = a5;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1D9176EBC();
    v25 = sub_1D9176EDC();
    (*(v19 + 8))(v21, v18);
    [v24 setLocale_];

    v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v92 = v24;
    [v24 setDateFormat_];

    sub_1D9176FEC();
    v27 = sub_1D917701C();
    v28 = *(v27 - 8);
    v29 = 0;
    if ((*(v28 + 48))(v17, 1, v27) != 1)
    {
      v29 = sub_1D9176FFC();
      (*(v28 + 8))(v17, v27);
    }

    v30 = v92;
    [v92 setTimeZone_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    v82 = xmmword_1D918A530;
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000001D91C81A0;
    sub_1D9176E2C();
    v32 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v12 + 8))(v14, v84);
    v33 = [v30 stringFromDate_];

    v34 = sub_1D917820C();
    v36 = v35;

    v37 = MEMORY[0x1E69E6158];
    *(inited + 48) = v34;
    *(inited + 56) = v36;
    *(inited + 72) = v37;
    *(inited + 80) = 0x6574656C706D6F63;
    *(inited + 88) = 0xE900000000000064;
    *(inited + 120) = MEMORY[0x1E69E6370];
    *(inited + 96) = v85 & 1;
    v38 = sub_1D8E2696C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
    swift_arrayDestroy();
    if (v86)
    {
      v39 = v87;
      v40 = v38;
    }

    else
    {
      v97 = MEMORY[0x1E69E63B0];
      v96[0] = v81 * 1000.0;
      sub_1D8D65618(v96, v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v38;
      sub_1D8F502C0(v95, 0xD000000000000016, 0x80000001D91C8180, isUniquelyReferenced_nonNull_native);
      v40 = v94;
      v39 = v87;
    }

    v42 = swift_initStackObject();
    *(v42 + 16) = v82;
    *(v42 + 32) = 1701869940;
    *(v42 + 40) = 0xE400000000000000;
    *(v42 + 48) = 0xD000000000000012;
    *(v42 + 56) = 0x80000001D91D3FF0;
    *(v42 + 72) = v37;
    *(v42 + 80) = 0x7475626972747461;
    *(v42 + 88) = 0xEA00000000007365;
    *(v42 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
    *(v42 + 96) = v40;

    v43 = sub_1D8E2696C(v42);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1D9053C58(v43);
    v87 = v44;

    v45 = *(v39 + 16);
    if (v45)
    {
      v86 = v40;
      *&v96[0] = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v45, 0);
      v46 = v96[0];
      v47 = (v39 + 32);
      sub_1D8E40D20();
      do
      {
        v48 = *v47++;
        *&v95[0] = v48;
        v49 = sub_1D917927C();
        v96[0] = v46;
        v52 = *(*&v46 + 16);
        v51 = *(*&v46 + 24);
        if (v52 >= v51 >> 1)
        {
          v85 = v49;
          v54 = v50;
          sub_1D8D41BE0((v51 > 1), v52 + 1, 1);
          v50 = v54;
          v49 = v85;
          v46 = v96[0];
        }

        *(*&v46 + 16) = v52 + 1;
        v53 = *&v46 + 16 * v52;
        *(v53 + 32) = v49;
        *(v53 + 40) = v50;
        --v45;
      }

      while (v45);
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    v55 = sub_1D9176C2C();
    v56 = *(*(v55 - 8) + 56);
    v56(v93, 1, 1, v55);
    v57 = MEMORY[0x1E69E7CC0];
    v86 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v85 = sub_1D8D94DF8(v57);
    v84 = sub_1D8D951E0(v57);
    *&v82 = sub_1D8D9503C(v57);
    v81 = COERCE_DOUBLE(sub_1D8D9536C(v57));
    v80 = sub_1D8D9536C(v57);
    v79 = sub_1D8D953C4(v57);
    v77 = sub_1D8D952D8(v57);
    v78 = sub_1D8D95394(v57);
    v75 = sub_1D8D957C4(v57);
    *(v11 + 41) = 263;
    v11[43] = 5;
    v11[152] = 1;
    v11[201] = 1;
    v58 = v88;
    v59 = *(v88 + 112);
    v56(&v11[v59], 1, 1, v55);
    v60 = &v11[v58[29]];
    v61 = &v11[v58[31]];
    v62 = v58[33];
    v76 = v58[34];
    v63 = &v11[v62];
    v64 = &v11[v58[35]];
    *v11 = v87;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 10) = 83951616;
    v65 = v85;
    *(v11 + 6) = v86;
    *(v11 + 7) = v65;
    *(v11 + 8) = v84;
    *(v11 + 9) = v57;
    v66 = v81;
    *(v11 + 10) = v82;
    *(v11 + 11) = v66;
    v67 = v79;
    *(v11 + 12) = v80;
    *(v11 + 13) = v67;
    v68 = v77;
    *(v11 + 14) = v57;
    *(v11 + 15) = v68;
    *(v11 + 16) = v57;
    *(v11 + 17) = v57;
    *(v11 + 18) = v46;
    v11[152] = 1;
    *(v11 + 20) = 0;
    v11[168] = 1;
    v69 = v75;
    *(v11 + 22) = v78;
    *(v11 + 23) = v69;
    *(v11 + 24) = 0;
    *(v11 + 100) = 257;
    v11[202] = 0;
    sub_1D8E26828(v93, &v11[v59]);
    *v60 = 0;
    *(v60 + 1) = 0;
    v11[v58[30]] = 0;
    *v61 = 0;
    *(v61 + 1) = 0;
    *&v11[v58[32]] = v57;
    *v63 = 0;
    *(v63 + 1) = 0;
    v11[v76] = 2;
    *v64 = 0;
    *(v64 + 1) = 0;
    v70 = *(v89 + OBJC_IVAR___MTPlaybackPositionController_requestController);
    v71 = swift_allocObject();
    v72 = v91;
    v71[2] = v90;
    v71[3] = v72;
    v73 = v70;

    sub_1D904AD58(v11, v83, sub_1D9055418, v71);

    return sub_1D8D90BEC(v11);
  }

  return result;
}

uint64_t sub_1D9054EE8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D9054F14, 0, 0);
}

uint64_t sub_1D9054F14()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3 & 1;
  *(v7 + 56) = v2;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1D9055038;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD00000000000003BLL, 0x80000001D91D4010, sub_1D9055444, v7, v9);
}

uint64_t sub_1D9055038()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D8F4717C;
  }

  else
  {

    v2 = sub_1D8EAA444;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9055154(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, void *a7)
{
  v20 = a2;
  v21 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_1D905454C(a3, a4, a5, a6 & 1, v21, sub_1D9055640, v18);
}

uint64_t sub_1D90552CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
    sub_1D917875C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  return sub_1D917876C();
}

id PlaybackPositionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackPositionController.init()()
{
  v1 = OBJC_IVAR___MTPlaybackPositionController_requestController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaybackPositionController();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PlaybackPositionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackPositionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of PlaybackPositionController.updatePlaybackPosition(adamIDs:completed:position:account:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x80);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D8D58924;

  return (v15)(a1, a2, a3, a4 & 1, a5);
}

uint64_t sub_1D9055640(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);

  return sub_1D90552CC(a1);
}

id PodcastFeedDownloader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D90556F0(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v63 = a7;
  v57 = a5;
  LODWORD(v62) = a4;
  v58 = a2;
  v59 = a3;
  v56 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v54 = &v45 - v9;
  v11 = type metadata accessor for MediaRequest.Params(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D8D946F4(&unk_1F5461968);
  sub_1D8D08A50(&unk_1F5461988, &unk_1ECAB9A50, &unk_1D9197130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D9189080;
  v16 = [a1 description];
  v17 = sub_1D917820C();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_1D9176C2C();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v22 = MEMORY[0x1E69E7CC0];
  v53 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v52 = sub_1D8D94DF8(v22);
  v51 = sub_1D8D951E0(v22);
  v50 = sub_1D8D9503C(v22);
  v49 = sub_1D8D9536C(v22);
  v47 = sub_1D8D953C4(v22);
  v23 = sub_1D8D952D8(v22);
  v48 = sub_1D8D95394(v22);
  v45 = sub_1D8D957C4(v22);
  *(v14 + 41) = 263;
  v14[43] = 5;
  v14[152] = 1;
  v14[201] = 1;
  v24 = v12[30];
  v21(&v14[v24], 1, 1, v20);
  v25 = &v14[v12[31]];
  v26 = &v14[v12[33]];
  v27 = v12[35];
  v46 = v12[36];
  v28 = &v14[v27];
  v29 = &v14[v12[37]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v14 + 10) = 65796;
  v30 = v52;
  *(v14 + 6) = v53;
  *(v14 + 7) = v30;
  *(v14 + 8) = v51;
  *(v14 + 9) = v22;
  v31 = v49;
  *(v14 + 10) = v50;
  *(v14 + 11) = v31;
  v32 = v47;
  *(v14 + 12) = v55;
  *(v14 + 13) = v32;
  *(v14 + 14) = v22;
  *(v14 + 15) = v23;
  *(v14 + 16) = v22;
  *(v14 + 17) = v22;
  *(v14 + 18) = v15;
  v14[152] = 1;
  *(v14 + 20) = 300;
  v14[168] = 0;
  v33 = v45;
  *(v14 + 22) = v48;
  *(v14 + 23) = v33;
  *(v14 + 24) = 0;
  *(v14 + 100) = 257;
  v14[202] = 1;
  sub_1D8E26828(v54, &v14[v24]);
  *v25 = 0;
  *(v25 + 1) = 0;
  v14[v12[32]] = v57;
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v14[v12[34]] = v22;
  v34 = v59;
  *v28 = v58;
  v28[1] = v34;
  v14[v46] = 2;
  *v29 = 0;
  *(v29 + 1) = 0;
  v35 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController;
  v36 = v60;
  swift_beginAccess();
  sub_1D8CFD9D8(v36 + v35, v64);
  v37 = v65;
  v38 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v39 = swift_allocObject();
  v40 = v56;
  v41 = v61;
  *(v39 + 16) = v56;
  *(v39 + 24) = v41;
  *(v39 + 32) = v63;
  *(v39 + 40) = v62;
  *(v39 + 48) = v36;
  v62 = *(v38 + 40);

  v42 = v40;

  v43 = v36;
  v62(v14, sub_1D90575D4, v39, v37, v38);

  sub_1D8D90BEC(v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v64);
}

void sub_1D9055B64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void, void, uint64_t), uint64_t a8, char a9, uint64_t a10)
{
  v127 = a7;
  v128 = a8;
  v124 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v110 - v15;
  v17 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D917744C();
  v126 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v110 - v27;
  v125 = v16;
  if (a5)
  {
    v118 = a1;
    v120 = v26;
    v119 = v17;
    v123 = v25;
    v29 = a5;
    v121 = sub_1D9176A5C();
    v30 = [v121 userInfo];
    v31 = sub_1D917805C();

    v32 = sub_1D917820C();
    if (*(v31 + 16))
    {
      v122 = a4;
      v34 = sub_1D8D33C70(v32, v33);
      v36 = v35;

      if (v36)
      {
        sub_1D8CFAD1C(*(v31 + 56) + 32 * v34, aBlock);

        if (swift_dynamicCast())
        {
          v37 = v133;
          v38 = v123;
          if ((a9 & 1) != 0 && v133 == 404)
          {
            if (qword_1EDCD0768 != -1)
            {
              swift_once();
            }

            v39 = __swift_project_value_buffer(v38, qword_1EDCD0770);
            swift_beginAccess();
            (*(v126 + 16))(v28, v39, v38);
            v40 = a6;
            v41 = sub_1D917741C();
            v42 = sub_1D9178D1C();

            v43 = os_log_type_enabled(v41, v42);
            v17 = v119;
            if (v43)
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              *v44 = 138412290;
              *(v44 + 4) = v40;
              *v45 = v40;
              v46 = v40;
              _os_log_impl(&dword_1D8CEC000, v41, v42, "Failed to fetch episodes for podcast %@ with 404. Allowing it since allowEpisodesTo404 == true", v44, 0xCu);
              sub_1D8D08A50(v45, &unk_1ECAB6C70, &unk_1D9188C30);
              MEMORY[0x1DA72CB90](v45, -1, -1);
              MEMORY[0x1DA72CB90](v44, -1, -1);
            }

            else
            {
            }

            a4 = v122;
            v16 = v125;
            (*(v126 + 8))(v28, v123);
            a1 = v118;
            goto LABEL_29;
          }

          if (v133 >= 400 && v133 != 429)
          {
            v60 = [objc_opt_self() sharedInstance];
            v61 = [v60 importContext];

            v62 = swift_allocObject();
            v62[2] = v61;
            v62[3] = a6;
            v62[4] = v37;
            v131 = sub_1D9057698;
            v132 = v62;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D8CF5F60;
            v130 = &block_descriptor_65;
            v63 = _Block_copy(aBlock);
            v64 = a6;
            v65 = v61;

            [v65 performBlock_];
            _Block_release(v63);
          }

          v66 = v126;
          if (qword_1EDCD0768 != -1)
          {
            swift_once();
          }

          v67 = __swift_project_value_buffer(v38, qword_1EDCD0770);
          swift_beginAccess();
          (*(v66 + 16))(v120, v67, v38);
          v68 = a5;
          v69 = a6;
          v70 = sub_1D917741C();
          v71 = sub_1D9178CFC();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v72 = 138412546;
            *(v72 + 4) = v69;
            *v73 = v69;
            *(v72 + 12) = 2112;
            v74 = v69;
            v75 = sub_1D9176A5C();
            *(v72 + 14) = v75;
            v73[1] = v75;
            _os_log_impl(&dword_1D8CEC000, v70, v71, "Failed to fetch episodes for podcast %@ with parse error: %@", v72, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v73, -1, -1);
            MEMORY[0x1DA72CB90](v72, -1, -1);
          }

          (*(v66 + 8))(v120, v38);
          sub_1D90576A4();
          v76 = swift_allocError();
          *v77 = 0;
          v127(0, 0, 0, v76);
          v59 = v76;
LABEL_18:

          return;
        }

LABEL_13:
        v47 = v123;
        v48 = v126;
        if (qword_1EDCD0768 != -1)
        {
          swift_once();
        }

        v49 = __swift_project_value_buffer(v47, qword_1EDCD0770);
        swift_beginAccess();
        (*(v48 + 16))(v22, v49, v47);
        v50 = a5;
        v51 = a6;
        v52 = sub_1D917741C();
        v53 = sub_1D9178CFC();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412546;
          *(v54 + 4) = v51;
          *v55 = v51;
          *(v54 + 12) = 2112;
          v56 = v51;
          v57 = sub_1D9176A5C();
          *(v54 + 14) = v57;
          v55[1] = v57;
          _os_log_impl(&dword_1D8CEC000, v52, v53, "Failed to fetch episodes for podcast %@ with error: %@", v54, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v55, -1, -1);
          MEMORY[0x1DA72CB90](v54, -1, -1);
        }

        (*(v48 + 8))(v22, v47);
        v58 = a5;
        v127(0, 0, 0, a5);
        v59 = a5;
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

LABEL_29:
  v122 = a4;
  v123 = a10;
  if (!a1 || (v126 = sub_1D8FBECF4(a1)) == 0)
  {

    v126 = MEMORY[0x1E69E7CC0];
  }

  v121 = sub_1D8D946F4(&unk_1F5461A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1D9189080;
  v79 = [a6 description];
  v80 = sub_1D917820C();
  v82 = v81;

  *(v78 + 32) = v80;
  *(v78 + 40) = v82;
  v83 = sub_1D9176C2C();
  v120 = a6;
  v84 = v83;
  v85 = *(*(v83 - 8) + 56);
  v85(v16, 1, 1, v83);
  v86 = MEMORY[0x1E69E7CC0];
  v119 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v118 = sub_1D8D94DF8(v86);
  v117 = sub_1D8D951E0(v86);
  v116 = sub_1D8D9503C(v86);
  v115 = sub_1D8D9536C(v86);
  v114 = sub_1D8D953C4(v86);
  v112 = sub_1D8D952D8(v86);
  v113 = sub_1D8D95394(v86);
  v87 = sub_1D8D957C4(v86);
  *(v19 + 41) = 263;
  v19[43] = 5;
  v19[152] = 1;
  v19[201] = 1;
  v88 = v17[28];
  v85(&v19[v88], 1, 1, v84);
  v89 = &v19[v17[29]];
  v90 = &v19[v17[31]];
  v91 = v17[33];
  v111 = v17[34];
  v92 = &v19[v91];
  v93 = &v19[v17[35]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *(v19 + 10) = 83951876;
  v94 = v118;
  *(v19 + 6) = v119;
  *(v19 + 7) = v94;
  *(v19 + 8) = v117;
  *(v19 + 9) = &unk_1F5461998;
  v95 = v115;
  *(v19 + 10) = v116;
  *(v19 + 11) = v95;
  v96 = v114;
  *(v19 + 12) = v121;
  *(v19 + 13) = v96;
  v97 = v112;
  *(v19 + 14) = v86;
  *(v19 + 15) = v97;
  *(v19 + 16) = v86;
  *(v19 + 17) = v86;
  *(v19 + 18) = v78;
  v19[152] = 1;
  *(v19 + 20) = 0;
  v19[168] = 1;
  *(v19 + 22) = v113;
  *(v19 + 23) = v87;
  *(v19 + 24) = 0;
  *(v19 + 100) = 257;
  v19[202] = 0;
  sub_1D8E26828(v125, &v19[v88]);
  *v89 = 0;
  *(v89 + 1) = 0;
  v19[v17[30]] = 0;
  *v90 = 0;
  *(v90 + 1) = 0;
  *&v19[v17[32]] = v86;
  *v92 = 0;
  *(v92 + 1) = 0;
  v19[v111] = 2;
  *v93 = 0;
  *(v93 + 1) = 0;
  v98 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController;
  v99 = v123;
  swift_beginAccess();
  sub_1D8CFD9D8(v99 + v98, aBlock);
  v100 = v130;
  v101 = v131;
  __swift_project_boxed_opaque_existential_1(aBlock, v130);
  v102 = swift_allocObject();
  v103 = v120;
  v104 = v127;
  v105 = v128;
  v102[2] = v120;
  v102[3] = v104;
  v106 = v124;
  v102[4] = v105;
  v102[5] = v106;
  v107 = v126;
  v102[6] = v122;
  v102[7] = v107;
  v108 = *(v101 + 5);

  v109 = v103;

  v108(v19, sub_1D9057660, v102, v100, v101);

  sub_1D8D90BEC(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

void sub_1D905682C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 podcastForStoreId_];
  if (v11)
  {
    v12 = v11;
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_1EDCD0770);
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    v14 = a2;
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = a1;
      v18 = a3;
      v19 = v17;
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v14;
      *v20 = v14;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v18;
      a1 = v23;
      v21 = v14;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Failed to fetch episodes for podcast %@ with status %lld. Incrementing consecutiveFeedFetchErrors count", v19, 0x16u);
      sub_1D8D08A50(v20, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v22 = [v12 consecutiveFeedFetchErrors];
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      [v12 setConsecutiveFeedFetchErrors_];
      [a1 saveInCurrentBlock];
    }
  }
}

void sub_1D9056AD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, void (*a7)(void, void, void, char *), uint64_t a8, void *a9, unint64_t a10, uint64_t a11)
{
  v85 = a6;
  v86 = a5;
  v14 = sub_1D917744C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v24 = sub_1D917825C();
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24 - 8);
  if (!a1)
  {
    goto LABEL_16;
  }

  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_4;
    }

LABEL_16:
    v23 = v86;
    if (v86)
    {
      v31 = v86;
      if (qword_1EDCD0768 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v14, qword_1EDCD0770);
      swift_beginAccess();
      (*(v15 + 16))(v20, v32, v14);
      v33 = v85;
      v34 = v23;
      v35 = sub_1D917741C();
      v36 = sub_1D9178CFC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412546;
        *(v37 + 4) = v33;
        *v38 = v33;
        *(v37 + 12) = 2112;
        v39 = v33;
        v40 = sub_1D9176A5C();
        *(v37 + 14) = v40;
        v38[1] = v40;
        _os_log_impl(&dword_1D8CEC000, v35, v36, "Failed to fetch podcast %@ for feed updates with error: %@", v37, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
        swift_arrayDestroy();
        v41 = v38;
        v23 = v86;
        MEMORY[0x1DA72CB90](v41, -1, -1);
        MEMORY[0x1DA72CB90](v37, -1, -1);
      }

      else
      {
      }

      (*(v15 + 8))(v20, v14);
      v50 = v23;
LABEL_27:
      v52 = v23;
      a7(0, 0, 0, v50);

      return;
    }

    if (qword_1EDCD0768 == -1)
    {
LABEL_22:
      v42 = __swift_project_value_buffer(v14, qword_1EDCD0770);
      swift_beginAccess();
      (*(v15 + 16))(v17, v42, v14);
      v43 = v85;
      v44 = sub_1D917741C();
      v45 = sub_1D9178CFC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v43;
        v48 = v43;
        _os_log_impl(&dword_1D8CEC000, v44, v45, "Failed to fetch podcast %@ for feed updates with unknown error", v46, 0xCu);
        sub_1D8D08A50(v47, &unk_1ECAB6C70, &unk_1D9188C30);
        v49 = v47;
        v23 = v86;
        MEMORY[0x1DA72CB90](v49, -1, -1);
        MEMORY[0x1DA72CB90](v46, -1, -1);
      }

      (*(v15 + 8))(v17, v14);
      sub_1D90576A4();
      v50 = swift_allocError();
      *v51 = 1;
      goto LABEL_27;
    }

LABEL_40:
    swift_once();
    goto LABEL_22;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  v83 = a8;
  v84 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1DA72AA90](0, a1, v25);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v26 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for ServerPodcast();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    a7 = v84;
    goto LABEL_16;
  }

  v28 = v27;
  v82 = v26;
  if (a10)
  {
    v29 = a9;
  }

  else
  {
    v29 = 0;
  }

  if (a10)
  {
    v30 = a10;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  sub_1D91765CC();
  swift_allocObject();

  sub_1D91765BC();
  v81 = v28;
  v88 = v28;
  sub_1D90576F8();
  v53 = sub_1D91765AC();
  v55 = v54;

  sub_1D917824C();
  v56 = sub_1D917822C();
  if (v57)
  {
    v88 = v56;
    v89 = v57;
    sub_1D8D447DC();
    v58 = sub_1D917925C();

    v87[0] = v58;
    v59 = sub_1D9179A4C();
    v61 = v60;
    sub_1D8D7567C(v53, v55);
  }

  else
  {
    v59 = 0x5F44494C41564E49;
    sub_1D8D7567C(v53, v55);
    v61 = 0xEC0000004E4F534ALL;
  }

  v88 = v29;
  v89 = v30;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);

  MEMORY[0x1DA7298F0](v59, v61);

  v63 = v88;
  v62 = v89;
  if (qword_1EDCD0768 != -1)
  {
    swift_once();
  }

  v64 = a11;
  v65 = __swift_project_value_buffer(v14, qword_1EDCD0770);
  swift_beginAccess();
  (*(v15 + 16))(v23, v65, v14);
  v66 = v85;

  v67 = sub_1D917741C();
  v68 = sub_1D9178D1C();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v85 = v63;
    v70 = v69;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v80 = a11;
    v73 = v72;
    v87[0] = v72;
    *v70 = 138412546;
    *(v70 + 4) = v66;
    *v71 = v66;
    *(v70 + 12) = 2080;
    v74 = v66;
    *(v70 + 14) = sub_1D8CFA924(v85, v62, v87);
    _os_log_impl(&dword_1D8CEC000, v67, v68, "Completed feed update of %@ with hash %s", v70, 0x16u);
    sub_1D8D08A50(v71, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v71, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    v75 = v73;
    v64 = v80;
    MEMORY[0x1DA72CB90](v75, -1, -1);
    v76 = v70;
    v63 = v85;
    MEMORY[0x1DA72CB90](v76, -1, -1);
  }

  (*(v15 + 8))(v23, v14);
  v77 = v84;
  v78 = v81;
  v79 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  *(v78 + v79) = v64;

  swift_unknownObjectRetain();
  v77(v78, v63, v62, v86);

  swift_unknownObjectRelease_n();
}

void sub_1D90574DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    if (a4)
    {
LABEL_3:
      v9 = sub_1D9176A5C();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

id PodcastFeedDownloader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastFeedDownloader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D90576A4()
{
  result = qword_1ECAB9740;
  if (!qword_1ECAB9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9740);
  }

  return result;
}

unint64_t sub_1D90576F8()
{
  result = qword_1ECAB26C8;
  if (!qword_1ECAB26C8)
  {
    type metadata accessor for ServerPodcast();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26C8);
  }

  return result;
}

unint64_t sub_1D9057764()
{
  result = qword_1ECAB9748;
  if (!qword_1ECAB9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9748);
  }

  return result;
}

id sub_1D90577B8()
{
  result = [objc_allocWithZone(type metadata accessor for PodcastRequestManager()) init];
  qword_1ECAB1D10 = result;
  return result;
}

id PodcastRequestManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PodcastRequestManager.sharedInstance.getter()
{
  if (qword_1ECAB1D08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1D10;

  return v1;
}

uint64_t sub_1D90578D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v46 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v45 = &v35 - v5;
  v7 = type metadata accessor for MediaRequest.Params(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9189080;
  v50 = a1;
  *(v11 + 32) = sub_1D9179A4C();
  *(v11 + 40) = v12;
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = MEMORY[0x1E69E7CC0];
  v44 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v43 = sub_1D8D94DF8(v15);
  v42 = sub_1D8D951E0(v15);
  v41 = sub_1D8D9503C(v15);
  v40 = sub_1D8D9536C(v15);
  v39 = sub_1D8D9536C(v15);
  v38 = sub_1D8D953C4(v15);
  v36 = sub_1D8D952D8(v15);
  v37 = sub_1D8D95394(v15);
  v16 = sub_1D8D957C4(v15);
  *(v10 + 41) = 263;
  v10[43] = 5;
  v10[152] = 1;
  v10[201] = 1;
  v17 = v8[30];
  v14(&v10[v17], 1, 1, v13);
  v18 = &v10[v8[31]];
  v19 = &v10[v8[33]];
  v20 = v8[35];
  v35 = v8[36];
  v21 = &v10[v20];
  v22 = &v10[v8[37]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v10 + 10) = 83951876;
  v23 = v43;
  *(v10 + 6) = v44;
  *(v10 + 7) = v23;
  v24 = v41;
  *(v10 + 8) = v42;
  *(v10 + 9) = v15;
  v26 = v39;
  v25 = v40;
  *(v10 + 10) = v24;
  *(v10 + 11) = v25;
  v27 = v38;
  *(v10 + 12) = v26;
  *(v10 + 13) = v27;
  v28 = v36;
  *(v10 + 14) = v15;
  *(v10 + 15) = v28;
  *(v10 + 16) = v15;
  *(v10 + 17) = v15;
  *(v10 + 18) = v11;
  v10[152] = 1;
  *(v10 + 20) = 0;
  v10[168] = 1;
  *(v10 + 22) = v37;
  *(v10 + 23) = v16;
  *(v10 + 24) = 0;
  *(v10 + 100) = 257;
  v10[202] = 0;
  sub_1D8E26828(v45, &v10[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v10[v8[32]] = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v10[v8[34]] = v15;
  *v21 = 0;
  *(v21 + 1) = 0;
  v10[v35] = 2;
  *v22 = 0;
  *(v22 + 1) = 0;
  v29 = *(v47 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController);
  v30 = swift_allocObject();
  v31 = v48;
  v32 = v49;
  v30[2] = v46;
  v30[3] = v31;
  v30[4] = v32;
  v33 = v29;

  sub_1D904AD58(v10, 0, sub_1D9058DB8, v30);

  return sub_1D8D90BEC(v10);
}

double sub_1D9057C5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, __n128))
{
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_4;
    }

LABEL_11:
    if (a5)
    {
      v23 = a5;
      if (qword_1EDCD0768 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v11, qword_1EDCD0770);
      swift_beginAccess();
      (*(v12 + 16))(v18, v24, v11);
      v25 = a5;
      v26 = sub_1D917741C();
      v27 = sub_1D9178CFC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = a6;
        v31 = v29;
        *v28 = 134218242;
        *(v28 + 4) = v30;
        *(v28 + 12) = 2112;
        v32 = sub_1D9176A5C();
        *(v28 + 14) = v32;
        *v31 = v32;
        _os_log_impl(&dword_1D8CEC000, v26, v27, "Failed to fetch episodes for podcast %lld with error: %@", v28, 0x16u);
        sub_1D8E262AC(v31);
        MEMORY[0x1DA72CB90](v31, -1, -1);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }

      else
      {
      }

      v14 = v18;
LABEL_22:
      (*(v12 + 8))(v14, v11);
      (a7)(0, 0);
      return result;
    }

    if (qword_1EDCD0768 == -1)
    {
LABEL_17:
      v33 = __swift_project_value_buffer(v11, qword_1EDCD0770);
      swift_beginAccess();
      (*(v12 + 16))(v14, v33, v11);
      v34 = sub_1D917741C();
      v35 = sub_1D9178CFC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = a6;
        _os_log_impl(&dword_1D8CEC000, v34, v35, "Failed to fetch episodes for podcast %lld with unknown error", v36, 0xCu);
        MEMORY[0x1DA72CB90](v36, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_31:
    swift_once();
    goto LABEL_17;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, a1, v16);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for ServerPodcast();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v20 = *(v19 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v20)
  {
    v21 = *(v20 + 56);
    v22 = *(v20 + 64);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  (a7)(v21, v22);
  swift_unknownObjectRelease();

  return result;
}

void sub_1D9058164(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t sub_1D90581C0(void *a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v49 = &v38 - v5;
  v7 = type metadata accessor for MediaRequest.Params(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9189080;
  v12 = [a1 description];
  v13 = sub_1D917820C();
  v15 = v14;

  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v16 = sub_1D9176C2C();
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  v18 = MEMORY[0x1E69E7CC0];
  v48 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v47 = sub_1D8D94DF8(v18);
  v46 = sub_1D8D951E0(v18);
  v45 = sub_1D8D9503C(v18);
  v44 = sub_1D8D9536C(v18);
  v43 = sub_1D8D9536C(v18);
  v42 = sub_1D8D953C4(v18);
  v40 = sub_1D8D952D8(v18);
  v41 = sub_1D8D95394(v18);
  v19 = sub_1D8D957C4(v18);
  *(v10 + 41) = 263;
  v10[43] = 5;
  v10[152] = 1;
  v10[201] = 1;
  v20 = v8[30];
  v17(&v10[v20], 1, 1, v16);
  v21 = &v10[v8[31]];
  v22 = &v10[v8[33]];
  v23 = v8[35];
  v39 = v8[36];
  v24 = &v10[v23];
  v25 = &v10[v8[37]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v10 + 10) = 83951620;
  v26 = v47;
  *(v10 + 6) = v48;
  *(v10 + 7) = v26;
  *(v10 + 8) = v46;
  *(v10 + 9) = &unk_1F5461A50;
  v27 = v44;
  *(v10 + 10) = v45;
  *(v10 + 11) = v27;
  v28 = v42;
  *(v10 + 12) = v43;
  *(v10 + 13) = v28;
  v29 = v40;
  *(v10 + 14) = v18;
  *(v10 + 15) = v29;
  *(v10 + 16) = v18;
  *(v10 + 17) = v18;
  *(v10 + 18) = v11;
  v10[152] = 1;
  *(v10 + 20) = 0;
  v10[168] = 1;
  *(v10 + 22) = v41;
  *(v10 + 23) = v19;
  *(v10 + 24) = 0;
  *(v10 + 100) = 257;
  v10[202] = 0;
  sub_1D8E26828(v49, &v10[v20]);
  *v21 = 0;
  *(v21 + 1) = 0;
  v10[v8[32]] = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v10[v8[34]] = v18;
  *v24 = 0;
  *(v24 + 1) = 0;
  v10[v39] = 2;
  *v25 = 0;
  *(v25 + 1) = 0;
  v30 = *(v51 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController);
  v31 = swift_allocObject();
  v32 = v50;
  v33 = v52;
  v34 = v53;
  v31[2] = v50;
  v31[3] = v33;
  v31[4] = v34;
  v35 = v30;
  v36 = v32;

  sub_1D904AD58(v10, 0, sub_1D9058DC4, v31);

  return sub_1D8D90BEC(v10);
}

void sub_1D9058564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void, void, void), uint64_t a8)
{
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - v19;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_4;
    }

LABEL_19:
    if (a5)
    {
      v36 = a5;
      if (qword_1EDCD0768 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v13, qword_1EDCD0770);
      swift_beginAccess();
      (*(v14 + 16))(v20, v37, v13);
      v38 = a5;
      v39 = a6;
      v40 = sub_1D917741C();
      v41 = sub_1D9178CFC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v57 = a8;
        v44 = a7;
        v45 = v43;
        *v42 = 138412546;
        *(v42 + 4) = v39;
        *v43 = v39;
        *(v42 + 12) = 2112;
        v46 = v39;
        v47 = sub_1D9176A5C();
        *(v42 + 14) = v47;
        v45[1] = v47;
        _os_log_impl(&dword_1D8CEC000, v40, v41, "Failed to fetch podcast from episode ADAM ID %@ with error: %@", v42, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
        swift_arrayDestroy();
        v48 = v45;
        a7 = v44;
        MEMORY[0x1DA72CB90](v48, -1, -1);
        MEMORY[0x1DA72CB90](v42, -1, -1);
      }

      else
      {
      }

      v16 = v20;
LABEL_30:
      (*(v14 + 8))(v16, v13);
      a7(0, 0, 0, 0);
      return;
    }

    if (qword_1EDCD0768 == -1)
    {
LABEL_25:
      v49 = __swift_project_value_buffer(v13, qword_1EDCD0770);
      swift_beginAccess();
      (*(v14 + 16))(v16, v49, v13);
      v50 = a6;
      v51 = sub_1D917741C();
      v52 = sub_1D9178CFC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v50;
        v55 = v50;
        _os_log_impl(&dword_1D8CEC000, v51, v52, "Failed to fetch podcast from episode ADAM ID %@ with unknown error", v53, 0xCu);
        sub_1D8E262AC(v54);
        MEMORY[0x1DA72CB90](v54, -1, -1);
        MEMORY[0x1DA72CB90](v53, -1, -1);
      }

      goto LABEL_30;
    }

LABEL_37:
    swift_once();
    goto LABEL_25;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_4:
  v57 = a8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = a7;
    MEMORY[0x1DA72AA90](0, a1, v18);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v21 = a7;
    swift_unknownObjectRetain();
  }

  type metadata accessor for ServerPodcastEpisode();
  v22 = swift_dynamicCastClass();
  if (!v22 || (v23 = OBJC_IVAR___MTServerPodcastEpisode_relationships, v24 = v22, swift_beginAccess(), (v25 = *(v24 + v23)) == 0) || (v26 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast, swift_beginAccess(), (v27 = *(v25 + v26)) == 0))
  {
    swift_unknownObjectRelease();
    a7 = v21;
LABEL_18:
    a8 = v57;
    goto LABEL_19;
  }

  v28 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v29 = *(v27 + v28);
  if (!(v29 >> 62))
  {
    a7 = v21;
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  a7 = v21;
  if (!sub_1D917935C())
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

LABEL_12:
  if ((v29 & 0xC000000000000001) != 0)
  {

    v30 = MEMORY[0x1DA72AA90](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = *(v29 + 32);
  }

  v31 = *&v30[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
  v32 = *&v30[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];
  v33 = *&v30[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v33)
  {
    v35 = *(v33 + 56);
    v34 = *(v33 + 64);
  }

  else
  {
    v35 = 0;
    v34 = 0;
  }

  a7(v31, v32, v35, v34);
  swift_unknownObjectRelease();
}

void sub_1D9058C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    if (a4)
    {
LABEL_3:
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

id PodcastRequestManager.init()()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PodcastRequestManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PodcastRequestManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastRequestManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9058E84()
{
  result = [objc_allocWithZone(type metadata accessor for ResizedArtworkURLProvider()) init];
  qword_1ECAB9758 = result;
  return result;
}

id ResizedArtworkURLProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ResizedArtworkURLProvider.shared.getter()
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ECAB9758;

  return v0;
}

void static ResizedArtworkURLProvider.shared.setter(uint64_t a1)
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ECAB9758;
  qword_1ECAB9758 = a1;
}

uint64_t (*static ResizedArtworkURLProvider.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1D9059170@<X0>(void *a1@<X8>)
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ECAB9758;
  *a1 = qword_1ECAB9758;

  return v2;
}

void sub_1D90591FC(id *a1)
{
  v1 = qword_1ECAB36D0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1ECAB9758;
  qword_1ECAB9758 = v2;
}

id ResizedArtworkURLProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizedArtworkURLProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ResizedArtworkURLProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ResizedArtworkURLProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1D90593C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1D90594A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  sub_1D9176BFC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D8E677CC(v8);
  }

  else
  {
    v37 = v12;
    v38 = a3;
    v39 = v15;
    (*(v10 + 32))(v18, v8, v9);
    sub_1D9176B0C();
    v19 = sub_1D91782EC();
    v20 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v21 = sub_1D90593C8(0x2B645C782B645CLL, 0xE700000000000000, 0);
    v36 = v19;
    if (v21)
    {
      v23 = v21;
      v42 = a1;
      v43 = a2;
      v40 = 0xD000000000000018;
      v41 = 0x80000001D91D41F0;
      sub_1D8D447DC();
      if (sub_1D917926C())
      {
        v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
        v25 = [v23 numberOfMatchesInString:v24 options:0 range:{0, v36}];

        if (v25 >= 1)
        {
          v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          v27 = v38;
          v40 = v38;
          v42 = sub_1D9179A4C();
          v43 = v28;
          MEMORY[0x1DA7298F0](120, 0xE100000000000000);
          v40 = v27;
          v29 = sub_1D9179A4C();
          MEMORY[0x1DA7298F0](v29);

          v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

          v35 = v23;
          v31 = [v23 stringByReplacingMatchesInString:v26 options:0 range:0 withTemplate:{v36, v30}];

          sub_1D917820C();

          v32 = v37;
          sub_1D9176B5C();
          v33 = v39;
          sub_1D9176B3C();

          v34 = *(v10 + 8);
          v34(v32, v9);
          a1 = sub_1D9176ACC();

          v34(v33, v9);
          v34(v18, v9);
          return a1;
        }
      }

      a1 = sub_1D9176ACC();
    }

    else
    {
      a1 = sub_1D9176ACC();
    }

    (*(v10 + 8))(v18, v9);
  }

  return a1;
}

id SearchRequest.init(term:contentTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___MTSearchRequest_contentTypes;
  *&v3[OBJC_IVAR___MTSearchRequest_contentTypes] = MEMORY[0x1E69E7CC0];
  v6 = &v3[OBJC_IVAR___MTSearchRequest_limit];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v3[OBJC_IVAR___MTSearchRequest_term];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 32;
    do
    {
      v11 = *(a3 + v10);
      if (v11 > 2)
      {
        switch(v11)
        {
          case 3:
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v5] = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
              *&v3[v5] = v9;
            }

            v23 = *(v9 + 2);
            v22 = *(v9 + 3);
            if (v23 >= v22 >> 1)
            {
              v9 = sub_1D8ECD860((v22 > 1), v23 + 1, 1, v9);
            }

            *(v9 + 2) = v23 + 1;
            v9[v23 + 32] = 2;
            break;
          case 4:
            swift_beginAccess();
            v27 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v5] = v9;
            if ((v27 & 1) == 0)
            {
              v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
              *&v3[v5] = v9;
            }

            v29 = *(v9 + 2);
            v28 = *(v9 + 3);
            if (v29 >= v28 >> 1)
            {
              v9 = sub_1D8ECD860((v28 > 1), v29 + 1, 1, v9);
            }

            *(v9 + 2) = v29 + 1;
            v9[v29 + 32] = 4;
            break;
          case 5:
            swift_beginAccess();
            v15 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v5] = v9;
            if ((v15 & 1) == 0)
            {
              v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
              *&v3[v5] = v9;
            }

            v17 = *(v9 + 2);
            v16 = *(v9 + 3);
            if (v17 >= v16 >> 1)
            {
              v9 = sub_1D8ECD860((v16 > 1), v17 + 1, 1, v9);
            }

            *(v9 + 2) = v17 + 1;
            v9[v17 + 32] = 5;
            break;
          default:
            goto LABEL_5;
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          swift_beginAccess();
          v24 = swift_isUniquelyReferenced_nonNull_native();
          *&v3[v5] = v9;
          if ((v24 & 1) == 0)
          {
            v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
            *&v3[v5] = v9;
          }

          v26 = *(v9 + 2);
          v25 = *(v9 + 3);
          if (v26 >= v25 >> 1)
          {
            v9 = sub_1D8ECD860((v25 > 1), v26 + 1, 1, v9);
          }

          *(v9 + 2) = v26 + 1;
          v9[v26 + 32] = 0;
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_5;
          }

          swift_beginAccess();
          v12 = swift_isUniquelyReferenced_nonNull_native();
          *&v3[v5] = v9;
          if ((v12 & 1) == 0)
          {
            v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
            *&v3[v5] = v9;
          }

          v14 = *(v9 + 2);
          v13 = *(v9 + 3);
          if (v14 >= v13 >> 1)
          {
            v9 = sub_1D8ECD860((v13 > 1), v14 + 1, 1, v9);
          }

          *(v9 + 2) = v14 + 1;
          v9[v14 + 32] = 3;
        }
      }

      else
      {
        swift_beginAccess();
        v18 = swift_isUniquelyReferenced_nonNull_native();
        *&v3[v5] = v9;
        if ((v18 & 1) == 0)
        {
          v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
          *&v3[v5] = v9;
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = sub_1D8ECD860((v19 > 1), v20 + 1, 1, v9);
        }

        *(v9 + 2) = v20 + 1;
        v9[v20 + 32] = 1;
      }

      *&v3[v5] = v9;
      swift_endAccess();
LABEL_5:
      v10 += 8;
      --v8;
    }

    while (v8);
  }

  v31.receiver = v3;
  v31.super_class = type metadata accessor for SearchRequest();
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t sub_1D9059EAC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___MTSearchRequest_limit;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1D9059EDC(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v64 = sub_1D917744C();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v50 - v5;
  v6 = type metadata accessor for MediaRequest.Params(0);
  v7 = (v6 - 8);
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v8;
  v67 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = *&v2[OBJC_IVAR___MTSearchRequest_term];
  v70 = *&v2[OBJC_IVAR___MTSearchRequest_term + 8];
  v71 = v12;
  v13 = OBJC_IVAR___MTSearchRequest_contentTypes;
  swift_beginAccess();
  v60 = *&v2[v13];
  v62 = v2;
  v14 = *&v2[OBJC_IVAR___MTSearchRequest_limit];
  v15 = v2[OBJC_IVAR___MTSearchRequest_limit + 8];

  v59 = sub_1D8E27040(&unk_1F5461AF0);
  sub_1D8D08A50(&unk_1F5461B10, &qword_1ECAB8E08, &qword_1D91A7608);
  v58 = sub_1D8D946F4(&unk_1F5461B20);
  sub_1D8D08A50(&unk_1F5461B40, &unk_1ECAB9A50, &unk_1D9197130);
  v57 = sub_1D8D946F4(&unk_1F5461B50);
  sub_1D8D08A50(&unk_1F5461B70, &unk_1ECAB9A50, &unk_1D9197130);
  v16 = 3;
  if (!v15)
  {
    v16 = v14;
  }

  v56 = v16;
  v17 = sub_1D9176C2C();
  v18 = *(*(v17 - 8) + 56);
  v18(v72, 1, 1, v17);
  v19 = MEMORY[0x1E69E7CC0];
  v55 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v54 = sub_1D8D951E0(v19);
  v53 = sub_1D8D9503C(v19);
  v52 = sub_1D8D953C4(v19);
  v20 = sub_1D8D952D8(v19);
  v51 = sub_1D8D95394(v19);
  v21 = sub_1D8D957C4(v19);
  *(v11 + 41) = 263;
  v11[43] = 5;
  v11[152] = 1;
  v11[201] = 1;
  v22 = v7[30];
  v18(&v11[v22], 1, 1, v17);
  v23 = &v11[v7[31]];
  v24 = &v11[v7[33]];
  v25 = v7[35];
  v50 = v7[36];
  v26 = &v11[v25];
  v27 = &v11[v7[37]];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *(v11 + 10) = 83953412;
  v28 = v59;
  *(v11 + 6) = v55;
  *(v11 + 7) = v28;
  *(v11 + 8) = v54;
  *(v11 + 9) = v19;
  v29 = v58;
  *(v11 + 10) = v53;
  *(v11 + 11) = v29;
  v30 = v52;
  *(v11 + 12) = v57;
  *(v11 + 13) = v30;
  *(v11 + 14) = v19;
  *(v11 + 15) = v20;
  *(v11 + 16) = v19;
  *(v11 + 17) = v19;
  *(v11 + 18) = v19;
  v11[152] = 1;
  *(v11 + 20) = v56;
  v11[168] = 0;
  *(v11 + 22) = v51;
  *(v11 + 23) = v21;
  *(v11 + 24) = 0;
  *(v11 + 100) = 257;
  v11[202] = 0;
  sub_1D8E26828(v72, &v11[v22]);
  *v23 = 0;
  *(v23 + 1) = 0;
  v11[v7[32]] = 0;
  v31 = v70;
  *v24 = v71;
  *(v24 + 1) = v31;
  *&v11[v7[34]] = v60;
  *v26 = 0;
  *(v26 + 1) = 0;
  v11[v50] = 2;
  *v27 = 0;
  *(v27 + 1) = 0;
  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v32 = v64;
  v33 = __swift_project_value_buffer(v64, qword_1ECAB79C8);
  swift_beginAccess();
  v34 = v63;
  v35 = v61;
  (*(v63 + 16))(v61, v33, v32);
  v36 = v62;
  v37 = sub_1D917741C();
  v38 = sub_1D9178D1C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1D8CFA924(v71, v70, v73);
    _os_log_impl(&dword_1D8CEC000, v37, v38, "Searching for term (%s)...", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1DA72CB90](v40, -1, -1);
    MEMORY[0x1DA72CB90](v39, -1, -1);
  }

  (*(v34 + 8))(v35, v32);
  v41 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  sub_1D8CFD9D8(v36 + v41, v73);
  v42 = v74;
  v43 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v44 = v67;
  sub_1D8D85B08(v11, v67);
  v45 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v46 = swift_allocObject();
  v47 = v69;
  *(v46 + 16) = v68;
  *(v46 + 24) = v47;
  sub_1D8D85D0C(v44, v46 + v45);
  v48 = *(v43 + 56);

  v48(v11, sub_1D905C338, v46, v42, v43);

  sub_1D8D90BEC(v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

void sub_1D905A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D917744C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  if (a5)
  {
    v22 = a5;
    if (qword_1ECAB35F0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v15, qword_1ECAB79C8);
    swift_beginAccess();
    (*(v16 + 16))(v21, v23, v15);
    v24 = a5;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = a6;
      v29 = v28;
      v50 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v30 = sub_1D9179D2C();
      v32 = sub_1D8CFA924(v30, v31, &v50);
      v48 = v15;
      v33 = v32;

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Search resulted in error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v34 = v29;
      a6 = v49;
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);

      (*(v16 + 8))(v21, v48);
    }

    else
    {

      (*(v16 + 8))(v21, v15);
    }

    v38 = a5;
    a6(0, a5);
  }

  else if (a3)
  {
    sub_1D8D85B08(a8, v14);
    v35 = type metadata accessor for SearchResponse(0);
    v36 = objc_allocWithZone(v35);
    *&v36[OBJC_IVAR___MTSearchResponse_response] = a3;
    sub_1D8D85B08(v14, &v36[OBJC_IVAR___MTSearchResponse_params]);
    *&v36[OBJC_IVAR___MTSearchResponse_parsedObjectsCache] = sub_1D8E27554(MEMORY[0x1E69E7CC0]);
    v51.receiver = v36;
    v51.super_class = v35;

    v37 = objc_msgSendSuper2(&v51, sel_init);
    sub_1D8D90BEC(v14);
    a6(v37, 0);
  }

  else
  {
    if (qword_1ECAB35F0 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v15, qword_1ECAB79C8);
    swift_beginAccess();
    (*(v16 + 16))(v18, v39, v15);
    v40 = sub_1D917741C();
    v41 = sub_1D9178D1C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D8CEC000, v40, v41, "Search returned no results", v42, 2u);
      MEMORY[0x1DA72CB90](v42, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    v43 = MEMORY[0x1E69E7CC0];
    v44 = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
    sub_1D8D85B08(a8, v14);
    v45 = type metadata accessor for SearchResponse(0);
    v46 = objc_allocWithZone(v45);
    *&v46[OBJC_IVAR___MTSearchResponse_response] = v44;
    sub_1D8D85B08(v14, &v46[OBJC_IVAR___MTSearchResponse_params]);
    *&v46[OBJC_IVAR___MTSearchResponse_parsedObjectsCache] = sub_1D8E27554(v43);
    v52.receiver = v46;
    v52.super_class = v45;
    v47 = objc_msgSendSuper2(&v52, sel_init);
    sub_1D8D90BEC(v14);
    a6(v47, 0);
  }
}

id SearchRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_1D905AC7C()
{

  return result;
}

unint64_t sub_1D905AD28(unint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR___MTSearchResponse_params;
  v6 = type metadata accessor for MediaRequest.Params(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v2 + v5 + *(v6 + 128));
  if (*(v7 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1D905B430(qword_1D91AC748[*(v7 + a1 + 32)]);
  v2 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_10:
    v9 = MEMORY[0x1DA72AA90](a2, v2);
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v9 = *(result + 8 * a2 + 32);
    swift_unknownObjectRetain();
LABEL_7:

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D905AE58(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = v1 + OBJC_IVAR___MTSearchResponse_params;
  result = type metadata accessor for MediaRequest.Params(0);
  v4 = *(v3 + *(result + 128));
  if (*(v4 + 16) <= v2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = sub_1D905BDB8(qword_1D91AC748[*(v4 + v2 + 32)]);
  if (!v5)
  {
    return 0;
  }

  v6 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(v5);

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 16);

  return v7;
}

unint64_t sub_1D905AFB4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = v1 + OBJC_IVAR___MTSearchResponse_params;
    result = type metadata accessor for MediaRequest.Params(0);
    v4 = *(v3 + *(result + 128));
    if (*(v4 + 16) > v2)
    {
      v5 = qword_1D91AC748[*(v4 + v2 + 32)];
      v6 = sub_1D905B134(v5);
      v8 = v7;
      v9 = type metadata accessor for SearchSeeAllSection();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR___MTSearchSeeAllSection_contentType] = v5;
      v11 = &v10[OBJC_IVAR___MTSearchSeeAllSection_nextPage];
      *v11 = v6;
      v11[1] = v8;
      v12.receiver = v10;
      v12.super_class = v9;
      return objc_msgSendSuper2(&v12, sel_init);
    }
  }

  __break(1u);
  return result;
}

id SearchSeeAllSection.__allocating_init(contentType:nextPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___MTSearchSeeAllSection_contentType] = a1;
  v8 = &v7[OBJC_IVAR___MTSearchSeeAllSection_nextPage];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1D905B134(uint64_t a1)
{
  v3 = sub_1D917744C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D905BDB8(a1);
  if (v7)
  {
    PageySSSgSDys11AnyHashableVypGFZ_0 = _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v7);
    v10 = v9;
  }

  else
  {
    PageySSSgSDys11AnyHashableVypGFZ_0 = 0;
    v10 = 0;
  }

  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1ECAB79C8);
  swift_beginAccess();
  (*(v4 + 16))(v6, v11, v3);

  v12 = v1;
  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();

  if (os_log_type_enabled(v13, v14))
  {
    v27 = PageySSSgSDys11AnyHashableVypGFZ_0;
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v15 = 136315394;
    v16 = &v12[OBJC_IVAR___MTSearchResponse_params];
    v17 = &v16[*(type metadata accessor for MediaRequest.Params(0) + 124)];
    if (v17[1])
    {
      v18 = *v17;
      v19 = v17[1];
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_1D8CFA924(v18, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    PageySSSgSDys11AnyHashableVypGFZ_0 = v27;
    if (v10)
    {
      v21 = v27;
    }

    else
    {
      v21 = 0;
    }

    if (v10)
    {
      v22 = v10;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = sub_1D8CFA924(v21, v22, &v28);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Parsing nextPage for term (%s) returned %s", v15, 0x16u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return PageySSSgSDys11AnyHashableVypGFZ_0;
}

unint64_t sub_1D905B430(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___MTSearchResponse_parsedObjectsCache;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (*(v9 + 16))
  {
    v10 = sub_1D8F06F60(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      if (v12 >> 62)
      {

        v54 = sub_1D91796FC();

        return v54;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      swift_bridgeObjectRetain_n();
      sub_1D9179C4C();
      if (!swift_dynamicCastMetatype())
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          v15 = (v13 + 32);
          while (*v15)
          {
            ++v15;
            if (!--v14)
            {
              goto LABEL_97;
            }
          }

LABEL_104:

          return v13 | 1;
        }
      }

      goto LABEL_97;
    }
  }

  v16 = sub_1D905BDB8(a1);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = v16;
    type metadata accessor for MediaRequestResponseParser();
    _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v18);
    if (v19)
    {
    }

    sub_1D90507E0(v18, v59);
    if (v59[1])
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      LOBYTE(v58) = v59[0];
      v20 = sub_1D9052EB8(v18, &v58);
      v22 = v21;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *&v2[v8];
    *&v2[v8] = 0x8000000000000000;
    sub_1D8F50DC0(v20, a1, isUniquelyReferenced_nonNull_native);
    *&v2[v8] = v58;
    swift_endAccess();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v4, qword_1ECAB79C8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v24, v4);
  swift_bridgeObjectRetain_n();
  v25 = v2;
  v26 = sub_1D917741C();
  v27 = sub_1D9178D1C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v28 = 136315650;
    v29 = &v25[OBJC_IVAR___MTSearchResponse_params];
    v30 = &v29[*(type metadata accessor for MediaRequest.Params(0) + 124)];
    if (v30[1])
    {
      v31 = *v30;
      v32 = v30[1];
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    v35 = sub_1D8CFA924(v31, v32, &v58);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2048;
    if (v20 >> 62)
    {
      v36 = sub_1D917935C();
    }

    else
    {
      v36 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 14) = v36;

    *(v28 + 22) = 2080;
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v37 = 0xE700000000000000;
          v38 = 0x74736163646F70;
          goto LABEL_71;
        case 1:
          v37 = 0xEE0065646F736970;
          v38 = 0x4574736163646F70;
          goto LABEL_71;
        case 2:
          v37 = 0xEE006C656E6E6168;
          v38 = 0x4374736163646F70;
          goto LABEL_71;
      }

LABEL_109:
      v57 = a1;
      goto LABEL_110;
    }

    switch(a1)
    {
      case 3:
        v37 = 0xEE006E6F69746174;
        v38 = 0x5374736163646F70;
        goto LABEL_71;
      case 4:
        v37 = 0xEB00000000737470;
        v39 = 0x63736E617274;
        break;
      case 5:
        v37 = 0xEA00000000007365;
        v39 = 0x6F6765746163;
        break;
      default:
        goto LABEL_109;
    }

    v38 = v39 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
LABEL_71:
    v44 = sub_1D8CFA924(v38, v37, &v58);

    *(v28 + 24) = v44;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Parsing results for term (%s) created %ld %s objects.", v28, 0x20u);
    v45 = v56;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v45, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);

    (*(v5 + 8))(v7, v4);
    v17 = MEMORY[0x1E69E7CC0];
    if (a1 > 2)
    {
      goto LABEL_72;
    }

    goto LABEL_24;
  }

  swift_bridgeObjectRelease_n();
  (*(v5 + 8))(v7, v4);
  if (a1 > 2)
  {
LABEL_72:
    switch(a1)
    {
      case 3:
        v12 = sub_1D8FBF39C(v20);

        if (!v12)
        {
          v12 = v17;
        }

        if (!(v12 >> 62))
        {
          v13 = v12 & 0xFFFFFFFFFFFFFF8;

          sub_1D9179C4C();
          if (!swift_dynamicCastMetatype())
          {
            v48 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
              v49 = (v13 + 32);
              while (*v49)
              {
                ++v49;
                if (!--v48)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_97;
        }

        goto LABEL_105;
      case 4:
        v12 = sub_1D8FBEEC0(v20);

        if (!v12)
        {
          v12 = v17;
        }

        if (!(v12 >> 62))
        {
          v13 = v12 & 0xFFFFFFFFFFFFFF8;

          sub_1D9179C4C();
          if (!swift_dynamicCastMetatype())
          {
            v46 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v46)
            {
              v47 = (v13 + 32);
              while (*v47)
              {
                ++v47;
                if (!--v46)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_104;
            }
          }

LABEL_97:

          return v12;
        }

LABEL_105:

        v53 = sub_1D91796FC();
        swift_bridgeObjectRelease_n();
        return v53;
      case 5:
        v12 = sub_1D8FBF3B4(v20);

        if (!v12)
        {
          v12 = v17;
        }

        if (!(v12 >> 62))
        {
          v13 = v12 & 0xFFFFFFFFFFFFFF8;

          sub_1D9179C4C();
          if (!swift_dynamicCastMetatype())
          {
            v51 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              v52 = (v13 + 32);
              while (*v52)
              {
                ++v52;
                if (!--v51)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_97;
        }

        goto LABEL_105;
    }

    goto LABEL_108;
  }

LABEL_24:
  switch(a1)
  {
    case 0:
      v12 = sub_1D8FBF384(v20);

      if (!v12)
      {
        v12 = v17;
      }

      if (!(v12 >> 62))
      {
        v13 = v12 & 0xFFFFFFFFFFFFFF8;

        sub_1D9179C4C();
        if (!swift_dynamicCastMetatype())
        {
          v40 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40)
          {
            v41 = (v13 + 32);
            while (*v41)
            {
              ++v41;
              if (!--v40)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_104;
          }
        }

        goto LABEL_97;
      }

      goto LABEL_105;
    case 1:
      v12 = sub_1D8FBECF4(v20);

      if (!v12)
      {
        v12 = v17;
      }

      if (!(v12 >> 62))
      {
        v13 = v12 & 0xFFFFFFFFFFFFFF8;

        sub_1D9179C4C();
        if (!swift_dynamicCastMetatype())
        {
          v33 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            v34 = (v13 + 32);
            while (*v34)
            {
              ++v34;
              if (!--v33)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_104;
          }
        }

        goto LABEL_97;
      }

      goto LABEL_105;
    case 2:
      v12 = sub_1D8FBEEFC(v20);

      if (!v12)
      {
        v12 = v17;
      }

      if (!(v12 >> 62))
      {
        v13 = v12 & 0xFFFFFFFFFFFFFF8;

        sub_1D9179C4C();
        if (!swift_dynamicCastMetatype())
        {
          v42 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
            v43 = (v13 + 32);
            while (*v43)
            {
              ++v43;
              if (!--v42)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_104;
          }
        }

        goto LABEL_97;
      }

      goto LABEL_105;
  }

LABEL_108:
  v58 = a1;
LABEL_110:
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D905BDB8(uint64_t a1)
{
  sub_1D91793EC();
  v3 = *(v1 + OBJC_IVAR___MTSearchResponse_response);
  if (!*(v3 + 16))
  {
    goto LABEL_23;
  }

  v4 = sub_1D8D6550C(v12);
  if ((v5 & 1) == 0)
  {
LABEL_22:

LABEL_23:
    sub_1D8D9A308(v12);
    return 0;
  }

  sub_1D8CFAD1C(*(v3 + 56) + 32 * v4, v13);
  sub_1D8D9A308(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_14;
      case 4:
        v6 = 0x63736E617274;
        break;
      case 5:
        v6 = 0x6F6765746163;
        break;
      default:
        goto LABEL_25;
    }

    v7 = v6 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    goto LABEL_18;
  }

  if (!a1)
  {
    v7 = 0x7374736163646F70;
LABEL_18:
    v11 = v7;
    sub_1D91793EC();
    if (MEMORY[0x73746C75736582])
    {
      v8 = sub_1D8D6550C(v12);
      if (v9)
      {
        sub_1D8CFAD1C(MEMORY[0x73746C757365AA] + 32 * v8, v13);
        sub_1D8D9A308(v12);

        if (swift_dynamicCast())
        {
          return v11;
        }

        return 0;
      }
    }

    goto LABEL_22;
  }

  if (a1 == 1 || a1 == 2)
  {
LABEL_14:
    v7 = 0xD000000000000010;
    goto LABEL_18;
  }

LABEL_25:
  v12[0] = a1;
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t SearchSeeAllSection.nextPage.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTSearchSeeAllSection_nextPage);

  return v1;
}

id SearchSeeAllSection.init(contentType:nextPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___MTSearchSeeAllSection_contentType] = a1;
  v4 = &v3[OBJC_IVAR___MTSearchSeeAllSection_nextPage];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SearchSeeAllSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1D905C2EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D905C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  sub_1D905A5FC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t type metadata accessor for SearchResponse(uint64_t a1)
{
  result = qword_1ECAB9798;
  if (!qword_1ECAB9798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D905C4E8(uint64_t a1)
{
  result = type metadata accessor for MediaRequest.Params(319);
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

void sub_1D905C6D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D9176A5C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_1D905C73C()
{
  result = [objc_allocWithZone(type metadata accessor for SubscriptionController()) init];
  qword_1ECAB97A8 = result;
  return result;
}

id SubscriptionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SubscriptionController.sharedInstance.getter()
{
  if (qword_1ECAB36D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB97A8;

  return v1;
}

uint64_t sub_1D905C8C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a3;
  v59 = a5;
  v55 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v53 = &v42 - v8;
  v10 = type metadata accessor for MediaRequest.Params(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9189080;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v54 = a2;
  v15 = sub_1D9176C2C();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);

  v17 = MEMORY[0x1E69E7CC0];
  v52 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v51 = sub_1D8D94DF8(v17);
  v50 = sub_1D8D951E0(v17);
  v49 = sub_1D8D9503C(v17);
  v48 = sub_1D8D9536C(v17);
  v47 = sub_1D8D9536C(v17);
  v46 = sub_1D8D953C4(v17);
  v44 = sub_1D8D952D8(v17);
  v45 = sub_1D8D95394(v17);
  v42 = sub_1D8D957C4(v17);
  *(v13 + 41) = 263;
  v13[43] = 5;
  v13[152] = 1;
  v13[201] = 1;
  v18 = v11[30];
  v16(&v13[v18], 1, 1, v15);
  v19 = &v13[v11[31]];
  v20 = &v13[v11[33]];
  v21 = v11[35];
  v43 = v11[36];
  v22 = &v13[v21];
  v23 = &v13[v11[37]];
  *v13 = 1;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 10) = 83951876;
  v24 = v51;
  *(v13 + 6) = v52;
  *(v13 + 7) = v24;
  v25 = v49;
  *(v13 + 8) = v50;
  *(v13 + 9) = v17;
  v27 = v47;
  v26 = v48;
  *(v13 + 10) = v25;
  *(v13 + 11) = v26;
  v28 = v46;
  *(v13 + 12) = v27;
  *(v13 + 13) = v28;
  v29 = v44;
  v30 = v45;
  *(v13 + 14) = v17;
  *(v13 + 15) = v29;
  *(v13 + 16) = v17;
  *(v13 + 17) = v17;
  *(v13 + 18) = v14;
  v13[152] = 1;
  *(v13 + 20) = 0;
  v13[168] = 1;
  v31 = v42;
  *(v13 + 22) = v30;
  *(v13 + 23) = v31;
  *(v13 + 24) = 0;
  *(v13 + 100) = 257;
  v13[202] = 0;
  sub_1D8E26828(v53, &v13[v18]);
  *v19 = 0;
  *(v19 + 1) = 0;
  v13[v11[32]] = 0;
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v13[v11[34]] = v17;
  *v22 = 0;
  *(v22 + 1) = 0;
  v13[v43] = 2;
  *v23 = 0;
  *(v23 + 1) = 0;
  v32 = *(v56 + OBJC_IVAR___MTSubscriptionController_requestController);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v36 = v54;
  v35 = v55;
  v34[2] = v33;
  v34[3] = v35;
  v37 = v57;
  v38 = v58;
  v34[4] = v36;
  v34[5] = v37;
  v34[6] = v59;
  v34[7] = v38;
  v39 = v38;

  v40 = v32;

  sub_1D904AD58(v13, v38, sub_1D905E95C, v34);

  sub_1D8D90BEC(v13);
}

void sub_1D905CC8C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(void), uint64_t a10, void *a11)
{
  v97 = a5;
  v95 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v79 - v15;
  v17 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D917744C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v92 = Strong;
  if (qword_1ECAB35C8 != -1)
  {
    swift_once();
  }

  v96 = v16;
  v90 = v17;
  v91 = a9;
  v27 = __swift_project_value_buffer(v20, qword_1ECAB7990);
  swift_beginAccess();
  v28 = *(v21 + 16);
  v86 = v21 + 16;
  v87 = v27;
  v85 = v28;
  v28(v25, v27, v20);

  v29 = v97;
  v30 = v97;
  v31 = sub_1D917741C();
  v32 = v20;
  v33 = sub_1D9178D1C();

  v34 = os_log_type_enabled(v31, v33);
  v93 = a7;
  v94 = a8;
  v88 = v21;
  if (v34)
  {
    v84 = v32;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v99 = v36;
    *v35 = 136315650;
    *(v35 + 4) = sub_1D8CFA924(a7, a8, &v99);
    *(v35 + 12) = 2048;
    if (a1)
    {
      if (a1 >> 62)
      {
        v37 = sub_1D917935C();
      }

      else
      {
        v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v37 = 0;
    }

    *(v35 + 14) = v37;

    *(v35 + 22) = 2080;
    v98 = v97;
    v40 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97C0, qword_1D91AC7F0);
    v41 = sub_1D917826C();
    v43 = sub_1D8CFA924(v41, v42, &v99);

    *(v35 + 24) = v43;
    _os_log_impl(&dword_1D8CEC000, v31, v33, "Siri check before following podcast %s. Found %ld podcasts with error %s.", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v35, -1, -1);

    v38 = *(v88 + 8);
    v39 = v84;
    v38(v25, v84);
    a7 = v93;
    a8 = v94;
  }

  else
  {

    v38 = *(v21 + 8);
    v38(v25, v32);
    v39 = v32;
  }

  if (!v95)
  {
LABEL_24:
    v97 = a11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D9189080;
    *(v57 + 32) = a7;
    *(v57 + 40) = a8;
    v58 = sub_1D9176C2C();
    v59 = *(*(v58 - 8) + 56);
    v59(v96, 1, 1, v58);

    v60 = MEMORY[0x1E69E7CC0];
    v95 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v89 = sub_1D8D94DF8(v60);
    v88 = sub_1D8D951E0(v60);
    v87 = sub_1D8D9503C(v60);
    v86 = sub_1D8D9536C(v60);
    v85 = sub_1D8D9536C(v60);
    v84 = sub_1D8D953C4(v60);
    v82 = sub_1D8D952D8(v60);
    v83 = sub_1D8D95394(v60);
    v80 = sub_1D8D957C4(v60);
    *(v19 + 41) = 263;
    v19[43] = 5;
    v19[152] = 1;
    v19[201] = 1;
    v61 = v90;
    v62 = v90[28];
    v59(&v19[v62], 1, 1, v58);
    v63 = &v19[v61[29]];
    v64 = &v19[v61[31]];
    v65 = v61[33];
    v81 = v61[34];
    v66 = &v19[v65];
    v67 = &v19[v61[35]];
    *v19 = 2;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 10) = 83951876;
    v68 = v88;
    v69 = v89;
    *(v19 + 6) = v95;
    *(v19 + 7) = v69;
    *(v19 + 8) = v68;
    *(v19 + 9) = v60;
    v70 = v86;
    *(v19 + 10) = v87;
    *(v19 + 11) = v70;
    v71 = v84;
    *(v19 + 12) = v85;
    *(v19 + 13) = v71;
    v72 = v82;
    *(v19 + 14) = v60;
    *(v19 + 15) = v72;
    *(v19 + 16) = v60;
    *(v19 + 17) = v60;
    *(v19 + 18) = v57;
    v19[152] = 1;
    *(v19 + 20) = 0;
    v19[168] = 1;
    v73 = v80;
    *(v19 + 22) = v83;
    *(v19 + 23) = v73;
    *(v19 + 24) = 0;
    *(v19 + 100) = 257;
    v19[202] = 0;
    sub_1D8E26828(v96, &v19[v62]);
    *v63 = 0;
    *(v63 + 1) = 0;
    v19[v61[30]] = 0;
    *v64 = 0;
    *(v64 + 1) = 0;
    *&v19[v61[32]] = v60;
    *v66 = 0;
    *(v66 + 1) = 0;
    v19[v81] = 2;
    *v67 = 0;
    *(v67 + 1) = 0;
    v74 = v92;
    v75 = *&v92[OBJC_IVAR___MTSubscriptionController_requestController];
    v76 = swift_allocObject();
    v76[2] = v93;
    v77 = v91;
    v76[3] = v94;
    v76[4] = v77;
    v76[5] = a10;

    v78 = v75;

    sub_1D904AD58(v19, v97, sub_1D905F054, v76);

    sub_1D8D90BEC(v19);
    return;
  }

  v44 = v95;
  if ([v44 statusCode] != 200 || !a1)
  {
    goto LABEL_23;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v97)
  {
    goto LABEL_23;
  }

  v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v46 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v47 = [v45 initWithDomain:v46 code:-1001 userInfo:0];

  v48 = v89;
  v85(v89, v87, v39);

  v49 = sub_1D917741C();
  v50 = sub_1D9178D1C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v97 = v47;
    v52 = a7;
    v53 = v51;
    v54 = swift_slowAlloc();
    v99 = v54;
    *v53 = 136315138;
    v47 = v97;
    *(v53 + 4) = sub_1D8CFA924(v52, a8, &v99);
    _os_log_impl(&dword_1D8CEC000, v49, v50, "User is already following podcast %s.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1DA72CB90](v54, -1, -1);
    MEMORY[0x1DA72CB90](v53, -1, -1);

    v55 = v89;
  }

  else
  {

    v55 = v48;
  }

  v38(v55, v39);
  v56 = v47;
  v91(v47);
}

uint64_t sub_1D905D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v32 = a9;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB35C8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1ECAB7990);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);

  v18 = a5;
  v19 = sub_1D917741C();
  v20 = sub_1D9178D1C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_1D8CFA924(a6, a7, &v34);
    *(v22 + 12) = 2080;
    v33 = a5;
    v24 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97C0, qword_1D91AC7F0);
    v25 = sub_1D917826C();
    v27 = sub_1D8CFA924(v25, v26, &v34);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1D8CEC000, v19, v20, "Complete following podcast %s command with error %s.", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    v28 = v22;
    a8 = v31;
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  return a8(a5);
}

uint64_t sub_1D905D91C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v64 = a4;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
    inited = swift_initStackObject();
    v20 = a1;
    v62 = a1;
    v21 = inited;
    v61 = xmmword_1D9189080;
    *(inited + 16) = xmmword_1D9189080;
    v63 = v4;
    *(inited + 32) = 2;
    v22 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v23 = swift_allocObject();
    *(v23 + 16) = v61;
    *(v23 + 32) = v20;
    *(v23 + 40) = a2;
    *(v21 + 40) = v23;

    v59 = sub_1D8E272A4(v21);
    swift_setDeallocating();
    sub_1D8D08A50(v22, &qword_1ECAB8D18, &qword_1D91A6E18);
    v24 = sub_1D9176C2C();
    *&v61 = a2;
    v25 = v24;
    v26 = *(*(v24 - 8) + 56);
    v60 = a3;
    v58 = v14;
    v26(v14, 1, 1, v24);
    v27 = MEMORY[0x1E69E7CC0];
    v57 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v56 = sub_1D8D94DF8(v27);
    v55 = sub_1D8D951E0(v27);
    v54 = sub_1D8D9503C(v27);
    v53 = sub_1D8D9536C(v27);
    v52 = sub_1D8D9536C(v27);
    v28 = sub_1D8D953C4(v27);
    v29 = sub_1D8D952D8(v27);
    v50 = sub_1D8D957C4(v27);
    *(v17 + 41) = 263;
    v17[43] = 5;
    v17[152] = 1;
    v17[201] = 1;
    v30 = v15[28];
    v26(&v17[v30], 1, 1, v25);
    v31 = &v17[v15[29]];
    v32 = &v17[v15[31]];
    v33 = v15[33];
    v51 = v15[34];
    v34 = &v17[v33];
    v35 = &v17[v15[35]];
    *v17 = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 4) = 0;
    *(v17 + 10) = 83951876;
    v36 = v56;
    *(v17 + 6) = v57;
    *(v17 + 7) = v36;
    *(v17 + 8) = v55;
    *(v17 + 9) = v27;
    v37 = v53;
    *(v17 + 10) = v54;
    *(v17 + 11) = v37;
    *(v17 + 12) = v52;
    *(v17 + 13) = v28;
    *(v17 + 14) = v27;
    *(v17 + 15) = v29;
    *(v17 + 16) = v27;
    *(v17 + 17) = v27;
    *(v17 + 18) = v27;
    v17[152] = 1;
    *(v17 + 20) = 0;
    v17[168] = 1;
    v38 = v58;
    v39 = v50;
    *(v17 + 22) = v59;
    *(v17 + 23) = v39;
    *(v17 + 24) = 0;
    *(v17 + 100) = 257;
    v17[202] = 0;
    sub_1D8E26828(v38, &v17[v30]);
    *v31 = 0;
    *(v31 + 1) = 0;
    v17[v15[30]] = 0;
    *v32 = 0;
    *(v32 + 1) = 0;
    *&v17[v15[32]] = v27;
    *v34 = 0;
    *(v34 + 1) = 0;
    v17[v51] = 2;
    *v35 = 0;
    *(v35 + 1) = 0;
    v40 = *(v63 + OBJC_IVAR___MTSubscriptionController_requestController);
    v41 = swift_allocObject();
    v42 = v64;
    v41[2] = v60;
    v41[3] = v42;
    v41[4] = v62;
    v41[5] = v61;

    v43 = v40;

    sub_1D904AD58(v17, 0, sub_1D905E994, v41);

    return sub_1D8D90BEC(v17);
  }

  else
  {
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v8, qword_1EDCD0770);
    swift_beginAccess();
    (*(v9 + 16))(v11, v45, v8);
    v46 = sub_1D917741C();
    v47 = sub_1D9178D1C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D8CEC000, v46, v47, "feedUrl is empty. Not checking MAPI if it exists in the store.", v48, 2u);
      MEMORY[0x1DA72CB90](v48, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return a3(0);
  }
}