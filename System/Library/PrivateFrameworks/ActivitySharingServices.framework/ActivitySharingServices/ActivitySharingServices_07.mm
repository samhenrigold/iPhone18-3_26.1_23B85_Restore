uint64_t sub_221F420FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x223DACD50](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_221FB69B8();
        sub_221FB69E8();
        v4 = v15;
        sub_221FB69F8();
        sub_221FB69C8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_221F422A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_221FB5D68();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F42374, 0, 0);
}

uint64_t sub_221F42374()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD000000000000041, 0x8000000221FC3950);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *(v0 + 240) = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5EA8();
    v6 = sub_221FB5E58();
    v33 = v5;
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    v10 = v6;
    v12 = v11;
    sub_221EBEF90(v6, v11);
    sub_221FB5D48();
    sub_221EF9080();
    v13 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v14 = sub_221FB6278();

    v15 = sub_221FB62E8();
    v16 = [v13 initWithDictionary:v14 schema:v15];
    *(v0 + 248) = v16;

    sub_221EBEF30(v10, v12);
    (*(v9 + 8))(v8, v31);
    sub_221F41828(v32);
    *(v0 + 256) = v17;
    v20 = v17;
    v21 = *(v0 + 192);
    v22 = sub_221ED8054(MEMORY[0x277D84F90]);
    *(v0 + 136) = v22;
    if (v21)
    {
      v23 = v22;
      sub_221F41828(*(v0 + 184));
      v25 = v24;
      *(v0 + 120) = sub_221FB6318();
      *(v0 + 128) = v26;
      sub_221FB6908();
      *(v0 + 80) = swift_getObjectType();
      *(v0 + 56) = v25;
      sub_221EC45F0((v0 + 56), (v0 + 88));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_221F782F8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      sub_221EC5354(v0 + 16);
      *(v0 + 136) = v23;
    }

    v28 = swift_task_alloc();
    *(v0 + 264) = v28;
    v28[2] = v33;
    v28[3] = v20;
    v28[4] = v16;
    v28[5] = v0 + 136;
    v29 = swift_task_alloc();
    *(v0 + 272) = v29;
    v30 = sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
    *v29 = v0;
    v29[1] = sub_221F427E8;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000041, 0x8000000221FC3950, sub_221F54450, v28, v30);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_221F427E8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_221F42A5C;
  }

  else
  {

    v2 = sub_221F42904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F42904()
{
  v1 = *(v0 + 144);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    _os_log_impl(&dword_221E93000, v2, v3, "Sent invitation %@", v4, 0xCu);
    sub_221EA0558(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v7 = *(v0 + 248);
  v8 = *(v0 + 240);

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_221F42A5C()
{
  v2 = v0[30];
  v1 = v0[31];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_221F42AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_221FB5D68();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F42BB8, 0, 0);
}

uint64_t sub_221F42BB8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD000000000000041, 0x8000000221FC3950);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *(v0 + 240) = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5F28();
    v6 = sub_221FB5E58();
    v33 = v5;
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    v10 = v6;
    v12 = v11;
    sub_221EBEF90(v6, v11);
    sub_221FB5D48();
    sub_221EF9080();
    v13 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v14 = sub_221FB6278();

    v15 = sub_221FB62E8();
    v16 = [v13 initWithDictionary:v14 schema:v15];
    *(v0 + 248) = v16;

    sub_221EBEF30(v10, v12);
    (*(v9 + 8))(v8, v31);
    sub_221F41828(v32);
    *(v0 + 256) = v17;
    v20 = v17;
    v21 = *(v0 + 192);
    v22 = sub_221ED8054(MEMORY[0x277D84F90]);
    *(v0 + 136) = v22;
    if (v21)
    {
      v23 = v22;
      sub_221F41828(*(v0 + 184));
      v25 = v24;
      *(v0 + 120) = sub_221FB6318();
      *(v0 + 128) = v26;
      sub_221FB6908();
      *(v0 + 80) = swift_getObjectType();
      *(v0 + 56) = v25;
      sub_221EC45F0((v0 + 56), (v0 + 88));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_221F782F8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      sub_221EC5354(v0 + 16);
      *(v0 + 136) = v23;
    }

    v28 = swift_task_alloc();
    *(v0 + 264) = v28;
    v28[2] = v33;
    v28[3] = v20;
    v28[4] = v16;
    v28[5] = v0 + 136;
    v29 = swift_task_alloc();
    *(v0 + 272) = v29;
    v30 = sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
    *v29 = v0;
    v29[1] = sub_221F4302C;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000041, 0x8000000221FC3950, sub_221F54450, v28, v30);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_221F4302C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_221F54490;
  }

  else
  {

    v2 = sub_221F54494;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F43148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_221FB5D68();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F43214, 0, 0);
}

uint64_t sub_221F43214()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD000000000000041, 0x8000000221FC3950);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *(v0 + 240) = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB60A8();
    v6 = sub_221FB5E58();
    v33 = v5;
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    v10 = v6;
    v12 = v11;
    sub_221EBEF90(v6, v11);
    sub_221FB5D48();
    sub_221EF9080();
    v13 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v14 = sub_221FB6278();

    v15 = sub_221FB62E8();
    v16 = [v13 initWithDictionary:v14 schema:v15];
    *(v0 + 248) = v16;

    sub_221EBEF30(v10, v12);
    (*(v9 + 8))(v8, v31);
    sub_221F41828(v32);
    *(v0 + 256) = v17;
    v20 = v17;
    v21 = *(v0 + 192);
    v22 = sub_221ED8054(MEMORY[0x277D84F90]);
    *(v0 + 136) = v22;
    if (v21)
    {
      v23 = v22;
      sub_221F41828(*(v0 + 184));
      v25 = v24;
      *(v0 + 120) = sub_221FB6318();
      *(v0 + 128) = v26;
      sub_221FB6908();
      *(v0 + 80) = swift_getObjectType();
      *(v0 + 56) = v25;
      sub_221EC45F0((v0 + 56), (v0 + 88));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_221F782F8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      sub_221EC5354(v0 + 16);
      *(v0 + 136) = v23;
    }

    v28 = swift_task_alloc();
    *(v0 + 264) = v28;
    v28[2] = v33;
    v28[3] = v20;
    v28[4] = v16;
    v28[5] = v0 + 136;
    v29 = swift_task_alloc();
    *(v0 + 272) = v29;
    v30 = sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
    *v29 = v0;
    v29[1] = sub_221F4302C;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000041, 0x8000000221FC3950, sub_221F54304, v28, v30);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_221F43688(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221F436A8, 0, 0);
}

uint64_t sub_221F436A8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD00000000000002ALL, 0x8000000221FC38F0);
  v3 = [*(v1 + 168) contacts];
  if (v3)
  {
    v4 = v3;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v5 = sub_221FB64F8();
    v0[4] = v5;

    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_221F438E0;
    v7 = v0[2];

    return sub_221F43BB0(v5, v7);
  }

  else
  {
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_221E93000, v9, v10, "Contacts list is empty, nothing to upgrade", v11, 2u);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_221F438E0()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F43B4C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[7] = v3;
    *v3 = v2;
    v3[1] = sub_221F43A58;
    v4 = v2[2];

    return sub_221F44500(v4);
  }
}

uint64_t sub_221F43A58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221F43B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F43BB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F43BD4, 0, 0);
}

uint64_t sub_221F43BD4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  v0[5] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000035, 0x8000000221FC3880);
  v3 = *__swift_project_boxed_opaque_existential_0Tm(v1 + 10, v1[13]);
  v4 = sub_221FB62E8();

  v0[6] = [v3 installStateForBundleIdentifier_];

  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_221F43D70;

  return sub_221EF490C();
}

uint64_t sub_221F43D70(__int16 a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F43EA8, 0, 0);
  }
}

