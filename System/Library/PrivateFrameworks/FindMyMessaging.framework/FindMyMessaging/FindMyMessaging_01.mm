uint64_t sub_24AEE5A6C()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281392F00);
  v1 = __swift_project_value_buffer(v0, qword_281392F00);
  if (qword_281392F38 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281393410);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AEE5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InternetMessaging(255, *(v4 + 80), *(v4 + 88), a4);
  swift_getMetatypeMetadata();
  return sub_24AF353BC();
}

uint64_t InternetMessaging.serviceName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_24AEE5BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5BBC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5BD0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5BF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5C0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5C20(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEE5C34()
{
  sub_24AF3503C();
  if (!v30)
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
LABEL_13:
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24AF3529C();
    __swift_project_value_buffer(v8, qword_281392F00);
    v9 = sub_24AF3527C();
    v10 = sub_24AF3571C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AECF000, v9, v10, "Missing com.apple.private.ids.registration entitlement!", v11, 2u);
      MEMORY[0x24C236490](v11, -1, -1);
    }

    v26 = 0;
    v25 = 78;
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    goto LABEL_13;
  }

  sub_24AF3503C();
  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v12 = sub_24AF3529C();
    __swift_project_value_buffer(v12, qword_281392F00);
    v13 = sub_24AF3527C();
    v14 = sub_24AF3571C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AECF000, v13, v14, "Missing com.apple.private.ids.remotecredentials entitlement!", v15, 2u);
      MEMORY[0x24C236490](v15, -1, -1);
    }

    v26 = 0;
    v25 = 84;
    goto LABEL_35;
  }

  sub_24AF3503C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    goto LABEL_24;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v1);
  v25 = &v28;
  if ((sub_24AF13060(sub_24AEF9D80, v24, v27) & 1) == 0)
  {

LABEL_24:
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24AF3529C();
    __swift_project_value_buffer(v16, qword_281392F00);
    v17 = sub_24AF3527C();
    v18 = sub_24AF3571C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24AECF000, v17, v18, "Missing com.apple.private.ids.messaging entitlement!", v19, 2u);
      MEMORY[0x24C236490](v19, -1, -1);
    }

    v26 = 0;
    v25 = 90;
    goto LABEL_35;
  }

  sub_24AF3503C();
  if (v30)
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v27;
      v28 = v2;
      v29 = v3;
      MEMORY[0x28223BE20](v4);
      v25 = &v28;
      v6 = sub_24AF13060(sub_24AEF9DD4, v24, v5);

      if (v6)
      {
      }
    }
  }

  else
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
  }

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v20 = sub_24AF3529C();
  __swift_project_value_buffer(v20, qword_281392F00);
  v21 = sub_24AF3527C();
  v22 = sub_24AF3571C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24AECF000, v21, v22, "Missing com.apple.private.ids.messaging.urgent-priority entitlement!", v23, 2u);
    MEMORY[0x24C236490](v23, -1, -1);
  }

  v26 = 0;
  v25 = 96;
LABEL_35:
  result = sub_24AF35A3C();
  __break(1u);
  return result;
}

uint64_t InternetMessaging.__allocating_init(serviceName:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_24AEE6370;

  return InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(a1, a2, (v3 + 16), a3);
}

uint64_t sub_24AEE6370(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a4;
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AEE1D70;

  return InternetMessaging.init(serviceName:linkSelectionStrategy:crossAccount:)(a1, a2, a3, v5);
}

uint64_t InternetMessaging.init(serviceName:linkSelectionStrategy:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 16) = a1;
  *(v5 + 40) = *v4;
  v6 = *a3;
  *(v5 + 48) = *v4;
  *(v5 + 56) = v6;
  *(v5 + 81) = *(a3 + 8);
  return MEMORY[0x2822009F8](sub_24AEE65C0, 0, 0);
}

uint64_t sub_24AEE65C0()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 80);
  v7 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v5 + 160) = 0;
  *(v5 + 168) = sub_24AEE263C(MEMORY[0x277D84F90]);
  v8 = sub_24AF3521C();
  v9 = *(v2 + 80);
  *(v0 + 64) = v9;
  v10 = *(v2 + 88);
  *(v0 + 72) = v10;
  type metadata accessor for Message(255, v9, v10, v11);
  type metadata accessor for MessageContext(255);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  v12 = sub_24AF3501C();
  swift_getTupleTypeMetadata2();
  v13 = sub_24AF354CC();
  v14 = sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v15 = sub_24AEF6664(v13, v8, v12, v14);

  *(v5 + 184) = 0u;
  v5 += 184;
  *(v5 - 8) = v15;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 - 72) = v7;
  *(v5 - 64) = v4;
  *(v5 - 56) = v6;
  *(v5 - 40) = v3;
  *(v5 - 32) = v1;
  v16 = objc_allocWithZone(MEMORY[0x277D18778]);

  v17 = sub_24AF3539C();
  v18 = [v16 initWithService_];

  if (v18)
  {
    v22 = *(v0 + 32);

    *(v22 + 136) = v18;
    v19 = sub_24AEE67E8;
    v20 = v22;
    v21 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_24AEE67E8()
{
  v28 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 81);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for MessagingDelegateTrampoline();
  v26 = v4;
  v27 = v3;
  v8 = type metadata accessor for InternetMessaging(0, v1, v2, v7);

  v10 = sub_24AF31908(v9, &v26, v6, v8, &off_285E3DA90);
  v11 = *(v5 + 160);
  *(v5 + 160) = v10;

  sub_24AEE5C34();
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24AF3529C();
  __swift_project_value_buffer(v12, qword_281392F00);
  v13 = sub_24AF3527C();
  v14 = sub_24AF3572C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    v20 = sub_24AEE5B34(v16, v17, v18, v19);
    v22 = sub_24AEF599C(v20, v21, &v26);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_24AECF000, v13, v14, "%{public}s: created.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v15, -1, -1);
  }

  v23 = *(v0 + 8);
  v24 = *(v0 + 32);

  return v23(v24);
}

void sub_24AEE69D4()
{
  v1 = v0;
  v2 = sub_24AF352AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D18A20]) init];
  [v6 setWantsCrossAccountMessaging_];
  v7 = *(v1 + 136);
  v8 = *(v1 + 160);
  sub_24AED0EAC(0, &qword_281392DC0, 0x277D85C78);
  (*(v3 + 104))(v5, *MEMORY[0x277D851C8], v2);
  v9 = v6;
  v10 = v8;
  v11 = sub_24AF3576C();
  (*(v3 + 8))(v5, v2);
  [v7 addDelegate:v10 withDelegateProperties:v9 queue:v11];

  v12 = [v7 devices];
  if (v12)
  {
    v13 = v12;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v14 = sub_24AF3549C();

    v15 = *(v1 + 160);
    if (v15)
    {
      v16 = v15;
      v17 = sub_24AEE5870(v14);

      sub_24AF2A794(v7, v17);
    }
  }

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v18 = sub_24AF3529C();
  __swift_project_value_buffer(v18, qword_281392F00);
  v19 = sub_24AF3527C();
  v20 = sub_24AF3572C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136446210;
    v26 = sub_24AEE5B34(v22, v23, v24, v25);
    v28 = sub_24AEF599C(v26, v27, &v30);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_24AECF000, v19, v20, "%{public}s: started.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C236490](v22, -1, -1);
    MEMORY[0x24C236490](v21, -1, -1);
  }
}

void sub_24AEE6D34()
{
  v32 = *v0;
  swift_beginAccess();
  v1 = v0[21];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(v0[21] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_24AF3554C();
        sub_24AEF8F34(&qword_27EFC08F0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        v11 = swift_allocError();

        sub_24AF352DC();
        v34 = v11;
        sub_24AF34FFC();
      }

      while (v7);
      continue;
    }
  }

  swift_beginAccess();
  v0[21] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v12 = v0[22];
  sub_24AF3521C();
  type metadata accessor for Message(255, *(v32 + 80), *(v32 + 88), v13);
  type metadata accessor for MessageContext(255);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_26;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v12 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      do
      {
LABEL_19:
        v16 &= v16 - 1;
        sub_24AF3554C();
        sub_24AEF8F34(&qword_27EFC08F0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        v20 = swift_allocError();

        sub_24AF352DC();
        v33[0] = v20;
        sub_24AF34FFC();
      }

      while (v16);
      continue;
    }
  }

  swift_beginAccess();
  sub_24AF3532C();
  sub_24AF3531C();
  swift_endAccess();
  [v0[17] removeDelegate_];
  if (qword_281392EF8 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = sub_24AF3529C();
  __swift_project_value_buffer(v21, qword_281392F00);
  v22 = sub_24AF3527C();
  v23 = sub_24AF3572C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33[0] = v25;
    *v24 = 136446210;
    v29 = sub_24AEE5B34(v25, v26, v27, v28);
    v31 = sub_24AEF599C(v29, v30, v33);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_24AECF000, v22, v23, "%{public}s: stopped.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C236490](v25, -1, -1);
    MEMORY[0x24C236490](v24, -1, -1);
  }
}

void sub_24AEE7254(void *a1@<X8>)
{
  v3 = [*(v1 + 136) iCloudAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 loginID];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_24AF353AC();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    Destination.init(string:)(v10);
    v11 = v21;
    if (v22)
    {
      v17 = v20;
      v18 = v21;
      v19 = v22;
      sub_24AF11EE0(v14);

      v12 = v15;
      v13 = v16;
      *a1 = v14[0];
      a1[1] = v12;
      a1[2] = v13;
      return;
    }

    *a1 = v20;
    a1[1] = v11;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  a1[2] = 0;
}

void sub_24AEE7340(_OWORD *a3@<X8>)
{
  v5 = *(v3 + 136);
  v6 = sub_24AF3539C();
  v7 = [v5 deviceForFromID_];

  if (v7)
  {
    sub_24AF329AC(v7, &v28);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v18 = v28;
    v19 = v29;
    nullsub_1();
    v12 = v25;
    a3[6] = v24;
    a3[7] = v12;
    v13 = v27;
    a3[8] = v26;
    a3[9] = v13;
    v14 = v21;
    a3[2] = v20;
    a3[3] = v14;
    v15 = v23;
    a3[4] = v22;
    a3[5] = v15;
    v16 = v18;
    v17 = v19;
  }

  else
  {
    sub_24AEF6968(&v28);
    v8 = v35;
    a3[6] = v34;
    a3[7] = v8;
    v9 = v37;
    a3[8] = v36;
    a3[9] = v9;
    v10 = v31;
    a3[2] = v30;
    a3[3] = v10;
    v11 = v33;
    a3[4] = v32;
    a3[5] = v11;
    v16 = v28;
    v17 = v29;
  }

  *a3 = v16;
  a3[1] = v17;
}

void sub_24AEE7454(_OWORD *a1@<X8>)
{
  v2 = sub_24AEE7578();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    while (1)
    {
      v5 = *&v2[v4 + 16];
      v32 = *&v2[v4];
      v33 = v5;
      v6 = *&v2[v4 + 32];
      v7 = *&v2[v4 + 48];
      v8 = *&v2[v4 + 80];
      v36 = *&v2[v4 + 64];
      v37 = v8;
      v34 = v6;
      v35 = v7;
      v9 = *&v2[v4 + 96];
      v10 = *&v2[v4 + 112];
      v11 = *&v2[v4 + 144];
      v40 = *&v2[v4 + 128];
      v41 = v11;
      v38 = v9;
      v39 = v10;
      if (BYTE3(v40))
      {
        break;
      }

      v4 += 160;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_24AEF6984(&v32, &v22);

    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v22 = v32;
    v23 = v33;
    nullsub_1();
    v18 = v29;
    a1[6] = v28;
    a1[7] = v18;
    v19 = v31;
    a1[8] = v30;
    a1[9] = v19;
    v20 = v25;
    a1[2] = v24;
    a1[3] = v20;
    v21 = v27;
    a1[4] = v26;
    a1[5] = v21;
    v16 = v22;
    v17 = v23;
  }

  else
  {
LABEL_5:

    sub_24AEF6968(&v32);
    v12 = v39;
    a1[6] = v38;
    a1[7] = v12;
    v13 = v41;
    a1[8] = v40;
    a1[9] = v13;
    v14 = v35;
    a1[2] = v34;
    a1[3] = v14;
    v15 = v37;
    a1[4] = v36;
    a1[5] = v15;
    v16 = v32;
    v17 = v33;
  }

  *a1 = v16;
  a1[1] = v17;
}

char *sub_24AEE7578()
{
  v0 = sub_24AEE790C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:

    v5 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_13:
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v1 = v5 + 32 + 160 * v18;
        v20 = v18;
        while (1)
        {
          if (v20 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v21 = *(v1 + 16);
          v58 = *v1;
          v59 = v21;
          v22 = *(v1 + 32);
          v23 = *(v1 + 48);
          v24 = *(v1 + 80);
          v62 = *(v1 + 64);
          v63 = v24;
          v60 = v22;
          v61 = v23;
          v25 = *(v1 + 96);
          v26 = *(v1 + 112);
          v27 = *(v1 + 144);
          v66 = *(v1 + 128);
          v67 = v27;
          v64 = v25;
          v65 = v26;
          v18 = v20 + 1;
          memmove(&__dst, v1, 0xA0uLL);
          if (sub_24AEF69E0(&__dst) != 1)
          {
            break;
          }

          v1 += 160;
          ++v20;
          if (v17 == v18)
          {
            goto LABEL_29;
          }
        }

        v54 = v64;
        v55 = v65;
        v56 = v66;
        v57 = v67;
        v50 = v60;
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v48 = v58;
        v49 = v59;
        sub_24AEF6984(&v48, &v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24AEF543C(0, *(v19 + 2) + 1, 1, v19);
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        if (v29 >= v28 >> 1)
        {
          v19 = sub_24AEF543C((v28 > 1), v29 + 1, 1, v19);
        }

        v42 = v62;
        v43 = v63;
        v40 = v60;
        v41 = v61;
        v46 = v66;
        v47 = v67;
        v44 = v64;
        v45 = v65;
        v38 = v58;
        v39 = v59;
        *(v19 + 2) = v29 + 1;
        v30 = &v19[160 * v29];
        v31 = v39;
        *(v30 + 2) = v38;
        *(v30 + 3) = v31;
        v32 = v40;
        v33 = v41;
        v34 = v43;
        *(v30 + 6) = v42;
        *(v30 + 7) = v34;
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        v35 = v44;
        v36 = v45;
        v37 = v47;
        *(v30 + 10) = v46;
        *(v30 + 11) = v37;
        *(v30 + 8) = v35;
        *(v30 + 9) = v36;
      }

      while (v17 - 1 != v20);
      goto LABEL_29;
    }

LABEL_28:
    v19 = MEMORY[0x277D84F90];
LABEL_29:

    return v19;
  }

