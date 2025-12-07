uint64_t sub_22B1AB618()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_22B1AB9C8;
  }

  else
  {
    v2 = sub_22B1AB72C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B1AB72C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1AB7E4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "No homes found", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];

  (*(v9 + 8))(v8, v10);
  sub_22B134CDC();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B1AB9C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1ABA88()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B1ABB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B1ABB68()
{
  type metadata accessor for HomeEnergyAlarmManager();
  v0 = swift_allocObject();
  result = sub_22B1ABBF8();
  qword_28140BD60 = v0;
  return result;
}

uint64_t sub_22B1ABBA4()
{
  v0 = sub_22B35DE9C();
  __swift_allocate_value_buffer(v0, qword_28140BD68);
  __swift_project_value_buffer(v0, qword_28140BD68);
  return sub_22B35DD0C();
}

uint64_t sub_22B1ABBF8()
{
  v19 = sub_22B360D6C();
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22B360D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B36062C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  v18 = v0;
  swift_weakInit();

  v9 = sub_22B32CE54(0, 1, 1, v7);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_22B32CE54((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[32 * v11];
  *(v12 + 4) = 0xD000000000000024;
  *(v12 + 5) = 0x800000022B36B9F0;
  *(v12 + 6) = sub_22B1AD178;
  *(v12 + 7) = v8;
  sub_22B11870C();
  sub_22B36061C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  v20 = v7;
  sub_22B1AD180(&qword_2814092F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B1AD1C8();
  sub_22B36104C();
  v13 = sub_22B360DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA580, &unk_22B364F30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22B3634B0;
  *(v14 + 32) = 0x6C7070612E6D6F63;
  *(v14 + 40) = 0xEF6D72616C612E65;
  *(v14 + 48) = v13;
  *(v14 + 56) = v9;

  v15 = v18;
  *(v18 + 16) = v14;

  return v15;
}

uint64_t sub_22B1ABF6C(uint64_t a1)
{
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v1, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v4, v6, v1);
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B36B9F0, v11);
      _os_log_impl(&dword_22B116000, v7, v8, "%{public}s is executing", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23188F650](v10, -1, -1);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);
    os_transaction_create();
    sub_22B1AC20C();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B1AC20C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "[Alarm] Taking extended lifetime", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_22B123DF0(0, 0, v2, &unk_22B364F48, v12);
}

uint64_t sub_22B1AC4AC()
{
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B1AC574;

  return sub_22B199D68(1);
}

uint64_t sub_22B1AC574()
{

  return MEMORY[0x2822009F8](sub_22B1AC670, 0, 0);
}

uint64_t sub_22B1AC670()
{
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B14813C;

  return sub_22B2E45F0();
}

