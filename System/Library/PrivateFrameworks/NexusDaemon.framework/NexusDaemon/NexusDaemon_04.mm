void sub_25C4B2150(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = a2;
    v14 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v15 = sub_25C4C7BD0();
    __swift_project_value_buffer(v15, qword_27FC0B978);
    (*(v11 + 16))(v13, a4, v10);
    v16 = a1;

    v17 = sub_25C4C7BB0();
    v18 = sub_25C4C8710();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_25C458990(v31, a3, &v32);
      *(v20 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_25C4C89A0();
      v24 = v23;
      (*(v11 + 8))(v13, v10);
      v25 = sub_25C458990(v22, v24, &v32);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v26 = sub_25C4C8A30();
      v28 = sub_25C458990(v26, v27, &v32);

      *(v20 + 24) = v28;
      _os_log_impl(&dword_25C452000, v17, v18, v30, v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v21, -1, -1);
      MEMORY[0x25F888630](v20, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_25C4B247C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a4;
  v8 = sub_25C4C8470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C8490();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25C4C8280();
  v16 = *(v15 - 8);
  result = MEMORY[0x28223BE20](v15);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
  {
    v43 = v9;
    v22 = objc_allocWithZone(sub_25C4C7B80());
    v23 = sub_25C4C7B90();
    swift_willThrow();
LABEL_13:
    v27 = swift_allocObject();
    v28 = v47;
    v27[2] = sub_25C4BD444;
    v27[3] = v28;
    v27[4] = v23;
    v54 = sub_25C4BDBBC;
    v55 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_25C4676B4;
    v53 = &block_descriptor_226;
    v29 = _Block_copy(&aBlock);

    v30 = v23;
    sub_25C4C8480();
    *&v49 = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0, MEMORY[0x277D83970]);
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v14, v11, v29);
    _Block_release(v29);

    (*(v43 + 8))(v11, v8);
    (*(v44 + 8))(v14, v45);
  }

  v20 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v20 != 2)
    {
      LODWORD(v21) = 0;
      goto LABEL_15;
    }

    v43 = v9;
    v25 = *(v46 + 16);
    v24 = *(v46 + 24);
    v21 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      if (!HIDWORD(v21))
      {
        goto LABEL_15;
      }

LABEL_12:
      v26 = objc_allocWithZone(sub_25C4C7B80());

      v23 = sub_25C4C7B90();
      swift_willThrow();

      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    if (!v20)
    {
      LODWORD(v21) = BYTE6(a3);
LABEL_15:
      v49 = xmmword_25C4CA800;
      LOBYTE(v48) = a1;
      v45 = result;
      sub_25C4BAFE4();

      v31 = sub_25C4C8940();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A928, &qword_25C4CACA0);
      v53 = v32;
      v33 = sub_25C4BC1E8(&qword_27FC0A930, &qword_27FC0A928, &qword_25C4CACA0, MEMORY[0x277CC9C28]);
      v54 = v33;
      aBlock = v31;
      __swift_project_boxed_opaque_existential_1(&aBlock, v32);

      sub_25C4C7AD0();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);

      v48 = v21;
      sub_25C4BB038();
      v34 = sub_25C4C8940();
      v53 = v32;
      v54 = v33;
      aBlock = v34;
      __swift_project_boxed_opaque_existential_1(&aBlock, v32);

      sub_25C4C7AD0();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);

      v53 = MEMORY[0x277CC9318];
      v54 = MEMORY[0x277CC9300];
      v35 = v46;
      aBlock = v46;
      v51 = a3;
      v36 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
      v37 = *v36;
      v38 = v36[1];
      sub_25C459FB0(v35, a3);
      sub_25C4B8138(v37, v38, &v49, v39);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v40 = swift_allocObject();
      v41 = v47;
      *(v40 + 16) = sub_25C4BD444;
      *(v40 + 24) = v41;
      *v19 = sub_25C4BD590;
      v19[1] = v40;
      v42 = v45;
      (*(v16 + 104))(v19, *MEMORY[0x277CD8DB0], v45);
      sub_25C4C8270();

      sub_25C4C8260();
      sub_25C4C82B0();

      (*(v16 + 8))(v19, v42);
      return sub_25C45A004(v49, *(&v49 + 1));
    }

    v43 = v9;
    if (!__OFSUB__(HIDWORD(v46), v46))
    {
      LODWORD(v21) = HIDWORD(v46) - v46;
      if (!((HIDWORD(v46) - v46) >> 32))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C4B2B78(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_25C4C8390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C4BC9B8(a1, v6, &unk_27FC0A948, &qword_25C4CACA8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25C4666F8(v6, &unk_27FC0A948, &qword_25C4CACA8);
    return (a2)(0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    swift_allocError();
    (*(v8 + 16))(v12, v10, v7);
    v13 = objc_allocWithZone(sub_25C4C7B80());
    v14 = sub_25C4C7B90();
    a2();

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_25C4B2DE8(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_25C4C8390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C4BC9B8(a1, v6, &unk_27FC0A948, &qword_25C4CACA8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25C4666F8(v6, &unk_27FC0A948, &qword_25C4CACA8);
    return (a2)(0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    swift_allocError();
    (*(v8 + 16))(v12, v10, v7);
    v13 = objc_allocWithZone(sub_25C4C7B80());
    v14 = sub_25C4C7B90();
    a2();

    return (*(v8 + 8))(v10, v7);
  }
}

void sub_25C4B3058(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession;
  v4 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D028E8]) init];
  v6 = *(v1 + v3);
  *(v1 + v3) = v5;
  v7 = v5;

  [v7 setDispatchQueue_];
  [v7 setFlags_];
  if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient))
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient))
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  v10 = a1 & 1;
  if (a1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  [v7 setSessionType_];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v32 = sub_25C4BD0D4;
  v33 = v14;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4B39FC;
  v31 = &block_descriptor_195;
  v15 = _Block_copy(&v28);

  [v7 setPromptForPINHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v32 = sub_25C4BD1A0;
  v33 = v18;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4B3A5C;
  v31 = &block_descriptor_203;
  v19 = _Block_copy(&v28);

  [v7 setShowPINHandlerEx_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 32) = v10;
  v32 = sub_25C4BD274;
  v33 = v22;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4B3DCC;
  v31 = &block_descriptor_211;
  v23 = _Block_copy(&v28);

  [v7 setSendMessageDataHandler_];
  _Block_release(v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  *(v26 + 32) = v10;
  v32 = sub_25C4BD390;
  v33 = v26;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4BDC4C;
  v31 = &block_descriptor_219;
  v27 = _Block_copy(&v28);

  [v7 setCompletionHandler_];
  _Block_release(v27);
  [v7 activate];
}

uint64_t sub_25C4B34DC(int a1, int a2, int a3)
{
  LODWORD(v44) = a3;
  LODWORD(v43) = a2;
  LODWORD(v42) = a1;
  v4 = sub_25C4C7D30();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7EC0();
  MEMORY[0x28223BE20](v6 - 8);
  v47 = sub_25C4C7FB0();
  v7 = *(v47 - 8);
  v8 = MEMORY[0x28223BE20](v47);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_25C4C84C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_25C4C84E0();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    sub_25C4C7EB0();
    sub_25C4C7FA0();
    v13 = v12;
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v43 = v4;
  v44 = v3;
  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0B978);
  v20 = v10;
  v21 = v10;
  v22 = v47;
  v42 = *(v7 + 16);
  v42(v21, v13, v47);
  v23 = sub_25C4C7BB0();
  v24 = sub_25C4C8720();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = v13;
    v27 = v26;
    v48 = v26;
    *v25 = 136315138;
    sub_25C4B8B3C(&qword_27FC0AA38, MEMORY[0x277D35810], MEMORY[0x277D35818]);
    v28 = sub_25C4C89A0();
    v29 = v20;
    v31 = v30;
    v32 = *(v7 + 8);
    v32(v29, v47);
    v33 = sub_25C458990(v28, v31, &v48);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_25C452000, v23, v24, "Pairing prompt: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v34 = v27;
    v13 = v41;
    MEMORY[0x25F888630](v34, -1, -1);
    v35 = v25;
    v22 = v47;
    MEMORY[0x25F888630](v35, -1, -1);
  }

  else
  {

    v32 = *(v7 + 8);
    v32(v20, v22);
  }

  v36 = v45;
  *(v44 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) = 1;
  v42(v36, v13, v22);
  v37 = v46;
  v38 = v13;
  v39 = v43;
  (*(v46 + 104))(v36, *MEMORY[0x277D35690], v43);
  sub_25C49A214(v36);
  (*(v37 + 8))(v36, v39);
  return (v32)(v38, v22);
}

uint64_t sub_25C4B39FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_25C4B3A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_25C4C8550();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_25C4B3AD8(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_25C4C84E0();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = a2 & 1;
  v17 = sub_25C4C7BD0();
  __swift_project_value_buffer(v17, qword_27FC0B978);
  sub_25C459FB0(a3, a4);
  v18 = sub_25C4C7BB0();
  v19 = sub_25C4C86F0();
  if (os_log_type_enabled(v18, v19))
  {
    result = swift_slowAlloc();
    *result = 67109632;
    *(result + 4) = a1 & 1;
    *(result + 8) = 1024;
    *(result + 10) = v16;
    *(result + 14) = 2048;
    v21 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_15;
      }

      v24 = *(a3 + 16);
      v23 = *(a3 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v25)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(a4);
LABEL_15:
      *(result + 16) = v22;
      v26 = result;
      sub_25C45A004(a3, a4);
      _os_log_impl(&dword_25C452000, v18, v19, "Pairing send: setup=%{BOOL}d, start=%{BOOL}d, data=%ld bytes", v26, 0x18u);
      MEMORY[0x25F888630](v26, -1, -1);
      goto LABEL_16;
    }

    LODWORD(v22) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_15;
  }

  sub_25C45A004(a3, a4);
LABEL_16:

  if (v16)
  {
    v27 = 5;
  }

  else
  {
    v27 = 6;
  }

  if (v16)
  {
    v28 = 3;
  }

  else
  {
    v28 = 4;
  }

  if (a1)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25C4B247C(v29, a3, a4, v30);
}

uint64_t sub_25C4B3DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v7 = sub_25C4C7AF0();
  v9 = v8;

  v5(a2, v7, v9);
  sub_25C45A004(v7, v9);
}

uint64_t sub_25C4B3E60(char a1, void *a2)
{
  v4 = v2;
  v36 = *MEMORY[0x277D85DE8];
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  v13 = sub_25C4C84E0();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
  if (v3)
  {
    v13 = 0xD000000000000017;
    if (a2)
    {
      swift_willThrow();
      v14 = v3;
LABEL_5:
      objc_allocWithZone(sub_25C4C7B80());
      v15 = a2;
      v16 = sub_25C4C7B90();
      v17 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError);
      *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError) = v16;

LABEL_6:
      sub_25C495A00();

      return sub_25C4B4484(v4, a2);
    }

    v19 = v3;
    v20 = sub_25C4C8540();
    v34 = 0;
    v21 = [v19 openStreamWithName:v20 type:2 error:&v34];

    v22 = v34;
    if (!v21)
    {
      v28 = v34;
      sub_25C4C7A90();

      swift_willThrow();
      goto LABEL_5;
    }

    v23 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
    *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream) = v21;
    v24 = v22;
    v10 = v21;

    v25 = [v10 authTagLength];
    if (HIDWORD(v25))
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25C4C88F0();

      v34 = 0xD000000000000019;
      v35 = 0x800000025C4D1860;
      v33[1] = [v10 authTagLength];
      v26 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v26);

      v27 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();

      goto LABEL_5;
    }

    *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength) = v25;
    *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted) = 1;
    if (mach_absolute_time() >= *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks))
    {
      v13 = UpTicksToMilliseconds();
      if (qword_27FC0B970 == -1)
      {
LABEL_14:
        v29 = sub_25C4C7BD0();
        __swift_project_value_buffer(v29, qword_27FC0B978);
        v30 = sub_25C4C7BB0();
        v31 = sub_25C4C8720();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 67109376;
          *(v32 + 4) = a1 & 1;
          *(v32 + 8) = 2048;
          *(v32 + 10) = v13;
          _os_log_impl(&dword_25C452000, v30, v31, "Pairing completed: setup=%{BOOL}d, duration=%llu ms", v32, 0x12u);
          MEMORY[0x25F888630](v32, -1, -1);
        }

        goto LABEL_6;
      }

