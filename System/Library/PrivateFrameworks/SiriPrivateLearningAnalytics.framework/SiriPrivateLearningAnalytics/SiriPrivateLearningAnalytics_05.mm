uint64_t sub_222A8ADA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_222A8ADF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_222A8AE48(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_222A8AE84()
{
  result = qword_280CB7E88[0];
  if (!qword_280CB7E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB7E88);
  }

  return result;
}

void sub_222A8AED8()
{
  v1 = *v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
}

uint64_t sub_222A8AF24()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB4C10);
  v1 = __swift_project_value_buffer(v0, qword_280CB4C10);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222A8AFEC()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01D920);
  __swift_project_value_buffer(v0, qword_27D01D920);
  return sub_222B02138();
}

uint64_t sub_222A8B06C(uint64_t (*a1)(void))
{
  a1();

  return sub_222B03228();
}

id sub_222A8B0A8(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t sub_222A8B0BC(uint64_t a1)
{
  v31 = a1;
  v30 = sub_222B02988();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222B02968();
  MEMORY[0x28223BE20](v4);
  v5 = sub_222B02238();
  MEMORY[0x28223BE20](v5 - 8);
  v29[1] = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  sub_222B02228();
  v32 = MEMORY[0x277D84F90];
  sub_222A8B840(&unk_280CBA210, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v30);
  v6 = sub_222B029A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D958, &unk_222B0A170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B09E50;
  *(inited + 32) = 0;
  v8 = type metadata accessor for BiomeIntentStreamSubscriber();
  v9 = swift_allocObject();
  v10 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v11 = v6;
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v10 initWithIdentifier:v12 targetQueue:v11];

  *(v9 + 16) = v13;
  *(inited + 64) = v8;
  *(inited + 72) = &off_2835F5CD0;
  *(inited + 40) = v9;
  *(inited + 80) = 1;
  v14 = type metadata accessor for BiomeSiriUIStreamSubscriber();
  v15 = swift_allocObject();
  v16 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v17 = v11;
  v18 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v19 = [v16 initWithIdentifier:v18 targetQueue:v17];

  *(v15 + 16) = v19;
  *(inited + 112) = v14;
  *(inited + 120) = &off_2835F5CF0;
  *(inited + 88) = v15;
  *(inited + 128) = 2;
  v20 = type metadata accessor for BiomeSiriExecutionStreamSubscriber();
  v21 = swift_allocObject();
  v22 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v23 = v17;
  v24 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v25 = [v22 initWithIdentifier:v24 targetQueue:v23];

  *(v21 + 16) = v25;
  *(inited + 160) = v20;
  *(inited + 168) = &off_2835F5D10;
  *(inited + 136) = v21;
  v26 = sub_222A3A580(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF78, &qword_222B05B90);
  swift_arrayDestroy();
  type metadata accessor for BiomeSiriEventScenarioProcessor();
  v27 = swift_allocObject();
  sub_222A86A10(v23, v26, v31);
  return v27;
}

id sub_222A8B560(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_222B01788();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_222B01628();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_222A8B620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D940, &unk_222B0A140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A8B690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D940, &unk_222B0A140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_222A8B764(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 error];
  v2();
}

id sub_222A8B7EC(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_222A8B7FC(id a1)
{
  if (a1 >= 5)
  {
  }
}

void sub_222A8B80C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_222A8B840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics05BiomeA13EventScenarioO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222A8B8A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A8B8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void makePLUSEventLogTarget()(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 BOOLForKey_];

  v5 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v4)
  {
    v5 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v6 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v4)
  {
    v6 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t PLUSEventLogTarget.emitMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v11 = 0;
  v12 = 1;
  (*(a3 + 8))(a1, v8, &v11, a2, a3);
  return sub_222A264C8(v8);
}

uint64_t PLUSEventLogTarget.emitMessage(_:isolatedStreamId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v14 = 0;
  v15 = 1;
  (*(a4 + 8))(a1, v10, &v14, a3, a4);
  return sub_222A264C8(v10);
}

uint64_t PLUSEventLogTarget.emitMessage(_:timeStamp:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = *a2;
  v12 = sub_222B018D8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v14 = v11;
  v15 = 0;
  (*(a4 + 8))(a1, v10, &v14, a3, a4);
  return sub_222A264C8(v10);
}

uint64_t PLUSEventLogTimestamp.init()@<X0>(uint64_t *a1@<X8>)
{
  result = mach_absolute_time();
  *a1 = result;
  return result;
}

uint64_t sub_222A8BE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000222B13840 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_222B02F78();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_222A8BED8(uint64_t a1)
{
  v2 = sub_222A8C088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A8BF14(uint64_t a1)
{
  v2 = sub_222A8C088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PLUSEventLogTimestamp.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D960, &qword_222B0A248);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A8C088();
  sub_222B031B8();
  sub_222B02F08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_222A8C088()
{
  result = qword_27D01D968;
  if (!qword_27D01D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D968);
  }

  return result;
}

uint64_t PLUSEventLogTimestamp.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC73A0](v1);
  return sub_222B03168();
}

uint64_t PLUSEventLogTimestamp.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D970, &qword_222B0A250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A8C088();
  sub_222B03198();
  if (!v2)
  {
    v9 = sub_222B02EA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_222A8C2A4()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC73A0](v1);
  return sub_222B03168();
}

uint64_t sub_222A8C318(uint64_t a1)
{
  v2 = *v1;
  sub_222B03128();
  MEMORY[0x223DC73A0](v2);
  return sub_222B03168();
}

uint64_t sub_222A8C374(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D960, &qword_222B0A248);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A8C088();
  sub_222B031B8();
  sub_222B02F08();
  return (*(v3 + 8))(v5, v2);
}

void SiriAnalyticsSharedPLUSEventLogTarget.emitMessage(_:isolatedStreamId:timeStamp:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = [objc_opt_self() sharedAnalytics];
  v15 = [v14 defaultMessageStream];

  if (v13)
  {
    sub_222A6E45C(a2, v9);
    v16 = sub_222B018D8();
    v17 = *(v16 - 8);
    v18 = 0;
    if ((*(v17 + 48))(v9, 1, v16) != 1)
    {
      v18 = sub_222B01878();
      (*(v17 + 8))(v9, v16);
    }

    [v15 emitMessage:a1 isolatedStreamUUID:v18];
  }

  else
  {
    sub_222A6E45C(a2, v11);
    v19 = sub_222B018D8();
    v20 = *(v19 - 8);
    v18 = 0;
    if ((*(v20 + 48))(v11, 1, v19) != 1)
    {
      v18 = sub_222B01878();
      (*(v20 + 8))(v11, v19);
    }

    [v15 emitMessage:a1 timestamp:v12 isolatedStreamUUID:v18];
  }
}

void sub_222A8C73C()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v0 = sub_222B02148();
  __swift_project_value_buffer(v0, qword_280CBC458);
  oslog = sub_222B02128();
  v1 = sub_222B028D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_222A1C000, oslog, v1, "Omitting SELF logging call as logging disabled", v2, 2u);
    MEMORY[0x223DC7E30](v2, -1, -1);
  }
}

unint64_t sub_222A8C828()
{
  result = qword_27D01D978;
  if (!qword_27D01D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D978);
  }

  return result;
}

unint64_t sub_222A8C8D4()
{
  result = qword_27D01D980;
  if (!qword_27D01D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D980);
  }

  return result;
}

unint64_t sub_222A8C92C()
{
  result = qword_27D01D988;
  if (!qword_27D01D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D988);
  }

  return result;
}

unint64_t sub_222A8C984()
{
  result = qword_27D01D990;
  if (!qword_27D01D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D990);
  }

  return result;
}

id static GroundTruthRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_222A8CA50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

void sub_222A8CA98(id *a1)
{
  v1 = [*a1 id];
  sub_222B01898();
}

void sub_222A8CB04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 payload];
  v4 = sub_222B01798();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_222A8CB68(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 type];
  v4 = sub_222B02388();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void keypath_set_2Tm(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = (a5)(*a1, a1[1], a3, a4);
  [v7 *a6];
}

uint64_t SiriUserFeedbackLearningTask.init(context:usageLogger:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_222B023C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = *a1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_280CBC458);
  v10 = sub_222B02128();
  v11 = sub_222B028D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B138E0, &v42);
    _os_log_impl(&dword_222A1C000, v10, v11, "SiriUserFeedbackLearningTask.%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DC7E30](v13, -1, -1);
    MEMORY[0x223DC7E30](v12, -1, -1);
  }

  v39[0] = v8;
  sub_222A42E40(a2, v41);
  sub_222B01528();
  swift_allocObject();
  sub_222B01518();
  LOBYTE(v42) = v8;
  sub_222A8D0A8();
  v14 = sub_222B01508();
  if (v3)
  {
    goto LABEL_6;
  }

  v17 = v14;
  v18 = v15;
  v38 = a3;
  sub_222B023B8();
  v19 = sub_222B023A8();
  if (!v20)
  {
    sub_222A8D0FC();
    swift_allocError();
    *v34 = xmmword_222B0A510;
    *(v34 + 16) = 1;
    swift_willThrow();
    sub_222A26530(v17, v18);
LABEL_6:

    __swift_destroy_boxed_opaque_existential_0(a2);
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v21 = v20;
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05260;
  v37 = v17;
  v24 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v36 = v18;
  *(inited + 32) = (*(v23 + 8))(v24, v23);
  *(inited + 40) = v25;
  v27 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v27);
  v28 = (*(v26 + 24))(v27, v26);
  v29 = MEMORY[0x277D839B0];
  *(inited + 48) = v28 & 1;
  *(inited + 72) = v29;
  *(inited + 80) = 0x747865746E6F63;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v35;
  *(inited + 104) = v21;
  v30 = sub_222A396CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF40, &unk_222B055D0);
  swift_arrayDestroy();
  sub_222A8D2E0(v30);

  v31 = objc_allocWithZone(MEMORY[0x277D253F0]);
  v32 = sub_222B022A8();

  v33 = [v31 initWithParametersDict_];

  sub_222A26530(v37, v36);

  v40 = v33;
  sub_222A4DE5C(v39, v38);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_222A4DEB8(v39);
}

unint64_t sub_222A8D0A8()
{
  result = qword_280CB7B80;
  if (!qword_280CB7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7B80);
  }

  return result;
}

unint64_t sub_222A8D0FC()
{
  result = qword_27D01D998;
  if (!qword_27D01D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D998);
  }

  return result;
}

uint64_t SiriUserFeedbackLearningTask.description.getter()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_222B02C88();
  MEMORY[0x223DC66E0](0x3A747865746E6F63, 0xE900000000000020);
  v1 = *v0;
  strcpy(v9, "triggerType: ");
  HIWORD(v9[1]) = -4864;
  if (v1)
  {
    v2 = 0x6D69742D6C616572;
  }

  else
  {
    v2 = 0x616E65746E69616DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB0000000065636ELL;
  }

  MEMORY[0x223DC66E0](v2, v3);

  MEMORY[0x223DC66E0](v9[0], v9[1]);

  MEMORY[0x223DC66E0](0x736154726C6D202CLL, 0xEB00000000203A6BLL);
  v4 = [v0[1] description];
  v5 = sub_222B02388();
  v7 = v6;

  MEMORY[0x223DC66E0](v5, v7);

  return v10;
}

void sub_222A8D2E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D9A0, qword_222B0A6F0);
    v2 = sub_222B02DF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    sub_222A25344(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_222A250AC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_222A250AC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_222A250AC(v31, v32);
    v16 = sub_222B02BF8();
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
    sub_222A250AC(v32, (*(v2 + 56) + 32 * v9));
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

uint64_t SiriUserFeedbackLearningTask.init(mlrTask:usageLogger:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50[0] = a3;
  v5 = sub_222B023C8();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_222B01558();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_280CBC458);
  v9 = a1;
  v10 = sub_222B02128();
  v11 = sub_222B028D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B13900, v60);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&dword_222A1C000, v10, v11, "SiriUserFeedbackLearningTask.%s mlrTask:%@", v12, 0x16u);
    sub_222A8DF88(v13);
    MEMORY[0x223DC7E30](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DC7E30](v14, -1, -1);
    MEMORY[0x223DC7E30](v12, -1, -1);
  }

  v64 = v9;
  sub_222A42E40(a2, v65);
  v16 = v9;
  v17 = [v16 parameters];
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v18, v19);
  v20 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v21 = [v17 BOOLValueForKey:v20 defaultValue:0];

  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 16))(v21, v22, v23);
  sub_222A42E40(a2, v60);
  sub_222A42E40(a2, v57);
  v24 = sub_222B02128();
  v25 = sub_222B028D8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v66 = v27;
    *v26 = 136315394;
    v28 = v61;
    v29 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v30 = (*(v29 + 8))(v28, v29);
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0(v60);
    v33 = sub_222A230FC(v30, v32, &v66);

    *(v26 + 4) = v33;
    *(v26 + 12) = 1024;
    v34 = v58;
    v35 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    LODWORD(v33) = (*(v35 + 24))(v34, v35) & 1;
    __swift_destroy_boxed_opaque_existential_0(v57);
    *(v26 + 14) = v33;
    _os_log_impl(&dword_222A1C000, v24, v25, "%s = %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DC7E30](v27, -1, -1);
    MEMORY[0x223DC7E30](v26, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v57);

    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  v36 = [v16 parameters];

  v37 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v38 = [v36 stringValueForKey:v37 defaultValue:0];

  if (!v38 || (v39 = sub_222B02388(), v41 = v40, v38, v60[0] = v39, v60[1] = v41, v42 = v51, sub_222B01538(), sub_222A397FC(), sub_222B02B88(), (*(v52 + 8))(v42, v53), , v43 = v54, sub_222B023B8(), v44 = sub_222B02398(), v46 = v45, , (*(v55 + 8))(v43, v56), v46 >> 60 == 15))
  {
    sub_222A8D0FC();
    swift_allocError();
    *v47 = xmmword_222B0A510;
    *(v47 + 16) = 0;
    swift_willThrow();
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(a2);

    return __swift_destroy_boxed_opaque_existential_0(v65);
  }

  sub_222B014C8();
  swift_allocObject();
  sub_222B014B8();
  sub_222A8DF34();
  v48 = v50[1];
  sub_222B014A8();

  sub_222A398A4(v44, v46);
  if (v48)
  {
    goto LABEL_12;
  }

  v63[0] = v60[0];
  sub_222A4DE5C(v63, v50[0]);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_222A4DEB8(v63);
}

