unint64_t sub_25DDCD928(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_25DDDD0C8();

  v11 = 0xD000000000000029;
  v12 = 0x800000025DDE05D0;
  v6 = sub_25DDD2D50();
  MEMORY[0x25F8A4C20](v6);

  MEMORY[0x25F8A4C20](540945696, 0xE400000000000000);
  v7 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(a2 + v7, v5, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v8 = sub_25DDD2D50();
  MEMORY[0x25F8A4C20](v8);

  sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  return v11;
}

uint64_t sub_25DDCDA70(uint64_t a1)
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(a1, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        v6 = 0xEA00000000007365;
        v7 = 0x7479426574697277;
      }

      else
      {
        v6 = 0x800000025DDE0230;
        sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        v7 = 0xD00000000000001CLL;
      }

      goto LABEL_13;
    }

    sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v8 = 0x656D75736572;
LABEL_10:
    v7 = v8 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
    v6 = 0xEE0072656375646FLL;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v8 = 0x6C65636E6163;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v6 = 0xE400000000000000;
    v7 = 1701736302;
  }

  else
  {
    v6 = 0xEB000000006D6165;
    v7 = 0x72745365736F6C63;
  }

LABEL_13:
  MEMORY[0x25F8A4C20](v7, v6);
}

uint64_t sub_25DDCDC50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  return sub_25DDCE908(v1 + v3, a1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
}

uint64_t sub_25DDCDCDC(uint64_t a1)
{
  v3 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(v1 + v6, v5, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  swift_beginAccess();
  sub_25DDCDE24(a1, v1 + v6);
  swift_endAccess();
  v9 = v5;
  v10 = v1;
  nullsub_1();
  sub_25DDCF3B0(a1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  return sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State);
}

uint64_t sub_25DDCDE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_25DDCDED4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_httpBody] = a2;
  *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream] = a1;
  type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v2;
  v14.super_class = ObjectType;

  v6 = a1;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream;
  v9 = *&v7[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream];
  v10 = v7;
  [v9 setDelegate_];
  v11 = qword_27FCCFC30;
  v12 = *&v7[v8];
  if (v11 != -1)
  {
    swift_once();
  }

  MEMORY[0x25F8A4FC0](v12, qword_27FCD0040);

  [*&v7[v8] open];

  return v10;
}