uint64_t sub_221F43EA8()
{
  v2 = *(v0 + 96) == 5 && (*(v0 + 96) & 0xFF00) == 0x200 && *(v0 + 48) == 1;
  v3 = *(v0 + 32);
  sub_221EF9770(*(v0 + 16));
  v5 = v4;
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;

  v7 = sub_221F420FC(sub_221F5418C, v6, v5);
  *(v0 + 72) = v7;

  if (v7 >> 62)
  {
    goto LABEL_29;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v8)
  {
    if (v2)
    {
      v2 = 201;
    }

    else
    {
      v2 = 202;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
    {

      if (!i)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223DACD50](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v11 insertEventWithType_];

        ++v10;
        if (v13 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v20 = sub_221FB6868();

      if (!v20)
      {
        goto LABEL_34;
      }

      if (v2)
      {
        v2 = 201;
      }

      else
      {
        v2 = 202;
      }
    }

LABEL_24:
    v14 = *(v0 + 32);

    __swift_project_boxed_opaque_existential_0Tm(v14 + 37, v14[40]);
    v15 = v14[20];

    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_221F441D8;
    v17 = *(v0 + 24);
    v18 = MEMORY[0x277D84F90];

    return sub_221EBA884(v7, v18, v15, v17);
  }

  else
  {
LABEL_34:
    v21 = sub_221FB61B8();
    v22 = sub_221FB65C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_221E93000, v21, v22, "No relationships to update with upgrade availability", v23, 2u);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_221F441D8(uint64_t a1)
{
  *(*v2 + 88) = v1;

  if (v1)
  {
    v3 = sub_221F4449C;
  }

  else
  {

    v3 = sub_221F4431C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4431C(uint64_t a1)
{
  v15 = v1;
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);

    v8 = MEMORY[0x223DAC810](v7, v6);
    v10 = v9;

    v11 = sub_221EF4114(v8, v10, &v14);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_221E93000, v2, v3, "Updated relationships with secure could upgrade availability: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_221F4449C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F44500(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;

  return MEMORY[0x2822009F8](sub_221F44590, 0, 0);
}

uint64_t sub_221F44590(uint64_t a1)
{
  v86 = v1;
  v85[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 48);
  v3 = *(v2 + 416);
  v4 = *(v2 + 417);
  v5 = *(v2 + 424);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v85[0]) = v3;
    v6 = UserDefaultsKeys.rawValue.getter();
    v7 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v5, v6);

    if (v7 == 2)
    {
      v8 = v4;
    }

    else
    {
      v8 = v7;
    }

    if ((v8 & 1) == 0)
    {
LABEL_6:
      if (qword_281307080 == -1)
      {
LABEL_7:
        v9 = sub_221FB61D8();
        __swift_project_value_buffer(v9, qword_281307DF0);
        v10 = sub_221FB61B8();
        v11 = sub_221FB65C8();
        if (!os_log_type_enabled(v10, v11))
        {
LABEL_41:

          v41 = *(v1 + 8);

          return v41();
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Auto upgrade disallowed";
LABEL_40:
        _os_log_impl(&dword_221E93000, v10, v11, v13, v12, 2u);
        MEMORY[0x223DADA80](v12, -1, -1);
        goto LABEL_41;
      }

LABEL_76:
      swift_once();
      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  v14 = [*(*(v1 + 48) + 168) contacts];
  if (!v14)
  {
    if (qword_281307080 != -1)
    {
LABEL_77:
      swift_once();
    }

    v40 = sub_221FB61D8();
    __swift_project_value_buffer(v40, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_41;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No contacts to migrate";
    goto LABEL_40;
  }

  v15 = v14;
  v84 = sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  v82 = sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v16 = sub_221FB64F8();

  if ((v16 & 0xC000000000000001) == 0)
  {
    v43 = *(v16 + 32);
    v79 = ((1 << v43) + 63) >> 6;
    if ((v43 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v77 = swift_slowAlloc();
        v62 = sub_221F107FC(v77, v79, v16, sub_221F47A2C);

        MEMORY[0x223DADA80](v77, -1, -1);
        goto LABEL_68;
      }
    }

    v78[1] = v78;
    MEMORY[0x28223BE20](v17);
    v80 = v78 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v80, v44);
    v81 = 0;
    v45 = 0;
    v46 = 1 << *(v16 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v16 + 56);
    v49 = (v46 + 63) >> 6;
    while (v48)
    {
      v50 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
LABEL_56:
      v53 = v50 | (v45 << 6);
      v54 = *(v16 + 48);
      v83 = v53;
      v55 = *(v54 + 8 * v53);
      v56 = [v55 relationshipStorage];
      v57 = [v56 primaryRelationship];

      v58 = [v55 relationshipStorage];
      v59 = [v58 primaryRemoteRelationship];

      if ([v57 isFriendshipActive] && !objc_msgSend(v57, sel_cloudType) && objc_msgSend(v57, sel_secureCloudUpgradeAvailable) && (objc_msgSend(v57, sel_secureCloudUpgradeCompleted) & 1) == 0 && (objc_msgSend(v59, sel_isFriendshipActive) & 1) != 0)
      {
        v60 = [v59 secureCloudUpgradeAvailable];

        if (v60)
        {
          *&v80[(v83 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v83;
          if (__OFADD__(v81++, 1))
          {
            __break(1u);
LABEL_65:
            v62 = sub_221F77424(v80, v79, v81, v16);
            goto LABEL_68;
          }
        }
      }

      else
      {
      }
    }

    v51 = v45;
    while (1)
    {
      v45 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v45 >= v49)
      {
        goto LABEL_65;
      }

      v52 = *(v16 + 56 + 8 * v45);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        v48 = (v52 - 1) & v52;
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v18 = MEMORY[0x277D84FA0];
  v85[0] = MEMORY[0x277D84FA0];
  sub_221FB6828();
  v19 = sub_221FB6898();
  if (v19)
  {
    v83 = MEMORY[0x277D84FA0];
    while (1)
    {
      *(v1 + 32) = v19;
      swift_dynamicCast();
      v20 = *(v1 + 24);
      v21 = [v20 relationshipStorage];
      v22 = [v21 primaryRelationship];

      v23 = [v20 relationshipStorage];
      v24 = [v23 primaryRemoteRelationship];

      if ([v22 isFriendshipActive] && !objc_msgSend(v22, sel_cloudType) && objc_msgSend(v22, sel_secureCloudUpgradeAvailable) && (objc_msgSend(v22, sel_secureCloudUpgradeCompleted) & 1) == 0 && objc_msgSend(v24, sel_isFriendshipActive))
      {
        v25 = [v24 secureCloudUpgradeAvailable];

        if (v25)
        {
          v26 = *(v1 + 24);
          v27 = v83;
          v28 = *(v83 + 16);
          if (*(v83 + 24) <= v28)
          {
            sub_221F161CC(v28 + 1);
            v27 = v85[0];
          }

          v29 = sub_221FB6748();
          v30 = v27 + 56;
          v83 = v27;
          v31 = -1 << *(v27 + 32);
          v32 = v29 & ~v31;
          v33 = v32 >> 6;
          if (((-1 << v32) & ~*(v27 + 56 + 8 * (v32 >> 6))) != 0)
          {
            v34 = __clz(__rbit64((-1 << v32) & ~*(v27 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v35 = 0;
            v36 = (63 - v31) >> 6;
            do
            {
              if (++v33 == v36 && (v35 & 1) != 0)
              {
                __break(1u);
                goto LABEL_77;
              }

              v37 = v33 == v36;
              if (v33 == v36)
              {
                v33 = 0;
              }

              v35 |= v37;
              v38 = *(v30 + 8 * v33);
            }

            while (v38 == -1);
            v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          }

          *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          v39 = v83;
          *(*(v83 + 48) + 8 * v34) = v26;
          ++*(v39 + 16);
          goto LABEL_26;
        }
      }

      else
      {
      }

LABEL_26:
      v19 = sub_221FB6898();
      if (!v19)
      {
        goto LABEL_67;
      }
    }
  }

  v83 = v18;
LABEL_67:

  v62 = v83;
LABEL_68:
  *(v1 + 56) = v62;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v63 = sub_221FB61D8();
  __swift_project_value_buffer(v63, qword_281307DF0);

  v64 = sub_221FB61B8();
  v65 = sub_221FB65C8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v85[0] = v67;
    *v66 = 136315138;
    v68 = sub_221FB6508();
    v70 = sub_221EF4114(v68, v69, v85);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_221E93000, v64, v65, "Attempting to upgrade eligible contacts: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x223DADA80](v67, -1, -1);
    MEMORY[0x223DADA80](v66, -1, -1);
  }

  v72 = *(v1 + 40);
  v71 = *(v1 + 48);
  *(v1 + 16) = v62;
  v73 = swift_task_alloc();
  *(v1 + 64) = v73;
  *(v73 + 16) = v71;
  *(v73 + 24) = v72;
  v74 = swift_task_alloc();
  *(v1 + 72) = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD08, &qword_221FB9210);
  v76 = sub_221F54258();
  *v74 = v1;
  v74[1] = sub_221F45018;

  return MEMORY[0x28213AEC8](&unk_221FBCFC8, v73, v75, v76);
}

void sub_221F45018()
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

uint64_t sub_221F4519C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F4525C, 0, 0);
}

uint64_t sub_221F4525C()
{
  v23 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000020, 0x8000000221FC2BE0);
  v3 = *(v1 + 168);
  v4 = sub_221FB5BF8();
  v5 = [v3 contactWithUUID_];
  v0[7] = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_221EB7350;

    return sub_221F455B8(v5, 0);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      sub_221F542BC(&qword_27CFEBB90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_221FB6B08();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_221EF4114(v16, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_221E93000, v8, v9, "Failed to find contact for friend identifier: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    sub_221EA4994();
    swift_allocError();
    *v20 = 21;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_221F455B8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_221FB60D8();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_221FB6078();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  sub_221FB5BC8();
  v3[28] = swift_task_alloc();
  v6 = sub_221FB60A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = sub_221FB5C38();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F457D4, 0, 0);
}

id sub_221F457D4()
{
  v57 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_221FB61D8();
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000022, 0x8000000221FC3920);
  v3 = [v1 relationshipStorage];
  v4 = [v3 primaryRelationship];
  *(v0 + 304) = v4;

  v5 = [v1 relationshipStorage];
  v6 = [v5 primaryRemoteRelationship];
  *(v0 + 312) = v6;

  if ([v4 cloudType])
  {
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v4;
      *v10 = v4;
      v11 = v4;
      _os_log_impl(&dword_221E93000, v7, v8, "Invalid cloud type for primary relationship: %@", v9, 0xCu);
      sub_221EA0558(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v13 = 11;
    goto LABEL_29;
  }

  v14 = v4;
  v15 = sub_221F48184(v14);

  if (!v15)
  {
    sub_221EA4994();
    swift_allocError();
    v13 = 18;
LABEL_29:
    *v12 = v13;
    swift_willThrow();

    v54 = *(v0 + 8);

    return v54();
  }

  v16 = *(v0 + 168);
  v17 = *(v16 + 472);
  v18 = *(v16 + 473);
  v19 = *(v16 + 480);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v56) = v17;
    v20 = UserDefaultsKeys.rawValue.getter();
    v21 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v19, v20);

    if (v21 == 2)
    {
      v22 = v18;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
    goto LABEL_19;
  }

  result = [v14 UUID];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v24 = result;
  sub_221FB5C18();

  result = [v6 UUID];
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = *(v0 + 280);
  v55 = *(v0 + 288);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  sub_221FB5C18();

  sub_221F542BC(&qword_27CFEC1D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
  LOBYTE(v25) = sub_221FB62C8();
  v29 = *(v28 + 8);
  v29(v26, v27);
  v29(v55, v27);
  if ((v25 & 1) == 0)
  {
    v43 = *(v0 + 152);
    v44 = sub_221FB61B8();
    v45 = sub_221FB65C8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 152);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *v47 = 136315138;
      v49 = [v46 displayName];
      v50 = sub_221FB6318();
      v52 = v51;

      v53 = sub_221EF4114(v50, v52, &v56);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_221E93000, v44, v45, "Relationship lost upgrade tie breaker, will let remote relationship initiate upgrade: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x223DADA80](v48, -1, -1);
      MEMORY[0x223DADA80](v47, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v13 = 5;
    goto LABEL_29;
  }

LABEL_19:
  v30 = [v14 cloudKitAddress];
  if (!v30)
  {
    v38 = sub_221FB61B8();
    v39 = sub_221FB65A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v14;
      *v41 = v14;
      v42 = v14;
      _os_log_impl(&dword_221E93000, v38, v39, "Unable to upgrade relationship, missing CloudKit address: %@", v40, 0xCu);
      sub_221EA0558(v41);
      MEMORY[0x223DADA80](v41, -1, -1);
      MEMORY[0x223DADA80](v40, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v13 = 20;
    goto LABEL_29;
  }

  v31 = *(v0 + 168);
  v32 = v30;
  v33 = sub_221FB6318();
  v35 = v34;

  *(v0 + 320) = v33;
  *(v0 + 328) = v35;
  v36 = *__swift_project_boxed_opaque_existential_0Tm((v31 + 120), *(v31 + 144));
  v37 = swift_task_alloc();
  *(v0 + 336) = v37;
  *v37 = v0;
  v37[1] = sub_221F45EDC;

  return sub_221F991FC(v36);
}

uint64_t sub_221F45EDC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {

    v5 = sub_221F46670;
  }

  else
  {
    v5 = sub_221F45FFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F45FFC()
{
  if (!*(v0 + 352))
  {

    v29 = sub_221FB61B8();
    v30 = sub_221FB65C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_221E93000, v29, v30, "Unable to fetch CloudKit address", v31, 2u);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    v32 = *(v0 + 312);

    sub_221EA4994();
    swift_allocError();
    *v33 = 20;
    swift_willThrow();

    goto LABEL_13;
  }

  if ([*(v0 + 312) secureCloudUpgradeCompleted] && (objc_msgSend(*(v0 + 304), sel_secureCloudUpgradeFailed) & 1) == 0)
  {

    v40 = sub_221FB61B8();
    v41 = sub_221FB65C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_221E93000, v40, v41, "Remote relationship is marked upgraded, marking local as failed to reset state", v42, 2u);
      MEMORY[0x223DADA80](v42, -1, -1);
    }

    v43 = *(v0 + 304);

    v44 = v43;
    v45 = swift_task_alloc();
    *(v0 + 368) = v45;
    *v45 = v0;
    v45[1] = sub_221F46740;
    v46 = *(v0 + 304);

    return sub_221F48844(v46);
  }

  else
  {
    v1 = *(v0 + 152);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 152);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v4;
      *v6 = v4;
      v7 = v4;
      _os_log_impl(&dword_221E93000, v2, v3, "Upgrading contact: %@", v5, 0xCu);
      sub_221EA0558(v6);
      MEMORY[0x223DADA80](v6, -1, -1);
      MEMORY[0x223DADA80](v5, -1, -1);
    }

    v8 = *(v0 + 304);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 256);
    v12 = *(v0 + 168);

    sub_221FB5C28();
    *(v0 + 384) = sub_221FB5BE8();
    *(v0 + 392) = v13;
    v14 = *(v10 + 8);
    *(v0 + 400) = v14;
    *(v0 + 408) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    v15 = v8;
    v16 = sub_221FB62E8();
    [v15 setSecureCloudUpgradeToken_];

    [v15 insertEventWithType_];
    v17 = __swift_project_boxed_opaque_existential_0Tm(v12 + 37, v12[40]);
    v18 = v12[20];
    if ([v15 cloudType])
    {
      v19 = *(v0 + 304);
      v20 = sub_221FB61B8();
      v21 = sub_221FB65A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 304);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v22;
        *v24 = v22;
        v25 = v22;
        _os_log_impl(&dword_221E93000, v20, v21, "Attempting to save secure cloud relationship to legacy container %@", v23, 0xCu);
        sub_221EA0558(v24);
        MEMORY[0x223DADA80](v24, -1, -1);
        MEMORY[0x223DADA80](v23, -1, -1);
      }

      v26 = *(v0 + 304);

      sub_221EA4994();
      swift_allocError();
      *v27 = 11;
      swift_willThrow();

      v28 = *(v0 + 312);

LABEL_13:

      v34 = *(v0 + 8);

      return v34();
    }

    v36 = *(v0 + 304);
    v37 = *(v0 + 160);
    v38 = *__swift_project_boxed_opaque_existential_0Tm(v17 + 6, v17[9]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_221F46960;
    v39 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221EF4C50;
    *(v0 + 104) = &block_descriptor_69;
    *(v0 + 112) = v39;
    [v38 saveRelationship:v36 contact:0 cloudKitGroup:v18 activity:v37 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221F46670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F46740()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_221F474F4;
  }

  else
  {

    v3 = sub_221F4685C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4685C()
{
  v1 = *(v0 + 312);
  sub_221EA4994();
  swift_allocError();
  *v2 = 53;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F46960()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_221F46C88;
  }

  else
  {
    v2 = sub_221F46A70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F46A70()
{
  v1 = v0[38];
  v2 = v0[18];
  v0[53] = v2;

  v3 = v2;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_221F46B28;
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[20];

  return sub_221F48E68(v6, v5, v3, v7);
}

uint64_t sub_221F46B28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v5 = *(v3 + 424);
  if (v1)
  {

    v6 = sub_221F477C4;
  }

  else
  {

    v6 = sub_221F46D90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F46C88(uint64_t a1)
{
  v2 = *(v1 + 304);
  swift_willThrow();

  v3 = *(v1 + 312);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_221F46D90(uint64_t a1)
{
  v2 = v1[55];
  v20 = v1[50];
  v3 = v1[34];
  v18 = v1[32];
  v4 = v1[27];
  v5 = v1[25];
  v6 = v1[26];
  v8 = v1[23];
  v7 = v1[24];
  v9 = v1[22];
  v19 = v1[21];
  sub_221FB5BB8();
  (*(v6 + 104))(v4, *MEMORY[0x277CE9410], v5);
  v10 = v2;
  sub_221FB60B8();
  sub_221FB60C8();
  (*(v8 + 8))(v7, v9);
  sub_221FB5C28();
  sub_221FB5BE8();
  v20(v3, v18);
  sub_221FB6098();
  __swift_project_boxed_opaque_existential_0Tm((v19 + 216), *(v19 + 240));

  v11 = swift_task_alloc();
  v1[57] = v11;
  *v11 = v1;
  v11[1] = sub_221F46F68;
  v12 = v1[43];
  v13 = v1[44];
  v15 = v1[40];
  v14 = v1[41];
  v16 = v1[31];

  return sub_221F43148(v15, v14, v16, 1108, v12, v13);
}

uint64_t sub_221F46F68(void *a1)
{
  *(*v2 + 464) = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();
    v4 = sub_221F47348;
  }

  else
  {

    v4 = sub_221F470E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F470E0()
{
  v23 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 440);
  v5 = *(v0 + 424);
  v6 = *(v0 + 352);
  if (v3)
  {
    v7 = *(v0 + 344);
    v8 = *(v0 + 240);
    v21 = *(v0 + 248);
    v19 = *(v0 + 312);
    v20 = *(v0 + 232);
    v18 = *(v0 + 440);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *v10 = v5;
    *(v9 + 12) = 2080;
    v5 = v5;
    v12 = sub_221EF4114(v7, v6, &v22);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_221E93000, v1, v2, "Sent request to upgrade relationship: %@ from: %s", v9, 0x16u);
    sub_221EA0558(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221F47348()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 464);
  *(v0 + 472) = v4;
  v5 = v4;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Upgrade failed with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = *(v0 + 424);

  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 480) = v14;
  *v14 = v0;
  v14[1] = sub_221F475C8;
  v15 = *(v0 + 424);

  return sub_221F48844(v15);
}

uint64_t sub_221F474F4()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F475C8()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_221F47948;
  }

  else
  {

    v3 = sub_221F476E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F476E4(uint64_t a1)
{
  v2 = *(v1 + 312);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_221F477C4()
{
  v1 = v0[56];
  v0[59] = v1;
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Upgrade failed with error: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = v0[53];

  v10 = v9;
  v11 = swift_task_alloc();
  v0[60] = v11;
  *v11 = v0;
  v11[1] = sub_221F475C8;
  v12 = v0[53];

  return sub_221F48844(v12);
}

uint64_t sub_221F47948()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 312);

  v3 = *(v0 + 8);

  return v3();
}

id sub_221F47A2C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 relationshipStorage];
  v3 = [v2 primaryRelationship];

  v4 = [v1 relationshipStorage];
  v5 = [v4 primaryRemoteRelationship];

  if ([v3 isFriendshipActive] && !objc_msgSend(v3, sel_cloudType) && objc_msgSend(v3, sel_secureCloudUpgradeAvailable) && (objc_msgSend(v3, sel_secureCloudUpgradeCompleted) & 1) == 0 && objc_msgSend(v5, sel_isFriendshipActive))
  {
    v6 = [v5 secureCloudUpgradeAvailable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_221F47B54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_221FB5C38();
  v3[2] = v6;
  v3[3] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a1;
  v3[4] = v7;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_221F47C60;

  return sub_221F455B8(v8, a3);
}

uint64_t sub_221F47C60()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F47D9C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void *sub_221F47D9C()
{
  v40 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();

  if (os_log_type_enabled(v6, v7))
  {
    v37 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v12 = 136315650;
    v13 = [v9 UUID];
    sub_221FB5C18();

    sub_221F542BC(&qword_27CFEBB90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_221FB6B08();
    v16 = v15;
    (*(v10 + 8))(v8, v11);
    v17 = sub_221EF4114(v14, v16, &v39);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v9 displayName];
    v19 = sub_221FB6318();
    v21 = v20;

    v22 = sub_221EF4114(v19, v21, &v39);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2112;
    v23 = v37;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v24;
    *v36 = v24;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to send upgrade for contact: %s|%s, error: %@", v12, 0x20u);
    sub_221EA0558(v36);
    MEMORY[0x223DADA80](v36, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v38, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v25 = v0[7];
  v26 = v25;
  v27 = v25;
  v28 = sub_221FB5A98();
  v29 = [v28 domain];

  if (!v29)
  {
    sub_221FB6318();
    v29 = sub_221FB62E8();
  }

  v30 = sub_221FB5A98();
  v31 = [v30 code];

  result = sub_221FB62E8();
  if (v31 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v31 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = v0[7];
  ASAnalyticsReportAddManateeContainer();

  v35 = v0[1];

  return v35();
}

BOOL sub_221F48184(void *a1)
{
  v3 = sub_221FB5BC8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - v8;
  if ([a1 secureCloudUpgradeCompleted])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = a1;
    v12 = sub_221FB61B8();
    v13 = sub_221FB65C8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_221E93000, v12, v13, "Upgrade already complete for: %@", v14, 0xCu);
      sub_221EA0558(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    return 0;
  }

  else
  {
    if ([a1 hasOutgoingSecureCloudUpgradeRequest] && (v18 = objc_msgSend(a1, sel_dateForLatestOutgoingUpgradeRequest)) != 0)
    {
      v19 = v18;
      sub_221FB5B98();

      v20 = v1;
      sub_221FB5B78();
      v22 = v21;
      v23 = *(v1 + 432);
      v24 = *(v20 + 440);
      v25 = *(v20 + 448);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        LOBYTE(v73) = v23;
        v26 = UserDefaultsKeys.rawValue.getter();
        v27 = COERCE_DOUBLE(sub_221EF8934(v25, v26));
        v29 = v28;

        if ((v29 & 1) == 0)
        {
          v24 = v27;
        }
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v30 = fabs(v22);
      v31 = sub_221FB61D8();
      __swift_project_value_buffer(v31, qword_281307DF0);
      v32 = a1;
      v33 = sub_221FB61B8();
      v34 = sub_221FB65C8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v75 = v36;
        *v35 = 136315394;
        v37 = [v32 cloudKitAddress];
        if (v37)
        {
          v38 = v37;
          v39 = sub_221FB6318();
          v41 = v40;

          v73 = 0;
          v74 = 0xE000000000000000;
          v71 = v39;
          v72 = v41;
          sub_221FB6A08();

          v42 = v73;
          v43 = v74;
        }

        else
        {
          v42 = 7104878;
          v43 = 0xE300000000000000;
        }

        v68 = sub_221EF4114(v42, v43, &v75);

        *(v35 + 4) = v68;
        *(v35 + 12) = 1024;
        *(v35 + 14) = v30 < v24;
        _os_log_impl(&dword_221E93000, v33, v34, "Relationship upgrade %s backing off last attempt: %{BOOL}d", v35, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x223DADA80](v36, -1, -1);
        MEMORY[0x223DADA80](v35, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      if (![a1 secureCloudUpgradeFailed])
      {
        return 1;
      }

      v44 = [a1 dateForLatestUpgradeFailure];
      if (!v44)
      {
        return 1;
      }

      v45 = v44;
      sub_221FB5B98();

      v46 = v1;
      sub_221FB5B78();
      v48 = v47;
      v49 = *(v1 + 432);
      v24 = *(v46 + 440);
      v50 = *(v46 + 448);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        LOBYTE(v73) = v49;
        v51 = UserDefaultsKeys.rawValue.getter();
        *&v52 = COERCE_DOUBLE(sub_221EF8934(v50, v51));
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          v24 = *&v52;
        }
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v30 = fabs(v48);
      v55 = sub_221FB61D8();
      __swift_project_value_buffer(v55, qword_281307DF0);
      v56 = a1;
      v57 = sub_221FB61B8();
      v58 = sub_221FB65C8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v75 = v60;
        *v59 = 136315394;
        v61 = [v56 cloudKitAddress];
        if (v61)
        {
          v62 = v61;
          v63 = sub_221FB6318();
          v65 = v64;

          v73 = 0;
          v74 = 0xE000000000000000;
          v71 = v63;
          v72 = v65;
          sub_221FB6A08();

          v66 = v73;
          v67 = v74;
        }

        else
        {
          v66 = 7104878;
          v67 = 0xE300000000000000;
        }

        v69 = sub_221EF4114(v66, v67, &v75);

        *(v59 + 4) = v69;
        *(v59 + 12) = 1024;
        *(v59 + 14) = v30 < v24;
        _os_log_impl(&dword_221E93000, v57, v58, "Relationship upgrade %s backing off failed attempt: %{BOOL}d", v59, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x223DADA80](v60, -1, -1);
        MEMORY[0x223DADA80](v59, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }

    return v30 >= v24;
  }
}

uint64_t sub_221F48844(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_221F48864, 0, 0);
}

uint64_t sub_221F48864()
{
  v1 = v0[19];
  v2 = v0[20];
  [v1 setSecureCloudUpgradeToken_];
  [v1 insertEventWithType_];
  v3 = __swift_project_boxed_opaque_existential_0Tm(v2 + 37, v2[40]);
  v4 = v2[20];
  if ([v1 cloudType])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = v0[19];
    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = v5;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_221E93000, v8, v9, "Attempting to save secure cloud relationship to legacy container %@", v11, 0xCu);
      sub_221EA0558(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[19];
    v18 = *__swift_project_boxed_opaque_existential_0Tm(v3 + 6, v3[9]);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_221F48B70;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_221EF4C50;
    v0[13] = &block_descriptor_27_1;
    v0[14] = v19;
    [v18 saveRelationship:v17 contact:0 cloudKitGroup:v4 activity:0 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_221F48B70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_221F48DFC;
  }

  else
  {
    v2 = sub_221F48C80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F48C80()
{
  v1 = *(v0 + 144);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_221E93000, v4, v5, "Saved relationship with failed to upgrade event: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
    v3 = v4;
    v4 = v8;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F48DFC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221F48E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221F48E90, 0, 0);
}

uint64_t sub_221F48E90()
{
  v1 = v0[6];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 32, v1[35]);
  v3 = v1[20];
  v0[7] = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_221F48F48;
  v7 = v0[2];
  v6 = v0[3];

  return sub_221E9F708(v7, v6, v3, v4);
}

uint64_t sub_221F48F48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F4907C, 0, 0);
  }
}

uint64_t sub_221F4907C()
{
  v27 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [*(v0 + 72) userIdentity];
    v3 = [v2 hasiCloudAccount];

    if (v3)
    {
      __swift_project_boxed_opaque_existential_0Tm((*(v0 + 48) + 336), *(*(v0 + 48) + 360));
      v4 = swift_task_alloc();
      *(v0 + 80) = v4;
      *v4 = v0;
      v4[1] = sub_221F49448;
      v5 = *(v0 + 56);
      v7 = *(v0 + 32);
      v6 = *(v0 + 40);

      return sub_221E9AC64(v7, v5, v6);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v17 = sub_221FB61D8();
    __swift_project_value_buffer(v17, qword_281307DF0);

    v18 = sub_221FB61B8();
    v19 = sub_221FB65A8();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 16);
      v20 = *(v0 + 24);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_221EF4114(v21, v20, v26);
      _os_log_impl(&dword_221E93000, v18, v19, "Destination %s has a participant, but no iCloud account", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DADA80](v23, -1, -1);
      MEMORY[0x223DADA80](v22, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);

    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_221EF4114(v13, v12, v26);
      _os_log_impl(&dword_221E93000, v10, v11, "Destination %s does not have a matching CloudKit participant", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v16 = 12;
    swift_willThrow();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221F49448(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_221F49728;
  }

  else
  {
    v4 = sub_221F4955C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F4955C()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_0Tm((v0[6] + 336), *(v0[6] + 360));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_221F49614;
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[5];

  return sub_221E9A43C(v1, v3, v4, v5);
}

uint64_t sub_221F49614()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_221F49958;
  }

  else
  {
    v2 = sub_221F4978C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F49728()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F4978C()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_0Tm((v0[6] + 336), *(v0[6] + 360));
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_221F49844;
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[5];

  return sub_221E993C0(v1, v3, v4, v5);
}

uint64_t sub_221F49844(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_221F49C60;
  }

  else
  {
    v4 = sub_221F499C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F49958()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F499C4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  sub_221E9D138(0, &qword_27CFEC268, 0x277CE9130);
  v3 = sub_221FA6C68(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);

    v7 = *(v0 + 8);

    return v7(v4);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 128);
    v10 = *(v0 + 72);
    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = v9;
    v13 = v10;
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 128);
      v17 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v16;
      *v19 = v17;
      v19[1] = v16;
      v20 = v16;
      v21 = v17;
      _os_log_impl(&dword_221E93000, v14, v15, "Failed to create share item for participant: %@, share: %@", v18, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    v22 = *(v0 + 128);
    v23 = *(v0 + 88);
    v24 = *(v0 + 72);

    sub_221EA4994();
    swift_allocError();
    *v25 = 31;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_221F49C60()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F49CCC(uint64_t a1, uint64_t a2)
{
  v3[78] = v2;
  v3[77] = a2;
  v3[76] = a1;
  v3[79] = type metadata accessor for IDSErrorAction(0);
  v3[80] = swift_task_alloc();
  v4 = sub_221FB60D8();
  v3[81] = v4;
  v3[82] = *(v4 - 8);
  v3[83] = swift_task_alloc();
  v5 = sub_221FB6078();
  v3[84] = v5;
  v3[85] = *(v5 - 8);
  v3[86] = swift_task_alloc();
  sub_221FB5BC8();
  v3[87] = swift_task_alloc();
  v6 = sub_221FB5C38();
  v3[88] = v6;
  v3[89] = *(v6 - 8);
  v3[90] = swift_task_alloc();
  v7 = sub_221FB60A8();
  v3[91] = v7;
  v3[92] = *(v7 - 8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F49F1C, 0, 0);
}

uint64_t sub_221F49F1C()
{
  v36 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[77];
  v2 = sub_221FB61D8();
  v0[96] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD00000000000002BLL, 0x8000000221FC38C0);
  v3 = [v1 fromID];
  if (!v3)
  {
    sub_221FB6318();
    v3 = sub_221FB62E8();
  }

  v4 = v0[95];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[76];
  v8 = ASSanitizedContactDestination();

  v9 = sub_221FB6318();
  v11 = v10;

  v0[97] = v9;
  v0[98] = v11;
  v12 = *(v5 + 16);
  v12(v4, v7, v6);

  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[95];
  if (v15)
  {
    v17 = v0[94];
    v33 = v14;
    v18 = v0[92];
    v34 = v9;
    v19 = v0[91];
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v20 = 136315394;
    v12(v17, v16, v19);
    v21 = sub_221FB6328();
    v23 = v22;
    v24 = *(v18 + 8);
    v25 = v19;
    v9 = v34;
    v24(v16, v25);
    v26 = sub_221EF4114(v21, v23, &v35);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_221EF4114(v34, v11, &v35);
    _os_log_impl(&dword_221E93000, v13, v33, "Handling upgrade request: %s, from: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v32, -1, -1);
    MEMORY[0x223DADA80](v20, -1, -1);
  }

  else
  {
    v27 = v0[92];
    v28 = v0[91];

    v24 = *(v27 + 8);
    v24(v16, v28);
  }

  v0[99] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  v29 = swift_allocObject();
  v0[100] = v29;
  *(v29 + 16) = xmmword_221FB81A0;
  *(v29 + 32) = v9;
  *(v29 + 40) = v11;

  v30 = swift_task_alloc();
  v0[101] = v30;
  *v30 = v0;
  v30[1] = sub_221F4A2C4;

  return sub_221F4EB1C(v29);
}

uint64_t sub_221F4A2C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 816) = a1;
  *(v3 + 824) = v1;

  if (v1)
  {
    v4 = sub_221F4DF6C;
  }

  else
  {

    v4 = sub_221F4A3E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F4A3E4()
{
  v1 = v0[102];
  v2 = [v1 relationshipStorage];
  v3 = [v2 primaryRelationship];
  v0[104] = v3;

  v0[73] = v3;
  v4 = [v1 relationshipStorage];
  v5 = [v4 primaryRemoteRelationship];
  v0[105] = v5;

  v6 = v5;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v3;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v3;
    v10[1] = v6;
    v11 = v6;
    v12 = v3;
    _os_log_impl(&dword_221E93000, v7, v8, "Upgrade request for relationships - local: %@, remote: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v13 = v0[103];

  v14 = v3;
  sub_221F4F0C0(v14);
  if (v13)
  {
    v15 = v0[102];

    v16 = v0[1];

    return v16();
  }

  else
  {

    v18 = swift_task_alloc();
    v0[106] = v18;
    *v18 = v0;
    v18[1] = sub_221F4A6CC;

    return sub_221F4F810();
  }
}

uint64_t sub_221F4A6CC(char a1)
{
  v4 = *v2;
  *(*v2 + 856) = v1;

  if (v1)
  {

    v5 = sub_221F4E54C;
  }

  else
  {
    *(v4 + 1144) = a1 & 1;
    v5 = sub_221F4A800;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F4A800()
{
  if (*(v0 + 1144) == 1)
  {
    v1 = *(v0 + 856);
    v2 = *(v0 + 840);
    v3 = *(v0 + 832);
    v4 = sub_221FB6088();
    sub_221F4FD48(v4, v5, v3, v2);
    v6 = *(v0 + 832);
    if (v1)
    {
      v7 = v1;

      goto LABEL_4;
    }

    v28 = v6;
    v29 = sub_221F50194(v28);

    if ((v29 & 1) == 0)
    {
      v38 = *(v0 + 832);
      v39 = *(v0 + 624);
      [v38 insertEventWithType_];
      v40 = __swift_project_boxed_opaque_existential_0Tm(v39 + 37, v39[40]);
      v41 = v39[20];
      *(v0 + 864) = v41;
      if (![v38 cloudType])
      {
        v50 = *(v0 + 832);
        v51 = *__swift_project_boxed_opaque_existential_0Tm(v40 + 6, v40[9]);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 592;
        *(v0 + 24) = sub_221F4AF00;
        v52 = swift_continuation_init();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
        *(v0 + 872) = v53;
        *(v0 + 328) = v53;
        *(v0 + 272) = MEMORY[0x277D85DD0];
        *(v0 + 280) = 1107296256;
        *(v0 + 288) = sub_221EF4C50;
        *(v0 + 296) = &block_descriptor_41;
        *(v0 + 304) = v52;
        [v51 saveRelationship:v50 contact:0 cloudKitGroup:v41 activity:0 completion:v0 + 272];
        v22 = v0 + 16;

        return MEMORY[0x282200938](v22);
      }

      v42 = *(v0 + 832);
      v43 = sub_221FB61B8();
      v44 = sub_221FB65A8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = *(v0 + 832);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v45;
        *v47 = v45;
        v48 = v45;
        _os_log_impl(&dword_221E93000, v43, v44, "Attempting to save secure cloud relationship to legacy container %@", v46, 0xCu);
        sub_221EA0558(v47);
        MEMORY[0x223DADA80](v47, -1, -1);
        MEMORY[0x223DADA80](v46, -1, -1);
      }

      v6 = *(v0 + 832);

      sub_221EA4994();
      v7 = swift_allocError();
      *v49 = 11;
      swift_willThrow();
LABEL_4:

      v8 = *(v0 + 832);
      *(v0 + 1120) = v8;
      *(v0 + 1112) = v7;
      v9 = v7;
      v10 = sub_221FB61B8();
      v11 = sub_221FB65A8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v7;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_221E93000, v10, v11, "Failed to handle upgrade request: %@", v12, 0xCu);
        sub_221EA0558(v13);
        MEMORY[0x223DADA80](v13, -1, -1);
        MEMORY[0x223DADA80](v12, -1, -1);
      }

      v16 = v7;
      v17 = v7;
      v18 = sub_221FB5A98();
      v19 = [v18 domain];

      if (!v19)
      {
        sub_221FB6318();
        v19 = sub_221FB62E8();
      }

      v20 = sub_221FB5A98();
      v21 = [v20 code];

      v22 = sub_221FB62E8();
      if (v21 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v21 <= 0x7FFFFFFF)
      {
        v23 = v22;
        ASAnalyticsReportAddManateeContainer();

        v24 = v8;
        v25 = swift_task_alloc();
        *(v0 + 1128) = v25;
        *v25 = v0;
        v25[1] = sub_221F4E050;

        return sub_221F48844(v24);
      }

      __break(1u);
      return MEMORY[0x282200938](v22);
    }

    v30 = sub_221FB61B8();
    v31 = sub_221FB65A8();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 840);
    v34 = *(v0 + 832);
    v35 = *(v0 + 816);
    if (v32)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_221E93000, v30, v31, "Already handling an upgrade request", v36, 2u);
      MEMORY[0x223DADA80](v36, -1, -1);
    }

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {

    v27 = swift_task_alloc();
    *(v0 + 1096) = v27;
    *v27 = v0;
    v27[1] = sub_221F4DBBC;

    return sub_221F4F410();
  }
}

uint64_t sub_221F4AF00()
{
  v1 = *(*v0 + 48);
  *(*v0 + 880) = v1;
  if (v1)
  {
    v2 = sub_221F4B250;
  }

  else
  {
    v2 = sub_221F4B010;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F4B010()
{
  v1 = v0[104];
  v2 = v0[78];
  v3 = v0[74];
  v0[111] = v3;

  swift_beginAccess();
  v0[73] = v3;

  __swift_project_boxed_opaque_existential_0Tm((v2 + 336), *(v2 + 360));
  v4 = sub_221FB6068();
  v0[112] = v4;
  v5 = swift_task_alloc();
  v0[113] = v5;
  *v5 = v0;
  v5[1] = sub_221F4B100;
  v6 = v0[108];

  return sub_221E98A68(v4, v6);
}

uint64_t sub_221F4B100(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 912) = a1;
  *(v4 + 920) = v1;

  if (v1)
  {

    v5 = sub_221F4B6F4;
  }

  else
  {
    v5 = sub_221F4B4DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *sub_221F4B250(uint64_t a1)
{
  v2 = v1[104];
  swift_willThrow();

  v3 = v1[110];
  v4 = v1[104];
  v1[140] = v4;
  v1[139] = v3;
  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to handle upgrade request: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = v3;
  v13 = v3;
  v14 = sub_221FB5A98();
  v15 = [v14 domain];

  if (!v15)
  {
    sub_221FB6318();
    v15 = sub_221FB62E8();
  }

  v16 = sub_221FB5A98();
  v17 = [v16 code];

  result = sub_221FB62E8();
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  ASAnalyticsReportAddManateeContainer();

  v20 = v4;
  v21 = swift_task_alloc();
  v1[141] = v21;
  *v21 = v1;
  v21[1] = sub_221F4E050;

  return sub_221F48844(v20);
}

uint64_t sub_221F4B4DC()
{
  v1 = *(v0 + 888);
  v2 = swift_task_alloc();
  *(v0 + 928) = v2;
  *v2 = v0;
  v2[1] = sub_221F4B58C;
  v3 = *(v0 + 888);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);

  return sub_221F48E68(v5, v4, v3, 0);
}

uint64_t sub_221F4B58C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 936) = a1;
  *(v4 + 944) = v1;

  v5 = *(v3 + 888);
  if (v1)
  {

    v6 = sub_221F4E7B4;
  }

  else
  {

    v6 = sub_221F4B95C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void *sub_221F4B6F4()
{
  v1 = v0[115];
  v2 = v0[111];
  v0[140] = v2;
  v0[139] = v1;
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade request: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = v2;
  v19 = swift_task_alloc();
  v0[141] = v19;
  *v19 = v0;
  v19[1] = sub_221F4E050;

  return sub_221F48844(v18);
}

uint64_t sub_221F4B95C()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 624);
  v3 = [*(v0 + 816) relationshipStorage];
  v4 = [v3 secureCloudRelationship];
  *(v0 + 952) = v4;

  v5 = v4;
  [v5 setRemoteRelationshipZoneShareID_];
  v6 = __swift_project_boxed_opaque_existential_0Tm((v2 + 296), *(v2 + 320));
  if ([v5 cloudType] == 1)
  {
    v7 = [v5 secureCloudZoneName];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v8 = v7;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    v13 = sub_221FB65D8();
    v9 = [v5 recordWithZoneID:v13 recordEncryptionType:1];
    *(v0 + 960) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_221FB81B0;
    *(v10 + 32) = v9;
    v11 = v9;
    v12 = MEMORY[0x277D84F90];
    sub_221ED4350(MEMORY[0x277D84F90]);
    v2 = sub_221FB61B8();
    LOBYTE(v13) = sub_221FB65C8();
    if (!os_log_type_enabled(v2, v13))
    {
LABEL_6:
      v18 = *(v0 + 864);

      v19 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 11, v6[14]);
      *(v0 + 968) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v20 = sub_221FB6428();
      *(v0 + 976) = v20;

      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v21 = sub_221FB6428();
      *(v0 + 984) = v21;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 552;
      *(v0 + 88) = sub_221F4C078;
      v22 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 336) = MEMORY[0x277D85DD0];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_221EBA78C;
      *(v0 + 360) = &block_descriptor_46;
      *(v0 + 368) = v22;
      [v19 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v20 recordIDsToDelete:v21 priority:2 activity:0 useZoneWideSharing:1 group:v18 completion:v0 + 336];
      v7 = (v0 + 80);

      return MEMORY[0x282200938](v7);
    }

    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = v12 >> 62;
    if (!(v12 >> 62))
    {
LABEL_5:
      *(v14 + 4) = v15;
      v16 = v13;
      v17 = v14;
      _os_log_impl(&dword_221E93000, v2, v16, "Pushing relationship to iCloud with %ld extra records", v14, 0xCu);
      MEMORY[0x223DADA80](v17, -1, -1);
      goto LABEL_6;
    }

LABEL_22:
    v47 = v14;
    v15 = sub_221FB6868();
    v14 = v47;
    goto LABEL_5;
  }

  v23 = v5;
  v24 = sub_221FB61B8();
  v25 = sub_221FB65A8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v2 = v23;
    v27 = v23;
    _os_log_impl(&dword_221E93000, v24, v25, "Attempting to save legacy relationship to secure cloud container %@", v26, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  sub_221EA4994();
  v6 = swift_allocError();
  *v28 = 11;
  swift_willThrow();
  v29 = *(v0 + 952);
  v30 = *(v0 + 936);

  v31 = *(v0 + 888);
  *(v0 + 1120) = v31;
  *(v0 + 1112) = v6;
  v32 = v6;
  v33 = sub_221FB61B8();
  v34 = sub_221FB65A8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v35 = 138412290;
    v36 = v6;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v2 = v37;
    _os_log_impl(&dword_221E93000, v33, v34, "Failed to handle upgrade request: %@", v35, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v35, -1, -1);
  }

  v38 = v6;
  v39 = v6;
  v40 = sub_221FB5A98();
  v13 = [v40 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v41 = sub_221FB5A98();
  v42 = [v41 code];

  v14 = sub_221FB62E8();
  if (v42 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v42 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v14;
  ASAnalyticsReportAddManateeContainer();

  v44 = v31;
  v45 = swift_task_alloc();
  *(v0 + 1128) = v45;
  *v45 = v0;
  v45[1] = sub_221F4E050;

  return sub_221F48844(v44);
}

uint64_t sub_221F4C078()
{
  v1 = *(*v0 + 112);
  *(*v0 + 992) = v1;
  if (v1)
  {
    v2 = sub_221F4C188;
  }

  else
  {
    v2 = sub_221F4C434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_221F4C188(uint64_t a1)
{
  v2 = *(v1 + 984);
  v3 = *(v1 + 976);
  v4 = *(v1 + 960);
  swift_willThrow();

  v5 = *(v1 + 992);
  v6 = *(v1 + 952);
  v7 = *(v1 + 936);

  v8 = *(v1 + 888);
  *(v1 + 1120) = v8;
  *(v1 + 1112) = v5;
  v9 = v5;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_221E93000, v10, v11, "Failed to handle upgrade request: %@", v12, 0xCu);
    sub_221EA0558(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v16 = v5;
  v17 = v5;
  v18 = sub_221FB5A98();
  v19 = [v18 domain];

  if (!v19)
  {
    sub_221FB6318();
    v19 = sub_221FB62E8();
  }

  v20 = sub_221FB5A98();
  v21 = [v20 code];

  result = sub_221FB62E8();
  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = result;
  ASAnalyticsReportAddManateeContainer();

  v24 = v8;
  v25 = swift_task_alloc();
  *(v1 + 1128) = v25;
  *v25 = v1;
  v25[1] = sub_221F4E050;

  return sub_221F48844(v24);
}

uint64_t sub_221F4C434()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[78];
  v0[125] = v0[70];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + 296), *(v5 + 320));
  v7 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 6, v6[9]);

  sub_221F17A54(v8);

  sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v9 = sub_221FB64E8();
  v0[126] = v9;

  v0[18] = v0;
  v0[23] = v0 + 71;
  v0[19] = sub_221F4C60C;
  v10 = swift_continuation_init();
  v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_221EBCB58;
  v0[53] = &block_descriptor_49_0;
  v0[54] = v10;
  [v7 handleSavedRecords:v9 forContact:0 completion:v0 + 50];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F4C60C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1016) = v1;
  if (v1)
  {
    v2 = sub_221F4CD8C;
  }

  else
  {
    v2 = sub_221F4C71C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F4C71C()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 952);
  v3 = *(v0 + 912);
  v4 = *(v0 + 576);
  *(v0 + 1024) = v4;

  v5 = v4;
  v6 = v3;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 912);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v5;
    *v11 = v9;
    v11[1] = v5;
    v12 = v9;
    _os_log_impl(&dword_221E93000, v7, v8, "Saved share identifier: %@ on %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {

    v7 = v5;
  }

  v13 = *(v0 + 888);
  v14 = *(v0 + 720);
  v15 = *(v0 + 712);
  v16 = *(v0 + 704);
  v17 = *(v0 + 624);

  sub_221FB5C28();
  *(v0 + 1032) = sub_221FB5BE8();
  *(v0 + 1040) = v18;
  v19 = *(v15 + 8);
  *(v0 + 1048) = v19;
  *(v0 + 1056) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v14, v16);
  v20 = v13;
  v21 = sub_221FB62E8();
  [v20 setSecureCloudUpgradeToken_];

  [v20 insertEventWithType_];
  v22 = __swift_project_boxed_opaque_existential_0Tm((v17 + 296), *(v17 + 320));
  if (![v20 cloudType])
  {
    v54 = *(v0 + 888);
    v55 = *(v0 + 872);
    v56 = *(v0 + 864);
    v57 = *__swift_project_boxed_opaque_existential_0Tm(v22 + 6, v22[9]);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 600;
    *(v0 + 216) = sub_221F4D030;
    v58 = swift_continuation_init();
    *(v0 + 520) = v55;
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_221EF4C50;
    *(v0 + 488) = &block_descriptor_52_0;
    *(v0 + 496) = v58;
    [v57 saveRelationship:v54 contact:0 cloudKitGroup:v56 activity:0 completion:v0 + 464];
    v49 = v0 + 208;

    return MEMORY[0x282200938](v49);
  }

  v23 = *(v0 + 888);
  v24 = sub_221FB61B8();
  v25 = sub_221FB65A8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 888);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v26;
    *v28 = v26;
    v29 = v26;
    _os_log_impl(&dword_221E93000, v24, v25, "Attempting to save secure cloud relationship to legacy container %@", v27, 0xCu);
    sub_221EA0558(v28);
    MEMORY[0x223DADA80](v28, -1, -1);
    MEMORY[0x223DADA80](v27, -1, -1);
  }

  sub_221EA4994();
  v30 = swift_allocError();
  *v31 = 11;
  swift_willThrow();
  v32 = *(v0 + 936);
  v33 = *(v0 + 912);
  v34 = *(v0 + 888);

  v35 = *(v0 + 888);
  *(v0 + 1120) = v35;
  *(v0 + 1112) = v30;
  v36 = v30;
  v37 = sub_221FB61B8();
  v38 = sub_221FB65A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v30;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_221E93000, v37, v38, "Failed to handle upgrade request: %@", v39, 0xCu);
    sub_221EA0558(v40);
    MEMORY[0x223DADA80](v40, -1, -1);
    MEMORY[0x223DADA80](v39, -1, -1);
  }

  v43 = v30;
  v44 = v30;
  v45 = sub_221FB5A98();
  v46 = [v45 domain];

  if (!v46)
  {
    sub_221FB6318();
    v46 = sub_221FB62E8();
  }

  v47 = sub_221FB5A98();
  v48 = [v47 code];

  v49 = sub_221FB62E8();
  if (v48 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v48 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x282200938](v49);
  }

  v50 = v49;
  ASAnalyticsReportAddManateeContainer();

  v51 = v35;
  v52 = swift_task_alloc();
  *(v0 + 1128) = v52;
  *v52 = v0;
  v52[1] = sub_221F4E050;

  return sub_221F48844(v51);
}

