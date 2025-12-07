uint64_t sub_23AA8CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v8[6] = type metadata accessor for CredentialSession.Event(0);
  v8[7] = swift_task_alloc();
  v9 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[13] = v11;
  v12 = swift_task_alloc();
  v8[14] = v12;
  *v12 = v8;
  v12[1] = sub_23AA8CF10;

  return sub_23AA89548(v11);
}

uint64_t sub_23AA8CF10()
{

  return MEMORY[0x2822009F8](sub_23AA8D00C, 0, 0);
}

uint64_t sub_23AA8D00C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v12 = v0[11];
  v13 = v0[8];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];
  *v5 = v9;
  v5[1] = v8;
  v5[2] = v7;
  v5[3] = v6;
  swift_storeEnumTagMultiPayload();
  sub_23AA78838(v9, v8);
  sub_23AA78838(v7, v6);
  sub_23AA961FC();
  (*(v4 + 8))(v3, v13);
  (*(v2 + 8))(v1, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23AA8D2BC(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = sub_23AA95EFC();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = sub_23AA95EFC();
  v14 = v13;

  v4[6] = v12;
  v4[7] = v14;
  v15 = swift_task_alloc();
  v4[8] = v15;
  *v15 = v4;
  v15[1] = sub_23AA8D3CC;

  return sub_23AA8CA1C(v9, v11, v12, v14);
}

uint64_t sub_23AA8D3CC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v8 = *v0;

  sub_23AA7A2CC(v2, v1);
  sub_23AA7A2CC(v4, v3);

  v5[2](v5);
  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23AA8D580(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA8D620, 0, 0);
}

uint64_t sub_23AA8D620()
{
  v18 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = sub_23AA95F7C();
  sub_23AA7A0D4(v1, qword_27DFC29B0);

  v2 = sub_23AA95F5C();
  v3 = sub_23AA9626C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_23AA9636C();
    v9 = sub_23AA8F920(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_23AA75000, v2, v3, "[%s] rfFieldChanged(%{BOOL}d", v5, 0x12u);
    sub_23AA7A258(v6);
    MEMORY[0x23EE92E60](v6, -1, -1);
    MEMORY[0x23EE92E60](v5, -1, -1);
  }

  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = sub_23AA961EC();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;

  sub_23AA865C8(0, 0, v11, &unk_23AA97E98, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23AA8D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = type metadata accessor for CredentialSession.Event(0);
  *(v5 + 24) = swift_task_alloc();
  v6 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  v7 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 - 8);
  v8 = swift_task_alloc();
  *(v5 + 72) = v8;
  v9 = swift_task_alloc();
  *(v5 + 80) = v9;
  *v9 = v5;
  v9[1] = sub_23AA8DA64;

  return sub_23AA89548(v8);
}

uint64_t sub_23AA8DA64()
{

  return MEMORY[0x2822009F8](sub_23AA8DB60, 0, 0);
}

uint64_t sub_23AA8DB60()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  **(v0 + 24) = (*(v0 + 88) & 1) == 0;
  swift_storeEnumTagMultiPayload();
  sub_23AA961FC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23AA8DDDC(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_23AA8DE98;

  return sub_23AA8D580(a1);
}

uint64_t sub_23AA8DE98()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23AA8DFD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA8E070, 0, 0);
}

uint64_t sub_23AA8E070()
{
  v24 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);

  v3 = v1;
  v4 = sub_23AA95F5C();
  v5 = sub_23AA9626C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_23AA9636C();
    v12 = sub_23AA8F920(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_23AA75000, v4, v5, "[%s] sessionErrorEvent(%@", v7, 0x16u);
    sub_23AA92440(v8, &qword_27DFC19C8, &qword_23AA97DE0);
    MEMORY[0x23EE92E60](v8, -1, -1);
    sub_23AA7A258(v9);
    MEMORY[0x23EE92E60](v9, -1, -1);
    MEMORY[0x23EE92E60](v7, -1, -1);
  }

  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  v18 = sub_23AA961EC();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = v17;

  v20 = v17;
  sub_23AA865C8(0, 0, v16, &unk_23AA97E58, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_23AA8E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = type metadata accessor for CredentialSession.Event(0);
  v5[11] = swift_task_alloc();
  v6 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v8 = swift_task_alloc();
  v5[17] = v8;
  v9 = swift_task_alloc();
  v5[18] = v9;
  *v9 = v5;
  v9[1] = sub_23AA8E510;

  return sub_23AA89548(v8);
}

