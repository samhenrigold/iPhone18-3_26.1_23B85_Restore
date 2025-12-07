void sub_1E62896B0(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1E628974C(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

unint64_t sub_1E6289700(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65E6A48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_1E628974C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077600, &qword_1E65FA278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62899B0();
  sub_1E65E6D98();
  v8[32] = 0;
  sub_1E5F8BF70();
  sub_1E65E6AD8();
  v6 = v9;
  v8[24] = 1;
  sub_1E65E6AD8();
  v8[16] = 2;
  sub_1E65E6AD8();
  v8[15] = 3;
  sub_1E65E6AD8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t sub_1E62899B0()
{
  result = qword_1ED0775E0;
  if (!qword_1ED0775E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775E0);
  }

  return result;
}

unint64_t sub_1E6289A18()
{
  result = qword_1ED0775E8;
  if (!qword_1ED0775E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775E8);
  }

  return result;
}

unint64_t sub_1E6289A70()
{
  result = qword_1ED0775F0;
  if (!qword_1ED0775F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775F0);
  }

  return result;
}

unint64_t sub_1E6289AC8()
{
  result = qword_1ED0775F8;
  if (!qword_1ED0775F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775F8);
  }

  return result;
}

uint64_t sub_1E6289B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 <= 3u)
  {
    if (v2 <= 1u)
    {
      if (v2)
      {
        v9 = MEMORY[0x1E69CC450];
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    if (v2 != 2)
    {
      v9 = MEMORY[0x1E69CC428];
      goto LABEL_18;
    }

LABEL_14:
    v9 = MEMORY[0x1E69CC4A8];
    goto LABEL_18;
  }

  if (v2 <= 5u)
  {
    if (v2 != 4)
    {
      v9 = MEMORY[0x1E69CC438];
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v2 == 6)
  {
    v9 = MEMORY[0x1E69CC490];
    goto LABEL_18;
  }

  if (v2 != 7)
  {
    v9 = MEMORY[0x1E69CC498];
LABEL_18:
    v20 = *v9;
    v21 = sub_1E65D9908();
    v23 = *(v21 - 8);
    (*(v23 + 104))(a2, v20, v21);
    v22 = *(v23 + 56);

    return v22(a2, 0, 1, v21);
  }

LABEL_8:
  v10 = v6;
  sub_1E65DE358();
  v11 = sub_1E65E3B48();
  v12 = sub_1E65E6328();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = sub_1E65DFFA8();
    v17 = sub_1E5DFD4B0(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1E5DE9000, v11, v12, "Metric Destination not supported for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v10);
  v18 = sub_1E65D9908();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

unint64_t sub_1E6289E48(char a1, char a2)
{
  result = 0x632E657275676966;
  switch(a2)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x642E657275676966;
      break;
    case 4:
    case 12:
      if (a1)
      {
        result = 0xD000000000000017;
      }

      else
      {
        result = 0x722E657275676966;
      }

      break;
    case 5:
      if (a1)
      {
        result = 0x722E657275676966;
      }

      else
      {
        result = 0x772E657275676966;
      }

      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D2E656C707061;
      break;
    case 9:
      result = 0x702E657275676966;
      break;
    case 10:
      result = 0x722E657275676966;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0x792E657275676966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E628A07C@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65D7FB8();
  switch(v11)
  {
    case 1:
      v5 = MEMORY[0x1E699F4C8];
      goto LABEL_17;
    case 2:
      v5 = MEMORY[0x1E699F4F0];
      goto LABEL_17;
    case 3:
      v5 = MEMORY[0x1E699F4E0];
      goto LABEL_17;
    case 4:
      v5 = MEMORY[0x1E699F510];
      goto LABEL_17;
    case 5:
      v5 = MEMORY[0x1E699F4B0];
      goto LABEL_17;
    case 6:
      v5 = MEMORY[0x1E699F4D0];
      goto LABEL_17;
    case 7:
      v5 = MEMORY[0x1E699F4B8];
      goto LABEL_17;
    case 8:
      v5 = MEMORY[0x1E699F4C0];
      goto LABEL_17;
    case 9:
      v5 = MEMORY[0x1E699F4F8];
      goto LABEL_17;
    case 10:
      v5 = MEMORY[0x1E699F4E8];
      goto LABEL_17;
    case 11:
      v5 = MEMORY[0x1E699F508];
      goto LABEL_17;
    case 12:
      v5 = MEMORY[0x1E699F518];
      goto LABEL_17;
    case 13:
      v5 = MEMORY[0x1E699F4D8];
      goto LABEL_17;
    case 14:
      v6 = sub_1E65E2A48();
      return (*(*(v6 - 8) + 56))(a4, 1, 1, v6);
    default:
      v5 = MEMORY[0x1E699F500];
LABEL_17:
      v8 = *v5;
      v9 = sub_1E65E2A48();
      v10 = *(v9 - 8);
      (*(v10 + 104))(a4, v8, v9);
      return (*(v10 + 56))(a4, 0, 1, v9);
  }
}

uint64_t dispatch thunk of RouteDetourPresenting.activate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E61CFDA0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RouteDetourPresenting.deactivate(display:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFE6BC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RouteDetourDisplaying.apply(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFA78C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RouteDetourDisplaying.reset(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return v9(a1, a2, a3);
}

uint64_t sub_1E628A770()
{
  v0 = sub_1E65DE688();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = sub_1E65DEBD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE648();
  (*(v1 + 104))(v4, *MEMORY[0x1E699CBC8], v0);
  v11 = sub_1E65DE678();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  v13 = MEMORY[0x1E699CD18];
  if ((v11 & 1) == 0)
  {
    v13 = MEMORY[0x1E699CD10];
  }

  (*(v8 + 104))(v10, *v13, v7);
  return sub_1E65DEBA8();
}

uint64_t sub_1E628A978@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v43 = a2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v41 = sub_1E65DEA78();
  v11 = *(v41 - 8);
  v39 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v34 - v16;
  sub_1E5E1D5BC(v2, v10, type metadata accessor for AppComposer);
  v17 = *(v5 + 80);
  v18 = (v17 + 16) & ~v17;
  v36 = v18 + v6;
  v37 = v17 | 7;
  v19 = swift_allocObject();
  sub_1E5E1FA80(v10, v19 + v18);
  sub_1E5E1D5BC(v3, v8, type metadata accessor for AppComposer);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v8, v20 + v18);
  sub_1E5DF650C(v40, v45);
  v21 = swift_allocObject();
  sub_1E5DF599C(v45, v21 + 16);
  v22 = v44;
  sub_1E65DEA38();
  v23 = v10;
  sub_1E5E1D5BC(v3, v10, type metadata accessor for AppComposer);
  v24 = v11;
  v40 = *(v11 + 16);
  v25 = v38;
  v26 = v41;
  v40(v38, v22, v41);
  v27 = *(v24 + 80);
  v35 = v24;
  v28 = (v36 + v27) & ~v27;
  v29 = swift_allocObject();
  sub_1E5E1FA80(v23, v29 + v18);
  v30 = *(v24 + 32);
  v30(v29 + v28, v25, v26);
  v31 = v42;
  v40(v42, v44, v26);
  v32 = swift_allocObject();
  v30(v32 + ((v27 + 16) & ~v27), v31, v26);
  sub_1E65DB208();
  sub_1E628C244(&qword_1ED077630, MEMORY[0x1E699D110], MEMORY[0x1E699D108]);
  sub_1E65DE478();
  return (*(v35 + 8))(v44, v26);
}

uint64_t sub_1E628AE00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E628AE20, 0, 0);
}

uint64_t sub_1E628AE20()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E628AFA8;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E628AFA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E628B0B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E628AE00(a1, v1 + v5);
}

uint64_t sub_1E628B1B4()
{
  v1 = v0[3];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_1E65E6448();

  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077648, &qword_1E65FA320);
  v1[4] = sub_1E5FED46C(&qword_1ED077650, &qword_1ED077648, &qword_1E65FA320, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  v0[2] = v3;
  sub_1E65E6438();
  sub_1E628C244(&qword_1ED077658, MEMORY[0x1E6969F08], MEMORY[0x1E6969F10]);
  sub_1E65E69C8();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E628B350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v1 = swift_allocObject();
  v0[3] = v1;
  *(v1 + 16) = xmmword_1E65EA660;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = AccountService.fetchUserContact.getter();
  v0[4] = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E628B4C4;

  return v6(v1);
}

uint64_t sub_1E628B4C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E628B65C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1E628B5EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E628B5EC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1E628B65C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E628B6C8()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E628B330(v0 + v3);
}

uint64_t sub_1E628B794(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = type metadata accessor for RouteSource(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E628B828, 0, 0);
}

uint64_t sub_1E628B828()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v5 = (type metadata accessor for RouteDestination(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 56) = v7;
  *(v7 + 16) = xmmword_1E65EA670;
  v8 = v7 + v6;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v1, v8 + v5[7], type metadata accessor for RouteSource);
  *(v8 + v5[8]) = MEMORY[0x1E69E7CD0];
  sub_1E6069714(v1);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  sub_1E600F5B0((v0 + 25));
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1E628BA1C;

  return RoutingContext.presentDestinations(_:style:priority:)(v7, (v0 + 16), (v0 + 25), v4, v3);
}

uint64_t sub_1E628BA1C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E628BB80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E628BB80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E628BBE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return sub_1E628B794(v0 + 16);
}

uint64_t sub_1E628BC78(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077638, &qword_1E65FA310);
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - v3;
  v5 = sub_1E65DEA78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DE868();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v15, v5);
  sub_1E65DE858();
  type metadata accessor for AppFeature(0);
  sub_1E628C244(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E628C244(&qword_1ED077640, MEMORY[0x1E699CC70], MEMORY[0x1E699CC68]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v13 = sub_1E65E4F08();
  (*(v2 + 8))(v4, v16);
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1E628BF7C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DEA78() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E628BC78(v0 + v2, v5);
}

uint64_t sub_1E628C048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65DE668();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E628C0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DE668();
  v5 = *(*(v4 - 8) + 24);

  return v5(a1, a2, v4);
}

uint64_t sub_1E628C120()
{
  sub_1E65DEA48();
  sub_1E65DEA68();
  sub_1E65DEA58();
  sub_1E65DEE18();
  swift_allocObject();
  return sub_1E65DEE08();
}

uint64_t sub_1E628C1AC()
{
  sub_1E65DEA78();

  return sub_1E628C120();
}

uint64_t sub_1E628C20C(void *a1)
{
  v1 = a1;

  return MEMORY[0x1EEE050C0](v1);
}

uint64_t sub_1E628C244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E628C28C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchItemContext(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1E628C4E4(v4, v10);
    sub_1E628C4E4(v10, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1E65DCCE8();
      v12 = *(v11 - 8);
      (*(v12 + 32))(a1, v8, v11);
      return (*(v12 + 56))(a1, 0, 1, v11);
    }

    v14 = type metadata accessor for SearchItemContext;
    v15 = v8;
  }

  else
  {
    v14 = type metadata accessor for ItemContext;
    v15 = v4;
  }

  sub_1E61A6420(v15, v14);
  v16 = sub_1E65DCCE8();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

uint64_t sub_1E628C4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItemContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppComposer.navigationSplitViewBuilder<A, B>(sidebarViewBuilder:detailViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a4;
  v27[5] = a1;
  v27[6] = a3;
  v27[7] = a9;
  v13 = type metadata accessor for AppComposer(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v27[8] = a5;
  v27[9] = a6;
  v27[10] = a7;
  v27[11] = a8;
  v16 = sub_1E65DF178();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v27 - v21;
  sub_1E5E1DEAC(v27[1], v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);

  sub_1E65DF168();
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v25 = *(v17 + 8);
  v25(v20, v16);
  sub_1E5FEE4C8();
  return (v25)(v22, v16);
}

uint64_t sub_1E628C7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077660, &qword_1E65FA328);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - v2;
  v4 = sub_1E65DF1E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DF1D8();
  type metadata accessor for AppFeature(0);
  sub_1E628CB0C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E628CB0C(&qword_1ED077668, MEMORY[0x1E699CF88], MEMORY[0x1E699CF80]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v8 = sub_1E65E4F08();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1E628CA24()
{
  type metadata accessor for AppComposer(0);

  return sub_1E628C7C0();
}

uint64_t sub_1E628CA84(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AppState(0) + 156));

  return MEMORY[0x1EEE04F38](v1);
}

uint64_t sub_1E628CACC(uint64_t a1)
{
  v2 = sub_1E65DF1C8();
  result = type metadata accessor for AppState(0);
  *(a1 + *(result + 156)) = v2 & 1;
  return result;
}

uint64_t sub_1E628CB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E628CB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075688, &qword_1E65F1C18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = sub_1E65DF158();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65DF088();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E65DF148();
  sub_1E65DF078();
  type metadata accessor for AppFeature(0);
  sub_1E628CE38(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E628CE38(&qword_1EE2D67E8, MEMORY[0x1E699CF48], MEMORY[0x1E699CF40]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v12 = sub_1E65E4F08();
  (*(v4 + 8))(v6, v3);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1E628CE38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E628CE80()
{
  result = qword_1EE2D67F0;
  if (!qword_1EE2D67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D67F0);
  }

  return result;
}

uint64_t sub_1E628CED4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077670, &qword_1E65FA330);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v10);
  sub_1E5DFE50C(v7, &qword_1ED071F78, &unk_1E65EA3F0);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    sub_1E65D77C8();
    if (v15(v10, 1, v11) != 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  sub_1E65E4C98();
  sub_1E628CE80();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v3, &qword_1ED072808, &qword_1E65EBE00);
  return sub_1E65DF018();
}

uint64_t AppComposer.currentTimeViewBuilder()()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = sub_1E65E42C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1E65D7688();
  sub_1E65E61E8();
  (*(v1 + 16))(v4, v6, v0);
  sub_1E65E42B8();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 16))(v11, v13, v7);
  sub_1E628D79C();
  sub_1E65E3CB8();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E628D484@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65E4688();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E65D76A8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077678, &qword_1E65FA340);
  sub_1E65E3CA8();
  sub_1E65E4678();
  v4 = sub_1E65E4698();
  v6 = v5;
  v8 = v7;
  sub_1E65E4588();
  v9 = sub_1E65E4668();
  v11 = v10;
  v13 = v12;

  sub_1E6012728(v4, v6, v8 & 1);

  sub_1E65E41E8();
  v14 = sub_1E65E4648();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1E6012728(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_1E628D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077678, &qword_1E65FA340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077680, &qword_1E65FA348);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    sub_1E628D484(&v14);
    result = (*(v5 + 8))(v8, v4);
    v12 = v15;
    v13 = v16;
    *a2 = v14;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E628D79C()
{
  result = qword_1ED0757D0;
  if (!qword_1ED0757D0)
  {
    sub_1E65E42C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0757D0);
  }

  return result;
}

uint64_t sub_1E628D7F4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E628D918();
  sub_1E628D96C();
  v3 = 1;
  if ((sub_1E65D7FF8() & 1) == 0 && (sub_1E65D7FF8() & 1) == 0)
  {
    v3 = 2;
    if ((sub_1E65D7FF8() & 1) == 0)
    {
      if (sub_1E65D7FF8())
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }

  return v3;
}

unint64_t sub_1E628D918()
{
  result = qword_1EE2D7120;
  if (!qword_1EE2D7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7120);
  }

  return result;
}

unint64_t sub_1E628D96C()
{
  result = qword_1EE2D7118;
  if (!qword_1EE2D7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7118);
  }

  return result;
}

uint64_t sub_1E628D9C0@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v113 = &v98 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v98 - v5;
  v111 = sub_1E65DAC98();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v106 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E65E3328();
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1E65DA0B8();
  v107 = *(v108 - 8);
  v8 = MEMORY[0x1EEE9AC00](v108);
  v104 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v98 - v10;
  v102 = sub_1E65D9D58();
  v100 = *(v102 - 8);
  v11 = MEMORY[0x1EEE9AC00](v102);
  v101 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v98 - v13;
  v116 = sub_1E65D8BB8();
  v14 = MEMORY[0x1EEE9AC00](v116);
  v115 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v98 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  v17 = MEMORY[0x1EEE9AC00](v123);
  v122 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v98 - v19;
  v20 = sub_1E65D74E8();
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v130 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v98 - v24;
  v26 = sub_1E65D8818();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v124 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v121 = &v98 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v120 = &v98 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v119 = &v98 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v118 = &v98 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v98 - v38;
  v40 = sub_1E65D8478();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077690, &qword_1E65FA358);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v129 = &v98 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v98 - v47;
  v127 = v1;
  sub_1E65D9778();
  sub_1E65D87F8();
  v49 = *(v27 + 8);
  v125 = v27 + 8;
  v126 = v26;
  v117 = v49;
  v49(v39, v26);
  if ((*(v41 + 48))(v25, 1, v40) == 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED0752D0, &qword_1E65F1598);
    v50 = 1;
  }

  else
  {
    (*(v41 + 32))(v43, v25, v40);
    sub_1E65D8468();
    sub_1E65D8448();
    sub_1E65E3338();
    (*(v41 + 8))(v43, v40);
    v50 = 0;
  }

  v51 = sub_1E65E3348();
  (*(*(v51 - 8) + 56))(v48, v50, 1, v51);
  v52 = v132;
  sub_1E65D9768();
  v53 = v52;
  v54 = v115;
  sub_1E628E768(v53, v115);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v128 = v48;
  if (EnumCaseMultiPayload == 1)
  {
    v56 = v107;
    v57 = v103;
    v58 = v108;
    (*(v107 + 32))(v103, v54, v108);
    v59 = v104;
    (*(v56 + 16))(v104, v57, v58);
    v60 = v106;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E3318();
    (*(v110 + 8))(v60, v111);
    sub_1E65DA0A8();
    sub_1E628E7CC();
    v61 = v122;
    sub_1E65DC438();
    v62 = *(v56 + 8);
    v63 = v59;
    v64 = v128;
    v62(v63, v58);
    v62(v57, v58);
  }

  else
  {
    v64 = v48;
    v65 = v100;
    v66 = v99;
    v67 = v54;
    v68 = v102;
    (*(v100 + 32))(v99, v67, v102);
    v69 = v101;
    (*(v65 + 16))(v101, v66, v68);
    v61 = v122;
    sub_1E6134680(v69, v122);
    (*(v65 + 8))(v66, v68);
  }

  sub_1E625B0B0(v132);
  swift_storeEnumTagMultiPayload();
  sub_1E628E824(v61, v131);
  v70 = v118;
  sub_1E65D9778();
  v132 = sub_1E65D87A8();
  v123 = v71;
  v72 = v70;
  v73 = v126;
  v74 = v117;
  v117(v72, v126);
  v75 = v119;
  sub_1E65D9778();
  v122 = sub_1E65D87E8();
  v118 = v76;
  v74(v75, v73);
  sub_1E628E894(v64, v129);
  v77 = v120;
  sub_1E65D9778();
  sub_1E65D87B8();
  v74(v77, v73);
  v78 = v121;
  sub_1E65D9778();
  v79 = sub_1E65D8808();
  v119 = v80;
  v120 = v79;
  v74(v78, v73);
  v81 = v124;
  sub_1E65D9778();
  v82 = sub_1E65D87C8();
  v74(v81, v73);
  v83 = 1 << *(v82 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v82 + 56);
  v86 = (v83 + 63) >> 6;

  v87 = 0;
  v88 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v89 = v87;
    if (v85)
    {
LABEL_14:
      v90 = *(v82 + 48) + 24 * (__clz(__rbit64(v85)) | (v87 << 6));
      v91 = *(v90 + 16);
      v85 &= v85 - 1;
      v134 = *v90;
      v135 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077030, &qword_1E65F92F8);
      sub_1E65D7FB8();
      switch(v133)
      {
        case 0:
        case 2:
        case 9:
        case 12:
        case 13:
          continue;
        case 1:
          LODWORD(v127) = 0;
          goto LABEL_25;
        case 3:
          v92 = 2;
          goto LABEL_24;
        case 4:
          v92 = 1;
          goto LABEL_24;
        case 5:
          v92 = 3;
          goto LABEL_24;
        case 6:
          v92 = 4;
          goto LABEL_24;
        case 7:
          v92 = 5;
          goto LABEL_24;
        case 8:
          v92 = 6;
          goto LABEL_24;
        case 10:
          v92 = 7;
          goto LABEL_24;
        case 11:
          v92 = 8;
LABEL_24:
          LODWORD(v127) = v92;
LABEL_25:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1E64F6D20(0, *(v88 + 2) + 1, 1, v88);
          }

          v94 = *(v88 + 2);
          v93 = *(v88 + 3);
          v95 = v94 + 1;
          if (v94 >= v93 >> 1)
          {
            v126 = v94 + 1;
            v96 = sub_1E64F6D20((v93 > 1), v94 + 1, 1, v88);
            v95 = v126;
            v88 = v96;
          }

          *(v88 + 2) = v95;
          v88[v94 + 32] = v127;
          continue;
        default:
          goto LABEL_32;
      }
    }

    break;
  }

  while (1)
  {
    v87 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      __break(1u);
LABEL_32:
      JUMPOUT(0);
    }

    if (v87 >= v86)
    {
      break;
    }

    v85 = *(v82 + 56 + 8 * v87);
    ++v89;
    if (v85)
    {
      goto LABEL_14;
    }
  }

  sub_1E600CC24(v88);

  sub_1E65E3238();
  return sub_1E5DFE50C(v128, &unk_1ED077690, &qword_1E65FA358);
}

uint64_t sub_1E628E768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8BB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E628E7CC()
{
  result = qword_1ED075940;
  if (!qword_1ED075940)
  {
    sub_1E65E3328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075940);
  }

  return result;
}

uint64_t sub_1E628E824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E628E894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077690, &qword_1E65FA358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E628E904@<X0>(uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_1E65DB948();
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65DC158();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DB9F8();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v11;
  v12 = sub_1E65E07B8();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v41 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = sub_1E65DAE38();
  if (v22 == sub_1E65DAE38())
  {
    sub_1E65E0778();
    v45 = v21;
    sub_1E65E0768();
    v23 = *MEMORY[0x1E699D400];
    v24 = *(v5 + 104);
    v25 = v46;
    v24(v7, v23, v46);
    v26 = *(v2 + 104);
    v27 = v47;
    v26(v4, *MEMORY[0x1E699D178], v47);
    sub_1E65DB9E8();
    v24(v7, v23, v25);
    v26(v4, *MEMORY[0x1E699D170], v27);
    sub_1E65DB9E8();
  }

  else
  {
    v28 = v7;
    v45 = v4;
    v29 = v15;
    v31 = v46;
    v30 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0678();
    v32 = sub_1E65E07C8();
    v43 = v18;
    sub_1E65E0768();
    v44 = v29;
    sub_1E65E0768();
    if (sub_1E65E4B48())
    {
      sub_1E65DC368();
    }

    v42 = v32 & 1;
    v33 = 0x4054000000000000;
    if (v32)
    {
      v33 = 0;
    }

    v41 = v33;
    v34 = *MEMORY[0x1E699D3E8];
    v35 = *(v5 + 104);
    v36 = v7;
    v37 = v31;
    v35(v36, v34, v31);
    v38 = *(v2 + 104);
    v39 = v45;
    v38(v45, *MEMORY[0x1E699D178], v30);
    sub_1E65DB9E8();
    v35(v28, v34, v37);
    v38(v39, *MEMORY[0x1E699D180], v30);
    sub_1E65DB9E8();
  }

  return sub_1E65DBC18();
}

char *sub_1E628EE00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(type metadata accessor for RouteDetourNavigationControllerRoutingContext(0) + 20);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1E625E57C(a2 + v8, 0, v11, a1, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1E628EE88(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E628EF60, v5, v4);
}

uint64_t sub_1E628EF60()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = *(v5 + 20);
    sub_1E62CC108(v6 + v9, v3 + v9, type metadata accessor for AppComposer);
    v10 = *(v6 + *(v5 + 24));
    swift_unknownObjectWeakInit();
    v11 = swift_unknownObjectWeakAssign();
    *(v3 + *(v5 + 24)) = v10;
    sub_1E62CC108(v11, v4, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    swift_unknownObjectRetain();
    v12 = sub_1E6290E10(v6 + v9, 0, v4, v8);
    sub_1E62BC770(v4, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    [v2 pushViewController:v12 animated:v7];

    sub_1E62BC770(v3, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E628F138(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v3 + 104) = swift_task_alloc();
  v4 = type metadata accessor for RouteDestination(0);
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 136) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E628F2A4, v6, v5);
}

uint64_t sub_1E628F2A4()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 104);
    sub_1E5DFD1CC(*(v0 + 64), v5, &unk_1ED072040, &qword_1E65F0860);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v6 = *(v0 + 144);
      sub_1E5DFE50C(*(v0 + 104), &unk_1ED072040, &qword_1E65F0860);
      v7 = [v2 popToRootViewControllerAnimated_];

LABEL_20:

      v9 = *(v0 + 8);
      goto LABEL_21;
    }

    v10 = *(v0 + 128);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);
    sub_1E5E1E528(*(v0 + 104), v10, type metadata accessor for RouteDestination);
    v15 = *(v13 + 20);
    sub_1E62CC108(v14 + v15, v11 + v15, type metadata accessor for AppComposer);
    v16 = *(v14 + *(v13 + 24));
    swift_unknownObjectWeakInit();
    v17 = swift_unknownObjectWeakAssign();
    *(v11 + *(v13 + 24)) = v16;
    sub_1E62CC108(v17, v12, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    swift_unknownObjectRetain();
    v18 = sub_1E6290E10(v14 + v15, 0, v12, v10);
    sub_1E62BC770(v12, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    v19 = [v2 viewControllers];
    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v20 = sub_1E65E5F18();

    if (v20 >> 62)
    {
      result = sub_1E65E67C8();
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_7:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E694E2D0](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v22 = *(v20 + 32);
        }

        v23 = v22;

        goto LABEL_13;
      }
    }

    v23 = 0;
LABEL_13:
    *(v0 + 48) = v23;
    *(v0 + 56) = v18;
    v32 = MEMORY[0x1E69E7CC0];
    v24 = v18;
    for (i = 0; i != 2; ++i)
    {
      v26 = *(v0 + 48 + 8 * i);
      if (v26)
      {
        v27 = v26;
        MEMORY[0x1E694D8F0]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E65E5F68();
        }

        sub_1E65E5FA8();
      }
    }

    v28 = *(v0 + 128);
    v29 = *(v0 + 96);
    v30 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072140, &qword_1E65EA890);
    swift_arrayDestroy();
    v31 = sub_1E65E5EF8();

    [v2 setViewControllers:v31 animated:v30];

    sub_1E62BC770(v29, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    sub_1E62BC770(v28, type metadata accessor for RouteDestination);
    goto LABEL_20;
  }

  sub_1E5FAA54C();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();

  v9 = *(v0 + 8);
LABEL_21:

  return v9();
}

uint64_t sub_1E628F720(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 72) = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  *(v3 + 80) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 88) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E628F7EC, v5, v4);
}

uint64_t sub_1E628F7EC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    sub_1E62CC108(v7 + *(v4 + 20), v3 + *(v4 + 20), type metadata accessor for AppComposer);
    v8 = *(v7 + *(v4 + 24));
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v3 + *(v4 + 24)) = v8;
    *(v0 + 40) = v4;
    *(v0 + 48) = &off_1F5FB76B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1E62CC108(v3, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    *(v10 + 24) = v0 + 16;
    swift_unknownObjectRetain();
    sub_1E5F9F34C(sub_1E62CC3CC, v10, v6);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v11 = sub_1E65E5EF8();

    [v2 setViewControllers:v11 animated:v5];

    sub_1E62BC770(v3, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E628FA1C(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = type metadata accessor for RouteDetourViewControllerRoutingContext(0);
  *(v4 + 40) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 113) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 64) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E628FB04, v9, v8);
}

uint64_t sub_1E628FB04()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    v25 = *(v0 + 16);
    v7 = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
    v8 = *(v7 + 20);
    sub_1E62CC108(v6 + v8, v3 + *(v5 + 20), type metadata accessor for AppComposer);
    v9 = *(v6 + *(v7 + 24));
    swift_unknownObjectWeakInit();
    v10 = swift_unknownObjectWeakAssign();
    *(v3 + *(v5 + 24)) = v9;
    sub_1E62CC108(v10, v4, type metadata accessor for RouteDetourViewControllerRoutingContext);
    swift_unknownObjectRetain();
    v11 = sub_1E629F014(v6 + v8, 0, v4, v25);
    sub_1E62BC770(v4, type metadata accessor for RouteDetourViewControllerRoutingContext);
    v12 = sub_1E61AAA48(v11);
    *(v0 + 96) = v12;

    v13 = [v12 presentationController];
    if (v13)
    {
      v14 = v13;
      [v13 setDelegate_];
    }

    ObjectType = swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      v17 = v16;
      swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        if (v12)
        {
          v19 = v18;
          v20 = swift_task_alloc();
          *(v0 + 104) = v20;
          *v20 = v0;
          v20[1] = sub_1E628FE4C;

          return MEMORY[0x1EEE37958](v12, v19, 1, ObjectType, v17);
        }
      }
    }

    v21 = *(v0 + 112);

    [v2 presentViewController:v12 animated:v21 completion:0];

    sub_1E62BC770(*(v0 + 48), type metadata accessor for RouteDetourViewControllerRoutingContext);

    v22 = *(v0 + 8);
  }

  else
  {

    sub_1E5FAA54C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1E628FE4C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E628FF6C, v3, v2);
}

uint64_t sub_1E628FF6C()
{
  v1 = v0[11];
  v2 = v0[12];

  sub_1E62BC770(v0[6], type metadata accessor for RouteDetourViewControllerRoutingContext);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E629000C(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 112) = a3;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  *(v4 + 72) = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  *(v4 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 88) = v6;
  *(v4 + 96) = v7;
  *(v4 + 113) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 104) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6290120, v9, v8);
}

uint64_t sub_1E6290120()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
LABEL_11:

    v26 = *(v0 + 8);
    goto LABEL_12;
  }

  v2 = Strong;
  v3 = *(v0 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v28 = *(v0 + 88);
    v29 = type metadata accessor for RouteDestination(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    sub_1E5DFE50C(v28, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5FAA54C();
    swift_allocError();
    v31 = 3;
LABEL_10:
    *v30 = v31;
    swift_willThrow();

    goto LABEL_11;
  }

  v5 = *(v0 + 113);
  v6 = v4 - 1;
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = type metadata accessor for RouteDestination(0);
  v10 = *(v9 - 8);
  sub_1E62CC108(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6, v7, type metadata accessor for RouteDestination);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_1E5DFE50C(v7, &unk_1ED072040, &qword_1E65F0860);
  LOBYTE(v33) = v5;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v12 = sub_1E61AAA48(v11);

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    sub_1E5FAA54C();
    swift_allocError();
    v31 = 6;
    goto LABEL_10;
  }

  v14 = v13;
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  sub_1E62CC108(v18 + *(v16 + 20), v15 + *(v16 + 20), type metadata accessor for AppComposer);
  v19 = *(v18 + *(v16 + 24));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v15 + *(v16 + 24)) = v19;
  *(v0 + 40) = v16;
  *(v0 + 48) = &off_1F5FB76B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E62CC108(v15, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  v21 = swift_task_alloc();
  *(v21 + 16) = v18;
  *(v21 + 24) = v0 + 16;
  swift_unknownObjectRetain();
  sub_1E5F9F34C(sub_1E6290DF0, v21, v17);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v22 = sub_1E65E5EF8();

  [v14 setViewControllers:v22 animated:0];

  v23 = [v14 presentationController];
  if (v23)
  {
    v24 = v23;
    [v23 setDelegate_];
  }

  v25 = *(v0 + 80);
  [v2 presentViewController:v14 animated:*(v0 + 112) completion:0];

  sub_1E62BC770(v25, type metadata accessor for RouteDetourNavigationControllerRoutingContext);

  v26 = *(v0 + 8);
LABEL_12:

  return v26();
}

uint64_t sub_1E629058C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong viewControllers];

  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v3 = sub_1E65E5F18();

  if (v3 >> 62)
  {
    v4 = sub_1E65E67C8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4;
}

uint64_t sub_1E6290648()
{
  type metadata accessor for NullTaskScheduler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E62CC0C0(&qword_1ED077E70, type metadata accessor for NullTaskScheduler, &unk_1E65FD490);
  return v0;
}

uint64_t sub_1E62906D4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E628EE88(a1, a2);
}

uint64_t sub_1E6290778(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  sub_1E65E6058();
  *(v2 + 24) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6290814, v4, v3);
}

uint64_t sub_1E6290814()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E62908EC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E628F138(a1, a2);
}

uint64_t sub_1E6290990(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E628F720(a1, a2);
}

uint64_t sub_1E6290A34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6290A58, 0, 0);
}

uint64_t sub_1E6290A58()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    sub_1E65E6058();
    v0[4] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6290B64, v3, v2);
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E6290B64()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  [v1 dismissViewControllerAnimated:v2 completion:0];

  return MEMORY[0x1EEE6DFA0](sub_1E6290BE8, 0, 0);
}

uint64_t sub_1E6290BE8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6290C4C(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E628FA1C(a1, a2, a3);
}

uint64_t sub_1E6290CF8(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E629000C(a1, a2, a3);
}