uint64_t sub_22B1AC734()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v6 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "Registering for alarm streams", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = *(v3 + 8);
    v3 += 8;
    v10(v5, v2);
    v1 = *(v1 + 16);
    v11 = *(v1 + 16);

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v2 = 0;
    v13 = (v1 + 56);
    while (v12 < *(v1 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v3 = *(v13 - 3);
      v5 = *(v13 - 2);

      v16 = v15;

      v18 = MEMORY[0x23188EEB0](v17);
      sub_22B124DC0(v3, v5, v16, v14);
      ++v12;
      objc_autoreleasePoolPop(v18);

      v13 += 4;
      if (v11 == v12)
      {
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

void sub_22B1AC99C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v37 = v14;
  v13(v12, a1, v10);
  if (qword_28140AB20 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v37, qword_28140BD68);
  if (sub_22B35DDEC())
  {
    (*(v9 + 24))(v12, v15, v37);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v7, v16, v4);

  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v7;
    v20 = v19;
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v20 = 136315394;
    *(v20 + 4) = sub_22B1A7B20(v34, v35, v36);
    *(v20 + 12) = 2080;
    swift_beginAccess();
    sub_22B1AD180(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v21 = sub_22B36131C();
    v23 = sub_22B1A7B20(v21, v22, v36);
    v31 = v4;
    v24 = v5;
    v25 = v23;

    *(v20 + 14) = v25;
    _os_log_impl(&dword_22B116000, v17, v18, "Setting alarm %s for %s", v20, 0x16u);
    v26 = v32;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    (*(v24 + 8))(v33, v31);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  empty = xpc_dictionary_create_empty();
  swift_beginAccess();
  sub_22B35DE3C();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = 1000000000 * v28;
  if ((v28 * 1000000000) >> 64 == v29 >> 63)
  {
    xpc_dictionary_set_date(empty, "Date", v29);
    xpc_dictionary_set_BOOL(empty, "ShouldWake", 1);
    sub_22B3608CC();
    sub_22B3608CC();
    swift_unknownObjectRetain();
    xpc_set_event();
    swift_unknownObjectRelease_n();

    (*(v9 + 8))(v12, v37);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_22B1ACEB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B1ACF0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(a1, a2, &v14);
    _os_log_impl(&dword_22B116000, v9, v10, "Cancelling alarm %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_22B3608CC();
  sub_22B3608CC();
  xpc_set_event();
}

uint64_t sub_22B1AD180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B1AD1C8()
{
  result = qword_281409340;
  if (!qword_281409340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8BAA80, &qword_22B3653C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409340);
  }

  return result;
}

uint64_t sub_22B1AD22C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B119A60;

  return sub_22B1AC490();
}

_BYTE *AutoBugCaptureIssue.init(type:subType:subTypeContext:process:payload:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a7 = *result;
  *(a7 + 1) = v7;
  *(a7 + 2) = v8;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

uint64_t static AutoBugCaptureManager.sendIssue(_:)(char *a1)
{
  v2 = sub_22B3605EC();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36062C();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v12 = *(a1 + 1);
  v11 = *(a1 + 2);
  v13 = *(a1 + 3);
  if (qword_281408CD8 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 17) = v9;
  *(v14 + 18) = v10;
  *(v14 + 24) = v12;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  aBlock[4] = sub_22B1AF3E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_9;
  v15 = _Block_copy(aBlock);

  sub_22B36060C();
  v20 = MEMORY[0x277D84F90];
  sub_22B1B0694(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v7, v4, v15);
  _Block_release(v15);
  (*(v19 + 8))(v4, v2);
  (*(v17 + 8))(v7, v18);
}

uint64_t AutoBugCaptureDomain.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22B3612FC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B1AD690()
{
  sub_22B36149C();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1AD704(uint64_t a1)
{
  sub_22B36149C();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1AD758@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22B3612FC();

  *a2 = v3 != 0;
  return result;
}

HomeEnergyDaemon::AutoBugCaptureType_optional __swiftcall AutoBugCaptureType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3612FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureType.rawValue.getter()
{
  v1 = 0x6E6F6974636E7546;
  v2 = 0x726576726553;
  if (*v0 != 2)
  {
    v2 = 0x74694B64756F6C43;
  }

  if (*v0)
  {
    v1 = 0x6174614465726F43;
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

uint64_t sub_22B1AD8AC()
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1AD96C(uint64_t a1)
{
  sub_22B3608FC();
}

uint64_t sub_22B1ADA18(uint64_t a1)
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

void sub_22B1ADAE0(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E6F6974636E7546;
  v4 = 0xE600000000000000;
  v5 = 0x726576726553;
  if (*v1 != 2)
  {
    v5 = 0x74694B64756F6C43;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6174614465726F43;
    v2 = 0xE800000000000000;
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

HomeEnergyDaemon::AutoBugCaptureSubType_optional __swiftcall AutoBugCaptureSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3612FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureSubType.rawValue.getter()
{
  v1 = 0x6F69747265737341;
  v2 = 0x6974707572726F43;
  if (*v0 != 2)
  {
    v2 = 4411480;
  }

  if (*v0)
  {
    v1 = 0x7365636976726553;
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

uint64_t sub_22B1ADC4C()
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1ADD1C(uint64_t a1)
{
  sub_22B3608FC();
}

uint64_t sub_22B1ADDD8(uint64_t a1)
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

void sub_22B1ADEB0(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69747265737341;
  v4 = 0xEA00000000006E6FLL;
  v5 = 0x6974707572726F43;
  if (*v1 != 2)
  {
    v5 = 4411480;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x7365636976726553;
    v2 = 0xED0000726F727245;
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

HomeEnergyDaemon::AutoBugCaptureSubTypeContext_optional __swiftcall AutoBugCaptureSubTypeContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B36136C();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AutoBugCaptureSubTypeContext.rawValue.getter()
{
  result = 0x7265206C61746146;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 0x11:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      return result;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xD:
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000022;
      break;
    case 0x10:
      result = 0xD000000000000020;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_22B1AE2B4()
{
  v0 = AutoBugCaptureSubTypeContext.rawValue.getter();
  v2 = v1;
  if (v0 == AutoBugCaptureSubTypeContext.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22B36134C();
  }

  return v5 & 1;
}

uint64_t sub_22B1AE350()
{
  sub_22B36149C();
  AutoBugCaptureSubTypeContext.rawValue.getter();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1AE3B8(uint64_t a1)
{
  AutoBugCaptureSubTypeContext.rawValue.getter();
  sub_22B3608FC();
}

uint64_t sub_22B1AE41C(uint64_t a1)
{
  sub_22B36149C();
  AutoBugCaptureSubTypeContext.rawValue.getter();
  sub_22B3608FC();

  return sub_22B3614DC();
}

unint64_t sub_22B1AE48C@<X0>(unint64_t *a1@<X8>)
{
  result = AutoBugCaptureSubTypeContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B1AE4B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_22B35DE6C();
  v14 = OBJC_IVAR____TtC16HomeEnergyDaemonP33_FBABD7D47CFD66C266159F9B5A379FD822AutoBugCaptureReporter_lastReportedDate;
  swift_beginAccess();
  sub_22B1B05B4(v0 + v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22B1AFCD8(v6);
    (*(v8 + 32))(v3, v13, v7);
LABEL_6:
    v20 = v3;
    v19 = 1;
    (*(v8 + 56))(v20, 0, 1, v7);
    swift_beginAccess();
    sub_22B1B0624(v20, v0 + v14);
    swift_endAccess();
    return v19;
  }

  v22 = v3;
  v23 = v0;
  v15 = *(v8 + 32);
  v15(v10, v6, v7);
  sub_22B35DD3C();
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v10, v7);
  if (v17 >= 86400.0)
  {
    v3 = v22;
    v0 = v23;
    v15(v22, v13, v7);
    goto LABEL_6;
  }

  v18(v13, v7);
  return 0;
}

void sub_22B1AE764(unsigned __int8 *a1)
{
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = *a1;
  v11 = a1[1];
  v51 = a1[2];
  v52 = v11;
  v12 = *(a1 + 2);
  v53 = *(a1 + 1);
  v13 = *(a1 + 3);
  v14 = sub_22B1AE4B4();
  v48 = v10;
  if (v14)
  {
    v49 = *(v1 + 16);
    v15 = sub_22B36081C();
    v47 = v1;
    v50 = v3;
    v16 = sub_22B36081C();

    v17 = sub_22B36081C();

    LOBYTE(aBlock) = v51;
    AutoBugCaptureSubTypeContext.rawValue.getter();
    v18 = sub_22B36081C();

    v19 = sub_22B36081C();
    v46 = [v49 signatureWithDomain:v15 type:v16 subType:v17 subtypeContext:v18 detectedProcess:v19 triggerThresholdValues:0];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = v50;
    v21 = __swift_project_value_buffer(v50, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v6, v21, v20);

    v22 = sub_22B36050C();
    v23 = sub_22B360D2C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v60 = v25;
      *v24 = 136315138;
      LOBYTE(aBlock) = v48;
      BYTE1(aBlock) = v52;
      BYTE2(aBlock) = v51;
      v55 = v53;
      v56 = v12;
      v57 = v13;

      v26 = AutoBugCaptureIssue.description.getter();
      v28 = v27;

      v29 = sub_22B1A7B20(v26, v28, &v60);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22B116000, v22, v23, "Submitting snapshot request to ABC for signature: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      (*(v4 + 8))(v6, v50);
    }

    else
    {

      (*(v4 + 8))(v6, v20);
    }

    v40 = v46;
    v39 = v47;
    if (v46 && (aBlock = 0, v41 = v46, sub_22B3606DC(), v41, aBlock))
    {
      v42 = sub_22B3606CC();

      if (!v13)
      {
LABEL_14:
        v43 = 0;
LABEL_17:
        v58 = sub_22B1AFD40;
        v59 = v39;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = sub_22B1AEF4C;
        v57 = &block_descriptor_36;
        v44 = _Block_copy(&aBlock);

        [v49 snapshotWithSignature:v42 duration:0 event:v43 payload:v44 reply:0.0];
        _Block_release(v44);

        return;
      }
    }

    else
    {
      v42 = 0;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    sub_22B2A5FD8(v13);
    v43 = sub_22B3606CC();

    goto LABEL_17;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v9, v30, v3);

  v31 = sub_22B36050C();
  v32 = sub_22B360D2C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v60 = v34;
    *v33 = 136315138;
    LOBYTE(aBlock) = v48;
    BYTE1(aBlock) = v52;
    BYTE2(aBlock) = v51;
    v55 = v53;
    v56 = v12;
    v57 = v13;

    v35 = AutoBugCaptureIssue.description.getter();
    v50 = v3;
    v37 = v36;

    v38 = sub_22B1A7B20(v35, v37, &v60);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_22B116000, v31, v32, "Not reporting to AutoBugCapture because we are rate limited: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23188F650](v34, -1, -1);
    MEMORY[0x23188F650](v33, -1, -1);

    (*(v4 + 8))(v9, v50);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_22B1AEF4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_22B3606EC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_22B1AEFDC()
{
  sub_22B1AFCD8(v0 + OBJC_IVAR____TtC16HomeEnergyDaemonP33_FBABD7D47CFD66C266159F9B5A379FD822AutoBugCaptureReporter_lastReportedDate);

  return swift_deallocClassInstance();
}

uint64_t sub_22B1AF048()
{
  v0 = sub_22B360D6C();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22B36062C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_22B360D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B11870C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_22B36060C();
  v7[1] = MEMORY[0x277D84F90];
  sub_22B1B0694(&qword_2814092F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  result = sub_22B360DBC();
  qword_281408CE0 = result;
  return result;
}

uint64_t sub_22B1AF298()
{
  type metadata accessor for AutoBugCaptureReporter(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D6AFC0]) init];
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemonP33_FBABD7D47CFD66C266159F9B5A379FD822AutoBugCaptureReporter_lastReportedDate;
  v2 = sub_22B35DE9C();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_281408CC8 = v0;
  return result;
}

void sub_22B1AF338(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281408CC0 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    v7 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v7;
    a4 = v6;
  }

  v8 = a1;
  v9 = BYTE2(a1);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  sub_22B1AE764(&v8);
}

uint64_t AutoBugCaptureIssue.process.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AutoBugCaptureIssue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x23188E270](0x72656E45656D6F48, 0xEA00000000007967);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  v3 = 0x6E6F6974636E7546;
  v4 = 0xE600000000000000;
  v5 = 0x726576726553;
  v6 = 0xE800000000000000;
  if (v1 != 2)
  {
    v5 = 0x74694B64756F6C43;
    v4 = 0xE800000000000000;
  }

  if (v1)
  {
    v3 = 0x6174614465726F43;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v1 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x23188E270](v7, v8);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  v9 = 0xE90000000000006ELL;
  v10 = 0x6F69747265737341;
  v11 = 0xEA00000000006E6FLL;
  v12 = 0x6974707572726F43;
  if (v2 != 2)
  {
    v12 = 4411480;
    v11 = 0xE300000000000000;
  }

  if (v2)
  {
    v10 = 0x7365636976726553;
    v9 = 0xED0000726F727245;
  }

  if (v2 <= 1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (v2 <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  MEMORY[0x23188E270](v13, v14);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B36122C();
  return 0;
}

unint64_t sub_22B1AF634()
{
  result = qword_27D8BA588;
  if (!qword_27D8BA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA588);
  }

  return result;
}

unint64_t sub_22B1AF68C()
{
  result = qword_27D8BA590;
  if (!qword_27D8BA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA590);
  }

  return result;
}

unint64_t sub_22B1AF6E4()
{
  result = qword_27D8BA598;
  if (!qword_27D8BA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA598);
  }

  return result;
}

unint64_t sub_22B1AF73C()
{
  result = qword_27D8BA5A0;
  if (!qword_27D8BA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA5A0);
  }

  return result;
}

uint64_t sub_22B1AF7D0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_22B1AF860(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AutoBugCaptureSubTypeContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoBugCaptureSubTypeContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AutoBugCaptureReporter(uint64_t a1)
{
  result = qword_281408CA0;
  if (!qword_281408CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B1AFAC4(uint64_t a1)
{
  sub_22B180EAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22B1AFB64(unsigned int *a1, int a2)
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

_WORD *sub_22B1AFBB4(_WORD *result, int a2, int a3)
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

uint64_t sub_22B1AFC40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B1AFC88(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22B1AFCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B1AFD44(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  if (!a1)
  {
    return;
  }

  v52 = sub_22B36084C();
  v53 = v12;
  sub_22B36110C();
  if (*(a1 + 16) && (v13 = sub_22B33B248(v54), (v14 & 1) != 0))
  {
    sub_22B170C58(*(a1 + 56) + 32 * v13, v55);
    sub_22B1B0560(v54);
    if ((swift_dynamicCast() & 1) != 0 && v52 == 1)
    {
      v52 = sub_22B36084C();
      v53 = v15;
      sub_22B36110C();
      if (*(a1 + 16) && (v16 = sub_22B33B248(v54), (v17 & 1) != 0))
      {
        sub_22B170C58(*(a1 + 56) + 32 * v16, v55);
        sub_22B1B0560(v54);
        if (swift_dynamicCast())
        {
          v19 = v52;
          v18 = v53;
LABEL_43:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v43 = __swift_project_value_buffer(v2, qword_28140BD10);
          swift_beginAccess();
          (*(v3 + 16))(v11, v43, v2);

          v44 = sub_22B36050C();
          v45 = sub_22B360D2C();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v55[0] = v47;
            *v46 = 136315138;
            v48 = sub_22B1A7B20(v19, v18, v55);

            *(v46 + 4) = v48;
            _os_log_impl(&dword_22B116000, v44, v45, "Diagnostic reporter snapshot accepted with sessionID [%s]", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v47);
            MEMORY[0x23188F650](v47, -1, -1);
            MEMORY[0x23188F650](v46, -1, -1);
          }

          else
          {
          }

          (*(v3 + 8))(v11, v2);
          return;
        }
      }

      else
      {
        sub_22B1B0560(v54);
      }

      v19 = 0x6E776F6E6B6E55;
      v18 = 0xE700000000000000;
      goto LABEL_43;
    }
  }

  else
  {
    sub_22B1B0560(v54);
  }

  v52 = sub_22B36084C();
  v53 = v20;
  sub_22B36110C();
  if (*(a1 + 16) && (v21 = sub_22B33B248(v54), (v22 & 1) != 0))
  {
    sub_22B170C58(*(a1 + 56) + 32 * v21, v55);
    sub_22B1B0560(v54);
    if (swift_dynamicCast())
    {
      v23 = v52;
      v52 = sub_22B36084C();
      v53 = v24;
      sub_22B36110C();
      if (*(a1 + 16) && (v25 = sub_22B33B248(v54), (v26 & 1) != 0))
      {
        sub_22B170C58(*(a1 + 56) + 32 * v25, v55);
        sub_22B1B0560(v54);
        if (swift_dynamicCast())
        {
          v27 = v53;
          v51 = v52;
          goto LABEL_27;
        }
      }

      else
      {
        sub_22B1B0560(v54);
      }

      v51 = 0x6E776F6E6B6E55;
      v27 = 0xE700000000000000;
LABEL_27:
      v32 = 0x6465746365707865;
      v33 = 0xE800000000000000;
      if (v23 != *MEMORY[0x277D6B048] && v23 != *MEMORY[0x277D6B050])
      {
        if (v23 == *MEMORY[0x277D6B030] || v23 == *MEMORY[0x277D6B090])
        {
          v33 = 0xE800000000000000;
        }

        else
        {
          v32 = 0x7463657078656E75;
          v33 = 0xEA00000000006465;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v8, v35, v2);

      v36 = sub_22B36050C();
      v37 = sub_22B360D2C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v50 = v27;
        v39 = v38;
        v40 = swift_slowAlloc();
        v55[0] = v40;
        *v39 = 136315650;
        v41 = sub_22B1A7B20(v32, v33, v55);

        *(v39 + 4) = v41;
        *(v39 + 12) = 2048;
        *(v39 + 14) = v23;
        *(v39 + 22) = 2080;
        v42 = sub_22B1A7B20(v51, v50, v55);

        *(v39 + 24) = v42;
        _os_log_impl(&dword_22B116000, v36, v37, "Diagnostic reporter snapshot rejected with%s\nreason: %ld (%s)", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v40, -1, -1);
        MEMORY[0x23188F650](v39, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v8, v2);
      return;
    }
  }

  else
  {
    sub_22B1B0560(v54);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v28, v2);
  v29 = sub_22B36050C();
  v30 = sub_22B360D2C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22B116000, v29, v30, "Diagnostic reporter snapshot rejected with unknown reason", v31, 2u);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B1B05B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1B0624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1B0694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TOUPeaksPreprocessor.padFillTieredPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B0734, 0, 0);
}

uint64_t sub_22B1B0734()
{
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0x546C6C6946646150, 0xED00006465726569, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22B1B07E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v129 = a5;
  v122 = a3;
  v136 = a7;
  v137 = a8;
  v130 = a4;
  v121 = a2;
  v123 = a1;
  v128 = a9;
  v134 = a10;
  v135 = a6;
  v10 = sub_22B35FF8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v117 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B35FFBC();
  v119 = *(v13 - 8);
  v120 = v13;
  MEMORY[0x28223BE20](v13);
  v118 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  MEMORY[0x28223BE20](v15 - 8);
  v125 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v115 = &v113 - v18;
  MEMORY[0x28223BE20](v19);
  v116 = &v113 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v113 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5B0, qword_22B3653F0);
  MEMORY[0x28223BE20](v27 - 8);
  v124 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v113 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v113 - v33;
  v35 = sub_22B36032C();
  v36 = *(v35 - 8);
  v132 = v35;
  v133 = v36;
  MEMORY[0x28223BE20](v35);
  v114 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v113 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v113 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v113 - v45;
  v48 = MEMORY[0x28223BE20](v47);
  v131 = &v113 - v49;
  v126 = v11;
  v127 = v10;
  v50 = *(v11 + 56);
  v138 = v34;
  v51 = v10;
  v52 = v129;
  v53 = v130;
  v50(v34, 1, 1, v51, v48);
  if ((v53 != 0x546C6C6946646150 || v52 != 0xED00006465726569) && (sub_22B36134C() & 1) == 0)
  {
    if (v53 == 0x466C6C6946646150 && v52 == 0xEC00000064657869 || (sub_22B36134C() & 1) != 0)
    {
      sub_22B1B19C4(0x6465786946, 0xE500000000000000, 997, v31);
      v68 = v138;
      sub_22B123284(v138, &qword_27D8BA5B0, qword_22B3653F0);
      sub_22B1B1CFC(v31, v68);
      sub_22B170BE0(v123, v23, &qword_27D8BA5A8, &qword_22B3653E8);
      v66 = v132;
      v67 = v133;
      if ((*(v133 + 48))(v23, 1, v132) == 1)
      {
        sub_22B123284(v23, &qword_27D8BA5A8, &qword_22B3653E8);
        v58 = v126;
LABEL_28:
        v65 = v131;
        v82 = v119;
        v81 = v120;
        v83 = v118;
        (*(v119 + 104))(v118, *MEMORY[0x277D18138], v120);

        sub_22B35FFAC();
        v133 = v84;
        (*(v82 + 8))(v83, v81);
        goto LABEL_29;
      }

      v72 = v67;
      v73 = *(v67 + 32);
      v73(v43, v23, v66);
      v74 = sub_22B36030C();
      v76 = v75;

      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v74 & 0xFFFFFFFFFFFFLL;
      }

      v58 = v126;
      if (!v77)
      {
        (*(v72 + 8))(v43, v66);
        v67 = v72;
        goto LABEL_28;
      }

      v65 = v131;
      v73(v131, v43, v66);
LABEL_21:
      v57 = v127;
      v67 = v72;
      goto LABEL_31;
    }

    v66 = v132;
    if ((v53 != 0x466C6C6946646150 || v52 != 0xEB0000000074616CLL) && (sub_22B36134C() & 1) == 0)
    {
      v65 = v131;
      if ((v53 != 0xD000000000000012 || 0x800000022B36BD10 != v52) && (sub_22B36134C() & 1) == 0)
      {
        sub_22B134CDC();
        swift_allocError();
        *v108 = 8;
        swift_willThrow();
        return sub_22B123284(v138, &qword_27D8BA5B0, qword_22B3653F0);
      }

      sub_22B1B19C4(0x726F707075736E55, 0xEB00000000646574, 404, v31);
      v97 = v138;
      sub_22B123284(v138, &qword_27D8BA5B0, qword_22B3653F0);
      sub_22B1B1CFC(v31, v97);
      v98 = v115;
      sub_22B170BE0(v123, v115, &qword_27D8BA5A8, &qword_22B3653E8);
      v67 = v133;
      if ((*(v133 + 48))(v98, 1, v66) == 1)
      {
        sub_22B123284(v98, &qword_27D8BA5A8, &qword_22B3653E8);
        v58 = v126;
      }

      else
      {
        v102 = *(v67 + 32);
        v103 = v114;
        v102(v114, v98, v66);
        v104 = sub_22B36030C();
        v106 = v105;

        v107 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v107 = v104 & 0xFFFFFFFFFFFFLL;
        }

        v58 = v126;
        if (v107)
        {
          v102(v65, v103, v66);
          goto LABEL_30;
        }

        (*(v67 + 8))(v103, v66);
      }

      v110 = v119;
      v109 = v120;
      v111 = v118;
      (*(v119 + 104))(v118, *MEMORY[0x277D18120], v120);

      sub_22B35FFAC();
      v130 = v112;
      (*(v110 + 8))(v111, v109);
LABEL_29:
      sub_22B36031C();
LABEL_30:
      v57 = v127;
      goto LABEL_31;
    }

    sub_22B1B19C4(1952541766, 0xE400000000000000, 998, v31);
    v78 = v138;
    sub_22B123284(v138, &qword_27D8BA5B0, qword_22B3653F0);
    sub_22B1B1CFC(v31, v78);
    v79 = v116;
    sub_22B170BE0(v123, v116, &qword_27D8BA5A8, &qword_22B3653E8);
    v72 = v133;
    v80 = (*(v133 + 48))(v79, 1, v66);
    v65 = v131;
    if (v80 == 1)
    {
      sub_22B123284(v79, &qword_27D8BA5A8, &qword_22B3653E8);
      v58 = v126;
    }

    else
    {
      v92 = *(v72 + 32);
      v92(v40, v79, v66);
      v93 = sub_22B36030C();
      v95 = v94;

      v96 = HIBYTE(v95) & 0xF;
      if ((v95 & 0x2000000000000000) == 0)
      {
        v96 = v93 & 0xFFFFFFFFFFFFLL;
      }

      v58 = v126;
      if (v96)
      {
        v92(v65, v40, v66);
        goto LABEL_21;
      }

      (*(v72 + 8))(v40, v66);
    }

    v100 = v119;
    v99 = v120;
    v101 = v118;
    (*(v119 + 104))(v118, *MEMORY[0x277D18130], v120);

    sub_22B35FFAC();
    (*(v100 + 8))(v101, v99);
    sub_22B36031C();
    v57 = v127;
    v67 = v133;
    goto LABEL_31;
  }

  sub_22B1B19C4(0x646572656954, 0xE600000000000000, 999, v31);
  v54 = v138;
  sub_22B123284(v138, &qword_27D8BA5B0, qword_22B3653F0);
  sub_22B1B1CFC(v31, v54);
  sub_22B170BE0(v123, v26, &qword_27D8BA5A8, &qword_22B3653E8);
  v56 = v132;
  v55 = v133;
  if ((*(v133 + 48))(v26, 1, v132) == 1)
  {
    sub_22B123284(v26, &qword_27D8BA5A8, &qword_22B3653E8);
    v58 = v126;
    v57 = v127;
LABEL_16:
    v66 = v56;
    v70 = v119;
    v69 = v120;
    v71 = v118;
    (*(v119 + 104))(v118, *MEMORY[0x277D18140], v120);

    sub_22B35FFAC();
    (*(v70 + 8))(v71, v69);
    v65 = v131;
    sub_22B36031C();
    v67 = v133;
    goto LABEL_31;
  }

  v59 = *(v55 + 32);
  v59(v46, v26, v56);
  v60 = sub_22B36030C();
  v62 = v61;

  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v60 & 0xFFFFFFFFFFFFLL;
  }

  v58 = v126;
  if (!v63)
  {
    (*(v55 + 8))(v46, v56);
    v57 = v127;
    goto LABEL_16;
  }

  v64 = v131;
  v59(v131, v46, v56);
  v65 = v64;
  v57 = v127;
  v66 = v56;
  v67 = v55;
LABEL_31:
  v85 = v124;
  sub_22B170BE0(v138, v124, &qword_27D8BA5B0, qword_22B3653F0);
  if ((*(v58 + 48))(v85, 1, v57) == 1)
  {
    sub_22B123284(v85, &qword_27D8BA5B0, qword_22B3653F0);
    v86 = v125;
    (*(v67 + 16))(v125, v65, v66);
    (*(v67 + 56))(v86, 0, 1, v66);

    sub_22B36020C();
  }

  else
  {
    v87 = v117;
    (*(v58 + 32))(v117, v85, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5B8, &unk_22B367600);
    v88 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_22B3634B0;
    (*(v58 + 16))(v89 + v88, v87, v57);
    v90 = v125;
    (*(v67 + 16))(v125, v65, v66);
    (*(v67 + 56))(v90, 0, 1, v66);

    sub_22B36020C();
    (*(v58 + 8))(v87, v57);
  }

  sub_22B123284(v138, &qword_27D8BA5B0, qword_22B3653F0);
  return (*(v67 + 8))(v65, v66);
}

uint64_t static TOUPeaksPreprocessor.padFillUnsupportedPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B1754, 0, 0);
}

uint64_t sub_22B1B1754()
{
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0xD000000000000012, 0x800000022B36BD10, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t static TOUPeaksPreprocessor.padFillFlatPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B1834, 0, 0);
}

uint64_t sub_22B1B1834()
{
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0x466C6C6946646150, 0xEB0000000074616CLL, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t static TOUPeaksPreprocessor.padFillFixedPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B1918, 0, 0);
}

uint64_t sub_22B1B1918()
{
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0x466C6C6946646150, 0xEC00000064657869, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22B1B19C4@<X0>(uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24[2] = a4;
  v24[3] = a5;
  v24[1] = a3;
  v25 = a6;
  v6 = sub_22B35DDBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F58C();
  sub_22B35DD9C();
  v20 = *(v7 + 8);
  v20(v12, v6);
  (*(v17 + 56))(v15, 0, 1, v16);
  (*(v17 + 32))(v19, v15, v16);
  sub_22B35F54C();
  sub_22B35DDAC();
  v20(v9, v6);
  v21 = v25;
  sub_22B35FF6C();
  (*(v17 + 8))(v19, v16);
  v22 = sub_22B35FF8C();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_22B1B1CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5B0, qword_22B3653F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1B1D6C(char a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B124D88;

  return v9(a1 & 1, a2, a3);
}

uint64_t sub_22B1B1E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C66666FLL;
  }

  else
  {
    v3 = 0x6C62616863616572;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x6C62616863616572;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22B36134C();
  }

  return v8 & 1;
}

uint64_t sub_22B1B1F44()
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1B1FCC(uint64_t a1)
{
  sub_22B3608FC();
}

uint64_t sub_22B1B2040(uint64_t a1)
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1B20C4@<X0>(char *a2@<X8>)
{
  v3 = sub_22B3612FC();

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

void sub_22B1B2124(uint64_t *a1@<X8>)
{
  v2 = 0x6C62616863616572;
  if (*v1)
  {
    v2 = 0x656E696C66666FLL;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22B1B2168()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_22B1B2A70(sub_22B1181F8, v4);
  sub_22B36055C();

  sub_22B36056C();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Started reachability monitor", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22B1B23B0()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22B1B2A70(0, 0);
  sub_22B36055C();

  sub_22B36057C();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Stopped reachability monitor", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22B1B25A0()
{

  sub_22B1B2A48(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReachabilityStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReachabilityStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B1B276C()
{
  result = qword_27D8BA5C0;
  if (!qword_27D8BA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA5C0);
  }

  return result;
}

void *sub_22B1B27C0()
{
  v1 = sub_22B360D6C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_22B36062C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22B360D8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B36059C();
  swift_allocObject();
  v0[2] = sub_22B36058C();
  v8[0] = sub_22B11870C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_22B36060C();
  v8[1] = MEMORY[0x277D84F90];
  sub_22B118988(&qword_2814092F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  v0[3] = sub_22B360DBC();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_22B1B2A70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B1B2A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_22B35F01C();
  v4[45] = v5;
  v4[46] = *(v5 - 8);
  v4[47] = swift_task_alloc();
  v6 = sub_22B35DF1C();
  v4[48] = v6;
  v4[49] = *(v6 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v7 = sub_22B36052C();
  v4[52] = v7;
  v4[53] = *(v7 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1B2CA4, 0, 0);
}

uint64_t sub_22B1B2CA4()
{
  v48 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = v0[52];
  v3 = v0[53];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[68] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[69] = v5;
  v0[70] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44 = v5;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Got Home and SiteID", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[52];
  v12 = v0[53];
  v13 = v0[49];
  v41 = v0[48];
  v43 = v0[51];
  v14 = v0[41];

  v15 = *(v12 + 8);
  v0[71] = v15;
  v46 = v15;
  v15(v9, v11);
  v44(v10, v4, v11);
  (*(v13 + 16))(v43, v14, v41);
  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[66];
  v20 = v0[52];
  v21 = v0[51];
  v23 = v0[48];
  v22 = v0[49];
  if (v18)
  {
    v45 = v0[52];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v47 = v25;
    *v24 = 136315138;
    sub_22B127FBC();
    v26 = sub_22B36131C();
    v42 = v19;
    v28 = v27;
    v40 = v17;
    v29 = *(v22 + 8);
    v29(v21, v23);
    v30 = sub_22B1A7B20(v26, v28, &v47);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_22B116000, v16, v40, "Home: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23188F650](v25, -1, -1);
    MEMORY[0x23188F650](v24, -1, -1);

    v31 = v42;
    v32 = v45;
  }

  else
  {

    v29 = *(v22 + 8);
    v29(v21, v23);
    v31 = v19;
    v32 = v20;
  }

  v46(v31, v32);
  v0[72] = v29;
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v34 = v0[46];
  v33 = v0[47];
  v35 = v0[45];
  v36 = qword_28140BDD0;
  v0[73] = qword_28140BDD0;
  v37 = *MEMORY[0x277D073C8];
  v38 = *(v34 + 104);
  v0[74] = v38;
  v0[75] = (v34 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v38(v33, v37, v35);

  return MEMORY[0x2822009F8](sub_22B1B3064, v36, 0);
}

uint64_t sub_22B1B3064()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  *(v0 + 784) = sub_22B143DD8(*(v0 + 336), *(v0 + 344), v1) & 1;
  v4 = *(v2 + 8);
  *(v0 + 608) = v4;
  *(v0 + 616) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);

  return MEMORY[0x2822009F8](sub_22B1B3114, 0, 0);
}

uint64_t sub_22B1B3114()
{
  if (*(v0 + 784) == 1)
  {
    (*(v0 + 552))(*(v0 + 520), *(v0 + 544), *(v0 + 416));
    v1 = sub_22B36050C();
    v2 = sub_22B360D2C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 568);
    v5 = *(v0 + 520);
    v6 = *(v0 + 416);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v1, v2, "Site owned by user. Cannot add self to share", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v4(v5, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 584);
    (*(v0 + 592))(*(v0 + 376), *MEMORY[0x277D073D0], *(v0 + 360));

    return MEMORY[0x2822009F8](sub_22B1B3370, v10, 0);
  }
}

uint64_t sub_22B1B3370()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  *(v0 + 785) = sub_22B143DD8(*(v0 + 336), *(v0 + 344), v2) & 1;
  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22B1B3414, 0, 0);
}

uint64_t sub_22B1B3414()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 416);
  if (*(v0 + 785) == 1)
  {
    v1(*(v0 + 512), *(v0 + 544), *(v0 + 416));
    v4 = sub_22B36050C();
    v5 = sub_22B360D2C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 568);
    v8 = *(v0 + 512);
    v9 = *(v0 + 416);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v4, v5, "Site shared to user.", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v7(v8, v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 504);
    v14 = objc_allocWithZone(type metadata accessor for HomeManager());
    *(v0 + 624) = sub_22B241DC4(1, 0);
    v1(v13, v2, v3);
    v15 = sub_22B36050C();
    v16 = sub_22B360D2C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v15, v16, "[ShareManager] Load Homes", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v18 = *(v0 + 568);
    v19 = *(v0 + 504);
    v20 = *(v0 + 416);

    v18(v19, v20);
    v21 = swift_task_alloc();
    *(v0 + 632) = v21;
    *v21 = v0;
    v21[1] = sub_22B1B3750;

    return sub_22B242190();
  }
}

uint64_t sub_22B1B3750()
{

  return MEMORY[0x2822009F8](sub_22B1B384C, 0, 0);
}

uint64_t sub_22B1B384C()
{
  v1 = v0[78];
  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  v3 = [*(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[52];
  if (v3 == 1)
  {
    v4(v0[61], v5, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "[ShareManager] Loaded Homes", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = v0[71];
    v11 = v0[61];
    v12 = v0[52];

    v10(v11, v12);
    if ([*(v1 + v2) hasOptedToHH2])
    {
      v13 = swift_task_alloc();
      v0[80] = v13;
      *v13 = v0;
      v13[1] = sub_22B1B3C04;

      return sub_22B2430B4();
    }

    (v0[69])(v0[60], v0[68], v0[52]);
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    v24 = os_log_type_enabled(v15, v16);
    v18 = v0[78];
    v19 = v0[71];
    v20 = v0[60];
    v21 = v0[52];
    if (v24)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "[ShareManager] Not opted into HH2";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  v4(v0[62], v5, v6);
  v15 = sub_22B36050C();
  v16 = sub_22B360D1C();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[78];
  v19 = v0[71];
  v20 = v0[62];
  v21 = v0[52];
  if (!v17)
  {
    goto LABEL_13;
  }

  v22 = swift_slowAlloc();
  *v22 = 0;
  v23 = "[ShareManager] Data sync state not good";
LABEL_12:
  _os_log_impl(&dword_22B116000, v15, v16, v23, v22, 2u);
  MEMORY[0x23188F650](v22, -1, -1);

LABEL_14:
  v19(v20, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_22B1B3C04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = v1;

  if (v1)
  {

    v4 = sub_22B1B4E7C;
  }

  else
  {
    v4 = sub_22B1B3D24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B1B3D24()
{
  v124 = v0;
  (*(v0 + 552))(*(v0 + 472), *(v0 + 544), *(v0 + 416));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[ShareManager] Got homes", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v4 = *(v0 + 648);
  v5 = *(v0 + 568);
  v6 = *(v0 + 472);
  v7 = *(v0 + 416);

  v5(v6, v7);
  if (v4 >> 62)
  {
    goto LABEL_59;
  }

  v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 664) = v8;
  if (!v8)
  {
LABEL_60:
    v109 = *(v0 + 624);

    v110 = *(v0 + 8);

    return v110();
  }

LABEL_5:
  v9 = 0;
  v113 = (v0 + 312);
  v120 = *(v0 + 656);
  v10 = &off_2786FB000;
  v11 = &off_2786FB000;
  *(&v12 + 1) = 4;
  *&v12 = 138412290;
  v112 = v12;
  while (1)
  {
    v14 = *(v0 + 648);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x23188EAC0](v9);
    }

    else
    {
      if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v15 = *(v14 + 8 * v9 + 32);
    }

    v13 = v15;
    *(v0 + 672) = v15;
    *(v0 + 680) = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v108 = sub_22B36109C();
      *(v0 + 664) = v108;
      if (!v108)
      {
        goto LABEL_60;
      }

      goto LABEL_5;
    }

    v16 = *(v0 + 576);
    v17 = *(v0 + 400);
    v18 = *(v0 + 384);
    v19 = [v15 uniqueIdentifier];
    sub_22B35DEFC();

    v20 = sub_22B35DEEC();
    v16(v17, v18);
    if (v20)
    {
      v21 = [v13 restrictedGuests];
      sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
      v22 = sub_22B360A5C();

      v23 = [v13 v10[485]];
      *v113 = v23;
      v24 = swift_task_alloc();
      *(v24 + 16) = v113;
      v25 = sub_22B207D24(sub_22B1B7804, v24, v22);

      if ((v25 & 1) == 0)
      {
        break;
      }
    }

LABEL_8:

    v9 = *(v0 + 680);
    if (v9 == *(v0 + 664))
    {
      goto LABEL_60;
    }
  }

  v26 = [v13 owner];
  v27 = [v13 v10[485]];
  v28 = v27;
  if (v26)
  {
    if (v27)
    {
      v29 = sub_22B360FBC();

      if (v29)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    v28 = v26;
  }

  else if (!v27)
  {
    goto LABEL_8;
  }

LABEL_24:
  (*(v0 + 552))(*(v0 + 464), *(v0 + 544), *(v0 + 416));
  v30 = sub_22B36050C();
  v31 = sub_22B360D2C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22B116000, v30, v31, "[ShareManager] Not home owner", v32, 2u);
    MEMORY[0x23188F650](v32, -1, -1);
  }

  v33 = *(v0 + 568);
  v34 = *(v0 + 464);
  v35 = *(v0 + 416);

  v33(v34, v35);
  v36 = [v13 residentDevices];
  sub_22B128014(0, &qword_27D8BA5C8, 0x277CD1D68);
  v37 = sub_22B360A5C();
  *(v0 + 688) = v37;

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 696) = v38;
    if (v38)
    {
      goto LABEL_28;
    }

    goto LABEL_7;
  }

  v79 = sub_22B36109C();
  *(v0 + 696) = v79;
  if (!v79)
  {
LABEL_7:

    goto LABEL_8;
  }

LABEL_28:
  v39 = 0;
  while (1)
  {
    v40 = *(v0 + 688);
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x23188EAC0](v39);
    }

    else
    {
      if (v39 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v41 = *(v40 + 8 * v39 + 32);
    }

    v42 = v41;
    *(v0 + 704) = v41;
    *(v0 + 712) = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (([v41 v11[500]] == 3 || objc_msgSend(v42, v11[500]) == 2) && (objc_msgSend(v42, sel_isCurrentDevice, v112) & 1) == 0)
    {
      break;
    }

LABEL_30:
    v39 = *(v0 + 712);
    if (v39 == *(v0 + 696))
    {
      v13 = *(v0 + 672);
      goto LABEL_7;
    }
  }

  v43 = *(v0 + 672);
  (*(v0 + 552))(*(v0 + 456), *(v0 + 544), *(v0 + 416));
  v44 = v42;
  v45 = v43;
  v46 = sub_22B36050C();
  v47 = sub_22B360D2C();

  v117 = v44;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 672);
    v114 = *(v0 + 456);
    v115 = *(v0 + 568);
    v49 = *(v0 + 416);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v123[0] = v52;
    *v50 = 138412546;
    v53 = [v44 device];
    *(v50 + 4) = v53;
    *v51 = v53;
    *(v50 + 12) = 2080;
    v54 = [v48 name];
    v55 = sub_22B36084C();
    v57 = v56;

    v58 = sub_22B1A7B20(v55, v57, v123);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_22B116000, v46, v47, "[ShareManager] Found resident at %@ for %s", v50, 0x16u);
    sub_22B12F10C(v51);
    MEMORY[0x23188F650](v51, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x23188F650](v52, -1, -1);
    MEMORY[0x23188F650](v50, -1, -1);

    v115(v114, v49);
  }

  else
  {
    v59 = *(v0 + 568);
    v60 = *(v0 + 456);
    v61 = *(v0 + 416);

    v59(v60, v61);
  }

  v63 = *(v0 + 336);
  v62 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D0, &qword_22B365580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  *(inited + 32) = 0x4449656D6F68;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_22B35DECC();
  *(inited + 56) = v65;
  *(inited + 64) = 0x444965746973;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v63;
  *(inited + 88) = v62;

  v66 = sub_22B321ED0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D8, &qword_22B365588);
  swift_arrayDestroy();
  sub_22B35D82C();
  swift_allocObject();
  sub_22B35D81C();
  *(v0 + 320) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5E0, &unk_22B365590);
  sub_22B1B786C();
  *(v0 + 720) = sub_22B35D80C();
  *(v0 + 728) = v67;
  v11 = &off_2786FB000;
  if (v120)
  {

    (*(v0 + 552))(*(v0 + 440), *(v0 + 544), *(v0 + 416));
    v68 = v120;
    v69 = sub_22B36050C();
    v70 = sub_22B360D1C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = v112;
      v73 = v120;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v74;
      *v72 = v74;
      _os_log_impl(&dword_22B116000, v69, v70, "[ShareManager] Failed to send modern message due to %@", v71, 0xCu);
      sub_22B12F10C(v72);
      MEMORY[0x23188F650](v72, -1, -1);
      MEMORY[0x23188F650](v71, -1, -1);
      v75 = v69;
      v69 = *(v0 + 704);
    }

    else
    {
      v75 = *(v0 + 704);
    }

    v10 = &off_2786FB000;
    v76 = *(v0 + 568);
    v77 = *(v0 + 440);
    v78 = *(v0 + 416);

    v76(v77, v78);
    v120 = 0;
    goto LABEL_30;
  }

  v121 = *(v0 + 672);
  v80 = *(v0 + 552);
  v81 = *(v0 + 544);
  v82 = *(v0 + 448);
  v83 = *(v0 + 416);

  v80(v82, v81, v83);
  v84 = v121;
  v85 = sub_22B36050C();
  v86 = sub_22B360D2C();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = *(v0 + 672);
    v122 = *(v0 + 568);
    v118 = *(v0 + 448);
    v116 = *(v0 + 416);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v123[0] = v89;
    *v88 = 136315138;
    v90 = [v87 name];
    v91 = sub_22B36084C();
    v93 = v92;

    v94 = sub_22B1A7B20(v91, v93, v123);

    *(v88 + 4) = v94;
    _os_log_impl(&dword_22B116000, v85, v86, "[ShareManager] Send message for %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x23188F650](v89, -1, -1);
    MEMORY[0x23188F650](v88, -1, -1);

    v122(v118, v116);
  }

  else
  {
    v95 = *(v0 + 568);
    v96 = *(v0 + 448);
    v97 = *(v0 + 416);

    v95(v96, v97);
  }

  v119 = *(v0 + 672);
  v98 = *(v0 + 352);
  v99 = [v117 device];
  v100 = [v99 hmmmMessageDestination];
  *(v0 + 736) = v100;

  v101 = sub_22B36081C();
  *(v0 + 744) = v101;
  v102 = sub_22B35DCCC();
  *(v0 + 752) = v102;
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v103 = sub_22B360F9C();
  v104 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v103 transportRestriction:2];
  *(v0 + 760) = v104;

  v105 = swift_allocObject();
  v105[2] = 0xD000000000000018;
  v105[3] = 0x800000022B36BDC0;
  v105[4] = v98;
  *(v0 + 272) = sub_22B1B78E8;
  *(v0 + 280) = v105;
  *(v0 + 240) = MEMORY[0x277D85DD0];
  *(v0 + 248) = 1107296256;
  *(v0 + 256) = sub_22B1B6578;
  *(v0 + 264) = &block_descriptor_11;
  v106 = _Block_copy((v0 + 240));
  *(v0 + 768) = v106;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22B1B4BC8;
  v107 = swift_continuation_init();
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5F0, &unk_22B3655A0);
  *(v0 + 176) = MEMORY[0x277D85DD0];
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_22B1B6640;
  *(v0 + 200) = &block_descriptor_10;
  *(v0 + 208) = v107;
  [v119 sendModernMessagingRequestWithMessageName:v101 destination:v100 requestPayload:v102 options:v104 responseHandler:v106 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22B1B4BC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 776) = v1;
  if (v1)
  {
    v2 = sub_22B1B5078;
  }

  else
  {

    v2 = sub_22B1B4CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B1B4CEC()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 704);
  v9 = *(v0 + 624);

  sub_22B12F174(v7, v6);
  _Block_release(v1);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B1B4E7C()
{
  (*(v0 + 552))(*(v0 + 432), *(v0 + 544), *(v0 + 416));
  v1 = sub_22B36050C();
  v2 = sub_22B360D1C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 624);
  v5 = *(v0 + 568);
  v6 = *(v0 + 432);
  v7 = *(v0 + 416);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[ShareManager] Failed to get homes", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
    v9 = v1;
  }

  else
  {
    v9 = *(v0 + 624);
    v4 = v1;
  }

  v5(v6, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B1B5078(uint64_t a1)
{
  v119 = v1;
  v117 = (v1 + 312);
  v2 = *(v1 + 768);
  v3 = *(v1 + 760);
  v4 = *(v1 + 752);
  v5 = *(v1 + 744);
  v6 = *(v1 + 736);
  v7 = *(v1 + 728);
  v8 = *(v1 + 720);
  swift_willThrow();
  sub_22B12F174(v8, v7);

  _Block_release(v2);
  v9 = *(v1 + 776);
  (*(v1 + 552))(*(v1 + 440), *(v1 + 544), *(v1 + 416));
  v10 = v9;
  v11 = sub_22B36050C();
  v12 = sub_22B360D1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_22B116000, v11, v12, "[ShareManager] Failed to send modern message due to %@", v13, 0xCu);
    sub_22B12F10C(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
    v17 = v11;
    v11 = *(v1 + 704);
  }

  else
  {
    v17 = *(v1 + 704);
  }

  v18 = *(v1 + 568);
  v19 = *(v1 + 440);
  v20 = *(v1 + 416);

  v21 = v18(v19, v20);
  while (1)
  {
    v22 = *(v1 + 712);
    if (v22 == *(v1 + 696))
    {
      break;
    }

LABEL_31:
    v50 = *(v1 + 688);
    if ((v50 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x23188EAC0](v22);
    }

    else
    {
      if (v22 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x282200938](v21);
      }

      v51 = *(v50 + 8 * v22 + 32);
    }

    v52 = v51;
    *(v1 + 704) = v51;
    *(v1 + 712) = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_52:
      v96 = *(v1 + 568);
      v97 = *(v1 + 448);
      v98 = *(v1 + 416);

      v96(v97, v98);
      goto LABEL_53;
    }

    if (([v51 status]== 3 || [v52 status]== 2) && ![v52 isCurrentDevice])
    {
      v53 = *(v1 + 672);
      (*(v1 + 552))(*(v1 + 456), *(v1 + 544), *(v1 + 416));
      v54 = v52;
      v55 = v53;
      v56 = sub_22B36050C();
      v57 = sub_22B360D2C();

      v114 = v54;
      if (os_log_type_enabled(v56, v57))
      {
        v110 = v57;
        v58 = *(v1 + 672);
        v112 = *(v1 + 456);
        v113 = *(v1 + 568);
        v111 = *(v1 + 416);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v118[0] = v109;
        *v59 = 138412546;
        v61 = [v54 device];
        *(v59 + 4) = v61;
        *v60 = v61;
        *(v59 + 12) = 2080;
        v62 = [v58 name];
        v63 = sub_22B36084C();
        v65 = v64;

        v66 = sub_22B1A7B20(v63, v65, v118);

        *(v59 + 14) = v66;
        _os_log_impl(&dword_22B116000, v56, v110, "[ShareManager] Found resident at %@ for %s", v59, 0x16u);
        sub_22B12F10C(v60);
        MEMORY[0x23188F650](v60, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x23188F650](v109, -1, -1);
        MEMORY[0x23188F650](v59, -1, -1);

        v113(v112, v111);
      }

      else
      {
        v67 = *(v1 + 568);
        v68 = *(v1 + 456);
        v69 = *(v1 + 416);

        v67(v68, v69);
      }

      v71 = *(v1 + 336);
      v70 = *(v1 + 344);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D0, &qword_22B365580);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B3634C0;
      *(inited + 32) = 0x4449656D6F68;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = sub_22B35DECC();
      *(inited + 56) = v73;
      *(inited + 64) = 0x444965746973;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v71;
      *(inited + 88) = v70;

      v74 = sub_22B321ED0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D8, &qword_22B365588);
      swift_arrayDestroy();
      sub_22B35D82C();
      swift_allocObject();
      sub_22B35D81C();
      *(v1 + 320) = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5E0, &unk_22B365590);
      sub_22B1B786C();
      *(v1 + 720) = sub_22B35D80C();
      *(v1 + 728) = v75;
      goto LABEL_49;
    }
  }

  v23 = *(v1 + 672);

  while (1)
  {
    v24 = *(v1 + 680);
    if (v24 == *(v1 + 664))
    {
      v76 = *(v1 + 624);

      v77 = *(v1 + 8);

      return v77();
    }

    v25 = *(v1 + 648);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x23188EAC0](*(v1 + 680));
    }

    else
    {
      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v26 = *(v25 + 8 * v24 + 32);
    }

    v27 = v26;
    *(v1 + 672) = v26;
    *(v1 + 680) = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v28 = *(v1 + 576);
    v29 = *(v1 + 400);
    v30 = *(v1 + 384);
    v31 = [v26 uniqueIdentifier];
    sub_22B35DEFC();

    LOBYTE(v31) = sub_22B35DEEC();
    v28(v29, v30);
    if ((v31 & 1) == 0)
    {
      goto LABEL_7;
    }

    v32 = [v27 restrictedGuests];
    sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
    v33 = sub_22B360A5C();

    v34 = [v27 currentUser];
    *v117 = v34;
    v35 = swift_task_alloc();
    *(v35 + 16) = v117;
    v36 = sub_22B207D24(sub_22B1B7804, v35, v33);

    if (v36)
    {
      goto LABEL_7;
    }

    v37 = [v27 owner];
    v38 = [v27 currentUser];
    v39 = v38;
    if (v37)
    {
      if (v38)
      {
        v40 = sub_22B360FBC();

        if (v40)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }

      v39 = v37;
    }

    else if (!v38)
    {
      goto LABEL_7;
    }

