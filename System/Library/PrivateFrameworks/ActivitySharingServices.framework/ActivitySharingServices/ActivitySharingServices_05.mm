uint64_t sub_221F0CF54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  v5 = *(v3 + 272);
  if (v1)
  {

    v6 = sub_221F0D2C8;
  }

  else
  {

    v6 = sub_221F0D0A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F0D0A8()
{
  v1 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_0Tm((v1 + 296), *(v1 + 320));
  v2 = sub_221FB5F38();
  *(v0 + 320) = v2;
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_221F0D16C;
  v4 = *(v0 + 288);

  return sub_221E98A68(v2, v4);
}

uint64_t sub_221F0D16C(void *a1)
{
  v4 = *v2;
  *(v4 + 336) = v1;

  v5 = *(v4 + 320);
  if (v1)
  {

    v6 = sub_221F0D750;
  }

  else
  {

    v6 = sub_221F0D54C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F0D2C8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v2;
    *v7 = v2;
    *(v6 + 12) = 2112;
    v8 = v1;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle repair request %@, error: %@", v6, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v11 = v0[35];
  v12 = v0[32];
  v13 = v0[6];

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F0D54C()
{
  v1 = *(v0 + 304);
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_221F0D5F4;
  v3 = *(v0 + 304);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);

  return sub_221F064E8(v5, v4, v3);
}

uint64_t sub_221F0D5F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 304);
  if (v1)
  {

    v6 = sub_221F0E8B4;
  }

  else
  {

    v6 = sub_221F0D9D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F0D750()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v2;
    *v7 = v2;
    *(v6 + 12) = 2112;
    v8 = v1;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle repair request %@, error: %@", v6, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v11 = v0[35];
  v12 = v0[32];
  v13 = v0[6];

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F0D9D4()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[4];
  [v1 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v3 + 256), *(v3 + 280));
  v4 = v1;
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_221F0DAB8;
  v6 = v0[38];
  v7 = v0[36];

  return sub_221EBAEA8(v6, v2, v7, 0);
}

uint64_t sub_221F0DAB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v5 = *(v3 + 304);

  if (v1)
  {
    v6 = sub_221F0DED0;
  }

  else
  {
    v6 = sub_221F0DC0C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F0DC0C()
{
  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 376);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v3;
    *v5 = v3;
    v6 = v3;
    _os_log_impl(&dword_221E93000, v1, v2, "Complete repair for request %@", v4, 0xCu);
    sub_221E9CFE8(v5, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v22 = *(v0 + 352);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);

  sub_221FB5BB8();
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v7 + 8))(v8, v9);
  (*(v10 + 104))(v11, *MEMORY[0x277CE93F0], v12);
  v13 = v22;
  sub_221FB5F68();
  v14 = sub_221FB61B8();
  v15 = sub_221FB65C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_221E93000, v14, v15, "Sending accept for repair request", v16, 2u);
    MEMORY[0x223DADA80](v16, -1, -1);
  }

  v17 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_0Tm((v17 + 136), *(v17 + 160));
  v18 = swift_task_alloc();
  *(v0 + 392) = v18;
  *v18 = v0;
  v18[1] = sub_221F0E15C;
  v19 = *(v0 + 96);
  v20 = *(v0 + 24);

  return sub_221FA8478(v20, v19, 1155);
}

uint64_t sub_221F0DED0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 304);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v2;
    *v7 = v2;
    *(v6 + 12) = 2112;
    v8 = v1;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle repair request %@, error: %@", v6, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  v13 = *(v0 + 48);

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v1;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221F0E15C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_221F0E3A0;
  }

  else
  {
    v2 = sub_221F0E270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F0E270()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 256);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);

  (*(v4 + 8))(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F0E3A0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *v10 = v5;
    *(v9 + 12) = 2112;
    v11 = v4;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_221E93000, v7, v8, "Failed to handle repair request %@, error: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 48);

  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v19 = v18;
  sub_221EA4A40(v16, v18);
  *(v19 + *(v17 + 20)) = v4;
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_221F0E64C()
{
  v1 = v0[27];
  v2 = v0[6];
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v5 = v4;
  sub_221EA4A40(v2, v4);
  *(v5 + *(v3 + 20)) = v1;
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F0E7B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F0E8B4()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v2;
    *v7 = v2;
    *(v6 + 12) = 2112;
    v8 = v1;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle repair request %@, error: %@", v6, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v11 = v0[35];
  v12 = v0[32];
  v13 = v0[6];

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F0EB38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for IDSErrorAction(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F0EBD0, 0, 0);
}

uint64_t sub_221F0EBD0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD000000000000027, 0x8000000221FC2790);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_221F0ECE4;

  return sub_221F078F0();
}

uint64_t sub_221F0ECE4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_221F0FBB4;
  }

  else
  {
    v2 = sub_221F0EDF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F0EDF8()
{
  v1 = [objc_msgSend(*(v0 + 24) destination)];
  swift_unknownObjectRelease();
  v2 = sub_221FB64F8();

  sub_221F058C0(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_221FB62E8();

    v6 = ASSanitizedContactDestination();

    v7 = sub_221FB6318();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v10 = swift_allocObject();
    *(v0 + 80) = v10;
    *(v10 + 16) = xmmword_221FB81A0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_221F0F0F8;

    return sub_221F0734C(v10);
  }

  else
  {
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_221E93000, v13, v14, "Unable to get sender address for repair response", v15, 2u);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v16 = swift_allocError();
    *v17 = 48;
    v18 = *(v0 + 48);
    v19 = type metadata accessor for IDSError(0);
    sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v21 = v20;
    sub_221EA4A40(v18, v20);
    *(v21 + *(v19 + 20)) = v16;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_221F0F0F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_221F0FCB0;
  }

  else
  {

    v4 = sub_221F0F214;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F0F214()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 96) relationshipStorage];
  *(v0 + 112) = [v2 secureCloudRelationship];

  __swift_project_boxed_opaque_existential_0Tm(v1 + 37, v1[40]);
  v3 = sub_221FB5F38();
  *(v0 + 120) = v3;
  v4 = v1[15];
  *(v0 + 128) = v4;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_221F0F318;

  return sub_221E98A68(v3, v4);
}

uint64_t sub_221F0F318(void *a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  v5 = *(v4 + 120);
  if (v1)
  {

    v6 = sub_221F0F674;
  }

  else
  {

    v6 = sub_221F0F458;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F0F458()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  [*(v0 + 112) insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v2 + 256), *(v2 + 280));
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_221F0F538;
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);

  return sub_221EBAEA8(v6, v1, v5, 0);
}