id sub_25DDCE020()
{
  ObjectType = swift_getObjectType();
  nullsub_1();
  [*&v0[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream] setDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_25DDCE200(uint64_t a1)
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_25DDDCDB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  nullsub_1();
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v19 = qword_27FCD0040;
  *v18 = qword_27FCD0040;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  LOBYTE(v19) = sub_25DDDCDC8();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_25DDCE908(a1, v14, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (!result)
    {
      v23 = v37;
      v22 = v38;
      v24 = v8;
      (*(v37 + 32))(v8, v14, v38);
      v25 = v39;
      sub_25DDDCF28();
      v26 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      v27 = v35;
      sub_25DDCE908(v25 + v26, v35, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE970();
      v28 = v36;
      sub_25DDCE908(v25 + v26, v36, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v27, v25 + v26);
      v29 = swift_endAccess();
      MEMORY[0x28223BE20](v29);
      *(&v34 - 2) = v28;
      *(&v34 - 1) = v25;
      nullsub_1();
      sub_25DDCF3B0(v27, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v28, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v12);
      sub_25DDCF3B0(v12, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
      return (*(v23 + 8))(v24, v22);
    }

    if (result == 1)
    {
      sub_25DDCEB68(*(v14 + 1), *(v14 + 2), *(v14 + 3));
      return swift_unknownObjectRelease();
    }

    v31 = v37;
    v30 = v38;
    (*(v37 + 32))(v8, v14, v38);
    sub_25DDDCF48();
    sub_25DDD3BAC(&qword_27FCCE5A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v33 = swift_allocError();
    sub_25DDDCDD8();
    v41 = v33;
    sub_25DDDCF18();
    [*(v39 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) close];
    return (*(v31 + 8))(v8, v30);
  }

  if (result == 3)
  {
    v31 = v37;
    v30 = v38;
    (*(v37 + 32))(v8, v14, v38);
    sub_25DDDCF48();
    sub_25DDD3BAC(&qword_27FCCE5A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v32 = swift_allocError();
    sub_25DDDCDD8();
    v41 = v32;
    sub_25DDDCF18();
    return (*(v31 + 8))(v8, v30);
  }

  if (result != 4)
  {
    return [*(v39 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) close];
  }

  return result;
}

uint64_t sub_25DDCE894()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD00000000000003DLL, 0x800000025DDE0570);
  sub_25DDCDA70(v1);
  return 0;
}

uint64_t sub_25DDCE908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DDCE970()
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v6 = *v4;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    *v1 = v6;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    return (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  if (result > 2)
  {
    goto LABEL_6;
  }

  if (result)
  {
    swift_unknownObjectRelease();
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    result = (*(*(v10 - 8) + 8))(&v4[v9], v10);
    __break(1u);
LABEL_6:
    if (result == 3)
    {
      result = sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDCEB68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v7 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v42 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v42 - v16);
  v18 = sub_25DDDCDB8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v22 = qword_27FCD0040;
  *v21 = qword_27FCD0040;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v23 = v22;
  v24 = sub_25DDDCDC8();
  result = (*(v19 + 8))(v21, v18);
  v26 = a3 >> 1;
  if (a3 >> 1 == a2 || (v24 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream];
  result = [v27 streamStatus];
  if (result != 2)
  {
    nullsub_1();
    v31 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
    swift_beginAccess();
    sub_25DDCE908(&v4[v31], v12, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDD16B0(0, 0, v17);
    v28 = v10;
    sub_25DDCE908(&v4[v31], v10, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_beginAccess();
    sub_25DDCDE24(v12, &v4[v31]);
    v32 = swift_endAccess();
    MEMORY[0x28223BE20](v32);
    *(&v42 - 2) = v10;
    *(&v42 - 1) = v4;
    goto LABEL_11;
  }

  if (__OFSUB__(v26, a2))
  {
    goto LABEL_18;
  }

  v28 = v10;
  result = [v27 write:v43 + a2 maxLength:v26 - a2];
  if (result != -1)
  {
    if (!result)
    {
      nullsub_1();
      v29 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(&v4[v29], v12, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDD1A74(v17);
      sub_25DDCE908(&v4[v29], v10, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v12, &v4[v29]);
      v30 = swift_endAccess();
      MEMORY[0x28223BE20](v30);
      *(&v42 - 2) = v10;
      *(&v42 - 1) = v4;
LABEL_11:
      nullsub_1();
LABEL_12:
      sub_25DDCF3B0(v12, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v28, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v17);
      return sub_25DDCF3B0(v17, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    }

    if (result >= 1)
    {
      v37 = MEMORY[0x28223BE20](result);
      *(&v42 - 2) = v37;
      v38 = v37;
      nullsub_1();
      v39 = [v27 hasSpaceAvailable];
      v40 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(&v4[v40], v12, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDD16B0(v38, v39, v17);
      sub_25DDCE908(&v4[v40], v10, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v12, &v4[v40]);
      v41 = swift_endAccess();
      MEMORY[0x28223BE20](v41);
      *(&v42 - 2) = v10;
      *(&v42 - 1) = v4;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  MEMORY[0x28223BE20](-1);
  *(&v42 - 2) = v4;
  nullsub_1();
  result = [v27 streamError];
  if (result)
  {
    v33 = result;
    v34 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
    swift_beginAccess();
    sub_25DDCE908(&v4[v34], v12, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v35 = v42;
    sub_25DDD1CF4(v33, v42);

    sub_25DDCE908(&v4[v34], v28, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_beginAccess();
    sub_25DDCDE24(v12, &v4[v34]);
    v36 = swift_endAccess();
    MEMORY[0x28223BE20](v36);
    *(&v42 - 2) = v28;
    *(&v42 - 1) = v4;
    nullsub_1();
    v17 = v35;
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25DDCF3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DDCF410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  v9 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v27 - v13;
  v15 = sub_25DDDCDB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v19 = qword_27FCD0040;
  *v18 = qword_27FCD0040;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  LOBYTE(v19) = sub_25DDDCDC8();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v22 = sub_25DDDCF98();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v1;
    v23[5] = ObjectType;
    v24 = v1;
    sub_25DDD1278(0, 0, v14, &unk_25DDDE8E8, v23);
    v25 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
    swift_beginAccess();
    sub_25DDCE908(v24 + v25, v8, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDD14E4();
    sub_25DDCE908(v24 + v25, v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_beginAccess();
    sub_25DDCDE24(v8, v24 + v25);
    v26 = swift_endAccess();
    MEMORY[0x28223BE20](v26);
    v27[-2] = v6;
    v27[-1] = v24;
    nullsub_1();
    sub_25DDCF3B0(v8, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDCF3B0(v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDCE200(v11);

    return sub_25DDCF3B0(v11, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDCF830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_25DDDCD88();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_25DDDCDA8();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_25DDDCD48();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v9 = sub_25DDDCDB8();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDCFA04, 0, 0);
}

uint64_t sub_25DDCFA04()
{
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = qword_27FCD0040;
  v0[28] = qword_27FCD0040;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D851F0], v3);
  v5 = v4;
  LOBYTE(v4) = sub_25DDDCDC8();
  v6 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    sub_25DDDCD28();
    v9 = sub_25DDD3BAC(&qword_27FCCE948, MEMORY[0x277D37A28], MEMORY[0x277D37A30]);
    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = sub_25DDCFBA0;
    v7 = v0[22];
    v6 = (v0 + 8);
    v8 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200308](v6, v7, v8);
}

uint64_t sub_25DDCFBA0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_25DDD0160;
  }

  else
  {
    v2 = sub_25DDCFCB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDCFCB4()
{
  v1 = v0[5];
  *(v0 + 248) = v0[4];
  *(v0 + 264) = v1;
  return MEMORY[0x2822009F8](sub_25DDCFCE0, 0, 0);
}

uint64_t sub_25DDCFCE0()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[34];
    v20 = *(v0 + 16);
    v4 = v0[14];
    v3 = v0[15];
    v5 = swift_task_alloc();
    v0[35] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    *(v5 + 32) = v20;
    *(v5 + 48) = v2;
    *(v5 + 56) = v3;
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = sub_25DDD002C;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000011, 0x800000025DDE03D0, sub_25DDD3940, v5, v7);
  }

  else
  {
    v8 = v0[21];
    v9 = v0[18];
    v18 = v0[20];
    v19 = v0[19];
    v10 = v0[16];
    v17 = v0[17];
    v11 = v0[14];
    (*(v0[23] + 8))();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v0[6] = sub_25DDD3920;
    v0[7] = v12;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_25DDD0E2C;
    v0[5] = &block_descriptor;
    v13 = _Block_copy(v0 + 2);
    v14 = v11;
    sub_25DDDCD98();
    v0[13] = MEMORY[0x277D84F90];
    sub_25DDD3BAC(&qword_27FCCE950, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE958, "*\v");
    sub_25DDD3BF4(&qword_27FCCE960, &qword_27FCCE958, "*\v");
    sub_25DDDD098();
    MEMORY[0x25F8A4DE0](0, v8, v9, v13);
    _Block_release(v13);
    (*(v17 + 8))(v9, v10);
    (*(v18 + 8))(v8, v19);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25DDD002C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_25DDD0388;
  }

  else
  {
    v2 = sub_25DDD02A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDD0160()
{
  *(v0 + 96) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_25DDD01F4, 0, 0);
}

uint64_t sub_25DDD01F4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDD02A4()
{
  swift_unknownObjectRelease();
  v1 = sub_25DDD3BAC(&qword_27FCCE948, MEMORY[0x277D37A28], MEMORY[0x277D37A30]);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_25DDCFBA0;
  v3 = *(v0 + 176);

  return MEMORY[0x282200308](v0 + 64, v3, v1);
}

uint64_t sub_25DDD0388()
{
  swift_unknownObjectRelease();
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDD0440()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25DDB8C84;

  return sub_25DDCF830(v4, v5, v6, v2, v3);
}

uint64_t sub_25DDD04D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v29 = a2;
  v30 = a3;
  v7 = sub_25DDDCD88();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25DDDCDA8();
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v24 = qword_27FCD0040;
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v19 = v29;
  v18 = v30;
  *(v17 + 2) = v29;
  *(v17 + 3) = v18;
  v20 = v26;
  *(v17 + 4) = v25;
  *(v17 + 5) = v20;
  *(v17 + 6) = v27;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_25DDD3950;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25DDD0E2C;
  aBlock[3] = &block_descriptor_31;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  swift_unknownObjectRetain();
  sub_25DDDCD98();
  v33 = MEMORY[0x277D84F90];
  sub_25DDD3BAC(&qword_27FCCE950, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE958, "*\v");
  sub_25DDD3BF4(&qword_27FCCE960, &qword_27FCCE958, "*\v");
  sub_25DDDD098();
  MEMORY[0x25F8A4DE0](0, v11, v9, v21);
  _Block_release(v21);
  (*(v32 + 8))(v9, v7);
  (*(v28 + 8))(v11, v31);
}

uint64_t sub_25DDD08C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v10 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  nullsub_1();
  v19 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(a1 + v19, v15, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDD0B44(a2, a3, a4, v21, v22, v18);
  sub_25DDCE908(a1 + v19, v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  swift_beginAccess();
  sub_25DDCDE24(v15, a1 + v19);
  swift_endAccess();
  v23 = v13;
  v24 = a1;
  nullsub_1();
  sub_25DDCF3B0(v15, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCF3B0(v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCE200(v18);
  return sub_25DDCF3B0(v18, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
}

uint64_t sub_25DDD0B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v7, v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 3)
    {
      sub_25DDCF3B0(v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
      (*(*(v18 - 8) + 16))(a6, a5, v18);
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (result != 2)
    {
      goto LABEL_13;
    }

    v22 = &unk_27FCCE898;
    v23 = 48;
    v24 = &unk_25DDDE8D0;
LABEL_12:
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v24) + v23);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    result = (*(*(v26 - 8) + 8))(&v16[v25], v26);
LABEL_13:
    __break(1u);
    return result;
  }

  if (result)
  {
    swift_unknownObjectRelease();
    v22 = &qword_27FCCE890;
    v23 = 64;
    v24 = &qword_25DDDE8C8;
    goto LABEL_12;
  }

  sub_25DDCF3B0(v7, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v19 = *v16;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
  *v7 = v19;
  *(v7 + 8) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  (*(*(v21 - 8) + 16))(v7 + v20, a5, v21);
  swift_storeEnumTagMultiPayload();
  if (v19 == 1)
  {
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain_n();
  }

  else
  {
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25DDD0E2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25DDD0E70(uint64_t a1)
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  nullsub_1();
  v11 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(a1 + v11, v7, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDD10C8();
  sub_25DDCE908(a1 + v11, v5, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  swift_beginAccess();
  sub_25DDCDE24(v7, a1 + v11);
  swift_endAccess();
  v14 = v5;
  v15 = a1;
  nullsub_1();
  sub_25DDCF3B0(v7, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCE200(v10);
  return sub_25DDCF3B0(v10, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
}

uint64_t sub_25DDD10C8()
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v1 = 0;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
LABEL_10:
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  result = (*(*(v8 - 8) + 8))(&v4[v7], v8);
  __break(1u);
  return result;
}

uint64_t sub_25DDD1278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25DDD3848(a3, v22 - v9);
  v11 = sub_25DDDCF98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25DDD38B8(v10);
  }

  else
  {
    sub_25DDDCF88();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25DDDCF08();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25DDDCE58() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25DDD38B8(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25DDD38B8(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25DDD14E4()
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v1 = 0;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result > 1)
  {
    if (result != 2)
    {
LABEL_9:
      result = sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      goto LABEL_10;
    }

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
LABEL_8:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    (*(*(v7 - 8) + 8))(&v4[v6], v7);
    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    swift_unknownObjectRelease();
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25DDD16B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v43 = a2;
  v44 = a1;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v3, v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v42 = v9;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
LABEL_14:
    if (result <= 2)
    {
      if (!result)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0);
      result = (*(v6 + 8))(&v11[*(v36 + 48)], v5);
      __break(1u);
    }

    if (result == 3)
    {
      result = sub_25DDCF3B0(v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      __break(1u);
    }

    goto LABEL_19;
  }

  sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v13 = *v11;
  v14 = *(v11 + 1);
  v39 = *(v11 + 2);
  v15 = *(v11 + 3);
  v16 = *(v11 + 4);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8);
  v18 = *(v17 + 64);
  v38 = v6;
  v19 = *(v6 + 32);
  v6 += 32;
  v40 = v19;
  result = (v19)(v8, &v11[v18], v5);
  if (__OFSUB__(v16 >> 1, v15))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v44;
  v20 = v13 ^ 1;
  if (((v16 >> 1) - v15) < v44)
  {
    v20 = 1;
  }

  if (v20)
  {
    goto LABEL_13;
  }

  v21 = v8;
  v22 = sub_25DDD2B80(v44, v14, v39, v15, v16);
  if (v24 == v25 >> 1)
  {
    swift_unknownObjectRelease();
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    *v4 = v43 & 1;
    (*(v38 + 16))(v4 + v26, v8, v5);
    swift_storeEnumTagMultiPayload();
    v40(v41, v8, v5);
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = *(v17 + 64);
    v31 = v21;
    v32 = v43;
    *v4 = v43 & 1;
    v33 = v22;
    *(v4 + 8) = v22;
    *(v4 + 16) = v27;
    *(v4 + 24) = v24;
    *(v4 + 32) = v25;
    v40((v4 + v30), v31, v5);
    swift_storeEnumTagMultiPayload();
    if (v32)
    {
      v34 = v33;
      v35 = v41;
      *v41 = v34;
      v35[1] = v27;
      v35[2] = v28;
      v35[3] = v29;
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DDD1A74@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v9, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      *v1 = 0;
      swift_storeEnumTagMultiPayload();
LABEL_8:
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_unknownObjectRelease();
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
LABEL_7:
    v12 = *(v4 + 32);
    v12(v6, &v9[v11], v3);
    *v1 = 0;
    swift_storeEnumTagMultiPayload();
    v12(a1, v6, v3);
    goto LABEL_8;
  }

  if (result == 2)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    goto LABEL_7;
  }

  if (result == 3)
  {
    result = sub_25DDCF3B0(v9, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  }

  __break(1u);
  return result;
}

id sub_25DDD1CF4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v3, v12, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      goto LABEL_4;
    }

    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_unknownObjectRelease();
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
LABEL_8:
    v15 = *(v7 + 32);
    v15(v9, &v12[v14], v6);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v15(a2, v9, v6);
    goto LABEL_9;
  }

  if (result == 2)
  {
    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    goto LABEL_8;
  }

  if (result == 4)
  {
LABEL_4:
    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
LABEL_9:
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  __break(1u);
  return result;
}

void sub_25DDD1FA8(void *a1, uint64_t a2)
{
  v41 = a1;
  v4 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - v8;
  v9 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_25DDDCDB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v21 = qword_27FCD0040;
  *v20 = qword_27FCD0040;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_25DDDCDC8();
  v23 = (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  MEMORY[0x28223BE20](v23);
  *(&v40 - 2) = a2;
  nullsub_1();
  if (a2 > 7)
  {
    if (a2 != 8)
    {
      if (a2 == 16)
      {
        v30 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
        swift_beginAccess();
        sub_25DDCE908(v2 + v30, v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
        v26 = v42;
        v31 = v2;
        sub_25DDD1A74(v42);
        v28 = v43;
        sub_25DDCE908(v31 + v30, v43, type metadata accessor for HTTPBodyOutputStreamBridge.State);
        swift_beginAccess();
        sub_25DDCDE24(v14, v31 + v30);
        v32 = swift_endAccess();
        MEMORY[0x28223BE20](v32);
        *(&v40 - 2) = v28;
        *(&v40 - 1) = v31;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v34 = [v41 streamError];
    if (v34)
    {
      v35 = v34;
      v36 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(v2 + v36, v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v37 = v2;
      sub_25DDD1CF4(v35, v7);

      v38 = v43;
      sub_25DDCE908(v37 + v36, v43, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v14, v37 + v36);
      v39 = swift_endAccess();
      MEMORY[0x28223BE20](v39);
      *(&v40 - 2) = v38;
      *(&v40 - 1) = v37;
      nullsub_1();
      sub_25DDCF3B0(v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v38, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v7);
      sub_25DDCF3B0(v7, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
      return;
    }

    goto LABEL_19;
  }

  if (a2 != 1)
  {
    if (a2 == 4)
    {
      v25 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(v2 + v25, v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v26 = v42;
      v27 = v2;
      sub_25DDD2730(v42);
      v28 = v43;
      sub_25DDCE908(v27 + v25, v43, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v14, v27 + v25);
      v29 = swift_endAccess();
      MEMORY[0x28223BE20](v29);
      *(&v40 - 2) = v28;
      *(&v40 - 1) = v27;
LABEL_11:
      nullsub_1();
      sub_25DDCF3B0(v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v28, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v26);
      sub_25DDCF3B0(v26, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
      return;
    }

LABEL_12:
    MEMORY[0x28223BE20](v24);
    *(&v40 - 2) = a2;
    nullsub_1();
    return;
  }

  v33 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(v2 + v33, v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  LODWORD(v33) = swift_getEnumCaseMultiPayload();
  sub_25DDCF3B0(v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  if (v33 == 4)
  {
    sub_25DDCF410();
  }

  else
  {
    nullsub_1();
  }
}

uint64_t sub_25DDD2730@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v9, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v12 = *(v9 + 1);
      v11 = *(v9 + 2);
      v13 = *(v9 + 4);
      v25 = *(v9 + 3);
      v26 = v11;
      v27 = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8);
      v15 = *(v4 + 32);
      v15(v6, &v9[*(v14 + 64)], v3);
      v16 = *(v14 + 64);
      *v1 = 1;
      v18 = v25;
      v17 = v26;
      *(v1 + 8) = v12;
      *(v1 + 16) = v17;
      v19 = v27;
      *(v1 + 24) = v18;
      *(v1 + 32) = v19;
      v15((v1 + v16), v6, v3);
      swift_storeEnumTagMultiPayload();
      *a1 = v12;
      a1[1] = v17;
      v20 = v27;
      a1[2] = v18;
      a1[3] = v20;
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v1 = 1;
    goto LABEL_9;
  }

  if (result == 2)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0);
    v22 = *(v4 + 32);
    v22(v6, &v9[*(v21 + 48)], v3);
    v23 = *(v21 + 48);
    *v1 = 1;
    v22((v1 + v23), v6, v3);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  if (result != 3)
  {
    __break(1u);
    return result;
  }

  sub_25DDCF3B0(v9, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  nullsub_1();
LABEL_10:
  type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25DDD2B80(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25DDD2BEC()
{
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD000000000000027, 0x800000025DDE03A0);
  type metadata accessor for Event(0);
  sub_25DDDD128();
  MEMORY[0x25F8A4C20](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25DDD2C90()
{
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD00000000000001ELL, 0x800000025DDE0380);
  type metadata accessor for Event(0);
  sub_25DDDD128();
  MEMORY[0x25F8A4C20](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25DDD2D50()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DDCE908(v0, v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v3;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25DDDD0C8();

      v30 = 0xD00000000000001BLL;
      v31 = 0x800000025DDE01C0;
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v13)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
      MEMORY[0x25F8A4C20](v14, v15);

      MEMORY[0x25F8A4C20](694100012, 0xE400000000000000);
      v11 = v30;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
      (*(*(v17 - 8) + 8))(v3 + v16, v17);
      return v11;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x6C616974696E69;
    }

    v5 = *v3;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25DDDD0C8();

    v30 = 0x28206465736F6C63;
    v31 = 0xEF203A726F727265;
    v29 = v5;
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    v7 = sub_25DDDCE48();
    MEMORY[0x25F8A4C20](v7);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);

    return v30;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *v3;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25DDDD0C8();

    v30 = 0xD000000000000020;
    v31 = 0x800000025DDE0200;
    if (v8)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x25F8A4C20](v9, v10);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);
    return v30;
  }

  v18 = *v3;
  v19 = v3[3];
  v20 = v3[4];
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_25DDDD0C8();

  v30 = 0xD00000000000001ALL;
  v31 = 0x800000025DDE01E0;
  v21 = v18 == 0;
  if (v18)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
  MEMORY[0x25F8A4C20](v22, v23);

  result = MEMORY[0x25F8A4C20](5972012, 0xE300000000000000);
  if (!__OFSUB__(v20 >> 1, v19))
  {
    v29 = (v20 >> 1) - v19;
    v26 = sub_25DDDD178();
    MEMORY[0x25F8A4C20](v26);

    MEMORY[0x25F8A4C20](0x295D736574796220, 0xE800000000000000);
    swift_unknownObjectRelease();
    v11 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    (*(*(v27 - 8) + 8))(v3 + v24, v27);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDD319C()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v0, v3, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        return 0x7479426574697277;
      }

      else
      {
        sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        return 0xD00000000000001CLL;
      }
    }

    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v6 = 0x656D75736572;
    return v6 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v6 = 0x6C65636E6163;
    return v6 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 1701736302;
  }

  else
  {
    return 0x72745365736F6C63;
  }
}

uint64_t sub_25DDD3398(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DDD33D0(uint64_t a1)
{
  result = type metadata accessor for HTTPBodyOutputStreamBridge.State(319);
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

void sub_25DDD347C(uint64_t a1)
{
  sub_25DDD3518();
  if (v1 <= 0x3F)
  {
    sub_25DDD3548(319);
    if (v2 <= 0x3F)
    {
      sub_25DDD35DC(319);
      if (v3 <= 0x3F)
      {
        sub_25DDD3654(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25DDD3518()
{
  result = qword_27FCCE908;
  if (!qword_27FCCE908)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27FCCE908);
  }

  return result;
}

void sub_25DDD3548(uint64_t a1)
{
  if (!qword_27FCCE910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE688, &qword_25DDDE730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FCCE880, &qword_25DDDE8C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FCCE910);
    }
  }
}

void sub_25DDD35DC(uint64_t a1)
{
  if (!qword_27FCCE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FCCE880, &qword_25DDDE8C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FCCE920);
    }
  }
}

void sub_25DDD3654(uint64_t a1)
{
  if (!qword_27FCCE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    v1 = sub_25DDDD088();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCCE928);
    }
  }
}

void sub_25DDD36B8(uint64_t a1)
{
  sub_25DDD3758(319);
  if (v1 <= 0x3F)
  {
    sub_25DDD37F8(319, &unk_27FCCE938, MEMORY[0x277D84B78], MEMORY[0x277D83F98]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DDD3758(uint64_t a1)
{
  if (!qword_27FCCE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    v1 = sub_25DDDCF38();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCCE930);
    }
  }
}

void sub_25DDD37F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_25DDD3848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DDD38B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25DDD3950()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_25DDD08C4(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_25DDD39C8()
{
  sub_25DDDD0C8();

  v0 = sub_25DDDD178();
  MEMORY[0x25F8A4C20](v0);

  MEMORY[0x25F8A4C20](0xD000000000000011, 0x800000025DDE0520);
  return 0xD00000000000001DLL;
}

id sub_25DDD3A80()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD00000000000003CLL, 0x800000025DDE04C0);
  result = [*(v1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) streamError];
  if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDD128();

    MEMORY[0x25F8A4C20](46, 0xE100000000000000);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25DDD3B60()
{
  result = qword_27FCCE968;
  if (!qword_27FCCE968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCCE968);
  }

  return result;
}

uint64_t sub_25DDD3BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25DDD3BF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *sub_25DDD3C5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25DDD3C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68);
  v8[11] = swift_task_alloc();
  v9 = sub_25DDDCAB8();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_25DDDCB88();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_25DDDC9F8();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD3E44, 0, 0);
}

uint64_t sub_25DDD3E44()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 32);
  (*(*(v0 + 128) + 16))(v2, *(v0 + 24), *(v0 + 120));
  (*(v5 + 16))(v3, v6, v4);
  sub_25DDD7778(v2, v3, v1);
  v7 = *(v0 + 72);
  v18 = *(v0 + 40);
  v20 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = sub_25DDDC9A8();
  v10 = &selRef_dataTaskWithRequest_;
  if (v8)
  {
    v10 = &selRef_uploadTaskWithStreamedRequest_;
  }

  v11 = [v7 *v10];
  *(v0 + 168) = v11;

  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *(v12 + 16) = v19;
  *(v12 + 32) = v21;
  *(v12 + 48) = v11;
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *(v13 + 16) = v11;
  v14 = v11;
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_25DDD4088;
  v16 = *(v0 + 88);

  return MEMORY[0x282200830](v16, &unk_25DDDEA78);
}

uint64_t sub_25DDD4088()
{
  v2 = *(*v1 + 168);
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_25DDD4304;
  }

  else
  {
    v3 = sub_25DDD41F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DDD41F4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 16);

  (*(v3 + 8))(v1, v2);
  v7 = *(v4 + *(v5 + 48));
  v8 = sub_25DDDCBD8();
  (*(*(v8 - 8) + 32))(v6, v4, v8);

  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t sub_25DDD4304()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25DDD43B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_25DDDCD08();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_25DDDCD38();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD44AC, 0, 0);
}

uint64_t sub_25DDD44AC()
{
  sub_25DDDCFA8();
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  type metadata accessor for BidirectionalStreamingURLSessionDelegate(0);

  v6 = sub_25DDCA290(v5, v4, v3, v1);
  v0[17] = v6;
  v7 = swift_task_alloc();
  v0[18] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  v8 = swift_task_alloc();
  v0[19] = v8;
  v9 = sub_25DDD4C94();
  *v8 = v0;
  v8[1] = sub_25DDD464C;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000068, 0x800000025DDE0620, sub_25DDD4C8C, v7, v9);
}

uint64_t sub_25DDD464C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25DDD4938;
  }

  else
  {

    v2 = sub_25DDD4768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDD4768()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 40);
  sub_25DDDCD58();
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStream;
  swift_beginAccess();
  *(v0 + 48) = *(v2 + v8);

  v9 = v7;
  sub_25DDD6984(v9, v3);
  (*(v5 + 104))(v4, *MEMORY[0x277D379C8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9A0, &unk_25DDDEA80);
  sub_25DDD4CE0();
  v10 = sub_25DDDCD78();
  sub_25DDDCFA8();
  if (v1)
  {
    v11 = *(v0 + 136);
  }

  else
  {
    sub_25DDD6A40(v9, *(v0 + 56));
    v14 = *(v0 + 56);

    *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68) + 48)) = v10;
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25DDD4938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDD49B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DDB8C84;

  return sub_25DDD43B8(a1, v4, v5, v6, v7, v8);
}

id sub_25DDD4A7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  sub_25DDCA024(v8, a2 + v11);
  swift_endAccess();
  [a3 setDelegate_];
  return [a3 resume];
}

id sub_25DDD4BE0()
{
  v1 = *(v0 + 16);
  nullsub_1();

  return [v1 cancel];
}

unint64_t sub_25DDD4C94()
{
  result = qword_27FCCE998;
  if (!qword_27FCCE998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCCE998);
  }

  return result;
}

unint64_t sub_25DDD4CE0()
{
  result = qword_27FCCE9A8;
  if (!qword_27FCCE9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE9A0, &unk_25DDDEA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE9A8);
  }

  return result;
}

int64x2_t URLSessionTransport.Configuration.init(session:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(0x4000uLL);
  *(a2 + 8) = result;
  *(a2 + 24) = 0x8000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_25DDD4DCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_25DDD4DF0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 8) = result;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4 & 1;
  return result;
}

id sub_25DDD4E04()
{
  v0 = [objc_opt_self() sharedSession];

  return v0;
}

id URLSessionTransport.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return v2;
}

__n128 URLSessionTransport.configuration.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(a1 + 32);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

int64x2_t sub_25DDD4EE8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() sharedSession];
  result = vdupq_n_s64(0x4000uLL);
  *(a1 + 8) = result;
  *(a1 + 24) = 0x8000;
  *(a1 + 32) = 0;
  return result;
}

__n128 URLSessionTransport.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t URLSessionTransport.send(_:body:baseURL:operationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68);
  *(v5 + 64) = swift_task_alloc();
  v6 = sub_25DDDCAB8();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_25DDDCB88();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = sub_25DDDC9F8();
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *v4;
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 152) = *(v4 + 1);
  *(v5 + 168) = v4[3];
  *(v5 + 248) = *(v4 + 32);

  return MEMORY[0x2822009F8](sub_25DDD513C, 0, 0);
}