uint64_t sub_23AA8E510()
{

  return MEMORY[0x2822009F8](sub_23AA8E60C, 0, 0);
}

uint64_t sub_23AA8E60C(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 72);
  swift_willThrow();
  *(v1 + 40) = v2;
  v3 = v2;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v6 = *(v1 + 72);
    v7 = sub_23AA95F7C();
    sub_23AA7A0D4(v7, qword_27DFC29B0);
    v8 = v6;
    v9 = sub_23AA95F5C();
    v10 = sub_23AA9627C();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v1 + 128);
    v12 = *(v1 + 136);
    v14 = *(v1 + 120);
    if (v11)
    {
      v28 = *(v1 + 136);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_23AA9639C();
      v19 = sub_23AA8F920(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_23AA75000, v9, v10, "Unknown error: %s", v15, 0xCu);
      sub_23AA7A258(v16);
      MEMORY[0x23EE92E60](v16, -1, -1);
      MEMORY[0x23EE92E60](v15, -1, -1);

      (*(v13 + 8))(v28, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    goto LABEL_12;
  }

  v4 = *(v1 + 48);
  if (v4 != 17)
  {
    if (v4 == 16)
    {
      v5 = *(v1 + 64);

      return MEMORY[0x2822009F8](sub_23AA8E930, v5, 0);
    }

    goto LABEL_7;
  }

  v22 = *(v1 + 128);
  v21 = *(v1 + 136);
  v24 = *(v1 + 112);
  v23 = *(v1 + 120);
  v25 = *(v1 + 96);
  v26 = *(v1 + 104);
  swift_storeEnumTagMultiPayload();
  sub_23AA961FC();
  (*(v26 + 8))(v24, v25);
  (*(v22 + 8))(v21, v23);

LABEL_12:

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_23AA8E930()
{
  sub_23AA880E4();

  return MEMORY[0x2822009F8](sub_23AA8E998, 0, 0);
}

uint64_t sub_23AA8E998()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23AA8EBBC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23AA8EC80;

  return sub_23AA8DFD4(v5);
}

uint64_t sub_23AA8EC80()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23AA8EDDC(void *a1)
{
  v2 = v1;
  v4 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v7 = sub_23AA95F7C();
  sub_23AA7A0D4(v7, qword_27DFC29B0);

  v8 = a1;
  v9 = sub_23AA95F5C();
  v10 = sub_23AA9626C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_23AA9636C();
    v16 = sub_23AA8F920(v14, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    if (a1)
    {
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v11 + 14) = v18;
    *v12 = v19;
    _os_log_impl(&dword_23AA75000, v9, v10, "[%s] sessionEnded(%@)", v11, 0x16u);
    sub_23AA92440(v12, &qword_27DFC19C8, &qword_23AA97DE0);
    MEMORY[0x23EE92E60](v12, -1, -1);
    sub_23AA7A258(v13);
    MEMORY[0x23EE92E60](v13, -1, -1);
    MEMORY[0x23EE92E60](v11, -1, -1);
  }

  v20 = sub_23AA961EC();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v2;

  sub_23AA865C8(0, 0, v6, &unk_23AA97DD8, v21);
}

uint64_t sub_23AA8F16C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23AA8F264;

  return v6(a1);
}

uint64_t sub_23AA8F264()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23AA8F35C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23AA7A354;

  return v6();
}

uint64_t sub_23AA8F444(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23AA7A354;

  return v7();
}

uint64_t sub_23AA8F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23AA912F8(a3, v23 - v10, &qword_27DFC18B8, &qword_23AA98090);
  v12 = sub_23AA961EC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23AA92440(v11, &qword_27DFC18B8, &qword_23AA98090);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23AA961DC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23AA961CC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23AA9617C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);

    return v21;
  }

LABEL_8:
  sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_23AA8F828(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23AA92740;

  return v6(a1);
}

unint64_t sub_23AA8F920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23AA8F9EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23AA923E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23AA7A258(v11);
  return v7;
}

unint64_t sub_23AA8F9EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23AA8FAF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23AA962FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23AA8FAF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_23AA8FB44(a1, a2);
  sub_23AA8FC74(&unk_284DAB688);
  return v3;
}

