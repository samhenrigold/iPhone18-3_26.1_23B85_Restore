uint64_t sub_24ECF7C78@<X0>(int a2@<W1>, _BYTE *a3@<X8>)
{
  LODWORD(v44) = a2;
  v45 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD60, &qword_24F9970C0);
  MEMORY[0x28223BE20](v43);
  v4 = &v40[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD68, &qword_24F9970C8);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v40[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD70, &qword_24F9970D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD78, &qword_24F9970D8);
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD80, &qword_24F9970E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v40[-v21];
  sub_24ECF8170(v15);
  v23 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(v13 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_24ECF8410();
  v26 = 1;
  sub_24F9268B8();
  sub_24E601704(v15, &qword_27F22DD78, &qword_24F9970D8);
  if (v44)
  {
    v44 = sub_24F926DF8();
    v41 = sub_24F9251C8();
    v27 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418, &qword_24F93CB90) + 36);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v29 = *MEMORY[0x277CE13B8];
    v30 = sub_24F927748();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    *v27 = v41;
    *v4 = v44;
    v31 = sub_24F925898();
    v32 = swift_getKeyPath();
    v33 = (v4 + *(v43 + 36));
    *v33 = v32;
    v33[1] = v31;
    sub_24F925938();
    sub_24ECF8650();
    v34 = v42;
    sub_24F9260C8();
    sub_24E601704(v4, &qword_27F22DD60, &qword_24F9970C0);
    (*(v46 + 32))(v12, v34, v47);
    v26 = 0;
  }

  (*(v46 + 56))(v12, v26, 1, v47);
  v35 = *(v17 + 16);
  v35(v19, v22, v16);
  sub_24ECF8578(v12, v9);
  v36 = v45;
  v35(v45, v19, v16);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DDB0, &unk_24F997130);
  sub_24ECF8578(v9, &v36[*(v37 + 48)]);
  sub_24ECF85E8(v12);
  v38 = *(v17 + 8);
  v38(v22, v16);
  sub_24ECF85E8(v9);
  return (v38)(v19, v16);
}

uint64_t sub_24ECF8170@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_24F9252A8();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_24F925288();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_24F925298();
  sub_24F9252B8();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DDC8, &qword_24F997140) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

unint64_t sub_24ECF8410()
{
  result = qword_27F22DD88;
  if (!qword_27F22DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD78, &qword_24F9970D8);
    sub_24ECF84C8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD88);
  }

  return result;
}

unint64_t sub_24ECF84C8()
{
  result = qword_27F22DD90;
  if (!qword_27F22DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD98, &qword_24F997118);
    sub_24E602068(&qword_27F22DDA0, &qword_27F22DDA8, &unk_24F997120, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD90);
  }

  return result;
}

uint64_t sub_24ECF8578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD70, &qword_24F9970D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECF85E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD70, &qword_24F9970D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ECF8650()
{
  result = qword_27F22DDB8;
  if (!qword_27F22DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD60, &qword_24F9970C0);
    sub_24ECF8708();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDB8);
  }

  return result;
}

unint64_t sub_24ECF8708()
{
  result = qword_27F22DDC0;
  if (!qword_27F22DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214418, &qword_24F93CB90);
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDC0);
  }

  return result;
}

unint64_t sub_24ECF87C4()
{
  result = qword_27F22DDD0;
  if (!qword_27F22DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD58, &unk_24F9970B0);
    sub_24ECF887C();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0, &qword_24F951970, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDD0);
  }

  return result;
}

unint64_t sub_24ECF887C()
{
  result = qword_27F22DDD8;
  if (!qword_27F22DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD50, &unk_24F9970A0);
    sub_24ECF8934();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698, &qword_24F984BC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDD8);
  }

  return result;
}

unint64_t sub_24ECF8934()
{
  result = qword_27F22DDE0;
  if (!qword_27F22DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD48, &qword_24F997098);
    sub_24ECF89EC();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDE0);
  }

  return result;
}

unint64_t sub_24ECF89EC()
{
  result = qword_27F22DDE8;
  if (!qword_27F22DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD40, &qword_24F997090);
    sub_24ECF8A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDE8);
  }

  return result;
}

unint64_t sub_24ECF8A78()
{
  result = qword_27F22DDF0;
  if (!qword_27F22DDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD38, &qword_24F997088);
    sub_24E602068(&qword_27F22DDF8, &qword_27F22DE00, qword_24F997148, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDF0);
  }

  return result;
}

void *sub_24ECF8B58()
{
  v1 = v0;
  v2 = sub_24F927AF8();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F929638();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08, &qword_24F9971C8);
  swift_allocObject();
  v12 = sub_24F9280D8();
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226588, &qword_24F97A070);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v0[6] = v13;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v15 = result;
    v16 = sub_24F92B098();
    v17 = [v15 applicationIsInstalled_];

    *(v1 + 16) = v17;
    sub_24F929628();
    v18 = sub_24E8039DC(&unk_2861C0A78);
    sub_24EB715C4(&unk_2861C0A98);
    *v7 = v18;
    v19 = *MEMORY[0x277CEBFA8];
    v20 = *(v5 + 104);
    v26 = v4;
    v20(v7, v19, v4);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v21 = v27;
    sub_24F927AE8();
    *(&v31 + 1) = v8;
    v32 = MEMORY[0x277D21FB0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    swift_allocObject();
    swift_weakInit();

    v23 = sub_24F927AD8();
    v25 = v24;

    (*(v28 + 8))(v21, v29);
    (*(v5 + 8))(v7, v26);
    (*(v9 + 8))(v11, v8);

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v1[4] = v23;
    v1[5] = v25;
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24ECF8F40(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = sub_24F92C738();
    a1 = v6;
    if (!v7)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(a1 + 32);
  }

  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 48);
    MEMORY[0x28223BE20](Strong);

    os_unfair_lock_lock(v5 + 4);
    sub_24ECF9130();
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
  }
}

uint64_t sub_24ECF9078()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_24ECF90F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24ECF9130()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) isInstalled];
  v3 = *(v1 + 16);
  *(v1 + 16) = result;
  if (result != v3)
  {
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24ECF9254(char a1, char a2)
{
  if (a1 && (a2 & 0xFE) != 2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93FC20;
  sub_24F926C98();
  *(v2 + 32) = sub_24F9273C8();
  *(v2 + 40) = v3;
  sub_24F926C98();
  *(v2 + 48) = sub_24F9273C8();
  *(v2 + 56) = v4;
  sub_24F926C88();
  *(v2 + 64) = sub_24F9273C8();
  *(v2 + 72) = v5;
  sub_24F926C88();
  *(v2 + 80) = sub_24F9273C8();
  *(v2 + 88) = v6;
  return v2;
}

uint64_t sub_24ECF93C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ECF9448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AchievementsCardFanLayoutMetrics.Card(uint64_t a1)
{
  result = qword_27F22DE10;
  if (!qword_27F22DE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECF9504(uint64_t a1)
{
  result = type metadata accessor for Achievement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ECF95AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_24F9294C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929688();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  v17 = a2;
  sub_24F929E68();
  sub_24F9295D8();
  v13 = sub_24F929478();
  (*(v6 + 8))(v8, v5);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v3 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24ECF97DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = a2;
  v4 = sub_24F9294C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F929688();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  sub_24F9295D8();
  v12 = sub_24F929478();
  (*(v5 + 8))(v7, v4);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v3 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24ECF99F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v16[1] = a2;
  v4 = sub_24F9294C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F929688();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929668();
  sub_24F9295D8();
  v12 = sub_24F929478();
  (*(v5 + 8))(v7, v4);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v16[2] + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24ECF9C20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v18[1] = a5;
  v6 = sub_24F9294C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F929688();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5;
  sub_24F929668();
  sub_24F929E68();
  sub_24F9295D8();
  v14 = sub_24F929478();
  (*(v7 + 8))(v9, v6);
  if (v14 != 2 && (v14 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v13 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_24ECF9E64(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F9294C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929688();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  v13 = a2;
  sub_24F929E78();
  sub_24F9295D8();
  v11 = sub_24F929478();
  (*(v4 + 8))(v6, v3);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_24F929E78();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24ECFA064(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v2 = sub_24F9294C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  sub_24F9295D8();
  v10 = sub_24F929478();
  (*(v3 + 8))(v5, v2);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_24F929E78();
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t FastImpressionsTracker.__allocating_init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v6 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v6 + 48) = sub_24F929E98();
  *(v6 + 32) = a5;
  return v6;
}

uint64_t FastImpressionsTracker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FastImpressionsTracker.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EC037BC;
}

uint64_t FastImpressionsTracker.init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v5 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v5 + 48) = sub_24F929E98();
  *(v5 + 32) = a5;
  return v5;
}

uint64_t FastImpressionsTracker.elementDidEnterView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_24F9294C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929E68();
  sub_24F9295D8();
  v9 = sub_24F929478();
  result = (*(v6 + 8))(v8, v5);
  if (v9 != 2 && (v9 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v4 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t FastImpressionsTracker.elementDidLeaveView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24F9294C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929E78();
  sub_24F9295D8();
  v7 = sub_24F929478();
  result = (*(v4 + 8))(v6, v3);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      return sub_24F929E78();
    }
  }

  return result;
}

uint64_t FastImpressionsTracker.deinit()
{
  sub_24E883630(v0 + 16);

  return v0;
}

uint64_t FastImpressionsTracker.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECFA98C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ECFA9DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit37ContactsListRecentsSocialMenuProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24ECFAAC4()
{
  result = qword_27F22DE28;
  if (!qword_27F22DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DE28);
  }

  return result;
}

unint64_t sub_24ECFAB1C()
{
  result = qword_27F22DE30;
  if (!qword_27F22DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DE30);
  }

  return result;
}

uint64_t sub_24ECFAB70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001DLL;
  a2[1] = 0x800000024F997430;
  a2[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CF7D40]) init];
  a2[3] = v4;
  sub_24F2BE760(a2 + 4);
  v5 = MEMORY[0x277D84F90];
  a2[10] = MEMORY[0x277D84F90];
  a2[12] = 0;
  sub_24E60169C(a1, (a2 + 13), &unk_27F22DFF0, &qword_24F9976A8);
  a2[11] = v5;
  v6 = [v4 callCountWithPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 32) = v6;
  result = sub_24E601704(a1, &unk_27F22DFF0, &qword_24F9976A8);
  a2[11] = v7;
  return result;
}

uint64_t sub_24ECFAC98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223438, &unk_24F9976E0);
  v0 = *(type metadata accessor for SocialMenuItem(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = (v2 + v1);
  v4 = type metadata accessor for SocialMenuAction(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v10 = 0;
  *v3 = 0x676E6964616F6CLL;
  *(v3 + 1) = 0xE700000000000000;
  *(v3 + 2) = 0xE2676E6964616F4CLL;
  *(v3 + 3) = 0xAA0000000000A680;
  memset(v9, 0, sizeof(v9));
  v3[v4[7]] = 82;
  v7 = &v3[v4[8]];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  sub_24E61DA68(v9, v7, qword_27F21B590, &unk_24F93BE30);
  *&v3[v4[9]] = 0;
  result = swift_storeEnumTagMultiPayload();
  qword_27F39C5A0 = v2;
  return result;
}

void sub_24ECFAE48(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v114 = sub_24F921288();
  v134 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF50, &qword_24F997660);
  MEMORY[0x28223BE20](v115);
  v117 = (&v101 - v5);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF58, &qword_24F997668);
  MEMORY[0x28223BE20](v111);
  v112 = &v101 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF60, &unk_24F997670);
  MEMORY[0x28223BE20](v116);
  v113 = &v101 - v7;
  v8 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v133 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v119 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v110);
  v106 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF70, &qword_24F997680);
  v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v102 = &v101 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF78, &qword_24F997688);
  MEMORY[0x28223BE20](v107);
  v109 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = &v101 - v18;
  v19 = type metadata accessor for PlayerAvatarView(0);
  v126 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v125 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v136 = (&v101 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v101 - v24;
  v128 = type metadata accessor for PlayerAvatar(0);
  v26 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v135 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v124 = (&v101 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = (&v101 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = (&v101 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF88, &unk_24F9D96B0);
  MEMORY[0x28223BE20](v36);
  v108 = &v101 - v38;
  v39 = v2[11];
  v40 = *(v39 + 16);
  if (v40)
  {
    v127 = v19;
    v105 = v37;
    v104 = v11;
    if (v40 == 1)
    {
      v41 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v136 = type metadata accessor for PlayerAvatar;
      sub_24ECFF7D0(v39 + v41, v35, type metadata accessor for PlayerAvatar);
      v42 = v35[1];
      v135 = *v35;
      v43 = type metadata accessor for PlayerAvatar.Overlay(0);
      v44 = *(*(v43 - 8) + 56);
      v45 = v129;
      v44(v129, 1, 1, v43);
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
      v46 = v128;
      v47 = *(v128 + 20);
      v44(v32 + v47, 1, 1, v43);
      v48 = v32 + *(v46 + 24);
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *v48 = 0u;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0;

      sub_24E61DA68(&v137, v48, qword_27F21B590, &unk_24F93BE30);
      *v32 = v135;
      v32[1] = v42;
      sub_24E61DA68(v45, v32 + v47, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v140, v48, qword_27F21B590, &unk_24F93BE30);
      LOBYTE(v140) = 7;
      sub_24F8319B8(v32, &v140, v25);
      sub_24ECFF7D0(v25, v109, type metadata accessor for PlayerAvatarView);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF4F8(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
      v49 = sub_24ECFF4A4();
      v50 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      *&v140 = &type metadata for GroupedPlayerAvatarView;
      *(&v140 + 1) = v110;
      *&v141 = v49;
      *(&v141 + 1) = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v108;
      sub_24F924E28();
      sub_24ECFF838(v25, type metadata accessor for PlayerAvatarView);
      sub_24ECFF838(v35, v136);
LABEL_22:
      sub_24E60169C(v51, v112, &qword_27F22DF88, &unk_24F9D96B0);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF540();
      sub_24ECFF4F8(&qword_27F22DFB8, MEMORY[0x277CFBF00], MEMORY[0x277CFBEF8]);
      v96 = v113;
      sub_24F924E28();
      sub_24E60169C(v96, v117, &unk_27F22DF60, &unk_24F997670);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0, &qword_24F997690);
      sub_24ECFF688();
      sub_24ECFF744();
      sub_24F924E28();
      sub_24E601704(v96, &unk_27F22DF60, &unk_24F997670);
      sub_24E601704(v51, &qword_27F22DF88, &unk_24F9D96B0);
      return;
    }

    v62 = v39 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v121 = *(v26 + 72);
    v120 = (v133 + 56);
    v63 = MEMORY[0x277D84F90];
    v123 = v8;
    v122 = v16;
    do
    {
      v133 = v40;
      v134 = v63;
      v131 = type metadata accessor for PlayerAvatar;
      v132 = v62;
      v64 = v124;
      sub_24ECFF7D0(v62, v124, type metadata accessor for PlayerAvatar);
      v65 = v64[1];
      v130 = *v64;
      v66 = type metadata accessor for PlayerAvatar.Overlay(0);
      v67 = *(v66 - 8);
      v68 = *(v67 + 56);
      v69 = v129;
      v68(v129, 1, 1, v66);
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
      v70 = v128;
      v71 = *(v128 + 20);
      v72 = v135;
      v68(v135 + v71, 1, 1, v66);
      v73 = v72 + *(v70 + 24);
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *v73 = 0u;
      *(v73 + 16) = 0u;
      *(v73 + 32) = 0;

      sub_24E61DA68(&v137, v73, qword_27F21B590, &unk_24F93BE30);
      *v72 = v130;
      v72[1] = v65;

      v74 = v69;
      v75 = v122;
      sub_24E61DA68(v74, v72 + v71, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v140, v73, qword_27F21B590, &unk_24F93BE30);
      v76 = v125;
      sub_24F928948();
      sub_24ECFF838(v64, v131);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v77 = v72 + v71;
      v57 = &unk_24F942E50;
      sub_24E60169C(v77, v75, &qword_27F22DF80, &unk_24F942E50);
      v78 = v127;
      v79 = *(v127 + 20);
      if ((*(v67 + 48))(v75, 1, v66) == 1)
      {
        sub_24E601704(v75, &qword_27F22DF80, &unk_24F942E50);
        v80 = 1;
        v81 = v123;
      }

      else
      {
        v82 = v119;
        sub_24ED00B3C(v75, v119, type metadata accessor for PlayerAvatar.Overlay);
        v81 = v123;
        v83 = v82 + *(v123 + 20);
        *v83 = 0;
        *(v83 + 8) = 1;
        v84 = (v82 + *(v81 + 24));
        *v84 = 0;
        v84[1] = 0;
        sub_24ED00B3C(v82, v76 + v79, type metadata accessor for PlayerAvatarView.Overlay);
        v80 = 0;
      }

      (*v120)(v76 + v79, v80, 1, v81);
      v85 = v76 + *(v78 + 24);
      sub_24E60169C(v73, &v140, qword_27F24EC90, &unk_24F93C1D0);
      sub_24ECFF838(v135, type metadata accessor for PlayerAvatar);
      v86 = v141;
      *v85 = v140;
      *(v85 + 16) = v86;
      *(v85 + 32) = v142;
      *(v76 + *(v78 + 28)) = 7;
      sub_24ED00B3C(v76, v136, type metadata accessor for PlayerAvatarView);
      v63 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_24E619074(0, v63[2] + 1, 1, v63);
      }

      v88 = v63[2];
      v87 = v63[3];
      if (v88 >= v87 >> 1)
      {
        v63 = sub_24E619074((v87 > 1), v88 + 1, 1, v63);
      }

      v63[2] = v88 + 1;
      sub_24ED00B3C(v136, v63 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v88, type metadata accessor for PlayerAvatarView);
      v62 = v132 + v121;
      v40 = v133 - 1;
    }

    while (v133 != 1);
    *&v140 = v63;
    *(&v140 + 1) = 0x4049000000000000;
    v89 = *MEMORY[0x277CDFA10];
    v54 = sub_24F923E98();
    v56 = v106;
    (*(*(v54 - 8) + 104))(v106, v89, v54);
    sub_24ECFF4F8(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_24F92AFF8())
    {
      v90 = sub_24ECFF4A4();
      v91 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      v92 = v102;
      v93 = v110;
      sub_24F9263F8();
      sub_24E601704(v56, &qword_27F21CCC8, &qword_24F957520);

      v94 = v103;
      v95 = v104;
      (*(v103 + 16))(v109, v92, v104);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF4F8(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
      *&v140 = &type metadata for GroupedPlayerAvatarView;
      *(&v140 + 1) = v93;
      *&v141 = v90;
      *(&v141 + 1) = v91;
      swift_getOpaqueTypeConformance2();
      v51 = v108;
      sub_24F924E28();
      (*(v94 + 8))(v92, v95);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_28;
  }

  v52 = v134;
  v53 = v2[2];
  v54 = v2[10];
  if (v54 >> 62)
  {
    v55 = sub_24F92C738();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v4;
  v57 = v52;
  if (v55)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
LABEL_28:
      v58 = MEMORY[0x253052270](0, v54);
      goto LABEL_10;
    }

    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v54 + 32);
LABEL_10:
      v59 = v58;
      sub_24F921278();
      v60 = v114;
      v57[2](v112, v56, v114);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF540();
      sub_24ECFF4F8(&qword_27F22DFB8, MEMORY[0x277CFBF00], MEMORY[0x277CFBEF8]);
      v61 = v113;
      sub_24F924E28();
      sub_24E60169C(v61, v117, &unk_27F22DF60, &unk_24F997670);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0, &qword_24F997690);
      sub_24ECFF688();
      sub_24ECFF744();
      sub_24F924E28();

      sub_24E601704(v61, &unk_27F22DF60, &unk_24F997670);
      (v57[1])(v56, v60);
      return;
    }

    __break(1u);
  }

  else if (v53)
  {
    *&v137 = v53;
    BYTE8(v137) = 0;
    sub_24E7274F0();
    swift_retain_n();
    sub_24F924E28();
    v97 = BYTE8(v140);
    v98 = v117;
    *v117 = v140;
    *(v98 + 8) = v97;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0, &qword_24F997690);
    sub_24ECFF688();
    sub_24ECFF744();
    sub_24F924E28();
  }

  else
  {
    *&v137 = 0;
    BYTE8(v137) = 1;
    sub_24E7274F0();
    sub_24F924E28();
    v99 = BYTE8(v140);
    v100 = v117;
    *v117 = v140;
    *(v100 + 8) = v99;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0, &qword_24F997690);
    sub_24ECFF688();
    sub_24ECFF744();
    sub_24F924E28();
  }
}