uint64_t sub_25DDD513C()
{
  if (*(v0 + 248))
  {
    sub_25DDDCFA8();
    v1 = *(v0 + 136);
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 48);
    (*(*(v0 + 104) + 16))(v2, *(v0 + 32), *(v0 + 96));
    (*(v5 + 16))(v3, v6, v4);
    sub_25DDD7778(v2, v3, v1);
    v16 = *(v0 + 40);
    if (v16)
    {

      v17 = swift_task_alloc();
      *(v0 + 184) = v17;
      *v17 = v0;
      v17[1] = sub_25DDD5620;

      return MEMORY[0x282197EB8](v16, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      sub_25DDDCFA8();
      *(v0 + 16) = 0;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
      v25 = *(v0 + 136);
      v21 = sub_25DDC9A38(v0 + 16, v18, v19, v20);
      *(v0 + 216) = v21;
      v22 = swift_task_alloc();
      *(v0 + 224) = v22;
      v22[1] = vextq_s8(v25, v25, 8uLL);
      v22[2].i64[0] = v21;
      v23 = swift_task_alloc();
      *(v0 + 232) = v23;
      *v23 = v0;
      v23[1] = sub_25DDD59CC;
      v24 = *(v0 + 64);

      return MEMORY[0x282200830](v24, &unk_25DDDEAB0);
    }
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_25DDD5498;
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);

    return sub_25DDD3C84(v13, v14, v11, v12, v10, v8, v9);
  }
}