LABEL_26:
  v2 = sub_24AF3585C();
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  *&v38 = MEMORY[0x277D84F90];
  result = sub_24AEF6168(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v38;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x24C2359A0](v4, v1); ; i = *(v1 + 8 * v4 + 32))
    {
      sub_24AF329AC(i, &v58);
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v57 = v67;
      v50 = v60;
      v51 = v61;
      v52 = v62;
      v53 = v63;
      v48 = v58;
      v49 = v59;
      nullsub_1();
      v74 = v54;
      v75 = v55;
      v76 = v56;
      v77 = v57;
      v70 = v50;
      v71 = v51;
      v72 = v52;
      v73 = v53;
      __dst = v48;
      v69 = v49;
      *&v38 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24AEF6168((v7 > 1), v8 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v8 + 1;
      v9 = (v5 + 160 * v8);
      v10 = v69;
      v9[2] = __dst;
      v9[3] = v10;
      v11 = v70;
      v12 = v71;
      v13 = v73;
      v9[6] = v72;
      v9[7] = v13;
      v9[4] = v11;
      v9[5] = v12;
      v14 = v74;
      v15 = v75;
      v16 = v77;
      v9[10] = v76;
      v9[11] = v16;
      v9[8] = v14;
      v9[9] = v15;
      if (v2 - 1 == v4)
      {
        break;
      }

      ++v4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    v17 = *(v5 + 16);
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

id sub_24AEE790C()
{
  if (MEMORY[0x24C235020]())
  {
    return MEMORY[0x277D84F90];
  }

  result = [*(v0 + 136) devices];
  if (result)
  {
    v2 = result;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v3 = sub_24AF3549C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InternetMessaging.deinit()
{

  sub_24AED56FC(*(v0 + 184), *(v0 + 192));
  sub_24AED56FC(*(v0 + 200), *(v0 + 208));
  sub_24AED56FC(*(v0 + 216), *(v0 + 224));
  sub_24AED56FC(*(v0 + 232), *(v0 + 240));
  sub_24AED56FC(*(v0 + 248), *(v0 + 256));
  sub_24AED56FC(*(v0 + 264), *(v0 + 272));
  sub_24AED56FC(*(v0 + 280), *(v0 + 288));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t InternetMessaging.__deallocating_deinit()
{
  InternetMessaging.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t InternetMessaging.send(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *v3;
  v4[7] = type metadata accessor for MessagingOptions(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for Message(0, *(v5 + 80), *(v5 + 88), v6);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE7BCC, v3, 0);
}

uint64_t sub_24AEE7BCC()
{
  v102 = v0;
  v1 = *(v0[4] + *(v0[7] + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v100 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v100;
    v4 = *(v100 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v100 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v100;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = sub_24AEF69F8(v3);
  v0[14] = v11;

  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  v12 = sub_24AF3509C();
  v0[15] = v12;
  v0[16] = v13;
  v14 = v12;
  v15 = v13;
  v16 = v0[7];
  v17 = v0[4];

  v18 = *(v17 + *(v16 + 36));
  v19 = 0x6F707365722F7728;
  if (!*(v17 + *(v16 + 24)))
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (*(v17 + *(v16 + 24)))
  {
    v20 = 0xED0000202965736ELL;
  }

  v100 = v19;
  v101 = v20;
  if (v18)
  {
    v21 = 0xD000000000000017;
  }

  else
  {
    v21 = 0x6567617373656DLL;
  }

  if (v18)
  {
    v22 = 0x800000024AF36C70;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v21, v22);

  v29 = v101;
  v30 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v31 = 0;
    if (v30 != 2)
    {
      goto LABEL_25;
    }

    v33 = *(v14 + 16);
    v32 = *(v14 + 24);
    v31 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v15);
    goto LABEL_25;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    __break(1u);
    return MEMORY[0x28215EC68](v23, v24, v25, v26, v27, v28);
  }

  v31 = HIDWORD(v14) - v14;
LABEL_25:
  if ([objc_opt_self() checkMessageSize:v31 priority:300])
  {
    v97 = v100;
    v98 = v14;
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v34 = v0[13];
    v35 = v0[10];
    v36 = v0[11];
    v37 = v0[9];
    v39 = v0[3];
    v38 = v0[4];
    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_281392F00);
    v96 = *(v36 + 16);
    v96(v34, v39, v35);
    sub_24AEF8F7C(v38, v37, type metadata accessor for MessagingOptions);

    v41 = sub_24AF3527C();
    v42 = sub_24AF3572C();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[13];
    v99 = v15;
    if (v43)
    {
      v45 = v0[11];
      log = v41;
      v46 = v0[10];
      v91 = v0[12];
      v92 = v0[9];
      v94 = v42;
      v47 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v100 = v93;
      *v47 = 136316162;
      v51 = sub_24AEE5B34(v93, v48, v49, v50);
      v53 = sub_24AEF599C(v51, v52, &v100);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2082;
      v54 = sub_24AEF599C(v97, v29, &v100);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2082;
      v96(v91, v44, v46);
      v55 = *(v45 + 8);
      v55(v44, v46);
      v56 = Message.description.getter(v46);
      v58 = v57;
      v55(v91, v46);
      v59 = sub_24AEF599C(v56, v58, &v100);

      *(v47 + 24) = v59;
      *(v47 + 32) = 2080;
      v60 = sub_24AF3567C();
      v62 = sub_24AEF599C(v60, v61, &v100);

      *(v47 + 34) = v62;
      *(v47 + 42) = 2082;
      sub_24AF3521C();
      sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v63 = sub_24AF35C0C();
      v65 = v64;
      sub_24AEF8FE4(v92, type metadata accessor for MessagingOptions);
      v66 = sub_24AEF599C(v63, v65, &v100);

      *(v47 + 44) = v66;
      _os_log_impl(&dword_24AECF000, log, v94, "%s: Sending %{public}s: %{public}s to %s with identifier: %{public}s", v47, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v93, -1, -1);
      MEMORY[0x24C236490](v47, -1, -1);
    }

    else
    {
      v70 = v0[9];
      (*(v0[11] + 8))(v44, v0[10]);

      sub_24AEF8FE4(v70, type metadata accessor for MessagingOptions);
    }

    sub_24AEF8F7C(v0[4], v0[8], type metadata accessor for MessagingOptions);
    v71 = sub_24AF3527C();
    v72 = sub_24AF3572C();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v0[8];
    if (v73)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v100 = v76;
      *v75 = 136446466;
      v80 = sub_24AEE5B34(v76, v77, v78, v79);
      v82 = sub_24AEF599C(v80, v81, &v100);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2080;
      MessagingOptions.dictionaryValue.getter();
      v83 = sub_24AF3530C();
      v85 = v84;

      sub_24AEF8FE4(v74, type metadata accessor for MessagingOptions);
      v86 = sub_24AEF599C(v83, v85, &v100);

      *(v75 + 14) = v86;
      _os_log_impl(&dword_24AECF000, v71, v72, "%{public}s: IDSSendMessageOptions: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v76, -1, -1);
      MEMORY[0x24C236490](v75, -1, -1);
    }

    else
    {

      sub_24AEF8FE4(v74, type metadata accessor for MessagingOptions);
    }

    v87 = v0[5];
    v88 = swift_task_alloc();
    v0[17] = v88;
    v89 = *(v0 + 3);
    *(v88 + 16) = v87;
    *(v88 + 24) = v89;
    *(v88 + 40) = v98;
    *(v88 + 48) = v99;
    *(v88 + 56) = v11;
    v90 = swift_task_alloc();
    v0[18] = v90;
    v28 = sub_24AF3521C();
    *v90 = v0;
    v90[1] = sub_24AEE8530;
    v23 = v0[2];
    v26 = sub_24AEF6A90;
    v24 = 0xD00000000000001DLL;
    v25 = 0x800000024AF36C50;
    v27 = v88;

    return MEMORY[0x28215EC68](v23, v24, v25, v26, v27, v28);
  }

  sub_24AED9680();
  swift_allocError();
  *v67 = 2;
  swift_willThrow();
  sub_24AED6198(v14, v15);

  v68 = v0[1];

  return v68();
}

uint64_t sub_24AEE8530()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_24AEE86F8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24AEE8664;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEE8664()
{
  sub_24AED6198(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AEE86F8()
{
  sub_24AED6198(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AEE879C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a1;
  v40 = a5;
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions(0);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v10 + 80);
  v37 = *(v10 + 88);
  v14 = type metadata accessor for Message(0, v38, v37, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v35 = &v33 - v20;
  v22 = sub_24AF3557C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v15 + 16))(v18, a3, v14);
  sub_24AEF8F7C(a4, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v23 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v24 = (v16 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v37;
  *(v27 + 4) = v38;
  *(v27 + 5) = v28;
  *(v27 + 6) = a2;
  (*(v15 + 32))(&v27[v23], v18, v14);
  sub_24AEF9044(v34, &v27[v24], type metadata accessor for MessagingOptions);
  v29 = &v27[v25];
  v31 = v40;
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  *&v27[v26] = v42;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;

  sub_24AEE5154(v31, v30);

  sub_24AF08F10(0, 0, v35, &unk_24AF38198, v27);
}

uint64_t sub_24AEE8AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEE8BD0(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_24AEE8BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v7[16] = *v6;
  v8 = *v6;
  v9 = sub_24AF3521C();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = *(v8 + 80);
  v7[20] = v10;
  v11 = *(v8 + 88);
  v7[21] = v11;
  v13 = type metadata accessor for Message(0, v10, v11, v12);
  v7[22] = v13;
  v14 = *(v13 - 8);
  v7[23] = v14;
  v7[24] = *(v14 + 64);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v15 = type metadata accessor for MessagingOptions(0);
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v7[29] = *(v16 + 64);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE8DD8, v6, 0);
}

uint64_t sub_24AEE8DD8()
{
  v1 = *(v0 + 248);
  v16 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v17 = *(v0 + 192);
  v18 = *(v0 + 232);
  v4 = *(v0 + 176);
  v5 = *(v0 + 120);
  v23 = *(v0 + 128);
  v6 = *(v0 + 112);
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v20 = *(v0 + 88);
  v7 = *(v0 + 80);
  v15 = *(v0 + 72);
  v19 = *(v0 + 160);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v5 + 168);
  *(v5 + 168) = 0x8000000000000000;
  sub_24AF031AC(v6, v7, isUniquelyReferenced_nonNull_native);
  *(v5 + 168) = v24;
  swift_endAccess();
  sub_24AEF8F7C(v7, v1, type metadata accessor for MessagingOptions);
  v9 = *(v3 + 16);
  *(v0 + 256) = v9;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v15, v4);
  v10 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v11 = (v18 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v0 + 272) = v12;
  *(v12 + 16) = v19;
  *(v12 + 32) = v5;
  *(v12 + 40) = v20;
  *(v12 + 48) = v21;
  *(v12 + 56) = v22;
  sub_24AEF9044(v1, v12 + v10, type metadata accessor for MessagingOptions);
  (*(v3 + 32))(v12 + v11, v2, v4);
  *(v12 + ((v17 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

  sub_24AEE5154(v20, v21);

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_24AEE9084;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEE9084()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_24AEE923C;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24AEE91AC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEE91AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEE923C()
{
  v49 = v0;

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[9];
  v6 = v0[10];
  v8 = sub_24AF3529C();
  __swift_project_value_buffer(v8, qword_281392F00);
  v2(v4, v7, v5);
  sub_24AEF8F7C(v6, v3, type metadata accessor for MessagingOptions);
  v9 = v1;
  v10 = sub_24AF3527C();
  v11 = sub_24AF3572C();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v0[36];
    v43 = v0[30];
    v12 = v0[25];
    v13 = v0[26];
    v15 = v0[22];
    v14 = v0[23];
    v42 = v0[32];
    v46 = v11;
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v16 = 136446978;
    v20 = sub_24AEE5B34(v47, v17, v18, v19);
    v22 = sub_24AEF599C(v20, v21, &v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v42(v13, v12, v15);
    v23 = *(v14 + 8);
    v23(v12, v15);
    v24 = Message.description.getter(v15);
    v26 = v25;
    v23(v13, v15);
    v27 = sub_24AEF599C(v24, v26, &v48);

    *(v16 + 14) = v27;
    *(v16 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_24AF35C0C();
    v30 = v29;
    sub_24AEF8FE4(v43, type metadata accessor for MessagingOptions);
    v31 = sub_24AEF599C(v28, v30, &v48);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2114;
    v32 = v45;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v33;
    *v44 = v33;
    _os_log_impl(&dword_24AECF000, v10, v46, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v16, 0x2Au);
    sub_24AEE2E10(v44, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v47, -1, -1);
    MEMORY[0x24C236490](v16, -1, -1);
  }

  else
  {
    v34 = v0[30];
    (*(v0[23] + 8))(v0[25], v0[22]);

    sub_24AEF8FE4(v34, type metadata accessor for MessagingOptions);
  }

  v35 = v0[36];
  v37 = v0[18];
  v36 = v0[19];
  v38 = v0[17];
  v39 = v0[10];
  v0[8] = v35;
  sub_24AF34FFC();
  (*(v37 + 16))(v36, v39, v38);
  swift_beginAccess();
  sub_24AF09284(0, v36);
  swift_endAccess();

  v40 = v0[1];

  return v40();
}

uint64_t InternetMessaging.send(message:metadata:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = *v4;
  v5[8] = type metadata accessor for MessagingOptions(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for Message(0, *(v6 + 80), *(v6 + 88), v7);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE9818, v4, 0);
}

uint64_t sub_24AEE9818()
{
  v88 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 + v1[5]);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v86 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v4, 0);
    v5 = v86;
    v6 = *(v86 + 16);
    v7 = 16 * v6;
    v8 = (v3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v86 = v5;
      v11 = *(v5 + 24);

      if (v6 >= v11 >> 1)
      {
        sub_24AEF6148((v11 > 1), v6 + 1, 1);
        v5 = v86;
      }

      *(v5 + 16) = v6 + 1;
      v12 = v5 + v7;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v7 += 16;
      v8 += 3;
      ++v6;
      --v4;
    }

    while (v4);
    v1 = v0[8];
    v2 = v0[5];
  }

  v13 = sub_24AEF69F8(v5);
  v0[15] = v13;

  v14 = *(v2 + v1[9]);
  v15 = 0x6F707365722F7728;
  if (!*(v2 + v1[6]))
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (*(v2 + v1[6]))
  {
    v16 = 0xED0000202965736ELL;
  }

  v86 = v15;
  v87 = v16;
  if (v14)
  {
    v17 = 0xD000000000000017;
  }

  else
  {
    v17 = 0x6567617373656DLL;
  }

  if (v14)
  {
    v18 = 0x800000024AF36C70;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v17, v18);

  v19 = v87;
  v84 = v86;
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[10];
  v24 = v0[5];
  v25 = v0[3];
  v26 = sub_24AF3529C();
  __swift_project_value_buffer(v26, qword_281392F00);
  v83 = *(v22 + 16);
  v83(v20, v25, v21);
  sub_24AEF8F7C(v24, v23, type metadata accessor for MessagingOptions);

  v27 = sub_24AF3527C();
  v28 = sub_24AF3572C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[14];
  v85 = v13;
  if (v29)
  {
    v32 = v0[12];
    v31 = v0[13];
    log = v27;
    v33 = v0[11];
    v79 = v0[10];
    v81 = v28;
    v34 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v86 = v80;
    *v34 = 136316162;
    v38 = sub_24AEE5B34(v80, v35, v36, v37);
    v40 = sub_24AEF599C(v38, v39, &v86);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2082;
    v41 = sub_24AEF599C(v84, v19, &v86);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2082;
    v83(v31, v30, v33);
    v42 = *(v32 + 8);
    v42(v30, v33);
    v43 = Message.description.getter(v33);
    v45 = v44;
    v42(v31, v33);
    v46 = sub_24AEF599C(v43, v45, &v86);

    *(v34 + 24) = v46;
    *(v34 + 32) = 2080;
    v47 = sub_24AF3567C();
    v49 = sub_24AEF599C(v47, v48, &v86);

    *(v34 + 34) = v49;
    *(v34 + 42) = 2082;
    sub_24AF3521C();
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v50 = sub_24AF35C0C();
    v52 = v51;
    sub_24AEF8FE4(v79, type metadata accessor for MessagingOptions);
    v53 = sub_24AEF599C(v50, v52, &v86);

    *(v34 + 44) = v53;
    _os_log_impl(&dword_24AECF000, log, v81, "%s: Sending (resource) %{public}s: %{public}s to %s with identifier: %{public}s", v34, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v80, -1, -1);
    MEMORY[0x24C236490](v34, -1, -1);
  }

  else
  {
    v54 = v0[10];
    (*(v0[12] + 8))(v30, v0[11]);

    sub_24AEF8FE4(v54, type metadata accessor for MessagingOptions);
  }

  sub_24AEF8F7C(v0[5], v0[9], type metadata accessor for MessagingOptions);
  v55 = sub_24AF3527C();
  v56 = sub_24AF3572C();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[9];
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86 = v60;
    *v59 = 136446466;
    v64 = sub_24AEE5B34(v60, v61, v62, v63);
    v66 = sub_24AEF599C(v64, v65, &v86);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v67 = sub_24AF3530C();
    v69 = v68;

    sub_24AEF8FE4(v58, type metadata accessor for MessagingOptions);
    v70 = sub_24AEF599C(v67, v69, &v86);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_24AECF000, v55, v56, "%{public}s: IDSSendMessageOptions: %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v60, -1, -1);
    MEMORY[0x24C236490](v59, -1, -1);
  }

  else
  {

    sub_24AEF8FE4(v58, type metadata accessor for MessagingOptions);
  }

  v72 = v0[5];
  v71 = v0[6];
  v73 = swift_task_alloc();
  v0[16] = v73;
  v74 = *(v0 + 3);
  *(v73 + 16) = v71;
  *(v73 + 24) = v74;
  *(v73 + 40) = v72;
  *(v73 + 48) = v85;
  v75 = swift_task_alloc();
  v0[17] = v75;
  v76 = sub_24AF3521C();
  *v75 = v0;
  v75[1] = sub_24AEE9FC8;
  v77 = v0[2];

  return MEMORY[0x28215EC68](v77, 0xD000000000000026, 0x800000024AF36C90, sub_24AEF6AA0, v73, v76);
}

uint64_t sub_24AEE9FC8()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_24AEEA150, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AEEA150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEEA1F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v37 = a6;
  v35 = a4;
  v32 = a3;
  v8 = *a2;
  v9 = type metadata accessor for MessagingOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v8 + 80);
  v33 = *(v8 + 88);
  v13 = type metadata accessor for Message(0, v34, v33, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - v19;
  v31 = &v30 - v19;
  v21 = sub_24AF3557C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, v32, v13);
  sub_24AEF8F7C(a5, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v22 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 8) & ~*(v10 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v33;
  *(v26 + 4) = v34;
  *(v26 + 5) = v27;
  *(v26 + 6) = a2;
  (*(v14 + 32))(&v26[v22], v17, v13);
  *&v26[v23] = v35;
  sub_24AEF9044(v30, &v26[v24], type metadata accessor for MessagingOptions);
  v28 = v36;
  *&v26[v25] = v37;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v31, &unk_24AF38170, v26);
}

uint64_t sub_24AEEA540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEEA610(a5, a6, a7, a8, v16);
}

uint64_t sub_24AEEA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v6[16] = *v5;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v6[17] = v8;
  v9 = *(v7 + 88);
  v6[18] = v9;
  v10 = type metadata accessor for Message(0, v8, v9, a4);
  v6[19] = v10;
  v11 = *(v10 - 8);
  v6[20] = v11;
  v6[21] = *(v11 + 64);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v12 = type metadata accessor for MessagingOptions(0);
  v6[24] = v12;
  v13 = *(v12 - 8);
  v6[25] = v13;
  v6[26] = *(v13 + 64);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v14 = sub_24AF3521C();
  v6[29] = v14;
  v6[30] = *(v14 - 8);
  v6[31] = swift_task_alloc();
  v15 = sub_24AF3513C();
  v6[32] = v15;
  v16 = *(v15 - 8);
  v6[33] = v16;
  v6[34] = *(v16 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEA8B8, v5, 0);
}

uint64_t sub_24AEEA8B8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v38 = *(v0 + 256);
  v6 = NSTemporaryDirectory();
  sub_24AF353AC();

  sub_24AF350FC();

  sub_24AF3520C();
  sub_24AF351EC();
  (*(v3 + 8))(v4, v5);
  sub_24AF3511C();

  v7 = *(v2 + 8);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v38);
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  *(v0 + 312) = sub_24AF3509C();
  *(v0 + 320) = v8;

  sub_24AF3518C();
  v9 = *(v0 + 280);
  v10 = *(v0 + 264);
  v32 = *(v0 + 272);
  v11 = *(v0 + 256);
  v26 = v9;
  v12 = *(v0 + 224);
  v27 = v12;
  v34 = *(v0 + 208);
  v30 = *(v0 + 288);
  v31 = *(v0 + 200);
  v41 = *(v0 + 184);
  v33 = *(v0 + 168);
  v40 = *(v0 + 160);
  v13 = *(v0 + 152);
  v28 = v13;
  v14 = *(v0 + 120);
  v39 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);
  v36 = *(v0 + 88);
  v37 = *(v0 + 104);
  v29 = *(v0 + 80);
  v35 = *(v0 + 136);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v14 + 168);
  *(v14 + 168) = 0x8000000000000000;
  sub_24AF031AC(v15, v16, isUniquelyReferenced_nonNull_native);
  *(v14 + 168) = v42;
  swift_endAccess();
  (*(v10 + 16))(v9, v30, v11);
  sub_24AEF8F7C(v16, v12, type metadata accessor for MessagingOptions);
  (*(v40 + 16))(v41, v29, v13);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v32 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v31 + 80) + v20 + 8) & ~*(v31 + 80);
  v22 = (v34 + *(v40 + 80) + v21) & ~*(v40 + 80);
  v23 = swift_allocObject();
  *(v0 + 328) = v23;
  *(v23 + 16) = v35;
  *(v23 + 32) = v14;
  (*(v10 + 32))(v23 + v18, v26, v11);
  *(v23 + v19) = v36;
  *(v23 + v20) = v37;
  sub_24AEF9044(v27, v23 + v21, type metadata accessor for MessagingOptions);
  (*(v40 + 32))(v23 + v22, v41, v28);
  *(v23 + ((v33 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;

  v24 = swift_task_alloc();
  *(v0 + 336) = v24;
  *v24 = v0;
  v24[1] = sub_24AEEB278;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEEB278()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_24AEEB578;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24AEEB3EC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEEB3EC()
{
  sub_24AED6198(*(v0 + 312), *(v0 + 320));
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_24AF3510C();
  *(v0 + 72) = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 72];

  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = v4;
    v7 = sub_24AF350DC();

    swift_willThrow();
  }

  (*(v0 + 296))(*(v0 + 288), *(v0 + 256));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24AEEB578()
{
  v56 = v0;
  v55[1] = *MEMORY[0x277D85DE8];
  sub_24AED6198(*(v0 + 312), *(v0 + 320));

  v1 = *(v0 + 344);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = sub_24AF3529C();
  __swift_project_value_buffer(v8, qword_281392F00);
  v9 = *(v4 + 16);
  v9(v3, v7, v5);
  sub_24AEF8F7C(v6, v2, type metadata accessor for MessagingOptions);
  v10 = v1;
  v11 = sub_24AF3527C();
  v12 = sub_24AF3572C();

  if (os_log_type_enabled(v11, v12))
  {
    v50 = *(v0 + 216);
    v49 = v9;
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v54 = v1;
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v52 = v12;
    v17 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55[0] = v53;
    *v17 = 136446978;
    v21 = sub_24AEE5B34(v53, v18, v19, v20);
    v23 = sub_24AEF599C(v21, v22, v55);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    v49(v14, v13, v16);
    v24 = *(v15 + 8);
    v24(v13, v16);
    v25 = Message.description.getter(v16);
    v27 = v26;
    v28 = v16;
    v1 = v54;
    v24(v14, v28);
    v29 = sub_24AEF599C(v25, v27, v55);

    *(v17 + 14) = v29;
    *(v17 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_24AF35C0C();
    v32 = v31;
    sub_24AEF8FE4(v50, type metadata accessor for MessagingOptions);
    v33 = sub_24AEF599C(v30, v32, v55);

    *(v17 + 24) = v33;
    *(v17 + 32) = 2114;
    v34 = v54;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v35;
    *v51 = v35;
    _os_log_impl(&dword_24AECF000, v11, v52, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v17, 0x2Au);
    sub_24AEE2E10(v51, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v51, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v53, -1, -1);
    MEMORY[0x24C236490](v17, -1, -1);
  }

  else
  {
    v36 = *(v0 + 216);
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    sub_24AEF8FE4(v36, type metadata accessor for MessagingOptions);
  }

  v37 = *(v0 + 240);
  v38 = *(v0 + 248);
  v39 = *(v0 + 232);
  v40 = *(v0 + 96);
  *(v0 + 64) = v1;
  sub_24AF34FFC();
  (*(v37 + 16))(v38, v40, v39);
  swift_beginAccess();
  sub_24AF09284(0, v38);
  swift_endAccess();

  v41 = [objc_opt_self() defaultManager];
  v42 = sub_24AF3510C();
  *(v0 + 72) = 0;
  LOBYTE(v38) = [v41 removeItemAtURL:v42 error:v0 + 72];

  v43 = *(v0 + 72);
  if (v38)
  {
    v44 = v43;
  }

  else
  {
    v45 = v43;
    v46 = sub_24AF350DC();

    swift_willThrow();
  }

  (*(v0 + 296))(*(v0 + 288), *(v0 + 256));

  v47 = *(v0 + 8);

  return v47();
}

uint64_t InternetMessaging.sendWithResponse(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for Message(255, *(*v4 + 80), *(*v4 + 88), a4);
  type metadata accessor for MessageContext(255);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MessagingOptions(0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEBC08, v4, 0);
}

uint64_t sub_24AEEBC08()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_24AEF8F7C(v0[5], v2, type metadata accessor for MessagingOptions);
  *(v2 + *(v3 + 24)) = 1;
  sub_24AEF8F7C(v2, v1, type metadata accessor for MessagingOptions);
  v4 = *(v1 + *(v3 + 20));
  if (*(v4 + 16) == 1 && *(v4 + 32) - 2 <= 2)
  {
    v5 = v0[11];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_task_alloc();
    v0[13] = v8;
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_24AEEBE20;
    v11 = v0[8];
    v10 = v0[9];

    return MEMORY[0x28215EC68](v10, 0xD000000000000029, 0x800000024AF36CC0, sub_24AEF6AB0, v8, v11);
  }

  else
  {
    sub_24AED9680();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[11];
    sub_24AEF8FE4(v0[12], type metadata accessor for MessagingOptions);
    sub_24AEF8FE4(v13, type metadata accessor for MessagingOptions);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24AEEBE20()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24AEEC088;
  }

  else
  {
    v4 = sub_24AEEBF68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEEBF68()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  sub_24AEF8FE4(v0[12], type metadata accessor for MessagingOptions);
  v7 = *(v3 + 48);
  (*(*(v4 - 8) + 32))(v6, v2, v4);
  sub_24AEF9044(v2 + v7, v5, type metadata accessor for MessageContext);
  sub_24AEF8FE4(v1, type metadata accessor for MessagingOptions);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AEEC088()
{
  v1 = v0[11];
  sub_24AEF8FE4(v0[12], type metadata accessor for MessagingOptions);
  sub_24AEF8FE4(v1, type metadata accessor for MessagingOptions);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24AEEC140(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v28 = a1;
  v6 = *a2;
  v7 = type metadata accessor for MessagingOptions(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v27 = *(v6 + 80);
  v26 = *(v6 + 88);
  v11 = type metadata accessor for Message(0, v27, v26, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_24AF3557C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v25, v11);
  sub_24AEF8F7C(a4, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v21 = (v13 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v26;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  *(v22 + 6) = a2;
  (*(v12 + 32))(&v22[v20], v15, v11);
  sub_24AEF9044(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v22[v21], type metadata accessor for MessagingOptions);
  *&v22[(v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v18, &unk_24AF38148, v22);
}

uint64_t sub_24AEEC450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_24AEE555C;

  return sub_24AEEC504(a5, a6, a7);
}

uint64_t sub_24AEEC504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = *v3;
  v5 = *v3;
  v6 = type metadata accessor for MessagingOptions(0);
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = *(v5 + 80);
  v4[21] = v8;
  v9 = *(v5 + 88);
  v4[22] = v9;
  v11 = type metadata accessor for Message(0, v8, v9, v10);
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v13 = sub_24AF3521C();
  v4[28] = v13;
  v4[29] = *(v13 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEC70C, v3, 0);
}

uint64_t sub_24AEEC70C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v17 = *(v0 + 216);
  v18 = *(v0 + 160);
  v21 = *(v0 + 144);
  v22 = *(v0 + 200);
  v19 = *(v0 + 136);
  v23 = *(v0 + 120);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v1 + 16);
  v9 = *(v0 + 96);
  v16 = *(v0 + 88);
  *(v0 + 248) = v8;
  *(v0 + 256) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = *(v0 + 168);
  v8(v2, v9, v3);
  *(v0 + 64) = v7;
  swift_beginAccess();
  type metadata accessor for MessageContext(255);

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  *(v0 + 264) = sub_24AF3532C();
  sub_24AF3534C();
  swift_endAccess();
  v10 = *(v4 + 16);
  *(v0 + 272) = v10;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v17, v16, v5);
  sub_24AEF8F7C(v9, v18, type metadata accessor for MessagingOptions);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = (v22 + *(v19 + 80) + v11) & ~*(v19 + 80);
  v13 = swift_allocObject();
  *(v0 + 288) = v13;
  *(v13 + 16) = v20;
  *(v13 + 32) = v6;
  (*(v4 + 32))(v13 + v11, v17, v5);
  sub_24AEF9044(v18, v13 + v12, type metadata accessor for MessagingOptions);
  *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v14 = swift_task_alloc();
  *(v0 + 296) = v14;
  *v14 = v0;
  v14[1] = sub_24AEECA48;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEECA48()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_24AEECC00;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_24AEECB70;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEECB70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEECC00()
{
  v49 = v0;

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[19];
  v7 = v0[11];
  v6 = v0[12];
  v8 = sub_24AF3529C();
  __swift_project_value_buffer(v8, qword_281392F00);
  v2(v3, v7, v4);
  sub_24AEF8F7C(v6, v5, type metadata accessor for MessagingOptions);
  v9 = v1;
  v10 = sub_24AF3527C();
  v11 = sub_24AF3572C();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v0[38];
    v12 = v0[27];
    v13 = v0[26];
    v15 = v0[23];
    v14 = v0[24];
    v42 = v0[34];
    v43 = v0[19];
    v46 = v11;
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v16 = 136446978;
    v20 = sub_24AEE5B34(v47, v17, v18, v19);
    v22 = sub_24AEF599C(v20, v21, &v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v42(v12, v13, v15);
    v23 = *(v14 + 8);
    v23(v13, v15);
    v24 = Message.description.getter(v15);
    v26 = v25;
    v23(v12, v15);
    v27 = sub_24AEF599C(v24, v26, &v48);

    *(v16 + 14) = v27;
    *(v16 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_24AF35C0C();
    v30 = v29;
    sub_24AEF8FE4(v43, type metadata accessor for MessagingOptions);
    v31 = sub_24AEF599C(v28, v30, &v48);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2114;
    v32 = v45;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v33;
    *v44 = v33;
    _os_log_impl(&dword_24AECF000, v10, v46, "%{public}s: Failed to send message (with response) %{public}s. with identifier: %{public}s. Error: %{public}@.", v16, 0x2Au);
    sub_24AEE2E10(v44, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v47, -1, -1);
    MEMORY[0x24C236490](v16, -1, -1);
  }

  else
  {
    v34 = v0[19];
    (*(v0[24] + 8))(v0[26], v0[23]);

    sub_24AEF8FE4(v34, type metadata accessor for MessagingOptions);
  }

  v35 = v0[38];
  v36 = v0[30];
  v37 = v0[31];
  v38 = v0[28];
  v39 = v0[12];
  v0[9] = v35;
  sub_24AF34FFC();
  v37(v36, v39, v38);
  v0[10] = 0;
  swift_beginAccess();
  sub_24AF3534C();
  swift_endAccess();

  v40 = v0[1];

  return v40();
}

uint64_t InternetMessaging.send(dictionary:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v4[7] = type metadata accessor for MessagingOptions(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEED140, v3, 0);
}

uint64_t sub_24AEED140()
{
  v58 = v0;
  v1 = *(*(v0 + 32) + *(*(v0 + 56) + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v57 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v57;
    v4 = *(v57 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v57 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v57;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = sub_24AEF69F8(v3);
  *(v0 + 80) = v11;

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 32);
  v14 = sub_24AF3529C();
  __swift_project_value_buffer(v14, qword_281392F00);
  sub_24AEF8F7C(v13, v12, type metadata accessor for MessagingOptions);

  v15 = sub_24AF3527C();
  v16 = sub_24AF3572C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 72);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v57 = v20;
    *v19 = 136315650;
    v24 = sub_24AEE5B34(v20, v21, v22, v23);
    v26 = sub_24AEF599C(v24, v25, &v57);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_24AF3567C();
    v29 = sub_24AEF599C(v27, v28, &v57);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2082;
    sub_24AF3521C();
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_24AF35C0C();
    v32 = v31;
    sub_24AEF8FE4(v18, type metadata accessor for MessagingOptions);
    v33 = sub_24AEF599C(v30, v32, &v57);

    *(v19 + 24) = v33;
    _os_log_impl(&dword_24AECF000, v15, v16, "%s: Sending raw dictionary to %s with identifier: %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v20, -1, -1);
    MEMORY[0x24C236490](v19, -1, -1);
  }

  else
  {

    sub_24AEF8FE4(v18, type metadata accessor for MessagingOptions);
  }

  sub_24AEF8F7C(*(v0 + 32), *(v0 + 64), type metadata accessor for MessagingOptions);
  v34 = sub_24AF3527C();
  v35 = sub_24AF3572C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 64);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v39;
    *v38 = 136446466;
    v43 = sub_24AEE5B34(v39, v40, v41, v42);
    v45 = sub_24AEF599C(v43, v44, &v57);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v46 = sub_24AF3530C();
    v48 = v47;

    sub_24AEF8FE4(v37, type metadata accessor for MessagingOptions);
    v49 = sub_24AEF599C(v46, v48, &v57);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_24AECF000, v34, v35, "%{public}s: IDSSendMessageOptions: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v39, -1, -1);
    MEMORY[0x24C236490](v38, -1, -1);
  }

  else
  {

    sub_24AEF8FE4(v37, type metadata accessor for MessagingOptions);
  }

  v50 = *(v0 + 40);
  v51 = swift_task_alloc();
  *(v0 + 88) = v51;
  v52 = *(v0 + 24);
  *(v51 + 16) = v50;
  *(v51 + 24) = v11;
  *(v51 + 32) = v52;
  v53 = swift_task_alloc();
  *(v0 + 96) = v53;
  v54 = sub_24AF3521C();
  *v53 = v0;
  v53[1] = sub_24AEED710;
  v55 = *(v0 + 16);

  return MEMORY[0x28215EC68](v55, 0xD000000000000020, 0x800000024AF36CF0, sub_24AEF6ABC, v51, v54);
}

uint64_t sub_24AEED710()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_24AEED878, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AEED878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEED900(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_24AF3557C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_24AEF8F7C(a5, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v18 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = *(v10 + 80);
  v19[5] = *(v10 + 88);
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  sub_24AEF9044(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for MessagingOptions);
  *(v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_24AF08F10(0, 0, v16, &unk_24AF38120, v19);
}

uint64_t sub_24AEEDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEEDC10(a5, a6, a7, a8);
}

uint64_t sub_24AEEDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v5[14] = *v4;
  v5[15] = *v4;
  v6 = sub_24AF3521C();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions(0);
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v5[21] = *(v8 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEDD98, v4, 0);
}

uint64_t sub_24AEEDD98()
{
  v1 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  v2 = v0[15];
  v15 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 168);
  *(v3 + 168) = 0x8000000000000000;
  sub_24AF031AC(v4, v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 168) = v16;
  swift_endAccess();
  sub_24AEF8F7C(v6, v1, type metadata accessor for MessagingOptions);
  v9 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v10 = swift_allocObject();
  v0[24] = v10;
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v3;
  v10[5] = v5;
  v10[6] = v7;
  sub_24AEF9044(v1, v10 + v9, type metadata accessor for MessagingOptions);
  *(v10 + ((v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;

  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_24AEEDFB4;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEEDFB4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_24AEEE150;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_24AEEE0DC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEEE0DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEEE150()
{
  v34 = v0;

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[11];
  v4 = sub_24AF3529C();
  __swift_project_value_buffer(v4, qword_281392F00);
  sub_24AEF8F7C(v3, v2, type metadata accessor for MessagingOptions);
  v5 = v1;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3572C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 136446722;
    v16 = sub_24AEE5B34(v12, v13, v14, v15);
    v18 = sub_24AEF599C(v16, v17, &v33);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_24AF35C0C();
    v21 = v20;
    sub_24AEF8FE4(v9, type metadata accessor for MessagingOptions);
    v22 = sub_24AEF599C(v19, v21, &v33);

    *(v10 + 14) = v22;
    *(v10 + 22) = 2114;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v24;
    *v11 = v24;
    _os_log_impl(&dword_24AECF000, v6, v7, "%{public}s: Failed to send raw dictionary with identifier: %{public}s. Error: %{public}@.", v10, 0x20u);
    sub_24AEE2E10(v11, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v12, -1, -1);
    MEMORY[0x24C236490](v10, -1, -1);
  }

  else
  {
    v25 = v0[22];

    sub_24AEF8FE4(v25, type metadata accessor for MessagingOptions);
  }

  v26 = v0[26];
  v28 = v0[17];
  v27 = v0[18];
  v29 = v0[16];
  v30 = v0[11];
  v0[8] = v26;
  sub_24AF34FFC();
  (*(v28 + 16))(v27, v30, v29);
  swift_beginAccess();
  sub_24AF09284(0, v27);
  swift_endAccess();

  v31 = v0[1];

  return v31();
}

uint64_t sub_24AEEE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = a2;
  v9 = type metadata accessor for Message(0, *(*a2 + 80), *(*a2 + 88), a4);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v8[15] = swift_task_alloc();
  v10 = sub_24AF3521C();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEE6AC, 0, 0);
}

uint64_t sub_24AEEE6AC()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = *(v0[4] + 136);
  v3 = sub_24AF3516C();
  sub_24AF1310C(v1);
  v4 = sub_24AF3565C();

  v5 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v5);

  v6 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v2) = [v2 sendData:v3 toDestinations:v4 priority:300 options:v6 identifier:v0 + 2 error:v0 + 3];

  v7 = v0[3];
  v8 = v0[2];
  if (!v2)
  {
    v14 = v7;
    v15 = v8;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();

    v18 = v0[1];
    goto LABEL_9;
  }

  if (!v8)
  {
    v16 = v7;
    goto LABEL_7;
  }

  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  sub_24AF353AC();
  v12 = v7;
  v13 = v8;
  sub_24AF351DC();

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_24AEE2E10(v0[15], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v17 = 0;
    goto LABEL_8;
  }

  v65 = v13;
  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[9];
  v28 = sub_24AF3529C();
  __swift_project_value_buffer(v28, qword_281392F00);
  v64 = *(v26 + 16);
  v64(v24, v27, v25);
  (*(v23 + 16))(v20, v21, v22);
  v29 = sub_24AF3527C();
  v30 = sub_24AF3572C();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v0[18];
  v32 = v0[19];
  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[14];
  if (v31)
  {
    log = v29;
    v63 = v0[19];
    v60 = v0[16];
    v38 = v0[12];
    v37 = v0[13];
    v39 = v0[11];
    v58 = v0[18];
    v40 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66[0] = v61;
    *v40 = 136446722;
    v44 = sub_24AEE5B34(v61, v41, v42, v43);
    v59 = v30;
    v46 = sub_24AEF599C(v44, v45, v66);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2082;
    v64(v37, v36, v39);
    v47 = *(v38 + 8);
    v47(v36, v39);
    v48 = Message.description.getter(v39);
    v50 = v49;
    v47(v37, v39);
    v51 = sub_24AEF599C(v48, v50, v66);

    *(v40 + 14) = v51;
    *(v40 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = sub_24AF35C0C();
    v54 = v53;
    v55 = *(v34 + 8);
    v55(v58, v60);
    v56 = sub_24AEF599C(v52, v54, v66);

    *(v40 + 24) = v56;
    _os_log_impl(&dword_24AECF000, log, v59, "%{public}s: Sent message %{public}s with identifier: %{public}s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v61, -1, -1);
    MEMORY[0x24C236490](v40, -1, -1);

    v55(v63, v60);
  }

  else
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    v57 = *(v34 + 8);
    v57(v33, v35);
    v57(v32, v35);
  }

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_24AEEECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = a2;
  v9 = type metadata accessor for Message(0, *(*a2 + 80), *(*a2 + 88), a4);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v8[15] = swift_task_alloc();
  v10 = sub_24AF3521C();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEEEA0, 0, 0);
}

uint64_t sub_24AEEEEA0()
{
  v69 = v0;
  v68[1] = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = v0[6];
  v3 = *(v0[4] + 136);
  v4 = sub_24AF3510C();
  sub_24AF13608(v2);
  v5 = sub_24AF352EC();

  sub_24AF1310C(v1);
  v6 = sub_24AF3565C();

  v7 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v7);

  v8 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v3) = [v3 sendResourceAtURL:v4 metadata:v5 toDestinations:v6 priority:300 options:v8 identifier:v0 + 2 error:v0 + 3];

  v9 = v0[3];
  v10 = v0[2];
  if (!v3)
  {
    v16 = v9;
    v17 = v10;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();

    v20 = v0[1];
    goto LABEL_9;
  }

  if (!v10)
  {
    v18 = v9;
    goto LABEL_7;
  }

  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  sub_24AF353AC();
  v14 = v9;
  v15 = v10;
  sub_24AF351DC();

  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_24AEE2E10(v0[15], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v19 = 0;
    goto LABEL_8;
  }

  v67 = v15;
  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v22 = v0[18];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[12];
  v29 = v0[9];
  v30 = sub_24AF3529C();
  __swift_project_value_buffer(v30, qword_281392F00);
  v66 = *(v28 + 16);
  v66(v26, v29, v27);
  (*(v25 + 16))(v22, v23, v24);
  v31 = sub_24AF3527C();
  v32 = sub_24AF3572C();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[18];
  v34 = v0[19];
  v37 = v0[16];
  v36 = v0[17];
  v38 = v0[14];
  if (v33)
  {
    log = v31;
    v65 = v0[19];
    v62 = v0[16];
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];
    v60 = v0[18];
    v42 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68[0] = v63;
    *v42 = 136446722;
    v46 = sub_24AEE5B34(v63, v43, v44, v45);
    v61 = v32;
    v48 = sub_24AEF599C(v46, v47, v68);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2082;
    v66(v39, v38, v41);
    v49 = *(v40 + 8);
    v49(v38, v41);
    v50 = Message.description.getter(v41);
    v52 = v51;
    v49(v39, v41);
    v53 = sub_24AEF599C(v50, v52, v68);

    *(v42 + 14) = v53;
    *(v42 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v54 = sub_24AF35C0C();
    v56 = v55;
    v57 = *(v36 + 8);
    v57(v60, v62);
    v58 = sub_24AEF599C(v54, v56, v68);

    *(v42 + 24) = v58;
    _os_log_impl(&dword_24AECF000, log, v61, "%{public}s: Sent message (resource) %{public}s with identifier: %{public}s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v63, -1, -1);
    MEMORY[0x24C236490](v42, -1, -1);

    v57(v65, v62);
  }

  else
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    v59 = *(v36 + 8);
    v59(v35, v37);
    v59(v34, v37);
  }

  v20 = v0[1];
LABEL_9:

  return v20();
}

