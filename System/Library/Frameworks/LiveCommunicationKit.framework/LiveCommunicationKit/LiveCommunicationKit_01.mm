uint64_t CellularService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238B6C574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CellularService.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for CellularService(0) + 20));

  return v1;
}

uint64_t type metadata accessor for CellularService(uint64_t a1)
{
  result = qword_280B608D8;
  if (!qword_280B608D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CellularService.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_238B6C574();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CellularService(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static CellularService.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CellularService(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_238B6CDF4();
}

uint64_t sub_238B46260()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_238B4628C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

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

uint64_t sub_238B4635C(uint64_t a1)
{
  v2 = sub_238B46590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B46398(uint64_t a1)
{
  v2 = sub_238B46590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CellularService.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD88, &qword_238B6F7B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B46590();
  sub_238B6CEC4();
  v8[15] = 0;
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9C8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238B6CDB4();
  if (!v1)
  {
    type metadata accessor for CellularService(0);
    v8[14] = 1;
    sub_238B6CD84();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_238B46590()
{
  result = qword_27DF5FD90;
  if (!qword_27DF5FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD90);
  }

  return result;
}

uint64_t CellularService.hash(into:)(uint64_t a1)
{
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238B6C814();
  type metadata accessor for CellularService(0);

  return sub_238B6C8D4();
}

uint64_t CellularService.hashValue.getter()
{
  sub_238B6CE64();
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238B6C814();
  type metadata accessor for CellularService(0);
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t CellularService.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_238B6C574();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD98, &qword_238B6F7B8);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CellularService(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B46590();
  sub_238B6CEB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_238B46DC0(&qword_27DF5FA00, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  sub_238B6CD44();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_238B6CD14();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_238B46C70(v19, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_238B46CD4(v19);
}

uint64_t sub_238B46A88(uint64_t a1)
{
  sub_238B6CE64();
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238B6C814();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B46B30(uint64_t a1, uint64_t a2)
{
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238B6C814();

  return sub_238B6C8D4();
}

uint64_t sub_238B46BCC(uint64_t a1, uint64_t a2)
{
  sub_238B6CE64();
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238B6C814();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B46C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B46CD4(uint64_t a1)
{
  v2 = type metadata accessor for CellularService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B46DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238B46E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_238B6CDF4();
}

uint64_t sub_238B46EB8(uint64_t a1)
{
  result = sub_238B6C574();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238B46F40()
{
  result = qword_27DF5FDA8;
  if (!qword_27DF5FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDA8);
  }

  return result;
}

unint64_t sub_238B46F98()
{
  result = qword_27DF5FDB0;
  if (!qword_27DF5FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDB0);
  }

  return result;
}

unint64_t sub_238B46FF0()
{
  result = qword_27DF5FDB8;
  if (!qword_27DF5FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDB8);
  }

  return result;
}

uint64_t dispatch thunk of CellularConversationDialing.startCellularConversation(with:bundleID:trusted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_238B37F2C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_238B471A0()
{
  type metadata accessor for TelephonyConversationManager();
  v0 = swift_allocObject();
  type metadata accessor for ConversationDialingClient();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FDC8, &qword_238B6FA80);
  swift_allocObject();
  *(v1 + 16) = sub_238B6C7C4();
  swift_allocObject();
  swift_weakInit();

  sub_238B6C784();

  *(v0 + 16) = v1;
  qword_27DF5FDC0 = v0;
  return result;
}

uint64_t static TelephonyConversationManager.sharedInstance.getter()
{
  if (qword_27DF5F6B0 != -1)
  {
    swift_once();
  }
}

uint64_t TelephonyConversationManager.startCellularConversation(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238B47330, 0, 0);
}

uint64_t sub_238B47330()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_238B473CC;
  v2 = *(v0 + 16);

  return sub_238B4258C(v2);
}

uint64_t sub_238B473CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TelephonyConversationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t Conversation.State.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_238B47640()
{
  result = qword_27DF5FDD0;
  if (!qword_27DF5FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDD0);
  }

  return result;
}

unint64_t sub_238B476A4()
{
  result = qword_27DF5FDD8;
  if (!qword_27DF5FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDD8);
  }

  return result;
}

uint64_t StartConversationAction.__allocating_init(conversationUUID:handles:isVideo:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  StartConversationAction.init(conversationUUID:handles:isVideo:)(a1, a2, v3);
  return v6;
}

_BYTE *StartConversationAction.init(conversationUUID:handles:isVideo:)(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v40 = a1;
  v7 = sub_238B6C534();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238B6C574();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v33 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_handles] = a2;
  v36 = a3;
  v4[OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_isVideo] = a3;
  v12 = *(a2 + 16);
  v38 = v8;
  v39 = v7;
  if (v12)
  {
    v32 = v4;
    v41 = MEMORY[0x277D84F90];

    sub_238B6CC24();
    v31[1] = a2;
    v13 = a2 + 64;
    do
    {
      v14 = *(v13 - 32);
      v15 = objc_allocWithZone(MEMORY[0x277CBAFC8]);
      v16 = sub_238B6C844();
      v17 = [v15 initWithType:v14 + 1 value:v16];

      v18 = sub_238B6C844();
      [v17 setSiriDisplayName_];

      sub_238B6CC04();
      sub_238B6CC34();
      sub_238B6CC44();
      sub_238B6CC14();
      v13 += 40;
      --v12;
    }

    while (v12);

    v4 = v32;
  }

  v20 = v33;
  v19 = v34;
  v32 = *(v34 + 16);
  v21 = v35;
  (v32)(v33, v40, v35);
  v22 = objc_allocWithZone(MEMORY[0x277CBB018]);
  v23 = sub_238B6C544();
  sub_238B47B40();
  v24 = sub_238B6C934();

  v25 = [v22 initWithCallUUID:v23 handles:v24];

  v26 = *(v19 + 8);
  v26(v20, v21);
  [v25 setVideo_];
  v27 = v40;
  (v32)(v20, v40, v21);
  v28 = v37;
  sub_238B6C504();
  v26(v27, v21);
  *&v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction] = v25;
  (*(v19 + 32))(&v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID], v20, v21);
  v29 = &v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state];
  *v29 = 0;
  v29[1] = 0;
  (*(v38 + 32))(&v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate], v28, v39);
  return v4;
}

unint64_t sub_238B47B40()
{
  result = qword_27DF5FDE0;
  if (!qword_27DF5FDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF5FDE0);
  }

  return result;
}

char *sub_238B47B8C(void *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238B6C574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 handles];
  sub_238B47B40();
  v13 = sub_238B6C944();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    v17 = MEMORY[0x277D84F90];
