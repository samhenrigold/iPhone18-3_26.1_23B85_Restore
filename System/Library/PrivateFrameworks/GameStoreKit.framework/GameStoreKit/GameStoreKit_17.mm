unint64_t sub_24E7B788C()
{
  result = qword_27F21CF08;
  if (!qword_27F21CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF08);
  }

  return result;
}

unint64_t sub_24E7B78E4()
{
  result = qword_27F21CF10;
  if (!qword_27F21CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF10);
  }

  return result;
}

unint64_t sub_24E7B793C()
{
  result = qword_27F21CF18;
  if (!qword_27F21CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF18);
  }

  return result;
}

uint64_t sub_24E7B7990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449666C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7573655278616DLL && a2 == 0xEA00000000007374 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C616974696E69 && a2 == 0xEB00000000617461)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ChallengeSuggestionsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengeSuggestionsShelfIntent.playerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t ChallengeSuggestionsShelfIntent.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v14 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v6;
  *(inited + 112) = v5;
  *(inited + 144) = 0x4449656C646E7562;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 192) = sub_24E605DB4();
  *(inited + 160) = v14;
  *(inited + 168) = v7;

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24E7B7DB0()
{
  v1 = 0x4449726579616C70;
  if (*v0 != 1)
  {
    v1 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E7B7E08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7B855C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7B7E30(uint64_t a1)
{
  v2 = sub_24E7B834C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7B7E6C(uint64_t a1)
{
  v2 = sub_24E7B834C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeSuggestionsShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF20, &qword_24F958100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B834C();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD08();
  v12 = 2;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengeSuggestionsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF30, &qword_24F958108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B834C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CBC8();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E7B834C()
{
  result = qword_27F21CF28;
  if (!qword_27F21CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF28);
  }

  return result;
}

uint64_t sub_24E7B83A0(uint64_t a1, int a2)
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

uint64_t sub_24E7B83E8(uint64_t result, int a2, int a3)
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

unint64_t sub_24E7B8458()
{
  result = qword_27F21CF38;
  if (!qword_27F21CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF38);
  }

  return result;
}

unint64_t sub_24E7B84B0()
{
  result = qword_27F21CF40;
  if (!qword_27F21CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF40);
  }

  return result;
}

unint64_t sub_24E7B8508()
{
  result = qword_27F21CF48;
  if (!qword_27F21CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF48);
  }

  return result;
}

uint64_t sub_24E7B855C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E7B8684(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E7B8754(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7B8824(uint64_t a1)
{
  type metadata accessor for LocalPlayerProvider(319);
  if (v1 <= 0x3F)
  {
    sub_24E7C048C(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E7C043C(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E7B8928()
{
  result = qword_27F21CF68;
  if (!qword_27F21CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF68);
  }

  return result;
}

void sub_24E7B897C(char *a1@<X8>)
{
  v3 = type metadata accessor for PlayerAvatar(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v1 + 40);
  if (*(v10 + 16))
  {
    v11 = (v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v12 = v11[1];
    v18 = *v11;
    v13 = type metadata accessor for PlayerAvatar.Overlay(0);
    v14 = *(*(v13 - 8) + 56);
    v14(v9, 1, 1, v13);
    sub_24E7BF99C(v11, v6, type metadata accessor for PlayerAvatar);
    sub_24E60169C(&v6[*(v3 + 24)], &v19, qword_27F24EC90, &unk_24F93C1D0);

    sub_24E7BF8C4(v6, type metadata accessor for PlayerAvatar);
    v22[0] = v19;
    v22[1] = v20;
    v23 = v21;
    v15 = *(v3 + 20);
    v14(&a1[v15], 1, 1, v13);
    v16 = &a1[*(v3 + 24)];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 4) = 0;
    sub_24E61DA68(&v19, v16, qword_27F21B590, &unk_24F93BE30);
    *a1 = v18;
    *(a1 + 1) = v12;
    sub_24E61DA68(v9, &a1[v15], &qword_27F22DF80, &unk_24F942E50);
    sub_24E61DA68(v22, v16, qword_27F21B590, &unk_24F93BE30);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E7B8C00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for PlayerAvatar(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  if (*(v2 + 88))
  {
    v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E010, &unk_24F93B380);
    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;
    v26 = v17 + v16;
    swift_getKeyPath();
    *&v27[0] = a1;
    sub_24E7BB874(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v18 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar;
    swift_beginAccess();
    sub_24E7BF99C(a1 + v18, v11, type metadata accessor for PlayerAvatar);
    v19 = *(v2 + 40);
    if (*(v19 + 16))
    {
      sub_24E60169C(v19 + v16 + *(v7 + 20), v6, &qword_27F22DF80, &unk_24F942E50);
    }

    else
    {
      v20 = type metadata accessor for PlayerAvatar.Overlay(0);
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    sub_24E7C09CC(v11, v15, type metadata accessor for PlayerAvatar);
    sub_24E61DA68(v6, &v15[*(v7 + 20)], &qword_27F22DF80, &unk_24F942E50);
    if (*(v19 + 16))
    {
      v21 = v19 + v16;
      v22 = v25;
      sub_24E7BF99C(v21, v25, type metadata accessor for PlayerAvatar);
      sub_24E60169C(v22 + *(v7 + 24), v27, qword_27F24EC90, &unk_24F93C1D0);
      sub_24E7BF8C4(v22, type metadata accessor for PlayerAvatar);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
    }

    v23 = v26;
    sub_24E7BF99C(v15, v26, type metadata accessor for PlayerAvatar);
    sub_24E61DA68(v27, v23 + *(v7 + 24), qword_27F21B590, &unk_24F93BE30);
    sub_24E7BF8C4(v15, type metadata accessor for PlayerAvatar);
  }

  else
  {
    v17 = *(v2 + 40);
  }

  return v17;
}

void sub_24E7B8FEC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PlayerAvatar(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  if (*(v2 + 88))
  {
    swift_getKeyPath();
    *&v19[0] = a1;
    sub_24E7BB874(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v16 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar;
    swift_beginAccess();
    sub_24E7BF99C(a1 + v16, v15, type metadata accessor for PlayerAvatar);
    v17 = type metadata accessor for PlayerAvatar.Overlay(0);
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    sub_24E61DA68(v8, &v15[*(v9 + 20)], &qword_27F22DF80, &unk_24F942E50);
    v18 = *(v3 + 40);
    if (*(v18 + 16))
    {
      sub_24E7BF99C(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v12, type metadata accessor for PlayerAvatar);
      sub_24E60169C(&v12[*(v9 + 24)], v19, qword_27F24EC90, &unk_24F93C1D0);
      sub_24E7BF8C4(v12, type metadata accessor for PlayerAvatar);
    }

    else
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
    }

    sub_24E7BF99C(v15, a2, type metadata accessor for PlayerAvatar);
    sub_24E61DA68(v19, &a2[*(v9 + 24)], qword_27F21B590, &unk_24F93BE30);
    sub_24E7BF8C4(v15, type metadata accessor for PlayerAvatar);
  }

  else
  {

    sub_24E7B897C(a2);
  }
}

unint64_t sub_24E7B9344(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6575676573;
    if (a1 != 10)
    {
      v6 = 0x4D747865746E6F63;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000017;
    v8 = 0x7463416B63697571;
    if (a1 != 7)
    {
      v8 = 0x75676553656D616ELL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x48746361746E6F63;
    v3 = 0xD000000000000016;
    if (a1 == 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x73726174617661;
    if (a1 != 1)
    {
      v4 = 0x73656D616ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24E7B94D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v35);
  v36 = v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D180, &qword_24F958AE0);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v10 = type metadata accessor for ProfileHero(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 6) = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  *(v13 + 7) = 0u;
  *(v13 + 16) = 0;
  v44 = v13 + 96;
  sub_24E61DA68(&v46, (v13 + 96), qword_27F21B590, &unk_24F93BE30);
  *(v13 + 9) = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  *(v13 + 10) = 0u;
  *(v13 + 22) = 0;
  v45 = v13 + 144;
  sub_24E61DA68(&v46, (v13 + 144), qword_27F21B590, &unk_24F93BE30);
  v14 = v11[15];
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v43 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v11[16]];
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v46, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v11[17];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E7C1444();
  v39 = v9;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v23 = v44;

    sub_24E601704(v23, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v45, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v13[v43], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v42], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v33 = v15;
    v40 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v49 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v47;
    *v13 = v46;
    *(v13 + 1) = v24;
    *(v13 + 4) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    v49 = 1;
    sub_24E6DCCC8();
    sub_24F92CC68();
    *(v13 + 5) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v49 = 2;
    sub_24E7C1498();
    v32 = 0;
    sub_24F92CC68();
    v25 = v44;
    *(v13 + 6) = v46;
    v49 = 3;
    sub_24F92CC68();
    *(v13 + 7) = v46;
    LOBYTE(v46) = 4;
    *(v13 + 8) = sub_24F92CBC8();
    *(v13 + 9) = v26;
    v31[3] = v26;
    LOBYTE(v46) = 5;
    *(v13 + 10) = sub_24F92CBC8();
    *(v13 + 11) = v27;
    v32 = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v49 = 6;
    v29 = sub_24E61D970();
    sub_24F92CC68();
    v31[1] = v29;
    v31[2] = v28;
    sub_24E61DA68(&v46, v25, qword_27F24EC90, &unk_24F93C1D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D190, &qword_24F958AE8);
    v49 = 7;
    sub_24E7C1514();
    sub_24F92CC68();
    *(v13 + 17) = v46;
    v49 = 8;
    sub_24F92CC68();
    sub_24E61DA68(&v46, v45, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v46) = 9;
    sub_24E7BB874(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v40, &v13[v43], &qword_27F213E68, &unk_24F93BC80);
    v49 = 10;
    sub_24F92CC68();
    sub_24E61DA68(&v46, v17, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v46) = 11;
    sub_24E65CAA0();
    sub_24F92CC68();
    (*(v37 + 8))(v39, v38);
    sub_24E61DA68(v36, &v13[v42], &qword_27F215440, &unk_24F942BD0);
    sub_24E7BF99C(v13, v34, type metadata accessor for ProfileHero);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24E7BF8C4(v13, type metadata accessor for ProfileHero);
  }
}

uint64_t sub_24E7B9F60@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ProfileHeroComponent(0);
  sub_24E60169C(v1 + *(v10 + 20), v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24E7BA170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7C0AA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7BA198(uint64_t a1)
{
  v2 = sub_24E7C1444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7BA1D4(uint64_t a1)
{
  v2 = sub_24E7C1444();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E7BA210@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 56), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E7BA26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 60), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24E7BA3F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v58 = a3;
  v56 = type metadata accessor for HorizontalLayout(0);
  MEMORY[0x28223BE20](v56);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF88, &qword_24F958510);
  v47 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v46 = &v43 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF90, &qword_24F958518);
  MEMORY[0x28223BE20](v53);
  v55 = &v43 - v6;
  v7 = sub_24F925508();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF98, &qword_24F958520);
  MEMORY[0x28223BE20](v52);
  v11 = &v43 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA0, &qword_24F958528);
  v48 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = &v43 - v12;
  v14 = sub_24F924848();
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F923E98();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E7B9F60(v20);
  v21 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    v22 = a1 + *(type metadata accessor for ProfileHeroComponent(0) + 24);
    v23 = *v22;
    if (v22[8] == 1)
    {
      if (*v22 > 3u)
      {
LABEL_4:
        v24 = v45;
        sub_24E7BF99C(v49, v45, type metadata accessor for ProfileHero);
        v25 = *a1;
        v26 = v56;
        *(v24 + *(v56 + 20)) = v25;
        v27 = v24 + *(v26 + 24);
        v59 = 0;
        v60 = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8, &qword_24F958530);
        sub_24F926F28();
        v28 = v62;
        v29 = v63;
        *v27 = v61;
        *(v27 + 8) = v28;
        *(v27 + 16) = v29;
        sub_24F9254F8();
        v30 = sub_24E7BB874(&qword_27F21CFB0, type metadata accessor for HorizontalLayout, &unk_24F958798);
        v31 = v46;
        sub_24F926678();
        (*(v50 + 8))(v9, v51);
        sub_24E7BF8C4(v24, type metadata accessor for HorizontalLayout);
        v32 = v47;
        v33 = v57;
        (*(v47 + 16))(v55, v31, v57);
        swift_storeEnumTagMultiPayload();
        v34 = sub_24E602068(&qword_27F21CFB8, &qword_27F21CF98, &qword_24F958520, MEMORY[0x277CE1198]);
        v61 = v52;
        v62 = v34;
        swift_getOpaqueTypeConformance2();
        v61 = v26;
        v62 = v30;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
        return (*(v32 + 8))(v31, v33);
      }
    }

    else
    {

      sub_24F92BDC8();
      v36 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v23, 0);
      (*(v44 + 8))(v16, v14);
      if (v61 > 3u)
      {
        goto LABEL_4;
      }
    }
  }

  *v11 = sub_24F924C88();
  *(v11 + 1) = 0x4018000000000000;
  v11[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFC0, &qword_24F958538);
  sub_24E7BAC3C(v49, a1, &v11[*(v37 + 44)]);
  sub_24F9254F8();
  v38 = sub_24E602068(&qword_27F21CFB8, &qword_27F21CF98, &qword_24F958520, MEMORY[0x277CE1198]);
  v39 = v52;
  sub_24F926678();
  (*(v50 + 8))(v9, v51);
  sub_24E601704(v11, &qword_27F21CF98, &qword_24F958520);
  v40 = v48;
  v41 = v54;
  (*(v48 + 16))(v55, v13, v54);
  swift_storeEnumTagMultiPayload();
  v61 = v39;
  v62 = v38;
  swift_getOpaqueTypeConformance2();
  v42 = sub_24E7BB874(&qword_27F21CFB0, type metadata accessor for HorizontalLayout, &unk_24F958798);
  v61 = v56;
  v62 = v42;
  swift_getOpaqueTypeConformance2();
  sub_24F924E28();
  return (*(v40 + 8))(v13, v41);
}

uint64_t sub_24E7BAC3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_24F924848();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProfileHeroAvatarsView(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFC8, &qword_24F958540);
  MEMORY[0x28223BE20](v17 - 8);
  v49 = &v44 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFD0, &qword_24F958548);
  MEMORY[0x28223BE20](v48);
  v52 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v50 = &v44 - v21;
  MEMORY[0x28223BE20](v22);
  v51 = &v44 - v23;
  v24 = *a2;
  v47 = sub_24E7B8C00(*a2);
  v53 = a1;
  sub_24E7B8FEC(v24, v13);
  sub_24E7B9F60(v10);
  LOBYTE(a1) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v8 + 8))(v10, v7);
  if (a1)
  {
    v25 = 0;
    v26 = v53;
    v27 = v49;
  }

  else
  {
    v28 = a2 + *(type metadata accessor for ProfileHeroComponent(0) + 24);
    v29 = *v28;
    if (v28[8] == 1)
    {
      v30 = *v28;
    }

    else
    {

      sub_24F92BDC8();
      v31 = sub_24F9257A8();
      sub_24F921FD8();

      v32 = v44;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v29, 0);
      (*(v45 + 8))(v32, v46);
      v30 = LOBYTE(v56[0]);
    }

    v26 = v53;
    v27 = v49;
    v25 = v30 > 3;
  }

  *v16 = v47;
  sub_24E7C09CC(v13, v16 + *(v14 + 20), type metadata accessor for PlayerAvatar);
  *(v16 + *(v14 + 24)) = v25;
  if (qword_27F2116B0 != -1)
  {
    swift_once();
  }

  v56[0] = qword_27F39EE28;
  v56[1] = unk_27F39EE30;
  sub_24E7BB874(&qword_27F21CFD8, type metadata accessor for ProfileHeroAvatarsView, &unk_24F958748);
  sub_24E600AEC();
  sub_24F926538();
  sub_24E7BF8C4(v16, type metadata accessor for ProfileHeroAvatarsView);
  sub_24E7B8C00(v24);

  sub_24F927618();
  sub_24F9242E8();
  v33 = v50;
  sub_24E6009C8(v27, v50, &qword_27F21CFC8, &qword_24F958540);
  v34 = (v33 + *(v48 + 36));
  v35 = v62;
  v34[4] = v61;
  v34[5] = v35;
  v34[6] = v63;
  v36 = v58;
  *v34 = v57;
  v34[1] = v36;
  v37 = v60;
  v34[2] = v59;
  v34[3] = v37;
  v38 = v51;
  sub_24E6009C8(v33, v51, &qword_27F21CFD0, &qword_24F958548);
  v39 = sub_24F924C88();
  sub_24E7BB324(v26, v39, v56);
  v40 = v52;
  sub_24E60169C(v38, v52, &qword_27F21CFD0, &qword_24F958548);
  sub_24E7BF924(v56, v55);
  v41 = v54;
  sub_24E60169C(v40, v54, &qword_27F21CFD0, &qword_24F958548);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFE0, &unk_24F958550);
  sub_24E7BF924(v55, v41 + *(v42 + 48));
  sub_24E7BF95C(v56);
  sub_24E601704(v38, &qword_27F21CFD0, &qword_24F958548);
  sub_24E7BF95C(v55);
  return sub_24E601704(v40, &qword_27F21CFD0, &qword_24F958548);
}

uint64_t sub_24E7BB324@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v39 = sub_24F924848();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24F923E98();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[10];
  v11 = a1[11];
  v44 = v3;
  v45 = v10;
  if (v11)
  {
    v12 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93DE60;
    swift_getKeyPath();
    *&v50[0] = v12;
    sub_24E7BB874(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v14 = (v12 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
    swift_beginAccess();
    v15 = v14[1];
    *(v13 + 32) = *v14;
    *(v13 + 40) = v15;
  }

  else
  {
    v13 = a1[6];
  }

  v16 = a1[9];
  v42 = a1[8];
  v17 = a1[7];
  v18 = v11;
  if (v17[2])
  {
    v19 = v17[4];
    v40 = v17[5];
    v41 = v19;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  sub_24E60169C((a1 + 12), v50, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E60169C((a1 + 18), v48, qword_27F24EC90, &unk_24F93C1D0);
  v20 = a1[17];

  v21 = v16;

  v22 = v44;
  sub_24E7B9F60(v9);
  v23 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v7 + 8))(v9, v43);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v25 = v22 + *(type metadata accessor for ProfileHeroComponent(0) + 24);
    v26 = *v25;
    if (*(v25 + 8) == 1)
    {
      v27 = *v25;
    }

    else
    {

      sub_24F92BDC8();
      v28 = sub_24F9257A8();
      sub_24F921FD8();

      v11 = v18;
      v29 = v37;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v26, 0);
      (*(v38 + 8))(v29, v39);
      v27 = v47;
    }

    v24 = v27 > 3;
  }

  v30 = v50[1];
  *(a3 + 64) = v50[0];
  *(a3 + 80) = v30;
  v31 = v48[0];
  *(a3 + 120) = v48[1];
  *a3 = v46;
  *(a3 + 8) = v13;
  v32 = v41;
  *(a3 + 16) = v42;
  *(a3 + 24) = v21;
  v33 = v40;
  *(a3 + 32) = v32;
  *(a3 + 40) = v33;
  *(a3 + 48) = v45;
  *(a3 + 56) = v11;
  *(a3 + 96) = v51;
  v34 = v49;
  *(a3 + 104) = v31;
  *(a3 + 136) = v34;
  *(a3 + 144) = v20;
  *(a3 + 152) = v24;
  result = sub_24F9258F8();
  *(a3 + 160) = result;
  *(a3 + 168) = 0x4028000000000000;
  return result;
}

uint64_t sub_24E7BB754(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24E7BF99C(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileHeroComponent);
  sub_24E7BB874(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent, &unk_24F958438);
  return sub_24F9218E8();
}

uint64_t sub_24E7BB874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7BBA10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for HorizontalLayout(0);
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = v4;
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProfileHeroAvatarsView(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFC8, &qword_24F958540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFD0, &qword_24F958548);
  MEMORY[0x28223BE20](v38);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v39 = &v38 - v16;
  v17 = *(a1 + *(v3 + 20));
  v18 = sub_24E7B8C00(v17);
  sub_24E7B8FEC(v17, v7 + *(v5 + 20));
  *v7 = v18;
  *(v7 + *(v5 + 24)) = 1;
  if (qword_27F2116B0 != -1)
  {
    swift_once();
  }

  v46 = qword_27F39EE28;
  v47 = unk_27F39EE30;
  sub_24E7BB874(&qword_27F21CFD8, type metadata accessor for ProfileHeroAvatarsView, &unk_24F958748);
  sub_24E600AEC();
  sub_24F926538();
  sub_24E7BF8C4(v7, type metadata accessor for ProfileHeroAvatarsView);
  v19 = a1 + *(v3 + 24);
  v20 = *v19;
  v21 = v19[8];
  v22 = *(v19 + 2);
  v46 = v20;
  LOBYTE(v47) = v21;
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050, &qword_24F9587F0);
  sub_24F926F38();
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v10, v14, &qword_27F21CFC8, &qword_24F958540);
  v23 = &v14[*(v38 + 36)];
  v24 = v62;
  *(v23 + 4) = v61;
  *(v23 + 5) = v24;
  *(v23 + 6) = v63;
  v25 = v58;
  *v23 = v57;
  *(v23 + 1) = v25;
  v26 = v60;
  *(v23 + 2) = v59;
  *(v23 + 3) = v26;
  v27 = v39;
  sub_24E6009C8(v14, v39, &qword_27F21CFD0, &qword_24F958548);
  v28 = sub_24F924C98();
  sub_24E7BC028(a1, v28, &v46);
  v49 = sub_24F925868();
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  v29 = a1;
  v30 = v42;
  sub_24E7BF99C(v29, v42, type metadata accessor for HorizontalLayout);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  sub_24E7C09CC(v30, v32 + v31, type metadata accessor for HorizontalLayout);
  v53 = sub_24E7BC238;
  v54 = 0;
  v55 = sub_24E7C0A34;
  v56 = v32;
  v33 = v43;
  sub_24E60169C(v27, v43, &qword_27F21CFD0, &qword_24F958548);
  sub_24E60169C(&v46, &v45, &qword_27F21D058, &qword_24F9587F8);
  v34 = v44;
  *v44 = 0;
  *(v34 + 8) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D060, &qword_24F958800);
  sub_24E60169C(v33, v34 + v35[12], &qword_27F21CFD0, &qword_24F958548);
  sub_24E60169C(&v45, v34 + v35[16], &qword_27F21D058, &qword_24F9587F8);
  v36 = v34 + v35[20];
  *v36 = 0;
  v36[8] = 1;
  sub_24E601704(&v46, &qword_27F21D058, &qword_24F9587F8);
  sub_24E601704(v27, &qword_27F21CFD0, &qword_24F958548);
  sub_24E601704(&v45, &qword_27F21D058, &qword_24F9587F8);
  return sub_24E601704(v33, &qword_27F21CFD0, &qword_24F958548);
}