uint64_t sub_24AEEF4F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v8 = *a2;
  type metadata accessor for MessagingOptions(0);
  v5[5] = swift_task_alloc();
  v10 = type metadata accessor for Message(0, *(v8 + 80), *(v8 + 88), v9);
  v5[6] = v10;
  v5[7] = *(v10 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v11 = sub_24AF3521C();
  v5[10] = v11;
  v5[11] = *(v11 - 8);
  v12 = swift_task_alloc();
  v5[12] = v12;
  v13 = swift_task_alloc();
  v5[13] = v13;
  *v13 = v5;
  v13[1] = sub_24AEEF6D0;

  return InternetMessaging.send(message:messageOptions:)(v12, a3, a4);
}

uint64_t sub_24AEEF6D0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_24AEEFB80;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_24AEEF7FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEEF7FC()
{
  v39 = v0;
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_24AF3529C();
  __swift_project_value_buffer(v7, qword_281392F00);
  v8 = *(v3 + 16);
  v8(v1, v6, v2);
  sub_24AEF8F7C(v5, v4, type metadata accessor for MessagingOptions);
  v9 = sub_24AF3527C();
  v10 = sub_24AF3572C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[9];
    v34 = v8;
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    v35 = v0[5];
    v37 = v10;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v15 = 136446722;
    v19 = sub_24AEE5B34(v36, v16, v17, v18);
    v21 = sub_24AEF599C(v19, v20, &v38);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v34(v13, v11, v14);
    v22 = *(v12 + 8);
    v22(v11, v14);
    v23 = Message.description.getter(v14);
    v25 = v24;
    v22(v13, v14);
    v26 = sub_24AEF599C(v23, v25, &v38);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_24AF35C0C();
    v29 = v28;
    sub_24AEF8FE4(v35, type metadata accessor for MessagingOptions);
    v30 = sub_24AEF599C(v27, v29, &v38);

    *(v15 + 24) = v30;
    _os_log_impl(&dword_24AECF000, v9, v37, "%{public}s: Sent message (with response) %{public}s with identifier: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v36, -1, -1);
    MEMORY[0x24C236490](v15, -1, -1);
  }

  else
  {
    v31 = v0[5];
    (*(v0[7] + 8))(v0[9], v0[6]);

    sub_24AEF8FE4(v31, type metadata accessor for MessagingOptions);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AEEFB80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEEFC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v6[9] = swift_task_alloc();
  v7 = sub_24AF3521C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEFD44, 0, 0);
}