LABEL_17:
    *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_handles) = v17;
    v33 = [a1 isVideo];
    *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_isVideo) = v33;
    v34 = [a1 callUUID];
    sub_238B6C564();

    sub_238B6C504();
    *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
    (*(v9 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v11, v8);
    v35 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
    *v35 = 0;
    v35[1] = 0;
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v7, v4);
    return v2;
  }

  v14 = sub_238B6CB24();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v46 = v14;
  v47 = MEMORY[0x277D84F90];
  result = sub_238B5FB98(0, v14 & ~(v14 >> 63), 0);
  if ((v46 & 0x8000000000000000) == 0)
  {
    v36 = v11;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = a1;
    v41 = v5;
    v42 = v4;
    v43 = v2;
    v16 = 0;
    v44 = v13 & 0xC000000000000001;
    v45 = v13;
    v17 = v47;
    do
    {
      if (v44)
      {
        v18 = MEMORY[0x23EE72780](v16, v45);
      }

      else
      {
        v18 = *(v45 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 value];
      v21 = sub_238B6C864();
      v23 = v22;

      v24 = [v19 type];
      if (v24 == 3)
      {
        v25 = 2;
      }

      else
      {
        v25 = v24 == 2;
      }

      v26 = [v19 value];
      v27 = sub_238B6C864();
      v29 = v28;

      v47 = v17;
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_238B5FB98((v30 > 1), v31 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v31 + 1;
      v32 = v17 + 40 * v31;
      *(v32 + 32) = v25;
      ++v16;
      *(v32 + 40) = v21;
      *(v32 + 48) = v23;
      *(v32 + 56) = v27;
      *(v32 + 64) = v29;
    }

    while (v46 != v16);

    v4 = v42;
    v2 = v43;
    a1 = v40;
    v5 = v41;
    v8 = v38;
    v7 = v39;
    v11 = v36;
    v9 = v37;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void StartConversationAction.fulfill(dateStarted:)(uint64_t a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v7 = sub_238B6C6A4();
  __swift_project_value_buffer(v7, qword_27DF60710);
  (*(v4 + 16))(v6, a1, v3);

  v8 = sub_238B6C684();
  v9 = sub_238B6CA44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24[1] = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24[2] = v1;
    v25 = v12;
    *v11 = 136315394;

    v13 = sub_238B6C8B4();
    v16 = sub_238B33240(v13, v14, &v25, v15);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_238B484E0();
    v17 = sub_238B6CDD4();
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v21 = sub_238B33240(v17, v19, &v25, v20);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_238B2C000, v8, v9, "Fulfilling action %s with dateStarted %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v12, -1, -1);
    MEMORY[0x23EE73110](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  v23 = sub_238B6C4F4();
  [v22 fulfillWithDateStarted_];
}

uint64_t StartConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t StartConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_238B484E0()
{
  result = qword_27DF5FDE8;
  if (!qword_27DF5FDE8)
  {
    sub_238B6C534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDE8);
  }

  return result;
}

uint64_t type metadata accessor for StartConversationAction(uint64_t a1)
{
  result = qword_27DF5FDF0;
  if (!qword_27DF5FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MergeConversationAction.conversationUUIDToMergeWith.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith;
  v4 = sub_238B6C574();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MergeConversationAction.__allocating_init(conversationUUID:conversationUUIDToMergeWith:)(char *a1, char *a2)
{
  v4 = swift_allocObject();
  MergeConversationAction.init(conversationUUID:conversationUUIDToMergeWith:)(a1, a2);
  return v4;
}

uint64_t MergeConversationAction.init(conversationUUID:conversationUUIDToMergeWith:)(char *a1, char *a2)
{
  v4 = sub_238B6C534();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = a1;
  v16(&v26 - v14, a1, v9);
  v17 = a2;
  v16(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v18 = sub_238B6C544();
  v19 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v19 = sub_238B6C544();
    (*(v10 + 8))(v8, v9);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CBAFF8]) initWithCallUUID:v18 callUUIDToGroupWith:v19];

  v20 = *(v10 + 8);
  v20(v15, v9);
  v21 = v27;
  v16((v27 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith), v17, v9);
  v22 = v28;
  v16(v13, v28, v9);
  v23 = v29;
  sub_238B6C504();
  v20(v17, v9);
  v20(v22, v9);
  *(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v26;
  (*(v10 + 32))(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v13, v9);
  v24 = (v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v24 = 0;
  v24[1] = 0;
  (*(v30 + 32))(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v23, v31);
  return v21;
}

uint64_t sub_238B48A80(void *a1, uint64_t a2)
{
  v5 = sub_238B6C534();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith, a2, v9);
  v13 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  (*(v10 + 8))(a2, v9);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v10 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v12, v9);
  v14 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v14 = 0;
  v14[1] = 0;
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v8, v5);
  return v2;
}

uint64_t sub_238B48CD8()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith;
  v2 = sub_238B6C574();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t MergeConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v4 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v5 = sub_238B6C534();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v3(v0 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith, v2);
  return v0;
}

uint64_t MergeConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v4 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v5 = sub_238B6C534();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v3(v0 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MergeConversationAction(uint64_t a1)
{
  result = qword_27DF5FE00;
  if (!qword_27DF5FE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B48FD8(uint64_t a1)
{
  result = sub_238B6C574();
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

uint64_t ShareIdentityConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ShareIdentityConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShareIdentityConversationAction(uint64_t a1)
{
  result = qword_27DF5FE10;
  if (!qword_27DF5FE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationManager.conversations.getter()
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();
}

uint64_t sub_238B493F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();

  *a2 = *(v3 + 24);
}

uint64_t type metadata accessor for ConversationManager(uint64_t a1)
{
  result = qword_27DF5FE58;
  if (!qword_27DF5FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_238B49638;
}

void sub_238B49638(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_238B496BC()
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
}

uint64_t sub_238B49774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_238B49834(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C624();
}

uint64_t sub_238B498F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
}

uint64_t sub_238B49958()
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
}

uint64_t sub_238B49A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_238B49AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

uint64_t ConversationManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v9 = *(v1 + 128);
  v10 = v2;
  v11 = *(v1 + 160);
  v3 = v11;
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_238B49B84(v8, v7);
}

uint64_t ConversationManager.pendingActions.getter()
{
  v1 = v0;
  v23 = sub_238B6C574();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v1 + 64) pendingTransactions];
  sub_238B31CE4(0, &qword_27DF5FE30, 0x277CBB020);
  v6 = sub_238B6C944();

  v7 = sub_238B49F64(v6);

  v26 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
LABEL_25:
    v24 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_238B6CB24();
  }

  else
  {
    v24 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = OBJC_IVAR____TtC20LiveCommunicationKit19ConversationManager___observationRegistrar;
  swift_beginAccess();
  if (!v8)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v9 = 0;
  v21 = v7 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  v11 = (v2 + 1);
  do
  {
    v20 = v10;
    v12 = v9;
    while (1)
    {
      if (v21)
      {
        v13 = MEMORY[0x23EE72780](v12, v7);
      }

      else
      {
        if (v12 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v15 = [v13 UUID];
      sub_238B6C564();

      swift_getKeyPath();
      v25 = v1;
      sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
      sub_238B6C634();

      v2 = *(v1 + 88);
      if (v2[2])
      {
        break;
      }

LABEL_7:

      (*v11)(v4, v23);
      ++v12;
      if (v9 == v8)
      {
        v10 = v20;
        goto LABEL_22;
      }
    }

    sub_238B4DF9C(v4);
    if ((v16 & 1) == 0)
    {

      goto LABEL_7;
    }

    (*v11)(v4, v23);

    v2 = &v26;
    MEMORY[0x23EE724F0](v17);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_238B6C964();
    }

    sub_238B6C974();
    v10 = v26;
  }

  while (v9 != v8);
LABEL_22:

  return v10;
}

unint64_t sub_238B49F64(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EE72780](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject actions];
      sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
      v7 = sub_238B6C944();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_238B6CB24();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_238B6CB24();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_238B6CB24();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_238B6CBC4();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_238B6CB24();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_238B4FC10();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE98, &qword_238B6FDF8);
              v18 = sub_238B4EC0C(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_238B6CB24();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

id ConversationManager.__allocating_init(configuration:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v1;
  LOBYTE(v7) = *(a1 + 64);
  v2 = *(a1 + 16);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    return sub_238B4EC94(&v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_238B4A33C(unint64_t a1)
{
  v2 = v1;
  v34 = *(v1 + 16);
  v4 = *(v34 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_238B4FB78((v4 + 16), v35);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v35[0];
  if (qword_27DF5F6A0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v6 = sub_238B6C6A4();
    __swift_project_value_buffer(v6, qword_27DF60710);
    v7 = a1;

    v8 = sub_238B6C684();
    v9 = sub_238B6CA44();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315394;
      v36[0] = v7;
      sub_238B31CE4(0, &qword_27DF5FE78, 0x277CBAF48);
      v12 = v7;
      v13 = sub_238B6C8B4();
      v16 = sub_238B33240(v13, v14, v35, v15);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      v36[0] = v5;
      type metadata accessor for Conversation(0);

      v17 = sub_238B6C8B4();
      v20 = sub_238B33240(v17, v18, v35, v19);

      *(v10 + 14) = v20;
      _os_log_impl(&dword_238B2C000, v8, v9, "Call changed %s %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE73110](v11, -1, -1);
      MEMORY[0x23EE73110](v10, -1, -1);
    }

    v21 = [*(v2 + 48) callObserver];
    v22 = [v21 calls];

    sub_238B31CE4(0, &qword_27DF5FE78, 0x277CBAF48);
    a1 = sub_238B6C944();

    if (a1 >> 62)
    {
      break;
    }

    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_6:
    v35[0] = MEMORY[0x277D84F90];
    result = sub_238B6CC24();
    if (v23 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = v5;
    v33 = v2;
    v25 = 0;
    v2 = a1 & 0xC000000000000001;
    while (1)
    {
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v2)
      {
        v26 = MEMORY[0x23EE72780](v25, a1);
      }

      else
      {
        if (v25 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v26 = *(a1 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = *(v34 + 16);
      MEMORY[0x28223BE20](v26);
      os_unfair_lock_lock((v28 + 24));
      sub_238B4FCC0((v28 + 16), v36);
      os_unfair_lock_unlock((v28 + 24));

      sub_238B6CC04();
      sub_238B6CC34();
      sub_238B6CC44();
      sub_238B6CC14();
      ++v25;
      if (v5 == v23)
      {

        v5 = v32;
        v2 = v33;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v23 = sub_238B6CB24();
  if (v23)
  {
    goto LABEL_6;
  }

LABEL_19:

LABEL_20:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v35[0] = v2;
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C624();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v30 + 8))(v2, v5, ObjectType, v30);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_238B4A848()
{
  v1 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_27DF60710);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_238B33240(0xD000000000000013, 0x8000000238B73E10, v11, v7);
    _os_log_impl(&dword_238B2C000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23EE73110](v6, -1, -1);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(v1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_238B4A9E0()
{
  v1 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_27DF60710);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_238B33240(0xD000000000000013, 0x8000000238B73DF0, v11, v7);
    _os_log_impl(&dword_238B2C000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23EE73110](v6, -1, -1);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_238B4AB78(uint64_t a1)
{
  v2 = v1;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_238B6C6A4();
  __swift_project_value_buffer(v4, qword_27DF60710);
  v5 = sub_238B6C684();
  v6 = sub_238B6CA44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_238B33240(0xD000000000000024, 0x8000000238B73DC0, v13, v9);
    _os_log_impl(&dword_238B2C000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23EE73110](v8, -1, -1);
    MEMORY[0x23EE73110](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 48))(v2, a1, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_238B4AD18(uint64_t a1)
{
  v2 = v1;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_238B6C6A4();
  __swift_project_value_buffer(v4, qword_27DF60710);
  v5 = sub_238B6C684();
  v6 = sub_238B6CA44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_238B33240(0xD000000000000026, 0x8000000238B73D90, v13, v9);
    _os_log_impl(&dword_238B2C000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23EE73110](v8, -1, -1);
    MEMORY[0x23EE73110](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 56))(v2, a1, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_238B4AEB8(void *a1)
{
  v2 = v1;
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v8 = sub_238B6C6A4();
  __swift_project_value_buffer(v8, qword_27DF60710);
  v9 = a1;
  v10 = sub_238B6C684();
  v11 = sub_238B6CA44();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v44 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v43 = v5;
    v15 = v14;
    v46[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_238B33240(0xD000000000000025, 0x8000000238B73D60, v46, v16);
    *(v13 + 12) = 2080;
    v45[0] = v9;
    sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
    v17 = v9;
    v18 = sub_238B6C8B4();
    v21 = sub_238B33240(v18, v19, v46, v20);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_238B2C000, v10, v11, "%s %s", v13, 0x16u);
    swift_arrayDestroy();
    v22 = v15;
    v5 = v43;
    MEMORY[0x23EE73110](v22, -1, -1);
    v23 = v13;
    v4 = v44;
    MEMORY[0x23EE73110](v23, -1, -1);
  }

  v24 = [v9 UUID];
  sub_238B6C564();

  swift_getKeyPath();
  v46[0] = v2;
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  v25 = *(v2 + 88);
  if (*(v25 + 16))
  {

    v26 = sub_238B4DF9C(v7);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      v29 = *(v5 + 8);

      v29(v7, v4);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v2 + 40);
        ObjectType = swift_getObjectType();
        (*(v30 + 40))(v2, v28, ObjectType, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  (*(v5 + 8))(v7, v4);
  v32 = v9;
  v33 = sub_238B6C684();
  v34 = sub_238B6CA34();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136315138;
    v45[3] = v32;
    sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
    v37 = v32;
    v38 = sub_238B6C8B4();
    v41 = sub_238B33240(v38, v39, v45, v40);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_238B2C000, v33, v34, "Timed out performing unknown action %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x23EE73110](v36, -1, -1);
    MEMORY[0x23EE73110](v35, -1, -1);
  }
}

uint64_t sub_238B4B390(void *a1)
{
  v2 = sub_238B6C534();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = [a1 callUUIDToGroupWith];
  if (v16)
  {
    v17 = v16;
    sub_238B6C564();

    (*(v7 + 32))(v15, v13, v6);
    (*(v7 + 16))(v10, v15, v6);
    type metadata accessor for MergeConversationAction(0);
    swift_allocObject();
    v18 = a1;
    v19 = sub_238B48A80(v18, v10);
    sub_238B4DB2C(v19, v18, "onManagerPerformSetGroupCallAction(_:)", 38, 2);

    return (*(v7 + 8))(v15, v6);
  }

  else
  {
    type metadata accessor for UnmergeConversationAction(0);
    v21 = swift_allocObject();
    v22 = a1;
    v23 = [v22 callUUID];
    sub_238B6C564();

    sub_238B6C504();
    *(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v22;
    (*(v7 + 32))(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v10, v6);
    v24 = (v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
    *v24 = 0;
    v24[1] = 0;
    (*(v3 + 32))(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v5, v2);
    sub_238B4DB2C(v21, v22, "onManagerPerformSetGroupCallAction(_:)", 38, 2);
  }
}

uint64_t sub_238B4B6C8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a5;
  v8 = sub_238B6C534();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238B6C574();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0);
  v16 = swift_allocObject();
  v17 = a1;
  v18 = [v17 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v16 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v17;
  (*(v13 + 32))(v16 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v15, v12);
  v19 = (v16 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v19 = 0;
  v19[1] = 0;
  (*(v9 + 32))(v16 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v11, v8);
  sub_238B4DB2C(v16, v17, a4, v22, 2);
}

uint64_t sub_238B4B8F4(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  a3(0);
  swift_allocObject();
  v10 = a1;
  v11 = a4();
  sub_238B4DB2C(v11, v10, a5, a6, 2);
}

uint64_t ConversationManager.perform(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B4BA68, 0, 0);
}

uint64_t sub_238B4BA68()
{
  v32 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_27DF60710);

  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for ConversationAction(0);
    v8 = MEMORY[0x23EE72520](v4, v7);
    v11 = sub_238B33240(v8, v9, &v31, v10);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_238B2C000, v2, v3, "Performing actions %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23EE73110](v6, -1, -1);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  v12 = v0[18];
  if (v12 >> 62)
  {
    v13 = sub_238B6CB24();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v31 = MEMORY[0x277D84F90];
    v14 = sub_238B6CC24();
    if (v13 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v14);
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        v17 = *(MEMORY[0x23EE72780]() + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
        swift_unknownObjectRelease();
        sub_238B6CC04();
        sub_238B6CC34();
        sub_238B6CC44();
        sub_238B6CC14();
        v15 = v16;
      }

      while (v13 != v16);
    }

    else
    {
      v18 = (v0[18] + 32);
      do
      {
        v19 = *v18++;
        v20 = *(v19 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
        sub_238B6CC04();
        sub_238B6CC34();
        sub_238B6CC44();
        sub_238B6CC14();
        --v13;
      }

      while (v13);
    }
  }

  v22 = v0[21];
  v21 = v0[22];
  v24 = v0[19];
  v23 = v0[20];
  v25 = objc_allocWithZone(MEMORY[0x277CBB020]);
  sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
  v26 = sub_238B6C934();

  v27 = [v25 initWithActions_];
  v0[23] = v27;

  v30 = *(v24 + 48);
  v0[2] = v0;
  v0[3] = sub_238B4BEE0;
  swift_continuation_init();
  v0[17] = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE48, &qword_238B6FCB0);
  sub_238B6C9A4();
  (*(v22 + 32))(boxed_opaque_existential_0, v21, v23);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238B4C0D8;
  v0[13] = &block_descriptor;
  [v30 requestTransaction:v27 completion:v0 + 10];
  (*(v22 + 8))(boxed_opaque_existential_0, v23);
  v14 = (v0 + 2);

  return MEMORY[0x282200938](v14);
}

uint64_t sub_238B4BEE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_238B4C05C;
  }

  else
  {
    v2 = sub_238B4BFF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238B4BFF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238B4C05C(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_238B4C0D8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
    sub_238B6C9B4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
    sub_238B6C9C4();
  }
}

uint64_t ConversationManager.reportNewIncomingConversation(uuid:update:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 496) = a1;
  *(v3 + 504) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
  *(v3 + 512) = v5;
  *(v3 + 520) = *(v5 - 8);
  *(v3 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  v6 = sub_238B6C574();
  *(v3 + 552) = v6;
  *(v3 + 560) = *(v6 - 8);
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  v7 = *(a2 + 48);
  *(v3 + 112) = *(a2 + 32);
  *(v3 + 128) = v7;
  *(v3 + 144) = *(a2 + 64);
  *(v3 + 160) = *(a2 + 80);
  v8 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v8;

  return MEMORY[0x2822009F8](sub_238B4C310, 0, 0);
}

uint64_t sub_238B4C310()
{
  v54 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 496);
  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_27DF60710);
  v50 = *(v2 + 16);
  v50(v1, v4, v3);
  sub_238B4EED8(v0 + 80, v0 + 168);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  sub_238B4EF34(v0 + 80);
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 584);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  if (v8)
  {
    v49 = v7;
    v12 = *(v0 + 544);
    v13 = *(v0 + 536);
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v52[0] = v48;
    *v14 = 136315650;
    *(v14 + 4) = sub_238B33240(0xD00000000000002BLL, 0x8000000238B73A50, v52, v15);
    *(v14 + 12) = 2080;
    v50(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    sub_238B3B1A4(v12, v13, &qword_27DF5FC78, &qword_238B6F040);
    v16 = (*(v10 + 48))(v13, 1, v11);
    v17 = *(v0 + 584);
    if (v16 == 1)
    {
      v18 = *(v0 + 560);
      v19 = *(v0 + 552);
      v20 = *(v0 + 544);
      sub_238B4EF88(*(v0 + 536));
      sub_238B4EF88(v20);
      (*(v18 + 8))(v17, v19);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v24 = *(v0 + 576);
      v25 = *(v0 + 568);
      v26 = *(v0 + 560);
      v27 = *(v0 + 552);
      v47 = *(v0 + 544);
      (*(v26 + 32))(v24, *(v0 + 536), v27);
      v50(v25, v24, v27);
      v28 = sub_238B6C8B4();
      v22 = v29;
      v30 = *(v26 + 8);
      v30(v24, v27);
      sub_238B4EF88(v47);
      v30(v17, v27);
      v23 = v28;
    }

    v31 = sub_238B33240(v23, v22, v52, v21);

    *(v14 + 14) = v31;
    *(v14 + 22) = 2080;
    v32 = *(v0 + 128);
    *(v0 + 288) = *(v0 + 112);
    *(v0 + 304) = v32;
    *(v0 + 320) = *(v0 + 144);
    *(v0 + 336) = *(v0 + 160);
    v33 = *(v0 + 96);
    *(v0 + 256) = *(v0 + 80);
    *(v0 + 272) = v33;
    sub_238B4EED8(v0 + 80, v0 + 344);
    v34 = sub_238B6C8B4();
    v37 = sub_238B33240(v34, v35, v52, v36);

    *(v14 + 24) = v37;
    _os_log_impl(&dword_238B2C000, v6, v49, "%s %s %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v48, -1, -1);
    MEMORY[0x23EE73110](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v38 = *(v0 + 528);
  v39 = *(v0 + 520);
  v40 = *(v0 + 512);
  v51 = *(*(v0 + 504) + 64);
  v41 = sub_238B6C544();
  *(v0 + 592) = v41;
  v42 = *(v0 + 128);
  v52[2] = *(v0 + 112);
  v52[3] = v42;
  v52[4] = *(v0 + 144);
  v53 = *(v0 + 160);
  v43 = *(v0 + 96);
  v52[0] = *(v0 + 80);
  v52[1] = v43;
  v44 = sub_238B55C9C();
  *(v0 + 600) = v44;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_238B4C89C;
  swift_continuation_init();
  *(v0 + 488) = v40;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 464));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE48, &qword_238B6FCB0);
  sub_238B6C9A4();
  (*(v39 + 32))(boxed_opaque_existential_0, v38, v40);
  *(v0 + 432) = MEMORY[0x277D85DD0];
  *(v0 + 440) = 1107296256;
  *(v0 + 448) = sub_238B4C0D8;
  *(v0 + 456) = &block_descriptor_8;
  [v51 reportNewIncomingCallWithUUID:v41 update:v44 completion:?];
  (*(v39 + 8))(boxed_opaque_existential_0, v40);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_238B4C89C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 608) = v1;
  if (v1)
  {
    v2 = sub_238B4CA78;
  }

  else
  {
    v2 = sub_238B4C9AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238B4C9AC()
{
  v1 = *(v0 + 592);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238B4CA78(uint64_t a1)
{
  v2 = v1[75];
  v3 = v1[74];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void ConversationManager.reportConversationEvent(_:for:)(uint64_t a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = type metadata accessor for Conversation.Event(0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238B4EFF0(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *(v12 + 3);
      v31 = *(v12 + 2);
      v32 = v14;
      v33 = *(v12 + 4);
      v34 = v12[80];
      v15 = *(v12 + 1);
      v29 = *v12;
      v30 = v15;
      v16 = *(v1 + 64);
      v17 = sub_238B6C544();
      v27[2] = v31;
      v27[3] = v32;
      v27[4] = v33;
      v28 = v34;
      v27[0] = v29;
      v27[1] = v30;
      v18 = sub_238B55C9C();
      [v16 reportCallWithUUID:v17 updated:v18];

      sub_238B4EF34(&v29);
      return;
    }

    (*(v4 + 32))(v9, v12, v3);
    v22 = *(v1 + 64);
    v20 = sub_238B6C544();
    v21 = sub_238B6C4F4();
    [v22 reportOutgoingCallWithUUID:v20 startedConnectingAtDate:v21];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v4 + 32))(v9, v12, v3);
    v19 = *(v1 + 64);
    v20 = sub_238B6C544();
    v21 = sub_238B6C4F4();
    [v19 reportOutgoingCallWithUUID:v20 connectedAtDate:v21];
LABEL_7:

    (*(v4 + 8))(v9, v3);
    return;
  }

  v23 = v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48)];
  (*(v4 + 32))(v7, v12, v3);
  v24 = *(v1 + 64);
  v25 = sub_238B6C544();
  v26 = sub_238B6C4F4();
  [v24 reportCallWithUUID:v25 endedAtDate:v26 reason:v23 + 1];

  (*(v4 + 8))(v7, v3);
}

uint64_t static ConversationManager.reportNewIncomingVoIPPushPayload(_:)(uint64_t a1)
{
  v1[18] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B4CF80, 0, 0);
}

uint64_t sub_238B4CF80()
{
  v19 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_27DF60710);

  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_238B33240(0xD000000000000024, 0x8000000238B73A80, &v18, v6);
    *(v4 + 12) = 2080;
    v7 = sub_238B6C7E4();
    v10 = sub_238B33240(v7, v8, &v18, v9);

    *(v4 + 14) = v10;
    _os_log_impl(&dword_238B2C000, v2, v3, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v5, -1, -1);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v17 = objc_opt_self();
  v14 = sub_238B6C7D4();
  v0[22] = v14;
  v0[2] = v0;
  v0[3] = sub_238B4D2D8;
  swift_continuation_init();
  v0[17] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE48, &qword_238B6FCB0);
  sub_238B6C9A4();
  (*(v12 + 32))(boxed_opaque_existential_0, v11, v13);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238B4C0D8;
  v0[13] = &block_descriptor_12;
  [v17 reportNewIncomingVoIPPushPayload:v14 completion:v0 + 10];
  (*(v12 + 8))(boxed_opaque_existential_0, v13);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238B4D2D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_238B4D454;
  }

  else
  {
    v2 = sub_238B4D3E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238B4D3E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238B4D454(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t ConversationManager.pendingConversationActions(of:for:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_238B6C574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ConversationManager.pendingActions.getter();
  v8 = v7;
  v22 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
LABEL_19:
    v9 = sub_238B6CB24();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v20 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation_uuid;
      v21 = v8 & 0xFFFFFFFFFFFFFF8;
      v17 = (v4 + 1);
      v18 = (v4 + 2);
      v16 = v9;
      v19 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v4 = MEMORY[0x23EE72780](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v14 = v22;
            goto LABEL_21;
          }
        }

        else
        {
          if (v10 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_16;
          }
        }

        if (*v4 == a1)
        {
          v13 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
          swift_beginAccess();
          (*v18)(v6, v4 + v13, v3);
          LOBYTE(v13) = sub_238B6C554();
          (*v17)(v6, v3);
          if (v13)
          {
            sub_238B6CC04();
            sub_238B6CC34();
            v9 = v16;
            sub_238B6CC44();
            sub_238B6CC14();
          }

          else
          {
          }

          v11 = v19;
        }

        else
        {
        }

        ++v10;
        if (v12 == v9)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_21:

  return v14;
}

uint64_t sub_238B4D7A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v15 = v4;
  v9(v7, a1 + v8, v4);
  swift_getKeyPath();
  v17 = v2;
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager, &protocol conformance descriptor for ConversationManager);
  swift_retain_n();
  sub_238B6C634();

  v17 = v2;
  swift_getKeyPath();
  sub_238B6C654();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 80);
  *(v2 + 80) = 0x8000000000000000;
  sub_238B4E700(a1, v7, isUniquelyReferenced_nonNull_native, &qword_27DF5FE70, &qword_238B6FDD8);
  v11 = *(v5 + 8);
  v11(v7, v4);
  *(v2 + 80) = v16;
  swift_endAccess();
  v17 = v2;
  swift_getKeyPath();
  sub_238B6C644();

  v12 = [*(a1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) UUID];
  sub_238B6C564();

  swift_getKeyPath();
  v17 = v2;
  sub_238B6C634();

  v17 = v2;
  swift_getKeyPath();
  sub_238B6C654();

  swift_beginAccess();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 88);
  *(v2 + 88) = 0x8000000000000000;
  sub_238B4E700(a1, v7, v13, &qword_27DF5FE70, &qword_238B6FDD8);
  v11(v7, v15);
  *(v2 + 88) = v16;
  swift_endAccess();
  v17 = v2;
  swift_getKeyPath();
  sub_238B6C644();
}

uint64_t sub_238B4DB2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v9 = sub_238B6C6A4();
  __swift_project_value_buffer(v9, qword_27DF60710);
  v10 = a2;

  v11 = sub_238B6C684();
  v12 = sub_238B6CA44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136315650;
    v15 = sub_238B6CBA4();
    v18 = sub_238B33240(v15, v16, v31, v17);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
    v19 = v10;
    v20 = sub_238B6C8B4();
    v23 = sub_238B33240(v20, v21, v31, v22);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    type metadata accessor for ConversationAction(0);

    v24 = sub_238B6C8B4();
    v27 = sub_238B33240(v24, v25, v31, v26);

    *(v13 + 24) = v27;
    _os_log_impl(&dword_238B2C000, v11, v12, "%s %s %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v14, -1, -1);
    MEMORY[0x23EE73110](v13, -1, -1);
  }

  sub_238B4D7A0(a1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    (*(v29 + 32))(v6, a1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationManager.deinit()
{

  sub_238B4F054(v0 + 32);

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  sub_238B3C9AC(v1, v2);

  v3 = OBJC_IVAR____TtC20LiveCommunicationKit19ConversationManager___observationRegistrar;
  v4 = sub_238B6C674();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ConversationManager.__deallocating_deinit()
{
  ConversationManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_238B4DEF4(void *a1)
{
  sub_238B6CE64();
  MEMORY[0x23EE72A40](*a1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  v2 = sub_238B6CEA4();

  return sub_238B4E034(a1, v2);
}

unint64_t sub_238B4DF9C(uint64_t a1)
{
  sub_238B6C574();
  sub_238B4FBAC(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_238B6C804();

  return sub_238B4E150(a1, v2);
}

unint64_t sub_238B4E034(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v18 = a1[1];
    v9 = a1[3];
    v10 = a1[4];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 40 * v5);
      if (*v12 == v7)
      {
        v13 = v12[3];
        v14 = v12[4];
        v15 = v12[1] == v18 && v12[2] == v8;
        if (v15 || (sub_238B6CDF4() & 1) != 0)
        {
          v16 = v13 == v9 && v14 == v10;
          if (v16 || (sub_238B6CDF4() & 1) != 0)
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_238B4E150(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_238B4FBAC(&qword_27DF5FCC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_238B6C824();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_238B4E310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_238B6CC94();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_238B4FBAC(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_238B6C804();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_238B4E700(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_238B6C574();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_238B4DF9C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_238B4E994(v26, v27);
      goto LABEL_7;
    }

    sub_238B4E310(v19, a3 & 1, v26, v27);
    v24 = sub_238B4DF9C(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_238B4E8DC(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_238B6CE14();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_238B4E8DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_238B6C574();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_238B4E994(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_238B6C574();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_238B6CC84();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void (*sub_238B4EC0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE72780](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_238B4EC8C;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B4EC94(__int128 *a1, id a2)
{
  v4 = *(a1 + 48);
  v5 = [a2 isGreenTea];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = a1[1];
  v23 = *a1;
  v24 = v7;
  v25 = a1[2];
  v26 = v6;
  v27 = *(a1 + 49);
  v8 = sub_238B3E424();
  v9 = [objc_allocWithZone(MEMORY[0x277CBAFE8]) initWithConfiguration_];

  type metadata accessor for ConversationCache();
  v10 = swift_allocObject();
  v11 = sub_238B4F174(MEMORY[0x277D84F90], &qword_27DF5FE90, &qword_238B6FDF0, &qword_27DF5FE80, &qword_238B6FDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE68, &qword_238B6FDA8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v10 + 16) = v12;
  v13 = a1[2];
  v20 = a1[1];
  v21 = v13;
  v19 = *a1;
  v22[0] = v6;
  *&v22[1] = *(a1 + 49);
  v17[2] = v13;
  v17[3] = *v22;
  v18 = v22[16];
  v17[0] = v19;
  v17[1] = v20;
  type metadata accessor for ConversationManager(0);
  swift_allocObject();
  sub_238B49B84(&v19, &v23);
  v14 = sub_238B4F354(v17, v9, v10);

  v15 = a1[1];
  v23 = *a1;
  v24 = v15;
  v25 = a1[2];
  v26 = v6;
  v27 = *(a1 + 49);
  sub_238B4F8A8(&v23);
  return v14;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238B4EF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B4EFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Conversation.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B4F084(uint64_t a1)
{
  result = sub_238B6C674();
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

unint64_t sub_238B4F174(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_238B6CCA4();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_238B3B1A4(v16, v12, a2, v27);
      result = sub_238B4DF9C(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_238B6C574();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_238B4F354(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_238B6C664();
  v7 = *(a1 + 48);
  *(v3 + 128) = *(a1 + 32);
  *(v3 + 144) = v7;
  *(v3 + 160) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v3 + 96) = *a1;
  *(v3 + 112) = v8;
  v9 = [objc_allocWithZone(type metadata accessor for CallProviderWrapper()) init];
  *(v3 + 64) = a2;
  *(v3 + 72) = v9;
  *(v3 + 16) = a3;
  v10 = objc_allocWithZone(MEMORY[0x277CBAF50]);
  v11 = a2;

  *(v3 + 48) = [v10 init];
  v12 = MEMORY[0x277D84F90];
  *(v3 + 80) = sub_238B4F174(MEMORY[0x277D84F90], &qword_27DF5FE88, &qword_238B6FDE8, &qword_27DF5FE70, &qword_238B6FDD8);
  *(v3 + 88) = sub_238B4F174(v12, &qword_27DF5FE88, &qword_238B6FDE8, &qword_27DF5FE70, &qword_238B6FDD8);
  *(v3 + 56) = [objc_allocWithZone(type metadata accessor for CallObserverDelegateWrapper()) init];
  *(v3 + 24) = v12;
  v13 = [*(v3 + 48) callObserver];
  [v13 setDelegate:*(v3 + 56) queue:0];

  v14 = *(v3 + 56);
  v15 = &v14[OBJC_IVAR____TtC20LiveCommunicationKit27CallObserverDelegateWrapper_onCallChanged];
  *v15 = sub_238B4F8FC;
  v15[1] = v3;
  v16 = v14;

  v17 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidReset);
  *v17 = sub_238B4F900;
  v17[1] = v3;

  v18 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidBegin);
  *v18 = sub_238B4F904;
  v18[1] = v3;

  v19 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidActivateAudioSession);
  *v19 = sub_238B4F908;
  v19[1] = v3;

  v20 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidDeactivateAudioSession);
  *v20 = sub_238B4F90C;
  v20[1] = v3;

  v21 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderTimedOutPerformingAction);
  *v21 = sub_238B4FCD8;
  v21[1] = v3;

  v22 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAction);
  *v22 = sub_238B4F910;
  v22[1] = v3;

  v23 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformStartCallAction);
  *v23 = sub_238B4F914;
  v23[1] = v3;

  v24 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAnswerCallAction);
  *v24 = sub_238B4F964;
  v24[1] = v3;

  v25 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformEndCallAction);
  *v25 = sub_238B4F9A0;
  v25[1] = v3;

  v26 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetHeldCallAction);
  *v26 = sub_238B4F9DC;
  v26[1] = v3;

  v27 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetGroupCallAction);
  *v27 = sub_238B4FA2C;
  v27[1] = v3;

  v28 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetMutedCallAction);
  *v28 = sub_238B4FA30;
  v28[1] = v3;

  v29 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformPlayDTMFCallAction);
  *v29 = sub_238B4FA80;
  v29[1] = v3;

  v30 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformShareIdentityCallAction);
  *v30 = sub_238B4FAD0;
  v30[1] = v3;

  v31 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetTranslatingCallAction);
  *v31 = sub_238B4FB0C;
  v31[1] = v3;

  [*(v3 + 64) setDelegate:*(v3 + 72) queue:0];
  return v3;
}

uint64_t sub_238B4FBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238B4FC10()
{
  result = qword_27DF5FEA0;
  if (!qword_27DF5FEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF5FE98, &qword_238B6FDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FEA0);
  }

  return result;
}

uint64_t sub_238B4FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(v4 + 16) + 24) = *(v4 + 24);
}

uint64_t sub_238B4FD1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_238B6C5E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SetTranslatingAction.TranslationEngine.hashValue.getter()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

uint64_t SetTranslatingAction.__allocating_init(conversationID:isTranslating:localLanguage:remoteLanguage:)(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v53 = a2;
  v68 = a1;
  v7 = sub_238B6C534();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238B6C574();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEA8, &qword_238B6FE00);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB0, &qword_238B6FE08);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB8, &qword_238B6FE10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v49 - v16;
  v18 = sub_238B6C5E4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_238B6C604();
  v57 = *(v22 - 8);
  v58 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v62 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v49 - v25;
  v27 = swift_allocObject();
  *(v27 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_isTranslating) = v6;
  v28 = v19;
  v29 = *(v19 + 16);
  v30 = v27;
  v55 = v27;
  v56 = a3;
  v29(v27 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage, a3, v18);
  v52 = a4;
  v29(v30 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, a4, v18);
  v29(v21, a3, v18);
  v49[1] = v17;
  sub_238B6C5B4();
  sub_238B6C5D4();
  sub_238B6C5C4();
  v63 = v26;
  sub_238B6C5A4();
  v31 = *(v28 + 8);
  v31(v21, v18);
  v50 = v31;
  v51 = v28 + 8;
  v29(v21, a4, v18);
  sub_238B6C5B4();
  sub_238B6C5D4();
  sub_238B6C5C4();
  sub_238B6C5A4();
  v31(v21, v18);
  v32 = *(v66 + 16);
  v32(v65, v68, v67);
  sub_238B6C594();
  sub_238B6C594();
  v33 = objc_allocWithZone(MEMORY[0x277CBB010]);
  v34 = sub_238B6C544();
  v35 = sub_238B6C844();

  v36 = sub_238B6C844();

  v64 = [v33 initWithCallUUID:v34 isTranslating:v53 & 1 localLanguage:v35 remoteLanguage:v36];

  v38 = v65;
  v37 = v66;
  v39 = *(v66 + 8);
  v40 = v67;
  v39(v65, v67);
  v41 = v68;
  v32(v38, v68, v40);
  v42 = v59;
  sub_238B6C504();
  v43 = v50;
  v50(v52, v18);
  v43(v56, v18);
  v39(v41, v40);
  v44 = v58;
  v45 = *(v57 + 8);
  v45(v62, v58);
  v45(v63, v44);
  v46 = v55;
  *(v55 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v64;
  (*(v37 + 32))(v46 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v38, v40);
  v47 = (v46 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v47 = 0;
  v47[1] = 0;
  (*(v60 + 32))(v46 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v42, v61);
  return v46;
}

uint64_t SetTranslatingAction.init(conversationID:isTranslating:localLanguage:remoteLanguage:)(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v7 = a2;
  LODWORD(v48) = a2;
  v61 = a1;
  v8 = sub_238B6C534();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238B6C574();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEA8, &qword_238B6FE00);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB0, &qword_238B6FE08);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v45 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB8, &qword_238B6FE10);
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_238B6C5E4();
  v62 = *(v17 - 8);
  v18 = v62;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_238B6C604();
  v51 = *(v21 - 8);
  v52 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v56 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  *(v5 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_isTranslating) = v7;
  v26 = *(v18 + 16);
  v49 = a3;
  v50 = v5;
  v26(v5 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage, a3, v17);
  v27 = v57;
  v26(v5 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v57, v17);
  v26(v20, a3, v17);
  sub_238B6C5B4();
  v46 = v15;
  sub_238B6C5D4();
  sub_238B6C5C4();
  v47 = v25;
  sub_238B6C5A4();
  v28 = v62 + 8;
  v45 = *(v62 + 8);
  v45(v20, v17);
  v62 = v28;
  v26(v20, v27, v17);
  sub_238B6C5B4();
  sub_238B6C5D4();
  sub_238B6C5C4();
  sub_238B6C5A4();
  v29 = v45;
  v45(v20, v17);
  v46 = *(v59 + 16);
  v46(v58, v61, v60);
  sub_238B6C594();
  sub_238B6C594();
  v30 = objc_allocWithZone(MEMORY[0x277CBB010]);
  v31 = sub_238B6C544();
  v32 = sub_238B6C844();

  v33 = sub_238B6C844();

  v48 = [v30 initWithCallUUID:v31 isTranslating:v48 & 1 localLanguage:v32 remoteLanguage:v33];

  v35 = v58;
  v34 = v59;
  v36 = *(v59 + 8);
  v37 = v60;
  v36(v58, v60);
  v38 = v61;
  v46(v35, v61, v37);
  v39 = v53;
  sub_238B6C504();
  v29(v57, v17);
  v29(v49, v17);
  v36(v38, v37);
  v40 = v52;
  v41 = *(v51 + 8);
  v41(v56, v52);
  v41(v47, v40);
  v42 = v50;
  *(v50 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v48;
  (*(v34 + 32))(v42 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v35, v37);
  v43 = (v42 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v43 = 0;
  v43[1] = 0;
  (*(v54 + 32))(v42 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v39, v55);
  return v42;
}

uint64_t sub_238B50B48(void *a1)
{
  v3 = sub_238B6C534();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_238B6C574();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_238B6C5E4();
  v36 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238B6C604();
  v28 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 isTranslating];
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_isTranslating) = v12;
  v26 = v1;
  v13 = [a1 localLanguage];
  sub_238B6C864();

  sub_238B6C584();
  sub_238B6C5F4();
  v14 = v9 + 8;
  v15 = *(v9 + 8);
  v27 = v14;
  v15(v11, v8);
  v16 = *(v36 + 32);
  v36 += 32;
  v17 = v29;
  v16(v1 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage, v7, v29);
  v18 = [a1 remoteLanguage];
  sub_238B6C864();

  sub_238B6C584();
  sub_238B6C5F4();
  v15(v11, v28);
  v19 = v26;
  v16(v26 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v7, v17);
  v20 = [a1 callUUID];
  v21 = v30;
  sub_238B6C564();

  v22 = v32;
  sub_238B6C504();
  *(v19 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v31 + 32))(v19 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v21, v33);
  v23 = (v19 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v23 = 0;
  v23[1] = 0;
  (*(v34 + 32))(v19 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v22, v35);
  return v19;
}