uint64_t sub_221F0F538(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  if (v1)
  {
    v5 = sub_221F0F9C8;
  }

  else
  {
    v5 = sub_221F0F860;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F0F674()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 144);
  v3 = v2;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle repair response: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 48);
  v11 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v13 = v12;
  sub_221EA4A40(v10, v12);
  *(v13 + *(v11 + 20)) = v2;
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_221F0F860()
{
  v2 = (v0 + 160);
  v1 = *(v0 + 160);

  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Complete repair for response %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
    v2 = (v0 + 96);
  }

  else
  {

    v4 = *(v0 + 96);
  }

  v9 = *v2;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F0F9C8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 168);
  v3 = v2;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle repair response: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 48);
  v11 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v13 = v12;
  sub_221EA4A40(v10, v12);
  *(v13 + *(v11 + 20)) = v2;
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_221F0FBB4()
{
  swift_storeEnumTagMultiPayload();
  v1 = v0[9];
  v2 = v0[6];
  v3 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v5 = v4;
  sub_221EA4A40(v2, v4);
  *(v5 + *(v3 + 20)) = v1;
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F0FCB0()
{

  v1 = v0[13];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to handle repair response: %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v9 = v0[6];
  v10 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v12 = v11;
  sub_221EA4A40(v9, v11);
  *(v12 + *(v10 + 20)) = v1;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_221F0FEA4(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v20 = MEMORY[0x277D84FA0];

    sub_221FB6828();
    if (sub_221FB6898())
    {
      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      while (1)
      {
        swift_dynamicCast();
        v5 = sub_221F086BC(&v19, a2);
        if (v2)
        {
          break;
        }

        v6 = v19;
        if (v5)
        {
          v7 = *(v4 + 16);
          if (*(v4 + 24) <= v7)
          {
            sub_221F161CC(v7 + 1);
          }

          v4 = v20;
          result = sub_221FB6748();
          v9 = v4 + 56;
          v10 = -1 << *(v4 + 32);
          v11 = result & ~v10;
          v12 = v11 >> 6;
          if (((-1 << v11) & ~*(v4 + 56 + 8 * (v11 >> 6))) != 0)
          {
            v13 = __clz(__rbit64((-1 << v11) & ~*(v4 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v14 = 0;
            v15 = (63 - v10) >> 6;
            do
            {
              if (++v12 == v15 && (v14 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v16 = v12 == v15;
              if (v12 == v15)
              {
                v12 = 0;
              }

              v14 |= v16;
              v17 = *(v9 + 8 * v12);
            }

            while (v17 == -1);
            v13 = __clz(__rbit64(~v17)) + (v12 << 6);
          }

          *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          *(*(v4 + 48) + 8 * v13) = v6;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_221FB6898())
        {
          goto LABEL_21;
        }
      }

      v18 = v19;
      swift_bridgeObjectRelease_n();
    }

    else
    {
LABEL_21:
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v4 = sub_221F112EC(a1, a2);
  }

  return v4;
}

uint64_t sub_221F10104(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v22 = MEMORY[0x277D84FA0];
    sub_221FB6828();
    if (sub_221FB6898())
    {
      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v21);
        if (v3)
        {
          break;
        }

        v7 = v21;
        if (v6)
        {
          v8 = *(v4 + 16);
          if (*(v4 + 24) <= v8)
          {
            sub_221F161CC(v8 + 1);
          }

          v4 = v22;
          result = sub_221FB6748();
          v10 = v4 + 56;
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6))) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = *(v10 + 8 * v13);
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(*(v4 + 48) + 8 * v14) = v7;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_221FB6898())
        {
          goto LABEL_21;
        }
      }

      v20 = v21;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v19 = sub_221F10344(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }
  }

  return v4;
}

void *sub_221F10344(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v29 = a1;
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v25 = v6;
    v30 = v3;
    v27 = &v25;
    MEMORY[0x28223BE20](a1);
    v26 = &v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v28 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v31[0] = *(*(v4 + 48) + 8 * v16);
      v18 = v31[0];
      v3 = v30;
      v19 = v29(v31);
      v30 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v20 = v19;

      v4 = v17;
      if (v20)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_221F77424(v26, v25, v28, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_221F77424(v26, v25, v28, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_221F107FC(v23, v6, v4, v29);

  result = MEMORY[0x223DADA80](v23, -1, -1);
  if (!v3)
  {
    return v24;
  }

  return result;
}

void sub_221F105F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_221F77424(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_221F10760(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_221F1118C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_221F107FC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_221F105F4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_221F1088C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC040, &qword_221FBA1B0);
    v2 = sub_221FB6AA8();
    v19 = v2;
    sub_221FB6A18();
    v3 = sub_221FB6A48();
    if (v3)
    {
      v4 = v3;
      sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_221ED5E50(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_221FB6748();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_221FB6A48();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_221F10AD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC058, &qword_221FBA1C8);
    v2 = sub_221FB6AA8();
    v19 = v2;
    sub_221FB6A18();
    v3 = sub_221FB6A48();
    if (v3)
    {
      v4 = v3;
      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_221ED60E0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_221FB6748();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_221FB6A48();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_221F10D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_221F10D6C()
{
  result = qword_281306E40;
  if (!qword_281306E40)
  {
    sub_221E9D138(255, &qword_281306E50, 0x277CE90E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306E40);
  }

  return result;
}

void sub_221F10DD4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v37 = MEMORY[0x277D84F90];
  v27 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    sub_221FB6538();
    a1 = v32;
    v7 = v33;
    v9 = v34;
    v8 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v8 = 0;
  }

  v26[1] = v9;
  v14 = MEMORY[0x277D84F90];
LABEL_8:
  v28 = v14;
  while (a1 < 0)
  {
    v18 = sub_221FB6898();
    if (!v18 || (v30 = v18, sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v17 = v31) == 0))
    {
LABEL_26:
      sub_221E96470(a1);
      return;
    }

LABEL_18:
    v19 = [v17 relationshipStorage];
    v20 = [v19 legacyRelationship];

    v21 = [v20 UUID];
    if (v21)
    {
      v22 = v21;
      sub_221FB5C18();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = sub_221FB5C38();
    (*(*(v24 - 8) + 56))(v6, v23, 1, v24);
    v25 = sub_221F05E2C(v6, v29);
    sub_221E9CFE8(v6, &qword_27CFEBD50, &unk_221FB9FB0);

    if (v25)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
      v14 = v37;
      goto LABEL_8;
    }
  }

  v15 = v8;
  v16 = v10;
  if (v10)
  {
LABEL_14:
    v10 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= ((v9 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v16 = *(v7 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_221F1118C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v23 = *(*(a3 + 48) + 8 * v15);
    v16 = v23;
    v17 = sub_221F086BC(&v23, a4);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_221F77424(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_221F112EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v29 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v7;
    v27 = &v24;
    MEMORY[0x28223BE20](v9);
    v26 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v8);
    v28 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v30[0] = *(*(a1 + 48) + 8 * v16);
      v17 = v30[0];
      v18 = sub_221F086BC(v30, v29);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v19 = v18;

      if (v19)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          v10 = sub_221F77424(v26, v25, v28, a1);
          goto LABEL_18;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v29;

  v10 = sub_221F10760(v22, v7, a1, v23);

  MEMORY[0x223DADA80](v22, -1, -1);
LABEL_18:

  return v10;
}

uint64_t sub_221F1162C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F11674(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F11744(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DACD50](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x223DAC7E0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_221FB6458();
        }

        sub_221FB6478();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_221F118F0(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v20 = v4;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x223DACD50](v6, v4);
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v30 = v9;
      a1(&v26, &v30);
      if (v3)
      {

        return v7;
      }

      if (v26)
      {
        v25 = v26;
        v12 = i;
        v13 = v27;
        v24 = v28;
        v14 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_221EF3814(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        v17 = v25;
        if (v16 >= v15 >> 1)
        {
          v18 = sub_221EF3814((v15 > 1), v16 + 1, 1, v7);
          v17 = v25;
          v7 = v18;
        }

        *(v7 + 2) = v16 + 1;
        v8 = &v7[48 * v16];
        *(v8 + 2) = v17;
        *(v8 + 6) = v13;
        *(v8 + 56) = v24;
        v8[72] = v14;
        v4 = v20;
        i = v12;
      }

      ++v6;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

double sub_221F11AD8@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a2 + 40);
  v12 = [v10 friendUUID];
  sub_221FB5C18();

  v13 = sub_221FB5BF8();
  (*(v7 + 8))(v9, v6);
  v14 = [v11 contactWithUUID_];

  if (v14)
  {
    v15 = sub_221F55AF0(v14);
    if (v15)
    {
      v16 = v15;
      v17 = [v14 relationshipStorage];
      v18 = [v17 secureCloudRelationship];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_221FB81B0;
      *(v19 + 32) = v16;

      v21 = MEMORY[0x277D84F90];
      *a3 = v19;
      *(a3 + 8) = v21;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 16) = v18;
      *(a3 + 40) = 6;
      return result;
    }
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v22 = sub_221FB61D8();
  __swift_project_value_buffer(v22, qword_281307DF0);
  v23 = v10;
  v24 = sub_221FB61B8();
  v25 = sub_221FB65A8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_221E93000, v24, v25, "Not pushing updates for invalid competition list %@", v26, 0xCu);
    sub_221EA0558(v27);
    MEMORY[0x223DADA80](v27, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  result = 0.0;
  *(a3 + 25) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_221F11DFC()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v2 = off_28355EF18(&type metadata for CompetitionCoordinator);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_221F118F0(sub_221F1267C, v3, v2);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_221F11EF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221F11F14, 0, 0);
}

uint64_t sub_221F11F14()
{
  v1 = v0[3];
  v2 = sub_221F12048(v0[2]);
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  off_28355EF30(v2, &type metadata for CompetitionCoordinator);

  v3 = v0[1];

  return v3();
}

uint64_t sub_221F11FC4(uint64_t a1)
{
  v2 = sub_221F12048(a1);
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  off_28355EF38(v2, &type metadata for CompetitionCoordinator);
}

uint64_t sub_221F12048(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v27 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  v3 = &qword_27CFEC270;
  while (1)
  {
    v5 = *(v27 + 48 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_221FB6868();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_221FB6868();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_221FB6868();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_221FB6998();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_221EAB9F4(&qword_27CFEC278, v3, &qword_221FBB648);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_221FBB648);
        v18 = v3;
        v19 = sub_221F123D4(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_221FB6868();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_221F12334(uint64_t a1, char a2)
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

  sub_221FB6868();
LABEL_9:
  result = sub_221FB6998();
  *v2 = result;
  return result;
}

void (*sub_221F123D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DACD50](a2, a3);
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
    return sub_221F12F74;
  }

  __break(1u);
  return result;
}

void (*sub_221F12454(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DACD50](a2, a3);
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
    return sub_221F124D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_221F124DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
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
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC278, &qword_27CFEC270, &qword_221FBB648);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC270, &qword_221FBB648);
            v9 = sub_221F123D4(v13, i, a3);
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
        sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
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

uint64_t sub_221F12698(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
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
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC2B8, &qword_27CFEC2B0, &qword_221FBB670);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2B0, &qword_221FBB670);
            v9 = sub_221F123D4(v13, i, a3);
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
        sub_221E9D138(0, &qword_27CFEB908, 0x277CBC680);
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

uint64_t sub_221F12838(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
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
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
            v9 = sub_221F123D4(v13, i, a3);
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
        sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
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

uint64_t sub_221F129D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
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
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC298, &qword_27CFEC290, &qword_221FBB658);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC290, &qword_221FBB658);
            v9 = sub_221F123D4(v13, i, a3);
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
        sub_221E9D138(0, &unk_281306F10, 0x277CBC5E8);
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

uint64_t sub_221F12B78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
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
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC288, &qword_27CFEC280, &qword_221FBB650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC280, &qword_221FBB650);
            v9 = sub_221F123D4(v13, i, a3);
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
        sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
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

uint64_t sub_221F12D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
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
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC2A8, &qword_27CFEC2A0, &qword_221FBC510);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2A0, &qword_221FBC510);
            v9 = sub_221F123D4(v13, i, a3);
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
        sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
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

uint64_t sub_221F12EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F12F00(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_221F12F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a3;
  v7 = sub_221FB5C38();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[14] = v8;
  v5[15] = v9;

  return MEMORY[0x2822009F8](sub_221F13054, 0, 0);
}

id sub_221F13054()
{
  result = [*(v0 + 120) secureCloudZoneName];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  sub_221FB6318();
  *(v0 + 128) = sub_221FB65D8();
  sub_221EA4AB4(v4 + 40, v0 + 16);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  result = [v3 UUID];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  sub_221FB5C18();

  v9 = sub_221FB5BE8();
  v11 = v10;
  *(v0 + 136) = v10;
  v12 = *(v8 + 8);
  *(v0 + 144) = v12;
  *(v0 + 152) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v6, v7);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_221F1321C;
  v14 = *(v0 + 72);

  return sub_221F92A3C(v9, v11, v14);
}

uint64_t sub_221F1321C(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_221F1333C, 0, 0);
}