uint64_t sub_24ECFC238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v107 = sub_24F924258();
  MEMORY[0x28223BE20](v107);
  v110 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232B0, &qword_24F96E450);
  MEMORY[0x28223BE20](v109);
  v108 = &v87 - v4;
  v92 = sub_24F9248C8();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2234B0, &unk_24F997540);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2234A0, &unk_24F96E5D0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223488, &unk_24F997550);
  MEMORY[0x28223BE20](v87);
  v16 = &v87 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE40, &unk_24F96E5C0);
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE48, &qword_24F997560);
  MEMORY[0x28223BE20](v91);
  v21 = &v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE50, &qword_24F997568);
  v93 = *(v22 - 8);
  v94 = v22;
  MEMORY[0x28223BE20](v22);
  v112 = &v87 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE58, &qword_24F997570);
  MEMORY[0x28223BE20](v96);
  v95 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE60, &qword_24F997578);
  v102 = *(v25 - 8);
  v103 = v25;
  MEMORY[0x28223BE20](v25);
  v100 = &v87 - v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE68, &qword_24F997580);
  MEMORY[0x28223BE20](v97);
  v99 = &v87 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE70, &qword_24F997588);
  MEMORY[0x28223BE20](v98);
  v106 = &v87 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE78, &qword_24F997590);
  MEMORY[0x28223BE20](v105);
  v104 = &v87 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE80, &qword_24F997598);
  MEMORY[0x28223BE20](v30 - 8);
  v101 = &v87 - v31;
  *v10 = sub_24F9249A8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE88, &unk_24F9975A0);
  sub_24ECFCF8C(v2, &v10[*(v32 + 44)]);
  v33 = sub_24F925808();
  v34 = &v10[*(v8 + 44)];
  *v34 = v33;
  *(v34 + 8) = xmmword_24F96E290;
  *(v34 + 24) = xmmword_24F96E290;
  v34[40] = 0;
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v10, v14, &qword_27F2234B0, &unk_24F997540);
  v35 = &v14[*(v12 + 44)];
  v36 = v123;
  *(v35 + 4) = v122;
  *(v35 + 5) = v36;
  *(v35 + 6) = v124;
  v37 = v119;
  *v35 = v118;
  *(v35 + 1) = v37;
  v38 = v121;
  *(v35 + 2) = v120;
  *(v35 + 3) = v38;
  sub_24E6009C8(v14, v16, &unk_27F2234A0, &unk_24F96E5D0);
  v16[*(v87 + 36)] = 0;
  sub_24F9248B8();
  sub_24E99B220();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v90 + 8))(v6, v92);
  sub_24E601704(v16, &qword_27F223488, &unk_24F997550);
  *v113 = *(v2 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223348, &qword_24F96E4C8);
  sub_24F926F38();
  sub_24E993B08(v125);

  (*(v88 + 8))(v19, v89);
  v132[0] = *(v2 + 136);
  *(v132 + 9) = *(v2 + 145);
  *v113 = *(v2 + 136);
  *&v113[9] = *(v2 + 145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223350, &unk_24F96E4D0);
  sub_24F923378();
  *v113 = v125;
  *&v113[16] = v126;
  v113[24] = BYTE8(v126);
  v39 = *(v2 + 104);
  v40 = *(v2 + 112);
  v90 = *(v2 + 120);
  LODWORD(v92) = *(v2 + 128);
  *&v125 = v39;
  BYTE8(v125) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  sub_24ECFF1B0();
  sub_24E99A594();
  sub_24F9269B8();

  sub_24E601704(v21, &qword_27F22DE48, &qword_24F997560);
  v41 = sub_24F925188();
  sub_24F927618();
  sub_24F9242E8();
  *&v116[52] = v128;
  *&v116[68] = v129;
  *&v116[84] = v130;
  *&v116[100] = v131;
  *&v116[4] = v125;
  *&v116[20] = v126;
  *&v116[36] = v127;
  v42 = sub_24F925808();
  v117 = 0;
  v43 = 0.0;
  if (v40)
  {
    *v113 = v132[0];
    *&v113[9] = *(v132 + 9);
    sub_24F923358();
    if ((v115 & 1) != 0 || v114 != v39)
    {
      *v113 = v132[0];
      *&v113[9] = *(v132 + 9);
      sub_24F923358();
      if (v115)
      {
        if (v92)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = 1.0;
        }
      }

      else
      {
        v43 = 1.0;
        if ((v92 & 1) == 0)
        {
          if (v114 == v90)
          {
            v43 = 0.0;
          }

          else
          {
            v43 = 1.0;
          }
        }
      }
    }
  }

  v44 = sub_24F9275F8();
  v46 = v45;
  v47 = v95;
  (*(v93 + 32))(v95, v112, v94);
  v48 = v47 + *(v96 + 36);
  v49 = *&v116[80];
  *(v48 + 68) = *&v116[64];
  *(v48 + 84) = v49;
  *(v48 + 100) = *&v116[96];
  v50 = *&v116[16];
  *(v48 + 4) = *v116;
  *(v48 + 20) = v50;
  v51 = *&v116[48];
  *(v48 + 36) = *&v116[32];
  *v48 = v41;
  *(v48 + 116) = *&v116[112];
  *(v48 + 52) = v51;
  *(v48 + 120) = v42;
  *(v48 + 128) = xmmword_24F997370;
  *(v48 + 144) = 0;
  *(v48 + 152) = 0;
  *(v48 + 160) = 0;
  *(v48 + 168) = v43;
  *(v48 + 176) = v44;
  *(v48 + 184) = v46;
  sub_24ECFF23C();
  v52 = v100;
  sub_24F926608();
  sub_24E601704(v47, &qword_27F22DE58, &qword_24F997570);
  v53 = *(v107 + 20);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_24F924B38();
  v56 = v110;
  (*(*(v55 - 8) + 104))(&v110[v53], v54, v55);
  __asm { FMOV            V0.2D, #12.0 }

  *v56 = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *v113 = v132[0];
  *&v113[9] = *(v132 + 9);
  sub_24F923358();
  v62 = sub_24F926D08();

  v63 = v56;
  v64 = v108;
  sub_24ED00B3C(v63, v108, MEMORY[0x277CDFC08]);
  v65 = v109;
  *(v64 + *(v109 + 52)) = v62;
  *(v64 + *(v65 + 56)) = 256;
  v66 = sub_24F927618();
  v68 = v67;
  v69 = v99;
  v70 = &v99[*(v97 + 36)];
  sub_24ECFF35C(v64, v70);
  v71 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233B0, &qword_24F96E4F8) + 36));
  *v71 = v66;
  v71[1] = v68;
  (*(v102 + 32))(v69, v52, v103);
  LOBYTE(v66) = sub_24F925808();
  v72 = v106;
  sub_24E6009C8(v69, v106, &qword_27F22DE68, &qword_24F997580);
  v73 = v72 + *(v98 + 36);
  *v73 = v66;
  *(v73 + 8) = xmmword_24F947C60;
  *(v73 + 24) = xmmword_24F947C60;
  *(v73 + 40) = 0;
  v114 = *(v2 + 96);
  v74 = v114;
  v75 = swift_allocObject();
  v76 = *(v2 + 144);
  *(v75 + 144) = *(v2 + 128);
  *(v75 + 160) = v76;
  *(v75 + 176) = *(v2 + 160);
  *(v75 + 192) = *(v2 + 176);
  v77 = *(v2 + 80);
  *(v75 + 80) = *(v2 + 64);
  *(v75 + 96) = v77;
  v78 = *(v2 + 112);
  *(v75 + 112) = *(v2 + 96);
  *(v75 + 128) = v78;
  v79 = *(v2 + 16);
  *(v75 + 16) = *v2;
  *(v75 + 32) = v79;
  v80 = *(v2 + 48);
  *(v75 + 48) = *(v2 + 32);
  *(v75 + 64) = v80;
  v81 = v72;
  v82 = v104;
  sub_24E6009C8(v81, v104, &qword_27F22DE70, &qword_24F997588);
  v83 = v105;
  *(v82 + *(v105 + 52)) = v74;
  v84 = (v82 + *(v83 + 56));
  *v84 = sub_24ECFF45C;
  v84[1] = v75;
  v85 = v101;
  sub_24E6009C8(v82, v101, &qword_27F22DE78, &qword_24F997590);
  sub_24E6009C8(v85, v111, &qword_27F22DE80, &qword_24F997598);
  sub_24ECFF464(v2, v113);
  return sub_24E60169C(&v114, v113, &qword_27F22DEC8, &qword_24F9975C0);
}

uint64_t sub_24ECFCF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DED0, &qword_24F9975C8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v45[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DED8, &qword_24F9975D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v50 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-v12];
  sub_24ECFAE48(&v45[-v12]);
  sub_24F927618();
  sub_24F9238C8();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DEE0, &qword_24F9975D8) + 36);
  v49 = v13;
  v15 = (v13 + v14);
  v16 = v54;
  *v15 = v53;
  v15[1] = v16;
  v15[2] = v55;
  v17 = sub_24F925808();
  v18 = v13 + *(v9 + 44);
  *v18 = v17;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0x4024000000000000;
  *(v18 + 40) = 0;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DEE8, &qword_24F9975E0);
  sub_24ECFD38C(a1, &v7[*(v19 + 44)]);
  v20 = *(a1 + 48);
  v51 = *(a1 + 40);
  v52 = v20;
  sub_24E600AEC();

  v21 = sub_24F925E18();
  v23 = v22;
  LOBYTE(v13) = v24;
  sub_24F925898();
  v25 = sub_24F925C98();
  v27 = v26;
  v29 = v28;

  sub_24E600B40(v21, v23, v13 & 1);

  LODWORD(v51) = sub_24F9251C8();
  v30 = sub_24F925C58();
  v32 = v31;
  v46 = v33;
  v35 = v34;
  sub_24E600B40(v25, v27, v29 & 1);

  v36 = v50;
  sub_24E60169C(v49, v50, &qword_27F22DED8, &qword_24F9975D0);
  v37 = v47;
  sub_24E60169C(v7, v47, &qword_27F22DED0, &qword_24F9975C8);
  v38 = v36;
  v39 = v48;
  sub_24E60169C(v38, v48, &qword_27F22DED8, &qword_24F9975D0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DEF8, &qword_24F9975E8);
  sub_24E60169C(v37, v39 + v40[12], &qword_27F22DED0, &qword_24F9975C8);
  v41 = v39 + v40[16];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v39 + v40[20];
  *v42 = v30;
  *(v42 + 8) = v32;
  v43 = v46;
  LOBYTE(v40) = v46 & 1;
  *(v42 + 16) = v46 & 1;
  *(v42 + 24) = v35;
  sub_24E5FD138(v30, v32, v43 & 1);

  sub_24E601704(v7, &qword_27F22DED0, &qword_24F9975C8);
  sub_24E601704(v49, &qword_27F22DED8, &qword_24F9975D0);
  sub_24E600B40(v30, v32, v40);

  sub_24E601704(v37, &qword_27F22DED0, &qword_24F9975C8);
  return sub_24E601704(v50, &qword_27F22DED8, &qword_24F9975D0);
}

uint64_t sub_24ECFD38C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF00, &qword_24F9975F0);
  MEMORY[0x28223BE20](v54);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - v5;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v55 = a1;
  if (*(a1 + 73))
  {
    *&v63 = v7;
    *(&v63 + 1) = v8;
    sub_24E600AEC();

    v9 = sub_24F925E18();
    v11 = v10;
    v13 = v12;
    sub_24F925A28();
    v14 = sub_24F925C98();
    v16 = v15;
    v18 = v17;

    sub_24E600B40(v9, v11, v13 & 1);

    *&v63 = sub_24F926C28();
    v19 = sub_24F925C58();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_24E600B40(v14, v16, v18 & 1);

    v58 = v19;
    v59 = v21;
    v60 = v23 & 1;
    v61 = v25;
    v62 = 0;
  }

  else
  {
    *&v63 = v7;
    *(&v63 + 1) = v8;
    sub_24E600AEC();

    v26 = sub_24F925E18();
    v28 = v27;
    v30 = v29;
    sub_24F925A28();
    v31 = sub_24F925C98();
    v33 = v32;
    v35 = v34;

    sub_24E600B40(v26, v28, v30 & 1);

    LODWORD(v63) = sub_24F925198();
    v36 = sub_24F925C58();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_24E600B40(v31, v33, v35 & 1);

    v58 = v36;
    v59 = v38;
    v60 = v40 & 1;
    v61 = v42;
    v62 = 1;
  }

  sub_24F924E28();
  v43 = v65;
  v52 = v64;
  v53 = v63;
  v44 = v63;
  v45 = v64;
  sub_24E8C5C94(v63, *(&v63 + 1), v64, *(&v64 + 1));
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF08, &qword_24F9975F8);
  sub_24ECFD7C8(v55, &v6[*(v46 + 44)]);
  *&v6[*(v54 + 36)] = sub_24F9251C8();
  v47 = v57;
  sub_24E60169C(v6, v57, &qword_27F22DF00, &qword_24F9975F0);
  v48 = v56;
  v49 = v52;
  *v56 = v53;
  v48[1] = v49;
  *(v48 + 32) = v43;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF10, &qword_24F997600);
  sub_24E60169C(v47, v48 + *(v50 + 48), &qword_27F22DF00, &qword_24F9975F0);
  sub_24E8C5C94(v44, *(&v44 + 1), v45, *(&v45 + 1));
  sub_24E8C5E88(v44, *(&v44 + 1), v45);
  sub_24E601704(v6, &qword_27F22DF00, &qword_24F9975F0);
  sub_24E601704(v47, &qword_27F22DF00, &qword_24F9975F0);
  return sub_24E8C5E88(v44, *(&v44 + 1), v45);
}

uint64_t sub_24ECFD7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF18, &unk_24F997608);
  MEMORY[0x28223BE20](v35);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70);
  MEMORY[0x28223BE20](v5);
  v7 = (&v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF28, &unk_24F997618);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = *(a1 + 64);
  v34 = *(a1 + 56);
  v14 = sub_24F926DF8();
  v15 = (v7 + *(v5 + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_24F926E78();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  sub_24E60169C(v7, v4, &qword_27F22DF20, &qword_24F93CB70);
  swift_storeEnumTagMultiPayload();
  sub_24E62A864();
  sub_24F924E28();
  sub_24E601704(v7, &qword_27F22DF20, &qword_24F93CB70);
  v38 = v34;
  v39 = v13;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  LOBYTE(v13) = v22;
  sub_24F925898();
  v23 = sub_24F925C98();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;

  sub_24E600B40(v19, v21, v13 & 1);

  v29 = v36;
  sub_24E60169C(v12, v36, &qword_27F22DF28, &unk_24F997618);
  v30 = v37;
  sub_24E60169C(v29, v37, &qword_27F22DF28, &unk_24F997618);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF48, &qword_24F997658) + 48);
  *v31 = v23;
  *(v31 + 8) = v25;
  LOBYTE(v15) = v15 & 1;
  *(v31 + 16) = v15;
  *(v31 + 24) = v28;
  sub_24E5FD138(v23, v25, v15);

  sub_24E601704(v12, &qword_27F22DF28, &unk_24F997618);
  sub_24E600B40(v23, v25, v15);

  return sub_24E601704(v29, &qword_27F22DF28, &unk_24F997618);
}

uint64_t sub_24ECFDBB8(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223348, &qword_24F96E4C8);
  return sub_24F926F48();
}

__n128 sub_24ECFDC78@<Q0>(uint64_t a1@<X8>)
{
  sub_24F924A88();
  v2 = sub_24F925DE8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_24F9275C8();
  sub_24F9242E8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  return result;
}