uint64_t sub_24E7BC028@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for HorizontalLayout(0);
  v7 = a1[11];
  v22 = a1[10];
  if (v7)
  {
    v8 = *(v3 + *(v6 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    swift_getKeyPath();
    *&v24 = v8;
    sub_24E7BB874(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v10 = (v8 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
    swift_beginAccess();
    v11 = v10[1];
    *(v9 + 32) = *v10;
    *(v9 + 40) = v11;
  }

  else
  {
    v9 = a1[6];
  }

  v13 = a1[8];
  v12 = a1[9];
  v14 = a1[7];
  if (v14[2])
  {
    v16 = v14[4];
    v15 = v14[5];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  sub_24E60169C((a1 + 12), &v24, qword_27F24EC90, &unk_24F93C1D0);
  v17 = v25;
  *(a3 + 64) = v24;
  *(a3 + 80) = v17;
  *(a3 + 96) = v26;
  sub_24E60169C((a1 + 18), &v24, qword_27F24EC90, &unk_24F93C1D0);
  v18 = v25;
  *(a3 + 104) = v24;
  *(a3 + 120) = v18;
  v19 = v26;
  v20 = a1[17];
  *a3 = a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v13;
  *(a3 + 24) = v12;
  *(a3 + 32) = v16;
  *(a3 + 40) = v15;
  *(a3 + 48) = v22;
  *(a3 + 56) = v7;
  *(a3 + 136) = v19;
  *(a3 + 144) = v20;
  *(a3 + 152) = 1;

  result = sub_24F9258F8();
  *(a3 + 160) = result;
  *(a3 + 168) = 0x4028000000000000;
  return result;
}

uint64_t sub_24E7BC264(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for HorizontalLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050, &qword_24F9587F0);
  return sub_24F926F48();
}

uint64_t sub_24E7BC2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_24E7B8C00(*(v2 + *(a1 + 20))) + 16);

  if (v4 <= 1)
  {
    v5 = 0x4040000000000000;
  }

  else
  {
    v5 = 0x4044000000000000;
  }

  *a2 = sub_24F9249A8();
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D048, &qword_24F9587E8);
  return sub_24E7BBA10(v2, (a2 + *(v6 + 44)));
}

uint64_t sub_24E7BC360@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D068, &qword_24F958808);
  MEMORY[0x28223BE20](v42);
  v3 = (&v36 - v2);
  v4 = sub_24F929888();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlayerAvatar(0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D070, &qword_24F958818);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D078, &unk_24F958820);
  MEMORY[0x28223BE20](v41);
  v20 = &v36 - v19;
  v21 = *v1;
  if (*(*v1 + 16) == 1)
  {
    v22 = v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v23 = v18;
    sub_24E7BF99C(v22, v8, type metadata accessor for PlayerAvatar);
    LOBYTE(v46[0]) = 7;
    sub_24F8319B8(v8, v46, v11);
    type metadata accessor for ProfileHeroAvatarsView(0);
    sub_24F927618();
    sub_24F9238C8();
    sub_24E7C09CC(v11, v14, type metadata accessor for PlayerAvatarView);
    v24 = &v14[*(v12 + 36)];
    v25 = v46[1];
    *v24 = v46[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = v46[2];
    sub_24F926C88();
    v26 = sub_24F926D08();

    sub_24E6009C8(v14, v17, &qword_27F2233D0, &qword_24F958810);
    v27 = &v17[*(v15 + 36)];
    *v27 = v26;
    *(v27 + 8) = xmmword_24F958350;
    *(v27 + 3) = 0x4010000000000000;
    memset(v45, 0, sizeof(v45));
    memset(v44, 0, sizeof(v44));
    v28 = v38;
    sub_24F929828();
    sub_24E601704(v44, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v45, &qword_27F2129B0, &unk_24F945320);
    v29 = sub_24E7C0F00();
    sub_24F925EE8();
    (*(v39 + 8))(v28, v40);
    sub_24E601704(v17, &qword_27F21D070, &qword_24F958818);
    v30 = v41;
    (*(v23 + 16))(v3, v20, v41);
    swift_storeEnumTagMultiPayload();
    *&v45[0] = v15;
    *(&v45[0] + 1) = v29;
    swift_getOpaqueTypeConformance2();
    sub_24E7C0F8C();
    sub_24F924E28();
    return (*(v23 + 8))(v20, v30);
  }

  else
  {
    type metadata accessor for ProfileHeroAvatarsView(0);
    v32 = sub_24E7C0E74(v21);
    *v3 = v33;
    *(v3 + 8) = v34 & 1;
    v3[2] = v32;
    swift_storeEnumTagMultiPayload();
    v35 = sub_24E7C0F00();
    *&v46[0] = v15;
    *(&v46[0] + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_24E7C0F8C();
    return sub_24F924E28();
  }
}

uint64_t sub_24E7BC970(uint64_t a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378, &qword_24F94DDA0);
  MEMORY[0x28223BE20](v26);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D248, &unk_24F9FAD70);
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = (&v22 - v8);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v24 = 4 - v10;
  v27 = MEMORY[0x277D84F90];
  sub_24F457EF8(0, v10, 0);
  v11 = v27;
  v12 = 0;
  v13 = *(type metadata accessor for PlayerAvatar(0) - 8);
  v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v23 = *(v13 + 72);
  while (1)
  {
    v15 = v26;
    v16 = *(v26 + 48);
    sub_24E7BF99C(v14, &v6[v16], type metadata accessor for PlayerAvatar);
    *v3 = v12;
    v17 = *(v15 + 48);
    result = sub_24E7C09CC(&v6[v16], v3 + v17, type metadata accessor for PlayerAvatar);
    v19 = v24 + v12;
    if (__OFADD__(v24, v12))
    {
      break;
    }

    sub_24E7BF99C(v3 + v17, v9 + *(v25 + 48), type metadata accessor for PlayerAvatar);
    *v9 = v19;
    sub_24E601704(v3, &qword_27F21A378, &qword_24F94DDA0);
    v27 = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_24F457EF8((v20 > 1), v21 + 1, 1);
      v11 = v27;
    }

    ++v12;
    *(v11 + 16) = v21 + 1;
    sub_24E6009C8(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, &qword_27F21D248, &unk_24F9FAD70);
    v14 += v23;
    if (v10 == v12)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E7BCC70@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D248, &unk_24F9FAD70);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D070, &qword_24F958818);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D240, &qword_24F958D40);
  MEMORY[0x28223BE20](v34);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D230, &qword_24F958D38);
  MEMORY[0x28223BE20](v35);
  v13 = &v32 - v12;
  v14 = *a1;
  if (*a1)
  {
    sub_24F9275F8();
  }

  else
  {
    sub_24F927608();
  }

  sub_24F9275F8();
  sub_24F9275E8();
  v15 = v36;
  sub_24E60169C(a1, v6, &qword_27F21D248, &unk_24F9FAD70);
  v16 = *(v4 + 48);
  LOBYTE(v40[0]) = 7;
  sub_24F8319B8(&v6[v16], v40, v9);
  sub_24F927618();
  sub_24F9238C8();
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810) + 36)];
  v18 = v38;
  *v17 = v37;
  *(v17 + 1) = v18;
  *(v17 + 2) = v39;
  sub_24F926C88();
  v19 = sub_24F926D08();

  v20 = &v9[*(v7 + 36)];
  *v20 = v19;
  *(v20 + 8) = xmmword_24F958350;
  *(v20 + 3) = 0x4010000000000000;
  if (v14)
  {
    sub_24F9275F8();
  }

  else
  {
    sub_24F927608();
  }

  sub_24F9242E8();
  sub_24E6009C8(v9, v11, &qword_27F21D070, &qword_24F958818);
  v21 = &v11[*(v34 + 36)];
  v22 = v40[5];
  *(v21 + 4) = v40[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v40[6];
  v23 = v40[1];
  *v21 = v40[0];
  *(v21 + 1) = v23;
  v24 = v40[3];
  *(v21 + 2) = v40[2];
  *(v21 + 3) = v24;
  result = sub_24E6009C8(v11, v13, &qword_27F21D240, &qword_24F958D40);
  v26 = &v13[*(v35 + 36)];
  *v26 = 0x3FE3333333333333;
  *(v26 + 4) = 0;
  if (v14 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v15)
  {
    v27 = &unk_2861BF6A0;
  }

  else
  {
    v27 = &unk_2861BF6E0;
  }

  if (v14 >= v27[2])
  {
    goto LABEL_16;
  }

  v28 = &unk_2861BF6C0;
  if ((v15 & 1) == 0)
  {
    v28 = &unk_2861BF700;
  }

  v29 = v28[v14];

  v30 = v33;
  sub_24E6009C8(v13, v33, &qword_27F21D230, &qword_24F958D38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D210, &qword_24F958D30);
  v31 = (v30 + *(result + 36));
  *v31 = 0;
  v31[1] = v29;
  return result;
}

uint64_t sub_24E7BD0F4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_24F9249A8();
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D200, &qword_24F958D00);
  sub_24E7BC970(v4);
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D208, &qword_24F958D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D210, &qword_24F958D30);
  sub_24E602068(&qword_27F21D218, &qword_27F21D208, &qword_24F958D28, MEMORY[0x277D83980]);
  sub_24E7C1B10();
  return sub_24F927228();
}

uint64_t sub_24E7BD268@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v152 = type metadata accessor for ProfileHeroQuickActionsView(0);
  MEMORY[0x28223BE20](v152);
  v155 = (&v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D098, &qword_24F958838);
  v165 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v154 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v153 = &v142 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0A0, &qword_24F958840);
  MEMORY[0x28223BE20](v7 - 8);
  v167 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v142 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0A8, &qword_24F958848);
  MEMORY[0x28223BE20](v149);
  v150 = (&v142 - v12);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0B0, &qword_24F958850);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v151 = &v142 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0B8, &qword_24F958858);
  MEMORY[0x28223BE20](v14 - 8);
  v166 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v174 = &v142 - v17;
  v18 = sub_24F929888();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0C0, &qword_24F958860);
  MEMORY[0x28223BE20](v158);
  v156 = &v142 - v22;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0C8, &qword_24F958868);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = &v142 - v23;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0D0, &qword_24F958870);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v171 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v173 = &v142 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0D8, &qword_24F958878);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v142 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0E0, &qword_24F958880);
  MEMORY[0x28223BE20](v31 - 8);
  v170 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = *(a1 + 24);
  v172 = &v142 - v36;
  if (v35)
  {
    *&v178 = *(a1 + 16);
    *(&v178 + 1) = v35;
    sub_24E600AEC();
    v145 = v19;

    v37 = sub_24F925E18();
    v39 = v38;
    v148 = v11;
    v41 = v40;
    sub_24F925898();
    v144 = v28;
    v42 = sub_24F925C98();
    v147 = a1;
    v43 = v42;
    v142 = v30;
    v45 = v44;
    v143 = v27;
    v46 = v21;
    v48 = v47;
    v146 = v18;
    v50 = v49;

    v51 = v41 & 1;
    v11 = v148;
    v52 = v39;
    v19 = v145;
    sub_24E600B40(v37, v52, v51);

    *&v178 = v43;
    *(&v178 + 1) = v45;
    v53 = v48 & 1;
    v21 = v46;
    LOBYTE(v179) = v53;
    *(&v179 + 1) = v50;
    v54 = v142;
    sub_24F9268B8();
    v55 = v43;
    a1 = v147;
    sub_24E600B40(v55, v45, v53);

    LODWORD(v37) = sub_24F9251C8();
    v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0, &qword_24F93D590) + 36));
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v58 = *MEMORY[0x277CE13B8];
    v59 = sub_24F927748();
    (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
    *v56 = v37;
    v18 = v146;
    v60 = v54;
    v61 = v172;
    sub_24E6009C8(v60, v172, &qword_27F21D0D8, &qword_24F958878);
    (*(v144 + 56))(v61, 0, 1, v143);
  }

  else
  {
    (*(v28 + 56))(v34);
  }

  v62 = v156;
  sub_24E7BE3AC(a1, v156);
  v63 = *(a1 + 160);
  KeyPath = swift_getKeyPath();
  v65 = v158;
  v66 = (v62 + *(v158 + 36));
  *v66 = KeyPath;
  v66[1] = v63;
  v67 = sub_24E7C0FE8();

  v68 = v157;
  sub_24F9268B8();
  sub_24E601704(v62, &qword_27F21D0C0, &qword_24F958860);
  v178 = 0u;
  v179 = 0u;
  v175 = 0u;
  v176 = 0u;
  sub_24F929828();
  sub_24E601704(&v175, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v178, &qword_27F2129B0, &unk_24F945320);
  *&v178 = v65;
  *(&v178 + 1) = v67;
  swift_getOpaqueTypeConformance2();
  v69 = v160;
  sub_24F925EE8();
  (*(v19 + 8))(v21, v18);
  (*(v159 + 8))(v68, v69);
  v70 = *(a1 + 56);
  if (!v70)
  {
    goto LABEL_10;
  }

  v71 = *(a1 + 48);
  sub_24E60169C(a1 + 64, &v175, qword_27F21B590, &unk_24F93BE30);
  if (!*(&v176 + 1))
  {
    sub_24E601704(&v175, qword_27F21B590, &unk_24F93BE30);
LABEL_10:
    (*(v161 + 56))(v174, 1, 1, v162);
    goto LABEL_11;
  }

  sub_24E612C80(&v175, &v178);
  v72 = v150;
  sub_24E615E00(&v178, v150);
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  *(v73 + 24) = v70;
  v74 = *(v149 + 44);
  *(v72 + v74) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v72[5] = sub_24E7C137C;
  v72[6] = v73;
  v72[7] = sub_24E678F24;
  v72[8] = 0;
  *(&v176 + 1) = sub_24F9271D8();
  v177 = sub_24E7BB874(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
  v76 = *MEMORY[0x277CE0118];
  v77 = sub_24F924B38();
  (*(*(v77 - 8) + 104))(boxed_opaque_existential_1, v76, v77);
  v78 = v151;
  sub_24E60169C(&v175, v151, &qword_27F21D140, &unk_24F958980);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D148, &unk_24F9A6F30);
  sub_24E60169C(v72, v78 + v79[9], &qword_27F21D0A8, &qword_24F958848);
  v80 = v78 + v79[10];

  *v80 = sub_24F923398() & 1;
  *(v80 + 8) = v81;
  *(v80 + 16) = v82 & 1;
  v83 = v78 + v79[11];
  *v83 = swift_getKeyPath();
  *(v83 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v84 = qword_27F24E488;
  v85 = sub_24F923398();
  v87 = v86;
  v89 = v88;
  v90 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D150, &qword_24F9589B8) + 36);
  *v90 = v84;
  *(v90 + 8) = v85 & 1;
  *(v90 + 16) = v87;
  *(v90 + 24) = v89 & 1;
  LOBYTE(v84) = sub_24F923398();
  v92 = v91;
  LOBYTE(v87) = v93;
  sub_24E601704(&v175, &qword_27F21D140, &unk_24F958980);
  sub_24E601704(v72, &qword_27F21D0A8, &qword_24F958848);
  v94 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D158, &qword_24F9589C0) + 36);
  *v94 = v84 & 1;
  *(v94 + 8) = v92;
  *(v94 + 16) = v87 & 1;
  LOBYTE(v84) = sub_24F925818();
  sub_24F923318();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  __swift_destroy_boxed_opaque_existential_1(&v178);
  v103 = v162;
  v104 = v78 + *(v162 + 36);
  *v104 = v84;
  *(v104 + 8) = v96;
  *(v104 + 16) = v98;
  *(v104 + 24) = v100;
  *(v104 + 32) = v102;
  *(v104 + 40) = 0;
  v105 = v174;
  sub_24E6009C8(v78, v174, &qword_27F21D0B0, &qword_24F958850);
  (*(v161 + 56))(v105, 0, 1, v103);
LABEL_11:
  v106 = *(a1 + 144);
  if (*(v106 + 16))
  {
    if (*(a1 + 40))
    {
      v107 = *(a1 + 32);
      v108 = *(a1 + 40);
    }

    else
    {
      v107 = 0;
      v108 = 0xE000000000000000;
    }

    v110 = *(a1 + 152);
    v111 = swift_getKeyPath();
    v112 = v155;
    *v155 = v111;
    *(v112 + 40) = 0;
    v113 = v152;
    v114 = *(v152 + 20);
    *(v112 + v114) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
    swift_storeEnumTagMultiPayload();
    *(v112 + v113[6]) = 0x4049000000000000;
    v115 = (v112 + v113[7]);
    *v115 = v107;
    v115[1] = v108;
    *(v112 + v113[8]) = v106;
    *(v112 + v113[9]) = v110;

    v116 = sub_24F925818();
    sub_24F923318();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = v154;
    sub_24E7C09CC(v112, v154, type metadata accessor for ProfileHeroQuickActionsView);
    v126 = v125 + *(v169 + 36);
    *v126 = v116;
    *(v126 + 8) = v118;
    *(v126 + 16) = v120;
    *(v126 + 24) = v122;
    *(v126 + 32) = v124;
    *(v126 + 40) = 0;
    v127 = v125;
    v128 = v153;
    sub_24E6009C8(v127, v153, &qword_27F21D098, &qword_24F958838);
    sub_24E6009C8(v128, v11, &qword_27F21D098, &qword_24F958838);
    v109 = 0;
  }

  else
  {
    v109 = 1;
  }

  v129 = v11;
  (*(v165 + 56))(v11, v109, 1, v169);
  v130 = v170;
  sub_24E60169C(v172, v170, &qword_27F21D0E0, &qword_24F958880);
  v131 = v163;
  v132 = *(v163 + 16);
  v133 = v171;
  v134 = v164;
  v132(v171, v173, v164);
  v135 = v166;
  sub_24E60169C(v174, v166, &qword_27F21D0B8, &qword_24F958858);
  v136 = v167;
  sub_24E60169C(v11, v167, &qword_27F21D0A0, &qword_24F958840);
  v137 = v130;
  v138 = v168;
  sub_24E60169C(v137, v168, &qword_27F21D0E0, &qword_24F958880);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D138, &qword_24F958940);
  v132((v138 + v139[12]), v133, v134);
  sub_24E60169C(v135, v138 + v139[16], &qword_27F21D0B8, &qword_24F958858);
  sub_24E60169C(v136, v138 + v139[20], &qword_27F21D0A0, &qword_24F958840);
  sub_24E601704(v129, &qword_27F21D0A0, &qword_24F958840);
  sub_24E601704(v174, &qword_27F21D0B8, &qword_24F958858);
  v140 = *(v131 + 8);
  v140(v173, v134);
  sub_24E601704(v172, &qword_27F21D0E0, &qword_24F958880);
  sub_24E601704(v136, &qword_27F21D0A0, &qword_24F958840);
  sub_24E601704(v135, &qword_27F21D0B8, &qword_24F958858);
  v140(v171, v134);
  return sub_24E601704(v170, &qword_27F21D0E0, &qword_24F958880);
}