Swift::Void __swiftcall SetTranslatingAction.fulfill(using:)(LiveCommunicationKit::SetTranslatingAction::TranslationEngine using)
{
  v1 = *using;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  [v2 fulfillUsingTranslationEngine_];
}

uint64_t sub_238B5100C()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage;
  v2 = sub_238B6C5E4();
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage;

  return v5(v3, v2);
}

uint64_t SetTranslatingAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage;
  v6 = sub_238B6C5E4();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v6);
  return v0;
}

uint64_t SetTranslatingAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage;
  v6 = sub_238B6C5E4();
  v7 = *(*(v6 - 8) + 8);

  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v6);

  return swift_deallocClassInstance();
}

unint64_t sub_238B51388()
{
  result = qword_27DF5FEC0;
  if (!qword_27DF5FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FEC0);
  }

  return result;
}

uint64_t type metadata accessor for SetTranslatingAction(uint64_t a1)
{
  result = qword_27DF5FEC8;
  if (!qword_27DF5FEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B51430(uint64_t a1)
{
  result = sub_238B6C5E4();
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

uint64_t static DefaultApps.defaultAppSetDate.getter@<X0>(uint64_t a1@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FED8, &unk_238B6FF30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v25 - v3;
  v5 = [objc_opt_self() defaultWorkspace];
  if (!v5)
  {
    v11 = sub_238B6C534();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    return sub_238B51A7C(v4, a1);
  }

  v25[0] = 0;
  v6 = v5;
  v7 = [v5 preferenceSetDateForDefaultAppCategory:9 error:v25];

  v8 = v25[0];
  if (v7)
  {
    sub_238B6C524();
    v9 = v8;

    v10 = sub_238B6C534();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    return sub_238B51A7C(v4, a1);
  }

  v13 = v25[0];
  v14 = sub_238B6C464();

  swift_willThrow();
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v15 = sub_238B6C6A4();
  __swift_project_value_buffer(v15, qword_280B61330);
  v16 = v14;
  v17 = sub_238B6C684();
  v18 = sub_238B6CA34();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_238B2C000, v17, v18, "Couldn’t fetch default dialing app set date: %@", v19, 0xCu);
    sub_238B42A88(v20);
    MEMORY[0x23EE73110](v20, -1, -1);
    MEMORY[0x23EE73110](v19, -1, -1);
  }

  else
  {
  }

  v23 = sub_238B6C534();
  return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

id _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0()
{
  v17[1] = *MEMORY[0x277D85DE8];
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v17[0] = 0;
    v1 = result;
    v2 = [result defaultApplicationForCategory:9 error:v17];

    if (v2)
    {
      v3 = v17[0];
      v4 = [v2 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = sub_238B6C864();

        return v6;
      }
    }

    else
    {
      v7 = v17[0];
      v8 = sub_238B6C464();

      swift_willThrow();
      if (qword_280B60640 != -1)
      {
        swift_once();
      }

      v9 = sub_238B6C6A4();
      __swift_project_value_buffer(v9, qword_280B61330);
      v10 = v8;
      v11 = sub_238B6C684();
      v12 = sub_238B6CA34();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v8;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_238B2C000, v11, v12, "Couldn’t fetch default dialing app: %@", v13, 0xCu);
        sub_238B42A88(v14);
        MEMORY[0x23EE73110](v14, -1, -1);
        MEMORY[0x23EE73110](v13, -1, -1);
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_238B51A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FED8, &unk_238B6FF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JoinConversationAction.__allocating_init(conversationUUID:)(char *a1)
{
  v2 = swift_allocObject();
  JoinConversationAction.init(conversationUUID:)(a1);
  return v2;
}

uint64_t JoinConversationAction.init(conversationUUID:)(char *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v11 = objc_allocWithZone(MEMORY[0x277CBAF40]);
  v12 = sub_238B6C544();
  v13 = [v11 initWithCallUUID_];

  v14 = *(v7 + 8);
  v14(v9, v6);
  v10(v9, a1, v6);
  v15 = v19;
  sub_238B6C504();
  v14(a1, v6);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v13;
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v9, v6);
  v16 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v16 = 0;
  v16[1] = 0;
  (*(v20 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v15, v21);
  return v2;
}

void JoinConversationAction.fulfill(dateConnected:)(uint64_t a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v7 = sub_238B6C6A4();
  __swift_project_value_buffer(v7, qword_27DF60710);
  (*(v4 + 16))(v6, a1, v3);

  v8 = sub_238B6C684();
  v9 = sub_238B6CA44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24[1] = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24[2] = v1;
    v25 = v12;
    *v11 = 136315394;

    v13 = sub_238B6C8B4();
    v16 = sub_238B33240(v13, v14, &v25, v15);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_238B484E0();
    v17 = sub_238B6CDD4();
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v21 = sub_238B33240(v17, v19, &v25, v20);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_238B2C000, v8, v9, "Fulfilling action %s with dateConnected %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v12, -1, -1);
    MEMORY[0x23EE73110](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  v23 = sub_238B6C4F4();
  [v22 fulfillWithDateConnected_];
}

uint64_t JoinConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t JoinConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JoinConversationAction(uint64_t a1)
{
  result = qword_27DF5FEE0;
  if (!qword_27DF5FEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_238B52358()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD00000000000001DLL;
  if (!*v0)
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

uint64_t sub_238B523CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238B5522C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238B52400(uint64_t a1)
{
  v2 = sub_238B54654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B5243C(uint64_t a1)
{
  v2 = sub_238B54654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B52484(uint64_t a1)
{
  v2 = sub_238B54750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B524C0(uint64_t a1)
{
  v2 = sub_238B54750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B524FC()
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

uint64_t sub_238B52518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

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

uint64_t sub_238B525E4(uint64_t a1)
{
  v2 = sub_238B546A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B52620(uint64_t a1)
{
  v2 = sub_238B546A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B5265C(uint64_t a1)
{
  v2 = sub_238B547A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B52698(uint64_t a1)
{
  v2 = sub_238B547A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B526D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B52754(uint64_t a1)
{
  v2 = sub_238B547F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B52790(uint64_t a1)
{
  v2 = sub_238B547F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conversation.Event.encode(to:)(void *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEF0, &qword_238B6FFA0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v44 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEF8, &qword_238B6FFA8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v44 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF00, &qword_238B6FFB0);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - v4;
  v57 = sub_238B6C534();
  v56 = *(v57 - 8);
  v5 = MEMORY[0x28223BE20](v57);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF08, &qword_238B6FFB8);
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Conversation.Event(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF10, &unk_238B6FFC0);
  v74 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v18 = &v44 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B54654();
  v60 = v18;
  sub_238B6CEC4();
  sub_238B4EFF0(v58, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = *(v16 + 3);
      v70 = *(v16 + 2);
      v71 = v20;
      v72 = *(v16 + 4);
      v73 = v16[80];
      v21 = *(v16 + 1);
      v68 = *v16;
      v69 = v21;
      LOBYTE(v62) = 0;
      sub_238B547F8();
      v22 = v61;
      v23 = v60;
      sub_238B6CD64();
      v64 = v70;
      v65 = v71;
      v66 = v72;
      v67 = v73;
      v62 = v68;
      v63 = v69;
      sub_238B5484C();
      sub_238B6CDB4();
      (*(v44 + 8))(v13, v11);
      (*(v74 + 8))(v23, v22);
      return sub_238B4EF34(&v68);
    }

    v32 = v56;
    v33 = v57;
    (*(v56 + 32))(v10, v16, v57);
    LOBYTE(v68) = 1;
    sub_238B547A4();
    v34 = v46;
    v29 = v61;
    v30 = v60;
    sub_238B6CD64();
    sub_238B549F4(&qword_27DF5F9D0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v35 = v48;
    sub_238B6CDB4();
    (*(v47 + 8))(v34, v35);
    (*(v32 + 8))(v10, v33);
    return (*(v74 + 8))(v30, v29);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = v56;
    v26 = v45;
    v27 = v57;
    (*(v56 + 32))(v45, v16, v57);
    LOBYTE(v68) = 2;
    sub_238B54750();
    v28 = v49;
    v29 = v61;
    v30 = v60;
    sub_238B6CD64();
    sub_238B549F4(&qword_27DF5F9D0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v31 = v51;
    sub_238B6CDB4();
    (*(v50 + 8))(v28, v31);
    (*(v25 + 8))(v26, v27);
    return (*(v74 + 8))(v30, v29);
  }

  LODWORD(v58) = v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48)];
  v36 = v56;
  v37 = v55;
  v38 = v57;
  (*(v56 + 32))(v55, v16, v57);
  LOBYTE(v68) = 3;
  sub_238B546A8();
  v39 = v52;
  v40 = v61;
  v41 = v60;
  sub_238B6CD64();
  LOBYTE(v68) = 0;
  sub_238B549F4(&qword_27DF5F9D0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v42 = v54;
  v43 = v59;
  sub_238B6CDB4();
  if (v43)
  {
    (*(v53 + 8))(v39, v42);
    (*(v36 + 8))(v37, v38);
  }

  else
  {
    LOBYTE(v68) = v58;
    LOBYTE(v62) = 1;
    sub_238B546FC();
    sub_238B6CDB4();
    (*(v53 + 8))(v39, v42);
    (*(v36 + 8))(v55, v38);
  }

  return (*(v74 + 8))(v41, v40);
}

uint64_t Conversation.Event.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Conversation.Event(0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238B4EFF0(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v16 = v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48)];
      (*(v5 + 32))(v7, v10, v4);
      MEMORY[0x23EE72A40](3);
      sub_238B549F4(&qword_27DF5F9A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_238B6C814();
      MEMORY[0x23EE72A40](v16 + 1);
      return (*(v5 + 8))(v7, v4);
    }

    (*(v5 + 32))(v7, v10, v4);
    v15 = 2;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *(v10 + 3);
      v21 = *(v10 + 2);
      v22 = v12;
      v23 = *(v10 + 4);
      v24 = v10[80];
      v13 = *(v10 + 1);
      v19 = *v10;
      v20 = v13;
      MEMORY[0x23EE72A40](0);
      v17[2] = v21;
      v17[3] = v22;
      v17[4] = v23;
      v18 = v24;
      v17[0] = v19;
      v17[1] = v20;
      Conversation.Update.hash(into:)(a1);
      return sub_238B4EF34(&v19);
    }

    (*(v5 + 32))(v7, v10, v4);
    v15 = 1;
  }

  MEMORY[0x23EE72A40](v15);
  sub_238B549F4(&qword_27DF5F9A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_238B6C814();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Conversation.Event.hashValue.getter()
{
  sub_238B6CE64();
  Conversation.Event.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t Conversation.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF50, &qword_238B6FFD0);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v71 = &v53 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF58, &qword_238B6FFD8);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v70 = &v53 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF60, &qword_238B6FFE0);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v69 = &v53 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF68, &qword_238B6FFE8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v66 = &v53 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF70, &unk_238B6FFF0);
  v68 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v8 = &v53 - v7;
  v67 = type metadata accessor for Conversation.Event(0);
  v9 = MEMORY[0x28223BE20](v67);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_238B54654();
  v24 = v74;
  sub_238B6CEB4();
  if (!v24)
  {
    v54 = v20;
    v55 = v17;
    v56 = v14;
    v25 = v69;
    v57 = v11;
    v26 = v70;
    v27 = v71;
    v74 = v22;
    v28 = v68;
    v30 = v72;
    v29 = v73;
    v31 = sub_238B6CD54();
    v32 = (2 * *(v31 + 16)) | 1;
    v81 = v31;
    v82 = v31 + 32;
    v83 = 0;
    v84 = v32;
    v33 = sub_238B33FD0();
    if (v33 != 4 && v83 == v84 >> 1)
    {
      if (v33 > 1u)
      {
        v69 = v8;
        v45 = v28;
        if (v33 == 2)
        {
          LOBYTE(v75) = 2;
          sub_238B54750();
          sub_238B6CCC4();
          sub_238B6C534();
          sub_238B549F4(&qword_27DF5FA08, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v46 = v56;
          v47 = v62;
          sub_238B6CD44();
          (*(v63 + 8))(v26, v47);
          (*(v45 + 8))(v69, v29);
        }

        else
        {
          LOBYTE(v75) = 3;
          sub_238B546A8();
          v50 = v27;
          sub_238B6CCC4();
          sub_238B6C534();
          LOBYTE(v75) = 0;
          sub_238B549F4(&qword_27DF5FA08, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v46 = v57;
          v51 = v64;
          sub_238B6CD44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8);
          LOBYTE(v75) = 1;
          sub_238B548A0();
          sub_238B6CD44();
          (*(v65 + 8))(v50, v51);
          (*(v45 + 8))(v69, v73);
        }

        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v39 = v46;
      }

      else
      {
        if (v33)
        {
          LOBYTE(v75) = 1;
          sub_238B547A4();
          sub_238B6CCC4();
          sub_238B6C534();
          sub_238B549F4(&qword_27DF5FA08, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v48 = v55;
          v49 = v60;
          sub_238B6CD44();
          (*(v61 + 8))(v25, v49);
          (*(v28 + 8))(v8, v29);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v74;
          sub_238B548F4(v48, v74);
          v30 = v72;
LABEL_15:
          sub_238B548F4(v52, v30);
          return __swift_destroy_boxed_opaque_existential_1Tm(v85);
        }

        LOBYTE(v75) = 0;
        sub_238B547F8();
        v34 = v66;
        sub_238B6CCC4();
        sub_238B54958();
        v35 = v59;
        sub_238B6CD44();
        (*(v58 + 8))(v34, v35);
        (*(v28 + 8))(v8, v29);
        swift_unknownObjectRelease();
        v36 = v78;
        v37 = v54;
        *(v54 + 2) = v77;
        *(v37 + 48) = v36;
        *(v37 + 64) = v79;
        *(v37 + 80) = v80;
        v38 = v76;
        *v37 = v75;
        *(v37 + 16) = v38;
        swift_storeEnumTagMultiPayload();
        v39 = v37;
      }

      v52 = v74;
      sub_238B548F4(v39, v74);
      goto LABEL_15;
    }

    v40 = sub_238B6CBE4();
    swift_allocError();
    v41 = v29;
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0);
    *v43 = v67;
    sub_238B6CCD4();
    sub_238B6CBD4();
    (*(*(v40 - 8) + 104))(v43, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v28 + 8))(v8, v41);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v85);
}

uint64_t sub_238B54054()
{
  sub_238B6CE64();
  Conversation.Event.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B54098()
{
  sub_238B6CE64();
  Conversation.Event.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit12ConversationC5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_238B6C534();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Conversation.Event(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60020, &qword_238B70698);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v53 - v24;
  v26 = &v53 + *(v23 + 56) - v24;
  sub_238B4EFF0(a1, &v53 - v24);
  sub_238B4EFF0(v58, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_238B4EFF0(v25, v16);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v56 + 8))(v16, v57);
        goto LABEL_16;
      }

      v31 = v56;
      v30 = v57;
      v32 = v54;
      (*(v56 + 32))(v54, v26, v57);
      updated = sub_238B6C514();
      v34 = *(v31 + 8);
      v34(v32, v30);
      v34(v16, v30);
    }

    else
    {
      sub_238B4EFF0(v25, v13);
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48);
      v39 = v13[v38];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v56 + 8))(v13, v57);
        goto LABEL_16;
      }

      v40 = v26[v38];
      v42 = v55;
      v41 = v56;
      v43 = v57;
      (*(v56 + 32))(v55, v26, v57);
      v44 = sub_238B6C514();
      v45 = *(v41 + 8);
      v45(v42, v43);
      v45(v13, v43);
      if ((v44 & 1) == 0)
      {
        sub_238B55400(v25);
        goto LABEL_17;
      }

      updated = v39 == v40;
    }

LABEL_19:
    sub_238B55400(v25);
    return updated & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_238B4EFF0(v25, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v56 + 8))(v19, v57);
      goto LABEL_16;
    }

    v36 = v56;
    v35 = v57;
    (*(v56 + 32))(v9, v26, v57);
    updated = sub_238B6C514();
    v37 = *(v36 + 8);
    v37(v9, v35);
    v37(v19, v35);
    goto LABEL_19;
  }

  sub_238B4EFF0(v25, v21);
  v28 = *(v21 + 3);
  v68[2] = *(v21 + 2);
  v68[3] = v28;
  v68[4] = *(v21 + 4);
  v69 = v21[80];
  v29 = *(v21 + 1);
  v68[0] = *v21;
  v68[1] = v29;
  if (!swift_getEnumCaseMultiPayload())
  {
    v46 = *(v26 + 3);
    v47 = *(v26 + 1);
    v64 = *(v26 + 2);
    v65 = v46;
    v48 = *(v26 + 3);
    v66 = *(v26 + 4);
    v49 = *(v26 + 1);
    v63[0] = *v26;
    v63[1] = v49;
    v50 = *(v21 + 3);
    v61[2] = *(v21 + 2);
    v61[3] = v50;
    v61[4] = *(v21 + 4);
    v51 = *(v21 + 1);
    v61[0] = *v21;
    v61[1] = v51;
    v59[2] = v64;
    v59[3] = v48;
    v59[4] = *(v26 + 4);
    v67 = v26[80];
    v62 = v21[80];
    v60 = v26[80];
    v59[0] = v63[0];
    v59[1] = v47;
    updated = _s20LiveCommunicationKit12ConversationC6UpdateV2eeoiySbAE_AEtFZ_0(v61, v59);
    sub_238B4EF34(v63);
    sub_238B4EF34(v68);
    goto LABEL_19;
  }

  sub_238B4EF34(v68);
LABEL_16:
  sub_238B55398(v25);
LABEL_17:
  updated = 0;
  return updated & 1;
}