void *sub_23AA8FB44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23AA8FD60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23AA962FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23AA9618C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23AA8FD60(v10, 0);
        result = sub_23AA962DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23AA8FC74(uint64_t result)
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

  result = sub_23AA8FDD4(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_23AA8FD60(uint64_t a1, uint64_t a2)
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

  sub_23AA76CEC(&qword_27DFC19E8, &qword_23AA97F60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23AA8FDD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_23AA76CEC(&qword_27DFC19E8, &qword_23AA97F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23AA8FECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA8FF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialSession.Credential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AA8FF8C(uint64_t a1, void *a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = a1;
  v3[1] = a2;
  v4 = a2;

  return swift_continuation_throwingResume();
}

char *sub_23AA8FFE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23AA90000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23AA90000(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_23AA76CEC(&qword_27DFC19D8, &qword_23AA97F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23AA9010C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_23AA90200;

  return v5(v2 + 32);
}

uint64_t sub_23AA90200()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s23SecureElementCredential0C7SessionC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for CredentialSession.Credential(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = type metadata accessor for CredentialSession.State(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v37 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v37 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v37 - v27;
  sub_23AA9250C(a1, &v37 - v27, type metadata accessor for CredentialSession.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v31 = type metadata accessor for CredentialSession.State;
    if (EnumCaseMultiPayload == 2)
    {
      sub_23AA9250C(v38, v26, type metadata accessor for CredentialSession.State);
      v32 = swift_getEnumCaseMultiPayload() == 2;
      v33 = v26;
    }

    else
    {
      sub_23AA9250C(v38, v17, type metadata accessor for CredentialSession.State);
      v32 = swift_getEnumCaseMultiPayload() == 3;
      v33 = v17;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23AA8FF0C(v28, v8);
    sub_23AA9250C(v38, v20, type metadata accessor for CredentialSession.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23AA92574(v8, type metadata accessor for CredentialSession.Credential);
      v30 = v20;
      goto LABEL_11;
    }

    v34 = v37;
    sub_23AA8FF0C(v20, v37);
    v32 = sub_23AA95F2C();
    sub_23AA92574(v34, type metadata accessor for CredentialSession.Credential);
    v33 = v8;
    v35 = type metadata accessor for CredentialSession.Credential;
LABEL_14:
    sub_23AA92574(v33, v35);
    return v32 & 1;
  }

  sub_23AA8FF0C(v28, v13);
  sub_23AA9250C(v38, v23, type metadata accessor for CredentialSession.State);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23AA8FF0C(v23, v11);
    v32 = sub_23AA95F2C();
    v31 = type metadata accessor for CredentialSession.Credential;
    sub_23AA92574(v11, type metadata accessor for CredentialSession.Credential);
    v33 = v13;
LABEL_13:
    v35 = v31;
    goto LABEL_14;
  }

  sub_23AA92574(v13, type metadata accessor for CredentialSession.Credential);
  v30 = v23;
LABEL_11:
  sub_23AA92574(v30, type metadata accessor for CredentialSession.State);
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_23AA90720(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23AA76CEC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_23AA9078C()
{
  result = qword_27DFC1960;
  if (!qword_27DFC1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1960);
  }

  return result;
}

unint64_t sub_23AA907E4()
{
  result = qword_27DFC1968;
  if (!qword_27DFC1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1968);
  }

  return result;
}

void sub_23AA90864(uint64_t a1)
{
  sub_23AA90D94(319, &qword_27DFC1980, &qword_27DFC1928, &qword_23AA978D8);
  if (v1 <= 0x3F)
  {
    sub_23AA90D94(319, &qword_27DFC1988, &qword_27DFC1920, &qword_23AA978D0);
    if (v2 <= 0x3F)
    {
      sub_23AA95F4C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CredentialSession.invalidate()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23AA77CC8;

  return v4();
}

uint64_t dispatch thunk of CredentialSession.state.getter(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23AA7A354;

  return v6(a1);
}

uint64_t dispatch thunk of CredentialSession.eventStream.getter(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23AA77CC8;

  return v6(a1);
}

uint64_t sub_23AA90D4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_23AA90D94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23AA90D4C(a3, a4);
    v5 = sub_23AA962BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23AA90DE8(uint64_t a1)
{
  sub_23AA90E48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_23AA90E48()
{
  if (!qword_27DFC19A0)
  {
    v0 = type metadata accessor for CredentialSession.Credential(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27DFC19A0);
    }
  }
}

uint64_t sub_23AA90F08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23AA90F40(uint64_t a1)
{
  sub_23AA90FD0();
  if (v1 <= 0x3F)
  {
    sub_23AA90E48();
    if (v2 <= 0x3F)
    {
      sub_23AA91000();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_23AA90FD0()
{
  result = qword_27DFC19B8;
  if (!qword_27DFC19B8)
  {
    result = &type metadata for CredentialSession.ErrorCode;
    atomic_store(&type metadata for CredentialSession.ErrorCode, &qword_27DFC19B8);
  }

  return result;
}

ValueMetadata *sub_23AA91000()
{
  result = qword_27DFC19C0;
  if (!qword_27DFC19C0)
  {
    result = &type metadata for CredentialSession.NFCFieldInformation;
    atomic_store(&type metadata for CredentialSession.NFCFieldInformation, &qword_27DFC19C0);
  }

  return result;
}

uint64_t sub_23AA91040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23AA91094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CredentialSession.ErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialSession.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23AA91244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA8F0F0(a1, v4, v5, v6);
}

uint64_t sub_23AA912F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23AA76CEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23AA91360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AA7A354;

  return sub_23AA8F16C(a1, v4);
}

uint64_t sub_23AA91418()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8EBBC(v2, v3, v4);
}

uint64_t sub_23AA914CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8F35C(v2, v3, v4);
}

uint64_t sub_23AA9158C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA8F444(a1, v4, v5, v6);
}

uint64_t sub_23AA91658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AA7A354;

  return sub_23AA8F828(a1, v4);
}

uint64_t sub_23AA91728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8E370(a1, v4, v5, v7, v6);
}

uint64_t sub_23AA917E8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AA91828()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8DDDC(v2, v4, v3);
}

uint64_t sub_23AA918E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8D8C4(a1, v4, v5, v6, v7);
}

uint64_t sub_23AA919AC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23AA919FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23AA7A354;

  return sub_23AA8D2BC(v2, v3, v5, v4);
}