uint64_t sub_24E7BE3AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D168, &unk_24F958A90);
  MEMORY[0x28223BE20](v68);
  v69 = &v60 - v3;
  v63 = sub_24F924248();
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D110, &qword_24F9588C8);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D170, &qword_24F958AA0);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v64 = &v60 - v14;
  v15 = type metadata accessor for FormattedNames(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D128, &qword_24F9588D0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v71 = a1;
  sub_24E60169C(a1 + 104, &v74, qword_27F21B590, &unk_24F93BE30);
  if (*(&v75 + 1))
  {
    sub_24E612C80(&v74, v86);
    v24 = sub_24F9232F8();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    sub_24E615E00(v86, v85);
    sub_24E7BF924(v71, &v74);
    v25 = swift_allocObject();
    v26 = v83;
    v25[9] = v82;
    v25[10] = v26;
    v25[11] = v84;
    v27 = v79;
    v25[5] = v78;
    v25[6] = v27;
    v28 = v81;
    v25[7] = v80;
    v25[8] = v28;
    v29 = v75;
    v25[1] = v74;
    v25[2] = v29;
    v30 = v77;
    v25[3] = v76;
    v25[4] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D178, &qword_24F958AD8);
    v71 = sub_24E7C1234();
    v72 = v18;
    v73 = v71;
    swift_getOpaqueTypeConformance2();
    sub_24F921788();
    v31 = sub_24F924258();
    *&v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v32 = *(v31 + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_24F924B38();
    (*(*(v34 - 8) + 104))(&v7[v32], v33, v34);
    __asm { FMOV            V0.2D, #12.0 }

    *v7 = _Q0;
    *&v7[*(v63 + 20)] = 0xC024000000000000;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v40 = sub_24F926D08();

    sub_24E7BF99C(v7, v61, MEMORY[0x277CDFBC8]);
    sub_24E7BB874(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
    v41 = sub_24F927348();
    sub_24E7BF8C4(v7, MEMORY[0x277CDFBC8]);
    *(&v76 + 1) = v41;
    *&v77 = v40;
    v42 = sub_24E602068(&qword_27F21D118, &qword_27F21D110, &qword_24F9588C8, MEMORY[0x277D7EB00]);
    v43 = sub_24E62A2EC();
    v44 = v64;
    v45 = v67;
    sub_24F926178();
    sub_24E64594C(&v74);
    (*(v62 + 8))(v12, v45);
    v47 = v65;
    v46 = v66;
    (*(v65 + 16))(v69, v44, v66);
    swift_storeEnumTagMultiPayload();
    *&v74 = v45;
    *(&v74 + 1) = &type metadata for FillFocusButtonStyle;
    *&v75 = v42;
    *(&v75 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v47 + 8))(v44, v46);
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    v65 = v18;
    sub_24E601704(&v74, qword_27F21B590, &unk_24F93BE30);
    *v17 = *(v71 + 8);
    v17[8] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v50 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v51 = qword_27F210438;

    v52 = v50;
    if (v51 != -1)
    {
      swift_once();
    }

    v53 = qword_27F22BEB8;
    *(inited + 64) = sub_24E77ACC8();
    *(inited + 40) = v53;
    v54 = v53;
    sub_24E608940(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F221890, &qword_24F93AD40);
    sub_24F91F0E8();
    v55 = (*(v71 + 152) & 1) == 0;
    KeyPath = swift_getKeyPath();
    sub_24E7C09CC(v17, v20, type metadata accessor for FormattedNames);
    v57 = &v20[*(v65 + 36)];
    *v57 = KeyPath;
    v57[8] = v55;
    sub_24E6009C8(v20, v23, &qword_27F21D128, &qword_24F9588D0);
    sub_24E60169C(v23, v69, &qword_27F21D128, &qword_24F9588D0);
    swift_storeEnumTagMultiPayload();
    v58 = sub_24E602068(&qword_27F21D118, &qword_27F21D110, &qword_24F9588C8, MEMORY[0x277D7EB00]);
    v59 = sub_24E62A2EC();
    *&v74 = v67;
    *(&v74 + 1) = &type metadata for FillFocusButtonStyle;
    *&v75 = v58;
    *(&v75 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_24E7C1234();
    sub_24F924E28();
    return sub_24E601704(v23, &qword_27F21D128, &qword_24F9588D0);
  }
}

uint64_t sub_24E7BECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_24F9248C8();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormattedNames(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D128, &qword_24F9588D0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v21 = a1;
  *v7 = *(a1 + 8);
  v7[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v12 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v13 = qword_27F210438;

  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_27F22BEB8;
  *(inited + 64) = sub_24E77ACC8();
  *(inited + 40) = v15;
  v16 = v15;
  sub_24E608940(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F221890, &qword_24F93AD40);
  sub_24F91F0E8();
  LOBYTE(v15) = (*(v21 + 152) & 1) == 0;
  KeyPath = swift_getKeyPath();
  sub_24E7C09CC(v7, v10, type metadata accessor for FormattedNames);
  v18 = &v10[*(v8 + 36)];
  *v18 = KeyPath;
  v18[8] = v15;
  sub_24F9248B8();
  sub_24E7C1234();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v22 + 8))(v4, v24);
  return sub_24E601704(v10, &qword_27F21D128, &qword_24F9588D0);
}

uint64_t sub_24E7BEFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_24F9248C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapsuleButtonContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(&v11[v9[6]], 1, 1, v12);
  *&v11[v9[9]] = 0x4010000000000000;
  v14 = v9[10];
  *&v11[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v15 = v9[11];
  *&v11[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v16 = v9[12];
  *&v11[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  v17 = &v11[v9[13]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v9[14];
  *&v11[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  v19 = &v11[v9[5]];
  *v19 = a1;
  *(v19 + 1) = a2;
  v11[v9[7]] = 5;
  v20 = &v11[v9[8]];
  *v20 = xmmword_24F943570;
  *(v20 + 2) = 0;

  sub_24F9248B8();
  sub_24E7BB874(&qword_27F21D160, type metadata accessor for CapsuleButtonContent, &unk_24F96B9C8);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v6 + 8))(v8, v5);
  return sub_24E7BF8C4(v11, type metadata accessor for CapsuleButtonContent);
}

uint64_t sub_24E7BF2E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D090, &qword_24F958830);
  return sub_24E7BD268(v1, a1 + *(v3 + 44));
}

uint64_t sub_24E7BF33C()
{
  v0 = sub_24F91F008();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F924A78();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F924A68();
  sub_24F924A58();
  sub_24E7BF4C4(v3);
  sub_24F924A18();
  (*(v1 + 8))(v3, v0);
  sub_24F924A58();
  sub_24F924A98();
  return sub_24F925DE8();
}

uint64_t sub_24E7BF4C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  if (v4 >= 4)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v3 + 3) <= 3uLL)
    {
      v3 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v4, 1, v3);
    }

    sub_24EDAB0D8(2uLL, v4, 0);
    v6 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000028, 0x800000024FA473F0, v4 - 2);
    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v14 = v6;
      v12 = v7;
      v13 = sub_24E615CF4((v8 > 1), v9 + 1, 1, v3);
      v7 = v12;
      v3 = v13;
      v6 = v14;
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v7;
  }

  else
  {
  }

  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  sub_24F319668(v3, (byte_27F39D1B1 & 1) == 0, a1);
}

uint64_t sub_24E7BF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = *(v2 + 8);
  sub_24E7BF99C(v2, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormattedNames);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_24E7C09CC(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FormattedNames);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D250, &qword_24F958D48) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_24F926E78();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *a2 = v6;
  *(a2 + 8) = sub_24E7C1D9C;
  *(a2 + 16) = v8;
  *(a2 + 24) = sub_24E7BF638;
  *(a2 + 32) = 0;
  LODWORD(v8) = sub_24F9251C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D258, &qword_24F958D88) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v15 = *MEMORY[0x277CE13B8];
  v16 = sub_24F927748();
  result = (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v13 = v8;
  return result;
}

uint64_t sub_24E7BF8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7BF99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7BFA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProfileHero(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E7BFAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProfileHero(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24E7BFBA0(uint64_t a1)
{
  type metadata accessor for ProfileHero(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocalPlayerProvider(319);
    if (v2 <= 0x3F)
    {
      sub_24E7C04F0(319, &qword_27F21CFF8, &qword_27F21CFA8, &qword_24F958530, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E7BFC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_24E7BFCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E7BFD40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PlayerAvatar(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E7BFE00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlayerAvatar(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7BFEA4(uint64_t a1)
{
  sub_24E7C048C(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24E7BFF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E7C00C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E7C0200(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E7C048C(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24E7C043C(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24E7C043C(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E7C04F0(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
          if (v5 <= 0x3F)
          {
            sub_24E7C043C(319, &qword_27F21D020, &type metadata for ProfileHeroQuickAction, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_24E7C048C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24E7C04F0(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00, MEMORY[0x277D21D28]);
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

void sub_24E7C043C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E7C048C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E7C04F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24E7C0558()
{
  result = qword_27F21D028;
  if (!qword_27F21D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D030, &qword_24F9586C0);
    sub_24E7C05DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D028);
  }

  return result;
}

unint64_t sub_24E7C05DC()
{
  result = qword_27F21D038;
  if (!qword_27F21D038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D040, qword_24F9586C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CF98, &qword_24F958520);
    sub_24E602068(&qword_27F21CFB8, &qword_27F21CF98, &qword_24F958520, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for HorizontalLayout(255);
    sub_24E7BB874(&qword_27F21CFB0, type metadata accessor for HorizontalLayout, &unk_24F958798);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D038);
  }

  return result;
}

uint64_t sub_24E7C0780()
{
  v1 = *(type metadata accessor for HorizontalLayout(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);

  if (*(v2 + 15))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  }

  if (*(v2 + 21))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 18);
  }

  v3 = type metadata accessor for ProfileHero(0);
  v4 = v3[13];
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v2[v4], 1, v5))
  {
    (*(v6 + 8))(&v2[v4], v5);
  }

  v7 = &v2[v3[14]];
  if (*(v7 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = v3[15];
  v9 = sub_24F92A6D8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v2[v8], 1, v9))
  {
    (*(v10 + 8))(&v2[v8], v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24E7C09CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7C0A34(uint64_t *a1)
{
  v3 = *(type metadata accessor for HorizontalLayout(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E7BC264(a1, v4);
}

uint64_t sub_24E7C0AA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726174617661 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D616ELL && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48746361746E6F63 && a2 == 0xEE0073656C646E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA47420 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA47440 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA47460 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7463416B63697571 && a2 == 0xEC000000736E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x75676553656D616ELL && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double sub_24E7C0E74(uint64_t a1)
{
  if (*(a1 + 16) <= 4uLL)
  {
  }

  else
  {
    v2 = *(type metadata accessor for PlayerAvatar(0) - 8);
    sub_24E6B8064(a1, a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), 0, 9uLL);
  }

  return 12.0;
}

unint64_t sub_24E7C0F00()
{
  result = qword_27F21D080;
  if (!qword_27F21D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D070, &qword_24F958818);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D080);
  }

  return result;
}

unint64_t sub_24E7C0F8C()
{
  result = qword_27F21D088;
  if (!qword_27F21D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D088);
  }

  return result;
}

unint64_t sub_24E7C0FE8()
{
  result = qword_27F21D0E8;
  if (!qword_27F21D0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D0C0, &qword_24F958860);
    sub_24E7C10A0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D0E8);
  }

  return result;
}

unint64_t sub_24E7C10A0()
{
  result = qword_27F21D0F0;
  if (!qword_27F21D0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D0F8, &qword_24F9588B8);
    sub_24E7C1124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D0F0);
  }

  return result;
}

unint64_t sub_24E7C1124()
{
  result = qword_27F21D100;
  if (!qword_27F21D100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D108, &qword_24F9588C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D110, &qword_24F9588C8);
    sub_24E602068(&qword_27F21D118, &qword_27F21D110, &qword_24F9588C8, MEMORY[0x277D7EB00]);
    sub_24E62A2EC();
    swift_getOpaqueTypeConformance2();
    sub_24E7C1234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D100);
  }

  return result;
}

unint64_t sub_24E7C1234()
{
  result = qword_27F21D120;
  if (!qword_27F21D120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D128, &qword_24F9588D0);
    sub_24E7BB874(&qword_27F21D130, type metadata accessor for FormattedNames, &unk_24F958C60);
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D120);
  }

  return result;
}

uint64_t sub_24E7C1344()
{

  return swift_deallocObject();
}

uint64_t sub_24E7C13BC()
{

  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  }

  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  }

  return swift_deallocObject();
}

unint64_t sub_24E7C1444()
{
  result = qword_27F21D188;
  if (!qword_27F21D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D188);
  }

  return result;
}

unint64_t sub_24E7C1498()
{
  result = qword_27F216420;
  if (!qword_27F216420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0, &qword_24F93B070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216420);
  }

  return result;
}

unint64_t sub_24E7C1514()
{
  result = qword_27F21D198;
  if (!qword_27F21D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D190, &qword_24F958AE8);
    sub_24E7C1598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D198);
  }

  return result;
}

unint64_t sub_24E7C1598()
{
  result = qword_27F21D1A0;
  if (!qword_27F21D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D1A0);
  }

  return result;
}

uint64_t sub_24E7C1620(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F0C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24E7C16E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F0C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7C1784(uint64_t a1)
{
  sub_24E7C043C(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24F91F0C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E7C187C()
{
  result = qword_27F21D1C8;
  if (!qword_27F21D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D1D0, &qword_24F958B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D070, &qword_24F958818);
    sub_24E7C0F00();
    swift_getOpaqueTypeConformance2();
    sub_24E7C0F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D1C8);
  }

  return result;
}

unint64_t sub_24E7C198C()
{
  result = qword_27F21D1E8;
  if (!qword_27F21D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D1E8);
  }

  return result;
}

unint64_t sub_24E7C19E4()
{
  result = qword_27F21D1F0;
  if (!qword_27F21D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D1F0);
  }

  return result;
}

unint64_t sub_24E7C1A3C()
{
  result = qword_27F21D1F8;
  if (!qword_27F21D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D1F8);
  }

  return result;
}

uint64_t sub_24E7C1AC8()
{

  return swift_deallocObject();
}

unint64_t sub_24E7C1B10()
{
  result = qword_27F21D220;
  if (!qword_27F21D220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D210, &qword_24F958D30);
    sub_24E7C1B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D220);
  }

  return result;
}

unint64_t sub_24E7C1B9C()
{
  result = qword_27F21D228;
  if (!qword_27F21D228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D230, &qword_24F958D38);
    sub_24E7C1C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D228);
  }

  return result;
}

unint64_t sub_24E7C1C28()
{
  result = qword_27F21D238;
  if (!qword_27F21D238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D240, &qword_24F958D40);
    sub_24E7C0F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D238);
  }

  return result;
}

uint64_t sub_24E7C1CB4()
{
  v1 = (type metadata accessor for FormattedNames(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_24F91F0C8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E7C1D9C()
{
  type metadata accessor for FormattedNames(0);

  return sub_24E7BF33C();
}

unint64_t sub_24E7C1E4C()
{
  result = qword_27F21D270;
  if (!qword_27F21D270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D278, &qword_24F958D98);
    sub_24E7C1F04();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D270);
  }

  return result;
}

unint64_t sub_24E7C1F04()
{
  result = qword_27F21D280;
  if (!qword_27F21D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D258, &qword_24F958D88);
    sub_24E7C1FBC();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D280);
  }

  return result;
}

unint64_t sub_24E7C1FBC()
{
  result = qword_27F21D288;
  if (!qword_27F21D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D250, &qword_24F958D48);
    sub_24E7C2074();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D288);
  }

  return result;
}

unint64_t sub_24E7C2074()
{
  result = qword_27F21D290;
  if (!qword_27F21D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D290);
  }

  return result;
}

uint64_t sub_24E7C20F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v94 = a4;
  v6 = sub_24F928388();
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F928D48();
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v98 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D2B0, &unk_24FA2CBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D2B8, &qword_24F958E40);
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v87 - v20;
  v105 = sub_24F9285B8();
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  MEMORY[0x28223BE20](v27);
  *&v106 = &v87 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v87 - v30;
  v32 = a1;
  v33 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21B70], MEMORY[0x277D83A88]);
  v104 = a2;
  if (v33)
  {
    v92 = v34;
    v93 = v35;
    v95 = v33;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_24F92D0E8();
    sub_24F928598();
    sub_24F928568();
    v36 = v112;
    sub_24F9285D8();
    v37 = v100;
    v38 = *(v99 + 8);
    v38(v21, v100);
    v39 = (*(v103 + 48))(v13, 1, v36);
    v40 = sub_24E7C5070(v13);
    v41 = v105;
    v42 = v102;
    if (v39 == 1)
    {
      v97(v40);
      v43 = v98;
      sub_24F928D58();
      v44 = v96;
      sub_24F928568();
      v45 = v112;
      sub_24F928528();
      v46 = v44;
      v41 = v105;
      v38(v46, v37);
      (*(v103 + 8))(v43, v45);
      (*(v42 + 8))(v31, v41);
      (*(v42 + 32))(v31, v106, v41);
    }

    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    v47 = v106;
    (*(v42 + 16))(v106, v31, v41);
    MEMORY[0x253050800](v47);
    sub_24F92D0F8();

    *&v110 = v95;
    *(&v110 + 1) = v92;
    v111 = v93;
    __swift_allocate_boxed_opaque_existential_1(&v108);
    v48 = v101;
    sub_24F92BA78();
    if (v48)
    {
      (*(v42 + 8))(v31, v41);
      return __swift_deallocate_boxed_opaque_existential_2(&v108);
    }

    v106 = v110;
    v71 = v110;
    v72 = __swift_project_boxed_opaque_existential_1(&v108, v110);
    v73 = v94;
    *(v94 + 24) = v106;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
    (*(*(v71 - 8) + 16))(boxed_opaque_existential_1, v72, v71);
    (*(v42 + 8))(v31, v41);
    return __swift_destroy_boxed_opaque_existential_1(&v108);
  }

  v50 = v95;
  v91 = v23;
  v92 = v26;
  v51 = v112;
  v52 = v32;
  v53 = dynamic_cast_existential_2_conditional(v32, v32, MEMORY[0x277D21F48], MEMORY[0x277D21B70]);
  if (v53)
  {
    v88 = v55;
    v89 = v54;
    v90 = v53;
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    sub_24F92D0E8();
    sub_24F928598();
    sub_24F928568();
    sub_24F9285D8();
    v56 = v51;
    v57 = v100;
    v58 = *(v99 + 8);
    v58(v16, v100);
    v59 = v103;
    v60 = (*(v103 + 48))(v50, 1, v51);
    v61 = sub_24E7C5070(v50);
    v62 = v105;
    if (v60 == 1)
    {
      v97(v61);
      v63 = v98;
      sub_24F928D58();
      v64 = v96;
      sub_24F928568();
      v65 = v106;
      v66 = v56;
      v67 = v92;
      sub_24F928528();
      v58(v64, v57);
      v68 = v63;
      v62 = v105;
      (*(v59 + 8))(v68, v66);
      v69 = v102;
      (*(v102 + 8))(v67, v62);
      (*(v69 + 32))(v67, v65, v62);
    }

    sub_24E615E00(v104, v107);
    v70 = v101;
    sub_24F928298();
    if (v70)
    {
      return (*(v102 + 8))(v92, v62);
    }

    v79 = v102;
    v80 = v92;
    (*(v102 + 16))(v91, v92, v62);
    v81 = v62;
    *&v110 = v90;
    *(&v110 + 1) = v89;
    v111 = v88;
    __swift_allocate_boxed_opaque_existential_1(&v108);
    sub_24F929538();
    v82 = v110;
    v83 = v111;
    v84 = __swift_project_boxed_opaque_existential_1(&v108, v110);
    v85 = v94;
    *(v94 + 24) = v82;
    v85[4] = v83;
    v86 = __swift_allocate_boxed_opaque_existential_1(v85);
    (*(*(v82 - 8) + 16))(v86, v84, v82);
    (*(v79 + 8))(v80, v81);
    return __swift_destroy_boxed_opaque_existential_1(&v108);
  }

  v75 = sub_24F92C918();
  swift_allocError();
  v77 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
  *v77 = v52;
  __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  sub_24F92D0C8();
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_24F92C888();

  v108 = 60;
  v109 = 0xE100000000000000;
  v78 = sub_24F92D1E8();
  MEMORY[0x253050C20](v78);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA46560);
  sub_24F92C908();
  (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D84160], v75);
  return swift_willThrow();
}