void sub_221F1333C()
{
  v95 = v0;
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v93 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_52:
    v2 = sub_221FB6868();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  v87 = v0;
  if (v2)
  {
    v4 = 0;
    v5 = *(v0 + 168);
    v88 = v1 & 0xFFFFFFFFFFFFFF8;
    v90 = v1 & 0xC000000000000001;
    v6 = *(v0 + 80) + 32;
    v0 = v5 + 56;
    while (1)
    {
      if (v90)
      {
        v7 = MEMORY[0x223DACD50](v4, *(v87 + 80));
      }

      else
      {
        if (v4 >= *(v88 + 16))
        {
          goto LABEL_51;
        }

        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v10 = [v7 templateUniqueName];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_221FB6318();
      v14 = v13;

      if (*(v5 + 16) && (sub_221FB6C38(), sub_221FB6358(), v15 = sub_221FB6C58(), v16 = -1 << *(v5 + 32), v1 = v15 & ~v16, ((*(v0 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0))
      {
        v17 = ~v16;
        while (1)
        {
          v18 = (*(v5 + 48) + 16 * v1);
          v19 = *v18 == v12 && v18[1] == v14;
          if (v19 || (sub_221FB6B58() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & v17;
          if (((*(v0 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v4 == v2)
        {
LABEL_24:
          v20 = v93;
          v0 = v87;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
LABEL_5:

        sub_221FB69B8();
        sub_221FB69E8();
        sub_221FB69F8();
        v1 = &v93;
        sub_221FB69C8();
        if (v4 == v2)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_91;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_26:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v94[0] = v3;
      sub_221FB69D8();
      v22 = v21;
      goto LABEL_30;
    }

LABEL_57:
    v41 = *(v0 + 56);

    *(v41 + 25) = 0u;
    *v41 = 0u;
    v41[1] = 0u;
    goto LABEL_82;
  }

  v39 = sub_221FB6868();
  if (!v39)
  {
    goto LABEL_57;
  }

  v21 = v39;
  v40 = sub_221FB6868();
  v33 = MEMORY[0x277D84F90];
  if (!v40)
  {
    goto LABEL_89;
  }

  v22 = v40;
  v94[0] = MEMORY[0x277D84F90];
  sub_221FB69D8();
  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_57;
  }

LABEL_30:
  v23 = 0;
  v24 = v20 & 0xC000000000000001;
  do
  {
    if (v24)
    {
      v25 = MEMORY[0x223DACD50](v23, v20);
    }

    else
    {
      v25 = *(v20 + 8 * v23 + 32);
    }

    v26 = v25;
    ++v23;
    v27 = [v25 recordWithZoneID:*(v0 + 128) recordEncryptionType:1];

    sub_221FB69B8();
    sub_221FB69E8();
    sub_221FB69F8();
    sub_221FB69C8();
  }

  while (v22 != v23);
  v89 = v94[0];
  v94[0] = MEMORY[0x277D84F90];
  sub_221FB69D8();
  v28 = objc_opt_self();
  v29 = 0;
  do
  {
    if (v24)
    {
      v30 = MEMORY[0x223DACD50](v29, v20);
    }

    else
    {
      v30 = *(v20 + 8 * v29 + 32);
    }

    v31 = v30;
    ++v29;
    v32 = [v28 achievementCompletionEventWithAchievement_];

    sub_221FB69B8();
    sub_221FB69E8();
    sub_221FB69F8();
    sub_221FB69C8();
  }

  while (v22 != v29);
  v33 = v94[0];
  v0 = v87;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v91 = v21;
    if (v33 >> 62)
    {
      v34 = sub_221FB6868();
      if (!v34)
      {
LABEL_59:

        v86 = MEMORY[0x277D84F90];
        goto LABEL_60;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_59;
      }
    }

    v94[0] = v3;
    sub_221FB69D8();
    if ((v34 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_89:
    v89 = v33;
  }

  v35 = 0;
  do
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x223DACD50](v35, v33);
    }

    else
    {
      v36 = *(v33 + 8 * v35 + 32);
    }

    v37 = v36;
    ++v35;
    v38 = [v36 recordWithZoneID:*(v0 + 128) recordEncryptionType:1];

    sub_221FB69B8();
    sub_221FB69E8();
    sub_221FB69F8();
    sub_221FB69C8();
  }

  while (v34 != v35);

  v86 = v94[0];
LABEL_60:
  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  do
  {
    v44 = v42;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223DACD50](v44, v20);
        v42 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v44 >= *(v20 + 16))
        {
          goto LABEL_86;
        }

        v45 = *(v20 + 8 * v44 + 32);
        v42 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      v46 = v45;
      v47 = [v46 templateUniqueName];
      if (v47)
      {
        break;
      }

      ++v44;
      if (v42 == v21)
      {
        goto LABEL_76;
      }
    }

    v48 = v47;
    v49 = sub_221FB6318();
    v51 = v50;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_221EF3C20(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v52 = *(v43 + 3);
    if (v53 >= v52 >> 1)
    {
      v43 = sub_221EF3C20((v52 > 1), v53 + 1, 1, v43);
    }

    *(v43 + 2) = v53 + 1;
    v54 = &v43[16 * v53];
    *(v54 + 4) = v49;
    *(v54 + 5) = v51;
    v21 = v91;
    v0 = v87;
  }

  while (v42 != v91);
LABEL_76:

  if (qword_281307080 == -1)
  {
    goto LABEL_77;
  }

LABEL_87:
  swift_once();
LABEL_77:
  v55 = *(v0 + 120);
  v56 = sub_221FB61D8();
  __swift_project_value_buffer(v56, qword_281307DF0);
  v57 = v55;

  v58 = sub_221FB61B8();
  v59 = sub_221FB65C8();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 120);
  if (v60)
  {
    v92 = v59;
    v62 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v94[0] = v85;
    *v62 = 136315650;
    v63 = [v61 UUID];
    if (!v63)
    {
LABEL_91:
      v83 = *(v87 + 120);
      swift_bridgeObjectRelease_n();

      __break(1u);
      return;
    }

    v64 = v63;
    v0 = v87;
    v65 = *(v87 + 144);
    v66 = *(v87 + 104);
    v67 = *(v87 + 88);
    v84 = *(v87 + 72);

    sub_221FB5C18();

    v68 = sub_221FB5BE8();
    v70 = v69;
    v65(v66, v67);
    v71 = sub_221EF4114(v68, v70, v94);

    *(v62 + 4) = v71;
    *(v62 + 12) = 2048;
    *(v62 + 14) = v84;
    *(v62 + 22) = 2080;
    v72 = MEMORY[0x223DAC810](v43, MEMORY[0x277D837D0]);
    v74 = sub_221EF4114(v72, v73, v94);

    *(v62 + 24) = v74;
    _os_log_impl(&dword_221E93000, v58, v92, "Creating achievement update for relationship %s with %lld: %s", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v85, -1, -1);
    MEMORY[0x223DADA80](v62, -1, -1);
  }

  else
  {
  }

  v75 = *(v0 + 120);
  v76 = *(v0 + 128);
  v77 = *(v87 + 72);
  v78 = *(v87 + 56);
  v94[0] = v89;
  sub_221ED4350(v86);
  v79 = v94[0];
  v80 = v75;
  v81 = sub_221F18084(v43);

  *v78 = v79;
  *(v78 + 8) = MEMORY[0x277D84F90];
  *(v78 + 16) = v80;
  *(v78 + 24) = v77;
  *(v78 + 32) = v81;
  v0 = v87;
  *(v78 + 40) = 3;
LABEL_82:

  v82 = *(v0 + 8);

  v82();
}

uint64_t sub_221F13C88(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F13CA8, 0, 0);
}

uint64_t sub_221F13CA8()
{
  if ([*__swift_project_boxed_opaque_existential_0Tm((v0[4] + 80) *(v0[4] + 104))])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Not updating achievements, notifications suppressed", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }

  else
  {
    v8 = v0[4];
    v9 = [*__swift_project_boxed_opaque_existential_0Tm(v8 v8[3])];
    v0[5] = v9;
    __swift_project_boxed_opaque_existential_0Tm(v8, v8[3]);
    v10 = off_283557C80();
    v0[6] = v10;
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);

    v12 = sub_221FB61B8();
    v13 = sub_221FB65C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (v10 >> 62)
      {
        v15 = sub_221FB6868();
      }

      else
      {
        v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&dword_221E93000, v12, v13, "Fetched %ld achievements for index", v14, 0xCu);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    else
    {
    }

    v16 = v0[3];
    v17 = v0[4];
    v18 = [v9 snapshotIndex];
    v0[2] = v16;
    v19 = swift_task_alloc();
    v0[7] = v19;
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v10;
    v20 = swift_task_alloc();
    v0[8] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
    v22 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
    *v20 = v0;
    v20[1] = sub_221F14070;

    return MEMORY[0x28213AED0](&unk_221FBB740, v19, v21, &type metadata for SecureCloudUpdate, v22);
  }
}

void sub_221F14070(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 72) = a1;

    MEMORY[0x2822009F8](sub_221F141BC, 0, 0);
  }
}

uint64_t sub_221F141BC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_221F14224(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *a1;
  *(v2 + 128) = *(a1 + 16);
  *(v2 + 136) = *(a1 + 24);
  *(v2 + 240) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F1432C, 0, 0);
}

uint64_t sub_221F1432C()
{
  if (*(v0 + 240) == 3)
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 40), *(*(v0 + 56) + 64));
    v2 = *v1;
    *(v0 + 152) = *v1;

    return MEMORY[0x2822009F8](sub_221F14410, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

id sub_221F14410()
{
  v1 = v0[16];
  v2 = sub_221F9273C(v0[18], v0[17], v1);
  v0[20] = v2;
  result = [v1 UUID];
  if (result)
  {
    v4 = result;
    v5 = v0[13];
    v6 = v0[8];
    v7 = v0[9];
    sub_221FB5C18();

    v8 = sub_221FB5BE8();
    v10 = v9;
    v0[21] = v9;
    v11 = *(v7 + 8);
    v0[22] = v11;
    v0[23] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v6);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_221F14560;

    return sub_221ED06FC(v2, v8, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F14560()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_221F147A8;
  }

  else
  {
    v4 = sub_221F146BC;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F146BC()
{
  v1 = v0[16];
  sub_221EA4AB4(v0[7] + 40, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[22];
    v8 = v0[12];
    v9 = v0[8];
    sub_221FB5C18();

    v0[26] = sub_221FB5BE8();
    v0[27] = v10;
    v7(v8, v9);
    v4 = *v2;
    v0[28] = *v2;
    v3 = sub_221F14AD8;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

id sub_221F147C4()
{
  v31 = v0;
  result = [*(v0 + 128) UUID];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 176);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    sub_221FB5C18();

    v6 = sub_221FB5BE8();
    v8 = v7;
    v3(v4, v5);
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 200);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = sub_221FB61D8();
    __swift_project_value_buffer(v12, qword_281307DF0);
    sub_221ED4904(v11, v10, 3u);

    v13 = v9;
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    sub_221ED4948(v11, v10, 3u);

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 200);
    if (v16)
    {
      v29 = v6;
      v18 = *(v0 + 136);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v19 = 134218754;
      *(v19 + 4) = v18;
      *(v19 + 12) = 2080;
      v22 = sub_221EF4114(v29, v8, &v30);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2080;
      v23 = sub_221FB6508();
      v25 = sub_221EF4114(v23, v24, &v30);

      *(v19 + 24) = v25;
      *(v19 + 32) = 2112;
      v26 = v17;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 34) = v27;
      *v20 = v27;
      _os_log_impl(&dword_221E93000, v14, v15, "Failed to store achievement archives: index %lld, identifier: %s, names %s, error: %@)", v19, 0x2Au);
      sub_221EA0558(v20);
      MEMORY[0x223DADA80](v20, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
    }

    else
    {
    }

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F14AD8()
{
  v1 = sub_221ECB638(v0[26], v0[27]);

  if (!v1)
  {
    v1 = sub_221ED82D4(MEMORY[0x277D84F90]);
  }

  v0[29] = v1;

  return MEMORY[0x2822009F8](sub_221F14B6C, 0, 0);
}

uint64_t sub_221F14B6C()
{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);

  v5 = v3;
  sub_221ED4904(v2, v1, 3u);

  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v31 = v7;
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v9 = 136315394;
    v10 = [v8 UUID];

    if (!v10)
    {
      v29 = v0 + 136;
      v28 = *(v0 + 136);
      v27 = *(v29 + 8);

      sub_221ED4948(v28, v27, 3u);

      __break(1u);
      return result;
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    sub_221ED4948(*(v0 + 136), *(v0 + 144), 3u);

    sub_221FB5C18();

    v14 = sub_221FB5BE8();
    v16 = v15;
    v11(v12, v13);
    v17 = sub_221EF4114(v14, v16, &v32);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF38, qword_221FBF480);
    v18 = sub_221FB6298();
    v20 = v19;

    v21 = sub_221EF4114(v18, v20, &v32);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_221E93000, v6, v31, "Updated achievements for relationship %s, template names %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v30, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);

    sub_221ED4948(v23, v22, 3u);
    swift_bridgeObjectRelease_n();
  }

  v25 = *(v0 + 8);

  return v25();
}

void sub_221F14EDC(uint64_t a1)
{
  v2 = sub_221FB5C38();
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v31 = (v3 + 8);
    v8 = (a1 + 72);
    *&v5 = 134218498;
    v28 = v5;
    v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v2;
    do
    {
      if (*v8 == 3)
      {
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        v11 = [*(v8 - 3) UUID];
        if (!v11)
        {
          __break(1u);
          return;
        }

        v12 = v11;
        sub_221FB5C18();

        v13 = sub_221FB5BE8();
        v15 = v14;
        (*v31)(v6, v2);
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v16 = sub_221FB61D8();
        __swift_project_value_buffer(v16, qword_281307DF0);
        sub_221ED4904(v9, v10, 3u);

        v17 = sub_221FB61B8();
        v18 = sub_221FB65A8();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v32 = v20;
          *v19 = v28;
          *(v19 + 4) = v9;
          *(v19 + 12) = 2080;
          v21 = sub_221EF4114(v13, v15, &v32);

          *(v19 + 14) = v21;
          *(v19 + 22) = 2080;
          v22 = sub_221FB6508();
          v24 = v23;
          sub_221ED4948(v9, v10, 3u);
          v25 = sub_221EF4114(v22, v24, &v32);

          *(v19 + 24) = v25;
          _os_log_impl(&dword_221E93000, v17, v18, "Failed to push achievements: index %lld, identifier: %s, names: %s", v19, 0x20u);
          swift_arrayDestroy();
          v26 = v20;
          v2 = v30;
          MEMORY[0x223DADA80](v26, -1, -1);
          v27 = v19;
          v6 = v29;
          MEMORY[0x223DADA80](v27, -1, -1);
        }

        else
        {

          sub_221ED4948(v9, v10, 3u);
        }
      }

      v8 += 48;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_221F1521C()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_221E9DA9C;

  return sub_221ECC6E0();
}

uint64_t sub_221F152D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221F13C88(a1);
}

uint64_t sub_221F15364(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F15384, 0, 0);
}

uint64_t sub_221F15384()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v5 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  *v3 = v0;
  v3[1] = sub_221F1549C;

  return MEMORY[0x28213AEC8](&unk_221FBB720, v2, v4, v5);
}

void sub_221F1549C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_221F155E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221F14224(a1, v4);
}