uint64_t sub_25DDD5498(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25DDD5620(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_25DDD5924;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_25DDD5754;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25DDD5754()
{
  sub_25DDDC9E8();
  v1 = v0[24];
  sub_25DDDCFA8();
  if (v1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[2] = 0;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
    v11 = *(v0 + 17);
    v7 = sub_25DDC9A38((v0 + 2), v4, v5, v6);
    v0[27] = v7;
    v8 = swift_task_alloc();
    v0[28] = v8;
    v8[1] = vextq_s8(v11, v11, 8uLL);
    v8[2].i64[0] = v7;
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_25DDD59CC;
    v10 = v0[8];

    return MEMORY[0x282200830](v10, &unk_25DDDEAB0);
  }
}

uint64_t sub_25DDD5924()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDD59CC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_25DDD5BF8;
  }

  else
  {

    v2 = sub_25DDD5AE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDD5AE8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[3];

  v7 = *(v4 + *(v5 + 48));
  v8 = sub_25DDDCBD8();
  (*(*(v8 - 8) + 32))(v6, v4, v8);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_25DDD5BF8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25DDD5CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68);
  v5[9] = swift_task_alloc();
  v6 = sub_25DDDCAB8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_25DDDCB88();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_25DDDC9F8();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD5E74, 0, 0);
}

uint64_t sub_25DDD5E74(uint64_t a1)
{
  sub_25DDDCFA8();
  v2 = v1[18];
  v3 = v1[15];
  v4 = v1[12];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[5];
  (*(v1[14] + 16))(v3, v1[4], v1[13]);
  (*(v6 + 16))(v4, v7, v5);
  sub_25DDD7778(v3, v4, v2);
  v8 = v1[6];
  if (v8)
  {

    v9 = swift_task_alloc();
    v1[19] = v9;
    *v9 = v1;
    v9[1] = sub_25DDD6134;

    return MEMORY[0x282197EB8](v8, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_25DDDCFA8();
    v10 = v1[18];
    v11 = v1[7];
    v1[2] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
    v15 = sub_25DDC9A38((v1 + 2), v12, v13, v14);
    v1[23] = v15;
    v16 = swift_task_alloc();
    v1[24] = v16;
    v16[2] = v11;
    v16[3] = v10;
    v16[4] = v15;
    v17 = swift_task_alloc();
    v1[25] = v17;
    *v17 = v1;
    v17[1] = sub_25DDD6430;
    v18 = v1[9];

    return MEMORY[0x282200830](v18, &unk_25DDDEAC0);
  }
}

uint64_t sub_25DDD6134(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_25DDD665C;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_25DDD6268;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25DDD6268()
{
  sub_25DDDC9E8();
  v1 = v0[20];
  sub_25DDDCFA8();
  if (v1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[18];
    v5 = v0[7];
    v0[2] = 0;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
    v9 = sub_25DDC9A38((v0 + 2), v6, v7, v8);
    v0[23] = v9;
    v10 = swift_task_alloc();
    v0[24] = v10;
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = v9;
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_25DDD6430;
    v12 = v0[9];

    return MEMORY[0x282200830](v12, &unk_25DDDEAC0);
  }
}

uint64_t sub_25DDD6430()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_25DDD6704;
  }

  else
  {

    v2 = sub_25DDD654C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDD654C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[3];

  v7 = *(v4 + *(v5 + 48));
  v8 = sub_25DDDCBD8();
  (*(*(v8 - 8) + 32))(v6, v4, v8);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_25DDD665C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDD6704()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25DDD67C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25DDD6884;

  return URLSessionTransport.send(_:body:baseURL:operationID:)(a1, a2, a3, a4);
}

uint64_t sub_25DDD6884(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_25DDD6984@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 expectedContentLength] == -1)
  {

    v5 = MEMORY[0x277D37A20];
  }

  else
  {
    v4 = [a1 expectedContentLength];

    *a2 = v4;
    v5 = MEMORY[0x277D37A18];
  }

  v6 = *v5;
  v7 = sub_25DDDCD38();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