unint64_t sub_24E7C2B88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A4C8, &qword_24F94E328);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F958DA0;
  v1 = type metadata accessor for PlayNowPageContainerIntent(0);
  v2 = sub_24E7C6160(&qword_27F21D2D8, type metadata accessor for PlayNowPageContainerIntent, &protocol conformance descriptor for PlayNowPageContainerIntent);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SearchPageContainerIntent(0);
  v4 = sub_24E7C6160(&qword_27F21D2E0, type metadata accessor for SearchPageContainerIntent, &unk_24F98E644);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AccessPointPageIntent(0);
  v6 = sub_24E7C6160(&qword_27F21D2E8, type metadata accessor for AccessPointPageIntent, &protocol conformance descriptor for AccessPointPageIntent);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AccessPointPageConstructionIntent(0);
  v8 = sub_24E7C6160(&qword_27F21D2F0, type metadata accessor for AccessPointPageConstructionIntent, &protocol conformance descriptor for AccessPointPageConstructionIntent);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for AchievementsPageIntent(0);
  v10 = sub_24E7C6160(&qword_27F21D2F8, type metadata accessor for AchievementsPageIntent, &protocol conformance descriptor for AchievementsPageIntent);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for AddFriendsPageIntent(0);
  v12 = sub_24E7C6160(&qword_27F21D300, type metadata accessor for AddFriendsPageIntent, &protocol conformance descriptor for AddFriendsPageIntent);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = sub_24E7C5734();
  *(v0 + 128) = &type metadata for ArcadeLibraryPageIntent;
  *(v0 + 136) = v13;
  v14 = sub_24E7C5788();
  *(v0 + 144) = &type metadata for ChallengesGamePickerPageIntent;
  *(v0 + 152) = v14;
  v15 = type metadata accessor for ChallengesHubPageIntent(0);
  v16 = sub_24E7C6160(&qword_27F21D318, type metadata accessor for ChallengesHubPageIntent, &protocol conformance descriptor for ChallengesHubPageIntent);
  *(v0 + 160) = v15;
  *(v0 + 168) = v16;
  v17 = sub_24E7C57DC();
  *(v0 + 176) = &type metadata for ChallengesLeaderboardPickerPageIntent;
  *(v0 + 184) = v17;
  v18 = type metadata accessor for FriendRequestsPageIntent(0);
  v19 = sub_24E7C6160(&qword_27F21D328, type metadata accessor for FriendRequestsPageIntent, &protocol conformance descriptor for FriendRequestsPageIntent);
  *(v0 + 192) = v18;
  *(v0 + 200) = v19;
  v20 = type metadata accessor for FriendsPlayingPageIntent(0);
  v21 = sub_24E7C6160(&qword_27F21D330, type metadata accessor for FriendsPlayingPageIntent, &unk_24F968494);
  *(v0 + 208) = v20;
  *(v0 + 216) = v21;
  v22 = type metadata accessor for GameAchievementsListPageIntent(0);
  v23 = sub_24E7C6160(&qword_27F21D338, type metadata accessor for GameAchievementsListPageIntent, &protocol conformance descriptor for GameAchievementsListPageIntent);
  *(v0 + 224) = v22;
  *(v0 + 232) = v23;
  v24 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  v25 = sub_24E7C6160(&qword_27F21D340, type metadata accessor for GameDetailsMediaPreviewPageIntent, &unk_24F98C2DC);
  *(v0 + 240) = v24;
  *(v0 + 248) = v25;
  v26 = type metadata accessor for InGameBannerPageIntent(0);
  v27 = sub_24E7C6160(&qword_27F21C088, type metadata accessor for InGameBannerPageIntent, &protocol conformance descriptor for InGameBannerPageIntent);
  *(v0 + 256) = v26;
  *(v0 + 264) = v27;
  v28 = type metadata accessor for InGameBannerPageConstructionIntent(0);
  v29 = sub_24E7C6160(&qword_27F21C098, type metadata accessor for InGameBannerPageConstructionIntent, &protocol conformance descriptor for InGameBannerPageConstructionIntent);
  *(v0 + 272) = v28;
  *(v0 + 280) = v29;
  v30 = sub_24E7C5830();
  *(v0 + 288) = &type metadata for InternalSettingsPageIntent;
  *(v0 + 296) = v30;
  v31 = type metadata accessor for InviteFriendsPageIntent(0);
  v32 = sub_24E7C6160(&qword_27F21D350, type metadata accessor for InviteFriendsPageIntent, &protocol conformance descriptor for InviteFriendsPageIntent);
  *(v0 + 304) = v31;
  *(v0 + 312) = v32;
  v33 = type metadata accessor for InviteFriendsSearchPageIntent(0);
  v34 = sub_24E7C6160(&qword_27F21D358, type metadata accessor for InviteFriendsSearchPageIntent, &protocol conformance descriptor for InviteFriendsSearchPageIntent);
  *(v0 + 320) = v33;
  *(v0 + 328) = v34;
  v35 = type metadata accessor for LeaderboardDetailsPageIntent(0);
  v36 = sub_24E7C6160(&qword_27F21D360, type metadata accessor for LeaderboardDetailsPageIntent, &unk_24FA36D58);
  *(v0 + 336) = v35;
  *(v0 + 344) = v36;
  v37 = type metadata accessor for LeaderboardSetDetailsPageIntent(0);
  v38 = sub_24E7C6160(&qword_27F21D368, type metadata accessor for LeaderboardSetDetailsPageIntent, &unk_24F9C2E88);
  *(v0 + 352) = v37;
  *(v0 + 360) = v38;
  v39 = type metadata accessor for LeaderboardsListPageIntent(0);
  v40 = sub_24E7C6160(&qword_27F21D370, type metadata accessor for LeaderboardsListPageIntent, &unk_24F95BCD4);
  *(v0 + 368) = v39;
  *(v0 + 376) = v40;
  v41 = type metadata accessor for LeaderboardsOverviewPageIntent(0);
  v42 = sub_24E7C6160(&qword_27F21D378, type metadata accessor for LeaderboardsOverviewPageIntent, &unk_24F9DEB68);
  *(v0 + 384) = v41;
  *(v0 + 392) = v42;
  v43 = type metadata accessor for LibraryPageIntent(0);
  v44 = sub_24E7C6160(&qword_27F21D380, type metadata accessor for LibraryPageIntent, &protocol conformance descriptor for LibraryPageIntent);
  *(v0 + 400) = v43;
  *(v0 + 408) = v44;
  v45 = sub_24E7C5884();
  *(v0 + 416) = &type metadata for OverlayActiveCallPageIntent;
  *(v0 + 424) = v45;
  v46 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  v47 = sub_24E7C6160(&qword_27F21D390, type metadata accessor for OverlayNowPlayingPageIntent, &protocol conformance descriptor for OverlayNowPlayingPageIntent);
  *(v0 + 432) = v46;
  *(v0 + 440) = v47;
  v48 = type metadata accessor for OverlaySocialPageIntent(0);
  v49 = sub_24E7C6160(&qword_27F21D398, type metadata accessor for OverlaySocialPageIntent, &protocol conformance descriptor for OverlaySocialPageIntent);
  *(v0 + 448) = v48;
  *(v0 + 456) = v49;
  v50 = sub_24E7C58D8();
  *(v0 + 464) = &type metadata for OverlaySystemSettingsPageIntent;
  *(v0 + 472) = v50;
  v51 = type metadata accessor for PlayNowPageIntent(0);
  v52 = sub_24E7C6160(&qword_27F21D3A8, type metadata accessor for PlayNowPageIntent, &protocol conformance descriptor for PlayNowPageIntent);
  *(v0 + 480) = v51;
  *(v0 + 488) = v52;
  v53 = sub_24E70D4B8();
  *(v0 + 496) = &type metadata for SearchSuggestionsIntent;
  *(v0 + 504) = v53;
  v54 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  v55 = sub_24E7C6160(&qword_27F21D3B0, type metadata accessor for SocialIntegrationContactsListPageIntent, &protocol conformance descriptor for SocialIntegrationContactsListPageIntent);
  *(v0 + 512) = v54;
  *(v0 + 520) = v55;
  v56 = type metadata accessor for GameSearchResultsPageIntent(0);
  v57 = sub_24E7C6160(&qword_27F21D3B8, type metadata accessor for GameSearchResultsPageIntent, &unk_24F957E20);
  *(v0 + 528) = v56;
  *(v0 + 536) = v57;
  v58 = type metadata accessor for AchievementsByGameShelfIntent(0);
  v59 = sub_24E7C6160(&qword_27F215158, type metadata accessor for AchievementsByGameShelfIntent, &protocol conformance descriptor for AchievementsByGameShelfIntent);
  *(v0 + 544) = v58;
  *(v0 + 552) = v59;
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  v61 = sub_24E7C6160(&qword_27F21D3C0, type metadata accessor for ActiveChallengesShelfIntent, &unk_24F9EB8E0);
  *(v0 + 560) = active;
  *(v0 + 568) = v61;
  v62 = type metadata accessor for ActivityFeedShelfIntent(0);
  v63 = sub_24E7C6160(&qword_27F21D3C8, type metadata accessor for ActivityFeedShelfIntent, &unk_24FA17C80);
  *(v0 + 576) = v62;
  *(v0 + 584) = v63;
  v64 = type metadata accessor for AddFriendButtonShelfIntent(0);
  v65 = sub_24E7C6160(&qword_27F21D3D0, type metadata accessor for AddFriendButtonShelfIntent, &protocol conformance descriptor for AddFriendButtonShelfIntent);
  *(v0 + 592) = v64;
  *(v0 + 600) = v65;
  v66 = type metadata accessor for AddFriendsShelfIntent(0);
  v67 = sub_24E7C6160(&qword_27F21D3D8, type metadata accessor for AddFriendsShelfIntent, &protocol conformance descriptor for AddFriendsShelfIntent);
  *(v0 + 608) = v66;
  *(v0 + 616) = v67;
  v68 = sub_24E7C592C();
  *(v0 + 624) = &type metadata for ArcadeLibraryPageMoreIntent;
  *(v0 + 632) = v68;
  v69 = type metadata accessor for ChallengeDetailHeaderShelfIntent(0);
  v70 = sub_24E7C6160(&qword_27F21D3E8, type metadata accessor for ChallengeDetailHeaderShelfIntent, &protocol conformance descriptor for ChallengeDetailHeaderShelfIntent);
  *(v0 + 640) = v69;
  *(v0 + 648) = v70;
  v71 = sub_24E7C5980();
  *(v0 + 656) = &type metadata for ChallengeDetailInvitedPlayersShelfIntent;
  *(v0 + 664) = v71;
  v72 = sub_24E7C59D4();
  *(v0 + 672) = &type metadata for ChallengeScoreboardShelfIntent;
  *(v0 + 680) = v72;
  v73 = sub_24E7C5A28();
  *(v0 + 688) = &type metadata for ChallengeSuggestionsShelfIntent;
  *(v0 + 696) = v73;
  v74 = sub_24E7C5A7C();
  *(v0 + 704) = &type metadata for ChallengesAllGamesShelfIntent;
  *(v0 + 712) = v74;
  v75 = sub_24E738268();
  *(v0 + 720) = &type metadata for ChallengesAllLeaderboardsShelfIntent;
  *(v0 + 728) = v75;
  v76 = sub_24E7C5AD0();
  *(v0 + 736) = &type metadata for ChallengesFriendComparisonChartShelfIntent;
  *(v0 + 744) = v76;
  v77 = sub_24E7C5B24();
  *(v0 + 752) = &type metadata for ChallengesFriendComparisonCompletedShelfIntent;
  *(v0 + 760) = v77;
  v78 = type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent(0);
  v79 = sub_24E7C6160(&qword_27F21D420, type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent, &protocol conformance descriptor for ChallengesFriendComparisonHeaderShelfIntent);
  *(v0 + 768) = v78;
  *(v0 + 776) = v79;
  v80 = type metadata accessor for ChallengesHistoryFriendsShelfIntent(0);
  v81 = sub_24E7C6160(&qword_27F21D428, type metadata accessor for ChallengesHistoryFriendsShelfIntent, &protocol conformance descriptor for ChallengesHistoryFriendsShelfIntent);
  *(v0 + 784) = v80;
  *(v0 + 792) = v81;
  v82 = sub_24E7C5B78();
  *(v0 + 800) = &type metadata for ChallengesHistoryGamesShelfIntent;
  *(v0 + 808) = v82;
  v83 = type metadata accessor for ChallengesHistoryHeaderShelfIntent(0);
  v84 = sub_24E7C6160(&qword_27F21D438, type metadata accessor for ChallengesHistoryHeaderShelfIntent, &protocol conformance descriptor for ChallengesHistoryHeaderShelfIntent);
  *(v0 + 816) = v83;
  *(v0 + 824) = v84;
  v85 = sub_24E6136E0();
  *(v0 + 832) = &type metadata for ChallengesHubEmptyStateShelfIntent;
  *(v0 + 840) = v85;
  v86 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v87 = sub_24E7C6160(&qword_27F21D440, type metadata accessor for ChallengesHubHeaderShelfIntent, &protocol conformance descriptor for ChallengesHubHeaderShelfIntent);
  *(v0 + 848) = v86;
  *(v0 + 856) = v87;
  v88 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  v89 = sub_24E7C6160(&qword_27F21D448, type metadata accessor for ChallengesInvitesShelfIntent, &unk_24F9EA808);
  *(v0 + 864) = v88;
  *(v0 + 872) = v89;
  v90 = sub_24E7C5BCC();
  *(v0 + 880) = &type metadata for ChallengesSuggestedGamesShelfIntent;
  *(v0 + 888) = v90;
  v91 = sub_24E7C5C20();
  *(v0 + 896) = &type metadata for ChallengesSuggestedLeaderboardsShelfIntent;
  *(v0 + 904) = v91;
  v92 = sub_24E7C5C74();
  *(v0 + 912) = &type metadata for ChartsShelfIntent;
  *(v0 + 920) = v92;
  v93 = sub_24E7C5CC8();
  *(v0 + 928) = &type metadata for CompletedChallengesShelfIntent;
  *(v0 + 936) = v93;
  v94 = type metadata accessor for ContinuePlayingShelfIntent(0);
  v95 = sub_24E7C6160(&qword_27F21D470, type metadata accessor for ContinuePlayingShelfIntent, &protocol conformance descriptor for ContinuePlayingShelfIntent);
  *(v0 + 944) = v94;
  *(v0 + 952) = v95;
  v96 = type metadata accessor for DashboardHeroShelfIntent(0);
  v97 = sub_24E7C6160(&qword_27F21D478, type metadata accessor for DashboardHeroShelfIntent, &protocol conformance descriptor for DashboardHeroShelfIntent);
  *(v0 + 960) = v96;
  *(v0 + 968) = v97;
  v98 = sub_24E7C5D1C();
  *(v0 + 976) = &type metadata for FriendInviteButtonShelfIntent;
  *(v0 + 984) = v98;
  v99 = type metadata accessor for FriendsPlayingShelfIntent(0);
  v100 = sub_24E7C6160(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent, &unk_24F951484);
  *(v0 + 992) = v99;
  *(v0 + 1000) = v100;
  v101 = type metadata accessor for FriendRequestsAndChallengesShelfIntent(0);
  v102 = sub_24E7C6160(&qword_27F21D490, type metadata accessor for FriendRequestsAndChallengesShelfIntent, &protocol conformance descriptor for FriendRequestsAndChallengesShelfIntent);
  *(v0 + 1008) = v101;
  *(v0 + 1016) = v102;
  v103 = sub_24E7C5D70();
  *(v0 + 1024) = &type metadata for FriendSuggestionSwooshShelfIntent;
  *(v0 + 1032) = v103;
  v104 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  v105 = sub_24E7C6160(&qword_27F21D4A0, type metadata accessor for GameDetailsChallengesShelfIntent, &unk_24F9F59BC);
  *(v0 + 1040) = v104;
  *(v0 + 1048) = v105;
  v106 = sub_24E7C5DC4();
  *(v0 + 1056) = &type metadata for GameDetailsMediaPreviewShelfIntent;
  *(v0 + 1064) = v106;
  v107 = type metadata accessor for GameLibraryShelfIntent(0);
  v108 = sub_24E7C6160(&qword_27F21D4B0, type metadata accessor for GameLibraryShelfIntent, &unk_24F9F1618);
  *(v0 + 1072) = v107;
  *(v0 + 1080) = v108;
  v109 = type metadata accessor for GameLibraryMenuShelfIntent(0);
  v110 = sub_24E7C6160(&qword_27F21D4B8, type metadata accessor for GameLibraryMenuShelfIntent, &unk_24FA1DA2C);
  *(v0 + 1088) = v109;
  *(v0 + 1096) = v110;
  v111 = type metadata accessor for IncomingFriendRequestShelfIntent(0);
  v112 = sub_24E7C6160(&qword_27F21D4C0, type metadata accessor for IncomingFriendRequestShelfIntent, &protocol conformance descriptor for IncomingFriendRequestShelfIntent);
  *(v0 + 1104) = v111;
  *(v0 + 1112) = v112;
  v113 = sub_24E7C5E18();
  *(v0 + 1120) = &type metadata for InviteFriendsShelfIntent;
  *(v0 + 1128) = v113;
  v114 = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  v115 = sub_24E7C6160(&unk_27F22D130, type metadata accessor for InviteFriendsSearchShelfIntent, &protocol conformance descriptor for InviteFriendsSearchShelfIntent);
  *(v0 + 1136) = v114;
  *(v0 + 1144) = v115;
  v116 = type metadata accessor for LeaderboardChallengeSuggestionShelfIntent(0);
  v117 = sub_24E7C6160(&qword_27F21D4D0, type metadata accessor for LeaderboardChallengeSuggestionShelfIntent, &protocol conformance descriptor for LeaderboardChallengeSuggestionShelfIntent);
  *(v0 + 1152) = v116;
  *(v0 + 1160) = v117;
  v118 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  v119 = sub_24E7C6160(&qword_27F21D4D8, type metadata accessor for LeaderboardDetailHeaderShelfIntent, &unk_24F959C8C);
  *(v0 + 1168) = v118;
  *(v0 + 1176) = v119;
  v120 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  v121 = sub_24E7C6160(&qword_27F21D4E0, type metadata accessor for LeaderboardEntriesShelfIntent, &unk_24FA0EA88);
  *(v0 + 1184) = v120;
  *(v0 + 1192) = v121;
  v122 = sub_24E7C5E6C();
  *(v0 + 1200) = &type metadata for NotImplementedShelfIntent;
  *(v0 + 1208) = v122;
  v123 = type metadata accessor for OverlayHighlightsShelfIntent(0);
  v124 = sub_24E7C6160(&qword_27F21D4F0, type metadata accessor for OverlayHighlightsShelfIntent, &protocol conformance descriptor for OverlayHighlightsShelfIntent);
  *(v0 + 1216) = v123;
  *(v0 + 1224) = v124;
  v125 = type metadata accessor for OverlayHighlightsShelfConstructionIntent(0);
  v126 = sub_24E7C6160(&qword_27F21D4F8, type metadata accessor for OverlayHighlightsShelfConstructionIntent, &protocol conformance descriptor for OverlayHighlightsShelfConstructionIntent);
  *(v0 + 1232) = v125;
  *(v0 + 1240) = v126;
  v127 = type metadata accessor for PlayerProfileOverviewShelfIntent(0);
  v128 = sub_24E7C6160(&qword_27F21D500, type metadata accessor for PlayerProfileOverviewShelfIntent, &protocol conformance descriptor for PlayerProfileOverviewShelfIntent);
  *(v0 + 1248) = v127;
  *(v0 + 1256) = v128;
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  v130 = sub_24E7C6160(&qword_27F21D508, type metadata accessor for PlayTogetherStartPlayingShelfIntent, &unk_24F992A9C);
  *(v0 + 1264) = started;
  *(v0 + 1272) = v130;
  v131 = type metadata accessor for RecentlyPlayedShelfIntent(0);
  v132 = sub_24E7C6160(&qword_27F21D510, type metadata accessor for RecentlyPlayedShelfIntent, &protocol conformance descriptor for RecentlyPlayedShelfIntent);
  *(v0 + 1280) = v131;
  *(v0 + 1288) = v132;
  v133 = type metadata accessor for RefreshableGameHighlightsShelfIntent(0);
  v134 = sub_24E7C6160(&qword_27F218330, type metadata accessor for RefreshableGameHighlightsShelfIntent, &unk_24F94A570);
  *(v0 + 1296) = v133;
  *(v0 + 1304) = v134;
  v135 = sub_24E7C5EC0();
  *(v0 + 1312) = &type metadata for PaginatedShelfIntent;
  *(v0 + 1320) = v135;
  v136 = sub_24E7C5F14();
  *(v0 + 1328) = &type metadata for UpdateListenerShelfIntent;
  *(v0 + 1336) = v136;
  v137 = type metadata accessor for AchievementsByGameShelfConstructionIntent(0);
  v138 = sub_24E7C6160(&qword_27F215220, type metadata accessor for AchievementsByGameShelfConstructionIntent, &protocol conformance descriptor for AchievementsByGameShelfConstructionIntent);
  *(v0 + 1344) = v137;
  *(v0 + 1352) = v138;
  v139 = type metadata accessor for AddFriendButtonShelfConstructionIntent(0);
  v140 = sub_24E7C6160(&qword_27F21D528, type metadata accessor for AddFriendButtonShelfConstructionIntent, &protocol conformance descriptor for AddFriendButtonShelfConstructionIntent);
  *(v0 + 1360) = v139;
  *(v0 + 1368) = v140;
  v141 = sub_24E651264();
  *(v0 + 1376) = &type metadata for ChallengesAllGamesShelfConstructionIntent;
  *(v0 + 1384) = v141;
  v142 = sub_24E651504();
  *(v0 + 1392) = &type metadata for ChallengesAllLeaderboardsShelfConstructionIntent;
  *(v0 + 1400) = v142;
  v143 = type metadata accessor for GameDetailsChallengesShelfConstructionIntent(0);
  v144 = sub_24E7C6160(&qword_27F21D530, type metadata accessor for GameDetailsChallengesShelfConstructionIntent, &unk_24F9C10B8);
  *(v0 + 1408) = v143;
  *(v0 + 1416) = v144;
  v145 = type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent(0);
  v146 = sub_24E7C6160(&qword_27F21D538, type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent, &protocol conformance descriptor for ChallengeDetailHeaderShelfConstructionIntent);
  *(v0 + 1424) = v145;
  *(v0 + 1432) = v146;
  v147 = type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent(0);
  v148 = sub_24E7C6160(&qword_27F21D540, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent, &unk_24F953300);
  *(v0 + 1440) = v147;
  *(v0 + 1448) = v148;
  v149 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);
  v150 = sub_24E7C6160(&qword_27F21D548, type metadata accessor for ChallengeScoreboardShelfConstructionIntent, &protocol conformance descriptor for ChallengeScoreboardShelfConstructionIntent);
  *(v0 + 1456) = v149;
  *(v0 + 1464) = v150;
  v151 = sub_24E614F70();
  *(v0 + 1472) = &type metadata for ChallengesHubEmptyStateShelfConstructionIntent;
  *(v0 + 1480) = v151;
  v152 = type metadata accessor for ChallengesHubHeaderShelfConstructionIntent(0);
  v153 = sub_24E7C6160(&qword_27F21D550, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent, &protocol conformance descriptor for ChallengesHubHeaderShelfConstructionIntent);
  *(v0 + 1488) = v152;
  *(v0 + 1496) = v153;
  v154 = type metadata accessor for ChallengesInvitesShelfConstructionIntent(0);
  v155 = sub_24E7C6160(&qword_27F21D558, type metadata accessor for ChallengesInvitesShelfConstructionIntent, &unk_24F9593C4);
  *(v0 + 1504) = v154;
  *(v0 + 1512) = v155;
  v156 = sub_24E65145C();
  *(v0 + 1520) = &type metadata for ChallengesSuggestedGamesShelfConstructionIntent;
  *(v0 + 1528) = v156;
  v157 = sub_24E651114();
  *(v0 + 1536) = &type metadata for ChallengesSuggestedLeaderboardsShelfConstructionIntent;
  *(v0 + 1544) = v157;
  v158 = type metadata accessor for ContinuePlayingShelfConstructionIntent(0);
  v159 = sub_24E7C6160(&qword_27F21D560, type metadata accessor for ContinuePlayingShelfConstructionIntent, &unk_24FA10540);
  *(v0 + 1552) = v158;
  *(v0 + 1560) = v159;
  v160 = sub_24E651408();
  *(v0 + 1568) = &type metadata for FriendSuggestionSwooshShelfConstructionIntent;
  *(v0 + 1576) = v160;
  v161 = sub_24E7C5F68();
  *(v0 + 1584) = &type metadata for GameDetailsMediaPreviewShelfConstructionIntent;
  *(v0 + 1592) = v161;
  v162 = type metadata accessor for GameLibraryShelfConstructionIntent(0);
  v163 = sub_24E7C6160(&qword_27F21D570, type metadata accessor for GameLibraryShelfConstructionIntent, &protocol conformance descriptor for GameLibraryShelfConstructionIntent);
  *(v0 + 1600) = v162;
  *(v0 + 1608) = v163;
  v164 = sub_24E7C5FBC();
  *(v0 + 1616) = &type metadata for GameLibraryErrorShelfConstructionIntent;
  *(v0 + 1624) = v164;
  v165 = sub_24E653EFC();
  *(v0 + 1632) = &type metadata for InviteFriendsShelfConstructionIntent;
  *(v0 + 1640) = v165;
  v166 = sub_24E651360();
  *(v0 + 1648) = &type metadata for InviteFriendsSearchShelfConstructionIntent;
  *(v0 + 1656) = v166;
  v167 = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent(0);
  v168 = sub_24E7C6160(&qword_27F21D580, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent, &unk_24F9CCB78);
  *(v0 + 1664) = v167;
  *(v0 + 1672) = v168;
  v169 = type metadata accessor for LeaderboardEntriesShelfConstructionIntent(0);
  v170 = sub_24E7C6160(&qword_27F21D588, type metadata accessor for LeaderboardEntriesShelfConstructionIntent, &unk_24F9ECCA4);
  *(v0 + 1680) = v169;
  *(v0 + 1688) = v170;
  v171 = type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent(0);
  v172 = sub_24E7C6160(&qword_27F21D590, type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent, &unk_24F9D1BD8);
  *(v0 + 1696) = v171;
  *(v0 + 1704) = v172;
  v173 = type metadata accessor for RecentlyPlayedShelfConstructionIntent(0);
  v174 = sub_24E7C6160(&qword_27F21D598, type metadata accessor for RecentlyPlayedShelfConstructionIntent, &protocol conformance descriptor for RecentlyPlayedShelfConstructionIntent);
  *(v0 + 1712) = v173;
  *(v0 + 1720) = v174;
  v175 = sub_24E729620();
  *(v0 + 1728) = &type metadata for AchievementsCountDataIntent;
  *(v0 + 1736) = v175;
  v176 = type metadata accessor for AccessPointDataIntent(0);
  v177 = sub_24E7C6160(&qword_27F21D5A0, type metadata accessor for AccessPointDataIntent, &unk_24FA14898);
  *(v0 + 1744) = v176;
  *(v0 + 1752) = v177;
  v178 = type metadata accessor for AchievementRecordingsDataIntent(0);
  v179 = sub_24E7C6160(&qword_27F21A4D8, type metadata accessor for AchievementRecordingsDataIntent, &protocol conformance descriptor for AchievementRecordingsDataIntent);
  *(v0 + 1760) = v178;
  *(v0 + 1768) = v179;
  v180 = type metadata accessor for AchievementsByGameDataIntent(0);
  v181 = sub_24E7C6160(&qword_27F215228, type metadata accessor for AchievementsByGameDataIntent, &protocol conformance descriptor for AchievementsByGameDataIntent);
  *(v0 + 1776) = v180;
  *(v0 + 1784) = v181;
  v182 = sub_24E635118();
  *(v0 + 1792) = &type metadata for AchievementsCountByPlayerDataIntent;
  *(v0 + 1800) = v182;
  v183 = sub_24E729674();
  *(v0 + 1808) = &type metadata for ActiveCallsDataIntent;
  *(v0 + 1816) = v183;
  v184 = sub_24E6C2FA4();
  *(v0 + 1824) = &type metadata for ActivityFeedDataIntent;
  *(v0 + 1832) = v184;
  v185 = sub_24E70D7C4();
  *(v0 + 1840) = &type metadata for AllFriendsPlayingGamesDataIntent;
  *(v0 + 1848) = v185;
  v186 = sub_24E7C6010();
  *(v0 + 1856) = &type metadata for CancelPreorderIntent;
  *(v0 + 1864) = v186;
  v187 = sub_24E6510C0();
  *(v0 + 1872) = &type metadata for ChallengeableLeaderboardsDataIntent;
  *(v0 + 1880) = v187;
  v188 = sub_24E65404C();
  *(v0 + 1888) = &type metadata for ChallengeDefinitionDataIntent;
  *(v0 + 1896) = v188;
  v189 = sub_24E7296C8();
  *(v0 + 1904) = &type metadata for ChallengeDefinitionsDataIntent;
  *(v0 + 1912) = v189;
  v190 = sub_24E72971C();
  *(v0 + 1920) = &type metadata for ChallengeDetailDataIntent;
  *(v0 + 1928) = v190;
  v191 = sub_24E6512B8();
  *(v0 + 1936) = &type metadata for ChallengesAllGamesDataIntent;
  *(v0 + 1944) = v191;
  v192 = sub_24E651558();
  *(v0 + 1952) = &type metadata for ChallengesAllLeaderboardsDataIntent;
  *(v0 + 1960) = v192;
  v193 = sub_24E729770();
  *(v0 + 1968) = &type metadata for ChallengesFriendComparisonDataIntent;
  *(v0 + 1976) = v193;
  v194 = sub_24E7297C4();
  *(v0 + 1984) = &type metadata for ChallengesHistoryDataIntent;
  *(v0 + 1992) = v194;
  v195 = sub_24E653EA8();
  *(v0 + 2000) = &type metadata for ChallengesHubDataIntent;
  *(v0 + 2008) = v195;
  v196 = sub_24E6514B0();
  *(v0 + 2016) = &type metadata for ChallengesSuggestedGamesDataIntent;
  *(v0 + 2024) = v196;
  v197 = sub_24E651168();
  *(v0 + 2032) = &type metadata for ChallengesSuggestedLeaderboardDataIntent;
  *(v0 + 2040) = v197;
  v198 = sub_24E729818();
  *(v0 + 2048) = &type metadata for CompletedChallengesDataIntent;
  *(v0 + 2056) = v198;
  v199 = type metadata accessor for ContinuePlayingDataIntent(0);
  v200 = sub_24E7C6160(&qword_27F215230, type metadata accessor for ContinuePlayingDataIntent, &unk_24F9A4618);
  *(v0 + 2064) = v199;
  *(v0 + 2072) = v200;
  v201 = type metadata accessor for FriendsDataIntent(0);
  v202 = sub_24E7C6160(&qword_27F2151B0, type metadata accessor for FriendsDataIntent, &unk_24FA17854);
  *(v0 + 2080) = v201;
  *(v0 + 2088) = v202;
  v203 = sub_24E65130C();
  *(v0 + 2096) = &type metadata for FriendsPlayingGameDataIntent;
  *(v0 + 2104) = v203;
  v204 = sub_24E6540A0();
  *(v0 + 2112) = &type metadata for FriendsPlayingGamesDataIntent;
  *(v0 + 2120) = v204;
  v205 = sub_24E650FC4();
  *(v0 + 2128) = &type metadata for FriendRequestsDataIntent;
  *(v0 + 2136) = v205;
  v206 = sub_24E72986C();
  *(v0 + 2144) = &type metadata for FriendOutboxDataIntent;
  *(v0 + 2152) = v206;
  v207 = sub_24E6540F4();
  *(v0 + 2160) = &type metadata for FriendRequestsPrivacyToggleDataIntent;
  *(v0 + 2168) = v207;
  v208 = sub_24E729914();
  *(v0 + 2176) = &type metadata for FriendshipStatusDataIntent;
  *(v0 + 2184) = v208;
  v209 = sub_24E6F6358();
  *(v0 + 2192) = &type metadata for GameAchievementsListDataIntent;
  *(v0 + 2200) = v209;
  v210 = sub_24E729968();
  *(v0 + 2208) = &type metadata for GameActivityDefinitionDataIntent;
  *(v0 + 2216) = v210;
  v211 = sub_24E7299BC();
  *(v0 + 2224) = &type metadata for GameActivityInstanceDataIntent;
  *(v0 + 2232) = v211;
  v212 = sub_24E729A10();
  *(v0 + 2240) = &type metadata for GameActivitiesListDataIntent;
  *(v0 + 2248) = v212;
  v213 = sub_24E653FF8();
  *(v0 + 2256) = &type metadata for GameDataIntent;
  *(v0 + 2264) = v213;
  v214 = sub_24E651018();
  *(v0 + 2272) = &type metadata for GamesDataIntent;
  *(v0 + 2280) = v214;
  v215 = type metadata accessor for GameDescriptorDataIntent(0);
  v216 = sub_24E7C6160(&qword_27F21A558, type metadata accessor for GameDescriptorDataIntent, &protocol conformance descriptor for GameDescriptorDataIntent);
  *(v0 + 2288) = v215;
  *(v0 + 2296) = v216;
  v217 = type metadata accessor for GameLibraryArcadeChicletMetadataIntent(0);
  v218 = sub_24E7C6160(&qword_27F21D5B0, type metadata accessor for GameLibraryArcadeChicletMetadataIntent, &protocol conformance descriptor for GameLibraryArcadeChicletMetadataIntent);
  *(v0 + 2304) = v217;
  *(v0 + 2312) = v218;
  v219 = type metadata accessor for GameLibraryDataIntent(0);
  v220 = sub_24E7C6160(&qword_27F21A560, type metadata accessor for GameLibraryDataIntent, &protocol conformance descriptor for GameLibraryDataIntent);
  *(v0 + 2320) = v219;
  *(v0 + 2328) = v220;
  v221 = type metadata accessor for GameLibraryMenuDataIntent(0);
  v222 = sub_24E7C6160(&qword_27F21D5B8, type metadata accessor for GameLibraryMenuDataIntent, &protocol conformance descriptor for GameLibraryMenuDataIntent);
  *(v0 + 2336) = v221;
  *(v0 + 2344) = v222;
  v223 = type metadata accessor for GameLibraryRefsDataIntent(0);
  v224 = sub_24E7C6160(&qword_27F21A568, type metadata accessor for GameLibraryRefsDataIntent, &protocol conformance descriptor for GameLibraryRefsDataIntent);
  *(v0 + 2352) = v223;
  *(v0 + 2360) = v224;
  v225 = sub_24E729B0C();
  *(v0 + 2368) = &type metadata for GameRecordingsDataIntent;
  *(v0 + 2376) = v225;
  v226 = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  v227 = sub_24E7C6160(&qword_27F2151B8, type metadata accessor for GamesRecentlyPlayedDataIntent, &unk_24F9ED0C8);
  *(v0 + 2384) = v226;
  *(v0 + 2392) = v227;
  v228 = sub_24E729B60();
  *(v0 + 2400) = &type metadata for HasLibraryGameDataIntent;
  *(v0 + 2408) = v228;
  v229 = sub_24E6513B4();
  *(v0 + 2416) = &type metadata for InviteFriendsSearchDataIntent;
  *(v0 + 2424) = v229;
  v230 = sub_24E653F50();
  *(v0 + 2432) = &type metadata for LeaderboardDataIntent;
  *(v0 + 2440) = v230;
  v231 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v232 = sub_24E7C6160(&qword_27F21C800, type metadata accessor for LeaderboardEntriesDataIntent, &unk_24FA23850);
  *(v0 + 2448) = v231;
  *(v0 + 2456) = v232;
  v233 = type metadata accessor for LeaderboardsListDataIntent(0);
  v234 = sub_24E7C6160(&qword_27F215278, type metadata accessor for LeaderboardsListDataIntent, &unk_24FA1F1AC);
  *(v0 + 2464) = v233;
  *(v0 + 2472) = v234;
  v235 = sub_24E729C08();
  *(v0 + 2480) = &type metadata for LeaderboardSetDataIntent;
  *(v0 + 2488) = v235;
  v236 = type metadata accessor for LeaderboardSetsDataIntent(0);
  v237 = sub_24E7C6160(&qword_27F21A588, type metadata accessor for LeaderboardSetsDataIntent, &unk_24F95D994);
  *(v0 + 2496) = v236;
  *(v0 + 2504) = v237;
  v238 = sub_24E729BB4();
  *(v0 + 2512) = &type metadata for LeaderboardsCountDataIntent;
  *(v0 + 2520) = v238;
  v239 = type metadata accessor for LeaderboardsCountHeaderItemIntent(0);
  v240 = sub_24E7C6160(&qword_27F21D5C0, type metadata accessor for LeaderboardsCountHeaderItemIntent, &unk_24F9986FC);
  *(v0 + 2528) = v239;
  *(v0 + 2536) = v240;
  v241 = type metadata accessor for LeaderboardsWithActivityDataIntent(0);
  v242 = sub_24E7C6160(&qword_27F21A590, type metadata accessor for LeaderboardsWithActivityDataIntent, &unk_24F973E8C);
  *(v0 + 2544) = v241;
  *(v0 + 2552) = v242;
  v243 = type metadata accessor for LeaderboardsWithFriendActivityDataIntent(0);
  v244 = sub_24E7C6160(&qword_27F21A598, type metadata accessor for LeaderboardsWithFriendActivityDataIntent, &unk_24FA37A14);
  *(v0 + 2560) = v243;
  *(v0 + 2568) = v244;
  v245 = sub_24E7C6064();
  *(v0 + 2576) = &type metadata for MarketingIntent;
  *(v0 + 2584) = v245;
  v246 = sub_24E729C5C();
  *(v0 + 2592) = &type metadata for OnDevicePersonalizationDataIntent;
  *(v0 + 2600) = v246;
  v247 = type metadata accessor for OverlayNowPlayingCacheDataIntent(0);
  v248 = sub_24E7C6160(&qword_27F21D5D0, type metadata accessor for OverlayNowPlayingCacheDataIntent, &protocol conformance descriptor for OverlayNowPlayingCacheDataIntent);
  *(v0 + 2608) = v247;
  *(v0 + 2616) = v248;
  v249 = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
  v250 = sub_24E7C6160(&qword_27F21D5D8, type metadata accessor for OverlaySocialDataPrefetchIntent, &unk_24F9AE5F8);
  *(v0 + 2624) = v249;
  *(v0 + 2632) = v250;
  v251 = sub_24E729CB0();
  *(v0 + 2640) = &type metadata for PhotosAssetMediaDataIntent;
  *(v0 + 2648) = v251;
  v252 = sub_24E729D04();
  *(v0 + 2656) = &type metadata for PlayerDataIntent;
  *(v0 + 2664) = v252;
  v253 = sub_24E729D58();
  *(v0 + 2672) = &type metadata for PlayerIDDataIntent;
  *(v0 + 2680) = v253;
  v254 = sub_24E729DAC();
  *(v0 + 2688) = &type metadata for PlayerProfileDataIntent;
  *(v0 + 2696) = v254;
  v255 = sub_24E65106C();
  *(v0 + 2704) = &type metadata for PlayersDataIntent;
  *(v0 + 2712) = v255;
  v256 = sub_24E729E00();
  *(v0 + 2720) = &type metadata for PlayTogetherChallengesDataIntent;
  *(v0 + 2728) = v256;
  v257 = sub_24E729E54();
  *(v0 + 2736) = &type metadata for PlayTogetherGamesDataIntent;
  *(v0 + 2744) = v257;
  v258 = sub_24E7C60B8();
  *(v0 + 2752) = &type metadata for PlayTogetherGroupDataIntent;
  *(v0 + 2760) = v258;
  v259 = sub_24E729EA8();
  *(v0 + 2768) = &type metadata for PlayTogetherPlayerDraftDataIntent;
  *(v0 + 2776) = v259;
  v260 = sub_24E729EFC();
  *(v0 + 2784) = &type metadata for RealNameMapDataIntent;
  *(v0 + 2792) = v260;
  v261 = sub_24E67D40C();
  *(v0 + 2800) = &type metadata for RecentSearchesDataIntent;
  *(v0 + 2808) = v261;
  v262 = sub_24E729FF8();
  *(v0 + 2816) = &type metadata for RestrictionsCheckDataIntent;
  *(v0 + 2824) = v262;
  v263 = sub_24E72A04C();
  *(v0 + 2832) = &type metadata for SocialIntegrationQueryDataIntent;
  *(v0 + 2840) = v263;
  v264 = sub_24E72A0A0();
  *(v0 + 2848) = &type metadata for SocialIntegrationsDataIntent;
  *(v0 + 2856) = v264;
  v265 = type metadata accessor for SocialSuggestionsDataIntent(0);
  v266 = sub_24E7C6160(&qword_27F21A600, type metadata accessor for SocialSuggestionsDataIntent, &unk_24FA13590);
  *(v0 + 2864) = v265;
  *(v0 + 2872) = v266;
  ChallengeIntent = type metadata accessor for CreateChallengeIntent(0);
  v268 = sub_24E7C6160(&qword_27F21D5E0, type metadata accessor for CreateChallengeIntent, &protocol conformance descriptor for CreateChallengeIntent);
  *(v0 + 2880) = ChallengeIntent;
  *(v0 + 2888) = v268;
  v269 = sub_24E7C610C();
  *(v0 + 2896) = &type metadata for InvitePlayersToChallengeIntent;
  *(v0 + 2904) = v269;
  v270 = type metadata accessor for ImpedimentFlowDestinationsIntent(0);
  v271 = sub_24E7C6160(&qword_27F21D5F0, type metadata accessor for ImpedimentFlowDestinationsIntent, &unk_24F9899C4);
  *(v0 + 2912) = v270;
  *(v0 + 2920) = v271;
  v272 = type metadata accessor for PresentPromptV2ActionIntent(0);
  v273 = sub_24E7C6160(&qword_27F21D5F8, type metadata accessor for PresentPromptV2ActionIntent, &protocol conformance descriptor for PresentPromptV2ActionIntent);
  *(v0 + 2928) = v272;
  *(v0 + 2936) = v273;
  v274 = sub_24E729F50();
  *(v0 + 2944) = &type metadata for ReportFriendProfilePageDidVisitIntent;
  *(v0 + 2952) = v274;
  v275 = sub_24E729FA4();
  *(v0 + 2960) = &type metadata for ReportFriendRequestsPageDidVisitIntent;
  *(v0 + 2968) = v275;
  result = sub_24E7C61A8();
  *(v0 + 2976) = &type metadata for InternalSettingsArcadeEntitlementPageIntent;
  *(v0 + 2984) = result;
  off_27F21D298 = v0;
  return result;
}