uint64_t sub_221F15684(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_221FB6C38();
  sub_221FB6358();
  v8 = sub_221FB6C58();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_221FB6B58() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_221F167E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_221F157F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_221FB62A8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_221F182A4(&qword_27CFEC260, MEMORY[0x277CC9610]);
      v21 = sub_221FB62D8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_221F16AF4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_221F15AD4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_221FB6878();

    if (v17)
    {

      sub_221E9D138(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_221FB6868();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_221F15D48(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_221F1653C(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_221F16760(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_221E9D138(0, a3, a4);
    v19 = sub_221FB6748();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_221FB6758();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_221F16964(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_221F15D48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_221FB6938();
    v23 = v10;
    sub_221FB6828();
    if (sub_221FB6898())
    {
      sub_221E9D138(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_221F1653C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_221FB6748();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_221FB6898());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_221F15F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2C0, &qword_221FBB750);
  result = sub_221FB6928();
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
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221F161E0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_221FB5C38();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2D0, &qword_221FBB758);
  result = sub_221FB6928();
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
      sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
      result = sub_221FB62A8();
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

uint64_t sub_221F1653C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_221FB6928();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_221FB6748();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_221F16760(uint64_t a1, uint64_t a2)
{
  sub_221FB6748();
  result = sub_221FB6808();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_221F167E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_221F15F6C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_221F16D70();
      goto LABEL_16;
    }

    sub_221F17244(v8 + 1);
  }

  v10 = *v4;
  sub_221FB6C38();
  sub_221FB6358();
  result = sub_221FB6C58();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_221FB6B58();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_221FB6B88();
  __break(1u);
  return result;
}

void sub_221F16964(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_221F1653C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_221F17104(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_221F17784(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_221FB6748();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_221E9D138(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_221FB6758();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_221FB6B88();
  __break(1u);
}

uint64_t sub_221F16AF4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_221F161E0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_221F16ECC();
      goto LABEL_12;
    }

    sub_221F1747C(v10 + 1);
  }

  v12 = *v3;
  sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
  v13 = sub_221FB62A8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_221F182A4(&qword_27CFEC260, MEMORY[0x277CC9610]);
      v21 = sub_221FB62D8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
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
  result = sub_221FB6B88();
  __break(1u);
  return result;
}

void *sub_221F16D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2C0, &qword_221FBB750);
  v2 = *v0;
  v3 = sub_221FB6918();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_221F16ECC()
{
  v1 = v0;
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2D0, &qword_221FBB758);
  v6 = *v0;
  v7 = sub_221FB6918();
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

id sub_221F17104(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6918();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_221F17244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2C0, &qword_221FBB750);
  result = sub_221FB6928();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_221FB6C38();

      sub_221FB6358();
      result = sub_221FB6C58();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_221F1747C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_221FB5C38();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2D0, &qword_221FBB758);
  v7 = sub_221FB6928();
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
      sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
      result = sub_221FB62A8();
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

uint64_t sub_221F17784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_221FB6928();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_221FB6748();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_221F17990(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return sub_221F12F7C(a1, a2, v6, v7, v8);
}

uint64_t sub_221F17A54(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v5 = sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBC5A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306E60, 0x277CBC5A0, &qword_27CFEC2E0, &qword_221FBB768);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F17BE0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
    v5 = sub_221E9E930(&qword_281306EF8, &qword_281306F08, 0x277CE9038);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CE9038uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306F08, 0x277CE9038, &qword_27CFEC300, &qword_221FBB788);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F17D6C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    v5 = sub_221E9E930(&qword_281306EE8, &qword_281306EF0, 0x277CBC5F8);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBC5F8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306EF0, 0x277CBC5F8, &qword_27CFEC2F8, &qword_221FBB780);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F17EF8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
    v5 = sub_221E9E930(&qword_281306E88, &qword_281306E90, 0x277CBC2A0);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBC2A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306E90, 0x277CBC2A0, &qword_27CFEC2F0, &qword_221FBB778);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F18084(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DAC8E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_221F15684(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_221F1811C(uint64_t a1)
{
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]);
  result = MEMORY[0x223DAC8E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_221F157F8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_221F182A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_221FB5C38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221F1835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E96070;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F1848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9606C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F18634(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F1874C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F18878(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9E350;

  return v7(a1, a2);
}

uint64_t sub_221F18990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221F18AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_221E9544C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221F18C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[161] = v4;
  v5[160] = a4;
  v5[159] = a3;
  v5[158] = a2;
  v5[157] = a1;
  v5[162] = type metadata accessor for IDSErrorAction(0);
  v5[163] = swift_task_alloc();
  sub_221FB5BC8();
  v5[164] = swift_task_alloc();
  v6 = sub_221FB5F28();
  v5[165] = v6;
  v5[166] = *(v6 - 8);
  v5[167] = swift_task_alloc();
  v7 = sub_221FB6058();
  v5[168] = v7;
  v5[169] = *(v7 - 8);
  v5[170] = swift_task_alloc();
  v5[171] = swift_task_alloc();
  v8 = sub_221FB5C38();
  v5[172] = v8;
  v5[173] = *(v8 - 8);
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F18E14, 0, 0);
}

uint64_t sub_221F18E14()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[176] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009ALL, 0x8000000221FC2890, 0xD000000000000054, 0x8000000221FC2930);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Checking number of friends", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[161];

  v6 = [*__swift_project_boxed_opaque_existential_0Tm((v5 + 176) *(v5 + 200))];
  v7 = sub_221FB61B8();
  if (v6)
  {
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "Reached maximum number of friends", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v10 = 29;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_221E93000, v7, v13, "Checking account info", v14, 2u);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    v15 = v0[161];

    __swift_project_boxed_opaque_existential_0Tm(v15, v15[3]);
    v16 = swift_task_alloc();
    v0[177] = v16;
    *v16 = v0;
    v16[1] = sub_221F19170;

    return sub_221EF490C();
  }
}

uint64_t sub_221F19170(__int16 a1)
{
  v3 = *v2;
  *(v3 + 2136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F19318, 0, 0);
  }
}

uint64_t sub_221F19318(uint64_t a1)
{
  v38 = v1;
  if (*(v1 + 2136) == 5)
  {
    v2 = *(v1 + 2136) & 0xFF00;
    v3 = sub_221FB61B8();
    if (v2 == 512)
    {
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_221E93000, v3, v4, "Creating participant", v5, 2u);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v6 = *(v1 + 1288);

      v7 = __swift_project_boxed_opaque_existential_0Tm(v6 + 42, v6[45]);
      v8 = v6[20];
      *(v1 + 1424) = v8;
      v9 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 5, v7[8]);
      v10 = swift_task_alloc();
      *(v1 + 1432) = v10;
      *v10 = v1;
      v10[1] = sub_221F1976C;
      v11 = *(v1 + 1264);
      v12 = *(v1 + 1256);

      return sub_221E9F708(v12, v11, v8, v9);
    }

    v23 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v23))
    {
      v24 = *(v1 + 2136);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136315138;
      *(v1 + 2140) = v24;
      v27 = sub_221FB6328();
      v29 = sub_221EF4114(v27, v28, v37);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_221E93000, v3, v23, "Account not HSA2: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DADA80](v26, -1, -1);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    v30 = *(v1 + 1304);
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v31 = swift_allocError();
    *v32 = 10;
    v33 = type metadata accessor for IDSError(0);
    sub_221EA49E8();
    swift_allocError();
    v35 = v34;
    sub_221EA4A40(v30, v34);
    *(v35 + *(v33 + 20)) = v31;
  }

  else
  {
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v1 + 2136);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37[0] = v18;
      *v17 = 136315138;
      *(v1 + 2138) = v16;
      v19 = sub_221FB6328();
      v21 = sub_221EF4114(v19, v20, v37);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_221E93000, v14, v15, "Account not singed in: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v22 = 10;
  }

  swift_willThrow();

  v36 = *(v1 + 8);

  return v36();
}

uint64_t sub_221F1976C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1440) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F19914, 0, 0);
  }
}

uint64_t sub_221F19914()
{
  v22 = v0;
  if (v0[180])
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((v0[161] + 336), *(v0[161] + 360));
    v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[181] = v3;
    *v3 = v0;
    v3[1] = sub_221F19BD4;
    v4 = v0[178];
    v5 = v0[158];
    v6 = v0[157];

    return sub_221F99674(v6, v5, v4, v2);
  }

  else
  {

    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[158];
      v11 = v0[157];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(v11, v10, &v21);
      _os_log_impl(&dword_221E93000, v8, v9, "Destination %s does not have a matching secure cloud participant", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v14 = v0[163];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v15 = swift_allocError();
    *v16 = 12;
    v17 = type metadata accessor for IDSError(0);
    sub_221EA49E8();
    swift_allocError();
    v19 = v18;
    sub_221EA4A40(v14, v18);
    *(v19 + *(v17 + 20)) = v15;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_221F19BD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1456) = a1;
  *(v3 + 1464) = v1;

  if (v1)
  {
    v4 = sub_221F19CEC;
  }

  else
  {
    v4 = sub_221F19DB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F19CEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F19DB8()
{
  v49 = v0;
  v1 = [*(v0 + 1440) userIdentity];
  v2 = [v1 hasiCloudAccount];

  if (v2 && (v3 = [*(v0 + 1456) userIdentity], v4 = objc_msgSend(v3, sel_hasiCloudAccount), v3, v4))
  {
    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_221E93000, v5, v6, "Fetching or creating placeholder contact", v7, 2u);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    v8 = *(v0 + 1288);
    v9 = *(v0 + 1264);
    v10 = *(v0 + 1256);

    v11 = *(v8 + 168);
    *(v0 + 1472) = v11;
    *(v0 + 1480) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221FB81A0;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;

    v13 = sub_221FB6428();

    v14 = [v11 contactWithDestinations_];

    v15 = v14;
    if (!v14)
    {
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = *(v0 + 1264);
      v20 = *(v0 + 1256);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_221FB81A0;
      *(v21 + 32) = v20;
      *(v21 + 40) = v19;

      v22 = sub_221FB6428();

      sub_221FB5C28();
      v23 = sub_221FB5BF8();
      (*(v17 + 8))(v16, v18);
      v24 = [v11 createContactWithDestinations:v22 relationshipIdentifier:v23];

      v15 = v24;
    }

    v47 = *(v0 + 1424);
    v25 = *(v0 + 1288);
    v26 = v14;
    v27 = [v15 relationshipStorage];
    v28 = [v27 secureCloudRelationship];

    v29 = sub_221FB62E8();
    v30 = *MEMORY[0x277CE9230];
    *(v0 + 1488) = *MEMORY[0x277CE9230];
    v31 = v30;
    v32 = ASInsertInviteForContact();
    *(v0 + 1496) = v32;

    v33 = [v11 savePlaceholderContact_];
    sub_221FB67C8();
    swift_unknownObjectRelease();
    v34 = *__swift_project_boxed_opaque_existential_0Tm((v25 + 120), *(v25 + 144));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 2142;
    *(v0 + 24) = sub_221F1A3BC;
    v35 = swift_continuation_init();
    *(v0 + 888) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 864) = v35;
    *(v0 + 832) = MEMORY[0x277D85DD0];
    *(v0 + 840) = 1107296256;
    *(v0 + 848) = sub_221FA909C;
    *(v0 + 856) = &block_descriptor_18;
    [v34 fetchAllChangesWithPriority:2 activity:0 group:v47 completion:v0 + 832];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v36 = sub_221FB61B8();
    v37 = sub_221FB65A8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 1264);
      v39 = *(v0 + 1256);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_221EF4114(v39, v38, &v48);
      _os_log_impl(&dword_221E93000, v36, v37, "Destination %s has a participant, but no iCloud account", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223DADA80](v41, -1, -1);
      MEMORY[0x223DADA80](v40, -1, -1);
    }

    v42 = *(v0 + 1456);
    v43 = *(v0 + 1440);
    sub_221EA4994();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_221F1A3BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1504) = v1;
  if (v1)
  {
    v2 = sub_221F1AB50;
  }

  else
  {
    v2 = sub_221F1A4CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F1A4CC()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[161] + 80), *(v0[161] + 104));
  v0[189] = v1;
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = swift_task_alloc();
  v0[190] = v4;
  *v4 = v0;
  v4[1] = sub_221F1A590;

  return MEMORY[0x28213AC20](v2, v3);
}

uint64_t sub_221F1A590(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  *(v3 + 1528) = v5;
  *v5 = v4;
  v5[1] = sub_221F1A6E0;

  return sub_221F7C268(v2);
}

uint64_t sub_221F1A6E0(char a1)
{
  *(*v1 + 2143) = a1;

  return MEMORY[0x2822009F8](sub_221F1A7E0, 0, 0);
}