void *sub_221F4CD8C(uint64_t a1)
{
  v2 = v1[126];
  v3 = v1[119];
  v4 = v1[117];
  v5 = v1[114];
  swift_willThrow();

  v6 = v1[127];
  v7 = v1[111];
  v1[140] = v7;
  v1[139] = v6;
  v8 = v6;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to handle upgrade request: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = v6;
  v16 = v6;
  v17 = sub_221FB5A98();
  v18 = [v17 domain];

  if (!v18)
  {
    sub_221FB6318();
    v18 = sub_221FB62E8();
  }

  v19 = sub_221FB5A98();
  v20 = [v19 code];

  result = sub_221FB62E8();
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = result;
  ASAnalyticsReportAddManateeContainer();

  v23 = v7;
  v24 = swift_task_alloc();
  v1[141] = v24;
  *v24 = v1;
  v24[1] = sub_221F4E050;

  return sub_221F48844(v23);
}

uint64_t sub_221F4D030()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1064) = v1;
  if (v1)
  {
    v2 = sub_221F4D44C;
  }

  else
  {
    v2 = sub_221F4D140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F4D140()
{
  v17 = v0[131];
  v1 = v0[117];
  v2 = v0[111];
  v3 = v0[90];
  v15 = v0[88];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v14 = v0[81];
  v16 = v0[78];
  v0[134] = v0[75];

  sub_221FB5BB8();
  (*(v5 + 104))(v4, *MEMORY[0x277CE9418], v6);
  v9 = v1;
  sub_221FB60B8();
  sub_221FB60C8();
  (*(v8 + 8))(v7, v14);
  sub_221FB5C28();
  sub_221FB5BE8();
  v17(v3, v15);
  sub_221FB6098();
  __swift_project_boxed_opaque_existential_0Tm((v16 + 216), *(v16 + 240));
  v10 = swift_task_alloc();
  v0[135] = v10;
  *v10 = v0;
  v10[1] = sub_221F4D338;
  v11 = v0[93];
  v12 = v0[77];

  return sub_221FA8C90(v12, v11, 1109);
}

uint64_t sub_221F4D338()
{
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v2 = sub_221F4D914;
  }

  else
  {
    v2 = sub_221F4D6F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_221F4D44C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 1064);
  v3 = *(v1 + 936);
  v4 = *(v1 + 912);
  v5 = *(v1 + 888);

  v6 = *(v1 + 888);
  *(v1 + 1120) = v6;
  *(v1 + 1112) = v2;
  v7 = v2;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to handle upgrade request: %@", v10, 0xCu);
    sub_221EA0558(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v14 = v2;
  v15 = v2;
  v16 = sub_221FB5A98();
  v17 = [v16 domain];

  if (!v17)
  {
    sub_221FB6318();
    v17 = sub_221FB62E8();
  }

  v18 = sub_221FB5A98();
  v19 = [v18 code];

  result = sub_221FB62E8();
  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = result;
  ASAnalyticsReportAddManateeContainer();

  v22 = v6;
  v23 = swift_task_alloc();
  *(v1 + 1128) = v23;
  *v23 = v1;
  v23[1] = sub_221F4E050;

  return sub_221F48844(v22);
}

uint64_t sub_221F4D6F0()
{
  v1 = *(v0 + 1072);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1072);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v22 = v2;
    _os_log_impl(&dword_221E93000, v2, v3, "Upgraded relationship: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
    v7 = (v0 + 1024);
    v8 = (v0 + 936);
    v9 = (v0 + 912);
    v10 = (v0 + 840);
    v11 = (v0 + 816);
  }

  else
  {
    v10 = (v0 + 1072);

    v8 = (v0 + 1024);
    v22 = *(v0 + 936);
    v11 = (v0 + 912);
    v7 = (v0 + 840);
    v9 = (v0 + 816);
  }

  v12 = *v11;
  v13 = *v8;
  v14 = *v9;
  v15 = *v10;
  v16 = *(v0 + 1072);
  v17 = *(v0 + 792);
  v18 = *(v0 + 744);
  v19 = *(v0 + 728);

  v17(v18, v19);

  v20 = *(v0 + 8);

  return v20();
}