LABEL_19:
      swift_once();
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return sub_25C4B4484(v4, a2);
}

void sub_25C4B42D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C84C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
    if (v9)
    {
      v10 = v9;
      v11 = sub_25C4C8540();
      [v10 tryPIN_];
    }

    else
    {
      v12 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C4B4484(uint64_t a1, void *a2)
{
  v4 = sub_25C4C7D30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25C4C7D80();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C7FD0();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) == 1)
  {
    v26 = v5;
    v28 = v4;
    *(a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) = 0;
    v16 = objc_allocWithZone(sub_25C4C80C0());
    v17 = a2;
    sub_25C4C80D0();
    sub_25C4C7FC0();
    v27 = a1;
    v18 = a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler;
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {
      v20 = *(v18 + 8);
      v21 = v12;
      v25 = *(v12 + 16);
      v25(v10, v15, v11);
      v22 = v29;
      (*(v8 + 104))(v10, *MEMORY[0x277D35750], v29);

      v19(v10);
      sub_25C45A2C8(v19, v20);
      (*(v8 + 8))(v10, v22);
      v25(v7, v15, v11);
    }

    else
    {
      v21 = v12;
      (*(v12 + 16))(v7, v15, v11);
    }

    v23 = v26;
    v24 = v28;
    (*(v26 + 104))(v7, *MEMORY[0x277D35698], v28);
    sub_25C49A214(v7);
    (*(v23 + 8))(v7, v24);
    return (*(v21 + 8))(v15, v11);
  }

  return result;
}

void *sub_25C4B480C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A988, &qword_25C4CACC8);
  v10 = *(type metadata accessor for NXSessionDaemon.SendItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NXSessionDaemon.SendItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25C4B49E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25C458F84(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C4B6EA4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_25C4C7B20();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for NXSessionDaemon.OperationItem(0);
    v20 = *(v13 - 8);
    sub_25C4BB0E8(v12 + *(v20 + 72) * v7, a2, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4B5A98(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NXSessionDaemon.OperationItem(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_25C4B4B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A958, &qword_25C4CACB0);
  v43 = v4;
  result = sub_25C4C8970();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25C4BB0E8(v27 + v28 * v24, v47, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25C4BACD0(v29 + v28 * v24, v47, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25C4C8510();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_25C4BB0E8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for NXSessionDaemon.OperationItem);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_25C4B5020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C4C7B20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A980, &qword_25C4CACC0);
  v43 = v4;
  result = sub_25C4C8970();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v39 = v2;
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
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v48 = *(v42 + 72);
      v26 = v25 + v48 * v24;
      if (v43)
      {
        (*v44)(v49, v26, v5);
        v27 = *(v9 + 56) + 32 * v24;
        v47 = *v27;
        v46 = *(v27 + 8);
        v45 = *(v27 + 24);
      }

      else
      {
        (*v40)(v49, v26, v5);
        v28 = *(v9 + 56) + 32 * v24;
        v47 = *v28;
        v29 = *(v28 + 24);
        v46 = *(v28 + 8);

        v45 = v29;
      }

      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25C4C8510();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = *(v11 + 56) + 32 * v19;
      *v20 = v47;
      *(v20 + 8) = v46;
      *(v20 + 24) = v45;
      ++*(v11 + 16);
      v9 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25C4B5444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0AA40, qword_25C4CAD50);
  result = sub_25C4C8970();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (v4)
      {
        sub_25C4BBBA8(v21, v31);
      }

      else
      {
        sub_25C4B8A80(v21, v31);
      }

      result = sub_25C4C8A50();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_25C4BBBA8(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25C4B56BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C4C7B20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B0, &qword_25C4CACD0);
  v39 = v4;
  result = sub_25C4C8970();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25C4C8510();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_25C4B5A98(int64_t a1, uint64_t a2)
{
  v4 = sub_25C4C7B20();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_25C4C8810();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_25C4C8510();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for NXSessionDaemon.OperationItem(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C4B5DDC(int64_t a1, uint64_t a2)
{
  v41 = sub_25C4C7B20();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_25C4C8810();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_25C4C8510();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (a1 != v10 || v29 >= v30 + 2)
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_25C4B60FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25C4C8A50();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C4B628C(int64_t a1, uint64_t a2)
{
  v40 = sub_25C4C7B20();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25C4C8810();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_25C4C8510();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_25C4B65AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25C458F84(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25C4B6EA4();
      goto LABEL_7;
    }

    sub_25C4B4B80(v17, a3 & 1);
    v24 = sub_25C458F84(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25C4B6C78(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for NXSessionDaemon.OperationItem(0) - 8) + 72) * v14;

  return sub_25C4BB150(a1, v22);
}

uint64_t sub_25C4B6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_25C458F84(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_25C4B71C8();
      goto LABEL_9;
    }

    sub_25C4B5020(v20, a6 & 1);
    v23 = sub_25C458F84(a5);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v33;
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 32 * v17);
    v28 = v32;
    *v27 = v31;
    v27[1] = v28;
    v27[2] = v25;
    v27[3] = a4;
  }

  else
  {
    (*(v12 + 16))(v14, a5, v11);
    return sub_25C4B6D68(v17, v14, v31, v32, v25, a4, v26);
  }
}

uint64_t sub_25C4B698C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25C462F38(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25C4B7474();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25C4B5444(v14, a3 & 1);
    v9 = sub_25C462F38(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25C4C8A20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_25C4BDB54(a1, v20);
  }

  else
  {

    return sub_25C4B6E3C(v9, a2, a1, v19);
  }
}

uint64_t sub_25C4B6AAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25C458F84(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25C4B75F0();
      goto LABEL_7;
    }

    sub_25C4B56BC(v17, a3 & 1);
    v22 = sub_25C458F84(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25C4598E4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25C4B6C78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C4C7B20();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  result = sub_25C4BB0E8(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NXSessionDaemon.OperationItem);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25C4B6D68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_25C4C7B20();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_25C4B6E3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_25C4BBBA8(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *sub_25C4B6EA4()
{
  v1 = v0;
  v2 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25C4C7B20();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A958, &qword_25C4CACB0);
  v5 = *v0;
  v6 = sub_25C4C8960();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_25C4BACD0(v26 + v28, v37, type metadata accessor for NXSessionDaemon.OperationItem);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_25C4BB0E8(v29, *(v18 + 56) + v28, type metadata accessor for NXSessionDaemon.OperationItem);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_25C4B71C8()
{
  v1 = v0;
  v38 = sub_25C4C7B20();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A980, &qword_25C4CACC0);
  v3 = *v0;
  v4 = sub_25C4C8960();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v39 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v40;
        v20 = *(v40 + 72) * v18;
        v21 = v37;
        v22 = v38;
        (*(v40 + 16))(v37, *(v3 + 48) + v20, v38);
        v23 = 32 * v18;
        v24 = *(v3 + 56) + 32 * v18;
        v25 = *v24;
        v26 = *(v24 + 24);
        v27 = v39;
        v28 = *(v39 + 48);
        v29 = *(v19 + 32);
        v41 = *(v24 + 8);
        v29(v28 + v20, v21, v22);
        v30 = *(v27 + 56) + v23;
        *v30 = v25;
        v3 = v36;
        *(v30 + 8) = v41;
        *(v30 + 24) = v26;

        v13 = v42;
      }

      while (v42);
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

        v1 = v32;
        v5 = v39;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

void *sub_25C4B7474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0AA40, qword_25C4CAD50);
  v2 = *v0;
  v3 = sub_25C4C8960();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25C4B8A80(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25C4BBBA8(v19, *(v4 + 56) + 16 * v17);
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

char *sub_25C4B75F0()
{
  v1 = v0;
  v33 = sub_25C4C7B20();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B0, &qword_25C4CACD0);
  v3 = *v0;
  v4 = sub_25C4C8960();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

uint64_t sub_25C4B7870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_25C4C8880();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_25C4BC880(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x25F887D50](v16, a2);
      sub_25C4BC82C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_25C4BC82C(a2);
    sub_25C4BC880(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25C4BC880(a2, v16);
    v15 = *v3;
    sub_25C4B7C1C(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_25C4B79BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F8, &unk_25C4CAD20);
  result = sub_25C4C88C0();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_25C4C8880();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
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
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25C4B7C1C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C4B79BC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25C4B7D94();
      goto LABEL_12;
    }

    sub_25C4B7F0C(v7 + 1);
  }

  v9 = *v3;
  result = sub_25C4C8880();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_25C4BC880(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x25F887D50](v19, v6);
      result = sub_25C4BC82C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C4B7D94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F8, &unk_25C4CAD20);
  v2 = *v0;
  v3 = sub_25C4C88B0();
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
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_25C4BC880(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25C4B7F0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F8, &unk_25C4CAD20);
  result = sub_25C4C88C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_25C4BC880(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_25C4C8880();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25C4B8138(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      return sub_25C4C7AD0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_25C4B8270(v5, v6);
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_25C4B8270(v5, v6);
  }

  return sub_25C4C7AD0();
}

uint64_t sub_25C4B8270(uint64_t a1, uint64_t a2)
{
  result = sub_25C4C7A50();
  if (!result || (result = sub_25C4C7A70(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25C4C7A60();
      return sub_25C4C7AD0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_25C4B8304(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients] = MEMORY[0x277D84F98];
  v11 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  *v11 = 0;
  v11[1] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled] = 0;
  v12 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = sub_25C4C7C50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v9, 1, 1, v13);
  v15(v7, 1, 1, v13);
  sub_25C4C7DC0();
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations] = v10;
  v16 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  *v16 = 0;
  v16[1] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_verboseLogging] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState] = 2;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = 0;
  v17 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
  *v17 = 0;
  v17[1] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser] = 0;
  v18 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  v19 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID;
  *&v2[v19] = CUNextID64();
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems] = v10;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests] = v10;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream] = 0;
  *&v2[v18] = v24;

  (*(v14 + 104))(&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint], *MEMORY[0x277D35618], v13);
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon] = a2;
  v20 = *(a2 + 16);
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue] = v20;
  v21 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  *v21 = 0;
  v21[1] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient] = 0;
  v26.receiver = v2;
  v26.super_class = ObjectType;

  v22 = v20;
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_25C4B86B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients] = MEMORY[0x277D84F98];
  v13 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  *v13 = 0;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled] = 0;
  v14 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = sub_25C4C7C50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v11, 1, 1, v15);
  v17(v9, 1, 1, v15);
  sub_25C4C7DC0();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations] = v12;
  v18 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  *v18 = 0;
  v18[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_verboseLogging] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState] = 2;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService] = 0;
  v19 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = 0;
  v20 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  v21 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID;
  *&v4[v21] = CUNextID64();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems] = v12;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests] = v12;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream] = 0;
  (*(v16 + 104))(&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint], *MEMORY[0x277D35618], v15);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon] = a4;
  v22 = *(a4 + 16);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue] = v22;
  v23 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;
  swift_beginAccess();
  v25 = *&v4[v19];
  v26 = v33;
  *&v4[v19] = v33;

  v27 = v22;
  v28 = v26;

  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient] = 0;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t sub_25C4B8AB8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C4B8B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C4B8B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F887AF0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_25C4BC880(v4, v5);
      sub_25C4B7870(v6, v5);
      sub_25C4BC82C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_25C4B8C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v76 = a2;
  v5 = sub_25C4C7E50();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v7);
  v65 = &v58[-v9];
  MEMORY[0x28223BE20](v8);
  v63 = &v58[-v10];
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v66 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v58[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v58[-v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25C4CA7F0;
  *(v19 + 32) = 1;
  v20 = MEMORY[0x277D83B88];
  *(v19 + 88) = MEMORY[0x277D83B88];
  *(v19 + 56) = v20;
  *(v19 + 64) = 10;
  *(v19 + 96) = 5;
  *(v19 + 120) = v20;
  *(v19 + 152) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 128));
  v71 = v12;
  v22 = *(v12 + 16);
  v68 = a1;
  v75 = v11;
  v72 = v22;
  v22(boxed_opaque_existential_1, a1, v11);
  *(v19 + 160) = 6;
  *(v19 + 184) = v20;
  v23 = sub_25C4C7E30();
  v24 = v63;
  v67 = v13;
  v62 = v6;
  *(v19 + 216) = MEMORY[0x277CC9318];
  *(v19 + 192) = v23;
  *(v19 + 200) = v25;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  v66 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v26 = sub_25C4C7BD0();
  __swift_project_value_buffer(v26, qword_27FC0B978);
  v27 = v18;
  v28 = v68;
  v72(v18, v68, v75);
  v30 = v73;
  v29 = v74;
  v61 = *(v73 + 16);
  v61(v24, v76, v74);
  v31 = sub_25C4C7BB0();
  v32 = sub_25C4C86F0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v77[0] = v60;
    *v33 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v59 = v32;
    v34 = v27;
    v35 = v75;
    v36 = sub_25C4C89A0();
    v38 = v37;
    (*(v71 + 8))(v34, v35);
    v39 = sub_25C458990(v36, v38, v77);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0AA60, MEMORY[0x277D35798], MEMORY[0x277D357A0]);
    v40 = sub_25C4C89A0();
    v42 = v41;
    (*(v73 + 8))(v24, v74);
    v43 = sub_25C458990(v40, v42, v77);

    *(v33 + 14) = v43;
    _os_log_impl(&dword_25C452000, v31, v59, "Send operation event: operationUUID=%s, event=%s", v33, 0x16u);
    v44 = v60;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v44, -1, -1);
    v45 = v33;
    v30 = v73;
    v29 = v74;
    MEMORY[0x25F888630](v45, -1, -1);

    v46 = v71;
  }

  else
  {

    (*(v30 + 8))(v24, v29);
    v46 = v71;
    (*(v71 + 8))(v27, v75);
  }

  v48 = v64;
  v47 = v65;
  v49 = v75;
  v72(v64, v28, v75);
  v61(v47, v76, v29);
  v50 = v47;
  v51 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v52 = &v67[*(v30 + 80) + v51] & ~*(v30 + 80);
  v53 = (v62 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v46 + 32))(v54 + v51, v48, v49);
  (*(v30 + 32))(v54 + v52, v50, v29);
  v55 = (v54 + v53);
  v56 = v70;
  *v55 = v69;
  v55[1] = v56;

  v57 = v66;
  sub_25C4AFFC4(v66, sub_25C4BB678, v54);
}