uint64_t sub_221F1A7E0()
{
  v27 = v0;
  if (*(v0 + 2143) == 1)
  {
    v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 120), *(*(v0 + 1288) + 144));
    v2 = swift_task_alloc();
    *(v0 + 1536) = v2;
    *v2 = v0;
    v2[1] = sub_221F1AC78;

    return sub_221F991FC(v1);
  }

  else
  {
    sub_221F211E0(*(v0 + 1288), v0 + 336);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      __swift_project_boxed_opaque_existential_0Tm((v0 + 416), *(v0 + 440));
      sub_221E94E44();
      v9 = v8;
      v10 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
      v11 = MEMORY[0x223DAC810](v9, v10);
      v13 = v12;

      sub_221F21218(v0 + 336);
      v14 = sub_221EF4114(v11, v13, &v26);

      *(v6 + 4) = v14;
      _os_log_impl(&dword_221E93000, v4, v5, "Some devices on account not eligible for the invite service: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    else
    {

      sub_221F21218(v0 + 336);
    }

    v15 = *(v0 + 1496);
    v16 = *(v0 + 1472);
    v17 = *(v0 + 1456);
    v18 = *(v0 + 1440);
    v19 = *(v0 + 1304);
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v20 = swift_allocError();
    *v21 = 49;
    v22 = type metadata accessor for IDSError(0);
    sub_221EA49E8();
    swift_allocError();
    v24 = v23;
    sub_221EA4A40(v19, v23);
    *(v24 + *(v22 + 20)) = v20;
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
    [v16 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0((v0 + 1152));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_221F1AB50(uint64_t a1)
{
  v2 = v1[187];
  v3 = v1[184];
  v4 = v1[182];
  v5 = v1[180];
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0Tm(v1 + 144, v1[147]);
  [v3 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v1 + 144);

  v6 = v1[1];

  return v6();
}

uint64_t sub_221F1AC78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[193] = a1;
  v4[194] = a2;
  v4[195] = v2;

  if (v2)
  {
    v5 = sub_221F1B9C4;
  }

  else
  {
    v5 = sub_221F1AD94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F1AD94(uint64_t a1)
{
  if (!*(v1 + 1552))
  {
    v27 = sub_221FB61B8();
    v28 = sub_221FB65C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_221E93000, v27, v28, "Unable to fetch CloudKit address", v29, 2u);
      MEMORY[0x223DADA80](v29, -1, -1);
    }

    v22 = *(v1 + 1496);
    v23 = *(v1 + 1472);
    v24 = *(v1 + 1456);
    v25 = *(v1 + 1440);

    sub_221EA4994();
    swift_allocError();
    *v30 = 20;
    swift_willThrow();
    goto LABEL_36;
  }

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Fetching or creating actual contact", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v1 + 1472);
  v6 = *(v1 + 1264);
  v7 = *(v1 + 1256);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_221FB81A0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  v9 = sub_221FB6428();

  v10 = [v5 contactWithDestinations_];

  v11 = &off_278497000;
  if (v10)
  {
    v12 = [v10 relationshipStorage];
    v13 = [v12 primaryRelationship];

    v14 = [v10 relationshipStorage];
    v15 = [v14 primaryRemoteRelationship];

    if ([v13 isFriendshipActive] && (objc_msgSend(v15, sel_isFriendshipActive) & 1) != 0)
    {

      v16 = v13;
      v17 = sub_221FB61B8();
      v18 = sub_221FB65A8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_221E93000, v17, v18, "Contact with existing active friendship exists %@", v19, 0xCu);
        sub_221EA0558(v20);
        MEMORY[0x223DADA80](v20, -1, -1);
        MEMORY[0x223DADA80](v19, -1, -1);
      }

      v22 = *(v1 + 1496);
      v23 = *(v1 + 1472);
      v24 = *(v1 + 1456);
      v25 = *(v1 + 1440);

      sub_221EA4994();
      swift_allocError();
      *v26 = 43;
      swift_willThrow();

LABEL_36:
      __swift_project_boxed_opaque_existential_0Tm((v1 + 1152), *(v1 + 1176));
      [v23 removePlaceholderContactWithToken_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0((v1 + 1152));

      v85 = *(v1 + 8);

      return v85();
    }

    v31 = *(v1 + 1488);
    v32 = [v10 relationshipStorage];
    v33 = [v32 secureCloudRelationship];

    v34 = sub_221FB62E8();
    v35 = v31;
    v36 = ASInsertInviteForContact();

    v11 = &off_278497000;
  }

  else
  {
    v36 = sub_221E9A240();
  }

  *(v1 + 1568) = v36;
  v37 = v36;
  v38 = [v37 relationshipStorage];
  v39 = [v38 v11[295]];
  *(v1 + 1576) = v39;

  v40 = [v37 relationshipStorage];
  v41 = [v40 secureCloudRemoteRelationship];
  *(v1 + 1584) = v41;

  v42 = [v37 relationshipStorage];
  v43 = [v42 legacyRelationship];
  *(v1 + 1592) = v43;

  v44 = sub_221FB61B8();
  v45 = sub_221FB65C8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_221E93000, v44, v45, "Verifying friendship isn't hidden", v46, 2u);
    MEMORY[0x223DADA80](v46, -1, -1);
  }

  if ([v41 isFriendshipActive] && !objc_msgSend(v41, sel_isActivityDataVisible))
  {
    v88 = v39;

    v81 = sub_221FB61B8();
    v82 = sub_221FB65A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_221E93000, v81, v82, "Relationship already exists, but remote is hiding activity data", v83, 2u);
      MEMORY[0x223DADA80](v83, -1, -1);
    }

    v22 = *(v1 + 1496);
    v23 = *(v1 + 1472);
    v24 = *(v1 + 1456);
    v25 = *(v1 + 1440);

    sub_221EA4994();
    swift_allocError();
    *v84 = 30;
    swift_willThrow();

    goto LABEL_36;
  }

  v47 = sub_221FB61B8();
  v48 = sub_221FB65C8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_221E93000, v47, v48, "Pushing relationship to iCloud", v49, 2u);
    MEMORY[0x223DADA80](v49, -1, -1);
  }

  v50 = *(v1 + 1288);

  v51 = __swift_project_boxed_opaque_existential_0Tm((v50 + 376), *(v50 + 400));
  v52 = v39;
  if ([v52 cloudType] != 1)
  {

    v71 = v52;
    v72 = sub_221FB61B8();
    v73 = sub_221FB65A8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&dword_221E93000, v72, v73, "Attempting to save legacy relationship to secure cloud container %@", v74, 0xCu);
      sub_221EA0558(v75);
      MEMORY[0x223DADA80](v75, -1, -1);
      MEMORY[0x223DADA80](v74, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v77 = 11;
    swift_willThrow();
    v78 = *(v1 + 1592);
    v79 = *(v1 + 1584);
    v80 = *(v1 + 1576);
    v22 = *(v1 + 1496);
    v23 = *(v1 + 1472);
    v24 = *(v1 + 1456);
    v25 = *(v1 + 1440);

    goto LABEL_36;
  }

  v53 = [v52 secureCloudZoneName];
  if (v53)
  {
    v54 = v53;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    v55 = sub_221FB65D8();
    v56 = [v52 recordWithZoneID:v55 recordEncryptionType:1];
    *(v1 + 1600) = v56;

    *(v1 + 1608) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_221FB81B0;
    *(v57 + 32) = v56;
    v58 = v56;
    v59 = MEMORY[0x277D84F90];
    sub_221ED4350(MEMORY[0x277D84F90]);
    v60 = sub_221FB61B8();
    v61 = sub_221FB65C8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      v63 = v59 >> 62;
      if (v59 >> 62)
      {
        v87 = v62;
        v63 = sub_221FB6868();
        v62 = v87;
      }

      *(v62 + 4) = v63;
      v64 = v61;
      v65 = v62;
      _os_log_impl(&dword_221E93000, v60, v64, "Pushing relationship to iCloud with %ld extra records", v62, 0xCu);
      MEMORY[0x223DADA80](v65, -1, -1);
    }

    v66 = *(v1 + 1424);

    v67 = *__swift_project_boxed_opaque_existential_0Tm(v51 + 11, v51[14]);
    *(v1 + 1616) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v68 = sub_221FB6428();
    *(v1 + 1624) = v68;

    *(v1 + 1632) = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v69 = sub_221FB6428();
    *(v1 + 1640) = v69;
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 1184;
    *(v1 + 88) = sub_221F1BAE4;
    v70 = swift_continuation_init();
    *(v1 + 952) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
    *(v1 + 928) = v70;
    *(v1 + 896) = MEMORY[0x277D85DD0];
    *(v1 + 904) = 1107296256;
    *(v1 + 912) = sub_221EBA78C;
    *(v1 + 920) = &block_descriptor_10;
    [v67 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v68 recordIDsToDelete:v69 priority:2 activity:0 useZoneWideSharing:1 group:v66 completion:v1 + 896];
    v53 = (v1 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v53);
}

uint64_t sub_221F1B9C4()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[182];
  v4 = v0[180];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 144, v0[147]);
  [v2 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 144);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221F1BAE4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1648) = v1;
  if (v1)
  {

    v2 = sub_221F1BBFC;
  }

  else
  {
    v2 = sub_221F1BD68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F1BBFC(uint64_t a1)
{
  v2 = *(v1 + 1640);
  v3 = *(v1 + 1624);
  v4 = *(v1 + 1600);
  swift_willThrow();

  v5 = *(v1 + 1592);
  v6 = *(v1 + 1584);
  v7 = *(v1 + 1576);
  v8 = *(v1 + 1496);
  v9 = *(v1 + 1472);
  v10 = *(v1 + 1456);
  v11 = *(v1 + 1440);

  __swift_project_boxed_opaque_existential_0Tm((v1 + 1152), *(v1 + 1176));
  [v9 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v1 + 1152));

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_221F1BD68()
{
  v1 = v0[205];
  v2 = v0[203];
  v3 = v0[200];
  v4 = v0[197];
  v13 = v0[196];
  v5 = v0[161];
  v0[207] = v0[149];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + 376), *(v5 + 400));
  v7 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 6, v6[9]);

  sub_221F17A54(v8);

  v0[208] = sub_221EBCC48();
  v9 = sub_221FB64E8();
  v0[209] = v9;

  v0[18] = v0;
  v0[23] = v0 + 150;
  v0[19] = sub_221F1BF3C;
  v10 = swift_continuation_init();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[210] = v11;
  v0[127] = v11;
  v0[124] = v10;
  v0[120] = MEMORY[0x277D85DD0];
  v0[121] = 1107296256;
  v0[122] = sub_221EBCB58;
  v0[123] = &block_descriptor_13_0;
  [v7 handleSavedRecords:v9 forContact:v13 completion:v0 + 120];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F1BF3C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1688) = v1;
  if (v1)
  {
    v2 = sub_221F1C300;
  }

  else
  {
    v2 = sub_221F1C04C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F1C04C()
{
  v1 = v0[209];
  v2 = v0[197];
  v3 = v0[151];
  v0[212] = v3;

  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v4, v5, "Saved relationship with invite request", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v7 = v0[184];

  __swift_project_boxed_opaque_existential_0Tm(v0 + 144, v0[147]);
  [v7 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_221E93000, v8, v9, "Adding addresses to legacy relationship", v10, 2u);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v11 = [v3 addresses];
  if (v11)
  {
    v12 = v11;
    sub_221FB64F8();

    v13 = sub_221FB64E8();
  }

  else
  {
    v13 = 0;
  }

  v14 = v0[199];
  v15 = v0[161];
  [v14 setAddresses_];

  v16 = [v3 preferredReachableAddress];
  [v14 setPreferredReachableAddress_];

  __swift_project_boxed_opaque_existential_0Tm((v15 + 416), *(v15 + 440));
  v17 = v3;
  v18 = swift_task_alloc();
  v0[213] = v18;
  *v18 = v0;
  v18[1] = sub_221F1C484;
  v19 = v0[178];

  return sub_221E9AC64(v17, v19, 0);
}

uint64_t sub_221F1C300(uint64_t a1)
{
  v2 = v1[209];
  v3 = v1[199];
  v4 = v1[198];
  v5 = v1[197];
  v6 = v1[196];
  v7 = v1[184];
  v10 = v1[187];
  v11 = v1[182];
  v12 = v1[180];
  swift_willThrow();

  __swift_project_boxed_opaque_existential_0Tm(v1 + 144, v1[147]);
  [v7 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v1 + 144);

  v8 = v1[1];

  return v8();
}

uint64_t sub_221F1C484(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1712) = a1;
  *(v4 + 1720) = v1;

  v5 = *(v3 + 1696);
  if (v1)
  {

    v6 = sub_221F1C7F8;
  }

  else
  {

    v6 = sub_221F1C5DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F1C5DC()
{
  v1 = v0[214];
  v2 = v0[180];
  __swift_project_boxed_opaque_existential_0Tm((v0[161] + 416), *(v0[161] + 440));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[216] = v4;
  *v4 = v0;
  v4[1] = sub_221F1C6A8;
  v5 = v0[214];
  v6 = v0[178];

  return sub_221E9A43C(v2, v5, v6, 0);
}

uint64_t sub_221F1C6A8()
{
  v2 = *v1;
  *(v2 + 1736) = v0;

  if (v0)
  {

    v3 = sub_221F1CBA0;
  }

  else
  {
    v3 = sub_221F1C9BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F1C7F8()
{
  v1 = v0[215];
  v2 = v0[212];
  v3 = v0[199];
  v0[263] = v2;
  v0[262] = v3;
  v0[261] = v1;
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Invite failure after saving the relationship with error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v0[196];
  v12 = v0[161];

  [v2 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v12 + 376), *(v12 + 400));
  v13 = v2;
  v14 = swift_task_alloc();
  v0[264] = v14;
  *v14 = v0;
  v14[1] = sub_221F20B38;
  v15 = v0[178];

  return sub_221EBAEA8(v13, v11, v15, 0);
}

uint64_t sub_221F1C9BC()
{
  v1 = v0[180];
  __swift_project_boxed_opaque_existential_0Tm((v0[161] + 416), *(v0[161] + 440));
  v2 = swift_task_alloc();
  v0[218] = v2;
  *v2 = v0;
  v2[1] = sub_221F1CA74;
  v3 = v0[214];
  v4 = v0[178];

  return sub_221E993C0(v1, v3, v4, 0);
}

uint64_t sub_221F1CA74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1752) = a1;
  *(v3 + 1760) = v1;

  if (v1)
  {

    v4 = sub_221F1D294;
  }

  else
  {
    v4 = sub_221F1CD6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F1CBA0()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1592);
  *(v0 + 2104) = v2;
  *(v0 + 2096) = v3;
  *(v0 + 2088) = v1;
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Invite failure after saving the relationship with error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = *(v0 + 1568);
  v12 = *(v0 + 1288);

  [v2 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v12 + 376), *(v12 + 400));
  v13 = v2;
  v14 = swift_task_alloc();
  *(v0 + 2112) = v14;
  *v14 = v0;
  v14[1] = sub_221F20B38;
  v15 = *(v0 + 1424);

  return sub_221EBAEA8(v13, v11, v15, 0);
}