id sub_24ECFDD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F96E2C0;
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v2 = *MEMORY[0x277CBCFF8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD000];
  *(v0 + 48) = *MEMORY[0x277CBD000];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = v3;
  v7 = [v4 descriptorForAllComparatorKeys];
  v8 = *MEMORY[0x277CBD020];
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  v9 = *MEMORY[0x277CBD098];
  v10 = *MEMORY[0x277CBCFC0];
  *(v0 + 72) = *MEMORY[0x277CBD098];
  *(v0 + 80) = v10;
  v11 = *MEMORY[0x277CBD018];
  v12 = *MEMORY[0x277CBD138];
  *(v0 + 88) = *MEMORY[0x277CBD018];
  *(v0 + 96) = v12;
  v19 = *MEMORY[0x277CBD160];
  *(v0 + 104) = *MEMORY[0x277CBD160];
  qword_27F22DE20 = v0;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;

  return v19;
}

uint64_t sub_24ECFDED4(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECFDFA0, 0, 0);
}

uint64_t sub_24ECFDFA0()
{
  v59 = v2;
  v58[6] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 264);
  v5 = *(v2 + 272);
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_38;
  }

  v1 = [*(*(v2 + 280) + 24) callsWithPredicate:*(*(v2 + 280) + 96) limit:v5 - v4 offset:? batchSize:?];
  if (!v1)
  {
    sub_24E69A5C4(0, &unk_27F23E280, 0x277CF7D48);
    sub_24F92B5A8();
    v1 = sub_24F92B588();
  }

  v6 = *(v2 + 280);
  sub_24E69A5C4(0, &unk_27F23E280, 0x277CF7D48);
  v3 = sub_24F92B5A8();
  v0 = [objc_allocWithZone(MEMORY[0x277CF7D28]) initWithDataSource_];
  if (qword_27F210638 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
    v7 = sub_24F92B588();
    *(v2 + 240) = 0;
    v8 = [v0 contactsByHandleForCalls:v1 keyDescriptors:v7 error:v2 + 240];

    v9 = *(v2 + 240);
    if (!v8)
    {
      break;
    }

    sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFE0, &qword_24F974D08);
    sub_24ECFF898();
    v54 = sub_24F92AE38();
    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x277D84F90];
    v12 = (v11 + 16);
    if (v3 >> 62)
    {
      v13 = sub_24F92C738();
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    if (!v13)
    {
LABEL_30:
      sub_24E60169C(*(v2 + 280) + 104, v2 + 160, &unk_27F22DFF0, &qword_24F9976A8);
      if (*(v2 + 184))
      {
        v40 = *(v2 + 288);
        sub_24E612C80((v2 + 160), v2 + 120);
        sub_24F92B808();
        v41 = sub_24F92B858();
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        sub_24E615E00(v2 + 120, v2 + 200);
        v42 = swift_allocObject();
        v42[2] = 0;
        v42[3] = 0;
        sub_24E612C80((v2 + 200), (v42 + 4));
        v42[9] = v3;
        v42[10] = v54;
        v42[11] = v11;

        sub_24EA998B8(0, 0, v40, &unk_24F9976B8, v42);

        __swift_destroy_boxed_opaque_existential_1((v2 + 120));
      }

      else
      {

        sub_24E601704(v2 + 160, &unk_27F22DFF0, &qword_24F9976A8);
      }

      v43 = *(v2 + 8);

      return v43(v14);
    }

    v57[0] = MEMORY[0x277D84F90];

    v1 = v57;
    sub_24F45873C(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
    }

    v14 = v57[0];
    v50 = v13;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v15 = sub_24F92C738();
    }

    else
    {
      v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = *(v2 + 280);
    v48 = v19[5];
    v49 = v19[4];
    v47 = v19[6];
    v52 = v3 & 0xC000000000000001;
    v53 = v15 & ~(v15 >> 63);
    v20 = 0;
    v0 = &qword_27F223420;
    v45 = v19[9];
    v46 = v19[8];
    v51 = v3;
    v21 = v19[7];
    while (v53 != v20)
    {
      v56 = v20;
      if (v52)
      {
        v22 = MEMORY[0x253052270]();
      }

      else
      {
        if (v20 >= *(v44 + 16))
        {
          goto LABEL_37;
        }

        v22 = *(v3 + 8 * v20 + 32);
      }

      v55 = v22;
      if (qword_27F210630 != -1)
      {
        swift_once();
      }

      *(v2 + 248) = qword_27F39C5A0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223420, &qword_24F9976A0);
      swift_allocObject();

      v23 = sub_24F922FE8();

      MEMORY[0x253050F00](v24);
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v58[0] = v49;
      v58[1] = v48;
      v58[2] = v47;
      v58[3] = v21;
      v58[4] = v46;
      v58[5] = v45;
      *(v2 + 256) = v23;
      sub_24E602068(&qword_27F223428, &qword_27F223420, &qword_24F9976A0, MEMORY[0x277CBCE48]);
      v25 = v55;

      v26 = v49;
      v27 = v48;
      v28 = v47;

      v29 = v46;
      v30 = v45;
      v1 = (v2 + 256);
      v31 = sub_24F9230C8();
      sub_24ECFF938(v25, v54, v58, v31, v2 + 16);

      v57[0] = v14;
      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      if (v33 >= v32 >> 1)
      {
        v1 = v57;
        sub_24F45873C((v32 > 1), v33 + 1, 1);
        v14 = v57[0];
      }

      v20 = v56 + 1;
      *(v14 + 16) = v33 + 1;
      v34 = v14 + 104 * v33;
      v35 = *(v2 + 16);
      v36 = *(v2 + 48);
      *(v34 + 48) = *(v2 + 32);
      *(v34 + 64) = v36;
      *(v34 + 32) = v35;
      v37 = *(v2 + 64);
      v38 = *(v2 + 80);
      v39 = *(v2 + 96);
      *(v34 + 128) = *(v2 + 112);
      *(v34 + 96) = v38;
      *(v34 + 112) = v39;
      *(v34 + 80) = v37;
      v3 = v51;
      v12 = (v11 + 16);
      v0 = &qword_27F223420;
      if (v50 == v56 + 1)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v16 = v9;

  sub_24F91F278();

  swift_willThrow();

  v17 = *(v2 + 8);

  return v17();
}

uint64_t sub_24ECFE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECFE7D0, 0, 0);
}

uint64_t sub_24ECFE7D0()
{
  v1 = *(v0 + 104);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v3 = sub_24F2CF8B8();
  v5 = v4;

  sub_24F2D3E6C(v6, (v0 + 16));
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v0 + 16;
  v7[5] = v2;
  sub_24E7728D0(sub_24ED00A10, v7, v1);
  v9 = v8;
  *(v0 + 136) = v8;

  *(v0 + 56) = *(v0 + 16);
  sub_24E601704(v0 + 56, &unk_27F23E1A0, &qword_24F9976C0);
  *(v0 + 64) = *(v0 + 24);
  sub_24E601704(v0 + 64, &unk_27F23E1A0, &qword_24F9976C0);
  *(v0 + 72) = *(v0 + 32);
  sub_24E601704(v0 + 72, &unk_27F23E1A0, &qword_24F9976C0);
  *(v0 + 80) = *(v0 + 40);
  sub_24E601704(v0 + 80, &unk_27F23E1A0, &qword_24F9976C0);
  *(v0 + 88) = *(v0 + 48);
  sub_24E601704(v0 + 88, &unk_27F22E000, &unk_24F984240);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_24ECFE994;

  return sub_24F40B9AC(v9);
}

uint64_t sub_24ECFE994(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_24ECFEBE0;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_24ECFEABC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ECFEABC()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[15];

  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24F92B7F8();

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  v6[5] = v3;
  sub_24EA998B8(0, 0, v2, &unk_24F9976D0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ECFEBE0()
{

  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7C0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to build social menu for contacts: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24ECFED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24F92B7F8();
  v5[7] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECFEE2C, v7, v6);
}

uint64_t sub_24ECFEE2C()
{
  v1 = v0[5];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[5] + 32;
    do
    {
      v5 = v0[6];
      v6 = *(v4 + 8 * v3);
      result = swift_beginAccess();
      v8 = *(v5 + 16);
      if ((v8 & 0xC000000000000001) != 0)
      {

        MEMORY[0x253052270](v3, v8);
      }

      else
      {
        if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }

      ++v3;
      swift_endAccess();
      v0[2] = v6;
      sub_24F922FD8();
    }

    while (v2 != v3);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24ECFEF78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v18 = a1[5];
  v33 = a1[4];
  v34 = v18;
  v35 = *(a1 + 12);
  v19 = a1[1];
  v29 = *a1;
  v30 = v19;
  v20 = a1[3];
  v31 = a1[2];
  v32 = v20;
  if (qword_27F210630 != -1)
  {
    swift_once();
  }

  v28 = qword_27F39C5A0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213840, &unk_24F93B3C0);
  sub_24F926F28();
  v21 = v27[0];
  LOBYTE(v28) = a5 & 1;
  v36 = a10 & 1;
  v22 = v34;
  *(a9 + 64) = v33;
  *(a9 + 80) = v22;
  v23 = v35;
  v24 = v30;
  *a9 = v29;
  *(a9 + 16) = v24;
  v25 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v25;
  *(a9 + 96) = v23;
  *(a9 + 104) = a2;
  *(a9 + 112) = a3;
  *(a9 + 120) = a4;
  *(a9 + 128) = v28;
  *(a9 + 136) = a6;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  *(a9 + 160) = v36;
  *(a9 + 168) = v21;
  sub_24ED00BA4(&v29, v27);
}

uint64_t sub_24ECFF0D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E67D094;

  return sub_24ECFDED4(a1, a2);
}

unint64_t sub_24ECFF1B0()
{
  result = qword_27F22DEA0;
  if (!qword_27F22DEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE48, &qword_24F997560);
    sub_24E99B158();
    sub_24E99B41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DEA0);
  }

  return result;
}

unint64_t sub_24ECFF23C()
{
  result = qword_27F22DEB8;
  if (!qword_27F22DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE58, &qword_24F997570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE48, &qword_24F997560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390, &qword_24F93FC50);
    sub_24ECFF1B0();
    sub_24E99A594();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2233A0, &qword_27F2233A8, &qword_24F96E4F0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DEB8);
  }

  return result;
}

uint64_t sub_24ECFF35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232B0, &qword_24F96E450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECFF3CC()
{

  return swift_deallocObject();
}

unint64_t sub_24ECFF4A4()
{
  result = qword_27F22DF98;
  if (!qword_27F22DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DF98);
  }

  return result;
}

uint64_t sub_24ECFF4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ECFF540()
{
  result = qword_27F22DFB0;
  if (!qword_27F22DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DF88, &unk_24F9D96B0);
    sub_24ECFF4F8(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
    sub_24ECFF4A4();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFB0);
  }

  return result;
}

unint64_t sub_24ECFF688()
{
  result = qword_27F22DFC8;
  if (!qword_27F22DFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF60, &unk_24F997670);
    sub_24ECFF540();
    sub_24ECFF4F8(&qword_27F22DFB8, MEMORY[0x277CFBF00], MEMORY[0x277CFBEF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFC8);
  }

  return result;
}

unint64_t sub_24ECFF744()
{
  result = qword_27F22DFD0;
  if (!qword_27F22DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DFC0, &qword_24F997690);
    sub_24E7274F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFD0);
  }

  return result;
}

uint64_t sub_24ECFF7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECFF838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ECFF898()
{
  result = qword_27F22DFE8;
  if (!qword_27F22DFE8)
  {
    sub_24E69A5C4(255, &qword_27F23E1B0, 0x277CF7D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFE8);
  }

  return result;
}

uint64_t sub_24ECFF900()
{

  return swift_deallocObject();
}

uint64_t sub_24ECFF938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a4;
  v157 = a5;
  v172 = a2;
  v7 = sub_24F91F648();
  v146 = *(v7 - 8);
  v147 = v7;
  MEMORY[0x28223BE20](v7);
  v145 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for PlayerAvatar(0);
  v167 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v165 = (&v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v10 - 8);
  v169 = &v144 - v11;
  v168 = sub_24F91EAA8();
  v12 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F4A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v144 - v20;
  v23 = *a3;
  v22 = *(a3 + 8);
  v24 = *(a3 + 24);
  v164 = *(a3 + 16);
  v159 = v24;
  v160 = v22;
  v25 = *(a3 + 32);
  v158 = *(a3 + 40);
  v161 = a1;
  v26 = [a1 imageURL];
  v162 = v12;
  if (v26)
  {
    v27 = v23;
    v28 = v26;
    sub_24F91F428();

    (*(v15 + 32))(v21, v17, v14);
    v30 = sub_24F91F4B8();
    v32 = v31;
    v152 = 0;
    v148 = v25;
    v33 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_24E71CBC0(v30, v32);
    v34 = sub_24F91F4C8();
    v35 = [v33 initWithData_];

    sub_24E627880(v30, v32);
    if (v35)
    {
      v155 = sub_24F926DD8();
      sub_24E627880(v30, v32);
      (*(v15 + 8))(v21, v14);
    }

    else
    {
      (*(v15 + 8))(v21, v14);
      sub_24E627880(v30, v32);
      v155 = 0;
    }

    v29 = v162;
    v23 = v27;
    v25 = v148;
  }

  else
  {
    v155 = 0;
    v152 = 0;
    v29 = v12;
  }

  v36 = MEMORY[0x277D84F90];
  v196 = MEMORY[0x277D84F90];
  v37 = v161;
  v38 = [v161 validRemoteParticipantHandles];
  if (v38)
  {
    v39 = v38;
    v154 = v23;
    v40 = sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30);
    sub_24ECFF898();
    v41 = sub_24F92BAA8();

    v42 = v41;
    v148 = v25;
    v163 = v40;
    if ((v41 & 0xC000000000000001) != 0)
    {
      sub_24F92C6F8();
      sub_24F92BAE8();
      v42 = v199;
      v43 = v200;
      v44 = v201;
      v45 = v202;
      v46 = v203;
    }

    else
    {
      v45 = 0;
      v48 = -1 << *(v42 + 32);
      v43 = v42 + 56;
      v44 = ~v48;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v46 = v50 & *(v42 + 56);
    }

    v51 = v172;
    v153 = v44;
    v52 = (v44 + 64) >> 6;
    v171 = MEMORY[0x277D84F90];
    v173 = v42;
LABEL_17:
    v53 = v45;
    v29 = v46;
    while (1)
    {
      if (v42 < 0)
      {
        v57 = sub_24F92C778();
        if (!v57 || (*&v175 = v57, swift_dynamicCast(), v56 = v182, v45 = v53, v46 = v29, !v182))
        {
LABEL_41:
          sub_24E6586B4(v173);
          v37 = v161;
          v29 = v162;
          v47 = v164;
          v23 = v154;
          v25 = v148;
          goto LABEL_42;
        }
      }

      else
      {
        v54 = v53;
        v55 = v29;
        v45 = v53;
        if (!v29)
        {
          while (1)
          {
            v45 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v45 >= v52)
            {
              goto LABEL_41;
            }

            v55 = *(v43 + 8 * v45);
            ++v54;
            if (v55)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_24:
        v46 = (v55 - 1) & v55;
        v56 = *(*(v42 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v55)))));
        if (!v56)
        {
          goto LABEL_41;
        }
      }

      if (*(v51 + 16))
      {
        v58 = sub_24E76E4DC(v56);
        if (v59)
        {
          v60 = *(*(v51 + 56) + 8 * v58);
          if (v60 >> 62)
          {
            result = sub_24F92C738();
            if (result)
            {
LABEL_34:
              if ((v60 & 0xC000000000000001) != 0)
              {

                v64 = MEMORY[0x253052270](0, v60);

                v62 = v64;
              }

              else
              {
                if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_79;
                }

                v62 = *(v60 + 32);
              }

              v63 = v62;
              MEMORY[0x253050F00]();
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();

              v171 = v196;
              v42 = v173;
              goto LABEL_17;
            }
          }

          else
          {
            result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
              goto LABEL_34;
            }
          }
        }
      }

      v53 = v45;
      v29 = v46;
      v42 = v173;
    }
  }

  v171 = v36;
  v47 = v164;
LABEL_42:

  v65 = [v37 uniqueId];
  v66 = sub_24F92B0D8();
  v68 = v67;

  v69 = [v37 callerNameForDisplay];
  v70 = sub_24F92B0D8();
  v151 = v71;
  v152 = v70;

  v72 = [v37 serviceProvider];
  v153 = v68;
  v154 = v66;
  if (v72)
  {
    v73 = v72;
    v74 = sub_24F92B0D8();
    v76 = v75;

    v77 = v159;
    v78 = v160;
    *&v182 = v23;
    *(&v182 + 1) = v160;
    *&v183 = v47;
    *(&v183 + 1) = v159;
    v79 = v158;
    v184 = v25;
    v185 = v158;
    v80 = sub_24F2BF550(v74, v76);

    if (v80)
    {
      *&v182 = v23;
      *(&v182 + 1) = v78;
      v81 = v164;
      *&v183 = v164;
      *(&v183 + 1) = v77;
      v184 = v25;
      v185 = v79;
      v82 = sub_24F2BF82C(v80, [v37 mediaType]);
      v149 = v83;
      v150 = v82;
    }

    else
    {

      v84 = [v37 callerIdForDisplay];
      v85 = sub_24F92B0D8();
      v149 = v86;
      v150 = v85;
    }

    v29 = v162;
  }

  else
  {

    v149 = 0xE000000000000000;
    v150 = 0;
  }

  if (!(v171 >> 62))
  {
    v87 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_50;
    }

LABEL_65:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E010, &unk_24F93B380);
    v112 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_24F93DE60;
    v173 = v113;
    v114 = (v113 + v112);
    *&v182 = 0x6C6F686563616C70;
    *(&v182 + 1) = 0xEB00000000726564;

    v115 = v166;
    sub_24F91EA28();
    sub_24E600AEC();
    v116 = sub_24F92C578();
    v118 = v117;
    (v29)[1](v115, v168);
    if (v118)
    {
      v119 = v116;
    }

    else
    {
      v119 = 0x6C6F686563616C70;
    }

    if (!v118)
    {
      v118 = 0xEB00000000726564;
    }

    *&v182 = 0x3A746361746E6F63;
    *(&v182 + 1) = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v119, v118);

    v120 = v182;
    v121 = type metadata accessor for PlayerAvatar.Overlay(0);
    v122 = *(*(v121 - 8) + 56);
    v123 = v169;
    v122(v169, 1, 1, v121);
    v184 = 0;
    v182 = 0u;
    v183 = 0u;
    v124 = v170;
    v125 = *(v170 + 20);
    v122(&v114[v125], 1, 1, v121);
    v126 = &v114[*(v124 + 24)];
    *&v177 = 0;
    v175 = 0u;
    v176 = 0u;
    *v126 = 0u;
    *(v126 + 16) = 0u;
    *(v126 + 32) = 0;
    sub_24E61DA68(&v175, v126, qword_27F21B590, &unk_24F93BE30);
    *v114 = v120;
    sub_24E61DA68(v123, &v114[v125], &qword_27F22DF80, &unk_24F942E50);
    sub_24E61DA68(&v182, v126, qword_27F21B590, &unk_24F93BE30);
    goto LABEL_71;
  }