void sub_25C4B9614()
{
  v55 = sub_25C4C7B20();
  v1 = *(v55 - 8);
  v2 = MEMORY[0x28223BE20](v55);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v3;
  MEMORY[0x28223BE20](v2);
  v53 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F0, &unk_25C4CACE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - v9;
  v10 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  swift_beginAccess();
  v49 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 64);
  v44 = v11 + 64;
  v45 = v11;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v43 = (v13 + 63) >> 6;
  v51 = v1 + 32;
  v52 = v1 + 16;
  v54 = v1;
  v46 = v1 + 8;

  v16 = 0;
  if (v15)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v45;
      v24 = v53;
      v23 = v54;
      v25 = v55;
      (*(v54 + 16))(v53, *(v45 + 48) + *(v54 + 72) * v21, v55);
      v26 = *(*(v22 + 56) + 8 * v21);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      v28 = *(v27 + 48);
      (*(v23 + 32))(v8, v24, v25);
      *&v8[v28] = v26;
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);

      v19 = v17;
LABEL_13:
      v29 = v50;
      sub_25C465DA4(v8, v50, &qword_27FC0A4F0, &unk_25C4CACE0);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
      {
        break;
      }

      v31 = *(v29 + *(v30 + 48));
      v32 = v53;
      v33 = v54;
      v56 = *(v54 + 32);
      v57 = v31;
      v34 = v55;
      v56(v53, v29, v55);
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = *(v33 + 16);
      v58 = v19;
      v37 = v47;
      v36(v47, v32, v34);
      v38 = v8;
      v39 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v35;
      v41 = v40 + v39;
      v8 = v38;
      v56(v41, v37, v34);

      sub_25C4C23B0(sub_25C4BBCD4, v40);

      (*(v33 + 8))(v32, v34);

      v16 = v58;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v43 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v43;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v43)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
        (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v44 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_25C4B9B18(uint64_t a1, uint64_t a2)
{
  v2 = sub_25C4C89F0();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25C4B9B6C(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_25C4B9B80(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_25C4B9BA8(uint64_t a1)
{
  if ((a1 - 2) >= 0xA)
  {
    return 10;
  }

  else
  {
    return a1 - 2;
  }
}

unint64_t sub_25C4B9C00()
{
  result = qword_27FC0A7E8;
  if (!qword_27FC0A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A7E8);
  }

  return result;
}

unint64_t sub_25C4B9C58()
{
  result = qword_27FC0A7F0;
  if (!qword_27FC0A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A7F0);
  }

  return result;
}

unint64_t sub_25C4B9CB0()
{
  result = qword_27FC0A7F8;
  if (!qword_27FC0A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A7F8);
  }

  return result;
}

uint64_t sub_25C4B9D04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25C4B9D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25C4B9DC8(uint64_t a1)
{
  result = sub_25C4C7C50();
  if (v2 <= 0x3F)
  {
    result = sub_25C4C7E00();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25C4B9F64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25C4B9FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NXSessionDaemon.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NXSessionDaemon.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25C4BA21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C4C7B20();
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

uint64_t sub_25C4BA2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25C4C7B20();
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

void sub_25C4BA3A4(uint64_t a1)
{
  sub_25C4C7B20();
  if (v1 <= 0x3F)
  {
    sub_25C4BA444();
    if (v2 <= 0x3F)
    {
      sub_25C4663EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25C4BA444()
{
  if (!qword_27FC0A870)
  {
    v0 = sub_25C4C87C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FC0A870);
    }
  }
}

void sub_25C4BA4F4(uint64_t a1)
{
  sub_25C4BA698(319);
  if (v1 <= 0x3F)
  {
    sub_25C4BAA8C(319, &qword_27FC0A890, &qword_27FC0A898, &qword_25C4CABB8, "operationName itemUUID error ");
    if (v2 <= 0x3F)
    {
      sub_25C4BA984(319, &qword_27FC0A8A0, "operationUUID parameterData completionHandler ");
      if (v3 <= 0x3F)
      {
        sub_25C4BA7C4(319, &qword_27FC0A8A8, &qword_27FC0A898, &qword_25C4CABB8, "itemUUID error ");
        if (v4 <= 0x3F)
        {
          sub_25C4BA7C4(319, &qword_27FC0A8B0, &qword_27FC0A888, &qword_25C4CABB0, "operationUUID completionHandler ");
          if (v5 <= 0x3F)
          {
            sub_25C4BA84C(319);
            if (v6 <= 0x3F)
            {
              sub_25C4BA984(319, &qword_27FC0A8C0, "operationUUID providerEventData completionHandler ");
              if (v7 <= 0x3F)
              {
                sub_25C4BAA0C(319);
                if (v8 <= 0x3F)
                {
                  sub_25C4BAA8C(319, &qword_27FC0A8D0, &unk_27FC0A8D8, &qword_25C4CABC0, "requestName requestUUID response ");
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_25C4BA698(uint64_t a1)
{
  if (!qword_27FC0A880)
  {
    MEMORY[0x28223BE20](a1);
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FC0A880);
    }
  }
}

void sub_25C4BA7C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25C4BA84C(uint64_t a1)
{
  if (!qword_27FC0A8B8)
  {
    MEMORY[0x28223BE20](a1);
    sub_25C4C7B20();
    sub_25C4C7E50();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FC0A8B8);
    }
  }
}

void sub_25C4BA984(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_25C4BAA0C(uint64_t a1)
{
  if (!qword_27FC0A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FC0A8C8);
    }
  }
}

void sub_25C4BAA8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NXSessionDaemon.SessionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NXSessionDaemon.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25C4BAC70()
{
  result = qword_27FC0BF70[0];
  if (!qword_27FC0BF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC0BF70);
  }

  return result;
}

void sub_25C4BACC4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_25C45A004(a1, a2);
  }
}

uint64_t sub_25C4BACD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C4BAD38()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

void sub_25C4BAE54(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_25C4AFA84(a1, v10, v11, v1 + v5, v1 + v7, v9, v13, v14);
}

uint64_t sub_25C4BAF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x25F887FD0]();

  return v2;
}

unint64_t sub_25C4BAFE4()
{
  result = qword_27FC0A920;
  if (!qword_27FC0A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A920);
  }

  return result;
}

unint64_t sub_25C4BB038()
{
  result = qword_27FC0A938;
  if (!qword_27FC0A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A938);
  }

  return result;
}

unint64_t sub_25C4BB094()
{
  result = qword_27FC0A940;
  if (!qword_27FC0A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A940);
  }

  return result;
}

uint64_t sub_25C4BB0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C4BB150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void CUEncodeNSErrorDictionaryStd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  CUEncodeNSErrorDictionary();
}

uint64_t objectdestroy_68Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v4 | 7);
}

void sub_25C4BB350(void *a1, const char *a2, ...)
{
  v5 = *(sub_25C4C7B20() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  sub_25C4B0DB8(a1, v2 + v7, v2 + v9, *(v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4BB518()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25C4C7E50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_25C4BB678(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25C4C7E50() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_25C4B15B8(a1, v1 + v4, (v1 + v7), v9, v10);
}

uint64_t sub_25C4BB77C()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25C4BB81C(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_25C4B1A24(a1, v1 + v4, v6, v7);
}

uint64_t sub_25C4BB8BC()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_25C4BB9B0(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_25C4B1D3C(a1, v6, v7, v1 + v4, v8, v10, v11);
}

uint64_t objectdestroy_64Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4BBC10()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25C4BBCD4()
{
  v1 = *(sub_25C4C7B20() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_25C4AF950(v2, v3);
}

uint64_t sub_25C4BBD54()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25C4BBD8C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      if (v4 == *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber])
      {
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v6 = sub_25C4C7BD0();
        __swift_project_value_buffer(v6, qword_27FC0B978);
        v7 = a1;
        v8 = sub_25C4C7BB0();
        v9 = sub_25C4C8720();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          *(v10 + 4) = v7;
          *v11 = v7;
          v12 = v7;
          _os_log_impl(&dword_25C452000, v8, v9, "NAN discover found: endpoint=%@", v10, 0xCu);
          sub_25C4666F8(v11, &qword_27FC0A9D8, &qword_25C4CAD10);
          MEMORY[0x25F888630](v11, -1, -1);
          MEMORY[0x25F888630](v10, -1, -1);
        }

        v13 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound];
        *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = v7;

        v14 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
        if (*&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer])
        {
          swift_getObjectType();
          v15 = v7;
          swift_unknownObjectRetain();
          sub_25C4C8790();
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = v7;
        }

        *&v3[v14] = 0;
        swift_unknownObjectRelease();
        sub_25C495A00();
      }

      v3 = v5;
    }
  }
}