uint64_t sub_24AEEFD44()
{
  v50 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = *(v0[4] + 136);
  sub_24AF13608(v0[5]);
  v3 = sub_24AF352EC();

  sub_24AF1310C(v1);
  v4 = sub_24AF3565C();

  v5 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v5);

  v6 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v2) = [v2 sendMessage:v3 toDestinations:v4 priority:300 options:v6 identifier:v0 + 2 error:v0 + 3];

  v7 = v0[3];
  v8 = v0[2];
  if (!v2)
  {
    v14 = v7;
    v15 = v8;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();

    v18 = v0[1];
    goto LABEL_9;
  }

  if (!v8)
  {
    v16 = v7;
    goto LABEL_7;
  }

  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  sub_24AF353AC();
  v12 = v7;
  v13 = v8;
  sub_24AF351DC();

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_24AEE2E10(v0[9], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v17 = 0;
    goto LABEL_8;
  }

  v48 = v13;
  (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[10];
  v22 = v0[11];
  v24 = sub_24AF3529C();
  __swift_project_value_buffer(v24, qword_281392F00);
  (*(v22 + 16))(v21, v20, v23);
  v25 = sub_24AF3527C();
  v26 = sub_24AF3572C();
  v27 = os_log_type_enabled(v25, v26);
  v29 = v0[12];
  v28 = v0[13];
  v31 = v0[10];
  v30 = v0[11];
  if (v27)
  {
    v45 = v26;
    v32 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49[0] = v46;
    *v32 = 136446466;
    v36 = sub_24AEE5B34(v46, v33, v34, v35);
    v47 = v28;
    v38 = sub_24AEF599C(v36, v37, v49);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_24AF35C0C();
    v41 = v40;
    v42 = *(v30 + 8);
    v42(v29, v31);
    v43 = sub_24AEF599C(v39, v41, v49);

    *(v32 + 14) = v43;
    _os_log_impl(&dword_24AECF000, v25, v45, "%{public}s: Sent raw dictionary to with identifier: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v46, -1, -1);
    MEMORY[0x24C236490](v32, -1, -1);

    v42(v47, v31);
  }

  else
  {

    v44 = *(v30 + 8);
    v44(v29, v31);
    v44(v28, v31);
  }

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t InternetMessaging.makeSession<A>(destination:invitationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 136) = *a1;
  v6 = *(a1 + 16);
  *(v5 + 48) = *(a1 + 8);
  *(v5 + 56) = v6;
  return MEMORY[0x2822009F8](sub_24AEF02A0, v4, 0);
}

uint64_t sub_24AEF02A0()
{
  v15 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  *(v0 + 64) = sub_24AF3509C();
  *(v0 + 72) = v1;

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v10[0] = *(v0 + 136);
  v11 = v2;
  v12 = v3;
  v5 = *(v4 + 136);
  v6 = *(v4 + 144);
  LOBYTE(v4) = *(v4 + 152);
  v13 = v6;
  v14 = v4;
  v7 = v5;

  sub_24AF0889C(v7, v10, &v13);
  *(v0 + 80) = v8;

  return MEMORY[0x2822009F8](sub_24AEF0438, v8, 0);
}

uint64_t sub_24AEF0438()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_24AF05840();
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_24AEF0508;

  return sub_24AF069F8(sub_24AEF708C, v4);
}

uint64_t sub_24AEF0508()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](sub_24AEF07A4, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[14] = v4;
    *v4 = v2;
    v4[1] = sub_24AEF0678;

    return sub_24AF07168();
  }
}

uint64_t sub_24AEF0678(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[16] = v1;
    v5 = v4[5];
    v6 = sub_24AEF08E0;
  }

  else
  {
    v5 = v4[5];
    v4[15] = a1;
    v6 = sub_24AEF0814;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AEF07A4()
{

  v0[16] = v0[13];
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_24AEF08E0, v1, 0);
}

uint64_t sub_24AEF0814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = v4;
  v5 = v4[15];
  v7 = v4[9];
  v6 = v4[10];
  v8 = v4[8];
  type metadata accessor for SessionMessaging(0, v4[3], v4[4], a4);
  v12[0] = xmmword_24AF37E10;
  v12[1] = xmmword_24AF37E20;
  v13 = 6;
  v9 = sub_24AF09200(v6, v5, v12);
  sub_24AED6198(v8, v7);
  v10 = v4[1];

  return v10(v9);
}