LABEL_24:
    (*(v1 + 552))(*(v1 + 464), *(v1 + 544), *(v1 + 416));
    v41 = sub_22B36050C();
    v42 = sub_22B360D2C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22B116000, v41, v42, "[ShareManager] Not home owner", v43, 2u);
      MEMORY[0x23188F650](v43, -1, -1);
    }

    v44 = *(v1 + 568);
    v45 = *(v1 + 464);
    v46 = *(v1 + 416);

    v44(v45, v46);
    v47 = [v27 residentDevices];
    sub_22B128014(0, &qword_27D8BA5C8, 0x277CD1D68);
    v48 = sub_22B360A5C();
    *(v1 + 688) = v48;

    if (v48 >> 62)
    {
      v21 = sub_22B36109C();
      *(v1 + 696) = v21;
      if (v21)
      {
LABEL_30:
        v22 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v1 + 696) = v49;
      if (v49)
      {
        goto LABEL_30;
      }
    }

LABEL_7:
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v79 = *(v1 + 672);
  v80 = *(v1 + 552);
  v81 = *(v1 + 544);
  v82 = *(v1 + 448);
  v83 = *(v1 + 416);

  v80(v82, v81, v83);
  v84 = v79;
  v52 = sub_22B36050C();
  v85 = sub_22B360D2C();

  if (!os_log_type_enabled(v52, v85))
  {
    goto LABEL_52;
  }

  v86 = *(v1 + 672);
  v115 = *(v1 + 568);
  v87 = *(v1 + 448);
  v88 = *(v1 + 416);
  v89 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  v118[0] = v90;
  *v89 = 136315138;
  v91 = [v86 name];
  v92 = sub_22B36084C();
  v94 = v93;

  v95 = sub_22B1A7B20(v92, v94, v118);

  *(v89 + 4) = v95;
  _os_log_impl(&dword_22B116000, v52, v85, "[ShareManager] Send message for %s", v89, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v90);
  MEMORY[0x23188F650](v90, -1, -1);
  MEMORY[0x23188F650](v89, -1, -1);

  v115(v87, v88);
LABEL_53:
  v116 = *(v1 + 672);
  v99 = *(v1 + 352);
  v100 = [v114 device];
  v101 = [v100 hmmmMessageDestination];
  *(v1 + 736) = v101;

  v102 = sub_22B36081C();
  *(v1 + 744) = v102;
  v103 = sub_22B35DCCC();
  *(v1 + 752) = v103;
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v104 = sub_22B360F9C();
  v105 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v104 transportRestriction:2];
  *(v1 + 760) = v105;

  v106 = swift_allocObject();
  v106[2] = 0xD000000000000018;
  v106[3] = 0x800000022B36BDC0;
  v106[4] = v99;
  *(v1 + 272) = sub_22B1B78E8;
  *(v1 + 280) = v106;
  *(v1 + 240) = MEMORY[0x277D85DD0];
  *(v1 + 248) = 1107296256;
  *(v1 + 256) = sub_22B1B6578;
  *(v1 + 264) = &block_descriptor_11;
  v107 = _Block_copy((v1 + 240));
  *(v1 + 768) = v107;

  *(v1 + 16) = v1;
  *(v1 + 24) = sub_22B1B4BC8;
  v108 = swift_continuation_init();
  *(v1 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5F0, &unk_22B3655A0);
  *(v1 + 176) = MEMORY[0x277D85DD0];
  *(v1 + 184) = 1107296256;
  *(v1 + 192) = sub_22B1B6640;
  *(v1 + 200) = &block_descriptor_10;
  *(v1 + 208) = v108;
  [v116 sendModernMessagingRequestWithMessageName:v102 destination:v101 requestPayload:v103 options:v105 responseHandler:v107 completionHandler:?];
  v21 = v1 + 16;

  return MEMORY[0x282200938](v21);
}

void sub_22B1B5E94(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v65 = sub_22B36052C();
  v12 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = v58 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = v58 - v20;
  if (a4)
  {
    v22 = a4;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = v65;
    v24 = __swift_project_value_buffer(v65, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v21, v24, v23);
    v25 = a4;
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = a4;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22B116000, v26, v27, "[ShareManager] %@", v28, 0xCu);
      sub_22B12F10C(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v21, v23);
    return;
  }

  v64 = a1;
  if (a2 >> 60 == 15)
  {
    return;
  }

  v58[0] = v18;
  v58[1] = v19;
  v63 = a2;
  sub_22B144B30(v64, a2);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v32 = v65;
  v33 = __swift_project_value_buffer(v65, qword_28140BD10);
  swift_beginAccess();
  v34 = *(v12 + 16);
  v62 = v33;
  v59 = v34;
  v60 = v12 + 16;
  v34(v16, v33, v32);
  v35 = sub_22B36050C();
  v36 = sub_22B360D2C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22B116000, v35, v36, "[ShareManager] got response", v37, 2u);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v38 = *(v12 + 8);
  v61 = v12 + 8;
  v38(v16, v65);
  v39 = a3;
  v40 = [a3 messageName];
  v41 = sub_22B36084C();
  v43 = v42;

  if (v41 == a5 && v43 == a6)
  {

LABEL_18:
    sub_22B35D7FC();
    swift_allocObject();
    sub_22B35D7EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5F8, &unk_22B3655B0);
    sub_22B1B790C();
    v45 = v63;
    v46 = v64;
    sub_22B35D7DC();

    sub_22B1CA75C(v66);
    sub_22B11EDC0(v46, v45);

    return;
  }

  v44 = sub_22B36134C();

  if (v44)
  {
    goto LABEL_18;
  }

  v47 = v38;
  v48 = v58[0];
  v49 = v65;
  v59(v58[0], v62, v65);
  v50 = v39;
  v51 = sub_22B36050C();
  v52 = sub_22B360D2C();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v64;
  if (v53)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = [v50 peerDestination];
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&dword_22B116000, v51, v52, "[ShareManager] Failed to decode response with destination %@", v55, 0xCu);
    sub_22B12F10C(v56);
    MEMORY[0x23188F650](v56, -1, -1);
    MEMORY[0x23188F650](v55, -1, -1);
  }

  sub_22B11EDC0(v54, v63);

  v47(v48, v49);
}

uint64_t sub_22B1B6578(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_22B35DCDC();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, v11, a4);

  sub_22B11EDC0(v6, v10);
}

uint64_t sub_22B1B6640(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22B1B6774(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1B68B4, 0, 0);
}

uint64_t sub_22B1B68B4()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = qword_28140A0C8;
    v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[15];
    v4 = v0[11];
    v5 = v0[12];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    v0[16] = v6;
    swift_beginAccess();
    v7 = *(v5 + 16);
    v0[17] = v7;
    v0[18] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "[ShareManager] Got homes", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v11 = v0[15];
    v12 = v0[11];
    v13 = v0[12];

    v14 = *(v13 + 8);
    v0[19] = v14;
    v14(v11, v12);
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_22B1B6AE8;

    return sub_22B2430B4();
  }

  else
  {

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_22B1B6AE8(uint64_t a1)
{
  *(*v2 + 168) = a1;

  if (v1)
  {

    v3 = sub_22B1B74F0;
  }

  else
  {
    v3 = sub_22B1B6C04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1B6C04()
{
  v55 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    goto LABEL_40;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[21]; v2; v50 = v0)
  {
    v4 = v0[8];
    v5 = 0;
    sub_22B35F45C();
    v49 = v1 & 0xC000000000000001;
    v45 = i + 32;
    v46 = v1 & 0xFFFFFFFFFFFFFF8;
    v47 = v2;
    v48 = (v4 + 8);
    while (1)
    {
      if (v49)
      {
        v6 = MEMORY[0x23188EAC0](v5, v0[21]);
      }

      else
      {
        if (v5 >= *(v46 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v45 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v51 = v5 + 1;
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[7];
      v52 = sub_22B35F3AC();
      v53 = v7;
      v12 = v11;
      v13 = [v7 uniqueIdentifier];
      sub_22B35DEFC();

      sub_22B35DECC();
      v14 = *v48;
      (*v48)(v8, v10);
      sub_22B35F1EC();
      sub_22B35DEAC();
      v15 = sub_22B35DECC();
      v1 = v16;
      v14(v9, v10);
      if (v52 == v15 && v12 == v1)
      {
      }

      else
      {
        v17 = sub_22B36134C();

        if ((v17 & 1) == 0)
        {
          v20 = v53;
LABEL_5:

          v0 = v50;
          goto LABEL_6;
        }
      }

      v18 = [v53 owner];
      v19 = [v53 currentUser];
      v20 = v19;
      if (!v18)
      {

        if (!v20)
        {
          v0 = v50;
LABEL_34:
          v43 = v0[6];

          goto LABEL_35;
        }

        goto LABEL_5;
      }

      if (!v19)
      {

        v20 = v18;
        goto LABEL_5;
      }

      sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
      v1 = sub_22B360FBC();

      v0 = v50;
      if (v1)
      {
        goto LABEL_34;
      }

LABEL_6:
      ++v5;
      if (v51 == v47)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v2 = sub_22B36109C();
    i = v0[21];
  }

LABEL_22:

  v21 = sub_22B35F3AC();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v0[5];
    (v0[17])(v0[14], v0[16], v0[11]);
    v26 = v25;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[19];
    v31 = v0[14];
    v32 = v0[11];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v34;
      *v33 = 136315138;
      v35 = sub_22B35F3AC();
      v37 = sub_22B1A7B20(v35, v36, &v54);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22B116000, v27, v28, "[ShareManager] Home not found for %s. Scheduling delete", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23188F650](v34, -1, -1);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    v30(v31, v32);
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v50[22] = qword_28140BDD8;
    v38 = sub_22B35F3AC();
    v40 = v39;
    v50[23] = v39;
    v41 = swift_task_alloc();
    v50[24] = v41;
    *v41 = v50;
    v41[1] = sub_22B1B716C;

    return sub_22B23653C(v38, v40);
  }

  else
  {
    v43 = v0[6];
LABEL_35:

    v44 = v0[1];

    return v44(0);
  }
}

uint64_t sub_22B1B716C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {

    v6 = swift_task_alloc();
    v4[27] = v6;
    *v6 = v5;
    v6[1] = sub_22B1B7650;
    v7 = v4[5];
  }

  else
  {

    v8 = swift_task_alloc();
    v4[26] = v8;
    *v8 = v5;
    v8[1] = sub_22B1B7334;
    v7 = a1;
  }

  return sub_22B23D0CC(v7);
}

uint64_t sub_22B1B7334()
{

  if (v0)
  {

    v1 = sub_22B1B79EC;
  }

  else
  {
    v1 = sub_22B1B744C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22B1B744C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_22B1B74F0()
{
  (*(v0 + 136))(*(v0 + 104), *(v0 + 128), *(v0 + 88));
  v1 = sub_22B36050C();
  v2 = sub_22B360D1C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 48);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[ShareManager] Failed to get homes", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  else
  {

    v1 = v7;
  }

  v4(v5, v6);

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_22B1B7650()
{

  if (v0)
  {

    v1 = sub_22B1B7768;
  }

  else
  {
    v1 = sub_22B1B79F0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22B1B7768()
{

  v1 = *(v0 + 8);

  return v1(1);
}

unint64_t sub_22B1B786C()
{
  result = qword_27D8BA5E8;
  if (!qword_27D8BA5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA5E0, &unk_22B365590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA5E8);
  }

  return result;
}

unint64_t sub_22B1B790C()
{
  result = qword_27D8BA600;
  if (!qword_27D8BA600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA5F8, &unk_22B3655B0);
    sub_22B1B7998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA600);
  }

  return result;
}

unint64_t sub_22B1B7998()
{
  result = qword_27D8BA608;
  if (!qword_27D8BA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA608);
  }

  return result;
}

uint64_t sub_22B1B79F4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = xmmword_22B3655C0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x800000022B36BF00;
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon19AMIRecordsProcessor_sharedEKSignPoster;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3604AC();
  v3 = __swift_project_value_buffer(v2, qword_28140BC88);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  if (sub_22B35EEBC())
  {
    if (qword_281408E18 != -1)
    {
      swift_once();
    }

    v4 = qword_28140BCA0;
    if (qword_28140BCA0)
    {
      v5 = sub_22B36081C();
      v6 = [v4 BOOLForKey_];

      if (v6)
      {
        *(v0 + 17) = 1;
      }

      v7 = sub_22B36081C();
      v8 = [v4 BOOLForKey_];

      if (v8)
      {
        *(v0 + 17) = 1;
      }
    }
  }

  return v0;
}

uint64_t sub_22B1B7BB4(uint64_t a1, char a2)
{
  *(v3 + 1141) = a2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v2;
  v4 = sub_22B3604BC();
  *(v3 + 400) = v4;
  *(v3 + 408) = *(v4 - 8);
  *(v3 + 416) = swift_task_alloc();
  v5 = sub_22B36052C();
  *(v3 + 424) = v5;
  *(v3 + 432) = *(v5 - 8);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = *(type metadata accessor for CDUsagePointRecords(0) - 8);
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = swift_task_alloc();
  *(v3 + 568) = swift_task_alloc();
  v6 = sub_22B3604AC();
  *(v3 + 576) = v6;
  *(v3 + 584) = *(v6 - 8);
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  *(v3 + 640) = swift_task_alloc();
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  v7 = sub_22B36047C();
  *(v3 + 672) = v7;
  *(v3 + 680) = *(v7 - 8);
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1B7F10, 0, 0);
}

uint64_t sub_22B1B7F10(uint64_t a1)
{
  v2 = sub_22B35F12C();
  v1[89] = v2;
  v1[90] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = sub_22B35F43C();
    v1[91] = v6;
    v1[92] = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if (sub_22B35F02C())
      {
        v10 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v10 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          v11 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v11 = v8 & 0xFFFFFFFFFFFFLL;
          }

          if (v11)
          {
            v1[93] = OBJC_IVAR____TtC16HomeEnergyDaemon19AMIRecordsProcessor_sharedEKSignPoster;
            sub_22B36048C();
            sub_22B36045C();
            v12 = sub_22B36048C();
            v13 = sub_22B360E2C();
            if (sub_22B360FDC())
            {
              v14 = swift_slowAlloc();
              *v14 = 0;
              v15 = sub_22B36046C();
              _os_signpost_emit_with_name_impl(&dword_22B116000, v12, v13, v15, "FindGenerationMeters", "", v14, 2u);
              MEMORY[0x23188F650](v14, -1, -1);
            }

            v16 = v1[88];
            v17 = v1[87];
            v18 = v1[85];
            v19 = v1[84];

            (*(v18 + 16))(v17, v16, v19);
            sub_22B3604EC();
            swift_allocObject();
            v1[94] = sub_22B3604DC();
            v1[45] = MEMORY[0x277D84FA0];
            if (qword_2814096B8 != -1)
            {
              swift_once();
            }

            v20 = qword_28140BCE8;
            v1[95] = qword_28140BCE8;

            return MEMORY[0x2822009F8](sub_22B1B8308, v20, 0);
          }
        }
      }
    }
  }

  v21 = v1[1];

  return v21(0);
}