uint64_t sub_222A8DD28@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics0a12UserFeedbackC9TaskErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_222A8E164(*a2, a2[1]);
    sub_222A8E164(v3, v2);
    sub_222A8E16C(v3, v2);
    sub_222A8E16C(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_222B02F78();
    sub_222A8E164(v5, v4);
    sub_222A8E164(v3, v2);
    sub_222A8E16C(v3, v2);
    sub_222A8E16C(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_222A8E164(v6, v7);
  sub_222A8E164(v3, v2);
  sub_222A8E16C(v3, v2);
  sub_222A8E16C(v3, v2);
  return 1;
}

unint64_t sub_222A8DF34()
{
  result = qword_280CBA578;
  if (!qword_280CBA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA578);
  }

  return result;
}

uint64_t sub_222A8DF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4B0, &qword_222B0A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A8DFFC(uint64_t a1, unsigned int a2)
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

uint64_t sub_222A8E044(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222A8E0C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222A8E108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222A8E18C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  v3 = [v2 typeName];
  v4 = sub_222B02388();
  v6 = v5;

  if (v4 == 0x49636972656E6547 && v6 == 0xED0000746E65746ELL)
  {
  }

  else
  {
    v8 = sub_222B02F78();

    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = [v2 verb];
  v10 = sub_222B02388();
  v12 = v11;

  if (v10 == 0x6F4E6574656C6544 && v12 == 0xEA00000000006574)
  {
  }

  else
  {
    v14 = sub_222B02F78();

    if ((v14 & 1) == 0)
    {
LABEL_20:

      return MEMORY[0x277D84F90];
    }
  }

  v15 = [v2 parametersByName];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v17 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_222B05260;
  v19 = type metadata accessor for DeleteNoteEventFeature.EventType(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000010;
  *(v20 + 24) = 0x8000000222B13920;
  *(v18 + 56) = v19;
  *(v18 + 64) = sub_222A8E63C(&qword_27D01D9A8, type metadata accessor for DeleteNoteEventFeature.EventType);
  *(v18 + 32) = v20;
  v21 = [v1 _donatedBySiri];
  v22 = type metadata accessor for DeleteNoteEventFeature.DonatedBySiri(0);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v18 + 96) = v22;
  *(v18 + 104) = sub_222A8E63C(&qword_27D01D9B0, type metadata accessor for DeleteNoteEventFeature.DonatedBySiri);
  *(v18 + 72) = v23;
  if (!*(v17 + 16) || (v24 = sub_222A26EC8(0x656C746974, 0xE500000000000000), (v25 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_222A25344(*(v17 + 56) + 32 * v24, &v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    return v18;
  }

  v26 = v34;
  v27 = v35;
  v28 = type metadata accessor for DeleteNoteEventFeature.NoteTextContent(0);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  v18 = sub_222AA8FDC(1, 3, 1, v18);

  v32 = v28;
  v33 = sub_222A8E63C(&qword_27D01D9B8, type metadata accessor for DeleteNoteEventFeature.NoteTextContent);
  *&v31 = v29;
  *(v18 + 16) = 3;
  sub_222A2577C(&v31, v18 + 112);
  return v18;
}

uint64_t DeleteNoteEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DeleteNoteEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A8E63C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t DeleteNoteEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A8E790(char *a1)
{
  v1 = *a1;
  type metadata accessor for DeleteNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A8E7C8(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for DeleteNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A8E8C8(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A8E91C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t PredicateEvictor.__allocating_init(predicateConverter:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PredicateEvictor.init(predicateConverter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id sub_222A8EA9C(uint64_t a1, void *a2)
{
  v4 = v3;
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  v8 = (*(v2 + 16))(a1);
  [v7 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D9F0, &qword_222B0A7E8);
  sub_222B02A68();
  if (v3)
  {
    goto LABEL_13;
  }

  v4 = sub_222B02E38();

  if (!v4)
  {
    v4 = sub_222B02658();
    goto LABEL_13;
  }

  if (!sub_222B02698())
  {
LABEL_11:

LABEL_13:

    return v4;
  }

  v9 = 4;
  while (1)
  {
    v10 = sub_222B02678();
    sub_222B02628();
    result = (v10 & 1) != 0 ? *(v4 + 8 * v9) : sub_222B02CA8();
    v12 = result;
    v13 = v9 - 3;
    if (__OFADD__(v9 - 4, 1))
    {
      break;
    }

    [a2 deleteObject_];

    ++v9;
    if (v13 == sub_222B02698())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t PredicateEvictor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NLXSpanLabels.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t NLXSpanLabels.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t NLXSpanLabels.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A8EF48(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for NLXSpanLabels(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A8EF80(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for NLXSpanLabels(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222A8EFF4(unint64_t a1)
{
  v1 = a1;
  *&v66 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    v3 = MEMORY[0x277D84F90];
    v62 = i;
    if (i)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223DC6F00](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if ([v5 anyEventType] == 18)
        {
          sub_222B02D18();
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
          i = v62;
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != i);
      v8 = v66;
      *&v66 = v3;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_94:
      v63 = sub_222B02DC8();
      goto LABEL_19;
    }

    v8 = MEMORY[0x277D84F90];
    *&v66 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_17:
    if ((v8 & 0x4000000000000000) != 0)
    {
      goto LABEL_94;
    }

    v63 = *(v8 + 16);
LABEL_19:
    v9 = 0;
    v61 = MEMORY[0x277D84F90];
    while (v63 != v9)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x223DC6F00](v9, v8);
      }

      else
      {
        if (v9 >= *(v8 + 16))
        {
          goto LABEL_84;
        }

        v18 = *(v8 + 8 * v9 + 32);
      }

      v19 = v18;
      v20 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v21 = [v18 payload];
      if (v21)
      {
        v10 = v21;
        v11 = v1;
        v12 = sub_222B01798();
        v14 = v13;

        v15 = sub_222B01788();
        v16 = v12;
        v1 = v11;
        sub_222A26530(v16, v14);
      }

      else
      {
        v15 = 0;
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D590F0]) initWithData_];

      ++v9;
      if (v17)
      {
        MEMORY[0x223DC6810]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v61 = v66;
        v9 = v20;
      }
    }

    v22 = MEMORY[0x277D84F90];
    *&v66 = MEMORY[0x277D84F90];
    v23 = v62;
    if (!v62)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x223DC6F00](v24, v1);
      }

      else
      {
        if (v24 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        v25 = *(v1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v25 anyEventType] == 19)
      {
        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        v23 = v62;
      }

      else
      {
      }

      ++v24;
      if (v27 == v23)
      {
        v28 = v66;
        *&v66 = v22;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_95;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    ;
  }

  v28 = MEMORY[0x277D84F90];
  *&v66 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_47:
    if ((v28 & 0x4000000000000000) == 0)
    {
      v29 = *(v28 + 16);
      goto LABEL_49;
    }
  }

LABEL_95:
  v29 = sub_222B02DC8();
LABEL_49:
  v30 = 0;
  v1 = v28 & 0xC000000000000001;
  v64 = MEMORY[0x277D84F90];
  if (v29)
  {
    while (1)
    {
      if (v1)
      {
        v47 = MEMORY[0x223DC6F00](v30, v28);
      }

      else
      {
        if (v30 >= *(v28 + 16))
        {
          goto LABEL_86;
        }

        v47 = *(v28 + 8 * v30 + 32);
      }

      v48 = v47;
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_85;
      }

      v50 = [v47 payload];
      if (v50)
      {
        v51 = v50;
        v52 = sub_222B01798();
        v54 = v53;

        v45 = sub_222B01788();
        sub_222A26530(v52, v54);
      }

      else
      {
        v45 = 0;
      }

      v46 = [objc_allocWithZone(MEMORY[0x277D59610]) initWithData_];

      ++v30;
      if (v46)
      {
        MEMORY[0x223DC6810]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v64 = v66;
        v30 = v49;
        if (v29 == v49)
        {
          break;
        }
      }

      else if (v29 == v30)
      {
        break;
      }
    }
  }

  v31 = sub_222A6D6B4(v61, v64);

  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  if (v31 >> 62)
  {
    v32 = sub_222B02DC8();
    if (v32)
    {
LABEL_53:
      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      v1 = &off_2784BA000;
LABEL_54:
      v35 = v33;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x223DC6F00](v35, v31);
        }

        else
        {
          if (v35 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_92;
          }

          v36 = *(v31 + 8 * v35 + 32);
        }

        v37 = v36;
        v33 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_91;
        }

        v38 = [v36 label];
        if (v38)
        {
          v39 = v38;
          v40 = sub_222B02388();
          v65 = v41;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_222AA8C78(0, *(v34 + 2) + 1, 1, v34);
          }

          v43 = *(v34 + 2);
          v42 = *(v34 + 3);
          if (v43 >= v42 >> 1)
          {
            v34 = sub_222AA8C78((v42 > 1), v43 + 1, 1, v34);
          }

          *(v34 + 2) = v43 + 1;
          v44 = &v34[16 * v43];
          *(v44 + 4) = v40;
          *(v44 + 5) = v65;
          if (v33 != v32)
          {
            goto LABEL_54;
          }

          goto LABEL_98;
        }

        ++v35;
        if (v33 == v32)
        {
          goto LABEL_98;
        }
      }
    }
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_53;
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_98:

  if (!*(v34 + 2))
  {

    return MEMORY[0x277D84F90];
  }

  v55 = type metadata accessor for NLXSpanLabels(0);
  v56 = swift_allocObject();
  *(v56 + 16) = v34;
  v57 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
  v59 = v57[2];
  v58 = v57[3];
  if (v59 >= v58 >> 1)
  {
    v57 = sub_222AA8FDC((v58 > 1), v59 + 1, 1, v57);
  }

  v67 = v55;
  v68 = sub_222A8F804();
  *&v66 = v56;
  v57[2] = v59 + 1;
  sub_222A2577C(&v66, &v57[5 * v59 + 4]);
  return v57;
}

uint64_t type metadata accessor for NLXSpanLabels(uint64_t a1)
{
  result = qword_27D01D9F8;
  if (!qword_27D01D9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222A8F804()
{
  result = qword_27D01DA08;
  if (!qword_27D01DA08)
  {
    type metadata accessor for NLXSpanLabels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA08);
  }

  return result;
}

id sub_222A8F85C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UniversalCandidate(0);
  MEMORY[0x28223BE20](v4);
  v5 = sub_222B014E8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_222B01848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UniversalCandidateCoreDataRecord();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v11 = sub_222B01878();
  [v10 setId_];

  [v10 setScore_];
  [v10 setLastSurfaced_];
  sub_222B01828();
  sub_222B01818();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  [v10 setLastUpdated_];
  sub_222B01528();
  swift_allocObject();
  sub_222B01518();
  sub_222B014D8();
  sub_222B014F8();
  v19 = *(v2 + v4[5]);
  sub_222A917B8();

  v14 = sub_222B01508();
  v16 = v15;

  v17 = sub_222B01788();
  [v10 setCandidateEntity_];

  sub_222A26530(v14, v16);

  return v10;
}

uint64_t sub_222A8FCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = [v1 id];
  if (v11)
  {
    v12 = v11;
    sub_222B01898();

    [v1 score];
    v14 = v13;
    [v1 lastSurfaced];
    v16 = v15;
    v17 = [v1 candidateEntity];
    if (v17)
    {
      v18 = v17;
      v19 = sub_222B01798();
      v21 = v20;

      sub_222B014C8();
      swift_allocObject();
      sub_222B014B8();
      sub_222A91764();
      sub_222B014A8();
      sub_222A26530(v19, v21);

      v39 = v47;
      (*(v4 + 32))(a1, v10, v3);
      v40 = type metadata accessor for UniversalCandidate(0);
      *(a1 + v40[5]) = v39;
      *(a1 + v40[6]) = v14;
      *(a1 + v40[7]) = v16;
      return (*(*(v40 - 1) + 56))(a1, 0, 1, v40);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v28 = sub_222B02148();
      __swift_project_value_buffer(v28, qword_280CBC458);
      (*(v4 + 16))(v8, v10, v3);
      v29 = v3;
      v30 = sub_222B02128();
      v31 = sub_222B028E8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = a1;
        v47 = v45;
        *v32 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v33 = sub_222B02F38();
        v35 = v34;
        v36 = *(v4 + 8);
        v36(v8, v29);
        v37 = sub_222A230FC(v33, v35, &v47);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_222A1C000, v30, v31, "UniversalSuggestionsCoreData: Failed to retrieve entity when reading UniversalCandidate with ID: %s.", v32, 0xCu);
        v38 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        a1 = v46;
        MEMORY[0x223DC7E30](v38, -1, -1);
        MEMORY[0x223DC7E30](v32, -1, -1);

        v36(v10, v29);
      }

      else
      {

        v42 = *(v4 + 8);
        v42(v8, v29);
        v42(v10, v29);
      }

      v43 = type metadata accessor for UniversalCandidate(0);
      return (*(*(v43 - 8) + 56))(a1, 1, 1, v43);
    }
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);
    v23 = sub_222B02128();
    v24 = sub_222B028E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_222A1C000, v23, v24, "UniversalSuggestionsCoreData: Failed to retrieve ID when reading UniversalCandidate.", v25, 2u);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }

    v26 = type metadata accessor for UniversalCandidate(0);
    v27 = *(*(v26 - 8) + 56);

    return v27(a1, 1, 1, v26);
  }
}