uint64_t sub_24AEF08E0()
{
  v1 = v0[9];
  v2 = v0[8];

  sub_24AED6198(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AEF0954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
  *(v8 + 168) = *v7;
  v11 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  *(v8 + 176) = swift_task_alloc();
  v12 = *(v11 + 80);
  *(v8 + 184) = v12;
  v13 = *(v11 + 88);
  *(v8 + 192) = v13;
  v15 = type metadata accessor for Message(255, v12, v13, v14);
  *(v8 + 200) = v15;
  v16 = type metadata accessor for MessageContext(255);
  *(v8 + 208) = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 216) = TupleTypeMetadata2;
  *(v8 + 224) = *(TupleTypeMetadata2 - 8);
  *(v8 + 232) = swift_task_alloc();
  v18 = sub_24AF3521C();
  *(v8 + 240) = v18;
  *(v8 + 248) = *(v18 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = type metadata accessor for MessagingOptions(0);
  *(v8 + 312) = swift_task_alloc();
  v19 = *(v16 - 8);
  *(v8 + 320) = v19;
  *(v8 + 328) = *(v19 + 64);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v20 = *(v15 - 8);
  *(v8 + 360) = v20;
  *(v8 + 368) = *(v20 + 64);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v21 = swift_task_alloc();
  v22 = *a3;
  v23 = a3[1];
  *(v8 + 424) = v21;
  *(v8 + 432) = v22;
  *(v8 + 536) = *a6;
  v24 = *(a6 + 8);
  v25 = *(a6 + 16);
  *(v8 + 440) = v23;
  *(v8 + 448) = v24;
  *(v8 + 456) = v25;

  return MEMORY[0x2822009F8](sub_24AEF0D14, v7, 0);
}

uint64_t sub_24AEF0D14()
{
  v243 = v0;
  v1 = v0[20];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == v0[15] && v3 == v0[16];
  if (!v4 && (sub_24AF35C4C() & 1) == 0)
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v44 = sub_24AF3529C();
    __swift_project_value_buffer(v44, qword_281392F00);

    v45 = sub_24AF3527C();
    v46 = sub_24AF3570C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[15];
      v239 = v0[16];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v242[0] = v49;
      *v48 = 136446722;
      v53 = sub_24AEE5B34(v49, v50, v51, v52);
      v55 = sub_24AEF599C(v53, v54, v242);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_24AEF599C(v2, v3, v242);
      *(v48 + 22) = 2082;
      *(v48 + 24) = sub_24AEF599C(v47, v239, v242);
      _os_log_impl(&dword_24AECF000, v45, v46, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v49, -1, -1);
      MEMORY[0x24C236490](v48, -1, -1);
    }

    goto LABEL_48;
  }

  sub_24AF3508C();
  swift_allocObject();
  sub_24AF3507C();
  swift_getWitnessTable();
  sub_24AF3505C();
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[45];
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[19];

  v11 = *(v7 + 32);
  v11(v5, v6, v8);
  if (*(v10 + *(v9 + 36)) == 1)
  {
    v12 = v0[20];
    v13 = *(v12 + 264);
    v0[58] = v13;
    v14 = *(v12 + 272);
    v0[59] = v14;
    if (v13)
    {
      v236 = v13;
      sub_24AED1164(v13, v14);
      if (qword_281392EF8 != -1)
      {
        swift_once();
      }

      v15 = v0[53];
      v16 = v0[51];
      v18 = v0[44];
      v17 = v0[45];
      v19 = v0[25];
      v20 = v0[19];
      v21 = sub_24AF3529C();
      v0[60] = __swift_project_value_buffer(v21, qword_281392F00);
      sub_24AEF8F7C(v20, v18, type metadata accessor for MessageContext);
      v22 = *(v17 + 16);
      v22(v16, v15, v19);

      v23 = sub_24AF3527C();
      v24 = sub_24AF3572C();

      if (os_log_type_enabled(v23, v24))
      {
        v212 = v0[56];
        v217 = v0[57];
        v230 = v0[51];
        v222 = v0[50];
        v25 = v0[44];
        v26 = v0[45];
        v27 = v0[25];
        v204 = v0[15];
        v207 = v0[16];
        v28 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v242[0] = v233;
        *v28 = 136316162;
        v32 = sub_24AEE5B34(v233, v29, v30, v31);
        log = v23;
        v34 = sub_24AEF599C(v32, v33, v242);

        *(v28 + 4) = v34;
        *(v28 + 12) = 2080;
        sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v35 = sub_24AF35C0C();
        v37 = v36;
        sub_24AEF8FE4(v25, type metadata accessor for MessageContext);
        v38 = sub_24AEF599C(v35, v37, v242);

        *(v28 + 14) = v38;
        *(v28 + 22) = 2080;
        *(v28 + 24) = sub_24AEF599C(v204, v207, v242);
        *(v28 + 32) = 2080;
        *(v28 + 34) = sub_24AEF599C(v212, v217, v242);
        *(v28 + 42) = 2080;
        v22(v222, v230, v27);
        v39 = *(v26 + 8);
        v39(v230, v27);
        v40 = Message.description.getter(v27);
        v42 = v41;
        v39(v222, v27);
        v43 = sub_24AEF599C(v40, v42, v242);

        *(v28 + 44) = v43;
        _os_log_impl(&dword_24AECF000, log, v24, "%s: Received message %s on %s from %s: %s expecting response", v28, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C236490](v233, -1, -1);
        MEMORY[0x24C236490](v28, -1, -1);
      }

      else
      {
        v112 = v0[44];
        v39 = *(v0[45] + 8);
        v39(v0[51], v0[25]);

        sub_24AEF8FE4(v112, type metadata accessor for MessageContext);
      }

      v0[61] = v39;
      v113 = *(v0 + 28);
      v114 = v0[55];
      v0[11] = v0[54];
      v115 = *(v0 + 536);
      v0[12] = v114;
      *(v0 + 64) = v115;
      *(v0 + 9) = v113;
      v116 = sub_24AEE2954(MEMORY[0x277D84F90]);
      v0[62] = v116;
      v234 = (v236 + *v236);
      v117 = swift_task_alloc();
      v0[63] = v117;
      *v117 = v0;
      v117[1] = sub_24AEF253C;
      v118 = v0[53];
      v119 = v0[49];
      v120 = v0[19];

      return (v234)(v119, v0 + 11, v0 + 8, v118, v116, v120);
    }

    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v97 = sub_24AF3529C();
    __swift_project_value_buffer(v97, qword_281392F00);
    v98 = sub_24AF3527C();
    v99 = sub_24AF3570C();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v0[53];
    v102 = v0[45];
    v103 = v0[25];
    if (v100)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v242[0] = v105;
      *v104 = 136446210;
      v109 = sub_24AEE5B34(v105, v106, v107, v108);
      v111 = sub_24AEF599C(v109, v110, v242);

      *(v104 + 4) = v111;
      _os_log_impl(&dword_24AECF000, v98, v99, "%{public}s: No replyCallback!", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x24C236490](v105, -1, -1);
      MEMORY[0x24C236490](v104, -1, -1);
    }

    (*(v102 + 8))(v101, v103);
  }

  else
  {
    v56 = v0[36];
    v57 = v0[30];
    v58 = v0[31];
    sub_24AEF8C60(v0[19], v56);
    if ((*(v58 + 48))(v56, 1, v57) == 1)
    {
      sub_24AEE2E10(v0[36], &qword_27EFC11C0, &qword_24AF38DC0);
    }

    else
    {
      (*(v0[31] + 32))(v0[34], v0[36], v0[30]);
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
      sub_24AF3501C();
      sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24AF3533C();

      if (v0[13])
      {
        if (qword_281392EF8 != -1)
        {
          swift_once();
        }

        v240 = v0[53];
        v59 = v0[48];
        v60 = v0[45];
        v61 = v0[43];
        v223 = v0[33];
        loga = v0[34];
        v62 = v0[31];
        v213 = v0[30];
        v63 = v0[25];
        v64 = v0[19];
        v65 = sub_24AF3529C();
        v66 = v0;
        __swift_project_value_buffer(v65, qword_281392F00);
        sub_24AEF8F7C(v64, v61, type metadata accessor for MessageContext);
        v67 = v240;
        v241 = *(v60 + 16);
        v241(v59, v67, v63);
        v68 = v223;
        v224 = *(v62 + 16);
        v224(v68, loga, v213);

        v69 = sub_24AF3527C();
        v70 = sub_24AF3572C();

        if (os_log_type_enabled(v69, v70))
        {
          v214 = v0[57];
          v218 = v0[50];
          v205 = v0[48];
          v71 = v0[45];
          v72 = v66[43];
          v208 = v66[33];
          v201 = v69;
          v73 = v66[31];
          v74 = v66[25];
          v199 = v70;
          v194 = v66[16];
          v196 = v66[56];
          v192 = v66[30];
          v193 = v66[15];
          v75 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v242[0] = v198;
          *v75 = 136316418;
          v79 = sub_24AEE5B34(v198, v76, v77, v78);
          v81 = sub_24AEF599C(v79, v80, v242);

          *(v75 + 4) = v81;
          *(v75 + 12) = 2080;
          sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v82 = sub_24AF35C0C();
          v84 = v83;
          sub_24AEF8FE4(v72, type metadata accessor for MessageContext);
          v85 = sub_24AEF599C(v82, v84, v242);

          *(v75 + 14) = v85;
          *(v75 + 22) = 2080;
          *(v75 + 24) = sub_24AEF599C(v193, v194, v242);
          *(v75 + 32) = 2080;
          *(v75 + 34) = sub_24AEF599C(v196, v214, v242);
          *(v75 + 42) = 2080;
          v241(v218, v205, v74);
          v86 = *(v71 + 8);
          v86(v205, v74);
          v87 = v218;
          v88 = Message.description.getter(v74);
          v90 = v89;
          v219 = v86;
          v86(v87, v74);
          v91 = sub_24AEF599C(v88, v90, v242);

          *(v75 + 44) = v91;
          *(v75 + 52) = 2080;
          v92 = v208;
          v93 = sub_24AF35C0C();
          v95 = v94;
          v209 = *(v73 + 8);
          v209(v92, v192);
          v96 = sub_24AEF599C(v93, v95, v242);

          *(v75 + 54) = v96;
          _os_log_impl(&dword_24AECF000, v201, v199, "%s: Received message %s on %s from %s: %s in response to %s", v75, 0x3Eu);
          swift_arrayDestroy();
          MEMORY[0x24C236490](v198, -1, -1);
          MEMORY[0x24C236490](v75, -1, -1);
        }

        else
        {
          v139 = v0[43];
          v140 = v0[33];
          v141 = v0[30];
          v142 = v0[31];
          v219 = *(v66[45] + 8);
          v219(v66[48], v66[25]);

          v209 = *(v142 + 8);
          v209(v140, v141);
          sub_24AEF8FE4(v139, type metadata accessor for MessageContext);
        }

        v0 = v66;
        v202 = v66[53];
        v143 = v66[34];
        v144 = v66[32];
        v145 = v66[29];
        v146 = v66[30];
        v148 = v66[27];
        v147 = v66[28];
        v149 = v66[25];
        v150 = v66[19];
        v151 = *(v148 + 48);
        (v241)(v0[29]);
        sub_24AEF8F7C(v150, v145 + v151, type metadata accessor for MessageContext);
        sub_24AF3500C();
        (*(v147 + 8))(v145, v148);
        v224(v144, v143, v146);
        v0[14] = 0;
        swift_beginAccess();
        sub_24AF3532C();
        sub_24AF3534C();
        swift_endAccess();

        v209(v143, v146);
        v219(v202, v149);
        goto LABEL_48;
      }

      if (qword_281392EF8 != -1)
      {
        swift_once();
      }

      v122 = sub_24AF3529C();
      __swift_project_value_buffer(v122, qword_281392F00);
      v123 = sub_24AF3527C();
      v124 = sub_24AF3570C();
      v125 = os_log_type_enabled(v123, v124);
      v126 = v0[34];
      v127 = v0[30];
      v128 = v0[31];
      if (v125)
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v242[0] = v130;
        v131 = v130;
        *v129 = 136315138;
        v135 = sub_24AEE5B34(v130, v132, v133, v134);
        v137 = v11;
        v138 = sub_24AEF599C(v135, v136, v242);

        *(v129 + 4) = v138;
        v11 = v137;
        _os_log_impl(&dword_24AECF000, v123, v124, "%s: Got unexpected response!", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v131);
        MEMORY[0x24C236490](v131, -1, -1);
        MEMORY[0x24C236490](v129, -1, -1);

        (*(v128 + 8))(v126, v127);
      }

      else
      {

        (*(v128 + 8))(v126, v127);
      }
    }

    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v152 = v0[53];
    v153 = v0[47];
    v154 = v0[45];
    v155 = v0[25];
    v156 = sub_24AF3529C();
    __swift_project_value_buffer(v156, qword_281392F00);
    v157 = v155;
    v158 = *(v154 + 16);
    v158(v153, v152, v157);

    v159 = sub_24AF3527C();
    v160 = sub_24AF3572C();

    v235 = v11;
    if (os_log_type_enabled(v159, v160))
    {
      v220 = v0[56];
      v225 = v0[57];
      v161 = v0[50];
      logb = v0[47];
      v162 = v0[45];
      v163 = v0[25];
      v237 = v160;
      v210 = v0[15];
      v215 = v0[16];
      v164 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v242[0] = v231;
      *v164 = 136316163;
      v168 = sub_24AEE5B34(v231, v165, v166, v167);
      v170 = sub_24AEF599C(v168, v169, v242);

      *(v164 + 4) = v170;
      *(v164 + 12) = 2082;
      *(v164 + 14) = sub_24AEF599C(v210, v215, v242);
      *(v164 + 22) = 2160;
      *(v164 + 24) = 1752392040;
      *(v164 + 32) = 2081;
      *(v164 + 34) = sub_24AEF599C(v220, v225, v242);
      *(v164 + 42) = 2082;
      v158(v161, logb, v163);
      v171 = *(v162 + 8);
      v171(logb, v163);
      v172 = Message.description.getter(v163);
      v174 = v173;
      v171(v161, v163);
      v175 = sub_24AEF599C(v172, v174, v242);

      *(v164 + 44) = v175;
      _os_log_impl(&dword_24AECF000, v159, v237, "%s: Received message on %{public}s from %{private,mask.hash}s: %{public}s", v164, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v231, -1, -1);
      MEMORY[0x24C236490](v164, -1, -1);
    }

    else
    {
      v171 = *(v0[45] + 8);
      v171(v0[47], v0[25]);
    }

    v176 = v158;
    v177 = v0[20];
    v178 = *(v177 + 200);
    if (v178)
    {
      v211 = *(v0 + 536);
      v216 = v0[56];
      v221 = v0[57];
      v203 = v0[54];
      v206 = v0[55];
      v179 = v0[53];
      v232 = v171;
      v180 = v0[50];
      v181 = v176;
      v200 = v0[46];
      v238 = v0[45];
      v182 = v0[42];
      v195 = v0[40];
      v183 = v0[25];
      v184 = v0[22];
      v226 = v184;
      v185 = v0[19];
      v186 = *(v177 + 208);
      v187 = sub_24AF3557C();
      v197 = *(v0 + 23);
      (*(*(v187 - 8) + 56))(v184, 1, 1, v187);
      v181(v180, v179, v183);
      sub_24AEF8F7C(v185, v182, type metadata accessor for MessageContext);
      v188 = (*(v238 + 80) + 104) & ~*(v238 + 80);
      v189 = (v200 + *(v195 + 80) + v188) & ~*(v195 + 80);
      v190 = swift_allocObject();
      *(v190 + 16) = 0;
      *(v190 + 24) = 0;
      *(v190 + 32) = v197;
      *(v190 + 48) = v178;
      *(v190 + 56) = v186;
      *(v190 + 64) = v203;
      *(v190 + 72) = v206;
      *(v190 + 80) = v211;
      *(v190 + 88) = v216;
      *(v190 + 96) = v221;
      v235(v190 + v188, v180, v183);
      sub_24AEF9044(v182, v190 + v189, type metadata accessor for MessageContext);
      sub_24AED1164(v178, v186);

      sub_24AED1164(v178, v186);

      sub_24AF08F10(0, 0, v226, &unk_24AF380F8, v190);

      sub_24AED56FC(v178, v186);
      v232(v179, v183);
    }

    else
    {
      v171(v0[53], v0[25]);
    }
  }

LABEL_48:

  v191 = v0[1];

  return v191();
}

uint64_t sub_24AEF253C()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_24AEF2B68;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_24AEF2664;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEF2664()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 536);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 208);
  v21 = *(v0 + 152);
  v22 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24AF37AB0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v22;
  *(v9 + 48) = v1;
  (*(v7 + 16))(v5, v21 + *(v8 + 20), v6);
  v10 = *(v7 + 56);
  v10(v5, 0, 1, v6);

  v11 = MEMORY[0x277D84F90];
  v23 = sub_24AEF6B54(MEMORY[0x277D84F90]);
  v12 = sub_24AEF6B54(v11);
  v13 = v4[7];
  v10(v3 + v13, 1, 1, v6);
  sub_24AF3520C();
  *(v3 + v4[5]) = v9;
  *(v3 + v4[6]) = 0;
  sub_24AEF8E70(v5, v3 + v13);
  v14 = v3 + v4[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + v4[9]) = 0;
  *(v3 + v4[10]) = v23;
  *(v3 + v4[11]) = v12;
  v15 = (v3 + v4[12]);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + v4[13]) = xmmword_24AF37E10;
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_24AEF287C;
  v17 = *(v0 + 392);
  v18 = *(v0 + 312);
  v19 = *(v0 + 280);

  return InternetMessaging.send(message:messageOptions:)(v19, v17, v18);
}

uint64_t sub_24AEF287C()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = sub_24AEF2E74;
  }

  else
  {
    v5 = v2[20];
    (*(v2[31] + 8))(v2[35], v2[30]);
    v4 = sub_24AEF29B4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEF29B4()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[45];
  v4 = v0[39];
  v5 = v0[25];
  sub_24AED56FC(v0[58], v0[59]);
  v6 = *(v3 + 8);
  v6(v2, v5);
  v6(v1, v5);
  sub_24AEF8FE4(v4, type metadata accessor for MessagingOptions);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AEF2B68()
{
  v28 = v0;

  v1 = v0[64];
  v2 = v0[61];
  v3 = v1;
  v4 = sub_24AF3527C();
  v5 = sub_24AF3570C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[58];
  v8 = v0[53];
  v9 = v0[25];
  if (v6)
  {
    v26 = v0[53];
    v24 = v0[59];
    v10 = swift_slowAlloc();
    v25 = v9;
    v11 = swift_slowAlloc();
    v23 = v2;
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136446466;
    v16 = sub_24AEE5B34(v12, v13, v14, v15);
    v18 = sub_24AEF599C(v16, v17, &v27);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2114;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v20;
    *v11 = v20;
    _os_log_impl(&dword_24AECF000, v4, v5, "%{public}s: Error sending response: %{public}@", v10, 0x16u);
    sub_24AEE2E10(v11, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C236490](v12, -1, -1);
    MEMORY[0x24C236490](v10, -1, -1);
    sub_24AED56FC(v7, v24);

    v23(v26, v25);
  }

  else
  {
    sub_24AED56FC(v0[58], v0[59]);

    v2(v8, v9);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AEF2E74()
{
  v29 = v0;
  v1 = v0[39];
  v2 = *(v0[45] + 8);
  v2(v0[49], v0[25]);
  sub_24AEF8FE4(v1, type metadata accessor for MessagingOptions);
  v3 = v0[66];
  v4 = v3;
  v5 = sub_24AF3527C();
  v6 = sub_24AF3570C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[58];
  v9 = v0[53];
  v10 = v0[25];
  if (v7)
  {
    v27 = v0[53];
    v25 = v0[59];
    v11 = swift_slowAlloc();
    v26 = v10;
    v12 = swift_slowAlloc();
    v24 = v2;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v11 = 136446466;
    v17 = sub_24AEE5B34(v13, v14, v15, v16);
    v19 = sub_24AEF599C(v17, v18, &v28);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2114;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&dword_24AECF000, v5, v6, "%{public}s: Error sending response: %{public}@", v11, 0x16u);
    sub_24AEE2E10(v12, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C236490](v13, -1, -1);
    MEMORY[0x24C236490](v11, -1, -1);
    sub_24AED56FC(v8, v25);

    v24(v27, v26);
  }

  else
  {
    sub_24AED56FC(v0[58], v0[59]);

    v2(v9, v10);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_24AEF31B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 104) = v11;
  *(v8 + 112) = v12;
  *(v8 + 88) = v10;
  *(v8 + 136) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  return MEMORY[0x2822009F8](sub_24AEF31F0, 0, 0);
}

uint64_t sub_24AEF31F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 72);
  v4 = *(v0 + 56);
  *(v0 + 48) = v3;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v5 = sub_24AEE2954(MEMORY[0x277D84F90]);
  *(v0 + 120) = v5;
  v10 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_24AEF3334;
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  return v10(v0 + 40, v0 + 16, v7, v5, v8);
}

uint64_t sub_24AEF3334()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AEF3444(void (*a1)(char *, uint64_t), unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v105 = a7;
  v112 = a5;
  v114 = *v7;
  v12 = v114;
  v13 = type metadata accessor for MessageContext(0);
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = v14;
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v15 - 8);
  v111 = &v89 - v16;
  v17 = *(v12 + 80);
  v101 = *(v12 + 88);
  v102 = v17;
  v19 = type metadata accessor for Message(0, v17, v101, v18);
  v113 = *(v19 - 8);
  isa = v113[8].isa;
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v89 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v106 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  v29 = a3[1];
  v99 = *a3;
  v100 = v29;
  v98 = *a6;
  v30 = *(a6 + 1);
  v107 = *(a6 + 2);
  v108 = v30;
  v32 = v7[14];
  v31 = v7[15];
  v115 = a1;
  if (__PAIR128__(v31, v32) == __PAIR128__(a2, a1) || (sub_24AF35C4C() & 1) != 0)
  {
    v33 = sub_24AF3514C();
    v35 = v34;
    v97 = v7;
    sub_24AF3508C();
    swift_allocObject();
    sub_24AF3507C();
    swift_getWitnessTable();
    sub_24AF3505C();
    sub_24AED6198(v33, v35);

    v47 = v113;
    v48 = v113[4].isa;
    v94 = v113 + 4;
    v93 = v48;
    (v48)(v28, v26, v19);
    v49 = v19;
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v50 = sub_24AF3529C();
    __swift_project_value_buffer(v50, qword_281392F00);
    v51 = v47[2].isa;
    v52 = v106;
    v96 = v28;
    v95 = v47 + 2;
    v51(v106, v28, v19);
    v53 = a2;

    v54 = v107;

    v55 = sub_24AF3527C();
    v56 = sub_24AF3572C();

    v91 = v56;
    v57 = os_log_type_enabled(v55, v56);
    v92 = v51;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90 = v59;
      v116[0] = v59;
      *v58 = 136316419;
      v89 = v55;
      v63 = sub_24AEE5B34(v59, v60, v61, v62);
      v65 = sub_24AEF599C(v63, v64, v116);

      *(v58 + 4) = v65;
      *(v58 + 12) = 2082;
      *(v58 + 14) = sub_24AEF599C(v115, v53, v116);
      *(v58 + 22) = 2160;
      *(v58 + 24) = 1752392040;
      *(v58 + 32) = 2081;
      *(v58 + 34) = sub_24AEF599C(v108, v54, v116);
      *(v58 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0918, &qword_24AF380D8);
      v66 = sub_24AF3530C();
      v68 = sub_24AEF599C(v66, v67, v116);

      *(v58 + 44) = v68;
      v49 = v19;
      *(v58 + 52) = 2082;
      v69 = v109;
      v51(v109, v52, v49);
      v70 = v113[1].isa;
      (v70)(v52, v49);
      v71 = Message.description.getter(v49);
      v73 = v72;
      (v70)(v69, v49);
      v74 = sub_24AEF599C(v71, v73, v116);

      *(v58 + 54) = v74;
      v75 = v89;
      _os_log_impl(&dword_24AECF000, v89, v91, "%s: Received (resource) message on %{public}s from %{private,mask.hash}s: metadata: %s'; message: %{public}s", v58, 0x3Eu);
      v76 = v90;
      swift_arrayDestroy();
      MEMORY[0x24C236490](v76, -1, -1);
      MEMORY[0x24C236490](v58, -1, -1);

      v77 = v97;
      v47 = v113;
      v78 = v97[25];
      if (v78)
      {
LABEL_15:
        v114 = v77[26];
        v79 = sub_24AF3557C();
        (*(*(v79 - 8) + 56))(v111, 1, 1, v79);
        v115 = v70;
        v80 = v54;
        v81 = v109;
        v92(v109, v96, v49);
        sub_24AEF8F7C(v105, v110, type metadata accessor for MessageContext);
        v82 = (LOBYTE(v47[10].isa) + 104) & ~LOBYTE(v47[10].isa);
        v83 = (isa + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = (*(v103 + 80) + v83 + 8) & ~*(v103 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = 0;
        *(v85 + 24) = 0;
        v86 = v101;
        *(v85 + 32) = v102;
        *(v85 + 40) = v86;
        v87 = v114;
        *(v85 + 48) = v78;
        *(v85 + 56) = v87;
        v88 = v100;
        *(v85 + 64) = v99;
        *(v85 + 72) = v88;
        *(v85 + 80) = v98;
        *(v85 + 88) = v108;
        *(v85 + 96) = v80;
        v93(v85 + v82, v81, v49);
        *(v85 + v83) = v112;
        sub_24AEF9044(v110, v85 + v84, type metadata accessor for MessageContext);
        sub_24AED1164(v78, v87);

        sub_24AED1164(v78, v87);

        sub_24AF08F10(0, 0, v111, &unk_24AF380D0, v85);

        sub_24AED56FC(v78, v87);
        v115(v96, v49);
        return;
      }
    }

    else
    {
      v70 = v47[1].isa;
      (v70)(v52, v19);

      v77 = v97;
      v78 = v97[25];
      if (v78)
      {
        goto LABEL_15;
      }
    }

    (v70)(v96, v49);
  }

  else
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_281392F00);

    v113 = sub_24AF3527C();
    v37 = sub_24AF3570C();

    if (os_log_type_enabled(v113, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v116[0] = v39;
      *v38 = 136446722;
      v43 = sub_24AEE5B34(v39, v40, v41, v42);
      v45 = sub_24AEF599C(v43, v44, v116);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_24AEF599C(v32, v31, v116);
      *(v38 + 22) = 2082;
      *(v38 + 24) = sub_24AEF599C(v115, a2, v116);
      _os_log_impl(&dword_24AECF000, v113, v37, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v39, -1, -1);
      MEMORY[0x24C236490](v38, -1, -1);
    }

    else
    {
      v46 = v113;
    }
  }
}