uint64_t sub_221F1CD6C()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1440);

  sub_221E9D138(0, &qword_27CFEC268, 0x277CE9130);
  v3 = sub_221FA6C68(v1, v2);
  *(v0 + 1768) = v3;
  if (v3)
  {
    v4 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 296), *(*(v0 + 1288) + 320));
    v5 = swift_task_alloc();
    *(v0 + 1776) = v5;
    *v5 = v0;
    v5[1] = sub_221F1D160;
    v6 = *(v0 + 1592);
    v7 = *(v0 + 1568);

    return sub_221FB4FA4(v6, v7, v4);
  }

  else
  {
    v9 = *(v0 + 1752);
    v10 = *(v0 + 1440);

    v11 = v9;
    v12 = v10;
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1752);
      v16 = *(v0 + 1440);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v15;
      *v18 = v16;
      v18[1] = v15;
      v19 = v15;
      v20 = v16;
      _os_log_impl(&dword_221E93000, v13, v14, "Failed to create share item for participant: %@, share: %@", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    v21 = *(v0 + 1752);

    sub_221EA4994();
    v22 = swift_allocError();
    *v23 = 31;
    swift_willThrow();

    v24 = *(v0 + 1696);
    v25 = *(v0 + 1592);
    *(v0 + 2104) = v24;
    *(v0 + 2096) = v25;
    *(v0 + 2088) = v22;
    v26 = v22;
    v27 = sub_221FB61B8();
    v28 = sub_221FB65A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v22;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_221E93000, v27, v28, "Invite failure after saving the relationship with error: %@", v29, 0xCu);
      sub_221EA0558(v30);
      MEMORY[0x223DADA80](v30, -1, -1);
      MEMORY[0x223DADA80](v29, -1, -1);
    }

    v33 = *(v0 + 1568);
    v34 = *(v0 + 1288);

    [v24 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v34 + 376), *(v34 + 400));
    v35 = v24;
    v36 = swift_task_alloc();
    *(v0 + 2112) = v36;
    *v36 = v0;
    v36[1] = sub_221F20B38;
    v37 = *(v0 + 1424);

    return sub_221EBAEA8(v35, v33, v37, 0);
  }
}

uint64_t sub_221F1D160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[223] = a1;
  v5[224] = a2;
  v5[225] = a3;
  v5[226] = v3;

  if (v3)
  {

    v6 = sub_221F1D460;
  }

  else
  {
    v6 = sub_221F1D634;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F1D294()
{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1592);
  *(v0 + 2104) = v2;
  *(v0 + 2096) = v3;
  *(v0 + 2088) = v1;
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Invite failure after saving the relationship with error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = *(v0 + 1568);
  v12 = *(v0 + 1288);

  [v2 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v12 + 376), *(v12 + 400));
  v13 = v2;
  v14 = swift_task_alloc();
  *(v0 + 2112) = v14;
  *v14 = v0;
  v14[1] = sub_221F20B38;
  v15 = *(v0 + 1424);

  return sub_221EBAEA8(v13, v11, v15, 0);
}

uint64_t sub_221F1D460()
{
  v1 = *(v0 + 1768);

  v2 = *(v0 + 1808);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1592);
  *(v0 + 2104) = v3;
  *(v0 + 2096) = v4;
  *(v0 + 2088) = v2;
  v5 = v2;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Invite failure after saving the relationship with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = *(v0 + 1568);
  v13 = *(v0 + 1288);

  [v3 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v13 + 376), *(v13 + 400));
  v14 = v3;
  v15 = swift_task_alloc();
  *(v0 + 2112) = v15;
  *v15 = v0;
  v15[1] = sub_221F20B38;
  v16 = *(v0 + 1424);

  return sub_221EBAEA8(v14, v12, v16, 0);
}

uint64_t sub_221F1D634()
{
  v1 = v0[224];
  v2 = v0[223];
  v3 = __swift_project_boxed_opaque_existential_0Tm((v0[161] + 336), *(v0[161] + 360));
  v4 = swift_allocObject();
  v0[227] = v4;
  *(v4 + 16) = xmmword_221FB8D60;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = v3[3];
  v6 = v2;
  v7 = v1;
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v3, v5);
  v9 = swift_task_alloc();
  v0[228] = v9;
  *v9 = v0;
  v9[1] = sub_221F1D748;
  v10 = v0[182];
  v11 = v0[178];

  return sub_221F997D4(v10, v4, v11, v8);
}

uint64_t sub_221F1D748()
{
  *(*v1 + 1832) = v0;

  if (v0)
  {

    v2 = sub_221F1DE34;
  }

  else
  {
    v2 = sub_221F1D89C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_221F1D89C()
{
  v1 = *(v0 + 1784);
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 336), *(*(v0 + 1288) + 360));
  sub_221F228F4(v1);
  *(v0 + 1840) = v2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v0 + 1792);
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 336), *(*(v0 + 1288) + 360));
  sub_221F228F4(v3);
  *(v0 + 1848) = v4;
  if (!v4)
  {
LABEL_11:

LABEL_12:
    v28 = *(v0 + 1800);
    v29 = *(v0 + 1792);
    v30 = *(v0 + 1784);
    v31 = *(v0 + 1768);
    v32 = *(v0 + 1752);

    sub_221EA4994();
    v33 = swift_allocError();
    *v34 = 40;
    swift_willThrow();

    v35 = *(v0 + 1696);
    v36 = *(v0 + 1592);
    *(v0 + 2104) = v35;
    *(v0 + 2096) = v36;
    *(v0 + 2088) = v33;
    v37 = v33;
    v38 = sub_221FB61B8();
    v39 = sub_221FB65A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v33;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_221E93000, v38, v39, "Invite failure after saving the relationship with error: %@", v40, 0xCu);
      sub_221EA0558(v41);
      MEMORY[0x223DADA80](v41, -1, -1);
      MEMORY[0x223DADA80](v40, -1, -1);
    }

    v44 = *(v0 + 1568);
    v45 = *(v0 + 1288);

    [v35 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v45 + 376), *(v45 + 400));
    v46 = v35;
    v47 = swift_task_alloc();
    *(v0 + 2112) = v47;
    *v47 = v0;
    v47[1] = sub_221F20B38;
    v25 = *(v0 + 1424);
    v26 = v46;
    v27 = v44;
    goto LABEL_15;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CE90C8]) init];
  *(v0 + 1856) = v5;
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = v5;
  v7 = *(v0 + 1800);
  v8 = *(v0 + 1592);
  v9 = *(v0 + 1288);
  v10 = sub_221FB62E8();
  [v6 setActivityShareURL_];

  v11 = sub_221FB62E8();
  [v6 setRelationshipShareURL_];

  v12 = *(v9 + 481);
  *(v0 + 2144) = v12;
  v13 = *(v9 + 488);
  *(v0 + 1864) = v13;
  v14 = v7;
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v15 = UserDefaultsKeys.rawValue.getter();
    v16 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v13, v15);

    if (v16 == 2)
    {
      v17 = v12;
    }

    else
    {
      v17 = v16;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!v12)
  {
LABEL_9:
    *(v0 + 1936) = MEMORY[0x277D84F90];
    v18 = *(v0 + 1752);
    v19 = *(v0 + 1568);
    v20 = *(v0 + 1288);
    v21 = *(v0 + 1696);
    v22 = [v18 recordID];
    [v21 setRelationshipZoneShareID_];

    __swift_project_boxed_opaque_existential_0Tm((v20 + 376), *(v20 + 400));
    v23 = v21;
    v24 = swift_task_alloc();
    *(v0 + 1944) = v24;
    *v24 = v0;
    v24[1] = sub_221F1E620;
    v25 = *(v0 + 1424);
    v26 = *(v0 + 1696);
    v27 = v19;
LABEL_15:

    return sub_221EBAEA8(v26, v27, v25, 0);
  }

  v49 = *(v0 + 1800);
  *(v0 + 1872) = [objc_opt_self() relationshipZone];
  result = [v49 UUID];
  if (result)
  {
    v50 = result;
    v51 = *(v0 + 1392);
    v52 = *(v0 + 1384);
    v53 = *(v0 + 1376);
    v54 = *(v0 + 1288);
    sub_221FB5C18();

    v55 = sub_221FB5BE8();
    v57 = v56;
    *(v0 + 1880) = v55;
    *(v0 + 1888) = v56;
    (*(v52 + 8))(v51, v53);
    __swift_project_boxed_opaque_existential_0Tm((v54 + 256), *(v54 + 280));
    v58 = swift_task_alloc();
    *(v0 + 1896) = v58;
    *v58 = v0;
    v58[1] = sub_221F1E020;

    return sub_221F288AC(v55, v57);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F1DE34()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v5 = *(v0 + 1832);
  v6 = *(v0 + 1696);
  v7 = *(v0 + 1592);
  *(v0 + 2104) = v6;
  *(v0 + 2096) = v7;
  *(v0 + 2088) = v5;
  v8 = v5;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Invite failure after saving the relationship with error: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = *(v0 + 1568);
  v16 = *(v0 + 1288);

  [v6 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v16 + 376), *(v16 + 400));
  v17 = v6;
  v18 = swift_task_alloc();
  *(v0 + 2112) = v18;
  *v18 = v0;
  v18[1] = sub_221F20B38;
  v19 = *(v0 + 1424);

  return sub_221EBAEA8(v17, v15, v19, 0);
}