uint64_t sub_23AA91ABC()
{
  swift_unknownObjectRelease();

  sub_23AA7A2CC(*(v0 + 40), *(v0 + 48));
  sub_23AA7A2CC(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA91B0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23AA7A354;

  return sub_23AA8CD6C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23AA91BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8C7E4(v2, v3, v4);
}

uint64_t sub_23AA91CB8(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_23AA91D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8C5BC(a1, v4, v5, v7, v6);
}

uint64_t sub_23AA91DD4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AA91E1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8BF04(v2, v3, v4);
}

uint64_t sub_23AA91ED0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23AA91F10()
{
  *(v1 + 16) = v0;
  sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA91FAC, v0, 0);
}

uint64_t sub_23AA91FAC()
{
  v17 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = sub_23AA95F7C();
  sub_23AA7A0D4(v1, qword_27DFC29B0);

  v2 = sub_23AA95F5C();
  v3 = sub_23AA9626C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_23AA9636C();
    v8 = sub_23AA8F920(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23AA75000, v2, v3, "Presentment Intent assertion for [%s] has timed out", v4, 0xCu);
    sub_23AA7A258(v5);
    MEMORY[0x23EE92E60](v5, -1, -1);
    MEMORY[0x23EE92E60](v4, -1, -1);
  }

  v9 = v0[2];
  v10 = v0[3];
  *(v9 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion) = 0;

  v11 = sub_23AA961EC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = sub_23AA92280(&qword_27DFC19E0, type metadata accessor for CredentialSession, &protocol conformance descriptor for CredentialSession);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v9;
  swift_retain_n();
  sub_23AA865C8(0, 0, v10, &unk_23AA97F50, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_23AA92280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23AA922D0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23AA9231C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA8B9E4(a1, v4, v5, v6);
}

uint64_t sub_23AA923E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23AA92440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23AA76CEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_23AA924A8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23AA9250C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23AA92574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23AA925D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23AA9260C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AA7A354;

  return sub_23AA9010C(a1, v4);
}

uint64_t sub_23AA92790()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23AA92844;
  v2 = *(v0 + 16);

  return sub_23AA85DB0(v2);
}