uint64_t sub_24E7C4C54()
{
  if (qword_27F20FEF8 != -1)
  {
    swift_once();
  }

  v0 = off_27F21D298;
  v1 = *(off_27F21D298 + 2);
  if (v1)
  {

    v2 = MEMORY[0x277D84F90];
    v3 = 32;
    do
    {
      v13 = *&v0[v3];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      sub_24F9284C8();
      if (swift_dynamicCast())
      {
        v5 = v14[0];
        v6 = v14[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24E6172A8(0, v2[2] + 1, 1, v2);
        }

        v8 = v2[2];
        v7 = v2[3];
        if (v8 >= v7 >> 1)
        {
          v2 = sub_24E6172A8((v7 > 1), v8 + 1, 1, v2);
        }

        v2[2] = v8 + 1;
        v9 = &v2[4 * v8];
        v9[4] = v5;
        v9[5] = v6;
        *(v9 + 3) = v13;
      }

      v3 += 16;
      --v1;
    }

    while (v1);

    if (v2[2])
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A4C0, &qword_24F94E320);
  v10 = sub_24F92CB58();
LABEL_16:
  v14[0] = v10;

  sub_24E7C512C(v11, 1, v14);

  qword_27F21D2A0 = v14[0];
  return result;
}

double static IntentKinds.table.getter()
{
  if (qword_27F20FF00 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_24E7C4F28()
{
  result = qword_27F21D2A8;
  if (!qword_27F21D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D2A8);
  }

  return result;
}

double sub_24E7C4F7C()
{
  if (qword_27F20FF00 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_24E7C4FD8()
{
  if (qword_27F20FF00 != -1)
  {
    swift_once();
  }

  v1 = qword_27F21D2A0;

  sub_24E7C54B8(v1);
}

uint64_t sub_24E7C5070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D2B0, &unk_24FA2CBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E7C50D8()
{
  result = qword_27F21D2C0;
  if (!qword_27F21D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D2C0);
  }

  return result;
}

void sub_24E7C512C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v37 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_24E76D644(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24E89AE24(v15, v6 & 1);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24F92CF88();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_24E8AEC34();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v37;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
    sub_24F92CA38();
    MEMORY[0x253050C20](39, 0xE100000000000000);
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v37 = *v6;
      v26 = *a3;

      v27 = sub_24E76D644(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_24E89AE24(v31, 1);
        v27 = sub_24E76D644(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 16 * v27) = v37;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_24E7C54B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA08, &unk_24F9CE4F0);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D2C8, &qword_24F958E48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA18, &qword_24F9CE500);
        swift_dynamicCast();
        v15 = sub_24E76D644(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
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

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_24E7C56E0()
{
  result = qword_27F21D2D0;
  if (!qword_27F21D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D2D0);
  }

  return result;
}

unint64_t sub_24E7C5734()
{
  result = qword_27F21D308;
  if (!qword_27F21D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D308);
  }

  return result;
}

unint64_t sub_24E7C5788()
{
  result = qword_27F21D310;
  if (!qword_27F21D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D310);
  }

  return result;
}