void sub_25C4BBFC4(void *a1, uint64_t *a2, const char *a3, ...)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *a2;
      v10 = *&v7[*a2];
      if (v10 && v8 == v10 && a1)
      {
        v22 = v8;
        v11 = a1;
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v12 = sub_25C4C7BD0();
        __swift_project_value_buffer(v12, qword_27FC0B978);
        v13 = a1;
        v14 = sub_25C4C7BB0();
        v15 = sub_25C4C8710();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v23 = v17;
          *v16 = 136315138;
          swift_getErrorValue();
          v18 = sub_25C4C8A30();
          v20 = sub_25C458990(v18, v19, &v23);

          *(v16 + 4) = v20;
          _os_log_impl(&dword_25C452000, v14, v15, a3, v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x25F888630](v17, -1, -1);
          MEMORY[0x25F888630](v16, -1, -1);
        }

        [v22 invalidate];
        v21 = *&v7[v9];
        *&v7[v9] = 0;

        v7 = v21;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_25C4BC1E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_25C4BC230()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
      v4 = *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer];
      if (!v4 || v2 != v4)
      {

        swift_unknownObjectRelease();
        return;
      }

      swift_getObjectType();
      sub_25C4C8790();
      *&v1[v3] = 0;
      swift_unknownObjectRelease();
      v5 = objc_allocWithZone(sub_25C4C7B80());
      v6 = sub_25C4C7B90();
      v7 = *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
      *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v6;

      sub_25C495A00();
      swift_unknownObjectRelease();
    }
  }
}

void sub_25C4BC34C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession;
      v6 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession];
      if (v6 && v4 == v6)
      {
        v7 = v4;
        v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
        if (*&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_25C4C8790();
          swift_unknownObjectRelease();
        }

        *&v3[v8] = 0;
        swift_unknownObjectRelease();
        if (a1)
        {
          v9 = a1;
          [v7 invalidate];
          v10 = *&v3[v5];
          *&v3[v5] = 0;

          v11 = objc_allocWithZone(sub_25C4C7B80());
          v12 = a1;
          v13 = sub_25C4C7B90();
          v14 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
          *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v13;

          sub_25C495A00();
          return;
        }

        v15 = [v7 peerAddressString];
        v16 = sub_25C4C8550();
        v18 = v17;

        v19 = &v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
        *v19 = v16;
        v19[1] = v18;

        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v20 = sub_25C4C7BD0();
        __swift_project_value_buffer(v20, qword_27FC0B978);

        v21 = sub_25C4C7BB0();
        v22 = sub_25C4C8720();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v26 = v24;
          *v23 = 136315138;
          v25 = sub_25C458990(v16, v18, &v26);

          *(v23 + 4) = v25;
          _os_log_impl(&dword_25C452000, v21, v22, "NAN data session started: peerAddress=%s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x25F888630](v24, -1, -1);
          MEMORY[0x25F888630](v23, -1, -1);
        }

        else
        {
        }

        sub_25C495A00();
      }

      else
      {
      }
    }
  }
}

void sub_25C4BC660()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
      v4 = *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer];
      if (!v4 || v2 != v4)
      {

        swift_unknownObjectRelease();
        return;
      }

      swift_getObjectType();
      sub_25C4C8790();
      *&v1[v3] = 0;
      swift_unknownObjectRelease();
      v5 = objc_allocWithZone(sub_25C4C7B80());
      v6 = sub_25C4C7B90();
      v7 = *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
      *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v6;

      sub_25C495A00();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25C4BC77C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25C4BC7C4()
{
  result = qword_27FC0A9E8;
  if (!qword_27FC0A9E8)
  {
    sub_25C4BC77C(255, &qword_27FC0A9E0, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A9E8);
  }

  return result;
}

uint64_t sub_25C4BC8DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25C4BC914(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      if (v4 == *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
      {
        sub_25C49F7D4(v4, a1);
      }
    }
  }
}

uint64_t sub_25C4BC9B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C4BCA3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C459FB0(result, a2);
  }

  return result;
}

unint64_t sub_25C4BCA50()
{
  result = qword_27FC0AA18;
  if (!qword_27FC0AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0AA18);
  }

  return result;
}

uint64_t sub_25C4BCAA4()
{

  sub_25C45A004(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_25C4BCB70()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

char *sub_25C4BCC7C(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + v6 + 16) & ~v4;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_25C4AB4CC(a1, v8, (v1 + v5), v10, v11, (v1 + v7));
}

id CUDecodeNSErrorDictionaryStd(void *a1)
{
  v1 = a1;
  v2 = CUDecodeNSErrorDictionary();

  return v2;
}

uint64_t objectdestroy_176Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_25C4BCEB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_25C4C7B20() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return a2(a1, v7, v2 + v6, v8);
}

uint64_t sub_25C4BCF6C()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

char *sub_25C4BD038(void *a1, unint64_t a2, char a3)
{
  v7 = *(sub_25C4C7B20() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_25C4AC540(a1, a2, a3 & 1, v8, v9, v10, v11);
}

id sub_25C4BD0C8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_25C459FB0(a1, a2);
  }
}

void sub_25C4BD0D4(int a1, int a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v6 == *&v5[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4B34DC([v6 pinTypeActual], a1, a2);
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

void sub_25C4BD1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if (v7 == *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4BD598([v7 pinTypeActual], a2, a3);
      }
    }

    else
    {
      v8 = v6;
    }
  }
}

void sub_25C4BD274(char a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if (v10 == *&v9[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4B3AD8(v7, a1, a2, a3);
      }

      v9 = v11;
    }
  }
}

uint64_t objectdestroy_102Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_25C4BD390(void *a1)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v6 == *&v5[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4B3E60(v3, a1);
      }

      v5 = v7;
    }
  }
}