uint64_t sub_24AEF4064(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 16) = a8;
  *(v8 + 24) = v13;
  *(v8 + 32) = v14;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v8 + 56) = v9;
  *v9 = v8;
  v9[1] = sub_24AEF9E08;

  return v11(v8 + 40, v8 + 16);
}

uint64_t sub_24AEF419C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 16) = a8;
  *(v8 + 24) = v13;
  *(v8 + 32) = v14;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v8 + 56) = v9;
  *v9 = v8;
  v9[1] = sub_24AEF42C8;

  return v11(v8 + 40, v8 + 16);
}

uint64_t sub_24AEF42C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AEF43BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 48) = a5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AEF43E4, v6, 0);
}

uint64_t sub_24AEF43E4()
{
  sub_24AEF75F0(*(v0 + 16), *(v0 + 24), *(v0 + 48), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEF444C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AEF9DD0;

  return sub_24AEF7A84(a3, a4, a5);
}

uint64_t sub_24AEF4510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24AEF9DD0;

  return sub_24AEF0954(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24AEF45F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_24AEF4620, v7, 0);
}

uint64_t sub_24AEF4620()
{
  sub_24AEF3444(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEF468C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_24AEF9DD0;

  return sub_24AEF7DA8(a1, a2, a3, a4, a6, a7);
}

uint64_t sub_24AEF4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return sub_24AEF841C(a3);
}

uint64_t sub_24AEF4824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return sub_24AEF8694(a3);
}

uint64_t sub_24AEF48E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEF4938(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEF4988(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEF49D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEF4A28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t InternetMessaging.setReplyCallback(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  *(v2 + 264) = a1;
  *(v2 + 272) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEF4AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AEF4B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 240) = a2;
  *(v4 + 248) = v3;
  *(v4 + 232) = a1;
  *(v4 + 256) = *v3;
  v5 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a3 + 64);
  v6 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v6;
  return MEMORY[0x2822009F8](sub_24AEF4B74, v3, 0);
}

uint64_t sub_24AEF4B74()
{
  v44 = v0;
  v1 = *(v0 + 248);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == *(v0 + 232) && v3 == *(v0 + 240);
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_281392F00);

    sub_24AEF7540(v0 + 16, v0 + 88);
    v6 = sub_24AF3527C();
    v7 = sub_24AF3572C();

    sub_24AEF759C(v0 + 16);
    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 232);
      v8 = *(v0 + 240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136315907;
      v15 = sub_24AEE5B34(v11, v12, v13, v14);
      v17 = sub_24AEF599C(v15, v16, &v43);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_24AEF599C(v9, v8, &v43);
      *(v10 + 22) = 2160;
      *(v10 + 24) = 1752392040;
      *(v10 + 32) = 2081;
      v18 = *(v0 + 48);
      v19 = *(v0 + 56);

      v20 = sub_24AEF599C(v18, v19, &v43);

      *(v10 + 34) = v20;
      _os_log_impl(&dword_24AECF000, v6, v7, "%s: Received IDS session invite on %{public}s from %{private,mask.hash}s", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v11, -1, -1);
      MEMORY[0x24C236490](v10, -1, -1);
    }

    v21 = *(v0 + 248);
    v22 = *(v21 + 280);
    *(v0 + 264) = v22;
    if (v22)
    {
      v23 = *(v21 + 288);
      *(v0 + 272) = v23;
      v24 = *(v0 + 64);
      *(v0 + 192) = *(v0 + 48);
      *(v0 + 208) = v24;
      *(v0 + 224) = *(v0 + 80);
      v25 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v25;
      sub_24AED1164(v22, v23);
      v41 = (v22 + *v22);
      v26 = swift_task_alloc();
      *(v0 + 280) = v26;
      *v26 = v0;
      v26[1] = sub_24AEF5054;

      return v41(v0 + 160);
    }
  }

  else
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v28 = sub_24AF3529C();
    __swift_project_value_buffer(v28, qword_281392F00);

    v29 = sub_24AF3527C();
    v30 = sub_24AF3570C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 232);
      v42 = *(v0 + 240);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446722;
      v37 = sub_24AEE5B34(v33, v34, v35, v36);
      v39 = sub_24AEF599C(v37, v38, &v43);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_24AEF599C(v2, v3, &v43);
      *(v32 + 22) = 2082;
      *(v32 + 24) = sub_24AEF599C(v31, v42, &v43);
      _os_log_impl(&dword_24AECF000, v29, v30, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v33, -1, -1);
      MEMORY[0x24C236490](v32, -1, -1);
    }
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_24AEF5054()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_24AEF5164, v1, 0);
}

uint64_t sub_24AEF5164()
{
  sub_24AED56FC(v0[33], v0[34]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AEF51C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AEF9DD0;

  return sub_24AEF4B10(a1, a2, a3);
}

uint64_t InternetMessaging.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InternetMessaging(0, *(*v4 + 80), *(*v4 + 88), a4);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_24AF35BEC();
  MEMORY[0x24C235440](v7);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  v8 = MEMORY[0x24C235C50](v5, WitnessTable);
  MEMORY[0x24C235440](v8);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  MEMORY[0x24C235440](v4[14], v4[15]);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AEF53BC()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281393410);
  __swift_project_value_buffer(v0, qword_281393410);
  return sub_24AF3528C();
}

char *sub_24AEF543C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0940, &qword_24AF381C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AEF555C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0930, &qword_24AF38110);
  v10 = *(type metadata accessor for CorrelationIdentifier(0) - 8);
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
  v15 = *(type metadata accessor for CorrelationIdentifier(0) - 8);
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

char *sub_24AEF5734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AEF5854(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0910, &qword_24AF38078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0778, &qword_24AF38080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24AEF599C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AEF5A68(v11, 0, 0, 1, a1, a2);
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
    sub_24AED0E50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AEF5A68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AEF5B74(a5, a6);
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
    result = sub_24AF3597C();
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

void *sub_24AEF5B74(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AEF5BC0(a1, a2);
  sub_24AEF5CF0(&unk_285E3D5D8);
  return v3;
}

void *sub_24AEF5BC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AEF5DDC(v5, 0);
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

  result = sub_24AF3597C();
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
        v10 = sub_24AF353FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AEF5DDC(v10, 0);
        result = sub_24AF3591C();
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

uint64_t sub_24AEF5CF0(uint64_t result)
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

  result = sub_24AEF5E50(result, v11, 1, v3);
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

void *sub_24AEF5DDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0960, &qword_24AF381E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AEF5E50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0960, &qword_24AF381E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_24AEF5F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AF3535C();

  return sub_24AEF5FA0(a1, v6, a2, a3);
}

unint64_t sub_24AEF5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_24AF3537C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

char *sub_24AEF6128(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AEF61A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AEF6148(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AEF62B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24AEF6168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AEF63C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AEF6188(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AEF650C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AEF61A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0958, &qword_24AF381D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AEF62B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0938, &unk_24AF39A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_24AEF63C4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0948, &qword_24AF381C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[20 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 160 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0950, &qword_24AF381D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AEF650C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0908, &qword_24AF38070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24AEF6664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24AF354EC())
  {
    sub_24AF35A8C();
    v13 = sub_24AF35A7C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24AF354EC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24AF354DC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24AF3593C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24AEF5F44(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

double sub_24AEF6968(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24AEF69E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24AEF69F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2356E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AEDD8D4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AEF6AC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2356E0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_24AEE2A84(v4, v5);
      sub_24AEDDA24(v6, v5);
      sub_24AEE2AE0(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24AEF6B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AEF74EC();
  v4 = MEMORY[0x24C2356E0](v2, &type metadata for MessagingCapability, v3);
  if (!v2)
  {
    return v4;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 + 56;
    while (1)
    {
      v7 = *(a1 + 32 + v5++);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v7);
      v8 = sub_24AF35D4C();
      v9 = -1 << *(v4 + 32);
      v10 = v8 & ~v9;
      if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        break;
      }

      v11 = ~v9;
      while (*(*(v4 + 48) + v10) != v7)
      {
        v10 = (v10 + 1) & v11;
        if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v5 == v2)
      {
        return v4;
      }
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + 16);
    if (*(v4 + 24) > v13)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24AEE0590();
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_24AEDE984();
    }

    else
    {
      sub_24AEE0FE0(v13 + 1);
    }

    sub_24AF35D0C();
    MEMORY[0x24C235D70](v7);
    v14 = sub_24AF35D4C();
    v15 = -1 << *(v4 + 32);
    v10 = v14 & ~v15;
    if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      break;
    }

LABEL_21:
    *(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v10;
    *(*(v4 + 48) + v10) = v7;
    v17 = *(v4 + 16);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      goto LABEL_25;
    }

    *(v4 + 16) = v19;
    if (v5 == v2)
    {
      return v4;
    }
  }

  v16 = ~v15;
  while (*(*(v4 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v16;
    if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEF6D74(uint64_t a1)
{
  v2 = type metadata accessor for CorrelationIdentifier(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24AEF8F34(&qword_27EFC0928, type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
  result = MEMORY[0x24C2356E0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24AEF8F7C(v12, v6, type metadata accessor for CorrelationIdentifier);
      sub_24AEDDB70(v8, v6);
      sub_24AEF8FE4(v8, type metadata accessor for CorrelationIdentifier);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24AEF6F00(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AEF8EE0();
  result = MEMORY[0x24C2356E0](v2, &type metadata for Destination, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 16);

      sub_24AEDE1E0(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24AEF6FA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AEF7494();
  result = MEMORY[0x24C2356E0](v2, &type metadata for Account, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_24AEDE374(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_24AEF7038()
{
  result = qword_27EFC0900;
  if (!qword_27EFC0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0900);
  }

  return result;
}

uint64_t dispatch thunk of InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 512) + **(v4 + 512));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AEE1D70;

  return v12(a1, a2, a3, a4);
}

unint64_t sub_24AEF7494()
{
  result = qword_281392EF0;
  if (!qword_281392EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392EF0);
  }

  return result;
}

unint64_t sub_24AEF74EC()
{
  result = qword_281393270[0];
  if (!qword_281393270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281393270);
  }

  return result;
}

void sub_24AEF75F0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v35 - v13;
  swift_beginAccess();
  if (*(*(v4 + 168) + 16))
  {

    sub_24AEDA254(a2);
    if (v15)
    {

      if (a3)
      {
        sub_24AF3500C();
      }

      else
      {
        if (a4)
        {
          v31 = a4;
        }

        else
        {
          v32 = sub_24AF34FEC();
          sub_24AEF8F34(&qword_27EFC07F8, MEMORY[0x277D08938], MEMORY[0x277D08940]);
          v31 = swift_allocError();
          *v33 = 0xD00000000000001CLL;
          v33[1] = 0x800000024AF36E80;
          (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D08930], v32);
        }

        v35[0] = v31;
        v34 = a4;
        sub_24AF34FFC();
      }

      (*(v9 + 16))(v14, a2, v8);
      swift_beginAccess();
      sub_24AF09284(0, v14);
      swift_endAccess();

      return;
    }
  }

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24AF3529C();
  __swift_project_value_buffer(v16, qword_281392F00);
  (*(v9 + 16))(v12, a2, v8);
  v17 = sub_24AF3527C();
  v18 = sub_24AF3570C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136446466;
    v24 = sub_24AEE5B34(v20, v21, v22, v23);
    v26 = sub_24AEF599C(v24, v25, v35);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_24AF35C0C();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v30 = sub_24AEF599C(v27, v29, v35);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_24AECF000, v17, v18, "%{public}s: Got didSend callback for unsent message! %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v20, -1, -1);
    MEMORY[0x24C236490](v19, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_24AEF7A84(void *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  v5 = a1[1];
  *(v4 + 72) = *a1;
  *(v4 + 80) = v5;
  *(v4 + 128) = *a3;
  v6 = *(a3 + 16);
  *(v4 + 88) = *(a3 + 8);
  *(v4 + 96) = v6;
  return MEMORY[0x2822009F8](sub_24AEF7ABC, v3, 0);
}

uint64_t sub_24AEF7ABC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 184);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 128);
    v5 = *(v0 + 80);
    v6 = *(v1 + 192);
    *(v0 + 40) = *(v0 + 72);
    *(v0 + 112) = v6;
    *(v0 + 48) = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v3;

    v11 = (v2 + *v2);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_24AEF7C38;
    v8 = *(v0 + 56);

    return v11(v0 + 40, v8, v0 + 16);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24AEF7C38()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AEF7D48, v1, 0);
}

uint64_t sub_24AEF7D48()
{
  sub_24AED56FC(v0[13], v0[14]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AEF7DA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  *(v7 + 56) = *v6;
  v10 = *(type metadata accessor for MessageContext(0) - 8);
  *(v7 + 64) = v10;
  *(v7 + 72) = *(v10 + 64);
  *(v7 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v11 = swift_task_alloc();
  v12 = *a3;
  v13 = a3[1];
  *(v7 + 88) = v11;
  *(v7 + 96) = v12;
  *(v7 + 128) = *a5;
  v14 = *(a5 + 8);
  v15 = *(a5 + 16);
  *(v7 + 104) = v13;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;

  return MEMORY[0x2822009F8](sub_24AEF7EFC, v6, 0);
}

uint64_t sub_24AEF7EFC()
{
  v52 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_281392F00);

    v6 = sub_24AF3527C();
    v7 = sub_24AF3572C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 112);
      v49 = *(v0 + 120);
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315907;
      v16 = sub_24AEE5B34(v12, v13, v14, v15);
      v18 = sub_24AEF599C(v16, v17, &v51);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_24AEF599C(v10, v9, &v51);
      *(v11 + 22) = 2160;
      *(v11 + 24) = 1752392040;
      *(v11 + 32) = 2081;
      *(v11 + 34) = sub_24AEF599C(v8, v49, &v51);
      _os_log_impl(&dword_24AECF000, v6, v7, "%s: Received raw dictionary on %{public}s from %{private,mask.hash}s", v11, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v12, -1, -1);
      MEMORY[0x24C236490](v11, -1, -1);
    }

    v19 = *(v0 + 48);
    v20 = *(v19 + 216);
    if (v20)
    {
      v21 = *(v0 + 120);
      v47 = *(v0 + 128);
      v45 = *(v0 + 96);
      v46 = *(v0 + 104);
      v23 = *(v0 + 80);
      v22 = *(v0 + 88);
      v48 = *(v0 + 112);
      v24 = *(v0 + 64);
      v25 = *(v0 + 32);
      v26 = *(v0 + 40);
      v27 = *(v19 + 224);
      v28 = sub_24AF3557C();
      (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
      sub_24AEF8F7C(v26, v23, type metadata accessor for MessageContext);
      v29 = (*(v24 + 80) + 96) & ~*(v24 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v20;
      *(v30 + 40) = v27;
      *(v30 + 48) = v45;
      *(v30 + 56) = v46;
      *(v30 + 64) = v47;
      *(v30 + 72) = v48;
      *(v30 + 80) = v21;
      *(v30 + 88) = v25;
      sub_24AEF9044(v23, v30 + v29, type metadata accessor for MessageContext);

      sub_24AED1164(v20, v27);

      sub_24AF08F10(0, 0, v22, &unk_24AF380B8, v30);
    }
  }

  else
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v31 = sub_24AF3529C();
    __swift_project_value_buffer(v31, qword_281392F00);

    v32 = sub_24AF3527C();
    v33 = sub_24AF3570C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 16);
      v50 = *(v0 + 24);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136446722;
      v40 = sub_24AEE5B34(v36, v37, v38, v39);
      v42 = sub_24AEF599C(v40, v41, &v51);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_24AEF599C(v2, v3, &v51);
      *(v35 + 22) = 2082;
      *(v35 + 24) = sub_24AEF599C(v34, v50, &v51);
      _os_log_impl(&dword_24AECF000, v32, v33, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v36, -1, -1);
      MEMORY[0x24C236490](v35, -1, -1);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_24AEF841C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AEF843C, v1, 0);
}

uint64_t sub_24AEF843C()
{
  v1 = v0[3];
  v2 = *(v1 + 232);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 240);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AEF8584;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AEF8584()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_24AEF9E0C, v1, 0);
}