uint64_t sub_22B1B8308()
{
  sub_22B32C2B8(v0[89], v0[90], v0[91], v0[92], 0, 0);
  v0[96] = v1;
  v0[97] = 0;

  return MEMORY[0x2822009F8](sub_22B1B83D0, 0, 0);
}

uint64_t sub_22B1B83D0()
{
  v201 = v0;
  v1 = *(v0 + 768);
  if (!v1)
  {

LABEL_56:
    v169 = sub_22B36048C();
    sub_22B3604CC();
    v170 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v172 = *(v0 + 408);
      v171 = *(v0 + 416);
      v173 = *(v0 + 400);

      sub_22B3604FC();

      if ((*(v172 + 88))(v171, v173) == *MEMORY[0x277D85B00])
      {
        v174 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
        v174 = "";
      }

      v175 = swift_slowAlloc();
      *v175 = 0;
      v176 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v169, v170, v176, "FindGenerationMeters", v174, v175, 2u);
      MEMORY[0x23188F650](v175, -1, -1);
    }

    v177 = *(v0 + 704);
    v178 = *(v0 + 688);
    v179 = *(v0 + 680);
    v180 = *(v0 + 672);

    v181 = *(v179 + 8);
    v181(v178, v180);
    v181(v177, v180);
    swift_beginAccess();
    v199 = *(v0 + 360);

    v182 = *(v0 + 8);

    return v182(v199);
  }

  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 664);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = __swift_project_value_buffer(v4, qword_28140BC88);
  *(v0 + 784) = v5;
  v6 = *(v3 + 16);
  *(v0 + 792) = v6;
  *(v0 + 800) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_22B36048C();
  v8 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v7, v8, v10, "Start: Loop UsagePoints", "", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  v11 = *(v0 + 664);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);

  v14 = *(v12 + 8);
  *(v0 + 808) = v14;
  v14(v11, v13);
  v15 = *(v1 + 16);
  *(v0 + 816) = v15;
  if (v15)
  {
    v16 = *(v0 + 568);
    v17 = *(*(v0 + 520) + 80);
    *(v0 + 1136) = v17;
    v18 = *(v0 + 776);
    *(v0 + 832) = 0;
    *(v0 + 824) = v18;
    v19 = *(v0 + 768);
    if (*(v19 + 16))
    {
      v20 = *(v0 + 792);
      v21 = *(v0 + 784);
      v22 = *(v0 + 656);
      v23 = *(v0 + 576);
      sub_22B1CA1F0(v19 + ((v17 + 32) & ~v17), v16, type metadata accessor for CDUsagePointRecords);
      v20(v22, v21, v23);
      v24 = sub_22B36048C();
      v25 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v24, v25, v27, "Start: Processing UsagePoint", "", v26, 2u);
        MEMORY[0x23188F650](v26, -1, -1);
      }

      v28 = *(v0 + 808);
      v29 = *(v0 + 792);
      v30 = *(v0 + 784);
      v31 = *(v0 + 656);
      v32 = *(v0 + 648);
      v33 = *(v0 + 576);

      v28(v31, v33);
      v29(v32, v30, v33);
      v34 = sub_22B36048C();
      v35 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v34, v35, v37, "Start: Get Unique Meter IDs", "", v36, 2u);
        MEMORY[0x23188F650](v36, -1, -1);
      }

      v38 = *(v0 + 808);
      v39 = *(v0 + 648);
      v40 = *(v0 + 576);

      v38(v39, v40);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_13:
    v41 = *(v0 + 568);
    v42 = qword_28140BCF8;
    *(v0 + 840) = qword_28140BCF8;
    *(v0 + 848) = *(v41 + 16);
    *(v0 + 856) = *(v41 + 24);
    *(v0 + 864) = sub_22B35F04C();
    *(v0 + 872) = v43;

    return MEMORY[0x2822009F8](sub_22B1B98F8, v42, 0);
  }

  (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
  v44 = sub_22B36048C();
  v45 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v44, v45, v47, "End: Loop UsagePoints", "", v46, 2u);
    MEMORY[0x23188F650](v46, -1, -1);
  }

  v48 = *(v0 + 808);
  v49 = *(v0 + 792);
  v50 = *(v0 + 784);
  v51 = *(v0 + 608);
  v52 = *(v0 + 600);
  v53 = *(v0 + 576);

  v48(v51, v53);
  v49(v52, v50, v53);
  v54 = sub_22B36048C();
  v55 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v54, v55, v57, "Start: Compare Meters", "", v56, 2u);
    MEMORY[0x23188F650](v56, -1, -1);
  }

  v58 = *(v0 + 808);
  v59 = *(v0 + 600);
  v60 = *(v0 + 576);

  v58(v59, v60);
  v61 = sub_22B35F18C();
  if (v61)
  {
    v62 = v61;
    if (*(v61 + 16))
    {

      v64 = sub_22B31A80C(v63);

      v65 = *(v0 + 360);

      v67 = sub_22B1C3A84(v66, v64);

      if (v67)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v68 = *(v0 + 456);
        v69 = *(v0 + 424);
        v70 = *(v0 + 432);
        v71 = *(v0 + 384);
        v72 = __swift_project_value_buffer(v69, qword_28140BD10);
        swift_beginAccess();
        (*(v70 + 16))(v68, v72, v69);

        v73 = v71;

        v74 = sub_22B36050C();
        v75 = sub_22B360D2C();

        v76 = os_log_type_enabled(v74, v75);
        v77 = *(v0 + 720);
        if (v76)
        {
          v78 = *(v0 + 712);
          v196 = *(v0 + 456);
          v190 = *(v0 + 432);
          v193 = *(v0 + 424);
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v200[0] = v80;
          *v79 = 136315650;
          v81 = MEMORY[0x23188E390](v62, MEMORY[0x277D837D0]);
          v83 = v82;

          v84 = sub_22B1A7B20(v81, v83, v200);

          *(v79 + 4) = v84;
          *(v79 + 12) = 2082;
          v85 = sub_22B1A7B20(v78, v77, v200);

          *(v79 + 14) = v85;
          *(v79 + 22) = 2082;
          v86 = sub_22B35F3AC();
          v88 = sub_22B1A7B20(v86, v87, v200);

          *(v79 + 24) = v88;
          _os_log_impl(&dword_22B116000, v74, v75, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v79, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v80, -1, -1);
          MEMORY[0x23188F650](v79, -1, -1);

          (*(v190 + 8))(v196, v193);
        }

        else
        {
          v147 = *(v0 + 456);
          v148 = *(v0 + 424);
          v149 = *(v0 + 432);

          (*(v149 + 8))(v147, v148);
        }

        goto LABEL_52;
      }

      goto LABEL_38;
    }
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v90 = *(v0 + 432);
  v89 = *(v0 + 440);
  v91 = *(v0 + 424);
  v92 = *(v0 + 384);
  v93 = __swift_project_value_buffer(v91, qword_28140BD10);
  swift_beginAccess();
  (*(v90 + 16))(v89, v93, v91);

  v94 = v92;
  v95 = sub_22B36050C();
  v96 = sub_22B360D2C();

  v97 = os_log_type_enabled(v95, v96);
  v98 = *(v0 + 720);
  if (v97)
  {
    v99 = *(v0 + 712);
    v197 = *(v0 + 440);
    v191 = *(v0 + 432);
    v194 = *(v0 + 424);
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v200[0] = v101;
    *v100 = 136315650;
    swift_beginAccess();

    v102 = sub_22B360C5C();
    v104 = v103;

    v105 = sub_22B1A7B20(v102, v104, v200);

    *(v100 + 4) = v105;
    *(v100 + 12) = 2082;
    v106 = sub_22B1A7B20(v99, v98, v200);

    *(v100 + 14) = v106;
    *(v100 + 22) = 2082;
    v107 = sub_22B35F3AC();
    v109 = sub_22B1A7B20(v107, v108, v200);

    *(v100 + 24) = v109;
    _os_log_impl(&dword_22B116000, v95, v96, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v100, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v101, -1, -1);
    MEMORY[0x23188F650](v100, -1, -1);

    (*(v191 + 8))(v197, v194);
  }

  else
  {
    v111 = *(v0 + 432);
    v110 = *(v0 + 440);
    v112 = *(v0 + 424);

    (*(v111 + 8))(v110, v112);
  }

  if (*(v0 + 1141) != 1)
  {
    goto LABEL_52;
  }

  swift_beginAccess();
  v113 = *(v0 + 360);
  v114 = *(v113 + 16);
  if (!v114)
  {
    v65 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v65 = sub_22B32DCA4(*(v113 + 16), 0);
  v115 = sub_22B24FA90(v200, v65 + 4, v114, v113);
  v116 = v200[0];

  sub_22B1A20B8(v116);
  if (v115 == v114)
  {
LABEL_43:
    *(v0 + 1104) = v65;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v138 = sub_22B35F3AC();
    v140 = v139;
    *(v0 + 1112) = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3634B0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000022B36C000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(inited + 48) = v65;

    v142 = sub_22B321AAC(inited);
    *(v0 + 1120) = v142;
    swift_setDeallocating();
    sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
    v143 = swift_task_alloc();
    *(v0 + 1128) = v143;
    *v143 = v0;
    v143[1] = sub_22B1C3080;
    v144 = v138;
    v145 = v140;
    v146 = v142;
    goto LABEL_68;
  }

  __break(1u);
LABEL_38:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v117 = *(v0 + 448);
  v118 = *(v0 + 424);
  v119 = *(v0 + 432);
  v120 = *(v0 + 384);
  v121 = __swift_project_value_buffer(v118, qword_28140BD10);
  swift_beginAccess();
  (*(v119 + 16))(v117, v121, v118);

  v122 = v120;
  v123 = sub_22B36050C();
  v124 = sub_22B360D2C();

  v125 = os_log_type_enabled(v123, v124);
  v126 = *(v0 + 720);
  if (v125)
  {
    v127 = *(v0 + 712);
    v198 = *(v0 + 448);
    v192 = *(v0 + 432);
    v195 = *(v0 + 424);
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v200[0] = v129;
    *v128 = 136315650;

    v130 = sub_22B360C5C();
    v132 = v131;

    v133 = sub_22B1A7B20(v130, v132, v200);

    *(v128 + 4) = v133;
    *(v128 + 12) = 2082;
    v134 = sub_22B1A7B20(v127, v126, v200);

    *(v128 + 14) = v134;
    *(v128 + 22) = 2082;
    v135 = sub_22B35F3AC();
    v137 = sub_22B1A7B20(v135, v136, v200);

    *(v128 + 24) = v137;
    _os_log_impl(&dword_22B116000, v123, v124, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v128, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v129, -1, -1);
    MEMORY[0x23188F650](v128, -1, -1);

    (*(v192 + 8))(v198, v195);
  }

  else
  {
    v150 = *(v0 + 448);
    v151 = *(v0 + 424);
    v152 = *(v0 + 432);

    (*(v152 + 8))(v150, v151);
  }

  if (*(v0 + 1141) != 1)
  {
    goto LABEL_52;
  }

  v153 = v65[2];
  if (v153)
  {
    v154 = sub_22B32DCA4(v65[2], 0);
    v155 = sub_22B24FA90(v200, v154 + 4, v153, v65);
    v156 = v200[0];

    sub_22B1A20B8(v156);
    if (v155 != v153)
    {
      __break(1u);
LABEL_52:
      (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
      v157 = sub_22B36048C();
      v158 = sub_22B360E3C();
      v159 = sub_22B360FDC();
      v160 = *(v0 + 808);
      if (v159)
      {
        v161 = *(v0 + 592);
        v162 = *(v0 + 576);
        v163 = swift_slowAlloc();
        *v163 = 0;
        v164 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v157, v158, v164, "End: Compare Meters", "", v163, 2u);
        MEMORY[0x23188F650](v163, -1, -1);

        v165 = v161;
        v166 = v162;
      }

      else
      {
        v167 = *(v0 + 592);
        v168 = *(v0 + 576);

        v165 = v167;
        v166 = v168;
      }

      v160(v165, v166);
      goto LABEL_56;
    }
  }

  else
  {
    v154 = MEMORY[0x277D84F90];
  }

  *(v0 + 1072) = v154;
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v183 = sub_22B35F3AC();
  v185 = v184;
  *(v0 + 1080) = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  v186 = swift_initStackObject();
  *(v186 + 16) = xmmword_22B3634B0;
  *(v186 + 32) = 0xD000000000000010;
  *(v186 + 40) = 0x800000022B36C000;
  *(v186 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
  *(v186 + 48) = v154;

  v187 = sub_22B321AAC(v186);
  *(v0 + 1088) = v187;
  swift_setDeallocating();
  sub_22B123284(v186 + 32, &unk_27D8BAD00, &qword_22B3656C0);
  v188 = swift_task_alloc();
  *(v0 + 1096) = v188;
  *v188 = v0;
  v188[1] = sub_22B1C29E4;
  v144 = v183;
  v145 = v185;
  v146 = v187;
LABEL_68:

  return sub_22B2244D0(v144, v145, v146);
}

uint64_t sub_22B1B98F8()
{
  v28 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[64];
  v2 = v0[53];
  v3 = v0[54];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[110] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[111] = v5;
  v0[112] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[90];
    v9 = v0[89];
    v10 = v0[64];
    v11 = v0[53];
    v12 = v0[54];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v9, v8, &v27);
    _os_log_impl(&dword_22B116000, v6, v7, "Get unique meter ids for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v15 = *(v12 + 8);
    v15(v10, v11);
  }

  else
  {
    v16 = v0[64];
    v17 = v0[53];
    v18 = v0[54];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v0[113] = v15;
  v19 = v0[105];
  v20 = v19[14];
  v0[114] = v20;
  v21 = v19[15];
  v0[115] = v21;
  if (v20 && (v22 = v19[16], (v0[116] = v22) != 0))
  {
    sub_22B1231A0(v20, v21);
    v23 = v22;
    v24 = sub_22B1B9B78;
  }

  else
  {

    v25 = v0[103];
    v0[120] = 0;
    v0[119] = v25;
    v24 = sub_22B1BB5C0;
  }

  return MEMORY[0x2822009F8](v24, 0, 0);
}

uint64_t sub_22B1B9B78()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 824);
  v12 = *(v0 + 728);
  v13 = *(v0 + 864);
  v10 = *(v0 + 912);
  v11 = *(v0 + 712);
  v5 = MEMORY[0x23188EEB0]();
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v10;
  *(v6 + 40) = v11;
  *(v6 + 56) = v12;
  *(v6 + 72) = v13;
  *(v6 + 88) = v3;
  *(v6 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA630, qword_22B3656D0);
  sub_22B360E7C();
  *(v0 + 936) = v4;
  v7 = *(v0 + 840);

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v8 = sub_22B1B9D5C;
  }

  else
  {
    *(v0 + 944) = *(v0 + 376);
    v8 = sub_22B1B9CC0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B1B9CC0()
{
  v1 = v0[116];
  v2 = v0[115];

  v3 = v0[117];
  v0[120] = v0[118];
  v0[119] = v3;

  return MEMORY[0x2822009F8](sub_22B1BB5C0, 0, 0);
}

uint64_t sub_22B1B9D5C()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 920);

  return MEMORY[0x2822009F8](sub_22B1B9DF8, 0, 0);
}