uint64_t type metadata accessor for Conversation.Event(uint64_t a1)
{
  result = qword_27DF5FF90;
  if (!qword_27DF5FF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_238B54654()
{
  result = qword_27DF5FF18;
  if (!qword_27DF5FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF18);
  }

  return result;
}

unint64_t sub_238B546A8()
{
  result = qword_27DF5FF20;
  if (!qword_27DF5FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF20);
  }

  return result;
}

unint64_t sub_238B546FC()
{
  result = qword_27DF5FF28;
  if (!qword_27DF5FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF28);
  }

  return result;
}

unint64_t sub_238B54750()
{
  result = qword_27DF5FF30;
  if (!qword_27DF5FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF30);
  }

  return result;
}

unint64_t sub_238B547A4()
{
  result = qword_27DF5FF38;
  if (!qword_27DF5FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF38);
  }

  return result;
}

unint64_t sub_238B547F8()
{
  result = qword_27DF5FF40;
  if (!qword_27DF5FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF40);
  }

  return result;
}

unint64_t sub_238B5484C()
{
  result = qword_27DF5FF48;
  if (!qword_27DF5FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF48);
  }

  return result;
}

unint64_t sub_238B548A0()
{
  result = qword_27DF5FF78;
  if (!qword_27DF5FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF78);
  }

  return result;
}