uint64_t sub_24AEF8694(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AEF86B4, v1, 0);
}

uint64_t sub_24AEF86B4()
{
  v1 = v0[3];
  v2 = *(v1 + 248);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 256);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AEF87FC;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AEF87FC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_24AEF890C, v1, 0);
}

uint64_t sub_24AEF890C()
{
  sub_24AED56FC(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AEF896C(uint64_t a1)
{
  type metadata accessor for MessageContext(0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AEF419C(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24AEF8AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Message(0, *(v4 + 32), *(v4 + 40), a4);
  type metadata accessor for MessageContext(0);
  v13 = *(v4 + 24);
  v14 = *(v4 + 16);
  v11 = *(v4 + 56);
  v12 = *(v4 + 48);
  v6 = *(v4 + 64);
  v10 = *(v4 + 72);
  v7 = *(v4 + 80);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_24AEF9DD0;

  return sub_24AEF4064(a1, v14, v13, v12, v11, v6, v10, v7);
}

uint64_t sub_24AEF8C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AEF8CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Message(0, *(v4 + 32), *(v4 + 40), a4);
  type metadata accessor for MessageContext(0);
  v13 = *(v4 + 24);
  v14 = *(v4 + 16);
  v6 = *(v4 + 56);
  v7 = *(v4 + 64);
  v11 = *(v4 + 72);
  v12 = *(v4 + 48);
  v8 = *(v4 + 80);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AEF9DD0;

  return sub_24AEF31B4(a1, v14, v13, v12, v6, v7, v11, v8);
}

uint64_t sub_24AEF8E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AEF8EE0()
{
  result = qword_27EFC0920;
  if (!qword_27EFC0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0920);
  }

  return result;
}

uint64_t sub_24AEF8F34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AEF8F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AEF8FE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AEF9044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AEF90AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessagingOptions(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEEDB4C(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_24AEF91F4(uint64_t a1)
{
  v4 = *(type metadata accessor for MessagingOptions(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AEEFC0C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24AEF9324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for Message(0, v4[4], v4[5], a4) - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MessagingOptions(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v4[2];
  v14 = v4[3];
  v15 = v4[6];
  v16 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_24AEE555C;

  return sub_24AEEC450(a1, v13, v14, v15, v4 + v9, v4 + v12, v16);
}

uint64_t sub_24AEF94B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for Message(0, v4[2], v4[3], a4) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MessagingOptions(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v4[4];
  v14 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24AEE555C;

  return sub_24AEEF4F4(a1, v13, v4 + v9, v4 + v12, v14);
}

uint64_t sub_24AEF9638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Message(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for MessagingOptions(0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = *(v4 + v8);
  v15 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_24AEF9DD0;

  return sub_24AEEA540(a1, v11, v12, v13, v4 + v7, v14, v4 + v10, v15);
}

uint64_t sub_24AEF97FC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(sub_24AF3513C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for MessagingOptions(0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v15 = *(type metadata accessor for Message(0, v5, v6, v14) - 8);
  v16 = (v12 + v13 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = v1[4];
  v18 = *(v1 + v9);
  v19 = *(v1 + v10);
  v20 = *(v1 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = sub_24AEF9DD0;

  return sub_24AEEECCC(a1, v17, v1 + v8, v18, v19, v1 + v12, v1 + v16, v20);
}

uint64_t sub_24AEF9A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Message(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessagingOptions(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v4[3];
  v18 = v4[2];
  v12 = v4[6];
  v13 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_24AEF9DD0;

  return sub_24AEE8AF4(a1, v18, v11, v12, v4 + v7, v4 + v10, v14, v15);
}

uint64_t sub_24AEF9BD8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(type metadata accessor for MessagingOptions(0) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for Message(0, v5, v6, v10) - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_24AEF9DD0;

  return sub_24AEEE4D8(a1, v13, v14, v15, v16, v1 + v8, v1 + v12, v17);
}

uint64_t sub_24AEF9E10(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v41 = sub_24AF3521C();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for CorrelationIdentifier(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = (&v34 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {
    return 0;
  }

  v18 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v42 = *(v14 + 72);
  v39 = (v3 + 8);
  v35 = (v3 + 32);
  v36 = v8;
  while (1)
  {
    sub_24AEE2B34(v18, v16);
    v19 = &v7[*(v5 + 48)];
    sub_24AEE2B34(v16, v7);
    sub_24AEE2B34(v43, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24AEE2B34(v7, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = v5;
        v21 = v37;
        v22 = v19;
        v23 = v41;
        (*v35)(v37, v22, v41);
        v38 = sub_24AF351FC();
        v24 = *v39;
        v25 = v21;
        v5 = v20;
        (*v39)(v25, v23);
        v24(v11, v23);
        sub_24AEE2B98(v7);
        if (v38)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }

      (*v39)(v11, v41);
LABEL_4:
      sub_24AEFE584(v7);
      goto LABEL_5;
    }

    v26 = v40;
    sub_24AEE2B34(v7, v40);
    v28 = *v26;
    v27 = v26[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_4;
    }

    v29 = *v19;
    v30 = *(v19 + 1);
    if (v28 == v29 && v27 == v30)
    {
      break;
    }

    v32 = sub_24AF35C4C();

    if (v32)
    {
      goto LABEL_20;
    }

    sub_24AEE2B98(v7);
LABEL_5:
    sub_24AEE2B98(v16);
    v18 += v42;
    if (!--v17)
    {
      return 0;
    }
  }

LABEL_20:
  sub_24AEE2B98(v7);
LABEL_21:
  sub_24AEE2B98(v16);
  return 1;
}

uint64_t sub_24AEFA1E8()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0978);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0978);
  if (qword_27EFC06F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_24AEFA2D8, 0, 0);
}

{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_24AEFBAFC, 0, 0);
}

id sub_24AEFA2D8()
{
  Controller = type metadata accessor for QueryController();
  v2 = swift_allocObject();
  v0[17] = v2;
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = v0[12];
    v4 = v0[13];
    v2[14] = result;
    v2[15] = v5;
    v2[16] = v4;
    v0[5] = Controller;
    v0[6] = &protocol witness table for QueryController;
    v0[2] = v2;

    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_24AEFA404;
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[14];

    return sub_24AEFA600((v0 + 7), (v0 + 2), v9, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AEFA404()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24AEFA594;
  }

  else
  {
    v2 = sub_24AEFA518;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEFA518()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 72);
  *v1 = *(v0 + 56);
  v1[1] = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AEFA594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEFA600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for CorrelationIdentifier(0);
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEFA710, 0, 0);
}

uint64_t sub_24AEFA710()
{
  result = *(v0 + 200);
  v2 = *(result + 16);
  *(v0 + 296) = v2;
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = MEMORY[0x277D84F98];
    *(v0 + 312) = 0;
    *(v0 + 320) = v4;
    *(v0 + 304) = v4;
    if (*(result + 16))
    {
      v5 = *(result + 32);
      *(v0 + 376) = v5;
      v6 = *(result + 40);
      *(v0 + 328) = v6;
      v7 = *(result + 48);
      *(v0 + 336) = v7;
      v8 = v3[3];
      v9 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v8);
      *(v0 + 16) = v5;
      *(v0 + 24) = v6;
      *(v0 + 32) = v7;
      v10 = *(v9 + 8);

      v18 = (v10 + *v10);
      v11 = swift_task_alloc();
      *(v0 + 344) = v11;
      *v11 = v0;
      v11[1] = sub_24AEFA994;

      return v18(v0 + 16, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);

    v16 = MEMORY[0x277D84F98];
    *v14 = MEMORY[0x277D84F98];
    v14[1] = v16;
    v14[2] = v12;
    v14[3] = v13;
    swift_bridgeObjectRetain_n();

    __swift_destroy_boxed_opaque_existential_0(v15);
    swift_bridgeObjectRelease_n();

    v17 = *(v0 + 8);

    return v17();
  }

  return result;
}

uint64_t sub_24AEFA994(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {

    v5 = sub_24AEFB9D4;
  }

  else
  {
    v5 = sub_24AEFAAB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t sub_24AEFAAB4()
{
  v161 = v0;
  v1 = *(v0 + 360);
  if (!v1)
  {
    if (qword_27EFC0700 == -1)
    {
LABEL_7:
      v20 = sub_24AF3529C();
      __swift_project_value_buffer(v20, qword_27EFC0978);

      v21 = sub_24AF3527C();
      v22 = sub_24AF3570C();

      if (os_log_type_enabled(v21, v22))
      {
        v24 = *(v0 + 328);
        v23 = *(v0 + 336);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v160 = v26;
        *v25 = 141558275;
        *(v25 + 4) = 1752392040;
        *(v25 + 12) = 2081;

        v27 = sub_24AEF599C(v24, v23, &v160);

        *(v25 + 14) = v27;
        _os_log_impl(&dword_24AECF000, v21, v22, "CorrelationIdentifierMap: No correlationIdentifier for %{private,mask.hash}s!", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x24C236490](v26, -1, -1);
        MEMORY[0x24C236490](v25, -1, -1);
      }

      v15 = *(v0 + 328);
      v1 = *(v0 + 336);
      v28 = *(v0 + 320);
      v29 = *(v0 + 248);
      v157 = *(v0 + 240);
      v30 = *(v0 + 224);
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      v31 = *(v0 + 376);
      sub_24AF3592C();

      *(v0 + 112) = 0xD00000000000001FLL;
      *(v0 + 120) = 0x800000024AF370C0;
      MEMORY[0x24C235440](v15, v1);
      MEMORY[0x24C235440](93, 0xE100000000000000);
      v32 = sub_24AF3538C();
      v34 = v33;

      *(v0 + 144) = v32;
      *(v0 + 152) = v34;
      sub_24AEFE5EC();
      sub_24AF3504C();
      sub_24AED6198(v32, v34);
      swift_storeEnumTagMultiPayload();
      sub_24AEE2B34(v29, v157);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 160) = v28;
      result = sub_24AEDA148(v31, v15, v1);
      v37 = *(v28 + 16);
      v38 = (v36 & 1) == 0;
      v13 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (!v13)
      {
        LOBYTE(v1) = v36;
        if (*(*(v0 + 320) + 24) >= v39)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v41 = *(v0 + 328);
          v40 = *(v0 + 336);
          v42 = *(v0 + 376);
          sub_24AEDB3EC(v39, isUniquelyReferenced_nonNull_native);
          result = sub_24AEDA148(v42, v41, v40);
          if ((v1 & 1) != (v43 & 1))
          {
            goto LABEL_41;
          }
        }

        v44 = *(v0 + 160);
        if ((v1 & 1) == 0)
        {
LABEL_61:
          v123 = *(v0 + 328);
          v122 = *(v0 + 336);
          v124 = *(v0 + 376);
          v126 = *(v0 + 232);
          v125 = *(v0 + 240);
          v44[(result >> 6) + 8] |= 1 << result;
          v127 = v44[6] + 24 * result;
          *v127 = v124;
          *(v127 + 8) = v123;
          *(v127 + 16) = v122;
          result = sub_24AEE2BF4(v125, v44[7] + *(v126 + 72) * result);
          v128 = v44[2];
          v13 = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (v13)
          {
            __break(1u);
LABEL_77:
            __break(1u);
            return result;
          }

          v44[2] = v129;

LABEL_63:
          v1 = *(v0 + 328);
          v130 = *(v0 + 336);
          v131 = *(v0 + 304);
          v132 = *(v0 + 248);
          v133 = *(v0 + 376);
          v134 = swift_isUniquelyReferenced_nonNull_native();
          v160 = v131;
          sub_24AF03378(v133, v1, v130, v132, v134);
          result = sub_24AEE2B98(v132);
          v90 = v160;
          goto LABEL_64;
        }

LABEL_18:
        sub_24AEFE640(*(v0 + 240), v44[7] + *(*(v0 + 232) + 72) * result);
        goto LABEL_63;
      }

      __break(1u);
LABEL_22:
      v45 = result;
      sub_24AEDD148();
      result = v45;
      v44 = *(v0 + 168);
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 376);
  *v5 = *(v0 + 352);
  v5[1] = v1;
  swift_storeEnumTagMultiPayload();
  sub_24AEE2BF4(v5, v6);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v4;
  result = sub_24AEDA148(v7, v3, v2);
  v11 = *(v4 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v15) = v10;
  if (*(*(v0 + 320) + 24) >= v14)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v18 = *(v0 + 376);
  sub_24AEDB3EC(v14, v8);
  result = sub_24AEDA148(v18, v17, v16);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_41:

    return sub_24AF35C8C();
  }

LABEL_14:
  v44 = *(v0 + 168);
  if (v15)
  {
LABEL_15:
    v30 = *(*(v0 + 232) + 72);
    sub_24AEFE640(*(v0 + 280), v44[7] + v30 * result);
    goto LABEL_25;
  }

LABEL_23:
  v47 = *(v0 + 328);
  v46 = *(v0 + 336);
  v48 = *(v0 + 376);
  v49 = *(v0 + 280);
  v50 = *(v0 + 232);
  v44[(result >> 6) + 8] |= 1 << result;
  v51 = v44[6] + 24 * result;
  *v51 = v48;
  *(v51 + 8) = v47;
  *(v51 + 16) = v46;
  v30 = *(v50 + 72);
  result = sub_24AEE2BF4(v49, v44[7] + v30 * result);
  v52 = v44[2];
  v13 = __OFADD__(v52, 1);
  v53 = v52 + 1;
  if (v13)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    v121 = result;
    sub_24AEDD148();
    result = v121;
    v44 = *(v0 + 160);
    if ((v1 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_18;
  }

  v44[2] = v53;

LABEL_25:
  if (qword_27EFC0700 != -1)
  {
    swift_once();
  }

  v54 = sub_24AF3529C();
  __swift_project_value_buffer(v54, qword_27EFC0978);

  v55 = sub_24AF3527C();
  v56 = sub_24AF356FC();

  if (os_log_type_enabled(v55, v56))
  {
    v152 = *(v0 + 352);
    v154 = v30;
    v58 = *(v0 + 328);
    v57 = *(v0 + 336);
    v59 = swift_slowAlloc();
    v158 = v44;
    v160 = swift_slowAlloc();
    v60 = v160;
    *v59 = 141558787;
    *(v59 + 4) = 1752392040;
    *(v59 + 12) = 2081;

    v61 = sub_24AEF599C(v58, v57, &v160);
    v30 = v154;

    *(v59 + 14) = v61;
    *(v59 + 22) = 2160;
    *(v59 + 24) = 1752392040;
    *(v59 + 32) = 2081;
    *(v59 + 34) = sub_24AEF599C(v152, v1, &v160);
    _os_log_impl(&dword_24AECF000, v55, v56, "CorrelationIdentifierMap: %{private,mask.hash}s -> %{private,mask.hash}s", v59, 0x2Au);
    swift_arrayDestroy();
    v62 = v60;
    v44 = v158;
    MEMORY[0x24C236490](v62, -1, -1);
    MEMORY[0x24C236490](v59, -1, -1);
  }

  v63 = *(v0 + 304);
  v64 = *(v0 + 272);
  *v64 = *(v0 + 352);
  v64[1] = v1;
  swift_storeEnumTagMultiPayload();
  if (!*(v63 + 16))
  {

    goto LABEL_38;
  }

  v65 = *(v0 + 272);

  v66 = sub_24AEDA2F0(v65);
  if ((v67 & 1) == 0)
  {
LABEL_38:
    v80 = *(v0 + 352);
    v81 = *(v0 + 304);
    v82 = *(v0 + 264);
    sub_24AEE2B98(*(v0 + 272));
    *v82 = v80;
    v82[1] = v1;
    swift_storeEnumTagMultiPayload();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 176) = v81;
    result = sub_24AEDA2F0(v82);
    v85 = *(v81 + 16);
    v86 = (v84 & 1) == 0;
    v13 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (!v13)
    {
      LOBYTE(v1) = v84;
      if (*(*(v0 + 304) + 24) >= v87)
      {
        if ((v83 & 1) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_45;
      }

      v88 = *(v0 + 264);
      sub_24AEDAEC4(v87, v83);
      result = sub_24AEDA2F0(v88);
      if ((v1 & 1) == (v89 & 1))
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_59;
  }

  v68 = *(v0 + 376);
  v69 = *(v0 + 272);
  v70 = (*(*(v0 + 304) + 56) + 24 * v66);
  v71 = *v70;
  v72 = *(v70 + 1);
  v30 = *(v70 + 2);

  sub_24AEE2B98(v69);
  if (v71 != v68)
  {
    v159 = v44;
    v99 = *(v0 + 376);
LABEL_50:
    v100 = *(v0 + 328);
    v101 = *(v0 + 336);
    v102 = *(v0 + 208);
    *(v0 + 64) = v71;
    *(v0 + 72) = v72;
    *(v0 + 80) = v30;
    *(v0 + 88) = v99;
    *(v0 + 96) = v100;
    *(v0 + 104) = v101;
    v102(v0 + 64, v0 + 88);
    v103 = *(v0 + 40);
    v104 = *(v0 + 56);
    v155 = *(v0 + 48);

    v105 = sub_24AF3527C();
    v106 = sub_24AF3572C();

    v107 = os_log_type_enabled(v105, v106);
    v108 = *(v0 + 336);
    if (v107)
    {
      v109 = *(v0 + 328);
      v153 = v103;
      v110 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v160 = v151;
      *v110 = 141559299;
      *(v110 + 4) = 1752392040;
      *(v110 + 12) = 2081;
      v111 = sub_24AEF599C(v72, v30, &v160);

      *(v110 + 14) = v111;
      v30 = 2160;
      *(v110 + 22) = 2160;
      *(v110 + 24) = 1752392040;
      *(v110 + 32) = 2081;
      v112 = sub_24AEF599C(v109, v108, &v160);

      *(v110 + 34) = v112;
      *(v110 + 42) = 2160;
      *(v110 + 44) = 1752392040;
      *(v110 + 52) = 2081;

      v113 = v155;
      v114 = sub_24AEF599C(v155, v104, &v160);

      *(v110 + 54) = v114;
      _os_log_impl(&dword_24AECF000, v105, v106, "CorrelationIdentifierMap: Disambiguating (%{private,mask.hash}s, %{private,mask.hash}s) to %{private,mask.hash}s", v110, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v151, -1, -1);
      v115 = v110;
      v103 = v153;
      MEMORY[0x24C236490](v115, -1, -1);
    }

    else
    {

      v113 = v155;
    }

    v116 = *(v0 + 304);
    v117 = *(v0 + 256);
    *v117 = *(v0 + 352);
    v117[1] = v1;
    swift_storeEnumTagMultiPayload();
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v160 = v116;
    sub_24AF03378(v103, v113, v104, v117, v118);
    result = sub_24AEE2B98(v117);
    v44 = v159;
    v90 = v160;
    goto LABEL_64;
  }

  if ((v72 != *(v0 + 328) || v30 != *(v0 + 336)) && (sub_24AF35C4C() & 1) == 0)
  {
    v159 = v44;
    v99 = *(v0 + 376);
    LOBYTE(v71) = v99;
    goto LABEL_50;
  }

  v73 = sub_24AF3527C();
  LOBYTE(v1) = sub_24AF3572C();

  v74 = os_log_type_enabled(v73, v1);
  v75 = *(v0 + 336);
  if (v74)
  {
    v76 = *(v0 + 328);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v160 = v78;
    *v77 = 141558275;
    *(v77 + 4) = 1752392040;
    *(v77 + 12) = 2081;
    v79 = sub_24AEF599C(v76, v75, &v160);

    *(v77 + 14) = v79;
    _os_log_impl(&dword_24AECF000, v73, v1, "Duplicate destination: %{private,mask.hash}s", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x24C236490](v78, -1, -1);
    MEMORY[0x24C236490](v77, -1, -1);
  }

  else
  {
  }

  v119 = *(v0 + 312) + 1;
  if (v119 == *(v0 + 296))
  {
    v120 = v44;
    v90 = *(v0 + 304);
LABEL_66:
    v136 = *(v0 + 208);
    v135 = *(v0 + 216);
    v137 = *(v0 + 192);
    v138 = *(v0 + 184);

    *v138 = v120;
    v138[1] = v90;
    v138[2] = v136;
    v138[3] = v135;

    __swift_destroy_boxed_opaque_existential_0(v137);

    v139 = *(v0 + 8);

    return v139();
  }

  else
  {
    while (1)
    {
      *(v0 + 312) = v119;
      *(v0 + 320) = v44;
      v140 = *(v0 + 200);
      if (v119 < *(v140 + 16))
      {
        break;
      }

      __break(1u);
LABEL_75:
      v150 = result;
      sub_24AEDCEFC();
      result = v150;
LABEL_45:
      v90 = *(v0 + 176);
      v92 = *(v0 + 328);
      v91 = *(v0 + 336);
      v93 = *(v0 + 376);
      v94 = *(v0 + 264);
      if (v1)
      {
        v95 = v90[7] + 24 * result;
        *v95 = v93;
        *(v95 + 8) = v92;
        *(v95 + 16) = v91;

        result = sub_24AEE2B98(v94);
      }

      else
      {
        v90[(result >> 6) + 8] |= 1 << result;
        v1 = result;
        sub_24AEE2B34(v94, v90[6] + result * v30);
        v96 = v90[7] + 24 * v1;
        *v96 = v93;
        *(v96 + 8) = v92;
        *(v96 + 16) = v91;
        result = sub_24AEE2B98(v94);
        v97 = v90[2];
        v13 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v13)
        {
          goto LABEL_77;
        }

        v90[2] = v98;
      }

LABEL_64:
      v119 = *(v0 + 312) + 1;
      if (v119 == *(v0 + 296))
      {
        v120 = v44;
        goto LABEL_66;
      }

      *(v0 + 304) = v90;
    }

    v141 = *(v0 + 192);
    v142 = v140 + 24 * v119;
    v143 = *(v142 + 32);
    *(v0 + 376) = v143;
    v144 = *(v142 + 40);
    *(v0 + 328) = v144;
    v145 = *(v142 + 48);
    *(v0 + 336) = v145;
    v146 = v141[3];
    v147 = v141[4];
    __swift_project_boxed_opaque_existential_1(v141, v146);
    *(v0 + 16) = v143;
    *(v0 + 24) = v144;
    *(v0 + 32) = v145;
    v148 = *(v147 + 8);

    v156 = (v148 + *v148);
    v149 = swift_task_alloc();
    *(v0 + 344) = v149;
    *v149 = v0;
    v149[1] = sub_24AEFA994;

    return v156(v0 + 16, v146, v147);
  }
}

uint64_t sub_24AEFB9D4()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_0(v1);

  v2 = *(v0 + 8);

  return v2();
}

id sub_24AEFBAFC()
{
  v15 = v0;
  Controller = type metadata accessor for QueryController();
  v2 = swift_allocObject();
  v0[17] = v2;
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v2[14] = result;
  v2[15] = v6;
  v2[16] = v4;
  v0[5] = Controller;
  v0[6] = &protocol witness table for QueryController;
  v0[2] = v2;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = sub_24AEFD794(*(v5 + 16), 0);
  v9 = sub_24AEFD920(&v14, (v8 + 4), v7, v5);
  v10 = v14;

  sub_24AEFDA80(v10);
  if (v9 != v7)
  {
    __break(1u);
LABEL_5:

    v8 = MEMORY[0x277D84F90];
  }

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_24AEFBCB4;
  v12 = v0[15];
  v13 = v0[16];

  return sub_24AEFA600((v0 + 7), (v0 + 2), v8, v12, v13);
}

uint64_t sub_24AEFBCB4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24AEFE6A4;
  }

  else
  {
    v2 = sub_24AEFE6A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

FindMyMessaging::Destination __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CorrelationIdentifierMap.destination(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for CorrelationIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 8);
  *v8 = countAndFlagsBits;
  v8[1] = object;
  swift_storeEnumTagMultiPayload();
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_24AEDA2F0(v8), (v12 & 1) != 0))
  {
    v13 = *(v9 + 56) + 24 * v11;
    v14 = *v13;
    v16 = *(v13 + 8);
    v15 = *(v13 + 16);

    v17 = sub_24AEE2B98(v8);
    *v5 = v14;
    *(v5 + 8) = v16;
    *(v5 + 16) = v15;
  }

  else
  {
    sub_24AEE2B98(v8);
    sub_24AEFDAD4();
    swift_allocError();
    *v20 = 0;
    v17 = swift_willThrow();
  }

  result.destination._object = v19;
  result.destination._countAndFlagsBits = v18;
  result.type = v17;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CorrelationIdentifierMap.correlationIdentifier(for:)(FindMyMessaging::Destination a1)
{
  v2 = *&a1.type;
  v3 = type metadata accessor for CorrelationIdentifier(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *v1;
  if (*(v13 + 16) && (v14 = sub_24AEDA148(*v2, *(v2 + 1), *(v2 + 2)), (v15 & 1) != 0))
  {
    sub_24AEE2B34(*(v13 + 56) + *(v4 + 72) * v14, v10);
    sub_24AEE2BF4(v10, v12);
    sub_24AEE2B34(v12, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24AEFDAD4();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      sub_24AEE2B98(v12);
      v17 = sub_24AEE2B98(v7);
    }

    else
    {
      sub_24AEE2B98(v12);
      v17 = *v7;
      v18 = v7[1];
    }
  }

  else
  {
    sub_24AEFDAD4();
    swift_allocError();
    *v19 = 1;
    v17 = swift_willThrow();
  }

  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t CorrelationIdentifierMap.map(destinations:)(uint64_t a1)
{
  v4 = *v1;
  result = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 1);
      v8 = *i;
      v10[0] = *(i - 16);
      v11 = v9;
      v12 = v8;

      sub_24AEFC1A0(&v13, v10, v4);
      if (v2)
      {
        break;
      }

      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v2;
    v7 = sub_24AEFD794(*(a1 + 16), 0);
    v8 = sub_24AEFD920(&v13, (v7 + 4), v4, a1);
    v9 = v13;

    result = sub_24AEFDA80(v9);
    if (v8 != v4)
    {
      __break(1u);
      return result;
    }

    v2 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v11 = CorrelationIdentifierMap.map(destinations:)(v7);

  if (!v2)
  {
    v12 = sub_24AEF6D74(v11);

    return v12;
  }

  return result;
}

uint64_t sub_24AEFC1A0(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for CorrelationIdentifier(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  if (*(a3 + 16))
  {
    v14 = *(a2 + 1);
    v15 = *(a2 + 2);
    result = sub_24AEDA148(*a2, v14, v15);
    if (v16)
    {
      v17 = *(v7 + 72);
      sub_24AEE2B34(*(a3 + 56) + v17 * result, v13);
      v18 = *a1;
      if (sub_24AEF9E10(v13, *a1))
      {
        if (qword_27EFC0700 != -1)
        {
          swift_once();
        }

        v19 = sub_24AF3529C();
        __swift_project_value_buffer(v19, qword_27EFC0978);

        v20 = sub_24AF3527C();
        v21 = sub_24AF3570C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v27 = v23;
          *v22 = 136315651;
          *(v22 + 4) = sub_24AEF599C(0xD000000000000012, 0x800000024AF370A0, &v27);
          *(v22 + 12) = 2160;
          *(v22 + 14) = 1752392040;
          *(v22 + 22) = 2081;
          *(v22 + 24) = sub_24AEF599C(v14, v15, &v27);
          _os_log_impl(&dword_24AECF000, v20, v21, "CorrelationIdentifierMap: Duplicate destination detected during %s: %{private,mask.hash}s", v22, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C236490](v23, -1, -1);
          MEMORY[0x24C236490](v22, -1, -1);
        }

        return sub_24AEE2B98(v13);
      }

      else
      {
        sub_24AEE2B34(v13, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_24AEF555C(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v18 = sub_24AEF555C((v24 > 1), v25 + 1, 1, v18);
        }

        sub_24AEE2B98(v13);
        v18[2] = v25 + 1;
        result = sub_24AEE2BF4(v10, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v25 * v17);
        *a1 = v18;
      }
    }
  }

  return result;
}

char *CorrelationIdentifierMap.map(correlationIdentifiers:)(uint64_t a1)
{
  v3 = type metadata accessor for CorrelationIdentifier(0) - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = *(v1 + 8);
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  v11 = MEMORY[0x277D84F90];
  v24 = v10;
  do
  {
    sub_24AEE2B34(v9, v6);
    if (*(v8 + 16) && (v12 = sub_24AEDA2F0(v6), (v13 & 1) != 0))
    {
      v14 = *(v8 + 56) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_24AEF5734(0, *(v11 + 2) + 1, 1, v11);
      }

      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v20 >= v19 >> 1)
      {
        v11 = sub_24AEF5734((v19 > 1), v20 + 1, 1, v11);
      }

      sub_24AEE2B98(v6);
      *(v11 + 2) = v20 + 1;
      v21 = &v11[24 * v20];
      v21[32] = v15;
      *(v21 + 5) = v25;
      *(v21 + 6) = v17;
      v10 = v24;
    }

    else
    {
      sub_24AEE2B98(v6);
    }

    v9 += v10;
    --v7;
  }

  while (v7);
  return v11;
}

uint64_t CorrelationIdentifierMap.map(correlationIdentifiers:)(void *a1)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v4 = a1[2];
  if (v4)
  {
    v6 = v2;
    v7 = sub_24AEFD824(a1[2], 0);
    v8 = *(type metadata accessor for CorrelationIdentifier(0) - 8);
    v9 = sub_24AEFDB28(&v14, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v4, a1);
    v10 = v14;

    result = sub_24AEFDA80(v10);
    if (v9 != v4)
    {
      __break(1u);
      return result;
    }

    v2 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v12 = CorrelationIdentifierMap.map(correlationIdentifiers:)(v7);

  if (!v2)
  {
    v13 = sub_24AEF6F00(v12);

    return v13;
  }

  return result;
}

uint64_t CorrelationIdentifierMap.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AEFC988()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AEFC9D0(uint64_t a1)
{
  v2 = *v1;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v2);
  return sub_24AF35D4C();
}

uint64_t CorrelationIdentifierMap.init(mockLookupHelper:destinations:disambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x2822009F8](sub_24AEFCA4C, 0, 0);
}

{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return MEMORY[0x2822009F8](sub_24AEFCD30, 0, 0);
}

uint64_t sub_24AEFCA4C()
{
  sub_24AEFE044(v0[12], (v0 + 2));

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_24AEFCB08;
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];

  return sub_24AEFA600((v0 + 7), (v0 + 2), v4, v2, v3);
}

uint64_t sub_24AEFCB08()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24AEFCC98;
  }

  else
  {
    v2 = sub_24AEFCC1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEFCC1C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0(v2);
  v3 = *(v0 + 72);
  *v1 = *(v0 + 56);
  v1[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AEFCC98()
{
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AEFCD30()
{
  v11 = v0;
  v1 = v0[18];
  sub_24AEFE044(v0[17], (v0 + 2));

  sub_24AEFE044((v0 + 2), (v0 + 7));
  v2 = *(v1 + 16);
  v3 = v0[18];
  if (v2)
  {
    v4 = sub_24AEFD794(v2, 0);
    v5 = sub_24AEFD920(&v10, (v4 + 4), v2, v3);
    sub_24AEFDA80(v10);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_24AEFCE68;
  v7 = v0[19];
  v8 = v0[20];

  return sub_24AEFA600((v0 + 12), (v0 + 7), v4, v7, v8);
}

uint64_t sub_24AEFCE68()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24AEFD018;
  }

  else
  {
    v2 = sub_24AEFCF7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEFCF7C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0(v1);
  *v2 = v6;
  v2[1] = v5;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AEFD018()
{
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v1);
  v2 = v0[1];

  return v2();
}

uint64_t CorrelationIdentifierMap.description.getter()
{
  sub_24AF3592C();

  strcpy(v3, "forwardMap: ");
  type metadata accessor for CorrelationIdentifier(0);
  sub_24AEF8EE0();
  v0 = sub_24AF3530C();
  MEMORY[0x24C235440](v0);

  MEMORY[0x24C235440](0x657372657665720ALL, 0xED0000203A70614DLL);
  sub_24AEFE148(&qword_27EFC0928, type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
  v1 = sub_24AF3530C();
  MEMORY[0x24C235440](v1);

  return v3[0];
}

uint64_t CorrelationIdentifier.hash(into:)(uint64_t a1)
{
  v2 = sub_24AF3521C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CorrelationIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEE2B34(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C235D70](1);
    sub_24AEFE148(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24AF3536C();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }
}

uint64_t CorrelationIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24AF3521C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CorrelationIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AF35D0C();
  sub_24AEE2B34(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C235D70](1);
    sub_24AEFE148(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24AF3536C();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  return sub_24AF35D4C();
}

uint64_t sub_24AEFD5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AF35D0C();
  sub_24AEE2B34(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x24C235D70](1);
    sub_24AEFE148(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24AF3536C();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  return sub_24AF35D4C();
}

void *sub_24AEFD794(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_24AEFD824(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0930, &qword_24AF38110);
  v4 = *(type metadata accessor for CorrelationIdentifier(0) - 8);
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

void *sub_24AEFD920(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CorrelationIdentifier(uint64_t a1)
{
  result = qword_27EFC09A8;
  if (!qword_27EFC09A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AEFDAD4()
{
  result = qword_27EFC0990;
  if (!qword_27EFC0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0990);
  }

  return result;
}

uint64_t sub_24AEFDB28(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CorrelationIdentifier(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_24AEE2B34(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_24AEE2BF4(v11, v14);
      sub_24AEE2BF4(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s15FindMyMessaging21CorrelationIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CorrelationIdentifier(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_24AEE2B34(a1, &v26 - v16);
  sub_24AEE2B34(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24AEE2B34(v17, v13);
    v22 = *v13;
    v21 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v18 && v21 == v18[1])
      {
      }

      else
      {
        v24 = sub_24AF35C4C();

        if ((v24 & 1) == 0)
        {
          sub_24AEE2B98(v17);
          goto LABEL_8;
        }
      }

      sub_24AEE2B98(v17);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_24AEFE584(v17);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_24AEE2B34(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v18, v4);
  v19 = sub_24AF351FC();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
  sub_24AEE2B98(v17);
  return v19 & 1;
}

uint64_t sub_24AEFE044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AEFE0AC()
{
  result = qword_27EFC0998;
  if (!qword_27EFC0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0998);
  }

  return result;
}

uint64_t sub_24AEFE148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AEFE19C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AEFE1E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CorrelationIdentifierMap.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CorrelationIdentifierMap.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AEFE3F0(uint64_t a1)
{
  result = sub_24AF3521C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CorrelationIdentifierLookup.correlationIdentifier(destination:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AEE2410;

  return v9(a1, a2, a3);
}

uint64_t sub_24AEFE584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AEFE5EC()
{
  result = qword_27EFC09B8;
  if (!qword_27EFC09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09B8);
  }

  return result;
}

uint64_t sub_24AEFE640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrelationIdentifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}