void sub_25DDD6A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25DDDCC88();
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B8, &qword_25DDDEAC8);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = v46 - v8;
  v9 = sub_25DDDCC28();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = v46 - v14;
  v57 = sub_25DDDCB28();
  MEMORY[0x28223BE20](v57);
  v15 = sub_25DDDCBB8();
  MEMORY[0x28223BE20](v15 - 8);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v16;
  v53 = v10;
  v18 = a2;
  v19 = a1;
  if ([v17 statusCode] > 0x3E7)
  {

    a1 = v17;
LABEL_4:
    type metadata accessor for URLSessionTransportError(0);
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError, &unk_25DDDEB38);
    swift_allocError();
    *v20 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v52 = v19;
  MEMORY[0x25F8A4920]([v17 statusCode], 0, 0xE000000000000000);
  sub_25DDDCB18();
  sub_25DDDCBC8();
  v21 = [v17 allHeaderFields];
  v22 = sub_25DDDCDE8();

  v23 = sub_25DDD7094(v22);

  if (v23)
  {
    v50 = v13;
    v51 = v18;
    v55 = v9;
    v46[1] = v2;
    v24 = *(v23 + 16);
    v25 = sub_25DDDCB98();
    MEMORY[0x25F8A4880](v24);
    v25(v61, 0);
    v26 = 0;
    v56 = v23;
    v29 = *(v23 + 64);
    v28 = v23 + 64;
    v27 = v29;
    v30 = 1 << *(v28 - 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v27;
    v33 = (v30 + 63) >> 6;
    v54 = (v53 + 48);
    v48 = (v53 + 16);
    v49 = (v53 + 32);
    v47 = (v53 + 8);
    v34 = v59;
    v35 = v55;
    if ((v31 & v27) != 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    while (1)
    {
      v40 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v40 >= v33)
      {

        goto LABEL_19;
      }

      v32 = *(v28 + 8 * v40);
      ++v26;
      if (v32)
      {
        while (1)
        {
          v41 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          v42 = (*(v56 + 56) + ((v40 << 10) | (16 * v41)));
          v44 = *v42;
          v43 = v42[1];

          sub_25DDDCC38();
          if ((*v54)(v34, 1, v35) == 1)
          {

            sub_25DDCC9E4(v34, &qword_27FCCE9B8, &qword_25DDDEAC8);
            v26 = v40;
            if (!v32)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v36 = *v49;
            v53 = v44;
            v37 = v60;
            v36();
            v38 = v50;
            (*v48)(v50, v37, v35);
            sub_25DDD7374(v38, v53, v43, v58);
            v53 = sub_25DDDCB98();
            v39 = MEMORY[0x277D0F9A8];
            sub_25DDDC148(&qword_27FCCE9C8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C8]);
            sub_25DDDCFE8();
            sub_25DDDC148(&qword_27FCCE9D0, v39, MEMORY[0x277D0F9D0]);
            v34 = v59;
            sub_25DDDD038();
            (v53)(v61, 0);
            (*v47)(v60, v35);
            v26 = v40;
            if (!v32)
            {
              goto LABEL_12;
            }
          }

LABEL_11:
          v40 = v26;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v45 = v52;
  }
}

unint64_t sub_25DDD7094(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA48, "|\t");
    v2 = sub_25DDDD168();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_25DDDC5C0(*(v1 + 48) + 40 * v15, v28);
    sub_25DDDC61C(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_25DDDC5C0(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_25DDCC9E4(v25, &qword_27FCCEA80, &qword_25DDDECD8);

      goto LABEL_22;
    }

    sub_25DDDC61C(v26 + 8, v24);
    sub_25DDCC9E4(v25, &qword_27FCCEA80, &qword_25DDDECD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_25DDDAAB0(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_25DDD7374@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v37 = sub_25DDDCC88();
  v8 = *(v37 - 8);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v32 - v14;
  v15 = sub_25DDDCC28();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25DDD9088(a2, a3))
  {
    (*(v16 + 16))(v18, a1, v15);
    sub_25DDDCC48();
    return (*(v16 + 8))(a1, v15);
  }

  v33 = 0;
  v34 = v15;
  v20 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v20 = a2;
  }

  v21 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v21 = 11;
  }

  isStackAllocationSafe = sub_25DDDC3B0(0xFuLL, v21 | (v20 << 16), a2, a3);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v23 = isStackAllocationSafe;
  if (isStackAllocationSafe > 1024)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v15 = swift_slowAlloc();
      v29 = v36;
      sub_25DDD9220(v15, v23, a2, a3, a1);
      v30 = v33;
      if (!v33)
      {

        MEMORY[0x25F8A54E0](v15, -1, -1);
        (*(v16 + 8))(a1, v34);
        return (*(v8 + 32))(a4, v29, v37);
      }

      goto LABEL_17;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  sub_25DDD9220(&v32 - v24, v23, a2, a3, a1);

  if (v33)
  {
    v31 = v33;
    swift_willThrow();

    __break(1u);
LABEL_17:

    result = MEMORY[0x25F8A54E0](v15, -1, -1);
    __break(1u);
    return result;
  }

  v25 = *(v8 + 32);
  v26 = v35;
  v27 = v37;
  v25(v35, v11, v37);
  (*(v16 + 8))(a1, v34);
  v28 = v36;
  v25(v36, v26, v27);
  return (v25)(a4, v28, v27);
}

uint64_t sub_25DDD7778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v239 = a1;
  v226 = a3;
  v4 = sub_25DDDCC28();
  v247 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v254 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v233 = &v222 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v227 = &v222 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v248 = &v222 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v251 = (&v222 - v14);
  MEMORY[0x28223BE20](v13);
  v241 = &v222 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9D8, &qword_25DDDEAD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v249 = &v222 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v250 = &v222 - v19;
  v252 = sub_25DDDCC88();
  v228 = *(v252 - 8);
  v20 = MEMORY[0x28223BE20](v252);
  v242 = &v222 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v240 = &v222 - v22;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E0, &qword_25DDDEAD8);
  MEMORY[0x28223BE20](v246);
  v245 = &v222 - v23;
  v244 = sub_25DDDCB28();
  v235 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v232 = (&v222 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_25DDDCB68();
  v231 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v230 = &v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E8, &qword_25DDDEAE0);
  MEMORY[0x28223BE20](v26 - 8);
  v261 = (&v222 - v27);
  v237 = sub_25DDDCAB8();
  v236 = *(v237 - 8);
  v28 = MEMORY[0x28223BE20](v237);
  v229 = &v222 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v225 = &v222 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F0, &qword_25DDDEAE8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v222 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v222 - v35;
  v37 = sub_25DDDCA68();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v222 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v238 = &v222 - v42;
  v234 = a2;
  sub_25DDDCAA8();
  sub_25DDDCA58();

  v43 = *(v38 + 48);
  if (v43(v36, 1, v37) == 1)
  {
    v34 = v36;
    v44 = v239;
LABEL_5:
    sub_25DDCC9E4(v34, &qword_27FCCE9F0, &qword_25DDDEAE8);
    type metadata accessor for URLSessionTransportError(0);
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError, &unk_25DDDEB38);
    swift_allocError();
    v48 = v47;
    v49 = MEMORY[0x25F8A48C0]();
    v51 = 0x3E6C696E3CLL;
    if (v50)
    {
      v51 = v49;
    }

    v52 = 0xE500000000000000;
    if (v50)
    {
      v52 = v50;
    }

    *v48 = v51;
    v48[1] = v52;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F8, &qword_25DDDEAF0) + 64);
    MEMORY[0x25F8A48F0]();
    v54 = v236;
    v55 = v234;
    v56 = v237;
    (*(v236 + 16))(v48 + v53, v234, v237);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v54 + 8))(v55, v56);
    v57 = sub_25DDDCB88();
    return (*(*(v57 - 8) + 8))(v44, v57);
  }

  v256 = v41;
  v253 = v4;
  v45 = *(v38 + 32);
  v46 = v45(v238, v36, v37);
  v44 = v239;
  MEMORY[0x25F8A48C0](v46);
  sub_25DDDCA58();

  if (v43(v34, 1, v37) == 1)
  {
    (*(v38 + 8))(v238, v37);
    goto LABEL_5;
  }

  v224 = v38;
  v45(v256, v34, v37);
  v59 = sub_25DDDCA18();
  v61 = v60;
  v62 = v37;
  v63 = sub_25DDDCA08();
  MEMORY[0x25F8A4C20](v59, v61);
  v63(&v259, 0);
  sub_25DDDCA28();
  sub_25DDDCA38();
  v64 = v261;
  sub_25DDDCA48();
  v65 = v236;
  v66 = v237;
  if ((*(v236 + 48))(v64, 1, v237) == 1)
  {
    sub_25DDCC9E4(v64, &qword_27FCCE9E8, &qword_25DDDEAE0);
    type metadata accessor for URLSessionTransportError(0);
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError, &unk_25DDDEB38);
    swift_allocError();
    v68 = v67;
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F8, &qword_25DDDEAF0) + 64);
    *v68 = v59;
    v68[1] = v61;
    v70 = v65;
    v71 = v239;
    MEMORY[0x25F8A48F0]();
    v72 = v234;
    (*(v70 + 16))(v68 + v69, v234, v66);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v70 + 8))(v72, v66);
    v73 = sub_25DDDCB88();
    (*(*(v73 - 8) + 8))(v71, v73);
    v74 = *(v224 + 8);
    v74(v256, v62);
    return (v74)(v238, v62);
  }

  v223 = v62;

  v75 = v225;
  (*(v65 + 32))(v225, v64, v66);
  (*(v65 + 16))(v229, v75, v66);
  v76 = sub_25DDDC9C8();
  v77 = v230;
  v78 = MEMORY[0x25F8A48F0](v76);
  MEMORY[0x25F8A48D0](v78);
  (v231[1])(v77, v255);
  v79 = sub_25DDDC998();
  v80 = v232;
  MEMORY[0x25F8A48B0](v79);
  v81 = sub_25DDDC148(&qword_27FCCE9C8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C8]);
  v82 = v244;
  sub_25DDDCFC8();
  sub_25DDDCFE8();
  v83 = sub_25DDDCFD8();
  v84 = v235;
  v85 = *(v235 + 1);
  v85(v80, v82);
  v86 = sub_25DDDC148(&qword_27FCCEA00, MEMORY[0x277D0F9F8], MEMORY[0x277D0FA00]);
  v255 = MEMORY[0x25F8A4B70](v83, v253, MEMORY[0x277D837D0], v86);
  MEMORY[0x25F8A48B0]();
  v87 = v245;
  (*(v84 + 2))(v245, v80, v82);
  v88 = *(v246 + 36);
  sub_25DDDCFC8();
  v85(v80, v82);
  v89 = v81;
  sub_25DDDCFE8();
  if (*&v88[v87] != v259)
  {
    v232 = (v228 + 2);
    v231 = (v228 + 4);
    v246 = v247 + 8;
    ++v228;
    v148 = v242;
    v230 = v89;
    v229 = v88;
    while (1)
    {
      v157 = sub_25DDDD028();
      v158 = v240;
      v159 = v252;
      (*v232)(v240);
      v157(&v259, 0);
      sub_25DDDCFF8();
      v160 = (*v231)(v148, v158, v159);
      v161 = v241;
      MEMORY[0x25F8A49E0](v160);
      v162 = v255;
      if (!*(v255 + 16))
      {
        break;
      }

      v163 = sub_25DDDAB28(v161);
      if ((v164 & 1) == 0)
      {
        break;
      }

      v165 = (*(v162 + 56) + 16 * v163);
      v167 = *v165;
      v166 = v165[1];
      v168 = *v246;

      v169 = v253;
      v170 = (v168)(v161, v253);
      v171 = v248;
      v172 = MEMORY[0x25F8A49E0](v170);
      v173 = v227;
      MEMORY[0x25F8A4990](v172);
      v174 = MEMORY[0x25F8A4980](v171, v173);
      (v168)(v173, v169);
      v261 = v168;
      v175 = (v168)(v171, v169);
      if (v174)
      {
        v176 = 8251;
      }

      else
      {
        v176 = 8236;
      }

      MEMORY[0x25F8A49E0](v175);
      v259 = v167;
      v260 = v166;
      MEMORY[0x25F8A4C20](v176, 0xE200000000000000);

      v178 = MEMORY[0x25F8A49F0](v177);
      v180 = v178;
      v181 = v179;
      if ((v179 & 0x2000000000000000) != 0)
      {
        v182 = HIBYTE(v179) & 0xF;
      }

      else
      {
        v182 = v178 & 0xFFFFFFFFFFFFLL;
      }

      v183 = (v178 >> 59) & 1;
      if ((v179 & 0x1000000000000000) == 0)
      {
        LOBYTE(v183) = 1;
      }

      v184 = 4 << v183;
      v185 = v179 & 0xFFFFFFFFFFFFFFLL;
      v186 = (v179 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v187 = 15;
      do
      {
        while (1)
        {
          if (4 * v182 == v187 >> 14)
          {

            v148 = v242;
            v212 = MEMORY[0x25F8A49F0](v211);
            v214 = v213;
            goto LABEL_102;
          }

          v188 = v187 & 0xC;
          v189 = v187;
          if (v188 == v184)
          {
            v193 = v187;
            v189 = sub_25DDDBB80(v187, v180, v181);
            v187 = v193;
          }

          v190 = v189 >> 16;
          if (v189 >> 16 >= v182)
          {
            goto LABEL_106;
          }

          if ((v181 & 0x1000000000000000) != 0)
          {
            break;
          }

          if ((v181 & 0x2000000000000000) != 0)
          {
            v257 = v180;
            v258 = v185;
            v191 = &v257;
          }

          else
          {
            v191 = v186;
            if ((v180 & 0x1000000000000000) == 0)
            {
              v235 = v187;
              v191 = sub_25DDDD0F8();
              v187 = v235;
            }
          }

          v192 = *(v191 + v190);
          if (v188 == v184)
          {
            goto LABEL_72;
          }

LABEL_67:
          if ((v181 & 0x1000000000000000) != 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v187 = (v187 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v192 < 0)
          {
            goto LABEL_101;
          }
        }

        v235 = v187;
        v192 = sub_25DDDCED8();
        v187 = v235;
        if (v188 != v184)
        {
          goto LABEL_67;
        }

LABEL_72:
        v187 = sub_25DDDBB80(v187, v180, v181);
        if ((v181 & 0x1000000000000000) == 0)
        {
          goto LABEL_56;
        }

LABEL_68:
        if (v182 <= v187 >> 16)
        {
          goto LABEL_107;
        }

        v187 = sub_25DDDCEB8();
      }

      while ((v192 & 0x80) == 0);
LABEL_101:

      v148 = v242;
      v215 = v243;
      sub_25DDDCBE8();
      v243 = v215;
      v212 = v257;
      v214 = v258;
LABEL_102:
      MEMORY[0x25F8A4C20](v212, v214);

      v216 = v259;
      v217 = v260;
      v218 = v255;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v259 = v218;
      v220 = v216;
      v221 = v233;
      sub_25DDDB4E0(v220, v217, v233, isUniquelyReferenced_nonNull_native);
      v261(v221, v253);
      v255 = v259;
      (*v228)(v148, v252);
LABEL_44:
      v90 = v256;
      v87 = v245;
      sub_25DDDCFE8();
      if (*&v229[v87] == v259)
      {
        goto LABEL_14;
      }
    }

    v235 = *v246;
    v194 = (v235)(v161, v253);
    v195 = MEMORY[0x25F8A49E0](v194);
    v196 = MEMORY[0x25F8A49F0](v195);
    v198 = v196;
    v199 = v197;
    if ((v197 & 0x2000000000000000) != 0)
    {
      v200 = HIBYTE(v197) & 0xF;
    }

    else
    {
      v200 = v196 & 0xFFFFFFFFFFFFLL;
    }

    v201 = (v196 >> 59) & 1;
    if ((v197 & 0x1000000000000000) == 0)
    {
      LOBYTE(v201) = 1;
    }

    v202 = 4 << v201;
    v261 = (v197 & 0xFFFFFFFFFFFFFFLL);
    v203 = (v197 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v204 = 15;
    while (1)
    {
      while (1)
      {
        if (4 * v200 == v204 >> 14)
        {

          v148 = v242;
          v150 = MEMORY[0x25F8A49F0](v149);
          v152 = v151;
LABEL_43:
          v153 = v255;
          v154 = swift_isUniquelyReferenced_nonNull_native();
          v259 = v153;
          v155 = v150;
          v156 = v251;
          sub_25DDDB4E0(v155, v152, v251, v154);
          (v235)(v156, v253);
          (*v228)(v148, v252);
          v255 = v259;
          goto LABEL_44;
        }

        v205 = v204 & 0xC;
        v206 = v204;
        if (v205 == v202)
        {
          v206 = sub_25DDDBB80(v204, v198, v199);
        }

        v207 = v206 >> 16;
        if (v206 >> 16 >= v200)
        {
          goto LABEL_104;
        }

        if ((v199 & 0x1000000000000000) == 0)
        {
          break;
        }

        v209 = sub_25DDDCED8();
        if (v205 == v202)
        {
          goto LABEL_97;
        }

LABEL_92:
        if ((v199 & 0x1000000000000000) == 0)
        {
          goto LABEL_80;
        }

LABEL_93:
        if (v200 <= v204 >> 16)
        {
          goto LABEL_105;
        }

        v204 = sub_25DDDCEB8();
        if (v209 < 0)
        {
LABEL_99:

          v148 = v242;
          v210 = v243;
          sub_25DDDCBE8();
          v243 = v210;
          v150 = v259;
          v152 = v260;
          goto LABEL_43;
        }
      }

      if ((v199 & 0x2000000000000000) != 0)
      {
        v259 = v198;
        v260 = v261;
        v209 = *(&v259 + v207);
        if (v205 == v202)
        {
          goto LABEL_97;
        }

        goto LABEL_92;
      }

      v208 = v203;
      if ((v198 & 0x1000000000000000) == 0)
      {
        v208 = sub_25DDDD0F8();
      }

      v209 = *(v208 + v207);
      if (v205 != v202)
      {
        goto LABEL_92;
      }

LABEL_97:
      v204 = sub_25DDDBB80(v204, v198, v199);
      if ((v199 & 0x1000000000000000) != 0)
      {
        goto LABEL_93;
      }

LABEL_80:
      v204 = (v204 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v209 < 0)
      {
        goto LABEL_99;
      }
    }
  }

  v90 = v256;
LABEL_14:
  sub_25DDCC9E4(v87, &qword_27FCCE9E0, &qword_25DDDEAD8);
  v91 = v255;
  v92 = *(v255 + 16);

  v93 = MEMORY[0x25F8A4B70](v92, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v94 = 0;
  v95 = *(v91 + 64);
  v242 = (v91 + 64);
  v96 = 1 << *(v91 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & v95;
  v99 = (v96 + 63) >> 6;
  v244 = v247 + 16;
  v245 = v99;
  v251 = (v247 + 32);
  v246 = v247 + 8;
  v100 = v253;
  while (1)
  {
    v261 = v93;
    if (!v98)
    {
      break;
    }

    v103 = v94;
LABEL_28:
    v106 = __clz(__rbit64(v98));
    v98 &= v98 - 1;
    v107 = v106 | (v103 << 6);
    v108 = v255;
    v110 = v247;
    v109 = v248;
    (*(v247 + 16))(v248, *(v255 + 48) + *(v247 + 72) * v107, v100);
    v111 = (*(v108 + 56) + 16 * v107);
    v112 = v111[1];
    v252 = *v111;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA08, &qword_25DDDEAF8);
    v114 = v249;
    v115 = &v249[*(v113 + 48)];
    (*(v110 + 32))(v249, v109, v100);
    *v115 = v252;
    v115[1] = v112;
    (*(*(v113 - 8) + 56))(v114, 0, 1, v113);

    v105 = v103;
    v116 = v114;
    v90 = v256;
LABEL_29:
    v117 = v250;
    sub_25DDDBC60(v116, v250, &qword_27FCCE9D8, &qword_25DDDEAD0);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA08, &qword_25DDDEAF8);
    if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
    {

      sub_25DDDC9B8();
      v143 = *(v236 + 8);
      v144 = v237;
      v143(v234, v237);
      v145 = sub_25DDDCB88();
      (*(*(v145 - 8) + 8))(v239, v145);
      v143(v225, v144);
      v146 = *(v224 + 8);
      v147 = v223;
      v146(v90, v223);
      v146(v238, v147);
    }

    v94 = v105;
    v119 = (v117 + *(v118 + 48));
    v120 = *v119;
    v252 = v119[1];
    v121 = (*v251)(v254, v117, v100);
    v122 = MEMORY[0x25F8A4970](v121);
    v124 = v123;
    v125 = v261;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v259 = v125;
    v128 = sub_25DDDAAB0(v122, v124);
    v129 = *(v125 + 2);
    v130 = (v127 & 1) == 0;
    v131 = v129 + v130;
    if (__OFADD__(v129, v130))
    {
      goto LABEL_108;
    }

    v132 = v127;
    if (*(v125 + 3) >= v131)
    {
      if ((v126 & 1) == 0)
      {
        sub_25DDDB77C();
      }
    }

    else
    {
      sub_25DDDAE38(v131, v126);
      v133 = sub_25DDDAAB0(v122, v124);
      if ((v132 & 1) != (v134 & 1))
      {
        goto LABEL_110;
      }

      v128 = v133;
    }

    if (v132)
    {

      v93 = v259;
      v101 = (*(v259 + 7) + 16 * v128);
      v102 = v252;
      *v101 = v120;
      v101[1] = v102;

      v100 = v253;
      (*v246)(v254, v253);
    }

    else
    {
      v93 = v259;
      *&v259[8 * (v128 >> 6) + 64] |= 1 << v128;
      v135 = (*(v93 + 6) + 16 * v128);
      *v135 = v122;
      v135[1] = v124;
      v136 = (*(v93 + 7) + 16 * v128);
      v137 = v252;
      v100 = v253;
      *v136 = v120;
      v136[1] = v137;
      (*v246)(v254, v100);
      v138 = *(v93 + 2);
      v139 = __OFADD__(v138, 1);
      v140 = v138 + 1;
      if (v139)
      {
        goto LABEL_109;
      }

      *(v93 + 2) = v140;
    }

    v90 = v256;
    v99 = v245;
  }

  if (v99 <= v94 + 1)
  {
    v104 = v94 + 1;
  }

  else
  {
    v104 = v99;
  }

  v105 = v104 - 1;
  while (1)
  {
    v103 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      break;
    }

    if (v103 >= v99)
    {
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA08, &qword_25DDDEAF8);
      v142 = v249;
      (*(*(v141 - 8) + 56))(v249, 1, 1, v141);
      v116 = v142;
      v98 = 0;
      goto LABEL_29;
    }

    v98 = *&v242[8 * v103];
    ++v94;
    if (v98)
    {
      goto LABEL_28;
    }
  }

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
  result = sub_25DDDD1C8();
  __break(1u);
  return result;
}