uint64_t sub_222A90488@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v67 - v4;
  v6 = type metadata accessor for UniversalCandidate(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B018D8();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v19 = [v1 id];
  if (v19)
  {
    v20 = v19;
    sub_222B01898();

    v21 = [v1 queryEntityName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_222B02388();
      v25 = v24;

      v26 = [v2 topCandidate];
      if (v26)
      {
        v27 = v26;
        sub_222A8FCD4(v5);
        if ((*(v7 + 48))(v5, 1, v6) != 1)
        {
          sub_222A43E50(v5, v9);
          v60 = [v2 needsDisambiguation];

          v61 = v71;
          (*(v69 + 32))(v71, v18, v70);
          v62 = type metadata accessor for UniversalRuntimeSuggestion(0);
          v63 = v62[6];
          sub_222A43E50(v9, v61 + v63);
          (*(v7 + 56))(v61 + v63, 0, 1, v6);
          v64 = (v61 + v62[5]);
          *v64 = v23;
          v64[1] = v25;
          *(v61 + v62[7]) = v60;
          return (*(*(v62 - 1) + 56))(v61, 0, 1, v62);
        }

        (*(v69 + 8))(v18, v70);

        sub_222A9180C(v5);
        goto LABEL_25;
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v49 = sub_222B02148();
      __swift_project_value_buffer(v49, qword_280CBC458);
      v50 = v69;
      v39 = v70;
      (*(v69 + 16))(v16, v18, v70);
      v51 = sub_222B02128();
      v52 = sub_222B028E8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v72 = v68;
        *v53 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v54 = sub_222B02F38();
        v56 = v55;
        v57 = *(v50 + 8);
        v57(v16, v39);
        v58 = sub_222A230FC(v54, v56, &v72);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_222A1C000, v51, v52, "UniversalSuggestionsCoreData: Failed to retrieve top candidate when reading UniversalRuntimeSuggestion with ID: %s.", v53, 0xCu);
        v59 = v68;
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x223DC7E30](v59, -1, -1);
        MEMORY[0x223DC7E30](v53, -1, -1);

        v57(v18, v39);
        goto LABEL_25;
      }

      v65 = *(v50 + 8);
      v65(v16, v39);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v37 = sub_222B02148();
      __swift_project_value_buffer(v37, qword_280CBC458);
      v38 = v69;
      v39 = v70;
      (*(v69 + 16))(v13, v18, v70);
      v40 = sub_222B02128();
      v41 = sub_222B028E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v72 = v68;
        *v42 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v43 = sub_222B02F38();
        v45 = v44;
        v46 = *(v38 + 8);
        v46(v13, v39);
        v47 = sub_222A230FC(v43, v45, &v72);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_222A1C000, v40, v41, "UniversalSuggestionsCoreData: Failed to retrieve name of key entity when reading UniversalRuntimeSuggestion with ID: %s.", v42, 0xCu);
        v48 = v68;
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x223DC7E30](v48, -1, -1);
        MEMORY[0x223DC7E30](v42, -1, -1);

        v46(v18, v39);
LABEL_25:
        v66 = type metadata accessor for UniversalRuntimeSuggestion(0);
        return (*(*(v66 - 8) + 56))(v71, 1, 1, v66);
      }

      v65 = *(v38 + 8);
      v65(v13, v39);
    }

    v65(v18, v39);
    goto LABEL_25;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v28 = sub_222B02148();
  __swift_project_value_buffer(v28, qword_280CBC458);
  v29 = sub_222B02128();
  v30 = sub_222B028E8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_222A1C000, v29, v30, "UniversalSuggestionsCoreData: Failed to retrieve ID when reading UniversalRuntimeSuggestion.", v31, 2u);
    MEMORY[0x223DC7E30](v31, -1, -1);
  }

  v32 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v33 = *(*(v32 - 8) + 56);
  v34 = v32;
  v35 = v71;

  return v33(v35, 1, 1, v34);
}

id sub_222A90CEC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for UniversalSuggestionCoreDataRecord();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v5 = sub_222B01878();
  [v4 setId_];

  type metadata accessor for UniversalSuggestion(0);
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [v4 setQueryEntityName_];

  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DC6F00](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(a2 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 addCandidatesObject_];

      if (v11 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return v4;
}

uint64_t sub_222A90E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - v4;
  v72 = type metadata accessor for UniversalCandidate(0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B01638();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v18 = [v1 id];
  if (v18)
  {
    v68 = v17;
    v19 = v18;
    sub_222B01898();

    v20 = [v1 queryEntityName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_222B02388();
      v63 = v23;
      v64 = v22;

      v24 = [v1 candidates];
      if (!v24)
      {
        sub_222A91874();
        v24 = MEMORY[0x223DC6AF0](MEMORY[0x277D84F90]);
      }

      v65 = v12;
      v67 = a1;
      v25 = MEMORY[0x277D84F90];
      v77 = MEMORY[0x277D84F90];
      v62 = v24;
      sub_222B028B8();
      sub_222A918C0(&unk_280CB8318, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      sub_222B02B48();
      v66 = v11;
      while (v76)
      {
        sub_222A250AC(&v75, &v73);
        type metadata accessor for UniversalCandidateCoreDataRecord();
        if ((swift_dynamicCast() & 1) != 0 && v74)
        {
          MEMORY[0x223DC6810]();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v25 = v77;
        }

        sub_222B02B48();
      }

      (*(v8 + 8))(v10, v7);
      if (v25 >> 62)
      {
        goto LABEL_44;
      }

      for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
      {
        v46 = 0;
        v47 = v25 & 0xC000000000000001;
        v48 = v25 & 0xFFFFFFFFFFFFFF8;
        v49 = (v70 + 48);
        v50 = MEMORY[0x277D84F90];
        v69 = v25;
        while (1)
        {
          if (v47)
          {
            v51 = MEMORY[0x223DC6F00](v46, v25);
          }

          else
          {
            if (v46 >= *(v48 + 16))
            {
              goto LABEL_43;
            }

            v51 = *(v25 + 8 * v46 + 32);
          }

          v52 = v51;
          v53 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          sub_222A8FCD4(v5);

          if ((*v49)(v5, 1, v72) == 1)
          {
            sub_222A9180C(v5);
          }

          else
          {
            sub_222A43E50(v5, v71);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_222AA9B1C(0, v50[2] + 1, 1, v50);
            }

            v55 = v50[2];
            v54 = v50[3];
            if (v55 >= v54 >> 1)
            {
              v50 = sub_222AA9B1C((v54 > 1), v55 + 1, 1, v50);
            }

            v50[2] = v55 + 1;
            sub_222A43E50(v71, v50 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55);
            v25 = v69;
          }

          ++v46;
          if (v53 == i)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        ;
      }

      v50 = MEMORY[0x277D84F90];
LABEL_46:

      v58 = v67;
      (*(v65 + 32))(v67, v68, v66);
      v59 = type metadata accessor for UniversalSuggestion(0);
      v60 = (v58 + *(v59 + 20));
      v61 = v63;
      *v60 = v64;
      v60[1] = v61;
      *(v58 + *(v59 + 24)) = v50;
      return (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v33 = sub_222B02148();
      __swift_project_value_buffer(v33, qword_280CBC458);
      v34 = v68;
      (*(v12 + 16))(v15, v68, v11);
      v35 = sub_222B02128();
      v36 = sub_222B028E8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v67 = a1;
        v39 = v38;
        *&v75 = v38;
        *v37 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v40 = sub_222B02F38();
        v42 = v41;
        v43 = *(v12 + 8);
        v43(v15, v11);
        v44 = sub_222A230FC(v40, v42, &v75);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_222A1C000, v35, v36, "UniversalSuggestionsCoreData: Failed to retrieve name of key entity when reading UniversalSuggestion with ID: %s.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        a1 = v67;
        MEMORY[0x223DC7E30](v39, -1, -1);
        MEMORY[0x223DC7E30](v37, -1, -1);

        v43(v68, v11);
      }

      else
      {

        v56 = *(v12 + 8);
        v56(v15, v11);
        v56(v34, v11);
      }

      v57 = type metadata accessor for UniversalSuggestion(0);
      return (*(*(v57 - 8) + 56))(a1, 1, 1, v57);
    }
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v26 = sub_222B02148();
    __swift_project_value_buffer(v26, qword_280CBC458);
    v27 = sub_222B02128();
    v28 = sub_222B028E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_222A1C000, v27, v28, "UniversalSuggestionsCoreData: Failed to retrieve ID when reading UniversalSuggestion.", v29, 2u);
      MEMORY[0x223DC7E30](v29, -1, -1);
    }

    v30 = type metadata accessor for UniversalSuggestion(0);
    v31 = *(*(v30 - 8) + 56);

    return v31(a1, 1, 1, v30);
  }
}

unint64_t sub_222A91764()
{
  result = qword_27D01DA10;
  if (!qword_27D01DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA10);
  }

  return result;
}

unint64_t sub_222A917B8()
{
  result = qword_27D01DA18;
  if (!qword_27D01DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA18);
  }

  return result;
}

uint64_t sub_222A9180C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222A91874()
{
  result = qword_27D01DA20;
  if (!qword_27D01DA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01DA20);
  }

  return result;
}

uint64_t sub_222A918C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *TypedNamedFeature.init(value:)(char *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v13 - v7;
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v9 = sub_222B02B28();
    (*(*(v9 - 8) + 8))(a1, v9);
    type metadata accessor for TypedNamedFeature(0, v4, *(v3 + 88), v10);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v11 = *(v5 + 32);
    v11(v8, a1, v4);
    v11(&v1[*(*v1 + 96)], v8, v4);
  }

  return v1;
}

uint64_t sub_222A91C24()
{
  v3 = static TypedNamedFeature.name.getter();
  v0 = MEMORY[0x223DC66E0](0x203A65756C617620, 0xE800000000000000);
  v1 = sub_222A91CB8(v0);
  MEMORY[0x223DC66E0](v1);

  return v3;
}

uint64_t sub_222A91CB8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = *(v7 + 96);
  v9 = *(v3 + 16);
  v9(v14 - v10, v1 + v8, v2);
  sub_222B01C38();
  if (swift_dynamicCast())
  {
    sub_222B01C28();
    v11 = sub_222B01CC8();

    v14[1] = v11;
    sub_222B01E38();
    sub_222A92564();

    v12 = sub_222B02F38();

    return v12;
  }

  else
  {
    v9(v6, v1 + v8, v2);
    return sub_222B023D8();
  }
}