uint64_t sub_22B1B9DF8()
{
  v226 = v0;
  *(v0 + 968) = 0;
  (*(v0 + 792))(*(v0 + 640), *(v0 + 784), *(v0 + 576));
  v1 = sub_22B36048C();
  v2 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v1, v2, v4, "End: Get Unique Meter IDs", "", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v5 = *(v0 + 808);
  v6 = *(v0 + 640);
  v7 = *(v0 + 576);

  v5(v6, v7);
  v8 = *(v0 + 568);
  v9 = *(v0 + 528);
  v10 = *(v0 + 384);
  (*(v0 + 888))(*(v0 + 464), *(v0 + 880), *(v0 + 424));
  sub_22B1CA1F0(v8, v9, type metadata accessor for CDUsagePointRecords);

  v11 = v10;
  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 904);
  if (v14)
  {
    v16 = *(v0 + 720);
    v17 = *(v0 + 712);
    v18 = *(v0 + 528);
    v216 = *(v0 + 424);
    v220 = *(v0 + 464);
    v212 = *(v0 + 904);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v225[0] = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_22B1A7B20(v17, v16, v225);
    *(v19 + 12) = 2082;
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);

    sub_22B1CA258(v18, type metadata accessor for CDUsagePointRecords);
    v23 = sub_22B1A7B20(v21, v22, v225);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2082;
    v24 = sub_22B35F3AC();
    v26 = sub_22B1A7B20(v24, v25, v225);

    *(v19 + 24) = v26;
    _os_log_impl(&dword_22B116000, v12, v13, "[AMIProcessor] Meter count not greater than 1 for %{public}s with usagePoint %{public}s at %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    v212(v220, v216);
  }

  else
  {
    v27 = *(v0 + 528);
    v28 = *(v0 + 464);
    v29 = *(v0 + 424);

    sub_22B1CA258(v27, type metadata accessor for CDUsagePointRecords);
    v15(v28, v29);
  }

  (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
  v30 = sub_22B36048C();
  v31 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v30, v31, v33, "End: Processing UsagePoint", "", v32, 2u);
    MEMORY[0x23188F650](v32, -1, -1);
  }

  v34 = *(v0 + 832);
  v35 = *(v0 + 816);
  v36 = *(v0 + 808);
  v37 = *(v0 + 616);
  v38 = *(v0 + 576);
  v39 = *(v0 + 568);

  v36(v37, v38);
  sub_22B1CA258(v39, type metadata accessor for CDUsagePointRecords);
  if (v34 + 1 == v35)
  {

    (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
    v40 = sub_22B36048C();
    v41 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v40, v41, v43, "End: Loop UsagePoints", "", v42, 2u);
      MEMORY[0x23188F650](v42, -1, -1);
    }

    v44 = *(v0 + 808);
    v45 = *(v0 + 792);
    v46 = *(v0 + 784);
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    v49 = *(v0 + 576);

    v44(v47, v49);
    v45(v48, v46, v49);
    v50 = sub_22B36048C();
    v51 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v50, v51, v53, "Start: Compare Meters", "", v52, 2u);
      MEMORY[0x23188F650](v52, -1, -1);
    }

    v54 = *(v0 + 808);
    v55 = *(v0 + 600);
    v56 = *(v0 + 576);

    v54(v55, v56);
    v57 = sub_22B35F18C();
    if (v57)
    {
      v58 = v57;
      if (*(v57 + 16))
      {

        v60 = sub_22B31A80C(v59);

        v61 = *(v0 + 360);

        v63 = sub_22B1C3A84(v62, v60);

        if (v63)
        {
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v64 = *(v0 + 456);
          v65 = *(v0 + 424);
          v66 = *(v0 + 432);
          v67 = *(v0 + 384);
          v68 = __swift_project_value_buffer(v65, qword_28140BD10);
          swift_beginAccess();
          (*(v66 + 16))(v64, v68, v65);

          v69 = v67;

          v70 = sub_22B36050C();
          v71 = sub_22B360D2C();

          v72 = os_log_type_enabled(v70, v71);
          v73 = *(v0 + 720);
          if (v72)
          {
            v74 = *(v0 + 712);
            v221 = *(v0 + 456);
            v213 = *(v0 + 432);
            v217 = *(v0 + 424);
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v225[0] = v76;
            *v75 = 136315650;
            v77 = MEMORY[0x23188E390](v58, MEMORY[0x277D837D0]);
            v79 = v78;

            v80 = sub_22B1A7B20(v77, v79, v225);

            *(v75 + 4) = v80;
            *(v75 + 12) = 2082;
            v81 = sub_22B1A7B20(v74, v73, v225);

            *(v75 + 14) = v81;
            *(v75 + 22) = 2082;
            v82 = sub_22B35F3AC();
            v84 = sub_22B1A7B20(v82, v83, v225);

            *(v75 + 24) = v84;
            _os_log_impl(&dword_22B116000, v70, v71, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v75, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v76, -1, -1);
            MEMORY[0x23188F650](v75, -1, -1);

            (*(v213 + 8))(v221, v217);
          }

          else
          {
            v169 = *(v0 + 456);
            v170 = *(v0 + 424);
            v171 = *(v0 + 432);

            (*(v171 + 8))(v169, v170);
          }

          goto LABEL_53;
        }

        goto LABEL_39;
      }
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v112 = *(v0 + 432);
    v111 = *(v0 + 440);
    v113 = *(v0 + 424);
    v114 = *(v0 + 384);
    v115 = __swift_project_value_buffer(v113, qword_28140BD10);
    swift_beginAccess();
    (*(v112 + 16))(v111, v115, v113);

    v116 = v114;
    v117 = sub_22B36050C();
    v118 = sub_22B360D2C();

    v119 = os_log_type_enabled(v117, v118);
    v120 = *(v0 + 720);
    if (v119)
    {
      v121 = *(v0 + 712);
      v222 = *(v0 + 440);
      v214 = *(v0 + 432);
      v218 = *(v0 + 424);
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v225[0] = v123;
      *v122 = 136315650;
      swift_beginAccess();

      v124 = sub_22B360C5C();
      v126 = v125;

      v127 = sub_22B1A7B20(v124, v126, v225);

      *(v122 + 4) = v127;
      *(v122 + 12) = 2082;
      v128 = sub_22B1A7B20(v121, v120, v225);

      *(v122 + 14) = v128;
      *(v122 + 22) = 2082;
      v129 = sub_22B35F3AC();
      v131 = sub_22B1A7B20(v129, v130, v225);

      *(v122 + 24) = v131;
      _os_log_impl(&dword_22B116000, v117, v118, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v122, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v123, -1, -1);
      MEMORY[0x23188F650](v122, -1, -1);

      (*(v214 + 8))(v222, v218);
    }

    else
    {
      v133 = *(v0 + 432);
      v132 = *(v0 + 440);
      v134 = *(v0 + 424);

      (*(v133 + 8))(v132, v134);
    }

    if (*(v0 + 1141) != 1)
    {
      goto LABEL_53;
    }

    swift_beginAccess();
    v135 = *(v0 + 360);
    v136 = *(v135 + 16);
    if (v136)
    {
      v61 = sub_22B32DCA4(*(v135 + 16), 0);
      v137 = sub_22B24FA90(v225, v61 + 4, v136, v135);
      v138 = v225[0];

      sub_22B1A20B8(v138);
      if (v137 != v136)
      {
        __break(1u);
LABEL_39:

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v139 = *(v0 + 448);
        v140 = *(v0 + 424);
        v141 = *(v0 + 432);
        v142 = *(v0 + 384);
        v143 = __swift_project_value_buffer(v140, qword_28140BD10);
        swift_beginAccess();
        (*(v141 + 16))(v139, v143, v140);

        v144 = v142;
        v145 = sub_22B36050C();
        v146 = sub_22B360D2C();

        v147 = os_log_type_enabled(v145, v146);
        v148 = *(v0 + 720);
        if (v147)
        {
          v149 = *(v0 + 712);
          v223 = *(v0 + 448);
          v215 = *(v0 + 432);
          v219 = *(v0 + 424);
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v225[0] = v151;
          *v150 = 136315650;

          v152 = sub_22B360C5C();
          v154 = v153;

          v155 = sub_22B1A7B20(v152, v154, v225);

          *(v150 + 4) = v155;
          *(v150 + 12) = 2082;
          v156 = sub_22B1A7B20(v149, v148, v225);

          *(v150 + 14) = v156;
          *(v150 + 22) = 2082;
          v157 = sub_22B35F3AC();
          v159 = sub_22B1A7B20(v157, v158, v225);

          *(v150 + 24) = v159;
          _os_log_impl(&dword_22B116000, v145, v146, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v150, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v151, -1, -1);
          MEMORY[0x23188F650](v150, -1, -1);

          (*(v215 + 8))(v223, v219);
        }

        else
        {
          v172 = *(v0 + 448);
          v173 = *(v0 + 424);
          v174 = *(v0 + 432);

          (*(v174 + 8))(v172, v173);
        }

        if (*(v0 + 1141) != 1)
        {
          goto LABEL_53;
        }

        v175 = v61[2];
        if (v175)
        {
          v176 = sub_22B32DCA4(v61[2], 0);
          v177 = sub_22B24FA90(v225, v176 + 4, v175, v61);
          v178 = v225[0];

          sub_22B1A20B8(v178);
          if (v177 != v175)
          {
            __break(1u);
LABEL_53:
            (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
            v179 = sub_22B36048C();
            v180 = sub_22B360E3C();
            v181 = sub_22B360FDC();
            v182 = *(v0 + 808);
            if (v181)
            {
              v183 = *(v0 + 592);
              v184 = *(v0 + 576);
              v185 = swift_slowAlloc();
              *v185 = 0;
              v186 = sub_22B36046C();
              _os_signpost_emit_with_name_impl(&dword_22B116000, v179, v180, v186, "End: Compare Meters", "", v185, 2u);
              MEMORY[0x23188F650](v185, -1, -1);

              v187 = v183;
              v188 = v184;
            }

            else
            {
              v189 = *(v0 + 592);
              v190 = *(v0 + 576);

              v187 = v189;
              v188 = v190;
            }

            v182(v187, v188);
            v191 = sub_22B36048C();
            sub_22B3604CC();
            v192 = sub_22B360E1C();
            if (sub_22B360FDC())
            {
              v194 = *(v0 + 408);
              v193 = *(v0 + 416);
              v195 = *(v0 + 400);

              sub_22B3604FC();

              if ((*(v194 + 88))(v193, v195) == *MEMORY[0x277D85B00])
              {
                v196 = "[Error] Interval already ended";
              }

              else
              {
                (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                v196 = "";
              }

              v197 = swift_slowAlloc();
              *v197 = 0;
              v198 = sub_22B36046C();
              _os_signpost_emit_with_name_impl(&dword_22B116000, v191, v192, v198, "FindGenerationMeters", v196, v197, 2u);
              MEMORY[0x23188F650](v197, -1, -1);
            }

            v199 = *(v0 + 704);
            v200 = *(v0 + 688);
            v201 = *(v0 + 680);
            v202 = *(v0 + 672);

            v203 = *(v201 + 8);
            v203(v200, v202);
            v203(v199, v202);
            swift_beginAccess();
            v224 = *(v0 + 360);

            v204 = *(v0 + 8);

            return v204(v224);
          }
        }

        else
        {
          v176 = MEMORY[0x277D84F90];
        }

        *(v0 + 1072) = v176;
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v205 = sub_22B35F3AC();
        v207 = v206;
        *(v0 + 1080) = v206;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B3634B0;
        *(inited + 32) = 0xD000000000000010;
        *(inited + 40) = 0x800000022B36C000;
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
        *(inited + 48) = v176;

        v209 = sub_22B321AAC(inited);
        *(v0 + 1088) = v209;
        swift_setDeallocating();
        sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
        v210 = swift_task_alloc();
        *(v0 + 1096) = v210;
        *v210 = v0;
        v210[1] = sub_22B1C29E4;
        v166 = v205;
        v167 = v207;
        v168 = v209;
        goto LABEL_68;
      }
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }

    *(v0 + 1104) = v61;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v160 = sub_22B35F3AC();
    v162 = v161;
    *(v0 + 1112) = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v163 = swift_initStackObject();
    *(v163 + 16) = xmmword_22B3634B0;
    *(v163 + 32) = 0xD000000000000010;
    *(v163 + 40) = 0x800000022B36C000;
    *(v163 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(v163 + 48) = v61;

    v164 = sub_22B321AAC(v163);
    *(v0 + 1120) = v164;
    swift_setDeallocating();
    sub_22B123284(v163 + 32, &unk_27D8BAD00, &qword_22B3656C0);
    v165 = swift_task_alloc();
    *(v0 + 1128) = v165;
    *v165 = v0;
    v165[1] = sub_22B1C3080;
    v166 = v160;
    v167 = v162;
    v168 = v164;
LABEL_68:

    return sub_22B2244D0(v166, v167, v168);
  }

  v85 = *(v0 + 832) + 1;
  *(v0 + 832) = v85;
  *(v0 + 824) = 0;
  v86 = *(v0 + 768);
  if (v85 >= *(v86 + 16))
  {
    __break(1u);
  }

  else
  {
    v87 = *(v0 + 792);
    v88 = *(v0 + 784);
    v89 = *(v0 + 656);
    v90 = *(v0 + 576);
    sub_22B1CA1F0(v86 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v85, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
    v87(v89, v88, v90);
    v91 = sub_22B36048C();
    v92 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v91, v92, v94, "Start: Processing UsagePoint", "", v93, 2u);
      MEMORY[0x23188F650](v93, -1, -1);
    }

    v95 = *(v0 + 808);
    v96 = *(v0 + 792);
    v97 = *(v0 + 784);
    v98 = *(v0 + 656);
    v99 = *(v0 + 648);
    v100 = *(v0 + 576);

    v95(v98, v100);
    v96(v99, v97, v100);
    v101 = sub_22B36048C();
    v102 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      v104 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v101, v102, v104, "Start: Get Unique Meter IDs", "", v103, 2u);
      MEMORY[0x23188F650](v103, -1, -1);
    }

    v105 = *(v0 + 808);
    v106 = *(v0 + 648);
    v107 = *(v0 + 576);

    v105(v106, v107);
    if (qword_2814099B0 == -1)
    {
      goto LABEL_26;
    }
  }

  swift_once();
LABEL_26:
  v108 = *(v0 + 568);
  v109 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v108 + 16);
  *(v0 + 856) = *(v108 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v110;

  return MEMORY[0x2822009F8](sub_22B1B98F8, v109, 0);
}

uint64_t sub_22B1BB5C0()
{
  v306 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  *(v0 + 968) = v1;
  (*(v0 + 792))(*(v0 + 640), *(v0 + 784), *(v0 + 576));
  v3 = sub_22B36048C();
  v4 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v6, "End: Get Unique Meter IDs", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = *(v0 + 808);
  v8 = *(v0 + 640);
  v9 = *(v0 + 576);

  v7(v8, v9);
  if (!v1)
  {
    goto LABEL_8;
  }

  v10 = v1[2];
  *(v0 + 976) = v10;
  if (v10 < 2)
  {

LABEL_8:
    v32 = *(v0 + 568);
    v33 = *(v0 + 528);
    v34 = *(v0 + 384);
    (*(v0 + 888))(*(v0 + 464), *(v0 + 880), *(v0 + 424));
    sub_22B1CA1F0(v32, v33, type metadata accessor for CDUsagePointRecords);

    v35 = v34;
    v36 = sub_22B36050C();
    v37 = sub_22B360D2C();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 904);
    if (v38)
    {
      v40 = *(v0 + 720);
      v299 = v2;
      v41 = *(v0 + 712);
      v42 = *(v0 + 528);
      v293 = *(v0 + 464);
      v287 = *(v0 + 424);
      v284 = *(v0 + 904);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v305[0] = v44;
      *v43 = 136446722;
      *(v43 + 4) = sub_22B1A7B20(v41, v40, v305);
      *(v43 + 12) = 2082;
      v45 = *(v42 + 16);
      v46 = *(v42 + 24);

      sub_22B1CA258(v42, type metadata accessor for CDUsagePointRecords);
      v47 = sub_22B1A7B20(v45, v46, v305);
      v2 = v299;

      *(v43 + 14) = v47;
      *(v43 + 22) = 2082;
      v48 = sub_22B35F3AC();
      v50 = sub_22B1A7B20(v48, v49, v305);

      *(v43 + 24) = v50;
      _os_log_impl(&dword_22B116000, v36, v37, "[AMIProcessor] Meter count not greater than 1 for %{public}s with usagePoint %{public}s at %{public}s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v44, -1, -1);
      MEMORY[0x23188F650](v43, -1, -1);

      v284(v293, v287);
    }

    else
    {
      v51 = *(v0 + 528);
      v52 = *(v0 + 464);
      v53 = *(v0 + 424);

      sub_22B1CA258(v51, type metadata accessor for CDUsagePointRecords);
      v39(v52, v53);
    }

    goto LABEL_11;
  }

  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 384);
  (*(v0 + 888))(*(v0 + 504), *(v0 + 880), *(v0 + 424));
  sub_22B1CA1F0(v11, v12, type metadata accessor for CDUsagePointRecords);

  v14 = v13;
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 904);
  if (v17)
  {
    v298 = v2;
    v19 = *(v0 + 720);
    v20 = *(v0 + 712);
    v21 = *(v0 + 560);
    v292 = *(v0 + 504);
    v286 = *(v0 + 424);
    v283 = *(v0 + 904);
    v22 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    v305[0] = v282;
    *v22 = 134219010;
    *(v22 + 4) = v1[2];

    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_22B1A7B20(v20, v19, v305);
    *(v22 + 22) = 2082;
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);

    sub_22B1CA258(v21, type metadata accessor for CDUsagePointRecords);
    v25 = sub_22B1A7B20(v23, v24, v305);
    v2 = v298;

    *(v22 + 24) = v25;
    *(v22 + 32) = 2082;
    v26 = sub_22B35F3AC();
    v28 = sub_22B1A7B20(v26, v27, v305);

    *(v22 + 34) = v28;
    *(v22 + 42) = 2080;
    v29 = MEMORY[0x23188E390](v1, MEMORY[0x277D837D0]);
    v31 = sub_22B1A7B20(v29, v30, v305);

    *(v22 + 44) = v31;
    _os_log_impl(&dword_22B116000, v15, v16, "[AMIProcessor] Meter count %ld for %{public}s with usagePoint %{public}s at %{public}s Meters: %s", v22, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v282, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);

    v283(v292, v286);
  }

  else
  {
    v136 = *(v0 + 560);
    v137 = *(v0 + 504);
    v138 = *(v0 + 424);

    sub_22B1CA258(v136, type metadata accessor for CDUsagePointRecords);
    v18(v137, v138);
  }

  v139 = MEMORY[0x277D84FA0];
  *(v0 + 368) = MEMORY[0x277D84FA0];
  v140 = v1[2];
  *(v0 + 984) = v140;
  if (v140)
  {
    *(v0 + 1000) = 0;
    *(v0 + 992) = v2;
    v141 = *(v0 + 968);
    if (v141[2])
    {
      v142 = *(v0 + 792);
      v143 = *(v0 + 784);
      v144 = *(v0 + 632);
      v145 = *(v0 + 576);
      *(v0 + 1008) = v141[4];
      *(v0 + 1016) = v141[5];
      v142(v144, v143, v145);

      v146 = sub_22B36048C();
      v147 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        v149 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v146, v147, v149, "Start: Has Meter Imported", "", v148, 2u);
        MEMORY[0x23188F650](v148, -1, -1);
      }

      v150 = *(v0 + 840);
      v151 = *(v0 + 808);
      v152 = *(v0 + 632);
      v153 = *(v0 + 576);

      v151(v152, v153);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v154;
      v134 = sub_22B1BD400;
      v135 = v150;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_91;
  }

  if (*(v139 + 16) == *(v0 + 976))
  {
    v301 = v2;
    v155 = *(v0 + 888);
    v156 = *(v0 + 880);
    v157 = *(v0 + 568);
    v158 = *(v0 + 536);
    v159 = *(v0 + 472);
    v160 = *(v0 + 424);
    v161 = *(v0 + 384);

    v155(v159, v156, v160);
    sub_22B1CA1F0(v157, v158, type metadata accessor for CDUsagePointRecords);

    v162 = v161;
    v163 = sub_22B36050C();
    v164 = sub_22B360D2C();

    v165 = os_log_type_enabled(v163, v164);
    v166 = *(v0 + 904);
    if (v165)
    {
      v167 = *(v0 + 720);
      v168 = *(v0 + 712);
      v169 = *(v0 + 536);
      v295 = *(v0 + 472);
      v289 = *(v0 + 424);
      v285 = *(v0 + 904);
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v305[0] = v171;
      *v170 = 136446722;
      *(v170 + 4) = sub_22B1A7B20(v168, v167, v305);
      *(v170 + 12) = 2082;
      v172 = *(v169 + 16);
      v173 = *(v169 + 24);

      sub_22B1CA258(v169, type metadata accessor for CDUsagePointRecords);
      v174 = sub_22B1A7B20(v172, v173, v305);

      *(v170 + 14) = v174;
      *(v170 + 22) = 2082;
      v175 = sub_22B35F3AC();
      v177 = sub_22B1A7B20(v175, v176, v305);

      *(v170 + 24) = v177;
      _os_log_impl(&dword_22B116000, v163, v164, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v170, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v171, -1, -1);
      MEMORY[0x23188F650](v170, -1, -1);

      v285(v295, v289);
    }

    else
    {
      v272 = *(v0 + 536);
      v273 = *(v0 + 472);
      v274 = *(v0 + 424);

      sub_22B1CA258(v272, type metadata accessor for CDUsagePointRecords);
      v166(v273, v274);
    }

    v2 = v301;
  }

  else
  {
    sub_22B24883C(MEMORY[0x277D84FA0]);
  }

LABEL_11:
  (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
  v54 = sub_22B36048C();
  v55 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v54, v55, v57, "End: Processing UsagePoint", "", v56, 2u);
    MEMORY[0x23188F650](v56, -1, -1);
  }

  v58 = *(v0 + 832);
  v59 = *(v0 + 816);
  v60 = *(v0 + 808);
  v61 = *(v0 + 616);
  v62 = *(v0 + 576);
  v63 = *(v0 + 568);

  v60(v61, v62);
  sub_22B1CA258(v63, type metadata accessor for CDUsagePointRecords);
  if (v58 + 1 != v59)
  {
    v108 = *(v0 + 832) + 1;
    *(v0 + 832) = v108;
    *(v0 + 824) = v2;
    v109 = *(v0 + 768);
    if (v108 >= *(v109 + 16))
    {
      __break(1u);
    }

    else
    {
      v110 = *(v0 + 792);
      v111 = *(v0 + 784);
      v112 = *(v0 + 656);
      v113 = *(v0 + 576);
      sub_22B1CA1F0(v109 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v108, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v110(v112, v111, v113);
      v114 = sub_22B36048C();
      v115 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v117 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v114, v115, v117, "Start: Processing UsagePoint", "", v116, 2u);
        MEMORY[0x23188F650](v116, -1, -1);
      }

      v118 = *(v0 + 808);
      v119 = *(v0 + 792);
      v120 = *(v0 + 784);
      v121 = *(v0 + 656);
      v122 = *(v0 + 648);
      v123 = *(v0 + 576);

      v118(v121, v123);
      v119(v122, v120, v123);
      v124 = sub_22B36048C();
      v125 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        v127 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v124, v125, v127, "Start: Get Unique Meter IDs", "", v126, 2u);
        MEMORY[0x23188F650](v126, -1, -1);
      }

      v128 = *(v0 + 808);
      v129 = *(v0 + 648);
      v130 = *(v0 + 576);

      v128(v129, v130);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_31;
      }
    }

    swift_once();
LABEL_31:
    v131 = *(v0 + 568);
    v132 = qword_28140BCF8;
    *(v0 + 840) = qword_28140BCF8;
    *(v0 + 848) = *(v131 + 16);
    *(v0 + 856) = *(v131 + 24);
    *(v0 + 864) = sub_22B35F04C();
    *(v0 + 872) = v133;
    v134 = sub_22B1B98F8;
    v135 = v132;
