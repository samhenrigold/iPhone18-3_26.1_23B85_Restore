uint64_t type metadata accessor for InvitePlayersToMultiplayerActivityAction(uint64_t a1)
{
  result = qword_27F23C298;
  if (!qword_27F23C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1F1438(uint64_t a1)
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v1 <= 0x3F)
  {
    sub_24E6D5010(319, &qword_27F2182A8, &type metadata for GameActivityDraftPlayerInfo);
    if (v2 <= 0x3F)
    {
      sub_24E6D5010(319, &qword_27F218170, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24F1F1584(319, &qword_27F23C2A8, type metadata accessor for ActivityDefinitionDetail);
        if (v4 <= 0x3F)
        {
          sub_24F1F1584(319, &qword_27F23C2B0, MEMORY[0x277D0CB18]);
          if (v5 <= 0x3F)
          {
            sub_24F928AD8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24F1F1584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F1F15D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_24F928AD8();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v37 - v7;
  v44 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v44);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C2B8, &qword_24F9D4D20);
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for InvitePlayersToMultiplayerActivityAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 36);
  v19 = type metadata accessor for ActivityDefinitionDetail(0);
  v20 = *(*(v19 - 8) + 56);
  v50 = v18;
  v20(v16 + v18, 1, 1, v19);
  v21 = v14[10];
  v22 = sub_24F920418();
  v23 = *(*(v22 - 8) + 56);
  v49 = v21;
  v23(v16 + v21, 1, 1, v22);
  v24 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F1F20CC();
  v45 = v13;
  v25 = v48;
  sub_24F92D108();
  if (v25)
  {
    v27 = v50;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v28 = v49;
    sub_24E601704(v16 + v27, &qword_27F2142A0, &unk_24F94CF90);
    return sub_24E601704(v16 + v28, &qword_27F2142B8, &unk_24F954820);
  }

  else
  {
    v48 = v19;
    v37 = v22;
    v26 = v47;
    LOBYTE(v53) = 0;
    *v16 = sub_24F92CC28();
    v16[1] = v29;
    LOBYTE(v53) = 1;
    v16[2] = sub_24F92CC28();
    v16[3] = v30;
    LOBYTE(v53) = 2;
    sub_24F1F2120(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo, &protocol conformance descriptor for GameActivityDraftGameInfo);
    sub_24F92CC68();
    sub_24ED10AA4(v9, v16 + v14[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90, &unk_24F9482A0);
    v52 = 3;
    sub_24F086C6C();
    sub_24F92CC68();
    v31 = v49;
    *v14[7] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v52 = 4;
    sub_24E7C1498();
    sub_24F92CC68();
    *v14[8] = v53;
    LOBYTE(v53) = 5;
    sub_24F1F2120(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail, &protocol conformance descriptor for ActivityDefinitionDetail);
    v32 = v43;
    v48 = 0;
    sub_24F92CC18();
    sub_24E61DA68(v32, v16 + v50, &qword_27F2142A0, &unk_24F94CF90);
    LOBYTE(v53) = 6;
    sub_24F1F2120(&qword_27F23C2C8, MEMORY[0x277D0CB18], MEMORY[0x277D0CB30]);
    v33 = v42;
    sub_24F92CC18();
    sub_24E61DA68(v33, v16 + v31, &qword_27F2142B8, &unk_24F954820);
    LOBYTE(v53) = 7;
    sub_24F1F2120(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
    v34 = v40;
    v35 = v41;
    sub_24F92CC68();
    (*(v26 + 8))(v45, v46);
    (*(v38 + 32))(v16 + v14[11], v34, v35);
    sub_24F1F2168(v16, v39);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24F1F21CC(v16, type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  }
}

unint64_t sub_24F1F1E80()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x654D6E6F69746361;
    if (v1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000012;
    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
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
    v2 = 0x7974697669746361;
    v3 = 0x6F666E49656D6167;
    if (v1 != 2)
    {
      v3 = 0x5473726579616C70;
    }

    if (*v0)
    {
      v2 = 0x5255657469766E69;
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

uint64_t sub_24F1F1FA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F1F2344(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F1F1FC8(uint64_t a1)
{
  v2 = sub_24F1F20CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1F2004(uint64_t a1)
{
  v2 = sub_24F1F20CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F1F2040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24F1F20CC()
{
  result = qword_27F23C2C0;
  if (!qword_27F23C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2C0);
  }

  return result;
}

uint64_t sub_24F1F2120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F1F2168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitePlayersToMultiplayerActivityAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1F21CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F1F2240()
{
  result = qword_27F23C2D0;
  if (!qword_27F23C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2D0);
  }

  return result;
}

unint64_t sub_24F1F2298()
{
  result = qword_27F23C2D8;
  if (!qword_27F23C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2D8);
  }

  return result;
}

unint64_t sub_24F1F22F0()
{
  result = qword_27F23C2E0;
  if (!qword_27F23C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2E0);
  }

  return result;
}

uint64_t sub_24F1F2344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5255657469766E69 && a2 == 0xE90000000000004CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5473726579616C70 && a2 == 0xEF657469766E496FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6F1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA65660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t type metadata accessor for VideoPlayer.Event(uint64_t a1)
{
  result = qword_27F23C2E8;
  if (!qword_27F23C2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1F2650(uint64_t a1)
{
  result = sub_24F1F26C4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VideoPlaybackFailure(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1F26C4()
{
  result = qword_27F23C2F8;
  if (!qword_27F23C2F8)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27F23C2F8);
  }

  return result;
}

uint64_t setStoreKitLastAppAction(adamId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_24F927E88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_24F92B858();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;

  sub_24F1F2908(0, 0, v12, &unk_24FA0A150, v15);

  return sub_24E601704(v12, &unk_27F21B570, &qword_24F93B020);
}

uint64_t sub_24F1F2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24ECAA62C(a3, v25 - v10);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t defaultStoreKitAppAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210FF8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F927E88();
  v4 = __swift_project_value_buffer(v3, qword_27F23C300);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_24F1F2C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  sub_24F928418();
  v6[29] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[30] = v10;
  *v10 = v6;
  v10[1] = sub_24F1F2D44;

  return MEMORY[0x28212C3C0](a4, a5, a6);
}

uint64_t sub_24F1F2D44()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24F1F30DC;
  }

  else
  {
    v2 = sub_24F1F2E58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1F2E58()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v0[17] = MEMORY[0x277D837D0];
  v0[14] = v3;
  v0[15] = v1;

  sub_24F9283D8();
  sub_24E601704((v0 + 14), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  v5 = sub_24F927E88();
  v0[21] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v2, v5);
  sub_24F9283D8();
  sub_24E601704((v0 + 18), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F1F30DC()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v4;
  v0[3] = v2;

  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  v6 = sub_24F927E88();
  v0[9] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v3, v6);
  sub_24F9283D8();
  sub_24E601704((v0 + 6), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  swift_getErrorValue();
  v8 = v0[22];
  v9 = v0[23];
  v0[13] = v9;
  v10 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  sub_24F9283C8();
  sub_24E601704((v0 + 10), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F1F33F0(__n128 a1)
{
  v2 = sub_24F927E88();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_24F1F34CC(__n128 a1)
{
  v1 = sub_24F927E88();
  __swift_allocate_value_buffer(v1, qword_27F23C300);
  v2 = __swift_project_value_buffer(v1, qword_27F23C300);
  v3 = *MEMORY[0x277CDCFC0];
  v4 = *(*(v1 - 8) + 104);

  return v4(v2, v3, v1);
}

uint64_t sub_24F1F3554()
{

  return swift_deallocObject();
}

uint64_t sub_24F1F358C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24E695D48(a1, v4);
}

uint64_t sub_24F1F3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1F3870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for IconRowViewModel(uint64_t a1)
{
  result = qword_27F23C318;
  if (!qword_27F23C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1F3980(uint64_t a1)
{
  sub_24E66ED3C(319);
  if (v1 <= 0x3F)
  {
    sub_24F1F3A1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F1F3A1C(uint64_t a1)
{
  if (!qword_27F23C328)
  {
    type metadata accessor for Artwork(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23C328);
    }
  }
}

unint64_t sub_24F1F3A88()
{
  result = qword_27F23C330;
  if (!qword_27F23C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C330);
  }

  return result;
}

uint64_t sub_24F1F3AE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = off_286233E70(ObjectType, &off_286233E08);
  if (!v3)
  {
    v3 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v4 = v3;
  v34 = v3;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v5 = off_27F229AB8;
  *&v29 = 0x746E6F4365676170;
  *(&v29 + 1) = 0xEB00000000747865;
  v6 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  v7 = v5[4];
  if (v7)
  {
    v8 = v5[3];
    v30 = v6;
    *&v29 = v8;
    *(&v29 + 1) = v7;
    sub_24E612B0C(&v29, &v31);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v4;
    sub_24E81DC98(&v31, v33, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v33);
    v34 = v4;
  }

  else
  {
    sub_24E98F760(v33, &v29);
    sub_24E857CC8(&v29);
    sub_24E6585F8(v33);
  }

  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer + 8);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer);
    *&v29 = 0x6C7255666572;
    *(&v29 + 1) = 0xE600000000000000;

    sub_24F92C7F8();
    v30 = v6;
    *&v29 = v11;
    *(&v29 + 1) = v10;
    sub_24E612B0C(&v29, &v31);
    v12 = v34;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v12;
    sub_24E81DC98(&v31, v33, v13);
    sub_24E6585F8(v33);
    v34 = v12;
  }

  *&v29 = 0x707041666572;
  *(&v29 + 1) = 0xE600000000000000;
  v14 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  swift_beginAccess();
  v15 = v5[20];
  if (v15 >= 3)
  {
    v16 = v5[19];
    v32 = v14;
    *&v31 = v16;
    *(&v31 + 1) = v15;
    sub_24E612B0C(&v31, &v29);

    v17 = v34;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(&v29, v33, v18);
    sub_24E6585F8(v33);
    v34 = v17;
  }

  else
  {
    sub_24E98F760(v33, &v29);
    sub_24E857CC8(&v29);
    sub_24E6585F8(v33);
  }

  *&v27 = 0x7255666552747865;
  *(&v27 + 1) = 0xE90000000000006CLL;
  v19 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  if ((v5[20] - 1) >= 2 && (v20 = v5[22]) != 0)
  {
    v21 = v5[21];
    v28 = v19;
    *&v27 = v21;
    *(&v27 + 1) = v20;
    sub_24E612B0C(&v27, v26);

    v22 = v34;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v26, &v29, v23);
    sub_24E6585F8(&v29);
    v24 = v22;
  }

  else
  {
    sub_24E98F760(&v29, &v27);
    sub_24E857CC8(&v27);
    sub_24E6585F8(&v29);
    v24 = v34;
  }

  return off_286233E78(v24, ObjectType, &off_286233E08);
}

uint64_t sub_24F1F3EA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = off_286234018(ObjectType, &off_286233FB0);
  if (!v3)
  {
    v3 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v4 = v3;
  v34 = v3;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v5 = off_27F229AB8;
  *&v29 = 0x746E6F4365676170;
  *(&v29 + 1) = 0xEB00000000747865;
  v6 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  v7 = v5[4];
  if (v7)
  {
    v8 = v5[3];
    v30 = v6;
    *&v29 = v8;
    *(&v29 + 1) = v7;
    sub_24E612B0C(&v29, &v31);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v4;
    sub_24E81DC98(&v31, v33, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v33);
    v34 = v4;
  }

  else
  {
    sub_24E98F760(v33, &v29);
    sub_24E857CC8(&v29);
    sub_24E6585F8(v33);
  }

  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_referrer + 8);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_referrer);
    *&v29 = 0x6C7255666572;
    *(&v29 + 1) = 0xE600000000000000;

    sub_24F92C7F8();
    v30 = v6;
    *&v29 = v11;
    *(&v29 + 1) = v10;
    sub_24E612B0C(&v29, &v31);
    v12 = v34;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v12;
    sub_24E81DC98(&v31, v33, v13);
    sub_24E6585F8(v33);
    v34 = v12;
  }

  *&v29 = 0x707041666572;
  *(&v29 + 1) = 0xE600000000000000;
  v14 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  swift_beginAccess();
  v15 = v5[20];
  if (v15 >= 3)
  {
    v16 = v5[19];
    v32 = v14;
    *&v31 = v16;
    *(&v31 + 1) = v15;
    sub_24E612B0C(&v31, &v29);

    v17 = v34;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(&v29, v33, v18);
    sub_24E6585F8(v33);
    v34 = v17;
  }

  else
  {
    sub_24E98F760(v33, &v29);
    sub_24E857CC8(&v29);
    sub_24E6585F8(v33);
  }

  *&v27 = 0x7255666552747865;
  *(&v27 + 1) = 0xE90000000000006CLL;
  v19 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  if ((v5[20] - 1) >= 2 && (v20 = v5[22]) != 0)
  {
    v21 = v5[21];
    v28 = v19;
    *&v27 = v21;
    *(&v27 + 1) = v20;
    sub_24E612B0C(&v27, v26);

    v22 = v34;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v26, &v29, v23);
    sub_24E6585F8(&v29);
    v24 = v22;
  }

  else
  {
    sub_24E98F760(&v29, &v27);
    sub_24E857CC8(&v27);
    sub_24E6585F8(&v29);
    v24 = v34;
  }

  return off_286234020(v24, ObjectType, &off_286233FB0);
}

Swift::Void __swiftcall DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 104))();
  if (!v4)
  {
    v4 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v5 = v4;
  v36 = v4;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v6 = off_27F229AB8;
  *&v31 = 0x746E6F4365676170;
  *(&v31 + 1) = 0xEB00000000747865;
  v7 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  v8 = v6[4];
  if (v8)
  {
    v9 = v6[3];
    v32 = v7;
    *&v31 = v9;
    *(&v31 + 1) = v8;
    sub_24E612B0C(&v31, &v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v5;
    sub_24E81DC98(&v33, v35, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v35);
    v36 = v5;
  }

  else
  {
    sub_24E98F760(v35, &v31);
    sub_24E857CC8(&v31);
    sub_24E6585F8(v35);
  }

  v11 = (*(v2 + 24))(v3, v2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    *&v31 = 0x6C7255666572;
    *(&v31 + 1) = 0xE600000000000000;
    sub_24F92C7F8();
    v32 = v7;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    sub_24E612B0C(&v31, &v33);
    v15 = v36;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v15;
    sub_24E81DC98(&v33, v35, v16);
    sub_24E6585F8(v35);
    v36 = v15;
  }

  *&v31 = 0x707041666572;
  *(&v31 + 1) = 0xE600000000000000;
  v17 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  swift_beginAccess();
  v18 = v6[20];
  if (v18 >= 3)
  {
    v19 = v6[19];
    v34 = v17;
    *&v33 = v19;
    *(&v33 + 1) = v18;
    sub_24E612B0C(&v33, &v31);

    v20 = v36;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(&v31, v35, v21);
    sub_24E6585F8(v35);
    v36 = v20;
  }

  else
  {
    sub_24E98F760(v35, &v31);
    sub_24E857CC8(&v31);
    sub_24E6585F8(v35);
  }

  *&v29 = 0x7255666552747865;
  *(&v29 + 1) = 0xE90000000000006CLL;
  v22 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  if ((v6[20] - 1) >= 2 && (v23 = v6[22]) != 0)
  {
    v24 = v6[21];
    v30 = v22;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    sub_24E612B0C(&v29, v28);

    v25 = v36;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v28, &v31, v26);
    sub_24E6585F8(&v31);
    v27 = v25;
  }

  else
  {
    sub_24E98F760(&v31, &v29);
    sub_24E857CC8(&v29);
    sub_24E6585F8(&v31);
    v27 = v36;
  }

  (*(v2 + 112))(v27, v3, v2);
}

void DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 80))(a3, a4);
  if (v8)
  {
    v10 = v9;
    v15 = v8;
    ObjectType = swift_getObjectType();
    v12 = (*(a4 + 16))(a3, a4);
    [v15 bounds];
    (*(v10 + 8))(a1, a2, v12, ObjectType, v10, v13, v14);

    (*(a4 + 144))(a3, a4);
  }
}

void sub_24F1F47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = &v6[*a5];
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    v14 = *&v6[*a6];
    v15 = v11;
    [v15 bounds];
    (*(v12 + 8))(a1, a2, v14, ObjectType, v12, v16, v17);
    [v6 reloadContentViewImpressionItems];
  }
}