void *sub_221F4D914()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 912);
  v3 = *(v0 + 792);
  v4 = *(v0 + 744);
  v5 = *(v0 + 728);

  v3(v4, v5);
  v6 = *(v0 + 1088);
  v7 = *(v0 + 1072);
  *(v0 + 1120) = v7;
  *(v0 + 1112) = v6;
  v8 = v6;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to handle upgrade request: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = v6;
  v16 = v6;
  v17 = sub_221FB5A98();
  v18 = [v17 domain];

  if (!v18)
  {
    sub_221FB6318();
    v18 = sub_221FB62E8();
  }

  v19 = sub_221FB5A98();
  v20 = [v19 code];

  result = sub_221FB62E8();
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = result;
  ASAnalyticsReportAddManateeContainer();

  v23 = v7;
  v24 = swift_task_alloc();
  *(v0 + 1128) = v24;
  *v24 = v0;
  v24[1] = sub_221F4E050;

  return sub_221F48844(v23);
}

uint64_t sub_221F4DBBC()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_221F4E2E4;
  }

  else
  {
    v2 = sub_221F4DCD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_221F4DCD0()
{
  sub_221EA4994();
  v1 = swift_allocError();
  *v2 = 18;
  swift_willThrow();
  v3 = v0[104];
  v0[140] = v3;
  v0[139] = v1;
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
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade request: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v1;
  v12 = v1;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = v3;
  v20 = swift_task_alloc();
  v0[141] = v20;
  *v20 = v0;
  v20[1] = sub_221F4E050;

  return sub_221F48844(v19);
}

uint64_t sub_221F4DF6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F4E050()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v3 = sub_221F4EA24;
  }

  else
  {

    v3 = sub_221F4E16C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4E16C()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[105];
  v4 = v0[102];
  v5 = v0[80];
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v8 = v7;
  sub_221EA4A40(v5, v7);
  *(v8 + *(v6 + 20)) = v2;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

void *sub_221F4E2E4()
{
  v1 = v0[138];
  v2 = v0[104];
  v0[140] = v2;
  v0[139] = v1;
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade request: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = v2;
  v19 = swift_task_alloc();
  v0[141] = v19;
  *v19 = v0;
  v19[1] = sub_221F4E050;

  return sub_221F48844(v18);
}

void *sub_221F4E54C()
{
  v1 = v0[107];
  v2 = v0[104];
  v0[140] = v2;
  v0[139] = v1;
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade request: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = v2;
  v19 = swift_task_alloc();
  v0[141] = v19;
  *v19 = v0;
  v19[1] = sub_221F4E050;

  return sub_221F48844(v18);
}

void *sub_221F4E7B4()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 888);
  *(v0 + 1120) = v2;
  *(v0 + 1112) = v1;
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade request: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = v2;
  v19 = swift_task_alloc();
  *(v0 + 1128) = v19;
  *v19 = v0;
  v19[1] = sub_221F4E050;

  return sub_221F48844(v18);
}