uint64_t sub_238B548F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Conversation.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238B54958()
{
  result = qword_27DF5FF80;
  if (!qword_27DF5FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF80);
  }

  return result;
}

uint64_t sub_238B549F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_238B54A8C(uint64_t a1)
{
  sub_238B6C534();
  if (v1 <= 0x3F)
  {
    sub_238B54B0C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_238B54B0C(uint64_t a1)
{
  if (!qword_27DF5FFA0)
  {
    sub_238B6C534();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF5FFA0);
    }
  }
}

uint64_t _s5EventO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5EventO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238B54D08()
{
  result = qword_27DF5FFA8;
  if (!qword_27DF5FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFA8);
  }

  return result;
}

unint64_t sub_238B54D60()
{
  result = qword_27DF5FFB0;
  if (!qword_27DF5FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFB0);
  }

  return result;
}

unint64_t sub_238B54DB8()
{
  result = qword_27DF5FFB8;
  if (!qword_27DF5FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFB8);
  }

  return result;
}

unint64_t sub_238B54E10()
{
  result = qword_27DF5FFC0;
  if (!qword_27DF5FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFC0);
  }

  return result;
}

unint64_t sub_238B54E68()
{
  result = qword_27DF5FFC8;
  if (!qword_27DF5FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFC8);
  }

  return result;
}

unint64_t sub_238B54EC0()
{
  result = qword_27DF5FFD0;
  if (!qword_27DF5FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFD0);
  }

  return result;
}

unint64_t sub_238B54F18()
{
  result = qword_27DF5FFD8;
  if (!qword_27DF5FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFD8);
  }

  return result;
}

unint64_t sub_238B54F70()
{
  result = qword_27DF5FFE0;
  if (!qword_27DF5FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFE0);
  }

  return result;
}

unint64_t sub_238B54FC8()
{
  result = qword_27DF5FFE8;
  if (!qword_27DF5FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFE8);
  }

  return result;
}

unint64_t sub_238B55020()
{
  result = qword_27DF5FFF0;
  if (!qword_27DF5FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFF0);
  }

  return result;
}

unint64_t sub_238B55078()
{
  result = qword_27DF5FFF8;
  if (!qword_27DF5FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFF8);
  }

  return result;
}

unint64_t sub_238B550D0()
{
  result = qword_27DF60000;
  if (!qword_27DF60000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60000);
  }

  return result;
}

unint64_t sub_238B55128()
{
  result = qword_27DF60008;
  if (!qword_27DF60008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60008);
  }

  return result;
}

unint64_t sub_238B55180()
{
  result = qword_27DF60010;
  if (!qword_27DF60010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60010);
  }

  return result;
}

unint64_t sub_238B551D8()
{
  result = qword_27DF60018;
  if (!qword_27DF60018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60018);
  }

  return result;
}

uint64_t sub_238B5522C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000238B73F30 == a2;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000238B73F50 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238B73F70 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000238B73F90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_238B6CDF4();

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

uint64_t sub_238B55398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60020, &qword_238B70698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B55400(uint64_t a1)
{
  v2 = type metadata accessor for Conversation.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B554EC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_238B6CC24();
    v4 = v1 + 56;
    result = sub_238B6CAF4();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v25 = v1 + 64;
    v26 = v2;
    v28 = v1 + 56;
    v29 = v1;
    v27 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v30 = v6;
      v10 = (*(v1 + 48) + 56 * v5);
      v11 = *v10;
      v12 = *(v10 + 6);
      v13 = objc_allocWithZone(MEMORY[0x277CBAFC8]);
      v14 = sub_238B6C844();
      v15 = [v13 initWithType:v11 + 1 value:v14];

      v16 = sub_238B6C844();
      [v15 setSiriDisplayName_];

      if (v12 >> 60 == 15)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_238B6C4C4();
      }

      [objc_allocWithZone(MEMORY[0x277CBAFD0]) initWithHandle:v15 identityBlob:v17];

      sub_238B6CC04();
      sub_238B6CC34();
      sub_238B6CC44();
      result = sub_238B6CC14();
      v1 = v29;
      v8 = 1 << *(v29 + 32);
      if (v5 >= v8)
      {
        goto LABEL_26;
      }

      v4 = v28;
      v18 = *(v28 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      v7 = v27;
      if (v27 != *(v29 + 36))
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_238B3E9A4(v5, v27, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_238B3E9A4(v5, v27, 0);
      }

LABEL_4:
      v6 = v30 + 1;
      v5 = v8;
      if (v30 + 1 == v26)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_238B557CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_238B5FB98(0, v1, 0);
  v2 = v32;
  v4 = v3 + 56;
  result = sub_238B6CAF4();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v3 + 36);
    v10 = *(v3 + 48) + 56 * v6;
    v31 = *v10;
    v11 = *(v10 + 16);
    v29 = *(v10 + 24);
    v30 = *(v10 + 8);
    v12 = v3;
    v13 = *(v10 + 32);
    v14 = *(v32 + 16);
    v15 = *(v32 + 24);

    if (v14 >= v15 >> 1)
    {
      result = sub_238B5FB98((v15 > 1), v14 + 1, 1);
    }

    *(v32 + 16) = v14 + 1;
    v16 = v32 + 40 * v14;
    *(v16 + 32) = v31;
    *(v16 + 40) = v30;
    *(v16 + 48) = v11;
    *(v16 + 56) = v29;
    *(v16 + 64) = v13;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v12;
    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_238B3E9A4(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_238B3E9A4(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return v2;
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

uint64_t sub_238B55A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_238B5FBB8(0, v1, 0);
  v2 = v32;
  v4 = v3 + 56;
  result = sub_238B6CAF4();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v3 + 36);
    v10 = *(v3 + 48) + 40 * v6;
    v31 = *v10;
    v11 = *(v10 + 16);
    v29 = *(v10 + 24);
    v30 = *(v10 + 8);
    v12 = v3;
    v13 = *(v10 + 32);

    result = sub_238B3C9AC(0, 0xF000000000000000);
    v15 = *(v32 + 16);
    v14 = *(v32 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_238B5FBB8((v14 > 1), v15 + 1, 1);
    }

    *(v32 + 16) = v15 + 1;
    v16 = v32 + 56 * v15;
    *(v16 + 32) = v31;
    *(v16 + 40) = v30;
    *(v16 + 48) = v11;
    *(v16 + 56) = v29;
    *(v16 + 64) = v13;
    *(v16 + 72) = xmmword_238B706C0;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v12;
    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_238B3E9A4(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_238B3E9A4(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return v2;
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

id sub_238B55C9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *v0;
  v15 = *(v0 + 40);
  v16 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = [objc_allocWithZone(MEMORY[0x277CBAF80]) init];
  if (v3)
  {
    v9 = sub_238B554EC(v3);
    sub_238B5C710(v9);

    sub_238B5D154();
    sub_238B5D1A0(&qword_27DF600B8, sub_238B5D154, MEMORY[0x277D85378]);
    v10 = sub_238B6CA14();

    [v8 setRemoteParticipantHandles_];
  }

  if (v6)
  {
    v11 = sub_238B554EC(v6);
    sub_238B5C710(v11);

    sub_238B5D154();
    sub_238B5D1A0(&qword_27DF600B8, sub_238B5D154, MEMORY[0x277D85378]);
    v12 = sub_238B6CA14();

    [v8 setActiveRemoteParticipantHandles_];
  }

  if ((v7 & 1) == 0)
  {
    [v8 setHasVideo_];
    [v8 setSupportsDTMF_];
    [v8 setSupportsHolding_];
    [v8 setSupportsGrouping_];
    [v8 setSupportsUngrouping_];
    [v8 setSupportsSharePlay_];
    [v8 setSupportsScreenShare_];
  }

  if (v2)
  {
    sub_238B3EF54(v18, v1, v2, v17, v16, v15, v4);

    v13 = sub_238B6C844();

    [v8 setLocalMemberHandleValue_];

    sub_238B3F8F8(v18, v1, v2, v17, v16, v15, v4);
  }

  return v8;
}

uint64_t Conversation.Update.localMember.getter@<X0>(void *a4@<X8>)
{
  v6 = v4[2];
  if (v6)
  {
    v8 = v4[3];
    v7 = v4[4];
    v9 = v4[1];
    v10 = *v4;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a4 = v10;
  a4[1] = v9;
  a4[2] = v6;
  a4[3] = v8;
  a4[4] = v7;
  return result;
}

void *sub_238B55FD4@<X0>(void *result@<X0>, void *a5@<X8>)
{
  v6 = result[2];
  if (v6)
  {
    v8 = result[3];
    v7 = result[4];
    v9 = result[1];
    v10 = *result;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a5 = v10;
  a5[1] = v9;
  a5[2] = v6;
  a5[3] = v8;
  a5[4] = v7;
  return result;
}

double sub_238B56048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  if (v4)
  {
    v7 = a1[3];
    v6 = a1[4];
    v8 = a1[1];
    v9 = *a1;

    sub_238B3C9AC(0, 0xF000000000000000);
    sub_238B3F8F8(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v4;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    result = 0.0;
    *(a2 + 40) = xmmword_238B706C0;
  }

  return result;
}

double Conversation.Update.localMember.setter(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v4 = a1[3];
    v3 = a1[4];
    v5 = a1[1];
    v6 = *a1;
    sub_238B3C9AC(0, 0xF000000000000000);
    sub_238B3F8F8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    *v1 = v6;
    *(v1 + 8) = v5;
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    *(v1 + 32) = v3;
    result = 0.0;
    *(v1 + 40) = xmmword_238B706C0;
  }

  return result;
}

void (*Conversation.Update.localMember.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v5 = v1[2];
  if (v5)
  {
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[1];
    v9 = *v1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  *v4 = v9;
  v4[1] = v8;
  v4[2] = v5;
  v4[3] = v7;
  v4[4] = v6;
  return sub_238B56210;
}

void sub_238B56210(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[2];
  if (a2)
  {
    if (v5)
    {
      v6 = v4[4];
      v7 = v4[5];
      v8 = v4[3];
      v9 = v4[1];
      v10 = *v4;

      sub_238B3C9AC(0, 0xF000000000000000);
      sub_238B3F8F8(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48));
      *v7 = v10;
      *(v7 + 8) = v9;
      *(v7 + 16) = v5;
      *(v7 + 24) = v8;
      *(v7 + 32) = v6;
      *(v7 + 40) = xmmword_238B706C0;
      v11 = v4[2];
    }

    else
    {
      v11 = 0;
    }

    sub_238B36C90(*v4, v4[1], v11, v4[3], v4[4]);
  }

  else if (v5)
  {
    v13 = v4[4];
    v12 = v4[5];
    v14 = v4[3];
    v15 = v4[1];
    v16 = *v4;
    sub_238B3C9AC(0, 0xF000000000000000);
    sub_238B3F8F8(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48));
    *v12 = v16;
    *(v12 + 8) = v15;
    *(v12 + 16) = v5;
    *(v12 + 24) = v14;
    *(v12 + 32) = v13;
    *(v12 + 40) = xmmword_238B706C0;
  }

  free(v4);
}

void Conversation.Update.localConversationMember.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_238B3EF54(v2, v3, v4, v5, v6, v7, v8);
}

__n128 Conversation.Update.localConversationMember.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_238B3F8F8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t Conversation.Update.members.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_238B557CC(v1);
  v3 = sub_238B5C870(v2);

  return v3;
}