uint64_t sub_23AA92844(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23AA92944(uint64_t a1, uint64_t a2)
{
  v2[43] = a1;
  v2[44] = a2;
  sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8);
  v2[45] = swift_task_alloc();
  v4 = type metadata accessor for CredentialSession.Credential(0);
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA92A40, a2, 0);
}

uint64_t sub_23AA92A40()
{
  v1 = *(v0 + 352);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA92AC4, 0, 0);
}

uint64_t sub_23AA92AC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_23AA92E48;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v13 = swift_allocError();
    *v14 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v15 = v13;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, (v1 + 16));
  v6 = swift_allocObject();
  v7 = *(v1 + 9);
  *(v6 + 16) = *(v1 + 8);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 10);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA94954;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DACCD8;
  v8 = _Block_copy(v1 + 22);
  swift_unknownObjectRetain();

  v9 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 256) = 0;
    goto LABEL_7;
  }

  v10 = *(v5 + 256);
  if (!v10)
  {
LABEL_7:
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v1[32] = sub_23AA94960;
  v1[33] = v11;
  v1[28] = MEMORY[0x277D85DD0];
  v1[29] = 1107296256;
  v1[30] = sub_23AA93358;
  v1[31] = &unk_284DACD28;
  v12 = _Block_copy((v5 + 144));
  swift_unknownObjectRetain();

  [v10 listCredentialUUIDAndNamesWithReply_];
  _Block_release(v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA92E48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 392) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA931B0;
    v5 = 0;
  }

  else
  {
    v6 = v2[44];
    v2[50] = v2[41];
    sub_23AA7A178((v2 + 10));
    v4 = sub_23AA92F84;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23AA92F84()
{
  v1 = v0[50];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[50]; v2; i = v0[50])
  {
    v4 = 0;
    v5 = v0[47];
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = v1 & 0xC000000000000001;
    v6 = i + 32;
    v1 = v5 + 48;
    v7 = MEMORY[0x277D84F90];
    while (v19)
    {
      v8 = MEMORY[0x23EE92830](v4, v0[50]);
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v11 = v0[45];
      v10 = v0[46];
      sub_23AA7B408(v8, v11);
      if ((*v1)(v11, 1, v10) == 1)
      {
        sub_23AA945A0(v0[45]);
      }

      else
      {
        sub_23AA8FF0C(v0[45], v0[48]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_23AA94734(0, v7[2] + 1, 1, v7);
        }

        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          v7 = sub_23AA94734((v12 > 1), v13 + 1, 1, v7);
        }

        v14 = v0[48];
        v7[2] = v13 + 1;
        sub_23AA8FF0C(v14, v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
      }

      ++v4;
      if (v9 == v2)
      {
        goto LABEL_23;
      }
    }

    if (v4 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v6 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_23AA9631C();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:
  v15 = v0[43];

  *v15 = v7;

  v16 = v0[1];

  return v16();
}

uint64_t sub_23AA931B0()
{
  v1 = *(v0 + 352);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA9321C, v1, 0);
}

uint64_t sub_23AA9321C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23AA9328C(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    **(*(a3 + 64) + 40) = result;

    return swift_continuation_throwingResume();
  }

  else if (a2)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23AA93358(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_23AA9606C();
    v4 = sub_23AA9619C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t CredentialSession.provisionCredential(configurationUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23AA93414, v4, 0);
}

uint64_t sub_23AA93414()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = swift_task_alloc();
    v0[7] = v6;
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = v2;
    v6[5] = v1;
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_23AA93584;
    v8 = v0[2];

    return sub_23AA78168(v8, &unk_23AA97FF8);
  }

  else
  {
    sub_23AA76B00();
    swift_allocError();
    *v10 = 20;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23AA93584()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_23AA936C0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_23AA936C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23AA93724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA937CC, a2, 0);
}

uint64_t sub_23AA937CC()
{
  v1 = *(v0 + 192);
  v5 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_beginAccess();
  sub_23AA7A10C(v2 + 112, v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_23AA9387C, 0, 0);
}