uint64_t sub_221F4EA24()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[105];
  v4 = v0[102];

  v5 = v0[1];

  return v5();
}

uint64_t sub_221F4EB1C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for IDSErrorAction(0);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F4EBB0, 0, 0);
}

uint64_t sub_221F4EBB0()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 15, v1[18]);
  v3 = v1[20];
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221F4ECF4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_33_0;
  v0[14] = v5;
  [v4 fetchAllChangesWithPriority:2 activity:0 group:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F4ECF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_221F4EFB0;
  }

  else
  {
    v2 = sub_221F4EE04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F4EE04()
{
  v1 = *(v0[19] + 168);
  v2 = sub_221FB6428();
  v3 = [v1 contactWithDestinations_];

  if (v3)
  {

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[21];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v7 = swift_allocError();
    *v8 = 21;
    v9 = type metadata accessor for IDSError(0);
    sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v11 = v10;
    sub_221EA4A40(v6, v10);
    *(v11 + *(v9 + 20)) = v7;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_221F4EFB0(uint64_t a1)
{
  v2 = v1[21];
  swift_willThrow();
  *v2 = 1;
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v5 = v4;
  sub_221EA4A40(v2, v4);
  *(v5 + *(v3 + 20)) = v1[22];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_221F4F0C0(void *a1)
{
  v2 = type metadata accessor for IDSErrorAction(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 cloudType])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = a1;
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();

    if (!os_log_type_enabled(v7, v8))
    {
      v12 = 11;
      goto LABEL_14;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_221E93000, v7, v8, "Invalid cloud type for relationship: %@", v9, 0xCu);
    v12 = 11;
  }

  else
  {
    result = [a1 secureCloudUpgradeCompleted];
    if ((result & 1) == 0)
    {
      return result;
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v14 = sub_221FB61D8();
    __swift_project_value_buffer(v14, qword_281307DF0);
    v15 = a1;
    v7 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    if (!os_log_type_enabled(v7, v16))
    {
      v12 = 17;
      goto LABEL_14;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v15;
    *v10 = v15;
    v17 = v15;
    _os_log_impl(&dword_221E93000, v7, v16, "Relationship already upgraded: %@", v9, 0xCu);
    v12 = 17;
  }

  sub_221EA0558(v10);
  MEMORY[0x223DADA80](v10, -1, -1);
  MEMORY[0x223DADA80](v9, -1, -1);
LABEL_14:

  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v18 = swift_allocError();
  *v19 = v12;
  v20 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v22 = v21;
  sub_221EA4A40(v4, v21);
  *(v22 + *(v20 + 20)) = v18;
  return swift_willThrow();
}

uint64_t sub_221F4F430()
{
  v1 = [*(v0[2] + 168) contacts];
  if (v1)
  {
    v2 = v1;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v3 = sub_221FB64F8();
    v0[3] = v3;

    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_221F4F634;

    return sub_221F43BB0(v3, 0);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "No contact to update availability", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221F4F634()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_221F4F7AC;
  }

  else
  {
    v2 = sub_221F4F748;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F4F748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F4F7AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F4F830()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((v0[4] + 80), *(v0[4] + 104));
  v2 = sub_221FB62E8();

  v3 = [v1 installStateForBundleIdentifier_];

  if (v3 == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_221F4FA44;

    return sub_221EF490C();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "App not installed to handle upgrade message", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_221F4FA44(__int16 a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F4FB7C, 0, 0);
  }
}

uint64_t sub_221F4FB7C()
{
  v12 = v0;
  v1 = *(v0 + 48);
  if (v1 != 517)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v2 = sub_221FB61D8();
    __swift_project_value_buffer(v2, qword_281307DF0);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 48);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 50) = v5;
      sub_221FB6A08();
      v8 = sub_221EF4114(*(v0 + 16), *(v0 + 24), &v11);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_221E93000, v3, v4, "Invalid account info for upgrade request: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }
  }

  v9 = *(v0 + 8);

  return v9(v1 == 517);
}

uint64_t sub_221F4FD48(uint64_t a1, unint64_t a2, id a3, void *a4)
{
  if (![a3 isFriendshipActive])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v15 = sub_221FB61D8();
    __swift_project_value_buffer(v15, qword_281307DF0);
    v16 = a3;
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
      _os_log_impl(&dword_221E93000, v17, v18, "Attempting to upgrade inactive friendship: %@", v19, 0xCu);
      sub_221EA0558(v20);
      MEMORY[0x223DADA80](v20, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v23 = 8;
LABEL_29:
    *v22 = v23;
    return swift_willThrow();
  }

  v9 = *(v4 + 457);
  v10 = *(v4 + 464);
  result = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  if ((result & 1) == 0)
  {
    if (v9)
    {
      return result;
    }

    goto LABEL_14;
  }

  v12 = UserDefaultsKeys.rawValue.getter();
  v13 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v10, v12);

  if (v13 == 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
LABEL_14:
    v24 = [a4 secureCloudUpgradeToken];
    if (v24)
    {
      v25 = v24;
      v26 = sub_221FB6318();
      v28 = v27;

      if (v26 == a1 && v28 == a2)
      {
      }

      v30 = sub_221FB6B58();

      if (v30)
      {
        return result;
      }
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v31 = sub_221FB61D8();
    __swift_project_value_buffer(v31, qword_281307DF0);

    v32 = a4;
    v33 = sub_221FB61B8();
    v34 = sub_221FB65A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_221EF4114(a1, a2, &v42);
      *(v35 + 12) = 2080;
      v37 = [v32 secureCloudUpgradeToken];
      if (v37)
      {
        v38 = v37;
        sub_221FB6318();

        sub_221FB6A08();

        v39 = 0;
        v40 = 0xE000000000000000;
      }

      else
      {
        v40 = 0xE300000000000000;
        v39 = 7104878;
      }

      v41 = sub_221EF4114(v39, v40, &v42);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_221E93000, v33, v34, "Invalid upgrade token (request: %s, cloud: %s)", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v36, -1, -1);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v23 = 15;
    goto LABEL_29;
  }

  return result;
}

id sub_221F50194(void *a1)
{
  v2 = v1;
  v4 = sub_221FB5BC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v28[-v12];
  sub_221FB5BB8();
  sub_221FB5B28();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v13, v4);
  result = [a1 hasIncomingSecureCloudUpgradeRequest];
  if (result)
  {
    result = [a1 dateForLatestIncomingUpgradeRequest];
    if (result)
    {
      v18 = result;
      sub_221FB5B98();

      (*(v5 + 32))(v11, v8, v4);
      sub_221FB5B28();
      v20 = v19;
      v21 = *(v2 + 432);
      v22 = *(v2 + 440);
      v23 = *(v2 + 448);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        v28[15] = v21;
        v24 = UserDefaultsKeys.rawValue.getter();
        v25 = COERCE_DOUBLE(sub_221EF8934(v23, v24));
        v27 = v26;

        v16(v11, v4);
        if ((v27 & 1) == 0)
        {
          v22 = v25;
        }
      }

      else
      {
        v16(v11, v4);
      }

      return (v15 - v20 < v22);
    }
  }

  return result;
}

uint64_t sub_221F503C8(uint64_t a1, uint64_t a2)
{
  v3[56] = a2;
  v3[57] = v2;
  v3[55] = a1;
  v3[58] = type metadata accessor for IDSErrorAction(0);
  v3[59] = swift_task_alloc();
  v4 = sub_221FB60A8();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F504C8, 0, 0);
}