uint64_t sub_222A91E88(uint64_t a1)
{
  v2 = *v1;
  sub_222A42E40(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  type metadata accessor for TypedNamedFeature(0, *(v2 + 80), *(v2 + 88), v3);
  v4 = static TypedNamedFeature.== infix(_:_:)(v1, v6);

  return v4 & 1;
}

uint64_t TypedNamedFeature.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t static TypedNamedFeature.name.getter()
{
  v60 = sub_222B031E8();
  v1 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v0;
  type metadata accessor for TypedNamedFeature(255, *(v0 + 80), *(v0 + 88), v3);
  swift_getMetatypeMetadata();
  v4 = sub_222B023F8();
  v67 = 46;
  v68 = 0xE100000000000000;
  v66 = &v67;
  v6 = sub_222AA87B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222A82928, v65, v4, v5, 0x2EuLL);
  v7 = *(v6 + 16);
  v64 = v7 != 0;
  if (v7 <= 1)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_45:
    v67 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
    sub_222A69918();
    v56 = sub_222B02328();

    return v56;
  }

  v9 = v6;
  v10 = v7 - v64;
  v73 = MEMORY[0x277D84F90];
  result = sub_222A23AE4(0, v10 & ~(v10 >> 63), 0);
  v62 = v10;
  if (v10 < 0)
  {
    goto LABEL_48;
  }

  v12 = 0;
  v57 = v9;
  v58 = (v1 + 8);
  v8 = v73;
  v13 = (v9 + 32 * v64 + 56);
  v61 = v7;
  while (v64 < v7 && v12 < v62)
  {
    v14 = *(v13 - 3);
    v15 = *(v13 - 2);
    v17 = *(v13 - 1);
    v16 = *v13;

    v18 = MEMORY[0x223DC6660](v14, v15, v17, v16);
    v19 = v18;
    v21 = v20;
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v63 = v16;
      result = sub_222B02528();
      if ((v23 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v23) & 0xF;
      }

      else
      {
        v24 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {
        goto LABEL_47;
      }

      v25 = result;
      v26 = v23;
      if ((v23 & 0x1000000000000000) != 0)
      {
        v31 = sub_222B02428();
      }

      else
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
          v28 = result;
        }

        else
        {
          if ((result & 0x1000000000000000) != 0)
          {
            v27 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v27 = sub_222B02D08();
          }

          v28 = *v27;
        }

        v29 = v28;
        v30 = (__clz(~v28) - 24) << 16;
        if (v29 < 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 65541;
        }
      }

      v32 = 4 * v24;
      if (4 * v24 != v31 >> 14)
      {
        goto LABEL_53;
      }

      v33 = v19;
      v34 = v21;
      v35 = v12;
      v36 = v8;
      result = sub_222A9286C(v25, v26);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_49;
      }

      v37 = v59;
      sub_222B031F8();
      v38 = sub_222B031C8();
      (*v58)(v37, v60);
      v8 = v36;
      v12 = v35;
      v21 = v34;
      v19 = v33;
      if ((v38 & 1) == 0)
      {
LABEL_53:
        if ((sub_222B02318() & 1) == 0)
        {
          goto LABEL_36;
        }

        if ((v26 & 0x1000000000000000) != 0)
        {
          if (v32 == sub_222B02428() >> 14)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        if (v32 != ((4 * sub_222B02C68()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

LABEL_32:
        result = sub_222A9286C(v25, v26);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        v39 = v59;
        sub_222B031F8();
        v40 = sub_222B031D8();
        (*v58)(v39, v60);
        if ((v40 & 1) == 0)
        {
LABEL_34:
          if (sub_222B02318() & 1) != 0 && (sub_222B02308())
          {
LABEL_36:

LABEL_38:
            v7 = v61;
            goto LABEL_39;
          }
        }
      }

      v41 = sub_222B023E8();
      v43 = v42;

      v44 = v12;
      v45 = sub_222AAA4AC(1uLL, v19, v21);
      v47 = v46;
      v48 = v8;
      v50 = v49;
      v52 = v51;

      v71 = v41;
      v72 = v43;
      v67 = v45;
      v68 = v47;
      v12 = v44;
      v69 = v50;
      v70 = v52;
      v8 = v48;
      sub_222A49F38();
      sub_222B02488();

      v19 = v71;
      v21 = v72;
      goto LABEL_38;
    }

LABEL_39:
    v73 = v8;
    v54 = *(v8 + 16);
    v53 = *(v8 + 24);
    if (v54 >= v53 >> 1)
    {
      result = sub_222A23AE4((v53 > 1), v54 + 1, 1);
      v8 = v73;
    }

    *(v8 + 16) = v54 + 1;
    v55 = v8 + 16 * v54;
    *(v55 + 32) = v19;
    *(v55 + 40) = v21;
    v13 += 4;
    ++v12;
    if (v7 == ++v64)
    {

      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_222A92564()
{
  result = qword_27D01DA28;
  if (!qword_27D01DA28)
  {
    sub_222B01E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA28);
  }

  return result;
}

uint64_t static TypedNamedFeature.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = static TypedNamedFeature.name.getter();
  v4 = v3;
  if (v2 == static TypedNamedFeature.name.getter() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_222B02F78();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_222B02338() & 1;
}

uint64_t TypedNamedFeature.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t sub_222A9286C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_222A929BC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_222B02C78();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_222B02D08() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_222A929BC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_222A92A54(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_222A92AC8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_222A92A54(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_222A92BEC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_222A92AC8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_222B02D08();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_222A92BEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_222B02508();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DC6730](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_222A92C68(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222A92CCC(uint64_t a1)
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

uint64_t dispatch thunk of TypedNamedFeature.__allocating_init(value:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics16BiomeSubscribersO18SubscriptionStatusO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222A92E48(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A92E9C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t KeyPathEvictor.init(keyPathGenerator:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_222A92F60(void *a1, void *a2)
{
  v5 = *v2;
  (v2[2])();
  v6 = a1;
  swift_getAtKeyPath();

  if (v10)
  {
    [a2 deleteObject_];
    sub_222A93124(*(v5 + 88), *(v5 + 88));
    swift_allocObject();
    v7 = sub_222B02618();
    *v8 = v10;

    sub_222B026C8();
  }

  else
  {
    v7 = sub_222B02658();
  }

  return v7;
}

uint64_t KeyPathEvictor.__allocating_init(keyPathGenerator:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t KeyPathEvictor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A93124(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

void sub_222A9325C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_222B01848();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v2 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_turnsStartDateTime);
  objc_allocWithZone(type metadata accessor for ScanTurnsSubscriber(0));
  v7 = swift_unknownObjectRetain();
  v8 = sub_222A96600(v7, v5);
  swift_unknownObjectRelease();
  v9 = *(v2 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_inner);
  *(v2 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_inner) = v8;
  v10 = v8;

  [*(v2 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_upstream) subscribe_];
}

uint64_t sub_222A934F4(uint64_t a1)
{
  result = sub_222B01848();
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

uint64_t sub_222A93600(unsigned int (*a1)(void, void, void))
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v77 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v77 - v12;
  MEMORY[0x28223BE20](v11);
  v86 = v77 - v14;
  v15 = sub_222B018D8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v77 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v77 - v23;
  sub_222A25344(a1, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA70, &unk_222B0AB20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v82 = v19;
  v83 = a1;
  v81 = v7;
  v84 = v24;
  v85 = v16;
  v25 = v88;
  v26 = [v88 eventBody];
  if (v26)
  {
    v27 = v26;
    v28 = v13;
    v29 = v25;
    v30 = v15;
    v31 = v2;
    v32 = [v26 eventData];

    v33 = sub_222B01798();
    v35 = v34;

    v2 = v31;
    v15 = v30;
    v25 = v29;
    v13 = v28;
    v36 = sub_222B01788();
    sub_222A26530(v33, v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithData_];

  if (!v37)
  {

    a1 = v83;
LABEL_9:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v45 = sub_222B02148();
    __swift_project_value_buffer(v45, qword_280CBC458);
    sub_222A25344(a1, v89);
    v46 = sub_222B02128();
    v47 = sub_222B028D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v88 = v49;
      *v48 = 136315138;
      __swift_project_boxed_opaque_existential_1(v89, v89[3]);
      DynamicType = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D138, &unk_222B06790);
      v50 = sub_222B023D8();
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_0(v89);
      v53 = sub_222A230FC(v50, v52, &v88);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_222A1C000, v46, v47, "ScanTurnsSubscriber ignored unexpected input type %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x223DC7E30](v49, -1, -1);
      MEMORY[0x223DC7E30](v48, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v89);
    }

    return BPSDemandMax();
  }

  [v25 timestamp];
  v39 = v38;
  sub_222B017C8();
  v41 = v39 < v40;
  v79 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables;
  v80 = v2;

  sub_222A7C7BC(v41, v13);
  sub_222A34E48(v13, v10, &unk_27D01DA50, &unk_222B04E20);
  v42 = v85;
  v83 = *(v85 + 48);
  if (v83(v10, 1, v15) == 1)
  {

    v43 = 1;
    v44 = v86;
  }

  else
  {
    (*(v42 + 32))(v22, v10, v15);

    v44 = v86;
    sub_222A7C1AC(v22, v86);
    (*(v42 + 8))(v22, v15);
    v43 = 0;
  }

  sub_222A34F20(v13, &unk_27D01DA50, &unk_222B04E20);
  v55 = *(v42 + 56);
  v55(v44, v43, 1, v15);

  if (v83(v44, 1, v15) == 1)
  {
    sub_222A34F20(v44, &unk_27D01DA50, &unk_222B04E20);
    v56 = BPSDemandMax();

    return v56;
  }

  v86 = v37;
  v57 = *(v42 + 32);
  v58 = v44;
  v59 = v84;
  v77[1] = v42 + 32;
  v78 = v55;
  v77[0] = v57;
  v57(v84, v58, v15);
  v60 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer;
  v61 = v80;

  [v25 timestamp];
  sub_222AE3BD8(v59, v62);

  [v25 timestamp];
  v64 = v25;
  v65 = v42;
  v66 = sub_222AE3D88(v63);

  if (!v66)
  {
    goto LABEL_24;
  }

  v67 = *(*(v61 + v60) + 32);
  v68 = v67[2];
  if (v68)
  {
    v69 = v81;
    (*(v85 + 16))(v81, v68 + *(*v68 + 88), v15);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v81;
  }

  v71 = v82;
  v78(v69, v70, 1, v15);

  sub_222A95844(v67);

  if (v83(v69, 1, v15) == 1)
  {
    sub_222A34F20(v69, &unk_27D01DA50, &unk_222B04E20);
    v59 = v84;
    v65 = v85;
LABEL_24:
    v72 = BPSDemandMax();

    (*(v65 + 8))(v59, v15);
    return v72;
  }

  (v77[0])(v71, v69, v15);
  type metadata accessor for SignalExtracting();

  v74 = sub_222AAB204(v73, v71);

  sub_222A95164(v74);
  if (v74)
  {
    v75 = sub_222AA60FC(v74);
  }

  else
  {
    v75 = BPSDemandMax();
  }

  v76 = *(v85 + 8);
  v76(v71, v15);
  v76(v84, v15);
  return v75;
}

size_t sub_222A93EE4(void *a1)
{
  sub_222A94220(a1);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = a1;
  v4 = sub_222B02128();
  v5 = sub_222B028D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    [v3 state];
    type metadata accessor for BPSCompletionState(0);
    v8 = sub_222B023D8();
    v10 = sub_222A230FC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_222A1C000, v4, v5, "ScanTurns received a completion, state=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DC7E30](v7, -1, -1);
    MEMORY[0x223DC7E30](v6, -1, -1);
  }

  return sub_222A94694(2);
}

size_t sub_222A940D8()
{
  sub_222AA633C();
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v0 = sub_222B02148();
  __swift_project_value_buffer(v0, qword_280CBC458);
  v1 = sub_222B02128();
  v2 = sub_222B028D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_222A1C000, v1, v2, "ScanTurns received a cancellation", v3, 2u);
    MEMORY[0x223DC7E30](v3, -1, -1);
  }

  return sub_222A94694(2);
}

uint64_t sub_222A94220(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 state] == 1)
  {
    v11 = a1;
    return sub_222AA6204(v11);
  }

  else
  {
    v30 = a1;
    v36 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables;
    v37 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer;
    v32 = (v8 + 16);
    v33 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream;
    v12 = (v8 + 56);
    v13 = (v8 + 48);
    v35 = (v8 + 32);
    v34 = *MEMORY[0x277CF1780];
    v31 = *MEMORY[0x277CF1788];
    v14 = (v8 + 8);
    while (1)
    {
      v15 = *(*(v2 + v37) + 32);
      v16 = v15[2];
      if (v16)
      {
        (*v32)(v6, v16 + *(*v16 + 88), v7);
        (*v12)(v6, 0, 1, v7);
      }

      else
      {
        (*v12)(v6, 1, 1, v7);
        v17 = 0;
      }

      v15[2] = v17;

      v19 = v15[4];
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        break;
      }

      v15[4] = v21 & ~(v21 >> 63);
      if (!v15[2])
      {
        v15[3] = 0;
      }

      if ((*v13)(v6, 1, v7) == 1)
      {
        sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
        v11 = v30;
        return sub_222AA6204(v11);
      }

      (*v35)(v10, v6, v7);
      type metadata accessor for SignalExtracting();

      v23 = sub_222AAB204(v22, v10);

      sub_222A95164(v23);
      if (v23)
      {
        v24 = *(v2 + v33);
        v25 = *(v24 + 16);
        if (*(v25 + 32) == v34)
        {

          sub_222AE3AD4(v23);

          (*v14)(v10, v7);
        }

        else
        {
          v26 = [*(v25 + 16) receiveInput_];
          v27 = *(v24 + 16);
          v28 = v31;
          if (v26 == v31 || (v29 = *(v27 + 32), v29 == v31))
          {
          }

          else
          {

            v28 = BPSDemandMax();
          }

          (*v14)(v10, v7);
          *(v27 + 32) = v28;
        }
      }

      else
      {
        (*v14)(v10, v7);
      }
    }

    __break(1u);
  }

  return result;
}

size_t sub_222A94694(int a1)
{
  LODWORD(v2) = a1;
  v101 = sub_222B018D8();
  *&v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v4 = v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C950, &qword_222B04910);
  v5 = *(v103 - 8);
  v6 = MEMORY[0x28223BE20](v103);
  v8 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v96 - v9;
  v11 = *(*(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables) + 24);
  swift_beginAccess();
  if (*(*(v11 + 16) + 16) && (sub_222A2E3A4(), (v12 & 1) != 0))
  {
  }

  else
  {
    v13 = sub_222A3A264(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B8, &unk_222B09100);
    *(swift_allocObject() + 16) = v13;
  }

  v14 = sub_222A958E0();

  v15 = *(v14 + 16);
  v98 = v2;
  if (v15)
  {
    v16 = *(v5 + 80);
    v99 = v14;
    v17 = v14 + ((v16 + 32) & ~v16);
    v102 = *(v5 + 72);
    v18 = (v100 + 32);
    v19 = MEMORY[0x277D84F90];
    v20 = v101;
    do
    {
      sub_222A34E48(v17, v10, &qword_27D01C950, &qword_222B04910);
      sub_222A9657C(v10, v8);

      v21 = *v18;
      (*v18)(v4, v8, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_222AA8E90(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_222AA8E90((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      v24 = v19 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v23;
      v20 = v101;
      v21(v24, v4, v101);
      v17 += v102;
      --v15;
    }

    while (v15);

    LODWORD(v2) = v98;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v25 = sub_222A2E0A4(v19);

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_222A95DD8(*(v25 + 16), 0);
    v28 = sub_222A960B4(&v104, (v27 + ((*(v100 + 80) + 32) & ~*(v100 + 80))), v26, v25);
    sub_222A965EC(v104);
    if (v28 == v26)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v27 = MEMORY[0x277D84F90];
LABEL_18:
  if (qword_280CBA628 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v29 = sub_222B02148();
    v30 = __swift_project_value_buffer(v29, qword_280CBC458);

    v99 = v30;
    v31 = sub_222B02128();
    v32 = sub_222B028D8();
    v33 = os_log_type_enabled(v31, v32);
    v102 = v27;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v104 = v35;
      *v34 = 134218242;
      *(v34 + 4) = *(v27 + 16);

      *(v34 + 12) = 2080;
      if (v2 > 0x42)
      {
        v36 = @"COMPONENTNAME_UNKNOWN";
        v37 = @"COMPONENTNAME_UNKNOWN";
      }

      else
      {
        v36 = off_2784B9468[v2];
        v37 = off_2784B9680[v2];
      }

      v38 = v36;
      v39 = v37;
      v40 = sub_222B02388();
      v42 = v41;

      v2 = sub_222A230FC(v40, v42, &v104);

      *(v34 + 14) = v2;
      _os_log_impl(&dword_222A1C000, v31, v32, "ScanTurns found %ld unmatched %s id(s) remaining in the event table", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DC7E30](v35, -1, -1);
      MEMORY[0x223DC7E30](v34, -1, -1);

      v27 = v102;
    }

    else
    {
    }

    v103 = *(v27 + 16);
    if (v103)
    {
      v43 = 0;
      v44 = 0;
      while (1)
      {
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v46 = __OFADD__(v44, 8);
        v44 += 8;
        if (v46)
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v43;
        if (v44 >= v103)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_100;
    }

    v45 = 0;
LABEL_33:
    v104 = MEMORY[0x277D84F90];
    result = sub_222A23DD4(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      break;
    }

    v48 = v104;
    if (v45)
    {
      v49 = 0;
      v50 = 0;
      v51 = *(v27 + 16);
      v52 = *(v100 + 80);
      v97 = (v52 + 32) & ~v52;
      v96[1] = v52;
      v96[2] = v27 + v97;
      v2 = 8;
      while (1)
      {
        v53 = v51 >= v2 ? v2 : v51;
        if (v50 >= v103)
        {
          break;
        }

        if (v50 == 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_101;
        }

        v54 = v50 + 8;
        if (v51 >= (v50 + 8))
        {
          v55 = v50 + 8;
        }

        else
        {
          v55 = v51;
        }

        if (v55 < v50)
        {
          goto LABEL_102;
        }

        v56 = *(v27 + 16);
        if (v56 < v50 || v56 < v55)
        {
          goto LABEL_103;
        }

        v57 = v53 + v49;
        if (v53 + v49 == v56)
        {

          v58 = v27;
        }

        else
        {
          v58 = MEMORY[0x277D84F90];
          if (v50 != v55)
          {
            if (v57 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
              v61 = *(v100 + 72);
              v58 = swift_allocObject();
              result = _swift_stdlib_malloc_size(v58);
              if (!v61)
              {
                goto LABEL_110;
              }

              v62 = v97;
              if (result - v97 == 0x8000000000000000 && v61 == -1)
              {
                goto LABEL_112;
              }

              v58[2] = v57;
              v58[3] = 2 * ((result - v62) / v61);
            }

            swift_arrayInitWithCopy();
          }
        }

        v104 = v48;
        v60 = *(v48 + 16);
        v59 = *(v48 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_222A23DD4((v59 > 1), v60 + 1, 1);
          v48 = v104;
        }

        *(v48 + 16) = v60 + 1;
        *(v48 + 8 * v60 + 32) = v58;
        v2 += 8;
        v49 -= 8;
        v50 = v54;
        --v45;
        v27 = v102;
        if (!v45)
        {
          goto LABEL_63;
        }
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v54 = 0;
LABEL_63:
    if (v54 < v103)
    {
      v2 = -v54;
      v64 = v54 + 8;
      v65 = v54;
      do
      {
        v66 = v65 + 8;
        if (__OFADD__(v65, 8))
        {
          goto LABEL_105;
        }

        v67 = *(v27 + 16);
        if (v67 >= v66)
        {
          v68 = v65 + 8;
        }

        else
        {
          v68 = *(v27 + 16);
        }

        if (v68 < v65)
        {
          goto LABEL_106;
        }

        if (v54 < 0)
        {
          goto LABEL_107;
        }

        if (v67 >= v64)
        {
          v69 = v64;
        }

        else
        {
          v69 = *(v27 + 16);
        }

        v70 = v69 + v2;
        if (v69 + v2 == v67)
        {

          v71 = v27;
        }

        else
        {
          v71 = MEMORY[0x277D84F90];
          if (v65 != v68)
          {
            if (v70 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
              v74 = *(v100 + 72);
              v75 = (*(v100 + 80) + 32) & ~*(v100 + 80);
              v71 = swift_allocObject();
              result = _swift_stdlib_malloc_size(v71);
              if (!v74)
              {
                goto LABEL_111;
              }

              if (result - v75 == 0x8000000000000000 && v74 == -1)
              {
                goto LABEL_113;
              }

              v71[2] = v70;
              v71[3] = 2 * ((result - v75) / v74);
            }

            swift_arrayInitWithCopy();
          }
        }

        v104 = v48;
        v73 = *(v48 + 16);
        v72 = *(v48 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_222A23DD4((v72 > 1), v73 + 1, 1);
          v48 = v104;
        }

        *(v48 + 16) = v73 + 1;
        *(v48 + 8 * v73 + 32) = v71;
        v65 += 8;
        v2 -= 8;
        v64 += 8;
        v27 = v102;
      }

      while (v66 < v103);
    }

    v2 = *(v48 + 16);
    v78 = v98;
    if (!v2)
    {
    }

    v79 = 0;
    v80 = v48 + 32;
    *&v77 = 136315394;
    v100 = v77;
    v102 = v48 + 32;
    v103 = v2;
    while (v79 < *(v48 + 16))
    {
      v81 = *(v80 + 8 * v79);

      v82 = sub_222B02128();
      v83 = sub_222B028D8();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v104 = v27;
        *v84 = v100;
        v85 = @"COMPONENTNAME_UNKNOWN";
        v86 = @"COMPONENTNAME_UNKNOWN";
        if (v78 <= 0x42)
        {
          v86 = off_2784B9898[v78];
          v85 = off_2784B9AB0[v78];
        }

        v87 = v86;
        v88 = v85;
        v89 = sub_222B02388();
        v91 = v90;

        v92 = sub_222A230FC(v89, v91, &v104);
        v78 = v98;

        *(v84 + 4) = v92;
        *(v84 + 12) = 2080;
        v93 = MEMORY[0x223DC6850](v81, v101);
        v95 = sub_222A230FC(v93, v94, &v104);

        *(v84 + 14) = v95;
        _os_log_impl(&dword_222A1C000, v82, v83, "  Could not find a matching request (%s): %s", v84, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v27, -1, -1);
        MEMORY[0x223DC7E30](v84, -1, -1);

        v80 = v102;
        v2 = v103;
      }

      else
      {
      }

      if (v2 == ++v79)
      {
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_222A95164(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_222B018D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_previousTurnId;
  swift_beginAccess();
  sub_222A34E48(v2 + v22, v11, &unk_27D01DA50, &unk_222B04E20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222A34F20(v11, &unk_27D01DA50, &unk_222B04E20);
    if (a1)
    {
      (*(v13 + 16))(v7, a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v12);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v13 + 56))(v7, v23, 1, v12);
    swift_beginAccess();
    v28 = v2 + v22;
    v29 = v7;
  }

  else
  {
    v24 = v11;
    v25 = *(v13 + 32);
    v25(v21, v24, v12);
    if (!a1)
    {
      return (*(v13 + 8))(v21, v12);
    }

    (*(v13 + 16))(v16, a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v12);
    v25(v19, v16, v12);
    sub_222A6E4CC();
    if ((sub_222B02338() & 1) == 0)
    {
      v31 = v25;
      swift_beginAccess();

      v26 = sub_222ADED50(v21);
      swift_endAccess();

      v25 = v31;
    }

    (*(v13 + 8))(v21, v12);
    v27 = v32;
    v25(v32, v19, v12);
    (*(v13 + 56))(v27, 0, 1, v12);
    swift_beginAccess();
    v28 = v2 + v22;
    v29 = v27;
  }

  sub_222A957D4(v29, v28);
  return swift_endAccess();
}

id sub_222A955C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_222A956EC(uint64_t a1)
{
  sub_222B01848();
  if (v1 <= 0x3F)
  {
    sub_222A658D8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_222A957D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A95844(void *a1)
{
  if (a1[2])
  {
  }

  else
  {
    v2 = 0;
  }

  a1[2] = v2;

  v4 = a1[4];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a1[4] = v6 & ~(v6 >> 63);
    if (!a1[2])
    {
      a1[3] = 0;
    }
  }

  return result;
}

uint64_t sub_222A958E0()
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA68, &unk_222B0C0F0);
  v1 = MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v44 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C950, &qword_222B04910);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  swift_beginAccess();
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v50 = MEMORY[0x277D84F90];

  sub_222A23DF4(0, v8, 0);
  v9 = v50;
  v10 = v7 + 64;
  result = sub_222B02BC8();
  v12 = result;
  v13 = 0;
  v14 = *(v7 + 36);
  v37 = v7 + 72;
  v38 = v8;
  v40 = v7;
  v41 = v7 + 64;
  v39 = v14;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v7 + 32))
  {
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v14 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v48 = 1 << v12;
    v49 = v12 >> 6;
    v47 = v13;
    v16 = *(v7 + 48);
    v17 = sub_222B018D8();
    v18 = *(v17 - 8);
    v19 = v18;
    v20 = *(v18 + 16);
    v21 = v6;
    v22 = v44;
    v20(v44, v16 + *(v18 + 72) * v12, v17);
    v23 = *(*(v7 + 56) + 8 * v12);
    v24 = v45;
    v25 = v22;
    v6 = v21;
    (*(v19 + 32))(v45, v25, v17);
    *(v24 + *(v46 + 48)) = v23;
    v26 = *(v43 + 48);
    v20(v21, v24, v17);
    *(v21 + v26) = v23;
    swift_bridgeObjectRetain_n();
    sub_222A34F20(v24, &qword_27D01DA68, &unk_222B0C0F0);
    v50 = v9;
    v28 = *(v9 + 16);
    v27 = *(v9 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_222A23DF4((v27 > 1), v28 + 1, 1);
      v9 = v50;
    }

    *(v9 + 16) = v28 + 1;
    result = sub_222A9657C(v21, v9 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28);
    v7 = v40;
    v10 = v41;
    v15 = 1 << *(v40 + 32);
    if (v12 >= v15)
    {
      goto LABEL_25;
    }

    v29 = *(v41 + 8 * v49);
    if ((v29 & v48) == 0)
    {
      goto LABEL_26;
    }

    LODWORD(v14) = v39;
    if (v39 != *(v40 + 36))
    {
      goto LABEL_27;
    }

    v30 = v29 & (-2 << (v12 & 0x3F));
    if (v30)
    {
      v15 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v49 << 6;
      v32 = v49 + 1;
      v33 = (v37 + 8 * v49);
      while (v32 < (v15 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_222A965F4(v12, v39, 0);
          v15 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_222A965F4(v12, v39, 0);
    }

LABEL_4:
    v13 = v47 + 1;
    v12 = v15;
    if (v47 + 1 == v38)
    {

      return v9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_222A95D54(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_222A95DD8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
  v4 = *(sub_222B018D8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_222A95ED4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_222A95F5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_222A960B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_222B018D8();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_222A96358(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_222A964AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(a5 + 48);
  v8 = sub_222B018D8();
  (*(*(v8 - 8) + 16))(a1, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

uint64_t sub_222A9657C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C950, &qword_222B04910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A965F4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id sub_222A96600(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_innerSubscription] = 0;
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables;
  type metadata accessor for EventTables();
  swift_allocObject();
  *&v2[v5] = sub_222A7FFC0();
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer;
  type metadata accessor for RequestStreamEndpointer();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  v7[2] = 0x404E000000000000;
  v7[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA80, &qword_222B0AB30);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  v10 = MEMORY[0x277D84F98];
  v7[4] = v9;
  v7[5] = v10;
  *&v3[v6] = v7;
  v11 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_previousTurnId;
  v12 = sub_222B018D8();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA88, &qword_222B0AB38);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA90, &qword_222B0AB40);
  swift_allocObject();
  v14 = swift_unknownObjectRetain();
  *(v13 + 16) = sub_222AA63C8(v14);
  *&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream] = v13;
  v15 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_turnsStartDateTime;
  v16 = sub_222B01848();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v3[v15], a2, v16);
  v20.receiver = v3;
  v20.super_class = type metadata accessor for ScanTurnsSubscriber(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v17 + 8))(a2, v16);
  return v18;
}

uint64_t sub_222A96824(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v39 = MEMORY[0x277D84F90];
  sub_222A23B84(0, v4, 0);
  v5 = v39;
  v7 = v6 + 56;
  result = sub_222B02BC8();
  v9 = result;
  v10 = 0;
  v27 = v6 + 64;
  v28 = v4;
  v29 = v6 + 56;
  v30 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v34 = v10;
    v35 = *(v6 + 36);
    v13 = (*(v6 + 48) + 16 * v9);
    v14 = *v13;
    v15 = v13[1];
    v16 = a2(0);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v15;
    v39 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);

    if (v19 >= v18 >> 1)
    {
      sub_222A23B84((v18 > 1), v19 + 1, 1);
      v5 = v39;
    }

    v37 = v16;
    v38 = sub_222A9AC64(a3, a4, &protocol conformance descriptor for TypedNamedFeature<A>);
    *&v36 = v17;
    *(v5 + 16) = v19 + 1;
    result = sub_222A2577C(&v36, v5 + 40 * v19 + 32);
    v6 = v30;
    v11 = 1 << *(v30 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v29;
    v20 = *(v29 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v27 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_222A965F4(v9, v35, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_222A965F4(v9, v35, 0);
    }

LABEL_4:
    v10 = v34 + 1;
    v9 = v11;
    if (v34 + 1 == v28)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_222A96AE0(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v8 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_222A96BDC(void *result)
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

  result = sub_222AA8FDC(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
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

uint64_t sub_222A96CE4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_222AA95FC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A96DD8(uint64_t result)
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

  result = sub_222AA9724(result, v11, 1, v3);
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

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_222A96EDC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_222AA8E90(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_222B018D8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A97020(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_222B02DC8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_222B02DC8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_222A99D88(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_222A97118(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_222A23AE4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_222A25344(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_222A23AE4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_222A9722C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_222A23BE4(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_222A25344(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_222A23BE4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + v6 + 32) = v8 & 1;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t PromptEventType.Ending.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t PromptEventType.Beginning.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t FlowTaskStateType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

void sub_222A97408(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 8 * v3 + 24);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_16:
    v10 = 2;
    goto LABEL_17;
  }

  v5 = sub_222B02DC8();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v7 = MEMORY[0x223DC6F00](v6, v4);

LABEL_9:
    v8 = [v7 gaveOptions];
    if (v8)
    {
      v9 = v8;

      v10 = 1;
    }

    else
    {
      v9 = [v7 offered];

      if (!v9)
      {
        v10 = 3;
        goto LABEL_17;
      }

      v10 = 0;
    }

LABEL_17:
    *a2 = v10;
    return;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * v6 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_222A97538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_222B03128();
  sub_222B02448();
  v6 = sub_222B03168();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_222B02F78() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PromptEndSlotName.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PromptResult.rawValue.getter()
{
  if (*v0)
  {
    return 0x454C4C45434E4143;
  }

  else
  {
    return 0x414D5249464E4F43;
  }
}

uint64_t FlowTaskResolvedSlotType.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x6E65697069636572;
  }
}

uint64_t ResolvedSlots.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_222A9773C(unint64_t a1)
{
  HasFlowEvents = a1;
  *&v118 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_130:
    v3 = sub_222B02DC8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = HasFlowEvents;
  v116 = HasFlowEvents & 0xC000000000000001;
  v109 = v2;
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = &unk_280CB4B30;
  v7 = 0x277D590F0;
  do
  {
    v112 = v5;
    v8 = v4;
    while (1)
    {
      if (v116)
      {
        v9 = MEMORY[0x223DC6F00](v8, HasFlowEvents);
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_121;
        }

        v9 = *(HasFlowEvents + 8 * v8 + 32);
      }

      v10 = v9;
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v11 = sub_222A250BC(0, v6, v7);
      [v10 anyEventType];
      v12 = sub_222B02A28();
      if (v12 && v11 == v12)
      {
        v14 = [v10 payload];
        if (v14)
        {
          v15 = v14;
          v16 = v7;
          v17 = v6;
          v18 = sub_222B01798();
          v20 = v19;

          v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v22 = sub_222B01788();
          v23 = v18;
          v6 = v17;
          v7 = v16;
          HasFlowEvents = v114;
          v24 = v20;
          v2 = v109;
          sub_222A26530(v23, v24);
          v25 = v21;
        }

        else
        {
          v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v22 = 0;
        }

        v26 = [v25 initWithData_];

        if (!v26)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v10 = v26;
        if (swift_dynamicCastObjCClass())
        {
          break;
        }
      }

LABEL_15:
      ++v8;
      if (v4 == v3)
      {
        v5 = v112;
        goto LABEL_29;
      }
    }

    MEMORY[0x223DC6810]();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222B02648();
      HasFlowEvents = v114;
    }

    sub_222B02688();
    v5 = v118;
    v2 = v109;
  }

  while (v4 != v3);
LABEL_29:
  v2 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v84 = v5;
    v27 = sub_222B02DC8();
    v5 = v84;
  }

  else
  {
    v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  v111 = v27;
  v113 = v5;
  if (v27)
  {
    v29 = 0;
    v30 = v5 & 0xC000000000000001;
LABEL_33:
    v104 = v28;
    v31 = v29;
    while (1)
    {
      if (v30)
      {
        v32 = MEMORY[0x223DC6F00](v31);
      }

      else
      {
        if (v31 >= *(v2 + 16))
        {
          goto LABEL_123;
        }

        v32 = *(v5 + 8 * v31 + 32);
      }

      v33 = v32;
      v29 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v34 = [v32 cdmRequestContext];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 startedOrChanged];

        if (v36)
        {
          v37 = [v36 currentTurnInput];

          if (v37)
          {
            v38 = [v37 turnContext];

            if (v38)
            {
              v39 = [v38 nlContext];

              if (v39)
              {
                v40 = [v39 systemDialogActs];

                if (v40)
                {
                  sub_222A250BC(0, &qword_27D01DAB0, 0x277D58F48);
                  v41 = sub_222B025F8();

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v104 = sub_222AA9318(0, v104[2] + 1, 1, v104);
                  }

                  v44 = v104[2];
                  v43 = v104[3];
                  if (v44 >= v43 >> 1)
                  {
                    v104 = sub_222AA9318((v43 > 1), v44 + 1, 1, v104);
                  }

                  v104[2] = v44 + 1;
                  v104[v44 + 4] = v41;
                  v28 = v104;
                  v5 = v113;
                  if (v29 != v111)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_54;
                }
              }
            }
          }
        }
      }

      ++v31;
      v5 = v113;
      if (v29 == v111)
      {
        v28 = v104;
        goto LABEL_54;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
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
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

LABEL_54:
  sub_222A97408(v28, &v118);

  v105 = v118;
  v45 = MEMORY[0x277D84F90];
  *&v118 = MEMORY[0x277D84F90];
  if (v3)
  {
    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    v48 = &unk_280CB4B18;
    v49 = 0x277D57500;
    v2 = v109;
    v106 = v3;
    while (2)
    {
      v50 = v46;
      v107 = v47;
LABEL_57:
      if (v116)
      {
        v51 = MEMORY[0x223DC6F00](v50, HasFlowEvents);
      }

      else
      {
        if (v50 >= *(v2 + 16))
        {
          goto LABEL_125;
        }

        v51 = *(HasFlowEvents + 8 * v50 + 32);
      }

      v52 = v51;
      v46 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_124;
      }

      v28 = sub_222A250BC(0, v48, v49);
      [v52 anyEventType];
      v53 = sub_222B02A28();
      if (v53)
      {
        v54 = v28 == v53;
      }

      else
      {
        v54 = 0;
      }

      if (v54)
      {
        v55 = [v52 payload];
        if (v55)
        {
          v56 = v55;
          v57 = v48;
          v58 = sub_222B01798();
          v59 = v49;
          v61 = v60;

          v2 = v109;
          v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v63 = sub_222B01788();
          v64 = v58;
          v48 = v57;
          v65 = v61;
          v49 = v59;
          sub_222A26530(v64, v65);
          v66 = v62;
        }

        else
        {
          v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v63 = 0;
        }

        v28 = [v66 initWithData_];

        v3 = v106;
        v47 = v107;
        HasFlowEvents = v114;
        if (v28)
        {
          objc_opt_self();
          v67 = swift_dynamicCastObjCClass();
          v52 = v28;
          if (v67)
          {
            v28 = v67;
            MEMORY[0x223DC6810]();
            if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222B02648();
              v2 = v109;
            }

            sub_222B02688();
            v47 = v118;
            v45 = MEMORY[0x277D84F90];
            if (v46 != v106)
            {
              continue;
            }

            goto LABEL_80;
          }

          goto LABEL_65;
        }
      }

      else
      {
LABEL_65:
      }

      break;
    }

    ++v50;
    if (v46 == v3)
    {
      v45 = MEMORY[0x277D84F90];
      goto LABEL_80;
    }

    goto LABEL_57;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_80:
  *&v118 = v45;
  v115 = v47 & 0xFFFFFFFFFFFFFF8;
  if (v47 >> 62)
  {
    v68 = sub_222B02DC8();
  }

  else
  {
    v68 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = 0;
  v117 = v47 & 0xC000000000000001;
  v2 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  while (v68 != v69)
  {
    if (v117)
    {
      v70 = MEMORY[0x223DC6F00](v69, v47);
    }

    else
    {
      if (v69 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v70 = *(v47 + 8 * v69 + 32);
    }

    v28 = v70;
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v72 = [v70 flowEntityContextTier1];

    ++v69;
    if (v72)
    {
      MEMORY[0x223DC6810]();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      v110 = v118;
      v69 = v71;
    }
  }

  *&v118 = v2;
  v2 = v110;
  if (v110 >> 62)
  {
    v73 = sub_222B02DC8();
  }

  else
  {
    v73 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = MEMORY[0x277D84F90];
  if (v73)
  {
    v108 = v47;
    v75 = 0;
    HasFlowEvents = v110 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v110 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x223DC6F00](v75, v2);
      }

      else
      {
        if (v75 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_127;
        }

        v76 = *(v2 + 8 * v75 + 32);
      }

      v28 = v76;
      v77 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_126;
      }

      if ([v76 hasLinkId])
      {
        sub_222B02D18();
        sub_222B02D48();
        v2 = v110;
        sub_222B02D58();
        sub_222B02D28();
      }

      else
      {
      }

      ++v75;
      if (v77 == v73)
      {
        v74 = v118;
        v47 = v108;
        break;
      }
    }
  }

  *&v118 = MEMORY[0x277D84F98];
  HasFlowEvents = 0;
  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    v78 = sub_222B02DC8();
    if (v78)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v78 = *(v74 + 16);
    if (v78)
    {
LABEL_110:
      v79 = 0;
      v2 = v74 & 0xC000000000000001;
      while (1)
      {
        if (v2)
        {
          v80 = MEMORY[0x223DC6F00](v79, v74);
        }

        else
        {
          if (v79 >= *(v74 + 16))
          {
            goto LABEL_129;
          }

          v80 = *(v74 + 8 * v79 + 32);
        }

        v28 = v80;
        v81 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_128;
        }

        v121 = v80;
        sub_222A9A8C8(&v118, &v121);

        ++v79;
        if (v81 == v78)
        {
          v82 = v47;
          v83 = v118;
          goto LABEL_136;
        }
      }
    }
  }

  v82 = v47;
  v83 = MEMORY[0x277D84F98];
LABEL_136:

  v85 = 0;
  v86 = MEMORY[0x277D84F90];
  *&v118 = MEMORY[0x277D84F90];
  while (v68 != v85)
  {
    if (v117)
    {
      v88 = MEMORY[0x223DC6F00](v85, v82);
    }

    else
    {
      v87 = *(v115 + 16);
      if (v85 >= v87)
      {
        goto LABEL_158;
      }

      v88 = v82[v85 + 4];
    }

    v28 = v88;
    v89 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      v82 = sub_222AA8FDC((v87 > 1), v28, 1, v82);
      goto LABEL_149;
    }

    v90 = [v88 flowStep];

    ++v85;
    if (v90)
    {
      MEMORY[0x223DC6810]();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      v86 = v118;
      v85 = v89;
    }
  }

  v82 = MEMORY[0x277D84F90];
  v121 = MEMORY[0x277D84F90];
  if (!v68)
  {
    goto LABEL_150;
  }

  HasFlowEvents = type metadata accessor for HasFlowEvents(0);
  v85 = swift_allocObject();
  *(v85 + 16) = 1;
  v82 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
  v68 = v82[2];
  v87 = v82[3];
  v28 = (v68 + 1);
  if (v68 >= v87 >> 1)
  {
    goto LABEL_159;
  }

LABEL_149:
  v119 = HasFlowEvents;
  v120 = sub_222A9AC64(qword_280CB7758, type metadata accessor for HasFlowEvents, &protocol conformance descriptor for TypedNamedFeature<A>);
  *&v118 = v85;
  v82[2] = v28;
  sub_222A2577C(&v118, &v82[5 * v68 + 4]);
  v121 = v82;
LABEL_150:
  if (v111)
  {
    HasNLXEvents = type metadata accessor for HasNLXEvents(0);
    v92 = swift_allocObject();
    *(v92 + 16) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_222AA8FDC(0, v82[2] + 1, 1, v82);
    }

    v94 = v82[2];
    v93 = v82[3];
    if (v94 >= v93 >> 1)
    {
      v82 = sub_222AA8FDC((v93 > 1), v94 + 1, 1, v82);
    }

    v119 = HasNLXEvents;
    v120 = sub_222A9AC64(&unk_280CB79D0, type metadata accessor for HasNLXEvents, &protocol conformance descriptor for TypedNamedFeature<A>);
    *&v118 = v92;
    v82[2] = v94 + 1;
    sub_222A2577C(&v118, &v82[5 * v94 + 4]);
    v121 = v82;
  }

  v95 = sub_222A9AE28(v86);
  sub_222A96BDC(v95);
  v96 = sub_222A9B3B8(v86, v83);

  sub_222A96BDC(v96);
  LOBYTE(v118) = v105;
  v97 = sub_222A9BB0C(v86, &v118);
  sub_222A96BDC(v97);
  v98 = sub_222A9C210(v86);
  sub_222A96BDC(v98);
  v99 = sub_222A9C96C(v86);
  sub_222A96BDC(v99);
  sub_222A9CD28(v86);
  sub_222A96BDC(v100);
  sub_222A9D1E8(v86);
  v102 = v101;

  sub_222A96BDC(v102);
  return v121;
}

uint64_t HasNLXEvents.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222A98584(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A985D8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222A98698(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A986EC(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t PromptEndSlotName.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PromptEndSlotName.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ResolvedSlots.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A98A34(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A98ABC(char a1)
{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A98B50(char *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A98BA4(unsigned __int8 *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v2 & 1;
  }

  return result;
}

SiriPrivateLearningAnalytics::PromptEventType::PreviousTurn_optional __swiftcall PromptEventType.PreviousTurn.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PromptEventType.PreviousTurn.rawValue.getter()
{
  v1 = 0x4B4E552D56455250;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_222A98D48()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A98E1C(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A98EDC(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A98FB8(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000004E574F4ELL;
  v3 = 0x4B4E552D56455250;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000222B101A0;
  }

  v4 = 0x8000000222B10160;
  v5 = 0xD000000000000011;
  if (*v1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000222B10180;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_222A99054(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "BLE";
  }

  else
  {
    v4 = "BEGIN-CONFIRMATION";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "BEGIN-CONFIRMATION";
  }

  else
  {
    v7 = "BLE";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A99100()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99180(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A991EC(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A99274(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "BEGIN-CONFIRMATION";
  }

  else
  {
    v3 = "BLE";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_222A992C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "BEGIN-DISAMBIGUATION";
  }

  else
  {
    v4 = "END-CONFIRMATION";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "END-CONFIRMATION";
  }

  else
  {
    v7 = "BEGIN-DISAMBIGUATION";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A9936C()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A993EC(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A99458(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A994E0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "END-CONFIRMATION";
  }

  else
  {
    v3 = "BEGIN-DISAMBIGUATION";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_222A9952C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = "END-DISAMBIGUATION";
  }

  else
  {
    v4 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
  }

  else
  {
    v7 = "END-DISAMBIGUATION";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A995D8()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99658(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A996C4(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A9974C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
  }

  else
  {
    v3 = "END-DISAMBIGUATION";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_222A9978C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65746E6F63;
  }

  else
  {
    v3 = 0x6E65697069636572;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65746E6F63;
  }

  else
  {
    v5 = 0x6E65697069636572;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

uint64_t sub_222A99838()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A998C0(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A99934(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A999C4(uint64_t *a1@<X8>)
{
  v2 = 0x6E65697069636572;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222A99A14@<X0>(char *a4@<X8>)
{
  v5 = sub_222B02E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_222A99A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x454C4C45434E4143;
  }

  else
  {
    v3 = 0x414D5249464E4F43;
  }

  if (v2)
  {
    v4 = 0xEF4F4E5F4E4F4954;
  }

  else
  {
    v4 = 0xE900000000000044;
  }

  if (*a2)
  {
    v5 = 0x454C4C45434E4143;
  }

  else
  {
    v5 = 0x414D5249464E4F43;
  }

  if (*a2)
  {
    v6 = 0xE900000000000044;
  }

  else
  {
    v6 = 0xEF4F4E5F4E4F4954;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

uint64_t sub_222A99B2C()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99BC0(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A99C40(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99CDC@<X0>(char *a3@<X8>)
{
  v4 = sub_222B02E48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_222A99D38(uint64_t *a1@<X8>)
{
  v2 = 0x414D5249464E4F43;
  if (*v1)
  {
    v2 = 0x454C4C45434E4143;
  }

  v3 = 0xEF4F4E5F4E4F4954;
  if (*v1)
  {
    v3 = 0xE900000000000044;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222A99D88(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_222B02DC8();
LABEL_9:
  result = sub_222B02CC8();
  *v2 = result;
  return result;
}

void *sub_222A99E28(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A99E80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222B02DC8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222B02DC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222A9DBC8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
            v9 = sub_222A6E00C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222A9A020(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222B02DC8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222B02DC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222A9DBC8(&qword_27D01DBA8, &qword_27D01DBA0, &qword_222B0B2F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DBA0, &qword_222B0B2F0);
            v9 = sub_222A6DF8C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Turn(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222A9A1B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222B02DC8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222B02DC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222A9DBC8(&qword_27D01DB98, &qword_27D01DB90, &qword_222B0B2E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB90, &qword_222B0B2E8);
            v9 = sub_222A6E1A4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222A250BC(0, &qword_27D01C9F8, 0x277CBEBC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_222A9A350(void *a1)
{
  v2 = sub_222B01638();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01C968, &qword_222B04928);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = v8[3];

  result = sub_222B028B8();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_222A9AC64(&unk_280CB8318, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    do
    {
      result = sub_222B02B48();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_222A250AC(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_222A9AC64(&unk_280CB8318, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_222B02B48();
  if (v32)
  {
    while (1)
    {
      result = sub_222A250AC(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01C968, &qword_222B04928);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_222A250AC(&v33, v14);
      v14 += 2;
      sub_222B02B48();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_222A34F20(&v31, &unk_27D01CB00, &qword_222B08ED0);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

char *sub_222A9A6E4(void *a1)
{
  v1 = [a1 entitiesPresenteds];
  if (v1)
  {
    v2 = v1;
    sub_222A250BC(0, &qword_27D01DC10, 0x277D57560);
    v3 = sub_222B025F8();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_222B02DC8();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x223DC6F00](v7, v3);
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v10 = [v8 entityId];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v11 = v10;
          v12 = sub_222B02388();
          v18 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_222AA8C78(0, *(v6 + 2) + 1, 1, v6);
          }

          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_222AA8C78((v14 > 1), v15 + 1, 1, v6);
          }

          *(v6 + 2) = v15 + 1;
          v16 = &v6[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v18;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return 0;
}

id sub_222A9A8C8(void *a1, id *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = *a2;
  result = [*a2 linkId];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [result value];
  if (!v10)
  {

    v31 = sub_222B018D8();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    return sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
  }

  v11 = v10;
  v12 = sub_222B01798();
  v14 = v13;

  sub_222A67044(v12, v14, v6);
  sub_222A26530(v12, v14);
  v15 = sub_222B018D8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    return sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
  }

  v17 = sub_222B01868();
  v19 = v18;
  (*(v16 + 8))(v6, v15);
  v20 = sub_222A9A6E4(v7);
  if (!v20)
  {
    v21 = *a1;
    if (*(*a1 + 16) && (v22 = sub_222A26EC8(v17, v19), (v23 & 1) != 0))
    {
      v24 = (*(v21 + 56) + 24 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];

      swift_bridgeObjectRetain_n();
      v28 = v25;
      v29 = v26;
      v30 = v27;
      v20 = v25;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v20 = 0;
      v28 = 1;
    }

    sub_222A9DC1C(v28, v29, v30);
  }

  v32 = [v7 entitySelected];
  if (v32 && (v33 = v32, v34 = [v32 entityId], v33, v34))
  {
    v35 = sub_222B02388();
    v37 = v36;
  }

  else
  {
    v38 = *a1;
    if (*(*a1 + 16) && (v39 = sub_222A26EC8(v17, v19), (v40 & 1) != 0))
    {
      v41 = *(v38 + 56) + 24 * v39;
      v35 = *(v41 + 8);
      v37 = *(v41 + 16);
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v37 = 0;
      v35 = 0;
      v42 = 1;
    }

    sub_222A9DC1C(v42, v35, v37);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *a1;
  sub_222AE991C(v20, v35, v37, v17, v19, isUniquelyReferenced_nonNull_native);

  *a1 = v45;
  return result;
}

uint64_t sub_222A9AC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222A9ACAC(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 flowState];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 resolvedSlotName];

    if (v6)
    {
      v7 = sub_222B02388();
      v9 = v8;

      v10 = [v3 flowState];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 flowStateType];

        if (v12 <= 0x29)
        {
          if (((1 << v12) & 0x43408) != 0 || ((1 << v12) & 0x34000000024) != 0)
          {
            goto LABEL_12;
          }

          if (v12 == 11)
          {
            if (sub_222A97538(v7, v9, *a1) & 1) != 0 || (sub_222A97538(v7, v9, a1[1]))
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }
        }

        if (v12 == 136)
        {
LABEL_12:
          sub_222AE3FC4(&v13, v7, v9);
        }
      }

LABEL_13:
    }
  }
}

uint64_t sub_222A9AE28(unint64_t a1)
{
  v18 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC6F00](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v14 = v4;
      sub_222A9ACAC(&v15, &v14);

      ++v3;
      if (v6 == i)
      {
        v7 = v15;
        v8 = v16;
        v9 = v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v9 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
LABEL_15:
  v10 = sub_222A96824(v7, type metadata accessor for PromptBeginSlotName, &qword_27D01DC08, type metadata accessor for PromptBeginSlotName);
  sub_222A96BDC(v10);
  v11 = sub_222A96824(v8, type metadata accessor for PromptEndSlotName, &qword_280CB6E88, type metadata accessor for PromptEndSlotName);
  sub_222A96BDC(v11);
  v12 = sub_222A96824(v9, type metadata accessor for PromptBeginSlotName, &qword_27D01DC08, type metadata accessor for PromptBeginSlotName);

  sub_222A96BDC(v12);
  return v18;
}

unint64_t sub_222A9B03C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    while (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v3 = sub_222B02DC8();
      if (!v3)
      {
        return v3;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DC6F00](v3, a1);
      goto LABEL_10;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v5 = *(a1 + 32 + 8 * v3);
LABEL_10:
    v6 = v5;
    v7 = [v5 flowState];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 flowStateType];

      v10 = *(a2 + 16);
      v11 = (a2 + 32);
      while (v10)
      {
        v12 = *v11++;
        --v10;
        if (v12 == v9)
        {

          return v3;
        }
      }
    }
  }

  return v3;
}

id sub_222A9B194(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  result = [a1 platformRelatedContext];
  if (result)
  {
    v6 = result;
    v7 = [result entityContextValue];

    if (v7)
    {
      v8 = [v7 linkId];

      if (v8)
      {
        v9 = [v8 value];
        if (v9)
        {
          v10 = v9;
          v11 = sub_222B01798();
          v13 = v12;

          sub_222A67044(v11, v13, v4);
          sub_222A26530(v11, v13);
          v14 = sub_222B018D8();
          v15 = *(v14 - 8);
          if ((*(v15 + 48))(v4, 1, v14) != 1)
          {
            v16 = sub_222B01868();
            (*(v15 + 8))(v4, v14);
            return v16;
          }
        }

        else
        {

          v17 = sub_222B018D8();
          (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
        }

        sub_222A34F20(v4, &unk_27D01DA50, &unk_222B04E20);
      }
    }

    return 0;
  }

  return result;
}

void *sub_222A9B3B8(unint64_t a1, uint64_t a2)
{
  v51 = a1;
  v4 = sub_222A9B03C(a1, &unk_2835F1268);
  if (v5)
  {
    goto LABEL_17;
  }

  v52 = v4;
  sub_222A6E52C(&v52, &v48);
  v6 = v48;
  if (!v48)
  {
    goto LABEL_17;
  }

  v7 = sub_222A9B194(v48);
  if (!v8)
  {
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_16;
  }

  v9 = sub_222A26EC8(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_16:

LABEL_17:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v12 = (*(a2 + 56) + 24 * v9);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  if (*v12)
  {
    v47 = v12[1];
    v16 = type metadata accessor for PromptBeginCandidates(0);
    v46 = swift_allocObject();
    *(v46 + 16) = v13;

    swift_bridgeObjectRetain_n();
    v17 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_222AA8FDC((v18 > 1), v19 + 1, 1, v17);
    }

    v49 = v16;
    v50 = sub_222A9AC64(&qword_27D01DC00, type metadata accessor for PromptBeginCandidates, &protocol conformance descriptor for TypedNamedFeature<A>);
    *&v48 = v46;
    v17[2] = v19 + 1;
    sub_222A2577C(&v48, &v17[5 * v19 + 4]);

    v14 = v47;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    if (v15)
    {
LABEL_10:
      v20 = type metadata accessor for PromptEndResultEntity(0);
      v21 = swift_allocObject();
      *(v21 + 16) = v14;
      *(v21 + 24) = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_222AA8FDC(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v17 = sub_222AA8FDC((v22 > 1), v23 + 1, 1, v17);
      }

      v49 = v20;
      v50 = sub_222A9AC64(&qword_27D01DBF0, type metadata accessor for PromptEndResultEntity, &protocol conformance descriptor for TypedNamedFeature<A>);
      *&v48 = v21;
      v17[2] = v23 + 1;
      sub_222A2577C(&v48, &v17[5 * v23 + 4]);
      goto LABEL_18;
    }
  }

LABEL_18:
  v51 = a1;
  v24 = sub_222A9B03C(a1, &unk_2835F1290);
  v25 = MEMORY[0x28223BE20](v24);
  if (v26)
  {
    return v17;
  }

  v52 = v25;
  sub_222A6E52C(&v52, &v48);
  v27 = v48;
  if (!v48)
  {
    return v17;
  }

  v28 = sub_222A9B194(v48);
  if (!v29)
  {
    goto LABEL_31;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_31;
  }

  v30 = sub_222A26EC8(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = (*(a2 + 56) + 24 * v30);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  if (*v33)
  {
    v37 = type metadata accessor for PromptEndCandidates(0);
    v38 = swift_allocObject();
    *(v38 + 16) = v34;

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_222AA8FDC(0, v17[2] + 1, 1, v17);
    }

    v40 = v17[2];
    v39 = v17[3];
    if (v40 >= v39 >> 1)
    {
      v17 = sub_222AA8FDC((v39 > 1), v40 + 1, 1, v17);
    }

    v49 = v37;
    v50 = sub_222A9AC64(&qword_27D01DBF8, type metadata accessor for PromptEndCandidates, &protocol conformance descriptor for TypedNamedFeature<A>);
    *&v48 = v38;
    v17[2] = v40 + 1;
    sub_222A2577C(&v48, &v17[5 * v40 + 4]);

    if (!v36)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  if (!v36)
  {
LABEL_31:

    return v17;
  }

LABEL_36:
  v42 = type metadata accessor for PromptEndResultEntity(0);
  v43 = swift_allocObject();
  *(v43 + 16) = v35;
  *(v43 + 24) = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_222AA8FDC(0, v17[2] + 1, 1, v17);
  }

  v45 = v17[2];
  v44 = v17[3];
  if (v45 >= v44 >> 1)
  {
    v17 = sub_222AA8FDC((v44 > 1), v45 + 1, 1, v17);
  }

  v49 = v42;
  v50 = sub_222A9AC64(&qword_27D01DBF0, type metadata accessor for PromptEndResultEntity, &protocol conformance descriptor for TypedNamedFeature<A>);
  *&v48 = v43;
  v17[2] = v45 + 1;
  sub_222A2577C(&v48, &v17[5 * v45 + 4]);
  return v17;
}

uint64_t sub_222A9B940(uint64_t result, int *a2, unsigned __int8 a3)
{
  v3 = *a2;
  if (*a2 > 37)
  {
    if ((v3 - 38) < 2)
    {
      v4 = "END-CONFIRMATION";
      goto LABEL_12;
    }

    if (v3 != 40)
    {
      if (v3 != 41)
      {
        return v8;
      }

      if (a3)
      {
        v7 = sub_222B02F78();

        if ((v7 & 1) == 0)
        {
          return v8;
        }
      }

      else
      {
      }
    }

    v6 = 0x8000000222B10210;
    v5 = 0xD000000000000010;
LABEL_20:
    sub_222AE3FC4(&v9, v5, v6);
  }

  v4 = "BLE";
  if ((v3 - 12) < 2)
  {
LABEL_12:
    v5 = 0xD000000000000012;
    v6 = v4 | 0x8000000000000000;
    if ((v3 - 12) >= 2 && v3 != 38 && v3 != 18)
    {
    }

    goto LABEL_20;
  }

  if (v3 == 10)
  {
    v6 = 0x8000000222B101F0;
    v5 = 0xD000000000000014;
    goto LABEL_20;
  }

  if (v3 == 18)
  {
    goto LABEL_12;
  }

  return v8;
}

void *sub_222A9BB0C(unint64_t a1, unsigned __int8 *a2)
{
  LODWORD(v3) = *a2;
  v47 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = a1 & 0xC000000000000001;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    j = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_222B02DC8();
  v6 = a1 & 0xC000000000000001;
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  j = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v6)
      {
        v10 = MEMORY[0x223DC6F00](v9, a1);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = [v10 flowState];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v5)
      {
        goto LABEL_23;
      }
    }

    v13 = v12;
    v14 = [v12 flowStateType];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      j = sub_222AA9210(0, *(j + 16) + 1, 1, j);
    }

    v16 = *(j + 16);
    v15 = *(j + 24);
    if (v16 >= v15 >> 1)
    {
      j = sub_222AA9210((v15 > 1), v16 + 1, 1, j);
    }

    *(j + 16) = v16 + 1;
    *(j + 4 * v16 + 32) = v14;
  }

  while (v7 != v5);
LABEL_23:
  i = MEMORY[0x277D84FA0];
  *&v43 = MEMORY[0x277D84FA0];
  *(&v43 + 1) = MEMORY[0x277D84FA0];
  v18 = *(j + 16);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (i >= *(j + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v46 = *(j + 32 + 4 * i);
      sub_222A9B940(&v43, &v46, v3);
    }

    i = *(&v43 + 1);
    v18 = v43;
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = sub_222A96824(v18, type metadata accessor for PromptBeginEventType, &qword_27D01DBE8, type metadata accessor for PromptBeginEventType);
  sub_222A96BDC(v19);
  v20 = sub_222A96824(i, type metadata accessor for PromptEndEventType, &qword_27D01DBE0, type metadata accessor for PromptEndEventType);

  sub_222A96BDC(v20);
  if (v5)
  {
    j = 0;
    while (1)
    {
      if (v6)
      {
        v21 = MEMORY[0x223DC6F00](j, a1);
      }

      else
      {
        if (j >= *(v4 + 16))
        {
          goto LABEL_71;
        }

        v21 = *(a1 + 8 * j + 32);
      }

      v22 = v21;
      v23 = (j + 1);
      if (__OFADD__(j, 1))
      {
        goto LABEL_70;
      }

      v24 = [v21 flowState];
      if (v24)
      {
        i = v24;
        v18 = [v24 flowStateType];

        if (v18 == 5)
        {
          v18 = type metadata accessor for PromptEndResultAction(0);
          i = swift_allocObject();
          *(i + 16) = 0x454C4C45434E4143;
          *(i + 24) = 0xE900000000000044;
          j = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_74;
          }

          while (1)
          {
            v27 = *(j + 16);
            v26 = *(j + 24);
            v28 = v27 + 1;
            if (v27 >= v26 >> 1)
            {
              j = sub_222AA8FDC((v26 > 1), v27 + 1, 1, j);
            }

            v44 = v18;
            v45 = sub_222A9AC64(&qword_27D01DBD8, type metadata accessor for PromptEndResultAction, &protocol conformance descriptor for TypedNamedFeature<A>);
            *&v43 = i;
            *(j + 16) = v28;
            sub_222A2577C(&v43, j + 40 * v27 + 32);
            v47 = j;
            if (v3 == 1)
            {
              v29 = 0x8000000222B10230;
              i = type metadata accessor for PromptEndEventType(0);
              v30 = swift_allocObject();
              v3 = v30;
              v31 = 0xD000000000000012;
            }

            else
            {
              if (v3)
              {
                goto LABEL_51;
              }

              v29 = 0x8000000222B10210;
              i = type metadata accessor for PromptEndEventType(0);
              v30 = swift_allocObject();
              v3 = v30;
              v31 = 0xD000000000000010;
            }

            *(v30 + 16) = v31;
            *(v30 + 24) = v29;
            v32 = *(j + 24);
            v18 = (v27 + 2);
            if ((v27 + 2) > (v32 >> 1))
            {
              j = sub_222AA8FDC((v32 > 1), v27 + 2, 1, j);
            }

            v44 = i;
            v45 = sub_222A9AC64(&qword_27D01DBE0, type metadata accessor for PromptEndEventType, &protocol conformance descriptor for TypedNamedFeature<A>);
            *&v43 = v3;
            *(j + 16) = v18;
            sub_222A2577C(&v43, j + 40 * v28 + 32);
            v47 = j;
LABEL_51:
            if (!v5)
            {
              return v47;
            }

            for (j = 0; ; ++j)
            {
              if (v6)
              {
                v33 = MEMORY[0x223DC6F00](j, a1);
              }

              else
              {
                if (j >= *(v4 + 16))
                {
                  goto LABEL_73;
                }

                v33 = *(a1 + 8 * j + 32);
              }

              v34 = v33;
              v18 = (j + 1);
              if (__OFADD__(j, 1))
              {
                break;
              }

              v35 = [v33 flowState];
              if (v35)
              {
                v3 = v35;
                i = [v35 flowStateType];

                if (i == 41)
                {
                  v36 = type metadata accessor for PromptEndResultAction(0);
                  v37 = swift_allocObject();
                  *(v37 + 16) = 0x414D5249464E4F43;
                  *(v37 + 24) = 0xEF4F4E5F4E4F4954;
                  v38 = v47;
                  v39 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v39 & 1) == 0)
                  {
                    v38 = sub_222AA8FDC(0, v38[2] + 1, 1, v38);
                  }

                  v41 = v38[2];
                  v40 = v38[3];
                  if (v41 >= v40 >> 1)
                  {
                    v38 = sub_222AA8FDC((v40 > 1), v41 + 1, 1, v38);
                  }

                  v44 = v36;
                  v45 = sub_222A9AC64(&qword_27D01DBD8, type metadata accessor for PromptEndResultAction, &protocol conformance descriptor for TypedNamedFeature<A>);
                  *&v43 = v37;
                  v38[2] = v41 + 1;
                  sub_222A2577C(&v43, &v38[5 * v41 + 4]);
                  return v38;
                }
              }

              else
              {
              }

              if (v18 == v5)
              {
                return v47;
              }
            }

LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            j = sub_222AA8FDC(0, *(j + 16) + 1, 1, j);
          }
        }
      }

      else
      {
      }

      ++j;
      if (v23 == v5)
      {
        goto LABEL_51;
      }
    }
  }

  return v47;
}

void *sub_222A9C210(unint64_t a1)
{
  v1 = a1;
  *&v65 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC6F00](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 flowState];
      if (v7 && (v8 = v7, v9 = [v7 currentTaskName], v8, v9) && (v10 = sub_222B02388(), v12 = v11, v9, v13 = sub_222AA855C(0x2E74696B69726973, 0xEE00746E65746E69, v10, v12), , (v13 & 1) != 0))
      {
        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        v14 = v65;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_20:
  v68 = v14;
  v15 = sub_222A9B03C(v14, &unk_2835F12B8);
  v16 = MEMORY[0x28223BE20](v15);
  if (v17)
  {
    goto LABEL_28;
  }

  v69 = v16;
  sub_222A6E41C(&v69, &v65);
  v18 = v65;
  if (!v65)
  {
    goto LABEL_28;
  }

  v19 = [v65 flowState];
  if (!v19 || (v20 = v19, v21 = [v19 currentTaskName], v20, !v21))
  {

LABEL_28:
    v27 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v22 = sub_222B02388();
  v24 = v23;

  v25 = type metadata accessor for PromptBeginTaskName(0);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v24;
  v27 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_222AA8FDC((v28 > 1), v29 + 1, 1, v27);
  }

  v66 = v25;
  v67 = sub_222A9AC64(&qword_27D01DBD0, type metadata accessor for PromptBeginTaskName, &protocol conformance descriptor for TypedNamedFeature<A>);
  *&v65 = v26;
  v27[2] = v29 + 1;
  sub_222A2577C(&v65, &v27[5 * v29 + 4]);
LABEL_29:
  v68 = v14;
  v30 = sub_222A9B03C(v14, &unk_2835F12F0);
  v31 = MEMORY[0x28223BE20](v30);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v69 = v31;
    sub_222A6E52C(&v69, &v65);
    v33 = v65;
  }

  if (v33)
  {
    v34 = [v33 flowState];
    if (!v34 || (v35 = v34, v36 = [v34 currentTaskName], v35, !v36))
    {

      if (i)
      {
        goto LABEL_41;
      }

LABEL_61:
      v46 = MEMORY[0x277D84F90];
      goto LABEL_62;
    }

    v37 = sub_222B02388();
    v39 = v38;

    v40 = type metadata accessor for PromptEndTaskName(0);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_222AA8FDC(0, v27[2] + 1, 1, v27);
    }

    v43 = v27[2];
    v42 = v27[3];
    if (v43 >= v42 >> 1)
    {
      v27 = sub_222AA8FDC((v42 > 1), v43 + 1, 1, v27);
    }

    v66 = v40;
    v67 = sub_222A9AC64(&qword_27D01DBC8, type metadata accessor for PromptEndTaskName, &protocol conformance descriptor for TypedNamedFeature<A>);
    *&v65 = v41;
    v27[2] = v43 + 1;
    sub_222A2577C(&v65, &v27[5 * v43 + 4]);
  }

  if (!i)
  {
    goto LABEL_61;
  }

LABEL_41:
  v44 = 0;
  v45 = v1 & 0xFFFFFFFFFFFFFF8;
  v46 = MEMORY[0x277D84F90];
  do
  {
    v47 = v44;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x223DC6F00](v47, v1);
        v44 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v47 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v49 = *(v1 + 8 * v47 + 32);
        v44 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      v50 = v49;
      v51 = [v50 flowState];
      if (v51)
      {
        break;
      }

      v48 = v50;
LABEL_44:

      ++v47;
      if (v44 == i)
      {
        goto LABEL_62;
      }
    }

    v48 = v51;
    v52 = [v48 currentTaskName];
    if (!v52)
    {

      goto LABEL_44;
    }

    v53 = v27;
    v54 = v52;
    v55 = sub_222B02388();
    v63 = v56;
    v64 = v55;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_222AA8C78(0, *(v46 + 2) + 1, 1, v46);
    }

    v27 = v53;
    v58 = *(v46 + 2);
    v57 = *(v46 + 3);
    if (v58 >= v57 >> 1)
    {
      v46 = sub_222AA8C78((v57 > 1), v58 + 1, 1, v46);
    }

    *(v46 + 2) = v58 + 1;
    v59 = &v46[16 * v58];
    *(v59 + 4) = v64;
    *(v59 + 5) = v63;
  }

  while (v44 != i);
LABEL_62:
  if (*(v46 + 2))
  {
    v45 = type metadata accessor for TurnTaskNames(0);
    v1 = swift_allocObject();
    *(v1 + 16) = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_71:
      v27 = sub_222AA8FDC(0, v27[2] + 1, 1, v27);
    }

    v61 = v27[2];
    v60 = v27[3];
    if (v61 >= v60 >> 1)
    {
      v27 = sub_222AA8FDC((v60 > 1), v61 + 1, 1, v27);
    }

    v66 = v45;
    v67 = sub_222A9AC64(qword_280CB7490, type metadata accessor for TurnTaskNames, &protocol conformance descriptor for TypedNamedFeature<A>);
    *&v65 = v1;
    v27[2] = v61 + 1;
    sub_222A2577C(&v65, &v27[5 * v61 + 4]);
  }

  else
  {
  }

  return v27;
}

uint64_t sub_222A9C96C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_222B02DC8();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = &off_2784BA000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DC6F00](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 flowState];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v6[352];
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222AA9210(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    v16 = v5;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_222AA9210((v14 > 1), v15 + 1, 1, v5);
    }

    v5 = v16;
    *(v16 + 2) = v15 + 1;
    *&v16[4 * v15 + 32] = v13;
    v6 = &off_2784BA000;
  }

  while (v4 != v3);
LABEL_23:
  v17 = *(v5 + 2);
  if (v17)
  {
    v18 = (v5 + 32);
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = *v18++;
      v21 = v22;
      if (v22 == 26)
      {
        break;
      }

      if (v21 == 11)
      {
        v23 = 0xD000000000000019;
        v24 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_222AA8C78(0, *(v19 + 2) + 1, 1, v19);
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        if (v26 >= v25 >> 1)
        {
          v19 = sub_222AA8C78((v25 > 1), v26 + 1, 1, v19);
        }

        *(v19 + 2) = v26 + 1;
        v20 = &v19[16 * v26];
        *(v20 + 4) = v23;
        *(v20 + 5) = v24 | 0x8000000000000000;
      }

      if (!--v17)
      {
        goto LABEL_36;
      }
    }

    v23 = 0xD00000000000001FLL;
    v24 = "END-DISAMBIGUATION";
    goto LABEL_31;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_36:

  sub_222A2244C(v19);

  v27 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v28 = sub_222B025D8();

  v29 = [v27 initWithArray_];

  v30 = sub_222A9A350(v29);
  v31 = sub_222A97118(v30);

  if (v31)
  {
    if (*(v31 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_222B05250;
      v33 = type metadata accessor for FlowTaskStateNames(0);
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v32 + 56) = v33;
      v35 = sub_222A9AC64(&qword_27D01DBC0, type metadata accessor for FlowTaskStateNames, &protocol conformance descriptor for TypedNamedFeature<A>);
      result = v32;
      *(v32 + 64) = v35;
      *(v32 + 32) = v34;
      return result;
    }
  }

  return MEMORY[0x277D84F90];
}