LABEL_62:
  if (!sub_24F92C738())
  {
    goto LABEL_65;
  }

  v87 = sub_24F92C738();
  if (!v87)
  {

    v173 = MEMORY[0x277D84F90];
LABEL_71:
    v127 = v157;
    v128 = v161;
    v129 = [v161 callStatus];
    if (v129 == *MEMORY[0x277CF7D90])
    {

      v130 = 0;
    }

    else
    {
      v131 = [v128 callStatus];
      v132 = *MEMORY[0x277CF7D80];

      v130 = v131 != v132;
    }

    v133 = [v128 callStatus];
    v134 = *MEMORY[0x277CF7DA0];
    v135 = [v128 date];
    if (v135)
    {
      v136 = v145;
      v137 = v135;
      sub_24F91F608();

      v138 = sub_24F2CF5F4(v136);
      v140 = v139;

      (*(v146 + 8))(v136, v147);
    }

    else
    {

      v140 = 0xA300000000000000;
      v138 = 9666786;
    }

    *&v175 = v154;
    *(&v175 + 1) = v153;
    *&v176 = v155;
    *(&v176 + 1) = v152;
    *&v177 = v151;
    *(&v177 + 1) = v138;
    *&v178 = v140;
    *(&v178 + 1) = v150;
    *&v179 = v149;
    BYTE8(v179) = v130;
    BYTE9(v179) = v133 == v134;
    *(&v179 + 10) = v197;
    HIWORD(v179) = v198;
    *&v180 = v171;
    *(&v180 + 1) = v173;
    v181 = v156;
    *&v182 = v154;
    *(&v182 + 1) = v153;
    *&v183 = v155;
    *(&v183 + 1) = v152;
    v184 = v151;
    v185 = v138;
    v186 = v140;
    v187 = v150;
    v188 = v149;
    v189 = v130;
    v190 = v133 == v134;
    v191 = v197;
    v192 = v198;
    v193 = v171;
    v194 = v173;
    v195 = v156;
    sub_24ED00BA4(&v175, v174);
    result = sub_24ED00BDC(&v182);
    v141 = v180;
    *(v127 + 64) = v179;
    *(v127 + 80) = v141;
    *(v127 + 96) = v181;
    v142 = v176;
    *v127 = v175;
    *(v127 + 16) = v142;
    v143 = v178;
    *(v127 + 32) = v177;
    *(v127 + 48) = v143;
    return result;
  }

LABEL_50:
  v174[0] = MEMORY[0x277D84F90];

  result = sub_24F457BF8(0, v87 & ~(v87 >> 63), 0);
  if ((v87 & 0x8000000000000000) == 0)
  {
    v88 = 0;
    v173 = v174[0];
    v89 = v171;
    v162 = (v29 + 1);
    v163 = v171 & 0xC000000000000001;
    v164 = v87;
    do
    {
      if (v163)
      {
        v90 = MEMORY[0x253052270](v88);
      }

      else
      {
        v90 = *(v89 + 8 * v88 + 32);
      }

      v91 = v90;
      v92 = [v90 identifier];
      v93 = sub_24F92B0D8();
      v95 = v94;

      *&v182 = v93;
      *(&v182 + 1) = v95;
      v96 = v166;
      sub_24F91EA28();
      sub_24E600AEC();
      v97 = sub_24F92C578();
      v99 = v98;
      (*v162)(v96, v168);
      if (v99)
      {

        v93 = v97;
        v95 = v99;
      }

      *&v182 = 0x3A746361746E6F63;
      *(&v182 + 1) = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v93, v95);

      v100 = *(&v182 + 1);
      v172 = v182;
      v101 = type metadata accessor for PlayerAvatar.Overlay(0);
      v102 = *(*(v101 - 8) + 56);
      v103 = v169;
      v102(v169, 1, 1, v101);
      v184 = 0;
      v182 = 0u;
      v183 = 0u;
      v104 = v170;
      v105 = *(v170 + 20);
      v106 = v165;
      v102(v165 + v105, 1, 1, v101);
      v107 = v106 + *(v104 + 24);
      *&v177 = 0;
      v175 = 0u;
      v176 = 0u;
      *v107 = 0u;
      *(v107 + 16) = 0u;
      *(v107 + 32) = 0;
      sub_24E61DA68(&v175, v107, qword_27F21B590, &unk_24F93BE30);
      *v106 = v172;
      v106[1] = v100;
      sub_24E61DA68(v103, v106 + v105, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v182, v107, qword_27F21B590, &unk_24F93BE30);
      v108 = v173;
      v174[0] = v173;
      v110 = *(v173 + 16);
      v109 = *(v173 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_24F457BF8((v109 > 1), v110 + 1, 1);
        v108 = v174[0];
      }

      v88 = v88 + 1;
      *(v108 + 16) = v110 + 1;
      v111 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v173 = v108;
      sub_24ED00B3C(v106, v108 + v111 + *(v167 + 72) * v110, type metadata accessor for PlayerAvatar);
      v89 = v171;
    }

    while (v164 != v88);
    goto LABEL_71;
  }

  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_24ED008E4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24ED0093C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24ECFE730(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_24ED00A34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED00A7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24ECFED94(a1, v4, v5, v7, v6);
}

uint64_t sub_24ED00B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED00C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_24ED00C54(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24ED00CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24ED00D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ED00D94()
{
  result = qword_27F22E028;
  if (!qword_27F22E028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE80, &qword_24F997598);
    sub_24E602068(&unk_27F22E030, &qword_27F22DE78, &qword_24F997590, MEMORY[0x277CDDB50]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E028);
  }

  return result;
}

id sub_24ED00E7C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter);
  }

  else
  {
    v4 = sub_24ED00EE0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24ED00EE0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v4 setDoesRelativeDateFormatting_];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  Locale.normalizedLocale.getter(v3);
  v5 = sub_24F91F738();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  return v4;
}

id sub_24ED01034(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24F91F7C8();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - v6;
  v7 = sub_24F9299D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dateFormatters;
  v15 = MEMORY[0x277D84F90];
  *&v1[v14] = sub_24E60CAC8(MEMORY[0x277D84F90]);
  v16 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dynamicDateFormatters;
  *&v1[v16] = sub_24E60CAC8(v15);
  *&v1[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter] = 0;
  v17 = [objc_opt_self() mainBundle];

  v18 = v13;
  sub_24F9299B8();
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_27F22B5B8;
  sub_24F9299B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213918, &unk_24F93B4B0);
  v20 = *(v8 + 72);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24F93A400;
  v23 = v22 + v21;
  v24 = *(v8 + 16);
  v36 = v18;
  v24(v23, v18, v7);
  v24(v23 + v20, v10, v7);
  *&v2[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables] = v22;
  v25 = v37;
  sub_24F9299C8();
  v26 = v39;
  v27 = v40;
  v28 = *(v39 + 32);
  v34 = v7;
  v35 = v28;
  v28(&v2[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_locale], v25, v40);
  v29 = type metadata accessor for LegacyLocalizer(0);
  v30 = v38;
  sub_24F9299C8();
  sub_24ED0140C();
  (*(v26 + 8))(v30, v27);
  v31 = *(v8 + 8);
  v32 = v34;
  v31(v10, v34);
  v31(v36, v32);
  v35(&v2[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_extendedLocale], v25, v27);
  v41.receiver = v2;
  v41.super_class = v29;
  return objc_msgSendSuper2(&v41, sel_init);
}

uint64_t sub_24ED0140C()
{
  v0 = sub_24F91F7D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F91F8A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F708();
  v9 = MEMORY[0x253045060](v8);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_24F91F888();
  sub_24F91F7F8();
  (*(v5 + 8))(v7, v4);
  sub_24F92CA38();
  (*(v1 + 8))(v3, v0);
  v10 = v14;
  v11 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_24E81D324(v10, v11, 0x7261646E656C6163, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  MEMORY[0x253045070](v14);

  return sub_24F91F6F8();
}

uint64_t sub_24ED01684(void *a1, uint64_t a2)
{
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCABB8]);
    v9 = a1;
    v10 = [v8 init];
    [v10 setNumberStyle_];
    [v10 setFormatterBehavior_];
    Locale.normalizedLocale.getter(v7);
    v11 = sub_24F91F738();
    (*(v5 + 8))(v7, v4);
    [v10 setLocale_];

    [v10 setMinimumFractionDigits_];
    v12 = [v10 stringFromNumber_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_24F92B0D8();

      return v14;
    }
  }

  return 0;
}