unint64_t sub_25DDD9088(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = sub_25DDDBB80(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_25DDDCED8();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_18;
      }

LABEL_23:
      result = sub_25DDDBB80(result, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_7:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_25DDDD0F8();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 == v7)
      {
        goto LABEL_23;
      }

LABEL_18:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (v4 <= result >> 16)
      {
        goto LABEL_27;
      }

      result = sub_25DDDCEB8();
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25DDD9220(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_25DDDCC28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a4) & 0xF;
  v20 = a3;
  v21 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v22 = 0;
  v23 = v14;
  v24 = 0;
  for (i = sub_25DDD93CC(); (v16 & 0x100000000) == 0; i = sub_25DDD93CC())
  {
    if ((v16 & 0xFFFFFF00) != 0)
    {
      v17 = 32;
    }

    else
    {
      v17 = v16;
    }

    *(a1 + i) = v17;
  }

  (*(v11 + 16))(v13, a5, v10);
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA70, &qword_25DDDECD0);
  sub_25DDCD270(&qword_27FCCEA78, &qword_27FCCEA70, &qword_25DDDECD0, MEMORY[0x277D83DD8]);
  return sub_25DDDCC58();
}

uint64_t sub_25DDD93CC()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    sub_25DDDD0B8();
    goto LABEL_10;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v10[0] = *v0;
    v10[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v5 = v10 + v1;
    goto LABEL_8;
  }

  if ((*v0 & 0x1000000000000000) == 0)
  {
    goto LABEL_22;
  }

  for (i = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = sub_25DDDD0F8())
  {
    v5 = (i + v1);
LABEL_8:
    if ((*v5 & 0x80000000) == 0)
    {
LABEL_9:
      v6 = 1;
      goto LABEL_10;
    }

    v9 = (__clz(*v5 ^ 0xFF) - 24);
    if (v9 > 2)
    {
      v6 = v9 == 3 ? 3 : 4;
    }

    else
    {
      if (v9 == 1)
      {
        goto LABEL_9;
      }

      v6 = 2;
    }

LABEL_10:
    v0[2] = v6 + v1;
    v7 = v0[4];
    if (!__OFADD__(v7, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v0[4] = v7 + 1;
LABEL_12:
  LOBYTE(v10[0]) = v1 >= v2;
  return v7;
}

uint64_t sub_25DDD952C@<X0>(void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA58, &qword_25DDDECC8);
  sub_25DDCD270(&qword_27FCCEA60, &qword_27FCCEA58, &qword_25DDDECC8, MEMORY[0x277D842F0]);
  result = sub_25DDDCE88();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_25DDD9600()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E8, &qword_25DDDEAE0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - v5;
  v7 = sub_25DDDCAB8();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25DDDCB68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLSessionTransportError(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDDBBFC(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *v16;
      v21 = *(v16 + 1);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F8, &qword_25DDDEAF0);
      v24 = *(v23 + 64);
      (*(v11 + 32))(v13, &v16[*(v23 + 48)], v10);
      v25 = v36;
      (*(v36 + 32))(v9, &v16[v24], v7);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_25DDDD0C8();
      MEMORY[0x25F8A4C20](0xD000000000000027, 0x800000025DDE0820);
      MEMORY[0x25F8A4C20](v22, v21);

      MEMORY[0x25F8A4C20](0x646F6874656D202CLL, 0xEA0000000000203ALL);
      sub_25DDDC148(&qword_27FCCEA18, MEMORY[0x277D0F9D8], MEMORY[0x277D0F9E0]);
      v26 = sub_25DDDD178();
      MEMORY[0x25F8A4C20](v26);

      MEMORY[0x25F8A4C20](0xD000000000000018, 0x800000025DDE0850);
      v27 = sub_25DDDCAA8();
      MEMORY[0x25F8A4C20](v27);

      v28 = v38;
      (*(v25 + 8))(v9, v7);
      (*(v11 + 8))(v13, v10);
      return v28;
    }

    v31 = *v16;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_25DDDD0C8();

    v38 = 0xD000000000000027;
    v39 = 0x800000025DDE07F0;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA10, &unk_25DDDEB00);
    v32 = sub_25DDDCE48();
    MEMORY[0x25F8A4C20](v32);

    return v38;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = *v16;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_25DDDD0C8();
    MEMORY[0x25F8A4C20](0xD000000000000034, 0x800000025DDE07B0);
    ObjectType = [v29 statusCode];
    v30 = sub_25DDDD178();
    MEMORY[0x25F8A4C20](v30);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);

    return v38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0xD00000000000002BLL;
  }

  sub_25DDDBC60(v16, v6, &qword_27FCCE9E8, &qword_25DDDEAE0);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_25DDDD0C8();

  v38 = 0xD00000000000001CLL;
  v39 = 0x800000025DDE0790;
  sub_25DDDBCC8(v6, v4);
  v18 = v36;
  if ((*(v36 + 48))(v4, 1, v7) == 1)
  {
    sub_25DDCC9E4(v4, &qword_27FCCE9E8, &qword_25DDDEAE0);
    v19 = 0xE90000000000003ELL;
    v20 = 0x4C5255206C696E3CLL;
  }

  else
  {
    v33 = sub_25DDDCAA8();
    v19 = v34;
    (*(v18 + 8))(v4, v7);
    v20 = v33;
  }

  MEMORY[0x25F8A4C20](v20, v19);

  v28 = v38;
  sub_25DDCC9E4(v6, &qword_27FCCE9E8, &qword_25DDDEAE0);
  return v28;
}