uint64_t HeroCarouselItem.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HeroCarouselItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HeroCarouselItem.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v104 = sub_24F9285B8();
  v93 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v80 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v80 - v12;
  v13 = sub_24F91F6B8();
  v95 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v80 - v23;
  *(v3 + 112) = 0u;
  *(v3 + 144) = 0;
  v87 = v3 + 112;
  *(v3 + 128) = 0u;
  v96 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v89 = v16;
  v82 = v10;
  if (v26)
  {
    v102 = v25;
    v103 = v26;
    sub_24F92C7F8();
    v27 = *(v17 + 8);
    v91 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v24;
    v29 = v16;
  }

  else
  {
    sub_24F91F6A8();
    v30 = sub_24F91F668();
    v31 = v16;
    v33 = v32;
    (*(v95 + 8))(v15, v13);
    v102 = v30;
    v103 = v33;
    sub_24F92C7F8();
    v27 = *(v17 + 8);
    v91 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v24;
    v29 = v31;
    v10 = v82;
  }

  v94 = v27;
  v27(v28, v29);
  v34 = v99;
  *(v3 + 152) = v98;
  *(v3 + 168) = v34;
  *(v3 + 184) = v100;
  sub_24F929608();
  sub_24F928398();
  v35 = v92;
  v90 = v3;
  v36 = v21;
  v38 = v93 + 16;
  v37 = *(v93 + 16);
  v39 = v10;
  v37(v10, v92, v104);
  v40 = v83;
  sub_24F929548();
  v81 = OBJC_IVAR____TtC12GameStoreKit16HeroCarouselItem_impressionMetrics;
  sub_24E65E0D4(v40, v3 + OBJC_IVAR____TtC12GameStoreKit16HeroCarouselItem_impressionMetrics);
  v41 = v97;
  v42 = v104;
  v37(v97, v35, v104);
  v95 = v38;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v37(v39, v41, v42);
  v43 = v39;
  sub_24F1F5DD4(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v44 = v90;
  *(v90 + 16) = v98;
  type metadata accessor for Video(0);
  sub_24F928398();
  v45 = v39;
  v46 = v97;
  v47 = v104;
  v37(v45, v97, v104);
  sub_24F1F5DD4(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  *(v44 + 24) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
  v48 = v96;
  sub_24F928398();
  v37(v43, v46, v47);
  v88 = v37;
  sub_24E705AFC();
  sub_24F929548();
  *(v44 + 32) = v98;
  type metadata accessor for HeroCarouselItemOverlay(0);
  sub_24F928398();
  v49 = v97;
  v37(v43, v97, v47);
  sub_24F1F5DD4(&qword_27F23C338, type metadata accessor for HeroCarouselItemOverlay, &protocol conformance descriptor for HeroCarouselItemOverlay);
  v50 = v48;
  v51 = v47;
  v52 = v49;
  sub_24F929548();
  v53 = v90;
  *(v90 + 40) = v98;
  sub_24F928398();
  v54 = JSONObject.appStoreColor.getter();
  v55 = v89;
  v94(v36, v89);
  v56 = v53;
  *(v53 + 48) = v54;
  v57 = v84;
  sub_24F928398();
  v58 = v85;
  v88(v85, v52, v51);
  v59 = v86;
  sub_24EE5B05C(v57, v58, &v98);
  if (v59)
  {
    v60 = *(v93 + 8);
    v61 = v104;
    v60(v92, v104);
    v94(v50, v55);
    v60(v52, v61);

    sub_24E601704(v87 + 8, &qword_27F2129B0, &unk_24F945320);
    sub_24E6585F8(v53 + 152);
    sub_24E601704(v53 + v81, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for HeroCarouselItem(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v86 = 0;
    v62 = v100;
    v63 = v101;
    v64 = v99;
    *(v53 + 56) = v98;
    *(v53 + 72) = v64;
    *(v53 + 88) = v62;
    *(v53 + 96) = v63;
    sub_24F928398();
    v88(v82, v52, v104);
    sub_24E951DC0();
    sub_24F929548();
    v65 = v98 | ((WORD2(v98) | (BYTE6(v98) << 16)) << 32);
    if (v98 == 2)
    {
      v66 = v94;
      if (qword_27F2110F8 != -1)
      {
        swift_once();
      }

      LOBYTE(v65) = dword_27F23E728;
      LOBYTE(v67) = BYTE1(dword_27F23E728);
      LOBYTE(v68) = BYTE2(dword_27F23E728);
      LOBYTE(v69) = HIBYTE(dword_27F23E728);
      LOBYTE(v70) = byte_27F23E72C;
      LOBYTE(v71) = byte_27F23E72D;
      LOBYTE(v72) = byte_27F23E72E;
    }

    else
    {
      v67 = (v65 >> 8) & 1;
      v68 = (v65 >> 16) & 1;
      v69 = (v65 >> 24) & 1;
      v70 = HIDWORD(v65) & 1;
      v71 = (v65 >> 40) & 1;
      v72 = HIWORD(v65) & 1;
      v66 = v94;
    }

    v94 = v66;
    *(v53 + 97) = v65 & 1;
    *(v53 + 98) = v67;
    *(v53 + 99) = v68;
    *(v53 + 100) = v69;
    *(v53 + 101) = v70;
    *(v53 + 102) = v71;
    *(v53 + 103) = v72;
    sub_24F928398();
    v73 = sub_24F928278();
    v74 = v89;
    v66(v36, v89);
    *(v56 + 104) = v73;
    type metadata accessor for Action(0);
    sub_24F928398();
    v75 = v97;
    v95 = static Action.tryToMakeInstance(byDeserializing:using:)(v36, v97);
    v76 = *(v93 + 8);
    v77 = v104;
    v76(v92, v104);
    v78 = v94;
    v94(v50, v74);
    v78(v36, v74);
    v76(v75, v77);
    swift_beginAccess();
    *(v56 + 112) = v95;
  }

  return v56;
}

uint64_t type metadata accessor for HeroCarouselItem(uint64_t a1)
{
  result = qword_27F23C348;
  if (!qword_27F23C348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *HeroCarouselItem.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_24F1F5648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 96);
  *(a2 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

void *sub_24F1F56AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a1 + 40);
  swift_beginAccess();
  v14 = *(v7 + 64);
  v15 = *(v7 + 56);
  v9 = *(v7 + 72);
  v10 = *(v7 + 80);
  v13 = *(v7 + 88);
  *(v7 + 56) = v2;
  *(v7 + 64) = v3;
  *(v7 + 72) = v4;
  *(v7 + 80) = v5;
  *(v7 + 88) = v6;
  v11 = *(v7 + 96);
  *(v7 + 96) = v8;
  sub_24ED21BB0(v2, v3, v4, v5, v6, v8);
  return sub_24EF43964(v15, v14, v9, v10, v13, v11);
}

id sub_24F1F5774@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v1 + 96);
  *(a1 + 40) = v8;
  return sub_24ED21BB0(v3, v4, v5, v6, v7, v8);
}

void HeroCarouselItem.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[98];
  v3 = v1[99];
  v4 = v1[100];
  v5 = v1[101];
  v6 = v1[102];
  v7 = v1[103];
  *a1 = v1[97];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

double sub_24F1F5818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;

  return result;
}

double sub_24F1F58B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;

  return result;
}

uint64_t sub_24F1F5948(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 120);
  return swift_endAccess();
}

uint64_t sub_24F1F5A0C(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t HeroCarouselItem.deinit()
{

  sub_24EF43964(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  sub_24E601704(v0 + 120, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 152);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16HeroCarouselItem_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t HeroCarouselItem.__deallocating_deinit()
{
  HeroCarouselItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F1F5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HeroCarouselItem(0);
  v7 = swift_allocObject();
  result = HeroCarouselItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1F5CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 120, a1, &qword_27F2129B0, &unk_24F945320);
}

void sub_24F1F5D10(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 98);
  v3 = *(*v1 + 99);
  v4 = *(*v1 + 100);
  v5 = *(*v1 + 101);
  v6 = *(*v1 + 102);
  v7 = *(*v1 + 103);
  *a1 = *(*v1 + 97);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_24F1F5DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F1F5E24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24F1F5E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 120, a2, &qword_27F2129B0, &unk_24F945320);
}

void sub_24F1F5EDC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F1F60F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E861E6C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_24F1F7AAC(v8, a2);
  return sub_24F92C958();
}

GameStoreKit::TodayCardArtworkSizedLayoutMetrics::Priority_optional __swiftcall TodayCardArtworkSizedLayoutMetrics.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.Priority.rawValue.getter()
{
  v1 = 0x6469576172747865;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t sub_24F1F6220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6469576172747865;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1768843629;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6469576172747865;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1768843629;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1F6314()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1F63AC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1F6430()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1F64D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6469576172747865;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1768843629;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F1F6530()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1F6610(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1F66DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F1F67B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F1F94F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F1F67E8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574756C6F736261;
  v4 = 0xEF68746469576C61;
  if (*v1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA43100;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697463617266;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.LayoutSize.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v62 = a2;
  v4 = sub_24F9285B8();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = a1;
  sub_24F928398();
  sub_24F1F6E28();
  v25 = v59;
  sub_24F928218();
  if (v25)
  {
    (*(v60 + 8))(v62, v61);
    v26 = *(v7 + 8);
    v26(a1, v6);
    return (v26)(v23, v6);
  }

  else
  {
    v55 = v17;
    v59 = *(v7 + 8);
    v59(v23, v6);
    v28 = v64;
    if (v64 > 1u)
    {
      v56 = 0;
      v34 = v58;
      if (v64 == 2)
      {
        sub_24F928398();
        v35 = sub_24F928308();
        v37 = v36;
        (*(v60 + 8))(v62, v61);
        v38 = v59;
        v59(v24, v6);
        result = v38(v14, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v37 & 1) == 0)
        {
          v53 = v35;
        }
      }

      else
      {
        sub_24F928398();
        v55 = sub_24F928308();
        v63 = v44;
        v45 = v59;
        v59(v11, v6);
        v46 = v57;
        sub_24F928398();
        v47 = sub_24F928308();
        v49 = v48;
        (*(v60 + 8))(v62, v61);
        v45(v24, v6);
        result = (v45)(v46, v6);
        v54 = 0x3FF0000000000000;
        v53 = v55;
        if (v63)
        {
          v53 = 0x3FF0000000000000;
        }

        if ((v49 & 1) == 0)
        {
          v54 = v47;
        }
      }
    }

    else
    {
      if (v64)
      {
        v39 = v55;
        sub_24F928398();
        v40 = sub_24F928308();
        v42 = v41;
        (*(v60 + 8))(v62, v61);
        v43 = v59;
        v59(v24, v6);
        result = v43(v39, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v42 & 1) == 0)
        {
          v53 = v40;
        }
      }

      else
      {
        v57 = (v7 + 8);
        v29 = v20;
        (*(v7 + 16))(v20, a1, v6);
        v31 = v60;
        v30 = v61;
        v32 = v56;
        v33 = v62;
        (*(v60 + 16))(v56, v62, v61);
        v50 = sub_24EE356E4(v29, v32);
        v52 = v51;
        (*(v31 + 8))(v33, v30);
        result = (v59)(a1, v6);
        v53 = *&v50;
        v54 = v52;
      }

      v34 = v58;
    }

    *v34 = v53;
    *(v34 + 8) = v54;
    *(v34 + 16) = v28;
  }

  return result;
}

unint64_t sub_24F1F6E28()
{
  result = qword_27F23C358;
  if (!qword_27F23C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C358);
  }

  return result;
}

double sub_24F1F6E94(uint64_t a1)
{
  if (qword_27F210808 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v3 = xmmword_27F39CD70;
  v2 = *&qword_27F39CD80;
  *(v1 + 40) = *&qword_27F39CD80;
  v4 = xmmword_27F39CD90;
  v5 = *&qword_27F39CDA0;
  *(v1 + 56) = xmmword_27F39CD90;
  *(v1 + 72) = v5;
  v6 = xmmword_27F39CDB0;
  *(v1 + 88) = xmmword_27F39CDB0;
  *(v1 + 24) = v3;
  *(v1 + 120) = v2;
  *(v1 + 136) = v4;
  *(v1 + 152) = v5;
  *(v1 + 168) = v6;
  *(v1 + 104) = v3;
  result = 0.0;
  *(v1 + 248) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 264) = 1;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 1;
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
  *(v1 + 376) = -1;
  *(v1 + 384) = 0;
  *(v1 + 392) = 0;
  *(v1 + 400) = -1;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 513;
  qword_27F39DD48 = v1;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.__allocating_init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v21 = swift_allocObject();
  v22 = *(a5 + 16);
  v23 = *(a6 + 16);
  v24 = *a13;
  *(v21 + 16) = a9;
  v25 = *a1;
  *(v21 + 40) = a1[1];
  v26 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v26;
  *(v21 + 88) = a1[4];
  *(v21 + 24) = v25;
  v27 = a2[1];
  *(v21 + 104) = *a2;
  v28 = a2[2];
  v29 = a2[3];
  *(v21 + 168) = a2[4];
  *(v21 + 152) = v29;
  *(v21 + 136) = v28;
  *(v21 + 120) = v27;
  v30 = *(a3 + 48);
  *(v21 + 216) = *(a3 + 32);
  *(v21 + 232) = v30;
  *(v21 + 248) = *(a3 + 64);
  *(v21 + 264) = *(a3 + 80);
  v31 = *(a3 + 16);
  *(v21 + 184) = *a3;
  *(v21 + 200) = v31;
  v32 = *(a4 + 16);
  *(v21 + 272) = *a4;
  *(v21 + 288) = v32;
  *(v21 + 352) = *(a4 + 80);
  v33 = *(a4 + 64);
  *(v21 + 320) = *(a4 + 48);
  *(v21 + 336) = v33;
  *(v21 + 304) = *(a4 + 32);
  *(v21 + 360) = *a5;
  *(v21 + 376) = v22;
  *(v21 + 384) = *a6;
  *(v21 + 400) = v23;
  result = *a7;
  v35 = *a8;
  *(v21 + 408) = *a7;
  *(v21 + 424) = v35;
  *(v21 + 440) = a10;
  *(v21 + 448) = a11;
  *(v21 + 456) = a12 & 1;
  *(v21 + 457) = v24;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v14 = *(a5 + 16);
  v15 = *(a6 + 16);
  v16 = *a13;
  *(v13 + 16) = a9;
  v17 = *a1;
  *(v13 + 40) = a1[1];
  v18 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v18;
  *(v13 + 88) = a1[4];
  *(v13 + 24) = v17;
  v19 = a2[1];
  *(v13 + 104) = *a2;
  v20 = a2[2];
  v21 = a2[3];
  *(v13 + 168) = a2[4];
  *(v13 + 152) = v21;
  *(v13 + 136) = v20;
  *(v13 + 120) = v19;
  v22 = *(a3 + 48);
  *(v13 + 216) = *(a3 + 32);
  *(v13 + 232) = v22;
  *(v13 + 248) = *(a3 + 64);
  *(v13 + 264) = *(a3 + 80);
  v23 = *(a3 + 16);
  *(v13 + 184) = *a3;
  *(v13 + 200) = v23;
  v24 = *(a4 + 16);
  *(v13 + 272) = *a4;
  *(v13 + 288) = v24;
  *(v13 + 352) = *(a4 + 80);
  v25 = *(a4 + 64);
  *(v13 + 320) = *(a4 + 48);
  *(v13 + 336) = v25;
  *(v13 + 304) = *(a4 + 32);
  *(v13 + 360) = *a5;
  *(v13 + 376) = v14;
  *(v13 + 384) = *a6;
  *(v13 + 400) = v15;
  v26 = *a8;
  *(v13 + 408) = *a7;
  *(v13 + 424) = v26;
  *(v13 + 440) = a10;
  *(v13 + 448) = a11;
  *(v13 + 456) = a12 & 1;
  *(v13 + 457) = v16;
  return v13;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 168);
  *a1 = *(v1 + 104);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = *(v1 + 264);
  result = *(v1 + 184);
  v4 = *(v1 + 200);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  *(a1 + 32) = *(v1 + 304);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 336);
  *(a1 + 80) = *(v1 + 352);
  result = *(v1 + 272);
  v4 = *(v1 + 288);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.collapsedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 376);
  result = *(v1 + 360);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.expandedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[25].n128_u8[0];
  result = v1[24];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.layout(for:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 layoutDirection];
  if (sub_24F92BF98())
  {
    if (v4 == 1)
    {
      v5 = (*(v2 + 352) & 1) == 0;
      v6 = 272;
      v7 = 104;
    }

    else
    {
      v5 = (*(v2 + 264) & 1) == 0;
      v6 = 184;
      v7 = 24;
    }

    if (!v5)
    {
      v6 = v7;
    }
  }

  else
  {
    v6 = 24;
    if (v4 == 1)
    {
      v6 = 104;
    }
  }

  v8 = (v2 + v6);
  result = v8[2];
  v13 = v8[3];
  v10 = v8[4];
  v11 = *v8;
  v12 = v8[1];
  *(a2 + 32) = result;
  *(a2 + 48) = v13;
  *(a2 + 64) = v10;
  *a2 = v11;
  *(a2 + 16) = v12;
  return result;
}

double TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)@<D0>(void *a1@<X8>)
{
  v3 = sub_24F92BF88();
  v4 = (v3 & 1) == 0;
  v5 = 408;
  v6 = 416;
  if (v3)
  {
    v6 = 432;
  }

  v7 = *(v1 + v6);
  if (!v4)
  {
    v5 = 424;
  }

  *a1 = *(v1 + v5);
  a1[1] = v7;

  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.deinit()
{

  return v0;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_24F1F7464(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  sub_24F1F8B20(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

double Array<A>.bestArtworkLayout(for:prioritizing:traitCollection:)@<D0>(char *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(&v8, a5, a3);
  TodayCardArtworkSizedLayoutMetrics.layout(for:)(a2, a4);

  return result;
}

uint64_t Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(unsigned __int8 *a1, double a2, unint64_t a3)
{
  v5 = *a1;

  v15 = sub_24EC4E164(v6, a3);
  sub_24F1F60F0(&v15, v5);
  v7 = v15;
  v8 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
  if (!v8)
  {
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

LABEL_11:
    v9 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!sub_24F92C738())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x253052270](0, v7);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(v7 + 16))
    {
      goto LABEL_32;
    }

    v9 = *(v7 + 32);

    if (!v8)
    {
LABEL_15:
      v10 = *(v7 + 16);
      if (v10)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

LABEL_12:
  v10 = sub_24F92C738();
  if (v10)
  {
LABEL_16:
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253052270](v11, v7);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          swift_once();
LABEL_28:
          v9 = qword_27F39DD48;

          return v9;
        }

        v12 = *(v7 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }
      }

      if (*(v12 + 16) >= a2)
      {

        return v12;
      }

      ++v11;
    }

    while (v13 != v10);
  }

LABEL_26:

  if (!v9)
  {
    if (qword_27F211000 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  return v9;
}

BOOL sub_24F1F76F4(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  v4 = 0xE900000000000065;
  v5 = *a1;
  if (*(*a1 + 457))
  {
    if (*(*a1 + 457) == 1)
    {
      v6 = 0x6469576172747865;
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xE400000000000000;
      v6 = 1701736302;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1768843629;
  }

  v8 = *a2;
  v9 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v10 = 0x6469576172747865;
    }

    else
    {
      v10 = 1701736302;
    }

    if (v9 == 1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    if (v6 != v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v6 != 1768843629)
    {
      goto LABEL_18;
    }
  }

  if (v7 == v11)
  {

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_24F92CE08();

  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (!*(v8 + 457))
  {
    v14 = 0xE400000000000000;
    v13 = 1768843629;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (*(v8 + 457) != 1)
  {
    v14 = 0xE400000000000000;
    v13 = 1701736302;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

LABEL_24:
    if (v15 == 1)
    {
      v16 = 0x6469576172747865;
    }

    else
    {
      v16 = 1701736302;
    }

    if (v15 == 1)
    {
      v17 = 0xE900000000000065;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    if (v13 != v16)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v13 = 0x6469576172747865;
  v14 = 0xE900000000000065;
  v15 = a3;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_33:
  v17 = 0xE400000000000000;
  if (v13 != 1768843629)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v14 == v17)
  {

    goto LABEL_37;
  }

LABEL_36:
  v18 = sub_24F92CE08();

  if (v18)
  {
LABEL_37:
    if (*(v8 + 457))
    {
      if (*(v8 + 457) == 1)
      {
        v19 = 0x6469576172747865;
        v20 = 0xE900000000000065;
        v21 = a3;
        if (!a3)
        {
LABEL_51:
          v23 = 0xE400000000000000;
          if (v19 != 1768843629)
          {
            goto LABEL_54;
          }

LABEL_52:
          if (v20 == v23)
          {

            goto LABEL_55;
          }

LABEL_54:
          v24 = sub_24F92CE08();

          if ((v24 & 1) == 0)
          {
            return *(v5 + 16) <= *(v8 + 16);
          }

LABEL_55:
          if (*(v5 + 457))
          {
            if (*(v5 + 457) == 1)
            {
              v25 = 0x6469576172747865;
              v26 = 0xE900000000000065;
              v27 = a3;
              if (!a3)
              {
LABEL_64:
                v4 = 0xE400000000000000;
                if (v25 != 1768843629)
                {
LABEL_69:
                  v28 = sub_24F92CE08();

                  result = 0;
                  if ((v28 & 1) == 0)
                  {
                    return result;
                  }

                  return *(v5 + 16) <= *(v8 + 16);
                }

                goto LABEL_67;
              }
            }

            else
            {
              v26 = 0xE400000000000000;
              v25 = 1701736302;
              v27 = a3;
              if (!a3)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
            v26 = 0xE400000000000000;
            v25 = 1768843629;
            v27 = a3;
            if (!a3)
            {
              goto LABEL_64;
            }
          }

          if (v27 == 1)
          {
            if (v25 != 0x6469576172747865)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v4 = 0xE400000000000000;
            if (v25 != 1701736302)
            {
              goto LABEL_69;
            }
          }

LABEL_67:
          if (v26 != v4)
          {
            goto LABEL_69;
          }

          return *(v5 + 16) <= *(v8 + 16);
        }
      }

      else
      {
        v20 = 0xE400000000000000;
        v19 = 1701736302;
        v21 = a3;
        if (!a3)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v20 = 0xE400000000000000;
      v19 = 1768843629;
      v21 = a3;
      if (!a3)
      {
        goto LABEL_51;
      }
    }

    if (v21 == 1)
    {
      v22 = 0x6469576172747865;
    }

    else
    {
      v22 = 1701736302;
    }

    if (v21 == 1)
    {
      v23 = 0xE900000000000065;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v19 != v22)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  return 1;
}

void sub_24F1F7AAC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[1];
  v5 = sub_24F92CD78();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
        v8 = sub_24F92B618();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_24F1F7CB0(v10, v11, a1, v6, v2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_24F1F7BB8(0, v4, 1, a1, v2);
  }
}

void sub_24F1F7BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v16 = v10;
    v17 = v9;
    while (1)
    {
      v19 = v11;
      v18 = *v9;

      v12 = sub_24F1F76F4(&v19, &v18, a5);

      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v13 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v13;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v17 + 1;
      v10 = v16 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_24F1F7CB0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v5;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_164:
    v6 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_166;
    }

    goto LABEL_204;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      v123 = *(*a3 + 8 * v10);
      v124 = v15;

      v121 = sub_24F1F76F4(&v124, &v123, a5);
      if (v7)
      {

        return;
      }

      v112 = v11;

      v16 = v12 + 2;
      v110 = v12;
      v17 = 8 * v12;
      v6 = v14 + v17 + 16;
      while (v9 != v16)
      {
        v18 = *v6;
        v123 = *(v6 - 8);
        v124 = v18;

        v19 = sub_24F1F76F4(&v124, &v123, a5);

        ++v16;
        v6 += 8;
        if ((v121 ^ v19))
        {
          v9 = v16 - 1;
          break;
        }
      }

      v11 = v112;
      if (v121)
      {
        v20 = v110;
        if (v9 < v110)
        {
          goto LABEL_198;
        }

        if (v110 < v9)
        {
          v21 = 8 * v9 - 8;
          v22 = v9;
          while (1)
          {
            if (v20 != --v22)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_202;
              }

              v24 = *(v23 + v17);
              *(v23 + v17) = *(v23 + v21);
              *(v23 + v21) = v24;
            }

            ++v20;
            v21 -= 8;
            v17 += 8;
            if (v20 >= v22)
            {
              goto LABEL_18;
            }
          }
        }

        v13 = v9;
        v12 = v110;
      }

      else
      {
LABEL_18:
        v13 = v9;
        v12 = v110;
      }
    }

    v25 = a3[1];
    if (v13 >= v25)
    {
      goto LABEL_29;
    }

    v26 = v13;
    v43 = __OFSUB__(v13, v12);
    v27 = v13 - v12;
    if (v43)
    {
      goto LABEL_194;
    }

    if (v27 >= a4)
    {
LABEL_28:
      v13 = v26;
LABEL_29:
      if (v13 < v12)
      {
        goto LABEL_193;
      }

      goto LABEL_30;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      return;
    }

    if (v12 + a4 < v25)
    {
      v25 = v12 + a4;
    }

    if (v25 < v12)
    {
      goto LABEL_197;
    }

    if (v26 == v25)
    {
      goto LABEL_28;
    }

    v115 = v25;
    v111 = v12;
    v113 = v11;
    v108 = v7;
    v122 = *a3;
    v75 = (*a3 + 8 * v26 - 8);
    v76 = v12 - v26;
    while (2)
    {
      v117 = v75;
      v119 = v26;
      v77 = *(v122 + 8 * v26);
      v116 = v76;
      while (1)
      {
        v78 = *(v77 + 457);
        if (*(v77 + 457))
        {
          if (v78 == 1)
          {
            v79 = 0x6469576172747865;
          }

          else
          {
            v79 = 1701736302;
          }

          if (v78 == 1)
          {
            v80 = 0xE900000000000065;
          }

          else
          {
            v80 = 0xE400000000000000;
          }

          v81 = a5;
          if (!a5)
          {
LABEL_98:
            v83 = 0xE400000000000000;
            v82 = 1768843629;
            goto LABEL_99;
          }
        }

        else
        {
          v80 = 0xE400000000000000;
          v79 = 1768843629;
          v81 = a5;
          if (!a5)
          {
            goto LABEL_98;
          }
        }

        v82 = v81 == 1 ? 0x6469576172747865 : 1701736302;
        v83 = v81 == 1 ? 0xE900000000000065 : 0xE400000000000000;
LABEL_99:
        v84 = *v75;
        if (v79 == v82 && v80 == v83)
        {
        }

        else
        {
          v6 = sub_24F92CE08();

          if ((v6 & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v85 = 0x6469576172747865;
            v86 = 0xE900000000000065;
            v87 = a5;
            if (a5)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v86 = 0xE400000000000000;
            v85 = 1701736302;
            v87 = a5;
            if (a5)
            {
LABEL_108:
              if (v87 == 1)
              {
                v88 = 0x6469576172747865;
              }

              else
              {
                v88 = 1701736302;
              }

              if (v87 == 1)
              {
                v89 = 0xE900000000000065;
              }

              else
              {
                v89 = 0xE400000000000000;
              }

              if (v85 != v88)
              {
                goto LABEL_120;
              }

              goto LABEL_118;
            }
          }
        }

        else
        {
          v86 = 0xE400000000000000;
          v85 = 1768843629;
          v87 = a5;
          if (a5)
          {
            goto LABEL_108;
          }
        }

        v89 = 0xE400000000000000;
        if (v85 != 1768843629)
        {
          goto LABEL_120;
        }

LABEL_118:
        if (v86 == v89)
        {

          goto LABEL_121;
        }

LABEL_120:
        v6 = sub_24F92CE08();

        if ((v6 & 1) == 0)
        {

          if (!v122)
          {
            goto LABEL_199;
          }

          goto LABEL_156;
        }

LABEL_121:
        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v90 = 0x6469576172747865;
            v91 = 0xE900000000000065;
            v92 = a5;
            if (a5)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v91 = 0xE400000000000000;
            v90 = 1701736302;
            v92 = a5;
            if (a5)
            {
LABEL_126:
              if (v92 == 1)
              {
                v93 = 0x6469576172747865;
              }

              else
              {
                v93 = 1701736302;
              }

              if (v92 == 1)
              {
                v94 = 0xE900000000000065;
              }

              else
              {
                v94 = 0xE400000000000000;
              }

              if (v90 != v93)
              {
                goto LABEL_138;
              }

              goto LABEL_136;
            }
          }
        }

        else
        {
          v91 = 0xE400000000000000;
          v90 = 1768843629;
          v92 = a5;
          if (a5)
          {
            goto LABEL_126;
          }
        }

        v94 = 0xE400000000000000;
        if (v90 != 1768843629)
        {
          goto LABEL_138;
        }

LABEL_136:
        if (v91 == v94)
        {

          goto LABEL_139;
        }

LABEL_138:
        v6 = sub_24F92CE08();

        if ((v6 & 1) == 0)
        {
          goto LABEL_154;
        }

LABEL_139:
        if (*(v77 + 457))
        {
          if (*(v77 + 457) == 1)
          {
            v95 = 0x6469576172747865;
            v96 = 0xE900000000000065;
            v97 = a5;
            if (!a5)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v96 = 0xE400000000000000;
            v95 = 1701736302;
            v97 = a5;
            if (!a5)
            {
LABEL_148:
              v98 = 0xE400000000000000;
              if (v95 != 1768843629)
              {
                goto LABEL_153;
              }

              goto LABEL_151;
            }
          }
        }

        else
        {
          v96 = 0xE400000000000000;
          v95 = 1768843629;
          v97 = a5;
          if (!a5)
          {
            goto LABEL_148;
          }
        }

        if (v97 == 1)
        {
          v98 = 0xE900000000000065;
          if (v95 != 0x6469576172747865)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v98 = 0xE400000000000000;
          if (v95 != 1701736302)
          {
            goto LABEL_153;
          }
        }

LABEL_151:
        if (v96 == v98)
        {

          goto LABEL_154;
        }

LABEL_153:
        v6 = sub_24F92CE08();

        if ((v6 & 1) == 0)
        {
          break;
        }

LABEL_154:
        v99 = *(v77 + 16);
        v100 = *(v84 + 16);

        if (v99 > v100)
        {
          goto LABEL_81;
        }

        if (!v122)
        {
          goto LABEL_199;
        }

LABEL_156:
        v101 = *v75;
        v77 = v75[1];
        *v75 = v77;
        v75[1] = v101;
        --v75;
        if (__CFADD__(v76++, 1))
        {
          goto LABEL_81;
        }
      }

LABEL_81:
      v26 = v119 + 1;
      v75 = v117 + 1;
      v76 = v116 - 1;
      if (v119 + 1 != v115)
      {
        continue;
      }

      break;
    }

    v13 = v115;
    v7 = v108;
    v12 = v111;
    v11 = v113;
    if (v115 < v111)
    {
      goto LABEL_193;
    }

LABEL_30:
    v118 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_24E615ED8(0, *(v11 + 16) + 1, 1, v11);
    }

    v29 = *(v11 + 16);
    v28 = *(v11 + 24);
    v30 = v29 + 1;
    v6 = v7;
    if (v29 >= v28 >> 1)
    {
      v11 = sub_24E615ED8((v28 > 1), v29 + 1, 1, v11);
    }

    *(v11 + 16) = v30;
    v31 = v11 + 16 * v29;
    *(v31 + 32) = v12;
    *(v31 + 40) = v118;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_203;
    }

    if (v29)
    {
      break;
    }

LABEL_3:
    v10 = v118;
    v9 = a3[1];
    v7 = v6;
    if (v118 >= v9)
    {
      goto LABEL_164;
    }
  }

  while (1)
  {
    v32 = v30 - 1;
    if (v30 >= 4)
    {
      v37 = v11 + 32 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_180;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_181;
      }

      v44 = (v11 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_183;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_186;
      }

      if (v48 >= v40)
      {
        v66 = (v11 + 32 + 16 * v32);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_192;
        }

        if (v35 < v69)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v30 == 3)
    {
      v33 = *(v11 + 32);
      v34 = *(v11 + 40);
      v43 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      v36 = v43;
LABEL_49:
      if (v36)
      {
        goto LABEL_182;
      }

      v49 = (v11 + 16 * v30);
      v51 = *v49;
      v50 = v49[1];
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_185;
      }

      v55 = (v11 + 32 + 16 * v32);
      v57 = *v55;
      v56 = v55[1];
      v43 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v43)
      {
        goto LABEL_188;
      }

      if (__OFADD__(v53, v58))
      {
        goto LABEL_189;
      }

      if (v53 + v58 >= v35)
      {
        if (v35 < v58)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v59 = (v11 + 16 * v30);
    v61 = *v59;
    v60 = v59[1];
    v43 = __OFSUB__(v60, v61);
    v53 = v60 - v61;
    v54 = v43;
LABEL_63:
    if (v54)
    {
      goto LABEL_184;
    }

    v62 = v11 + 16 * v32;
    v64 = *(v62 + 32);
    v63 = *(v62 + 40);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_187;
    }

    if (v65 < v53)
    {
      goto LABEL_3;
    }