uint64_t type metadata accessor for RouteDetourNavigationControllerRoutingContext(uint64_t a1)
{
  result = qword_1ED077E80;
  if (!qword_1ED077E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1E6290E10(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t a1), uint64_t a4)
{
  *&v1741 = a4;
  v1740 = a3;
  v1709 = a2;
  *&v1742 = a1;
  v4 = sub_1E65DAEB8();
  v1504 = *(v4 - 8);
  v1505 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v1503 = &v1477 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v1501 = &v1477 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v1502 = &v1477 - v9;
  v10 = sub_1E65DCA88();
  v1527 = *(v10 - 8);
  v1528 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v1657 = &v1477 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E63B8();
  v1525 = *(v12 - 8);
  v1526 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v1524 = &v1477 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1521 = sub_1E65E6398();
  MEMORY[0x1EEE9AC00](v1521);
  v1523 = &v1477 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E4F68();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v1520 = &v1477 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1649 = type metadata accessor for MetricService();
  Description = v1649[-1].Description;
  MEMORY[0x1EEE9AC00](v1649);
  v1648 = &v1477 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DD0A8();
  v1517 = *(v18 - 8);
  v1518 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v1647 = &v1477 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1481 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  MEMORY[0x1EEE9AC00](v1481);
  v1480 = &v1477 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A8, &unk_1E65FA3E0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v1491 = &v1477 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v1490 = &v1477 - v24;
  v1636 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v1636);
  v1660 = &v1477 - v25;
  v1656 = sub_1E65E3F88();
  v1655 = *(v1656 - 8);
  MEMORY[0x1EEE9AC00](v1656);
  v1653 = &v1477 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1654 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v1652 = *(v1654 - 8);
  MEMORY[0x1EEE9AC00](v1654);
  v1651 = &v1477 - v27;
  v1658 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776C0, &qword_1E65F9648);
  MEMORY[0x1EEE9AC00](v1658);
  v1659 = &v1477 - v28;
  v1640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B0, &unk_1E65FA3F0);
  v1639 = *(v1640 - 8);
  v29 = MEMORY[0x1EEE9AC00](v1640);
  v1638 = &v1477 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v1635 = &v1477 - v31;
  v1644 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776D0, &qword_1E65F9650);
  v32 = MEMORY[0x1EEE9AC00](v1644);
  v1637 = &v1477 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v1720 = (&v1477 - v34);
  v1634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B8, &unk_1E65FA400);
  MEMORY[0x1EEE9AC00](v1634);
  v1721 = &v1477 - v35;
  v1703 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v1645 = *(v1703 - 8);
  v36 = MEMORY[0x1EEE9AC00](v1703);
  v1704 = &v1477 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1646 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v1650 = (&v1477 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v1633 = &v1477 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v1666 = &v1477 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v1632 = &v1477 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v1665 = &v1477 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v1492 = &v1477 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v1624 = &v1477 - v50;
  v1626 = sub_1E65D7218();
  MEMORY[0x1EEE9AC00](v1626);
  v1625 = &v1477 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v52 = MEMORY[0x1EEE9AC00](v1496);
  v1499 = &v1477 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v1498 = &v1477 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v1495 = &v1477 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776F0, &qword_1E65F9658);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v1497 = &v1477 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v1500 = &v1477 - v60;
  v1736 = sub_1E65DEEA8();
  v1738 = *(v1736 - 1);
  MEMORY[0x1EEE9AC00](v1736);
  *&v1737 = &v1477 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  MEMORY[0x1EEE9AC00](v1629);
  v1630 = &v1477 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v1511 = *(v63 - 8);
  v1512 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v1510 = &v1477 - v64;
  v1515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  MEMORY[0x1EEE9AC00](v1515);
  v1514 = &v1477 - v65;
  v1628 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v66 = MEMORY[0x1EEE9AC00](v1628);
  v1519 = &v1477 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v1513 = &v1477 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v1516 = &v1477 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v1483 = *(v71 - 8);
  v1484 = v71;
  MEMORY[0x1EEE9AC00](v71);
  v1482 = &v1477 - v72;
  v1487 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  MEMORY[0x1EEE9AC00](v1487);
  v1486 = &v1477 - v73;
  v1627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v74 = MEMORY[0x1EEE9AC00](v1627);
  v1489 = &v1477 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1485 = &v1477 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v1488 = &v1477 - v78;
  v1614 = sub_1E65D9048();
  v1613 = *(v1614 - 8);
  MEMORY[0x1EEE9AC00](v1614);
  v1611 = &v1477 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1612 = sub_1E65E58D8();
  v1610 = *(v1612 - 8);
  MEMORY[0x1EEE9AC00](v1612);
  v1609 = &v1477 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1608 = sub_1E65DA308();
  v1607 = *(v1608 - 8);
  MEMORY[0x1EEE9AC00](v1608);
  v1604 = &v1477 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1605 = sub_1E65E56B8();
  v1602 = *(v1605 - 8);
  MEMORY[0x1EEE9AC00](v1605);
  v1601 = &v1477 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1643 = sub_1E65D7EB8();
  v1642 = *(v1643 - 8);
  v83 = MEMORY[0x1EEE9AC00](v1643);
  v1530 = &v1477 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1479 = v84;
  MEMORY[0x1EEE9AC00](v83);
  v1662 = &v1477 - v85;
  v1702 = sub_1E65E55E8();
  v1663 = *(v1702 - 8);
  v86 = MEMORY[0x1EEE9AC00](v1702);
  v1529 = &v1477 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1478 = v87;
  MEMORY[0x1EEE9AC00](v86);
  v1698 = &v1477 - v88;
  v1589 = type metadata accessor for PlaylistType(0);
  v89 = MEMORY[0x1EEE9AC00](v1589);
  v1509 = (&v1477 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = MEMORY[0x1EEE9AC00](v89);
  v1477 = (&v1477 - v92);
  MEMORY[0x1EEE9AC00](v91);
  v1621 = &v1477 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v94 - 8);
  v1620 = &v1477 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v1619 = &v1477 - v97;
  v1618 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077740, &qword_1E65F9660);
  v1617 = *(v1618 - 8);
  MEMORY[0x1EEE9AC00](v1618);
  v1616 = &v1477 - v98;
  v1587 = sub_1E65DDE68();
  v1583 = *(v1587 - 8);
  MEMORY[0x1EEE9AC00](v1587);
  v1584 = &v1477 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1615 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v100 = MEMORY[0x1EEE9AC00](v1615);
  v1622 = &v1477 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v1623 = &v1477 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1585 = *(v103 - 8);
  v104 = MEMORY[0x1EEE9AC00](v103 - 8);
  v1694 = &v1477 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1586 = v105;
  MEMORY[0x1EEE9AC00](v104);
  v1697 = &v1477 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1581 = *(v107 - 8);
  v108 = MEMORY[0x1EEE9AC00](v107 - 8);
  v1693 = &v1477 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1582 = v109;
  MEMORY[0x1EEE9AC00](v108);
  v1696 = &v1477 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1578 = *(v111 - 8);
  v112 = MEMORY[0x1EEE9AC00](v111 - 8);
  v1590 = &v1477 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x1EEE9AC00](v112);
  v1692 = &v1477 - v115;
  v1695 = v116;
  MEMORY[0x1EEE9AC00](v114);
  v1715 = &v1477 - v117;
  v1572 = sub_1E65E52B8();
  v118 = MEMORY[0x1EEE9AC00](v1572);
  v1576 = (&v1477 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v118);
  v1595 = &v1477 - v120;
  v1577 = sub_1E65E5528();
  v1575 = *(v1577 - 8);
  MEMORY[0x1EEE9AC00](v1577);
  v1573 = &v1477 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1691 = sub_1E65E57D8();
  v1571 = *(v1691 - 8);
  MEMORY[0x1EEE9AC00](v1691);
  v1569 = &v1477 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v123 - 8);
  v1574 = &v1477 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  MEMORY[0x1EEE9AC00](v125 - 8);
  v1570 = &v1477 - v126;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  MEMORY[0x1EEE9AC00](v127 - 8);
  v1567 = &v1477 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1563 = *(v129 - 8);
  v130 = MEMORY[0x1EEE9AC00](v129 - 8);
  v1565 = &v1477 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1564 = v131;
  MEMORY[0x1EEE9AC00](v130);
  v1714 = &v1477 - v132;
  v1568 = sub_1E65D7848();
  v1566 = *(v1568 - 8);
  MEMORY[0x1EEE9AC00](v1568);
  v1718 = (&v1477 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v134 - 8);
  v1699 = &v1477 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v1712 = *(v1661 - 8);
  v136 = MEMORY[0x1EEE9AC00](v1661);
  v1493 = &v1477 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = MEMORY[0x1EEE9AC00](v136);
  v1494 = &v1477 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v1689 = &v1477 - v141;
  MEMORY[0x1EEE9AC00](v140);
  v1690 = &v1477 - v142;
  v1597 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077790, &qword_1E65F9668);
  v1594 = *(v1597 - 8);
  MEMORY[0x1EEE9AC00](v1597);
  v1591 = &v1477 - v143;
  v1599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E0, &unk_1E65FA4C0);
  MEMORY[0x1EEE9AC00](v1599);
  v1598 = &v1477 - v144;
  v1603 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777A0, &qword_1E65F9670);
  MEMORY[0x1EEE9AC00](v1603);
  v1606 = &v1477 - v145;
  v1558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E8, &unk_1E65FA4D0);
  v1555 = *(v1558 - 8);
  MEMORY[0x1EEE9AC00](v1558);
  v1554 = &v1477 - v146;
  v1562 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777B0, &qword_1E65F9678);
  v1560 = *(v1562 - 8);
  MEMORY[0x1EEE9AC00](v1562);
  v1557 = &v1477 - v147;
  v1561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F0, &unk_1E65FA4E0);
  v1559 = *(v1561 - 8);
  MEMORY[0x1EEE9AC00](v1561);
  v1556 = &v1477 - v148;
  v1553 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v1552 = *(v1553 - 8);
  MEMORY[0x1EEE9AC00](v1553);
  v1551 = &v1477 - v149;
  v1600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F8, &unk_1E65FA4F0);
  v150 = MEMORY[0x1EEE9AC00](v1600);
  v1592 = &v1477 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v1593 = &v1477 - v153;
  MEMORY[0x1EEE9AC00](v152);
  v1596 = &v1477 - v154;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777D0, &qword_1E65F9680);
  v156 = MEMORY[0x1EEE9AC00](v155 - 8);
  v1664 = &v1477 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v156);
  v1631 = &v1477 - v158;
  v1549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  MEMORY[0x1EEE9AC00](v1549);
  v1548 = &v1477 - v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777E0, &qword_1E65F9688);
  v161 = MEMORY[0x1EEE9AC00](v160 - 8);
  v1678 = &v1477 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161);
  v1681 = &v1477 - v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077108, &unk_1E65FA510);
  v165 = MEMORY[0x1EEE9AC00](v164 - 8);
  v1547 = &v1477 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v165);
  v1546 = &v1477 - v167;
  v1545 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v168 = MEMORY[0x1EEE9AC00](v1545);
  v1675 = &v1477 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v168);
  v1550 = &v1477 - v170;
  v1728 = sub_1E65D74E8();
  v1729 = *(v1728 - 1);
  v171 = *(v1729 + 64);
  v172 = MEMORY[0x1EEE9AC00](v1728);
  v1667 = &v1477 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = MEMORY[0x1EEE9AC00](v172);
  v1716 = &v1477 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v1685 = &v1477 - v176;
  v177 = MEMORY[0x1EEE9AC00](v175);
  v1684 = &v1477 - v178;
  MEMORY[0x1EEE9AC00](v177);
  v1674 = &v1477 - v179;
  v1688 = sub_1E65E1518();
  v1687 = *(v1688 - 8);
  MEMORY[0x1EEE9AC00](v1688);
  v1686 = &v1477 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1727 = sub_1E65DB848();
  v1726 = *(v1727 - 1);
  v181 = MEMORY[0x1EEE9AC00](v1727);
  v1679 = &v1477 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = MEMORY[0x1EEE9AC00](v181);
  v1680 = &v1477 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v1676 = &v1477 - v186;
  v187 = MEMORY[0x1EEE9AC00](v185);
  v1677 = &v1477 - v188;
  v189 = MEMORY[0x1EEE9AC00](v187);
  v1682 = &v1477 - v190;
  MEMORY[0x1EEE9AC00](v189);
  v1683 = &v1477 - v191;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v193 = MEMORY[0x1EEE9AC00](v192 - 8);
  v1543 = &v1477 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v193);
  v1544 = &v1477 - v195;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v197 = MEMORY[0x1EEE9AC00](v196 - 8);
  v1541 = &v1477 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v197);
  v1542 = &v1477 - v199;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v201 = MEMORY[0x1EEE9AC00](v200 - 8);
  v1539 = &v1477 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v201);
  v1540 = &v1477 - v203;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v205 = MEMORY[0x1EEE9AC00](v204 - 8);
  v1535 = &v1477 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v205);
  v1538 = &v1477 - v207;
  v208 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v208 - 8);
  v1536 = &v1477 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077110, &unk_1E65FA540);
  v1537 = *(v1713 - 1);
  v210 = MEMORY[0x1EEE9AC00](v1713);
  v1670 = &v1477 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = MEMORY[0x1EEE9AC00](v210);
  v1533 = &v1477 - v213;
  v214 = MEMORY[0x1EEE9AC00](v212);
  v1534 = &v1477 - v215;
  MEMORY[0x1EEE9AC00](v214);
  v1673 = &v1477 - v216;
  v1672 = sub_1E65D72D8();
  v1671 = *(v1672 - 8);
  MEMORY[0x1EEE9AC00](v1672);
  v1722 = (&v1477 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1706 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v218 = MEMORY[0x1EEE9AC00](v1706);
  v1508 = &v1477 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = MEMORY[0x1EEE9AC00](v218);
  v1641 = &v1477 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v1531 = &v1477 - v223;
  v224 = MEMORY[0x1EEE9AC00](v222);
  v226 = &v1477 - v225;
  v227 = MEMORY[0x1EEE9AC00](v224);
  v1705 = &v1477 - v228;
  MEMORY[0x1EEE9AC00](v227);
  v1532 = &v1477 - v229;
  v230 = type metadata accessor for BrowsePage(0);
  MEMORY[0x1EEE9AC00](v230);
  v232 = &v1477 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1731 = sub_1E65D76F8();
  v1732 = *(v1731 - 8);
  v233 = *(v1732 + 8);
  v234 = MEMORY[0x1EEE9AC00](v1731);
  v1701 = &v1477 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = MEMORY[0x1EEE9AC00](v234);
  v1700 = &v1477 - v236;
  v237 = MEMORY[0x1EEE9AC00](v235);
  v1507 = &v1477 - v238;
  v239 = MEMORY[0x1EEE9AC00](v237);
  v1506 = &v1477 - v240;
  v241 = MEMORY[0x1EEE9AC00](v239);
  v1730 = &v1477 - v242;
  v243 = MEMORY[0x1EEE9AC00](v241);
  v1711 = &v1477 - v244;
  v245 = MEMORY[0x1EEE9AC00](v243);
  v1710 = &v1477 - v246;
  v247 = MEMORY[0x1EEE9AC00](v245);
  v1719 = &v1477 - v248;
  v249 = MEMORY[0x1EEE9AC00](v247);
  v1669 = &v1477 - v250;
  v251 = MEMORY[0x1EEE9AC00](v249);
  v1668 = &v1477 - v252;
  MEMORY[0x1EEE9AC00](v251);
  v1723 = &v1477 - v253;
  v1580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v254 = MEMORY[0x1EEE9AC00](v1580);
  v1579 = &v1477 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v254);
  v1588 = &v1477 - v256;
  v257 = type metadata accessor for AppComposer(0);
  v1733 = *(v257 - 8);
  v258 = MEMORY[0x1EEE9AC00](v257);
  v260 = &v1477 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = MEMORY[0x1EEE9AC00](v258);
  v1708 = &v1477 - v262;
  v263 = MEMORY[0x1EEE9AC00](v261);
  v1707 = &v1477 - v264;
  v265 = MEMORY[0x1EEE9AC00](v263);
  v1725 = &v1477 - v266;
  v267 = MEMORY[0x1EEE9AC00](v265);
  v1724 = (&v1477 - v268);
  v1735 = v269;
  MEMORY[0x1EEE9AC00](v267);
  v1739 = &v1477 - v270;
  v271 = type metadata accessor for RouteResource(0);
  MEMORY[0x1EEE9AC00](v271);
  v273 = &v1477 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1753[3] = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  v1753[4] = &off_1F5FB76B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1753);
  sub_1E62CC108(v1740, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  v1740 = v257;
  v1734 = (v1742 + *(v257 + 20));
  v274 = *(v1734 + 8);
  sub_1E62CC108(v1741, v273, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v693 = &v273[v692[12]];
      v695 = *v693;
      v694 = v693[1];
      v1731 = v695;
      v1730 = v694;
      v696 = v692[16];
      v1726 = *&v273[v692[20]];
      v697 = v692[24];
      LODWORD(v1729) = v273[v692[28]];
      v698 = &v273[v692[32]];
      v1728 = *v698;
      LODWORD(v1727) = v698[8];
      v699 = v1715;
      sub_1E5FAB460(v273, v1715, &unk_1ED077760, &unk_1E66011D0);
      v700 = v1696;
      sub_1E5FAB460(&v273[v696], v1696, &qword_1ED072B60, &unk_1E65FA490);
      v701 = v1697;
      sub_1E5FAB460(&v273[v697], v1697, &unk_1ED077750, &unk_1E66011C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
      *&v1741 = swift_allocBox();
      (*(v1583 + 104))(v1584, *MEMORY[0x1E69CAB38], v1587);
      LOBYTE(aBlock) = 0;
      sub_1E65DDC88();
      v1722 = type metadata accessor for AppComposer;
      v702 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DFD1CC(v699, v1692, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5DFD1CC(v701, v1694, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFD1CC(v700, v1693, &qword_1ED072B60, &unk_1E65FA490);
      v703 = *(v1733 + 80);
      v704 = ((v703 + 16) & ~v703);
      v1735 = (v1735 + v704);
      v1733 = v704;
      v1732 = (v703 | 7);
      v1723 = *(v1578 + 80);
      v705 = (v1735 + v1723) & ~v1723;
      v1721 = (v703 | 7 | v1723);
      v706 = (v1695 + v705 + 7) & 0xFFFFFFFFFFFFFFF8;
      v707 = (*(v1585 + 80) + v706 + 8) & ~*(v1585 + 80);
      v708 = (v1586 + v707 + 7) & 0xFFFFFFFFFFFFFFF8;
      v709 = (*(v1581 + 80) + v708 + 9) & ~*(v1581 + 80);
      v1720 = (v709 + v1582);
      v1719 = (v709 + v1582) & 0xFFFFFFFFFFFFFFF8;
      v710 = (v1719 + 23) & 0xFFFFFFFFFFFFFFF8;
      v711 = swift_allocObject();
      v1718 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v702, v704 + v711, type metadata accessor for AppComposer);
      sub_1E5FAB460(v1692, v711 + v705, &unk_1ED077760, &unk_1E66011D0);
      *(v711 + v706) = v1726;
      sub_1E5FAB460(v1694, v711 + v707, &unk_1ED077750, &unk_1E66011C0);
      v712 = v711 + v708;
      *v712 = v1728;
      *(v712 + 8) = v1727;
      sub_1E5FAB460(v1693, v711 + v709, &qword_1ED072B60, &unk_1E65FA490);
      *(v1720 + v711) = v1729;
      *(v711 + v1719 + 8) = v1741;
      v713 = (v711 + v710);
      v714 = v1730;
      *v713 = v1731;
      v713[1] = v714;
      type metadata accessor for AppEnvironment(0);

      v715 = LocalizationService.localizedDateComponentsFormatter.getter();
      v1734 = v715();

      v716 = v1742;
      v717 = v1724;
      v718 = v1722;
      sub_1E62CC108(v1742, v1724, v1722);
      v719 = v1735;
      v1731 = swift_allocObject();
      v720 = v1733;
      sub_1E5E1E528(v717, v1733 + v1731, type metadata accessor for AppComposer);
      v721 = v1725;
      sub_1E62CC108(v716, v1725, v718);
      sub_1E5DF650C(v1753, &aBlock);
      v722 = v1590;
      sub_1E5DFD1CC(v1715, v1590, &unk_1ED077760, &unk_1E66011D0);
      v723 = (v719 + 7) & 0xFFFFFFFFFFFFFFF8;
      v724 = (v1723 + v723 + 40) & ~v1723;
      v725 = swift_allocObject();
      sub_1E5E1E528(v721, v720 + v725, v1718);
      sub_1E5DF599C(&aBlock, v725 + v723);
      sub_1E5FAB460(v722, v725 + v724, &unk_1ED077760, &unk_1E66011D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
      v726 = v1616;
      sub_1E65E26F8();
      sub_1E65E5148();
      sub_1E65E5138();
      v727 = sub_1E65E4FD8();
      v728 = v1619;
      (*(*(v727 - 8) + 56))(v1619, 1, 1, v727);
      if (qword_1EE2D49E0 != -1)
      {
        swift_once();
      }

      v729 = sub_1E65E5018();
      __swift_project_value_buffer(v729, qword_1EE2D49E8);
      v730 = sub_1E65E2E78();
      v731 = v1620;
      (*(*(v730 - 8) + 56))(v1620, 1, 1, v730);
      sub_1E5FED46C(&qword_1ED077120, &unk_1ED077740, &qword_1E65F9660, MEMORY[0x1E699F420]);
      v732 = v1623;
      v733 = v1618;
      sub_1E65E4728();

      sub_1E5DFE50C(v731, &unk_1ED077730, &unk_1E65EA310);
      sub_1E5DFE50C(v728, &qword_1ED071EF8, &unk_1E65FA470);
      (*(v1617 + 8))(v726, v733);
      v734 = v1742;
      v735 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v736 = swift_allocObject();
      sub_1E5E1E528(v735, v1733 + v736, type metadata accessor for AppComposer);

      v737 = (v732 + *(v1615 + 36));
      *v737 = sub_1E62CC3F4;
      v737[1] = v736;
      v738 = v1622;
      sub_1E5DFD1CC(v732, v1622, &qword_1ED0770D0, &unk_1E65FA480);
      v739 = *v734;
      v740 = *(v1740 + 8);
      v741 = swift_allocObject();
      v1742 = *(v734 + v740);
      *(v741 + 16) = v1742;
      v742 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v743 = v1445;
      }

      else
      {

        swift_unknownObjectRetain();
        v743 = MEMORY[0x1E69E7CD0];
      }

      v744 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v742);
      v745 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778E0, &unk_1E65FA5C0));
      v285 = sub_1E626E800(v738, v743, MEMORY[0x1E69E7CC0], v744, 0, 0, 0, 0, 0, 0, 0, v739, sub_1E62CC440, v741);

      sub_1E5DFE50C(v732, &qword_1ED0770D0, &unk_1E65FA480);
      sub_1E5DFE50C(v1697, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v1696, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v1715, &unk_1ED077760, &unk_1E66011D0);
      goto LABEL_259;
    case 2u:
      v555 = *v273;
      v554 = *(v273 + 1);
      *v232 = *v273;
      *(v232 + 1) = v554;
      swift_storeEnumTagMultiPayload();

      v556 = v274;
      v557 = v1742;
      sub_1E617DC64(v232, &aBlock);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      if (v556 < 2)
      {
        *v232 = v555;
        *(v232 + 1) = v554;
        swift_storeEnumTagMultiPayload();

        sub_1E6508CD4(v1753, v232, &aBlock, v226);
        sub_1E62BC770(v232, type metadata accessor for BrowsePage);
        sub_1E6272CEC();
        v558 = v1705;
        sub_1E5FEE4C8();
        sub_1E5DFE50C(v226, &unk_1ED077820, &qword_1E65F96A8);
        v559 = v1641;
        sub_1E5FEE4C8();
        sub_1E5DFE50C(v558, &unk_1ED077820, &qword_1E65F96A8);
        v560 = v1506;
        sub_1E65D76E8();
        v561 = v1507;
        sub_1E65D76E8();
        v562 = v559;
        v563 = v1508;
        sub_1E5DFD1CC(v562, v1508, &unk_1ED077820, &qword_1E65F96A8);
        *&v1741 = sub_1E6388F1C(v555, v554, v561, v560, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v564 = swift_allocObject();
        *(v564 + 16) = xmmword_1E65F32F0;
        *(v564 + 32) = sub_1E62B15D4(v555, v554, v561, boxed_opaque_existential_1, &aBlock, v557);
        *(v564 + 40) = [objc_opt_self() flexibleSpaceItem];
        v565 = sub_1E638AB3C(v555, v554, v560, &aBlock);

        *(v564 + 48) = v565;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
        v566 = *v557;
        v567 = *(v1740 + 8);
        v568 = swift_allocObject();
        v1742 = *(v557 + v567);
        *(v568 + 16) = v1742;
        v569 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);

        swift_unknownObjectRetain();
        *(&v1465 + 1) = sub_1E62CC440;
        *&v1465 = v566;
        v285 = sub_1E630B390(v563, v1741, v564, v569, 0, 0, 0, 0, 1, 0, v1465, v568);

        sub_1E5DFE50C(v563, &unk_1ED077820, &qword_1E65F96A8);
        swift_unknownObjectRelease();

        v570 = *(v1732 + 1);
        v571 = v1731;
        v570(v561, v1731);
        v570(v560, v571);
        sub_1E5DFE50C(v1641, &unk_1ED077820, &qword_1E65F96A8);
        goto LABEL_259;
      }

      if (v556 != 3)
      {
        goto LABEL_324;
      }

      v1261 = v1739;
      sub_1E62CC108(v557, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &v1745);
      v1262 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1263 = (v1735 + v1262 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1264 = swift_allocObject();
      sub_1E5E1E528(v1261, v1264 + v1262, type metadata accessor for AppComposer);
      v1265 = (v1264 + v1263);
      *v1265 = v555;
      v1265[1] = v554;
      sub_1E5DF599C(&v1745, v1264 + ((v1263 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1266 = sub_1E65E4438();
      v1267 = *v557;
      v1268 = *(v1740 + 8);
      v1269 = swift_allocObject();
      v1742 = *(v557 + v1268);
      *(v1269 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1270 = v1455;
      }

      else
      {

        swift_unknownObjectRetain();
        v1270 = MEMORY[0x1E69E7CD0];
      }

      v1271 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1272 = sub_1E626CAE8(sub_1E62CC410, v1264, v1266, v1270, MEMORY[0x1E69E7CC0], v1271, 0, 0, 0, 0, 0, 0, 0, v1267, sub_1E62CC440, v1269);

      v1273 = v1709;
      if (v1709)
      {
        v1274 = v1709;
        v1275 = v1272;
        if ([v1274 isViewLoaded])
        {
          v1276 = [v1274 view];
          if (v1276)
          {
            v1277 = v1276;
            v1278 = [v1276 snapshotViewAfterScreenUpdates_];

            goto LABEL_257;
          }

          goto LABEL_316;
        }
      }

      else
      {
        v1433 = v1272;
      }

      v1278 = 0;
LABEL_257:
      v1434 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v285 = sub_1E630B7AC(v1272, v1278);

      swift_unknownObjectRelease();

LABEL_258:

      goto LABEL_259;
    case 3u:
      LODWORD(v1734) = v274;
      v633 = *(v273 + 1);
      v1732 = *v273;
      v634 = v1732;
      v1729 = v633;
      LODWORD(v1741) = v273[16];
      LODWORD(v1740) = v273[17];
      v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v636 = *(v635 + 80);
      v1731 = v635;
      v637 = v1671;
      v638 = v1722;
      v639 = v1672;
      (*(v1671 + 32))(v1722, &v273[v636], v1672);
      v640 = *(v635 + 80);
      *v232 = v634;
      v641 = v1729;
      *(v232 + 1) = v1729;
      v232[16] = v1741;
      v232[17] = v1740;
      v1730 = *(v637 + 16);
      (v1730)(&v232[v640], v638, v639);
      swift_storeEnumTagMultiPayload();

      sub_1E617DC64(v232, &aBlock);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      v642 = *(v1731 + 80);
      *v232 = v1732;
      *(v232 + 1) = v641;
      LOBYTE(v638) = v1741;
      v232[16] = v1741;
      v232[17] = v1740;
      (v1730)(&v232[v642], v1722, v639);
      swift_storeEnumTagMultiPayload();
      v643 = v1705;
      v644 = v1742;
      sub_1E6508CD4(v1753, v232, &aBlock, v1705);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      v1732 = type metadata accessor for AppComposer;
      v645 = v1739;
      sub_1E62CC108(v644, v1739, type metadata accessor for AppComposer);
      v1731 = *(v1733 + 80);
      v646 = (v1731 + 17) & ~v1731;
      v647 = swift_allocObject();
      *(v647 + 16) = v638;
      v1733 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v645, v647 + v646, type metadata accessor for AppComposer);
      v648 = sub_1E6272CEC();
      v649 = v1533;
      v650 = v1706;
      sub_1E65E4718();

      sub_1E5DFE50C(v643, &unk_1ED077820, &qword_1E65F96A8);
      *&v1745 = v650;
      *(&v1745 + 1) = v648;
      swift_getOpaqueTypeConformance2();
      v651 = v1534;
      v652 = v1713;
      sub_1E5FEE4C8();
      v653 = v1537;
      v654 = (v1537 + 8);
      v655 = *(v1537 + 8);
      v655(v649, v652);
      v656 = v1673;
      sub_1E5FEE4C8();
      v1740 = v654;
      v655(v651, v652);
      v657 = v655;
      (*(v653 + 16))(v1670, v656, v652);
      v658 = *v1742;
      sub_1E62CC108(v1742, v260, v1732);
      v659 = (v1731 + 16) & ~v1731;
      v660 = v1735 + v659;
      v661 = swift_allocObject();
      sub_1E5E1E528(v260, v661 + v659, v1733);
      v660[v661] = v1741;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v662 = v1443;
      }

      else
      {

        v662 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B20, &qword_1E65F9800);
      v663 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      *(&v1467 + 1) = sub_1E62CC40C;
      *&v1467 = v658;
      v664 = v1670;
      v665 = sub_1E630B390(v1670, v662, MEMORY[0x1E69E7CC0], v663, 0, 0, 0, 0, 0, 0, v1467, v661);

      v657(v664, v1713);
      v285 = v665;
      sub_1E65D71F8();
      sub_1E62CC0C0(&qword_1ED075EA8, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      sub_1E65E5E48();
      v666 = sub_1E65E5C48();

      [v285 setTitle_];

      v667 = sub_1E6307A64();
      v668 = v667;
      if (v1734 > 1)
      {
        [v667 setLargeTitleDisplayMode_];
        swift_unknownObjectRelease();
      }

      else
      {
        [v667 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        v668 = v285;
      }

      v657(v1673, v1713);
      (*(v1671 + 8))(v1722, v1672);
      goto LABEL_259;
    case 4u:
      v409 = &v273[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v410 = *v409;
      v411 = v409[1];
      v412 = v273;
      v413 = v1536;
      sub_1E5E1E528(v412, v1536, MEMORY[0x1E699DD40]);
      v414 = v1538;
      v415 = v410;
      v416 = v1742;
      sub_1E63DB038(v413, v415, v411, v1753, v1538);

      v417 = v1535;
      sub_1E5DFD1CC(v414, v1535, &unk_1ED077810, &qword_1E65F96A0);
      v418 = *v416;
      v419 = *(v1740 + 8);
      v420 = swift_allocObject();
      v1742 = *(v416 + v419);
      *(v420 + 16) = v1742;
      v421 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v422 = v1440;
      }

      else
      {

        swift_unknownObjectRetain();
        v422 = MEMORY[0x1E69E7CD0];
      }

      v423 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v421);
      v424 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D8, &qword_1E65F97E8));
      v285 = sub_1E626CF50(v417, v422, MEMORY[0x1E69E7CC0], v423, 0, 0, 0, 0, 0, 0, 0, v418, sub_1E62CC440, v420);

      sub_1E5DFE50C(v414, &unk_1ED077810, &qword_1E65F96A0);
      sub_1E62BC770(v413, MEMORY[0x1E699DD40]);
      goto LABEL_259;
    case 5u:
      v752 = v1544;
      v753 = v1742;
      AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)(*v273, v1753, v1544);
      v754 = v1543;
      sub_1E5DFD1CC(v752, v1543, &qword_1ED0729A0, &unk_1E65FA520);
      v755 = *v753;
      v756 = *(v1740 + 8);
      v757 = swift_allocObject();
      v1742 = *(v753 + v756);
      *(v757 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v758 = v1446;
      }

      else
      {

        swift_unknownObjectRetain();
        v758 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C8, &qword_1E65F97D8);
      v759 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      *(&v1468 + 1) = sub_1E62CC440;
      *&v1468 = v755;
      v760 = sub_1E630B390(v754, v758, MEMORY[0x1E69E7CC0], v759, 0, 0, 0, 0, 0, 0, v1468, v757);

      sub_1E5DFE50C(v754, &qword_1ED0729A0, &unk_1E65FA520);
      swift_getKeyPath();
      v285 = v760;
      v761 = v1718;
      sub_1E65E4EC8();

      sub_1E65DF548();
      (*(v1566 + 8))(v761, v1568);
      v762 = sub_1E65E5C48();

      [v285 setTitle_];

      v763 = sub_1E6307A64();
      [v763 setLargeTitleDisplayMode_];

      sub_1E5DFE50C(v752, &qword_1ED0729A0, &unk_1E65FA520);
      goto LABEL_259;
    case 6u:
      *&v1741 = *v273;
      v777 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v778 = *(v777 + 64);
      (*(v1726 + 4))(v1683, &v273[*(v777 + 48)], v1727);
      (*(v1687 + 32))(v1686, &v273[v778], v1688);
      v779 = v1740;
      v780 = v1742;
      sub_1E617FDC0(*(v1742 + *(v1740 + 9)), *(v1742 + *(v1740 + 9) + 8));
      v781 = sub_1E65DB818();
      v782 = sub_1E65DB838();
      v783 = sub_1E625B3D4(v782);

      v784 = *(v779 + 8);
      v785 = swift_allocObject();
      v786 = *(v780 + v784);
      v1740 = v785;
      *(v785 + 16) = v786;
      swift_unknownObjectRetain();
      sub_1E65DB578();
      sub_1E65E1508();
      sub_1E65E1268();
      v787 = *v1734;
      v788 = objc_allocWithZone(sub_1E65E1328());
      v789 = sub_1E65E5C48();

      v790 = sub_1E65E5C48();

      v791 = [v788 initWithServiceType:v789 placement:v790 bag:v787];

      v792 = v791;
      sub_1E65E14E8();
      if (v793)
      {
        v794 = sub_1E65E5C48();
      }

      else
      {
        v794 = 0;
      }

      v1158 = v1739;
      v1159 = v1733;
      [v792 setOfferHints_];

      v285 = v792;
      [v285 setAccount_];
      [v285 setAnonymousMetrics_];
      v1160 = sub_1E625E194(v783);
      v1161 = v1742;
      v1738 = v783;
      if (!v1160)
      {
        v1160 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v1160);

      v1162 = sub_1E65E5AF8();

      [v285 setMetricsOverlay_];

      sub_1E65DB588();
      v1163 = sub_1E65E5C48();

      [v285 setMediaClientIdentifier_];

      v1164 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v1165 = sub_1E65E6348();

      [v285 setClientInfo_];

      v1166 = sub_1E65E1308();
      *&v1737 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1161, v1158, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1167 = (*(v1159 + 80) + 16) & ~*(v1159 + 80);
      v1168 = (v1735 + v1167 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1169 = v1158;
      v1170 = (v1168 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1171 = swift_allocObject();
      v1736 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v1169, v1171 + v1167, type metadata accessor for AppComposer);
      v1172 = v1738;
      *(v1171 + v1168) = v1738;
      sub_1E5DF599C(&aBlock, v1171 + v1170);

      sub_1E65E13A8();

      v1173 = sub_1E65E1308();
      sub_1E62CC108(v1742, v1169, v1737);
      sub_1E5DF650C(v1753, &aBlock);
      v1174 = swift_allocObject();
      sub_1E5E1E528(v1169, v1174 + v1167, v1736);
      *(v1174 + v1168) = v1172;
      sub_1E5DF599C(&aBlock, v1174 + v1170);
      sub_1E65E13B8();

      sub_1E65E1318();
      v885 = *(v1726 + 1);
      v886 = v1727;
      v885(v1682, v1727);
      (*(v1687 + 8))(v1686, v1688);
      v887 = v1683;
      goto LABEL_145;
    case 7u:
      v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      v670 = v1729;
      v671 = v1674;
      v672 = v1728;
      (*(v1729 + 32))(v1674, &v273[*(v669 + 48)], v1728);
      v673 = v1550;
      (*(v670 + 16))(v1550, v671, v672);
      v674 = v1742;
      v675 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v676 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v677 = swift_allocObject();
      sub_1E5E1E528(v675, v677 + v676, type metadata accessor for AppComposer);
      v678 = (v673 + *(v1545 + 36));
      *v678 = sub_1E62CC3F4;
      v678[1] = v677;
      sub_1E5DFD1CC(v673, v1675, &unk_1ED0777F0, &qword_1E65F9690);
      v679 = *v674;
      v680 = *(v1740 + 8);
      v681 = swift_allocObject();
      v1742 = *(v674 + v680);
      *(v681 + 16) = v1742;
      v682 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v683 = v1444;
      }

      else
      {

        swift_unknownObjectRetain();
        v683 = MEMORY[0x1E69E7CD0];
      }

      v684 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v682);
      v685 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C0, &qword_1E65F97D0));
      v285 = sub_1E626D770(v1675, v683, MEMORY[0x1E69E7CC0], v684, 0, 0, 0, 0, 0, 0, 0, v679, sub_1E62CC440, v681);

      sub_1E5DFE50C(v673, &unk_1ED0777F0, &qword_1E65F9690);
      (*(v670 + 8))(v1674, v672);
      (*(v1726 + 1))(v273, v1727);
      goto LABEL_259;
    case 8u:
      v856 = *v273;
      v857 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v858 = *(v857 + 64);
      (*(v1726 + 4))(v1677, &v273[*(v857 + 48)], v1727);
      (*(v1729 + 32))(v1684, &v273[v858], v1728);
      v859 = v1740;
      v860 = v1742;
      sub_1E617FDC0(*(v1742 + *(v1740 + 9)), *(v1742 + *(v1740 + 9) + 8));
      v861 = sub_1E65DB818();
      v862 = sub_1E65DB838();
      v863 = sub_1E625B3D4(v862);

      v864 = *(v859 + 8);
      v865 = swift_allocObject();
      v1737 = *(v860 + v864);
      *(v865 + 16) = v1737;
      v866 = *v1734;
      v867 = objc_allocWithZone(sub_1E65E1378());
      swift_unknownObjectRetain();
      v868 = sub_1E65D7448();
      v869 = [v867 initWithBag:v866 URL:v868];

      v285 = v869;
      [v285 setAccount_];
      [v285 setAnonymousMetrics_];
      v870 = sub_1E625E194(v863);
      *&v1741 = v856;
      v1740 = v865;
      v1738 = v863;
      if (!v870)
      {
        v870 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v871 = v1733;
      sub_1E625B10C(v870);

      v872 = sub_1E65E5AF8();

      [v285 setMetricsOverlay_];

      sub_1E65DB588();
      v873 = sub_1E65E5C48();

      [v285 setMediaClientIdentifier_];

      v874 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v875 = sub_1E65E6348();

      [v285 setClientInfo_];

      v876 = sub_1E65E1358();
      *&v1737 = type metadata accessor for AppComposer;
      v877 = v1739;
      sub_1E62CC108(v860, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v878 = (*(v871 + 80) + 16) & ~*(v871 + 80);
      v879 = ((v1735 + v878 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1736 = v879;
      v880 = (v879 + 15) & 0xFFFFFFFFFFFFFFF8;
      v881 = swift_allocObject();
      v1735 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v877, v881 + v878, type metadata accessor for AppComposer);
      v882 = v1738;
      *(v879 + v881) = v1738;
      sub_1E5DF599C(&aBlock, v881 + v880);

      sub_1E65E13A8();

      v883 = sub_1E65E1358();
      sub_1E62CC108(v1742, v877, v1737);
      sub_1E5DF650C(v1753, &aBlock);
      v884 = swift_allocObject();
      sub_1E5E1E528(v877, v884 + v878, v1735);
      *(v1736 + v884) = v882;
      sub_1E5DF599C(&aBlock, v884 + v880);
      sub_1E65E13B8();

      sub_1E65E1368();
      v885 = *(v1726 + 1);
      v886 = v1727;
      v885(v1676, v1727);
      (*(v1729 + 8))(v1684, v1728);
      v887 = v1677;
LABEL_145:
      v885(v887, v886);
      goto LABEL_259;
    case 9u:
      v527 = *v273;
      v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v529 = *(v528 + 64);
      (*(v1726 + 4))(v1680, &v273[*(v528 + 48)], v1727);
      v530 = (v1729 + 32);
      v531 = v1685;
      v1736 = *(v1729 + 32);
      (v1736)(v1685, &v273[v529], v1728);
      v532 = v1740;
      v533 = v1742;
      sub_1E617FDC0(*(v1742 + *(v1740 + 9)), *(v1742 + *(v1740 + 9) + 8));
      v534 = sub_1E65DB838();
      v535 = sub_1E625B3D4(v534);

      v536 = *(v532 + 8);
      v537 = swift_allocObject();
      v1741 = *(v533 + v536);
      v1740 = v537;
      *(v537 + 16) = v1741;
      v538 = objc_opt_self();
      swift_unknownObjectRetain();
      v539 = [v538 currentProcess];
      sub_1E65DB598();
      v540 = sub_1E65E6348();

      v541 = *v1734;
      v542 = objc_allocWithZone(sub_1E65E12F8());
      *&v1741 = v527;
      *&v1737 = v540;
      v285 = [v542 initWithBag:v541 account:v527 clientInfo:v540];
      v1738 = v535;
      v543 = sub_1E625E194(v535);
      v1732 = v530;
      if (!v543)
      {
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v544 = v1624;
      v545 = sub_1E65E5AF8();

      [v285 setMetricsOverlay_];

      sub_1E63265A8(v544);
      v546 = v1729;
      v547 = *(v1729 + 48);
      v548 = v531;
      v549 = v1728;
      v550 = v547(v544, 1, v1728);
      v551 = v1736;
      if (v550 == 1)
      {
        v552 = *(v546 + 16);
        v553 = v1667;
        v552(v1667, v548, v549);
        if (v547(v544, 1, v549) != 1)
        {
          sub_1E5DFE50C(v544, &qword_1ED072340, &qword_1E65EA410);
        }
      }

      else
      {
        v553 = v1667;
        (v1736)(v1667, v544, v549);
      }

      v1106 = sub_1E65D7448();
      v1107 = [v285 loadURL_];

      v1108 = v553;
      v1109 = v1729;
      v1110 = v1716;
      (*(v1729 + 16))(v1716, v1108, v549);
      v1111 = (*(v1109 + 80) + 16) & ~*(v1109 + 80);
      v1112 = swift_allocObject();
      v551(v1112 + v1111, v1110, v549);
      *&v1750 = sub_1E62CC4CC;
      *(&v1750 + 1) = v1112;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v1749 = sub_1E625E2DC;
      *(&v1749 + 1) = &block_descriptor_834;
      v1113 = _Block_copy(&aBlock);

      [v1107 addFinishBlock_];
      _Block_release(v1113);

      v1114 = sub_1E65E12D8();
      v1115 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1116 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1117 = (v1735 + v1116 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1118 = swift_allocObject();
      sub_1E5E1E528(v1115, v1118 + v1116, type metadata accessor for AppComposer);
      *(v1118 + v1117) = v1738;
      sub_1E5DF599C(&aBlock, v1118 + ((v1117 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_1E65E1338();

      sub_1E65E12E8();
      v1119 = *(v1109 + 8);
      v1119(v1667, v549);
      v1120 = *(v1726 + 1);
      v1121 = v1727;
      v1120(v1679, v1727);
      v1119(v1685, v549);
      v1120(v1680, v1121);
      goto LABEL_259;
    case 0xAu:
      v795 = *v273;
      v796 = *(v273 + 1);
      if (v274 < 2)
      {
        v1734 = type metadata accessor for AppComposer;
        v797 = v1742;
        v798 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v799 = *(v1733 + 80);
        v1724 = (v1735 + ((v799 + 16) & ~v799));
        v800 = (v799 + 16) & ~v799;
        v1727 = v800;
        v1725 = v799 | 7;
        v801 = (v1724 + 7) & 0xFFFFFFFFFFFFFFF8;
        v802 = swift_allocObject();
        v1726 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v798, v802 + v800, type metadata accessor for AppComposer);
        v803 = (v802 + v801);
        *v803 = v795;
        v803[1] = v796;

        sub_1E61F84B0(v795, v796, sub_1E62CC4A4, v802, &aBlock);

        AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)(v795, v796, v1753, v1665);
        v804 = v795;
        v1729 = v795;
        v805 = v1730;
        sub_1E65D76E8();
        v806 = v796;
        v807 = v1650;
        *v1650 = v804;
        *(v807 + 8) = v806;
        *&v1741 = v806;
        *(v807 + 16) = 4;
        swift_storeEnumTagMultiPayload();

        v808 = sub_1E6200DD8(v807, v805, &aBlock);
        sub_1E5DFE50C(v807, &unk_1ED0776E0, &qword_1E65EDC00);
        v1735 = *(v1732 + 2);
        (v1735)(v1700, v805, v1731);
        v809 = sub_1E65E4BA8();
        v810 = v1721;
        *v1721 = v809;
        *(v810 + 1) = v811;
        v1719 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v812 = sub_1E65E4998();
        v1723 = sub_1E604C89C();

        v813 = v1720;
        v1722 = v808;
        sub_1E65DE568();
        *v813 = v812;
        v814 = v1741;
        *v807 = v1729;
        *(v807 + 8) = v814;
        *(v807 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        v815 = v797;
        v816 = v1739;
        sub_1E62CC108(v815, v1739, v1734);
        sub_1E5DFD1CC(v807, v1704, &unk_1ED0776E0, &qword_1E65EDC00);
        v817 = v1731;
        (v1735)(v1701, v805, v1731);
        p_aBlock = &aBlock;
        v1735 = aBlock;
        v1734 = *(&v1749 + 1);
        v1733 = *(&v1750 + 1);
        v1729 = *(&v1751 + 1);
        v1728 = *(&v1752[0] + 1);
        v819 = (v1724 + *(v1645 + 80)) & ~*(v1645 + 80);
        v820 = v1732;
        v821 = (v1646 + *(v1732 + 80) + v819) & ~*(v1732 + 80);
        v822 = (v233 + v821 + 7) & 0xFFFFFFFFFFFFFFF8;
        v823 = swift_allocObject();
        sub_1E5E1E528(v816, v1727 + v823, v1726);
        sub_1E5FAB460(v1704, v823 + v819, &unk_1ED0776E0, &qword_1E65EDC00);
        v820[4](v823 + v821, v1701, v817);
        v824 = (v823 + v822);
        v825 = v1751;
        v824[2] = v1750;
        v824[3] = v825;
        v824[4] = v1752[0];
        v826 = v1749;
        *v824 = aBlock;
        v824[1] = v826;

        swift_unknownObjectRetain();

        v827 = v1651;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v807, &unk_1ED0776E0, &qword_1E65EDC00);
        v828 = v1653;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
        v829 = v1659;
        v830 = v1654;
        v831 = v1656;
        sub_1E65E47D8();
        (*(v1655 + 8))(v828, v831);
        (*(v1652 + 8))(v827, v830);
        v832 = sub_1E65E49C8();
        KeyPath = swift_getKeyPath();
        *&v1745 = v832;
        v834 = sub_1E65E3D08();
        v835 = (v829 + *(v1658 + 36));
        *v835 = KeyPath;
        v835[1] = v834;
        v836 = *MEMORY[0x1E697E6E8];
        v837 = sub_1E65E3DD8();
        v838 = v1660;
        (*(*(v837 - 8) + 104))(v1660, v836, v837);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
        if (sub_1E65E5B98())
        {
          v1739 = &v1721[v1719];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
          v839 = v1635;
          sub_1E65E4848();
          sub_1E5DFE50C(v838, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v829, &unk_1ED0776C0, &qword_1E65F9648);
          v840 = v1637;
          sub_1E5DFD1CC(v1720, v1637, &unk_1ED0776D0, &qword_1E65F9650);
          v841 = v1639;
          v842 = *(v1639 + 16);
          v843 = v1638;
          v844 = v1640;
          v842(v1638, v839, v1640);
          v845 = v1739;
          sub_1E5DFD1CC(v840, v1739, &unk_1ED0776D0, &qword_1E65F9650);
          v846 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v842((v845 + *(v846 + 48)), v843, v844);
          v847 = *(v841 + 8);
          v847(v839, v844);
          sub_1E5DFE50C(v1720, &unk_1ED0776D0, &qword_1E65F9650);
          v847(v843, v844);
          sub_1E5DFE50C(v840, &unk_1ED0776D0, &qword_1E65F9650);
          v848 = v1721;
          v849 = &v1721[*(v1634 + 36)];
          v850 = v1722;
          *v849 = sub_1E6275B64;
          *(v849 + 1) = v850;
          v851 = type metadata accessor for BarButtonItem(0);
          *(v849 + 2) = 0;
          *(v849 + 3) = 0;
          v852 = objc_allocWithZone(v851);

          v853 = sub_1E625BF8C(v1700, v848);

          (*(v1732 + 1))(v1730, v1731);
          sub_1E5DFD1CC(v1665, v1632, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v838 = swift_allocObject();
          *(v838 + 16) = xmmword_1E65EA660;
          *(v838 + 32) = v853;
          v854 = v853;
          v855 = sub_1E65E4B48();
          *&v1741 = v854;
          if (v855)
          {
            v830 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v837 = 0;
          }

          else
          {
            v830 = [objc_opt_self() blackColor];
            v837 = 3;
          }

          v1397 = v1742;
          v827 = *v1742;
          v1398 = *(v1740 + 8);
          p_aBlock = swift_allocObject();
          v1742 = *(v1397 + v1398);
          p_aBlock[1] = v1742;
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_228;
          }

          goto LABEL_287;
        }

        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1399 = v1448;
          goto LABEL_229;
        }

LABEL_228:

        swift_unknownObjectRetain();
        v1399 = MEMORY[0x1E69E7CD0];
LABEL_229:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
        v1400 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
        *(&v1475 + 1) = sub_1E62CC440;
        *&v1475 = v827;
        v1401 = v1632;
        v285 = sub_1E630B390(v1632, v1399, v838, v1400, 0, 0, v830, v837, 1, 0, v1475, p_aBlock);

        v286 = &qword_1ED0770C0;
        v287 = &unk_1E65FA410;
        sub_1E5DFE50C(v1401, &qword_1ED0770C0, &unk_1E65FA410);

        swift_unknownObjectRelease();
        v1302 = v1665;
LABEL_234:
        sub_1E5DFE50C(v1302, v286, v287);
        goto LABEL_259;
      }

      v1303 = v1742;
      if (v274 != 3)
      {
        goto LABEL_332;
      }

      v1304 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1305 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1306 = (v1735 + v1305 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1307 = swift_allocObject();
      sub_1E5E1E528(v1304, v1307 + v1305, type metadata accessor for AppComposer);
      v1308 = (v1307 + v1306);
      *v1308 = v795;
      v1308[1] = v796;
      sub_1E5DF599C(&aBlock, v1307 + ((v1306 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1309 = sub_1E65E4438();
      v1310 = *v1303;
      v1311 = *(v1740 + 8);
      v1312 = swift_allocObject();
      v1742 = *(v1303 + v1311);
      *(v1312 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1313 = v1457;
      }

      else
      {

        swift_unknownObjectRetain();
        v1313 = MEMORY[0x1E69E7CD0];
      }

      v1314 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62CC404, v1307, v1309, v1313, MEMORY[0x1E69E7CC0], v1314, 0, 0, 0, 0, 0, 0, 0, v1310, sub_1E62CC440, v1312);

      v1291 = v1709;
      if (!v1709)
      {
        goto LABEL_218;
      }

      v1315 = v1709;
      v1316 = v1290;
      if (![v1315 isViewLoaded])
      {
        goto LABEL_219;
      }

      v1294 = [v1315 view];
      if (!v1294)
      {
LABEL_318:
        __break(1u);
        goto LABEL_319;
      }

      goto LABEL_217;
    case 0xBu:
      v324 = v1546;
      AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)(*v273, *(v273 + 1), v1753, v1546);

      v297 = &qword_1ED077108;
      v298 = &unk_1E65FA510;
      sub_1E5DFD1CC(v324, v1547, &qword_1ED077108, &unk_1E65FA510);
      v325 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AB0, &unk_1E65FA790));
      v285 = sub_1E65E18F8();
      v326 = v324;
      goto LABEL_123;
    case 0xCu:
      v524 = *v273;
      v525 = *(v273 + 1);
      sub_1E5F94E00(*(v273 + 2), v273[24]);
      type metadata accessor for AppEnvironment(0);
      v526 = InteropService.makePrivacySplashViewController.getter();
      v285 = v526(v524, v525);

      goto LABEL_258;
    case 0xDu:
      v765 = *v273;
      v764 = *(v273 + 1);
      v766 = *v273;
      v767 = v1742;
      sub_1E637E93C(v766, v764, &aBlock);
      v768 = v1548;
      sub_1E64970E4(v765, v764, v1753, &aBlock, v1548);
      v769 = sub_1E626FB98();
      v770 = v1681;
      sub_1E6012F9C(v1549, v769);
      sub_1E5DFE50C(v768, &qword_1ED077100, &unk_1E65FA500);
      v771 = v1668;
      sub_1E65D76E8();
      v772 = v1669;
      sub_1E65D76E8();
      sub_1E5DFD1CC(v770, v1678, &unk_1ED0777E0, &qword_1E65F9688);
      v773 = sub_1E623EEE8(v765, v764, v771, v772, &aBlock);
      if (v274 >= 2)
      {
        v776 = v1732;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v774 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v774 = swift_allocObject();
        *(v774 + 16) = xmmword_1E65F32F0;
        *(v774 + 32) = sub_1E623F674(v765, v764, v771, &aBlock);
        *(v774 + 40) = [objc_opt_self() flexibleSpaceItem];
        v775 = sub_1E62408B4(v765, v764, v772, &aBlock);

        *(v774 + 48) = v775;
        v776 = v1732;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B8, &qword_1E65F9750);
      v1295 = *v767;
      v1296 = *(v1740 + 8);
      v1297 = swift_allocObject();
      v1742 = *(v767 + v1296);
      *(v1297 + 16) = v1742;
      v1298 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);

      swift_unknownObjectRetain();
      *(&v1473 + 1) = sub_1E62CC440;
      *&v1473 = v1295;
      v1299 = v1678;
      v285 = sub_1E630B390(v1678, v773, v774, v1298, 0, 0, 0, 0, 1, 0, v1473, v1297);

      v286 = &unk_1ED0777E0;
      v287 = &qword_1E65F9688;
      sub_1E5DFE50C(v1299, &unk_1ED0777E0, &qword_1E65F9688);
      swift_unknownObjectRelease();

      v1300 = *(v776 + 1);
      v1301 = v1731;
      v1300(v1669, v1731);
      v1300(v1668, v1301);
      v1302 = v1681;
      goto LABEL_234;
    case 0xEu:
    case 0x13u:
    case 0x18u:
    case 0x26u:
    case 0x28u:
      goto LABEL_323;
    case 0xFu:
      v922 = *v273;
      v923 = *(v273 + 1);
      if (v274 < 2)
      {
        v1734 = type metadata accessor for AppComposer;
        v924 = v1742;
        v925 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v926 = *(v1733 + 80);
        v1724 = (v1735 + ((v926 + 16) & ~v926));
        v927 = (v926 + 16) & ~v926;
        v1727 = v927;
        v1725 = v926 | 7;
        v928 = (v1724 + 7) & 0xFFFFFFFFFFFFFFF8;
        v929 = swift_allocObject();
        v1726 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v925, v929 + v927, type metadata accessor for AppComposer);
        v930 = (v929 + v928);
        *v930 = v922;
        v930[1] = v923;

        sub_1E61F84B0(v922, v923, sub_1E62CC498, v929, &aBlock);

        AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)(v922, v923, v1753, v1666);
        v931 = v922;
        v1729 = v922;
        v932 = v1730;
        sub_1E65D76E8();
        v933 = v923;
        v934 = v1650;
        *v1650 = v931;
        *(v934 + 8) = v933;
        *&v1741 = v933;
        *(v934 + 16) = 3;
        swift_storeEnumTagMultiPayload();

        v935 = sub_1E6200DD8(v934, v932, &aBlock);
        sub_1E5DFE50C(v934, &unk_1ED0776E0, &qword_1E65EDC00);
        v1735 = *(v1732 + 2);
        (v1735)(v1700, v932, v1731);
        v936 = sub_1E65E4BA8();
        v937 = v1721;
        *v1721 = v936;
        *(v937 + 1) = v938;
        v1719 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v939 = sub_1E65E4998();
        v1723 = sub_1E604C89C();

        v940 = v1720;
        v1722 = v935;
        sub_1E65DE568();
        *v940 = v939;
        v941 = v1741;
        *v934 = v1729;
        *(v934 + 8) = v941;
        *(v934 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v942 = v924;
        v943 = v1739;
        sub_1E62CC108(v942, v1739, v1734);
        sub_1E5DFD1CC(v934, v1704, &unk_1ED0776E0, &qword_1E65EDC00);
        v944 = v1731;
        (v1735)(v1701, v932, v1731);
        p_aBlock = &aBlock;
        v1735 = aBlock;
        v1734 = *(&v1749 + 1);
        v1733 = *(&v1750 + 1);
        v1729 = *(&v1751 + 1);
        v1728 = *(&v1752[0] + 1);
        v945 = (v1724 + *(v1645 + 80)) & ~*(v1645 + 80);
        v946 = v1732;
        v947 = (v1646 + *(v1732 + 80) + v945) & ~*(v1732 + 80);
        v948 = (v233 + v947 + 7) & 0xFFFFFFFFFFFFFFF8;
        v949 = swift_allocObject();
        sub_1E5E1E528(v943, v1727 + v949, v1726);
        sub_1E5FAB460(v1704, v949 + v945, &unk_1ED0776E0, &qword_1E65EDC00);
        v946[4](v949 + v947, v1701, v944);
        v950 = (v949 + v948);
        v951 = v1751;
        v950[2] = v1750;
        v950[3] = v951;
        v950[4] = v1752[0];
        v952 = v1749;
        *v950 = aBlock;
        v950[1] = v952;

        swift_unknownObjectRetain();

        v827 = v1651;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v934, &unk_1ED0776E0, &qword_1E65EDC00);
        v953 = v1653;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
        v954 = v1659;
        v830 = v1654;
        v955 = v1656;
        sub_1E65E47D8();
        (*(v1655 + 8))(v953, v955);
        (*(v1652 + 8))(v827, v830);
        v956 = sub_1E65E49C8();
        v957 = swift_getKeyPath();
        *&v1745 = v956;
        v958 = sub_1E65E3D08();
        v959 = (v954 + *(v1658 + 36));
        *v959 = v957;
        v959[1] = v958;
        v960 = *MEMORY[0x1E697E6E8];
        v837 = sub_1E65E3DD8();
        v838 = v1660;
        (*(*(v837 - 8) + 104))(v1660, v960, v837);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
        if (sub_1E65E5B98())
        {
          v1739 = &v1721[v1719];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
          v961 = v1635;
          sub_1E65E4848();
          sub_1E5DFE50C(v838, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v954, &unk_1ED0776C0, &qword_1E65F9648);
          v962 = v1637;
          sub_1E5DFD1CC(v1720, v1637, &unk_1ED0776D0, &qword_1E65F9650);
          v963 = v1639;
          v964 = *(v1639 + 16);
          v965 = v1638;
          v966 = v1640;
          v964(v1638, v961, v1640);
          v967 = v1739;
          sub_1E5DFD1CC(v962, v1739, &unk_1ED0776D0, &qword_1E65F9650);
          v968 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v964((v967 + *(v968 + 48)), v965, v966);
          v969 = *(v963 + 8);
          v969(v961, v966);
          sub_1E5DFE50C(v1720, &unk_1ED0776D0, &qword_1E65F9650);
          v969(v965, v966);
          sub_1E5DFE50C(v962, &unk_1ED0776D0, &qword_1E65F9650);
          v970 = v1721;
          v971 = &v1721[*(v1634 + 36)];
          v972 = v1722;
          *v971 = sub_1E6275B64;
          *(v971 + 1) = v972;
          v973 = type metadata accessor for BarButtonItem(0);
          *(v971 + 2) = 0;
          *(v971 + 3) = 0;
          v974 = objc_allocWithZone(v973);

          v975 = sub_1E625BF8C(v1700, v970);

          (*(v1732 + 1))(v1730, v1731);
          sub_1E5DFD1CC(v1666, v1633, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v976 = swift_allocObject();
          *(v976 + 16) = xmmword_1E65EA660;
          *(v976 + 32) = v975;
          v977 = v975;
          v978 = sub_1E65E4B48();
          *&v1741 = v977;
          if (v978)
          {
            v979 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v980 = 0;
          }

          else
          {
            v979 = [objc_opt_self() blackColor];
            v980 = 3;
          }

          v1402 = v1742;
          v1403 = *v1742;
          v1404 = *(v1740 + 8);
          v1405 = swift_allocObject();
          v1742 = *(v1402 + v1404);
          *(v1405 + 16) = v1742;
          if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
          {

            swift_unknownObjectRetain();
            sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
            v1406 = v1449;
          }

          else
          {

            swift_unknownObjectRetain();
            v1406 = MEMORY[0x1E69E7CD0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
          v1407 = v1737;
          (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
          *(&v1476 + 1) = sub_1E62CC440;
          *&v1476 = v1403;
          v1408 = v1633;
          v285 = sub_1E630B390(v1633, v1406, v976, v1407, 0, 0, v979, v980, 1, 0, v1476, v1405);

          v286 = &qword_1ED0770C0;
          v287 = &unk_1E65FA410;
          sub_1E5DFE50C(v1408, &qword_1ED0770C0, &unk_1E65FA410);

          swift_unknownObjectRelease();
          v1302 = v1666;
          goto LABEL_234;
        }

        goto LABEL_286;
      }

      v1330 = v1742;
      if (v274 != 3)
      {
LABEL_332:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E65E68A8();
        MEMORY[0x1E694D7C0](0xD000000000000026, 0x80000001E6615040);
        LOBYTE(v1745) = 2;
        sub_1E65E69B8();
        goto LABEL_324;
      }

      v1331 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1332 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1333 = (v1735 + v1332 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1334 = swift_allocObject();
      sub_1E5E1E528(v1331, v1334 + v1332, type metadata accessor for AppComposer);
      v1335 = (v1334 + v1333);
      *v1335 = v922;
      v1335[1] = v923;
      sub_1E5DF599C(&aBlock, v1334 + ((v1333 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1336 = sub_1E65E4438();
      v1337 = *v1330;
      v1338 = *(v1740 + 8);
      v1339 = swift_allocObject();
      v1742 = *(v1330 + v1338);
      *(v1339 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1340 = v1458;
      }

      else
      {

        swift_unknownObjectRetain();
        v1340 = MEMORY[0x1E69E7CD0];
      }

      v1341 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62CC400, v1334, v1336, v1340, MEMORY[0x1E69E7CC0], v1341, 0, 0, 0, 0, 0, 0, 0, v1337, sub_1E62CC440, v1339);

      v1291 = v1709;
      if (!v1709)
      {
        goto LABEL_218;
      }

      v1342 = v1709;
      v1343 = v1290;
      if (![v1342 isViewLoaded])
      {
        goto LABEL_219;
      }

      v1294 = [v1342 view];
      if (!v1294)
      {
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      goto LABEL_217;
    case 0x10u:
      v425 = *v273;
      v426 = *(v273 + 1);
      sub_1E65D76E8();
      sub_1E65D76E8();
      sub_1E65D76E8();
      v427 = v425;
      v428 = v1742;
      LODWORD(v1734) = v274;
      sub_1E632331C(v425, v426, &aBlock);
      v1723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
      v1718 = swift_allocBox();
      v429 = *v428;
      swift_getKeyPath();
      v430 = v1551;
      sub_1E65E4EC8();

      *&v1745 = v427;
      v1727 = v427;
      *(&v1745 + 1) = v426;

      v431 = v1553;
      sub_1E65E4D78();
      (*(v1552 + 8))(v430, v431);

      v1706 = v429;
      *&v1745 = sub_1E65E4ED8();
      *&v1741 = type metadata accessor for AppComposer;
      v432 = v1739;
      sub_1E62CC108(v428, v1739, type metadata accessor for AppComposer);
      v433 = *(v1733 + 80);
      v1716 = v1735 + ((v433 + 16) & ~v433);
      v434 = (v433 + 16) & ~v433;
      v1728 = v434;
      v1735 = (v433 | 7);
      v1715 = (((v1716 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      v435 = ((v1716 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1726 = v435;
      v436 = swift_allocObject();
      v1733 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v432, v436 + v434, type metadata accessor for AppComposer);
      v437 = (v435 + v436);
      *v437 = v427;
      v437[1] = v426;
      v1729 = v426;
      v438 = swift_allocObject();
      *(v438 + 16) = sub_1E62CC484;
      *(v438 + 24) = v436;
      sub_1E65E3BB8();

      v439 = v1554;
      sub_1E65E3BD8();

      v440 = MEMORY[0x1E695BD60];
      sub_1E5FED46C(&unk_1ED077940, &qword_1ED0770E8, &unk_1E65FA4D0, MEMORY[0x1E695BD60]);

      v441 = v1557;
      v442 = v1558;
      sub_1E65E3BE8();

      (*(v1555 + 8))(v439, v442);
      sub_1E5FED46C(&qword_1ED077138, &unk_1ED0777B0, &qword_1E65F9678, MEMORY[0x1E695BDE0]);

      v443 = v1556;
      v444 = v1562;
      sub_1E65E3BD8();

      (*(v1560 + 8))(v441, v444);
      sub_1E5FED46C(&unk_1ED077950, &qword_1ED0770F0, &unk_1E65FA4E0, v440);
      v445 = v1561;
      v1713 = sub_1E65E3BC8();
      (*(v1559 + 8))(v443, v445);
      v446 = v1742;
      v447 = v1739;
      sub_1E62CC108(v1742, v1739, v1741);
      sub_1E5DF650C(v1753, &v1745);
      v1723 = aBlock;
      v1722 = *(&v1749 + 1);
      v1721 = *(&v1750 + 1);
      v1720 = *(&v1751 + 1);
      v1714 = *(&v1752[0] + 1);
      v448 = v1726;
      v449 = (v1726 + 47) & 0xFFFFFFFFFFFFFFF8;
      v450 = swift_allocObject();
      v451 = v1728;
      sub_1E5E1E528(v447, &v1728[v450], v1733);
      sub_1E5DF599C(&v1745, v448 + v450);
      v1712 = v450;
      v452 = (v450 + v449);
      v453 = v1727;
      v454 = v1729;
      *v452 = v1727;
      v452[1] = v454;
      v455 = (v450 + ((v449 + 23) & 0xFFFFFFFFFFFFFFF8));
      v456 = v1752[0];
      v455[3] = v1751;
      v455[4] = v456;
      v457 = v1750;
      v455[1] = v1749;
      v455[2] = v457;
      *v455 = aBlock;
      v458 = v446;
      v459 = v1724;
      sub_1E62CC108(v458, v1724, v1741);
      sub_1E5DF650C(v1753, v1744);
      v460 = (v448 + 23) & 0xFFFFFFFFFFFFFFF8;
      v461 = swift_allocObject();
      sub_1E5E1E528(v459, &v451[v461], v1733);
      v462 = (v448 + v461);
      *v462 = v453;
      v462[1] = v454;
      v1709 = v461;
      sub_1E5DF599C(v1744, v461 + v460);
      v463 = (v461 + ((v460 + 47) & 0xFFFFFFFFFFFFFFF8));
      v464 = v1751;
      *(v463 + 2) = v1750;
      *(v463 + 3) = v464;
      *(v463 + 4) = v1752[0];
      v465 = v1749;
      *v463 = aBlock;
      *(v463 + 1) = v465;
      v466 = v1725;
      sub_1E62CC108(v1742, v1725, v1741);
      v467 = v1732;
      v468 = v1730;
      v469 = v1731;
      (*(v1732 + 2))(v1730, v1719, v1731);
      sub_1E5DF650C(v1753, v1743);
      v470 = &v1715[*(v467 + 80)] & ~*(v467 + 80);
      v471 = (v233 + v470 + 7) & 0xFFFFFFFFFFFFFFF8;
      v472 = swift_allocObject();
      v473 = v466;
      v474 = v1733;
      sub_1E5E1E528(v473, &v1728[v472], v1733);
      v475 = (v1726 + v472);
      v476 = v1727;
      v477 = v1729;
      *v475 = v1727;
      v475[1] = v477;
      v478 = *(v467 + 4);
      v1724 = v472;
      v478(v472 + v470, v468, v469);
      sub_1E5DF599C(v1743, v472 + v471);
      v479 = (v472 + ((v471 + 47) & 0xFFFFFFFFFFFFFFF8));
      v480 = v1751;
      v479[2] = v1750;
      v479[3] = v480;
      v479[4] = v1752[0];
      v481 = v1749;
      *v479 = aBlock;
      v479[1] = v481;
      v482 = v1742;
      v483 = v1707;
      v484 = v1741;
      sub_1E62CC108(v1742, v1707, v1741);
      v485 = swift_allocObject();
      v486 = v1728;
      v1730 = v485;
      v487 = v474;
      sub_1E5E1E528(v483, &v1728[v485], v474);
      v488 = (v1726 + v485);
      v489 = v1729;
      *v488 = v476;
      v488[1] = v489;
      v490 = v1708;
      sub_1E62CC108(v482, v1708, v484);
      v491 = swift_allocObject();
      sub_1E5E1E528(v490, &v486[v491], v487);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v1726 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      v1725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
      sub_1E65E3368();
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
      sub_1E62BBB50(&qword_1ED077970, &unk_1ED077960, &unk_1E65FA670, sub_1E626F6F0);
      sub_1E62CC0C0(&qword_1ED077178, MEMORY[0x1E699EBD8], MEMORY[0x1E699EBD0]);
      v492 = v1591;
      sub_1E65E3098();
      v493 = sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668, MEMORY[0x1E699EAF0]);
      v494 = v1598;
      v495 = v1597;
      sub_1E630FCD8(&aBlock, v1597, v493, v1598);
      (*(v1594 + 8))(v492, v495);
      v496 = v1739;
      sub_1E62CC108(v1742, v1739, v1741);
      v497 = swift_allocObject();
      sub_1E5E1E528(v496, &v1728[v497], v1733);
      sub_1E626F9E0();
      v498 = v1606;
      sub_1E6259D5C(sub_1E62CC3F4, v497, v1599);

      sub_1E5DFE50C(v494, &qword_1ED0770E0, &unk_1E65FA4C0);
      *&v1745 = v1713;
      v499 = swift_allocObject();
      v500 = v1751;
      v499[3] = v1750;
      v499[4] = v500;
      v499[5] = v1752[0];
      v501 = v1749;
      v499[1] = aBlock;
      v499[2] = v501;
      v502 = swift_allocObject();
      *(v502 + 16) = sub_1E62CC3BC;
      *(v502 + 24) = v499;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A00, &qword_1E65F9738);
      sub_1E626FB0C();
      sub_1E5FED46C(&qword_1ED077190, &unk_1ED077A00, &qword_1E65F9738, MEMORY[0x1E695BED8]);
      v503 = v1592;
      sub_1E65E4958();

      v504 = v498;
      v505 = v1711;
      sub_1E5DFE50C(v504, &unk_1ED0777A0, &qword_1E65F9670);
      v506 = v1742;

      v507 = sub_1E5FED46C(&unk_1ED077A10, &qword_1ED0770F8, &unk_1E65FA4F0, MEMORY[0x1E697C278]);
      v508 = v1593;
      v509 = v1600;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v503, &qword_1ED0770F8, &unk_1E65FA4F0);
      v510 = v1596;
      sub_1E5FEE4C8();
      v511 = v508;
      v512 = v1729;
      sub_1E5DFE50C(v511, &qword_1ED0770F8, &unk_1E65FA4F0);

      v290 = v1631;
      sub_1E6012F9C(v509, v507);
      v513 = v1734;
      v514 = v510;
      v515 = v1710;
      sub_1E5DFE50C(v514, &qword_1ED0770F8, &unk_1E65FA4F0);
      sub_1E5DFD1CC(v290, v1664, &unk_1ED0777D0, &qword_1E65F9680);
      v516 = v1727;
      v517 = boxed_opaque_existential_1;
      *&v1741 = sub_1E62AD224(v1727, v512, v1719, v515, v505, boxed_opaque_existential_1, &aBlock, v506);
      if (v513 >= 2)
      {
        if (v513 != 3)
        {
          goto LABEL_324;
        }

        v521 = MEMORY[0x1E69E7CC0];
LABEL_166:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077198, &unk_1E65FA6B0);
        sub_1E65DC308();
        v1240 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v1241 = *(v1740 + 8);
        v1242 = swift_allocObject();
        v1742 = *(v506 + v1241);
        *(v1242 + 16) = v1742;
        v1243 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
        v1244 = v1706;

        swift_unknownObjectRetain();
        *(&v1472 + 1) = sub_1E62CC440;
        *&v1472 = v1244;
        v1245 = v1664;
        v285 = sub_1E630B390(v1664, v1741, v521, v1243, v1240, 0, 0, 0, 1, 0, v1472, v1242);

        sub_1E5DFE50C(v1245, &unk_1ED0777D0, &qword_1E65F9680);
        v1246 = sub_1E6307A64();
        [v1246 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        sub_1E5DFE50C(v290, &unk_1ED0777D0, &qword_1E65F9680);
        v1247 = *(v1732 + 1);
        v1248 = v1731;
        v1247(v1711, v1731);
        v1247(v1710, v1248);
        v1247(v1719, v1248);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A20, &qword_1E65F9740);
        v293 = swift_allocObject();
        v518 = sub_1E62B6BBC(v516, v512, v515, v517, &aBlock, v506);
        v291 = v512;
        *(v293 + 32) = v518;
        v294 = (v293 + 32);
        *(v293 + 40) = [objc_opt_self() flexibleSpaceItem];
        v519 = sub_1E62E68EC(v516, v291, v505, &aBlock);

        v520 = 0;
        *(v293 + 48) = v519;
        v521 = MEMORY[0x1E69E7CC0];
        *&v1745 = MEMORY[0x1E69E7CC0];
        v288 = 3;
LABEL_26:
        if (v520 <= 3)
        {
          v522 = 3;
        }

        else
        {
          v522 = v520;
        }

        while (1)
        {
          if (v520 == 3)
          {
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771A0, &unk_1E65FA6C0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_166;
          }

          if (v522 == v520)
          {
            break;
          }

          v523 = *(v293 + 8 * v520++ + 32);
          if (v523)
          {
            v291 = v523;
            MEMORY[0x1E694D8F0]();
            if (*((v1745 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1745 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E65E5F68();
              v290 = v1631;
            }

            sub_1E65E5FA8();
            v521 = v1745;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_265:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v295 = v1438;
        }

        else
        {
LABEL_7:

          swift_unknownObjectRetain();
          v295 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AD0, &unk_1E65FA7A0);
        v296 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v294);
        *(&v1463 + 1) = sub_1E62CC440;
        *&v1463 = v291;
        v285 = sub_1E630B390(v290, v295, MEMORY[0x1E69E7CC0], v296, 0, 0, 0, 0, 0, 0, v1463, v293);

        v297 = &unk_1ED077800;
        v298 = &qword_1E65F9698;
LABEL_122:
        sub_1E5DFE50C(v290, v297, v298);
        v1105 = sub_1E6307A64();
        [v1105 setLargeTitleDisplayMode_];

        v326 = v288;
LABEL_123:
        sub_1E5DFE50C(v326, v297, v298);
      }

LABEL_259:
      __swift_destroy_boxed_opaque_existential_1(v1753);
      return v285;
    case 0x11u:

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v996 = [objc_opt_self() bundleForClass_];
      v997 = v1742;
      v998 = *v1742;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v999;
      sub_1E5F9AEA8();
      v1000 = v1690;
      sub_1E65E41C8();
      v1001 = v1661;
      (*(v1712 + 2))(v1689, v1000, v1661);
      v1002 = *(v1740 + 8);
      v1003 = swift_allocObject();
      v1742 = *(v997 + v1002);
      *(v1003 + 16) = v1742;
      v1004 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1005 = v1447;
      }

      else
      {

        swift_unknownObjectRetain();
        v1005 = MEMORY[0x1E69E7CD0];
      }

      v1006 = v1737;
      v1007 = v1728;
      v1008 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      (*(v1738 + 104))(v1006, *MEMORY[0x1E699CE18], v1004);
      v1009 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v285 = sub_1E626DF90(v1689, v1005, MEMORY[0x1E69E7CC0], v1006, 0, 0, 0, 0, 0, 0, 0, v998, sub_1E62CC440, v1003);

      (*(v1712 + 1))(v1690, v1001);
      (*(v1729 + 8))(&v273[v1008], v1007);
      goto LABEL_259;
    case 0x12u:
      v686 = *v273;
      v687 = *(v273 + 1);
      v688 = v273[16];
      sub_1E65DAE38();
      sub_1E65DAE38();
      v689 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v690 = (*(v1733 + 80) + 33) & ~*(v1733 + 80);
      v691 = swift_allocObject();
      *(v691 + 16) = v686;
      *(v691 + 24) = v687;
      *(v691 + 32) = v688;
      sub_1E5E1E528(v689, v691 + v690, type metadata accessor for AppComposer);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077130, &qword_1E65F96C8));
      sub_1E626F21C(v686, v687, v688);
      v285 = sub_1E6275B68();
      [v285 setModalPresentationStyle_];
      sub_1E5F94E14(v686, v687, v688);
      goto LABEL_259;
    case 0x14u:
      v627 = *(v273 + 1);
      v1736 = *v273;
      v1734 = v627;
      v628 = *(v273 + 3);
      v1740 = *(v273 + 2);
      v1738 = v628;
      *&v1737 = *(v273 + 4);
      v629 = *(v273 + 6);
      v630 = *(v273 + 7);
      if (v274 > 1)
      {
        v631 = v1739;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v632 = 24;
      }

      else
      {
        v631 = v1739;
        if (v274)
        {
          v632 = 30;
        }

        else
        {
          v632 = 24;
          if (v273[40] < 2u)
          {
            v632 = 2;
          }
        }
      }

      *&v1741 = v632;
      v1249 = v1735;
      sub_1E62CC108(v1742, v631, type metadata accessor for AppComposer);
      v1250 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1251 = (v1249 + v1250 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1252 = (v1251 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1253 = (v1252 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1254 = (v1253 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1255 = swift_allocObject();
      sub_1E5E1E528(v631, v1255 + v1250, type metadata accessor for AppComposer);
      v1256 = (v1255 + v1251);
      v1257 = v1734;
      *v1256 = v1736;
      v1256[1] = v1257;
      v1258 = (v1255 + v1252);
      v1259 = v1738;
      *v1258 = v1740;
      v1258[1] = v1259;
      *(v1255 + v1253) = v1737;
      *(v1255 + v1254) = v629;
      *(v1255 + ((v1254 + 15) & 0xFFFFFFFFFFFFFFF8)) = v630;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077910, &qword_1E65F96C0));
      v1260 = v630;
      v285 = sub_1E6275B68();
      [v285 setModalPresentationStyle_];

      goto LABEL_259;
    case 0x15u:
      v903 = *v273;
      v904 = *(v273 + 1);
      v905 = *(v273 + 2);
      v906 = *(v273 + 3);
      v907 = *(v273 + 4);
      v908 = v273[40];
      v909 = *(v273 + 6);
      v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      sub_1E5FAB460(&v273[*(v910 + 112)], v1714, &unk_1ED077780, &unk_1E66097F0);
      v1740 = v905;
      v1738 = v906;
      *&v1737 = v907;
      v1736 = v903;
      v1734 = v904;
      if (v274 > 1)
      {
        v911 = v1739;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v912 = 24;
      }

      else
      {
        v911 = v1739;
        if (v274)
        {
          v912 = 30;
        }

        else
        {
          v912 = 24;
          if (v908 < 2)
          {
            v912 = 2;
          }
        }
      }

      *&v1741 = v912;
      sub_1E62CC108(v1742, v911, type metadata accessor for AppComposer);
      v1317 = v1565;
      sub_1E5DFD1CC(v1714, v1565, &unk_1ED077780, &unk_1E66097F0);
      v1318 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1319 = (v1735 + v1318 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1320 = (v1319 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1321 = (v1320 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1322 = (v1321 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1323 = (*(v1563 + 80) + v1322 + 8) & ~*(v1563 + 80);
      v1324 = swift_allocObject();
      sub_1E5E1E528(v911, v1324 + v1318, type metadata accessor for AppComposer);
      v1325 = (v1324 + v1319);
      v1326 = v1734;
      *v1325 = v1736;
      v1325[1] = v1326;
      v1327 = (v1324 + v1320);
      v1328 = v1738;
      *v1327 = v1740;
      v1327[1] = v1328;
      *(v1324 + v1321) = v1737;
      *(v1324 + v1322) = v909;
      sub_1E5FAB460(v1317, v1324 + v1323, &unk_1ED077780, &unk_1E66097F0);
      v1329 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077080, qword_1E65F94F8));
      v285 = sub_1E6275B68();
      [v285 setModalPresentationStyle_];
      sub_1E5DFE50C(v1714, &unk_1ED077780, &unk_1E66097F0);
      goto LABEL_259;
    case 0x16u:
      v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v573 = v572[12];
      v574 = &v273[v572[16]];
      v576 = *v574;
      v575 = *(v574 + 1);
      *&v1742 = v576;
      *&v1741 = v575;
      v577 = v572[20];
      v578 = &v273[v572[24]];
      v579 = *(v578 + 1);
      v1740 = *v578;
      v580 = &v273[v572[28]];
      v581 = v580[1];
      v1739 = *v580;
      v582 = v572[32];
      v583 = v572[36];
      v584 = *(v273 + 1);
      aBlock = *v273;
      v1749 = v584;
      *&v1750 = *(v273 + 4);
      v585 = v1729;
      v586 = v1716;
      (*(v1729 + 32))(v1716, &v273[v573], v1728);
      v587 = v1567;
      sub_1E5FAB460(&v273[v577], v1567, &qword_1ED076220, &unk_1E65FA4A0);
      v588 = &v273[v582];
      v589 = v1570;
      sub_1E5FAB460(v588, v1570, &unk_1ED077770, &unk_1E660C190);
      v590 = &v273[v583];
      v591 = v1574;
      sub_1E5FAB460(v590, v1574, &unk_1ED07B500, &qword_1E65F0EE0);
      type metadata accessor for AppEnvironment(0);
      v592 = PlayerService.makeStandardPlayerViewController.getter();
      v285 = v592(&aBlock, v586, v1742, v1741, v587, v1740, v579, v1739, v581, v591, v589);

      sub_1E5DFE50C(v591, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v589, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v587, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v585 + 8))(v1716, v1728);
      sub_1E6009FC0(&aBlock);
      goto LABEL_259;
    case 0x17u:
      v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v594 = v593[12];
      v595 = &v273[v593[16]];
      v596 = *v595;
      v597 = v595[1];
      v598 = v1571;
      v599 = v273[v593[20]];
      v600 = v1569;
      (*(v1571 + 32))(v1569, v273, v1691);
      v601 = v1575;
      v602 = &v273[v594];
      v603 = v1573;
      v604 = v1577;
      (*(v1575 + 32))(v1573, v602, v1577);
      type metadata accessor for AppEnvironment(0);
      v605 = PlayerService.makeTipPlayerViewController.getter();
      v285 = v605(v600, v603, v596, v597, v599);

      sub_1E61B73EC(v596, v597);
      (*(v601 + 8))(v603, v604);
      (*(v598 + 8))(v600, v1691);
      goto LABEL_259;
    case 0x19u:
      if (v274 < 2)
      {
        v746 = *v273;
        v747 = (v1742 + *(v1740 + 9));
        v748 = *v747;
        v749 = v747[1];
        sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1753, v1752);
        *&aBlock = v748;
        *(&aBlock + 1) = v749;
        LOBYTE(v1749) = v274;
        type metadata accessor for AppEnvironment(0);
        sub_1E5FA9D34(v748, v749);
        active = InteropService.makeActiveWorkoutPlanViewController.getter();
        v1746 = &type metadata for CatalogPageRoutingContextNavigator;
        v1747 = sub_1E61379FC();
        *&v1745 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1745 + 16);
        v751 = active(v746, v748, v749, &v1745);
LABEL_116:
        v285 = v751;

        sub_1E6137AAC(&aBlock);
LABEL_117:
        __swift_destroy_boxed_opaque_existential_1(&v1745);
        goto LABEL_259;
      }

      v1279 = v1742;
      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1280 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1281 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1282 = (v1735 + v1281 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1283 = swift_allocObject();
      sub_1E5E1E528(v1280, v1283 + v1281, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1283 + v1282);
      v1284 = sub_1E65E4438();
      v1285 = *v1279;
      v1286 = *(v1740 + 8);
      v1287 = swift_allocObject();
      v1742 = *(v1279 + v1286);
      *(v1287 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1288 = v1456;
      }

      else
      {

        swift_unknownObjectRetain();
        v1288 = MEMORY[0x1E69E7CD0];
      }

      v1289 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62CC3F8, v1283, v1284, v1288, MEMORY[0x1E69E7CC0], v1289, 0, 0, 0, 0, 0, 0, 0, v1285, sub_1E62CC440, v1287);

      v1291 = v1709;
      if (!v1709)
      {
        goto LABEL_218;
      }

      v1292 = v1709;
      v1293 = v1290;
      if (![v1292 isViewLoaded])
      {
        goto LABEL_219;
      }

      v1294 = [v1292 view];
      if (!v1294)
      {
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      goto LABEL_217;
    case 0x1Au:
      v888 = v1595;
      sub_1E5E1E528(v273, v1595, MEMORY[0x1E69CD768]);
      v889 = v1576;
      sub_1E62CC108(v888, v1576, MEMORY[0x1E69CD768]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_323;
          }

          type metadata accessor for AppEnvironment(0);
          v1424 = InteropService.makeNotificationViewController.getter();
          v285 = v1424();
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            sub_1E62BC770(v888, MEMORY[0x1E69CD768]);
            v285 = *v889;
            goto LABEL_259;
          }

          v1153 = v1729;
          v1154 = v1716;
          v1155 = v1728;
          (*(v1729 + 32))(v1716, v889, v1728);
          v1156 = v1492;
          (*(v1153 + 16))(v1492, v1154, v1155);
          (*(v1153 + 56))(v1156, 0, 1, v1155);
          type metadata accessor for AppEnvironment(0);
          v1157 = InteropService.makeAccountPageViewController.getter();
          v285 = v1157(v1156);

          sub_1E5DFE50C(v1156, &qword_1ED072340, &qword_1E65EA410);
          (*(v1153 + 8))(v1154, v1155);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload == 4)
          {
            type metadata accessor for AppEnvironment(0);
            v891 = InteropService.makePrivacyLinkListViewController.getter();
            sub_1E5DF650C(v1753, &aBlock);
            v892 = swift_allocObject();
            sub_1E5DF599C(&aBlock, v892 + 16);
            v893 = v274 < 2;
            *(v892 + 56) = v893;
            if (v274 >= 2)
            {
              v894 = -64;
            }

            else
            {
              v894 = 0;
            }

            *(v892 + 64) = v894;
            sub_1E5FA9D20(v893, v894);
            v285 = v891(sub_1E62CC3C0, v892);

            sub_1E5F94E00(v893, v894);
            goto LABEL_250;
          }

          goto LABEL_247;
        }

        if (EnumCaseMultiPayload == 6)
        {
LABEL_247:
          sub_1E65E5C78();
          v1425 = v1492;
          sub_1E65D74C8();

          type metadata accessor for AppEnvironment(0);
          v1426 = InteropService.makeAccountPageViewController.getter();
          v285 = v1426(v1425);

          sub_1E5DFE50C(v1425, &qword_1ED072340, &qword_1E65EA410);
          goto LABEL_250;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_323;
        }

        sub_1E65DAE38();
        sub_1E65DAE38();
        v1427 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1428 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
        v1429 = swift_allocObject();
        sub_1E5E1E528(v1427, v1429 + v1428, type metadata accessor for AppComposer);
        v1430 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077128, &unk_1E65FA5D0));
        v285 = sub_1E6275B68();
      }

LABEL_250:
      sub_1E62BC770(v888, MEMORY[0x1E69CD768]);
      goto LABEL_259;
    case 0x1Bu:
      v318 = v1621;
      sub_1E5E1E528(v273, v1621, type metadata accessor for PlaylistType);
      if (v274 < 2)
      {
        v319 = v1509;
        sub_1E62CC108(v318, v1509, type metadata accessor for PlaylistType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v321 = v1503;
          v320 = v1504;
          v322 = v319;
          v323 = v1505;
          (*(v1504 + 32))(v1503, v322, v1505);
          v285 = sub_1E62BA594(v321, boxed_opaque_existential_1, v1742, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
          (*(v320 + 8))(v321, v323);
        }

        else
        {
          v285 = sub_1E62BA414(*v319, v319[1], boxed_opaque_existential_1, v1742, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
        }

        goto LABEL_254;
      }

      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1176 = v1477;
      sub_1E62CC108(v318, v1477, type metadata accessor for PlaylistType);
      v1177 = swift_getEnumCaseMultiPayload();
      v1178 = v1742;
      if (v1177 == 1)
      {
        v1180 = v1503;
        v1179 = v1504;
        v1181 = v1505;
        (*(v1504 + 32))(v1503, v1176, v1505);
        v1182 = sub_1E62BA594(v1180, boxed_opaque_existential_1, v1178, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
        (*(v1179 + 8))(v1180, v1181);
      }

      else
      {
        v1182 = sub_1E62BA414(*v1176, v1176[1], boxed_opaque_existential_1, v1742, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
      }

      v1409 = swift_allocObject();
      *(v1409 + 16) = v1182;
      v1410 = v1182;
      v1411 = sub_1E65E4438();
      v1412 = *v1178;
      v1413 = *(v1740 + 8);
      v1414 = swift_allocObject();
      v1742 = *(v1178 + v1413);
      *(v1414 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1415 = v1454;
      }

      else
      {

        swift_unknownObjectRetain();
        v1415 = MEMORY[0x1E69E7CD0];
      }

      v1416 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1417 = sub_1E626CAE8(sub_1E62CC460, v1409, v1411, v1415, MEMORY[0x1E69E7CC0], v1416, 0, 0, 0, 0, 0, 0, 0, v1412, sub_1E62CC440, v1414);

      v1418 = v1709;
      if (v1709)
      {
        v1419 = v1709;
        v1420 = v1417;
        if ([v1419 isViewLoaded])
        {
          v1421 = [v1419 view];
          if (!v1421)
          {
LABEL_322:
            __break(1u);
LABEL_323:
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1E65E68A8();
            MEMORY[0x1E694D7C0](0xD000000000000017, 0x80000001E6614EE0);
            sub_1E65E69B8();
            MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6614F00);
            while (1)
            {
LABEL_324:
              sub_1E65E69D8();
              __break(1u);
            }
          }

          v1422 = v1421;
          v1423 = [v1421 snapshotViewAfterScreenUpdates_];

          goto LABEL_253;
        }
      }

      else
      {
        v1431 = v1417;
      }

      v1423 = 0;
LABEL_253:
      v1432 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v285 = sub_1E630B7AC(v1417, v1423);

LABEL_254:
      sub_1E62BC770(v318, type metadata accessor for PlaylistType);
      goto LABEL_259;
    case 0x1Cu:
      v311 = v1732;
      v312 = v1730;
      v313 = v1731;
      (*(v1732 + 4))(v1730, v273, v1731);
      v314 = (v1742 + *(v1740 + 9));
      v315 = *v314;
      v316 = v314[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v315;
      *(&aBlock + 1) = v316;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v315, v316);
      v317 = InteropService.makeWorkoutPlanDetailViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v285 = v317(v312, v315, v316, &v1745);

      sub_1E6137AAC(&aBlock);
      v311[1](v312, v313);
      goto LABEL_117;
    case 0x1Du:
      v981 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v982 = v1663;
      v983 = *(v1663 + 32);
      v983(v1698, v273, v1702);
      v984 = v1642;
      v985 = *(v1642 + 32);
      v986 = &v273[v981];
      v987 = v1662;
      v988 = v1643;
      (v985)(v1662, v986, v1643);
      if (v274 >= 2)
      {
        v1734 = v985;
        *&v1741 = v983;
        v1344 = v1742;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v1345 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1346 = v1663 + 16;
        (*(v1663 + 16))(v1529, v1698, v1702);
        v1347 = v984 + 16;
        (*(v984 + 16))(v1530, v1662, v988);
        sub_1E5DF650C(v1753, &aBlock);
        v1348 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
        v1349 = (v1735 + *(v1346 + 64) + v1348) & ~*(v1346 + 64);
        v1350 = (v1478 + *(v1347 + 64) + v1349) & ~*(v1347 + 64);
        v1351 = v1344;
        v1352 = (v1479 + v1350 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1353 = swift_allocObject();
        sub_1E5E1E528(v1345, v1353 + v1348, type metadata accessor for AppComposer);
        v1354 = v1353 + v1349;
        v1355 = v1643;
        (v1741)(v1354, v1529, v1702);
        (v1734)(v1353 + v1350, v1530, v1355);
        sub_1E5DF599C(&aBlock, v1353 + v1352);
        v1356 = sub_1E65E4438();
        v1357 = *v1351;
        v1358 = *(v1740 + 8);
        v1359 = swift_allocObject();
        v1742 = *(v1351 + v1358);
        *(v1359 + 16) = v1742;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1360 = v1459;
        }

        else
        {

          swift_unknownObjectRetain();
          v1360 = MEMORY[0x1E69E7CD0];
        }

        v1361 = v1709;
        v1362 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
        objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

        v1363 = sub_1E626CAE8(sub_1E62CC3E8, v1353, v1356, v1360, MEMORY[0x1E69E7CC0], v1362, 0, 0, 0, 0, 0, 0, 0, v1357, sub_1E62CC440, v1359);

        v1364 = v1702;
        if (v1361)
        {
          v1365 = v1361;
          v1366 = [v1365 isViewLoaded];
          v1367 = v1698;
          if (v1366)
          {
            v1368 = [v1365 view];
            if (!v1368)
            {
LABEL_320:
              __break(1u);
              goto LABEL_321;
            }

            v1369 = v1368;
            v1370 = [v1368 snapshotViewAfterScreenUpdates_];
          }

          else
          {
            v1370 = 0;
          }

          v1436 = v1663;
        }

        else
        {
          v1370 = 0;
          v1436 = v1663;
          v1367 = v1698;
        }

        v1437 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v285 = sub_1E630B7AC(v1363, v1370);

        (*(v1642 + 8))(v1662, v1355);
        (*(v1436 + 8))(v1367, v1364);
        goto LABEL_259;
      }

      v989 = (v1742 + *(v1740 + 9));
      v990 = v987;
      v991 = *v989;
      v992 = v989[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v991;
      *(&aBlock + 1) = v992;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v991, v992);
      v993 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v994 = v1698;
      v285 = v993(v1698, v990, v991, v992, &v1745);

      sub_1E6137AAC(&aBlock);
      (*(v984 + 8))(v990, v988);
      (*(v982 + 8))(v994, v1702);
      goto LABEL_117;
    case 0x1Eu:
      v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v1015 = *&v273[*(v1014 + 48)];
      v1016 = *&v273[*(v1014 + 64)];
      v609 = v1602;
      v610 = v1601;
      v1017 = v273;
      v612 = v1605;
      (*(v1602 + 32))(v1601, v1017, v1605);
      v1018 = (v1742 + *(v1740 + 9));
      v1019 = *v1018;
      v1020 = v1018[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v1019;
      *(&aBlock + 1) = v1020;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v1019, v1020);
      v1021 = InteropService.makeWorkoutPlanPreferenceViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v921 = v1021(v1019, v1020, v610, v1015, v1016, &v1745);
      goto LABEL_110;
    case 0x1Fu:
      v895 = *&v273[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v896 = v1607;
      v897 = v1604;
      v898 = v1608;
      (*(v1607 + 32))(v1604, v273, v1608);
      v899 = (v1742 + *(v1740 + 9));
      v900 = *v899;
      v901 = v899[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v900;
      *(&aBlock + 1) = v901;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v900, v901);
      v902 = InteropService.makeWorkoutPlanReviewViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v285 = v902(v897, v895, v900, v901, &v1745);

      sub_1E6137AAC(&aBlock);
      (*(v896 + 8))(v897, v898);
      goto LABEL_117;
    case 0x20u:
      v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v914 = *&v273[*(v913 + 48)];
      v915 = *&v273[*(v913 + 64)];
      v609 = v1610;
      v610 = v1609;
      v916 = v273;
      v612 = v1612;
      (*(v1610 + 32))(v1609, v916, v1612);
      v917 = (v1742 + *(v1740 + 9));
      v918 = *v917;
      v919 = v917[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v918;
      *(&aBlock + 1) = v919;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v918, v919);
      v920 = InteropService.makeEditWorkoutPlanScheduleViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v921 = v920(v610, v915, v914, v918, v919, &v1745);
LABEL_110:
      v285 = v921;

      goto LABEL_111;
    case 0x21u:
      v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v607 = v273[*(v606 + 48)];
      v608 = v273[*(v606 + 64)];
      v609 = v1613;
      v610 = v1611;
      v611 = v273;
      v612 = v1614;
      (*(v1613 + 32))(v1611, v611, v1614);
      v613 = (v1742 + *(v1740 + 9));
      v614 = *v613;
      v615 = v613[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v614;
      *(&aBlock + 1) = v615;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v614, v615);
      v616 = InteropService.makeWorkoutPlanSummaryViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v285 = v616(v610, v607, v608, &v1745, v614, v615);
LABEL_111:

      sub_1E6137AAC(&aBlock);
      (*(v609 + 8))(v610, v612);
      goto LABEL_117;
    case 0x22u:
      v327 = v1742;
      v328 = v1739;
      v1719 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v329 = *(v1733 + 80);
      v330 = v1735;
      v1721 = v1735 + ((v329 + 16) & ~v329);
      v1733 = ((v329 + 16) & ~v329);
      v1726 = (v329 | 7);
      v331 = swift_allocObject();
      v1722 = type metadata accessor for AppComposer;
      v332 = v331;
      boxed_opaque_existential_1 = v331;
      sub_1E5E1E528(v328, v331 + ((v329 + 16) & ~v329), type metadata accessor for AppComposer);
      sub_1E65E5148();
      LODWORD(v1734) = v274;
      *&v1741 = sub_1E65E5138();
      v333 = v1724;
      sub_1E62CC108(v327, v1724, type metadata accessor for AppComposer);
      v334 = (v329 + 32) & ~v329;
      v335 = v330 + v334;
      v1716 = v334;
      v1715 = v335;
      v336 = swift_allocObject();
      v1729 = v336;
      v1720 = &unk_1E65FAC50;
      *(v336 + 16) = &unk_1E65FAC50;
      *(v336 + 24) = v332;
      sub_1E5E1E528(v333, v336 + v334, v1722);
      *(v336 + v335) = 0;
      v337 = v336 + (v335 & 0xFFFFFFFFFFFFFFF8);
      v1724 = sub_1E6172524;
      *(v337 + 8) = sub_1E6172524;
      *(v337 + 16) = 0;
      v338 = (v336 + (((v335 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      v339 = MEMORY[0x1E69AB380];
      v340 = v1741;
      *v338 = v1741;
      v338[1] = v339;
      v341 = v1742;
      v342 = v1719;
      sub_1E62CC108(v1742, v1725, v1719);
      v343 = (v329 + 48) & ~v329;
      v344 = v1735 + v343;
      v1714 = v343;
      v1735 = ((v1735 + v343) & 0xFFFFFFFFFFFFFFF8);
      v345 = swift_allocObject();
      v1728 = v345;
      v346 = boxed_opaque_existential_1;
      *(v345 + 16) = v1720;
      *(v345 + 24) = v346;
      *(v345 + 32) = v340;
      *(v345 + 40) = MEMORY[0x1E69AB380];
      sub_1E5E1E528(v1725, v345 + v343, v1722);
      v344[v345] = 0;
      v347 = v1735 + v345;
      v348 = v1724;
      *(v347 + 1) = v1724;
      *(v347 + 2) = 0;
      v349 = v341;
      v350 = v1707;
      sub_1E62CC108(v349, v1707, v342);
      v351 = (v344 + 7) & 0xFFFFFFFFFFFFFFF8;
      v352 = swift_allocObject();
      v353 = v1720;
      v352[2] = v1720;
      v352[3] = v346;
      v352[4] = v1741;
      v352[5] = MEMORY[0x1E69AB380];
      v354 = v1722;
      sub_1E5E1E528(v350, v352 + v1714, v1722);
      v355 = v352 + v351;
      *v355 = v348;
      *(v355 + 1) = 0;
      v355[16] = 0;
      v356 = v1708;
      sub_1E62CC108(v1742, v1708, v1719);
      v357 = swift_allocObject();
      v358 = boxed_opaque_existential_1;
      *(v357 + 16) = v353;
      *(v357 + 24) = v358;
      sub_1E5E1E528(v356, &v1716[v357], v354);
      swift_retain_n();
      swift_retain_n();
      sub_1E65D76E8();
      v1727 = v352;
      v1735 = v357;
      v359 = v1733;
      v360 = v1721;
      v1725 = 0x80000001E6615070;
      if (v1734 >= 2)
      {
        if (v1734 != 3)
        {
          goto LABEL_324;
        }

        v1720 = type metadata accessor for AppComposer;
        v1183 = v1742;
        v1184 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1753, &aBlock);
        v1185 = ((v1721 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1722 = v1185;
        v1714 = (v1185 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1186 = swift_allocObject();
        v1712 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v1184, v1733 + v1186, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v1185 + v1186);
        v1724 = v1186;
        v1187 = (v1186 + ((v1185 + 47) & 0xFFFFFFFFFFFFFFF8));
        v1188 = v1725;
        *v1187 = 0xD000000000000016;
        v1187[1] = v1188;
        v1189 = v1186 + ((((v1185 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        *v1189 = v1741;
        v1719 = &unk_1E65FAC58;
        *(v1189 + 1) = MEMORY[0x1E69AB380];
        *(v1189 + 2) = &unk_1E65FAC58;
        boxed_opaque_existential_1 = &unk_1E65FAC60;
        *(v1189 + 3) = v1729;
        *(v1189 + 4) = &unk_1E65FAC60;
        v1716 = &unk_1E65FAC68;
        *(v1189 + 5) = v1728;
        *(v1189 + 6) = &unk_1E65FAC68;
        v1715 = &unk_1E65FAC70;
        *(v1189 + 7) = v1727;
        *(v1189 + 8) = &unk_1E65FAC70;
        *(v1189 + 9) = v1735;
        v1189[80] = 0;
        v1190 = v1720;
        sub_1E62CC108(v1183, v1184, v1720);
        v1725 = swift_allocObject();
        v1191 = v1733;
        sub_1E5E1E528(v1184, v1733 + v1725, type metadata accessor for AppComposer);
        sub_1E62CC108(v1183, v1184, v1190);
        sub_1E5DF650C(v1753, &aBlock);
        v1192 = v1732;
        v1713 = *(v1732 + 2);
        v1193 = v1731;
        (v1713)(v1730, v1723, v1731);
        v1194 = v1714;
        v1195 = (v1714 + *(v1192 + 80) + 80) & ~*(v1192 + 80);
        v1196 = swift_allocObject();
        sub_1E5E1E528(v1184, v1191 + v1196, v1712);
        sub_1E5DF599C(&aBlock, v1722 + v1196);
        v1197 = (v1196 + v1194);
        v1720 = v1196;
        *v1197 = v1741;
        v1198 = v1719;
        v1197[1] = MEMORY[0x1E69AB380];
        v1197[2] = v1198;
        v1199 = boxed_opaque_existential_1;
        v1197[3] = v1729;
        v1197[4] = v1199;
        v1200 = v1716;
        v1197[5] = v1728;
        v1197[6] = v1200;
        v1201 = v1715;
        v1197[7] = v1727;
        v1197[8] = v1201;
        v1197[9] = v1735;
        v1202 = v1730;
        v1192[4](v1196 + v1195, v1730, v1193);
        (v1713)(v1202, v1723, v1193);
        v1722 = type metadata accessor for ArtworkDescriptor(0);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics(0);
        v1716 = type metadata accessor for SectionMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v1203 = v1741;
        v1204 = v1482;
        sub_1E65E1EB8();
        v1205 = sub_1E65E2DA8();
        v1206 = 0;
        v1207 = 0;
        v1208 = 0;
        v1209 = 0;
        v1210 = 0;
        v1211 = 0;
        v1212 = 0;
        v1213 = 0;
        v1214 = 0;
        v1215 = 0;
        if (v1205)
        {
          v1214 = &unk_1E65FAC70;
          v1212 = &unk_1E65FAC68;
          v1210 = &unk_1E65FAC60;
          v1208 = &unk_1E65FAC58;
          v1207 = MEMORY[0x1E69AB380];
          v1206 = v1203;
          v1209 = v1729;
          v1211 = v1728;
          v1213 = v1727;
          v1215 = v1735;
        }

        *&aBlock = v1206;
        *(&aBlock + 1) = v1207;
        *&v1749 = v1208;
        *(&v1749 + 1) = v1209;
        *&v1750 = v1210;
        *(&v1750 + 1) = v1211;
        *&v1751 = v1212;
        *(&v1751 + 1) = v1213;
        *&v1752[0] = v1214;
        *(&v1752[0] + 1) = v1215;
        sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
        v1216 = v1486;
        v1217 = v1484;
        sub_1E630FFE8(&aBlock, v1484, v1486);
        (*(v1483 + 8))(v1204, v1217);
        v397 = v1742;
        v1218 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1219 = swift_allocObject();
        sub_1E5E1E528(v1218, v1733 + v1219, type metadata accessor for AppComposer);
        sub_1E6072124();
        v1220 = v1485;
        sub_1E6259D5C(sub_1E62CC418, v1219, v1487);

        sub_1E5DFE50C(v1216, &unk_1ED077720, &qword_1E65EEE40);
        v1221 = sub_1E6072098();
        v402 = v1488;
        v1222 = v1627;
        sub_1E5FEE4C8();
        v404 = &qword_1ED073E10;
        v405 = &unk_1E65FA460;
        sub_1E5DFE50C(v1220, &qword_1ED073E10, &unk_1E65FA460);
        v406 = v1489;
        sub_1E5FEE4C8();
        v1223 = sub_1E6071E58();
        v408 = v1630;
        sub_1E62DFB74(v406, v1628, v1222, v1223, v1221);
      }

      else
      {
        v1720 = type metadata accessor for AppComposer;
        v361 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1753, &aBlock);
        v362 = (v360 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1714 = v362;
        v363 = (v360 + 55) & 0xFFFFFFFFFFFFFFF8;
        v364 = swift_allocObject();
        v1724 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v361, v359 + v364, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v364 + v362);
        *(v364 + v362 + 40) = 0;
        v1722 = v364;
        v365 = (v364 + v363);
        v366 = v1725;
        *v365 = 0xD000000000000016;
        v365[1] = v366;
        v367 = (v364 + ((v363 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v367 = v1741;
        v1719 = &unk_1E65FAC58;
        v367[1] = MEMORY[0x1E69AB380];
        v367[2] = &unk_1E65FAC58;
        boxed_opaque_existential_1 = &unk_1E65FAC60;
        v367[3] = v1729;
        v367[4] = &unk_1E65FAC60;
        v1716 = &unk_1E65FAC68;
        v367[5] = v1728;
        v367[6] = &unk_1E65FAC68;
        v1715 = &unk_1E65FAC70;
        v367[7] = v1727;
        v367[8] = &unk_1E65FAC70;
        v367[9] = v1735;
        v368 = v1742;
        v369 = v1720;
        sub_1E62CC108(v1742, v361, v1720);
        v1725 = swift_allocObject();
        sub_1E5E1E528(v361, v1733 + v1725, v1724);
        sub_1E62CC108(v368, v361, v369);
        sub_1E5DF650C(v1753, &aBlock);
        v370 = v1732;
        v1713 = *(v1732 + 2);
        v371 = v1731;
        (v1713)(v1730, v1723, v1731);
        v372 = v1714;
        v373 = (v1714 + 47) & 0xFFFFFFFFFFFFFFF8;
        v374 = (v373 + *(v370 + 80) + 80) & ~*(v370 + 80);
        v375 = swift_allocObject();
        sub_1E5E1E528(v1739, v1733 + v375, v1724);
        sub_1E5DF599C(&aBlock, v375 + v372);
        v376 = (v375 + v373);
        v1720 = v375;
        *v376 = v1741;
        v377 = v1719;
        v376[1] = MEMORY[0x1E69AB380];
        v376[2] = v377;
        v378 = boxed_opaque_existential_1;
        v376[3] = v1729;
        v376[4] = v378;
        v379 = v1716;
        v376[5] = v1728;
        v376[6] = v379;
        v380 = v1715;
        v376[7] = v1727;
        v376[8] = v380;
        v376[9] = v1735;
        v381 = v1730;
        v370[4](v375 + v374, v1730, v371);
        (v1713)(v381, v1723, v371);
        v1724 = type metadata accessor for ArtworkDescriptor(0);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics(0);
        v1716 = type metadata accessor for SectionMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v382 = v1741;
        v383 = v1510;
        sub_1E65E2448();
        v384 = sub_1E65E2DA8();
        v385 = 0;
        v386 = 0;
        v387 = 0;
        v388 = 0;
        v389 = 0;
        v390 = 0;
        v391 = 0;
        v392 = 0;
        v393 = 0;
        v394 = 0;
        if (v384)
        {
          v393 = MEMORY[0x1E69AB380];
          v392 = &unk_1E65FAC58;
          v390 = &unk_1E65FAC60;
          v388 = &unk_1E65FAC68;
          v386 = &unk_1E65FAC70;
          v385 = v1735;
          v387 = v1727;
          v389 = v1728;
          v391 = v1729;
          v394 = v382;
        }

        *&aBlock = v394;
        *(&aBlock + 1) = v393;
        *&v1749 = v392;
        *(&v1749 + 1) = v391;
        *&v1750 = v390;
        *(&v1750 + 1) = v389;
        *&v1751 = v388;
        *(&v1751 + 1) = v387;
        *&v1752[0] = v386;
        *(&v1752[0] + 1) = v385;
        sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
        v395 = v1514;
        v396 = v1512;
        sub_1E630FFE8(&aBlock, v1512, v1514);
        (*(v1511 + 8))(v383, v396);
        v397 = v1742;
        v398 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v399 = swift_allocObject();
        sub_1E5E1E528(v398, v1733 + v399, type metadata accessor for AppComposer);
        sub_1E6071EE4();
        v400 = v1513;
        sub_1E6259D5C(sub_1E62CC418, v399, v1515);

        sub_1E5DFE50C(v395, &qword_1ED073DF8, &unk_1E65FA440);
        v401 = sub_1E6071E58();
        v402 = v1516;
        v403 = v1628;
        sub_1E5FEE4C8();
        v404 = &unk_1ED077710;
        v405 = &qword_1E65EEE28;
        sub_1E5DFE50C(v400, &unk_1ED077710, &qword_1E65EEE28);
        v406 = v1519;
        sub_1E5FEE4C8();
        v407 = sub_1E6072098();
        v408 = v1630;
        sub_1E62DFC6C(v406, v403, v1627, v401, v407);
      }

      v1224 = sub_1E6071DCC();
      v1225 = v1579;
      sub_1E62DFC6C(v408, v1629, MEMORY[0x1E69E73E0], v1224, MEMORY[0x1E6982070]);
      sub_1E5DFE50C(v408, &qword_1ED073DE8, &unk_1E65FA430);
      sub_1E5DFE50C(v406, v404, v405);
      sub_1E5DFE50C(v402, v404, v405);
      v1226 = v1736;
      (*(v1732 + 1))(v1723, v1731);
      sub_1E62BBB50(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
      v1227 = v1588;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v1225, &qword_1ED073DA8, &unk_1E65FA550);
      v1228 = *v397;
      v1229 = *(v1740 + 8);
      v1230 = swift_allocObject();
      v1742 = *(v397 + v1229);
      *(v1230 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1231 = v1441;
      }

      else
      {

        swift_unknownObjectRetain();
        v1231 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077200, &unk_1E65FA8D0);
      v1232 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1226);
      *(&v1471 + 1) = sub_1E62CC440;
      *&v1471 = v1228;
      v1233 = sub_1E630B390(v1227, v1231, MEMORY[0x1E69E7CC0], v1232, 0, 0, 0, 0, 0, 0, v1471, v1230);

      sub_1E5DFE50C(v1227, &qword_1ED073DA8, &unk_1E65FA550);
      v285 = v1233;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1234 = swift_getObjCClassFromMetadata();
      v1235 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v1236 = sub_1E65E5C48();

      [v285 setTitle_];

      v1237 = sub_1E6307A64();
      v1238 = v1237;
      if (v1734 > 1)
      {
        v1239 = 2;
      }

      else
      {
        v1239 = 1;
      }

      [v1237 setLargeTitleDisplayMode_];

      goto LABEL_259;
    case 0x23u:
      swift_storeEnumTagMultiPayload();
      v617 = v1742;
      sub_1E617DC64(v232, &aBlock);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      swift_storeEnumTagMultiPayload();
      sub_1E6508CD4(v1753, v232, &aBlock, v226);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      sub_1E6272CEC();
      v618 = v1705;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v226, &unk_1ED077820, &qword_1E65F96A8);
      v299 = v1532;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v618, &unk_1ED077820, &qword_1E65F96A8);
      v619 = v1531;
      sub_1E5DFD1CC(v299, v1531, &unk_1ED077820, &qword_1E65F96A8);
      v620 = *v617;
      v621 = *(v1740 + 8);
      v622 = swift_allocObject();
      v1742 = *(v617 + v621);
      *(v622 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v623 = v1442;
      }

      else
      {

        swift_unknownObjectRetain();
        v623 = MEMORY[0x1E69E7CD0];
      }

      v624 = v1736;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
      v625 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v624);
      *(&v1466 + 1) = sub_1E62CC440;
      *&v1466 = v620;
      v285 = sub_1E630B390(v619, v623, MEMORY[0x1E69E7CC0], v625, 0, 0, 0, 0, 1, 0, v1466, v622);

      v297 = &unk_1ED077820;
      v298 = &qword_1E65F96A8;
      sub_1E5DFE50C(v619, &unk_1ED077820, &qword_1E65F96A8);
      v626 = sub_1E6307A64();
      [v626 setLargeTitleDisplayMode_];

      swift_unknownObjectRelease();

      goto LABEL_49;
    case 0x24u:
      v299 = v1540;
      v300 = v1742;
      AppComposer.forYouViewBuilder(currentRoutingContext:)(v1753, v1540);
      v301 = v1539;
      sub_1E5DFD1CC(v299, v1539, &qword_1ED072708, &unk_1E65FA530);
      v302 = sub_1E65DAE38();
      v303 = sub_1E65DAE38();
      v304 = *v300;
      v305 = *(v1740 + 8);
      v306 = swift_allocObject();
      v1742 = *(v300 + v305);
      *(v306 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v307 = v1439;
      }

      else
      {

        swift_unknownObjectRetain();
        v307 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D0, &qword_1E65F97E0);
      v308 = v302 != v303;
      v309 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      *(&v1464 + 1) = sub_1E62CC440;
      *&v1464 = v304;
      v285 = sub_1E630B390(v301, v307, MEMORY[0x1E69E7CC0], v309, 0, 0, 0, 0, v308, 0, v1464, v306);

      v297 = &qword_1ED072708;
      v298 = &unk_1E65FA530;
      sub_1E5DFE50C(v301, &qword_1ED072708, &unk_1E65FA530);
      v310 = sub_1E6307A64();
      [v310 setLargeTitleDisplayMode_];

LABEL_49:
      v326 = v299;
      goto LABEL_123;
    case 0x25u:
      v288 = v1542;
      v289 = v1742;
      AppComposer.libraryViewBuilder(currentRoutingContext:)(v1753, v1542);
      v290 = v1541;
      sub_1E5DFD1CC(v288, v1541, &unk_1ED077800, &qword_1E65F9698);
      v291 = *v289;
      v292 = *(v1740 + 8);
      v293 = swift_allocObject();
      v1742 = *(v289 + v292);
      *(v293 + 16) = v1742;
      v294 = v1736;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_7;
      }

      goto LABEL_265;
    case 0x27u:
      if (v274 < 2)
      {
        v1022 = (v1742 + *(v1740 + 8));
        v1024 = *v1022;
        v1740 = v1022[1];
        v1023 = v1740;
        v1025 = swift_allocObject();
        v1730 = v1025;
        *(v1025 + 16) = v1024;
        *(v1025 + 24) = v1023;
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_1E65E4EC8();

        v1026 = type metadata accessor for AppEnvironment(0);
        v1027 = Description;
        Description[2](v1648, v1734 + *(v1026 + 80), v1649);
        sub_1E65E5148();
        swift_unknownObjectRetain();
        *&v1741 = sub_1E65E5138();
        type metadata accessor for SearchMetricsMonitor(0);
        v1738 = swift_allocObject();
        *&v1737 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
        sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
        sub_1E65E4F58();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1E62CC0C0(&qword_1EE2D4610, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
        sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060, MEMORY[0x1E69E6328]);
        sub_1E65E6738();
        (*(v1525 + 104))(v1524, *MEMORY[0x1E69E8090], v1526);
        v1028 = sub_1E65E63E8();
        v1029 = v1738;
        *(v1738 + v1737) = v1028;
        (*(v1517 + 32))(v1029 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v1647, v1518);
        v1030 = MEMORY[0x1E69AB380];
        *(v1029 + 16) = v1741;
        *(v1029 + 24) = v1030;
        v1027[4]((v1029 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService), v1648, v1649);
        v1031 = (v1029 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
        v1032 = v1740;
        *v1031 = v1024;
        v1031[1] = v1032;
        v1033 = v1742;
        v1034 = v1739;
        v1740 = type metadata accessor for AppComposer;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1035 = *(v1733 + 80);
        v1728 = v1735 + ((v1035 + 16) & ~v1035);
        v1729 = (v1035 + 16) & ~v1035;
        v1036 = v1735;
        v1037 = swift_allocObject();
        *&v1737 = type metadata accessor for AppComposer;
        v1733 = v1037;
        sub_1E5E1E528(v1034, v1037 + ((v1035 + 16) & ~v1035), type metadata accessor for AppComposer);
        v1038 = v1724;
        sub_1E62CC108(v1033, v1724, type metadata accessor for AppComposer);
        v1039 = ((v1035 + 32) & ~v1035);
        v1726 = v1039;
        v1040 = (v1036 + v1039) & 0xFFFFFFFFFFFFFFF8;
        v1723 = v1036 + v1039;
        v1041 = swift_allocObject();
        v1736 = v1041;
        v1731 = &unk_1E65FAC28;
        *(v1041 + 16) = &unk_1E65FAC28;
        *(v1041 + 24) = v1037;
        sub_1E5E1E528(v1038, v1039 + v1041, v1737);
        *(v1036 + v1039 + v1041) = 0;
        v1042 = v1041 + v1040;
        v1732 = sub_1E6172524;
        *(v1042 + 8) = sub_1E6172524;
        *(v1042 + 16) = 0;
        v1043 = (v1041 + ((v1040 + 31) & 0xFFFFFFFFFFFFFFF8));
        v1044 = v1741;
        *v1043 = v1741;
        v1045 = MEMORY[0x1E69AB380];
        v1043[1] = MEMORY[0x1E69AB380];
        v1046 = v1742;
        v1047 = v1725;
        sub_1E62CC108(v1742, v1725, v1740);
        v1048 = (v1035 + 48) & ~v1035;
        v1049 = v1735 + v1048;
        v1050 = (v1735 + v1048) & 0xFFFFFFFFFFFFFFF8;
        v1051 = swift_allocObject();
        v1052 = v1731;
        v1053 = v1733;
        *(v1051 + 2) = v1731;
        *(v1051 + 3) = v1053;
        *(v1051 + 4) = v1044;
        *(v1051 + 5) = v1045;
        v1054 = v1051;
        v1055 = v1737;
        sub_1E5E1E528(v1047, v1051 + v1048, v1737);
        v1734 = v1054;
        v1049[v1054] = 0;
        v1056 = v1054 + v1050;
        *(v1056 + 1) = v1732;
        *(v1056 + 2) = 0;
        v1057 = v1046;
        v1058 = v1046;
        v1059 = v1707;
        v1060 = v1740;
        sub_1E62CC108(v1058, v1707, v1740);
        v1061 = swift_allocObject();
        v1062 = v1733;
        v1061[2] = v1052;
        v1061[3] = v1062;
        v1063 = v1741;
        v1061[4] = v1741;
        v1061[5] = MEMORY[0x1E69AB380];
        v1064 = v1061 + v1048;
        v1065 = v1061;
        sub_1E5E1E528(v1059, v1064, v1055);
        v1066 = v1065 + ((v1049 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1727 = v1065;
        *v1066 = v1732;
        *(v1066 + 8) = 0;
        *(v1066 + 16) = 0;
        v1067 = v1708;
        sub_1E62CC108(v1057, v1708, v1060);
        v1068 = swift_allocObject();
        *(v1068 + 16) = v1731;
        *(v1068 + 24) = v1062;
        v1069 = v1068;
        v1732 = v1068;
        sub_1E5E1E528(v1067, v1726 + v1068, v1055);
        *&aBlock = v1063;
        *(&aBlock + 1) = MEMORY[0x1E69AB380];
        *&v1749 = &unk_1E65FAC30;
        *(&v1749 + 1) = v1736;
        *&v1750 = &unk_1E65FAC38;
        *(&v1750 + 1) = v1734;
        *&v1751 = &unk_1E65FAC40;
        *(&v1751 + 1) = v1065;
        *&v1752[0] = &unk_1E65FAC48;
        *(&v1752[0] + 1) = v1069;
        swift_retain_n();
        swift_retain_n();
        v1070 = v1057;
        v1731 = sub_1E62B43E4(boxed_opaque_existential_1, &aBlock, v1057);
        v1071 = v1657;
        sub_1E63D53AC(v1731, v1657);
        v1072 = v1738;

        v1726 = sub_1E61C9468(v1071, v1072);
        v1073 = v1072;

        v1733 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A460, &qword_1E65F97C8);
        v1074 = v1739;
        sub_1E62CC108(v1070, v1739, v1740);
        sub_1E5DF650C(v1753, &v1745);
        v1075 = (v1728 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1076 = (v1075 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1077 = swift_allocObject();
        sub_1E5E1E528(v1074, v1077 + v1729, v1055);
        sub_1E5DF599C(&v1745, v1077 + v1075);
        v1078 = (v1077 + v1076);
        v1079 = v1751;
        v1078[2] = v1750;
        v1078[3] = v1079;
        v1078[4] = v1752[0];
        v1080 = v1749;
        *v1078 = aBlock;
        v1078[1] = v1080;
        *(v1077 + ((v1076 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1073;
        v1081 = v1724;
        sub_1E62CC108(v1070, v1724, v1740);
        sub_1E5DF650C(v1753, v1744);
        v1082 = (v1035 + 24) & ~v1035;
        v1083 = (v1735 + v1082 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1084 = (v1083 + 15) & 0xFFFFFFFFFFFFFFF8;
        v1085 = (v1084 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1086 = swift_allocObject();
        *(v1086 + 16) = v1726;
        sub_1E5E1E528(v1081, v1086 + v1082, v1737);
        *(v1086 + v1083) = v1731;
        sub_1E5DF599C(v1744, v1086 + v1084);
        v1087 = (v1086 + v1085);
        v1088 = v1751;
        v1087[2] = v1750;
        v1087[3] = v1088;
        v1087[4] = v1752[0];
        v1089 = v1749;
        *v1087 = aBlock;
        v1087[1] = v1089;
        *(v1086 + ((v1085 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1738;

        v285 = sub_1E65DCC78();
        (*(v1527 + 8))(v1657, v1528);
        goto LABEL_259;
      }

      v1388 = v1742;
      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1389 = v1480;
      sub_1E62284FC(v1753, v1480);
      v1390 = sub_1E622B4E0();
      v276 = v1490;
      sub_1E6012F9C(v1481, v1390);
      sub_1E5DFE50C(v1389, &unk_1ED0776A0, &qword_1E65F8030);
      v278 = v1491;
      sub_1E5DFD1CC(v276, v1491, &qword_1ED0770A8, &unk_1E65FA3E0);
      v1391 = *v1388;
      v1392 = *(v1740 + 8);
      v1393 = swift_allocObject();
      v1742 = *(v1388 + v1392);
      *(v1393 + 16) = v1742;
      v1394 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1395 = v1461;
      }

      else
      {

        swift_unknownObjectRetain();
        v1395 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AA0, &qword_1E65F9798);
      v1396 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1394);
      *(&v1474 + 1) = sub_1E62CC440;
      *&v1474 = v1391;
      v285 = sub_1E630B390(v278, v1395, MEMORY[0x1E69E7CC0], v1396, 0, 0, 0, 0, 0, 0, v1474, v1393);

      v286 = &qword_1ED0770A8;
      v287 = &unk_1E65FA3E0;
      goto LABEL_225;
    case 0x29u:
      v1090 = (v1742 + *(v1740 + 9));
      v1091 = v274;
      v1092 = *v1090;
      v1093 = v1090[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v1092;
      *(&aBlock + 1) = v1093;
      LOBYTE(v1749) = v1091;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v1092, v1093);
      v1094 = InteropService.makeAccountSettingsViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v751 = v1094(&v1745);
      goto LABEL_116;
    case 0x2Au:
      v1095 = sub_1E65DDF08();
      *(&v1749 + 1) = v1095;
      *&v1750 = sub_1E62CC0C0(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
      v1096 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v1095 - 8) + 104))(v1096, *MEMORY[0x1E69CABE8], v1095);
      LOBYTE(v1095) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v1095)
      {
        v1097 = v1730;
        sub_1E65D76E8();
        v288 = v1502;
        v1098 = v1742;
        sub_1E606A028(v1753, v1097, v1502);
        (*(v1732 + 1))(v1097, v1731);
        v290 = v1501;
        sub_1E5DFD1CC(v288, v1501, &qword_1ED073D90, &unk_1E65FA3D0);
        v1099 = *v1098;
        v1100 = *(v1740 + 8);
        v1101 = swift_allocObject();
        v1742 = *(v1098 + v1100);
        *(v1101 + 16) = v1742;
        v1102 = v1736;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1103 = v1452;
        }

        else
        {

          swift_unknownObjectRetain();
          v1103 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077930, &qword_1E65F96F8);
        v1104 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1102);
        *(&v1469 + 1) = sub_1E62CC440;
        *&v1469 = v1099;
        v285 = sub_1E630B390(v290, v1103, MEMORY[0x1E69E7CC0], v1104, 0, 0, 0, 0, 0, 0, v1469, v1101);

        v297 = &qword_1ED073D90;
        v298 = &unk_1E65FA3D0;
        goto LABEL_122;
      }

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1139 = swift_getObjCClassFromMetadata();
      v1140 = [objc_opt_self() bundleForClass_];
      v1141 = v1742;
      v1142 = *v1742;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1143;
      sub_1E5F9AEA8();
      v1144 = v1494;
      sub_1E65E41C8();
      v1145 = v1493;
      v1146 = v1661;
      (*(v1712 + 2))(v1493, v1144, v1661);
      v1147 = *(v1740 + 8);
      v1148 = swift_allocObject();
      v1742 = *(v1141 + v1147);
      *(v1148 + 16) = v1742;
      v1149 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1150 = v1453;
      }

      else
      {

        swift_unknownObjectRetain();
        v1150 = MEMORY[0x1E69E7CD0];
      }

      v1151 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1149);
      v1152 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v285 = sub_1E626DF90(v1145, v1150, MEMORY[0x1E69E7CC0], v1151, 0, 0, 0, 0, 0, 0, 0, v1142, sub_1E62CC440, v1148);

      (*(v1712 + 1))(v1144, v1146);
      goto LABEL_259;
    case 0x2Bu:
      if (v274 < 2)
      {
        v1010 = (v1742 + *(v1740 + 9));
        v1011 = *v1010;
        v1012 = v1010[1];
        sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1753, v1752);
        *&aBlock = v1011;
        *(&aBlock + 1) = v1012;
        LOBYTE(v1749) = v274;
        type metadata accessor for AppEnvironment(0);
        sub_1E5FA9D34(v1011, v1012);
        QueueView = InteropService.makeUpNextQueueViewController.getter();
        v1746 = &type metadata for CatalogPageRoutingContextNavigator;
        v1747 = sub_1E61379FC();
        *&v1745 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1745 + 16);
        v751 = QueueView(&v1745, v1011, v1012);
        goto LABEL_116;
      }

      v1371 = v1742;
      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1372 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1373 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1374 = (v1735 + v1373 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1375 = swift_allocObject();
      sub_1E5E1E528(v1372, v1375 + v1373, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1375 + v1374);
      v1376 = sub_1E65E4438();
      v1377 = *v1371;
      v1378 = *(v1740 + 8);
      v1379 = swift_allocObject();
      v1742 = *(v1371 + v1378);
      *(v1379 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1380 = v1460;
      }

      else
      {

        swift_unknownObjectRetain();
        v1380 = MEMORY[0x1E69E7CD0];
      }

      v1381 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62CC3EC, v1375, v1376, v1380, MEMORY[0x1E69E7CC0], v1381, 0, 0, 0, 0, 0, 0, 0, v1377, sub_1E62CC440, v1379);

      v1291 = v1709;
      if (v1709)
      {
        v1382 = v1709;
        v1383 = v1290;
        if ([v1382 isViewLoaded])
        {
          v1294 = [v1382 view];
          if (!v1294)
          {
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

LABEL_217:
          v1384 = v1294;
          v1385 = [v1294 snapshotViewAfterScreenUpdates_];

LABEL_220:
          v1387 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v285 = sub_1E630B7AC(v1290, v1385);

          goto LABEL_259;
        }
      }

      else
      {
LABEL_218:
        v1386 = v1290;
      }

LABEL_219:
      v1385 = 0;
      goto LABEL_220;
    default:
      v275 = *v273;
      if (v274 >= 3)
      {
        v1122 = v1495;
        v1123 = v1742;
        AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v275, *(v273 + 1), v1753, v1495);

        v1124 = sub_1E6273064();
        v1125 = v1500;
        sub_1E6012F9C(v1496, v1124);
        sub_1E5DFE50C(v1122, &qword_1ED0770C8, &unk_1E65FA420);
        v1126 = v1497;
        sub_1E5DFD1CC(v1125, v1497, &unk_1ED0776F0, &qword_1E65F9658);
        v1127 = *v1123;
        v1128 = *(v1740 + 8);
        v1129 = swift_allocObject();
        v1742 = *(v1123 + v1128);
        *(v1129 + 16) = v1742;
        v1130 = v1736;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1131 = v1451;
        }

        else
        {

          swift_unknownObjectRetain();
          v1131 = MEMORY[0x1E69E7CD0];
        }

        v1132 = v1709;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B60, &qword_1E65F9810);
        v1133 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1130);
        *(&v1470 + 1) = sub_1E62CC440;
        *&v1470 = v1127;
        v1134 = sub_1E630B390(v1126, v1131, MEMORY[0x1E69E7CC0], v1133, 0, 0, 0, 0, 0, 0, v1470, v1129);

        sub_1E5DFE50C(v1126, &unk_1ED0776F0, &qword_1E65F9658);
        if (v1132 && (v1135 = v1132, [v1135 isViewLoaded]))
        {
          v1136 = [v1135 view];
          if (!v1136)
          {
            __break(1u);
LABEL_316:
            __break(1u);
            goto LABEL_317;
          }

          v1137 = v1136;
          v1138 = [v1136 snapshotViewAfterScreenUpdates_];
        }

        else
        {
          v1138 = 0;
        }

        v1175 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v285 = sub_1E630B7AC(v1134, v1138);

        sub_1E5DFE50C(v1125, &unk_1ED0776F0, &qword_1E65F9658);
        goto LABEL_259;
      }

      v276 = v1498;
      v277 = v1742;
      AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v275, *(v273 + 1), v1753, v1498);

      v278 = v1499;
      sub_1E5DFD1CC(v276, v1499, &qword_1ED0770C8, &unk_1E65FA420);
      v279 = *v277;
      v280 = *(v1740 + 8);
      v281 = swift_allocObject();
      v1742 = *(v277 + v280);
      *(v281 + 16) = v1742;
      v282 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v283 = v1450;
      }

      else
      {

        swift_unknownObjectRetain();
        v283 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F8, &unk_1E65FA7F0);
      v284 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v282);
      *(&v1462 + 1) = sub_1E62CC440;
      *&v1462 = v279;
      v285 = sub_1E630B390(v278, v283, MEMORY[0x1E69E7CC0], v284, 0, 0, 0, 0, 0, 0, v1462, v281);

      v286 = &qword_1ED0770C8;
      v287 = &unk_1E65FA420;
LABEL_225:
      sub_1E5DFE50C(v278, v286, v287);
      v1302 = v276;
      goto LABEL_234;
  }
}

char *sub_1E629F014(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t a1), uint64_t a4)
{
  *&v1741 = a4;
  v1740 = a3;
  v1709 = a2;
  *&v1742 = a1;
  v4 = sub_1E65DAEB8();
  v1504 = *(v4 - 8);
  v1505 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v1503 = &v1477 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v1501 = &v1477 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v1502 = &v1477 - v9;
  v10 = sub_1E65DCA88();
  v1527 = *(v10 - 8);
  v1528 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v1657 = &v1477 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E63B8();
  v1525 = *(v12 - 8);
  v1526 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v1524 = &v1477 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1521 = sub_1E65E6398();
  MEMORY[0x1EEE9AC00](v1521);
  v1523 = &v1477 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E4F68();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v1520 = &v1477 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1649 = type metadata accessor for MetricService();
  Description = v1649[-1].Description;
  MEMORY[0x1EEE9AC00](v1649);
  v1648 = &v1477 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DD0A8();
  v1517 = *(v18 - 8);
  v1518 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v1647 = &v1477 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1481 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  MEMORY[0x1EEE9AC00](v1481);
  v1480 = &v1477 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A8, &unk_1E65FA3E0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v1491 = &v1477 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v1490 = &v1477 - v24;
  v1636 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v1636);
  v1660 = &v1477 - v25;
  v1656 = sub_1E65E3F88();
  v1655 = *(v1656 - 8);
  MEMORY[0x1EEE9AC00](v1656);
  v1653 = &v1477 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1654 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v1652 = *(v1654 - 8);
  MEMORY[0x1EEE9AC00](v1654);
  v1651 = &v1477 - v27;
  v1658 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776C0, &qword_1E65F9648);
  MEMORY[0x1EEE9AC00](v1658);
  v1659 = &v1477 - v28;
  v1640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B0, &unk_1E65FA3F0);
  v1639 = *(v1640 - 8);
  v29 = MEMORY[0x1EEE9AC00](v1640);
  v1638 = &v1477 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v1635 = &v1477 - v31;
  v1644 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776D0, &qword_1E65F9650);
  v32 = MEMORY[0x1EEE9AC00](v1644);
  v1637 = &v1477 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v1720 = (&v1477 - v34);
  v1634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B8, &unk_1E65FA400);
  MEMORY[0x1EEE9AC00](v1634);
  v1721 = &v1477 - v35;
  v1703 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v1645 = *(v1703 - 8);
  v36 = MEMORY[0x1EEE9AC00](v1703);
  v1704 = &v1477 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1646 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v1650 = (&v1477 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v1633 = &v1477 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v1666 = &v1477 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v1632 = &v1477 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v1665 = &v1477 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v1492 = &v1477 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v1624 = &v1477 - v50;
  v1626 = sub_1E65D7218();
  MEMORY[0x1EEE9AC00](v1626);
  v1625 = &v1477 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v52 = MEMORY[0x1EEE9AC00](v1496);
  v1499 = &v1477 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v1498 = &v1477 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v1495 = &v1477 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776F0, &qword_1E65F9658);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v1497 = &v1477 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v1500 = &v1477 - v60;
  v1736 = sub_1E65DEEA8();
  v1738 = *(v1736 - 1);
  MEMORY[0x1EEE9AC00](v1736);
  *&v1737 = &v1477 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  MEMORY[0x1EEE9AC00](v1629);
  v1630 = &v1477 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v1511 = *(v63 - 8);
  v1512 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v1510 = &v1477 - v64;
  v1515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  MEMORY[0x1EEE9AC00](v1515);
  v1514 = &v1477 - v65;
  v1628 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v66 = MEMORY[0x1EEE9AC00](v1628);
  v1519 = &v1477 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v1513 = &v1477 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v1516 = &v1477 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v1483 = *(v71 - 8);
  v1484 = v71;
  MEMORY[0x1EEE9AC00](v71);
  v1482 = &v1477 - v72;
  v1487 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  MEMORY[0x1EEE9AC00](v1487);
  v1486 = &v1477 - v73;
  v1627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v74 = MEMORY[0x1EEE9AC00](v1627);
  v1489 = &v1477 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1485 = &v1477 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v1488 = &v1477 - v78;
  v1614 = sub_1E65D9048();
  v1613 = *(v1614 - 8);
  MEMORY[0x1EEE9AC00](v1614);
  v1611 = &v1477 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1612 = sub_1E65E58D8();
  v1610 = *(v1612 - 8);
  MEMORY[0x1EEE9AC00](v1612);
  v1609 = &v1477 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1608 = sub_1E65DA308();
  v1607 = *(v1608 - 8);
  MEMORY[0x1EEE9AC00](v1608);
  v1604 = &v1477 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1605 = sub_1E65E56B8();
  v1602 = *(v1605 - 8);
  MEMORY[0x1EEE9AC00](v1605);
  v1601 = &v1477 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1643 = sub_1E65D7EB8();
  v1642 = *(v1643 - 8);
  v83 = MEMORY[0x1EEE9AC00](v1643);
  v1530 = &v1477 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1479 = v84;
  MEMORY[0x1EEE9AC00](v83);
  v1662 = &v1477 - v85;
  v1702 = sub_1E65E55E8();
  v1663 = *(v1702 - 8);
  v86 = MEMORY[0x1EEE9AC00](v1702);
  v1529 = &v1477 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1478 = v87;
  MEMORY[0x1EEE9AC00](v86);
  v1698 = &v1477 - v88;
  v1589 = type metadata accessor for PlaylistType(0);
  v89 = MEMORY[0x1EEE9AC00](v1589);
  v1509 = (&v1477 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = MEMORY[0x1EEE9AC00](v89);
  v1477 = (&v1477 - v92);
  MEMORY[0x1EEE9AC00](v91);
  v1621 = &v1477 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v94 - 8);
  v1620 = &v1477 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v1619 = &v1477 - v97;
  v1618 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077740, &qword_1E65F9660);
  v1617 = *(v1618 - 8);
  MEMORY[0x1EEE9AC00](v1618);
  v1616 = &v1477 - v98;
  v1587 = sub_1E65DDE68();
  v1583 = *(v1587 - 8);
  MEMORY[0x1EEE9AC00](v1587);
  v1584 = &v1477 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1615 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v100 = MEMORY[0x1EEE9AC00](v1615);
  v1622 = &v1477 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v1623 = &v1477 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1585 = *(v103 - 8);
  v104 = MEMORY[0x1EEE9AC00](v103 - 8);
  v1694 = &v1477 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1586 = v105;
  MEMORY[0x1EEE9AC00](v104);
  v1697 = &v1477 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1581 = *(v107 - 8);
  v108 = MEMORY[0x1EEE9AC00](v107 - 8);
  v1693 = &v1477 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1582 = v109;
  MEMORY[0x1EEE9AC00](v108);
  v1696 = &v1477 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1578 = *(v111 - 8);
  v112 = MEMORY[0x1EEE9AC00](v111 - 8);
  v1590 = &v1477 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x1EEE9AC00](v112);
  v1692 = &v1477 - v115;
  v1695 = v116;
  MEMORY[0x1EEE9AC00](v114);
  v1715 = &v1477 - v117;
  v1572 = sub_1E65E52B8();
  v118 = MEMORY[0x1EEE9AC00](v1572);
  v1576 = (&v1477 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v118);
  v1595 = &v1477 - v120;
  v1577 = sub_1E65E5528();
  v1575 = *(v1577 - 8);
  MEMORY[0x1EEE9AC00](v1577);
  v1573 = &v1477 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1691 = sub_1E65E57D8();
  v1571 = *(v1691 - 8);
  MEMORY[0x1EEE9AC00](v1691);
  v1569 = &v1477 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v123 - 8);
  v1574 = &v1477 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  MEMORY[0x1EEE9AC00](v125 - 8);
  v1570 = &v1477 - v126;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  MEMORY[0x1EEE9AC00](v127 - 8);
  v1567 = &v1477 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1563 = *(v129 - 8);
  v130 = MEMORY[0x1EEE9AC00](v129 - 8);
  v1565 = &v1477 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1564 = v131;
  MEMORY[0x1EEE9AC00](v130);
  v1714 = &v1477 - v132;
  v1568 = sub_1E65D7848();
  v1566 = *(v1568 - 8);
  MEMORY[0x1EEE9AC00](v1568);
  v1718 = (&v1477 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v134 - 8);
  v1699 = &v1477 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v1712 = *(v1661 - 8);
  v136 = MEMORY[0x1EEE9AC00](v1661);
  v1493 = &v1477 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = MEMORY[0x1EEE9AC00](v136);
  v1494 = &v1477 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v1689 = &v1477 - v141;
  MEMORY[0x1EEE9AC00](v140);
  v1690 = &v1477 - v142;
  v1597 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077790, &qword_1E65F9668);
  v1594 = *(v1597 - 8);
  MEMORY[0x1EEE9AC00](v1597);
  v1591 = &v1477 - v143;
  v1599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E0, &unk_1E65FA4C0);
  MEMORY[0x1EEE9AC00](v1599);
  v1598 = &v1477 - v144;
  v1603 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777A0, &qword_1E65F9670);
  MEMORY[0x1EEE9AC00](v1603);
  v1606 = &v1477 - v145;
  v1558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E8, &unk_1E65FA4D0);
  v1555 = *(v1558 - 8);
  MEMORY[0x1EEE9AC00](v1558);
  v1554 = &v1477 - v146;
  v1562 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777B0, &qword_1E65F9678);
  v1560 = *(v1562 - 8);
  MEMORY[0x1EEE9AC00](v1562);
  v1557 = &v1477 - v147;
  v1561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F0, &unk_1E65FA4E0);
  v1559 = *(v1561 - 8);
  MEMORY[0x1EEE9AC00](v1561);
  v1556 = &v1477 - v148;
  v1553 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v1552 = *(v1553 - 8);
  MEMORY[0x1EEE9AC00](v1553);
  v1551 = &v1477 - v149;
  v1600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F8, &unk_1E65FA4F0);
  v150 = MEMORY[0x1EEE9AC00](v1600);
  v1592 = &v1477 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v1593 = &v1477 - v153;
  MEMORY[0x1EEE9AC00](v152);
  v1596 = &v1477 - v154;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777D0, &qword_1E65F9680);
  v156 = MEMORY[0x1EEE9AC00](v155 - 8);
  v1664 = &v1477 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v156);
  v1631 = &v1477 - v158;
  v1549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  MEMORY[0x1EEE9AC00](v1549);
  v1548 = &v1477 - v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777E0, &qword_1E65F9688);
  v161 = MEMORY[0x1EEE9AC00](v160 - 8);
  v1678 = &v1477 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161);
  v1681 = &v1477 - v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077108, &unk_1E65FA510);
  v165 = MEMORY[0x1EEE9AC00](v164 - 8);
  v1547 = &v1477 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v165);
  v1546 = &v1477 - v167;
  v1545 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v168 = MEMORY[0x1EEE9AC00](v1545);
  v1675 = &v1477 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v168);
  v1550 = &v1477 - v170;
  v1728 = sub_1E65D74E8();
  v1729 = *(v1728 - 1);
  v171 = *(v1729 + 64);
  v172 = MEMORY[0x1EEE9AC00](v1728);
  v1667 = &v1477 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = MEMORY[0x1EEE9AC00](v172);
  v1716 = &v1477 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v1685 = &v1477 - v176;
  v177 = MEMORY[0x1EEE9AC00](v175);
  v1684 = &v1477 - v178;
  MEMORY[0x1EEE9AC00](v177);
  v1674 = &v1477 - v179;
  v1688 = sub_1E65E1518();
  v1687 = *(v1688 - 8);
  MEMORY[0x1EEE9AC00](v1688);
  v1686 = &v1477 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1727 = sub_1E65DB848();
  v1726 = *(v1727 - 1);
  v181 = MEMORY[0x1EEE9AC00](v1727);
  v1679 = &v1477 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = MEMORY[0x1EEE9AC00](v181);
  v1680 = &v1477 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v1676 = &v1477 - v186;
  v187 = MEMORY[0x1EEE9AC00](v185);
  v1677 = &v1477 - v188;
  v189 = MEMORY[0x1EEE9AC00](v187);
  v1682 = &v1477 - v190;
  MEMORY[0x1EEE9AC00](v189);
  v1683 = &v1477 - v191;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v193 = MEMORY[0x1EEE9AC00](v192 - 8);
  v1543 = &v1477 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v193);
  v1544 = &v1477 - v195;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v197 = MEMORY[0x1EEE9AC00](v196 - 8);
  v1541 = &v1477 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v197);
  v1542 = &v1477 - v199;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v201 = MEMORY[0x1EEE9AC00](v200 - 8);
  v1539 = &v1477 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v201);
  v1540 = &v1477 - v203;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v205 = MEMORY[0x1EEE9AC00](v204 - 8);
  v1535 = &v1477 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v205);
  v1538 = &v1477 - v207;
  v208 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v208 - 8);
  v1536 = &v1477 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077110, &unk_1E65FA540);
  v1537 = *(v1713 - 1);
  v210 = MEMORY[0x1EEE9AC00](v1713);
  v1670 = &v1477 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = MEMORY[0x1EEE9AC00](v210);
  v1533 = &v1477 - v213;
  v214 = MEMORY[0x1EEE9AC00](v212);
  v1534 = &v1477 - v215;
  MEMORY[0x1EEE9AC00](v214);
  v1673 = &v1477 - v216;
  v1672 = sub_1E65D72D8();
  v1671 = *(v1672 - 8);
  MEMORY[0x1EEE9AC00](v1672);
  v1722 = (&v1477 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1706 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v218 = MEMORY[0x1EEE9AC00](v1706);
  v1508 = &v1477 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = MEMORY[0x1EEE9AC00](v218);
  v1641 = &v1477 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v1531 = &v1477 - v223;
  v224 = MEMORY[0x1EEE9AC00](v222);
  v226 = &v1477 - v225;
  v227 = MEMORY[0x1EEE9AC00](v224);
  v1705 = &v1477 - v228;
  MEMORY[0x1EEE9AC00](v227);
  v1532 = &v1477 - v229;
  v230 = type metadata accessor for BrowsePage(0);
  MEMORY[0x1EEE9AC00](v230);
  v232 = &v1477 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1731 = sub_1E65D76F8();
  v1732 = *(v1731 - 8);
  v233 = *(v1732 + 8);
  v234 = MEMORY[0x1EEE9AC00](v1731);
  v1701 = &v1477 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = MEMORY[0x1EEE9AC00](v234);
  v1700 = &v1477 - v236;
  v237 = MEMORY[0x1EEE9AC00](v235);
  v1507 = &v1477 - v238;
  v239 = MEMORY[0x1EEE9AC00](v237);
  v1506 = &v1477 - v240;
  v241 = MEMORY[0x1EEE9AC00](v239);
  v1730 = &v1477 - v242;
  v243 = MEMORY[0x1EEE9AC00](v241);
  v1711 = &v1477 - v244;
  v245 = MEMORY[0x1EEE9AC00](v243);
  v1710 = &v1477 - v246;
  v247 = MEMORY[0x1EEE9AC00](v245);
  v1719 = &v1477 - v248;
  v249 = MEMORY[0x1EEE9AC00](v247);
  v1669 = &v1477 - v250;
  v251 = MEMORY[0x1EEE9AC00](v249);
  v1668 = &v1477 - v252;
  MEMORY[0x1EEE9AC00](v251);
  v1723 = &v1477 - v253;
  v1580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v254 = MEMORY[0x1EEE9AC00](v1580);
  v1579 = &v1477 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v254);
  v1588 = &v1477 - v256;
  v257 = type metadata accessor for AppComposer(0);
  v1733 = *(v257 - 8);
  v258 = MEMORY[0x1EEE9AC00](v257);
  v260 = &v1477 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = MEMORY[0x1EEE9AC00](v258);
  v1708 = &v1477 - v262;
  v263 = MEMORY[0x1EEE9AC00](v261);
  v1707 = &v1477 - v264;
  v265 = MEMORY[0x1EEE9AC00](v263);
  v1725 = &v1477 - v266;
  v267 = MEMORY[0x1EEE9AC00](v265);
  v1724 = (&v1477 - v268);
  v1735 = v269;
  MEMORY[0x1EEE9AC00](v267);
  v1739 = &v1477 - v270;
  v271 = type metadata accessor for RouteResource(0);
  MEMORY[0x1EEE9AC00](v271);
  v273 = &v1477 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1753[3] = type metadata accessor for RouteDetourViewControllerRoutingContext(0);
  v1753[4] = &off_1F5FC41D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1753);
  sub_1E62CC108(v1740, boxed_opaque_existential_1, type metadata accessor for RouteDetourViewControllerRoutingContext);
  v1740 = v257;
  v1734 = (v1742 + *(v257 + 20));
  v274 = *(v1734 + 8);
  sub_1E62CC108(v1741, v273, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v693 = &v273[v692[12]];
      v695 = *v693;
      v694 = v693[1];
      v1731 = v695;
      v1730 = v694;
      v696 = v692[16];
      v1726 = *&v273[v692[20]];
      v697 = v692[24];
      LODWORD(v1729) = v273[v692[28]];
      v698 = &v273[v692[32]];
      v1728 = *v698;
      LODWORD(v1727) = v698[8];
      v699 = v1715;
      sub_1E5FAB460(v273, v1715, &unk_1ED077760, &unk_1E66011D0);
      v700 = v1696;
      sub_1E5FAB460(&v273[v696], v1696, &qword_1ED072B60, &unk_1E65FA490);
      v701 = v1697;
      sub_1E5FAB460(&v273[v697], v1697, &unk_1ED077750, &unk_1E66011C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
      *&v1741 = swift_allocBox();
      (*(v1583 + 104))(v1584, *MEMORY[0x1E69CAB38], v1587);
      LOBYTE(aBlock) = 0;
      sub_1E65DDC88();
      v1722 = type metadata accessor for AppComposer;
      v702 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DFD1CC(v699, v1692, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5DFD1CC(v701, v1694, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFD1CC(v700, v1693, &qword_1ED072B60, &unk_1E65FA490);
      v703 = *(v1733 + 80);
      v704 = ((v703 + 16) & ~v703);
      v1735 = (v1735 + v704);
      v1733 = v704;
      v1732 = (v703 | 7);
      v1723 = *(v1578 + 80);
      v705 = (v1735 + v1723) & ~v1723;
      v1721 = (v703 | 7 | v1723);
      v706 = (v1695 + v705 + 7) & 0xFFFFFFFFFFFFFFF8;
      v707 = (*(v1585 + 80) + v706 + 8) & ~*(v1585 + 80);
      v708 = (v1586 + v707 + 7) & 0xFFFFFFFFFFFFFFF8;
      v709 = (*(v1581 + 80) + v708 + 9) & ~*(v1581 + 80);
      v1720 = (v709 + v1582);
      v1719 = (v709 + v1582) & 0xFFFFFFFFFFFFFFF8;
      v710 = (v1719 + 23) & 0xFFFFFFFFFFFFFFF8;
      v711 = swift_allocObject();
      v1718 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v702, v704 + v711, type metadata accessor for AppComposer);
      sub_1E5FAB460(v1692, v711 + v705, &unk_1ED077760, &unk_1E66011D0);
      *(v711 + v706) = v1726;
      sub_1E5FAB460(v1694, v711 + v707, &unk_1ED077750, &unk_1E66011C0);
      v712 = v711 + v708;
      *v712 = v1728;
      *(v712 + 8) = v1727;
      sub_1E5FAB460(v1693, v711 + v709, &qword_1ED072B60, &unk_1E65FA490);
      *(v1720 + v711) = v1729;
      *(v711 + v1719 + 8) = v1741;
      v713 = (v711 + v710);
      v714 = v1730;
      *v713 = v1731;
      v713[1] = v714;
      type metadata accessor for AppEnvironment(0);

      v715 = LocalizationService.localizedDateComponentsFormatter.getter();
      v1734 = v715();

      v716 = v1742;
      v717 = v1724;
      v718 = v1722;
      sub_1E62CC108(v1742, v1724, v1722);
      v719 = v1735;
      v1731 = swift_allocObject();
      v720 = v1733;
      sub_1E5E1E528(v717, v1733 + v1731, type metadata accessor for AppComposer);
      v721 = v1725;
      sub_1E62CC108(v716, v1725, v718);
      sub_1E5DF650C(v1753, &aBlock);
      v722 = v1590;
      sub_1E5DFD1CC(v1715, v1590, &unk_1ED077760, &unk_1E66011D0);
      v723 = (v719 + 7) & 0xFFFFFFFFFFFFFFF8;
      v724 = (v1723 + v723 + 40) & ~v1723;
      v725 = swift_allocObject();
      sub_1E5E1E528(v721, v720 + v725, v1718);
      sub_1E5DF599C(&aBlock, v725 + v723);
      sub_1E5FAB460(v722, v725 + v724, &unk_1ED077760, &unk_1E66011D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
      v726 = v1616;
      sub_1E65E26F8();
      sub_1E65E5148();
      sub_1E65E5138();
      v727 = sub_1E65E4FD8();
      v728 = v1619;
      (*(*(v727 - 8) + 56))(v1619, 1, 1, v727);
      if (qword_1EE2D49E0 != -1)
      {
        swift_once();
      }

      v729 = sub_1E65E5018();
      __swift_project_value_buffer(v729, qword_1EE2D49E8);
      v730 = sub_1E65E2E78();
      v731 = v1620;
      (*(*(v730 - 8) + 56))(v1620, 1, 1, v730);
      sub_1E5FED46C(&qword_1ED077120, &unk_1ED077740, &qword_1E65F9660, MEMORY[0x1E699F420]);
      v732 = v1623;
      v733 = v1618;
      sub_1E65E4728();

      sub_1E5DFE50C(v731, &unk_1ED077730, &unk_1E65EA310);
      sub_1E5DFE50C(v728, &qword_1ED071EF8, &unk_1E65FA470);
      (*(v1617 + 8))(v726, v733);
      v734 = v1742;
      v735 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v736 = swift_allocObject();
      sub_1E5E1E528(v735, v1733 + v736, type metadata accessor for AppComposer);

      v737 = (v732 + *(v1615 + 36));
      *v737 = sub_1E62BB4D8;
      v737[1] = v736;
      v738 = v1622;
      sub_1E5DFD1CC(v732, v1622, &qword_1ED0770D0, &unk_1E65FA480);
      v739 = *v734;
      v740 = *(v1740 + 8);
      v741 = swift_allocObject();
      v1742 = *(v734 + v740);
      *(v741 + 16) = v1742;
      v742 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v743 = v1445;
      }

      else
      {

        swift_unknownObjectRetain();
        v743 = MEMORY[0x1E69E7CD0];
      }

      v744 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v742);
      v745 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778E0, &unk_1E65FA5C0));
      v285 = sub_1E626E800(v738, v743, MEMORY[0x1E69E7CC0], v744, 0, 0, 0, 0, 0, 0, 0, v739, sub_1E62AD21C, v741);

      sub_1E5DFE50C(v732, &qword_1ED0770D0, &unk_1E65FA480);
      sub_1E5DFE50C(v1697, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v1696, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v1715, &unk_1ED077760, &unk_1E66011D0);
      goto LABEL_259;
    case 2u:
      v555 = *v273;
      v554 = *(v273 + 1);
      *v232 = *v273;
      *(v232 + 1) = v554;
      swift_storeEnumTagMultiPayload();

      v556 = v274;
      v557 = v1742;
      sub_1E617DC64(v232, &aBlock);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      if (v556 < 2)
      {
        *v232 = v555;
        *(v232 + 1) = v554;
        swift_storeEnumTagMultiPayload();

        sub_1E6508CD4(v1753, v232, &aBlock, v226);
        sub_1E62BC770(v232, type metadata accessor for BrowsePage);
        sub_1E6272CEC();
        v558 = v1705;
        sub_1E5FEE4C8();
        sub_1E5DFE50C(v226, &unk_1ED077820, &qword_1E65F96A8);
        v559 = v1641;
        sub_1E5FEE4C8();
        sub_1E5DFE50C(v558, &unk_1ED077820, &qword_1E65F96A8);
        v560 = v1506;
        sub_1E65D76E8();
        v561 = v1507;
        sub_1E65D76E8();
        v562 = v559;
        v563 = v1508;
        sub_1E5DFD1CC(v562, v1508, &unk_1ED077820, &qword_1E65F96A8);
        *&v1741 = sub_1E6388F1C(v555, v554, v561, v560, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v564 = swift_allocObject();
        *(v564 + 16) = xmmword_1E65F32F0;
        *(v564 + 32) = sub_1E62B2CDC(v555, v554, v561, boxed_opaque_existential_1, &aBlock, v557);
        *(v564 + 40) = [objc_opt_self() flexibleSpaceItem];
        v565 = sub_1E638AB3C(v555, v554, v560, &aBlock);

        *(v564 + 48) = v565;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
        v566 = *v557;
        v567 = *(v1740 + 8);
        v568 = swift_allocObject();
        v1742 = *(v557 + v567);
        *(v568 + 16) = v1742;
        v569 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);

        swift_unknownObjectRetain();
        *(&v1465 + 1) = sub_1E62AD21C;
        *&v1465 = v566;
        v285 = sub_1E630B390(v563, v1741, v564, v569, 0, 0, 0, 0, 1, 0, v1465, v568);

        sub_1E5DFE50C(v563, &unk_1ED077820, &qword_1E65F96A8);
        swift_unknownObjectRelease();

        v570 = *(v1732 + 1);
        v571 = v1731;
        v570(v561, v1731);
        v570(v560, v571);
        sub_1E5DFE50C(v1641, &unk_1ED077820, &qword_1E65F96A8);
        goto LABEL_259;
      }

      if (v556 != 3)
      {
        goto LABEL_324;
      }

      v1261 = v1739;
      sub_1E62CC108(v557, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &v1745);
      v1262 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1263 = (v1735 + v1262 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1264 = swift_allocObject();
      sub_1E5E1E528(v1261, v1264 + v1262, type metadata accessor for AppComposer);
      v1265 = (v1264 + v1263);
      *v1265 = v555;
      v1265[1] = v554;
      sub_1E5DF599C(&v1745, v1264 + ((v1263 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1266 = sub_1E65E4438();
      v1267 = *v557;
      v1268 = *(v1740 + 8);
      v1269 = swift_allocObject();
      v1742 = *(v557 + v1268);
      *(v1269 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1270 = v1455;
      }

      else
      {

        swift_unknownObjectRetain();
        v1270 = MEMORY[0x1E69E7CD0];
      }

      v1271 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1272 = sub_1E626CAE8(sub_1E62BBB20, v1264, v1266, v1270, MEMORY[0x1E69E7CC0], v1271, 0, 0, 0, 0, 0, 0, 0, v1267, sub_1E62AD21C, v1269);

      v1273 = v1709;
      if (v1709)
      {
        v1274 = v1709;
        v1275 = v1272;
        if ([v1274 isViewLoaded])
        {
          v1276 = [v1274 view];
          if (v1276)
          {
            v1277 = v1276;
            v1278 = [v1276 snapshotViewAfterScreenUpdates_];

            goto LABEL_257;
          }

          goto LABEL_316;
        }
      }

      else
      {
        v1433 = v1272;
      }

      v1278 = 0;
LABEL_257:
      v1434 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v285 = sub_1E630B7AC(v1272, v1278);

      swift_unknownObjectRelease();

LABEL_258:

      goto LABEL_259;
    case 3u:
      LODWORD(v1734) = v274;
      v633 = *(v273 + 1);
      v1732 = *v273;
      v634 = v1732;
      v1729 = v633;
      LODWORD(v1741) = v273[16];
      LODWORD(v1740) = v273[17];
      v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v636 = *(v635 + 80);
      v1731 = v635;
      v637 = v1671;
      v638 = v1722;
      v639 = v1672;
      (*(v1671 + 32))(v1722, &v273[v636], v1672);
      v640 = *(v635 + 80);
      *v232 = v634;
      v641 = v1729;
      *(v232 + 1) = v1729;
      v232[16] = v1741;
      v232[17] = v1740;
      v1730 = *(v637 + 16);
      (v1730)(&v232[v640], v638, v639);
      swift_storeEnumTagMultiPayload();

      sub_1E617DC64(v232, &aBlock);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      v642 = *(v1731 + 80);
      *v232 = v1732;
      *(v232 + 1) = v641;
      LOBYTE(v638) = v1741;
      v232[16] = v1741;
      v232[17] = v1740;
      (v1730)(&v232[v642], v1722, v639);
      swift_storeEnumTagMultiPayload();
      v643 = v1705;
      v644 = v1742;
      sub_1E6508CD4(v1753, v232, &aBlock, v1705);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      v1732 = type metadata accessor for AppComposer;
      v645 = v1739;
      sub_1E62CC108(v644, v1739, type metadata accessor for AppComposer);
      v1731 = *(v1733 + 80);
      v646 = (v1731 + 17) & ~v1731;
      v647 = swift_allocObject();
      *(v647 + 16) = v638;
      v1733 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v645, v647 + v646, type metadata accessor for AppComposer);
      v648 = sub_1E6272CEC();
      v649 = v1533;
      v650 = v1706;
      sub_1E65E4718();

      sub_1E5DFE50C(v643, &unk_1ED077820, &qword_1E65F96A8);
      *&v1745 = v650;
      *(&v1745 + 1) = v648;
      swift_getOpaqueTypeConformance2();
      v651 = v1534;
      v652 = v1713;
      sub_1E5FEE4C8();
      v653 = v1537;
      v654 = (v1537 + 8);
      v655 = *(v1537 + 8);
      v655(v649, v652);
      v656 = v1673;
      sub_1E5FEE4C8();
      v1740 = v654;
      v655(v651, v652);
      v657 = v655;
      (*(v653 + 16))(v1670, v656, v652);
      v658 = *v1742;
      sub_1E62CC108(v1742, v260, v1732);
      v659 = (v1731 + 16) & ~v1731;
      v660 = v1735 + v659;
      v661 = swift_allocObject();
      sub_1E5E1E528(v260, v661 + v659, v1733);
      v660[v661] = v1741;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v662 = v1443;
      }

      else
      {

        v662 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B20, &qword_1E65F9800);
      v663 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      *(&v1467 + 1) = sub_1E62BBB1C;
      *&v1467 = v658;
      v664 = v1670;
      v665 = sub_1E630B390(v1670, v662, MEMORY[0x1E69E7CC0], v663, 0, 0, 0, 0, 0, 0, v1467, v661);

      v657(v664, v1713);
      v285 = v665;
      sub_1E65D71F8();
      sub_1E62CC0C0(&qword_1ED075EA8, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      sub_1E65E5E48();
      v666 = sub_1E65E5C48();

      [v285 setTitle_];

      v667 = sub_1E6307A64();
      v668 = v667;
      if (v1734 > 1)
      {
        [v667 setLargeTitleDisplayMode_];
        swift_unknownObjectRelease();
      }

      else
      {
        [v667 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        v668 = v285;
      }

      v657(v1673, v1713);
      (*(v1671 + 8))(v1722, v1672);
      goto LABEL_259;
    case 4u:
      v409 = &v273[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v410 = *v409;
      v411 = v409[1];
      v412 = v273;
      v413 = v1536;
      sub_1E5E1E528(v412, v1536, MEMORY[0x1E699DD40]);
      v414 = v1538;
      v415 = v410;
      v416 = v1742;
      sub_1E63DB038(v413, v415, v411, v1753, v1538);

      v417 = v1535;
      sub_1E5DFD1CC(v414, v1535, &unk_1ED077810, &qword_1E65F96A0);
      v418 = *v416;
      v419 = *(v1740 + 8);
      v420 = swift_allocObject();
      v1742 = *(v416 + v419);
      *(v420 + 16) = v1742;
      v421 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v422 = v1440;
      }

      else
      {

        swift_unknownObjectRetain();
        v422 = MEMORY[0x1E69E7CD0];
      }

      v423 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v421);
      v424 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D8, &qword_1E65F97E8));
      v285 = sub_1E626CF50(v417, v422, MEMORY[0x1E69E7CC0], v423, 0, 0, 0, 0, 0, 0, 0, v418, sub_1E62AD21C, v420);

      sub_1E5DFE50C(v414, &unk_1ED077810, &qword_1E65F96A0);
      sub_1E62BC770(v413, MEMORY[0x1E699DD40]);
      goto LABEL_259;
    case 5u:
      v752 = v1544;
      v753 = v1742;
      AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)(*v273, v1753, v1544);
      v754 = v1543;
      sub_1E5DFD1CC(v752, v1543, &qword_1ED0729A0, &unk_1E65FA520);
      v755 = *v753;
      v756 = *(v1740 + 8);
      v757 = swift_allocObject();
      v1742 = *(v753 + v756);
      *(v757 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v758 = v1446;
      }

      else
      {

        swift_unknownObjectRetain();
        v758 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C8, &qword_1E65F97D8);
      v759 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      *(&v1468 + 1) = sub_1E62AD21C;
      *&v1468 = v755;
      v760 = sub_1E630B390(v754, v758, MEMORY[0x1E69E7CC0], v759, 0, 0, 0, 0, 0, 0, v1468, v757);

      sub_1E5DFE50C(v754, &qword_1ED0729A0, &unk_1E65FA520);
      swift_getKeyPath();
      v285 = v760;
      v761 = v1718;
      sub_1E65E4EC8();

      sub_1E65DF548();
      (*(v1566 + 8))(v761, v1568);
      v762 = sub_1E65E5C48();

      [v285 setTitle_];

      v763 = sub_1E6307A64();
      [v763 setLargeTitleDisplayMode_];

      sub_1E5DFE50C(v752, &qword_1ED0729A0, &unk_1E65FA520);
      goto LABEL_259;
    case 6u:
      *&v1741 = *v273;
      v777 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v778 = *(v777 + 64);
      (*(v1726 + 4))(v1683, &v273[*(v777 + 48)], v1727);
      (*(v1687 + 32))(v1686, &v273[v778], v1688);
      v779 = v1740;
      v780 = v1742;
      sub_1E617FDC0(*(v1742 + *(v1740 + 9)), *(v1742 + *(v1740 + 9) + 8));
      v781 = sub_1E65DB818();
      v782 = sub_1E65DB838();
      v783 = sub_1E625B3D4(v782);

      v784 = *(v779 + 8);
      v785 = swift_allocObject();
      v786 = *(v780 + v784);
      v1740 = v785;
      *(v785 + 16) = v786;
      swift_unknownObjectRetain();
      sub_1E65DB578();
      sub_1E65E1508();
      sub_1E65E1268();
      v787 = *v1734;
      v788 = objc_allocWithZone(sub_1E65E1328());
      v789 = sub_1E65E5C48();

      v790 = sub_1E65E5C48();

      v791 = [v788 initWithServiceType:v789 placement:v790 bag:v787];

      v792 = v791;
      sub_1E65E14E8();
      if (v793)
      {
        v794 = sub_1E65E5C48();
      }

      else
      {
        v794 = 0;
      }

      v1158 = v1739;
      v1159 = v1733;
      [v792 setOfferHints_];

      v285 = v792;
      [v285 setAccount_];
      [v285 setAnonymousMetrics_];
      v1160 = sub_1E625E194(v783);
      v1161 = v1742;
      v1738 = v783;
      if (!v1160)
      {
        v1160 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v1160);

      v1162 = sub_1E65E5AF8();

      [v285 setMetricsOverlay_];

      sub_1E65DB588();
      v1163 = sub_1E65E5C48();

      [v285 setMediaClientIdentifier_];

      v1164 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v1165 = sub_1E65E6348();

      [v285 setClientInfo_];

      v1166 = sub_1E65E1308();
      *&v1737 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1161, v1158, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1167 = (*(v1159 + 80) + 16) & ~*(v1159 + 80);
      v1168 = (v1735 + v1167 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1169 = v1158;
      v1170 = (v1168 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1171 = swift_allocObject();
      v1736 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v1169, v1171 + v1167, type metadata accessor for AppComposer);
      v1172 = v1738;
      *(v1171 + v1168) = v1738;
      sub_1E5DF599C(&aBlock, v1171 + v1170);

      sub_1E65E13A8();

      v1173 = sub_1E65E1308();
      sub_1E62CC108(v1742, v1169, v1737);
      sub_1E5DF650C(v1753, &aBlock);
      v1174 = swift_allocObject();
      sub_1E5E1E528(v1169, v1174 + v1167, v1736);
      *(v1174 + v1168) = v1172;
      sub_1E5DF599C(&aBlock, v1174 + v1170);
      sub_1E65E13B8();

      sub_1E65E1318();
      v885 = *(v1726 + 1);
      v886 = v1727;
      v885(v1682, v1727);
      (*(v1687 + 8))(v1686, v1688);
      v887 = v1683;
      goto LABEL_145;
    case 7u:
      v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      v670 = v1729;
      v671 = v1674;
      v672 = v1728;
      (*(v1729 + 32))(v1674, &v273[*(v669 + 48)], v1728);
      v673 = v1550;
      (*(v670 + 16))(v1550, v671, v672);
      v674 = v1742;
      v675 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v676 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v677 = swift_allocObject();
      sub_1E5E1E528(v675, v677 + v676, type metadata accessor for AppComposer);
      v678 = (v673 + *(v1545 + 36));
      *v678 = sub_1E62BB4D8;
      v678[1] = v677;
      sub_1E5DFD1CC(v673, v1675, &unk_1ED0777F0, &qword_1E65F9690);
      v679 = *v674;
      v680 = *(v1740 + 8);
      v681 = swift_allocObject();
      v1742 = *(v674 + v680);
      *(v681 + 16) = v1742;
      v682 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v683 = v1444;
      }

      else
      {

        swift_unknownObjectRetain();
        v683 = MEMORY[0x1E69E7CD0];
      }

      v684 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v682);
      v685 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C0, &qword_1E65F97D0));
      v285 = sub_1E626D770(v1675, v683, MEMORY[0x1E69E7CC0], v684, 0, 0, 0, 0, 0, 0, 0, v679, sub_1E62AD21C, v681);

      sub_1E5DFE50C(v673, &unk_1ED0777F0, &qword_1E65F9690);
      (*(v670 + 8))(v1674, v672);
      (*(v1726 + 1))(v273, v1727);
      goto LABEL_259;
    case 8u:
      v856 = *v273;
      v857 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v858 = *(v857 + 64);
      (*(v1726 + 4))(v1677, &v273[*(v857 + 48)], v1727);
      (*(v1729 + 32))(v1684, &v273[v858], v1728);
      v859 = v1740;
      v860 = v1742;
      sub_1E617FDC0(*(v1742 + *(v1740 + 9)), *(v1742 + *(v1740 + 9) + 8));
      v861 = sub_1E65DB818();
      v862 = sub_1E65DB838();
      v863 = sub_1E625B3D4(v862);

      v864 = *(v859 + 8);
      v865 = swift_allocObject();
      v1737 = *(v860 + v864);
      *(v865 + 16) = v1737;
      v866 = *v1734;
      v867 = objc_allocWithZone(sub_1E65E1378());
      swift_unknownObjectRetain();
      v868 = sub_1E65D7448();
      v869 = [v867 initWithBag:v866 URL:v868];

      v285 = v869;
      [v285 setAccount_];
      [v285 setAnonymousMetrics_];
      v870 = sub_1E625E194(v863);
      *&v1741 = v856;
      v1740 = v865;
      v1738 = v863;
      if (!v870)
      {
        v870 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v871 = v1733;
      sub_1E625B10C(v870);

      v872 = sub_1E65E5AF8();

      [v285 setMetricsOverlay_];

      sub_1E65DB588();
      v873 = sub_1E65E5C48();

      [v285 setMediaClientIdentifier_];

      v874 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v875 = sub_1E65E6348();

      [v285 setClientInfo_];

      v876 = sub_1E65E1358();
      *&v1737 = type metadata accessor for AppComposer;
      v877 = v1739;
      sub_1E62CC108(v860, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v878 = (*(v871 + 80) + 16) & ~*(v871 + 80);
      v879 = ((v1735 + v878 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1736 = v879;
      v880 = (v879 + 15) & 0xFFFFFFFFFFFFFFF8;
      v881 = swift_allocObject();
      v1735 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v877, v881 + v878, type metadata accessor for AppComposer);
      v882 = v1738;
      *(v879 + v881) = v1738;
      sub_1E5DF599C(&aBlock, v881 + v880);

      sub_1E65E13A8();

      v883 = sub_1E65E1358();
      sub_1E62CC108(v1742, v877, v1737);
      sub_1E5DF650C(v1753, &aBlock);
      v884 = swift_allocObject();
      sub_1E5E1E528(v877, v884 + v878, v1735);
      *(v1736 + v884) = v882;
      sub_1E5DF599C(&aBlock, v884 + v880);
      sub_1E65E13B8();

      sub_1E65E1368();
      v885 = *(v1726 + 1);
      v886 = v1727;
      v885(v1676, v1727);
      (*(v1729 + 8))(v1684, v1728);
      v887 = v1677;
LABEL_145:
      v885(v887, v886);
      goto LABEL_259;
    case 9u:
      v527 = *v273;
      v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v529 = *(v528 + 64);
      (*(v1726 + 4))(v1680, &v273[*(v528 + 48)], v1727);
      v530 = (v1729 + 32);
      v531 = v1685;
      v1736 = *(v1729 + 32);
      (v1736)(v1685, &v273[v529], v1728);
      v532 = v1740;
      v533 = v1742;
      sub_1E617FDC0(*(v1742 + *(v1740 + 9)), *(v1742 + *(v1740 + 9) + 8));
      v534 = sub_1E65DB838();
      v535 = sub_1E625B3D4(v534);

      v536 = *(v532 + 8);
      v537 = swift_allocObject();
      v1741 = *(v533 + v536);
      v1740 = v537;
      *(v537 + 16) = v1741;
      v538 = objc_opt_self();
      swift_unknownObjectRetain();
      v539 = [v538 currentProcess];
      sub_1E65DB598();
      v540 = sub_1E65E6348();

      v541 = *v1734;
      v542 = objc_allocWithZone(sub_1E65E12F8());
      *&v1741 = v527;
      *&v1737 = v540;
      v285 = [v542 initWithBag:v541 account:v527 clientInfo:v540];
      v1738 = v535;
      v543 = sub_1E625E194(v535);
      v1732 = v530;
      if (!v543)
      {
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v544 = v1624;
      v545 = sub_1E65E5AF8();

      [v285 setMetricsOverlay_];

      sub_1E63265A8(v544);
      v546 = v1729;
      v547 = *(v1729 + 48);
      v548 = v531;
      v549 = v1728;
      v550 = v547(v544, 1, v1728);
      v551 = v1736;
      if (v550 == 1)
      {
        v552 = *(v546 + 16);
        v553 = v1667;
        v552(v1667, v548, v549);
        if (v547(v544, 1, v549) != 1)
        {
          sub_1E5DFE50C(v544, &qword_1ED072340, &qword_1E65EA410);
        }
      }

      else
      {
        v553 = v1667;
        (v1736)(v1667, v544, v549);
      }

      v1106 = sub_1E65D7448();
      v1107 = [v285 loadURL_];

      v1108 = v553;
      v1109 = v1729;
      v1110 = v1716;
      (*(v1729 + 16))(v1716, v1108, v549);
      v1111 = (*(v1109 + 80) + 16) & ~*(v1109 + 80);
      v1112 = swift_allocObject();
      v551(v1112 + v1111, v1110, v549);
      *&v1750 = sub_1E62BBA9C;
      *(&v1750 + 1) = v1112;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v1749 = sub_1E625E2DC;
      *(&v1749 + 1) = &block_descriptor_10;
      v1113 = _Block_copy(&aBlock);

      [v1107 addFinishBlock_];
      _Block_release(v1113);

      v1114 = sub_1E65E12D8();
      v1115 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1116 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1117 = (v1735 + v1116 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1118 = swift_allocObject();
      sub_1E5E1E528(v1115, v1118 + v1116, type metadata accessor for AppComposer);
      *(v1118 + v1117) = v1738;
      sub_1E5DF599C(&aBlock, v1118 + ((v1117 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_1E65E1338();

      sub_1E65E12E8();
      v1119 = *(v1109 + 8);
      v1119(v1667, v549);
      v1120 = *(v1726 + 1);
      v1121 = v1727;
      v1120(v1679, v1727);
      v1119(v1685, v549);
      v1120(v1680, v1121);
      goto LABEL_259;
    case 0xAu:
      v795 = *v273;
      v796 = *(v273 + 1);
      if (v274 < 2)
      {
        v1734 = type metadata accessor for AppComposer;
        v797 = v1742;
        v798 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v799 = *(v1733 + 80);
        v1724 = (v1735 + ((v799 + 16) & ~v799));
        v800 = (v799 + 16) & ~v799;
        v1727 = v800;
        v1725 = v799 | 7;
        v801 = (v1724 + 7) & 0xFFFFFFFFFFFFFFF8;
        v802 = swift_allocObject();
        v1726 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v798, v802 + v800, type metadata accessor for AppComposer);
        v803 = (v802 + v801);
        *v803 = v795;
        v803[1] = v796;

        sub_1E61F84B0(v795, v796, sub_1E62BBA84, v802, &aBlock);

        AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)(v795, v796, v1753, v1665);
        v804 = v795;
        v1729 = v795;
        v805 = v1730;
        sub_1E65D76E8();
        v806 = v796;
        v807 = v1650;
        *v1650 = v804;
        *(v807 + 8) = v806;
        *&v1741 = v806;
        *(v807 + 16) = 4;
        swift_storeEnumTagMultiPayload();

        v808 = sub_1E6200DD8(v807, v805, &aBlock);
        sub_1E5DFE50C(v807, &unk_1ED0776E0, &qword_1E65EDC00);
        v1735 = *(v1732 + 2);
        (v1735)(v1700, v805, v1731);
        v809 = sub_1E65E4BA8();
        v810 = v1721;
        *v1721 = v809;
        *(v810 + 1) = v811;
        v1719 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v812 = sub_1E65E4998();
        v1723 = sub_1E604C89C();

        v813 = v1720;
        v1722 = v808;
        sub_1E65DE568();
        *v813 = v812;
        v814 = v1741;
        *v807 = v1729;
        *(v807 + 8) = v814;
        *(v807 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        v815 = v797;
        v816 = v1739;
        sub_1E62CC108(v815, v1739, v1734);
        sub_1E5DFD1CC(v807, v1704, &unk_1ED0776E0, &qword_1E65EDC00);
        v817 = v1731;
        (v1735)(v1701, v805, v1731);
        p_aBlock = &aBlock;
        v1735 = aBlock;
        v1734 = *(&v1749 + 1);
        v1733 = *(&v1750 + 1);
        v1729 = *(&v1751 + 1);
        v1728 = *(&v1752[0] + 1);
        v819 = (v1724 + *(v1645 + 80)) & ~*(v1645 + 80);
        v820 = v1732;
        v821 = (v1646 + *(v1732 + 80) + v819) & ~*(v1732 + 80);
        v822 = (v233 + v821 + 7) & 0xFFFFFFFFFFFFFFF8;
        v823 = swift_allocObject();
        sub_1E5E1E528(v816, v1727 + v823, v1726);
        sub_1E5FAB460(v1704, v823 + v819, &unk_1ED0776E0, &qword_1E65EDC00);
        v820[4](v823 + v821, v1701, v817);
        v824 = (v823 + v822);
        v825 = v1751;
        v824[2] = v1750;
        v824[3] = v825;
        v824[4] = v1752[0];
        v826 = v1749;
        *v824 = aBlock;
        v824[1] = v826;

        swift_unknownObjectRetain();

        v827 = v1651;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v807, &unk_1ED0776E0, &qword_1E65EDC00);
        v828 = v1653;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
        v829 = v1659;
        v830 = v1654;
        v831 = v1656;
        sub_1E65E47D8();
        (*(v1655 + 8))(v828, v831);
        (*(v1652 + 8))(v827, v830);
        v832 = sub_1E65E49C8();
        KeyPath = swift_getKeyPath();
        *&v1745 = v832;
        v834 = sub_1E65E3D08();
        v835 = (v829 + *(v1658 + 36));
        *v835 = KeyPath;
        v835[1] = v834;
        v836 = *MEMORY[0x1E697E6E8];
        v837 = sub_1E65E3DD8();
        v838 = v1660;
        (*(*(v837 - 8) + 104))(v1660, v836, v837);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
        if (sub_1E65E5B98())
        {
          v1739 = &v1721[v1719];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
          v839 = v1635;
          sub_1E65E4848();
          sub_1E5DFE50C(v838, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v829, &unk_1ED0776C0, &qword_1E65F9648);
          v840 = v1637;
          sub_1E5DFD1CC(v1720, v1637, &unk_1ED0776D0, &qword_1E65F9650);
          v841 = v1639;
          v842 = *(v1639 + 16);
          v843 = v1638;
          v844 = v1640;
          v842(v1638, v839, v1640);
          v845 = v1739;
          sub_1E5DFD1CC(v840, v1739, &unk_1ED0776D0, &qword_1E65F9650);
          v846 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v842((v845 + *(v846 + 48)), v843, v844);
          v847 = *(v841 + 8);
          v847(v839, v844);
          sub_1E5DFE50C(v1720, &unk_1ED0776D0, &qword_1E65F9650);
          v847(v843, v844);
          sub_1E5DFE50C(v840, &unk_1ED0776D0, &qword_1E65F9650);
          v848 = v1721;
          v849 = &v1721[*(v1634 + 36)];
          v850 = v1722;
          *v849 = sub_1E6275B64;
          *(v849 + 1) = v850;
          v851 = type metadata accessor for BarButtonItem(0);
          *(v849 + 2) = 0;
          *(v849 + 3) = 0;
          v852 = objc_allocWithZone(v851);

          v853 = sub_1E625BF8C(v1700, v848);

          (*(v1732 + 1))(v1730, v1731);
          sub_1E5DFD1CC(v1665, v1632, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v838 = swift_allocObject();
          *(v838 + 16) = xmmword_1E65EA660;
          *(v838 + 32) = v853;
          v854 = v853;
          v855 = sub_1E65E4B48();
          *&v1741 = v854;
          if (v855)
          {
            v830 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v837 = 0;
          }

          else
          {
            v830 = [objc_opt_self() blackColor];
            v837 = 3;
          }

          v1397 = v1742;
          v827 = *v1742;
          v1398 = *(v1740 + 8);
          p_aBlock = swift_allocObject();
          v1742 = *(v1397 + v1398);
          p_aBlock[1] = v1742;
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_228;
          }

          goto LABEL_287;
        }

        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1399 = v1448;
          goto LABEL_229;
        }

LABEL_228:

        swift_unknownObjectRetain();
        v1399 = MEMORY[0x1E69E7CD0];
LABEL_229:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
        v1400 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
        *(&v1475 + 1) = sub_1E62AD21C;
        *&v1475 = v827;
        v1401 = v1632;
        v285 = sub_1E630B390(v1632, v1399, v838, v1400, 0, 0, v830, v837, 1, 0, v1475, p_aBlock);

        v286 = &qword_1ED0770C0;
        v287 = &unk_1E65FA410;
        sub_1E5DFE50C(v1401, &qword_1ED0770C0, &unk_1E65FA410);

        swift_unknownObjectRelease();
        v1302 = v1665;
LABEL_234:
        sub_1E5DFE50C(v1302, v286, v287);
        goto LABEL_259;
      }

      v1303 = v1742;
      if (v274 != 3)
      {
        goto LABEL_332;
      }

      v1304 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1305 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1306 = (v1735 + v1305 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1307 = swift_allocObject();
      sub_1E5E1E528(v1304, v1307 + v1305, type metadata accessor for AppComposer);
      v1308 = (v1307 + v1306);
      *v1308 = v795;
      v1308[1] = v796;
      sub_1E5DF599C(&aBlock, v1307 + ((v1306 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1309 = sub_1E65E4438();
      v1310 = *v1303;
      v1311 = *(v1740 + 8);
      v1312 = swift_allocObject();
      v1742 = *(v1303 + v1311);
      *(v1312 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1313 = v1457;
      }

      else
      {

        swift_unknownObjectRetain();
        v1313 = MEMORY[0x1E69E7CD0];
      }

      v1314 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62BBA6C, v1307, v1309, v1313, MEMORY[0x1E69E7CC0], v1314, 0, 0, 0, 0, 0, 0, 0, v1310, sub_1E62AD21C, v1312);

      v1291 = v1709;
      if (!v1709)
      {
        goto LABEL_218;
      }

      v1315 = v1709;
      v1316 = v1290;
      if (![v1315 isViewLoaded])
      {
        goto LABEL_219;
      }

      v1294 = [v1315 view];
      if (!v1294)
      {
LABEL_318:
        __break(1u);
        goto LABEL_319;
      }

      goto LABEL_217;
    case 0xBu:
      v324 = v1546;
      AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)(*v273, *(v273 + 1), v1753, v1546);

      v297 = &qword_1ED077108;
      v298 = &unk_1E65FA510;
      sub_1E5DFD1CC(v324, v1547, &qword_1ED077108, &unk_1E65FA510);
      v325 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AB0, &unk_1E65FA790));
      v285 = sub_1E65E18F8();
      v326 = v324;
      goto LABEL_123;
    case 0xCu:
      v524 = *v273;
      v525 = *(v273 + 1);
      sub_1E5F94E00(*(v273 + 2), v273[24]);
      type metadata accessor for AppEnvironment(0);
      v526 = InteropService.makePrivacySplashViewController.getter();
      v285 = v526(v524, v525);

      goto LABEL_258;
    case 0xDu:
      v765 = *v273;
      v764 = *(v273 + 1);
      v766 = *v273;
      v767 = v1742;
      sub_1E637E93C(v766, v764, &aBlock);
      v768 = v1548;
      sub_1E64970E4(v765, v764, v1753, &aBlock, v1548);
      v769 = sub_1E626FB98();
      v770 = v1681;
      sub_1E6012F9C(v1549, v769);
      sub_1E5DFE50C(v768, &qword_1ED077100, &unk_1E65FA500);
      v771 = v1668;
      sub_1E65D76E8();
      v772 = v1669;
      sub_1E65D76E8();
      sub_1E5DFD1CC(v770, v1678, &unk_1ED0777E0, &qword_1E65F9688);
      v773 = sub_1E623EEE8(v765, v764, v771, v772, &aBlock);
      if (v274 >= 2)
      {
        v776 = v1732;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v774 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v774 = swift_allocObject();
        *(v774 + 16) = xmmword_1E65F32F0;
        *(v774 + 32) = sub_1E623F674(v765, v764, v771, &aBlock);
        *(v774 + 40) = [objc_opt_self() flexibleSpaceItem];
        v775 = sub_1E62408B4(v765, v764, v772, &aBlock);

        *(v774 + 48) = v775;
        v776 = v1732;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B8, &qword_1E65F9750);
      v1295 = *v767;
      v1296 = *(v1740 + 8);
      v1297 = swift_allocObject();
      v1742 = *(v767 + v1296);
      *(v1297 + 16) = v1742;
      v1298 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);

      swift_unknownObjectRetain();
      *(&v1473 + 1) = sub_1E62AD21C;
      *&v1473 = v1295;
      v1299 = v1678;
      v285 = sub_1E630B390(v1678, v773, v774, v1298, 0, 0, 0, 0, 1, 0, v1473, v1297);

      v286 = &unk_1ED0777E0;
      v287 = &qword_1E65F9688;
      sub_1E5DFE50C(v1299, &unk_1ED0777E0, &qword_1E65F9688);
      swift_unknownObjectRelease();

      v1300 = *(v776 + 1);
      v1301 = v1731;
      v1300(v1669, v1731);
      v1300(v1668, v1301);
      v1302 = v1681;
      goto LABEL_234;
    case 0xEu:
    case 0x13u:
    case 0x18u:
    case 0x26u:
    case 0x28u:
      goto LABEL_323;
    case 0xFu:
      v922 = *v273;
      v923 = *(v273 + 1);
      if (v274 < 2)
      {
        v1734 = type metadata accessor for AppComposer;
        v924 = v1742;
        v925 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v926 = *(v1733 + 80);
        v1724 = (v1735 + ((v926 + 16) & ~v926));
        v927 = (v926 + 16) & ~v926;
        v1727 = v927;
        v1725 = v926 | 7;
        v928 = (v1724 + 7) & 0xFFFFFFFFFFFFFFF8;
        v929 = swift_allocObject();
        v1726 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v925, v929 + v927, type metadata accessor for AppComposer);
        v930 = (v929 + v928);
        *v930 = v922;
        v930[1] = v923;

        sub_1E61F84B0(v922, v923, sub_1E62BB970, v929, &aBlock);

        AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)(v922, v923, v1753, v1666);
        v931 = v922;
        v1729 = v922;
        v932 = v1730;
        sub_1E65D76E8();
        v933 = v923;
        v934 = v1650;
        *v1650 = v931;
        *(v934 + 8) = v933;
        *&v1741 = v933;
        *(v934 + 16) = 3;
        swift_storeEnumTagMultiPayload();

        v935 = sub_1E6200DD8(v934, v932, &aBlock);
        sub_1E5DFE50C(v934, &unk_1ED0776E0, &qword_1E65EDC00);
        v1735 = *(v1732 + 2);
        (v1735)(v1700, v932, v1731);
        v936 = sub_1E65E4BA8();
        v937 = v1721;
        *v1721 = v936;
        *(v937 + 1) = v938;
        v1719 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v939 = sub_1E65E4998();
        v1723 = sub_1E604C89C();

        v940 = v1720;
        v1722 = v935;
        sub_1E65DE568();
        *v940 = v939;
        v941 = v1741;
        *v934 = v1729;
        *(v934 + 8) = v941;
        *(v934 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v942 = v924;
        v943 = v1739;
        sub_1E62CC108(v942, v1739, v1734);
        sub_1E5DFD1CC(v934, v1704, &unk_1ED0776E0, &qword_1E65EDC00);
        v944 = v1731;
        (v1735)(v1701, v932, v1731);
        p_aBlock = &aBlock;
        v1735 = aBlock;
        v1734 = *(&v1749 + 1);
        v1733 = *(&v1750 + 1);
        v1729 = *(&v1751 + 1);
        v1728 = *(&v1752[0] + 1);
        v945 = (v1724 + *(v1645 + 80)) & ~*(v1645 + 80);
        v946 = v1732;
        v947 = (v1646 + *(v1732 + 80) + v945) & ~*(v1732 + 80);
        v948 = (v233 + v947 + 7) & 0xFFFFFFFFFFFFFFF8;
        v949 = swift_allocObject();
        sub_1E5E1E528(v943, v1727 + v949, v1726);
        sub_1E5FAB460(v1704, v949 + v945, &unk_1ED0776E0, &qword_1E65EDC00);
        v946[4](v949 + v947, v1701, v944);
        v950 = (v949 + v948);
        v951 = v1751;
        v950[2] = v1750;
        v950[3] = v951;
        v950[4] = v1752[0];
        v952 = v1749;
        *v950 = aBlock;
        v950[1] = v952;

        swift_unknownObjectRetain();

        v827 = v1651;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v934, &unk_1ED0776E0, &qword_1E65EDC00);
        v953 = v1653;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
        v954 = v1659;
        v830 = v1654;
        v955 = v1656;
        sub_1E65E47D8();
        (*(v1655 + 8))(v953, v955);
        (*(v1652 + 8))(v827, v830);
        v956 = sub_1E65E49C8();
        v957 = swift_getKeyPath();
        *&v1745 = v956;
        v958 = sub_1E65E3D08();
        v959 = (v954 + *(v1658 + 36));
        *v959 = v957;
        v959[1] = v958;
        v960 = *MEMORY[0x1E697E6E8];
        v837 = sub_1E65E3DD8();
        v838 = v1660;
        (*(*(v837 - 8) + 104))(v1660, v960, v837);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
        if (sub_1E65E5B98())
        {
          v1739 = &v1721[v1719];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
          v961 = v1635;
          sub_1E65E4848();
          sub_1E5DFE50C(v838, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v954, &unk_1ED0776C0, &qword_1E65F9648);
          v962 = v1637;
          sub_1E5DFD1CC(v1720, v1637, &unk_1ED0776D0, &qword_1E65F9650);
          v963 = v1639;
          v964 = *(v1639 + 16);
          v965 = v1638;
          v966 = v1640;
          v964(v1638, v961, v1640);
          v967 = v1739;
          sub_1E5DFD1CC(v962, v1739, &unk_1ED0776D0, &qword_1E65F9650);
          v968 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v964((v967 + *(v968 + 48)), v965, v966);
          v969 = *(v963 + 8);
          v969(v961, v966);
          sub_1E5DFE50C(v1720, &unk_1ED0776D0, &qword_1E65F9650);
          v969(v965, v966);
          sub_1E5DFE50C(v962, &unk_1ED0776D0, &qword_1E65F9650);
          v970 = v1721;
          v971 = &v1721[*(v1634 + 36)];
          v972 = v1722;
          *v971 = sub_1E626FECC;
          v971[1] = v972;
          v973 = type metadata accessor for BarButtonItem(0);
          v971[2] = 0;
          v971[3] = 0;
          v974 = objc_allocWithZone(v973);

          v975 = sub_1E625BF8C(v1700, v970);

          (*(v1732 + 1))(v1730, v1731);
          sub_1E5DFD1CC(v1666, v1633, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v976 = swift_allocObject();
          *(v976 + 16) = xmmword_1E65EA660;
          *(v976 + 32) = v975;
          v977 = v975;
          v978 = sub_1E65E4B48();
          *&v1741 = v977;
          if (v978)
          {
            v979 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v980 = 0;
          }

          else
          {
            v979 = [objc_opt_self() blackColor];
            v980 = 3;
          }

          v1402 = v1742;
          v1403 = *v1742;
          v1404 = *(v1740 + 8);
          v1405 = swift_allocObject();
          v1742 = *(v1402 + v1404);
          *(v1405 + 16) = v1742;
          if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
          {

            swift_unknownObjectRetain();
            sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
            v1406 = v1449;
          }

          else
          {

            swift_unknownObjectRetain();
            v1406 = MEMORY[0x1E69E7CD0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
          v1407 = v1737;
          (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
          *(&v1476 + 1) = sub_1E62AD21C;
          *&v1476 = v1403;
          v1408 = v1633;
          v285 = sub_1E630B390(v1633, v1406, v976, v1407, 0, 0, v979, v980, 1, 0, v1476, v1405);

          v286 = &qword_1ED0770C0;
          v287 = &unk_1E65FA410;
          sub_1E5DFE50C(v1408, &qword_1ED0770C0, &unk_1E65FA410);

          swift_unknownObjectRelease();
          v1302 = v1666;
          goto LABEL_234;
        }

        goto LABEL_286;
      }

      v1330 = v1742;
      if (v274 != 3)
      {
LABEL_332:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E65E68A8();
        MEMORY[0x1E694D7C0](0xD000000000000026, 0x80000001E6615040);
        LOBYTE(v1745) = 2;
        sub_1E65E69B8();
        goto LABEL_324;
      }

      v1331 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1332 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1333 = (v1735 + v1332 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1334 = swift_allocObject();
      sub_1E5E1E528(v1331, v1334 + v1332, type metadata accessor for AppComposer);
      v1335 = (v1334 + v1333);
      *v1335 = v922;
      v1335[1] = v923;
      sub_1E5DF599C(&aBlock, v1334 + ((v1333 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1336 = sub_1E65E4438();
      v1337 = *v1330;
      v1338 = *(v1740 + 8);
      v1339 = swift_allocObject();
      v1742 = *(v1330 + v1338);
      *(v1339 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1340 = v1458;
      }

      else
      {

        swift_unknownObjectRetain();
        v1340 = MEMORY[0x1E69E7CD0];
      }

      v1341 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62BB958, v1334, v1336, v1340, MEMORY[0x1E69E7CC0], v1341, 0, 0, 0, 0, 0, 0, 0, v1337, sub_1E62AD21C, v1339);

      v1291 = v1709;
      if (!v1709)
      {
        goto LABEL_218;
      }

      v1342 = v1709;
      v1343 = v1290;
      if (![v1342 isViewLoaded])
      {
        goto LABEL_219;
      }

      v1294 = [v1342 view];
      if (!v1294)
      {
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      goto LABEL_217;
    case 0x10u:
      v425 = *v273;
      v426 = *(v273 + 1);
      sub_1E65D76E8();
      sub_1E65D76E8();
      sub_1E65D76E8();
      v427 = v425;
      v428 = v1742;
      LODWORD(v1734) = v274;
      sub_1E632331C(v425, v426, &aBlock);
      v1723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
      v1718 = swift_allocBox();
      v429 = *v428;
      swift_getKeyPath();
      v430 = v1551;
      sub_1E65E4EC8();

      *&v1745 = v427;
      v1727 = v427;
      *(&v1745 + 1) = v426;

      v431 = v1553;
      sub_1E65E4D78();
      (*(v1552 + 8))(v430, v431);

      v1706 = v429;
      *&v1745 = sub_1E65E4ED8();
      *&v1741 = type metadata accessor for AppComposer;
      v432 = v1739;
      sub_1E62CC108(v428, v1739, type metadata accessor for AppComposer);
      v433 = *(v1733 + 80);
      v1716 = v1735 + ((v433 + 16) & ~v433);
      v434 = (v433 + 16) & ~v433;
      v1728 = v434;
      v1735 = (v433 | 7);
      v1715 = (((v1716 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      v435 = ((v1716 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1726 = v435;
      v436 = swift_allocObject();
      v1733 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v432, v436 + v434, type metadata accessor for AppComposer);
      v437 = (v435 + v436);
      *v437 = v427;
      v437[1] = v426;
      v1729 = v426;
      v438 = swift_allocObject();
      *(v438 + 16) = sub_1E62BB908;
      *(v438 + 24) = v436;
      sub_1E65E3BB8();

      v439 = v1554;
      sub_1E65E3BD8();

      v440 = MEMORY[0x1E695BD60];
      sub_1E5FED46C(&unk_1ED077940, &qword_1ED0770E8, &unk_1E65FA4D0, MEMORY[0x1E695BD60]);

      v441 = v1557;
      v442 = v1558;
      sub_1E65E3BE8();

      (*(v1555 + 8))(v439, v442);
      sub_1E5FED46C(&qword_1ED077138, &unk_1ED0777B0, &qword_1E65F9678, MEMORY[0x1E695BDE0]);

      v443 = v1556;
      v444 = v1562;
      sub_1E65E3BD8();

      (*(v1560 + 8))(v441, v444);
      sub_1E5FED46C(&unk_1ED077950, &qword_1ED0770F0, &unk_1E65FA4E0, v440);
      v445 = v1561;
      v1713 = sub_1E65E3BC8();
      (*(v1559 + 8))(v443, v445);
      v446 = v1742;
      v447 = v1739;
      sub_1E62CC108(v1742, v1739, v1741);
      sub_1E5DF650C(v1753, &v1745);
      v1723 = aBlock;
      v1722 = *(&v1749 + 1);
      v1721 = *(&v1750 + 1);
      v1720 = *(&v1751 + 1);
      v1714 = *(&v1752[0] + 1);
      v448 = v1726;
      v449 = (v1726 + 47) & 0xFFFFFFFFFFFFFFF8;
      v450 = swift_allocObject();
      v451 = v1728;
      sub_1E5E1E528(v447, &v1728[v450], v1733);
      sub_1E5DF599C(&v1745, v448 + v450);
      v1712 = v450;
      v452 = (v450 + v449);
      v453 = v1727;
      v454 = v1729;
      *v452 = v1727;
      v452[1] = v454;
      v455 = (v450 + ((v449 + 23) & 0xFFFFFFFFFFFFFFF8));
      v456 = v1752[0];
      v455[3] = v1751;
      v455[4] = v456;
      v457 = v1750;
      v455[1] = v1749;
      v455[2] = v457;
      *v455 = aBlock;
      v458 = v446;
      v459 = v1724;
      sub_1E62CC108(v458, v1724, v1741);
      sub_1E5DF650C(v1753, v1744);
      v460 = (v448 + 23) & 0xFFFFFFFFFFFFFFF8;
      v461 = swift_allocObject();
      sub_1E5E1E528(v459, &v451[v461], v1733);
      v462 = (v448 + v461);
      *v462 = v453;
      v462[1] = v454;
      v1709 = v461;
      sub_1E5DF599C(v1744, v461 + v460);
      v463 = (v461 + ((v460 + 47) & 0xFFFFFFFFFFFFFFF8));
      v464 = v1751;
      *(v463 + 2) = v1750;
      *(v463 + 3) = v464;
      *(v463 + 4) = v1752[0];
      v465 = v1749;
      *v463 = aBlock;
      *(v463 + 1) = v465;
      v466 = v1725;
      sub_1E62CC108(v1742, v1725, v1741);
      v467 = v1732;
      v468 = v1730;
      v469 = v1731;
      (*(v1732 + 2))(v1730, v1719, v1731);
      sub_1E5DF650C(v1753, v1743);
      v470 = &v1715[*(v467 + 80)] & ~*(v467 + 80);
      v471 = (v233 + v470 + 7) & 0xFFFFFFFFFFFFFFF8;
      v472 = swift_allocObject();
      v473 = v466;
      v474 = v1733;
      sub_1E5E1E528(v473, &v1728[v472], v1733);
      v475 = (v1726 + v472);
      v476 = v1727;
      v477 = v1729;
      *v475 = v1727;
      v475[1] = v477;
      v478 = *(v467 + 4);
      v1724 = v472;
      v478(v472 + v470, v468, v469);
      sub_1E5DF599C(v1743, v472 + v471);
      v479 = (v472 + ((v471 + 47) & 0xFFFFFFFFFFFFFFF8));
      v480 = v1751;
      v479[2] = v1750;
      v479[3] = v480;
      v479[4] = v1752[0];
      v481 = v1749;
      *v479 = aBlock;
      v479[1] = v481;
      v482 = v1742;
      v483 = v1707;
      v484 = v1741;
      sub_1E62CC108(v1742, v1707, v1741);
      v485 = swift_allocObject();
      v486 = v1728;
      v1730 = v485;
      v487 = v474;
      sub_1E5E1E528(v483, &v1728[v485], v474);
      v488 = (v1726 + v485);
      v489 = v1729;
      *v488 = v476;
      v488[1] = v489;
      v490 = v1708;
      sub_1E62CC108(v482, v1708, v484);
      v491 = swift_allocObject();
      sub_1E5E1E528(v490, &v486[v491], v487);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v1726 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      v1725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
      sub_1E65E3368();
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
      sub_1E62BBB50(&qword_1ED077970, &unk_1ED077960, &unk_1E65FA670, sub_1E626F6F0);
      sub_1E62CC0C0(&qword_1ED077178, MEMORY[0x1E699EBD8], MEMORY[0x1E699EBD0]);
      v492 = v1591;
      sub_1E65E3098();
      v493 = sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668, MEMORY[0x1E699EAF0]);
      v494 = v1598;
      v495 = v1597;
      sub_1E630FCD8(&aBlock, v1597, v493, v1598);
      (*(v1594 + 8))(v492, v495);
      v496 = v1739;
      sub_1E62CC108(v1742, v1739, v1741);
      v497 = swift_allocObject();
      sub_1E5E1E528(v496, &v1728[v497], v1733);
      sub_1E626F9E0();
      v498 = v1606;
      sub_1E6259D5C(sub_1E62BB4D8, v497, v1599);

      sub_1E5DFE50C(v494, &qword_1ED0770E0, &unk_1E65FA4C0);
      *&v1745 = v1713;
      v499 = swift_allocObject();
      v500 = v1751;
      v499[3] = v1750;
      v499[4] = v500;
      v499[5] = v1752[0];
      v501 = v1749;
      v499[1] = aBlock;
      v499[2] = v501;
      v502 = swift_allocObject();
      *(v502 + 16) = sub_1E626FADC;
      *(v502 + 24) = v499;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A00, &qword_1E65F9738);
      sub_1E626FB0C();
      sub_1E5FED46C(&qword_1ED077190, &unk_1ED077A00, &qword_1E65F9738, MEMORY[0x1E695BED8]);
      v503 = v1592;
      sub_1E65E4958();

      v504 = v498;
      v505 = v1711;
      sub_1E5DFE50C(v504, &unk_1ED0777A0, &qword_1E65F9670);
      v506 = v1742;

      v507 = sub_1E5FED46C(&unk_1ED077A10, &qword_1ED0770F8, &unk_1E65FA4F0, MEMORY[0x1E697C278]);
      v508 = v1593;
      v509 = v1600;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v503, &qword_1ED0770F8, &unk_1E65FA4F0);
      v510 = v1596;
      sub_1E5FEE4C8();
      v511 = v508;
      v512 = v1729;
      sub_1E5DFE50C(v511, &qword_1ED0770F8, &unk_1E65FA4F0);

      v290 = v1631;
      sub_1E6012F9C(v509, v507);
      v513 = v1734;
      v514 = v510;
      v515 = v1710;
      sub_1E5DFE50C(v514, &qword_1ED0770F8, &unk_1E65FA4F0);
      sub_1E5DFD1CC(v290, v1664, &unk_1ED0777D0, &qword_1E65F9680);
      v516 = v1727;
      v517 = boxed_opaque_existential_1;
      *&v1741 = sub_1E62AF3FC(v1727, v512, v1719, v515, v505, boxed_opaque_existential_1, &aBlock, v506);
      if (v513 >= 2)
      {
        if (v513 != 3)
        {
          goto LABEL_324;
        }

        v521 = MEMORY[0x1E69E7CC0];
LABEL_166:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077198, &unk_1E65FA6B0);
        sub_1E65DC308();
        v1240 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v1241 = *(v1740 + 8);
        v1242 = swift_allocObject();
        v1742 = *(v506 + v1241);
        *(v1242 + 16) = v1742;
        v1243 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
        v1244 = v1706;

        swift_unknownObjectRetain();
        *(&v1472 + 1) = sub_1E62AD21C;
        *&v1472 = v1244;
        v1245 = v1664;
        v285 = sub_1E630B390(v1664, v1741, v521, v1243, v1240, 0, 0, 0, 1, 0, v1472, v1242);

        sub_1E5DFE50C(v1245, &unk_1ED0777D0, &qword_1E65F9680);
        v1246 = sub_1E6307A64();
        [v1246 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        sub_1E5DFE50C(v290, &unk_1ED0777D0, &qword_1E65F9680);
        v1247 = *(v1732 + 1);
        v1248 = v1731;
        v1247(v1711, v1731);
        v1247(v1710, v1248);
        v1247(v1719, v1248);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A20, &qword_1E65F9740);
        v293 = swift_allocObject();
        v518 = sub_1E62B87E8(v516, v512, v515, v517, &aBlock, v506);
        v291 = v512;
        *(v293 + 32) = v518;
        v294 = (v293 + 32);
        *(v293 + 40) = [objc_opt_self() flexibleSpaceItem];
        v519 = sub_1E62E68EC(v516, v291, v505, &aBlock);

        v520 = 0;
        *(v293 + 48) = v519;
        v521 = MEMORY[0x1E69E7CC0];
        *&v1745 = MEMORY[0x1E69E7CC0];
        v288 = 3;
LABEL_26:
        if (v520 <= 3)
        {
          v522 = 3;
        }

        else
        {
          v522 = v520;
        }

        while (1)
        {
          if (v520 == 3)
          {
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771A0, &unk_1E65FA6C0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_166;
          }

          if (v522 == v520)
          {
            break;
          }

          v523 = *(v293 + 8 * v520++ + 32);
          if (v523)
          {
            v291 = v523;
            MEMORY[0x1E694D8F0]();
            if (*((v1745 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1745 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E65E5F68();
              v290 = v1631;
            }

            sub_1E65E5FA8();
            v521 = v1745;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_265:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v295 = v1438;
        }

        else
        {
LABEL_7:

          swift_unknownObjectRetain();
          v295 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AD0, &unk_1E65FA7A0);
        v296 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v294);
        *(&v1463 + 1) = sub_1E62AD21C;
        *&v1463 = v291;
        v285 = sub_1E630B390(v290, v295, MEMORY[0x1E69E7CC0], v296, 0, 0, 0, 0, 0, 0, v1463, v293);

        v297 = &unk_1ED077800;
        v298 = &qword_1E65F9698;
LABEL_122:
        sub_1E5DFE50C(v290, v297, v298);
        v1105 = sub_1E6307A64();
        [v1105 setLargeTitleDisplayMode_];

        v326 = v288;
LABEL_123:
        sub_1E5DFE50C(v326, v297, v298);
      }

LABEL_259:
      __swift_destroy_boxed_opaque_existential_1(v1753);
      return v285;
    case 0x11u:

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v996 = [objc_opt_self() bundleForClass_];
      v997 = v1742;
      v998 = *v1742;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v999;
      sub_1E5F9AEA8();
      v1000 = v1690;
      sub_1E65E41C8();
      v1001 = v1661;
      (*(v1712 + 2))(v1689, v1000, v1661);
      v1002 = *(v1740 + 8);
      v1003 = swift_allocObject();
      v1742 = *(v997 + v1002);
      *(v1003 + 16) = v1742;
      v1004 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1005 = v1447;
      }

      else
      {

        swift_unknownObjectRetain();
        v1005 = MEMORY[0x1E69E7CD0];
      }

      v1006 = v1737;
      v1007 = v1728;
      v1008 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      (*(v1738 + 104))(v1006, *MEMORY[0x1E699CE18], v1004);
      v1009 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v285 = sub_1E626DF90(v1689, v1005, MEMORY[0x1E69E7CC0], v1006, 0, 0, 0, 0, 0, 0, 0, v998, sub_1E62AD21C, v1003);

      (*(v1712 + 1))(v1690, v1001);
      (*(v1729 + 8))(&v273[v1008], v1007);
      goto LABEL_259;
    case 0x12u:
      v686 = *v273;
      v687 = *(v273 + 1);
      v688 = v273[16];
      sub_1E65DAE38();
      sub_1E65DAE38();
      v689 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v690 = (*(v1733 + 80) + 33) & ~*(v1733 + 80);
      v691 = swift_allocObject();
      *(v691 + 16) = v686;
      *(v691 + 24) = v687;
      *(v691 + 32) = v688;
      sub_1E5E1E528(v689, v691 + v690, type metadata accessor for AppComposer);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077130, &qword_1E65F96C8));
      sub_1E626F21C(v686, v687, v688);
      v285 = sub_1E6275B68();
      [v285 setModalPresentationStyle_];
      sub_1E5F94E14(v686, v687, v688);
      goto LABEL_259;
    case 0x14u:
      v627 = *(v273 + 1);
      v1736 = *v273;
      v1734 = v627;
      v628 = *(v273 + 3);
      v1740 = *(v273 + 2);
      v1738 = v628;
      *&v1737 = *(v273 + 4);
      v629 = *(v273 + 6);
      v630 = *(v273 + 7);
      if (v274 > 1)
      {
        v631 = v1739;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v632 = 24;
      }

      else
      {
        v631 = v1739;
        if (v274)
        {
          v632 = 30;
        }

        else
        {
          v632 = 24;
          if (v273[40] < 2u)
          {
            v632 = 2;
          }
        }
      }

      *&v1741 = v632;
      v1249 = v1735;
      sub_1E62CC108(v1742, v631, type metadata accessor for AppComposer);
      v1250 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1251 = (v1249 + v1250 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1252 = (v1251 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1253 = (v1252 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1254 = (v1253 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1255 = swift_allocObject();
      sub_1E5E1E528(v631, v1255 + v1250, type metadata accessor for AppComposer);
      v1256 = (v1255 + v1251);
      v1257 = v1734;
      *v1256 = v1736;
      v1256[1] = v1257;
      v1258 = (v1255 + v1252);
      v1259 = v1738;
      *v1258 = v1740;
      v1258[1] = v1259;
      *(v1255 + v1253) = v1737;
      *(v1255 + v1254) = v629;
      *(v1255 + ((v1254 + 15) & 0xFFFFFFFFFFFFFFF8)) = v630;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077910, &qword_1E65F96C0));
      v1260 = v630;
      v285 = sub_1E6275B68();
      [v285 setModalPresentationStyle_];

      goto LABEL_259;
    case 0x15u:
      v903 = *v273;
      v904 = *(v273 + 1);
      v905 = *(v273 + 2);
      v906 = *(v273 + 3);
      v907 = *(v273 + 4);
      v908 = v273[40];
      v909 = *(v273 + 6);
      v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      sub_1E5FAB460(&v273[*(v910 + 112)], v1714, &unk_1ED077780, &unk_1E66097F0);
      v1740 = v905;
      v1738 = v906;
      *&v1737 = v907;
      v1736 = v903;
      v1734 = v904;
      if (v274 > 1)
      {
        v911 = v1739;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v912 = 24;
      }

      else
      {
        v911 = v1739;
        if (v274)
        {
          v912 = 30;
        }

        else
        {
          v912 = 24;
          if (v908 < 2)
          {
            v912 = 2;
          }
        }
      }

      *&v1741 = v912;
      sub_1E62CC108(v1742, v911, type metadata accessor for AppComposer);
      v1317 = v1565;
      sub_1E5DFD1CC(v1714, v1565, &unk_1ED077780, &unk_1E66097F0);
      v1318 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1319 = (v1735 + v1318 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1320 = (v1319 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1321 = (v1320 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1322 = (v1321 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1323 = (*(v1563 + 80) + v1322 + 8) & ~*(v1563 + 80);
      v1324 = swift_allocObject();
      sub_1E5E1E528(v911, v1324 + v1318, type metadata accessor for AppComposer);
      v1325 = (v1324 + v1319);
      v1326 = v1734;
      *v1325 = v1736;
      v1325[1] = v1326;
      v1327 = (v1324 + v1320);
      v1328 = v1738;
      *v1327 = v1740;
      v1327[1] = v1328;
      *(v1324 + v1321) = v1737;
      *(v1324 + v1322) = v909;
      sub_1E5FAB460(v1317, v1324 + v1323, &unk_1ED077780, &unk_1E66097F0);
      v1329 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077080, qword_1E65F94F8));
      v285 = sub_1E6275B68();
      [v285 setModalPresentationStyle_];
      sub_1E5DFE50C(v1714, &unk_1ED077780, &unk_1E66097F0);
      goto LABEL_259;
    case 0x16u:
      v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v573 = v572[12];
      v574 = &v273[v572[16]];
      v576 = *v574;
      v575 = *(v574 + 1);
      *&v1742 = v576;
      *&v1741 = v575;
      v577 = v572[20];
      v578 = &v273[v572[24]];
      v579 = *(v578 + 1);
      v1740 = *v578;
      v580 = &v273[v572[28]];
      v581 = v580[1];
      v1739 = *v580;
      v582 = v572[32];
      v583 = v572[36];
      v584 = *(v273 + 1);
      aBlock = *v273;
      v1749 = v584;
      *&v1750 = *(v273 + 4);
      v585 = v1729;
      v586 = v1716;
      (*(v1729 + 32))(v1716, &v273[v573], v1728);
      v587 = v1567;
      sub_1E5FAB460(&v273[v577], v1567, &qword_1ED076220, &unk_1E65FA4A0);
      v588 = &v273[v582];
      v589 = v1570;
      sub_1E5FAB460(v588, v1570, &unk_1ED077770, &unk_1E660C190);
      v590 = &v273[v583];
      v591 = v1574;
      sub_1E5FAB460(v590, v1574, &unk_1ED07B500, &qword_1E65F0EE0);
      type metadata accessor for AppEnvironment(0);
      v592 = PlayerService.makeStandardPlayerViewController.getter();
      v285 = v592(&aBlock, v586, v1742, v1741, v587, v1740, v579, v1739, v581, v591, v589);

      sub_1E5DFE50C(v591, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v589, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v587, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v585 + 8))(v1716, v1728);
      sub_1E6009FC0(&aBlock);
      goto LABEL_259;
    case 0x17u:
      v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v594 = v593[12];
      v595 = &v273[v593[16]];
      v596 = *v595;
      v597 = v595[1];
      v598 = v1571;
      v599 = v273[v593[20]];
      v600 = v1569;
      (*(v1571 + 32))(v1569, v273, v1691);
      v601 = v1575;
      v602 = &v273[v594];
      v603 = v1573;
      v604 = v1577;
      (*(v1575 + 32))(v1573, v602, v1577);
      type metadata accessor for AppEnvironment(0);
      v605 = PlayerService.makeTipPlayerViewController.getter();
      v285 = v605(v600, v603, v596, v597, v599);

      sub_1E61B73EC(v596, v597);
      (*(v601 + 8))(v603, v604);
      (*(v598 + 8))(v600, v1691);
      goto LABEL_259;
    case 0x19u:
      if (v274 < 2)
      {
        v746 = *v273;
        v747 = (v1742 + *(v1740 + 9));
        v748 = *v747;
        v749 = v747[1];
        sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1753, v1752);
        *&aBlock = v748;
        *(&aBlock + 1) = v749;
        LOBYTE(v1749) = v274;
        type metadata accessor for AppEnvironment(0);
        sub_1E5FA9D34(v748, v749);
        active = InteropService.makeActiveWorkoutPlanViewController.getter();
        v1746 = &type metadata for CatalogPageRoutingContextNavigator;
        v1747 = sub_1E61379FC();
        *&v1745 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1745 + 16);
        v751 = active(v746, v748, v749, &v1745);
LABEL_116:
        v285 = v751;

        sub_1E6137AAC(&aBlock);
LABEL_117:
        __swift_destroy_boxed_opaque_existential_1(&v1745);
        goto LABEL_259;
      }

      v1279 = v1742;
      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1280 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1281 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1282 = (v1735 + v1281 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1283 = swift_allocObject();
      sub_1E5E1E528(v1280, v1283 + v1281, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1283 + v1282);
      v1284 = sub_1E65E4438();
      v1285 = *v1279;
      v1286 = *(v1740 + 8);
      v1287 = swift_allocObject();
      v1742 = *(v1279 + v1286);
      *(v1287 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1288 = v1456;
      }

      else
      {

        swift_unknownObjectRetain();
        v1288 = MEMORY[0x1E69E7CD0];
      }

      v1289 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62BB4F0, v1283, v1284, v1288, MEMORY[0x1E69E7CC0], v1289, 0, 0, 0, 0, 0, 0, 0, v1285, sub_1E62AD21C, v1287);

      v1291 = v1709;
      if (!v1709)
      {
        goto LABEL_218;
      }

      v1292 = v1709;
      v1293 = v1290;
      if (![v1292 isViewLoaded])
      {
        goto LABEL_219;
      }

      v1294 = [v1292 view];
      if (!v1294)
      {
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      goto LABEL_217;
    case 0x1Au:
      v888 = v1595;
      sub_1E5E1E528(v273, v1595, MEMORY[0x1E69CD768]);
      v889 = v1576;
      sub_1E62CC108(v888, v1576, MEMORY[0x1E69CD768]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_323;
          }

          type metadata accessor for AppEnvironment(0);
          v1424 = InteropService.makeNotificationViewController.getter();
          v285 = v1424();
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            sub_1E62BC770(v888, MEMORY[0x1E69CD768]);
            v285 = *v889;
            goto LABEL_259;
          }

          v1153 = v1729;
          v1154 = v1716;
          v1155 = v1728;
          (*(v1729 + 32))(v1716, v889, v1728);
          v1156 = v1492;
          (*(v1153 + 16))(v1492, v1154, v1155);
          (*(v1153 + 56))(v1156, 0, 1, v1155);
          type metadata accessor for AppEnvironment(0);
          v1157 = InteropService.makeAccountPageViewController.getter();
          v285 = v1157(v1156);

          sub_1E5DFE50C(v1156, &qword_1ED072340, &qword_1E65EA410);
          (*(v1153 + 8))(v1154, v1155);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload == 4)
          {
            type metadata accessor for AppEnvironment(0);
            v891 = InteropService.makePrivacyLinkListViewController.getter();
            sub_1E5DF650C(v1753, &aBlock);
            v892 = swift_allocObject();
            sub_1E5DF599C(&aBlock, v892 + 16);
            v893 = v274 < 2;
            *(v892 + 56) = v893;
            if (v274 >= 2)
            {
              v894 = -64;
            }

            else
            {
              v894 = 0;
            }

            *(v892 + 64) = v894;
            sub_1E5FA9D20(v893, v894);
            v285 = v891(sub_1E626F154, v892);

            sub_1E5F94E00(v893, v894);
            goto LABEL_250;
          }

          goto LABEL_247;
        }

        if (EnumCaseMultiPayload == 6)
        {
LABEL_247:
          sub_1E65E5C78();
          v1425 = v1492;
          sub_1E65D74C8();

          type metadata accessor for AppEnvironment(0);
          v1426 = InteropService.makeAccountPageViewController.getter();
          v285 = v1426(v1425);

          sub_1E5DFE50C(v1425, &qword_1ED072340, &qword_1E65EA410);
          goto LABEL_250;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_323;
        }

        sub_1E65DAE38();
        sub_1E65DAE38();
        v1427 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1428 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
        v1429 = swift_allocObject();
        sub_1E5E1E528(v1427, v1429 + v1428, type metadata accessor for AppComposer);
        v1430 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077128, &unk_1E65FA5D0));
        v285 = sub_1E6275B68();
      }

LABEL_250:
      sub_1E62BC770(v888, MEMORY[0x1E69CD768]);
      goto LABEL_259;
    case 0x1Bu:
      v318 = v1621;
      sub_1E5E1E528(v273, v1621, type metadata accessor for PlaylistType);
      if (v274 < 2)
      {
        v319 = v1509;
        sub_1E62CC108(v318, v1509, type metadata accessor for PlaylistType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v321 = v1503;
          v320 = v1504;
          v322 = v319;
          v323 = v1505;
          (*(v1504 + 32))(v1503, v322, v1505);
          v285 = sub_1E62BA594(v321, boxed_opaque_existential_1, v1742, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
          (*(v320 + 8))(v321, v323);
        }

        else
        {
          v285 = sub_1E62BA414(*v319, v319[1], boxed_opaque_existential_1, v1742, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
        }

        goto LABEL_254;
      }

      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1176 = v1477;
      sub_1E62CC108(v318, v1477, type metadata accessor for PlaylistType);
      v1177 = swift_getEnumCaseMultiPayload();
      v1178 = v1742;
      if (v1177 == 1)
      {
        v1180 = v1503;
        v1179 = v1504;
        v1181 = v1505;
        (*(v1504 + 32))(v1503, v1176, v1505);
        v1182 = sub_1E62BA594(v1180, boxed_opaque_existential_1, v1178, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
        (*(v1179 + 8))(v1180, v1181);
      }

      else
      {
        v1182 = sub_1E62BA414(*v1176, v1176[1], boxed_opaque_existential_1, v1742, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
      }

      v1409 = swift_allocObject();
      *(v1409 + 16) = v1182;
      v1410 = v1182;
      v1411 = sub_1E65E4438();
      v1412 = *v1178;
      v1413 = *(v1740 + 8);
      v1414 = swift_allocObject();
      v1742 = *(v1178 + v1413);
      *(v1414 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1415 = v1454;
      }

      else
      {

        swift_unknownObjectRetain();
        v1415 = MEMORY[0x1E69E7CD0];
      }

      v1416 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1417 = sub_1E626CAE8(sub_1E62BB4C4, v1409, v1411, v1415, MEMORY[0x1E69E7CC0], v1416, 0, 0, 0, 0, 0, 0, 0, v1412, sub_1E62AD21C, v1414);

      v1418 = v1709;
      if (v1709)
      {
        v1419 = v1709;
        v1420 = v1417;
        if ([v1419 isViewLoaded])
        {
          v1421 = [v1419 view];
          if (!v1421)
          {
LABEL_322:
            __break(1u);
LABEL_323:
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1E65E68A8();
            MEMORY[0x1E694D7C0](0xD000000000000017, 0x80000001E6614EE0);
            sub_1E65E69B8();
            MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6614F00);
            while (1)
            {
LABEL_324:
              sub_1E65E69D8();
              __break(1u);
            }
          }

          v1422 = v1421;
          v1423 = [v1421 snapshotViewAfterScreenUpdates_];

          goto LABEL_253;
        }
      }

      else
      {
        v1431 = v1417;
      }

      v1423 = 0;
LABEL_253:
      v1432 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v285 = sub_1E630B7AC(v1417, v1423);

LABEL_254:
      sub_1E62BC770(v318, type metadata accessor for PlaylistType);
      goto LABEL_259;
    case 0x1Cu:
      v311 = v1732;
      v312 = v1730;
      v313 = v1731;
      (*(v1732 + 4))(v1730, v273, v1731);
      v314 = (v1742 + *(v1740 + 9));
      v315 = *v314;
      v316 = v314[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v315;
      *(&aBlock + 1) = v316;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v315, v316);
      v317 = InteropService.makeWorkoutPlanDetailViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v285 = v317(v312, v315, v316, &v1745);

      sub_1E6137AAC(&aBlock);
      v311[1](v312, v313);
      goto LABEL_117;
    case 0x1Du:
      v981 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v982 = v1663;
      v983 = *(v1663 + 32);
      v983(v1698, v273, v1702);
      v984 = v1642;
      v985 = *(v1642 + 32);
      v986 = &v273[v981];
      v987 = v1662;
      v988 = v1643;
      (v985)(v1662, v986, v1643);
      if (v274 >= 2)
      {
        v1734 = v985;
        *&v1741 = v983;
        v1344 = v1742;
        if (v274 != 3)
        {
          goto LABEL_324;
        }

        v1345 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1346 = v1663 + 16;
        (*(v1663 + 16))(v1529, v1698, v1702);
        v1347 = v984 + 16;
        (*(v984 + 16))(v1530, v1662, v988);
        sub_1E5DF650C(v1753, &aBlock);
        v1348 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
        v1349 = (v1735 + *(v1346 + 64) + v1348) & ~*(v1346 + 64);
        v1350 = (v1478 + *(v1347 + 64) + v1349) & ~*(v1347 + 64);
        v1351 = v1344;
        v1352 = (v1479 + v1350 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1353 = swift_allocObject();
        sub_1E5E1E528(v1345, v1353 + v1348, type metadata accessor for AppComposer);
        v1354 = v1353 + v1349;
        v1355 = v1643;
        (v1741)(v1354, v1529, v1702);
        (v1734)(v1353 + v1350, v1530, v1355);
        sub_1E5DF599C(&aBlock, v1353 + v1352);
        v1356 = sub_1E65E4438();
        v1357 = *v1351;
        v1358 = *(v1740 + 8);
        v1359 = swift_allocObject();
        v1742 = *(v1351 + v1358);
        *(v1359 + 16) = v1742;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1360 = v1459;
        }

        else
        {

          swift_unknownObjectRetain();
          v1360 = MEMORY[0x1E69E7CD0];
        }

        v1361 = v1709;
        v1362 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
        objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

        v1363 = sub_1E626CAE8(sub_1E62AD218, v1353, v1356, v1360, MEMORY[0x1E69E7CC0], v1362, 0, 0, 0, 0, 0, 0, 0, v1357, sub_1E62AD21C, v1359);

        v1364 = v1702;
        if (v1361)
        {
          v1365 = v1361;
          v1366 = [v1365 isViewLoaded];
          v1367 = v1698;
          if (v1366)
          {
            v1368 = [v1365 view];
            if (!v1368)
            {
LABEL_320:
              __break(1u);
              goto LABEL_321;
            }

            v1369 = v1368;
            v1370 = [v1368 snapshotViewAfterScreenUpdates_];
          }

          else
          {
            v1370 = 0;
          }

          v1436 = v1663;
        }

        else
        {
          v1370 = 0;
          v1436 = v1663;
          v1367 = v1698;
        }

        v1437 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v285 = sub_1E630B7AC(v1363, v1370);

        (*(v1642 + 8))(v1662, v1355);
        (*(v1436 + 8))(v1367, v1364);
        goto LABEL_259;
      }

      v989 = (v1742 + *(v1740 + 9));
      v990 = v987;
      v991 = *v989;
      v992 = v989[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v991;
      *(&aBlock + 1) = v992;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v991, v992);
      v993 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v994 = v1698;
      v285 = v993(v1698, v990, v991, v992, &v1745);

      sub_1E6137AAC(&aBlock);
      (*(v984 + 8))(v990, v988);
      (*(v982 + 8))(v994, v1702);
      goto LABEL_117;
    case 0x1Eu:
      v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v1015 = *&v273[*(v1014 + 48)];
      v1016 = *&v273[*(v1014 + 64)];
      v609 = v1602;
      v610 = v1601;
      v1017 = v273;
      v612 = v1605;
      (*(v1602 + 32))(v1601, v1017, v1605);
      v1018 = (v1742 + *(v1740 + 9));
      v1019 = *v1018;
      v1020 = v1018[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v1019;
      *(&aBlock + 1) = v1020;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v1019, v1020);
      v1021 = InteropService.makeWorkoutPlanPreferenceViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v921 = v1021(v1019, v1020, v610, v1015, v1016, &v1745);
      goto LABEL_110;
    case 0x1Fu:
      v895 = *&v273[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v896 = v1607;
      v897 = v1604;
      v898 = v1608;
      (*(v1607 + 32))(v1604, v273, v1608);
      v899 = (v1742 + *(v1740 + 9));
      v900 = *v899;
      v901 = v899[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v900;
      *(&aBlock + 1) = v901;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v900, v901);
      v902 = InteropService.makeWorkoutPlanReviewViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v285 = v902(v897, v895, v900, v901, &v1745);

      sub_1E6137AAC(&aBlock);
      (*(v896 + 8))(v897, v898);
      goto LABEL_117;
    case 0x20u:
      v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v914 = *&v273[*(v913 + 48)];
      v915 = *&v273[*(v913 + 64)];
      v609 = v1610;
      v610 = v1609;
      v916 = v273;
      v612 = v1612;
      (*(v1610 + 32))(v1609, v916, v1612);
      v917 = (v1742 + *(v1740 + 9));
      v918 = *v917;
      v919 = v917[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v918;
      *(&aBlock + 1) = v919;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v918, v919);
      v920 = InteropService.makeEditWorkoutPlanScheduleViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v921 = v920(v610, v915, v914, v918, v919, &v1745);
LABEL_110:
      v285 = v921;

      goto LABEL_111;
    case 0x21u:
      v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v607 = v273[*(v606 + 48)];
      v608 = v273[*(v606 + 64)];
      v609 = v1613;
      v610 = v1611;
      v611 = v273;
      v612 = v1614;
      (*(v1613 + 32))(v1611, v611, v1614);
      v613 = (v1742 + *(v1740 + 9));
      v614 = *v613;
      v615 = v613[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v614;
      *(&aBlock + 1) = v615;
      LOBYTE(v1749) = v274;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v614, v615);
      v616 = InteropService.makeWorkoutPlanSummaryViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v285 = v616(v610, v607, v608, &v1745, v614, v615);
LABEL_111:

      sub_1E6137AAC(&aBlock);
      (*(v609 + 8))(v610, v612);
      goto LABEL_117;
    case 0x22u:
      v327 = v1742;
      v328 = v1739;
      v1719 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      v329 = *(v1733 + 80);
      v330 = v1735;
      v1721 = v1735 + ((v329 + 16) & ~v329);
      v1733 = ((v329 + 16) & ~v329);
      v1726 = (v329 | 7);
      v331 = swift_allocObject();
      v1722 = type metadata accessor for AppComposer;
      v332 = v331;
      boxed_opaque_existential_1 = v331;
      sub_1E5E1E528(v328, v331 + ((v329 + 16) & ~v329), type metadata accessor for AppComposer);
      sub_1E65E5148();
      LODWORD(v1734) = v274;
      *&v1741 = sub_1E65E5138();
      v333 = v1724;
      sub_1E62CC108(v327, v1724, type metadata accessor for AppComposer);
      v334 = (v329 + 32) & ~v329;
      v335 = v330 + v334;
      v1716 = v334;
      v1715 = v335;
      v336 = swift_allocObject();
      v1729 = v336;
      v1720 = &unk_1E65F9820;
      *(v336 + 16) = &unk_1E65F9820;
      *(v336 + 24) = v332;
      sub_1E5E1E528(v333, v336 + v334, v1722);
      *(v336 + v335) = 0;
      v337 = v336 + (v335 & 0xFFFFFFFFFFFFFFF8);
      v1724 = sub_1E6172524;
      *(v337 + 8) = sub_1E6172524;
      *(v337 + 16) = 0;
      v338 = (v336 + (((v335 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      v339 = MEMORY[0x1E69AB380];
      v340 = v1741;
      *v338 = v1741;
      v338[1] = v339;
      v341 = v1742;
      v342 = v1719;
      sub_1E62CC108(v1742, v1725, v1719);
      v343 = (v329 + 48) & ~v329;
      v344 = v1735 + v343;
      v1714 = v343;
      v1735 = ((v1735 + v343) & 0xFFFFFFFFFFFFFFF8);
      v345 = swift_allocObject();
      v1728 = v345;
      v346 = boxed_opaque_existential_1;
      *(v345 + 16) = v1720;
      *(v345 + 24) = v346;
      *(v345 + 32) = v340;
      *(v345 + 40) = MEMORY[0x1E69AB380];
      sub_1E5E1E528(v1725, v345 + v343, v1722);
      v344[v345] = 0;
      v347 = v1735 + v345;
      v348 = v1724;
      *(v347 + 1) = v1724;
      *(v347 + 2) = 0;
      v349 = v341;
      v350 = v1707;
      sub_1E62CC108(v349, v1707, v342);
      v351 = (v344 + 7) & 0xFFFFFFFFFFFFFFF8;
      v352 = swift_allocObject();
      v353 = v1720;
      v352[2] = v1720;
      v352[3] = v346;
      v352[4] = v1741;
      v352[5] = MEMORY[0x1E69AB380];
      v354 = v1722;
      sub_1E5E1E528(v350, v352 + v1714, v1722);
      v355 = v352 + v351;
      *v355 = v348;
      *(v355 + 1) = 0;
      v355[16] = 0;
      v356 = v1708;
      sub_1E62CC108(v1742, v1708, v1719);
      v357 = swift_allocObject();
      v358 = boxed_opaque_existential_1;
      *(v357 + 16) = v353;
      *(v357 + 24) = v358;
      sub_1E5E1E528(v356, &v1716[v357], v354);
      swift_retain_n();
      swift_retain_n();
      sub_1E65D76E8();
      v1727 = v352;
      v1735 = v357;
      v359 = v1733;
      v360 = v1721;
      v1725 = 0x80000001E6615070;
      if (v1734 >= 2)
      {
        if (v1734 != 3)
        {
          goto LABEL_324;
        }

        v1720 = type metadata accessor for AppComposer;
        v1183 = v1742;
        v1184 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1753, &aBlock);
        v1185 = ((v1721 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1722 = v1185;
        v1714 = (v1185 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1186 = swift_allocObject();
        v1712 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v1184, v1733 + v1186, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v1185 + v1186);
        v1724 = v1186;
        v1187 = (v1186 + ((v1185 + 47) & 0xFFFFFFFFFFFFFFF8));
        v1188 = v1725;
        *v1187 = 0xD000000000000016;
        v1187[1] = v1188;
        v1189 = v1186 + ((((v1185 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        *v1189 = v1741;
        v1719 = &unk_1E65FA800;
        *(v1189 + 1) = MEMORY[0x1E69AB380];
        *(v1189 + 2) = &unk_1E65FA800;
        boxed_opaque_existential_1 = &unk_1E65FA808;
        *(v1189 + 3) = v1729;
        *(v1189 + 4) = &unk_1E65FA808;
        v1716 = &unk_1E65FA810;
        *(v1189 + 5) = v1728;
        *(v1189 + 6) = &unk_1E65FA810;
        v1715 = &unk_1E65FA818;
        *(v1189 + 7) = v1727;
        *(v1189 + 8) = &unk_1E65FA818;
        *(v1189 + 9) = v1735;
        v1189[80] = 0;
        v1190 = v1720;
        sub_1E62CC108(v1183, v1184, v1720);
        v1725 = swift_allocObject();
        v1191 = v1733;
        sub_1E5E1E528(v1184, v1733 + v1725, type metadata accessor for AppComposer);
        sub_1E62CC108(v1183, v1184, v1190);
        sub_1E5DF650C(v1753, &aBlock);
        v1192 = v1732;
        v1713 = *(v1732 + 2);
        v1193 = v1731;
        (v1713)(v1730, v1723, v1731);
        v1194 = v1714;
        v1195 = (v1714 + *(v1192 + 80) + 80) & ~*(v1192 + 80);
        v1196 = swift_allocObject();
        sub_1E5E1E528(v1184, v1191 + v1196, v1712);
        sub_1E5DF599C(&aBlock, v1722 + v1196);
        v1197 = (v1196 + v1194);
        v1720 = v1196;
        *v1197 = v1741;
        v1198 = v1719;
        v1197[1] = MEMORY[0x1E69AB380];
        v1197[2] = v1198;
        v1199 = boxed_opaque_existential_1;
        v1197[3] = v1729;
        v1197[4] = v1199;
        v1200 = v1716;
        v1197[5] = v1728;
        v1197[6] = v1200;
        v1201 = v1715;
        v1197[7] = v1727;
        v1197[8] = v1201;
        v1197[9] = v1735;
        v1202 = v1730;
        v1192[4](v1196 + v1195, v1730, v1193);
        (v1713)(v1202, v1723, v1193);
        v1722 = type metadata accessor for ArtworkDescriptor(0);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics(0);
        v1716 = type metadata accessor for SectionMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v1203 = v1741;
        v1204 = v1482;
        sub_1E65E1EB8();
        v1205 = sub_1E65E2DA8();
        v1206 = 0;
        v1207 = 0;
        v1208 = 0;
        v1209 = 0;
        v1210 = 0;
        v1211 = 0;
        v1212 = 0;
        v1213 = 0;
        v1214 = 0;
        v1215 = 0;
        if (v1205)
        {
          v1214 = &unk_1E65FA818;
          v1212 = &unk_1E65FA810;
          v1210 = &unk_1E65FA808;
          v1208 = &unk_1E65FA800;
          v1207 = MEMORY[0x1E69AB380];
          v1206 = v1203;
          v1209 = v1729;
          v1211 = v1728;
          v1213 = v1727;
          v1215 = v1735;
        }

        *&aBlock = v1206;
        *(&aBlock + 1) = v1207;
        *&v1749 = v1208;
        *(&v1749 + 1) = v1209;
        *&v1750 = v1210;
        *(&v1750 + 1) = v1211;
        *&v1751 = v1212;
        *(&v1751 + 1) = v1213;
        *&v1752[0] = v1214;
        *(&v1752[0] + 1) = v1215;
        sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
        v1216 = v1486;
        v1217 = v1484;
        sub_1E630FFE8(&aBlock, v1484, v1486);
        (*(v1483 + 8))(v1204, v1217);
        v397 = v1742;
        v1218 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1219 = swift_allocObject();
        sub_1E5E1E528(v1218, v1733 + v1219, type metadata accessor for AppComposer);
        sub_1E6072124();
        v1220 = v1485;
        sub_1E6259D5C(sub_1E62BBB38, v1219, v1487);

        sub_1E5DFE50C(v1216, &unk_1ED077720, &qword_1E65EEE40);
        v1221 = sub_1E6072098();
        v402 = v1488;
        v1222 = v1627;
        sub_1E5FEE4C8();
        v404 = &qword_1ED073E10;
        v405 = &unk_1E65FA460;
        sub_1E5DFE50C(v1220, &qword_1ED073E10, &unk_1E65FA460);
        v406 = v1489;
        sub_1E5FEE4C8();
        v1223 = sub_1E6071E58();
        v408 = v1630;
        sub_1E62DFB74(v406, v1628, v1222, v1223, v1221);
      }

      else
      {
        v1720 = type metadata accessor for AppComposer;
        v361 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1753, &aBlock);
        v362 = (v360 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1714 = v362;
        v363 = (v360 + 55) & 0xFFFFFFFFFFFFFFF8;
        v364 = swift_allocObject();
        v1724 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v361, v359 + v364, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v364 + v362);
        *(v364 + v362 + 40) = 0;
        v1722 = v364;
        v365 = (v364 + v363);
        v366 = v1725;
        *v365 = 0xD000000000000016;
        v365[1] = v366;
        v367 = (v364 + ((v363 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v367 = v1741;
        v1719 = &unk_1E65FA800;
        v367[1] = MEMORY[0x1E69AB380];
        v367[2] = &unk_1E65FA800;
        boxed_opaque_existential_1 = &unk_1E65FA808;
        v367[3] = v1729;
        v367[4] = &unk_1E65FA808;
        v1716 = &unk_1E65FA810;
        v367[5] = v1728;
        v367[6] = &unk_1E65FA810;
        v1715 = &unk_1E65FA818;
        v367[7] = v1727;
        v367[8] = &unk_1E65FA818;
        v367[9] = v1735;
        v368 = v1742;
        v369 = v1720;
        sub_1E62CC108(v1742, v361, v1720);
        v1725 = swift_allocObject();
        sub_1E5E1E528(v361, v1733 + v1725, v1724);
        sub_1E62CC108(v368, v361, v369);
        sub_1E5DF650C(v1753, &aBlock);
        v370 = v1732;
        v1713 = *(v1732 + 2);
        v371 = v1731;
        (v1713)(v1730, v1723, v1731);
        v372 = v1714;
        v373 = (v1714 + 47) & 0xFFFFFFFFFFFFFFF8;
        v374 = (v373 + *(v370 + 80) + 80) & ~*(v370 + 80);
        v375 = swift_allocObject();
        sub_1E5E1E528(v1739, v1733 + v375, v1724);
        sub_1E5DF599C(&aBlock, v375 + v372);
        v376 = (v375 + v373);
        v1720 = v375;
        *v376 = v1741;
        v377 = v1719;
        v376[1] = MEMORY[0x1E69AB380];
        v376[2] = v377;
        v378 = boxed_opaque_existential_1;
        v376[3] = v1729;
        v376[4] = v378;
        v379 = v1716;
        v376[5] = v1728;
        v376[6] = v379;
        v380 = v1715;
        v376[7] = v1727;
        v376[8] = v380;
        v376[9] = v1735;
        v381 = v1730;
        v370[4](v375 + v374, v1730, v371);
        (v1713)(v381, v1723, v371);
        v1724 = type metadata accessor for ArtworkDescriptor(0);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics(0);
        v1716 = type metadata accessor for SectionMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v382 = v1741;
        v383 = v1510;
        sub_1E65E2448();
        v384 = sub_1E65E2DA8();
        v385 = 0;
        v386 = 0;
        v387 = 0;
        v388 = 0;
        v389 = 0;
        v390 = 0;
        v391 = 0;
        v392 = 0;
        v393 = 0;
        v394 = 0;
        if (v384)
        {
          v393 = MEMORY[0x1E69AB380];
          v392 = &unk_1E65FA800;
          v390 = &unk_1E65FA808;
          v388 = &unk_1E65FA810;
          v386 = &unk_1E65FA818;
          v385 = v1735;
          v387 = v1727;
          v389 = v1728;
          v391 = v1729;
          v394 = v382;
        }

        *&aBlock = v394;
        *(&aBlock + 1) = v393;
        *&v1749 = v392;
        *(&v1749 + 1) = v391;
        *&v1750 = v390;
        *(&v1750 + 1) = v389;
        *&v1751 = v388;
        *(&v1751 + 1) = v387;
        *&v1752[0] = v386;
        *(&v1752[0] + 1) = v385;
        sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
        v395 = v1514;
        v396 = v1512;
        sub_1E630FFE8(&aBlock, v1512, v1514);
        (*(v1511 + 8))(v383, v396);
        v397 = v1742;
        v398 = v1739;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v399 = swift_allocObject();
        sub_1E5E1E528(v398, v1733 + v399, type metadata accessor for AppComposer);
        sub_1E6071EE4();
        v400 = v1513;
        sub_1E6259D5C(sub_1E62BBB38, v399, v1515);

        sub_1E5DFE50C(v395, &qword_1ED073DF8, &unk_1E65FA440);
        v401 = sub_1E6071E58();
        v402 = v1516;
        v403 = v1628;
        sub_1E5FEE4C8();
        v404 = &unk_1ED077710;
        v405 = &qword_1E65EEE28;
        sub_1E5DFE50C(v400, &unk_1ED077710, &qword_1E65EEE28);
        v406 = v1519;
        sub_1E5FEE4C8();
        v407 = sub_1E6072098();
        v408 = v1630;
        sub_1E62DFC6C(v406, v403, v1627, v401, v407);
      }

      v1224 = sub_1E6071DCC();
      v1225 = v1579;
      sub_1E62DFC6C(v408, v1629, MEMORY[0x1E69E73E0], v1224, MEMORY[0x1E6982070]);
      sub_1E5DFE50C(v408, &qword_1ED073DE8, &unk_1E65FA430);
      sub_1E5DFE50C(v406, v404, v405);
      sub_1E5DFE50C(v402, v404, v405);
      v1226 = v1736;
      (*(v1732 + 1))(v1723, v1731);
      sub_1E62BBB50(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
      v1227 = v1588;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v1225, &qword_1ED073DA8, &unk_1E65FA550);
      v1228 = *v397;
      v1229 = *(v1740 + 8);
      v1230 = swift_allocObject();
      v1742 = *(v397 + v1229);
      *(v1230 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1231 = v1441;
      }

      else
      {

        swift_unknownObjectRetain();
        v1231 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077200, &unk_1E65FA8D0);
      v1232 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1226);
      *(&v1471 + 1) = sub_1E62AD21C;
      *&v1471 = v1228;
      v1233 = sub_1E630B390(v1227, v1231, MEMORY[0x1E69E7CC0], v1232, 0, 0, 0, 0, 0, 0, v1471, v1230);

      sub_1E5DFE50C(v1227, &qword_1ED073DA8, &unk_1E65FA550);
      v285 = v1233;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1234 = swift_getObjCClassFromMetadata();
      v1235 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v1236 = sub_1E65E5C48();

      [v285 setTitle_];

      v1237 = sub_1E6307A64();
      v1238 = v1237;
      if (v1734 > 1)
      {
        v1239 = 2;
      }

      else
      {
        v1239 = 1;
      }

      [v1237 setLargeTitleDisplayMode_];

      goto LABEL_259;
    case 0x23u:
      swift_storeEnumTagMultiPayload();
      v617 = v1742;
      sub_1E617DC64(v232, &aBlock);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      swift_storeEnumTagMultiPayload();
      sub_1E6508CD4(v1753, v232, &aBlock, v226);
      sub_1E62BC770(v232, type metadata accessor for BrowsePage);
      sub_1E6272CEC();
      v618 = v1705;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v226, &unk_1ED077820, &qword_1E65F96A8);
      v299 = v1532;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v618, &unk_1ED077820, &qword_1E65F96A8);
      v619 = v1531;
      sub_1E5DFD1CC(v299, v1531, &unk_1ED077820, &qword_1E65F96A8);
      v620 = *v617;
      v621 = *(v1740 + 8);
      v622 = swift_allocObject();
      v1742 = *(v617 + v621);
      *(v622 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v623 = v1442;
      }

      else
      {

        swift_unknownObjectRetain();
        v623 = MEMORY[0x1E69E7CD0];
      }

      v624 = v1736;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
      v625 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v624);
      *(&v1466 + 1) = sub_1E62AD21C;
      *&v1466 = v620;
      v285 = sub_1E630B390(v619, v623, MEMORY[0x1E69E7CC0], v625, 0, 0, 0, 0, 1, 0, v1466, v622);

      v297 = &unk_1ED077820;
      v298 = &qword_1E65F96A8;
      sub_1E5DFE50C(v619, &unk_1ED077820, &qword_1E65F96A8);
      v626 = sub_1E6307A64();
      [v626 setLargeTitleDisplayMode_];

      swift_unknownObjectRelease();

      goto LABEL_49;
    case 0x24u:
      v299 = v1540;
      v300 = v1742;
      AppComposer.forYouViewBuilder(currentRoutingContext:)(v1753, v1540);
      v301 = v1539;
      sub_1E5DFD1CC(v299, v1539, &qword_1ED072708, &unk_1E65FA530);
      v302 = sub_1E65DAE38();
      v303 = sub_1E65DAE38();
      v304 = *v300;
      v305 = *(v1740 + 8);
      v306 = swift_allocObject();
      v1742 = *(v300 + v305);
      *(v306 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v307 = v1439;
      }

      else
      {

        swift_unknownObjectRetain();
        v307 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D0, &qword_1E65F97E0);
      v308 = v302 != v303;
      v309 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      *(&v1464 + 1) = sub_1E62AD21C;
      *&v1464 = v304;
      v285 = sub_1E630B390(v301, v307, MEMORY[0x1E69E7CC0], v309, 0, 0, 0, 0, v308, 0, v1464, v306);

      v297 = &qword_1ED072708;
      v298 = &unk_1E65FA530;
      sub_1E5DFE50C(v301, &qword_1ED072708, &unk_1E65FA530);
      v310 = sub_1E6307A64();
      [v310 setLargeTitleDisplayMode_];

LABEL_49:
      v326 = v299;
      goto LABEL_123;
    case 0x25u:
      v288 = v1542;
      v289 = v1742;
      AppComposer.libraryViewBuilder(currentRoutingContext:)(v1753, v1542);
      v290 = v1541;
      sub_1E5DFD1CC(v288, v1541, &unk_1ED077800, &qword_1E65F9698);
      v291 = *v289;
      v292 = *(v1740 + 8);
      v293 = swift_allocObject();
      v1742 = *(v289 + v292);
      *(v293 + 16) = v1742;
      v294 = v1736;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_7;
      }

      goto LABEL_265;
    case 0x27u:
      if (v274 < 2)
      {
        v1022 = (v1742 + *(v1740 + 8));
        v1024 = *v1022;
        v1740 = v1022[1];
        v1023 = v1740;
        v1025 = swift_allocObject();
        v1730 = v1025;
        *(v1025 + 16) = v1024;
        *(v1025 + 24) = v1023;
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_1E65E4EC8();

        v1026 = type metadata accessor for AppEnvironment(0);
        v1027 = Description;
        Description[2](v1648, v1734 + *(v1026 + 80), v1649);
        sub_1E65E5148();
        swift_unknownObjectRetain();
        *&v1741 = sub_1E65E5138();
        type metadata accessor for SearchMetricsMonitor(0);
        v1738 = swift_allocObject();
        *&v1737 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
        sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
        sub_1E65E4F58();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1E62CC0C0(&qword_1EE2D4610, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
        sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060, MEMORY[0x1E69E6328]);
        sub_1E65E6738();
        (*(v1525 + 104))(v1524, *MEMORY[0x1E69E8090], v1526);
        v1028 = sub_1E65E63E8();
        v1029 = v1738;
        *(v1738 + v1737) = v1028;
        (*(v1517 + 32))(v1029 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v1647, v1518);
        v1030 = MEMORY[0x1E69AB380];
        *(v1029 + 16) = v1741;
        *(v1029 + 24) = v1030;
        v1027[4]((v1029 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService), v1648, v1649);
        v1031 = (v1029 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
        v1032 = v1740;
        *v1031 = v1024;
        v1031[1] = v1032;
        v1033 = v1742;
        v1034 = v1739;
        v1740 = type metadata accessor for AppComposer;
        sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
        v1035 = *(v1733 + 80);
        v1728 = v1735 + ((v1035 + 16) & ~v1035);
        v1729 = (v1035 + 16) & ~v1035;
        v1036 = v1735;
        v1037 = swift_allocObject();
        *&v1737 = type metadata accessor for AppComposer;
        v1733 = v1037;
        sub_1E5E1E528(v1034, v1037 + ((v1035 + 16) & ~v1035), type metadata accessor for AppComposer);
        v1038 = v1724;
        sub_1E62CC108(v1033, v1724, type metadata accessor for AppComposer);
        v1039 = ((v1035 + 32) & ~v1035);
        v1726 = v1039;
        v1040 = (v1036 + v1039) & 0xFFFFFFFFFFFFFFF8;
        v1723 = v1036 + v1039;
        v1041 = swift_allocObject();
        v1736 = v1041;
        v1731 = &unk_1E65FA760;
        *(v1041 + 16) = &unk_1E65FA760;
        *(v1041 + 24) = v1037;
        sub_1E5E1E528(v1038, v1039 + v1041, v1737);
        *(v1036 + v1039 + v1041) = 0;
        v1042 = v1041 + v1040;
        v1732 = sub_1E6172524;
        *(v1042 + 8) = sub_1E6172524;
        *(v1042 + 16) = 0;
        v1043 = (v1041 + ((v1040 + 31) & 0xFFFFFFFFFFFFFFF8));
        v1044 = v1741;
        *v1043 = v1741;
        v1045 = MEMORY[0x1E69AB380];
        v1043[1] = MEMORY[0x1E69AB380];
        v1046 = v1742;
        v1047 = v1725;
        sub_1E62CC108(v1742, v1725, v1740);
        v1048 = (v1035 + 48) & ~v1035;
        v1049 = v1735 + v1048;
        v1050 = (v1735 + v1048) & 0xFFFFFFFFFFFFFFF8;
        v1051 = swift_allocObject();
        v1052 = v1731;
        v1053 = v1733;
        *(v1051 + 2) = v1731;
        *(v1051 + 3) = v1053;
        *(v1051 + 4) = v1044;
        *(v1051 + 5) = v1045;
        v1054 = v1051;
        v1055 = v1737;
        sub_1E5E1E528(v1047, v1051 + v1048, v1737);
        v1734 = v1054;
        v1049[v1054] = 0;
        v1056 = v1054 + v1050;
        *(v1056 + 1) = v1732;
        *(v1056 + 2) = 0;
        v1057 = v1046;
        v1058 = v1046;
        v1059 = v1707;
        v1060 = v1740;
        sub_1E62CC108(v1058, v1707, v1740);
        v1061 = swift_allocObject();
        v1062 = v1733;
        v1061[2] = v1052;
        v1061[3] = v1062;
        v1063 = v1741;
        v1061[4] = v1741;
        v1061[5] = MEMORY[0x1E69AB380];
        v1064 = v1061 + v1048;
        v1065 = v1061;
        sub_1E5E1E528(v1059, v1064, v1055);
        v1066 = v1065 + ((v1049 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1727 = v1065;
        *v1066 = v1732;
        *(v1066 + 8) = 0;
        *(v1066 + 16) = 0;
        v1067 = v1708;
        sub_1E62CC108(v1057, v1708, v1060);
        v1068 = swift_allocObject();
        *(v1068 + 16) = v1731;
        *(v1068 + 24) = v1062;
        v1069 = v1068;
        v1732 = v1068;
        sub_1E5E1E528(v1067, v1726 + v1068, v1055);
        *&aBlock = v1063;
        *(&aBlock + 1) = MEMORY[0x1E69AB380];
        *&v1749 = &unk_1E65EB918;
        *(&v1749 + 1) = v1736;
        *&v1750 = &unk_1E65FA770;
        *(&v1750 + 1) = v1734;
        *&v1751 = &unk_1E65EB920;
        *(&v1751 + 1) = v1065;
        *&v1752[0] = &unk_1E65FA780;
        *(&v1752[0] + 1) = v1069;
        swift_retain_n();
        swift_retain_n();
        v1070 = v1057;
        v1731 = sub_1E62B512C(boxed_opaque_existential_1, &aBlock, v1057);
        v1071 = v1657;
        sub_1E63D53AC(v1731, v1657);
        v1072 = v1738;

        v1726 = sub_1E61C9468(v1071, v1072);
        v1073 = v1072;

        v1733 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A460, &qword_1E65F97C8);
        v1074 = v1739;
        sub_1E62CC108(v1070, v1739, v1740);
        sub_1E5DF650C(v1753, &v1745);
        v1075 = (v1728 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1076 = (v1075 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1077 = swift_allocObject();
        sub_1E5E1E528(v1074, v1077 + v1729, v1055);
        sub_1E5DF599C(&v1745, v1077 + v1075);
        v1078 = (v1077 + v1076);
        v1079 = v1751;
        v1078[2] = v1750;
        v1078[3] = v1079;
        v1078[4] = v1752[0];
        v1080 = v1749;
        *v1078 = aBlock;
        v1078[1] = v1080;
        *(v1077 + ((v1076 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1073;
        v1081 = v1724;
        sub_1E62CC108(v1070, v1724, v1740);
        sub_1E5DF650C(v1753, v1744);
        v1082 = (v1035 + 24) & ~v1035;
        v1083 = (v1735 + v1082 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1084 = (v1083 + 15) & 0xFFFFFFFFFFFFFFF8;
        v1085 = (v1084 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1086 = swift_allocObject();
        *(v1086 + 16) = v1726;
        sub_1E5E1E528(v1081, v1086 + v1082, v1737);
        *(v1086 + v1083) = v1731;
        sub_1E5DF599C(v1744, v1086 + v1084);
        v1087 = (v1086 + v1085);
        v1088 = v1751;
        v1087[2] = v1750;
        v1087[3] = v1088;
        v1087[4] = v1752[0];
        v1089 = v1749;
        *v1087 = aBlock;
        v1087[1] = v1089;
        *(v1086 + ((v1085 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1738;

        v285 = sub_1E65DCC78();
        (*(v1527 + 8))(v1657, v1528);
        goto LABEL_259;
      }

      v1388 = v1742;
      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1389 = v1480;
      sub_1E62284FC(v1753, v1480);
      v1390 = sub_1E622B4E0();
      v276 = v1490;
      sub_1E6012F9C(v1481, v1390);
      sub_1E5DFE50C(v1389, &unk_1ED0776A0, &qword_1E65F8030);
      v278 = v1491;
      sub_1E5DFD1CC(v276, v1491, &qword_1ED0770A8, &unk_1E65FA3E0);
      v1391 = *v1388;
      v1392 = *(v1740 + 8);
      v1393 = swift_allocObject();
      v1742 = *(v1388 + v1392);
      *(v1393 + 16) = v1742;
      v1394 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1395 = v1461;
      }

      else
      {

        swift_unknownObjectRetain();
        v1395 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AA0, &qword_1E65F9798);
      v1396 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1394);
      *(&v1474 + 1) = sub_1E62AD21C;
      *&v1474 = v1391;
      v285 = sub_1E630B390(v278, v1395, MEMORY[0x1E69E7CC0], v1396, 0, 0, 0, 0, 0, 0, v1474, v1393);

      v286 = &qword_1ED0770A8;
      v287 = &unk_1E65FA3E0;
      goto LABEL_225;
    case 0x29u:
      v1090 = (v1742 + *(v1740 + 9));
      v1091 = v274;
      v1092 = *v1090;
      v1093 = v1090[1];
      sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1753, v1752);
      *&aBlock = v1092;
      *(&aBlock + 1) = v1093;
      LOBYTE(v1749) = v1091;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v1092, v1093);
      v1094 = InteropService.makeAccountSettingsViewController.getter();
      v1746 = &type metadata for CatalogPageRoutingContextNavigator;
      v1747 = sub_1E61379FC();
      *&v1745 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1745 + 16);
      v751 = v1094(&v1745);
      goto LABEL_116;
    case 0x2Au:
      v1095 = sub_1E65DDF08();
      *(&v1749 + 1) = v1095;
      *&v1750 = sub_1E62CC0C0(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
      v1096 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v1095 - 8) + 104))(v1096, *MEMORY[0x1E69CABE8], v1095);
      LOBYTE(v1095) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v1095)
      {
        v1097 = v1730;
        sub_1E65D76E8();
        v288 = v1502;
        v1098 = v1742;
        sub_1E606A028(v1753, v1097, v1502);
        (*(v1732 + 1))(v1097, v1731);
        v290 = v1501;
        sub_1E5DFD1CC(v288, v1501, &qword_1ED073D90, &unk_1E65FA3D0);
        v1099 = *v1098;
        v1100 = *(v1740 + 8);
        v1101 = swift_allocObject();
        v1742 = *(v1098 + v1100);
        *(v1101 + 16) = v1742;
        v1102 = v1736;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1103 = v1452;
        }

        else
        {

          swift_unknownObjectRetain();
          v1103 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077930, &qword_1E65F96F8);
        v1104 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1102);
        *(&v1469 + 1) = sub_1E62AD21C;
        *&v1469 = v1099;
        v285 = sub_1E630B390(v290, v1103, MEMORY[0x1E69E7CC0], v1104, 0, 0, 0, 0, 0, 0, v1469, v1101);

        v297 = &qword_1ED073D90;
        v298 = &unk_1E65FA3D0;
        goto LABEL_122;
      }

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1139 = swift_getObjCClassFromMetadata();
      v1140 = [objc_opt_self() bundleForClass_];
      v1141 = v1742;
      v1142 = *v1742;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1143;
      sub_1E5F9AEA8();
      v1144 = v1494;
      sub_1E65E41C8();
      v1145 = v1493;
      v1146 = v1661;
      (*(v1712 + 2))(v1493, v1144, v1661);
      v1147 = *(v1740 + 8);
      v1148 = swift_allocObject();
      v1742 = *(v1141 + v1147);
      *(v1148 + 16) = v1742;
      v1149 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1150 = v1453;
      }

      else
      {

        swift_unknownObjectRetain();
        v1150 = MEMORY[0x1E69E7CD0];
      }

      v1151 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1149);
      v1152 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v285 = sub_1E626DF90(v1145, v1150, MEMORY[0x1E69E7CC0], v1151, 0, 0, 0, 0, 0, 0, 0, v1142, sub_1E62AD21C, v1148);

      (*(v1712 + 1))(v1144, v1146);
      goto LABEL_259;
    case 0x2Bu:
      if (v274 < 2)
      {
        v1010 = (v1742 + *(v1740 + 9));
        v1011 = *v1010;
        v1012 = v1010[1];
        sub_1E5DFD1CC(v1742 + *(v1740 + 10), &v1749 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1753, v1752);
        *&aBlock = v1011;
        *(&aBlock + 1) = v1012;
        LOBYTE(v1749) = v274;
        type metadata accessor for AppEnvironment(0);
        sub_1E5FA9D34(v1011, v1012);
        QueueView = InteropService.makeUpNextQueueViewController.getter();
        v1746 = &type metadata for CatalogPageRoutingContextNavigator;
        v1747 = sub_1E61379FC();
        *&v1745 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1745 + 16);
        v751 = QueueView(&v1745, v1011, v1012);
        goto LABEL_116;
      }

      v1371 = v1742;
      if (v274 != 3)
      {
        goto LABEL_324;
      }

      v1372 = v1739;
      sub_1E62CC108(v1742, v1739, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1753, &aBlock);
      v1373 = (*(v1733 + 80) + 16) & ~*(v1733 + 80);
      v1374 = (v1735 + v1373 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1375 = swift_allocObject();
      sub_1E5E1E528(v1372, v1375 + v1373, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1375 + v1374);
      v1376 = sub_1E65E4438();
      v1377 = *v1371;
      v1378 = *(v1740 + 8);
      v1379 = swift_allocObject();
      v1742 = *(v1371 + v1378);
      *(v1379 + 16) = v1742;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1380 = v1460;
      }

      else
      {

        swift_unknownObjectRetain();
        v1380 = MEMORY[0x1E69E7CD0];
      }

      v1381 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1736);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1290 = sub_1E626CAE8(sub_1E62BB4AC, v1375, v1376, v1380, MEMORY[0x1E69E7CC0], v1381, 0, 0, 0, 0, 0, 0, 0, v1377, sub_1E62AD21C, v1379);

      v1291 = v1709;
      if (v1709)
      {
        v1382 = v1709;
        v1383 = v1290;
        if ([v1382 isViewLoaded])
        {
          v1294 = [v1382 view];
          if (!v1294)
          {
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

LABEL_217:
          v1384 = v1294;
          v1385 = [v1294 snapshotViewAfterScreenUpdates_];

LABEL_220:
          v1387 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v285 = sub_1E630B7AC(v1290, v1385);

          goto LABEL_259;
        }
      }

      else
      {
LABEL_218:
        v1386 = v1290;
      }

LABEL_219:
      v1385 = 0;
      goto LABEL_220;
    default:
      v275 = *v273;
      if (v274 >= 3)
      {
        v1122 = v1495;
        v1123 = v1742;
        AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v275, *(v273 + 1), v1753, v1495);

        v1124 = sub_1E6273064();
        v1125 = v1500;
        sub_1E6012F9C(v1496, v1124);
        sub_1E5DFE50C(v1122, &qword_1ED0770C8, &unk_1E65FA420);
        v1126 = v1497;
        sub_1E5DFD1CC(v1125, v1497, &unk_1ED0776F0, &qword_1E65F9658);
        v1127 = *v1123;
        v1128 = *(v1740 + 8);
        v1129 = swift_allocObject();
        v1742 = *(v1123 + v1128);
        *(v1129 + 16) = v1742;
        v1130 = v1736;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1131 = v1451;
        }

        else
        {

          swift_unknownObjectRetain();
          v1131 = MEMORY[0x1E69E7CD0];
        }

        v1132 = v1709;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B60, &qword_1E65F9810);
        v1133 = v1737;
        (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v1130);
        *(&v1470 + 1) = sub_1E62AD21C;
        *&v1470 = v1127;
        v1134 = sub_1E630B390(v1126, v1131, MEMORY[0x1E69E7CC0], v1133, 0, 0, 0, 0, 0, 0, v1470, v1129);

        sub_1E5DFE50C(v1126, &unk_1ED0776F0, &qword_1E65F9658);
        if (v1132 && (v1135 = v1132, [v1135 isViewLoaded]))
        {
          v1136 = [v1135 view];
          if (!v1136)
          {
            __break(1u);
LABEL_316:
            __break(1u);
            goto LABEL_317;
          }

          v1137 = v1136;
          v1138 = [v1136 snapshotViewAfterScreenUpdates_];
        }

        else
        {
          v1138 = 0;
        }

        v1175 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v285 = sub_1E630B7AC(v1134, v1138);

        sub_1E5DFE50C(v1125, &unk_1ED0776F0, &qword_1E65F9658);
        goto LABEL_259;
      }

      v276 = v1498;
      v277 = v1742;
      AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v275, *(v273 + 1), v1753, v1498);

      v278 = v1499;
      sub_1E5DFD1CC(v276, v1499, &qword_1ED0770C8, &unk_1E65FA420);
      v279 = *v277;
      v280 = *(v1740 + 8);
      v281 = swift_allocObject();
      v1742 = *(v277 + v280);
      *(v281 + 16) = v1742;
      v282 = v1736;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v283 = v1450;
      }

      else
      {

        swift_unknownObjectRetain();
        v283 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F8, &unk_1E65FA7F0);
      v284 = v1737;
      (*(v1738 + 104))(v1737, *MEMORY[0x1E699CE18], v282);
      *(&v1462 + 1) = sub_1E62AD21C;
      *&v1462 = v279;
      v285 = sub_1E630B390(v278, v283, MEMORY[0x1E69E7CC0], v284, 0, 0, 0, 0, 0, 0, v1462, v281);

      v286 = &qword_1ED0770C8;
      v287 = &unk_1E65FA420;
LABEL_225:
      sub_1E5DFE50C(v278, v286, v287);
      v1302 = v276;
      goto LABEL_234;
  }
}