LABEL_38:

    return MEMORY[0x2822009F8](v134, v135, 0);
  }

  (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
  v64 = sub_22B36048C();
  v65 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v64, v65, v67, "End: Loop UsagePoints", "", v66, 2u);
    MEMORY[0x23188F650](v66, -1, -1);
  }

  v68 = *(v0 + 808);
  v69 = *(v0 + 792);
  v70 = *(v0 + 784);
  v71 = *(v0 + 608);
  v72 = *(v0 + 600);
  v73 = *(v0 + 576);

  v68(v71, v73);
  v69(v72, v70, v73);
  v74 = sub_22B36048C();
  v75 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v74, v75, v77, "Start: Compare Meters", "", v76, 2u);
    MEMORY[0x23188F650](v76, -1, -1);
  }

  v78 = *(v0 + 808);
  v79 = *(v0 + 600);
  v80 = *(v0 + 576);

  v78(v79, v80);
  v81 = sub_22B35F18C();
  if (!v81)
  {
LABEL_46:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v179 = *(v0 + 432);
    v178 = *(v0 + 440);
    v180 = *(v0 + 424);
    v181 = *(v0 + 384);
    v182 = __swift_project_value_buffer(v180, qword_28140BD10);
    swift_beginAccess();
    (*(v179 + 16))(v178, v182, v180);

    v183 = v181;
    v184 = sub_22B36050C();
    v185 = sub_22B360D2C();

    v186 = os_log_type_enabled(v184, v185);
    v187 = *(v0 + 720);
    if (v186)
    {
      v188 = *(v0 + 712);
      v302 = *(v0 + 440);
      v290 = *(v0 + 432);
      v296 = *(v0 + 424);
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v305[0] = v190;
      *v189 = 136315650;
      swift_beginAccess();

      v191 = sub_22B360C5C();
      v193 = v192;

      v194 = sub_22B1A7B20(v191, v193, v305);

      *(v189 + 4) = v194;
      *(v189 + 12) = 2082;
      v195 = sub_22B1A7B20(v188, v187, v305);

      *(v189 + 14) = v195;
      *(v189 + 22) = 2082;
      v196 = sub_22B35F3AC();
      v198 = sub_22B1A7B20(v196, v197, v305);

      *(v189 + 24) = v198;
      _os_log_impl(&dword_22B116000, v184, v185, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v189, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v190, -1, -1);
      MEMORY[0x23188F650](v189, -1, -1);

      (*(v290 + 8))(v302, v296);
    }

    else
    {
      v200 = *(v0 + 432);
      v199 = *(v0 + 440);
      v201 = *(v0 + 424);

      (*(v200 + 8))(v199, v201);
    }

    if (*(v0 + 1141) != 1)
    {
      goto LABEL_69;
    }

    swift_beginAccess();
    v202 = *(v0 + 360);
    v203 = *(v202 + 16);
    if (v203)
    {
      v1 = sub_22B32DCA4(*(v202 + 16), 0);
      v204 = sub_22B24FA90(v305, v1 + 4, v203, v202);
      v205 = v305[0];

      sub_22B1A20B8(v205);
      if (v204 != v203)
      {
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    *(v0 + 1104) = v1;
    if (qword_28140B470 == -1)
    {
LABEL_62:
      v227 = sub_22B35F3AC();
      v229 = v228;
      *(v0 + 1112) = v228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B3634B0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x800000022B36C000;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(inited + 48) = v1;

      v231 = sub_22B321AAC(inited);
      *(v0 + 1120) = v231;
      swift_setDeallocating();
      sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v232 = swift_task_alloc();
      *(v0 + 1128) = v232;
      *v232 = v0;
      v232[1] = sub_22B1C3080;
      v233 = v227;
      v234 = v229;
      v235 = v231;
LABEL_85:

      return sub_22B2244D0(v233, v234, v235);
    }

LABEL_91:
    swift_once();
    goto LABEL_62;
  }

  v82 = v81;
  if (!*(v81 + 16))
  {

    goto LABEL_46;
  }

  v84 = sub_22B31A80C(v83);

  v1 = *(v0 + 360);

  v86 = sub_22B1C3A84(v85, v84);

  if (v86)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v87 = *(v0 + 456);
    v88 = *(v0 + 424);
    v89 = *(v0 + 432);
    v90 = *(v0 + 384);
    v91 = __swift_project_value_buffer(v88, qword_28140BD10);
    swift_beginAccess();
    (*(v89 + 16))(v87, v91, v88);

    v92 = v90;

    v93 = sub_22B36050C();
    v94 = sub_22B360D2C();

    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 720);
    if (v95)
    {
      v97 = *(v0 + 712);
      v300 = *(v0 + 456);
      v288 = *(v0 + 432);
      v294 = *(v0 + 424);
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v305[0] = v99;
      *v98 = 136315650;
      v100 = MEMORY[0x23188E390](v82, MEMORY[0x277D837D0]);
      v102 = v101;

      v103 = sub_22B1A7B20(v100, v102, v305);

      *(v98 + 4) = v103;
      *(v98 + 12) = 2082;
      v104 = sub_22B1A7B20(v97, v96, v305);

      *(v98 + 14) = v104;
      *(v98 + 22) = 2082;
      v105 = sub_22B35F3AC();
      v107 = sub_22B1A7B20(v105, v106, v305);

      *(v98 + 24) = v107;
      _os_log_impl(&dword_22B116000, v93, v94, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v98, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v99, -1, -1);
      MEMORY[0x23188F650](v98, -1, -1);

      (*(v288 + 8))(v300, v294);
    }

    else
    {
      v236 = *(v0 + 456);
      v237 = *(v0 + 424);
      v238 = *(v0 + 432);

      (*(v238 + 8))(v236, v237);
    }

    goto LABEL_69;
  }

LABEL_55:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v206 = *(v0 + 448);
  v207 = *(v0 + 424);
  v208 = *(v0 + 432);
  v209 = *(v0 + 384);
  v210 = __swift_project_value_buffer(v207, qword_28140BD10);
  swift_beginAccess();
  (*(v208 + 16))(v206, v210, v207);

  v211 = v209;
  v212 = sub_22B36050C();
  v213 = sub_22B360D2C();

  v214 = os_log_type_enabled(v212, v213);
  v215 = *(v0 + 720);
  if (v214)
  {
    v216 = *(v0 + 712);
    v303 = *(v0 + 448);
    v291 = *(v0 + 432);
    v297 = *(v0 + 424);
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v305[0] = v218;
    *v217 = 136315650;

    v219 = sub_22B360C5C();
    v221 = v220;

    v222 = sub_22B1A7B20(v219, v221, v305);

    *(v217 + 4) = v222;
    *(v217 + 12) = 2082;
    v223 = sub_22B1A7B20(v216, v215, v305);

    *(v217 + 14) = v223;
    *(v217 + 22) = 2082;
    v224 = sub_22B35F3AC();
    v226 = sub_22B1A7B20(v224, v225, v305);

    *(v217 + 24) = v226;
    _os_log_impl(&dword_22B116000, v212, v213, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v217, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v218, -1, -1);
    MEMORY[0x23188F650](v217, -1, -1);

    (*(v291 + 8))(v303, v297);
  }

  else
  {
    v239 = *(v0 + 448);
    v240 = *(v0 + 424);
    v241 = *(v0 + 432);

    (*(v241 + 8))(v239, v240);
  }

  if (*(v0 + 1141) != 1)
  {
    goto LABEL_69;
  }

  v242 = v1[2];
  if (!v242)
  {
    v243 = MEMORY[0x277D84F90];
    goto LABEL_82;
  }

  v243 = sub_22B32DCA4(v1[2], 0);
  v244 = sub_22B24FA90(v305, v243 + 4, v242, v1);
  v245 = v305[0];

  sub_22B1A20B8(v245);
  if (v244 == v242)
  {
LABEL_82:
    *(v0 + 1072) = v243;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v275 = sub_22B35F3AC();
    v277 = v276;
    *(v0 + 1080) = v276;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v278 = swift_initStackObject();
    *(v278 + 16) = xmmword_22B3634B0;
    *(v278 + 32) = 0xD000000000000010;
    *(v278 + 40) = 0x800000022B36C000;
    *(v278 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(v278 + 48) = v243;

    v279 = sub_22B321AAC(v278);
    *(v0 + 1088) = v279;
    swift_setDeallocating();
    sub_22B123284(v278 + 32, &unk_27D8BAD00, &qword_22B3656C0);
    v280 = swift_task_alloc();
    *(v0 + 1096) = v280;
    *v280 = v0;
    v280[1] = sub_22B1C29E4;
    v233 = v275;
    v234 = v277;
    v235 = v279;
    goto LABEL_85;
  }

  __break(1u);
LABEL_69:
  (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
  v246 = sub_22B36048C();
  v247 = sub_22B360E3C();
  v248 = sub_22B360FDC();
  v249 = *(v0 + 808);
  if (v248)
  {
    v250 = *(v0 + 592);
    v251 = *(v0 + 576);
    v252 = swift_slowAlloc();
    *v252 = 0;
    v253 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v246, v247, v253, "End: Compare Meters", "", v252, 2u);
    MEMORY[0x23188F650](v252, -1, -1);

    v254 = v250;
    v255 = v251;
  }

  else
  {
    v256 = *(v0 + 592);
    v257 = *(v0 + 576);

    v254 = v256;
    v255 = v257;
  }

  v249(v254, v255);
  v258 = sub_22B36048C();
  sub_22B3604CC();
  v259 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v261 = *(v0 + 408);
    v260 = *(v0 + 416);
    v262 = *(v0 + 400);

    sub_22B3604FC();

    if ((*(v261 + 88))(v260, v262) == *MEMORY[0x277D85B00])
    {
      v263 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
      v263 = "";
    }

    v264 = swift_slowAlloc();
    *v264 = 0;
    v265 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v258, v259, v265, "FindGenerationMeters", v263, v264, 2u);
    MEMORY[0x23188F650](v264, -1, -1);
  }

  v266 = *(v0 + 704);
  v267 = *(v0 + 688);
  v268 = *(v0 + 680);
  v269 = *(v0 + 672);

  v270 = *(v268 + 8);
  v270(v267, v269);
  v270(v266, v269);
  swift_beginAccess();
  v304 = *(v0 + 360);

  v271 = *(v0 + 8);

  return v271(v304);
}

uint64_t sub_22B1BD400()
{
  v24 = v0;
  (*(v0 + 888))(*(v0 + 496), *(v0 + 880), *(v0 + 424));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1016);
    v4 = *(v0 + 1008);
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);
    v21 = *(v0 + 496);
    v22 = *(v0 + 904);
    v7 = *(v0 + 424);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315395;
    *(v8 + 4) = sub_22B1A7B20(v4, v3, &v23);
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_22B1A7B20(v6, v5, &v23);
    _os_log_impl(&dword_22B116000, v1, v2, "Check if meter %s has ever imported for %{private}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v22(v21, v7);
  }

  else
  {
    v10 = *(v0 + 904);
    v11 = *(v0 + 496);
    v12 = *(v0 + 424);

    v10(v11, v12);
  }

  v13 = *(v0 + 840);
  v14 = v13[14];
  *(v0 + 1040) = v14;
  v15 = v13[15];
  *(v0 + 1048) = v15;
  if (v14)
  {
    v16 = v13[16];
    *(v0 + 1056) = v16;
    if (v16)
    {
      sub_22B1231A0(v14, v15);
      v17 = v16;
      v18 = sub_22B1BD68C;
      goto LABEL_10;
    }

    v19 = sub_22B1CA340;
  }

  else
  {

    v19 = sub_22B1BD828;
  }

  v18 = v19;
LABEL_10:

  return MEMORY[0x2822009F8](v18, 0, 0);
}

uint64_t sub_22B1BD68C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 992);
  v15 = *(v0 + 848);
  v16 = *(v0 + 1024);
  v13 = *(v0 + 712);
  v14 = *(v0 + 728);
  v12 = *(v0 + 1040);
  v5 = MEMORY[0x23188EEB0]();
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v12;
  *(v6 + 40) = v13;
  *(v6 + 56) = v14;
  *(v6 + 72) = v16;
  *(v6 + 88) = v15;
  *(v6 + 104) = v3;
  *(v6 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA628, &qword_22B3656C8);
  sub_22B360E7C();
  *(v0 + 1064) = v4;
  if (v4)
  {
    v7 = *(v0 + 840);

    objc_autoreleasePoolPop(v5);
    v8 = sub_22B1BF170;
    v9 = v7;
  }

  else
  {
    v10 = *(v0 + 840);

    objc_autoreleasePoolPop(v5);
    *(v0 + 1142) = *(v0 + 1140);
    v8 = sub_22B1C0B24;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B1BD828()
{
  v253 = v0;
  v1 = *(v0 + 992);
  (*(v0 + 792))(*(v0 + 624), *(v0 + 784), *(v0 + 576));
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v5, "End: Has Meter Imported", "", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v6 = *(v0 + 1000);
  v7 = *(v0 + 984);
  v8 = *(v0 + 808);
  v9 = *(v0 + 624);
  v10 = *(v0 + 576);

  v8(v9, v10);
  if (v6 + 1 == v7)
  {

    v11 = *(v0 + 368);
    if (*(v11 + 16) == *(v0 + 976))
    {
      v247 = v1;
      v12 = *(v0 + 888);
      v13 = *(v0 + 880);
      v14 = *(v0 + 568);
      v15 = *(v0 + 536);
      v16 = *(v0 + 472);
      v17 = *(v0 + 424);
      v18 = *(v0 + 384);

      v12(v16, v13, v17);
      sub_22B1CA1F0(v14, v15, type metadata accessor for CDUsagePointRecords);

      v19 = v18;
      v20 = sub_22B36050C();
      v21 = sub_22B360D2C();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 904);
      if (v22)
      {
        v24 = *(v0 + 720);
        v25 = *(v0 + 712);
        v26 = *(v0 + 536);
        v243 = *(v0 + 472);
        v239 = *(v0 + 424);
        v238 = *(v0 + 904);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v252[0] = v28;
        *v27 = 136446722;
        *(v27 + 4) = sub_22B1A7B20(v25, v24, v252);
        *(v27 + 12) = 2082;
        v29 = *(v26 + 16);
        v30 = *(v26 + 24);

        sub_22B1CA258(v26, type metadata accessor for CDUsagePointRecords);
        v31 = sub_22B1A7B20(v29, v30, v252);

        *(v27 + 14) = v31;
        *(v27 + 22) = 2082;
        v32 = sub_22B35F3AC();
        v34 = sub_22B1A7B20(v32, v33, v252);

        *(v27 + 24) = v34;
        _os_log_impl(&dword_22B116000, v20, v21, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v28, -1, -1);
        MEMORY[0x23188F650](v27, -1, -1);

        v238(v243, v239);
      }

      else
      {
        v53 = *(v0 + 536);
        v54 = *(v0 + 472);
        v55 = *(v0 + 424);

        sub_22B1CA258(v53, type metadata accessor for CDUsagePointRecords);
        v23(v54, v55);
      }

      v1 = v247;
    }

    else
    {
      sub_22B24883C(v11);
    }

    (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
    v56 = sub_22B36048C();
    v57 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v56, v57, v59, "End: Processing UsagePoint", "", v58, 2u);
      MEMORY[0x23188F650](v58, -1, -1);
    }

    v60 = *(v0 + 832);
    v61 = *(v0 + 816);
    v62 = *(v0 + 808);
    v63 = *(v0 + 616);
    v64 = *(v0 + 576);
    v65 = *(v0 + 568);

    v62(v63, v64);
    sub_22B1CA258(v65, type metadata accessor for CDUsagePointRecords);
    if (v60 + 1 == v61)
    {

      (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
      v66 = sub_22B36048C();
      v67 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v66, v67, v69, "End: Loop UsagePoints", "", v68, 2u);
        MEMORY[0x23188F650](v68, -1, -1);
      }

      v70 = *(v0 + 808);
      v71 = *(v0 + 792);
      v72 = *(v0 + 784);
      v73 = *(v0 + 608);
      v74 = *(v0 + 600);
      v75 = *(v0 + 576);

      v70(v73, v75);
      v71(v74, v72, v75);
      v76 = sub_22B36048C();
      v77 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        v79 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v76, v77, v79, "Start: Compare Meters", "", v78, 2u);
        MEMORY[0x23188F650](v78, -1, -1);
      }

      v80 = *(v0 + 808);
      v81 = *(v0 + 600);
      v82 = *(v0 + 576);

      v80(v81, v82);
      v83 = sub_22B35F18C();
      if (v83)
      {
        v84 = v83;
        if (*(v83 + 16))
        {

          v86 = sub_22B31A80C(v85);

          v87 = *(v0 + 360);

          v89 = sub_22B1C3A84(v88, v86);

          if (v89)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v90 = *(v0 + 456);
            v91 = *(v0 + 424);
            v92 = *(v0 + 432);
            v93 = *(v0 + 384);
            v94 = __swift_project_value_buffer(v91, qword_28140BD10);
            swift_beginAccess();
            (*(v92 + 16))(v90, v94, v91);

            v95 = v93;

            v96 = sub_22B36050C();
            v97 = sub_22B360D2C();

            v98 = os_log_type_enabled(v96, v97);
            v99 = *(v0 + 720);
            if (v98)
            {
              v100 = *(v0 + 712);
              v248 = *(v0 + 456);
              v240 = *(v0 + 432);
              v244 = *(v0 + 424);
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v252[0] = v102;
              *v101 = 136315650;
              v103 = MEMORY[0x23188E390](v84, MEMORY[0x277D837D0]);
              v105 = v104;

              v106 = sub_22B1A7B20(v103, v105, v252);

              *(v101 + 4) = v106;
              *(v101 + 12) = 2082;
              v107 = sub_22B1A7B20(v100, v99, v252);

              *(v101 + 14) = v107;
              *(v101 + 22) = 2082;
              v108 = sub_22B35F3AC();
              v110 = sub_22B1A7B20(v108, v109, v252);

              *(v101 + 24) = v110;
              _os_log_impl(&dword_22B116000, v96, v97, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v101, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v102, -1, -1);
              MEMORY[0x23188F650](v101, -1, -1);

              (*(v240 + 8))(v248, v244);
            }

            else
            {
              v195 = *(v0 + 456);
              v196 = *(v0 + 424);
              v197 = *(v0 + 432);

              (*(v197 + 8))(v195, v196);
            }

            goto LABEL_62;
          }

          goto LABEL_48;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v138 = *(v0 + 432);
      v137 = *(v0 + 440);
      v139 = *(v0 + 424);
      v140 = *(v0 + 384);
      v141 = __swift_project_value_buffer(v139, qword_28140BD10);
      swift_beginAccess();
      (*(v138 + 16))(v137, v141, v139);

      v142 = v140;
      v143 = sub_22B36050C();
      v144 = sub_22B360D2C();

      v145 = os_log_type_enabled(v143, v144);
      v146 = *(v0 + 720);
      if (v145)
      {
        v147 = *(v0 + 712);
        v249 = *(v0 + 440);
        v241 = *(v0 + 432);
        v245 = *(v0 + 424);
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v252[0] = v149;
        *v148 = 136315650;
        swift_beginAccess();

        v150 = sub_22B360C5C();
        v152 = v151;

        v153 = sub_22B1A7B20(v150, v152, v252);

        *(v148 + 4) = v153;
        *(v148 + 12) = 2082;
        v154 = sub_22B1A7B20(v147, v146, v252);

        *(v148 + 14) = v154;
        *(v148 + 22) = 2082;
        v155 = sub_22B35F3AC();
        v157 = sub_22B1A7B20(v155, v156, v252);

        *(v148 + 24) = v157;
        _os_log_impl(&dword_22B116000, v143, v144, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v148, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v149, -1, -1);
        MEMORY[0x23188F650](v148, -1, -1);

        (*(v241 + 8))(v249, v245);
      }

      else
      {
        v159 = *(v0 + 432);
        v158 = *(v0 + 440);
        v160 = *(v0 + 424);

        (*(v159 + 8))(v158, v160);
      }

      if (*(v0 + 1141) != 1)
      {
        goto LABEL_62;
      }

      swift_beginAccess();
      v161 = *(v0 + 360);
      v162 = *(v161 + 16);
      if (v162)
      {
        v87 = sub_22B32DCA4(*(v161 + 16), 0);
        v163 = sub_22B24FA90(v252, v87 + 4, v162, v161);
        v164 = v252[0];

        sub_22B1A20B8(v164);
        if (v163 != v162)
        {
          __break(1u);
LABEL_48:

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v165 = *(v0 + 448);
          v166 = *(v0 + 424);
          v167 = *(v0 + 432);
          v168 = *(v0 + 384);
          v169 = __swift_project_value_buffer(v166, qword_28140BD10);
          swift_beginAccess();
          (*(v167 + 16))(v165, v169, v166);

          v170 = v168;
          v171 = sub_22B36050C();
          v172 = sub_22B360D2C();

          v173 = os_log_type_enabled(v171, v172);
          v174 = *(v0 + 720);
          if (v173)
          {
            v175 = *(v0 + 712);
            v250 = *(v0 + 448);
            v242 = *(v0 + 432);
            v246 = *(v0 + 424);
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v252[0] = v177;
            *v176 = 136315650;

            v178 = sub_22B360C5C();
            v180 = v179;

            v181 = sub_22B1A7B20(v178, v180, v252);

            *(v176 + 4) = v181;
            *(v176 + 12) = 2082;
            v182 = sub_22B1A7B20(v175, v174, v252);

            *(v176 + 14) = v182;
            *(v176 + 22) = 2082;
            v183 = sub_22B35F3AC();
            v185 = sub_22B1A7B20(v183, v184, v252);

            *(v176 + 24) = v185;
            _os_log_impl(&dword_22B116000, v171, v172, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v176, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v177, -1, -1);
            MEMORY[0x23188F650](v176, -1, -1);

            (*(v242 + 8))(v250, v246);
          }

          else
          {
            v198 = *(v0 + 448);
            v199 = *(v0 + 424);
            v200 = *(v0 + 432);

            (*(v200 + 8))(v198, v199);
          }

          if (*(v0 + 1141) != 1)
          {
            goto LABEL_62;
          }

          v201 = v87[2];
          if (v201)
          {
            v202 = sub_22B32DCA4(v87[2], 0);
            v203 = sub_22B24FA90(v252, v202 + 4, v201, v87);
            v204 = v252[0];

            sub_22B1A20B8(v204);
            if (v203 != v201)
            {
              __break(1u);
LABEL_62:
              (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
              v205 = sub_22B36048C();
              v206 = sub_22B360E3C();
              v207 = sub_22B360FDC();
              v208 = *(v0 + 808);
              if (v207)
              {
                v209 = *(v0 + 592);
                v210 = *(v0 + 576);
                v211 = swift_slowAlloc();
                *v211 = 0;
                v212 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v205, v206, v212, "End: Compare Meters", "", v211, 2u);
                MEMORY[0x23188F650](v211, -1, -1);

                v213 = v209;
                v214 = v210;
              }

              else
              {
                v215 = *(v0 + 592);
                v216 = *(v0 + 576);

                v213 = v215;
                v214 = v216;
              }

              v208(v213, v214);
              v217 = sub_22B36048C();
              sub_22B3604CC();
              v218 = sub_22B360E1C();
              if (sub_22B360FDC())
              {
                v220 = *(v0 + 408);
                v219 = *(v0 + 416);
                v221 = *(v0 + 400);

                sub_22B3604FC();

                if ((*(v220 + 88))(v219, v221) == *MEMORY[0x277D85B00])
                {
                  v222 = "[Error] Interval already ended";
                }

                else
                {
                  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                  v222 = "";
                }

                v223 = swift_slowAlloc();
                *v223 = 0;
                v224 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v217, v218, v224, "FindGenerationMeters", v222, v223, 2u);
                MEMORY[0x23188F650](v223, -1, -1);
              }

              v225 = *(v0 + 704);
              v226 = *(v0 + 688);
              v227 = *(v0 + 680);
              v228 = *(v0 + 672);

              v229 = *(v227 + 8);
              v229(v226, v228);
              v229(v225, v228);
              swift_beginAccess();
              v251 = *(v0 + 360);

              v230 = *(v0 + 8);

              return v230(v251);
            }
          }

          else
          {
            v202 = MEMORY[0x277D84F90];
          }

          *(v0 + 1072) = v202;
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v231 = sub_22B35F3AC();
          v233 = v232;
          *(v0 + 1080) = v232;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022B36C000;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
          *(inited + 48) = v202;

          v235 = sub_22B321AAC(inited);
          *(v0 + 1088) = v235;
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
          v236 = swift_task_alloc();
          *(v0 + 1096) = v236;
          *v236 = v0;
          v236[1] = sub_22B1C29E4;
          v192 = v231;
          v193 = v233;
          v194 = v235;
          goto LABEL_77;
        }
      }

      else
      {
        v87 = MEMORY[0x277D84F90];
      }

      *(v0 + 1104) = v87;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v186 = sub_22B35F3AC();
      v188 = v187;
      *(v0 + 1112) = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v189 = swift_initStackObject();
      *(v189 + 16) = xmmword_22B3634B0;
      *(v189 + 32) = 0xD000000000000010;
      *(v189 + 40) = 0x800000022B36C000;
      *(v189 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(v189 + 48) = v87;

      v190 = sub_22B321AAC(v189);
      *(v0 + 1120) = v190;
      swift_setDeallocating();
      sub_22B123284(v189 + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v191 = swift_task_alloc();
      *(v0 + 1128) = v191;
      *v191 = v0;
      v191[1] = sub_22B1C3080;
      v192 = v186;
      v193 = v188;
      v194 = v190;
LABEL_77:

      return sub_22B2244D0(v192, v193, v194);
    }

    v111 = *(v0 + 832) + 1;
    *(v0 + 832) = v111;
    *(v0 + 824) = v1;
    v112 = *(v0 + 768);
    if (v111 < *(v112 + 16))
    {
      v113 = *(v0 + 792);
      v114 = *(v0 + 784);
      v115 = *(v0 + 656);
      v116 = *(v0 + 576);
      sub_22B1CA1F0(v112 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v111, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v113(v115, v114, v116);
      v117 = sub_22B36048C();
      v118 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        v120 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v117, v118, v120, "Start: Processing UsagePoint", "", v119, 2u);
        MEMORY[0x23188F650](v119, -1, -1);
      }

      v121 = *(v0 + 808);
      v122 = *(v0 + 792);
      v123 = *(v0 + 784);
      v124 = *(v0 + 656);
      v125 = *(v0 + 648);
      v126 = *(v0 + 576);

      v121(v124, v126);
      v122(v125, v123, v126);
      v127 = sub_22B36048C();
      v128 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        v130 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v127, v128, v130, "Start: Get Unique Meter IDs", "", v129, 2u);
        MEMORY[0x23188F650](v129, -1, -1);
      }

      v131 = *(v0 + 808);
      v132 = *(v0 + 648);
      v133 = *(v0 + 576);

      v131(v132, v133);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_82;
    }
  }

  else
  {
    v35 = *(v0 + 1000) + 1;
    *(v0 + 1000) = v35;
    *(v0 + 992) = v1;
    v36 = *(v0 + 968);
    if (v35 < *(v36 + 16))
    {
      v37 = *(v0 + 792);
      v38 = *(v0 + 784);
      v39 = *(v0 + 632);
      v40 = *(v0 + 576);
      v41 = v36 + 16 * v35;
      *(v0 + 1008) = *(v41 + 32);
      *(v0 + 1016) = *(v41 + 40);
      v37(v39, v38, v40);

      v42 = sub_22B36048C();
      v43 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v42, v43, v45, "Start: Has Meter Imported", "", v44, 2u);
        MEMORY[0x23188F650](v44, -1, -1);
      }

      v46 = *(v0 + 840);
      v47 = *(v0 + 808);
      v48 = *(v0 + 632);
      v49 = *(v0 + 576);

      v47(v48, v49);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v50;
      v51 = sub_22B1BD400;
      v52 = v46;
      goto LABEL_35;
    }

    __break(1u);
  }

  __break(1u);