uint64_t sub_238B5642C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 56);
  if (result)
  {
    v4 = sub_238B557CC(result);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_238B5648C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = sub_238B55A24(result);
    v5 = sub_238B5C918(v4);

    *(a2 + 56) = v5;
  }

  return result;
}

uint64_t Conversation.Update.members.setter(uint64_t result)
{
  if (result)
  {
    v2 = sub_238B55A24(result);

    v3 = sub_238B5C918(v2);

    *(v1 + 56) = v3;
  }

  return result;
}

uint64_t *(*Conversation.Update.members.modify(uint64_t *a1))(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v3 = *(v1 + 56);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = sub_238B557CC(v3);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  a1[3] = 0;
  *a1 = v5;
  return sub_238B565DC;
}

uint64_t *sub_238B565DC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (a2)
  {
    if (v4)
    {
      v5 = result[1];

      v7 = sub_238B55A24(v6);

      v8 = sub_238B5C918(v7);

      *(v5 + 56) = v8;
    }
  }

  else if (v4)
  {
    v9 = result[1];
    v10 = sub_238B55A24(*result);

    v11 = sub_238B5C918(v10);

    *(v9 + 56) = v11;
  }

  return result;
}

uint64_t Conversation.Update.conversationMembers.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Conversation.Update.activeRemoteMembers.getter()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_238B557CC(v1);
  v3 = sub_238B5C870(v2);

  return v3;
}

uint64_t sub_238B56778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 64);
  if (result)
  {
    v4 = sub_238B557CC(result);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_238B567D8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = sub_238B55A24(result);
    v5 = sub_238B5C918(v4);

    *(a2 + 64) = v5;
  }

  return result;
}

uint64_t Conversation.Update.activeRemoteMembers.setter(uint64_t result)
{
  if (result)
  {
    v2 = sub_238B55A24(result);

    v3 = sub_238B5C918(v2);

    *(v1 + 64) = v3;
  }

  return result;
}

uint64_t *(*Conversation.Update.activeRemoteMembers.modify(uint64_t *a1))(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = sub_238B557CC(v3);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  a1[3] = 0;
  *a1 = v5;
  return sub_238B56928;
}

uint64_t *sub_238B56928(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (a2)
  {
    if (v4)
    {
      v5 = result[1];

      v7 = sub_238B55A24(v6);

      v8 = sub_238B5C918(v7);

      *(v5 + 64) = v8;
    }
  }

  else if (v4)
  {
    v9 = result[1];
    v10 = sub_238B55A24(*result);

    v11 = sub_238B5C918(v10);

    *(v9 + 64) = v11;
  }

  return result;
}

uint64_t Conversation.Update.activeRemoteConversationMembers.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void Conversation.Update.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t Conversation.Update.capabilities.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