LABEL_70:
    v70 = v32 - 1;
    if (v32 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_200;
    }

    v71 = v11;
    v72 = *(v11 + 32 + 16 * v70);
    v73 = *(v11 + 32 + 16 * v32);
    v11 = *(v11 + 32 + 16 * v32 + 8);
    sub_24F1F8764((*a3 + 8 * v72), (*a3 + 8 * v73), (*a3 + 8 * v11), v7, a5);
    if (v6)
    {
      goto LABEL_174;
    }

    if (v11 < v72)
    {
      goto LABEL_178;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_24E86164C(v71);
    }

    if (v70 >= *(v71 + 2))
    {
      goto LABEL_179;
    }

    v74 = &v71[16 * v70];
    *(v74 + 4) = v72;
    *(v74 + 5) = v11;
    v125 = v71;
    sub_24E8615C0(v32);
    v11 = v125;
    v30 = *(v125 + 16);
    if (v30 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  v11 = sub_24E86164C(v11);
LABEL_166:
  v125 = v11;
  v103 = *(v11 + 16);
  if (v103 >= 2)
  {
    while (*a3)
    {
      v104 = *(v11 + 16 * v103);
      v105 = v11;
      v106 = *(v11 + 16 * (v103 - 1) + 32);
      v11 = *(v11 + 16 * (v103 - 1) + 40);
      sub_24F1F8764((*a3 + 8 * v104), (*a3 + 8 * v106), (*a3 + 8 * v11), v6, a5);
      if (v7)
      {
        goto LABEL_174;
      }

      if (v11 < v104)
      {
        goto LABEL_190;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_24E86164C(v105);
      }

      if (v103 - 2 >= *(v105 + 2))
      {
        goto LABEL_191;
      }

      v107 = &v105[16 * v103];
      *v107 = v104;
      *(v107 + 1) = v11;
      v125 = v105;
      sub_24E8615C0(v103 - 1);
      v11 = v125;
      v103 = *(v125 + 16);
      if (v103 <= 1)
      {
        goto LABEL_174;
      }
    }

    goto LABEL_201;
  }

LABEL_174:
}

uint64_t sub_24F1F8764(char *__dst, uint64_t *a2, char *a3, unint64_t a4, unsigned __int8 a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;

      v18 = sub_24F1F76F4(&v48, &v47, a5);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        return 1;
      }

      v19 = v18;

      if (!v19)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  v6 -= 8;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;

    v31 = sub_24F1F76F4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = (v6 + 8);
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    v6 -= 8;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        return 1;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      return 1;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    return 1;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

  return 1;
}

double sub_24F1F8B20(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_24F9285B8();
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  sub_24F928398();
  v62 = sub_24F928308();
  LODWORD(v61) = v13;
  v63 = *(v7 + 8);
  v64 = v6;
  v66 = v7 + 8;
  v63(v12, v6);
  v14 = v5;
  v68 = a1;
  sub_24F928398();
  v16 = v67 + 16;
  v15 = *(v67 + 16);
  v71 = v3;
  v69 = v15;
  v15(v14, v70, v3);
  sub_24F1F9544();
  v17 = v114;
  sub_24F929548();
  if (v114[80])
  {
    if (qword_27F210808 != -1)
    {
      swift_once();
    }

    v17 = &xmmword_27F39CD70;
  }

  v18 = v17[3];
  v117 = v17[2];
  v118 = v18;
  v119 = v17[4];
  v19 = v17[1];
  v115 = *v17;
  v116 = v19;
  sub_24F928398();
  v65 = v16;
  v69(v14, v70, v71);
  v20 = v108;
  sub_24F929548();
  if (v108[80])
  {
    if (qword_27F210808 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_27F39CD70;
  }

  v21 = v20[3];
  v111 = v20[2];
  v112 = v21;
  v113 = v20[4];
  v22 = v20[1];
  v109 = *v20;
  v110 = v22;
  if (v61)
  {
    v23 = 1.79769313e308;
  }

  else
  {
    v23 = *&v62;
  }

  v24 = v9;
  sub_24F928398();
  v54 = v14;
  v25 = v70;
  v69(v14, v70, v71);
  sub_24F929548();
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v96 = v90;
  v97 = v91;
  sub_24F928398();
  v26 = v25;
  v27 = v69;
  v69(v14, v26, v71);
  sub_24F929548();
  v104 = v86;
  v105 = v87;
  v106 = v88;
  v107 = v89;
  v102 = v84;
  v103 = v85;
  sub_24F928398();
  v29 = v70;
  v28 = v71;
  v27(v14, v70, v71);
  v30 = v27;
  v59 = sub_24F1F9598();
  sub_24F929548();
  v61 = v82;
  v62 = v81;
  v60 = v83;
  v31 = v68;
  sub_24F928398();
  v30(v14, v29, v28);
  sub_24F929548();
  v58 = v79;
  v59 = v78;
  v57 = v80;
  sub_24F928398();
  sub_24E9F71AC();
  sub_24F928248();
  v33 = v63;
  v32 = v64;
  v63(v24, v64);
  v56 = v77;
  v34 = v31;
  sub_24F928398();
  sub_24F928248();
  v33(v24, v32);
  v55 = v76;
  type metadata accessor for CGSize(0);
  sub_24F928398();
  v36 = v70;
  v35 = v71;
  v69(v54, v70, v71);
  sub_24F1F95EC();
  sub_24F929548();
  v37 = v73;
  v69 = v74;
  LODWORD(v65) = v75;
  sub_24F928398();
  sub_24F1F9644();
  sub_24F928208();
  (*(v67 + 8))(v36, v35);
  v33(v34, v32);
  v33(v24, v32);
  v38 = v72;
  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v39 = swift_allocObject();
  *(v39 + 16) = v23;
  v40 = v115;
  *(v39 + 40) = v116;
  v41 = v118;
  *(v39 + 56) = v117;
  *(v39 + 72) = v41;
  *(v39 + 88) = v119;
  *(v39 + 24) = v40;
  v42 = v109;
  *(v39 + 120) = v110;
  v43 = v112;
  *(v39 + 136) = v111;
  *(v39 + 152) = v43;
  *(v39 + 168) = v113;
  *(v39 + 104) = v42;
  v44 = v99;
  *(v39 + 216) = v98;
  *(v39 + 232) = v44;
  *(v39 + 248) = v100;
  *(v39 + 264) = v101;
  v45 = v97;
  *(v39 + 184) = v96;
  *(v39 + 200) = v45;
  *(v39 + 352) = v107;
  v46 = v106;
  *(v39 + 320) = v105;
  *(v39 + 336) = v46;
  v47 = v104;
  *(v39 + 288) = v103;
  *(v39 + 304) = v47;
  *(v39 + 272) = v102;
  v48 = v61;
  *(v39 + 360) = v62;
  *(v39 + 368) = v48;
  *(v39 + 376) = v60;
  v49 = v58;
  *(v39 + 384) = v59;
  *(v39 + 392) = v49;
  *(v39 + 400) = v57;
  v51 = v55;
  result = *&v56;
  *(v39 + 408) = v56;
  *(v39 + 424) = v51;
  v52 = v69;
  *(v39 + 440) = v37;
  *(v39 + 448) = v52;
  *(v39 + 456) = v65;
  *(v39 + 457) = v38;
  return result;
}

unint64_t sub_24F1F9380()
{
  result = qword_27F23C360;
  if (!qword_27F23C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C360);
  }

  return result;
}

unint64_t sub_24F1F94A4()
{
  result = qword_27F23C368;
  if (!qword_27F23C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C368);
  }

  return result;
}

unint64_t sub_24F1F94F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F1F9544()
{
  result = qword_27F23C370;
  if (!qword_27F23C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C370);
  }

  return result;
}

unint64_t sub_24F1F9598()
{
  result = qword_27F23C378;
  if (!qword_27F23C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C378);
  }

  return result;
}

unint64_t sub_24F1F95EC()
{
  result = qword_27F23C380;
  if (!qword_27F23C380)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C380);
  }

  return result;
}

unint64_t sub_24F1F9644()
{
  result = qword_27F23C388;
  if (!qword_27F23C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C388);
  }

  return result;
}

uint64_t sub_24F1F96AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F1F97F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for WelcomeGameCenterView(uint64_t a1)
{
  result = qword_27F23C390;
  if (!qword_27F23C390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1F996C(uint64_t a1)
{
  sub_24E8BF5C0(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E6CAE80();
    if (v2 <= 0x3F)
    {
      sub_24E6CAEE4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          sub_24F928818();
          if (v5 <= 0x3F)
          {
            sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E8BF5C0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24F1F9B74(319);
                if (v8 <= 0x3F)
                {
                  sub_24E8BF5C0(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
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

void sub_24F1F9B74(uint64_t a1)
{
  if (!qword_27F2157B8)
  {
    sub_24F929EB8();
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2157B8);
    }
  }
}

double sub_24F1F9BE8(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39DD50 = xmmword_24F947C50;
  unk_27F39DD60 = xmmword_24F9B8DC0;
  *&xmmword_27F39DD70 = v1;
  *(&xmmword_27F39DD70 + 1) = v3;
  qword_27F39DD80 = 0x4030000000000000;
  unk_27F39DD88 = v4;
  return result;
}

double sub_24F1F9C3C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39DD90 = xmmword_24F947C70;
  unk_27F39DDA0 = xmmword_24F9B8DC0;
  *&xmmword_27F39DDB0 = v1;
  *(&xmmword_27F39DDB0 + 1) = v3;
  qword_27F39DDC0 = 0x4030000000000000;
  unk_27F39DDC8 = v4;
  return result;
}

uint64_t sub_24F1F9C90@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v72 - v3;
  v90 = sub_24F929158();
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v72 - v6;
  v7 = type metadata accessor for WelcomeGameCenterView(0);
  v76 = *(v7 - 8);
  v75 = *(v76 + 64);
  v8 = v7 - 8;
  v86 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3A0, &qword_24F9D5478);
  MEMORY[0x28223BE20](v79);
  v11 = &v72 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3A8, &unk_24F9D5480);
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v95 = &v72 - v12;
  v13 = *(v1 + 88);
  v85 = *(v1 + 80);
  v84 = v13;
  v73 = v1;

  v83 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24E615E00(v1 + 40, v14 + 32);
  v15 = v1 + *(v8 + 80);
  v17 = *(v15 + 8);
  LOBYTE(v112) = *v15;
  v16 = v112;
  v81 = v112;
  v113 = v17;
  v82 = v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v19 = v97;
  v18 = v98;
  v20 = v99;
  *(v11 + 6) = type metadata accessor for ProgressPerformAction(0);
  *(v11 + 7) = sub_24E6CF670(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 3);
  sub_24F928A98();
  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v19;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v20;
  boxed_opaque_existential_1[5] = 0;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[4] = 0;
  *(v11 + 15) = 0;
  *(v11 + 104) = 0u;
  *(v11 + 88) = 0u;
  LOBYTE(v97) = v16;
  v98 = v17;
  sub_24F926F38();
  v78 = v112;
  v22 = v73;
  v23 = *(v73 + 23);
  v24 = v74;
  sub_24F1FAD54(v73, v74);
  v25 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v26 = swift_allocObject();
  sub_24F1FADBC(v24, v26 + v25);
  sub_24F1FAD54(v22, v24);
  v27 = swift_allocObject();
  sub_24F1FADBC(v24, v27 + v25);
  v28 = v24;
  sub_24F1FAD54(v22, v24);
  v29 = swift_allocObject();
  sub_24F1FADBC(v28, v29 + v25);
  v30 = v79;
  v31 = *(v79 + 136);
  v32 = type metadata accessor for HeaderPresentation(0);
  (*(*(v32 - 8) + 56))(&v11[v31], 1, 1, v32);
  v33 = &v11[v30[37]];
  LOBYTE(v112) = 0;
  v77 = v23;

  sub_24F926F28();
  v34 = v98;
  *v33 = v97;
  *(v33 + 1) = v34;
  v35 = &v11[v30[38]];
  LOBYTE(v112) = 0;
  sub_24F926F28();
  v36 = v98;
  *v35 = v97;
  *(v35 + 1) = v36;
  v37 = &v11[v30[39]];
  v112 = 0;
  sub_24F926F28();
  v38 = v98;
  *v37 = v97;
  *(v37 + 1) = v38;
  v39 = v30[40];
  *&v11[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v40 = v30[41];
  *&v11[v40] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = v30[42];
  *&v11[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v42 = &v11[v30[43]];
  *v42 = sub_24F923398() & 1;
  *(v42 + 1) = v43;
  v42[16] = v44 & 1;
  v45 = v84;
  *v11 = v85;
  *(v11 + 1) = v45;
  *(v11 + 2) = v83;
  v11[128] = 0;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 8) = 0;
  v11[129] = v78;
  *(v11 + 17) = v23;
  *(v11 + 18) = 0;
  *(v11 + 19) = 0;
  *(v11 + 20) = sub_24F1FAE20;
  *(v11 + 21) = v26;
  *(v11 + 22) = sub_24F1FAEA0;
  *(v11 + 23) = v27;
  *(v11 + 24) = sub_24F1FB214;
  *(v11 + 25) = v29;
  *(v11 + 26) = sub_24E93BDF4;
  *(v11 + 27) = 0;
  v11[v30[35]] = 7;
  v11[v30[36]] = 0;
  sub_24E60169C((v22 + 96), &v97, qword_27F21B590, &unk_24F93BE30);
  v46 = *(v22 + 18);
  v47 = *(v22 + 19);
  v48 = *(v22 + 20);
  v49 = *(v22 + 21);
  v50 = *(v22 + 22);
  v101 = *(v22 + 17);
  v102 = v46;
  v103 = v47;
  v104 = v48;
  v105 = v49;
  v106 = v50;
  v96 = 0;

  sub_24F926F28();
  v107 = v112;
  v108 = v113;
  LOBYTE(v112) = v81;
  v113 = v82;
  sub_24F926F38();
  LOBYTE(v42) = v96;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v42;
  v109 = KeyPath;
  v110 = sub_24E600A48;
  v111 = v52;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3B0, &unk_24F9D5550);
  v53 = sub_24E602068(&qword_27F23C3B8, &qword_27F23C3A0, &qword_24F9D5478, &unk_24F9651C8);
  v54 = sub_24F1FC934();
  sub_24F926588();
  sub_24E601704(&v97, &qword_27F23C3B0, &unk_24F9D5550);
  sub_24E601704(v11, &qword_27F23C3A0, &qword_24F9D5478);
  v55 = v86;
  v56 = *(v86 + 64);
  v57 = sub_24F928818();
  v58 = *(v57 - 8);
  v59 = v87;
  (*(v58 + 16))(v87, &v22[v56], v57);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = v89;
  v61 = v90;
  sub_24F928F28();
  v62 = &v22[*(v55 + 84)];
  v64 = *v62;
  v63 = v62[1];
  v97 = v64;
  v98 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810, &unk_24F9D5560);
  sub_24F926F38();
  v65 = sub_24F921B48();
  v66 = v92;
  (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
  v97 = v30;
  v98 = v85;
  v99 = v53;
  v100 = v54;
  swift_getOpaqueTypeConformance2();
  v67 = v60;
  v68 = v66;
  v69 = v88;
  v70 = v95;
  sub_24F925E58();

  sub_24E601704(v68, &qword_27F2157E8, &unk_24F940C00);
  (*(v93 + 8))(v67, v61);
  sub_24E601704(v59, &qword_27F2157F0, &qword_24F9846A0);
  return (*(v91 + 8))(v70, v69);
}

void *sub_24F1FA7A0@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24F924C88();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_24F1FA850(a2, __src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v9, __src, 0x129uLL);
  sub_24E60169C(__dst, &v6, &qword_27F23C3D0, &qword_24F9D55A0);
  sub_24E601704(v9, &qword_27F23C3D0, &qword_24F9D55A0);
  return memcpy((a3 + 24), __dst, 0x129uLL);
}

uint64_t sub_24F1FA850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_24F1FCA40(v79);
  v37 = v79[0];
  v38 = v79[1];
  v39 = v79[2];
  v40 = v79[3];
  KeyPath = swift_getKeyPath();
  v41 = 0;
  sub_24F1FD2EC(v79, v65);
  v8 = sub_24F925818();
  sub_24F1FCA40(v80);
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v78 = 0;
  v17 = a1[2];
  v18 = a1[4];
  v29 = a1[3];
  v30 = a1[1];

  sub_24F1FCA40(v81);
  v33 = v81[0];
  v34 = v81[1];
  v35 = v81[2];
  v36 = v81[3];
  sub_24F1FD2EC(v81, v65);
  v19 = sub_24F925818();
  sub_24F1FCA40(&v82);
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v65[0]) = 0;
  *&v42[0] = v5;
  *(&v42[0] + 1) = v6;
  v42[1] = v37;
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v40;
  *&v43 = KeyPath;
  BYTE8(v43) = 0;
  LOBYTE(v44) = v8;
  *(&v44 + 1) = v10;
  *v45 = v12;
  *&v45[8] = v14;
  *&v45[16] = v16;
  v45[24] = 0;
  __src[2] = v38;
  __src[3] = v39;
  __src[0] = v42[0];
  __src[1] = v37;
  *(&__src[7] + 9) = *&v45[9];
  __src[6] = v44;
  __src[7] = *v45;
  __src[4] = v40;
  __src[5] = v43;
  *&v46 = v30;
  *(&v46 + 1) = v17;
  *&v47 = v29;
  *(&v47 + 1) = v18;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  LOBYTE(v52) = v19;
  *(&v52 + 1) = v20;
  *v53 = v22;
  *&v53[8] = v24;
  *&v53[16] = v26;
  v53[24] = 0;
  *(&__src[16] + 9) = *&v53[9];
  __src[9] = v46;
  __src[10] = v47;
  __src[15] = v52;
  __src[16] = *v53;
  __src[13] = v35;
  __src[14] = v36;
  __src[11] = v33;
  __src[12] = v34;
  memcpy(a2, __src, 0x120uLL);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  v54[0] = v30;
  v54[1] = v17;
  v54[2] = v29;
  v54[3] = v18;
  v55 = v33;
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v59 = v19;
  v60 = v21;
  v61 = v23;
  v62 = v25;
  v63 = v27;
  v64 = 0;
  sub_24E60169C(v42, v65, &qword_27F23C3D8, &qword_24F9D55A8);
  sub_24E60169C(&v46, v65, &qword_27F23C3E0, &qword_24F9D55B0);
  sub_24E601704(v54, &qword_27F23C3E0, &qword_24F9D55B0);
  v65[0] = v5;
  v65[1] = v6;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = KeyPath;
  v71 = 0;
  v72 = v8;
  v73 = v10;
  v74 = v12;
  v75 = v14;
  v76 = v16;
  v77 = 0;
  return sub_24E601704(v65, &qword_27F23C3D8, &qword_24F9D55A8);
}