uint64_t sub_221F504C8()
{
  v49 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[56];
  v2 = sub_221FB61D8();
  v0[64] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000028, 0x8000000221FC3850);
  v3 = [objc_msgSend(v1 destination)];
  swift_unknownObjectRelease();
  v4 = sub_221FB64F8();

  sub_221F058C0(v4);
  v6 = v5;

  if (v6)
  {
    v7 = v0[63];
    v8 = v0[60];
    v9 = v0[61];
    v10 = v0[55];
    v11 = sub_221FB62E8();

    v12 = ASSanitizedContactDestination();

    v13 = sub_221FB6318();
    v15 = v14;

    v16 = *(v9 + 16);
    v16(v7, v10, v8);

    v17 = sub_221FB61B8();
    v18 = sub_221FB65C8();
    v47 = v15;

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[63];
    if (v19)
    {
      v22 = v0[61];
      v21 = v0[62];
      v46 = v13;
      v23 = v0[60];
      v24 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v24 = 136315394;
      v16(v21, v20, v23);
      v25 = sub_221FB6328();
      v27 = v26;
      v28 = v23;
      v13 = v46;
      (*(v22 + 8))(v20, v28);
      v29 = sub_221EF4114(v25, v27, v48);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_221EF4114(v46, v47, v48);
      _os_log_impl(&dword_221E93000, v17, v18, "Handling upgrade response: %s, from: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v45, -1, -1);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    else
    {
      v41 = v0[60];
      v42 = v0[61];

      (*(v42 + 8))(v20, v41);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v43 = swift_allocObject();
    v0[65] = v43;
    *(v43 + 16) = xmmword_221FB81A0;
    *(v43 + 32) = v13;
    *(v43 + 40) = v47;
    v44 = swift_task_alloc();
    v0[66] = v44;
    *v44 = v0;
    v44[1] = sub_221F50A28;

    return sub_221F4EB1C(v43);
  }

  else
  {
    v30 = sub_221FB61B8();
    v31 = sub_221FB65A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_221E93000, v30, v31, "Failed to find address for upgrade response", v32, 2u);
      MEMORY[0x223DADA80](v32, -1, -1);
    }

    v33 = v0[59];

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v34 = swift_allocError();
    *v35 = 48;
    v36 = type metadata accessor for IDSError(0);
    sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v38 = v37;
    sub_221EA4A40(v33, v37);
    *(v38 + *(v36 + 20)) = v34;
    swift_willThrow();

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_221F50A28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = v1;

  if (v1)
  {
    v4 = sub_221F5350C;
  }

  else
  {

    v4 = sub_221F50B48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F50B48()
{
  v1 = v0[67];
  v2 = [v1 relationshipStorage];
  v3 = [v2 primaryRelationship];
  v0[69] = v3;

  v4 = [v1 relationshipStorage];
  v5 = [v4 primaryRemoteRelationship];
  v0[70] = v5;

  v6 = v3;
  v7 = v5;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v6;
    v11[1] = v7;
    v12 = v6;
    v13 = v7;
    _os_log_impl(&dword_221E93000, v8, v9, "Upgrade response for relationships - local: %@, remote: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v14 = v0[68];

  sub_221F4F0C0(v6);
  if (v14)
  {
    v15 = v0[67];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[71] = v18;
    *v18 = v0;
    v18[1] = sub_221F50DD4;

    return sub_221F4F810();
  }
}

uint64_t sub_221F50DD4(char a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = sub_221F53A34;
  }

  else
  {
    *(v4 + 752) = a1 & 1;
    v5 = sub_221F50F00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *sub_221F50F00()
{
  if (*(v0 + 752) == 1)
  {
    v1 = *(v0 + 576);
    v2 = *(v0 + 560);
    v3 = *(v0 + 552);
    v4 = sub_221FB6088();
    sub_221F4FD48(v4, v5, v3, v2);
    if (v1)
    {

      *(v0 + 728) = v1;
      v6 = v1;
      v7 = sub_221FB61B8();
      v8 = sub_221FB65A8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = v1;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_221E93000, v7, v8, "Failed to handle upgrade response: %@", v9, 0xCu);
        sub_221EA0558(v10);
        MEMORY[0x223DADA80](v10, -1, -1);
        MEMORY[0x223DADA80](v9, -1, -1);
      }

      v13 = v1;
      v14 = v1;
      v15 = sub_221FB5A98();
      v16 = [v15 domain];

      if (!v16)
      {
        sub_221FB6318();
        v16 = sub_221FB62E8();
      }

      v17 = sub_221FB5A98();
      v18 = [v17 code];

      result = sub_221FB62E8();
      if (v18 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v18 <= 0x7FFFFFFF)
      {
        v20 = result;
        ASAnalyticsReportAddManateeContainer();

        v21 = swift_task_alloc();
        *(v0 + 736) = v21;
        *v21 = v0;
        v21[1] = sub_221F53594;
        v22 = *(v0 + 552);

        return sub_221F48844(v22);
      }

      __break(1u);
      return result;
    }

    v24 = *(v0 + 456);

    __swift_project_boxed_opaque_existential_0Tm(v24 + 42, v24[45]);
    v25 = sub_221FB6068();
    *(v0 + 584) = v25;
    v26 = v24[20];
    *(v0 + 592) = v26;
    v27 = swift_task_alloc();
    *(v0 + 600) = v27;
    *v27 = v0;
    v27[1] = sub_221F512C0;

    return sub_221E98A68(v25, v26);
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 712) = v23;
    *v23 = v0;
    v23[1] = sub_221F53178;

    return sub_221F4F410();
  }
}

uint64_t sub_221F512C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 608) = a1;
  *(v4 + 616) = v1;

  if (v1)
  {
    v5 = sub_221F51400;
  }

  else
  {
    v5 = sub_221F51654;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *sub_221F51400()
{
  v1 = v0[77];
  v0[91] = v1;
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to handle upgrade response: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = v1;
  v10 = v1;
  v11 = sub_221FB5A98();
  v12 = [v11 domain];

  if (!v12)
  {
    sub_221FB6318();
    v12 = sub_221FB62E8();
  }

  v13 = sub_221FB5A98();
  v14 = [v13 code];

  result = sub_221FB62E8();
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = result;
  ASAnalyticsReportAddManateeContainer();

  v17 = swift_task_alloc();
  v0[92] = v17;
  *v17 = v0;
  v17[1] = sub_221F53594;
  v18 = v0[69];

  return sub_221F48844(v18);
}

uint64_t sub_221F51654()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 456);
  v3 = [*(v0 + 536) relationshipStorage];
  v4 = [v3 secureCloudRelationship];
  *(v0 + 624) = v4;

  v5 = v4;
  [v5 setRemoteRelationshipZoneShareID_];
  v6 = __swift_project_boxed_opaque_existential_0Tm((v2 + 296), *(v2 + 320));
  if ([v5 cloudType] == 1)
  {
    v7 = [v5 secureCloudZoneName];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v8 = v7;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    v13 = sub_221FB65D8();
    v9 = [v5 recordWithZoneID:v13 recordEncryptionType:1];
    *(v0 + 632) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_221FB81B0;
    *(v10 + 32) = v9;
    v11 = v9;
    v12 = MEMORY[0x277D84F90];
    sub_221ED4350(MEMORY[0x277D84F90]);
    v2 = sub_221FB61B8();
    LOBYTE(v13) = sub_221FB65C8();
    if (!os_log_type_enabled(v2, v13))
    {
LABEL_6:
      v18 = *(v0 + 592);

      v19 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 11, v6[14]);
      *(v0 + 640) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v20 = sub_221FB6428();
      *(v0 + 648) = v20;

      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v21 = sub_221FB6428();
      *(v0 + 656) = v21;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 400;
      *(v0 + 24) = sub_221F51D54;
      v22 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_221EBA78C;
      *(v0 + 232) = &block_descriptor_23;
      *(v0 + 240) = v22;
      [v19 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v20 recordIDsToDelete:v21 priority:2 activity:0 useZoneWideSharing:1 group:v18 completion:v0 + 208];
      v7 = (v0 + 16);

      return MEMORY[0x282200938](v7);
    }

    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = v12 >> 62;
    if (!(v12 >> 62))
    {
LABEL_5:
      *(v14 + 4) = v15;
      v16 = v13;
      v17 = v14;
      _os_log_impl(&dword_221E93000, v2, v16, "Pushing relationship to iCloud with %ld extra records", v14, 0xCu);
      MEMORY[0x223DADA80](v17, -1, -1);
      goto LABEL_6;
    }

LABEL_22:
    v45 = v14;
    v15 = sub_221FB6868();
    v14 = v45;
    goto LABEL_5;
  }

  v23 = v5;
  v24 = sub_221FB61B8();
  v25 = sub_221FB65A8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v2 = v23;
    v27 = v23;
    _os_log_impl(&dword_221E93000, v24, v25, "Attempting to save legacy relationship to secure cloud container %@", v26, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  sub_221EA4994();
  v6 = swift_allocError();
  *v28 = 11;
  swift_willThrow();

  v29 = *(v0 + 608);
  *(v0 + 728) = v6;
  v30 = v6;
  v31 = sub_221FB61B8();
  v32 = sub_221FB65A8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v33 = 138412290;
    v34 = v6;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v2 = v35;
    _os_log_impl(&dword_221E93000, v31, v32, "Failed to handle upgrade response: %@", v33, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v33, -1, -1);
  }

  v36 = v6;
  v37 = v6;
  v38 = sub_221FB5A98();
  v13 = [v38 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v39 = sub_221FB5A98();
  v40 = [v39 code];

  v14 = sub_221FB62E8();
  if (v40 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v40 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v41 = v14;
  ASAnalyticsReportAddManateeContainer();

  v42 = swift_task_alloc();
  *(v0 + 736) = v42;
  *v42 = v0;
  v42[1] = sub_221F53594;
  v43 = *(v0 + 552);

  return sub_221F48844(v43);
}

uint64_t sub_221F51D54()
{
  v1 = *(*v0 + 48);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_221F51E64;
  }

  else
  {
    v2 = sub_221F520F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_221F51E64(uint64_t a1)
{
  v2 = *(v1 + 656);
  v3 = *(v1 + 648);
  v4 = *(v1 + 632);
  v5 = *(v1 + 624);
  swift_willThrow();

  v6 = *(v1 + 664);
  v7 = *(v1 + 608);

  *(v1 + 728) = v6;
  v8 = v6;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to handle upgrade response: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = v6;
  v16 = v6;
  v17 = sub_221FB5A98();
  v18 = [v17 domain];

  if (!v18)
  {
    sub_221FB6318();
    v18 = sub_221FB62E8();
  }

  v19 = sub_221FB5A98();
  v20 = [v19 code];

  result = sub_221FB62E8();
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = result;
  ASAnalyticsReportAddManateeContainer();

  v23 = swift_task_alloc();
  *(v1 + 736) = v23;
  *v23 = v1;
  v23[1] = sub_221F53594;
  v24 = *(v1 + 552);

  return sub_221F48844(v24);
}

uint64_t sub_221F520F0()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[57];
  v0[84] = v0[51];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + 296), *(v5 + 320));
  v7 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 6, v6[9]);

  sub_221F17A54(v8);

  sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v9 = sub_221FB64E8();
  v0[85] = v9;

  v0[10] = v0;
  v0[15] = v0 + 52;
  v0[11] = sub_221F522C8;
  v10 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_221EBCB58;
  v0[37] = &block_descriptor_15_0;
  v0[38] = v10;
  [v7 handleSavedRecords:v9 forContact:0 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_221F522C8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 688) = v1;
  if (v1)
  {
    v2 = sub_221F529A4;
  }

  else
  {
    v2 = sub_221F523D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F523D8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = *(v0 + 424);
  *(v0 + 696) = v4;

  v5 = v4;
  v6 = v3;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 608);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v5;
    *v11 = v9;
    v11[1] = v5;
    v12 = v9;
    _os_log_impl(&dword_221E93000, v7, v8, "Saved share identifier: %@ on %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {

    v7 = v5;
  }

  v13 = *(v0 + 552);
  v14 = *(v0 + 456);

  [v13 insertEventWithType_];
  v15 = __swift_project_boxed_opaque_existential_0Tm((v14 + 296), *(v14 + 320));
  if (![v13 cloudType])
  {
    v44 = *(v0 + 592);
    v45 = *(v0 + 552);
    v46 = *__swift_project_boxed_opaque_existential_0Tm(v15 + 6, v15[9]);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 432;
    *(v0 + 152) = sub_221F52C24;
    v47 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_221EF4C50;
    *(v0 + 360) = &block_descriptor_18_0;
    *(v0 + 368) = v47;
    [v46 saveRelationship:v45 contact:0 cloudKitGroup:v44 activity:0 completion:v0 + 336];
    v39 = v0 + 144;

    return MEMORY[0x282200938](v39);
  }

  v16 = *(v0 + 552);
  v17 = sub_221FB61B8();
  v18 = sub_221FB65A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 552);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    _os_log_impl(&dword_221E93000, v17, v18, "Attempting to save secure cloud relationship to legacy container %@", v20, 0xCu);
    sub_221EA0558(v21);
    MEMORY[0x223DADA80](v21, -1, -1);
    MEMORY[0x223DADA80](v20, -1, -1);
  }

  sub_221EA4994();
  v23 = swift_allocError();
  *v24 = 11;
  swift_willThrow();
  v25 = *(v0 + 608);

  *(v0 + 728) = v23;
  v26 = v23;
  v27 = sub_221FB61B8();
  v28 = sub_221FB65A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v23;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_221E93000, v27, v28, "Failed to handle upgrade response: %@", v29, 0xCu);
    sub_221EA0558(v30);
    MEMORY[0x223DADA80](v30, -1, -1);
    MEMORY[0x223DADA80](v29, -1, -1);
  }

  v33 = v23;
  v34 = v23;
  v35 = sub_221FB5A98();
  v36 = [v35 domain];

  if (!v36)
  {
    sub_221FB6318();
    v36 = sub_221FB62E8();
  }

  v37 = sub_221FB5A98();
  v38 = [v37 code];

  v39 = sub_221FB62E8();
  if (v38 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v38 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x282200938](v39);
  }

  v40 = v39;
  ASAnalyticsReportAddManateeContainer();

  v41 = swift_task_alloc();
  *(v0 + 736) = v41;
  *v41 = v0;
  v41[1] = sub_221F53594;
  v42 = *(v0 + 552);

  return sub_221F48844(v42);
}

void *sub_221F529A4(uint64_t a1)
{
  v2 = v1[85];
  v3 = v1[78];
  v4 = v1[76];
  swift_willThrow();

  v5 = v1[86];
  v1[91] = v5;
  v6 = v5;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "Failed to handle upgrade response: %@", v9, 0xCu);
    sub_221EA0558(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v13 = v5;
  v14 = v5;
  v15 = sub_221FB5A98();
  v16 = [v15 domain];

  if (!v16)
  {
    sub_221FB6318();
    v16 = sub_221FB62E8();
  }

  v17 = sub_221FB5A98();
  v18 = [v17 code];

  result = sub_221FB62E8();
  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = result;
  ASAnalyticsReportAddManateeContainer();

  v21 = swift_task_alloc();
  v1[92] = v21;
  *v21 = v1;
  v21[1] = sub_221F53594;
  v22 = v1[69];

  return sub_221F48844(v22);
}