void sub_24ED018E0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v14[2] = a1;
  v14[3] = a2;
  v4 = sub_24F9299D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables);
  v11 = *(v10 + 16);
  v14[1] = v5 + 16;
  while (1)
  {
    if (v11 == v9)
    {

      return;
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    (*(v5 + 16))(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9++, v4, v6);
    sub_24F9299A8();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    if (v13)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t *sub_24ED01BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 a5)
{
  v40 = a1;
  v41 = a2;
  v8 = sub_24F9299D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v42 = MEMORY[0x277D84F90];
  if (a4)
  {
    v38 = v14;
    v39 = v5;
    v17 = objc_opt_self();

    v18 = [v17 mainBundle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v19 = swift_allocObject();
    v37 = xmmword_24F93DE60;
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;

    sub_24F9299B8();
    v20 = a3;
    if (qword_27F2103D8 != -1)
    {
LABEL_11:
      swift_once();
    }

    swift_beginAccess();
    v21 = qword_27F22B5B8;
    v22 = swift_allocObject();
    *(v22 + 16) = v37;
    *(v22 + 32) = v20;
    *(v22 + 40) = a4;
    v23 = v21;
    v24 = v38;
    sub_24F9299B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213918, &unk_24F93B4B0);
    v25 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F93A400;
    v28 = v27 + v26;
    v29 = *(v9 + 16);
    v29(v28, v16, v8);
    v29(v28 + v25, v24, v8);
    sub_24EA0ACF4(v27);
    v30 = *(v9 + 8);
    v30(v24, v8);
    v30(v16, v8);
  }

  v20 = &v42;
  sub_24EA0ACF4(v31);
  v16 = 0;
  v32 = v42;
  v33 = *(v42 + 16);
  a4 = v9 + 16;
  while (v33 != v16)
  {
    if (v16 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    (*(v9 + 16))(v11, v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16++, v8);
    v20 = sub_24F9299A8();
    v35 = v34;
    (*(v9 + 8))(v11, v8);
    if (v35)
    {

      return v20;
    }
  }

  return v40;
}

void sub_24ED02030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v25 = a1;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v21 - v5;
  v6 = sub_24F9299D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v21 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables);
  v13 = *(v12 + 16);
  v24 = v7 + 16;
  while (1)
  {
    if (v13 == v11)
    {

LABEL_7:
      v16 = v23;
      Locale.normalizedLocale.getter(v23);
      v17 = sub_24F91F7C8();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D83B88];
      *(v18 + 16) = xmmword_24F93DE60;
      v20 = MEMORY[0x277D83C10];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = v22;
      sub_24F92B108();

      sub_24E601704(v16, &qword_27F21FAD8, &qword_24F961870);
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6, v8);
    sub_24F9299A8();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_24ED02384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = &v18 - v5;
  v6 = sub_24F9299D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v18 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables);
  v13 = *(v12 + 16);
  v21 = v7 + 16;
  while (1)
  {
    if (v13 == v11)
    {

LABEL_7:
      v16 = v20;
      Locale.normalizedLocale.getter(v20);
      v17 = sub_24F91F7C8();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      sub_24E8E86A4(v19);
      sub_24F92B108();

      sub_24E601704(v16, &qword_27F21FAD8, &qword_24F961870);
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6, v8);
    sub_24F9299A8();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_24ED026BC(uint64_t a1)
{
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    [v6 doubleValue];
    v11 = qword_2861C0AC8;
    if (*&qword_2861C0AC8 <= v10)
    {
      v23 = 0;
    }

    else
    {
      v11 = qword_2861C0AD0;
      if (*&qword_2861C0AD0 <= v10)
      {
        v23 = 1;
      }

      else
      {
        v11 = qword_2861C0AD8;
        if (*&qword_2861C0AD8 <= v10)
        {
          v23 = 2;
        }

        else
        {
          v11 = qword_2861C0AE0;
          if (*&qword_2861C0AE0 > v10)
          {
            v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            if (v12)
            {
              v13 = v12;
              v14 = objc_allocWithZone(MEMORY[0x277CCABB8]);
              v1 = v13;
              v2 = [v14 init];
              [v2 setNumberStyle_];
              [v2 setFormatterBehavior_];
              Locale.normalizedLocale.getter(v9);
              v15 = sub_24F91F738();
              (*(v5 + 8))(v9, v4);
              [v2 setLocale_];

              [v2 setMinimumFractionDigits_];
              v16 = [v2 stringFromNumber_];
              if (v16)
              {
                v17 = v16;
                v18 = sub_24F92B0D8();
                v20 = v19;

                v21._object = 0x800000024FA5A8E0;
                v21._countAndFlagsBits = 0xD000000000000012;
                v22._countAndFlagsBits = 0;
                v22._object = 0xE000000000000000;
                localizedString(_:comment:)(v21, v22);
LABEL_17:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
                v38 = swift_allocObject();
                *(v38 + 16) = xmmword_24F93DE60;
                *(v38 + 56) = MEMORY[0x277D837D0];
                *(v38 + 64) = sub_24E90A06C();
                *(v38 + 32) = v18;
                *(v38 + 40) = v20;
                sub_24F92B118();

                return;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:

            __break(1u);
            return;
          }

          v23 = 3;
        }
      }
    }

    v24 = &unk_2861C0AE8 + 16 * v23;
    v2 = *(v24 + 4);
    v1 = *(v24 + 5);
    v25 = round(v10 / *&v11 * 10.0) / 10.0;
    v26 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v27 = [v26 initWithDouble_];
    if (v27)
    {
      v28 = v27;
      v29 = objc_allocWithZone(MEMORY[0x277CCABB8]);
      v30 = v28;
      v31 = [v29 init];
      [v31 setNumberStyle_];
      [v31 setFormatterBehavior_];
      Locale.normalizedLocale.getter(v9);
      v32 = sub_24F91F738();
      (*(v5 + 8))(v9, v4);
      [v31 setLocale_];

      [v31 setMinimumFractionDigits_];
      v33 = [v31 stringFromNumber_];
      if (v33)
      {
        v34 = v33;
        v18 = sub_24F92B0D8();
        v20 = v35;

        v36._countAndFlagsBits = v2;
        v36._object = v1;
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        localizedString(_:comment:)(v36, v37);

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_24ED02D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v10 = [v6 longLongValue];
    v11 = sub_24F92B1B8();
    v12 = ASKFormattedCountCreate(v10, v11 + 32);

    if (v12)
    {
      sub_24F92B2A8();
      free(v12);
      return;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    if (v13)
    {
      v14 = v13;
      v15 = objc_allocWithZone(MEMORY[0x277CCABB8]);
      v16 = v14;
      v17 = [v15 init];
      [v17 setNumberStyle_];
      [v17 setFormatterBehavior_];
      Locale.normalizedLocale.getter(v9);
      v18 = sub_24F91F738();
      (*(v5 + 8))(v9, v4);
      [v17 setLocale_];

      [v17 setMinimumFractionDigits_];
      v19 = [v17 stringFromNumber_];
      if (v19)
      {
        v20 = v19;
        sub_24F92B0D8();

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24ED03048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_24E728A00(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_24F91F638();
    (*(v9 + 16))(v4, v14, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    sub_24ED032DC(v4, 0xD000000000000013, 0x800000024FA3FB80);
    v17 = v16;
    sub_24E601704(v4, &unk_27F22EC30, &qword_24F939880);
    v18 = *(v9 + 8);
    v18(v11, v8);
    v18(v14, v8);
    return v17;
  }
}

void sub_24ED032DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = sub_24F91F648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_24F91F638();
  sub_24E728A00(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_24E601704(v11, &unk_27F22EC30, &qword_24F939880);
    return;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_24F91F558();
  v20 = floor(v19 / 31536000.0);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v20 >= 1)
  {
    sub_24ED02030(0xD000000000000012, 0x800000024FA5A8C0, v20);
    v21 = *(v13 + 8);
    v21(v15, v12);
    v21(v18, v12);
    return;
  }

  v22 = floor(v19 / 86400.0);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v22 >= 7)
  {
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v23 = 0x64204D4D4DLL;
    v24 = 0xE500000000000000;
    goto LABEL_15;
  }

  if (v22 >= 1)
  {
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v23 = 69;
    v24 = 0xE100000000000000;
LABEL_15:
    sub_24ED04240(v23, v24, v8, a2, a3);
    sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
    v25 = *(v13 + 8);
    v25(v15, v12);
    v25(v18, v12);
    return;
  }

  v26 = floor(v19 / 3600.0);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v27 = (v13 + 8);
  if (v26 < 1)
  {
    v28._countAndFlagsBits = 0xD000000000000011;
    v28._object = 0x800000024FA5A820;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    localizedString(_:comment:)(v28, v29);
  }

  else
  {
    sub_24ED02030(0xD000000000000012, 0x800000024FA5A840, v26);
  }

  v30 = *v27;
  (*v27)(v15, v12);
  v30(v18, v12);
}

uint64_t sub_24ED03990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a4;
  v54 = a1;
  v55 = a3;
  v9 = sub_24F91F7C8();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F8A8();
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_24F91F648();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a5;
  v23 = v22;
  sub_24E728A00(v21, v17);
  if ((*(v23 + 48))(v17, 1, v18) == 1)
  {
    sub_24E601704(v17, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  v48 = v20;
  v49 = a2;
  v47 = v23;
  (*(v23 + 32))(v20, v17, v18);
  v25 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dynamicDateFormatters;
  swift_beginAccess();
  v26 = *(v6 + v25);
  v27 = v18;
  v28 = v53;
  if (!*(v26 + 16))
  {
    goto LABEL_7;
  }

  v29 = sub_24E76D644(v55, v28);
  if ((v30 & 1) == 0)
  {

LABEL_7:
    v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v32 setFormattingContext_];
    sub_24F91F7B8();
    v33 = sub_24F91F838();
    (*(v50 + 8))(v14, v12);
    [v32 setCalendar_];

    Locale.normalizedLocale.getter(v11);
    v34 = sub_24F91F738();
    (*(v51 + 8))(v11, v52);
    [v32 setLocale_];

    v35 = v55;
    v36 = sub_24F92B098();
    [v32 setLocalizedDateFormatFromTemplate_];

    swift_beginAccess();

    v31 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v6 + v25);
    *(v6 + v25) = 0x8000000000000000;
    sub_24E820824(v31, v35, v28, isUniquelyReferenced_nonNull_native);

    *(v6 + v25) = v56;
    swift_endAccess();
    goto LABEL_8;
  }

  v31 = *(*(v26 + 56) + 8 * v29);

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_24F93DE60;
  v39 = v31;
  v40 = v48;
  v41 = sub_24F91F578();
  v42 = [v39 stringFromDate_];

  v43 = sub_24F92B0D8();
  v45 = v44;

  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = sub_24E90A06C();
  *(v38 + 32) = v43;
  *(v38 + 40) = v45;
  v46 = sub_24F92B118();

  (*(v47 + 8))(v40, v27);
  return v46;
}

uint64_t sub_24ED04240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a2;
  v11 = sub_24F91F7C8();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F8A8();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v26 = v25;
  sub_24E728A00(v24, v19);
  if ((*(v21 + 48))(v19, 1, v26) == 1)
  {
    sub_24E601704(v19, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  v28 = *(v21 + 32);
  v51 = v26;
  v52 = v23;
  v28(v23, v19, v26);
  v48 = a4;
  v49 = a5;
  v61 = a4;
  v62 = a5;
  v50 = a1;
  v59 = a1;
  v60 = v57;

  v59 = sub_24F92B3C8();
  v60 = v29;
  sub_24F92B278();
  v31 = v59;
  v30 = v60;
  v32 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dateFormatters;
  swift_beginAccess();
  v33 = *(v6 + v32);
  if (!*(v33 + 16))
  {
    goto LABEL_7;
  }

  v34 = sub_24E76D644(v31, v30);
  if ((v35 & 1) == 0)
  {

LABEL_7:
    v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v38 = v49;

    [v37 setFormattingContext_];
    sub_24F91F7B8();
    v39 = sub_24F91F838();
    (*(v53 + 8))(v16, v54);
    [v37 setCalendar_];

    Locale.normalizedLocale.getter(v13);
    v40 = sub_24F91F738();
    (*(v55 + 8))(v13, v56);
    [v37 setLocale_];

    v41 = sub_24F92B098();
    [v37 setLocalizedDateFormatFromTemplate_];

    swift_beginAccess();
    v36 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v6 + v32);
    *(v6 + v32) = 0x8000000000000000;
    sub_24E820824(v36, v31, v30, isUniquelyReferenced_nonNull_native);

    *(v6 + v32) = v58;
    swift_endAccess();
    goto LABEL_8;
  }

  v36 = *(*(v33 + 56) + 8 * v34);

LABEL_8:
  v43 = v52;
  v44 = sub_24F91F578();
  v45 = [v36 stringFromDate_];

  v46 = sub_24F92B0D8();
  (*(v21 + 8))(v43, v51);
  return v46;
}

uint64_t sub_24ED0493C(uint64_t a1, __n128 a2)
{
  v4 = sub_24F91F8A8();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F7C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91ED78();
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - v15;
  v17 = sub_24F91F648();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = a1;
  v26 = v25;
  sub_24E728A00(v24, v16);
  if ((*(v18 + 48))(v16, 1, v26) == 1)
  {
    sub_24E601704(v16, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  v67 = v26;
  v68 = v18;
  (*(v18 + 32))(v23, v16, v26);
  sub_24F91F638();
  v66 = v2;
  Locale.normalizedLocale.getter(v9);
  sub_24F91F7B8();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080, &qword_24F9F2000);
  v28 = sub_24F91F898();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24F93A070;
  v33 = *(v29 + 104);
  v33(v32 + v31, *MEMORY[0x277CC9988], v28);
  v33(v32 + v31 + v30, *MEMORY[0x277CC9998], v28);
  v33(v32 + v31 + 2 * v30, *MEMORY[0x277CC9940], v28);
  v33(v32 + v31 + 3 * v30, *MEMORY[0x277CC9968], v28);
  v33(v32 + v31 + 4 * v30, *MEMORY[0x277CC9980], v28);
  v33(v32 + v31 + 5 * v30, *MEMORY[0x277CC99A8], v28);
  sub_24E8026A0(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = v73;
  sub_24F91F808();

  (*(v69 + 8))(v34, v70);
  v35 = sub_24F91ECE8();
  if ((v36 & 1) != 0 || (v37 = v35, v35 < 1))
  {
    v40 = sub_24F91ED08();
    if ((v41 & 1) == 0)
    {
      v37 = v40;
      if (v40 >= 1)
      {
        v39 = 0xD000000000000013;
        v38 = 0x800000024FA5A8A0;
        goto LABEL_9;
      }
    }

    v45 = sub_24F91EC88();
    v44 = v68;
    if ((v46 & 1) != 0 || (v47 = v45, v45 < 1))
    {
      v51 = sub_24F91ECA8();
      if ((v52 & 1) == 0)
      {
        v47 = v51;
        if (v51 >= 1)
        {
          v50 = 0xD000000000000011;
          v49 = 0x800000024FA5A860;
          goto LABEL_17;
        }
      }

      v57 = sub_24F91ECC8();
      if ((v58 & 1) != 0 || (v47 = v57, v57 < 1))
      {
        v59 = sub_24F91ED48();
        if ((v60 & 1) != 0 || v59 < 1)
        {
          v63 = sub_24ED00E7C();
          v64 = sub_24F91F578();
          v65 = [v63 stringFromDate_];

          v43 = sub_24F92B0D8();
          goto LABEL_19;
        }

        v61._countAndFlagsBits = 0xD000000000000011;
        v61._object = 0x800000024FA5A820;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v61, v62)._countAndFlagsBits;
LABEL_18:
        v43 = countAndFlagsBits;
LABEL_19:
        (*(v72 + 8))(v13, v71);
        goto LABEL_20;
      }

      v48 = "TIME_AGO_HOURS_AGO";
    }

    else
    {
      v48 = "TIME_AGO_WEEKS_AGO";
    }

    v49 = (v48 - 32) | 0x8000000000000000;
    v50 = 0xD000000000000012;
LABEL_17:
    sub_24ED02030(v50, v49, v47);
    goto LABEL_18;
  }

  v38 = 0x800000024FA5A8C0;
  v39 = 0xD000000000000012;
LABEL_9:
  sub_24ED02030(v39, v38, v37);
  v43 = v42;
  (*(v72 + 8))(v13, v71);
  v44 = v68;
LABEL_20:
  v54 = *(v44 + 8);
  v55 = v20;
  v56 = v67;
  v54(v55, v67);
  v54(v23, v56);
  return v43;
}

id sub_24ED050AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (a3)
  {
    sub_24F91F608();
    v10 = sub_24F91F648();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_24F91F648();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9);
  v14 = v13;

  sub_24E601704(v9, &unk_27F22EC30, &qword_24F939880);
  if (v14)
  {
    v15 = sub_24F92B098();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_24ED05224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xD000000000000011;

  v7 = sub_24ED0585C(a2, a3);
  v8 = "IAP_DURATION_MONTH";
  if (v7 > 2u)
  {
    if (v7 != 3)
    {
      return;
    }

    goto LABEL_14;
  }

  v9 = sub_24F92CE08();

  if (v9)
  {
LABEL_15:
    sub_24ED02030(v6, v8 | 0x8000000000000000, a1);
    return;
  }

  v8 = "IAP_DURATION_WEEK";
  if (v7 > 1u)
  {
    v6 = 0xD000000000000012;
    goto LABEL_14;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    v6 = 0xD000000000000012;
    goto LABEL_15;
  }

  v8 = "IAP_DURATION_DAY";
  if (v7 == 1)
  {
    goto LABEL_14;
  }

  v11 = sub_24F92CE08();

  if (v11)
  {
    goto LABEL_15;
  }

  v6 = 0xD000000000000010;
  v8 = "GameStoreKit.ModernLocalizer";
  if (!v7)
  {
LABEL_14:

    goto LABEL_15;
  }

  v12 = sub_24F92CE08();

  if (v12)
  {
    goto LABEL_15;
  }
}

id LegacyLocalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacyLocalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyLocalizer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LegacyLocalizer(uint64_t a1)
{
  result = qword_27F22E070;
  if (!qword_27F22E070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED0574C(uint64_t a1)
{
  result = sub_24F91F7C8();
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

unint64_t sub_24ED05810(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24ED0585C(uint64_t a1, uint64_t a2)
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

uint64_t sub_24ED058B8()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24ED05900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xED0000734449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
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

uint64_t sub_24ED059E4(uint64_t a1)
{
  v2 = sub_24ED05CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED05A20(uint64_t a1)
{
  v2 = sub_24ED05CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED05A7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24ED05AAC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_24ED05AAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E088, &unk_24F997968);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24ED05CB0();
  sub_24F92D108();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v9[7] = 0;
    sub_24E7C1498();
    sub_24F92CC18();
    v7 = v10;
    v9[6] = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24ED05CB0()
{
  result = qword_27F22E090;
  if (!qword_27F22E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E090);
  }

  return result;
}

unint64_t sub_24ED05D18()
{
  result = qword_27F22E098;
  if (!qword_27F22E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E098);
  }

  return result;
}

unint64_t sub_24ED05D70()
{
  result = qword_27F22E0A0;
  if (!qword_27F22E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E0A0);
  }

  return result;
}

unint64_t sub_24ED05DC8()
{
  result = qword_27F22E0A8;
  if (!qword_27F22E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E0A8);
  }

  return result;
}

uint64_t ArcadeSeeAllGamesContentPresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:displayStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = swift_allocObject();
  v9 = *a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84FA0];
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v11 = (v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v11 = 0u;
  v11[1] = 0u;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a2, v13);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = a3;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v9;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v10;
  v15 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v14 + 8))(a2, v13);
  return v15;
}

uint64_t ArcadeSeeAllGamesContentPresenter.init(objectGraph:pageUrl:facetsPresenter:displayStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v10 = (v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v10 = 0u;
  v10[1] = 0u;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = a3;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v8;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v9;
  v14 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v14;
}

uint64_t sub_24ED0620C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED06278(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED06378()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = *(v2 + 16);
    v5 = *(v4 + 32);

    v5(v6, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 8);
    v8 = swift_getObjectType();
    (*(v7 + 24))(*(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions), v8, v7);
    swift_unknownObjectRelease();
  }

  return sub_24F01DD24();
}

double sub_24ED0649C(char a1)
{
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  if (*(v1 + v4) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves))
  {
    return result;
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    if (sub_24F92C738())
    {
LABEL_6:
      if ((a1 & 1) == 0)
      {
        v7 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(*(*(v8 + 16) + 16) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        return result;
      }
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 32);
  *(v1 + 32) = 1;
  v11 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(*(*(v12 + 16) + 24) + 8))(v13);
    swift_unknownObjectRelease();
  }

  sub_24F01DFD8(v10);
  v14 = sub_24F91F398();
  v16 = v15;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24F92CE08();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658, &qword_24F988B80);
  sub_24F92BF18();
  v18 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v24);

  v19 = v17 & 1;
  type metadata accessor for JSIntentDispatcher();
  v20 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  sub_24F928FD8();
  sub_24F92A758();
  *&v24 = 0xD00000000000001BLL;
  *(&v24 + 1) = 0x800000024FA5A900;
  v25 = v14;
  v26 = v16;
  v27 = v19;
  v28 = v18;
  sub_24EB479C0(&v24, v20, "GameStoreKit/ArcadeSeeAllGamesContentPresenter.swift", 52, 2);
  sub_24ED08798(&v24);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v21 = sub_24E74EC40();

  v22 = sub_24F92BEF8();
  v23[3] = v21;
  v23[4] = MEMORY[0x277D225C0];
  v23[0] = v22;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v23);

  return result;
}

void sub_24ED068AC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v48 = v4;
    v49 = v3;
    sub_24ED07248(v7);
    swift_beginAccess();
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
    v11 = v9 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      v14 = *(*(v12 + 16) + 24);
      v15 = *(v14 + 16);

      v15(ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_24F01DFD8(v10);

    v16 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
    swift_beginAccess();
    v17 = *(v9 + v16);
    if (v17 >> 62)
    {
      v18 = sub_24F92C738();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      if (v19)
      {
        v20 = *(v11 + 8);
        v21 = swift_getObjectType();
        (*(v20 + 48))(v21, v20);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v11 + 8);
        v23 = swift_getObjectType();
        swift_beginAccess();
        v24 = *(v22 + 16);
        v25 = *(v24 + 32);

        v25(v26, v23, v24);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v11 + 8);
        v28 = swift_getObjectType();
        (*(v27 + 24))(*(v9 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions), v28, v27);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v11 + 8);
        v30 = swift_getObjectType();
        (*(*(*(v29 + 16) + 16) + 8))(v30);
        swift_unknownObjectRelease();
      }

      sub_24EC4064C();
      sub_24F01B85C(v31, 0);

      swift_beginAccess();
      if (*(v9 + 16))
      {
        v50[3] = type metadata accessor for ArcadeSeeAllGamesPage(0);
        v50[4] = &protocol witness table for BasePage;
        v50[5] = sub_24ED08DB4(qword_27F22E110, type metadata accessor for ArcadeSeeAllGamesPage, &protocol conformance descriptor for BasePage);
        v50[0] = v7;

        PendingPageRender.use(pageRenderEventFrom:)(v50);

        sub_24E601704(v50, &qword_27F224F98, &unk_24F974A70);
        v32 = *(v9 + 16);
      }

      else
      {

        v32 = 0;
      }

      v41 = v49;
      v42 = v48;

      if (v32)
      {
        sub_24F91F638();
        sub_24F91F5E8();
        v44 = v43;
        (*(v42 + 8))(v6, v41);
        v45 = v32 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v45 = v44;
        *(v45 + 8) = 0;
        v46 = *(v32 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
        swift_beginAccess();
        *(v46 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }
    }

    else if (v19)
    {
      v33 = *(v11 + 8);
      v34 = swift_getObjectType();
      v35._object = 0x800000024FA5AA20;
      v35._countAndFlagsBits = 0xD00000000000001CLL;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = localizedString(_:comment:)(v35, v36);
      v38._countAndFlagsBits = 0xD000000000000022;
      v38._object = 0x800000024FA5AA40;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v40 = localizedString(_:comment:)(v38, v39);
      (*(v33 + 40))(v37._countAndFlagsBits, v37._object, v40._countAndFlagsBits, v40._object, v34, v33);

      swift_unknownObjectRelease();
      return;
    }
  }
}

void sub_24ED06E84(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
    v9 = v7 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    v34 = v9;
    if (v10)
    {
      v11 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(*(v11 + 16) + 24);
      v14 = v3;
      v15 = a1;
      v16 = *(v13 + 16);

      v16(ObjectType, v13);
      a1 = v15;
      v3 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_24F01DFD8(v8);

    v17 = *(v3 + 20);
    v18 = sub_24F91F4A8();
    (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
    *v5 = a1;
    swift_beginAccess();
    v19 = *(v7 + 16);
    if (v19)
    {
      sub_24ED08DB4(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v20 = swift_allocError();
      sub_24EBDEC38(v5, v21);
      v22 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v23 = *(v19 + v22);
      v24 = a1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + v22) = v23;
      v26 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_24E617130(0, v23[2] + 1, 1, v23);
        *(v19 + v22) = v23;
      }

      v28 = v23[2];
      v27 = v23[3];
      if (v28 >= v27 >> 1)
      {
        v23 = sub_24E617130((v27 > 1), v28 + 1, 1, v23);
      }

      v23[2] = v28 + 1;
      v23[v28 + 4] = v20;
      *(v19 + v22) = v23;
      swift_endAccess();
    }

    else
    {
      v29 = a1;
      v26 = v34;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v26 + 8);
      v31 = swift_getObjectType();
      sub_24ED08DB4(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v32 = swift_allocError();
      sub_24EBDEC38(v5, v33);
      (*(*(*(v30 + 16) + 24) + 24))(v32, v31);

      swift_unknownObjectRelease();
      sub_24EBDECA4(v5);
    }

    else
    {

      sub_24EBDECA4(v5);
    }
  }
}

uint64_t sub_24ED07248(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = *(result + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);

    sub_24EC4064C();
    v5 = v4;
    swift_beginAccess();
    sub_24EA0AE3C(v5);
    swift_endAccess();
    sub_24EC9C8C4();
    v7 = v6;
    swift_beginAccess();
    sub_24EAE423C(v7, v8);
    swift_endAccess();
    sub_24E94E17C(v3 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, _);
    v9 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_24E8E7708(_, v2 + v9);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      *&_[24] = type metadata accessor for ArcadeSeeAllGamesPage(0);
      *&_[32] = &protocol witness table for BasePage;
      v18 = sub_24ED08DB4(qword_27F22E110, type metadata accessor for ArcadeSeeAllGamesPage, &protocol conformance descriptor for BasePage);
      *_ = v3;
      sub_24E8F997C(_, v16);
      swift_beginAccess();

      sub_24EA095A4(v16, v11 + 40);
      swift_endAccess();
      sub_24EC832DC();
      swift_unknownObjectRelease();
      sub_24E601704(v16, &qword_27F224F98, &unk_24F974A70);
      __swift_destroy_boxed_opaque_existential_1(_);
    }

    v12 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v13 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v14 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    *_ = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);
    *&_[8] = v12;
    *&_[16] = v13;
    _[24] = v14;
    v15._rawValue = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    sub_24E903680(*_, v12, v13);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(_, v15);
    sub_24E9036C4(*_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658, &qword_24F988B80);
    sub_24F92BF18();

    *(v2 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = *_;
  }

  return result;
}