void Conversation.Update.init(localMember:members:activeRemoteMembers:capabilities:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v10 = a1[4];
  v18 = *a4;
  v17 = *(a4 + 8);
  if (a2)
  {
    v12 = sub_238B55A24(a2);
    v16 = sub_238B5C918(v12);

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    v8 = 0;
    v11 = 0;
    v10 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_238B55A24(a3);
  v14 = sub_238B5C918(v13);

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15 = 0xF000000000000000;
  sub_238B3C9AC(0, 0xF000000000000000);
LABEL_8:
  sub_238B3F8F8(0, 0, 0, 0, 0, 0, 0);
  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v11;
  *(a5 + 32) = v10;
  *(a5 + 40) = 0;
  *(a5 + 48) = v15;
  *(a5 + 56) = v16;
  *(a5 + 64) = v14;
  *(a5 + 72) = v18;
  *(a5 + 80) = v17;
}

void Conversation.Update.init(localConversationMember:conversationMembers:activeRemoteConversationMembers:capabilities:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[2];
  v8 = *a4;
  v9 = *(a4 + 8);
  if (v7)
  {
    v11 = a1[3];
    v10 = a1[4];
    v12 = a1[1];
    v13 = *a1;
    v14 = 0xF000000000000000;
    sub_238B3C9AC(0, 0xF000000000000000);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v14 = 0;
  }

  sub_238B3F8F8(0, 0, 0, 0, 0, 0, 0);
  *a5 = v13;
  *(a5 + 8) = v12;
  *(a5 + 16) = v7;
  *(a5 + 24) = v11;
  *(a5 + 32) = v10;
  *(a5 + 40) = 0;
  *(a5 + 48) = v14;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = v8;
  *(a5 + 80) = v9;
}

unint64_t sub_238B56CD0()
{
  v1 = 0x696C696261706163;
  if (*v0 == 2)
  {
    v1 = 0xD00000000000001FLL;
  }

  v2 = 0xD000000000000017;
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

uint64_t sub_238B56D60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238B5CE80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238B56D88(uint64_t a1)
{
  v2 = sub_238B5C9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B56DC4(uint64_t a1)
{
  v2 = sub_238B5C9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conversation.Update.encode(to:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60028, &qword_238B706D0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v26 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v30 = *(v1 + 24);
  v31 = v8;
  v11 = *(v1 + 48);
  v10 = *(v1 + 56);
  v12 = *(v1 + 72);
  v28 = *(v1 + 64);
  v29 = v10;
  v27 = v12;
  v44 = *(v1 + 80);
  v13 = a1[4];
  v32 = a1[3];
  v33 = v13;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v14 = v30;
  v15 = v8;
  v16 = v11;
  sub_238B3EF54(v5, v6, v7, v30, v9, v15, v11);
  sub_238B5C9E0();
  v17 = v34;
  sub_238B6CEC4();
  v37 = v5;
  v38 = v6;
  v18 = v4;
  v39 = v7;
  v40 = v14;
  v41 = v9;
  v42 = v31;
  v43 = v16;
  v45 = 0;
  sub_238B5CA34();
  v19 = v17;
  v20 = v35;
  sub_238B6CD74();
  sub_238B3F8F8(v37, v38, v39, v40, v41, v42, v43);
  if (v20)
  {
    return (*(v36 + 8))(v18, v17);
  }

  v22 = v27;
  v23 = v28;
  v24 = v44;
  v25 = v36;
  v37 = v29;
  v45 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60040, &qword_238B706D8);
  sub_238B5CB30(&qword_27DF60048, sub_238B5CA34, MEMORY[0x277D83B50]);
  sub_238B6CD74();
  v37 = v23;
  v45 = 2;
  sub_238B6CD74();
  v37 = v22;
  LOBYTE(v38) = v24;
  v45 = 3;
  sub_238B5CA88();
  sub_238B6CD74();
  return (*(v25 + 8))(v18, v19);
}

uint64_t Conversation.Update.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v5 = *(v2 + 7);
  v4 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = v2[80];
  if (!*(v2 + 2))
  {
    sub_238B6CE84();
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_5:
    sub_238B6CE84();
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v12 = v2[80];
  v8 = *(v2 + 9);
  v9 = *(v2 + 6);
  v10 = *v2;
  sub_238B6CE84();
  MEMORY[0x23EE72A40](v10 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  sub_238B6CE84();
  if (v9 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  v6 = v8;
  v7 = v12;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_10:
  sub_238B6CE84();
  sub_238B5C0B0(a1, v5);
  if (v4)
  {
LABEL_11:
    sub_238B6CE84();
    sub_238B5C0B0(a1, v4);
    if (v7)
    {
      return sub_238B6CE84();
    }

LABEL_7:
    sub_238B6CE84();
    return MEMORY[0x23EE72A40](v6);
  }

LABEL_6:
  sub_238B6CE84();
  if (!v7)
  {
    goto LABEL_7;
  }

  return sub_238B6CE84();
}

uint64_t Conversation.Update.hashValue.getter()
{
  sub_238B6CE64();
  Conversation.Update.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t Conversation.Update.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60058, &qword_238B706E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v57 = 1;
  v9 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_238B5C9E0();
  sub_238B6CEB4();
  if (v2)
  {
    v38 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0uLL;
    v52 = 0;
    v53 = 0;
    v54 = v38;
    v55 = 0;
    v56 = v57;
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_238B5CADC();
    sub_238B6CCF4();
    v32 = a2;
    v11 = v48;
    v33 = v47;
    v12 = v49;
    v36 = v50;
    v34 = v51;
    v35 = v52;
    sub_238B3F8F8(0, 0, 0, 0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60040, &qword_238B706D8);
    LOBYTE(v39) = 1;
    sub_238B5CB30(&qword_27DF60068, sub_238B5CADC, MEMORY[0x277D83B70]);
    sub_238B6CCF4();
    v30 = v11;
    v31 = v12;
    v13 = v47;
    LOBYTE(v39) = 2;
    sub_238B6CCF4();
    v29 = v13;
    v38 = v47;
    v58 = 3;
    sub_238B5CBA8();
    sub_238B6CCF4();
    (*(v6 + 8))(v8, v5);
    v28 = v45;
    v14 = v46;
    v57 = v46;
    v15 = v33;
    *&v39 = v33;
    v16 = v30;
    *(&v39 + 1) = v30;
    v17 = v31;
    *&v40 = v31;
    v18 = v34;
    *(&v40 + 1) = v36;
    v19 = *(&v34 + 1);
    v41 = v34;
    v20 = v35;
    *&v42 = v35;
    v21 = v29;
    *(&v42 + 1) = v29;
    *&v43 = v38;
    *(&v43 + 1) = v45;
    v44 = v46;
    v22 = v40;
    v23 = v32;
    *v32 = v39;
    v23[1] = v22;
    v24 = v41;
    v25 = v42;
    v26 = v43;
    *(v23 + 80) = v14;
    v23[3] = v25;
    v23[4] = v26;
    v23[2] = v24;
    sub_238B4EED8(&v39, &v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v47 = v15;
    v48 = v16;
    v49 = v17;
    v50 = v36;
    *&v51 = v18;
    *(&v51 + 1) = v19;
    v52 = v20;
    v53 = v21;
    v54 = v38;
    v55 = v28;
    v56 = v14;
  }

  return sub_238B4EF34(&v47);
}

uint64_t sub_238B57838()
{
  sub_238B6CE64();
  Conversation.Update.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B5787C()
{
  sub_238B6CE64();
  Conversation.Update.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B578BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_238B6C424();
    if (v10)
    {
      v11 = sub_238B6C444();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_238B6C434();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_238B6C424();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238B6C444();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238B6C434();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238B57AEC(uint64_t a1, uint64_t a2)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v134 = a2 + 56;
  if (v6)
  {
LABEL_7:
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    goto LABEL_13;
  }

  while (1)
  {
    v9 = v2;
    do
    {
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
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
        __break(1u);
LABEL_196:
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
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
      }

      if (v2 >= v7)
      {
        return 1;
      }

      v10 = *(v3 + 8 * v2);
      ++v9;
    }

    while (!v10);
    v8 = __clz(__rbit64(v10));
    v6 = (v10 - 1) & v10;
LABEL_13:
    v119 = v2;
    v122 = a1;
    v11 = (*(a1 + 48) + 56 * (v8 | (v2 << 6)));
    v12 = *v11;
    v14 = v11[1];
    v13 = v11[2];
    v16 = v11[3];
    v15 = v11[4];
    v18 = v11[5];
    v17 = v11[6];
    sub_238B6CE64();
    v128 = v12;
    MEMORY[0x23EE72A40](v12 + 1);

    sub_238B3C90C(v18, v17);
    v132 = v14;
    sub_238B6C8D4();
    v131 = v16;
    sub_238B6C8D4();
    v127 = v17 >> 60;
    v129 = v18;
    v130 = v17;
    v120 = v7;
    v121 = v3;
    sub_238B6CE84();
    if (v17 >> 60 != 15)
    {
      sub_238B6C4E4();
    }

    v19 = sub_238B6CEA4();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    v22 = v12;
    if (((*(v134 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_184:

      sub_238B3C9AC(v129, v130);
      return 0;
    }

    v133 = ~v20;
    v125 = v17 >> 62;
    v23 = !v18 && v17 == 0xC000000000000000;
    v24 = !v23;
    v124 = v24;
    v118 = HIDWORD(v18);
    v25 = __OFSUB__(HIDWORD(v18), v18);
    v123 = v25;
    v116 = (v18 >> 32) - v18;
    v117 = v18 >> 32;
LABEL_30:
    v28 = (*(a2 + 48) + 56 * v21);
    if (*v28 != v22)
    {
      goto LABEL_29;
    }

    v29 = v28[3];
    v30 = v28[4];
    v32 = v28[5];
    v31 = v28[6];
    v33 = v28[1] == v132 && v28[2] == v13;
    if (!v33 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_29;
    }

    v34 = v29 == v131 && v30 == v15;
    if (!v34 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v31 >> 60 == 15)
    {
      if (v127 > 0xE)
      {
        sub_238B3C90C(v32, v31);
        sub_238B3C90C(v129, v130);
        goto LABEL_178;
      }

LABEL_27:
      sub_238B3C90C(v32, v31);
      sub_238B3C90C(v129, v130);
      sub_238B3C9AC(v32, v31);
      v26 = v129;
      v27 = v130;
      goto LABEL_28;
    }

    if (v127 > 0xE)
    {
      goto LABEL_27;
    }

    v35 = v31 >> 62;
    if (v31 >> 62 != 3)
    {
      break;
    }

    if (v32)
    {
      v36 = 0;
    }

    else
    {
      v36 = v31 == 0xC000000000000000;
    }

    v37 = v125;
    v39 = !v36 || v125 < 3;
    if ((v39 | v124))
    {
LABEL_65:
      v40 = 0;
      if (v37 <= 1)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    sub_238B3C90C(0, 0xC000000000000000);
    sub_238B3C90C(0, 0xC000000000000000);
    sub_238B3C90C(0, 0xC000000000000000);
    sub_238B3C9AC(0, 0xC000000000000000);
    v32 = 0;
LABEL_181:
    sub_238B3C9AC(v32, v31);

LABEL_178:
    sub_238B3C9AC(v32, v31);
LABEL_179:

    sub_238B3C9AC(v129, v130);
    v3 = v121;
    a1 = v122;
    v7 = v120;
    v2 = v119;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v37 = v125;
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_65;
    }

    v42 = *(v32 + 16);
    v41 = *(v32 + 24);
    v43 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (v43)
    {
      goto LABEL_189;
    }

    if (v125 <= 1)
    {
      goto LABEL_62;
    }
  }

  else if (v35)
  {
    LODWORD(v40) = HIDWORD(v32) - v32;
    if (__OFSUB__(HIDWORD(v32), v32))
    {
      goto LABEL_190;
    }

    v40 = v40;
    if (v125 <= 1)
    {
LABEL_62:
      v44 = BYTE6(v130);
      if (v37)
      {
        v44 = HIDWORD(v129) - v129;
        if (v123)
        {
          goto LABEL_187;
        }
      }

      goto LABEL_68;
    }
  }

  else
  {
    v40 = BYTE6(v31);
    if (v125 <= 1)
    {
      goto LABEL_62;
    }
  }

LABEL_66:
  if (v37 != 2)
  {
    if (!v40)
    {
LABEL_177:

      sub_238B3C90C(v32, v31);
      sub_238B3C90C(v32, v31);
      sub_238B3C90C(v129, v130);
      sub_238B3C9AC(v129, v130);
      sub_238B3C9AC(v32, v31);

      goto LABEL_178;
    }

LABEL_80:

    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v129, v130);
    sub_238B3C9AC(v129, v130);
    sub_238B3C9AC(v32, v31);

    v26 = v32;
    v27 = v31;
LABEL_28:
    sub_238B3C9AC(v26, v27);
    v22 = v128;
    goto LABEL_29;
  }

  v46 = *(v129 + 16);
  v45 = *(v129 + 24);
  v43 = __OFSUB__(v45, v46);
  v44 = v45 - v46;
  if (v43)
  {
    goto LABEL_188;
  }

LABEL_68:
  if (v40 != v44)
  {
    goto LABEL_80;
  }

  if (v40 < 1)
  {
    goto LABEL_177;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *&v138[6] = 0;
      *v138 = 0;
      v22 = v128;
      if (v37 == 2)
      {
        __s2b = *(v129 + 24);
        __s1e = *(v129 + 16);

        sub_238B3C90C(v32, v31);
        sub_238B3C90C(v32, v31);
        sub_238B3C90C(v129, v130);
        v67 = sub_238B6C424();
        if (v67)
        {
          v94 = v67;
          v68 = sub_238B6C444();
          v69 = __s1e;
          if (__OFSUB__(__s1e, v68))
          {
            goto LABEL_205;
          }

          v70 = &__s1e[v94 - v68];
        }

        else
        {
          v70 = 0;
          v69 = __s1e;
        }

        __s1g = v70;
        v43 = __OFSUB__(__s2b, v69);
        __s2f = (__s2b - v69);
        if (v43)
        {
          goto LABEL_197;
        }

        result = sub_238B6C434();
        v57 = __s1g;
        if (!__s1g)
        {
          goto LABEL_217;
        }

        v58 = __s2f;
        goto LABEL_141;
      }

      if (v37 != 1)
      {
        v135[0] = v129;
        v65 = v129;
        v66 = v129 >> 8;
LABEL_121:
        v135[1] = v66;
        v135[2] = BYTE2(v65);
        v135[3] = BYTE3(v65);
        v135[4] = v118;
        v135[5] = BYTE5(v65);
        v135[6] = BYTE6(v65);
        v135[7] = HIBYTE(v65);
        v136 = v130;
        v137 = WORD2(v130);

        sub_238B3C90C(v32, v31);
        sub_238B3C90C(v32, v31);
        sub_238B3C90C(v129, v130);
        result = v138;
        v57 = v135;
LABEL_132:
        v85 = BYTE6(v130);
        goto LABEL_174;
      }

      if (v117 < v129)
      {
        goto LABEL_194;
      }

      sub_238B3C90C(v32, v31);
      sub_238B3C90C(v32, v31);
      sub_238B3C90C(v129, v130);
      __s1d = sub_238B6C424();
      if (!__s1d)
      {
        goto LABEL_215;
      }

      v56 = sub_238B6C444();
      if (__OFSUB__(v129, v56))
      {
        goto LABEL_200;
      }

      v48 = &__s1d[v129 - v56];
      result = sub_238B6C434();
      if (!v48)
      {
        goto LABEL_216;
      }

      goto LABEL_98;
    }

    __s1a = *(v32 + 16);

    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v129, v130);
    v50 = sub_238B6C424();
    v22 = v128;
    if (v50)
    {
      v51 = v50;
      v52 = sub_238B6C444();
      if (__OFSUB__(__s1a, v52))
      {
        goto LABEL_192;
      }

      __s1b = &__s1a[v51 - v52];
    }

    else
    {
      __s1b = 0;
    }

    sub_238B6C434();
    if (v125 == 2)
    {
      v96 = *(v129 + 24);
      __s2d = *(v129 + 16);
      v75 = sub_238B6C424();
      if (v75)
      {
        v76 = v75;
        v77 = sub_238B6C444();
        v78 = __s2d;
        if (__OFSUB__(__s2d, v77))
        {
          goto LABEL_206;
        }

        v79 = &__s2d[v76 - v77];
      }

      else
      {
        v79 = 0;
        v78 = __s2d;
      }

      __s2g = v79;
      v86 = v96 - v78;
      if (__OFSUB__(v96, v78))
      {
        goto LABEL_201;
      }

      v87 = sub_238B6C434();
      if (v87 >= v86)
      {
        v88 = v86;
      }

      else
      {
        v88 = v87;
      }

      result = __s1b;
      if (!__s1b)
      {
        goto LABEL_222;
      }

      v57 = __s2g;
      if (!__s2g)
      {
        goto LABEL_221;
      }

      goto LABEL_172;
    }

    if (v125 == 1)
    {
      if (v117 < v129)
      {
        goto LABEL_196;
      }

      v59 = sub_238B6C424();
      if (v59)
      {
        v60 = v59;
        v61 = sub_238B6C444();
        if (__OFSUB__(v129, v61))
        {
          goto LABEL_208;
        }

        __s2 = (v129 - v61 + v60);
      }

      else
      {
        __s2 = 0;
      }

      v89 = sub_238B6C434();
      v88 = (v129 >> 32) - v129;
      if (v89 < v116)
      {
        v88 = v89;
      }

      result = __s1b;
      if (!__s1b)
      {
        goto LABEL_220;
      }

      v57 = __s2;
      if (!__s2)
      {
        goto LABEL_219;
      }

LABEL_172:
      if (result == v57)
      {
        sub_238B3C9AC(v129, v130);
        goto LABEL_181;
      }

      v85 = v88;
      goto LABEL_174;
    }

    result = __s1b;
    *v138 = v129;
    v138[4] = v118;
    *&v138[5] = *(&v129 + 5);
    v138[7] = HIBYTE(v129);
    *&v138[8] = v130;
    *&v138[10] = *(&v130 + 2);
    if (!__s1b)
    {
      goto LABEL_218;
    }

LABEL_131:
    v57 = v138;
    goto LABEL_132;
  }

  if (v35)
  {
    v22 = v128;
    if (v32 > v32 >> 32)
    {
      goto LABEL_191;
    }

    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v129, v130);
    v53 = sub_238B6C424();
    if (v53)
    {
      v54 = v53;
      v55 = sub_238B6C444();
      if (__OFSUB__(v32, v55))
      {
        goto LABEL_193;
      }

      __s1c = (v32 - v55 + v54);
    }

    else
    {
      __s1c = 0;
    }

    sub_238B6C434();
    if (v125 == 2)
    {
      v97 = *(v129 + 24);
      __s2e = *(v129 + 16);
      v80 = sub_238B6C424();
      if (v80)
      {
        v81 = v80;
        v82 = sub_238B6C444();
        v83 = __s2e;
        if (__OFSUB__(__s2e, v82))
        {
          goto LABEL_207;
        }

        v84 = &__s2e[v81 - v82];
      }

      else
      {
        v84 = 0;
        v83 = __s2e;
      }

      __s2h = v84;
      v90 = v97 - v83;
      if (__OFSUB__(v97, v83))
      {
        goto LABEL_203;
      }

      v91 = sub_238B6C434();
      if (v91 >= v90)
      {
        v88 = v90;
      }

      else
      {
        v88 = v91;
      }

      result = __s1c;
      if (!__s1c)
      {
        goto LABEL_214;
      }

      v57 = __s2h;
      if (!__s2h)
      {
        goto LABEL_213;
      }

      goto LABEL_172;
    }

    if (v125 == 1)
    {
      if (v117 < v129)
      {
        goto LABEL_202;
      }

      v62 = sub_238B6C424();
      if (v62)
      {
        v63 = v62;
        v64 = sub_238B6C444();
        if (__OFSUB__(v129, v64))
        {
          goto LABEL_209;
        }

        __s2a = (v129 - v64 + v63);
      }

      else
      {
        __s2a = 0;
      }

      v92 = sub_238B6C434();
      v88 = (v129 >> 32) - v129;
      if (v92 < v116)
      {
        v88 = v92;
      }

      result = __s1c;
      if (!__s1c)
      {
        goto LABEL_225;
      }

      v57 = __s2a;
      if (!__s2a)
      {
        goto LABEL_224;
      }

      goto LABEL_172;
    }

    result = __s1c;
    *v138 = v129;
    v138[4] = v118;
    *&v138[5] = *(&v129 + 5);
    v138[7] = HIBYTE(v129);
    *&v138[8] = v130;
    *&v138[10] = *(&v130 + 2);
    if (!__s1c)
    {
      goto LABEL_223;
    }

    goto LABEL_131;
  }

  *v138 = v32;
  *&v138[8] = v31;
  v138[10] = BYTE2(v31);
  v138[11] = BYTE3(v31);
  v138[12] = BYTE4(v31);
  v138[13] = BYTE5(v31);
  v22 = v128;
  if (!v37)
  {
    v65 = v129;
    v135[0] = v129;
    v66 = v129 >> 8;
    goto LABEL_121;
  }

  if (v37 == 1)
  {
    if (v117 < v129)
    {
      goto LABEL_195;
    }

    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v32, v31);
    sub_238B3C90C(v129, v130);
    __s1 = sub_238B6C424();
    if (!__s1)
    {
      goto LABEL_212;
    }

    v47 = sub_238B6C444();
    if (__OFSUB__(v129, v47))
    {
      goto LABEL_199;
    }

    v48 = &__s1[v129 - v47];
    result = sub_238B6C434();
    if (!v48)
    {
      goto LABEL_211;
    }

LABEL_98:
    v57 = v48;
    v58 = (v129 >> 32) - v129;
LABEL_141:
    if (result >= v58)
    {
      v85 = v58;
    }

    else
    {
      v85 = result;
    }

    result = v138;
LABEL_174:
    v93 = memcmp(result, v57, v85);
    sub_238B3C9AC(v129, v130);
    sub_238B3C9AC(v32, v31);

    sub_238B3C9AC(v32, v31);
    if (!v93)
    {
      goto LABEL_179;
    }

LABEL_29:
    v21 = (v21 + 1) & v133;
    if (((*(v134 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_30;
  }

  __s2c = *(v129 + 24);
  __s1f = *(v129 + 16);

  sub_238B3C90C(v32, v31);
  sub_238B3C90C(v32, v31);
  sub_238B3C90C(v129, v130);
  v71 = sub_238B6C424();
  if (v71)
  {
    v72 = v71;
    v73 = sub_238B6C444();
    v74 = __s1f;
    if (__OFSUB__(__s1f, v73))
    {
      goto LABEL_204;
    }

    v95 = &__s1f[v72 - v73];
  }

  else
  {
    v95 = 0;
    v74 = __s1f;
  }

  __s1h = (__s2c - v74);
  if (__OFSUB__(__s2c, v74))
  {
    goto LABEL_198;
  }

  result = sub_238B6C434();
  v57 = v95;
  if (v95)
  {
    v58 = __s1h;
    goto LABEL_141;
  }

  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  sub_238B6C434();
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  result = sub_238B6C434();
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
  return result;
}

uint64_t sub_238B589FC(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](a2);
  v6 = sub_238B6CEA4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_238B5A444(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_238B58AF4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_238B6CB34();

    if (v9)
    {

      sub_238B5D154();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_238B6CB24();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_238B597BC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_238B59BEC(v20 + 1);
    }

    v18 = v8;
    sub_238B5A3C0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_238B5D154();
  v11 = sub_238B6CAA4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_238B5A5A0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_238B6CAB4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_238B58D0C(uint64_t a1, void *a2)
{
  v4 = *v2;
  sub_238B6CE64();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v31 = a2;
  MEMORY[0x23EE72A40](v5 + 1);
  v33 = v6;
  sub_238B6C8D4();
  sub_238B6C8D4();
  v10 = sub_238B6CEA4();
  v11 = v4 + 56;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v29 = v4;
    v15 = *(v4 + 48);
    while (1)
    {
      v16 = (v15 + 40 * v13);
      if (*v16 == v5)
      {
        v17 = v16[3];
        v18 = v16[4];
        v19 = v16[1] == v33 && v16[2] == v7;
        if (v19 || (sub_238B6CDF4() & 1) != 0)
        {
          v20 = v17 == v8 && v18 == v9;
          if (v20 || (sub_238B6CDF4() & 1) != 0)
          {
            break;
          }
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_238B3C7B0(v31);
    v21 = *(v29 + 48) + 40 * v13;
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
    v24 = *(v21 + 24);
    v25 = *(v21 + 32);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v22;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;

    return 0;
  }

  else
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v30;
    sub_238B5D0F8(v31, v35);
    sub_238B5A700(v31, v13, isUniquelyReferenced_nonNull_native);
    *v30 = v34;
    v28 = *(v31 + 1);
    *a1 = *v31;
    *(a1 + 16) = v28;
    *(a1 + 32) = v31[4];
    return 1;
  }
}

uint64_t sub_238B58F14(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  sub_238B6CE64();
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v10 = a2[5];
  v9 = a2[6];
  v82 = *a2;
  MEMORY[0x23EE72A40](v82 + 1);
  v81 = v6;
  sub_238B6C8D4();
  v80 = v7;
  v74 = v8;
  sub_238B6C8D4();
  v76 = v9 >> 60;
  v71 = v2;
  v72 = a2;
  sub_238B6CE84();
  if (v9 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  v11 = sub_238B6CEA4();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_84:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *v71;
    sub_238B5D048(v72, v84);
    sub_238B5A908(v72, v14, isUniquelyReferenced_nonNull_native);
    *v71 = v83;
    v53 = *(v72 + 1);
    *a1 = *v72;
    *(a1 + 16) = v53;
    *(a1 + 32) = *(v72 + 2);
    *(a1 + 48) = v72[6];
    return 1;
  }

  v15 = ~v13;
  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9 == 0xC000000000000000;
  }

  v17 = !v16;
  v69 = v17;
  v70 = v9 >> 62;
  v77 = v10;
  v78 = v15;
  v18 = __OFSUB__(HIDWORD(v10), v10);
  v67 = v18;
  v66 = HIDWORD(v10) - v10;
  v75 = v9;
  v68 = BYTE6(v9);
  v19 = v74;
  v79 = v4;
  while (1)
  {
    v22 = (*(v4 + 48) + 56 * v14);
    if (*v22 != v82)
    {
      goto LABEL_18;
    }

    v23 = v22[3];
    v24 = v22[4];
    v26 = v22[5];
    v25 = v22[6];
    v27 = v22[1] == v5 && v22[2] == v81;
    if (!v27 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_17;
    }

    v28 = v23 == v80 && v24 == v19;
    if (!v28 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v25 >> 60 == 15)
    {
      if (v76 > 0xE)
      {
        sub_238B3C90C(v26, v25);
        sub_238B3C90C(v77, v75);
        goto LABEL_87;
      }

LABEL_15:
      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v77, v75);
      sub_238B3C9AC(v26, v25);
      v20 = v77;
      v21 = v75;
      goto LABEL_16;
    }

    if (v76 > 0xE)
    {
      goto LABEL_15;
    }

    v29 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v30 = 0;
      }

      else
      {
        v30 = v25 == 0xC000000000000000;
      }

      v31 = v70;
      v33 = !v30 || v70 < 3;
      if (((v33 | v69) & 1) == 0)
      {

        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);

        v62 = 0;
        v63 = 0xC000000000000000;
        goto LABEL_88;
      }

LABEL_54:
      v34 = 0;
      if (v31 > 1)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    v31 = v70;
    if (v29 <= 1)
    {
      break;
    }

    if (v29 != 2)
    {
      goto LABEL_54;
    }

    v36 = *(v26 + 16);
    v35 = *(v26 + 24);
    v37 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v37)
    {
      goto LABEL_92;
    }

    if (v70 > 1)
    {
      goto LABEL_55;
    }

LABEL_51:
    v38 = v68;
    if (v31)
    {
      v38 = v66;
      if (v67)
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
      }
    }

LABEL_57:
    if (v34 != v38)
    {
      goto LABEL_63;
    }

    if (v34 < 1)
    {
      goto LABEL_86;
    }

    v65 = v5;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        *&v84[6] = 0;
        *v84 = 0;

        sub_238B3C90C(v26, v25);
        sub_238B3C90C(v26, v25);
        v41 = v77;
        v42 = v75;
        sub_238B3C90C(v77, v75);
        goto LABEL_77;
      }

      v43 = *(v26 + 16);
      v64 = *(v26 + 24);

      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v77, v75);
      v44 = sub_238B6C424();
      if (v44)
      {
        v45 = v44;
        v46 = sub_238B6C444();
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_95;
        }

        v47 = v43 - v46 + v45;
      }

      else
      {
        v47 = 0;
      }

      if (__OFSUB__(v64, v43))
      {
        goto LABEL_94;
      }

      sub_238B6C434();
      v50 = v47;
    }

    else
    {
      if (!v29)
      {
        *v84 = v26;
        *&v84[8] = v25;
        v84[10] = BYTE2(v25);
        v84[11] = BYTE3(v25);
        v84[12] = BYTE4(v25);
        v84[13] = BYTE5(v25);

        sub_238B3C90C(v26, v25);
        sub_238B3C90C(v26, v25);
        v41 = v77;
        v42 = v75;
        sub_238B3C90C(v77, v75);
LABEL_77:
        sub_238B578BC(v84, v41, v42, &v83);
        sub_238B3C9AC(v41, v42);
        v51 = v83;
        goto LABEL_82;
      }

      if (v26 >> 32 < v26)
      {
        goto LABEL_93;
      }

      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v77, v75);
      v48 = sub_238B6C424();
      if (v48)
      {
        v49 = sub_238B6C444();
        if (__OFSUB__(v26, v49))
        {
          goto LABEL_96;
        }

        v48 += v26 - v49;
      }

      sub_238B6C434();
      v50 = v48;
    }

    sub_238B578BC(v50, v77, v75, v84);
    sub_238B3C9AC(v77, v75);
    v51 = v84[0];
LABEL_82:
    sub_238B3C9AC(v26, v25);

    sub_238B3C9AC(v26, v25);
    v15 = v78;
    v4 = v79;
    v5 = v65;
    if (v51)
    {
      goto LABEL_89;
    }

LABEL_18:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  if (!v29)
  {
    v34 = BYTE6(v25);
    if (v70 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  LODWORD(v34) = HIDWORD(v26) - v26;
  if (__OFSUB__(HIDWORD(v26), v26))
  {
    goto LABEL_91;
  }

  v34 = v34;
  if (v70 <= 1)
  {
    goto LABEL_51;
  }

LABEL_55:
  if (v31 == 2)
  {
    v40 = *(v77 + 16);
    v39 = *(v77 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_90;
    }

    goto LABEL_57;
  }

  if (v34)
  {
LABEL_63:

    sub_238B3C90C(v26, v25);
    sub_238B3C90C(v26, v25);
    sub_238B3C90C(v77, v75);
    v19 = v74;
    sub_238B3C9AC(v77, v75);
    sub_238B3C9AC(v26, v25);

    v20 = v26;
    v21 = v25;
LABEL_16:
    sub_238B3C9AC(v20, v21);
LABEL_17:
    v15 = v78;
    v4 = v79;
    goto LABEL_18;
  }

LABEL_86:

  sub_238B3C90C(v26, v25);
  sub_238B3C90C(v26, v25);
  sub_238B3C90C(v77, v75);
  sub_238B3C9AC(v77, v75);
  sub_238B3C9AC(v26, v25);

LABEL_87:
  v62 = v26;
  v63 = v25;
LABEL_88:
  sub_238B3C9AC(v62, v63);
  v4 = v79;
LABEL_89:
  sub_238B5D0A4(a2);
  v55 = *(v4 + 48) + 56 * v14;
  v57 = *(v55 + 8);
  v56 = *(v55 + 16);
  v58 = *(v55 + 24);
  v59 = *(v55 + 32);
  v60 = *(v55 + 40);
  v61 = *(v55 + 48);
  *a1 = *v55;
  *(a1 + 8) = v57;
  *(a1 + 16) = v56;
  *(a1 + 24) = v58;
  *(a1 + 32) = v59;
  *(a1 + 40) = v60;
  *(a1 + 48) = v61;

  sub_238B3C90C(v60, v61);
  return 0;
}

uint64_t sub_238B597BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
    v2 = sub_238B6CB74();
    v15 = v2;
    sub_238B6CB14();
    if (sub_238B6CB44())
    {
      sub_238B5D154();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_238B59BEC(v9 + 1);
        }

        v2 = v15;
        result = sub_238B6CAA4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_238B6CB44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_238B5999C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600D0, &qword_238B709D8);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v17);
      result = sub_238B6CEA4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_238B59BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_238B6CAA4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_238B59E14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A8, &qword_238B709C8);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v21 = v18[1];
      v20 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v19 + 1);
      sub_238B6C8D4();
      sub_238B6C8D4();
      result = sub_238B6CEA4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v21;
      *(v14 + 16) = v20;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_238B5A0C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A0, &qword_238B709C0);
  v4 = sub_238B6CB64();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v1;
    v6 = 0;
    v37 = (v3 + 56);
    v38 = v3;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    v39 = v4;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v40 = (v9 - 1) & v9;