unint64_t sub_24E7C57DC()
{
  result = qword_27F21D320;
  if (!qword_27F21D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D320);
  }

  return result;
}

unint64_t sub_24E7C5830()
{
  result = qword_27F21D348;
  if (!qword_27F21D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D348);
  }

  return result;
}

unint64_t sub_24E7C5884()
{
  result = qword_27F21D388;
  if (!qword_27F21D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D388);
  }

  return result;
}

unint64_t sub_24E7C58D8()
{
  result = qword_27F21D3A0;
  if (!qword_27F21D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D3A0);
  }

  return result;
}

unint64_t sub_24E7C592C()
{
  result = qword_27F21D3E0;
  if (!qword_27F21D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D3E0);
  }

  return result;
}

unint64_t sub_24E7C5980()
{
  result = qword_27F21D3F0;
  if (!qword_27F21D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D3F0);
  }

  return result;
}

unint64_t sub_24E7C59D4()
{
  result = qword_27F21D3F8;
  if (!qword_27F21D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D3F8);
  }

  return result;
}

unint64_t sub_24E7C5A28()
{
  result = qword_27F21D400;
  if (!qword_27F21D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D400);
  }

  return result;
}

unint64_t sub_24E7C5A7C()
{
  result = qword_27F21D408;
  if (!qword_27F21D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D408);
  }

  return result;
}

unint64_t sub_24E7C5AD0()
{
  result = qword_27F21D410;
  if (!qword_27F21D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D410);
  }

  return result;
}

unint64_t sub_24E7C5B24()
{
  result = qword_27F21D418;
  if (!qword_27F21D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D418);
  }

  return result;
}

unint64_t sub_24E7C5B78()
{
  result = qword_27F21D430;
  if (!qword_27F21D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D430);
  }

  return result;
}

unint64_t sub_24E7C5BCC()
{
  result = qword_27F21D450;
  if (!qword_27F21D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D450);
  }

  return result;
}

unint64_t sub_24E7C5C20()
{
  result = qword_27F21D458;
  if (!qword_27F21D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D458);
  }

  return result;
}

unint64_t sub_24E7C5C74()
{
  result = qword_27F21D460;
  if (!qword_27F21D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D460);
  }

  return result;
}

unint64_t sub_24E7C5CC8()
{
  result = qword_27F21D468;
  if (!qword_27F21D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D468);
  }

  return result;
}

unint64_t sub_24E7C5D1C()
{
  result = qword_27F21D480;
  if (!qword_27F21D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D480);
  }

  return result;
}

unint64_t sub_24E7C5D70()
{
  result = qword_27F21D498;
  if (!qword_27F21D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D498);
  }

  return result;
}

unint64_t sub_24E7C5DC4()
{
  result = qword_27F21D4A8;
  if (!qword_27F21D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D4A8);
  }

  return result;
}

unint64_t sub_24E7C5E18()
{
  result = qword_27F21D4C8;
  if (!qword_27F21D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D4C8);
  }

  return result;
}

unint64_t sub_24E7C5E6C()
{
  result = qword_27F21D4E8;
  if (!qword_27F21D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D4E8);
  }

  return result;
}

unint64_t sub_24E7C5EC0()
{
  result = qword_27F21D518;
  if (!qword_27F21D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D518);
  }

  return result;
}

unint64_t sub_24E7C5F14()
{
  result = qword_27F21D520;
  if (!qword_27F21D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D520);
  }

  return result;
}

unint64_t sub_24E7C5F68()
{
  result = qword_27F21D568;
  if (!qword_27F21D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D568);
  }

  return result;
}

unint64_t sub_24E7C5FBC()
{
  result = qword_27F21D578;
  if (!qword_27F21D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D578);
  }

  return result;
}

unint64_t sub_24E7C6010()
{
  result = qword_27F21D5A8;
  if (!qword_27F21D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D5A8);
  }

  return result;
}

unint64_t sub_24E7C6064()
{
  result = qword_27F21D5C8;
  if (!qword_27F21D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D5C8);
  }

  return result;
}

unint64_t sub_24E7C60B8()
{
  result = qword_27F2551D0;
  if (!qword_27F2551D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2551D0);
  }

  return result;
}

unint64_t sub_24E7C610C()
{
  result = qword_27F21D5E8;
  if (!qword_27F21D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D5E8);
  }

  return result;
}

uint64_t sub_24E7C6160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E7C61A8()
{
  result = qword_27F21D600;
  if (!qword_27F21D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D600);
  }

  return result;
}

uint64_t sub_24E7C6210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E7C62E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F648();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeCardCapsuleSubtitle(uint64_t a1)
{
  result = qword_27F21D608;
  if (!qword_27F21D608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7C63E4(uint64_t a1)
{
  sub_24F91F648();
  if (v1 <= 0x3F)
  {
    sub_24E7C6468(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7C6468(uint64_t a1)
{
  if (!qword_27F21D618)
  {
    sub_24F91F648();
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21D618);
    }
  }
}

uint64_t sub_24E7C64DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v111 = a1;
  v112 = a3;
  v99 = sub_24F925D38();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v87[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = sub_24F925D58();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v5 = &v87[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F925D78();
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v87[-v13];
  v15 = sub_24F924A78();
  MEMORY[0x28223BE20](v15 - 8);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6B0, &qword_24F958F18);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v87[-v16];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D678, &qword_24F958EE8);
  MEMORY[0x28223BE20](v101);
  v104 = &v87[-v17];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D668, &qword_24F958EE0);
  MEMORY[0x28223BE20](v102);
  v107 = &v87[-v18];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D658, &qword_24F958ED8);
  MEMORY[0x28223BE20](v100);
  v108 = &v87[-v19];
  sub_24F926DF8();
  v20 = sub_24F925E28();
  v22 = v21;
  v24 = v23;
  v91 = sub_24F925C78();
  v89 = v25;
  v88 = v26;
  v93 = v27;
  sub_24E600B40(v20, v22, v24 & 1);

  sub_24F924A68();
  sub_24F924A58();
  (*(v9 + 16))(v14, v113, v8);
  sub_24F91F638();
  sub_24F91F558();
  v28 = *(v9 + 8);
  v109 = v11;
  v90 = v8;
  v110 = v9 + 8;
  v92 = v28;
  v28(v11, v8);
  (*(v97 + 104))(v95, *MEMORY[0x277CE0BB0], v99);
  sub_24F925D48();
  sub_24F925D68();
  (*(v96 + 8))(v5, v98);
  v29 = sub_24F925DD8();
  v31 = v30;
  LOBYTE(v22) = v32;
  sub_24F924A28();
  sub_24E600B40(v29, v31, v22 & 1);

  sub_24F924A58();
  sub_24F924A98();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v33 = qword_27F24F280;
  v34 = sub_24F925DE8();
  v36 = v35;
  v38 = v37;
  v39 = v88;
  v40 = v91;
  v41 = v89;
  v99 = sub_24F925C78();
  v98 = v42;
  v44 = v43;
  v46 = v45;
  sub_24E600B40(v34, v36, v38 & 1);

  sub_24E600B40(v40, v41, v39 & 1);

  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  v127 = v44 & 1;
  v126 = 0;
  v49 = sub_24F925A08();
  v50 = swift_getKeyPath();
  *&v120 = v99;
  *(&v120 + 1) = v98;
  LOBYTE(v121) = v44 & 1;
  *(&v121 + 1) = v46;
  *&v122 = KeyPath;
  *(&v122 + 1) = 1;
  LOBYTE(v123) = 0;
  *(&v123 + 1) = v48;
  *&v124 = 0x3FB999999999999ALL;
  *(&v124 + 1) = v50;
  v125 = v49;
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v119 = v49;
  v114 = v120;
  v115 = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D680, &qword_24F958EF0);
  sub_24E7C77E8();
  v51 = v103;
  sub_24F9268B8();
  sub_24E7C7970(&v120);
  LOBYTE(KeyPath) = sub_24F925868();
  sub_24F923318();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v104;
  (*(v105 + 32))(v104, v51, v106);
  v61 = v60 + *(v101 + 36);
  *v61 = KeyPath;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  LOBYTE(KeyPath) = sub_24F9257F8();
  sub_24F923318();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v107;
  sub_24E6009C8(v60, v107, &qword_27F21D678, &qword_24F958EE8);
  v71 = &v70[*(v102 + 36)];
  *v71 = KeyPath;
  *(v71 + 1) = v63;
  *(v71 + 2) = v65;
  *(v71 + 3) = v67;
  *(v71 + 4) = v69;
  v71[40] = 0;
  v72 = v108;
  v73 = &v108[*(v100 + 36)];
  v74 = *MEMORY[0x277CE0118];
  v75 = sub_24F924B38();
  (*(*(v75 - 8) + 104))(v73, v74, v75);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v76 = sub_24F926D08();

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6B8, &unk_24F958FB0);
  *&v73[*(v77 + 52)] = v76;
  *&v73[*(v77 + 56)] = 256;
  v78 = sub_24F927618();
  v80 = v79;
  v81 = &v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6A8, &qword_24F958F10) + 36)];
  *v81 = v78;
  v81[1] = v80;
  sub_24E6009C8(v70, v72, &qword_27F21D668, &qword_24F958EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  v82 = v109;
  sub_24F923808();
  sub_24E7C79D8();
  v83 = v90;
  LOBYTE(v73) = sub_24F92AF78();
  v92(v82, v83);
  if (v73)
  {
    v84 = 0.0;
  }

  else
  {
    v84 = 1.0;
  }

  v85 = v112;
  sub_24E6009C8(v72, v112, &qword_27F21D658, &qword_24F958ED8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D638, &qword_24F958ED0);
  *(v85 + *(result + 36)) = v84;
  return result;
}

uint64_t sub_24E7C6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v4 = a1 - 8;
  v18 = *(a1 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D620, &unk_24F958EC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v20 = *(v3 + *(v4 + 28));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D628, &unk_24F99E560);
  sub_24E602068(&qword_27F21D630, &qword_27F21D628, &unk_24F99E560, MEMORY[0x277D83970]);
  sub_24F9253C8();
  sub_24E7C72E0(v3, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  sub_24E7C742C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  (*(v7 + 16))(v9, v12, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24E7C7490;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D638, &qword_24F958ED0);
  sub_24E602068(&qword_27F21D640, &qword_27F21D620, &unk_24F958EC0, MEMORY[0x277CE06D8]);
  sub_24E7C7550();
  sub_24F923828();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_24E7C72E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardCapsuleSubtitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7C7344()
{
  v1 = *(type metadata accessor for ChallengeCardCapsuleSubtitle(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F648();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24E7C742C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardCapsuleSubtitle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7C7490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChallengeCardCapsuleSubtitle(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E7C64DC(a1, v6, a2);
}

uint64_t sub_24E7C7510()
{

  return swift_deallocObject();
}

unint64_t sub_24E7C7550()
{
  result = qword_27F21D648;
  if (!qword_27F21D648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D638, &qword_24F958ED0);
    sub_24E7C75DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D648);
  }

  return result;
}

unint64_t sub_24E7C75DC()
{
  result = qword_27F21D650;
  if (!qword_27F21D650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D658, &qword_24F958ED8);
    sub_24E7C7694();
    sub_24E602068(&qword_27F21D6A0, &qword_27F21D6A8, &qword_24F958F10, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D650);
  }

  return result;
}

unint64_t sub_24E7C7694()
{
  result = qword_27F21D660;
  if (!qword_27F21D660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D668, &qword_24F958EE0);
    sub_24E7C7720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D660);
  }

  return result;
}

unint64_t sub_24E7C7720()
{
  result = qword_27F21D670;
  if (!qword_27F21D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D678, &qword_24F958EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D680, &qword_24F958EF0);
    sub_24E7C77E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D670);
  }

  return result;
}

unint64_t sub_24E7C77E8()
{
  result = qword_27F21D688;
  if (!qword_27F21D688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D680, &qword_24F958EF0);
    sub_24E7C78A0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D688);
  }

  return result;
}

unint64_t sub_24E7C78A0()
{
  result = qword_27F21D690;
  if (!qword_27F21D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D698, &qword_24F958EF8);
    sub_24E67283C();
    sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D690);
  }

  return result;
}

uint64_t sub_24E7C7970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D680, &qword_24F958EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E7C79D8()
{
  result = qword_27F2363D0;
  if (!qword_27F2363D0)
  {
    sub_24F91F648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2363D0);
  }

  return result;
}

unint64_t sub_24E7C7A34()
{
  result = qword_27F21D6C0;
  if (!qword_27F21D6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D6C8, &unk_24F958FC0);
    sub_24E7C7550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D6C0);
  }

  return result;
}

unint64_t sub_24E7C7AB8()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24E7C7AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA474B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA474D0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

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

uint64_t sub_24E7C7BD8(uint64_t a1)
{
  v2 = sub_24E7C7DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7C7C14(uint64_t a1)
{
  v2 = sub_24E7C7DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryDataIntent.Filters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6D0, &qword_24F958FD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7C7DDC();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CCB8();
  if (!v2)
  {
    v11 = 1;
    sub_24F92CCB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24E7C7DDC()
{
  result = qword_27F21D6D8;
  if (!qword_27F21D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D6D8);
  }

  return result;
}

uint64_t GameLibraryDataIntent.Filters.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6E0, &qword_24F958FD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7C7DDC();
  sub_24F92D108();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_24F92CBD8();
    v13 = 1;
    v10 = sub_24F92CBD8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GameLibraryDataIntent.filters.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for GameLibraryDataIntent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for GameLibraryDataIntent(uint64_t a1)
{
  result = qword_27F21D710;
  if (!qword_27F21D710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameLibraryDataIntent.filters.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for GameLibraryDataIntent(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_24E7C814C()
{
  if (*v0)
  {
    return 0x737265746C6966;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24E7C8184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E7C825C(uint64_t a1)
{
  v2 = sub_24E7C8490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7C8298(uint64_t a1)
{
  v2 = sub_24E7C8490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryDataIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6E8, &qword_24F958FF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7C8490();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for GameLibraryDataIntent(0) + 20));
    v10[11] = 1;
    sub_24E7C84E4();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E7C8490()
{
  result = qword_27F21D6F0;
  if (!qword_27F21D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D6F0);
  }

  return result;
}

unint64_t sub_24E7C84E4()
{
  result = qword_27F21D6F8;
  if (!qword_27F21D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D6F8);
  }

  return result;
}

uint64_t GameLibraryDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D700, &qword_24F959000);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - v6;
  v8 = type metadata accessor for GameLibraryDataIntent(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 28);
  *&v10[v12] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7C8490();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v12;
  v13 = v21;
  v26 = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  v15 = v22;
  v14 = v23;
  sub_24F92CC68();
  sub_24E61C0A8(v15, v10);
  v25 = 1;
  sub_24E7C8834();
  sub_24F92CC18();
  (*(v13 + 8))(v7, v14);
  v16 = v20;
  *&v10[v19] = v24;
  sub_24E7C8888(v10, v16, type metadata accessor for GameLibraryDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E7C88F0(v10, type metadata accessor for GameLibraryDataIntent);
}

unint64_t sub_24E7C8834()
{
  result = qword_27F21D708;
  if (!qword_27F21D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D708);
  }

  return result;
}

uint64_t sub_24E7C8888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7C88F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7C89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2u)
    {
      v11 = (v10 & 0xFE) + 2147483646;
      v12 = (v11 & 0x7FFFFFFE | v10 & 1) - 1;
      if ((v11 & 0x7FFFFFFE) != 0)
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E7C8AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

void sub_24E7C8B60(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24E7C8BE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7C8BE4()
{
  if (!qword_27F21D720)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21D720);
    }
  }
}

uint64_t getEnumTagSinglePayload for GameLibraryDataIntent.Filters(unsigned __int16 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for Page.Paddings(_WORD *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E7C8DD4()
{
  result = qword_27F21D728;
  if (!qword_27F21D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D728);
  }

  return result;
}

unint64_t sub_24E7C8E2C()
{
  result = qword_27F21D730;
  if (!qword_27F21D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D730);
  }

  return result;
}

unint64_t sub_24E7C8E84()
{
  result = qword_27F21D738;
  if (!qword_27F21D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D738);
  }

  return result;
}

unint64_t sub_24E7C8EDC()
{
  result = qword_27F21D740;
  if (!qword_27F21D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D740);
  }

  return result;
}

unint64_t sub_24E7C8F34()
{
  result = qword_27F21D748;
  if (!qword_27F21D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D748);
  }

  return result;
}

unint64_t sub_24E7C8F8C()
{
  result = qword_27F21D750;
  if (!qword_27F21D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D750);
  }

  return result;
}

uint64_t sub_24E7C8FF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24E7C90C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesInvitesShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F21D758;
  if (!qword_27F21D758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7C91C0(uint64_t a1)
{
  sub_24E7C92C0(319, &qword_27F21D768, type metadata accessor for ChallengeInvite, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E7C92C0(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7C92C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E7C9324@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x73657469766E69;
  *(inited + 40) = 0xE700000000000000;
  v4 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D770, &unk_24F959420);
  v5 = sub_24E7C960C();
  *(inited + 48) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 0x4965657469766E69;
  *(inited + 96) = 0xE900000000000044;
  v6 = v1[1];
  v7 = v1[2];
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v9;
  *(inited + 104) = v6;
  *(inited + 112) = v7;
  *(inited + 144) = 0x444965676170;
  *(inited + 152) = 0xE600000000000000;
  v10 = v1[3];
  v11 = v1[4];
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  *(inited + 200) = 0x5479616C70736964;
  *(inited + 208) = 0xEB00000000657079;
  v12 = *(v1 + 40);
  *(inited + 240) = &type metadata for ChallengesShelfDisplayType;
  v13 = sub_24E7C96C0();
  *(inited + 216) = v12;
  *(inited + 248) = v13;
  *(inited + 256) = 1701667175;
  *(inited + 264) = 0xE400000000000000;
  v14 = type metadata accessor for ChallengesInvitesShelfConstructionIntent(0);
  v15 = *(v14 + 32);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 304) = sub_24E736C00();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E736938(v1 + v15, boxed_opaque_existential_1);
  strcpy((inited + 312), "displayContext");
  *(inited + 327) = -18;
  v17 = 0x676E656C6C616863;
  if (*(v1 + *(v14 + 36)))
  {
    v17 = 0x65676F5479616C70;
  }

  v18 = 0xEC00000062754865;
  if (*(v1 + *(v14 + 36)))
  {
    v18 = 0xEC00000072656874;
  }

  *(inited + 352) = MEMORY[0x277D837D0];
  *(inited + 360) = MEMORY[0x277D22580];
  *(inited + 328) = v17;
  *(inited + 336) = v18;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

unint64_t sub_24E7C960C()
{
  result = qword_27F21D778;
  if (!qword_27F21D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D770, &unk_24F959420);
    sub_24E7C9714(&qword_27F21D780, type metadata accessor for ChallengeInvite, &unk_24FA1BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D778);
  }

  return result;
}

unint64_t sub_24E7C96C0()
{
  result = qword_27F21D788;
  if (!qword_27F21D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D788);
  }

  return result;
}

uint64_t sub_24E7C9714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ChallengesSuggestedGamesShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = type metadata accessor for GSKShelf(0);
  *(v3 + 80) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  *(v3 + 88) = v5;
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 184) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_24E7C9810, 0, 0);
}

uint64_t sub_24E7C9810()
{
  *(v0 + 112) = sub_24F92B7F8();
  *(v0 + 120) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7C98A8, v2, v1);
}

uint64_t sub_24E7C98A8()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 128) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24E7C9930, 0, 0);
}

uint64_t sub_24E7C9930(uint64_t a1)
{
  *(v1 + 136) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7C99BC, v3, v2);
}

uint64_t sub_24E7C99BC()
{
  v1 = v0[16];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v0[18] = v3;

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24E7C9AF4;
  v6 = v0[8];

  return sub_24E646C58(v4, v3, v6);
}