LABEL_82:
  swift_once();
LABEL_34:
  v134 = *(v0 + 568);
  v135 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v134 + 16);
  *(v0 + 856) = *(v134 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v136;
  v51 = sub_22B1B98F8;
  v52 = v135;
LABEL_35:

  return MEMORY[0x2822009F8](v51, v52, 0);
}

uint64_t sub_22B1BF170()
{
  v1 = *(v0 + 1048);

  return MEMORY[0x2822009F8](sub_22B1BF1EC, 0, 0);
}

uint64_t sub_22B1BF1EC()
{
  v251 = v0;
  (*(v0 + 792))(*(v0 + 624), *(v0 + 784), *(v0 + 576));
  v1 = sub_22B36048C();
  v2 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v1, v2, v4, "End: Has Meter Imported", "", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v5 = *(v0 + 1000);
  v6 = *(v0 + 984);
  v7 = *(v0 + 808);
  v8 = *(v0 + 624);
  v9 = *(v0 + 576);

  v7(v8, v9);
  if (v5 + 1 == v6)
  {

    v10 = *(v0 + 368);
    if (*(v10 + 16) == *(v0 + 976))
    {
      v11 = *(v0 + 888);
      v12 = *(v0 + 880);
      v13 = *(v0 + 568);
      v14 = *(v0 + 536);
      v15 = *(v0 + 472);
      v16 = *(v0 + 424);
      v17 = *(v0 + 384);

      v11(v15, v12, v16);
      sub_22B1CA1F0(v13, v14, type metadata accessor for CDUsagePointRecords);

      v18 = v17;
      v19 = sub_22B36050C();
      v20 = sub_22B360D2C();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 904);
      if (v21)
      {
        v23 = *(v0 + 720);
        v24 = *(v0 + 712);
        v25 = *(v0 + 536);
        v241 = *(v0 + 424);
        v245 = *(v0 + 472);
        v237 = *(v0 + 904);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v250[0] = v27;
        *v26 = 136446722;
        *(v26 + 4) = sub_22B1A7B20(v24, v23, v250);
        *(v26 + 12) = 2082;
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);

        sub_22B1CA258(v25, type metadata accessor for CDUsagePointRecords);
        v30 = sub_22B1A7B20(v28, v29, v250);

        *(v26 + 14) = v30;
        *(v26 + 22) = 2082;
        v31 = sub_22B35F3AC();
        v33 = sub_22B1A7B20(v31, v32, v250);

        *(v26 + 24) = v33;
        _os_log_impl(&dword_22B116000, v19, v20, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v27, -1, -1);
        MEMORY[0x23188F650](v26, -1, -1);

        v237(v245, v241);
      }

      else
      {
        v52 = *(v0 + 536);
        v53 = *(v0 + 472);
        v54 = *(v0 + 424);

        sub_22B1CA258(v52, type metadata accessor for CDUsagePointRecords);
        v22(v53, v54);
      }
    }

    else
    {
      sub_22B24883C(v10);
    }

    (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
    v55 = sub_22B36048C();
    v56 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v55, v56, v58, "End: Processing UsagePoint", "", v57, 2u);
      MEMORY[0x23188F650](v57, -1, -1);
    }

    v59 = *(v0 + 832);
    v60 = *(v0 + 816);
    v61 = *(v0 + 808);
    v62 = *(v0 + 616);
    v63 = *(v0 + 576);
    v64 = *(v0 + 568);

    v61(v62, v63);
    sub_22B1CA258(v64, type metadata accessor for CDUsagePointRecords);
    if (v59 + 1 == v60)
    {

      (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
      v65 = sub_22B36048C();
      v66 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        v68 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v65, v66, v68, "End: Loop UsagePoints", "", v67, 2u);
        MEMORY[0x23188F650](v67, -1, -1);
      }

      v69 = *(v0 + 808);
      v70 = *(v0 + 792);
      v71 = *(v0 + 784);
      v72 = *(v0 + 608);
      v73 = *(v0 + 600);
      v74 = *(v0 + 576);

      v69(v72, v74);
      v70(v73, v71, v74);
      v75 = sub_22B36048C();
      v76 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        v78 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v75, v76, v78, "Start: Compare Meters", "", v77, 2u);
        MEMORY[0x23188F650](v77, -1, -1);
      }

      v79 = *(v0 + 808);
      v80 = *(v0 + 600);
      v81 = *(v0 + 576);

      v79(v80, v81);
      v82 = sub_22B35F18C();
      if (v82)
      {
        v83 = v82;
        if (*(v82 + 16))
        {

          v85 = sub_22B31A80C(v84);

          v86 = *(v0 + 360);

          v88 = sub_22B1C3A84(v87, v85);

          if (v88)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v89 = *(v0 + 456);
            v90 = *(v0 + 424);
            v91 = *(v0 + 432);
            v92 = *(v0 + 384);
            v93 = __swift_project_value_buffer(v90, qword_28140BD10);
            swift_beginAccess();
            (*(v91 + 16))(v89, v93, v90);

            v94 = v92;

            v95 = sub_22B36050C();
            v96 = sub_22B360D2C();

            v97 = os_log_type_enabled(v95, v96);
            v98 = *(v0 + 720);
            if (v97)
            {
              v99 = *(v0 + 712);
              v246 = *(v0 + 456);
              v238 = *(v0 + 432);
              v242 = *(v0 + 424);
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v250[0] = v101;
              *v100 = 136315650;
              v102 = MEMORY[0x23188E390](v83, MEMORY[0x277D837D0]);
              v104 = v103;

              v105 = sub_22B1A7B20(v102, v104, v250);

              *(v100 + 4) = v105;
              *(v100 + 12) = 2082;
              v106 = sub_22B1A7B20(v99, v98, v250);

              *(v100 + 14) = v106;
              *(v100 + 22) = 2082;
              v107 = sub_22B35F3AC();
              v109 = sub_22B1A7B20(v107, v108, v250);

              *(v100 + 24) = v109;
              _os_log_impl(&dword_22B116000, v95, v96, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v100, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v101, -1, -1);
              MEMORY[0x23188F650](v100, -1, -1);

              (*(v238 + 8))(v246, v242);
            }

            else
            {
              v194 = *(v0 + 456);
              v195 = *(v0 + 424);
              v196 = *(v0 + 432);

              (*(v196 + 8))(v194, v195);
            }

            goto LABEL_61;
          }

          goto LABEL_47;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v137 = *(v0 + 432);
      v136 = *(v0 + 440);
      v138 = *(v0 + 424);
      v139 = *(v0 + 384);
      v140 = __swift_project_value_buffer(v138, qword_28140BD10);
      swift_beginAccess();
      (*(v137 + 16))(v136, v140, v138);

      v141 = v139;
      v142 = sub_22B36050C();
      v143 = sub_22B360D2C();

      v144 = os_log_type_enabled(v142, v143);
      v145 = *(v0 + 720);
      if (v144)
      {
        v146 = *(v0 + 712);
        v247 = *(v0 + 440);
        v239 = *(v0 + 432);
        v243 = *(v0 + 424);
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v250[0] = v148;
        *v147 = 136315650;
        swift_beginAccess();

        v149 = sub_22B360C5C();
        v151 = v150;

        v152 = sub_22B1A7B20(v149, v151, v250);

        *(v147 + 4) = v152;
        *(v147 + 12) = 2082;
        v153 = sub_22B1A7B20(v146, v145, v250);

        *(v147 + 14) = v153;
        *(v147 + 22) = 2082;
        v154 = sub_22B35F3AC();
        v156 = sub_22B1A7B20(v154, v155, v250);

        *(v147 + 24) = v156;
        _os_log_impl(&dword_22B116000, v142, v143, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v147, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v148, -1, -1);
        MEMORY[0x23188F650](v147, -1, -1);

        (*(v239 + 8))(v247, v243);
      }

      else
      {
        v158 = *(v0 + 432);
        v157 = *(v0 + 440);
        v159 = *(v0 + 424);

        (*(v158 + 8))(v157, v159);
      }

      if (*(v0 + 1141) != 1)
      {
        goto LABEL_61;
      }

      swift_beginAccess();
      v160 = *(v0 + 360);
      v161 = *(v160 + 16);
      if (v161)
      {
        v86 = sub_22B32DCA4(*(v160 + 16), 0);
        v162 = sub_22B24FA90(v250, v86 + 4, v161, v160);
        v163 = v250[0];

        sub_22B1A20B8(v163);
        if (v162 != v161)
        {
          __break(1u);
LABEL_47:

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v164 = *(v0 + 448);
          v165 = *(v0 + 424);
          v166 = *(v0 + 432);
          v167 = *(v0 + 384);
          v168 = __swift_project_value_buffer(v165, qword_28140BD10);
          swift_beginAccess();
          (*(v166 + 16))(v164, v168, v165);

          v169 = v167;
          v170 = sub_22B36050C();
          v171 = sub_22B360D2C();

          v172 = os_log_type_enabled(v170, v171);
          v173 = *(v0 + 720);
          if (v172)
          {
            v174 = *(v0 + 712);
            v248 = *(v0 + 448);
            v240 = *(v0 + 432);
            v244 = *(v0 + 424);
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v250[0] = v176;
            *v175 = 136315650;

            v177 = sub_22B360C5C();
            v179 = v178;

            v180 = sub_22B1A7B20(v177, v179, v250);

            *(v175 + 4) = v180;
            *(v175 + 12) = 2082;
            v181 = sub_22B1A7B20(v174, v173, v250);

            *(v175 + 14) = v181;
            *(v175 + 22) = 2082;
            v182 = sub_22B35F3AC();
            v184 = sub_22B1A7B20(v182, v183, v250);

            *(v175 + 24) = v184;
            _os_log_impl(&dword_22B116000, v170, v171, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v175, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v176, -1, -1);
            MEMORY[0x23188F650](v175, -1, -1);

            (*(v240 + 8))(v248, v244);
          }

          else
          {
            v197 = *(v0 + 448);
            v198 = *(v0 + 424);
            v199 = *(v0 + 432);

            (*(v199 + 8))(v197, v198);
          }

          if (*(v0 + 1141) != 1)
          {
            goto LABEL_61;
          }

          v200 = v86[2];
          if (v200)
          {
            v201 = sub_22B32DCA4(v86[2], 0);
            v202 = sub_22B24FA90(v250, v201 + 4, v200, v86);
            v203 = v250[0];

            sub_22B1A20B8(v203);
            if (v202 != v200)
            {
              __break(1u);
LABEL_61:
              (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
              v204 = sub_22B36048C();
              v205 = sub_22B360E3C();
              v206 = sub_22B360FDC();
              v207 = *(v0 + 808);
              if (v206)
              {
                v208 = *(v0 + 592);
                v209 = *(v0 + 576);
                v210 = swift_slowAlloc();
                *v210 = 0;
                v211 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v204, v205, v211, "End: Compare Meters", "", v210, 2u);
                MEMORY[0x23188F650](v210, -1, -1);

                v212 = v208;
                v213 = v209;
              }

              else
              {
                v214 = *(v0 + 592);
                v215 = *(v0 + 576);

                v212 = v214;
                v213 = v215;
              }

              v207(v212, v213);
              v216 = sub_22B36048C();
              sub_22B3604CC();
              v217 = sub_22B360E1C();
              if (sub_22B360FDC())
              {
                v219 = *(v0 + 408);
                v218 = *(v0 + 416);
                v220 = *(v0 + 400);

                sub_22B3604FC();

                if ((*(v219 + 88))(v218, v220) == *MEMORY[0x277D85B00])
                {
                  v221 = "[Error] Interval already ended";
                }

                else
                {
                  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                  v221 = "";
                }

                v222 = swift_slowAlloc();
                *v222 = 0;
                v223 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v216, v217, v223, "FindGenerationMeters", v221, v222, 2u);
                MEMORY[0x23188F650](v222, -1, -1);
              }

              v224 = *(v0 + 704);
              v225 = *(v0 + 688);
              v226 = *(v0 + 680);
              v227 = *(v0 + 672);

              v228 = *(v226 + 8);
              v228(v225, v227);
              v228(v224, v227);
              swift_beginAccess();
              v249 = *(v0 + 360);

              v229 = *(v0 + 8);

              return v229(v249);
            }
          }

          else
          {
            v201 = MEMORY[0x277D84F90];
          }

          *(v0 + 1072) = v201;
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v230 = sub_22B35F3AC();
          v232 = v231;
          *(v0 + 1080) = v231;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022B36C000;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
          *(inited + 48) = v201;

          v234 = sub_22B321AAC(inited);
          *(v0 + 1088) = v234;
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
          v235 = swift_task_alloc();
          *(v0 + 1096) = v235;
          *v235 = v0;
          v235[1] = sub_22B1C29E4;
          v191 = v230;
          v192 = v232;
          v193 = v234;
          goto LABEL_76;
        }
      }

      else
      {
        v86 = MEMORY[0x277D84F90];
      }

      *(v0 + 1104) = v86;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v185 = sub_22B35F3AC();
      v187 = v186;
      *(v0 + 1112) = v186;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v188 = swift_initStackObject();
      *(v188 + 16) = xmmword_22B3634B0;
      *(v188 + 32) = 0xD000000000000010;
      *(v188 + 40) = 0x800000022B36C000;
      *(v188 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(v188 + 48) = v86;

      v189 = sub_22B321AAC(v188);
      *(v0 + 1120) = v189;
      swift_setDeallocating();
      sub_22B123284(v188 + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v190 = swift_task_alloc();
      *(v0 + 1128) = v190;
      *v190 = v0;
      v190[1] = sub_22B1C3080;
      v191 = v185;
      v192 = v187;
      v193 = v189;
LABEL_76:

      return sub_22B2244D0(v191, v192, v193);
    }

    v110 = *(v0 + 832) + 1;
    *(v0 + 832) = v110;
    *(v0 + 824) = 0;
    v111 = *(v0 + 768);
    if (v110 < *(v111 + 16))
    {
      v112 = *(v0 + 792);
      v113 = *(v0 + 784);
      v114 = *(v0 + 656);
      v115 = *(v0 + 576);
      sub_22B1CA1F0(v111 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v110, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v112(v114, v113, v115);
      v116 = sub_22B36048C();
      v117 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v116, v117, v119, "Start: Processing UsagePoint", "", v118, 2u);
        MEMORY[0x23188F650](v118, -1, -1);
      }

      v120 = *(v0 + 808);
      v121 = *(v0 + 792);
      v122 = *(v0 + 784);
      v123 = *(v0 + 656);
      v124 = *(v0 + 648);
      v125 = *(v0 + 576);

      v120(v123, v125);
      v121(v124, v122, v125);
      v126 = sub_22B36048C();
      v127 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        v129 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v126, v127, v129, "Start: Get Unique Meter IDs", "", v128, 2u);
        MEMORY[0x23188F650](v128, -1, -1);
      }

      v130 = *(v0 + 808);
      v131 = *(v0 + 648);
      v132 = *(v0 + 576);

      v130(v131, v132);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v34 = *(v0 + 1000) + 1;
    *(v0 + 1000) = v34;
    *(v0 + 992) = 0;
    v35 = *(v0 + 968);
    if (v34 < *(v35 + 16))
    {
      v36 = *(v0 + 792);
      v37 = *(v0 + 784);
      v38 = *(v0 + 632);
      v39 = *(v0 + 576);
      v40 = v35 + 16 * v34;
      *(v0 + 1008) = *(v40 + 32);
      *(v0 + 1016) = *(v40 + 40);
      v36(v38, v37, v39);

      v41 = sub_22B36048C();
      v42 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v41, v42, v44, "Start: Has Meter Imported", "", v43, 2u);
        MEMORY[0x23188F650](v43, -1, -1);
      }

      v45 = *(v0 + 840);
      v46 = *(v0 + 808);
      v47 = *(v0 + 632);
      v48 = *(v0 + 576);

      v46(v47, v48);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v49;
      v50 = sub_22B1BD400;
      v51 = v45;
      goto LABEL_34;
    }

    __break(1u);
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_33:
  v133 = *(v0 + 568);
  v134 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v133 + 16);
  *(v0 + 856) = *(v133 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v135;
  v50 = sub_22B1B98F8;
  v51 = v134;
LABEL_34:

  return MEMORY[0x2822009F8](v50, v51, 0);
}

uint64_t sub_22B1C0B24()
{
  v1 = *(v0 + 1048);

  return MEMORY[0x2822009F8](sub_22B1C0BA0, 0, 0);
}