LABEL_15:
      v18 = (*(v3 + 48) + 56 * (v14 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v23 = v18[3];
      v22 = v18[4];
      v24 = v18[5];
      v25 = v18[6];
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v19 + 1);
      sub_238B6C8D4();
      sub_238B6C8D4();
      sub_238B6CE84();
      if (v25 >> 60 != 15)
      {
        sub_238B6C4E4();
      }

      result = sub_238B6CEA4();
      v5 = v39;
      v26 = -1 << *(v39 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v39 + 48) + 56 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v21;
      *(v13 + 24) = v23;
      *(v13 + 32) = v22;
      *(v13 + 40) = v24;
      *(v13 + 48) = v25;
      ++*(v39 + 16);
      v3 = v38;
      v9 = v40;
    }

    v15 = v6;
    result = v37;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v37[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v37, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v37 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
  return result;
}

unint64_t sub_238B5A3C0(uint64_t a1, uint64_t a2)
{
  sub_238B6CAA4();
  result = sub_238B6CB04();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_238B5A444(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_238B5999C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_238B5B164();
      a2 = v7;
      goto LABEL_12;
    }

    sub_238B5B700(v5 + 1);
  }

  v8 = *v3;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](result);
  v9 = sub_238B6CEA4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HandleType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_238B6CE04();
  __break(1u);
}

void sub_238B5A5A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_238B59BEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_238B5B2A4();
      goto LABEL_12;
    }

    sub_238B5B920(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_238B6CAA4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_238B5D154();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_238B6CAB4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_238B6CE04();
  __break(1u);
}

uint64_t sub_238B5A700(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_238B59E14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_238B5B3F4();
      goto LABEL_23;
    }

    sub_238B5BB34(v6 + 1);
  }

  v8 = *v3;
  sub_238B6CE64();
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v13 = v5[3];
  v12 = v5[4];
  MEMORY[0x23EE72A40](v9 + 1);
  v33 = v10;
  v14 = v11;
  sub_238B6C8D4();
  v15 = v13;
  sub_238B6C8D4();
  result = sub_238B6CEA4();
  v16 = v8 + 56;
  v17 = -1 << *(v8 + 32);
  a2 = result & ~v17;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v8 + 48);
    while (1)
    {
      v20 = (v19 + 40 * a2);
      if (*v20 == v9)
      {
        v21 = v20[3];
        v22 = v20[4];
        v23 = v20[1] == v33 && v20[2] == v14;
        if (v23 || (result = sub_238B6CDF4(), (result & 1) != 0))
        {
          if (v21 == v15 && v22 == v12)
          {
            break;
          }

          result = sub_238B6CDF4();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v18;
      if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = sub_238B6CE04();
    __break(1u);
  }

LABEL_23:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

uint64_t sub_238B5A908(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v75 = *MEMORY[0x277D85DE8];
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    sub_238B5A0C0(v6 + 1);
    goto LABEL_8;
  }

  if (v7 > v6)
  {
    result = sub_238B5B56C();
LABEL_89:
    v51 = *v65;
    *(*v65 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v52 = *(v51 + 48) + 56 * a2;
    v53 = *(v5 + 1);
    *v52 = *v5;
    *(v52 + 16) = v53;
    *(v52 + 32) = *(v5 + 2);
    *(v52 + 48) = *(v5 + 6);
    v54 = *(v51 + 16);
    v38 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v38)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
    }

    *(v51 + 16) = v55;
    return result;
  }

  sub_238B5BDC0(v6 + 1);
LABEL_8:
  v68 = *v3;
  sub_238B6CE64();
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = *(v5 + 2);
  v12 = *(v5 + 3);
  v11 = *(v5 + 4);
  v14 = *(v5 + 5);
  v13 = *(v5 + 6);
  MEMORY[0x23EE72A40](v8 + 1);
  v71 = v10;
  v72 = v9;
  sub_238B6C8D4();
  v69 = v11;
  v70 = v12;
  sub_238B6C8D4();
  v66 = v13 >> 60;
  sub_238B6CE84();
  if (v13 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  result = sub_238B6CEA4();
  v15 = v68;
  v16 = -1 << *(v68 + 32);
  a2 = result & ~v16;
  if (((*(v68 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_89;
  }

  v17 = v14;
  v18 = ~v16;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13 == 0xC000000000000000;
  }

  v20 = !v19;
  v62 = v20;
  v63 = v8;
  v64 = v13 >> 62;
  v67 = v13;
  v21 = __OFSUB__(HIDWORD(v17), v17);
  v59 = v21;
  v61 = BYTE6(v13);
  while (1)
  {
    v22 = (*(v15 + 48) + 56 * a2);
    if (*v22 != v8)
    {
      goto LABEL_24;
    }

    v23 = v22[3];
    v24 = v22[4];
    v26 = v22[5];
    v25 = v22[6];
    if (v22[1] != v72 || v22[2] != v71)
    {
      result = sub_238B6CDF4();
      if ((result & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v23 != v70 || v24 != v69)
    {
      result = sub_238B6CDF4();
      if ((result & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v25 >> 60 == 15)
    {
      if (v66 > 0xE)
      {
        sub_238B3C90C(v26, v25);
        sub_238B3C90C(v17, v67);
        goto LABEL_103;
      }

LABEL_22:
      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v17, v67);
      sub_238B3C9AC(v26, v25);
      result = sub_238B3C9AC(v17, v67);
LABEL_23:
      v15 = v68;
      goto LABEL_24;
    }

    if (v66 > 0xE)
    {
      goto LABEL_22;
    }

    v29 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v30 = 0;
      }

      else
      {
        v30 = v25 == 0xC000000000000000;
      }

      v31 = v64;
      v33 = !v30 || v64 < 3;
      if (((v33 | v62) & 1) == 0)
      {

        v25 = 0xC000000000000000;
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);

        v26 = 0;
        goto LABEL_103;
      }

LABEL_49:
      v34 = 0;
      goto LABEL_50;
    }

    v31 = v64;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_49;
      }

      v42 = *(v26 + 16);
      v41 = *(v26 + 24);
      v38 = __OFSUB__(v41, v42);
      v34 = v41 - v42;
      if (v38)
      {
        goto LABEL_94;
      }
    }

    else if (v29)
    {
      LODWORD(v34) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_95;
      }

      v34 = v34;
    }

    else
    {
      v34 = BYTE6(v25);
    }

LABEL_50:
    if (v31 > 1)
    {
      break;
    }

    v35 = v61;
    if (v31)
    {
      v35 = HIDWORD(v17) - v17;
      if (v59)
      {
        goto LABEL_93;
      }
    }

LABEL_59:
    if (v34 != v35)
    {
      goto LABEL_69;
    }

    if (v34 < 1)
    {
      goto LABEL_102;
    }

    v60 = v5;
    if (v29 > 1)
    {
      LODWORD(v8) = v63;
      if (v29 != 2)
      {
        *&v74[6] = 0;
        *v74 = 0;

        sub_238B3C90C(v26, v25);
        sub_238B3C90C(v26, v25);
        v39 = v17;
        v40 = v67;
        sub_238B3C90C(v17, v67);
        goto LABEL_82;
      }

      v57 = *(v26 + 24);
      v58 = *(v26 + 16);

      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v17, v67);
      v43 = sub_238B6C424();
      if (v43)
      {
        v44 = v43;
        v45 = sub_238B6C444();
        v46 = v58;
        if (__OFSUB__(v58, v45))
        {
          goto LABEL_98;
        }

        v56 = v58 - v45 + v44;
      }

      else
      {
        v56 = 0;
        v46 = v58;
      }

      if (__OFSUB__(v57, v46))
      {
        goto LABEL_97;
      }

      sub_238B6C434();
      v49 = v56;
    }

    else
    {
      LODWORD(v8) = v63;
      if (!v29)
      {
        *v74 = v26;
        *&v74[8] = v25;
        v74[10] = BYTE2(v25);
        v74[11] = BYTE3(v25);
        v74[12] = BYTE4(v25);
        v74[13] = BYTE5(v25);

        sub_238B3C90C(v26, v25);
        sub_238B3C90C(v26, v25);
        v39 = v17;
        v40 = v67;
        sub_238B3C90C(v17, v67);
LABEL_82:
        sub_238B578BC(v74, v39, v40, &v73);
        sub_238B3C9AC(v39, v67);
        v50 = v73;
        goto LABEL_87;
      }

      if (v26 >> 32 < v26)
      {
        goto LABEL_96;
      }

      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v26, v25);
      sub_238B3C90C(v17, v67);
      v47 = sub_238B6C424();
      if (v47)
      {
        v48 = sub_238B6C444();
        if (__OFSUB__(v26, v48))
        {
          goto LABEL_99;
        }

        v47 += v26 - v48;
      }

      sub_238B6C434();
      v49 = v47;
    }

    sub_238B578BC(v49, v17, v67, v74);
    sub_238B3C9AC(v17, v67);
    v50 = v74[0];
LABEL_87:
    sub_238B3C9AC(v26, v25);

    result = sub_238B3C9AC(v26, v25);
    v5 = v60;
    v15 = v68;
    if (v50)
    {
      goto LABEL_104;
    }

LABEL_24:
    a2 = (a2 + 1) & v18;
    if (((*(v68 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  if (v31 == 2)
  {
    v37 = *(v17 + 16);
    v36 = *(v17 + 24);
    v38 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v38)
    {
      goto LABEL_92;
    }

    goto LABEL_59;
  }

  if (v34)
  {
LABEL_69:

    sub_238B3C90C(v26, v25);
    sub_238B3C90C(v26, v25);
    sub_238B3C90C(v17, v67);
    sub_238B3C9AC(v17, v67);
    sub_238B3C9AC(v26, v25);

    result = sub_238B3C9AC(v26, v25);
    LODWORD(v8) = v63;
    goto LABEL_23;
  }

LABEL_102:

  sub_238B3C90C(v26, v25);
  sub_238B3C90C(v26, v25);
  sub_238B3C90C(v17, v67);
  sub_238B3C9AC(v17, v67);
  sub_238B3C9AC(v26, v25);

LABEL_103:
  sub_238B3C9AC(v26, v25);
LABEL_104:
  result = sub_238B6CE04();
  __break(1u);
  return result;
}

void *sub_238B5B164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600D0, &qword_238B709D8);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}