uint64_t sub_25DDD9C28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA40, "z\t");
  v1 = 0;
  result = sub_25DDC949C(&v1);
  qword_27FCCFE78 = result;
  return result;
}

uint64_t sub_25DDD9C78()
{
  if (qword_27FCCFE70 != -1)
  {
    swift_once();
  }

  sub_25DDC9788(sub_25DDD9D0C);
  return v1;
}

pthread_mutex_t *sub_25DDD9D18(uint64_t a1)
{
  if (qword_27FCCFE70 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x28223BE20](a1);
  return sub_25DDC9788(sub_25DDDBD38);
}

uint64_t sub_25DDD9DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_25DDDCD08();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_25DDDCD38();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD9F04, 0, 0);
}

uint64_t sub_25DDD9F04()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA88, &qword_25DDDECE0);
  *v3 = v0;
  v3[1] = sub_25DDDA014;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000029, 0x800000025DDE0890, sub_25DDDC678, v2, v4);
}

uint64_t sub_25DDDA014()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25DDDA378;
  }

  else
  {

    v2 = sub_25DDDA130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDDA130()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v0[5] = v2;
    v0[6] = v3;
    v24 = v2;
    sub_25DDDC698(v2, v3);
    v5 = v1;
    v6 = [v5 expectedContentLength];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v23 = v1;
    if (v6 == -1)
    {

      v11 = MEMORY[0x277D37A20];
    }

    else
    {
      v10 = [v5 expectedContentLength];

      *v7 = v10;
      v11 = MEMORY[0x277D37A18];
    }

    (*(v8 + 104))(v7, *v11, v9);
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    sub_25DDDCD58();
    (*(v14 + 32))(v12, v13, v15);
    (*(v16 + 104))(v17, *MEMORY[0x277D379D0], v18);
    sub_25DDDC6AC();
    v4 = sub_25DDDCD68();
    v1 = v23;
    v2 = v24;
  }

  v19 = v0[20];
  sub_25DDD6A40(v1, v0[7]);
  if (v19)
  {

    sub_25DDDC684(v2, v3);
  }

  else
  {
    v21 = v0[7];
    sub_25DDDC684(v2, v3);
    *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68) + 48)) = v4;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_25DDDA378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDDA400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DDC9384;

  return sub_25DDD9DD8(a1, v4, v5, v6);
}