uint64_t sub_24F1FAC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_24F1FCA40(v12);
  KeyPath = swift_getKeyPath();
  v11[64] = 0;
  *a2 = v6;
  *(a2 + 8) = v5;
  v8 = v12[1];
  *(a2 + 16) = v12[0];
  *(a2 + 32) = v8;
  v9 = v12[3];
  *(a2 + 48) = v12[2];
  *(a2 + 64) = v9;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  return sub_24F1FD2EC(v12, v11);
}

uint64_t sub_24F1FACD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];

  sub_24F1FCA40(v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  v7 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v7;
  v8 = v11[3];
  *(a2 + 64) = v11[2];
  *(a2 + 80) = v8;
  return sub_24F1FD2EC(v11, &v10);
}

uint64_t sub_24F1FAD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeGameCenterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1FADBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeGameCenterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24F1FAE20@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WelcomeGameCenterView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_24F1FA7A0(v5, a2);
}

uint64_t sub_24F1FAEA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeGameCenterView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F1FAC38(v4, a1);
}

uint64_t objectdestroyTm_57()
{
  v1 = type metadata accessor for WelcomeGameCenterView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  __swift_destroy_boxed_opaque_existential_1(v2 + 5);

  if (*(v2 + 15))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  }

  v3 = v1[14];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v2[v5], 1, v6))
    {
      (*(v7 + 8))(&v2[v5], v6);
    }
  }

  else
  {
  }

  v8 = v1[16];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v2[v8], 1, v9))
    {
      (*(v10 + 8))(&v2[v8], v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F1FB214@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeGameCenterView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F1FACD0(v4, a1);
}

uint64_t sub_24F1FB29C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - v2;
  sub_24F1FD698(v1, v24);
  v4 = swift_allocObject();
  v5 = v24[3];
  v6 = v24[5];
  *(v4 + 80) = v24[4];
  *(v4 + 96) = v6;
  v7 = v24[1];
  v8 = v24[2];
  *(v4 + 16) = v24[0];
  *(v4 + 32) = v7;
  *(v4 + 112) = v25;
  *(v4 + 48) = v8;
  *(v4 + 64) = v5;
  v19 = v1;
  sub_24F926F88();
  v9 = *(v1 + 64);
  v22 = *(v1 + 56);
  v23 = v9;
  v10 = *(v1 + 96);
  v20 = *(v1 + 88);
  v21 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v18 = v1;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3E8, &qword_24F9D5810);
  sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
  sub_24E600AEC();
  sub_24E602068(&qword_27F23C3F0, &qword_27F23C3E8, &qword_24F9D5810, MEMORY[0x277CE14C0]);
  v11 = v14;
  sub_24F926578();

  return (*(v16 + 8))(v3, v11);
}

uint64_t sub_24F1FB60C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
  v41 = *(v10 - 8);
  v11 = v41;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_24F9232B8();
  v17 = sub_24F9232F8();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 0, 1, v17);
  sub_24E60169C(a1, v48, qword_27F21B590, &unk_24F93BE30);
  sub_24F1FD698(a1, v46);
  v19 = swift_allocObject();
  v20 = v46[5];
  *(v19 + 80) = v46[4];
  *(v19 + 96) = v20;
  *(v19 + 112) = v47;
  v21 = v46[1];
  *(v19 + 16) = v46[0];
  *(v19 + 32) = v21;
  v22 = v46[3];
  *(v19 + 48) = v46[2];
  *(v19 + 64) = v22;
  v40 = v16;
  sub_24F921788();
  v23._object = 0x800000024FA6F3A0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v46[0] = localizedString(_:comment:)(v23, v24);
  sub_24F9232D8();
  v18(v9, 0, 1, v17);
  sub_24E600AEC();
  v25 = v6;
  v38 = v6;
  sub_24F926FA8();
  v26 = *(v11 + 16);
  v39 = v13;
  v26(v13, v16, v10);
  v27 = v42;
  v28 = *(v42 + 16);
  v29 = v43;
  v30 = v25;
  v31 = v44;
  v28(v43, v30, v44);
  v32 = v45;
  v26(v45, v13, v10);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3F8, &qword_24F9D5818);
  v28(&v32[*(v33 + 48)], v29, v31);
  v34 = *(v27 + 8);
  v34(v38, v31);
  v35 = *(v41 + 8);
  v35(v40, v10);
  v34(v29, v31);
  return (v35)(v39, v10);
}

uint64_t sub_24F1FBA90@<X0>(uint64_t a2@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24F1FBAFC@<X0>(uint64_t a2@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

__n128 sub_24F1FBB6C@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  v5 = *(v2 + 3);
  v31[0] = *(v2 + 2);
  v31[1] = v5;
  v36 = v31[0];
  v37 = v5;
  v6 = *(v2 + 5);
  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  v32 = *(v2 + 4);
  v33 = v6;
  v9 = v6;
  v30 = 0;
  v11 = *v2;
  v10 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  v38 = v32;
  v39 = v6;
  *&v34[0] = v12;
  *(&v34[0] + 1) = v13;
  v15 = *(v2 + 4);
  v14 = *(v2 + 5);
  v34[1] = v8;
  v34[2] = v7;
  v34[3] = v15;
  v34[4] = v14;
  v27 = v7;
  v28 = v15;
  v29 = v14;
  v25 = v34[0];
  v26 = v8;
  v35[0] = v12;
  v35[1] = v13;

  sub_24F1FD2EC(v31, v24);

  sub_24F1FD784(v34, v24);
  sub_24F1FD7BC(v35);

  v16 = v30;
  sub_24F927628();
  sub_24F9242E8();
  *a2 = v4;
  *(a2 + 8) = v9;
  *(a2 + 16) = v16;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  v17 = v25;
  *(a2 + 56) = v26;
  v18 = v28;
  *(a2 + 72) = v27;
  *(a2 + 88) = v18;
  *(a2 + 104) = v29;
  *(a2 + 40) = v17;
  v19 = v24[0];
  v20 = v24[1];
  v21 = v24[3];
  *(a2 + 152) = v24[2];
  *(a2 + 136) = v20;
  *(a2 + 120) = v19;
  result = v24[4];
  v23 = v24[5];
  *(a2 + 216) = v24[6];
  *(a2 + 200) = v23;
  *(a2 + 184) = result;
  *(a2 + 168) = v21;
  return result;
}

uint64_t sub_24F1FBD28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F926E08();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359E8, &unk_24F9D5820);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F0, &unk_24F9B9140);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v15 = sub_24F924848();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 8);
  if (!v20)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v45 = *(v1 + 8);
  v46 = v6;
  v44 = *v1;
  static SystemAppIcon.from(iconName:)(v44, v20, &v73);
  v21 = v73;
  if (v73 == 4)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v42 = v4;
  v43 = v3;
  v78 = *(v1 + 88);
  v22 = *(v1 + 80);
  v77 = v22;
  if (v78 == 1)
  {
    v23 = v22;
  }

  else
  {

    sub_24F92BDC8();
    v41 = a1;
    v24 = sub_24F9257A8();
    a1 = v41;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v77, &qword_27F218208, &qword_24F94E940);
    (*(v16 + 8))(v19, v15);
    v23 = *v68;
  }

  v25 = *(v1 + 32);
  LOBYTE(v68[0]) = v21;
  if (!sub_24EFFE798(v68, 0, v25, v25, v23))
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v41 = sub_24F926DE8();
  v27 = v47;
  v26 = v48;
  (*(v47 + 104))(v9, *MEMORY[0x277CE0FE0], v48);
  v28 = sub_24F926E88();
  (*(v27 + 8))(v9, v26);
  sub_24F927618();
  sub_24F9238C8();
  v71 = 1;
  *&v70[6] = v74;
  *&v70[22] = v75;
  *&v70[38] = v76;
  sub_24F9242E8();
  v29 = sub_24F925838();
  sub_24F923318();
  *(v57 + 2) = *v70;
  *(&v57[1] + 2) = *&v70[16];
  *(&v57[2] + 2) = *&v70[32];
  *(&v57[6] + 8) = v64;
  *(&v57[7] + 8) = v65;
  *(&v57[8] + 8) = v66;
  *(&v57[9] + 8) = v67;
  *(&v57[3] + 8) = v61;
  *(&v57[4] + 8) = v62;
  v72 = 0;
  v56 = v28;
  LOWORD(v57[0]) = 1;
  *&v57[3] = *&v70[46];
  *(&v57[5] + 8) = v63;
  BYTE8(v57[10]) = v29;
  *&v58 = v30;
  *(&v58 + 1) = v31;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F8, &unk_24F9B9150);
  sub_24EFC15FC();
  v34 = v49;
  sub_24F9265E8();
  v68[12] = v58;
  v68[13] = v59;
  v69 = v60;
  v68[8] = v57[7];
  v68[9] = v57[8];
  v68[10] = v57[9];
  v68[11] = v57[10];
  v68[4] = v57[3];
  v68[5] = v57[4];
  v68[6] = v57[5];
  v68[7] = v57[6];
  v68[0] = v56;
  v68[1] = v57[0];
  v68[2] = v57[1];
  v68[3] = v57[2];
  sub_24E601704(v68, &qword_27F2359F8, &unk_24F9B9150);
  v35 = v51;
  sub_24F923FE8();
  sub_24E601704(v34, &qword_27F2359E8, &unk_24F9D5820);
  v56 = 0u;
  v57[0] = 0u;
  memset(v55, 0, sizeof(v55));
  v36 = v46;
  sub_24F9297A8();
  sub_24E601704(v55, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v56, &qword_27F2129B0, &unk_24F945320);
  sub_24EFC17A0();
  v37 = v50;
  sub_24F925EE8();

  (*(v42 + 8))(v36, v43);
  sub_24E601704(v35, &qword_27F2359E8, &unk_24F9D5820);
  v39 = v53;
  v38 = v54;
  (*(v53 + 32))(a1, v37, v54);
  return (*(v39 + 56))(a1, 0, 1, v38);
}

uint64_t sub_24F1FC490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B78, &qword_24F9B9388);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  v17 &= 1u;
  LOBYTE(v32) = v17;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17);

  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B80, &qword_24F9B9390) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  sub_24F1FDAD0(&qword_27F235B88, &qword_27F235B78, &qword_24F9B9388, sub_24EFC2250);
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24F1FDA24(v7);
}

uint64_t sub_24F1FC78C@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  v7 = sub_24F925C98();
  v9 = v8;
  v11 = v10;
  sub_24E600B40(v2, v4, v6 & 1);

  sub_24F9251C8();
  v12 = sub_24F925C58();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24E600B40(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 256;
  *(a1 + 40) = result;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_24F1FC934()
{
  result = qword_27F23C3C0;
  if (!qword_27F23C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3B0, &unk_24F9D5550);
    sub_24F1FC9EC();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C3C0);
  }

  return result;
}

unint64_t sub_24F1FC9EC()
{
  result = qword_27F23C3C8;
  if (!qword_27F23C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C3C8);
  }

  return result;
}

double sub_24F1FCA40@<D0>(__int128 *a1@<X8>)
{
  v68 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v67 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v60 = type metadata accessor for WelcomeGameCenterView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v59 = *MEMORY[0x277CE0560];
  v58 = v25;
  v56 = v3 + 13;
  v25(v20);
  v57 = v3[7];
  v57(v20, 0, 1, v2);
  v61 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v66 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v67, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v65 = v27;
      v53 = v24;
      v29 = v55;
      (v66[4])(v55, &v9[v26], v2);
      sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = v67;
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v67, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v53 = v24;
  v65 = v27;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v65(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v63;
  sub_24F769764(v63);
  v33 = v62;
  v58(v62, v59, v2);
  v57(v33, 0, 1, v2);
  v34 = *(v61 + 48);
  v35 = v64;
  sub_24E60169C(v32, v64, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
  v36 = v65;
  if (v65(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F211010 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39DD90;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v54;
  sub_24E60169C(v35, v54, &qword_27F215598, &qword_24F945EF0);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v33;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v55;
  (v66[4])(v55, v47, v2);
  sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F211008 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39DD50;
LABEL_18:
  v39 = v38[1];
  v69 = *v38;
  v70 = v39;
  v40 = v38[3];
  v71 = v38[2];
  v72 = v40;
  v41 = v70;
  v42 = v68;
  *v68 = v69;
  v42[1] = v41;
  result = *&v71;
  v44 = v72;
  v42[2] = v71;
  v42[3] = v44;
  return result;
}

uint64_t sub_24F1FD32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24F1FD374(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_24F1FD3D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1FD41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1FD494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1FD4DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1FD544()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3A8, &unk_24F9D5480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3A0, &qword_24F9D5478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3B0, &unk_24F9D5550);
  sub_24E602068(&qword_27F23C3B8, &qword_27F23C3A0, &qword_24F9D5478, &unk_24F9651C8);
  sub_24F1FC934();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_51Tm_0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_24F1FD80C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D08, &unk_24F973580);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3E8, &qword_24F9D5810);
  sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
  sub_24E600AEC();
  sub_24E602068(&qword_27F23C3F0, &qword_27F23C3E8, &qword_24F9D5810, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F1FD928()
{
  result = qword_27F23C400;
  if (!qword_27F23C400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C408, &qword_24F9D58A0);
    sub_24E602068(&qword_27F23C410, &qword_27F23C418, &qword_24F9D58A8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C400);
  }

  return result;
}

uint64_t sub_24F1FDA24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B78, &qword_24F9B9388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1FDAD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F1FDB80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B78, &qword_24F9B9388);
  sub_24F1FDAD0(&qword_27F235B88, &qword_27F235B78, &qword_24F9B9388, sub_24EFC2250);
  return swift_getOpaqueTypeConformance2();
}