void sub_25C4BD444(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = objc_allocWithZone(sub_25C4C7B80());
      v5 = a1;
      v6 = a1;
      v7 = sub_25C4C7B90();
      v8 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
      *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v7;

      sub_25C495A00();
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25C4BD558()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C4BD598(int a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  LODWORD(v44) = a1;
  v4 = sub_25C4C7D80();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7EC0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_25C4C7F90();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = sub_25C4C84C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_25C4C84E0();
  v20 = *(v14 + 8);
  v19 = (v14 + 8);
  v20(v16, v13);
  if (v17)
  {
    sub_25C4C7EB0();

    sub_25C4C7F80();
    v46 = v8;
    v19 = *(v8 + 16);
    v21 = v50;
    v19(v50, v12, v7);
    v16 = v47;
    (*(v47 + 13))(v21, *MEMORY[0x277D35748], v4);
    v13 = v4;
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = sub_25C4C7BD0();
  __swift_project_value_buffer(v22, qword_27FC0B978);
  v23 = v48;
  v19(v48, v12, v7);
  v24 = sub_25C4C7BB0();
  v25 = sub_25C4C8720();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v13;
    v28 = v27;
    v51[0] = v27;
    *v26 = 136315138;
    sub_25C4B8B3C(&qword_27FC0AA30, MEMORY[0x277D35800], MEMORY[0x277D35808]);
    v29 = sub_25C4C89A0();
    v30 = v23;
    v31 = v16;
    v33 = v32;
    v44 = v12;
    v34 = *(v46 + 8);
    v34(v30, v7);
    v35 = sub_25C458990(v29, v33, v51);
    v16 = v31;

    *(v26 + 4) = v35;
    _os_log_impl(&dword_25C452000, v24, v25, "Pairing present: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v36 = v28;
    v13 = v45;
    MEMORY[0x25F888630](v36, -1, -1);
    MEMORY[0x25F888630](v26, -1, -1);

    v37 = v34;
    v12 = v44;
  }

  else
  {

    v37 = *(v46 + 8);
    v37(v23, v7);
  }

  v38 = v49;
  *(v49 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) = 1;
  v39 = v38 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler;
  swift_beginAccess();
  v40 = *v39;
  if (*v39)
  {
    v41 = *(v39 + 8);
    swift_endAccess();

    v42 = v50;
    v40(v50);
    sub_25C45A2C8(v40, v41);
    (*(v16 + 1))(v42, v13);
    return (v37)(v12, v7);
  }

  else
  {
    (*(v16 + 1))(v50, v13);
    v37(v12, v7);
    return swift_endAccess();
  }
}

uint64_t sub_25C4BDC58()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0C088);
  __swift_project_value_buffer(v0, qword_27FC0C088);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C4BDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  v19 = (v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  *v19 = 0;
  v19[1] = 0;
  *(v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session) = 0;
  v20 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint;
  v21 = sub_25C4C7C50();
  (*(*(v21 - 8) + 32))(v18 + v20, a1, v21);
  v22 = *(a10 + 16);
  *(v18 + 40) = a10;
  *(v18 + 48) = v22;
  v23 = (v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID);
  *v23 = a4;
  v23[1] = a5;
  v24 = (v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  *v25 = a6;
  v25[1] = a7;
  *(v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID) = a8;
  v26 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v27 = sub_25C4C7B20();
  (*(*(v27 - 8) + 32))(v18 + v26, a9, v27);
  *(v18 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection) = a11;
  v28 = v22;
  return v18;
}

uint64_t sub_25C4BDE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = (v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  *(v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session) = 0;
  v17 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint;
  v18 = *MEMORY[0x277D35618];
  v19 = sub_25C4C7C50();
  (*(*(v19 - 8) + 104))(v14 + v17, v18, v19);
  v20 = *(a6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *(v14 + 40) = *(a6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon);
  *(v14 + 48) = v20;
  v21 = (v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  *v22 = a7;
  v22[1] = a8;
  v23 = (v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  *v23 = a3;
  v23[1] = a4;
  *(v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID) = 0;
  v24 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v25 = sub_25C4C7B20();
  (*(*(v25 - 8) + 32))(v14 + v24, a5, v25);
  swift_beginAccess();
  *(v14 + v16) = a6;
  *(v14 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection) = 0;

  v26 = v20;
  return v14;
}

uint64_t sub_25C4BE020()
{
  v1 = v0;
  v2 = sub_25C4C7C50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  if (qword_27FC0C080 != -1)
  {
    swift_once();
  }

  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0C088);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8700();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "deinit", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  v13 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint;
  (*(v3 + 16))(v8, v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v2);
  (*(v3 + 104))(v6, *MEMORY[0x277D35618], v2);
  sub_25C4C3A48(&qword_27FC0A630, MEMORY[0x277D35630], MEMORY[0x277D35640]);
  v14 = sub_25C4C8530();
  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v8, v2);
  if ((v14 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
    swift_beginAccess();
    v17 = *(v1 + v16);
    if (v17)
    {
      v18 = v17;
      sub_25C497730(v1, &off_286E24458, 0);
    }
  }

  sub_25C45A2C8(*(v1 + 24), *(v1 + 32));

  v15((v1 + v13), v2);

  v19 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v20 = sub_25C4C7B20();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C4BE398()
{
  sub_25C4BE020();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25C4BE3F0(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v60 = a2;
  v61 = a4;
  v58 = a3;
  v59 = a1;
  v7 = sub_25C4C7C50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C84C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + 48);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v64 = v7;
    if (qword_27FC0C080 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_25C4C7BD0();
  __swift_project_value_buffer(v17, qword_27FC0C088);

  v18 = sub_25C4C7BB0();
  v19 = sub_25C4C8720();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57 = v5;
    v22 = v21;
    v62 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_25C458990(*(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName), *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8), &v62);
    *(v20 + 12) = 2080;
    sub_25C4C7B20();
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_25C4C89A0();
    v25 = sub_25C458990(v23, v24, &v62);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_25C452000, v18, v19, "Operation start client: name=%s, uuid=%s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v22, -1, -1);
    MEMORY[0x25F888630](v20, -1, -1);
  }

  v26 = v64;
  (*(v8 + 16))(v10, v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v64);
  v27 = (*(v8 + 88))(v10, v26);
  if (v27 == *MEMORY[0x277D35620])
  {
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D355F0] || v27 == *MEMORY[0x277D35628])
  {
    goto LABEL_10;
  }

  if (v27 != *MEMORY[0x277D35608] && v27 != *MEMORY[0x277D355F8] && v27 != *MEMORY[0x277D35610])
  {
    if (v27 == *MEMORY[0x277D35600])
    {
      (*(v8 + 96))(v10, v26);
      v48 = sub_25C4C8170();
      (*(*(v48 - 8) + 8))(v10, v48);
      goto LABEL_11;
    }

    if (v27 == *MEMORY[0x277D35618])
    {
      v49 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
      v50 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);
      v51 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
      v52 = swift_allocObject();
      v54 = v59;
      v53 = v60;
      v52[2] = v6;
      v52[3] = v54;
      v55 = v58;
      v52[4] = v53;
      v52[5] = v55;
      v52[6] = v61;

      sub_25C459FB0(v54, v53);

      v56 = sub_25C4880B8();
      sub_25C4880C0(v49, v50, v6 + v51, v56 & 1, sub_25C4C2EC4, v52);

      return;
    }

LABEL_10:
    (*(v8 + 8))(v10, v26);
LABEL_11:
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_25C4C88F0();

    v62 = 0xD000000000000016;
    v63 = 0x800000025C4D09B0;
    v31 = sub_25C4C7C10();
    MEMORY[0x25F887A50](v31);

    v32 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

LABEL_6:
  (*(v8 + 8))(v10, v26);
  v28 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  swift_beginAccess();
  v29 = *(v6 + v28);
  if (v29)
  {
    v30 = *(v6 + v28);
  }

  else
  {
    v33 = sub_25C48988C(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID), *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID + 8));
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = &v33[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
    swift_beginAccess();
    v36 = *v35;
    v37 = v35[1];
    *v35 = sub_25C4C3A90;
    v35[1] = v34;
    v38 = v33;

    sub_25C45A2C8(v36, v37);

    v39 = swift_allocObject();
    swift_weakInit();
    v40 = &v38[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    *v40 = sub_25C4C3A98;
    v40[1] = v39;
    v30 = v38;

    sub_25C45A2C8(v41, v42);

    v43 = *(v6 + v28);
    *(v6 + v28) = v30;

    sub_25C494DD4(v6, &off_286E24458);
    v29 = 0;
  }

  v44 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  v45 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);
  v46 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v47 = v29;
  sub_25C49E5D4(v6, v44, v45, v6 + v46, v59, v60, v58, v61);
}

uint64_t sub_25C4BEBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a5;
  v51 = a3;
  v52 = a4;
  v55 = a2;
  v67 = sub_25C4C7B20();
  v9 = *(v67 - 8);
  v62 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v48 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v47 - v12;
  v14 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  v56 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8);
  v15 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);
  v66 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  v63 = v14;
  v64 = v15;
  v16 = *(v9 + 16);
  v59 = v47 - v12;
  v16(v47 - v12, v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID);
  v60 = v16;
  v61 = v9 + 16;
  v17 = (v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  v57 = v6;
  v65 = a1;
  *v17 = a1;
  v17[1] = a2;
  v47[1] = v17;

  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v48;
  v20 = v67;
  (v16)(v48, v13, v67);
  v21 = *(v9 + 80);
  v22 = (v21 + 40) & ~v21;
  v23 = v22 + v62;
  v24 = swift_allocObject();
  v25 = v66;
  *(v24 + 2) = v18;
  *(v24 + 3) = v25;
  *(v24 + 4) = v64;
  v53 = v9;
  v58 = *(v9 + 32);
  v26 = v19;
  v58(&v24[v22], v19, v20);
  swift_unknownObjectRetain();

  sub_25C4C7F20();

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v19;
  v29 = v67;
  v60(v28, v59, v67);
  v30 = swift_allocObject();
  v31 = v66;
  *(v30 + 2) = v27;
  *(v30 + 3) = v31;
  *(v30 + 4) = v64;
  v58(&v30[v22], v26, v29);
  v32 = &v30[(v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v33 = v56;
  *v32 = v63;
  *(v32 + 1) = v33;

  sub_25C4C7F00();

  v34 = *(v57 + 48);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v59;
  v37 = v29;
  v60(v26, v59, v29);
  v38 = (v21 + 48) & ~v21;
  v39 = (v62 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = v37;
  v41 = swift_allocObject();
  *(v41 + 2) = v35;
  *(v41 + 3) = v34;
  v42 = v64;
  *(v41 + 4) = v66;
  *(v41 + 5) = v42;
  v58(&v41[v38], v26, v40);
  v43 = &v41[v39];
  v44 = v56;
  *v43 = v63;
  *(v43 + 1) = v44;

  v45 = v34;
  sub_25C4C7EE0();

  sub_25C4C7F30();
  return (*(v53 + 8))(v36, v67);
}

uint64_t sub_25C4BF1B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a1;
  v7 = sub_25C4C7E50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FC0C080 != -1)
    {
      swift_once();
    }

    v16 = sub_25C4C7BD0();
    __swift_project_value_buffer(v16, qword_27FC0C088);
    (*(v12 + 16))(v14, a5, v11);
    (*(v8 + 16))(v10, v34, v7);

    v17 = sub_25C4C7BB0();
    v18 = sub_25C4C8720();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = v17;
      v20 = v19;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v20 = 136315650;
      *(v20 + 4) = sub_25C458990(v33, a4, &v35);
      *(v20 + 12) = 2080;
      sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v33) = v18;
      v21 = sub_25C4C89A0();
      v23 = v22;
      (*(v12 + 8))(v14, v11);
      v24 = sub_25C458990(v21, v23, &v35);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2080;
      sub_25C4C3A48(&unk_27FC0AA60, MEMORY[0x277D35798], MEMORY[0x277D357A0]);
      v25 = sub_25C4C89A0();
      v27 = v26;
      (*(v8 + 8))(v10, v7);
      v28 = sub_25C458990(v25, v27, &v35);

      *(v20 + 24) = v28;
      v29 = v31;
      _os_log_impl(&dword_25C452000, v31, v33, "Operation event client: name=%s, uuid=%s event=%s", v20, 0x20u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v30, -1, -1);
      MEMORY[0x25F888630](v20, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      (*(v12 + 8))(v14, v11);
    }

    sub_25C4BF5EC(v34);
  }

  return result;
}

void sub_25C4BF5EC(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v58 = sub_25C4C7D60();
  v3 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C80B0();
  v60 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = sub_25C4C84C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 48);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  v17 = sub_25C4C84E0();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection))
    {
      v57 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection);
      swift_unknownObjectRetain();
      empty = xpc_dictionary_create_empty();
      v18 = *MEMORY[0x277D35858];
      v61 = v2;
      v19 = v60;
      v20 = *(v60 + 104);
      v55 = v60 + 104;
      v56 = v20;
      v20(v10, v18, v6);
      sub_25C4C80A0();
      v60 = *(v19 + 8);
      (v60)(v10, v6);
      v21 = v5;
      v22 = v5;
      v23 = v58;
      (*(v3 + 104))(v22, *MEMORY[0x277D35710], v58);
      sub_25C4C7D50();
      (*(v3 + 8))(v21, v23);
      v24 = sub_25C4C8570();

      v25 = sub_25C4C8570();

      v26 = empty;
      xpc_dictionary_set_string(empty, (v24 + 32), (v25 + 32));

      v27 = v56;
      v56(v10, *MEMORY[0x277D35840], v6);
      sub_25C4C80A0();
      v28 = v60;
      (v60)(v10, v6);
      v29 = *(v61 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);
      v30 = sub_25C4C8570();

      xpc_dictionary_set_uint64(v26, (v30 + 32), v29);

      v31 = v59;
      v27(v59, *MEMORY[0x277D35898], v6);
      sub_25C4C80A0();
      v28(v31, v6);
      v47 = sub_25C4C7E10();
      v48 = sub_25C4C8570();

      xpc_dictionary_set_value(v26, (v48 + 32), v47);
      swift_unknownObjectRelease();

      xpc_connection_send_message(v57, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
      swift_beginAccess();
      v43 = *(v2 + v42);
      if (v43)
      {
        v44 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);
        v45 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
        v46 = v43;
        sub_25C49EDC8(v44, v2 + v45, v62, nullsub_1, 0);
      }

      else
      {
        if (qword_27FC0C080 != -1)
        {
          swift_once();
        }

        v49 = sub_25C4C7BD0();
        __swift_project_value_buffer(v49, qword_27FC0C088);

        v50 = sub_25C4C7BB0();
        v51 = sub_25C4C8710();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 134217984;
          *(v52 + 4) = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);

          _os_log_impl(&dword_25C452000, v50, v51, "### No transport to report operation event: operationID=%llu", v52, 0xCu);
          MEMORY[0x25F888630](v52, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v32 = sub_25C4C7BD0();
    __swift_project_value_buffer(v32, qword_27FC0C088);

    v33 = v15;
    v34 = sub_25C4C7BB0();
    v35 = sub_25C4C8710();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v17;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63[0] = v38;
      *v37 = 134218242;
      *(v37 + 4) = v36;

      *(v37 + 12) = 2080;
      swift_getErrorValue();
      v39 = sub_25C4C8A30();
      v41 = sub_25C458990(v39, v40, v63);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_25C452000, v34, v35, "### Report event failed: operationID=%llu, error=%s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x25F888630](v38, -1, -1);
      MEMORY[0x25F888630](v37, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25C4BFD90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v34 = a4;
  v35 = a7;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = a1;
    if (qword_27FC0C080 != -1)
    {
      swift_once();
    }

    v18 = sub_25C4C7BD0();
    __swift_project_value_buffer(v18, qword_27FC0C088);
    (*(v14 + 16))(v16, a6, v13);

    v19 = a8;
    v20 = sub_25C4C7BB0();
    v21 = sub_25C4C8720();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = a2;
      v23 = v22;
      v31 = swift_slowAlloc();
      v36 = v31;
      *v23 = 136315650;
      *(v23 + 4) = sub_25C458990(v34, a5, &v36);
      *(v23 + 12) = 2080;
      sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_25C4C89A0();
      v26 = v25;
      (*(v14 + 8))(v16, v13);
      v27 = sub_25C458990(v24, v26, &v36);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_25C458990(v35, v19, &v36);
      _os_log_impl(&dword_25C452000, v20, v21, "Provider event client: name=%s, uuid=%s, client=%s", v23, 0x20u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v28, -1, -1);
      v29 = v23;
      a2 = v32;
      MEMORY[0x25F888630](v29, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    sub_25C4C00CC(v33, a2);
  }

  return result;
}

void sub_25C4C00CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v44 = sub_25C4C7D60();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C80B0();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 48);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  v16 = sub_25C4C84E0();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection))
  {
    v43 = *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection);
    swift_unknownObjectRetain();
    empty = xpc_dictionary_create_empty();
    v17 = *MEMORY[0x277D35858];
    v18 = v45;
    v41 = *(v45 + 104);
    v41(v9, v17, v7);
    v39 = sub_25C4C80A0();
    v42 = v3;
    v45 = *(v18 + 8);
    (v45)(v9, v7);
    v19 = v4;
    v20 = *(v4 + 104);
    v21 = v44;
    v20(v6, *MEMORY[0x277D35738], v44);
    sub_25C4C7D50();
    (*(v19 + 8))(v6, v21);
    v22 = sub_25C4C8570();

    v23 = sub_25C4C8570();

    v24 = empty;
    xpc_dictionary_set_string(empty, (v22 + 32), (v23 + 32));

    v25 = v41;
    v41(v9, *MEMORY[0x277D35840], v7);
    sub_25C4C80A0();
    v26 = v45;
    (v45)(v9, v7);
    v27 = *(v42 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);
    v28 = sub_25C4C8570();

    xpc_dictionary_set_uint64(v24, (v28 + 32), v27);

    v25(v9, *MEMORY[0x277D358E0], v7);
    sub_25C4C80A0();
    v26(v9, v7);
    v29 = sub_25C4C7AC0();
    v30 = sub_25C4C8570();

    xpc_dictionary_set_value(v24, (v30 + 32), v29);
    swift_unknownObjectRelease();

    xpc_connection_send_message(v43, v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v31 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  swift_beginAccess();
  v32 = *(v3 + v31);
  if (v32)
  {
    v33 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
    v34 = v32;
    sub_25C49F154(v3 + v33, v46, v47, nullsub_1, 0);

    return;
  }

  if (qword_27FC0C080 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v35 = sub_25C4C7BD0();
  __swift_project_value_buffer(v35, qword_27FC0C088);

  v36 = sub_25C4C7BB0();
  v37 = sub_25C4C8710();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);

    _os_log_impl(&dword_25C452000, v36, v37, "### No transport to report operation provider event: operationID=%llu", v38, 0xCu);
    MEMORY[0x25F888630](v38, -1, -1);
  }

  else
  {
  }
}