uint64_t sub_24ED07500()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED07544(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 8) + 8))(ObjectType);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 8) + 16))(v9);
  }

  return swift_unknownObjectRelease();
}

uint64_t (*sub_24ED07628(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24ED076B0;
}

void sub_24ED076B0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    if (*(v4 + v3[7]) == 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 8) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v9 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v9 + 8) + 16);
    }

    (*v8)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_8:

  free(v3);
}

BOOL sub_24ED077A4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_24E94E17C(v0 + v1, v4);
  v2 = v5 != 0;
  sub_24E601704(v4, &qword_27F2129B0, &unk_24F945320);
  return v2;
}

double sub_24ED07818()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_24E94E17C(v0 + v1, &v11);
  if (v12[1])
  {
    sub_24E612B0C(&v11, v13);
    v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    if (*(v0 + v2))
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      *(v0 + v2) = 1;
      v4 = v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v5 + 8) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      sub_24E643A9C(v13, v12);
      *&v11 = 0xD00000000000001FLL;
      *(&v11 + 1) = 0x800000024FA5A960;
      type metadata accessor for JSIntentDispatcher();
      v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
      sub_24F928FD8();
      sub_24F92A758();
      sub_24EB47E18(&v11, v7, "GameStoreKit/ArcadeSeeAllGamesContentPresenter.swift", 52, 2);
      swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      swift_weakInit();
      v8 = sub_24E74EC40();

      v9 = sub_24F92BEF8();
      v10[3] = v8;
      v10[4] = MEMORY[0x277D225C0];
      v10[0] = v9;
      sub_24F92A958();

      sub_24ED08844(&v11);
      __swift_destroy_boxed_opaque_existential_1(v13);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    sub_24E601704(&v11, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

double sub_24ED07AC8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24E94E17C(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v11);
    v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_24E8E7708(v11, v5 + v6);
    swift_endAccess();
    sub_24ED07D00(v2);
    v7 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v5 + v7) = 0;
    v8 = v5 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v9 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_24ED07BF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v4 + v5) = 0;
    v6 = v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    memset(v10, 0, sizeof(v10));
    v9 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_24E8E7708(v10, v4 + v9);
    swift_endAccess();
  }

  return result;
}

void sub_24ED07D00(unint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_18;
  }

LABEL_3:
  v24 = v5;
  v26 = MEMORY[0x277D84F90];
  sub_24ED08DB4(&qword_27F22E100, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  sub_24ED08D48();
  sub_24F92C6A8();
  v27 = *(v2 + v8);

  sub_24EC4064C();
  a1 = v12;
  v25 = v4;
  v23 = v2;
  if (v12 >> 62)
  {
    while (1)
    {
      v13 = sub_24F92C738();
      if (!v13)
      {
        break;
      }

LABEL_5:
      if (v13 < 1)
      {
        __break(1u);
        return;
      }

      v4 = 0;
      v14 = v11 & ~(v11 >> 63);
      v2 = v14 + 1;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x253052270](v4, a1);
        }

        else
        {
        }

        v5 = &v27;
        MEMORY[0x253050F00](v15);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22[1] = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24F92B5E8();
        }

        sub_24F92B638();
        if ((v14 ^ v4) == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v4;
        sub_24F91F8F8();

        ++v2;
        if (v13 == v4)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_16:
      v16 = sub_24F92C738();
      v11 = v16 - 1;
      if (!__OFSUB__(v16, 1))
      {
        goto LABEL_3;
      }

LABEL_18:
      __break(1u);
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_20:

  v17 = v23 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    swift_getObjectType();
    v19 = swift_allocObject();
    v20 = swift_weakInit();
    v21 = MEMORY[0x28223BE20](v20);
    v22[-2] = v19;
    v22[-1] = &v27;
    (*(v18 + 32))(MEMORY[0x277D84F90], v7, sub_24ED08DAC, v21);
    swift_unknownObjectRelease();
    (v24[1])(v7, v25);
  }

  else
  {
    (v24[1])(v7, v25);
  }
}

uint64_t sub_24ED080DC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *a2;
    v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
    swift_beginAccess();
    *(v4 + v6) = v5;

    sub_24F01B85C(v7, 0);
  }

  return result;
}

uint64_t sub_24ED08190()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24ED081F8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x253052270](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

void sub_24ED082A4(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_24ECDE964(v6);
    *(v2 + v5) = v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();

    return;
  }

  __break(1u);
}

BOOL sub_24ED0836C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > a1;
}

unint64_t sub_24ED083E8(uint64_t a1)
{
  v2 = sub_24F91FA18();
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_24F92C738())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  result = sub_24F91FA18();
  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v10 = result;

    v7 = MEMORY[0x253052270](v10, v6);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * result + 32);

LABEL_7:
    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    return sub_24F91FA08() < v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED0853C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken, &qword_27F2129B0, &unk_24F945320);

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view);
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate;

  return sub_24E883630(v3);
}

uint64_t ArcadeSeeAllGamesContentPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken, &qword_27F2129B0, &unk_24F945320);

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate);
  return v0;
}

uint64_t ArcadeSeeAllGamesContentPresenter.__deallocating_deinit()
{
  ArcadeSeeAllGamesContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED087EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED08898(uint64_t a1)
{
  result = sub_24ED08DB4(&qword_27F22E0E8, type metadata accessor for ArcadeSeeAllGamesContentPresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesContentPresenter(uint64_t a1)
{
  result = qword_27F22E0F0;
  if (!qword_27F22E0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED0893C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ED08998(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24ED089FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED08AD4(uint64_t a1)
{
  result = sub_24F91F4A8();
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

unint64_t sub_24ED08D48()
{
  result = qword_27F22E108;
  if (!qword_27F22E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050, qword_24F99DB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E108);
  }

  return result;
}

uint64_t sub_24ED08DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED08E24(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_24ED08FE8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_24ED090AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for BaseComponentViewModel(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_24F922FA8();
  *a4 = result;
  return result;
}

uint64_t sub_24ED09178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  sub_24F921888();
  v7 = sub_24F9271C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v8 + 16);
  v12(v16 - v10, a1, v7, v9);
  sub_24F921AD8();
  (v12)(v11, a1, v7);
  type metadata accessor for AlertActionImplementation(0, a2, v13, v14);
  sub_24F921B18();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_24ED09314(uint64_t a1)
{
  result = sub_24F921AE8();
  if (v2 <= 0x3F)
  {
    result = sub_24F921B28();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ED093B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F921AE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F921B28();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED094C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F921AE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F921B28();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24ED09610(char *a1, uint64_t a2, uint64_t a3)
{
  if (a1[OBJC_IVAR____TtC12GameStoreKit11AlertAction_style])
  {
    return sub_24ED0A768(a1, a2, a3);
  }

  else
  {
    return sub_24ED0962C(a1, a2, a3);
  }
}

uint64_t sub_24ED0962C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v125 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = v96 - v6;
  v114 = sub_24F92A638();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24F9289E8();
  v111 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v108 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = v96 - v10;
  v124 = a3;
  v12 = *(a3 - 8);
  v11 = a3 - 8;
  v120 = v12;
  MEMORY[0x28223BE20](v13);
  v104 = v14;
  v119 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_24F928AD8();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v129 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_24F928B08();
  v122 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F92A618();
  v18 = *(v17 - 8);
  v130 = v17;
  v131 = v18;
  MEMORY[0x28223BE20](v17);
  v118 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = v96 - v21;
  MEMORY[0x28223BE20](v22);
  v116 = v96 - v23;
  MEMORY[0x28223BE20](v24);
  v115 = v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E218, &qword_24F997D08);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = (v96 - v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v107 = sub_24F92A9E8();
  v132 = a1;
  v32 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions);
  v33 = *(v32 + 16);
  v135 = v32;
  if (v33)
  {
    v11 = 0;
    v34 = (v32 + 64);
    v35 = MEMORY[0x277D84F90];
    v102 = v33;
    v103 = (v32 + 64);
    do
    {
      v121 = v35;
      v36 = (v33 - v11);
      v37 = &v34[5 * v11];
      while (1)
      {
        v38 = *(v32 + 16);
        if (v11 >= v38)
        {
          __break(1u);
          goto LABEL_60;
        }

        v39 = v28;
        v40 = *(v37 - 3);
        v41 = *(v37 - 2);
        v42 = *(v37 - 1);
        v133 = *(v37 - 4);
        v134 = v41;
        v43 = *v37;
        if (v42)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v42;
          *(v44 + 24) = v43;
          v45 = sub_24E9A0188;
        }

        else
        {
          v45 = 0;
          v44 = 0;
        }

        sub_24E5FCA4C(v42, v43);
        if (v40)
        {
          break;
        }

        sub_24E824448(v45, v44);
        v37 += 5;
        ++v11;
        v36 = (v36 - 1);
        v32 = v135;
        v28 = v39;
        if (!v36)
        {
          v35 = v121;
          goto LABEL_18;
        }
      }

      sub_24E5FCA4C(v42, v43);

      sub_24E824448(v45, v44);
      v35 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F458928(0, *(v35 + 16) + 1, 1);
        v35 = v138;
      }

      v34 = v103;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_24F458928((v47 > 1), v48 + 1, 1);
        v34 = v103;
        v35 = v138;
      }

      ++v11;
      *(v35 + 16) = v48 + 1;
      v49 = (v35 + 40 * v48);
      v50 = v134;
      v49[4] = v133;
      v49[5] = v40;
      v49[6] = v50;
      v49[7] = v42;
      v49[8] = v43;
      v32 = v135;
      v28 = v39;
      v33 = v102;
    }

    while (v36 != 1);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

LABEL_18:
  if ((*(v132 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) & 1) == 0)
  {

    v36 = 0;
    v134 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v51 = *(v35 + 16);

  v52 = v128;
  if (v51)
  {
    if (!*(v132 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle + 8))
    {
      v56._countAndFlagsBits = 0x432E6E6F69746341;
      v56._object = 0xED00006C65636E61;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      localizedString(_:comment:)(v56, v57);
    }

    v55 = v122;
  }

  else
  {
    v53._countAndFlagsBits = 0x4F2E6E6F69746341;
    v53._object = 0xE90000000000004BLL;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    localizedString(_:comment:)(v53, v54);
    v55 = v122;
  }

  if (*(v132 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction))
  {
    *&v138 = *(v132 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction);
    v58 = *(v124 + 16);

    v59 = v58;
    v36 = 0;
    sub_24ED0AB9C(&v138, v126, v125, v59, v31);
    v52 = v128;

    (v55[7])(v31, 0, 1, v52);
  }

  else
  {
    (v55[7])(v31, 1, 1, v52);
    v36 = 0;
  }

  sub_24F92A5D8();
  sub_24ED0B1A4(v31, v28);
  if ((v55[6])(v28, 1, v52) == 1)
  {
    sub_24ED0B214(v28);
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
  }

  else
  {
    *(&v139 + 1) = v52;
    v140 = MEMORY[0x277D21CB8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
    (v55[4])(boxed_opaque_existential_1, v28, v52);
  }

  v61 = v115;
  sub_24F92A5F8();
  (*(v131 + 16))(v116, v61, v130);
  v62 = sub_24E61909C(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = v62[2];
  v38 = v62[3];
  v134 = v62;
  v37 = (v11 + 1);
  if (v11 >= v38 >> 1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v64 = v130;
    v63 = v131;
    (*(v131 + 8))(v115, v130);
    sub_24ED0B214(v31);
    v65 = v134;
    v134[2] = v37;
    (*(v63 + 32))(v65 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v11, v116, v64);
LABEL_34:
    v37 = *(v32 + 16);
    if (!v37)
    {
      break;
    }

    v96[1] = v36;
    v66 = 0;
    v133 = v132 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
    v121 = v120 + 16;
    v116 = v104 + 7;
    v115 = (v120 + 32);
    v104 = (v122 + 2);
    v103 = (v131 + 16);
    v102 = v131 + 8;
    ++v122;
    v101 = v131 + 32;
    v100 = (v37 - 1);
    v67 = v32 + 64;
    v99 = v32 + 64;
LABEL_36:
    v31 = (v67 + 40 * v66);
    v36 = v66;
    while (1)
    {
      v38 = *(v32 + 16);
      if (v36 >= v38)
      {
        break;
      }

      v69 = *(v31 - 4);
      v68 = *(v31 - 3);
      v71 = *(v31 - 2);
      v70 = *(v31 - 1);
      v72 = *v31;
      if (v70)
      {
        v73 = swift_allocObject();
        *(v73 + 16) = v70;
        *(v73 + 24) = v72;
        v11 = sub_24ED0B4D0;
        if (v68)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v11 = 0;
        v73 = 0;
        if (v68)
        {
LABEL_44:

          swift_bridgeObjectRetain_n();
          sub_24E5FCA4C(v70, v72);
          sub_24F928A98();
          v74 = v120;
          v75 = v124;
          (*(v120 + 16))(v119, v126, v124);
          v97 = (*(v74 + 80) + 64) & ~*(v74 + 80);
          v98 = &v116[v97] & 0xFFFFFFFFFFFFFFF8;
          v76 = swift_allocObject();
          *(v76 + 2) = *(v75 + 16);
          *(v76 + 3) = v69;
          *(v76 + 4) = v68;
          *(v76 + 5) = v71;
          *(v76 + 6) = v11;
          *(v76 + 7) = v73;
          (*(v74 + 32))(&v76[v97], v119, v75);
          *&v76[v98] = v125;

          sub_24E5FCA4C(v11, v73);
          sub_24F928AF8();
          if ((*(v133 + 8) & 1) == 0 && *v133 == v36)
          {
            sub_24F92A5C8();
          }

          v77 = v128;
          *(&v139 + 1) = v128;
          v140 = MEMORY[0x277D21CB8];
          v78 = __swift_allocate_boxed_opaque_existential_1(&v138);
          (*v104)(v78, v123, v77);
          v79 = v117;
          sub_24F92A5F8();
          (*v103)(v118, v79, v130);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_24E61909C(0, v134[2] + 1, 1, v134);
          }

          v81 = v134[2];
          v80 = v134[3];
          if (v81 >= v80 >> 1)
          {
            v134 = sub_24E61909C((v80 > 1), v81 + 1, 1, v134);
          }

          v66 = (v36 + 1);

          v82 = sub_24E824448(v11, v73);
          v11 = v130;
          v83 = v131;
          (*(v131 + 8))(v117, v130, v82);
          (*v122)(v123, v128);
          v84 = v134;
          v134[2] = v81 + 1;
          (*(v83 + 32))(v84 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, v118, v11);
          v32 = v135;
          v67 = v99;
          if (v100 != v36)
          {
            goto LABEL_36;
          }

          goto LABEL_52;
        }
      }

      v36 = (v36 + 1);
      sub_24E5FCA4C(v70, v72);
      sub_24E824448(v11, v73);
      v31 += 5;
      v32 = v135;
      if (v37 == v36)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    v134 = sub_24E61909C((v38 > 1), v37, 1, v134);
  }

LABEL_52:
  v85 = *(v132 + 32);
  if (!v85)
  {
    goto LABEL_57;
  }

  v86 = *(v85 + 16);
  v87 = *(v85 + 24);
  *&v138 = v86;
  *(&v138 + 1) = v87;

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    v136 = v86;
    v137 = v87;
    if (!Artwork.URLTemplate.isSystemImage.getter())
    {

LABEL_57:
      v88 = v110;
      sub_24F9289D8();
      goto LABEL_58;
    }
  }

  sub_24F3E5448(MEMORY[0x277D84F90]);
  v88 = v110;
  sub_24F928948();

LABEL_58:
  (*(v105 + 16))(v129, v132 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v106);
  v89 = sub_24F92A628();
  (*(*(v89 - 8) + 56))(v109, 1, 1, v89);
  v90 = v111;
  (*(v111 + 16))(v108, v88, v127);

  v91 = v112;
  sub_24F92A5E8();
  sub_24F921AE8();
  swift_getWitnessTable();
  sub_24F92A028();
  v92 = sub_24E74EC40();
  v93 = v107;
  swift_retain_n();
  v94 = sub_24F92BEF8();
  *(&v139 + 1) = v92;
  v140 = MEMORY[0x277D225C0];
  *&v138 = v94;
  sub_24F92A958();

  (*(v113 + 8))(v91, v114);
  (*(v90 + 8))(v88, v127);
  __swift_destroy_boxed_opaque_existential_1(&v138);
  return v93;
}

uint64_t sub_24ED0A768(char *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v25 = sub_24F928AD8();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A658();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24F9289E8();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v14 = sub_24F92A9E8();
  v15 = *(a1 + 4);
  v32 = v6;
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v13;
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  v35[0] = v18;
  v35[1] = v17;

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    v33 = v18;
    v34 = v17;
    if (!Artwork.URLTemplate.isSystemImage.getter())
    {

      v13 = v16;
LABEL_6:
      sub_24F9289D8();
      goto LABEL_7;
    }
  }

  sub_24F3E5448(MEMORY[0x277D84F90]);
  v13 = v16;
  sub_24F928948();

LABEL_7:
  v24 = v13;
  (*(v4 + 16))(v26, &a1[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v25);
  v19 = v29;
  (*(v8 + 16))(v10, v13, v29);

  v20 = v30;
  sub_24F92A648();
  sub_24F921B28();
  sub_24F921B08();
  v21 = sub_24E74EC40();
  swift_retain_n();
  v22 = sub_24F92BEF8();
  v35[3] = v21;
  v35[4] = MEMORY[0x277D225C0];
  v35[0] = v22;
  sub_24F92A958();

  (*(v31 + 8))(v20, v32);
  (*(v8 + 8))(v24, v19);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v14;
}

uint64_t sub_24ED0AB9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a3;
  v21 = a5;
  v7 = type metadata accessor for AlertActionImplementation(0, a4, a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = sub_24F928AD8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = *a1;
  sub_24F928A98();
  (*(v8 + 16))(v11, a2, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v8 + 32))(v16 + v14, v11, v7);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;

  return sub_24F928AF8();
}

uint64_t sub_24ED0AD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = type metadata accessor for Action(0);
  v10[4] = sub_24ED0B478(&qword_27F216DE8, type metadata accessor for Action);
  v10[0] = a2;
  type metadata accessor for AlertActionImplementation(0, a4, v7, v8);

  swift_getWitnessTable();
  sub_24F1489C4(v10, a3);

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_24ED0AE48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[4];

    v4(v6);
    sub_24E824448(v4, v5);
  }

  else
  {
    v7 = a1[2];
    if (v7)
    {
      v12[3] = type metadata accessor for Action(0);
      v12[4] = sub_24ED0B478(&qword_27F216DE8, type metadata accessor for Action);
      v12[0] = v7;
      type metadata accessor for AlertActionImplementation(0, a4, v10, v11);
      swift_retain_n();
      swift_getWitnessTable();
      sub_24F1489C4(v12, a3);

      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }
}

uint64_t sub_24ED0AF54()
{

  return swift_deallocObject();
}

uint64_t sub_24ED0AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AlertActionImplementation(0, *(v4 + 16), a3, a4);
  v6 = *(*(v5 - 8) + 80);

  if (*(v4 + 48))
  {
  }

  v7 = v4 + ((v6 + 64) & ~v6);
  v8 = sub_24F921AE8();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v5 + 28);
  v10 = sub_24F921B28();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  return swift_deallocObject();
}

void sub_24ED0B0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for AlertActionImplementation(0, v5, a3, a4) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v4 + 56);
  v10 = *(v4 + 40);
  v11[0] = *(v4 + 24);
  v11[1] = v10;
  v12 = v9;
  sub_24ED0AE48(v11, v4 + v7, *(v4 + v8), v5);
}