uint64_t sub_221F1E020(uint64_t a1)
{
  *(*v1 + 1904) = a1;

  return MEMORY[0x2822009F8](sub_221F1E120, 0, 0);
}

uint64_t sub_221F1E120()
{
  v1 = v0[238];
  if (v1)
  {
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CE9108]);
    v3 = sub_221FB62E8();

    v1 = [v2 initWithRelationshipIdentifier_];
  }

  v0[239] = v1;
  v4 = *__swift_project_boxed_opaque_existential_0Tm((v0[161] + 256), *(v0[161] + 280));

  return MEMORY[0x2822009F8](sub_221F1E1FC, v4, 0);
}

uint64_t sub_221F1E1FC()
{
  v1 = *(v0 + 1832);
  *(v0 + 1920) = sub_221F5A3A4(*(v0 + 1800), *(v0 + 1872));
  *(v0 + 1928) = v1;
  if (v1)
  {

    v2 = sub_221F1E424;
  }

  else
  {
    v2 = sub_221F1E2D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F1E2D4()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1872);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221FB81B0;
  *(v4 + 32) = v1;

  *(v0 + 1936) = v4;
  v5 = *(v0 + 1752);
  v6 = *(v0 + 1568);
  v7 = *(v0 + 1288);
  v8 = *(v0 + 1696);
  v9 = [v5 recordID];
  [v8 setRelationshipZoneShareID_];

  __swift_project_boxed_opaque_existential_0Tm((v7 + 376), *(v7 + 400));
  v10 = v8;
  v11 = swift_task_alloc();
  *(v0 + 1944) = v11;
  *v11 = v0;
  v11[1] = sub_221F1E620;
  v12 = *(v0 + 1696);
  v13 = *(v0 + 1424);

  return sub_221EBAEA8(v12, v6, v13, 0);
}

uint64_t sub_221F1E424()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1792);
  v5 = *(v0 + 1768);
  v6 = *(v0 + 1752);

  v7 = *(v0 + 1928);
  v8 = *(v0 + 1800);
  v9 = *(v0 + 1696);
  *(v0 + 2104) = v9;
  *(v0 + 2096) = v8;
  *(v0 + 2088) = v7;
  v10 = v7;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_221E93000, v11, v12, "Invite failure after saving the relationship with error: %@", v13, 0xCu);
    sub_221EA0558(v14);
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v17 = *(v0 + 1568);
  v18 = *(v0 + 1288);

  [v9 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v18 + 376), *(v18 + 400));
  v19 = v9;
  v20 = swift_task_alloc();
  *(v0 + 2112) = v20;
  *v20 = v0;
  v20[1] = sub_221F20B38;
  v21 = *(v0 + 1424);

  return sub_221EBAEA8(v19, v17, v21, 0);
}

uint64_t sub_221F1E620(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1952) = a1;
  *(v3 + 1960) = v1;

  if (v1)
  {
    v4 = *(v3 + 1696);

    v5 = sub_221F1ED48;
  }

  else
  {

    v5 = sub_221F1E79C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F1E79C()
{
  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1952);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v3;
    *v5 = v3;
    v6 = v3;
    _os_log_impl(&dword_221E93000, v1, v2, "Saved relationship with relationship zone share identifier: %@", v4, 0xCu);
    sub_221EA0558(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v7 = *(v0 + 1280);

  if (v7)
  {
    v8 = *(v0 + 1800);
    v9 = sub_221FB62E8();
    [v8 setPreferredReachableService_];
  }

  v10 = *(v0 + 1800);
  v11 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 376), *(*(v0 + 1288) + 400));
  if ([v10 cloudType])
  {
    v12 = *(v0 + 1800);
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1800);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_221E93000, v13, v14, "Attempting to save secure cloud relationship to legacy container %@", v16, 0xCu);
      sub_221EA0558(v17);
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    sub_221EA4994();
    v19 = swift_allocError();
    *v20 = 11;
    swift_willThrow();
    v21 = *(v0 + 1856);
    v22 = *(v0 + 1800);
    v23 = *(v0 + 1792);
    v24 = *(v0 + 1784);
    v25 = *(v0 + 1752);
    v47 = *(v0 + 1768);

    v26 = *(v0 + 1952);
    v27 = *(v0 + 1800);
    *(v0 + 2104) = v26;
    *(v0 + 2096) = v27;
    *(v0 + 2088) = v19;
    v28 = v19;
    v29 = sub_221FB61B8();
    v30 = sub_221FB65A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v19;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_221E93000, v29, v30, "Invite failure after saving the relationship with error: %@", v31, 0xCu);
      sub_221EA0558(v32);
      MEMORY[0x223DADA80](v32, -1, -1);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    v35 = *(v0 + 1568);
    v36 = *(v0 + 1288);

    [v26 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v36 + 376), *(v36 + 400));
    v37 = v26;
    v38 = swift_task_alloc();
    *(v0 + 2112) = v38;
    *v38 = v0;
    v38[1] = sub_221F20B38;
    v39 = *(v0 + 1424);

    return sub_221EBAEA8(v37, v35, v39, 0);
  }

  else
  {
    v48 = *(v0 + 1800);
    v41 = *(v0 + 1568);
    v42 = *(v0 + 1424);
    v43 = *__swift_project_boxed_opaque_existential_0Tm(v11 + 6, v11[9]);
    v44 = sub_221FB6428();
    *(v0 + 1968) = v44;
    v45 = sub_221FB6428();
    *(v0 + 1976) = v45;
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1248;
    *(v0 + 216) = sub_221F1EF34;
    v46 = swift_continuation_init();
    *(v0 + 1080) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 1056) = v46;
    *(v0 + 1024) = MEMORY[0x277D85DD0];
    *(v0 + 1032) = 1107296256;
    *(v0 + 1040) = sub_221F68D78;
    *(v0 + 1048) = &block_descriptor_23_3;
    [v43 saveRelationship:v48 contact:v41 extraRecordsToSave:v44 extraRecordIDsToDelete:v45 cloudKitGroup:v42 activity:0 completion:v0 + 1024];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_221F1ED48()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v5 = *(v0 + 1960);
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1696);
  *(v0 + 2104) = v7;
  *(v0 + 2096) = v6;
  *(v0 + 2088) = v5;
  v8 = v5;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Invite failure after saving the relationship with error: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = *(v0 + 1568);
  v16 = *(v0 + 1288);

  [v7 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v16 + 376), *(v16 + 400));
  v17 = v7;
  v18 = swift_task_alloc();
  *(v0 + 2112) = v18;
  *v18 = v0;
  v18[1] = sub_221F20B38;
  v19 = *(v0 + 1424);

  return sub_221EBAEA8(v17, v15, v19, 0);
}

uint64_t sub_221F1EF34()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1984) = v1;
  if (v1)
  {
    v2 = sub_221F1F984;
  }

  else
  {
    v2 = sub_221F1F044;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F1F044()
{
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[210];
  v11 = v0[196];
  v4 = v0[161];
  v0[249] = v0[156];

  v5 = __swift_project_boxed_opaque_existential_0Tm((v4 + 376), *(v4 + 400));
  v6 = *__swift_project_boxed_opaque_existential_0Tm(v5 + 6, v5[9]);

  sub_221F17A54(v7);

  v8 = sub_221FB64E8();
  v0[250] = v8;

  v0[34] = v0;
  v0[39] = v0 + 152;
  v0[35] = sub_221F1F1EC;
  v9 = swift_continuation_init();
  v0[143] = v3;
  v0[140] = v9;
  v0[136] = MEMORY[0x277D85DD0];
  v0[137] = 1107296256;
  v0[138] = sub_221EBCB58;
  v0[139] = &block_descriptor_26_1;
  [v6 handleSavedRecords:v8 forContact:v11 completion:v0 + 136];

  return MEMORY[0x282200938](v0 + 34);
}

uint64_t sub_221F1F1EC()
{
  v1 = *(*v0 + 304);
  *(*v0 + 2008) = v1;
  if (v1)
  {
    v2 = sub_221F1F70C;
  }

  else
  {
    v2 = sub_221F1F2FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_221F1F2FC()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1800);
  *(v0 + 2016) = *(v0 + 1224);

  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v3 = *(v0 + 1864);
    v4 = *(v0 + 2144);
    v5 = UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v3, v5);

    if (v6 == 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v0 + 2144) != 1)
  {
LABEL_6:
    __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 40), *(*(v0 + 1288) + 64));
    v8 = ASMakeActivityDataPreviewWithManager();
    *(v0 + 2032) = v8;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_221E93000, v9, v10, "Sending IDS request", v11, 2u);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v12 = *(v0 + 1952);
    v13 = *(v0 + 1856);
    v14 = *(v0 + 1768);

    v8;

    v15 = v13;
    v16 = v14;
    sub_221FB6028();
    sub_221FB5BB8();
    result = [v12 outgoingHandshakeToken];
    if (result)
    {
      v18 = result;
      v19 = *(v0 + 1400);
      v20 = *(v0 + 1384);
      v28 = *(v0 + 1376);
      v29 = *(v0 + 1360);
      v21 = *(v0 + 1352);
      v30 = *(v0 + 1344);
      v31 = *(v0 + 1368);
      v32 = *(v0 + 1288);

      sub_221FB6318();

      sub_221FB5C28();
      sub_221FB5BE8();
      (*(v20 + 8))(v19, v28);
      (*(v21 + 16))(v29, v31, v30);
      sub_221FB5EF8();
      __swift_project_boxed_opaque_existential_0Tm((v32 + 216), *(v32 + 240));
      v22 = swift_task_alloc();
      *(v0 + 2040) = v22;
      *v22 = v0;
      v22[1] = sub_221F1FFE0;
      v23 = *(v0 + 1336);
      v24 = *(v0 + 1264);
      v25 = *(v0 + 1256);

      return sub_221F42AEC(v25, v24, v23, 1103, 0, 0);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 376), *(*(v0 + 1288) + 400));
  v26 = swift_task_alloc();
  *(v0 + 2024) = v26;
  *v26 = v0;
  v26[1] = sub_221F1FBE0;
  v27 = *(v0 + 1992);

  return sub_221EBC594(v27);
}

uint64_t sub_221F1F70C(uint64_t a1)
{
  v2 = v1[250];
  v3 = v1[225];
  v21 = v1[224];
  v4 = v1[223];
  v22 = v1[221];
  v23 = v1[232];
  v24 = v1[219];
  swift_willThrow();

  v5 = v1[251];
  v6 = v1[244];
  v7 = v1[225];
  v1[263] = v6;
  v1[262] = v7;
  v1[261] = v5;
  v8 = v5;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Invite failure after saving the relationship with error: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = v1[196];
  v16 = v1[161];

  [v6 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v16 + 376), *(v16 + 400));
  v17 = v6;
  v18 = swift_task_alloc();
  v1[264] = v18;
  *v18 = v1;
  v18[1] = sub_221F20B38;
  v19 = v1[178];

  return sub_221EBAEA8(v17, v15, v19, 0);
}

uint64_t sub_221F1F984(uint64_t a1)
{
  v2 = v1[247];
  v3 = v1[246];
  swift_willThrow();

  v4 = v1[248];
  v5 = v1[232];
  v6 = v1[225];
  v7 = v1[224];
  v8 = v1[223];
  v9 = v1[219];
  v25 = v1[221];

  v10 = v1[244];
  v11 = v1[225];
  v1[263] = v10;
  v1[262] = v11;
  v1[261] = v4;
  v12 = v4;
  v13 = sub_221FB61B8();
  v14 = sub_221FB65A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v4;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_221E93000, v13, v14, "Invite failure after saving the relationship with error: %@", v15, 0xCu);
    sub_221EA0558(v16);
    MEMORY[0x223DADA80](v16, -1, -1);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  v19 = v1[196];
  v20 = v1[161];

  [v10 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v20 + 376), *(v20 + 400));
  v21 = v10;
  v22 = swift_task_alloc();
  v1[264] = v22;
  *v22 = v1;
  v22[1] = sub_221F20B38;
  v23 = v1[178];

  return sub_221EBAEA8(v21, v19, v23, 0);
}