uint64_t sub_221F52C24()
{
  v1 = *(*v0 + 176);
  *(*v0 + 704) = v1;
  if (v1)
  {
    v2 = sub_221F52D34;
  }

  else
  {
    v2 = sub_221F52FA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_221F52D34(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 704);
  v3 = *(v1 + 608);

  *(v1 + 728) = v2;
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade response: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v2;
  v12 = v2;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = swift_task_alloc();
  *(v1 + 736) = v19;
  *v19 = v1;
  v19[1] = sub_221F53594;
  v20 = *(v1 + 552);

  return sub_221F48844(v20);
}

uint64_t sub_221F52FA0()
{
  v1 = *(v0 + 432);
  v2 = sub_221FB62E8();
  v3 = sub_221FB62E8();
  ASAnalyticsReportAddManateeContainer();

  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_221E93000, v5, v6, "Upgraded relationship: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
    v4 = v5;
    v5 = *(v0 + 536);
  }

  else
  {
    v9 = *(v0 + 536);
  }

  v10 = *(v0 + 608);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_221F53178()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_221F537E0;
  }

  else
  {
    v2 = sub_221F5328C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_221F5328C()
{
  sub_221EA4994();
  v1 = swift_allocError();
  *v2 = 18;
  swift_willThrow();
  v0[91] = v1;
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade response: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = swift_task_alloc();
  v0[92] = v18;
  *v18 = v0;
  v18[1] = sub_221F53594;
  v19 = v0[69];

  return sub_221F48844(v19);
}

uint64_t sub_221F5350C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F53594()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_221F53C88;
  }

  else
  {
    v2 = sub_221F536A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F536A8()
{
  v1 = v0[91];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[67];
  v5 = v0[59];
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v8 = v7;
  sub_221EA4A40(v5, v7);
  *(v8 + *(v6 + 20)) = v1;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

void *sub_221F537E0()
{
  v1 = v0[90];
  v0[91] = v1;
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to handle upgrade response: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = v1;
  v10 = v1;
  v11 = sub_221FB5A98();
  v12 = [v11 domain];

  if (!v12)
  {
    sub_221FB6318();
    v12 = sub_221FB62E8();
  }

  v13 = sub_221FB5A98();
  v14 = [v13 code];

  result = sub_221FB62E8();
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = result;
  ASAnalyticsReportAddManateeContainer();

  v17 = swift_task_alloc();
  v0[92] = v17;
  *v17 = v0;
  v17[1] = sub_221F53594;
  v18 = v0[69];

  return sub_221F48844(v18);
}

void *sub_221F53A34()
{
  v1 = v0[72];
  v0[91] = v1;
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to handle upgrade response: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = v1;
  v10 = v1;
  v11 = sub_221FB5A98();
  v12 = [v11 domain];

  if (!v12)
  {
    sub_221FB6318();
    v12 = sub_221FB62E8();
  }

  v13 = sub_221FB5A98();
  v14 = [v13 code];

  result = sub_221FB62E8();
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = result;
  ASAnalyticsReportAddManateeContainer();

  v17 = swift_task_alloc();
  v0[92] = v17;
  *v17 = v0;
  v17[1] = sub_221F53594;
  v18 = v0[69];

  return sub_221F48844(v18);
}

uint64_t sub_221F53C88()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);

  v4 = *(v0 + 8);

  return v4();
}

BOOL sub_221F53D28(void *a1, char a2)
{
  v5 = sub_221FB5BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v9 = [a1 dateForLatestUpgradeAvailableUnavailableChange];
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  sub_221FB5B98();

  v11 = v2;
  sub_221FB5B78();
  v13 = v12;
  v14 = *(v2 + 432);
  v15 = *(v11 + 440);
  v16 = *(v11 + 448);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v38) = v14;
    v17 = UserDefaultsKeys.rawValue.getter();
    v18 = COERCE_DOUBLE(sub_221EF8934(v16, v17));
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v15 = v18;
    }
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v21 = fabs(v13);
  v22 = sub_221FB61D8();
  __swift_project_value_buffer(v22, qword_281307DF0);
  v23 = a1;
  v24 = sub_221FB61B8();
  v25 = sub_221FB65C8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315394;
    v28 = [v23 cloudKitAddress];
    if (v28)
    {
      v29 = v28;
      v30 = sub_221FB6318();
      v32 = v31;

      v38 = 0;
      v39 = 0xE000000000000000;
      v37[1] = v30;
      v37[2] = v32;
      sub_221FB6A08();

      v33 = v38;
      v34 = v39;
    }

    else
    {
      v34 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_221EF4114(v33, v34, &v40);

    *(v26 + 4) = v36;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v21 < v15;
    _os_log_impl(&dword_221E93000, v24, v25, "Upgrade %s backing off availability change: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DADA80](v27, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return v21 >= v15;
}

uint64_t sub_221F5415C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_221F541B0(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E9544C;

  return sub_221F47B54(a1, v5, v4);
}

unint64_t sub_221F54258()
{
  result = qword_281306F30;
  if (!qword_281306F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBD08, &qword_221FB9210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F30);
  }

  return result;
}

uint64_t sub_221F542BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221F54318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
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

uint64_t sub_221F54360(uint64_t result, int a2, int a3)
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
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
      *(result + 488) = 1;
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

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_221F544A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_221EEE570();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221F54528(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_221F54664(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_221F54860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F54990(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_221F549B4, 0, 0);
}

uint64_t sub_221F549B4()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 56) = v3;
    sub_221EC4754(112, v3);
    if (v4)
    {
      __swift_project_boxed_opaque_existential_0Tm(*(v0 + 48), *(*(v0 + 48) + 24));
      v5 = swift_task_alloc();
      *(v0 + 64) = v5;
      *v5 = v0;
      v5[1] = sub_221F54AF8;
      v6 = *(v0 + 40);

      return sub_221F08060(v3, v6);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F54AF8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_221F54C70;
  }

  else
  {
    v2 = sub_221F54C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F54C0C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F54C70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F54D00(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_221F54D5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_221F54F30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_221F552A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  sub_221F78590(sub_221F55AC0, v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v13;
  return result;
}

uint64_t sub_221F55370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = sub_221ED4B5C(a2, a3);
  v7 = 0uLL;
  if (v8)
  {
    v9 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221ED7588();
      v11 = v13;
    }

    v12 = *(*(v11 + 56) + 16 * v9);
    result = sub_221F557C0(v9, v11);
    v7 = v12;
    *a1 = v11;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_221F554A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221FB67F8() + 1) & ~v5;
    do
    {
      sub_221FB6C38();

      sub_221FB6358();
      v9 = sub_221FB6C58();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221F55650(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221FB67F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_221FB6C28();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221F557C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221FB67F8() + 1) & ~v5;
    do
    {
      sub_221FB6C38();

      sub_221FB6358();
      v9 = sub_221FB6C58();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_221F55970(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = a1;
    v6 = sub_221E9EA90(v5, 0);
    v7 = sub_221E9F440(&v15, v6 + 2, v5, v4);
    v8 = v15;

    sub_221E96470(v8);
    if (v7 != v5)
    {
LABEL_13:
      __break(1u);
      return;
    }

    a1 = v14;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_unlock((v3 + 24));
  v9 = v6[2];
  if (v9)
  {
    v10 = 0;
    v11 = a1 & 1;
    v12 = v6 + 5;
    while (v10 < v6[2])
    {
      ++v10;
      v13 = *(v12 - 1);
      LOBYTE(v15) = v11;

      v13(&v15);

      v12 += 2;
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
}

id sub_221F55AF0(void *a1)
{
  v2 = v1;
  v3 = [a1 relationshipStorage];
  v4 = [v3 secureCloudRelationship];

  result = [v4 secureCloudZoneName];
  if (result)
  {
    v6 = result;
    sub_221F55BF4();
    sub_221FB6318();

    sub_221FB6318();
    v7 = sub_221FB65D8();

    v8 = [v2 recordWithZoneID:v7 recordEncryptionType:1];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_221F55BF4()
{
  result = qword_281306EF0;
  if (!qword_281306EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306EF0);
  }

  return result;
}

uint64_t sub_221F55C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

void sub_221F55DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_221F776C4(0, v4, 0);
    v6 = v14;
    v7 = (a1 + 32);
    v8 = *(v14 + 16);
    do
    {
      v10 = *v7++;
      v9 = v10;
      v15 = v6;
      v11 = *(v6 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_221F776C4((v11 > 1), v8 + 1, 1);
        v6 = v15;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 2 * v8++ + 32) = v9;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7B0, &qword_221FBD360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7B8, &qword_221FBD368);
  swift_dynamicCast();
  sub_221F56444();
  v12 = sub_221FB6428();

  v13 = sub_221FB5BF8();
  [a3 insertPlaceholderForEventTypes:v12 contactUUID:v13];
}

void sub_221F55F34(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_221FB5BF8();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_221F563C8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F560F8;
  aBlock[3] = &block_descriptor_24;
  v11 = _Block_copy(aBlock);

  [a2 performBlockWaitingOnInviteFinalizationForContactUUID:v8 block:v11];
  _Block_release(v11);
}

uint64_t sub_221F560F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_221F5613C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221F56160, 0, 0);
}

uint64_t sub_221F56160()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_221F56250;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000027, 0x8000000221FC3A50, sub_221F563C0, v1, v3);
}

uint64_t sub_221F56250()
{

  return MEMORY[0x2822009F8](sub_221F11DC8, 0, 0);
}

uint64_t sub_221F56368()
{
  v1 = [*v0 allFinalizedFriendUUIDs];
  sub_221FB5C38();
  v2 = sub_221FB6438();

  return v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221F56444()
{
  result = qword_27CFEC7C0;
  if (!qword_27CFEC7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC7C0);
  }

  return result;
}

void sub_221F564A0(unint64_t a1, id a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8);
  v7 = *(v6 - 8);
  v34 = v7[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = *(v2 + 136);
  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v36 = a2;
  v37 = v7;
  v35 = v9;
  if (v11)
  {
    v39 = MEMORY[0x277D84F90];

    sub_221FB69D8();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v31 = v6;
      v32 = a1;
      v6 = 0;
      a1 = v10 & 0xC000000000000001;
      v33 = v3;
      v12 = *(v3 + 120);
      v38 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v12)
      {
        v9 = 11;
      }

      else
      {
        v9 = 7;
      }

      v3 = &off_278497000;
      v7 = &off_278497000;
      while (1)
      {
        if (a1)
        {
          v13 = MEMORY[0x223DACD50](v6, v10);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v11 = sub_221FB6868();
            goto LABEL_3;
          }

          if (v6 >= *(v38 + 16))
          {
            goto LABEL_21;
          }

          v13 = *(v10 + 8 * v6 + 32);
        }

        v14 = v13;
        a2 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
        ++v6;
        [a2 setCapabilities_];

        sub_221FB69B8();
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
        if (v11 == v6)
        {
          v3 = v33;

          v6 = v31;
          a1 = v32;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v15 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
    v16 = v3[16];
    if (v16)
    {
      v17 = v16[2];
      swift_unknownObjectRetain();
    }

    else
    {
      v17 = 0;
    }

    [v15 setXPCActivity_];
    swift_unknownObjectRelease();
    sub_221F570F4();

    v18 = sub_221FB6738();
    [v18 setQualityOfService_];
    v19 = v18;
    [v19 setConfiguration_];
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a1;

    sub_221FB6708();

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;

    sub_221FB6718();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v37;
    v26 = v35;
    (v37[2])(v35, v36, v6);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = a1;
    (v25[4])(v28 + v27, v26, v6);

    sub_221FB6728();

    [v3[14] addOperation_];

    v29 = v3[19];
    v3[19] = v19;
    sub_221E9D128(v29);
  }
}

uint64_t sub_221F56938(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_221F572B0(a2, a3 & 1, a1, a5);
  }

  else
  {
    v10 = *(a5 + 16);
    os_unfair_lock_lock(v10 + 12);

    os_unfair_lock_unlock(v10 + 12);
  }

  v11 = *(a5 + 16);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v11 + 48));
  sub_221F57F3C((v11 + 16));
  os_unfair_lock_unlock((v11 + 48));
}

uint64_t sub_221F56A90(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_221F577A4(a2, a3 & 1, a1, a5);
  }

  else
  {
    v10 = *(a5 + 16);
    os_unfair_lock_lock(v10 + 12);

    os_unfair_lock_unlock(v10 + 12);
  }

  v11 = *(a5 + 16);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v11 + 48));
  sub_221F57E70((v11 + 16));
  os_unfair_lock_unlock((v11 + 48));
}

uint64_t sub_221F56BE8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221F57C84(a1, a2 & 1, a4);
  }

  return result;
}

uint64_t sub_221F56C70()
{

  sub_221E9D128(*(v0 + 152));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F56CEC(uint64_t a1)
{
  result = sub_221F570AC(&qword_27CFEC7C8, &unk_221FBD46C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221F56D30(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7D8, &qword_221FBD498);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E0, &qword_221FBD4A0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 48) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;
  *(v3 + 32) = v4;
  *(v3 + 40) = v4;
  *(v2 + 16) = v3;
  sub_221F564A0(v2, a1);
}

uint64_t sub_221F56DD8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_221F56DF8, v1, 0);
}

uint64_t sub_221F56DF8()
{
  v1 = *(v0 + 56);
  v2 = sub_221F570AC(&qword_27CFEC7C8, &unk_221FBD46C);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_221F56F00;
  v4 = *(v0 + 56);

  return MEMORY[0x2822008A0](v0 + 16, v1, v2, 0x6C616E7265746E69, 0xED000029286E7552, sub_221F570EC, v4, &type metadata for CloudZoneModifyResult);
}