void sub_25C4C0694(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, void, uint64_t), uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a4;
  v64 = a8;
  v67 = a6;
  v68 = a5;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v13 = sub_25C4C8470();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25C4C8490();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v65 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25C4C7B20();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = a13;
    v53 = a12;
    v66 = a10;
    v51 = a9;
    v25 = *(v21 + 16);
    v52 = Strong;
    v50 = v20;
    v25(&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a11, v20);
    v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v56 = v13;
    v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = v18;
    v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
    v57 = v14;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v58 = v17;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = v16;
    v32 = swift_allocObject();
    v33 = v66;
    *(v32 + 16) = v51;
    *(v32 + 24) = v33;
    (*(v21 + 32))(v32 + v26, v23, v50);
    v34 = (v32 + v27);
    v35 = v61;
    *v34 = v60;
    v34[1] = v35;
    v36 = (v32 + v28);
    v37 = v54;
    *v36 = v53;
    v36[1] = v37;
    *(v32 + v29) = v52;
    v38 = (v32 + v30);
    v40 = v62;
    v39 = v63;
    *v38 = v62;
    v38[1] = v39;
    v41 = v64;
    *(v32 + v31) = v64;
    v42 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
    v43 = v67;
    *v42 = v68;
    v42[1] = v43;
    aBlock[4] = sub_25C4C387C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C4676B4;
    aBlock[3] = &block_descriptor_6;
    v44 = _Block_copy(aBlock);

    sub_25C459FB0(v40, v39);
    v41;

    v45 = v65;
    sub_25C4C8480();
    v69 = MEMORY[0x277D84F90];
    sub_25C4C3A48(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C48B830();
    v46 = v55;
    v47 = v56;
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v45, v46, v44);
    _Block_release(v44);

    (*(v57 + 8))(v46, v47);
    (*(v59 + 8))(v45, v58);
  }

  else
  {
    v48 = objc_allocWithZone(sub_25C4C7B80());
    v49 = sub_25C4C7B90();
    v68(v49, 0, 1);
  }
}

uint64_t sub_25C4C0BC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v76 = a8;
  v70 = a1;
  v71 = a6;
  v79 = a4;
  v64 = sub_25C4C8470();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61[3] = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25C4C8490();
  v61[2] = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61[1] = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v66 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v65 = v61 - v22;
  v69 = sub_25C4C7E00();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25C4C7B20();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0C080 != -1)
  {
    swift_once();
  }

  v74 = a9;
  v75 = a10;
  v28 = a12;
  v78 = a13;
  v73 = a11;
  v29 = sub_25C4C7BD0();
  __swift_project_value_buffer(v29, qword_27FC0C088);
  (*(v25 + 16))(v27, a3, v24);

  v30 = sub_25C4C7BB0();
  v31 = sub_25C4C8720();

  v32 = os_log_type_enabled(v30, v31);
  v77 = a5;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v72 = a12;
    v35 = v34;
    aBlock = v34;
    *v33 = 136315906;
    *(v33 + 4) = sub_25C458990(v70, a2, &aBlock);
    *(v33 + 12) = 2080;
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    LODWORD(v70) = v31;
    v36 = sub_25C4C89A0();
    v38 = v37;
    (*(v25 + 8))(v27, v24);
    v39 = sub_25C458990(v36, v38, &aBlock);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_25C458990(v79, a5, &aBlock);
    *(v33 + 32) = 2080;
    *(v33 + 34) = sub_25C458990(v71, a7, &aBlock);
    _os_log_impl(&dword_25C452000, v30, v70, "Operation send request: name=%s, uuid=%s, requestName=%s, client=%s", v33, 0x2Au);
    swift_arrayDestroy();
    v40 = v35;
    v28 = v72;
    MEMORY[0x25F888630](v40, -1, -1);
    MEMORY[0x25F888630](v33, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v27, v24);
  }

  v41 = swift_allocObject();
  v42 = v73;
  v41[2] = v73;
  v41[3] = v28;
  v41[4] = v78;
  v43 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  v44 = v76;
  swift_beginAccess();
  v45 = *(v44 + v43);
  if (v45)
  {

    v46 = v42;
    v47 = v45;
    sub_25C49F4C8(v79, v77, v74, v75, sub_25C4C39B8, v41);
  }

  else
  {
    v72 = v28;
    v76 = *(v44 + 40);
    v48 = *MEMORY[0x277D35618];
    v49 = v42;
    v50 = sub_25C4C7C50();
    v51 = *(v50 - 8);
    v52 = *(v51 + 104);
    v53 = v65;
    v52(v65, v48, v50);
    v54 = *(v51 + 56);
    v54(v53, 0, 1, v50);
    v55 = v66;
    v52(v66, v48, v50);
    v54(v55, 0, 1, v50);

    v56 = v49;
    v57 = v68;
    sub_25C4C7DC0();
    v58 = sub_25C4880B8();
    sub_25C4892D0(v79, v77, v74, v75, v57, v58 & 1, sub_25C4C39B8, v41);
    v59 = (v67 + 8);

    return (*v59)(v57, v69);
  }
}

uint64_t sub_25C4C152C(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v11 = sub_25C4C8470();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25C4C8490();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  LOBYTE(a5) = a3 & 1;
  *(v18 + 48) = a3 & 1;
  aBlock[4] = sub_25C4C3B20;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C4676B4;
  aBlock[3] = &block_descriptor_43;
  v19 = _Block_copy(aBlock);

  sub_25C4BD0C8(a1, a2, a5);
  sub_25C4C8480();
  v24 = MEMORY[0x277D84F90];
  sub_25C4C3A48(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C48B830();
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_25C4C17F8(uint64_t a1)
{
  v1 = sub_25C4C7D00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C4C7E50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16))
    {
    }

    else
    {
      sub_25C4C80C0();
      (*(v2 + 104))(v4, *MEMORY[0x277D35658], v1);
      *v8 = sub_25C4C80E0();
      (*(v6 + 104))(v8, *MEMORY[0x277D35790], v5);
      sub_25C4BF5EC(v8);

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_25C4C19FC()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 48);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  if (*(v0 + 16) != 1)
  {
    return result;
  }

  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler))
  {
    return result;
  }

  v8 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  result = swift_beginAccess();
  if (*(v0 + v8))
  {
    return result;
  }

  if (qword_27FC0C080 != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0C088);

  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315394;
    sub_25C4C7C50();
    sub_25C4C3A48(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
    v14 = sub_25C4C89A0();
    v16 = sub_25C458990(v14, v15, v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25C458990(*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label), *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8), v22);
    _os_log_impl(&dword_25C452000, v10, v11, "Operation cancelled: endpoint=%s, client=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  swift_beginAccess();
  v17 = *(v0 + 24);
  if (v17)
  {
    v18 = *(v0 + 32);

    v17(v19);
    sub_25C45A2C8(v17, v18);
    v20 = *(v0 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return sub_25C45A2C8(v20, v21);
}

void sub_25C4C1D5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;
  v7 = sub_25C4C7C50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C84C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + 48);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v43 = v7;
  if (qword_27FC0C080 != -1)
  {
LABEL_24:
    swift_once();
  }

  v17 = sub_25C4C7BD0();
  __swift_project_value_buffer(v17, qword_27FC0C088);

  v18 = sub_25C4C7BB0();
  v19 = sub_25C4C8720();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v5;
    v22 = v21;
    v41 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_25C458990(*(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName), *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8), &v41);
    *(v20 + 12) = 2080;
    sub_25C4C7B20();
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_25C4C89A0();
    v25 = sub_25C458990(v23, v24, &v41);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_25C452000, v18, v19, "Operation update client: name=%s, uuid=%s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v22, -1, -1);
    MEMORY[0x25F888630](v20, -1, -1);
  }

  v26 = v43;
  (*(v8 + 16))(v10, v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v43);
  v27 = (*(v8 + 88))(v10, v26);
  if (v27 == *MEMORY[0x277D35620])
  {
LABEL_6:
    (*(v8 + 8))(v10, v26);
    v28 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
    swift_beginAccess();
    v29 = *(v6 + v28);
    if (v29)
    {
      v30 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
      v31 = v29;
      sub_25C49E9C4(v6 + v30, v37, v38, v39, v40);

      return;
    }

    goto LABEL_12;
  }

  if (v27 == *MEMORY[0x277D355F0] || v27 == *MEMORY[0x277D35628])
  {
    goto LABEL_10;
  }

  if (v27 == *MEMORY[0x277D35608] || v27 == *MEMORY[0x277D355F8] || v27 == *MEMORY[0x277D35610])
  {
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D35600])
  {
    (*(v8 + 96))(v10, v26);
    v35 = sub_25C4C8170();
    (*(*(v35 - 8) + 8))(v10, v35);
    goto LABEL_11;
  }

  if (v27 != *MEMORY[0x277D35618])
  {
LABEL_10:
    (*(v8 + 8))(v10, v26);
LABEL_11:
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_25C4C88F0();

    v41 = 0xD000000000000016;
    v42 = 0x800000025C4D09B0;
    v32 = sub_25C4C7C10();
    MEMORY[0x25F887A50](v32);

    v33 = objc_allocWithZone(sub_25C4C7B80());
LABEL_13:
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

  if (!*(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler))
  {
LABEL_12:
    v34 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_13;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_25C4C7F50();
  swift_unknownObjectRelease();
}

void sub_25C4C23B0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v5 = sub_25C4C7C50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C4C84C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + 48);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v57 = v5;
    if (qword_27FC0C080 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_25C4C7BD0();
  v16 = __swift_project_value_buffer(v15, qword_27FC0C088);

  v17 = sub_25C4C7BB0();
  v18 = sub_25C4C8720();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v55 = v16;
    v21 = a2;
    v22 = v20;
    v59 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_25C458990(*(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName), *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8), &v59);
    *(v19 + 12) = 2080;
    sub_25C4C7B20();
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_25C4C89A0();
    v25 = sub_25C458990(v23, v24, &v59);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_25C452000, v17, v18, "Operation cancel client: name=%s, uuid=%s", v19, 0x16u);
    swift_arrayDestroy();
    v26 = v22;
    a2 = v21;
    MEMORY[0x25F888630](v26, -1, -1);
    MEMORY[0x25F888630](v19, -1, -1);
  }

  *(v3 + 16) = 1;
  v27 = v57;
  (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v57);
  v28 = (*(v6 + 88))(v8, v27);
  if (v28 == *MEMORY[0x277D35620])
  {
    goto LABEL_6;
  }

  if (v28 != *MEMORY[0x277D355F0] && v28 != *MEMORY[0x277D35628])
  {
    if (v28 == *MEMORY[0x277D35608] || v28 == *MEMORY[0x277D355F8] || v28 == *MEMORY[0x277D35610])
    {
LABEL_6:
      (*(v6 + 8))(v8, v27);
      v29 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
      swift_beginAccess();
      v30 = *(v3 + v29);
      if (v30)
      {
        v31 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
        v32 = swift_allocObject();
        swift_weakInit();
        v33 = swift_allocObject();
        v33[2] = v56;
        v33[3] = a2;
        v33[4] = v32;
        v33[5] = v30;
        v34 = v30;

        sub_25C49E9DC(v3 + v31, sub_25C4C31C8, v33);
      }

      else
      {
        v51 = objc_allocWithZone(sub_25C4C7B80());
        v52 = sub_25C4C7B90();
        v56();

        sub_25C4C19FC();
      }

      return;
    }

    if (v28 == *MEMORY[0x277D35600])
    {
      (*(v6 + 96))(v8, v27);
      v53 = sub_25C4C8170();
      (*(*(v53 - 8) + 8))(v8, v53);
      goto LABEL_11;
    }

    if (v28 == *MEMORY[0x277D35618])
    {
      sub_25C4C2C20(v56, a2);
      return;
    }
  }

  (*(v6 + 8))(v8, v27);