uint64_t sub_23AA9387C()
{
  v1 = *(v0 + 208);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_23AA93934;
  v2 = swift_continuation_init();
  sub_23AA8638C(v2, (v0 + 80), sub_23AA94594, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA93934(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 216) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA93BB0;
    v5 = 0;
  }

  else
  {
    v6 = v2[21];
    v2[28] = v2[19];

    sub_23AA7A178((v2 + 10));
    v4 = sub_23AA93A78;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23AA93A78()
{
  v1 = *(v0 + 200);
  sub_23AA7B408(*(v0 + 224), v1);
  v2 = type metadata accessor for CredentialSession.Credential(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  if (v3 == 1)
  {
    sub_23AA945A0(*(v0 + 200));
    sub_23AA76B00();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();
  }

  else
  {
    v8 = *(v0 + 160);

    sub_23AA8FF0C(v5, v8);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23AA93BB0()
{
  v1 = *(v0 + 168);

  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA93C24, v1, 0);
}

uint64_t sub_23AA93C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23AA93C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA93724(a1, v4, v5, v7, v6);
}

void sub_23AA93D48(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (*a1)
  {
    swift_unknownObjectRetain();
    v7 = sub_23AA95F1C();
    v8 = sub_23AA9615C();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v14[4] = sub_23AA94608;
    v14[5] = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_23AA7DD28;
    v14[3] = &unk_284DACC88;
    v10 = _Block_copy(v14);

    [v6 createCredentialWithServerConfigUUID:v7 friendlyName:v8 reply:v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v11 = swift_allocError();
    *v12 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v13 = v11;

    swift_continuation_throwingResumeWithError();
  }
}

void *sub_23AA93EF4(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    **(*(a3 + 64) + 40) = result;
    v3 = result;

    return swift_continuation_throwingResume();
  }

  else if (a2)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v5 = a2;
    v6 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CredentialSession.deleteCredential(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23AA93FE0, v1, 0);
}

uint64_t sub_23AA93FE0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_23AA940B4;

  return sub_23AA77F3C(sub_23AA77F3C, dword_23AA98010);
}

uint64_t sub_23AA940B4()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23AA77874;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23AA795B4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23AA941D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return MEMORY[0x2822009F8](sub_23AA941F4, a2, 0);
}

uint64_t sub_23AA941F4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, (v0 + 10));
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_23AA94288, 0, 0);
}