UIColor __swiftcall UIColor.init(light:dark:)(UIColor light, UIColor dark)
{
  v3 = light.super.isa;
  v4 = dark.super.isa;

  return sub_24F92C388();
}

uint64_t sub_24F1FDCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C440, &qword_24F9D5A78);
  MEMORY[0x28223BE20](v2);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C448, &qword_24F9D5A80);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C450, &qword_24F9D5A88);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C458, &unk_24F9D5A90);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  if (*(*(a1 + 16) + 16))
  {
    v14 = *(*(a1 + 16) + 16) < 3u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0, &unk_24F9FAA40);
    v15 = swift_allocObject();
    v16 = vdup_n_s32(v14);
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    *(v15 + 16) = xmmword_24F93A400;
    *(v15 + 32) = vandq_s8(xmmword_24F97EE40, vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)));
    sub_24F923658();
    v18 = v40;
    v19 = v42;
    v34[1] = v8;
    v20 = v43;
    v21 = v44;
    v22 = sub_24F1AEC94();
    KeyPath = swift_getKeyPath();
    v36 = __PAIR128__(v41, v18);
    *&v37 = v19;
    *(&v37 + 1) = v20;
    *&v38 = v21;
    *(&v38 + 1) = KeyPath;
    v39 = v22;
    *(v7 + 6) = v22;
    v24 = v38;
    v25 = v36;
    *(v7 + 1) = v37;
    *(v7 + 2) = v24;
    *v7 = v25;
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v36, v35, &qword_27F23C460, &qword_24F9D5AD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C460, &qword_24F9D5AD0);
    sub_24F1FE55C();
    sub_24F1FE68C();
    sub_24F924E28();
    sub_24E60169C(v10, v4, &qword_27F23C450, &qword_24F9D5A88);
    swift_storeEnumTagMultiPayload();
    sub_24F9271F8();
    sub_24F1FE770();
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24F924E28();
    sub_24E601704(&v36, &qword_27F23C460, &qword_24F9D5AD0);
    v26 = v10;
    v27 = &qword_27F23C450;
    v28 = &qword_24F9D5A88;
  }

  else
  {
    sub_24F9271E8();
    v29 = sub_24F1AEC94();
    v30 = sub_24F927618();
    v31 = &v13[*(v11 + 36)];
    *v31 = v29;
    v31[1] = v30;
    v31[2] = v32;
    sub_24E60169C(v13, v7, &qword_27F23C458, &unk_24F9D5A90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C460, &qword_24F9D5AD0);
    sub_24F1FE55C();
    sub_24F1FE68C();
    sub_24F924E28();
    sub_24E60169C(v10, v4, &qword_27F23C450, &qword_24F9D5A88);
    swift_storeEnumTagMultiPayload();
    sub_24F9271F8();
    sub_24F1FE770();
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24F924E28();
    sub_24E601704(v10, &qword_27F23C450, &qword_24F9D5A88);
    v26 = v13;
    v27 = &qword_27F23C458;
    v28 = &unk_24F9D5A90;
  }

  return sub_24E601704(v26, v27, v28);
}

uint64_t sub_24F1FE1E0(uint64_t a1)
{
  sub_24E66D960();

  return sub_24F9218E8();
}

unint64_t sub_24F1FE228()
{
  result = qword_27F23C430;
  if (!qword_27F23C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C430);
  }

  return result;
}

double sub_24F1FE328@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24F925B28();
  sub_24F925AF8();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMaxX(v14);
  sub_24F925B18();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_24F1FE3B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F1FE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F1FE9C0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F1FE4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F1FE9C0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F1FE508(uint64_t a1)
{
  v2 = sub_24F1FE9C0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24F1FE55C()
{
  result = qword_27F23C468;
  if (!qword_27F23C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C458, &unk_24F9D5A90);
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24E602068(&qword_27F23C470, &qword_27F23C478, &qword_24F9D5AD8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C468);
  }

  return result;
}

uint64_t sub_24F1FE644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F1FE68C()
{
  result = qword_27F23C480;
  if (!qword_27F23C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C460, &qword_24F9D5AD0);
    sub_24E602068(&qword_27F23C488, &qword_27F23C490, &unk_24F9D5AE0, MEMORY[0x277CDF780]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C480);
  }

  return result;
}

unint64_t sub_24F1FE770()
{
  result = qword_27F23C498;
  if (!qword_27F23C498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C450, &qword_24F9D5A88);
    sub_24F1FE55C();
    sub_24F1FE68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C498);
  }

  return result;
}

unint64_t sub_24F1FE810()
{
  result = qword_27F23C4A0;
  if (!qword_27F23C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C4A8, &qword_24F9D5AF8);
    sub_24F1FE770();
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4A0);
  }

  return result;
}

unint64_t sub_24F1FE914()
{
  result = qword_27F23C4C0;
  if (!qword_27F23C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4C0);
  }

  return result;
}

unint64_t sub_24F1FE96C()
{
  result = qword_27F23C4C8;
  if (!qword_27F23C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4C8);
  }

  return result;
}

unint64_t sub_24F1FE9C0()
{
  result = qword_27F23C4D0;
  if (!qword_27F23C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4D0);
  }

  return result;
}

uint64_t Footnote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Footnote.__allocating_init(id:text:clickAction:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 80) = 0;
  sub_24E65E064(a1, &v28);
  if (*(&v29 + 1))
  {
    v15 = v29;
    *(v14 + 40) = v28;
    *(v14 + 56) = v15;
    *(v14 + 72) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24 = a2;
    v25 = a3;
    v17 = v16;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v26 = v17;
    v27 = v21;
    a5 = v19;
    a4 = v18;
    a2 = v24;
    a3 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  swift_beginAccess();
  *(v14 + 80) = a4;
  *(v14 + 32) = a5;
  return v14;
}

uint64_t Footnote.init(id:text:clickAction:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 80) = 0;
  sub_24E65E064(a1, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25 = a2;
    v26 = a3;
    v17 = v16;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v27 = v17;
    v28 = v21;
    a5 = v19;
    a4 = v18;
    a2 = v25;
    a3 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v22 = v33;
  *(v6 + 40) = v32;
  *(v6 + 56) = v22;
  *(v6 + 72) = v34;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  *(v6 + 80) = a4;

  *(v6 + 32) = a5;
  return v6;
}

uint64_t Footnote.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Footnote.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *Footnote.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v40 = a2;
  v3 = v2;
  v39[0] = *v3;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F928388();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  *(v3 + 80) = 0;
  v39[1] = v3 + 80;
  v41 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v42 = v18;
    v43 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v6;
    v23 = v22;
    (*(v21 + 8))(v8, v5);
    v42 = v20;
    v43 = v23;
  }

  sub_24F92C7F8();
  v24 = *(v9 + 8);
  v24(v17, v47);
  v25 = v45;
  *(v3 + 40) = v44;
  *(v3 + 56) = v25;
  *(v3 + 72) = v46;
  v26 = v41;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v24(v14, v47);
  if (v29)
  {
    *(v3 + 16) = v27;
    *(v3 + 24) = v29;
    type metadata accessor for Action(0);
    sub_24F928398();
    v30 = v40;
    v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v11, v40);
    v32 = v47;
    v24(v11, v47);
    swift_beginAccess();
    *(v3 + 80) = v31;

    sub_24F928398();
    v33 = _sSo28ASKFootnotePresentationStyleV12GameStoreKitE13deserializingAB9JetEngine10JSONObjectV_tcfC_0(v11);
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v30, v34);
    v24(v26, v32);
    *(v3 + 32) = v33;
  }

  else
  {
    v35 = sub_24F92AC38();
    sub_24F1FFAEC(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v36 = 1954047348;
    v36[1] = 0xE400000000000000;
    v36[2] = v39[0];
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v40, v37);
    v24(v26, v47);
    sub_24E6585F8(v3 + 40);

    type metadata accessor for Footnote();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

double sub_24F1FF35C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;

  return result;
}

double sub_24F1FF3F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

uint64_t sub_24F1FF43C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Footnote();
  *a1 = v1;
}

uint64_t Footnote.deinit()
{

  sub_24E6585F8(v0 + 40);

  return v0;
}

uint64_t Footnote.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t *sub_24F1FF504@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Footnote();
  v7 = swift_allocObject();
  result = Footnote.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1FF5B0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Footnote();
  *a1 = v3;
}

uint64_t _sSo28ASKFootnotePresentationStyleV12GameStoreKitE13deserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24F9282B8();
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = sub_24F928388();
    (*(*(v7 - 8) + 8))(a1, v7);
    sub_24E601704(v4, &qword_27F2213B0, &qword_24F965EC0);
    return 0;
  }

  v8 = sub_24F92ABC8();
  (*(v6 + 8))(v4, v5);
  if (!v8)
  {
    v17 = sub_24F928388();
    (*(*(v17 - 8) + 8))(a1, v17);
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v25 = "textLightensOnHighlight";
    v11 = (v8 + 40);
    v24 = xmmword_24F93A400;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = v12 == 0x7276656843736168 && v13 == 0xEA00000000006E6FLL;
      if (v14 || (sub_24F92CE08() & 1) != 0)
      {
        v10 |= 2uLL;
      }

      else
      {
        v15 = v12 == 0xD000000000000017 && 0x800000024FA6F3E0 == v13;
        if (v15 || (sub_24F92CE08() & 1) != 0)
        {
          v10 |= 4uLL;
        }

        else if (v12 == 0x7261706553736168 && v13 == 0xEC000000726F7461 || (sub_24F92CE08() & 1) != 0)
        {
          v10 |= 8uLL;
        }

        else
        {
          v22 = v8;
          v23 = a1;
          v16 = qword_27F210568;

          if (v16 != -1)
          {
            swift_once();
          }

          v21 = sub_24F92AAE8();
          v20[2] = __swift_project_value_buffer(v21, qword_27F39C398);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          v20[1] = *(*(sub_24F928468() - 8) + 72);
          *(swift_allocObject() + 16) = v24;
          sub_24F9283A8();
          v26[3] = MEMORY[0x277D837D0];
          v26[0] = v12;
          v26[1] = v13;
          sub_24F928438();
          sub_24E601704(v26, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A5B8();

          v8 = v22;
          a1 = v23;
        }
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = sub_24F928388();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v10;
}

uint64_t sub_24F1FFAEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F1FFB34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t ReloadableItemPagePresenter.reloadItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC0, &unk_24F93B6A0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  (*(v7 + 16))(v9 + v8, a1, v6);
  (*(a3 + 8))(v9, a2, a3);
}

double NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

UIEdgeInsets __swiftcall NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v1 = v2;
  }

  v4 = v3;
  result.right = v4;
  result.left = v1;
  return result;
}

BOOL NSParagraphStyle.isListItem.getter()
{
  [v0 firstLineHeadIndent];
  if (v1 != 0.0)
  {
    return 0;
  }

  [v0 headIndent];
  if (v2 <= 0.0)
  {
    return 0;
  }

  [v0 defaultTabInterval];
  return v3 > 0.0;
}