uint64_t sub_22B1C0BA0()
{
  v309 = v0;
  v1 = *(v0 + 1142);
  if (v1 == 2)
  {
LABEL_10:

    goto LABEL_11;
  }

  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 568);
  v5 = *(v0 + 424);
  v6 = *(v0 + 384);
  if ((v1 & 1) == 0)
  {
    v26 = *(v0 + 544);
    v2(*(v0 + 480), v3, v5);
    sub_22B1CA1F0(v4, v26, type metadata accessor for CDUsagePointRecords);

    v27 = v6;

    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 1016);
      v31 = *(v0 + 1008);
      v32 = *(v0 + 720);
      v33 = *(v0 + 712);
      v34 = *(v0 + 544);
      v296 = *(v0 + 480);
      v302 = *(v0 + 904);
      v290 = *(v0 + 424);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v308[0] = v36;
      *v35 = 136315906;
      *(v35 + 4) = sub_22B1A7B20(v31, v30, v308);
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_22B1A7B20(v33, v32, v308);
      *(v35 + 22) = 2082;
      v37 = *(v34 + 16);
      v38 = *(v34 + 24);

      sub_22B1CA258(v34, type metadata accessor for CDUsagePointRecords);
      v39 = sub_22B1A7B20(v37, v38, v308);

      *(v35 + 24) = v39;
      *(v35 + 32) = 2082;
      v40 = sub_22B35F3AC();
      v42 = sub_22B1A7B20(v40, v41, v308);

      *(v35 + 34) = v42;
      _os_log_impl(&dword_22B116000, v28, v29, "[AMIProcessor] Meter %s for %{public}s with usagePoint %{public}s at %{public}s has never imported energy", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v36, -1, -1);
      MEMORY[0x23188F650](v35, -1, -1);

      v302(v296, v290);
    }

    else
    {
      v47 = *(v0 + 904);
      v48 = *(v0 + 544);
      v49 = *(v0 + 480);
      v50 = *(v0 + 424);

      sub_22B1CA258(v48, type metadata accessor for CDUsagePointRecords);
      v47(v49, v50);
    }

    sub_22B32DF50((v0 + 344), *(v0 + 1008), *(v0 + 1016));
    goto LABEL_10;
  }

  v7 = *(v0 + 552);
  v2(*(v0 + 488), v3, v5);
  sub_22B1CA1F0(v4, v7, type metadata accessor for CDUsagePointRecords);

  v8 = v6;

  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1016);
  if (v11)
  {
    v13 = *(v0 + 1008);
    v14 = *(v0 + 720);
    v15 = *(v0 + 712);
    v16 = *(v0 + 552);
    v295 = *(v0 + 488);
    v301 = *(v0 + 904);
    v289 = *(v0 + 424);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v308[0] = v18;
    *v17 = 136315906;
    v19 = sub_22B1A7B20(v13, v12, v308);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_22B1A7B20(v15, v14, v308);
    *(v17 + 22) = 2082;
    v20 = *(v16 + 16);
    v21 = *(v16 + 24);

    sub_22B1CA258(v16, type metadata accessor for CDUsagePointRecords);
    v22 = sub_22B1A7B20(v20, v21, v308);

    *(v17 + 24) = v22;
    *(v17 + 32) = 2082;
    v23 = sub_22B35F3AC();
    v25 = sub_22B1A7B20(v23, v24, v308);

    *(v17 + 34) = v25;
    _os_log_impl(&dword_22B116000, v9, v10, "[AMIProcessor] Meter %s for %{public}s with usagePoint %{public}s at %{public}s has imported energy", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    v301(v295, v289);
  }

  else
  {
    v43 = *(v0 + 904);
    v44 = *(v0 + 552);
    v45 = *(v0 + 488);
    v46 = *(v0 + 424);

    sub_22B1CA258(v44, type metadata accessor for CDUsagePointRecords);
    v43(v45, v46);
  }

LABEL_11:
  v51 = *(v0 + 1064);
  (*(v0 + 792))(*(v0 + 624), *(v0 + 784), *(v0 + 576));
  v52 = sub_22B36048C();
  v53 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v52, v53, v55, "End: Has Meter Imported", "", v54, 2u);
    MEMORY[0x23188F650](v54, -1, -1);
  }

  v56 = *(v0 + 1000);
  v57 = *(v0 + 984);
  v58 = *(v0 + 808);
  v59 = *(v0 + 624);
  v60 = *(v0 + 576);

  v58(v59, v60);
  if (v56 + 1 == v57)
  {

    v61 = *(v0 + 368);
    if (*(v61 + 16) == *(v0 + 976))
    {
      v303 = v51;
      v62 = *(v0 + 888);
      v63 = *(v0 + 880);
      v64 = *(v0 + 568);
      v65 = *(v0 + 536);
      v66 = *(v0 + 472);
      v67 = *(v0 + 424);
      v68 = *(v0 + 384);

      v62(v66, v63, v67);
      sub_22B1CA1F0(v64, v65, type metadata accessor for CDUsagePointRecords);

      v69 = v68;
      v70 = sub_22B36050C();
      v71 = sub_22B360D2C();

      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 904);
      if (v72)
      {
        v74 = *(v0 + 720);
        v75 = *(v0 + 712);
        v76 = *(v0 + 536);
        v297 = *(v0 + 472);
        v291 = *(v0 + 424);
        v288 = *(v0 + 904);
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v308[0] = v78;
        *v77 = 136446722;
        *(v77 + 4) = sub_22B1A7B20(v75, v74, v308);
        *(v77 + 12) = 2082;
        v79 = *(v76 + 16);
        v80 = *(v76 + 24);

        sub_22B1CA258(v76, type metadata accessor for CDUsagePointRecords);
        v81 = sub_22B1A7B20(v79, v80, v308);

        *(v77 + 14) = v81;
        *(v77 + 22) = 2082;
        v82 = sub_22B35F3AC();
        v84 = sub_22B1A7B20(v82, v83, v308);

        *(v77 + 24) = v84;
        _os_log_impl(&dword_22B116000, v70, v71, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v78, -1, -1);
        MEMORY[0x23188F650](v77, -1, -1);

        v288(v297, v291);
      }

      else
      {
        v103 = *(v0 + 536);
        v104 = *(v0 + 472);
        v105 = *(v0 + 424);

        sub_22B1CA258(v103, type metadata accessor for CDUsagePointRecords);
        v73(v104, v105);
      }

      v51 = v303;
    }

    else
    {
      sub_22B24883C(v61);
    }

    (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
    v106 = sub_22B36048C();
    v107 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      v109 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v106, v107, v109, "End: Processing UsagePoint", "", v108, 2u);
      MEMORY[0x23188F650](v108, -1, -1);
    }

    v110 = *(v0 + 832);
    v111 = *(v0 + 816);
    v112 = *(v0 + 808);
    v113 = *(v0 + 616);
    v114 = *(v0 + 576);
    v115 = *(v0 + 568);

    v112(v113, v114);
    sub_22B1CA258(v115, type metadata accessor for CDUsagePointRecords);
    if (v110 + 1 == v111)
    {

      (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
      v116 = sub_22B36048C();
      v117 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v116, v117, v119, "End: Loop UsagePoints", "", v118, 2u);
        MEMORY[0x23188F650](v118, -1, -1);
      }

      v120 = *(v0 + 808);
      v121 = *(v0 + 792);
      v122 = *(v0 + 784);
      v123 = *(v0 + 608);
      v124 = *(v0 + 600);
      v125 = *(v0 + 576);

      v120(v123, v125);
      v121(v124, v122, v125);
      v126 = sub_22B36048C();
      v127 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        v129 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v126, v127, v129, "Start: Compare Meters", "", v128, 2u);
        MEMORY[0x23188F650](v128, -1, -1);
      }

      v130 = *(v0 + 808);
      v131 = *(v0 + 600);
      v132 = *(v0 + 576);

      v130(v131, v132);
      v133 = sub_22B35F18C();
      if (v133)
      {
        v134 = v133;
        if (*(v133 + 16))
        {

          v136 = sub_22B31A80C(v135);

          v137 = *(v0 + 360);

          v139 = sub_22B1C3A84(v138, v136);

          if (v139)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v140 = *(v0 + 456);
            v141 = *(v0 + 424);
            v142 = *(v0 + 432);
            v143 = *(v0 + 384);
            v144 = __swift_project_value_buffer(v141, qword_28140BD10);
            swift_beginAccess();
            (*(v142 + 16))(v140, v144, v141);

            v145 = v143;

            v146 = sub_22B36050C();
            v147 = sub_22B360D2C();

            v148 = os_log_type_enabled(v146, v147);
            v149 = *(v0 + 720);
            if (v148)
            {
              v150 = *(v0 + 712);
              v304 = *(v0 + 456);
              v292 = *(v0 + 432);
              v298 = *(v0 + 424);
              v151 = swift_slowAlloc();
              v152 = swift_slowAlloc();
              v308[0] = v152;
              *v151 = 136315650;
              v153 = MEMORY[0x23188E390](v134, MEMORY[0x277D837D0]);
              v155 = v154;

              v156 = sub_22B1A7B20(v153, v155, v308);

              *(v151 + 4) = v156;
              *(v151 + 12) = 2082;
              v157 = sub_22B1A7B20(v150, v149, v308);

              *(v151 + 14) = v157;
              *(v151 + 22) = 2082;
              v158 = sub_22B35F3AC();
              v160 = sub_22B1A7B20(v158, v159, v308);

              *(v151 + 24) = v160;
              _os_log_impl(&dword_22B116000, v146, v147, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v151, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v152, -1, -1);
              MEMORY[0x23188F650](v151, -1, -1);

              (*(v292 + 8))(v304, v298);
            }

            else
            {
              v245 = *(v0 + 456);
              v246 = *(v0 + 424);
              v247 = *(v0 + 432);

              (*(v247 + 8))(v245, v246);
            }

            goto LABEL_72;
          }

          goto LABEL_58;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v188 = *(v0 + 432);
      v187 = *(v0 + 440);
      v189 = *(v0 + 424);
      v190 = *(v0 + 384);
      v191 = __swift_project_value_buffer(v189, qword_28140BD10);
      swift_beginAccess();
      (*(v188 + 16))(v187, v191, v189);

      v192 = v190;
      v193 = sub_22B36050C();
      v194 = sub_22B360D2C();

      v195 = os_log_type_enabled(v193, v194);
      v196 = *(v0 + 720);
      if (v195)
      {
        v197 = *(v0 + 712);
        v305 = *(v0 + 440);
        v293 = *(v0 + 432);
        v299 = *(v0 + 424);
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v308[0] = v199;
        *v198 = 136315650;
        swift_beginAccess();

        v200 = sub_22B360C5C();
        v202 = v201;

        v203 = sub_22B1A7B20(v200, v202, v308);

        *(v198 + 4) = v203;
        *(v198 + 12) = 2082;
        v204 = sub_22B1A7B20(v197, v196, v308);

        *(v198 + 14) = v204;
        *(v198 + 22) = 2082;
        v205 = sub_22B35F3AC();
        v207 = sub_22B1A7B20(v205, v206, v308);

        *(v198 + 24) = v207;
        _os_log_impl(&dword_22B116000, v193, v194, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v198, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v199, -1, -1);
        MEMORY[0x23188F650](v198, -1, -1);

        (*(v293 + 8))(v305, v299);
      }

      else
      {
        v209 = *(v0 + 432);
        v208 = *(v0 + 440);
        v210 = *(v0 + 424);

        (*(v209 + 8))(v208, v210);
      }

      if (*(v0 + 1141) != 1)
      {
        goto LABEL_72;
      }

      swift_beginAccess();
      v211 = *(v0 + 360);
      v212 = *(v211 + 16);
      if (v212)
      {
        v137 = sub_22B32DCA4(*(v211 + 16), 0);
        v213 = sub_22B24FA90(v308, v137 + 4, v212, v211);
        v214 = v308[0];

        sub_22B1A20B8(v214);
        if (v213 != v212)
        {
          __break(1u);
LABEL_58:

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v215 = *(v0 + 448);
          v216 = *(v0 + 424);
          v217 = *(v0 + 432);
          v218 = *(v0 + 384);
          v219 = __swift_project_value_buffer(v216, qword_28140BD10);
          swift_beginAccess();
          (*(v217 + 16))(v215, v219, v216);

          v220 = v218;
          v221 = sub_22B36050C();
          v222 = sub_22B360D2C();

          v223 = os_log_type_enabled(v221, v222);
          v224 = *(v0 + 720);
          if (v223)
          {
            v225 = *(v0 + 712);
            v306 = *(v0 + 448);
            v294 = *(v0 + 432);
            v300 = *(v0 + 424);
            v226 = swift_slowAlloc();
            v227 = swift_slowAlloc();
            v308[0] = v227;
            *v226 = 136315650;

            v228 = sub_22B360C5C();
            v230 = v229;

            v231 = sub_22B1A7B20(v228, v230, v308);

            *(v226 + 4) = v231;
            *(v226 + 12) = 2082;
            v232 = sub_22B1A7B20(v225, v224, v308);

            *(v226 + 14) = v232;
            *(v226 + 22) = 2082;
            v233 = sub_22B35F3AC();
            v235 = sub_22B1A7B20(v233, v234, v308);

            *(v226 + 24) = v235;
            _os_log_impl(&dword_22B116000, v221, v222, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v226, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v227, -1, -1);
            MEMORY[0x23188F650](v226, -1, -1);

            (*(v294 + 8))(v306, v300);
          }

          else
          {
            v248 = *(v0 + 448);
            v249 = *(v0 + 424);
            v250 = *(v0 + 432);

            (*(v250 + 8))(v248, v249);
          }

          if (*(v0 + 1141) != 1)
          {
            goto LABEL_72;
          }

          v251 = v137[2];
          if (v251)
          {
            v252 = sub_22B32DCA4(v137[2], 0);
            v253 = sub_22B24FA90(v308, v252 + 4, v251, v137);
            v254 = v308[0];

            sub_22B1A20B8(v254);
            if (v253 != v251)
            {
              __break(1u);
LABEL_72:
              (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
              v255 = sub_22B36048C();
              v256 = sub_22B360E3C();
              v257 = sub_22B360FDC();
              v258 = *(v0 + 808);
              if (v257)
              {
                v259 = *(v0 + 592);
                v260 = *(v0 + 576);
                v261 = swift_slowAlloc();
                *v261 = 0;
                v262 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v255, v256, v262, "End: Compare Meters", "", v261, 2u);
                MEMORY[0x23188F650](v261, -1, -1);

                v263 = v259;
                v264 = v260;
              }

              else
              {
                v265 = *(v0 + 592);
                v266 = *(v0 + 576);

                v263 = v265;
                v264 = v266;
              }

              v258(v263, v264);
              v267 = sub_22B36048C();
              sub_22B3604CC();
              v268 = sub_22B360E1C();
              if (sub_22B360FDC())
              {
                v270 = *(v0 + 408);
                v269 = *(v0 + 416);
                v271 = *(v0 + 400);

                sub_22B3604FC();

                if ((*(v270 + 88))(v269, v271) == *MEMORY[0x277D85B00])
                {
                  v272 = "[Error] Interval already ended";
                }

                else
                {
                  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                  v272 = "";
                }

                v273 = swift_slowAlloc();
                *v273 = 0;
                v274 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v267, v268, v274, "FindGenerationMeters", v272, v273, 2u);
                MEMORY[0x23188F650](v273, -1, -1);
              }

              v275 = *(v0 + 704);
              v276 = *(v0 + 688);
              v277 = *(v0 + 680);
              v278 = *(v0 + 672);

              v279 = *(v277 + 8);
              v279(v276, v278);
              v279(v275, v278);
              swift_beginAccess();
              v307 = *(v0 + 360);

              v280 = *(v0 + 8);

              return v280(v307);
            }
          }

          else
          {
            v252 = MEMORY[0x277D84F90];
          }

          *(v0 + 1072) = v252;
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v281 = sub_22B35F3AC();
          v283 = v282;
          *(v0 + 1080) = v282;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022B36C000;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
          *(inited + 48) = v252;

          v285 = sub_22B321AAC(inited);
          *(v0 + 1088) = v285;
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
          v286 = swift_task_alloc();
          *(v0 + 1096) = v286;
          *v286 = v0;
          v286[1] = sub_22B1C29E4;
          v242 = v281;
          v243 = v283;
          v244 = v285;
          goto LABEL_87;
        }
      }

      else
      {
        v137 = MEMORY[0x277D84F90];
      }

      *(v0 + 1104) = v137;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v236 = sub_22B35F3AC();
      v238 = v237;
      *(v0 + 1112) = v237;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v239 = swift_initStackObject();
      *(v239 + 16) = xmmword_22B3634B0;
      *(v239 + 32) = 0xD000000000000010;
      *(v239 + 40) = 0x800000022B36C000;
      *(v239 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(v239 + 48) = v137;

      v240 = sub_22B321AAC(v239);
      *(v0 + 1120) = v240;
      swift_setDeallocating();
      sub_22B123284(v239 + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v241 = swift_task_alloc();
      *(v0 + 1128) = v241;
      *v241 = v0;
      v241[1] = sub_22B1C3080;
      v242 = v236;
      v243 = v238;
      v244 = v240;
LABEL_87:

      return sub_22B2244D0(v242, v243, v244);
    }

    v161 = *(v0 + 832) + 1;
    *(v0 + 832) = v161;
    *(v0 + 824) = v51;
    v162 = *(v0 + 768);
    if (v161 < *(v162 + 16))
    {
      v163 = *(v0 + 792);
      v164 = *(v0 + 784);
      v165 = *(v0 + 656);
      v166 = *(v0 + 576);
      sub_22B1CA1F0(v162 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v161, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v163(v165, v164, v166);
      v167 = sub_22B36048C();
      v168 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        v170 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v167, v168, v170, "Start: Processing UsagePoint", "", v169, 2u);
        MEMORY[0x23188F650](v169, -1, -1);
      }

      v171 = *(v0 + 808);
      v172 = *(v0 + 792);
      v173 = *(v0 + 784);
      v174 = *(v0 + 656);
      v175 = *(v0 + 648);
      v176 = *(v0 + 576);

      v171(v174, v176);
      v172(v175, v173, v176);
      v177 = sub_22B36048C();
      v178 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        v180 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v177, v178, v180, "Start: Get Unique Meter IDs", "", v179, 2u);
        MEMORY[0x23188F650](v179, -1, -1);
      }

      v181 = *(v0 + 808);
      v182 = *(v0 + 648);
      v183 = *(v0 + 576);

      v181(v182, v183);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_92;
    }
  }

  else
  {
    v85 = *(v0 + 1000) + 1;
    *(v0 + 1000) = v85;
    *(v0 + 992) = v51;
    v86 = *(v0 + 968);
    if (v85 < *(v86 + 16))
    {
      v87 = *(v0 + 792);
      v88 = *(v0 + 784);
      v89 = *(v0 + 632);
      v90 = *(v0 + 576);
      v91 = v86 + 16 * v85;
      *(v0 + 1008) = *(v91 + 32);
      *(v0 + 1016) = *(v91 + 40);
      v87(v89, v88, v90);

      v92 = sub_22B36048C();
      v93 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        v95 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v92, v93, v95, "Start: Has Meter Imported", "", v94, 2u);
        MEMORY[0x23188F650](v94, -1, -1);
      }

      v96 = *(v0 + 840);
      v97 = *(v0 + 808);
      v98 = *(v0 + 632);
      v99 = *(v0 + 576);

      v97(v98, v99);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v100;
      v101 = sub_22B1BD400;
      v102 = v96;
      goto LABEL_45;
    }

    __break(1u);
  }

  __break(1u);
LABEL_92:
  swift_once();
LABEL_44:
  v184 = *(v0 + 568);
  v185 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v184 + 16);
  *(v0 + 856) = *(v184 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v186;
  v101 = sub_22B1B98F8;
  v102 = v185;
LABEL_45:

  return MEMORY[0x2822009F8](v101, v102, 0);
}

uint64_t sub_22B1C29E4(void *a1)
{

  if (v1)
  {

    v3 = sub_22B1CA338;
  }

  else
  {

    v3 = sub_22B1C2B60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1C2B60()
{
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCA0;
  if (qword_28140BCA0)
  {
    v2 = sub_22B360A3C();

    sub_22B35F04C();

    MEMORY[0x23188E270](5064493, 0xE300000000000000);

    v3 = sub_22B36081C();

    [v1 setValue:v2 forKey:v3];
  }

  else
  {
  }

  (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
  v4 = sub_22B36048C();
  v5 = sub_22B360E3C();
  v6 = sub_22B360FDC();
  v7 = *(v0 + 808);
  if (v6)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 576);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v4, v5, v11, "End: Compare Meters", "", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);

    v12 = v8;
    v13 = v9;
  }

  else
  {
    v14 = *(v0 + 592);
    v15 = *(v0 + 576);

    v12 = v14;
    v13 = v15;
  }

  v7(v12, v13);
  v16 = sub_22B36048C();
  sub_22B3604CC();
  v17 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v19 = *(v0 + 408);
    v18 = *(v0 + 416);
    v20 = *(v0 + 400);

    sub_22B3604FC();

    if ((*(v19 + 88))(v18, v20) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v16, v17, v23, "FindGenerationMeters", v21, v22, 2u);
    MEMORY[0x23188F650](v22, -1, -1);
  }

  v24 = *(v0 + 704);
  v25 = *(v0 + 688);
  v26 = *(v0 + 680);
  v27 = *(v0 + 672);

  v28 = *(v26 + 8);
  v28(v25, v27);
  v28(v24, v27);
  swift_beginAccess();
  v31 = *(v0 + 360);

  v29 = *(v0 + 8);

  return v29(v31);
}

uint64_t sub_22B1C3080(void *a1)
{

  if (v1)
  {

    v3 = sub_22B1CA33C;
  }

  else
  {

    v3 = sub_22B1C31FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1C31FC()
{
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCA0;
  if (qword_28140BCA0)
  {
    v2 = sub_22B360A3C();

    sub_22B35F04C();

    MEMORY[0x23188E270](5064493, 0xE300000000000000);

    v3 = sub_22B36081C();

    [v1 setValue:v2 forKey:v3];
  }

  else
  {
  }

  (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
  v4 = sub_22B36048C();
  v5 = sub_22B360E3C();
  v6 = sub_22B360FDC();
  v7 = *(v0 + 808);
  if (v6)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 576);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v4, v5, v11, "End: Compare Meters", "", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);

    v12 = v8;
    v13 = v9;
  }

  else
  {
    v14 = *(v0 + 592);
    v15 = *(v0 + 576);

    v12 = v14;
    v13 = v15;
  }

  v7(v12, v13);
  v16 = sub_22B36048C();
  sub_22B3604CC();
  v17 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v19 = *(v0 + 408);
    v18 = *(v0 + 416);
    v20 = *(v0 + 400);

    sub_22B3604FC();

    if ((*(v19 + 88))(v18, v20) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v16, v17, v23, "FindGenerationMeters", v21, v22, 2u);
    MEMORY[0x23188F650](v22, -1, -1);
  }

  v24 = *(v0 + 704);
  v25 = *(v0 + 688);
  v26 = *(v0 + 680);
  v27 = *(v0 + 672);

  v28 = *(v26 + 8);
  v28(v25, v27);
  v28(v24, v27);
  swift_beginAccess();
  v31 = *(v0 + 360);

  v29 = *(v0 + 8);

  return v29(v31);
}

uint64_t sub_22B1C371C(uint64_t a1)
{
  v2 = sub_22B36048C();
  sub_22B3604CC();
  v3 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v5 = v1[51];
    v4 = v1[52];
    v6 = v1[50];

    sub_22B3604FC();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[51] + 8))(v1[52], v1[50]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v9, "FindGenerationMeters", v7, v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v10 = v1[88];
  v11 = v1[86];
  v12 = v1[85];
  v13 = v1[84];

  v14 = *(v12 + 8);
  v14(v11, v13);
  v14(v10, v13);
  swift_beginAccess();
  v17 = v1[45];

  v15 = v1[1];

  return v15(v17);
}

uint64_t sub_22B1C3A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_22B36149C();

      sub_22B3608FC();
      v19 = sub_22B3614DC();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}