uint64_t sub_23AA94288()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23AA77A38;
  v2 = swift_continuation_init();
  sub_23AA86364(v2, (v0 + 80), sub_23AA94564, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA94338(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA77CC8;

  return sub_23AA941D8(a1, v5, v4);
}

void sub_23AA943E4(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    swift_unknownObjectRetain();
    v4 = sub_23AA95F1C();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v10[4] = sub_23AA827E8;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_23AA76C18;
    v10[3] = &unk_284DACC38;
    v6 = _Block_copy(v10);

    [v3 deleteCredential:v4 reply:v6];
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v7 = swift_allocError();
    *v8 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v9 = v7;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA9457C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA945A0(uint64_t a1)
{
  v2 = sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_23AA94610(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_23AA76CEC(&qword_27DFC1A00, &qword_23AA98028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23AA94734(void *result, int64_t a2, char a3, void *a4)
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

  sub_23AA76CEC(&qword_27DFC19F8, &qword_23AA98020);
  v10 = *(type metadata accessor for CredentialSession.Credential(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for CredentialSession.Credential(0) - 8);
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

uint64_t sub_23AA9490C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
    sub_23AA7A258((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA94988()
{
  type metadata accessor for SECClient();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  result = swift_unknownObjectWeakInit();
  qword_27DFC29D8 = v0;
  return result;
}

uint64_t static SECClient.serviceName.getter()
{
  swift_beginAccess();
  v0 = qword_27DFC1A08;

  return v0;
}

uint64_t static SECClient.serviceName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27DFC1A08 = a1;
  off_27DFC1A10 = a2;
}

uint64_t sub_23AA94AE0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27DFC1A08 = v2;
  off_27DFC1A10 = v1;
}

void sub_23AA94B44()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_27DFC1770 != -1)
    {
      swift_once();
    }

    v2 = sub_23AA95F7C();
    sub_23AA7A0D4(v2, qword_27DFC1A18);
    v3 = sub_23AA95F5C();
    v4 = sub_23AA9625C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23AA75000, v3, v4, "SEC XPC: Already connected", v5, 2u);
      MEMORY[0x23EE92E60](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v8 = sub_23AA95F7C();
    sub_23AA7A0D4(v8, qword_27DFC29B0);
    v9 = sub_23AA95F5C();
    v10 = sub_23AA9625C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23AA75000, v9, v10, "SEC XPC: Starting new connection", v11, 2u);
      MEMORY[0x23EE92E60](v11, -1, -1);
    }

    swift_beginAccess();
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);

    v13 = sub_23AA9615C();

    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v15 = *(v1 + 16);
    *(v1 + 16) = v14;
    v16 = v14;

    if (v16)
    {
      v17 = objc_opt_self();
      v18 = [v17 interfaceWithProtocol_];
      v19 = sub_23AA76E20();
      v20 = sub_23AA77218();
      [v18 setInterface:v20 forSelector:sel_queueSessionWithCallbackProxy_reply_ argumentIndex:0 ofReply:0];

      [v18 setInterface:v19 forSelector:sel_queueSessionWithCallbackProxy_reply_ argumentIndex:0 ofReply:1];
      v21 = [v17 interfaceWithProtocol_];
      [v18 setInterface:v21 forSelector:sel_acquirePresentmentIntentAssertionWithReply_ argumentIndex:0 ofReply:1];

      [v16 setRemoteObjectInterface_];
      v22 = sub_23AA77218();
      [v16 setExportedInterface_];

      [v16 setExportedObject_];
      v36 = sub_23AA95C4C;
      v37 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_23AA880A0;
      v35 = &unk_284DACDF0;
      v23 = _Block_copy(&aBlock);

      [v16 setInterruptionHandler_];
      _Block_release(v23);
      v36 = sub_23AA95C84;
      v37 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_23AA880A0;
      v35 = &unk_284DACE18;
      v24 = _Block_copy(&aBlock);

      [v16 setInvalidationHandler_];
      _Block_release(v24);
      [v16 activate];
      if (qword_27DFC1770 != -1)
      {
        swift_once();
      }

      sub_23AA7A0D4(v8, qword_27DFC1A18);
      v25 = sub_23AA95F5C();
      v26 = sub_23AA9625C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23AA75000, v25, v26, "SEC XPC: Connection activated", v27, 2u);
        MEMORY[0x23EE92E60](v27, -1, -1);
      }
    }

    else
    {
      if (qword_27DFC1770 != -1)
      {
        swift_once();
      }

      sub_23AA7A0D4(v8, qword_27DFC1A18);
      v28 = sub_23AA95F5C();
      v29 = sub_23AA9628C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_23AA75000, v28, v29, "Unable to start a new xpc connection", v30, 2u);
        MEMORY[0x23EE92E60](v30, -1, -1);
      }

      sub_23AA76B00();
      swift_allocError();
      *v31 = 21;
      swift_willThrow();
    }
  }
}

uint64_t sub_23AA95194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_23AA951B4, 0, 0);
}

uint64_t sub_23AA951B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_23AA95298;

    return sub_23AA8B7DC(1);
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23AA95298()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23AA95E88, 0, 0);
}

uint64_t sub_23AA953B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_23AA961EC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;

  sub_23AA868C8(0, 0, v7, a3, v9);
}

uint64_t sub_23AA954B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_23AA954D0, 0, 0);
}

uint64_t sub_23AA954D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_23AA955B4;

    return sub_23AA8B7DC(0);
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23AA955B4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23AA956CC, 0, 0);
}

uint64_t SECClient.__deallocating_deinit()
{
  sub_23AA9571C(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23AA95784@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27DFC1A10;
  *a1 = qword_27DFC1A08;
  a1[1] = v2;
}

uint64_t sub_23AA95814()
{
  v0 = sub_23AA95F7C();
  sub_23AA924A8(v0, qword_27DFC1A18);
  sub_23AA7A0D4(v0, qword_27DFC1A18);
  return sub_23AA95F6C();
}

uint64_t sub_23AA95894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23AA94B44();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v11[4] = sub_23AA8296C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23AA76C84;
  v11[3] = &unk_284DACDC8;
  v8 = _Block_copy(v11);

  v9 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1788, &qword_23AA97630);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
  }

  sub_23AA7DA8C(&v12, a1, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_23AA95A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23AA94B44();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v11[4] = sub_23AA8296C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23AA76C84;
  v11[3] = &unk_284DACD78;
  v8 = _Block_copy(v11);

  v9 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1788, &qword_23AA97630);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
  }

  sub_23AA8A6A0(&v12, a1, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_23AA95C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA95CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA954B0(a1, v4, v5, v6);
}

uint64_t sub_23AA95D74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AA95DB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA95194(a1, v4, v5, v6);
}