uint64_t sub_24ED0B1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E218, &qword_24F997D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED0B214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E218, &qword_24F997D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ED0B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AlertActionImplementation(0, *(v4 + 16), a3, a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 24) & ~*(*v5 + 80));
  v7 = sub_24F921AE8();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v5[9];
  v9 = sub_24F921B28();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_24ED0B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for AlertActionImplementation(0, v5, a3, a4) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24ED0AD80(v4 + v7, *(v4 + v8), *(v4 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t sub_24ED0B478(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t PageGrid.DirectionalValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  v12 = *(v8 + 32);
  v12(a4, v11, a2);
  v14 = type metadata accessor for PageGrid.DirectionalValue(0, a2, a3, v13);
  return (v12)(a4 + *(v14 + 36), a1, a2);
}

__n128 PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = a6[1].n128_u8[0];
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = vdupq_n_s64(0xC0C81C8000000000);
  *(a7 + 32) = v13;
  *(a7 + 33) = v14;
  *(a7 + 40) = *a3;
  *(a7 + 56) = *a1;
  *(a7 + 72) = *a4;
  *(a7 + 88) = *a5;
  result = *a6;
  *(a7 + 104) = *a6;
  *(a7 + 120) = v15;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  *(a7 + 144) = a12;
  *(a7 + 152) = a13;
  return result;
}

uint64_t sub_24ED0B658(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E861840(v2);
  }

  v3 = *(v2 + 2);
  v45[0] = (v2 + 32);
  v45[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 192;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 160;
          if (*v12 >= *(v12 - 20))
          {
            break;
          }

          v14 = *(v12 + 1);
          v35 = *v12;
          v36 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v39 = *(v12 + 4);
          v40 = v17;
          v37 = v15;
          v38 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 9);
          v43 = *(v12 + 8);
          v44 = v20;
          v41 = v18;
          v42 = v19;
          v21 = *(v12 - 5);
          *(v12 + 4) = *(v12 - 6);
          *(v12 + 5) = v21;
          v22 = *(v12 - 7);
          *(v12 + 2) = *(v12 - 8);
          *(v12 + 3) = v22;
          v23 = *(v12 - 1);
          *(v12 + 8) = *(v12 - 2);
          *(v12 + 9) = v23;
          v24 = *(v12 - 3);
          *(v12 + 6) = *(v12 - 4);
          *(v12 + 7) = v24;
          v25 = *(v12 - 9);
          *v12 = *v13;
          *(v12 + 1) = v25;
          v12 -= 160;
          v26 = v36;
          *v13 = v35;
          *(v13 + 1) = v26;
          v27 = v37;
          v28 = v38;
          v29 = v40;
          *(v13 + 4) = v39;
          *(v13 + 5) = v29;
          *(v13 + 2) = v27;
          *(v13 + 3) = v28;
          v30 = v41;
          v31 = v42;
          v32 = v44;
          *(v13 + 8) = v43;
          *(v13 + 9) = v32;
          *(v13 + 6) = v30;
          *(v13 + 7) = v31;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 160;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v35 = v7 + 32;
    *(&v35 + 1) = v6;
    sub_24ED0D864(&v35, v34, v45, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

double PageGrid.componentMeasuringSize(spanning:)(double a1)
{
  if (a1 == -1.0)
  {
    return v1[3] - (v1[44] + v1[42]);
  }

  v3 = fmax(a1, 1.0);
  return (v3 + -1.0) * v1[39] + v3 * v1[36];
}

void PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, float64_t a14@<D7>, double a15, float64_t a16)
{
  v24 = *a3;
  v155 = a5;

  sub_24ED0B658(&v155);

  v25 = v155;
  v26 = *(v155 + 2);
  if (!v26)
  {
    goto LABEL_139;
  }

  v27 = 0;
  v28 = a7 - a14 - a16;
  v29 = *(v155 + 2);
  v134 = a9;
  do
  {
    v30 = &v155[v27];
    v31 = *&v155[v27 + 32];
    v32 = *&v155[v27 + 40];
    if (v31 <= v28 && v28 < v32)
    {
      v39 = *(v30 + 3);
      v38 = v30[64];
      v37 = v30[65];
      v139 = *(v30 + 72);
      v149 = *(v30 + 88);
      v36 = *(v30 + 104);
      v142 = *(v30 + 120);
      v35 = *(v30 + 136);
      v34 = v30[152];
      v41 = *(v30 + 10);
      v40 = *(v30 + 11);
      v153 = *(v30 + 66);
      v154 = *(v30 + 35);
      v42 = *(v30 + 153);
      v43 = *(v30 + 39);
      goto LABEL_11;
    }

    v27 += 160;
    --v29;
  }

  while (v29);
  v31 = *(v155 + 4);
  if (v28 < v31)
  {
    v34 = v155[152];
    v35 = *(v155 + 136);
    v142 = *(v155 + 120);
    v36 = *(v155 + 104);
    v149 = *(v155 + 88);
    v139 = *(v155 + 72);
    v37 = v155[65];
    v38 = v155[64];
    v39 = *(v155 + 3);
    v32 = *(v155 + 5);
    v41 = *(v155 + 10);
    v40 = *(v155 + 11);
    v153 = *(v155 + 66);
    v154 = *(v155 + 35);
    v42 = *(v155 + 153);
    v43 = *(v155 + 39);
LABEL_11:
    *&v152[3] = v43;
    *v152 = v42;
    goto LABEL_13;
  }

  v44 = &v155[160 * v26];
  v31 = *(v44 - 16);
  v32 = *(v44 - 15);
  v39 = *(v44 - 7);
  v38 = *(v44 - 96);
  v37 = *(v44 - 95);
  v153 = *(v44 - 94);
  v154 = *(v44 - 45);
  v139 = *(v44 - 88);
  v149 = *(v44 - 72);
  v36 = *(v44 - 56);
  v142 = *(v44 - 40);
  v35 = *(v44 - 24);
  v34 = *(v44 - 8);
  *&v152[3] = *(v44 - 1);
  *v152 = *(v44 - 7);
  v41 = *v44;
  v40 = *(v44 + 1);
LABEL_13:
  v141 = v39;
  v135 = a11;
  v133 = a13;
  v143 = v36;
  if (v24)
  {
    v45 = *&v36.i64[1];
  }

  else
  {
    v45 = *v36.i64;
  }

  v46 = MEMORY[0x277D768C8];
  v144 = v41;
  v145 = v40;
  v140 = v35;
  v131 = *&v35.i64[1];
  if (v34 >= 2)
  {
    v47 = 1580.0;
    if (a7 <= 1580.0)
    {
      v47 = a7;
    }

    sub_24E6B00B4(v47);
  }

  v150 = a7;

  sub_24F92C228();
  v49 = *(&v149 + 1);
  if (*&v149 == -12345.0 && *(&v149 + 1) == -12345.0)
  {
    if (v24)
    {
      v50 = *(&v141 + 1);
    }

    else
    {
      v50 = *&v141;
    }

    for (i = 0.0; v48 > 0.0; v48 = v48 - v52)
    {
      if (i == 0.0)
      {
        v52 = v50;
      }

      else
      {
        v52 = v45 + v50;
      }

      if (v52 >= v48)
      {
        break;
      }

      i = i + 1.0;
    }
  }

  else
  {
    v53 = *&v139;
    if (v24)
    {
      v53 = *(&v139 + 1);
    }

    if (v53 <= 0.0)
    {
      if (v24)
      {
        v58 = v37;
      }

      else
      {
        v58 = v38;
      }

      i = 1.0;
      if ((v58 & 1) == 0)
      {
        i = *(&v149 + 1);
        if (!v24)
        {
          v138 = vzip1q_s64(v143, v142);
          i = *&v149;
          goto LABEL_57;
        }

        goto LABEL_54;
      }
    }

    else
    {
      for (j = 0.0; v48 > 0.0; v48 = v48 - v56)
      {
        if (j == 0.0)
        {
          v55 = -0.0;
        }

        else
        {
          v55 = v45;
        }

        v56 = v53 + v55;
        if (v56 >= v48)
        {
          break;
        }

        j = j + 1.0;
      }

      if (v24)
      {
        v57 = *(&v149 + 1);
      }

      else
      {
        j = j + (v48 - *v143.i64) / *&v139;
        v57 = *&v149;
      }

      if (v57 >= j)
      {
        i = j;
      }

      else
      {
        i = v57;
      }
    }
  }

  if ((v24 & 1) == 0)
  {
    v59 = vzip1q_s64(v143, v142);
    goto LABEL_56;
  }

LABEL_54:
  v59 = vzip2q_s64(v143, v142);
LABEL_56:
  v138 = v59;
LABEL_57:
  if (*&v141 != -12345.0 || *(&v141 + 1) != -12345.0)
  {
    if (v24)
    {
      v61 = *(&v141 + 1);
    }

    else
    {
      v61 = *&v141;
    }

LABEL_96:
    v77 = v61;
    goto LABEL_97;
  }

  if (a4)
  {
    v62 = *(&v144 + 1);
  }

  else
  {
    v62 = *(v46 + 8);
  }

  if (a4)
  {
    v63 = *&v145.i64[1];
  }

  else
  {
    v63 = *(v46 + 24);
  }

  v64 = *v140.i64;
  v65 = v131;
  if (v34 >= 2)
  {
    v66 = 1580.0;
    if (v150 <= 1580.0)
    {
      v66 = v150;
    }

    v67 = sub_24E6B00B4(v66);
    v49 = *(&v149 + 1);
    v65 = dbl_24F9980E8[v67];
    v64 = a10;
    if (v65 > a10)
    {
      v64 = dbl_24F9980E8[v67];
    }

    if (v65 <= a12)
    {
      v65 = a12;
    }
  }

  v68 = v62 + v64 + v63 + v65;
  v69 = v45 * ceil(i + -1.0);
  if (v28 >= v32)
  {
    v70 = v32;
  }

  else
  {
    v70 = v28;
  }

  v61 = (v70 - v69 - v68) / i;
  if (v24)
  {
    v71 = v37;
  }

  else
  {
    v71 = v38;
  }

  if ((v71 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (v24)
  {
    v72 = v49;
  }

  else
  {
    v72 = *&v149;
  }

  v73 = *v140.i64;
  if (v34 >= 2)
  {
    v74 = 1580.0;
    if (v150 <= 1580.0)
    {
      v74 = v150;
    }

    v136 = v61;
    v129 = v72;
    v75 = sub_24E6B00B4(v74);
    v61 = v136;
    v76 = dbl_24F9980E8[v75];
    v73 = a10;
    if (v76 > a10)
    {
      v73 = dbl_24F9980E8[v75];
    }

    if (v76 <= a12)
    {
      v76 = a12;
    }

    v72 = v129;
    v131 = v76;
  }

  v77 = (v70 - v45 * ceil(v72 + -1.0) - (v62 + v73 + v63 + v131)) / v72;
LABEL_97:
  v78 = *(v25 + 2);
  if (!v78)
  {
    __break(1u);
LABEL_139:
    __break(1u);

    __break(1u);
    return;
  }

  v128 = v77;
  v137 = v61;
  v130 = v34;
  v132 = v37;
  v79 = v38;
  v80 = a1;
  v81 = a2;
  v82 = &v25[160 * v78];
  v83 = *(v82 - 14);
  v84 = *(v82 - 13);
  v85 = *(v82 - 6);
  v127 = *(v82 - 7);
  v87 = *(v82 - 3);
  v86 = *(v82 - 2);
  v88 = *(v82 - 8);
  v89 = *(v82 + 1);
  v125 = *(v82 - 15);
  v126 = *(v82 + 3);

  if (v83 == -12345.0 && v84 == -12345.0)
  {
    if (!v24)
    {
      v85 = v127;
    }

    if (a4)
    {
      v100 = v89;
    }

    else
    {
      v100 = *(MEMORY[0x277D768C8] + 8);
    }

    if (a4)
    {
      v101 = v126;
    }

    else
    {
      v101 = *(MEMORY[0x277D768C8] + 24);
    }

    v99 = v144;
    v98 = v145;
    if (v88 > 1)
    {
      v104 = 1580.0;
      if (v150 <= 1580.0)
      {
        v104 = v150;
      }

      v105 = sub_24E6B00B4(v104);
      v99 = v144;
      v98 = v145;
      v103 = dbl_24F9980E8[v105];
      v102 = a10;
      if (v103 > a10)
      {
        v102 = dbl_24F9980E8[v105];
      }

      if (v103 <= a12)
      {
        v103 = a12;
      }
    }

    else
    {
      v102 = v87;
      v103 = v86;
    }

    v92 = a14;
    v93 = v133;
    v94 = v81;
    v95 = v79;
    v106 = v125;
    v107 = v100 + v102 + v101 + v103;
    v108 = ceil(i + -1.0) * v85;
    if (v28 < v125)
    {
      v106 = v28;
    }

    v91 = (v106 - v108 - v107) / i;
    v96 = v132;
    v97 = v130;
  }

  else
  {
    if (v24)
    {
      v91 = v84;
    }

    else
    {
      v91 = v83;
    }

    v92 = a14;
    v93 = v133;
    v94 = v81;
    v95 = v79;
    v96 = v132;
    v97 = v130;
    v99 = v144;
    v98 = v145;
  }

  if (v97)
  {
    if (v97 == 1)
    {
      v109.f64[0] = v92;
      v110 = a16;
      v109.f64[1] = a16;
      v112 = v140;
      v111 = v141;
      v113 = vaddq_f64(v140, v109);
    }

    else
    {
      v120 = 1580.0;
      if (v150 <= 1580.0)
      {
        v120 = v150;
      }

      v121 = sub_24E6B00B4(v120);
      v99 = v144;
      v98 = v145;
      v92 = a14;
      v122 = &dbl_24F9980E8[v121];
      v123 = vld1q_dup_f64(v122);
      v124.f64[0] = a10;
      v124.f64[1] = a12;
      v113 = vbslq_s8(vcgeq_f64(v124, v123), v124, v123);
      v110 = a16;
      v112 = v140;
      v111 = v141;
    }

    v119 = v143;
    v115 = v137;
  }

  else
  {
    sub_24F92C228();
    sub_24F92C228();
    v110 = a16;
    v99 = v144;
    v98 = v145;
    v92 = a14;
    v115 = v137;
    v116 = i + -1.0;
    if (i + -1.0 < 0.0)
    {
      v116 = 0.0;
    }

    v117 = (v114 - ceil(v116 * *v138.i64 + i * v137)) * 0.5;
    if (v117 < 0.0)
    {
      v117 = 0.0;
    }

    v118 = vdupq_lane_s64(*&v117, 0);
    v112 = v140;
    v111 = v141;
    v113 = vbslq_s8(vcgeq_f64(v118, v140), v118, v140);
    v119 = v143;
  }

  *a6 = v80;
  *(a6 + 8) = v94;
  *(a6 + 16) = v24;
  *(a6 + 24) = v150;
  *(a6 + 32) = a8;
  *(a6 + 40) = v134;
  *(a6 + 48) = a10;
  *(a6 + 56) = v135;
  *(a6 + 64) = a12;
  *(a6 + 72) = v93;
  *(a6 + 80) = v92;
  *(a6 + 88) = a15;
  *(a6 + 96) = v110;
  *(a6 + 104) = v31;
  *(a6 + 112) = v32;
  *(a6 + 120) = v111;
  *(a6 + 136) = v95;
  *(a6 + 137) = v96;
  *(a6 + 142) = v154;
  *(a6 + 138) = v153;
  *(a6 + 144) = v139;
  *(a6 + 160) = v149;
  *(a6 + 176) = v119;
  *(a6 + 192) = v142;
  *(a6 + 208) = v112;
  *(a6 + 224) = v97;
  *(a6 + 228) = *&v152[3];
  *(a6 + 225) = *v152;
  *(a6 + 232) = v99;
  *(a6 + 248) = v98;
  *(a6 + 264) = v25;
  *(a6 + 272) = a4 & 1;
  *(a6 + 280) = i;
  *(a6 + 288) = v115;
  *(a6 + 296) = v128;
  *(a6 + 304) = v91;
  *(a6 + 312) = v138;
  *(a6 + 328) = 0;
  *(a6 + 336) = v113.i64[0];
  *(a6 + 344) = 0;
  *(a6 + 352) = v113.i64[1];
  *(a6 + 360) = 0;
  *(a6 + 368) = v113.i64[0];
  *(a6 + 376) = 0;
  *(a6 + 384) = v113.i64[1];
}

uint64_t PageGrid.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

int64x2_t static PageGrid.DirectionalValue.dynamicValue.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0xC0C81C8000000000);
  *a1 = result;
  return result;
}

uint64_t PageGrid.DirectionalValue.init(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(*(a3 - 8) + 32);
  v12(a3 - 8, a5, a1);
  v10 = a5 + *(type metadata accessor for PageGrid.DirectionalValue(0, a3, a4, v9) + 36);

  return v12(v10, a2, a3);
}

uint64_t PageGrid.DirectionalValue.debugDescription.getter(uint64_t a1)
{
  sub_24F92CDC8();
  MEMORY[0x253050C20](0x202C29482820, 0xE600000000000000);
  sub_24F92CDC8();
  MEMORY[0x253050C20](693512224, 0xE400000000000000);
  return 0;
}

uint64_t static PageGrid.DirectionalValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_24F92AFF8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PageGrid.DirectionalValue(0, a3, a4, v6);
  return sub_24F92AFF8() & 1;
}