uint64_t sub_221F56F00()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_221F57050;
  }

  else
  {
    v4 = sub_221F5702C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F5702C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_221F57068(uint64_t a1)
{
  result = sub_221F570AC(&qword_27CFEC7D0, &unk_221FBD42C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221F570AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudZoneModifyOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221F570F4()
{
  result = qword_27CFEC7F0;
  if (!qword_27CFEC7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC7F0);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221F57198(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_221F56BE8(a1, a2 & 1, v6, v7, v8);
}

uint64_t sub_221F57228(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t sub_221F572B0(void *a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    sub_221EA9488(a1);
    v8 = a3;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    sub_221EA9494(a1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2114;
      sub_221EA9488(a1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_221E93000, v9, v10, "[CloudZoneCreateOperation] Error saving zone: %{public}@, error: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v15 = *(a4 + 16);
    sub_221EA9488(a1);
    v16 = v8;
    os_unfair_lock_lock((v15 + 48));
    v17 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));

    os_unfair_lock_unlock((v15 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC228, &qword_221FBADC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v16;
    *(inited + 40) = a1;
    sub_221EA9488(a1);
    v19 = v16;
    sub_221ED44F4(inited);
    os_unfair_lock_lock((v15 + 48));

    os_unfair_lock_unlock((v15 + 48));

    sub_221EA9494(a1);
  }

  else
  {
    v20 = *(a4 + 16);
    os_unfair_lock_lock((v20 + 48));
    v21 = *(v20 + 16);

    os_unfair_lock_unlock((v20 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_221FB81B0;
    *(v22 + 32) = a1;
    v23 = a1;
    sub_221ED4638(v22);
    v17 = v21;
    os_unfair_lock_lock((v20 + 48));

    os_unfair_lock_unlock((v20 + 48));

    os_unfair_lock_lock((v20 + 48));

    os_unfair_lock_unlock((v20 + 48));

    os_unfair_lock_lock((v20 + 48));

    os_unfair_lock_unlock((v20 + 48));
  }

  return v17;
}

uint64_t sub_221F577A4(void *a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = a3;
    sub_221F57E8C(a1, 1);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    sub_221EA9460(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2114;
      v13 = v8;
      sub_221F57E8C(a1, 1);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_221E93000, v9, v10, "[CloudZoneCreateOperation] Error deleting zone: %{public}@, error: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v15 = *(a4 + 16);
    v16 = v8;
    sub_221F57E8C(a1, 1);
    os_unfair_lock_lock((v15 + 48));
    v17 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));

    os_unfair_lock_unlock((v15 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC228, &qword_221FBADC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v16;
    *(inited + 40) = a1;
    sub_221ED44F4(inited);
  }

  else
  {
    v19 = *(a4 + 16);
    os_unfair_lock_lock((v19 + 48));
    v17 = *(v19 + 16);

    os_unfair_lock_unlock((v19 + 48));

    os_unfair_lock_lock((v19 + 48));

    os_unfair_lock_unlock((v19 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_221FB81B0;
    *(v20 + 32) = a3;
    v21 = a3;
    sub_221ED4664(v20);
    os_unfair_lock_lock((v19 + 48));

    os_unfair_lock_unlock((v19 + 48));

    os_unfair_lock_lock((v19 + 48));

    os_unfair_lock_unlock((v19 + 48));
  }

  return v17;
}

uint64_t sub_221F57C84(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = a1;
    v6 = sub_221FB61B8();
    v7 = sub_221FB65A8();
    sub_221EA9460(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_221E93000, v6, v7, "[CloudZoneCreateOperation] Error creating zones: %@", v8, 0xCu);
      sub_221EA0558(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8);
    return sub_221FB6498();
  }

  else
  {
    v14 = *(a3 + 16);
    os_unfair_lock_lock(v14 + 12);

    os_unfair_lock_unlock(v14 + 12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8);
    return sub_221FB64A8();
  }
}

id sub_221F57E8C(id result, char a2)
{
  if (a2)
  {
    return result;
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

uint64_t sub_221F57EA4(uint64_t *a1, int a2)
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

uint64_t sub_221F57EEC(uint64_t result, int a2, int a3)
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

Swift::String __swiftcall Platform.appBundle()()
{
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (v1)
  {
    v3 = "onship8@NSError16";
  }

  else
  {
    v3 = "onse(response:sentInvitation:)";
  }

  v4 = (v3 | 0x8000000000000000);
  result._object = v4;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetryBackoff(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetryBackoff(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_221F57FDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F57FF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_221F58028(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F58140()
{
  if ((*(v0 + 116) & 1) == 0)
  {
    notify_cancel(*(v0 + 112));
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F581C0()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DC0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "### Language change - exiting clean ###", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  xpc_transaction_exit_clean();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageChangeObserver.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LanguageChangeObserver.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_221F58338(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F58354(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_221F58384()
{
  *(v1 + 64) = v0;

  return MEMORY[0x2822009F8](sub_221F58414, v0, 0);
}

uint64_t sub_221F58414()
{
  v1 = *(v0 + 64);
  if (*(v1 + 116) == 1)
  {
    *(v0 + 72) = -1;
    sub_221F3FA70();
    v2 = sub_221FB6628();
    *(v0 + 48) = sub_221F58A34;
    *(v0 + 56) = v1;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_221F589E0;
    *(v0 + 40) = &block_descriptor_25;
    v3 = _Block_copy((v0 + 16));

    v4 = sub_221FB6338();
    v5 = notify_register_dispatch((v4 + 32), (v0 + 72), v2, v3);

    _Block_release(v3);

    if (v5 || (v10 = *(v0 + 72), v10 == -1))
    {
      if (qword_281307070 != -1)
      {
        swift_once();
      }

      v6 = sub_221FB61D8();
      __swift_project_value_buffer(v6, qword_281307DC0);
      v7 = sub_221FB61B8();
      v8 = sub_221FB65A8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_221E93000, v7, v8, "Failed to register for language changes", v9, 2u);
        MEMORY[0x223DADA80](v9, -1, -1);
      }
    }

    else
    {
      *(v1 + 112) = v10;
      *(v1 + 116) = 0;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_221F58668(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_221FB64C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_221FA7D68(0, 0, v4, &unk_221FBD608, v7);
}

uint64_t sub_221F5878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221F587AC, 0, 0);
}

uint64_t sub_221F587AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_221F588A0;

    return sub_221F581A4();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_221F588A0()
{

  return MEMORY[0x2822009F8](sub_221F589B8, 0, 0);
}

uint64_t sub_221F589E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221F58A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221F5878C(a1, v4, v5, v6);
}

uint64_t sub_221F58B88()
{
  if (*(v0 + 192))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_221FB6698();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_221F58C00()
{
  sub_221F58B88();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F58C60(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F58C80, 0, 0);
}

uint64_t sub_221F58C80()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm(*(v0 + 32) *(*(v0 + 32) + 24))];
  *(v0 + 40) = v1;
  if (!v1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v2 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v2, v8, "No activity summary to push for yesterday", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  if (([v1 paused]& 1) != 0)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_221E93000, v4, v5, "Activity summary is paused, not pushing update", v6, 2u);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

LABEL_12:
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }

  v13 = sub_221EC9110(v2);
  *(v0 + 48) = v13;
  v14 = v13;
  v15 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 24);
  v16 = swift_task_alloc();
  *(v0 + 56) = v16;
  *(v16 + 16) = v2;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  v19 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *v17 = v0;
  v17[1] = sub_221F5900C;

  return MEMORY[0x28213AED0](&unk_221FBD768, v16, v18, &type metadata for SecureCloudUpdate, v19);
}

void sub_221F5900C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 72) = a1;

    MEMORY[0x2822009F8](sub_221F59150, 0, 0);
  }
}

uint64_t sub_221F59150()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221F591BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = *a1;
  *(v2 + 112) = *(a1 + 16);
  *(v2 + 120) = *(a1 + 24);
  *(v2 + 200) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F592AC, 0, 0);
}

uint64_t sub_221F592AC()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 40), *(*(v0 + 56) + 64));
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_221F593C0;
    v4 = *(v0 + 112);

    return sub_221F7AAE4(v2, v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_221F593C0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_221F595D4;
  }

  else
  {
    v2 = sub_221F594D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F594D4()
{
  v1 = v0[14];
  sub_221EA4AB4(v0[7] + 40, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    sub_221FB5C18();

    v0[19] = sub_221FB5BE8();
    v0[20] = v10;
    v11 = *(v9 + 8);
    v0[21] = v11;
    v0[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v4 = *v2;
    v0[23] = *v2;
    v3 = sub_221F59858;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221F595D4()
{
  v1 = [*(v0 + 120) _activitySummaryIndex];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221ED4904(v4, v3, 1u);

  v7 = v5;
  v8 = v2;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  sub_221ED4948(v4, v3, 1u);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  if (v11)
  {
    v15 = *(v0 + 112);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 134218498;
    *(v16 + 4) = v1;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v17 = v15;
    *(v16 + 22) = 2112;
    v18 = v15;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v20;
    v17[1] = v20;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to store yesterday snapshot anchor: %lld, relationship identifier %@, error: %@", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v17, -1, -1);
    MEMORY[0x223DADA80](v16, -1, -1);
    sub_221ED4948(v14, v13, 1u);
  }

  else
  {
    sub_221ED4948(*(v0 + 120), *(v0 + 128), 1u);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221F59858()
{
  v1 = sub_221ECB14C(v0[19], v0[20]);

  if (!v1)
  {
    v1 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v0[24] = v1;

  return MEMORY[0x2822009F8](sub_221F598EC, 0, 0);
}

uint64_t sub_221F598EC()
{
  v35 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221ED4904(v2, v1, 1u);

  v5 = v3;

  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v33 = v7;
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v9 = 136315394;
    v10 = [v8 UUID];

    if (!v10)
    {
      v29 = v0 + 15;
      v28 = v0[15];
      v27 = v29[1];

      sub_221ED4948(v28, v27, 1u);

      __break(1u);
      return result;
    }

    v11 = v0[21];
    v30 = v0[15];
    v31 = v0[16];
    v12 = v0[10];
    v13 = v0[8];
    sub_221ED4948(v30, v31, 1u);

    sub_221FB5C18();

    v14 = sub_221FB5BE8();
    v16 = v15;
    v11(v12, v13);
    v17 = sub_221EF4114(v14, v16, &v34);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v18 = sub_221FB6298();
    v20 = v19;

    v21 = sub_221EF4114(v18, v20, &v34);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_221E93000, v6, v33, "Updated snapshot hashes for yesterday: relationship %s, hashes %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v32, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
    sub_221ED4948(v30, v31, 1u);
  }

  else
  {
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];
    sub_221ED4948(v23, v22, 1u);

    sub_221ED4948(v23, v22, 1u);
    swift_bridgeObjectRelease_n();
  }

  v25 = v0[1];

  return v25();
}

void sub_221F59C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 72);
    v3 = &unk_281307000;
    do
    {
      if (*v2 == 1)
      {
        v8 = *(v2 - 3);
        v9 = *(v2 - 2);
        v10 = *(v2 - 1);

        v11 = v8;
        sub_221ED4904(v9, v10, 1u);
        if (v3[16] != -1)
        {
          swift_once();
        }

        v12 = sub_221FB61D8();
        __swift_project_value_buffer(v12, qword_281307DF0);
        v13 = v9;
        v14 = sub_221FB61B8();
        v15 = sub_221FB65A8();
        sub_221ED4948(v9, v10, 1u);
        if (os_log_type_enabled(v14, v15))
        {
          v4 = swift_slowAlloc();
          v16 = v11;
          v5 = swift_slowAlloc();
          *v4 = 138412290;
          *(v4 + 4) = v13;
          *v5 = v9;
          v6 = v13;
          _os_log_impl(&dword_221E93000, v14, v15, "Failed to update yesterday's summary %@)", v4, 0xCu);
          sub_221EA0558(v5);
          MEMORY[0x223DADA80](v5, -1, -1);
          v7 = v4;
          v3 = &unk_281307000;
          MEMORY[0x223DADA80](v7, -1, -1);

          sub_221ED4948(v9, v10, 1u);
        }

        else
        {

          sub_221ED4948(v9, v10, 1u);
        }
      }

      v2 += 48;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_221F59E84()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_221E9DA9C;

  return sub_221ECBCD8();
}

uint64_t sub_221F59F38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221F58C60(a1);
}

uint64_t sub_221F59FCC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F59FEC, 0, 0);
}

uint64_t sub_221F59FEC()
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

  return MEMORY[0x28213AEC8](&unk_221FBD748, v2, v4, v5);
}

uint64_t sub_221F5A11C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F591BC(a1, v4);
}

uint64_t sub_221F5A1B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a1;
  v15 = *a2;
  v16 = swift_task_alloc();
  *(v8 + 72) = v16;
  *v16 = v8;
  v16[1] = sub_221ED7B20;

  return sub_221ED1530(v8 + 16, v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221F5A2A0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_221E9544C;

  return sub_221F5A1B8(a1, a2, v6, v7, v8, v9, v10, v11);
}

id sub_221F5A3A4(void *a1, uint64_t a2)
{
  v5 = [a1 systemFieldsOnlyRecord];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 recordWithZoneID:a2 recordEncryptionType:1];
    v8 = [v6 recordID];
    v9 = [objc_allocWithZone(MEMORY[0x277CBC620]) initWithRecordID:v8 action:0];

    [v7 setParent_];
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v7 = a1;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v7;
      *v14 = v7;
      v15 = v7;
      _os_log_impl(&dword_221E93000, v11, v12, "Trying to create migration available record without a parent relationship record: %@", v13, 0xCu);
      sub_221EA0558(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v16 = 51;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_221F5A5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F5A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F5A80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5A8D0, 0, 0);
}

uint64_t sub_221F5A8D0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC3CA0);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB6108();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2220;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002ALL, 0x8000000221FC3CA0, sub_221F5C724, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221F5AC18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_221FB5BC8();
  v2[7] = swift_task_alloc();
  v4 = sub_221FB6108();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5AD60, 0, 0);
}

uint64_t sub_221F5AD60()
{
  v34 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  v0[11] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009BLL, 0x8000000221FC3BB0, 0xD00000000000001ALL, 0x8000000221FC3C80);
  v3 = *(v1 + 88);
  v4 = sub_221FB5BF8();
  v5 = [v3 contactWithUUID_];
  v0[12] = v5;

  if (v5)
  {
    v6 = [v5 relationshipStorage];
    v7 = [v6 secureCloudRelationship];
    v0[13] = v7;

    if ([v7 isFriendshipActive])
    {
      v8 = sub_221FB61B8();
      v9 = sub_221FB65A8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_221E93000, v8, v9, "Withdrawing invite for active friendship", v10, 2u);
        MEMORY[0x223DADA80](v10, -1, -1);
      }
    }

    if (([v7 hasOutgoingInviteRequest] & 1) == 0)
    {
      v11 = sub_221FB61B8();
      v12 = sub_221FB65A8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_221E93000, v11, v12, "Withdrawing invite without an outgoing invite request", v13, 2u);
        MEMORY[0x223DADA80](v13, -1, -1);
      }
    }

    v14 = v0[3];
    __swift_project_boxed_opaque_existential_0Tm(v14 + 22, v14[25]);
    v15 = v14[10];
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_221F5B238;
    v17 = v0[2];

    return sub_221EF560C(v17, 3, v15);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v19 = sub_221FB61B8();
    v20 = sub_221FB65A8();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[5];
    v22 = v0[6];
    v24 = v0[4];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      sub_221F5C6DC(&qword_27CFEBB90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_221FB6B08();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_221EF4114(v27, v29, &v33);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_221E93000, v19, v20, "Unable to withdraw invite, no contact for identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DADA80](v26, -1, -1);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    sub_221EA4994();
    swift_allocError();
    *v31 = 21;
    swift_willThrow();

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_221F5B238()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_221F5B5CC;
  }

  else
  {
    v2 = sub_221F5B34C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_221F5B34C(uint64_t a1)
{
  v2 = v1[13];
  sub_221FB5BB8();
  result = [v2 outgoingHandshakeToken];
  if (result)
  {
    v4 = result;
    v5 = v1[13];
    sub_221FB6318();

    sub_221FB60F8();
    v6 = [v5 sentInvitation];
    v1[16] = v6;
    if (v6)
    {
      v7 = v6;
      __swift_project_boxed_opaque_existential_0Tm((v1[3] + 96), *(v1[3] + 120));
      v8 = swift_task_alloc();
      v1[17] = v8;
      *v8 = v1;
      v8[1] = sub_221F5B658;
      v9 = v1[10];

      return sub_221F5A80C(v7, v9, 1106);
    }

    else
    {
      v10 = sub_221FB61B8();
      v11 = sub_221FB65A8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_221E93000, v10, v11, "Failed to withdraw invite, missing sentInvitation", v12, 2u);
        MEMORY[0x223DADA80](v12, -1, -1);
      }

      v14 = v1[12];
      v13 = v1[13];
      v16 = v1[9];
      v15 = v1[10];
      v17 = v1[8];

      sub_221EA4994();
      swift_allocError();
      *v18 = 45;
      swift_willThrow();

      (*(v16 + 8))(v15, v17);

      v19 = v1[1];

      return v19();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}