uint64_t sub_24E7C9AF4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E7C9C6C, 0, 0);
  }
}

uint64_t sub_24E7C9C6C()
{

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_24E7C9D30;
  v2 = *(v0 + 160);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 184);

  return sub_24E647018(v5, v2, v3, v4, v7, v6);
}

uint64_t sub_24E7C9D30()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24E7C9F48;
  }

  else
  {

    v2 = sub_24E7C9E58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7C9E58()
{
  v1 = v0[11];
  v2 = v0[7];
  sub_24E614E60(v1, v0[10]);
  sub_24F928138();
  sub_24E614EC4(v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E7C9F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7C9FC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesSuggestedGamesShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24E7CA0A8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for PlayerAvatar(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24E7CA288(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for PlayerAvatar(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FriendSuggestionCard(uint64_t a1)
{
  result = qword_27F21D790;
  if (!qword_27F21D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7CA4A0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PlayerAvatar(319);
            if (v6 <= 0x3F)
            {
              sub_24E7CA5E4(319);
              if (v7 <= 0x3F)
              {
                sub_24E7CA640();
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

void sub_24E7CA5E4(uint64_t a1)
{
  if (!qword_27F21BF30)
  {
    sub_24E678D94();
    v1 = sub_24F929658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21BF30);
    }
  }
}

void sub_24E7CA640()
{
  if (!qword_27F2169A0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2169A0);
    }
  }
}

uint64_t sub_24E7CA690@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D7B0, &unk_24F9595B8);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for FriendSuggestionCard(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v46 = v15 + 40;
  sub_24E61DA68(&v47, (v15 + 40), qword_27F21B590, &unk_24F93BE30);
  v16 = *(v13 + 24);
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v43 = v16;
  v18(&v15[v16], 1, 1, v17);
  v44 = v13;
  v19 = &v15[*(v13 + 40)];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_24E61DA68(&v47, v19, qword_27F21B590, &unk_24F93BE30);
  v20 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E7CB3A0();
  v41 = v12;
  v21 = v42;
  sub_24F92D108();
  if (v21)
  {
    v23 = v43;
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_24E601704(v46, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v15[v23], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(v19, &qword_27F213EA8, &unk_24F93D030);
  }

  else
  {
    v42 = v9;
    v22 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v48;
    *v15 = v47;
    *(v15 + 1) = v24;
    *(v15 + 4) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v50 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v25 = v43;
    sub_24E61DA68(&v47, v46, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v47) = 2;
    sub_24E65CAA0();
    v26 = v42;
    sub_24F92CC68();
    v27 = v44;
    sub_24E61DA68(v26, &v15[v25], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v47) = 3;
    sub_24E7CB3F4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    v28 = v22;
    sub_24E6009C8(v38, &v15[v27[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v47) = 4;
    sub_24E7CB3F4(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v29 = v37;
    sub_24F92CC68();
    sub_24E7CB43C(v29, &v15[v27[8]], type metadata accessor for CommonCardAttributes);
    LOBYTE(v47) = 5;
    sub_24E7CB3F4(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v30 = v35;
    sub_24F92CC68();
    sub_24E7CB43C(v30, &v15[v27[9]], type metadata accessor for PlayerAvatar);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    v50 = 6;
    sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    sub_24E61DA68(&v47, v19, &qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v47) = 7;
    v31 = v40;
    LOBYTE(v30) = sub_24F92CBD8();
    (*(v28 + 8))(v41, v31);
    v15[v27[11]] = v30;
    sub_24E7CB4A4(v15, v33, type metadata accessor for FriendSuggestionCard);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_24E7CB50C(v15, type metadata accessor for FriendSuggestionCard);
  }
}

uint64_t sub_24E7CB028()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6974634165646968;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0x726174617661;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
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
}

uint64_t sub_24E7CB124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7CB684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7CB14C(uint64_t a1)
{
  v2 = sub_24E7CB3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7CB188(uint64_t a1)
{
  v2 = sub_24E7CB3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E7CB1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24E7CB2D4(uint64_t a1)
{
  *(a1 + 8) = sub_24E7CB3F4(&qword_27F21ABB8, type metadata accessor for FriendSuggestionCard, &unk_24F959574);
  result = sub_24E7CB3F4(&qword_27F21D7A0, type metadata accessor for FriendSuggestionCard, &unk_24F959530);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24E7CB3A0()
{
  result = qword_27F21D7B8;
  if (!qword_27F21D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D7B8);
  }

  return result;
}

uint64_t sub_24E7CB3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7CB43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7CB4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7CB50C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E7CB580()
{
  result = qword_27F21D7C0;
  if (!qword_27F21D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D7C0);
  }

  return result;
}

unint64_t sub_24E7CB5D8()
{
  result = qword_27F21D7C8;
  if (!qword_27F21D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D7C8);
  }

  return result;
}

unint64_t sub_24E7CB630()
{
  result = qword_27F21D7D0[0];
  if (!qword_27F21D7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F21D7D0);
  }

  return result;
}

uint64_t sub_24E7CB684(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974634165646968 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA474F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24E7CB938()
{
  result = qword_27F2163B0;
  if (!qword_27F2163B0)
  {
    type metadata accessor for UpdateChallengeDefinitionAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163B0);
  }

  return result;
}

uint64_t sub_24E7CB998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  type metadata accessor for GameActivityDraftBuilder();
  sub_24F928F28();
  sub_24E7CBB18(a1, v8);
  v9 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_24F34D7F8(v8);
  sub_24E75A0DC(v8);
  updated = type metadata accessor for UpdateChallengeDefinitionAction(0);
  sub_24E7CBB7C(a1 + *(updated + 20), v15);
  sub_24E612C80(v15, v16);
  type metadata accessor for UpdateChallengeDefinitionActionImplementation(0, a3, v11, v12);
  swift_getWitnessTable();
  v13 = sub_24F1489C4(v16, a2);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_24E7CBB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7CBB7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7CBC00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_24F923988();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D868, &qword_24F959820);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D870, &qword_24F959850);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v6;
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v12;
  return result;
}

double EnvironmentValues.pageSafeArea.getter()
{
  sub_24E7CBD14();
  sub_24F924868();
  return v1;
}

unint64_t sub_24E7CBD14()
{
  result = qword_27F21D858;
  if (!qword_27F21D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D858);
  }

  return result;
}

double sub_24E7CBD68@<D0>(_OWORD *a1@<X8>)
{
  sub_24E7CBD14();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E7CBE44@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D868, &qword_24F959820);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  *a2 = sub_24E7CC208;
  a2[1] = v10;
  return result;
}

double sub_24E7CBF7C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24E7CBF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E7CC120();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.pageSafeArea.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_24E7CBD14();
  sub_24F924868();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_24E7CC084;
}

void sub_24E7CC084(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  sub_24F924878();

  free(v1);
}

unint64_t sub_24E7CC120()
{
  result = qword_27F21D860;
  if (!qword_27F21D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D860);
  }

  return result;
}

uint64_t sub_24E7CC174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D868, &qword_24F959820);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E7CC208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D868, &qword_24F959820) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E7CBC00(v4, a1);
}

unint64_t sub_24E7CC298()
{
  result = qword_27F21D878;
  if (!qword_27F21D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D880, &qword_24F959858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D878);
  }

  return result;
}

uint64_t sub_24E7CC2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_24E7CC490;

  return MEMORY[0x28217F228](v3 + 2, updated, updated);
}

uint64_t sub_24E7CC490()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7CC784;
  }

  else
  {
    v2 = sub_24E7CC5A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7CC5A4()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v14 = v0[11];
  v7 = v0[4];
  v15 = v0[3];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  type metadata accessor for GSKShelf(0);
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v14, v1, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24E7CC784()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24E7CC7FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v69 = a3;
  v64 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v65 = *(v68 - 8);
  v63 = *(v65 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = &v51 - v5;
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  v7 = active - 8;
  v59 = *(active - 8);
  MEMORY[0x28223BE20](active);
  v58 = v8;
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v51 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8C8, &unk_24F959978);
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8B8, &qword_24F9598D8);
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v54 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8C0, &unk_24F9598E0);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v51 - v20);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_24F92C888();
  v22 = *a2;
  v23 = a2[1];

  v70 = v22;
  v71 = v23;
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA475E0);
  v24 = v70;
  v51 = v71;
  v25 = *(a2 + *(v7 + 32));
  v26 = *(v7 + 48);
  v61 = a2;
  sub_24E736938(a2 + v26, v21);
  v27 = type metadata accessor for Game(0);
  if ((*(*(v27 - 8) + 48))(v21, 1, v27) == 1)
  {

    sub_24E7D0014(v21);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *v21;
    v29 = v21[1];

    sub_24E7D0DA8(v21, type metadata accessor for Game);
  }

  type metadata accessor for ActiveChallengeShelfUpdater(0);
  v30 = swift_allocObject();
  v31 = v69;
  v30[2] = v25;
  v30[3] = v31;
  v32 = v51;
  v30[4] = v24;
  v30[5] = v32;
  v30[6] = v28;
  v30[7] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0, &qword_24F9598D0);
  v33 = v57;
  (*(v11 + 104))(v13, *MEMORY[0x277D85778], v57);

  v34 = v54;
  sub_24F92B868();
  (*(v11 + 8))(v13, v33);
  (*(v52 + 32))(v30 + OBJC_IVAR____TtC12GameStoreKitP33_B39A0E87FF53BC82E7A23912474A088227ActiveChallengeShelfUpdater_activeChallengesStream, v18, v53);
  (*(v55 + 32))(v30 + OBJC_IVAR____TtC12GameStoreKitP33_B39A0E87FF53BC82E7A23912474A088227ActiveChallengeShelfUpdater_activeChallengesContinuation, v34, v56);
  v35 = sub_24F92B858();
  v36 = *(*(v35 - 8) + 56);
  v37 = v67;
  v36(v67, 1, 1, v35);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v30;

  sub_24EA998B8(0, 0, v37, &unk_24F959990, v38);

  v36(v37, 1, 1, v35);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v30;

  sub_24EA998B8(0, 0, v37, &unk_24F9599A0, v39);

  v40 = v68;
  v41 = v64;
  sub_24F92B898();
  v36(v37, 1, 1, v35);
  v42 = v60;
  sub_24E7D0D40(v61, v60, type metadata accessor for ActiveChallengesShelfIntent);
  v43 = v65;
  v44 = v62;
  (*(v65 + 16))(v62, v41, v40);
  v45 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v46 = (v58 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (*(v43 + 80) + v46 + 8) & ~*(v43 + 80);
  v48 = (v63 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  sub_24E7D0AD4(v42, v49 + v45);
  *(v49 + v46) = v66;
  (*(v43 + 32))(v49 + v47, v44, v68);
  *(v49 + v48) = v69;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;

  sub_24F1D3DA4(0, 0, v67, &unk_24F9599B0, v49);

  return result;
}

double sub_24E7CCFE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24EA998B8(0, 0, v5, &unk_24F9599D8, v7);

  return result;
}

uint64_t sub_24E7CD0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a7;
  v8[30] = a8;
  v8[27] = a5;
  v8[28] = a6;
  v8[26] = a4;
  v9 = sub_24F91F648();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v10 = type metadata accessor for Challenge(0);
  v8[35] = v10;
  v8[36] = *(v10 - 8);
  v8[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8D0, &qword_24F9599B8);
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[41] = v12;
  v8[42] = *(v12 - 8);
  v8[43] = swift_task_alloc();
  v8[44] = type metadata accessor for ActiveChallengesShelfConstructionIntent(0);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7CD36C, 0, 0);
}

uint64_t sub_24E7CD36C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 208);
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  v5 = *(v3 + active[6]);
  *(v0 + 400) = v5;
  v6 = *(v3 + active[7]);
  *(v0 + 408) = v6;
  v18 = *(v3 + active[8]);
  *(v0 + 416) = v18;
  v7 = active[5];
  *(v0 + 568) = v7;
  v8 = *v3;
  *(v0 + 424) = *v3;
  v9 = v3[1];
  *(v0 + 432) = v9;
  v10 = active[9];
  *(v0 + 572) = v10;
  v17 = *(v3 + v10);
  v11 = *(v3 + active[11]);
  *(v0 + 580) = v11;
  v12 = active[10];
  *(v0 + 576) = v12;
  sub_24E7D0D40(v3 + v7, v1 + v2[7], type metadata accessor for Player);
  sub_24E736938(v3 + v12, v1 + v2[11]);
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v18;
  v13 = (v1 + v2[8]);
  *v13 = v8;
  v13[1] = v9;
  *(v1 + v2[9]) = v17;
  *(v1 + v2[10]) = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  *(v0 + 440) = v14;

  v15 = swift_task_alloc();
  *(v0 + 448) = v15;
  *v15 = v0;
  v15[1] = sub_24E7CD548;

  return MEMORY[0x28217F228](v0 + 64, v14, v14);
}

uint64_t sub_24E7CD548()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_24E7CD874;
  }

  else
  {
    v2 = sub_24E7CD65C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7CD65C()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  v3 = swift_task_alloc();
  v0[58] = v3;
  v4 = sub_24E7D0CF8(&qword_27F21D8D8, type metadata accessor for ActiveChallengesShelfConstructionIntent, &unk_24FA24E50);
  v0[59] = v4;
  *v3 = v0;
  v3[1] = sub_24E7CD760;
  v5 = v0[49];
  v6 = v0[46];
  v7 = v0[44];
  v8 = v0[27];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E7CD760()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_24E7CDBF4;
  }

  else
  {
    v2 = sub_24E7CD97C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7CD874(__n128 a1)
{
  sub_24E7D0DA8(*(v1 + 368), type metadata accessor for ActiveChallengesShelfConstructionIntent);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24E7CD97C()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[29];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_24E7D0DA8(v3, type metadata accessor for ActiveChallengesShelfConstructionIntent);
  sub_24E7D0D40(v2, v1, type metadata accessor for GSKShelf);
  v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v8 = *(v5 + 8);
  v0[62] = v8;
  v0[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);

  return MEMORY[0x2822009F8](sub_24E7CDA98, v7, 0);
}

uint64_t sub_24E7CDA98()
{
  sub_24F5EA95C(*(v0 + 400));

  return MEMORY[0x2822009F8](sub_24E7CDB04, 0, 0);
}

uint64_t sub_24E7CDB04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8C0, &unk_24F9598E0);
  sub_24F92B8F8();
  v0[64] = *MEMORY[0x277CBE640];
  v1 = swift_task_alloc();
  v0[65] = v1;
  *v1 = v0;
  v1[1] = sub_24E7CDD04;
  v2 = v0[38];

  return MEMORY[0x2822003E8](v0 + 24, 0, 0, v2);
}

uint64_t sub_24E7CDBF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_24E7D0DA8(v0[46], type metadata accessor for ActiveChallengesShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E7CDD04()
{

  return MEMORY[0x2822009F8](sub_24E7CDE00, 0, 0);
}

uint64_t sub_24E7CDE00()
{
  v1 = *(v0 + 192);
  *(v0 + 528) = v1;
  if (v1)
  {
    v2 = *(v0 + 576);
    v17 = *(v0 + 580);
    v3 = *(v0 + 432);
    v16 = *(v0 + 424);
    v5 = *(v0 + 408);
    v4 = *(v0 + 416);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 208);
    v9 = *(v8 + *(v0 + 572));
    sub_24E7D0D40(v8 + *(v0 + 568), v6 + v7[7], type metadata accessor for Player);
    sub_24E736938(v8 + v2, v6 + v7[11]);
    *v6 = v1;
    v6[1] = v5;
    v6[2] = v4;
    v10 = (v6 + v7[8]);
    *v10 = v16;
    v10[1] = v3;
    *(v6 + v7[9]) = v9;
    *(v6 + v7[10]) = v17;

    v11 = swift_task_alloc();
    *(v0 + 536) = v11;
    *v11 = v0;
    v11[1] = sub_24E7CE064;
    v12 = *(v0 + 440);

    return MEMORY[0x28217F228](v0 + 104, v12, v12);
  }

  else
  {
    v13 = *(v0 + 392);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    sub_24E7D0DA8(v13, type metadata accessor for GSKShelf);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_24E7CE064()
{
  *(*v1 + 544) = v0;

  if (v0)
  {

    v2 = sub_24E7CE364;
  }

  else
  {
    v2 = sub_24E7CE180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7CE180()
{
  v1 = v0[16];
  v2 = v0[17];
  __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = swift_task_alloc();
  v0[69] = v3;
  *v3 = v0;
  v3[1] = sub_24E7CE248;
  v4 = v0[59];
  v5 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[27];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E7CE248()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_24E7CEA98;
  }

  else
  {
    v2 = sub_24E7CE4AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7CE364(__n128 a1)
{
  v2 = v1[49];
  v3 = v1[39];
  v4 = v1[40];
  v5 = v1[38];
  sub_24E7D0DA8(v1[45], type metadata accessor for ActiveChallengesShelfConstructionIntent);
  (*(v3 + 8))(v4, v5);
  sub_24E7D0DA8(v2, type metadata accessor for GSKShelf);

  v6 = v1[1];

  return v6();
}

uint64_t sub_24E7CE4AC()
{
  v1 = v0[62];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[43];
  v6 = v0[41];
  v8 = v0[29];
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  sub_24E7D0DA8(v4, type metadata accessor for ActiveChallengesShelfConstructionIntent);
  sub_24E7D0D40(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);

  return MEMORY[0x2822009F8](sub_24E7CE5AC, v8, 0);
}

uint64_t sub_24E7CE5AC()
{
  v1 = v0[66];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v49 = *(v0[35] + 24);
    v50 = v0[37];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    swift_beginAccess();
    v48 = *(v3 + 72);
    v47 = v0 + 4;
    while (1)
    {
      v9 = v0[37];
      v10 = v0[34];
      v12 = v0[31];
      v11 = v0[32];
      v13 = v0[29];
      sub_24E7D0D40(v4, v9, type metadata accessor for Challenge);
      v15 = *v9;
      v14 = v9[1];
      (*(v11 + 16))(v10, v50 + v49, v12);

      sub_24E7D0DA8(v9, type metadata accessor for Challenge);
      if (*(*(v13 + 152) + 16))
      {

        sub_24E76D644(v15, v14);
        if (v16)
        {
          v17 = v0[32];

          (*(v17 + 8))(v0[34], v0[31]);
          goto LABEL_5;
        }
      }

      v51 = v4;
      v52 = v2;
      v55 = v0[64];
      v18 = v0[33];
      v19 = v0[32];
      v53 = v0[31];
      v20 = v0[29];
      sub_24F91F568();
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v23 = v15;
      v54 = v15;
      v24 = v22;
      v22[2] = v23;
      v22[3] = v14;
      v22[4] = v21;
      v25 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

      v26 = sub_24F91F578();
      v0[6] = sub_24E7D0E80;
      v0[7] = v24;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_24ECAEFC8;
      v0[5] = &block_descriptor_16;
      v27 = _Block_copy(v0 + 2);
      v28 = [v25 initWithFireDate:v26 interval:0 repeats:v27 block:{0.0, v47}];
      _Block_release(v27);

      v29 = *(v19 + 8);
      v29(v18, v53);

      v30 = [objc_opt_self() mainRunLoop];
      [v30 addTimer:v28 forMode:v55];

      swift_beginAccess();
      v31 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v20 + 152);
      v0[25] = v33;
      *(v20 + 152) = 0x8000000000000000;
      v34 = sub_24E76D644(v54, v14);
      v37 = *(v33 + 16);
      v38 = (v35 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return MEMORY[0x2822009F8](v34, v35, v36);
      }

      v41 = v35;
      if (*(v33 + 24) < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v45 = v34;
      sub_24E8AEDB4();
      v34 = v45;
      if ((v41 & 1) == 0)
      {
LABEL_16:
        v6 = v0[25];
        v6[(v34 >> 6) + 8] |= 1 << v34;
        v42 = (v6[6] + 16 * v34);
        *v42 = v54;
        v42[1] = v14;
        *(v6[7] + 8 * v34) = v31;
        v43 = v6[2];
        v39 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v39)
        {
          goto LABEL_27;
        }

        v6[2] = v44;
        goto LABEL_4;
      }

LABEL_3:
      v5 = v34;

      v6 = v0[25];
      v7 = v6[7];
      v8 = *(v7 + 8 * v5);
      *(v7 + 8 * v5) = v31;

LABEL_4:
      *(v0[29] + 152) = v6;
      swift_endAccess();

      v4 = v51;
      v2 = v52;
      v29(v0[34], v0[31]);
LABEL_5:
      v4 += v48;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }

    sub_24E89B0F0(v40, isUniquelyReferenced_nonNull_native);
    v34 = sub_24E76D644(v54, v14);
    if ((v41 & 1) != (v35 & 1))
    {

      return sub_24F92CF88();
    }

LABEL_15:
    if ((v41 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_3;
  }

LABEL_20:

  v34 = sub_24E7CEBE8;
  v35 = 0;
  v36 = 0;

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_24E7CEA98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v1 = v0[49];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  sub_24E7D0DA8(v0[45], type metadata accessor for ActiveChallengesShelfConstructionIntent);
  (*(v2 + 8))(v3, v4);
  sub_24E7D0DA8(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E7CEBE8(__n128 a1)
{
  sub_24E7D0DA8(v1[47], type metadata accessor for GSKShelf);
  v2 = swift_task_alloc();
  v1[65] = v2;
  *v2 = v1;
  v2[1] = sub_24E7CDD04;
  v3 = v1[38];

  return MEMORY[0x2822003E8](v1 + 24, 0, 0, v3);
}

uint64_t sub_24E7CECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24E7CC2FC(a1, a2, a3);
}

uint64_t sub_24E7CED7C()
{
  v1 = v0[2];
  v2 = v1[3];
  v0[3] = v2;
  v0[4] = v1[4];
  v0[5] = v1[5];
  return MEMORY[0x2822009F8](sub_24E7CEDB0, v2, 0);
}

uint64_t sub_24E7CEDB0()
{
  sub_24F5E9878(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24E7CEE1C, 0, 0);
}

uint64_t sub_24E7CEE1C()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = *(v2 + 48);
  v0[7] = *(v2 + 56);
  return MEMORY[0x2822009F8](sub_24E7CEE48, v1, 0);
}

uint64_t sub_24E7CEE48()
{
  sub_24F5EA3E0(v0[4], v0[5], v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24E7CEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E0, &unk_24F9599E0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8, &unk_24F9F7350);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F0, &unk_24F9599F0);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7CF04C, 0, 0);
}

uint64_t sub_24E7CF04C()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[21] = v2;
  v0[22] = v1[4];
  v0[23] = v1[5];
  return MEMORY[0x2822009F8](sub_24E7CF080, v2, 0);
}

uint64_t sub_24E7CF080()
{
  sub_24F5E945C(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](sub_24E7CF0F0, 0, 0);
}

uint64_t sub_24E7CF0F0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC12GameStoreKitP33_B39A0E87FF53BC82E7A23912474A088227ActiveChallengeShelfUpdater_activeChallengesContinuation;
  swift_beginAccess();
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24E7CF1F4;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24E7CF1F4()
{

  return MEMORY[0x2822009F8](sub_24E7CF2F0, 0, 0);
}

uint64_t sub_24E7CF2F0()
{
  v2 = v0[8];
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[25];
    v4 = v0[11];
    v5 = v4[2];
    v4 += 2;
    v6 = *(v5 + 16);
    swift_beginAccess();

    v7 = sub_24E7D1054(v4, v2, v1);

    v12 = *v4;
    v13 = *(*v4 + 16);
    if (v13 < v7)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v7 - v13))
      {
        v34 = v7 - v13;
        v14 = v0[11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 16) = v12;
        v35 = v3;
        if (!isUniquelyReferenced_nonNull_native || v7 > v12[3] >> 1)
        {
          v16 = v0[11];
          if (v13 <= v7)
          {
            v17 = v7;
          }

          else
          {
            v17 = v13;
          }

          v12 = sub_24E6177DC(isUniquelyReferenced_nonNull_native, v17, 1, v12);
          *(v16 + 16) = v12;
        }

        v18 = *(type metadata accessor for Challenge(0) - 8);
        v19 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        v21 = v20 * v7;
        v8 = swift_arrayDestroy();
        if (v13 == v7)
        {
          goto LABEL_25;
        }

        v9 = &v19[v20 * v13];
        v10 = v12[2] - v13;
        if (v21 < v20 * v13 || &v19[v20 * v7] >= &v9[v10 * v20])
        {
          v8 = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v20 * v13)
        {
          v8 = swift_arrayInitWithTakeBackToFront();
        }

        v25 = v12[2];
        v26 = __OFADD__(v25, v34);
        v27 = v25 + v34;
        if (!v26)
        {
          v12[2] = v27;
LABEL_25:
          v28 = v0[11];
          *(v28 + 16) = v12;
          swift_endAccess();

          v29 = *(v28 + 16);
          if (v6 != *(v29 + 16))
          {
            v30 = v0[13];
            v31 = v0[14];
            v32 = v0[12];
            v0[10] = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8B8, &qword_24F9598D8);
            sub_24F92B8C8();
            (*(v30 + 8))(v31, v32);
          }

          v0[25] = v35;
          v33 = swift_task_alloc();
          v0[26] = v33;
          *v33 = v0;
          v33[1] = sub_24E7CF1F4;
          v11 = v0[18];
          v8 = (v0 + 8);
          v9 = 0;
          v10 = 0;

          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }

LABEL_33:
        __break(1u);
        return MEMORY[0x2822003E8](v8, v9, v10, v11);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_24E7CF66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E0, &unk_24F9599E0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780, &unk_24F9FCA40);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788, &unk_24F93B040);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7CF808, 0, 0);
}