LABEL_11:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_25C4C88F0();

  v59 = 0xD000000000000016;
  v60 = 0x800000025C4D09B0;
  v35 = sub_25C4C7C10();
  MEMORY[0x25F887A50](v35);

  v36 = objc_allocWithZone(sub_25C4C7B80());
  v37 = sub_25C4C7B90();

  v38 = v37;
  v39 = sub_25C4C7BB0();
  v40 = sub_25C4C8710();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v55 = a2;
    v42 = v41;
    v43 = swift_slowAlloc();
    v59 = v43;
    *v42 = 136315650;
    sub_25C4C3A48(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
    v44 = sub_25C4C89A0();
    v46 = sub_25C458990(v44, v45, &v59);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_25C458990(*(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label), *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8), &v59);
    *(v42 + 22) = 2080;
    v58 = v38;
    sub_25C4C3A48(&unk_27FC0AA50, MEMORY[0x277D02A18], MEMORY[0x277CC9DE0]);
    v47 = sub_25C4C8A30();
    v49 = sub_25C458990(v47, v48, &v59);

    *(v42 + 24) = v49;
    _os_log_impl(&dword_25C452000, v39, v40, "### Operation cancel failed: endpoint=%s, client=%s, error=%s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v43, -1, -1);
    MEMORY[0x25F888630](v42, -1, -1);
  }

  v50 = v38;
  (v56)(v38);
}

uint64_t sub_25C4C2C20(void (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler))
  {
    swift_getObjectType();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v5;
    swift_unknownObjectRetain();

    sub_25C4C7F40();
    swift_unknownObjectRelease();
  }

  else
  {
    a1(0);
  }

  return sub_25C4C19FC();
}

uint64_t sub_25C4C2D40()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 48);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C2E40()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);

  return v1;
}

uint64_t sub_25C4C2E7C()
{

  sub_25C45A004(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25C4C2EC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3[5];
  if (a3)
  {
    return v4(a1, a2);
  }

  else
  {
    return sub_25C4BEBB4(a1, a2, v3[3], v3[4], v4, v3[6]);
  }
}

uint64_t type metadata accessor for NXOperationDaemon(uint64_t a1)
{
  result = qword_27FC0C0A8;
  if (!qword_27FC0C0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C4C2F58(uint64_t a1)
{
  result = sub_25C4C7C50();
  if (v2 <= 0x3F)
  {
    result = sub_25C4C7B20();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25C4C3078()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C4C30B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25C4C30F0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = (Strong + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
    *v5 = 0;
    v5[1] = 0;
    swift_unknownObjectRelease();
    sub_25C4C19FC();
  }

  return v3(a1);
}

uint64_t sub_25C4C3180()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C4C31C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_25C497730(v4, &off_286E24458, 1);

    sub_25C4C19FC();
  }

  return v3(a1);
}

uint64_t sub_25C4C3268()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4C3334(uint64_t a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_25C4BF1B0(a1, v4, v5, v6, v7);
}

uint64_t sub_25C4C33AC()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25C4C3490(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_25C4C7B20() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_25C4BFD90(a1, a2, v7, v8, v9, v2 + v6, v11, v12);
}

uint64_t sub_25C4C3548()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_25C4C3634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, void, uint64_t), uint64_t a6)
{
  v13 = *(sub_25C4C7B20() - 8);
  v14 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_25C4C0694(a1, a2, a3, a4, a5, a6, *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v6 + v14, *(v6 + v15), *(v6 + v15 + 8));
}

uint64_t sub_25C4C3724()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  sub_25C45A004(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_25C4C387C()
{
  v1 = *(sub_25C4C7B20() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_25C4C0BC4(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C4C3978()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_32Tm()
{

  sub_25C4BACC4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25C4C3A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C4C3A98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
    swift_beginAccess();
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;

    sub_25C4C19FC();
  }

  return result;
}

uint64_t sub_25C4C3B2C()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0C0C8);
  __swift_project_value_buffer(v0, qword_27FC0C0C8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C4C3B98(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_25C4C72D8(a1);

  return v2;
}

uint64_t sub_25C4C3BE4()
{
  v1 = v0;
  if (qword_27FC0C0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0C0C8);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  swift_weakDestroy();
  sub_25C45C5F0(*(v1 + 40), *(v1 + 48));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C4C3D04()
{
  sub_25C4C3BE4();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_25C4C3D38()
{
  if (*(v0 + 88))
  {
    MEMORY[0x25F887A50](0xD00000000000001ELL, 0x800000025C4D2190);
  }

  if (*(v0 + 104))
  {
    MEMORY[0x25F887A50](0xD000000000000018, 0x800000025C4D2170);
  }

  return 0;
}

void sub_25C4C3E04()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_27FC0C0C0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_25C4C7BD0();
  __swift_project_value_buffer(v7, qword_27FC0C0C8);
  v8 = sub_25C4C7BB0();
  v9 = sub_25C4C8720();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25C452000, v8, v9, "Activate", v10, 2u);
    MEMORY[0x25F888630](v10, -1, -1);
  }
}

uint64_t sub_25C4C3FB8()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27FC0C0C0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0C0C8);
  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25C452000, v9, v10, "Invalidate", v11, 2u);
    MEMORY[0x25F888630](v11, -1, -1);
  }

  *(v1 + 32) = 1;
  return sub_25C4C4188();
}

uint64_t sub_25C4C4188()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + 32) != 1)
  {
    return result;
  }

  if (qword_27FC0C0C0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0C0C8);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidated", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  swift_beginAccess();
  v13 = *(v1 + 40);
  if (v13)
  {
    v14 = *(v1 + 48);

    v13(v15);
    sub_25C45C5F0(v13, v14);
    v16 = *(v1 + 40);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return sub_25C45C5F0(v16, v17);
}

uint64_t sub_25C4C43AC()
{
  v1 = sub_25C4C8470();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25C4C8490();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + 24);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v15[1] = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if ((*(v0 + 56) & 1) == 0)
    {
      *(v0 + 56) = 1;
      aBlock[4] = sub_25C4C7448;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25C4676B4;
      aBlock[3] = &block_descriptor_7;
      v14 = _Block_copy(aBlock);

      sub_25C4C8480();
      v17 = MEMORY[0x277D84F90];
      sub_25C4C7464(&unk_27FC0A180, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
      sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0, MEMORY[0x277D83970]);
      sub_25C4C8800();
      MEMORY[0x25F887C10](0, v7, v3, v14);
      _Block_release(v14);
      (*(v16 + 8))(v3, v1);
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C474C()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

  *(v1 + 56) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25C4855C0();
    if (v8)
    {
      if (!*(v1 + 72))
      {
        if (qword_27FC0C0C0 != -1)
        {
          swift_once();
        }

        v9 = sub_25C4C7BD0();
        __swift_project_value_buffer(v9, qword_27FC0C0C8);
        v10 = sub_25C4C7BB0();
        v11 = sub_25C4C8720();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_25C452000, v10, v11, "Needs NAN scanner start", v12, 2u);
          MEMORY[0x25F888630](v12, -1, -1);
        }

        v13 = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
        v14 = *(v1 + 72);
        *(v1 + 72) = v13;
        v15 = v13;

        [v15 setBleRSSIThresholdHint_];
        [v15 setDiscoveryFlags_];
        [v15 setDispatchQueue_];
        v16 = swift_allocObject();
        swift_weakInit();
        v109 = sub_25C4C79FC;
        v110 = v16;
        aBlock = MEMORY[0x277D85DD0];
        v106 = 1107296256;
        v107 = sub_25C4C79F8;
        v108 = &block_descriptor_4_1;
        v17 = _Block_copy(&aBlock);

        [v15 setDeviceFoundHandler_];
        _Block_release(v17);
        v18 = swift_allocObject();
        swift_weakInit();
        v109 = sub_25C4C74E4;
        v110 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v106 = 1107296256;
        v107 = sub_25C4C79F8;
        v108 = &block_descriptor_8;
        v19 = _Block_copy(&aBlock);

        [v15 setDeviceLostHandler_];
        _Block_release(v19);
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v109 = sub_25C4C7578;
        v110 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v106 = 1107296256;
        v107 = sub_25C45BE80;
        v108 = &block_descriptor_18;
        v23 = _Block_copy(&aBlock);

        [v15 activateWithCompletion_];
        _Block_release(v23);
      }

      goto LABEL_18;
    }
  }

  v24 = *(v1 + 72);
  if (v24)
  {
    v25 = qword_27FC0C0C0;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = sub_25C4C7BD0();
    __swift_project_value_buffer(v27, qword_27FC0C0C8);
    v28 = sub_25C4C7BB0();
    v29 = sub_25C4C8720();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25C452000, v28, v29, "Needs NAN scanner stop", v30, 2u);
      MEMORY[0x25F888630](v30, -1, -1);
    }

    [v26 invalidate];
    v31 = *(v1 + 72);
    *(v1 + 72) = 0;
  }