uint64_t sub_221F1FBE0()
{

  return MEMORY[0x2822009F8](sub_221F1FCDC, 0, 0);
}

id sub_221F1FCDC()
{
  __swift_project_boxed_opaque_existential_0Tm((v0[161] + 40), *(v0[161] + 64));
  v1 = ASMakeActivityDataPreviewWithManager();
  v0[254] = v1;
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Sending IDS request", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[244];
  v6 = v0[232];
  v7 = v0[221];

  v1;

  v8 = v6;
  v9 = v7;
  sub_221FB6028();
  sub_221FB5BB8();
  result = [v5 outgoingHandshakeToken];
  if (result)
  {
    v11 = result;
    v12 = v0[175];
    v13 = v0[173];
    v19 = v0[172];
    v20 = v0[170];
    v14 = v0[169];
    v21 = v0[168];
    v22 = v0[171];
    v23 = v0[161];

    sub_221FB6318();

    sub_221FB5C28();
    sub_221FB5BE8();
    (*(v13 + 8))(v12, v19);
    (*(v14 + 16))(v20, v22, v21);
    sub_221FB5EF8();
    __swift_project_boxed_opaque_existential_0Tm((v23 + 216), *(v23 + 240));
    v15 = swift_task_alloc();
    v0[255] = v15;
    *v15 = v0;
    v15[1] = sub_221F1FFE0;
    v16 = v0[167];
    v17 = v0[158];
    v18 = v0[157];

    return sub_221F42AEC(v18, v17, v16, 1103, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F1FFE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2048) = a1;
  *(v3 + 2056) = v1;

  if (v1)
  {
    v4 = sub_221F208DC;
  }

  else
  {
    v4 = sub_221F200F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F200F8()
{
  v1 = v0[244];
  v2 = v0[196];
  v3 = v0[161];
  [v1 setSentInvitation_];
  __swift_project_boxed_opaque_existential_0Tm((v3 + 376), *(v3 + 400));
  v4 = v1;
  v5 = swift_task_alloc();
  v0[258] = v5;
  *v5 = v0;
  v5[1] = sub_221F201DC;
  v6 = v0[244];
  v7 = v0[178];

  return sub_221EBAEA8(v6, v2, v7, 0);
}

uint64_t sub_221F201DC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 2072) = v1;

  if (v1)
  {
    v5 = sub_221F20554;
  }

  else
  {
    *(v4 + 2080) = a1;
    v5 = sub_221F20320;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F20320()
{
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  v3 = *(v0 + 2016);
  v19 = *(v0 + 1952);
  v20 = *(v0 + 2080);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1800);
  v12 = *(v0 + 1792);
  v17 = *(v0 + 1768);
  v14 = *(v0 + 1784);
  v15 = *(v0 + 1752);
  v6 = *(v0 + 1568);
  v21 = *(v0 + 1472);
  v22 = *(v0 + 1496);
  v23 = *(v0 + 1456);
  v24 = *(v0 + 1440);
  v18 = *(v0 + 1368);
  v7 = *(v0 + 1352);
  v16 = *(v0 + 1344);
  v13 = *(v0 + 1336);
  v8 = *(v0 + 1328);
  v9 = *(v0 + 1320);

  (*(v8 + 8))(v13, v9);
  (*(v7 + 8))(v18, v16);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v21 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F20554()
{
  v1 = v0[259];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[259];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to save sent invitation %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v0[259];
  v11 = v0[256];
  v12 = v0[232];
  v33 = v0[254];
  v34 = v0[225];
  v35 = v0[224];
  v36 = v0[223];
  v13 = v0[221];
  v14 = v0[169];
  v40 = v0[168];
  v41 = v0[171];
  v38 = v0[219];
  v39 = v0[167];
  v15 = v0[166];
  v37 = v0[165];

  sub_221EA4994();
  v16 = swift_allocError();
  *v17 = 41;
  swift_willThrow();

  (*(v15 + 8))(v39, v37);
  (*(v14 + 8))(v41, v40);
  v18 = v0[252];
  v19 = v0[244];
  v0[263] = v19;
  v0[262] = v18;
  v0[261] = v16;
  v20 = v16;
  v21 = sub_221FB61B8();
  v22 = sub_221FB65A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v16;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_221E93000, v21, v22, "Invite failure after saving the relationship with error: %@", v23, 0xCu);
    sub_221EA0558(v24);
    MEMORY[0x223DADA80](v24, -1, -1);
    MEMORY[0x223DADA80](v23, -1, -1);
  }

  v27 = v0[196];
  v28 = v0[161];

  [v19 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v28 + 376), *(v28 + 400));
  v29 = v19;
  v30 = swift_task_alloc();
  v0[264] = v30;
  *v30 = v0;
  v30[1] = sub_221F20B38;
  v31 = v0[178];

  return sub_221EBAEA8(v29, v27, v31, 0);
}

uint64_t sub_221F208DC()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1784);
  v5 = *(v0 + 1752);
  v28 = *(v0 + 1368);
  v6 = *(v0 + 1352);
  v26 = *(v0 + 1768);
  v27 = *(v0 + 1344);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1328);
  v9 = *(v0 + 1320);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v28, v27);
  v10 = *(v0 + 2056);
  v11 = *(v0 + 2016);
  v12 = *(v0 + 1952);
  *(v0 + 2104) = v12;
  *(v0 + 2096) = v11;
  *(v0 + 2088) = v10;
  v13 = v10;
  v14 = sub_221FB61B8();
  v15 = sub_221FB65A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_221E93000, v14, v15, "Invite failure after saving the relationship with error: %@", v16, 0xCu);
    sub_221EA0558(v17);
    MEMORY[0x223DADA80](v17, -1, -1);
    MEMORY[0x223DADA80](v16, -1, -1);
  }

  v20 = *(v0 + 1568);
  v21 = *(v0 + 1288);

  [v12 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v21 + 376), *(v21 + 400));
  v22 = v12;
  v23 = swift_task_alloc();
  *(v0 + 2112) = v23;
  *v23 = v0;
  v23[1] = sub_221F20B38;
  v24 = *(v0 + 1424);

  return sub_221EBAEA8(v22, v20, v24, 0);
}

uint64_t sub_221F20B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2120) = a1;
  *(v4 + 2128) = v1;

  if (v1)
  {
    v5 = sub_221F21084;
  }

  else
  {
    v5 = sub_221F20C78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F20C78()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2120);

  v3 = v2;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 2120);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    _os_log_impl(&dword_221E93000, v4, v5, "Updated relationship with withdraw event: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 2088);

  *(v0 + 1232) = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v12 = *(v0 + 1240);
  sub_221EC4754(33, v12);
  if ((v13 & 1) == 0)
  {

LABEL_10:
    v26 = *(v0 + 2120);
    v27 = *(v0 + 2096);
    v28 = *(v0 + 1584);
    v29 = *(v0 + 1568);
    v30 = *(v0 + 1496);
    v31 = *(v0 + 1472);
    v32 = *(v0 + 1456);
    v33 = *(v0 + 1440);
    swift_willThrow();

    __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
    [v31 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
    goto LABEL_11;
  }

  v14 = sub_221FB61B8();
  v15 = sub_221FB65A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_221E93000, v14, v15, "Friend doesn't have a secure cloud container", v16, 2u);
    MEMORY[0x223DADA80](v16, -1, -1);
  }

  v17 = *(v0 + 2096);
  v18 = *(v0 + 2088);
  v19 = *(v0 + 1584);
  v20 = *(v0 + 1568);
  v36 = *(v0 + 2120);
  v37 = *(v0 + 1472);
  v38 = *(v0 + 1496);
  v39 = *(v0 + 1456);
  v40 = *(v0 + 1440);
  v21 = *(v0 + 1304);

  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for IDSError(0);
  sub_221EA49E8();
  swift_allocError();
  v24 = v23;
  sub_221EA4A40(v21, v23);
  *(v24 + *(v22 + 20)) = v18;
  swift_willThrow();
  v25 = v18;

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v37 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
LABEL_11:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_221F21084()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 1584);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1440);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v6 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F21250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 496))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F21298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 488) = 0;
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
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 496) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 496) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_221F21388@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_221F21450@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221F219AC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_221F21544()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6962616C69617661;
  }
}

uint64_t sub_221F2158C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
  if (v6 || (sub_221FB6B58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000221FC2990 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_221FB6B58();

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

uint64_t sub_221F2168C(uint64_t a1)
{
  v2 = sub_221F21B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221F216C8(uint64_t a1)
{
  v2 = sub_221F21B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221F21704(void *a1, __int16 a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC310, qword_221FBBA98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_221F21B90();
  sub_221FB6C78();
  v10[15] = a2;
  v10[14] = 0;
  sub_221F21C8C();
  sub_221FB6AE8();
  if (!v2)
  {
    v10[13] = HIBYTE(a2);
    v10[12] = 1;
    sub_221F21CE0();
    sub_221FB6AE8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_221F21894@<X0>(_WORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_221F219BC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_221F218DC(uint64_t a1, uint64_t a2)
{
  sub_221EBEE88();
  sub_221EBEEDC();
  return sub_221FB5E68();
}

uint64_t sub_221F21930(uint64_t a1, uint64_t a2)
{
  sub_221EBEE88();
  sub_221EBEEDC();
  return sub_221FB5E78();
}

unint64_t sub_221F219AC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_221F219BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC308, &qword_221FBBA90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_221F21B90();
  sub_221FB6C68();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10[14] = 0;
  sub_221F21BE4();
  sub_221FB6AD8();
  v7 = v10[15];
  v10[12] = 1;
  sub_221F21C38();
  sub_221FB6AD8();
  (*(v4 + 8))(v6, v3);
  v8 = v10[13];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7 | (v8 << 8);
}

unint64_t sub_221F21B90()
{
  result = qword_281307608[0];
  if (!qword_281307608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281307608);
  }

  return result;
}

unint64_t sub_221F21BE4()
{
  result = qword_2813079F0;
  if (!qword_2813079F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813079F0);
  }

  return result;
}

unint64_t sub_221F21C38()
{
  result = qword_281307DA8;
  if (!qword_281307DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307DA8);
  }

  return result;
}

unint64_t sub_221F21C8C()
{
  result = qword_281307A00;
  if (!qword_281307A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307A00);
  }

  return result;
}

unint64_t sub_221F21CE0()
{
  result = qword_281307DB8;
  if (!qword_281307DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndToEndEncryptionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndToEndEncryptionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSQueueBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSQueueBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AccountAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureCloudAccountInfo(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureCloudAccountInfo(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221F22294()
{
  result = qword_27CFEC318;
  if (!qword_27CFEC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC318);
  }

  return result;
}

unint64_t sub_221F222EC()
{
  result = qword_27CFEC320;
  if (!qword_27CFEC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC320);
  }

  return result;
}

unint64_t sub_221F22344()
{
  result = qword_27CFEC328;
  if (!qword_27CFEC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC328);
  }

  return result;
}

unint64_t sub_221F2239C()
{
  result = qword_2813075F8;
  if (!qword_2813075F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813075F8);
  }

  return result;
}

unint64_t sub_221F223F4()
{
  result = qword_281307600;
  if (!qword_281307600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307600);
  }

  return result;
}

unint64_t sub_221F22448()
{
  result = qword_2813079F8;
  if (!qword_2813079F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813079F8);
  }

  return result;
}

unint64_t sub_221F2249C()
{
  result = qword_281307DB0;
  if (!qword_281307DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307DB0);
  }

  return result;
}

uint64_t sub_221F2250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F2264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E96070;

  return v13(a1, a2, a3, a4, a5);
}