uint64_t sub_24E7CF808()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[21] = v2;
  v0[22] = v1[4];
  v0[23] = v1[5];
  v0[24] = v1[6];
  v0[25] = v1[7];
  return MEMORY[0x2822009F8](sub_24E7CF84C, v2, 0);
}

uint64_t sub_24E7CF84C()
{
  sub_24F5E9B3C(v0[22], v0[23], v0[24], v0[25], v0[17]);

  return MEMORY[0x2822009F8](sub_24E7CF8C0, 0, 0);
}

uint64_t sub_24E7CF8C0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[26] = OBJC_IVAR____TtC12GameStoreKitP33_B39A0E87FF53BC82E7A23912474A088227ActiveChallengeShelfUpdater_activeChallengesContinuation;
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24E7CF9C0;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24E7CF9C0()
{

  return MEMORY[0x2822009F8](sub_24E7CFABC, 0, 0);
}

uint64_t sub_24E7CFABC()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[13];
    v12 = v0[14];
    v7 = v0[11];
    v13 = v0[12];
    *(v7 + 16) = v2;

    sub_24E614F20(v1, v3, v2, v4, v5);
    v0[10] = *(v7 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8B8, &qword_24F9598D8);
    sub_24F92B8C8();
    (*(v6 + 8))(v12, v13);
    v8 = swift_task_alloc();
    v0[27] = v8;
    *v8 = v0;
    v8[1] = sub_24E7CF9C0;
    v9 = v0[18];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v9);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24E7CFCAC()
{

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_B39A0E87FF53BC82E7A23912474A088227ActiveChallengeShelfUpdater_activeChallengesContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8B8, &qword_24F9598D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B39A0E87FF53BC82E7A23912474A088227ActiveChallengeShelfUpdater_activeChallengesStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8C0, &unk_24F9598E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActiveChallengeShelfUpdater(uint64_t a1)
{
  result = qword_27F21D898;
  if (!qword_27F21D898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7CFE14(uint64_t a1)
{
  sub_24E7CFF44(319, &qword_27F21D8A8, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_24E7CFF44(319, &qword_27F21D8B0, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E7CFF44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0, &qword_24F9598D0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24E7D0014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D0080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E7CEEB0(a1, v4, v5, v6);
}

uint64_t sub_24E7D0134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E7CF66C(a1, v4, v5, v6);
}

uint64_t sub_24E7D01F0()
{
  v1 = v0;
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  v3 = *(*(active - 8) + 80);
  v44 = *(*(active - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v46 = *(v4 - 8);
  v47 = v4;
  v43 = *(v46 + 80);
  swift_unknownObjectRelease();
  v45 = (v3 + 32) & ~v3;
  v5 = v0 + v45;

  v6 = v0 + v45 + *(active + 20);

  v7 = type metadata accessor for Player(0);
  v8 = v7[6];
  v9 = sub_24F9289E8();
  v50 = (*(v9 - 8) + 8);
  v48 = *(v9 - 8);
  v49 = *v50;
  (*v50)(v6 + v8, v9);

  if (*(v6 + v7[9] + 8) != 1)
  {
  }

  v10 = v6 + v7[13];
  v11 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v41 = v9;
    v40 = v1;
    v12 = type metadata accessor for CallProviderConversationHandle(0);
    v13 = *(*(v12 - 8) + 48);
    if (!v13(v10, 1, v12))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v48 + 48))(v10 + v14, 1, v41))
      {
        v49(v10 + v14, v41);
      }
    }

    v15 = v10 + *(v11 + 20);
    v16 = v13(v15, 1, v12);
    v9 = v41;
    if (!v16)
    {

      v17 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v48 + 48))(v15 + v17, 1, v41))
      {
        v49(v15 + v17, v41);
      }
    }

    v1 = v40;
  }

  if (*(v6 + v7[15] + 8))
  {
  }

  v18 = v6 + v7[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v18, 1, PlayedTogetherInfo))
  {

    v20 = type metadata accessor for Game(0);
    v49(v18 + v20[18], v9);
    v21 = v20[19];
    if (!(*(v48 + 48))(v18 + v21, 1, v9))
    {
      v49(v18 + v21, v9);
    }

    v42 = v9;

    v22 = v20[21];
    v23 = sub_24F920818();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v18 + v22, 1, v23))
    {
      (*(v24 + 8))(v18 + v22, v23);
    }

    v9 = v42;
  }

  v25 = v6 + v7[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v25, 1, ChallengeInfo))
  {

    v27 = type metadata accessor for Game(0);
    v49(v25 + v27[18], v9);
    v28 = v27[19];
    if (!(*(v48 + 48))(v25 + v28, 1, v9))
    {
      v49(v25 + v28, v9);
    }

    v29 = v9;

    v30 = v27[21];
    v31 = sub_24F920818();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v9 = v29;
  }

  v33 = v5 + *(active + 40);
  v34 = type metadata accessor for Game(0);
  if (!(*(*(v34 - 1) + 48))(v33, 1, v34))
  {

    v49(v33 + v34[18], v9);
    v35 = v34[19];
    if (!(*(v48 + 48))(v33 + v35, 1, v9))
    {
      v49(v33 + v35, v9);
    }

    v36 = v34[21];
    v37 = sub_24F920818();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v33 + v36, 1, v37))
    {
      (*(v38 + 8))(v33 + v36, v37);
    }
  }

  (*(v46 + 8))(v1 + ((((v44 + v45 + 7) & 0xFFFFFFFFFFFFFFF8) + v43 + 8) & ~v43), v47);

  return swift_deallocObject();
}

uint64_t sub_24E7D0AD4(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_24E7D0B38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ActiveChallengesShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24E614970;

  return sub_24E7CD0EC(a1, v11, v12, v1 + v6, v13, v1 + v9, v14, v15);
}

uint64_t sub_24E7D0CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7D0D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7D0DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7D0E08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E7D0E40()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E7D0EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E7CED5C(a1, v4, v5, v6);
}

uint64_t sub_24E7D0F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Challenge(0) - 8);
  v9 = *(v8 + 72);
  v10 = (((*(v8 + 80) + 32) & ~*(v8 + 80)) + a1 + 8);
  while (1)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    ++v7;
    v10 = (v10 + v9);
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24E7D1054(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Challenge(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v34 - v15);
  v17 = *a1;
  result = sub_24E7D0F58(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v42 = a2;
  v36 = 0;
  if (v19)
  {
    return *(v17 + 16);
  }

  v37 = v10;
  v38 = v13;
  v35 = a1;
  v40 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v22 = (v17 + 16);
  v21 = *(v17 + 16);
  if (v20 == v21)
  {
    return v40;
  }

  v39 = a3;
  v41 = v8;
  while (v20 < v21)
  {
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v17;
    v25 = v17 + v23;
    v26 = *(v8 + 72);
    v27 = v26 * v20;
    sub_24E7D0D40(v25 + v26 * v20, v16, type metadata accessor for Challenge);
    if (*v16 == v42 && v16[1] == a3)
    {
      result = sub_24E7D0DA8(v16, type metadata accessor for Challenge);
LABEL_10:
      v8 = v41;
      v17 = v24;
      goto LABEL_11;
    }

    v29 = sub_24F92CE08();
    result = sub_24E7D0DA8(v16, type metadata accessor for Challenge);
    if (v29)
    {
      a3 = v39;
      goto LABEL_10;
    }

    v30 = v40;
    if (v20 == v40)
    {
      a3 = v39;
      v8 = v41;
      v17 = v24;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *v22;
      if (v40 >= *v22)
      {
        goto LABEL_31;
      }

      v32 = v26 * v40;
      result = sub_24E7D0D40(v25 + v26 * v40, v38, type metadata accessor for Challenge);
      if (v20 >= v31)
      {
        goto LABEL_32;
      }

      sub_24E7D0D40(v25 + v27, v37, type metadata accessor for Challenge);
      v17 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24ECDE1EC(v24);
      }

      a3 = v39;
      v8 = v41;
      v33 = v17 + v23;
      result = sub_24E7D1388(v37, v33 + v32);
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_24E7D1388(v38, v33 + v27);
      *v35 = v17;
      v30 = v40;
    }

    v40 = v30 + 1;
LABEL_11:
    ++v20;
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24E7D1388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Challenge(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InviteFriendsPageIntent.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InviteFriendsPageIntent.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InviteFriendsPageIntent(0) + 24);

  return sub_24E7D14D8(v3, a1);
}

uint64_t type metadata accessor for InviteFriendsPageIntent(uint64_t a1)
{
  result = qword_27F21D938;
  if (!qword_27F21D938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7D14D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InviteFriendsPageIntent.background.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InviteFriendsPageIntent(0) + 24);

  return sub_24E7D158C(a1, v3);
}

uint64_t sub_24E7D158C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t InviteFriendsPageIntent.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v4 = MEMORY[0x277D22580];
  v5 = *v1;
  v6 = v1[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000024FA47620;
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D22598];
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = v8;
  *(inited + 104) = v7;
  *(inited + 144) = 0x756F72676B636162;
  *(inited + 152) = 0xEA0000000000646ELL;
  v9 = *(type metadata accessor for InviteFriendsPageIntent(0) + 24);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 192) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7D14D8(v1 + v9, boxed_opaque_existential_1);

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

unint64_t sub_24E7D17FC()
{
  result = qword_27F21D900;
  if (!qword_27F21D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D8F8, &qword_24F95ADB0);
    sub_24E7D2000(&qword_27F21D908, &protocol conformance descriptor for Page.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D900);
  }

  return result;
}

unint64_t sub_24E7D189C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24E7D18FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7D248C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7D1924(uint64_t a1)
{
  v2 = sub_24E7D1F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D1960(uint64_t a1)
{
  v2 = sub_24E7D1F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InviteFriendsPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D910, &qword_24F959A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D1F44();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD18();
    type metadata accessor for InviteFriendsPageIntent(0);
    v8[13] = 2;
    type metadata accessor for Page.Background(0);
    sub_24E7D2000(&qword_27F21D920, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InviteFriendsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D928, &qword_24F959A20);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for InviteFriendsPageIntent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v15 = type metadata accessor for Page.Background(0);
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D1F44();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E7D1F98(&v12[v23]);
  }

  else
  {
    v17 = v21;
    v26 = 0;
    *v12 = sub_24F92CC28();
    *(v12 + 1) = v18;
    v25 = 1;
    v12[16] = sub_24F92CC38() & 1;
    v24 = 2;
    sub_24E7D2000(&qword_27F21D930, &protocol conformance descriptor for Page.Background);
    sub_24F92CC18();
    (*(v17 + 8))(v9, v22);
    sub_24E7D158C(v6, &v12[v23]);
    sub_24E7D2044(v12, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E7D20A8(v12);
  }
}

unint64_t sub_24E7D1F44()
{
  result = qword_27F21D918;
  if (!qword_27F21D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D918);
  }

  return result;
}

uint64_t sub_24E7D1F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D2000(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Page.Background(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7D2044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteFriendsPageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D20A8(uint64_t a1)
{
  v2 = type metadata accessor for InviteFriendsPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D2118(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7D21E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7D2298(uint64_t a1)
{
  sub_24E7D231C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E7D231C(uint64_t a1)
{
  if (!qword_27F21D948)
  {
    type metadata accessor for Page.Background(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21D948);
    }
  }
}

unint64_t sub_24E7D2388()
{
  result = qword_27F21D950;
  if (!qword_27F21D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D950);
  }

  return result;
}

unint64_t sub_24E7D23E0()
{
  result = qword_27F21D958;
  if (!qword_27F21D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D958);
  }

  return result;
}

unint64_t sub_24E7D2438()
{
  result = qword_27F21D960;
  if (!qword_27F21D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D960);
  }

  return result;
}

uint64_t sub_24E7D248C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA47620 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E7D25C4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Leaderboard(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7D2744(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Leaderboard(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardDetailHeaderShelfIntent(uint64_t a1)
{
  result = qword_27F21D968;
  if (!qword_27F21D968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7D28FC(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Leaderboard(319);
      if (v3 <= 0x3F)
      {
        sub_24E7D29C0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E7D29C0(uint64_t a1)
{
  if (!qword_27F21D978)
  {
    type metadata accessor for ChallengeDefinitionDetail(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21D978);
    }
  }
}

uint64_t sub_24E7D2A18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v25);
  v24 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v27);
  v26 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v29);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D980, &unk_24F959CE0);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = v22 - v7;
  v9 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D31A4();
  v12 = v31;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v28;
  v37 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v14;
  v22[1] = v14;
  v31 = v11;
  v36 = 1;
  sub_24E7D3314(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v15 = v6;
  sub_24F92CC68();
  v16 = v31;
  sub_24E7D31F8(v15, v31 + v9[5], type metadata accessor for Game);
  v35 = 2;
  sub_24E7D3314(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v17 = v26;
  v29 = 0;
  sub_24F92CC68();
  v18 = a1;
  v19 = v13;
  sub_24E7D31F8(v17, v16 + v9[6], type metadata accessor for Player);
  v34 = 3;
  sub_24E7D3314(&qword_27F21B488, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
  v20 = v24;
  sub_24F92CC68();
  sub_24E7D31F8(v20, v16 + v9[7], type metadata accessor for Leaderboard);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D990, &qword_24F998450);
  v33 = 4;
  sub_24E7D3260();
  sub_24F92CC68();
  (*(v19 + 8))(v8, v30);
  *(v16 + v9[8]) = v32;
  sub_24E7D335C(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24E7D33C0(v16, type metadata accessor for LeaderboardDetailHeaderShelfIntent);
}

uint64_t sub_24E7D3034()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x726579616C70;
  v4 = 0x6F6272656461656CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
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

uint64_t sub_24E7D30CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7D3538(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7D30F4(uint64_t a1)
{
  v2 = sub_24E7D31A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D3130(uint64_t a1)
{
  v2 = sub_24E7D31A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E7D31A4()
{
  result = qword_27F21D988;
  if (!qword_27F21D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D988);
  }

  return result;
}

uint64_t sub_24E7D31F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7D3260()
{
  result = qword_27F21D998;
  if (!qword_27F21D998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990, &qword_24F998450);
    sub_24E7D3314(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D998);
  }

  return result;
}

uint64_t sub_24E7D3314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7D335C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D33C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E7D3434()
{
  result = qword_27F21D9A0;
  if (!qword_27F21D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D9A0);
  }

  return result;
}

unint64_t sub_24E7D348C()
{
  result = qword_27F21D9A8;
  if (!qword_27F21D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D9A8);
  }

  return result;
}

unint64_t sub_24E7D34E4()
{
  result = qword_27F21D9B0;
  if (!qword_27F21D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D9B0);
  }

  return result;
}

uint64_t sub_24E7D3538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA41C50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t static AppStoreDeepLink.sourceApplicationFromRefBundleID(url:refBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = sub_24F91EB98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_24F91EC58();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_24F92B358() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_24F91EBE8();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E7D3B0C(v14);
LABEL_17:

    return a2;
  }

  v35 = v5;
  (*(v16 + 32))(v18, v14, v15);
  result = sub_24F91EBC8();
  if (!result)
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_17;
  }

  v20 = result;
  v31 = v18;
  v32 = v15;
  v30 = v11;
  v33 = a2;
  v34 = a3;
  v21 = v16;
  v22 = v35;
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_12:

    (*(v16 + 8))(v31, v32);
    a2 = v33;
    goto LABEL_17;
  }

  v23 = 0;
  v37 = v6 + 16;
  while (1)
  {
    if (v23 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v6 + 16))(v8, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v22);
    if (sub_24F91EB78() == 0xD000000000000011 && 0x800000024FA47640 == v24)
    {
      break;
    }

    v25 = sub_24F92CE08();

    if (v25)
    {
      goto LABEL_15;
    }

    ++v23;
    result = (*(v6 + 8))(v8, v22);
    if (v36 == v23)
    {
      goto LABEL_12;
    }
  }

LABEL_15:

  v26 = v30;
  (*(v6 + 32))(v30, v8, v22);
  v27 = sub_24F91EB88();
  v29 = v28;
  (*(v21 + 8))(v31, v32);
  (*(v6 + 8))(v26, v22);
  a2 = v33;
  if (!v29)
  {
    goto LABEL_17;
  }

  return v27;
}

uint64_t sub_24E7D3B0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D3BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA47660 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E7D3C40(uint64_t a1)
{
  v2 = sub_24E7D3E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D3C7C(uint64_t a1)
{
  v2 = sub_24E7D3E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InviteFriendsSearchPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9B8, &qword_24F959E30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D3E30();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  sub_24E7D414C(&qword_27F21D9D0, MEMORY[0x277D837D8], MEMORY[0x277D21AD0]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7D3E30()
{
  result = qword_27F21D9C0;
  if (!qword_27F21D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D9C0);
  }

  return result;
}

uint64_t InviteFriendsSearchPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9D8, &qword_24F959E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for InviteFriendsSearchPageIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D3E30();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E7D414C(&qword_27F21D9E0, MEMORY[0x277D83808], MEMORY[0x277D21AE0]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24E7D41B8(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}