uint64_t PageGrid.DirectionalValue.hashValue.getter(uint64_t a1)
{
  sub_24F92D068();
  sub_24F92AEF8();
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0C4FC(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  PageGrid.DirectionalValue.hash(into:)(v4, a2);
  return sub_24F92D0B8();
}

void static PageGrid.HorizontalMargins.zero.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t PageGrid.HorizontalMargins.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x253052A00](2);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x253052A00](v3);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x253052A30](v4);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x253052A30](v5);
}

uint64_t PageGrid.HorizontalMargins.hashValue.getter()
{
  sub_24F92D068();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0C62C()
{
  sub_24F92D068();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0C684()
{
  sub_24F92D068();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_24F92D0B8();
}

__n128 PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = a4[1].n128_u8[0];
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = *a1;
  *(a5 + 32) = 0;
  v12 = vdupq_n_s64(0xC0C81C8000000000);
  *(a5 + 40) = v12;
  *(a5 + 56) = v12;
  *(a5 + 72) = *a2;
  *(a5 + 88) = *a3;
  result = *a4;
  *(a5 + 104) = *a4;
  *(a5 + 120) = v11;
  *(a5 + 128) = a8;
  *(a5 + 136) = a9;
  *(a5 + 144) = a10;
  *(a5 + 152) = a11;
  return result;
}

__n128 PageGrid.Breakpoint.init(range:centeredColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = a4[1].n128_u8[0];
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = *a1;
  *(a5 + 32) = 0;
  v12 = vdupq_n_s64(0xC0C81C8000000000);
  if (v11 == 1)
  {
    LOBYTE(v11) = 0;
  }

  *(a5 + 40) = v12;
  __asm { FMOV            V0.2D, #1.0 }

  *(a5 + 56) = _Q0;
  *(a5 + 72) = *a2;
  *(a5 + 88) = *a3;
  result = *a4;
  *(a5 + 104) = *a4;
  *(a5 + 120) = v11;
  *(a5 + 128) = a8;
  *(a5 + 136) = a9;
  *(a5 + 144) = a10;
  *(a5 + 152) = a11;
  return result;
}

void PageGrid.HorizontalMargins.centered.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t PageGrid.Breakpoint.debugDescription.getter()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AA70);
  sub_24F92CA38();
  MEMORY[0x253050C20](3943982, 0xE300000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E230, &unk_24F997D30);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000019, 0x800000024FA5AAB0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AAD0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AAF0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA5AB10);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA5AB30);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD00000000000002ALL, 0x800000024FA5AB50);
  type metadata accessor for UIEdgeInsets(0);
  sub_24F92CA38();
  return 0;
}

uint64_t PageGrid.Breakpoint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v9 = v1[7];
  v8 = v1[8];
  v22 = v1[9];
  v23 = v1[10];
  v24 = v1[11];
  v25 = v1[12];
  v28 = v1[17];
  v29 = v1[16];
  v26 = v1[19];
  v27 = v1[18];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x253052A30](*&v2);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x253052A30](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x253052A30](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x253052A30](*&v12);
  sub_24F92D088();
  sub_24F92D088();
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x253052A30](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x253052A30](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x253052A30](*&v15);
  if (v8 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v8;
  }

  MEMORY[0x253052A30](*&v16);
  v17 = v22;
  if (v22 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x253052A30](*&v17);
  v18 = v23;
  if (v23 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x253052A30](*&v18);
  v19 = v24;
  if (v24 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x253052A30](*&v19);
  v20 = v25;
  if (v25 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x253052A30](*&v20);
  PageGrid.HorizontalMargins.hash(into:)();

  return UIEdgeInsets.hash(into:)(v29, v28, v27, v26);
}

uint64_t PageGrid.Breakpoint.hashValue.getter()
{
  sub_24F92D068();
  PageGrid.Breakpoint.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED0CCCC()
{
  sub_24F92D068();
  PageGrid.Breakpoint.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED0CD10()
{
  sub_24F92D068();
  PageGrid.Breakpoint.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t PageGrid.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 PageGrid.activeBreakPoint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *(a1 + 96) = *(v1 + 200);
  *(a1 + 112) = v2;
  v3 = *(v1 + 248);
  *(a1 + 128) = *(v1 + 232);
  *(a1 + 144) = v3;
  v4 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v4;
  v5 = *(v1 + 184);
  *(a1 + 64) = *(v1 + 168);
  *(a1 + 80) = v5;
  result = *(v1 + 104);
  v7 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v7;
  return result;
}

double PageGrid.largestPossibleComponentMeasuringSize(spanning:)(double a1)
{
  if (a1 == -1.0)
  {
    return v1[3] - (v1[44] + v1[42]);
  }

  v3 = fmax(a1, 1.0);
  return (v3 + -1.0) * v1[39] + v3 * v1[38];
}

uint64_t PageGrid.debugDescription.getter()
{
  v13 = *(v0 + 264);
  v1 = *(v0 + 272);
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA5AB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA5ABA0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA5ABC0);
  v2 = sub_24F92BA38();
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](0xD000000000000016, 0x800000024FA5ABE0);
  v5 = sub_24F92BA38();
  MEMORY[0x253050C20](v5);

  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA5AC00);
  type metadata accessor for UIEdgeInsets(0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000028, 0x800000024FA5AC20);
  MEMORY[0x253050C20](v3, v4);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AAD0);
  v6 = sub_24F92BA38();
  MEMORY[0x253050C20](v6);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AA90);
  v7 = sub_24F92BA38();
  MEMORY[0x253050C20](v7);

  MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA5AC50);
  v8 = sub_24F92BA38();
  MEMORY[0x253050C20](v8);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AAF0);
  v9 = sub_24F92BA38();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA5AB10);
  v10 = sub_24F92BA38();
  MEMORY[0x253050C20](v10);

  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA5AB30);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AC80);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5ACA0);
  v11 = MEMORY[0x253050F40](v13, &type metadata for PageGrid.Breakpoint);
  MEMORY[0x253050C20](v11);

  return 0;
}

__n128 PageGrid.Breakpoint.centered.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  if (v2 == 1)
  {
    LOBYTE(v2) = 0;
  }

  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(v1 + 56);
  *(a1 + 72) = *(v1 + 72);
  *(a1 + 88) = *(v1 + 88);
  *(a1 + 104) = *(v1 + 104);
  *(a1 + 120) = v2;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *(a1 + 128) = result;
  *(a1 + 144) = v5;
  return result;
}

void PageGrid.centered.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v41 = *(v1 + 32);
  v42 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 264);
  v14 = *(v1 + 272);
  v48[0] = *(v1 + 16);
  v15 = *(v13 + 16);
  if (v15)
  {
    v40 = v3;
    v46 = MEMORY[0x277D84F90];

    sub_24F45855C(0, v15, 0);
    v16 = 0;
    v17 = v46;
    v18 = *(v46 + 16);
    v19 = 160 * v18;
    do
    {
      v20 = *(v13 + v16 + 32);
      v21 = *(v13 + v16 + 48);
      v22 = *(v13 + v16 + 88);
      v23 = *(v13 + v16 + 104);
      v24 = *(v13 + v16 + 120);
      v25 = *(v13 + v16 + 136);
      v26 = *(v13 + v16 + 160);
      v27 = *(v13 + v16 + 176);
      if (*(v13 + v16 + 152) == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v13 + v16 + 152);
      }

      v47 = v17;
      v29 = *(v17 + 24);
      v30 = v18 + 1;
      if (v18 >= v29 >> 1)
      {
        v38 = *(v13 + v16 + 176);
        v39 = *(v13 + v16 + 160);
        v36 = *(v13 + v16 + 104);
        v37 = *(v13 + v16 + 88);
        v34 = *(v13 + v16 + 136);
        v35 = *(v13 + v16 + 120);
        v32 = *(v13 + v16 + 48);
        v33 = *(v13 + v16 + 32);
        sub_24F45855C((v29 > 1), v18 + 1, 1);
        v21 = v32;
        v20 = v33;
        v25 = v34;
        v24 = v35;
        v23 = v36;
        v22 = v37;
        v27 = v38;
        v26 = v39;
        v17 = v47;
      }

      *(v17 + 16) = v30;
      v31 = v17 + v19 + v16;
      *(v31 + 32) = v20;
      *(v31 + 48) = v21;
      *(v31 + 64) = 0;
      *(v31 + 66) = v44;
      *(v31 + 70) = v45;
      *(v31 + 72) = 0;
      *(v31 + 80) = 0;
      *(v31 + 88) = v22;
      *(v31 + 104) = v23;
      *(v31 + 120) = v24;
      *(v31 + 136) = v25;
      *(v31 + 152) = v28;
      *(v31 + 156) = *&v43[3];
      *(v31 + 153) = *v43;
      *(v31 + 160) = v26;
      *(v31 + 176) = v27;
      v16 += 160;
      v18 = v30;
      --v15;
    }

    while (v15);
    v3 = v40;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(v3, v4, v48, v14, v17, a1, v42, v41, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t UIEdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x253052A30](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x253052A30](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x253052A30](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x253052A30](*&v9);
}

uint64_t UIEdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_24F92D068();
  UIEdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_24F92D0B8();
}

uint64_t sub_24ED0D714()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24F92D068();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_24F92D0B8();
}

uint64_t sub_24ED0D788()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24F92D068();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_24F92D0B8();
}

double static PageGrid.DirectionalValue<>.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27F210640 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27F22E220;
  *a1 = xmmword_27F22E220;
  return result;
}

uint64_t sub_24ED0D864(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24E86164C(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_24ED0DEBC((*a3 + 160 * *v85), (*a3 + 160 * *v87), (*a3 + 160 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 160 * v6);
      v10 = 160 * v8;
      v11 = (*a3 + 160 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 40;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 20;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 160 * v6 - 160;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v105 = *(v22 + v10 + 96);
            v107 = *(v22 + v10 + 112);
            v109 = *(v22 + v10 + 128);
            v111 = *(v22 + v10 + 144);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0xA0uLL);
            v21[6] = v105;
            v21[7] = v107;
            v21[8] = v109;
            v21[9] = v111;
            v21[2] = v97;
            v21[3] = v99;
            v21[4] = v101;
            v21[5] = v103;
            *v21 = v93;
            v21[1] = v95;
          }

          ++v20;
          v18 -= 160;
          v10 += 160;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_24E615ED8((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        sub_24ED0DEBC((*a3 + 160 * *v78), (*a3 + 160 * *v80), (*a3 + 160 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 160 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 160);
    if (*v27 >= *(v27 - 160))
    {
LABEL_29:
      ++v6;
      v24 += 160;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v106 = *(v27 + 96);
    v108 = *(v27 + 112);
    v110 = *(v27 + 128);
    v112 = *(v27 + 144);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v94 = *v27;
    v96 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 96) = *(v27 - 64);
    *(v27 + 112) = v29;
    v30 = *(v27 - 16);
    *(v27 + 128) = *(v27 - 32);
    *(v27 + 144) = v30;
    v31 = *(v27 - 112);
    *(v27 + 32) = *(v27 - 128);
    *(v27 + 48) = v31;
    v32 = *(v27 - 80);
    *(v27 + 64) = *(v27 - 96);
    *(v27 + 80) = v32;
    v33 = *(v27 - 144);
    *v27 = *v28;
    *(v27 + 16) = v33;
    v27 -= 160;
    v28[6] = v106;
    v28[7] = v108;
    v28[8] = v110;
    v28[9] = v112;
    v28[2] = v98;
    v28[3] = v100;
    v28[4] = v102;
    v28[5] = v104;
    *v28 = v94;
    v28[1] = v96;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24ED0DEBC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 160;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 160;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[20 * v9] <= a4)
    {
      memmove(a4, __dst, 160 * v9);
    }

    v12 = &v4[20 * v9];
    if (v8 < 160)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 20;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 20;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 20;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0xA0uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[20 * v11] <= a4)
  {
    memmove(a4, __src, 160 * v11);
  }

  v12 = &v4[20 * v11];
  if (v10 >= 160 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 20;
    v5 -= 20;
    v16 = v12;
    do
    {
      v17 = v5 + 20;
      v18 = *(v16 - 20);
      v16 -= 20;
      if (v18 < *v15)
      {
        if (v17 != v6)
        {
          memmove(v5, v6 - 20, 0xA0uLL);
        }

        if (v12 <= v4 || (v6 -= 20, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        memmove(v5, v16, 0xA0uLL);
      }

      v5 -= 20;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v19 = (v12 - v4) / 160;
  if (v6 != v4 || v6 >= &v4[20 * v19])
  {
    memmove(v6, v4, 160 * v19);
  }

  return 1;
}

uint64_t _s12GameStoreKit8PageGridV10BreakpointV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a1 + 32) == *(a2 + 32))
  {
    v3 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 88), *(a2 + 88))), xmmword_24F997D20)) & 0xF;
    v4 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56)))), xmmword_24F997D10)) == 255 && v3 == 0;
    if (v4 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0)
    {
      v6 = *(a2 + 104);
      v5 = *(a2 + 112);
      v7 = *(a2 + 120);
      if (!*(a1 + 120))
      {
        v2 = 0;
        if (*(a2 + 120))
        {
          return v2 & 1;
        }

LABEL_13:
        if (*(a1 + 104) != v6 || *(a1 + 112) != v5)
        {
          return v2 & 1;
        }

LABEL_18:
        v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144)))));
        return v2 & 1;
      }

      if (*(a1 + 120) == 1)
      {
        if (v7 != 1)
        {
          v2 = 0;
          return v2 & 1;
        }

        v2 = 0;
        goto LABEL_13;
      }

      v2 = 0;
      if (v7 == 2 && !(*&v5 | *&v6))
      {
        goto LABEL_18;
      }
    }
  }

  return v2 & 1;
}

BOOL _s12GameStoreKit8PageGridV17HorizontalMarginsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_6:
    if (*a1 == v3)
    {
      return *(a1 + 8) == v2;
    }

    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return v4 == 2 && (*&v2 | *&v3) == 0;
}

unint64_t sub_24ED0E2DC()
{
  result = qword_27F22E238;
  if (!qword_27F22E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E238);
  }

  return result;
}

unint64_t sub_24ED0E350()
{
  result = qword_27F22E240;
  if (!qword_27F22E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E240);
  }

  return result;
}

unint64_t sub_24ED0E3A8()
{
  result = qword_27F22E248;
  if (!qword_27F22E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E248);
  }

  return result;
}

unint64_t sub_24ED0E400()
{
  result = qword_27F22E250[0];
  if (!qword_27F22E250[0])
  {
    type metadata accessor for UIEdgeInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F22E250);
  }

  return result;
}

uint64_t sub_24ED0E460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 264);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED0E4A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 264) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ED0E56C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED0E5DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_24ED0E72C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t sub_24ED0E944(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24ED0E96C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ED0E9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v8 = *(a5 + 80);
  *(a7 + 96) = *(a5 + 64);
  *(a7 + 112) = v8;
  *(a7 + 128) = *(a5 + 96);
  *(a7 + 144) = *(a5 + 112);
  v9 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v9;
  result = *(a5 + 32);
  v11 = *(a5 + 48);
  *(a7 + 64) = result;
  *(a7 + 80) = v11;
  *(a7 + 152) = v7;
  return result;
}

uint64_t OnDeviceAdvertFetchResponse.clientRequestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.iAdId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.ad.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v12 = *(v1 + 112);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 144);
  v5 = v14;
  v6 = *(v1 + 48);
  v11[0] = *(v1 + 32);
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_24ED0EB4C(v11, v10);
}

uint64_t sub_24ED0EB4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E2D8, &qword_24F998130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

JSValue __swiftcall OnDeviceAdvertFetchResponse.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 152);
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isa = result.super.isa;
  if (v4)
  {

    v11 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_24F92C328();
  }

  if (!v5)
  {
LABEL_8:
    if (v6)
    {
      OnDeviceAdvert.makeValue(in:)(in);
      sub_24F92C328();
    }

    if (v7 > 2)
    {
      return isa;
    }

    v13 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_24F92C328();
      return isa;
    }

    goto LABEL_15;
  }

  v12 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v12)
  {
    sub_24F92C328();
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t OnDeviceAdFetchFailReason.rawValue.getter()
{
  v1 = 0x74756F656D6974;
  if (*v0 != 1)
  {
    v1 = 0x64417963696C6F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6961764164416F6ELL;
  }
}

GameStoreKit::OnDeviceAdFetchFailReason_optional __swiftcall OnDeviceAdFetchFailReason.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_24ED0EF60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v4 = 0x64417963696C6F70;
    v3 = 0xEC000000706F7244;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6961764164416F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED0000656C62616CLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74756F656D6974;
  if (*a2 != 1)
  {
    v8 = 0x64417963696C6F70;
    v7 = 0xEC000000706F7244;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6961764164416F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED0000656C62616CLL;
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

unint64_t sub_24ED0F080()
{
  result = qword_27F22E2E0;
  if (!qword_27F22E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E2E0);
  }

  return result;
}

uint64_t sub_24ED0F0D4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED0F18C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24ED0F230()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24ED0F2F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C62616CLL;
  v4 = 0xE700000000000000;
  v5 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v5 = 0x64417963696C6F70;
    v4 = 0xEC000000706F7244;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6961764164416F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit14OnDeviceAdvertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24ED0F37C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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