id _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v4 setAlignment_];
  sub_24F91F708();
  v5 = sub_24F91F728();

  v6 = 1;
  if (v5 != 2)
  {
    v6 = -1;
  }

  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v4 setBaseWritingDirection_];
  sub_24F91F708();
  v8 = sub_24F92B358();

  v9 = 1.3;
  if ((v8 & 1) == 0)
  {
    sub_24F91F708();
    v10 = sub_24F92B358();

    if ((v10 & 1) == 0)
    {
      sub_24F91F708();
      v11 = sub_24F92B358();

      if (v11)
      {
        v9 = 1.3;
      }

      else
      {
        v9 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_24F20059C();
  v5 = sub_24F92B588();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_24F91F708();
  v6 = sub_24F92B358();

  v7 = 1.3;
  if ((v6 & 1) == 0)
  {
    sub_24F91F708();
    v8 = sub_24F92B358();

    if ((v8 & 1) == 0)
    {
      sub_24F91F708();
      v9 = sub_24F92B358();

      if (v9)
      {
        v7 = 1.3;
      }

      else
      {
        v7 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  sub_24F91F708();
  v10 = sub_24F91F728();

  v11 = 1;
  if (v10 != 2)
  {
    v11 = -1;
  }

  if (v10 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [v4 setBaseWritingDirection_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_24F20059C();
  v5 = sub_24F92B588();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_24F91F708();
  v6 = sub_24F91F728();

  v7 = 1;
  if (v6 != 2)
  {
    v7 = -1;
  }

  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v4 setBaseWritingDirection_];
  sub_24F91F708();
  v9 = sub_24F92B358();

  v10 = 1.3;
  if ((v9 & 1) == 0)
  {
    sub_24F91F708();
    v11 = sub_24F92B358();

    if ((v11 & 1) == 0)
    {
      sub_24F91F708();
      v12 = sub_24F92B358();

      if (v12)
      {
        v10 = 1.3;
      }

      else
      {
        v10 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_24F20059C()
{
  result = qword_27F23C4E0;
  if (!qword_27F23C4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23C4E0);
  }

  return result;
}

GameStoreKit::AccountSection::ContentItemType_optional __swiftcall AccountSection.ContentItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccountSection.ContentItemType.rawValue.getter()
{
  v1 = 1802398060;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x7473694C6F666E69;
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

uint64_t sub_24F2006C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F200788(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F200834()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2008FC(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1802398060;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000021;
    v4 = 0x800000024FA40560;
  }

  if (*v1)
  {
    v3 = 0x7473694C6F666E69;
    v2 = 0xEC0000006D657449;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t AccountSection.ContentItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v84 = a2;
  v76 = a3;
  v79 = sub_24F9285B8();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v71 - v6;
  MEMORY[0x28223BE20](v7);
  v72 = &v71 - v8;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  sub_24F928398();
  sub_24F2010AC();
  v27 = v78;
  sub_24F928218();
  if (v27)
  {
    (*(v77 + 8))(v84, v79);
    v28 = *(v10 + 8);
    v28(a1, v9);
    return (v28)(v26, v9);
  }

  v30 = *(v10 + 8);
  v78 = v10 + 8;
  v71 = v30;
  v30(v26, v9);
  v31 = v9;
  if (v80 > 1u)
  {
    v74 = 0;
    if (v80 != 2)
    {
      v49 = v14;
      v50 = a1;
      sub_24F928398();
      v51 = sub_24F928348();
      v53 = v52;
      v54 = v49;
      v55 = v71;
      v71(v54, v31);
      v56 = v73;
      sub_24F928398();
      v57 = sub_24F928278();
      (*(v77 + 8))(v84, v79);
      v55(v50, v31);
      result = (v55)(v56, v31);
      v58 = v80;
      v59 = v76;
      *(v76 + 33) = v81;
      v60 = *v83;
      *(v59 + 49) = v82;
      *(v59 + 65) = v60;
      *v59 = v51;
      *(v59 + 1) = v53;
      *(v59 + 16) = v57 & 1;
      *(v59 + 10) = *&v83[15];
      *(v59 + 17) = v58;
      *(v59 + 88) = 3;
      return result;
    }

    (*(v10 + 16))(v17, a1, v9);
    v38 = v77;
    v39 = v75;
    v40 = v84;
    v41 = v79;
    (*(v77 + 16))(v75, v84, v79);
    type metadata accessor for AccountSectionText();
    swift_allocObject();
    v42 = v74;
    v43 = AccountSectionText.init(deserializing:using:)(v17, v39);
    if (v42)
    {
      (*(v38 + 8))(v40, v41);
      return (v71)(a1, v31);
    }

    v63 = v43;
    (*(v38 + 8))(v40, v41);
    result = (v71)(a1, v31);
    v67 = v76;
    *v76 = v63;
    v64 = v80;
    *(v67 + 24) = v81;
    v65 = *v83;
    *(v67 + 40) = v82;
    *(v67 + 56) = v65;
    *(v67 + 72) = *&v83[16];
    *(v67 + 8) = v64;
    v70 = 2;
  }

  else
  {
    if (!v80)
    {
      v32 = v23;
      (*(v10 + 16))(v23, a1, v9);
      v33 = v77;
      v34 = v72;
      v35 = v84;
      v36 = v79;
      (*(v77 + 16))(v72, v84, v79);
      AccountSectionLink.init(deserializing:using:)(v32, v34, &v80);
      v37 = v76;
      (*(v33 + 8))(v35, v36);
      result = (v71)(a1, v9);
      v83[40] = 0;
      v61 = *v83;
      v37[2] = v82;
      v37[3] = v61;
      v37[4] = *&v83[16];
      v62 = v81;
      *v37 = v80;
      v37[1] = v62;
      *(v37 + 73) = *&v83[25];
      return result;
    }

    v44 = v20;
    (*(v10 + 16))(v20, a1, v9);
    v45 = v77;
    v46 = v74;
    v47 = v84;
    v48 = v79;
    (*(v77 + 16))(v74, v84, v79);
    type metadata accessor for AccountSectionInfoListItem();
    swift_allocObject();
    v66 = AccountSectionInfoListItem.init(deserializing:using:)(v44, v46);
    (*(v45 + 8))(v47, v48);
    result = (v71)(a1, v9);
    v67 = v76;
    *v76 = v66;
    v68 = v80;
    *(v67 + 24) = v81;
    v69 = *v83;
    *(v67 + 40) = v82;
    *(v67 + 56) = v69;
    *(v67 + 72) = *&v83[16];
    *(v67 + 8) = v68;
    v70 = 1;
  }

  *(v67 + 88) = v70;
  return result;
}

unint64_t sub_24F2010AC()
{
  result = qword_27F23C4E8;
  if (!qword_27F23C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4E8);
  }

  return result;
}

void AccountSection.ContentItem.id.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  sub_24F201C70(v2, v15);
  if (v17 <= 1u)
  {
    if (!v17)
    {
      v12[2] = v15[2];
      v13[0] = v15[3];
      v13[1] = v15[4];
      v14 = v16;
      v12[0] = v15[0];
      v12[1] = v15[1];
      sub_24E65864C(v13, a1);
      sub_24F201CD8(v12);
      return;
    }

    v11 = *&v15[0] + 48;
    goto LABEL_7;
  }

  if (v17 == 2)
  {
    v11 = *&v15[0] + 24;
LABEL_7:
    sub_24E65864C(v11, a1);

    return;
  }

  sub_24F201CA8(v15);
  sub_24F91F6A8();
  (*(v5 + 16))(v7, v10, v4);
  sub_24F201D2C(&qword_27F2551B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24F92C7F8();
  (*(v5 + 8))(v10, v4);
}

uint64_t AccountSection.__allocating_init(id:title:footer:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    v15 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v15;
    *(v14 + 80) = v27;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v24[1] = v20;
    v24[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v25);
  }

  sub_24E9BBAA8(a1);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t AccountSection.init(id:title:footer:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v26);
  }

  sub_24E9BBAA8(a1);
  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t AccountSection.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSection.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSection.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = v2;
  v45 = sub_24F9285B8();
  v53 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v44 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v47 = v10;
  if (v18)
  {
    v48 = v17;
    v49 = v18;
    sub_24F92C7F8();
    v19 = *(v11 + 8);
    v20 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = v16;
    v22 = v10;
    v23 = v10;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v7;
    v26 = v3;
    v28 = v27;
    (*(v43 + 8))(v9, v25);
    v48 = v24;
    v49 = v28;
    v3 = v26;
    sub_24F92C7F8();
    v19 = *(v11 + 8);
    v20 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = v16;
    v23 = v47;
    v22 = v47;
  }

  v29 = v19;
  v19(v21, v23);
  v30 = v51;
  *(v3 + 48) = v50;
  *(v3 + 64) = v30;
  *(v3 + 80) = v52;
  v31 = v44;
  sub_24F928398();
  v32 = sub_24F928348();
  v34 = v33;
  v42 = v29;
  v43 = v20;
  v29(v13, v22);
  *(v3 + 16) = v32;
  *(v3 + 24) = v34;
  type metadata accessor for LinkableText();
  v35 = v31;
  sub_24F928398();
  v41 = *(v53 + 16);
  v37 = v45;
  v36 = v46;
  v41(v6, v46, v45);
  sub_24F201D2C(&qword_27F21C360, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_24F929548();
  *(v3 + 32) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C4F0, &qword_24F9D5D28);
  sub_24F928398();
  v41(v6, v36, v37);
  sub_24F201D74();
  sub_24F929548();
  if (v50)
  {
    v38 = v50;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  (*(v53 + 8))(v36, v37);
  v42(v35, v47);
  *(v3 + 40) = v38;
  return v3;
}

uint64_t AccountSection.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountSection.deinit()
{

  sub_24E9BBAA8(v0 + 48);
  return v0;
}

uint64_t AccountSection.__deallocating_deinit()
{

  sub_24E9BBAA8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_24F201BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSection();
  v7 = swift_allocObject();
  result = AccountSection.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F201D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F201D74()
{
  result = qword_27F23C4F8;
  if (!qword_27F23C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C4F0, &qword_24F9D5D28);
    sub_24F201DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4F8);
  }

  return result;
}

unint64_t sub_24F201DF8()
{
  result = qword_27F23C500;
  if (!qword_27F23C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C500);
  }

  return result;
}

unint64_t sub_24F201E50()
{
  result = qword_27F23C508;
  if (!qword_27F23C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C508);
  }

  return result;
}

unint64_t sub_24F201EA8()
{
  result = qword_27F23C510;
  if (!qword_27F23C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235830, &qword_24F93B8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C510);
  }

  return result;
}

uint64_t sub_24F201FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F201FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F202048(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t PresentPromptV2ActionIntent.triggerKind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentPromptV2ActionIntent.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentPromptV2ActionIntent(0) + 20);
  v4 = sub_24F9294C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PresentPromptV2ActionIntent(uint64_t a1)
{
  result = qword_27F23C530;
  if (!qword_27F23C530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t PresentPromptV2ActionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4B72656767697274;
  *(inited + 40) = 0xEB00000000646E69;
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x617461646174656DLL;
  *(inited + 96) = 0xE800000000000000;
  v7 = *(type metadata accessor for PresentPromptV2ActionIntent(0) + 20);
  v8 = sub_24F9294C8();
  v9 = MEMORY[0x277D21EE8];
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, &v1[v7], v8);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24F20232C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x4B72656767697274;
  }
}

uint64_t sub_24F202370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B72656767697274 && a2 == 0xEB00000000646E69;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_24F202450(uint64_t a1)
{
  v2 = sub_24F202B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F20248C(uint64_t a1)
{
  v2 = sub_24F202B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresentPromptV2ActionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C518, &qword_24F9D6028);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F202B58();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PresentPromptV2ActionIntent(0);
    v8[14] = 1;
    sub_24F9294C8();
    sub_24F202BAC(&qword_27F226DB0, MEMORY[0x277D21EF8]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PresentPromptV2ActionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F9294C8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C528, &qword_24F9D6030);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PresentPromptV2ActionIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F202B58();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24F202BAC(&qword_27F226DC0, MEMORY[0x277D21F00]);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24F202BF0(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F202C54(v10);
}

unint64_t sub_24F2029CC@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4B72656767697274;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xEB00000000646E69;
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x617461646174656DLL;
  *(inited + 96) = 0xE800000000000000;
  v9 = *(a1 + 20);
  v10 = sub_24F9294C8();
  v11 = MEMORY[0x277D21EE8];
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, &v2[v9], v10);

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v13;
  return result;
}

unint64_t sub_24F202B58()
{
  result = qword_27F23C520;
  if (!qword_27F23C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C520);
  }

  return result;
}

uint64_t sub_24F202BAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24F9294C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F202BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentPromptV2ActionIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F202C54(uint64_t a1)
{
  v2 = type metadata accessor for PresentPromptV2ActionIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F202CC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F9294C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F202D84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F9294C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F202E28(uint64_t a1)
{
  result = sub_24F9294C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F202EB8()
{
  result = qword_27F23C540;
  if (!qword_27F23C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C540);
  }

  return result;
}

unint64_t sub_24F202F10()
{
  result = qword_27F23C548;
  if (!qword_27F23C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C548);
  }

  return result;
}

unint64_t sub_24F202F68()
{
  result = qword_27F23C550;
  if (!qword_27F23C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C550);
  }

  return result;
}

uint64_t sub_24F202FBC(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203148(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F2032F0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203448(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203590(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F20372C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203890(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203A14(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203BAC(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203D40(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203E84(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F203F9C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F20410C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F20425C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F2043A0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F2044B4(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F2045BC(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F204720(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F204854(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F2049D0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92B218();
}

uint64_t sub_24F204B30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_24E8E2880(a2, a3);
  sub_24F92B218();
}

uint64_t StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a11)
{
  v18 = a1[1];
  *a9 = *a1;
  a9[1] = v18;
  v19 = type metadata accessor for StoreTab(0);
  sub_24E99091C(a2, a9 + v19[6]);
  v20 = (a9 + v19[7]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v19[9]);
  *v21 = a5;
  v21[1] = a6;
  if (a8)
  {
    result = sub_24E601704(a2, &qword_27F228530, &unk_24F93C6E0);
    v23 = a7;
  }

  else
  {
    StoreTab.Identifier.rawValue.getter();
    sub_24E600AEC();
    v23 = sub_24F92C4F8();
    a8 = v24;
    sub_24E601704(a2, &qword_27F228530, &unk_24F93C6E0);
  }

  a9[2] = v23;
  a9[3] = a8;
  *(a9 + v19[8]) = a11;
  return result;
}

uint64_t type metadata accessor for StoreTab(uint64_t a1)
{
  result = qword_27F23C570;
  if (!qword_27F23C570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F204E74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a3)
    {
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA6F4F0);
      MEMORY[0x253050C20](a1, a2);
      v7 = 0x6461637241736926;
      v8 = 0xEE00657572743D65;
    }

    else
    {
      sub_24F92C888();

      v7 = a1;
      v8 = a2;
    }

    MEMORY[0x253050C20](v7, v8);
    sub_24F91F488();
  }

  else
  {
    v9 = sub_24F91F4A8();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

uint64_t sub_24F204FFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a3)
    {
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000023, 0x800000024FA6F520);
      MEMORY[0x253050C20](a1, a2);
      v7 = 0x6461637241736926;
      v8 = 0xEE00657572743D65;
    }

    else
    {
      sub_24F92C888();

      v7 = a1;
      v8 = a2;
    }

    MEMORY[0x253050C20](v7, v8);
    sub_24F91F488();
  }

  else
  {
    v9 = sub_24F91F4A8();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

double StoreTab.identifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24E8E2880(v2, v3);
}

uint64_t StoreTab.pageContext.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StoreTab.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = 0x656461637261;
      }

      else if (v2 == 6)
      {
        v3 = 0x6465727574616566;
      }

      else
      {
        v3 = 0x69726F6765746163;
      }

      goto LABEL_25;
    }

    switch(v2)
    {
      case 8:
        v3 = 0x737472616863;
        goto LABEL_25;
      case 9:
        v3 = 0x6573616863727570;
        goto LABEL_25;
      case 10:
        v3 = 0x64616F6C6E776F64;
        goto LABEL_25;
    }

LABEL_24:
    v3 = *v0;
    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x7961646F74;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v3 = 0x73656D6167;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = 1936748641;
  }

  else if (v2 == 3)
  {
    v3 = 0x73657461647075;
  }

  else
  {
    v3 = 0x686372616573;
  }

LABEL_25:
  sub_24E8E2880(v1, v2);
  return v3;
}

uint64_t StoreTab.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreTab(0) + 24);

  return sub_24E99091C(v3, a1);
}

uint64_t StoreTab.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoreTab(0) + 28));

  return v1;
}

double StoreTab.editorialPageUrls.getter()
{
  type metadata accessor for StoreTab(0);

  return result;
}

uint64_t StoreTab.imageIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoreTab(0) + 36));

  return v1;
}

uint64_t StoreTab.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a2;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v16);
  v82 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  sub_24F928398();
  sub_24F205C40();
  v24 = v83;
  sub_24F928218();
  if (v24)
  {
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v84, v25);
    v26 = *(v10 + 8);
    v26(a1, v9);
    return (v26)(v23, v9);
  }

  else
  {
    v75 = v15;
    v73 = v12;
    v77 = v8;
    v83 = 0;
    v29 = *(v10 + 8);
    v28 = v10 + 8;
    v29(v23, v9);
    v30 = v87;
    v31 = v88;
    v32 = v89;
    *v89 = v87;
    v32[1] = v31;
    v74 = v30;
    v80 = v31;
    sub_24E8E2880(v30, v31);
    v33 = a1;
    sub_24F928398();
    v34 = type metadata accessor for StoreTab(0);
    sub_24F928268();
    v35 = v29;
    v29(v20, v9);
    sub_24F928398();
    v36 = sub_24F928348();
    v38 = v37;
    v29(v20, v9);
    v39 = (v32 + *(v34 + 28));
    *v39 = v36;
    v39[1] = v38;
    sub_24F928398();
    v40 = sub_24F928348();
    v42 = v41;
    v29(v20, v9);
    v78 = v34;
    v43 = (v32 + *(v34 + 36));
    *v43 = v40;
    v43[1] = v42;
    v44 = v82;
    sub_24F928398();
    v45 = sub_24F928348();
    v47 = v46;
    v29(v44, v9);
    v82 = v9;
    if (v47)
    {
      v48 = v77;
      v49 = v74;
    }

    else
    {
      v49 = v74;
      v87 = v74;
      v88 = v80;
      v85 = StoreTab.Identifier.rawValue.getter();
      v86 = v50;
      sub_24E600AEC();
      v45 = sub_24F92C4F8();
      v47 = v51;

      v48 = v77;
    }

    v52 = v89;
    v89[2] = v45;
    v52[3] = v47;
    v53 = v80;
    v87 = v49;
    v88 = v80;
    v54 = StoreTab.Identifier.rawValue.getter();
    v56 = v55;
    sub_24E8E29C4(v49, v53);
    if (v54 == 0x656461637261 && v56 == 0xE600000000000000)
    {

      LODWORD(v77) = 1;
    }

    else
    {
      LODWORD(v77) = sub_24F92CE08();
    }

    v57 = v75;
    sub_24F928398();
    sub_24F9281F8();
    v58 = v82;
    v35(v57, v82);
    v59 = sub_24F928E68();
    v60 = *(v59 - 8);
    v80 = v28;
    v61 = v35;
    v62 = *(v60 + 48);
    v63 = v62(v48, 1, v59);
    v79 = v61;
    v76 = v33;
    if (v63 == 1)
    {
      sub_24E601704(v48, qword_27F221C40, &unk_24F967D80);
      v64 = v73;
      sub_24F928398();
      v65 = v81;
      sub_24F9281F8();
      v61(v64, v58);
      v66 = v62(v65, 1, v59);
      if (v66 == 1)
      {
        sub_24E601704(v65, qword_27F221C40, &unk_24F967D80);
        v67 = sub_24E609218(MEMORY[0x277D84F90]);
      }

      else
      {
        MEMORY[0x28223BE20](v66);
        *(&v73 - 16) = v77 & 1;
        sub_24F91F4A8();
        sub_24F206DC0();
        v71 = v83;
        v67 = sub_24F928E38();
        v83 = v71;
        (*(v60 + 8))(v65, v59);
      }

      v69 = v84;
      v70 = v89;
    }

    else
    {
      MEMORY[0x28223BE20](v63);
      *(&v73 - 16) = v77 & 1;
      sub_24F91F4A8();
      sub_24F206DC0();
      v68 = v83;
      v67 = sub_24F928E38();
      v83 = v68;
      (*(v60 + 8))(v48, v59);
      v69 = v84;
      v70 = v89;
    }

    v72 = sub_24F9285B8();
    (*(*(v72 - 8) + 8))(v69, v72);
    result = v79(v76, v82);
    *(v70 + *(v78 + 32)) = v67;
  }

  return result;
}

unint64_t sub_24F205C40()
{
  result = qword_27F23C558;
  if (!qword_27F23C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C558);
  }

  return result;
}

uint64_t sub_24F205C94@<X0>(void (*a3)(uint64_t)@<X4>, _BYTE *a4@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_24F92CB88();

  if (v12 > 2)
  {
    goto LABEL_4;
  }

  v13 = sub_24F928348();
  v20(v13);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &qword_27F228530, &unk_24F93C6E0);
LABEL_4:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F0, &qword_24F93AAC0);
    return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F0, &qword_24F93AAC0);
  v18 = *(v17 + 48);
  *a4 = v12;
  v16(&a4[v18], v11, v8);
  return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
}