LABEL_18:
  v32 = *(v1 + 72);
  if (v32)
  {
    v33 = [v32 discoveredDevices];
    sub_25C4BC77C(0, &qword_27FC0AAA8, 0x277CBE020);
    v2 = sub_25C4C85D0();

    if (v2 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C4C8840())
    {
      v35 = 4;
      while (1)
      {
        v36 = v35 - 4;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x25F887DC0](v35 - 4, v2);
        }

        else
        {
          if (v36 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v37 = *(v2 + 8 * v35);
        }

        v38 = v37;
        v39 = __OFADD__(v36, 1);
        v40 = v35 - 3;
        if (v39)
        {
          break;
        }

        if ([v37 nearbyActionType] == 57)
        {

          goto LABEL_40;
        }

        ++v35;
        if (v40 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:
  }

  v41 = *(v1 + 64);
  if (v41)
  {
    v42 = [v41 dataSessions];
    sub_25C4BC77C(0, &qword_27FC0AA70, 0x277D02890);
    v43 = sub_25C4C85D0();

    if (v43 >> 62)
    {
      v44 = sub_25C4C8840();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
LABEL_40:
      if (*(v1 + 64))
      {
        goto LABEL_53;
      }

      if (qword_27FC0C0C0 != -1)
      {
        swift_once();
      }

      v45 = sub_25C4C7BD0();
      __swift_project_value_buffer(v45, qword_27FC0C0C8);
      v46 = sub_25C4C7BB0();
      v47 = sub_25C4C8720();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_25C452000, v46, v47, "NAN publisher start", v48, 2u);
        MEMORY[0x25F888630](v48, -1, -1);
      }

      v49 = [objc_allocWithZone(MEMORY[0x277D028A0]) init];
      v50 = *(v1 + 64);
      *(v1 + 64) = v49;
      v51 = v49;

      [v51 setDispatchQueue_];
      [v51 setControlFlags_];
      sub_25C4C7CC0();
      v52 = sub_25C4C8540();

      [v51 setServiceType_];

      v53 = swift_allocObject();
      swift_weakInit();
      v109 = nullsub_1;
      v110 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v106 = 1107296256;
      v107 = sub_25C4C79F8;
      v108 = &block_descriptor_22_0;
      v54 = _Block_copy(&aBlock);

      [v51 setDataSessionStartedHandler_];
      _Block_release(v54);
      v55 = swift_allocObject();
      swift_weakInit();
      v109 = nullsub_1;
      v110 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v106 = 1107296256;
      v107 = sub_25C4C5824;
      v108 = &block_descriptor_26;
      v56 = _Block_copy(&aBlock);

      [v51 setDataSessionEndedHandler_];
      _Block_release(v56);
      v57 = swift_allocObject();
      swift_weakInit();
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v58;
      v109 = sub_25C4C779C;
      v110 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v106 = 1107296256;
      v107 = sub_25C45BE80;
      v108 = &block_descriptor_36_1;
      v60 = _Block_copy(&aBlock);

      [v51 activateWithCompletion_];
      _Block_release(v60);
    }

    else
    {
      v61 = *(v1 + 64);
      if (!v61)
      {
        goto LABEL_53;
      }

      v62 = qword_27FC0C0C0;
      v63 = v61;
      if (v62 != -1)
      {
        swift_once();
      }

      v64 = sub_25C4C7BD0();
      __swift_project_value_buffer(v64, qword_27FC0C0C8);
      v65 = sub_25C4C7BB0();
      v66 = sub_25C4C8720();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_25C452000, v65, v66, "NAN publisher stop", v67, 2u);
        MEMORY[0x25F888630](v67, -1, -1);
      }

      [v63 invalidate];
      v51 = *(v1 + 64);
      *(v1 + 64) = 0;
    }
  }

LABEL_53:
  result = swift_beginAccess();
  v69 = *(v1 + 88);
  if (*(*(v1 + 80) + 16))
  {
    if (!v69)
    {
      if (qword_27FC0C0C0 != -1)
      {
        swift_once();
      }

      v70 = sub_25C4C7BD0();
      __swift_project_value_buffer(v70, qword_27FC0C0C8);
      v71 = sub_25C4C7BB0();
      v72 = sub_25C4C8720();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_25C452000, v71, v72, "Bluetooth setup advertiser start", v73, 2u);
        MEMORY[0x25F888630](v73, -1, -1);
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v74 = CUEnvironmentValues.createBluetoothAdvertiser.getter();
        v75 = (v74)(*(v1 + 24));
        v77 = v76;

        *(v1 + 88) = v75;
        *(v1 + 96) = v77;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        ObjectType = swift_getObjectType();
        (*(v77 + 40))(81, ObjectType, v77);
        (*(v77 + 16))(64, ObjectType, v77);
        (*(v77 + 56))(ObjectType, v77);
        swift_unknownObjectRelease();
      }
    }

    if (!*(v1 + 104))
    {
      if (qword_27FC0C0C0 != -1)
      {
        swift_once();
      }

      v79 = sub_25C4C7BD0();
      __swift_project_value_buffer(v79, qword_27FC0C0C8);
      v80 = sub_25C4C7BB0();
      v81 = sub_25C4C8720();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_25C452000, v80, v81, "NAN setup publisher start", v82, 2u);
        MEMORY[0x25F888630](v82, -1, -1);
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v83 = CUEnvironmentValues.createNANPublisher.getter();
        v84 = (v83)(*(v1 + 24));
        v86 = v85;

        *(v1 + 104) = v84;
        *(v1 + 112) = v86;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v87 = swift_getObjectType();
        v88 = sub_25C4C7CA0();
        (*(v86 + 16))(v88);
        (*(v86 + 32))(v87, v86);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (v69)
    {
      v89 = *(v1 + 96);
      v90 = qword_27FC0C0C0;
      swift_unknownObjectRetain();
      if (v90 != -1)
      {
        swift_once();
      }

      v91 = sub_25C4C7BD0();
      __swift_project_value_buffer(v91, qword_27FC0C0C8);
      v92 = sub_25C4C7BB0();
      v93 = sub_25C4C8720();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_25C452000, v92, v93, "Bluetooth setup advertiser stop", v94, 2u);
        MEMORY[0x25F888630](v94, -1, -1);
      }

      v95 = swift_getObjectType();
      (*(v89 + 64))(v95, v89);
      swift_unknownObjectRelease();
      *(v1 + 88) = 0;
      *(v1 + 96) = 0;
      result = swift_unknownObjectRelease();
    }

    v96 = (v1 + 104);
    if (*(v1 + 104))
    {
      v97 = *(v1 + 112);
      v98 = qword_27FC0C0C0;
      swift_unknownObjectRetain();
      if (v98 != -1)
      {
        swift_once();
      }

      v99 = sub_25C4C7BD0();
      __swift_project_value_buffer(v99, qword_27FC0C0C8);
      v100 = sub_25C4C7BB0();
      v101 = sub_25C4C8720();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_25C452000, v100, v101, "NAN setup publisher stop", v102, 2u);
        MEMORY[0x25F888630](v102, -1, -1);
      }

      v103 = swift_getObjectType();
      (*(v97 + 40))(v103, v97);
      swift_unknownObjectRelease();
      *v96 = 0;
      v96[1] = 0;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_25C4C5824(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_25C4C58B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_25C4C84C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 24);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    type metadata accessor for NXServerDaemon(0);

    sub_25C4C7BA0();
    swift_beginAccess();
    sub_25C4C5EDC(v8, v6);
    swift_endAccess();
    (*(v3 + 8))(v8, v2);
    return sub_25C4C43AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C5AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA80, &qword_25C4CAE28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_25C4C84C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 24);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    type metadata accessor for NXServerDaemon(0);

    sub_25C4C7BA0();
    swift_beginAccess();
    sub_25C4C6D24(v5, v8);
    swift_endAccess();
    (*(v3 + 8))(v5, v2);
    sub_25C4C7364(v8);
    return sub_25C4C43AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C5D90()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(*v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C5EDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A30]);
  v31 = a2;
  v11 = sub_25C4C8510();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_25C4BC1E8(&qword_27FC0AA98, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A38]);
      v19 = sub_25C4C8530();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_25C4C6520(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_25C4C61C0(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AAA0, &qword_25C4CAEE8);
  result = sub_25C4C88C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A30]);
      result = sub_25C4C8510();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25C4C6520(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C4C61C0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25C4C67C4();
      goto LABEL_12;
    }

    sub_25C4C6A04(v10 + 1);
  }

  v12 = *v3;
  sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A30]);
  v13 = sub_25C4C8510();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25C4BC1E8(&qword_27FC0AA98, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A38]);
      v21 = sub_25C4C8530();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C4C67C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AAA0, &qword_25C4CAEE8);
  v6 = *v0;
  v7 = sub_25C4C88B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_25C4C6A04(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AAA0, &qword_25C4CAEE8);
  v7 = sub_25C4C88C0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A30]);
      result = sub_25C4C8510();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25C4C6D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A30]);
  v31 = a1;
  v10 = sub_25C4C8510();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      sub_25C4BC1E8(&qword_27FC0AA98, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A38]);
      v19 = sub_25C4C8530();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25C4C67C4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    sub_25C4C6FCC(v12);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_25C4C6FCC(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_25C4C8810();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20, MEMORY[0x277D02A30]);
        v24 = sub_25C4C8510();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_25C4C72D8(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = MEMORY[0x277D84FA0];
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  swift_beginAccess();
  swift_weakAssign();
  v3 = *(a1 + 16);
  *(v1 + 24) = v3;
  v4 = v3;
  return v1;
}

uint64_t sub_25C4C7364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA80, &qword_25C4CAE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C4C73CC(uint64_t a1, uint64_t a2)
{
  result = sub_25C4C7464(&qword_27FC0AA88, a2, type metadata accessor for NXNetworkManager, &unk_25C4CAE4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C4C7464(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_25C4C74AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C4C74E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25C4C474C();
  }

  return result;
}

uint64_t sub_25C4C753C()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25C4C7578(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_6:

    return;
  }

  v5 = *(v3 + 72);
  if (!v5 || v4 != v5 || !a1)
  {

    goto LABEL_6;
  }

  v6 = v4;
  v7 = a1;
  if (qword_27FC0C0C0 != -1)
  {
    swift_once();
  }

  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0C0C8);
  v9 = a1;
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_25C4C8A30();
    v16 = sub_25C458990(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25C452000, v10, v11, "### Needs NAN scanner start failed: error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  [v6 invalidate];
  v17 = *(v3 + 72);
  *(v3 + 72) = 0;
}

void sub_25C4C779C(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_6:

    return;
  }

  v5 = *(v3 + 64);
  if (!v5 || v4 != v5 || !a1)
  {

    goto LABEL_6;
  }

  v6 = v4;
  v7 = a1;
  if (qword_27FC0C0C0 != -1)
  {
    swift_once();
  }

  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0C0C8);
  v9 = a1;
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_25C4C8A30();
    v16 = sub_25C458990(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25C452000, v10, v11, "### NAN setup publisher start failed: error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  [v6 invalidate];
  v17 = *(v3 + 64);
  *(v3 + 64) = 0;
}