void sub_25DDDA4B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v24 - v7;
  v8 = sub_25DDDC9F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *(v9 + 16);
  v15(&v24 - v13, a3, v8);
  v26 = sub_25DDDC9A8();
  (*(v9 + 8))(v14, v8);
  v15(v14, a3, v8);
  v16 = v24;
  (*(v5 + 16))(v29, v25, v24);
  v17 = *(v9 + 32);
  v17(v12, v14, v8);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = (v6 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v18, v29, v16);
  v17((v20 + v19), v12, v8);
  aBlock[4] = sub_25DDDC700;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25DDDA81C;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);

  v22 = v26;
  v23 = [v27 dataTaskWithRequest:v26 completionHandler:v21];
  _Block_release(v21);

  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
  sub_25DDC9AC8(sub_25DDDC91C);
}

uint64_t sub_25DDDA81C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_25DDDCAE8();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_25DDDC684(v6, v10);
}

uint64_t sub_25DDDA964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DDB8C84;

  return sub_25DDD9DD8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for URLSessionTransportError(uint64_t a1)
{
  result = qword_27FCD0000;
  if (!qword_27FCD0000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25DDDAA64(id *a1)
{
  v2 = *a1;
  [*a1 cancel];

  *a1 = 0;
}

unint64_t sub_25DDDAAB0(uint64_t a1, uint64_t a2)
{
  sub_25DDDD228();
  sub_25DDDCE98();
  v4 = sub_25DDDD238();

  return sub_25DDDABC0(a1, a2, v4);
}

unint64_t sub_25DDDAB28(uint64_t a1)
{
  sub_25DDDCC28();
  sub_25DDDC148(&qword_27FCCEA00, MEMORY[0x277D0F9F8], MEMORY[0x277D0FA00]);
  v2 = sub_25DDDCE08();

  return sub_25DDDAC78(a1, v2);
}

unint64_t sub_25DDDABC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25DDDD198())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25DDDAC78(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25DDDCC28();
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
      sub_25DDDC148(&qword_27FCCEA68, MEMORY[0x277D0F9F8], MEMORY[0x277D0FA08]);
      v15 = sub_25DDDCE38();
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

uint64_t sub_25DDDAE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA48, "|\t");
  v37 = v4;
  result = sub_25DDDD158();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25DDDD228();
      sub_25DDDCE98();
      result = sub_25DDDD238();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25DDDB0F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25DDDCC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA50, &qword_25DDDECC0);
  v44 = v4;
  result = sub_25DDDD158();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_25DDDC148(&qword_27FCCEA00, MEMORY[0x277D0F9F8], MEMORY[0x277D0FA00]);
      result = sub_25DDDCE08();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25DDDB4E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_25DDDCC28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_25DDDAB28(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_25DDDB8F4();
      goto LABEL_9;
    }

    sub_25DDDB0F8(v18, a4 & 1);
    v21 = sub_25DDDAB28(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25DDDD1C8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_25DDDB6BC(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_25DDDB6BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_25DDDCC28();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_25DDDB77C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA48, "|\t");
  v2 = *v0;
  v3 = sub_25DDDD148();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *sub_25DDDB8F4()
{
  v1 = v0;
  v35 = sub_25DDDCC28();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA50, &qword_25DDDECC0);
  v3 = *v0;
  v4 = sub_25DDDD148();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_25DDDBB80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25DDDCEE8();
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
    v5 = MEMORY[0x25F8A4C40](15, a1 >> 16);
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

uint64_t sub_25DDDBBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLSessionTransportError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DDDBC60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25DDDBCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E8, &qword_25DDDEAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25DDDBDB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DDDBE00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for URLSessionTransport.Configuration.Implementation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for URLSessionTransport.Configuration.Implementation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for URLSessionTransport.Configuration.Implementation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_25DDDBED8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DDDBEF4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void sub_25DDDBF28(uint64_t a1)
{
  sub_25DDDBFE4(319);
  if (v1 <= 0x3F)
  {
    sub_25DDDC060(319, &qword_27FCCE998, 0x277CCAD28);
    if (v2 <= 0x3F)
    {
      sub_25DDDC060(319, &qword_27FCCEA28, 0x277CCAA40);
      if (v3 <= 0x3F)
      {
        sub_25DDDC0A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_25DDDBFE4(uint64_t a1)
{
  if (!qword_27FCCEA20)
  {
    sub_25DDDCB68();
    sub_25DDDCAB8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FCCEA20);
    }
  }
}

uint64_t sub_25DDDC060(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25DDDC0A8()
{
  if (!qword_27FCCEA30)
  {
    sub_25DDDC0F0(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCEA30);
    }
  }
}

void sub_25DDDC0F0(uint64_t a1)
{
  if (!qword_27FCCEA38)
  {
    sub_25DDDCAB8();
    v1 = sub_25DDDD088();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCCEA38);
    }
  }
}

uint64_t sub_25DDDC148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25DDDC190(unint64_t result, unint64_t a2, unint64_t a3)
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

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25DDDC228(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25DDDC29C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25DDDC228(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_25DDDBB80(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25DDDC29C(unint64_t result, uint64_t a2, unint64_t a3)
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
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25DDDD0F8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_25DDDC3B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_25DDDC190(a1, a3, a4);
  v8 = sub_25DDDC190(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25DDDCE68();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_25DDDD0F8();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25DDDCE78();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_25DDDD0F8();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_25DDDC61C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25DDDC684(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DDCCDA4(result, a2);
  }

  return result;
}

uint64_t sub_25DDDC698(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DDCD21C(result, a2);
  }

  return result;
}

unint64_t sub_25DDDC6AC()
{
  result = qword_27FCCEA90;
  if (!qword_27FCCEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCEA90);
  }

  return result;
}

uint64_t sub_25DDDC700(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  sub_25DDDC9F8();
  if (a4)
  {
    v8 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
    return sub_25DDDCF18();
  }

  if (!a3)
  {
    type metadata accessor for URLSessionTransportError(0);
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError, &unk_25DDDEB38);
    swift_allocError();
    sub_25DDDC9D8();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
    return sub_25DDDCF18();
  }

  v10 = a3;
  sub_25DDDC698(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  return sub_25DDDCF28();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25DDDC91C(id *a1)
{
  v3 = *(v1 + 16);
  result = [v3 state];
  if (result == 1)
  {

    [v3 resume];
    *a1 = v3;
    return v3;
  }

  return result;
}