uint64_t StoreTab.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_24E8E2880(*v2, *(v2 + 8));
  sub_24F92B218();

  sub_24F92B218();
  v11 = type metadata accessor for StoreTab(0);
  sub_24E99091C(v2 + v11[6], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24F92D088();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24F92D088();
    sub_24F2071B4(&qword_27F2252E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24F92AEF8();
    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + v11[7] + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F206438(a1, *(v2 + v11[8]));
  if (!*(v2 + v11[9] + 8))
  {
    return sub_24F92D088();
  }

  sub_24F92D088();
  return sub_24F92B218();
}

uint64_t StoreTab.hashValue.getter()
{
  sub_24F92D068();
  StoreTab.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F20638C@<X0>(uint64_t *a1@<X8>)
{
  result = StoreTab.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F2063B4()
{
  sub_24F92D068();
  StoreTab.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F2063F8()
{
  sub_24F92D068();
  StoreTab.hash(into:)(v1);
  return sub_24F92D0B8();
}

void sub_24F206438(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A970, &qword_24F988C50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = *(a2 + 64);
  v38 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v39 = v4 + 16;
  v49 = (v4 + 32);
  v45 = v4;
  v46 = a2;
  v47 = (v4 + 8);

  v20 = 0;
  v21 = 0;
  v44 = v6;
  v41 = v11;
  v42 = v3;
  v40 = v14;
  while (1)
  {
    v50 = v20;
    if (!v18)
    {
      break;
    }

    v22 = v21;
LABEL_14:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v45;
    v28 = *(*(v46 + 48) + v26);
    v3 = v42;
    v29 = v43;
    (*(v45 + 16))(v43, *(v46 + 56) + *(v45 + 72) * v26, v42);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978, &qword_24F988C58);
    v31 = *(v30 + 48);
    v32 = v41;
    *v41 = v28;
    v11 = v32;
    (*(v27 + 32))(&v32[v31], v29, v3);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    v6 = v44;
    v14 = v40;
LABEL_15:
    sub_24F207144(v11, v14);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978, &qword_24F988C58);
    if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
    {

      MEMORY[0x253052A00](v50);
      return;
    }

    (*v49)(v6, &v14[*(v33 + 48)], v3);
    v34 = *(v48 + 48);
    v53 = *(v48 + 32);
    v54 = v34;
    v55 = *(v48 + 64);
    v35 = *(v48 + 16);
    v51 = *v48;
    v52 = v35;
    sub_24F92B218();

    sub_24F2071B4(&qword_27F2252E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24F92AEF8();
    (*v47)(v6, v3);
    v20 = sub_24F92D0B8() ^ v50;
  }

  if (v19 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978, &qword_24F988C58);
      (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
      v18 = 0;
      v21 = v24;
      goto LABEL_15;
    }

    v18 = *(v38 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t _s12GameStoreKit0B3TabV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C18, &unk_24F9B3900);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = *a1;
  v40 = *a2;
  v41 = v13;
  v14 = StoreTab.Identifier.rawValue.getter();
  v16 = v15;
  if (v14 == StoreTab.Identifier.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_24F92CE08();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for StoreTab(0);
  v20 = v19[6];
  v21 = *(v10 + 48);
  sub_24E99091C(a1 + v20, v12);
  sub_24E99091C(a2 + v20, &v12[v21]);
  v22 = *(v5 + 48);
  if (v22(v12, 1, v4) != 1)
  {
    sub_24E99091C(v12, v9);
    if (v22(&v12[v21], 1, v4) != 1)
    {
      v24 = v39;
      (*(v5 + 32))(v39, &v12[v21], v4);
      sub_24F2071B4(&qword_27F226C38, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v25 = sub_24F92AFF8();
      v26 = *(v5 + 8);
      v26(v24, v4);
      v26(v9, v4);
      sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v9, v4);
LABEL_13:
    sub_24E601704(v12, &qword_27F226C18, &unk_24F9B3900);
    return 0;
  }

  if (v22(&v12[v21], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
LABEL_17:
  v27 = v19[7];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  sub_24EBACFF8(*(a1 + v19[8]), *(a2 + v19[8]));
  if (v32)
  {
    v33 = v19[9];
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    v37 = v36[1];
    if (v35)
    {
      if (v37 && (*v34 == *v36 && v35 == v37 || (sub_24F92CE08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v37)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24F206DC0()
{
  result = qword_27F23C560;
  if (!qword_27F23C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C560);
  }

  return result;
}

uint64_t sub_24F206EA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F206F70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F207020(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F2070D8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F2070D8(uint64_t a1)
{
  if (!qword_27F23C580)
  {
    sub_24F91F4A8();
    sub_24F206DC0();
    v1 = sub_24F92AEA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23C580);
    }
  }
}

uint64_t sub_24F207144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A970, &qword_24F988C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2071B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F207210(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F207290(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GameCenterSignOutAction(uint64_t a1)
{
  result = qword_27F23C588;
  if (!qword_27F23C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F20734C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C598, &qword_24F9D63E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameCenterSignOutAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2077AC();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F207800(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F2075B8(uint64_t a1)
{
  v2 = sub_24F2077AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2075F4(uint64_t a1)
{
  v2 = sub_24F2077AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F207648(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C5A8, &qword_24F9D63E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2077AC();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F2077AC()
{
  result = qword_27F23C5A0;
  if (!qword_27F23C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5A0);
  }

  return result;
}

uint64_t sub_24F207800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterSignOutAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F207878()
{
  result = qword_27F23C5B0;
  if (!qword_27F23C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5B0);
  }

  return result;
}

unint64_t sub_24F2078D0()
{
  result = qword_27F23C5B8;
  if (!qword_27F23C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5B8);
  }

  return result;
}

unint64_t sub_24F207928()
{
  result = qword_27F23C5C0;
  if (!qword_27F23C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5C0);
  }

  return result;
}

id static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = objc_opt_self();
  if (a5)
  {
    v11 = [v10 configurationWithTextStyle_];
  }

  else
  {
    v11 = [v10 configurationWithTextStyle:a1 scale:a4];
  }

  result = v11;
  if ((a3 & 1) == 0)
  {
    v13 = result;
    v14 = [objc_opt_self() configurationWithWeight_];
    v15 = [v13 configurationByApplyingConfiguration_];

    return v15;
  }

  return result;
}

uint64_t sub_24F207A6C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24F929FB8();
  v6 = (*(*(v5 - 8) + 48))(a1, a2, v5);
  if (v6 >= 0xC)
  {
    return v6 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F207AEC(uint64_t a1, int a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v6 = (a2 + 11);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_24F929FB8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, a3, v7);
}

uint64_t type metadata accessor for StoreViewControllerLifecycleEvent(uint64_t a1)
{
  result = qword_27F23C5C8;
  if (!qword_27F23C5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F207BBC(uint64_t a1, __n128 a2)
{
  v2 = sub_24F929FB8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

char *sub_24F207C28(char *a1, void *a2, void *a3, uint64_t a4)
{
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return a1;
  }

  v8 = [a2 toDictionary];
  if (!v8)
  {
    a1 = "ctive JS worker thread";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();

    return a1;
  }

  v9 = v8;
  v10 = sub_24F92AE38();

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a4;
  v12 = a3;

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_24F207E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15JSAMSEngagement_engagement);
  v5 = sub_24F92AE28();
  v6 = [v4 enqueueData_];

  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v9[4] = sub_24F20B72C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24E955CC4;
  v9[3] = &block_descriptor_127;
  v8 = _Block_copy(v9);

  [v6 addErrorBlock_];
  _Block_release(v8);
}

uint64_t sub_24F207F84(uint64_t a1, uint64_t a2)
{
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v7[0] = a2;
  sub_24F928438();
  sub_24E857CC8(v7);
  MetatypeMetadata = MEMORY[0x277D837D0];
  v7[0] = 0x4465756575716E65;
  v7[1] = 0xEF293A5F28617461;
  sub_24F928438();
  sub_24E857CC8(v7);
  sub_24F9283A8();
  swift_getErrorValue();
  MetatypeMetadata = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v7);
  sub_24F92A5A8();
}

uint64_t sub_24F208278(uint64_t a1)
{
  v35 = a1;
  v38 = sub_24F922028();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v37 = v3;
  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v11 = sub_24F922038();
  v12 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v14, "EngagementRequestPromise", "", v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v15 = *(v1 + 16);
  v16 = v38;
  v15(v6, v9, v38);
  sub_24F922098();
  swift_allocObject();
  v34 = sub_24F922088();
  v17 = *(v1 + 8);
  v17(v9, v16);
  sub_24F922038();
  v18 = v37;
  sub_24F921FF8();
  v19 = sub_24F922038();
  v20 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v19, v20, v22, "EngagementRequest", "", v21, 2u);
    v23 = v21;
    v18 = v37;
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  v24 = v38;
  v15(v6, v18, v38);
  swift_allocObject();
  v25 = sub_24F922088();
  v26 = v18;
  v27 = v25;
  v17(v26, v24);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v28 = sub_24F92C448();
  MEMORY[0x28223BE20](v28);
  v29 = v35;
  *(&v33 - 4) = v34;
  *(&v33 - 3) = v27;
  v30 = v36;
  *(&v33 - 2) = v29;
  *(&v33 - 1) = v30;
  v31 = sub_24F92C458();

  return v31;
}

const char *sub_24F208638(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v55 = a5;
  v60 = a3;
  v61 = a2;
  v54 = a1;
  v53 = sub_24F922068();
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = sub_24F922028();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = sub_24F92AC68();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v20 = MEMORY[0x25304F260]();
  if (!v20)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v33 = sub_24F922058();
    __swift_project_value_buffer(v33, qword_27F23DAC0);
    v34 = sub_24F922038();
    sub_24F922078();
    v35 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v36 = v57;
      v37 = v53;
      if ((*(v57 + 88))(v7, v53) == *MEMORY[0x277D85B00])
      {
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v36 + 8))(v7, v37);
        v38 = "success=false";
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v34, v35, v47, "EngagementRequest", v38, v46, 2u);
      MEMORY[0x2530542D0](v46, -1, -1);
    }

    (*(v58 + 8))(v13, v59);
    v30 = "RecommendationPromise";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [a4 toDictionary];
  if (!v22)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v39 = sub_24F922058();
    __swift_project_value_buffer(v39, qword_27F23DAC0);
    v40 = sub_24F922038();
    sub_24F922078();
    v41 = sub_24F92C048();
    v42 = sub_24F92C478();
    v43 = v57;
    if (v42)
    {

      sub_24F9220A8();

      v44 = v53;
      if ((*(v43 + 88))(v10, v53) == *MEMORY[0x277D85B00])
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v10, v44);
        v45 = "success=false";
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v40, v41, v49, "EngagementRequest", v45, v48, 2u);
      MEMORY[0x2530542D0](v48, -1, -1);
    }

    (*(v58 + 8))(v16, v59);
    v30 = "EngagementRequestPromise";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_22;
  }

  v23 = v22;
  v24 = sub_24F92AE38();

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v21;
  v27 = v60;
  v26[4] = v25;
  v26[5] = v27;
  v28 = v54;
  v29 = v55;
  v26[6] = v55;
  v30 = v28;

  v31 = v29;
  v32 = v56;
  sub_24F92AC48();
  if (v32)
  {

LABEL_22:

LABEL_23:
    sub_24F208D50();
    return v30;
  }

  v30 = sub_24F92AC58();

  (*(v52 + 8))(v19, v17);

  sub_24F208D50();
  return v30;
}

uint64_t sub_24F208D50()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "EngagementRequestPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F208FDC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v49 = a8;
  v50 = a2;
  v55 = a6;
  v56 = a5;
  v54 = a1;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24F9298B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0x74756F656D6974;
  v58 = 0xE700000000000000;
  sub_24F92C7F8();
  v18 = *(a4 + 16);
  v51 = v14;
  v52 = a3;
  v53 = a7;
  if (v18 && (v19 = sub_24E76D934(v59), (v20 & 1) != 0))
  {
    sub_24E643A9C(*(a4 + 56) + 32 * v19, v60);
    sub_24E6585F8(v59);
    if (swift_dynamicCast())
    {
      (*(v13 + 16))(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
      v21 = a7;
      v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v23 = swift_allocObject();
      v46 = v13;
      *(v23 + 16) = v55;
      *(v23 + 24) = v21;
      v24 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = v15;
      v26 = v12;
      (*(v46 + 32))(v23 + v22, v25, v12);

      sub_24F9298C8();
      v13 = v46;

      (*(v47 + 8))(v17, v48);
    }

    else
    {
      v24 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = v12;
    }
  }

  else
  {
    v24 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v12;
    sub_24E6585F8(v59);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90, &unk_24F9A3EE0);
  v27 = *(v49 + OBJC_IVAR____TtC12GameStoreKit15JSAMSEngagement_engagement);
  v28 = sub_24F92AE28();
  v29 = [v27 enqueueData_];

  v49 = sub_24F92A9D8();
  v30 = *(v13 + 16);
  v31 = v24;
  v30(v24, v50, v26);
  v32 = *(v13 + 80);
  v33 = v51;
  v34 = swift_allocObject();
  v50 = v34;
  v35 = v55;
  v34[2] = v56;
  v34[3] = v35;
  v36 = v53;
  v34[4] = v54;
  v34[5] = v36;
  v37 = *(v13 + 32);
  v37(v34 + ((v32 + 48) & ~v32), v24, v26);
  v30(v24, v52, v26);
  v38 = (v32 + 40) & ~v32;
  v39 = swift_allocObject();
  v40 = v55;
  *(v39 + 2) = v56;
  *(v39 + 3) = v40;
  *(v39 + 4) = v53;
  v37(&v39[v38], v31, v26);
  v41 = v54;
  *&v39[(v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8] = v54;
  v42 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v43 = v41;
  v44 = sub_24F92BEF8();
  v59[3] = v42;
  v59[4] = MEMORY[0x277D225C0];
  v59[0] = v44;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

void sub_24F209500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F922068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v22 = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v14 = sub_24F922058();
    __swift_project_value_buffer(v14, qword_27F23DAC0);
    v15 = sub_24F922038();
    sub_24F922078();
    v16 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "success=false";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v19, "EngagementRequest", v17, v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = sub_24F92A868();
    __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    sub_24F92A808();
    v21 = sub_24F9281A8();
  }
}

double sub_24F209B24(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v22[1] = a2;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = *a1;
  (*(v13 + 16))(v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12, v15);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = v16;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  (*(v13 + 32))(&v18[v17], v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  v19 = v16;
  v20 = a4;

  sub_24F9298E8();

  return result;
}

void sub_24F209CA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v8 = sub_24F922068();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v13 = sub_24F922028();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v44 - v18;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v20 = sub_24F92AAE8();
    __swift_project_value_buffer(v20, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v45 = v8;
    v44[1] = v16;
    v49 = v14;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v21 = sub_24E608448(MEMORY[0x277D84F90]);
    v22 = [a2 data];
    if (v22)
    {
      v23 = v22;
      v24 = sub_24F92AE38();

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
      *&v52 = v24;
      sub_24E612B0C(&v52, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v21;
      sub_24E81C1D4(v51, 1635017060, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      v21 = v50;
    }

    v26 = [a2 actions];
    if (v26)
    {
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
      v28 = sub_24F92B5A8();

      if (*(v28 + 16))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC38, &qword_24F9D27B8);
        *&v52 = v28;
        sub_24E612B0C(&v52, v51);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v21;
        sub_24E81C1D4(v51, 0x736E6F69746361, 0xE700000000000000, v29);
        v21 = v50;
      }

      else
      {
      }
    }

    *&v52 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v30 = sub_24F92CF68();
    v31 = [objc_opt_self() valueWithObject:v30 inContext:a3];
    swift_unknownObjectRelease();
    if (v31)
    {

      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v32 = sub_24F922058();
      __swift_project_value_buffer(v32, qword_27F23DAC0);
      v33 = sub_24F922038();
      sub_24F922078();
      v34 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();

        v35 = v47;
        v36 = v45;
        if ((*(v47 + 88))(v12, v45) == *MEMORY[0x277D85B00])
        {
          v37 = "[Error] Interval already ended";
        }

        else
        {
          (*(v35 + 8))(v12, v36);
          v37 = "success=true";
        }

        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v33, v34, v39, "EngagementRequest", v37, v38, 2u);
        MEMORY[0x2530542D0](v38, -1, -1);
      }

      v40 = *(v49 + 8);
      v49 += 8;
      v40(v19, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_24F93DE60;
      *(v41 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      *(v41 + 32) = v31;
      v42 = v31;
      v43 = sub_24F9281A8();
    }

    else
    {
      __break(1u);
    }
  }
}