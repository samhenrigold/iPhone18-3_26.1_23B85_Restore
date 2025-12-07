uint64_t sub_221EF4D28()
{
  v1[18] = v0;
  v1[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC248, &qword_221FBAE88);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EF4DD4, 0, 0);
}

uint64_t sub_221EF4DD4()
{
  v1 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0Tm(*(v0 + 144), *(*(v0 + 144) + 24));
  v2 = sub_221F9ACE4();
  *(v0 + 176) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_221EF4F08;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC250, &qword_221FBAE90);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221EF523C;
  *(v0 + 104) = &block_descriptor_7;
  *(v0 + 112) = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EF4F08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_221EF50EC;
  }

  else
  {
    v2 = sub_221EF5018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EF5018()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  sub_221EF53A0(v0[21], v3);
  v4 = (v3 + *(v2 + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_221FB5A08();
  (*(*(v7 - 8) + 8))(v3, v7);

  v8 = v0[1];

  return v8(v5, v6);
}

uint64_t sub_221EF50EC(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to fetch cloud kit address", v8, 2u);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v9 = v1[1];

  return v9(0, 0);
}

uint64_t sub_221EF523C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC248, &qword_221FBAE88);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;

    return MEMORY[0x282200958](v9, v10);
  }

  else
  {
    sub_221FB59F8();
    v13 = &v8[*(v6 + 48)];
    *v13 = sub_221FB6318();
    v13[1] = v14;
    sub_221EF53A0(v8, *(*(v9 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221EF53A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC248, &qword_221FBAE88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221EF5424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_221EF546C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221EF54CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221EF560C(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = v3;
  *(v4 + 328) = a2;
  *(v4 + 176) = a1;
  v5 = sub_221FB5C38();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EF56EC, 0, 0);
}

uint64_t sub_221EF56EC()
{
  v60 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = sub_221FB61D8();
  *(v0 + 240) = __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59[0] = v57;
    *v13 = 136315138;
    sub_221EA8278();
    v14 = v6;
    v15 = sub_221FB6B08();
    v17 = v16;
    v58 = *(v11 + 8);
    v58(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_221EF4114(v18, v17, v59);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_221E93000, v7, v8, "Removing friend: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x223DADA80](v57, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  else
  {

    v58 = *(v11 + 8);
    v58(v10, v12);
  }

  v20 = *(v0 + 192);
  v21 = *v20;
  *(v0 + 248) = *v20;
  v22 = sub_221FB5BF8();
  v23 = [v21 contactWithUUID_];
  *(v0 + 256) = v23;

  if (v23)
  {
    v24 = [v23 relationshipStorage];
    v25 = [v24 primaryRelationship];
    *(v0 + 264) = v25;

    v26 = [v23 relationshipStorage];
    *(v0 + 272) = [v26 secureCloudRelationship];

    if (([v25 isFriendshipActive] & 1) == 0)
    {
      v6(*(v0 + 224), *(v0 + 176), *(v0 + 200));
      v27 = sub_221FB61B8();
      v28 = sub_221FB65A8();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 224);
      v31 = *(v0 + 200);
      if (v29)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v59[0] = v33;
        *v32 = 136315138;
        sub_221EA8278();
        v34 = sub_221FB6B08();
        v36 = v35;
        v58(v30, v31);
        v37 = sub_221EF4114(v34, v36, v59);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_221E93000, v27, v28, "Removing friend for inactive friendship: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223DADA80](v33, -1, -1);
        MEMORY[0x223DADA80](v32, -1, -1);
      }

      else
      {

        v58(v30, v31);
      }
    }

    v52 = *(v0 + 184);
    v53 = *(v0 + 328);
    v54 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 192) + 8), *(*(v0 + 192) + 32));
    v55 = sub_221FB5BF8();
    *(v0 + 280) = v55;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 330;
    *(v0 + 24) = sub_221EF5DC8;
    v56 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221FA909C;
    *(v0 + 104) = &block_descriptor_15;
    *(v0 + 112) = v56;
    [v54 removeLegacyFriendWithUUID:v55 event:v53 cloudKitGroup:v52 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6(*(v0 + 216), *(v0 + 176), *(v0 + 200));
    v38 = sub_221FB61B8();
    v39 = sub_221FB65A8();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 216);
    v42 = *(v0 + 200);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59[0] = v44;
      *v43 = 136315138;
      sub_221EA8278();
      v45 = sub_221FB6B08();
      v47 = v46;
      v58(v41, v42);
      v48 = sub_221EF4114(v45, v47, v59);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_221E93000, v38, v39, "Unable to remove friend, no contact for identifier: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223DADA80](v44, -1, -1);
      MEMORY[0x223DADA80](v43, -1, -1);
    }

    else
    {

      v58(v41, v42);
    }

    sub_221EA4994();
    swift_allocError();
    *v49 = 21;
    swift_willThrow();

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_221EF5DC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_221EF6280;
  }

  else
  {
    v2 = sub_221EF5ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EF5ED8()
{
  v1 = *(v0 + 272);

  v2 = [v1 systemFieldsOnlyRecord];
  *(v0 + 296) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 272);
    v5 = [v2 recordID];
    v6 = [v5 zoneID];

    v7 = [v6 zoneName];
    v8 = sub_221FB6318();
    v10 = v9;

    v11 = [v4 secureCloudZoneName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_221FB6318();
      v15 = v14;

      if (v8 == v13 && v10 == v15)
      {

LABEL_18:
        v30 = *(v0 + 272);
        v31 = *(v0 + 192);
        v32 = *(v0 + 328);
        v33 = sub_221FB5BF8();
        v34 = sub_221FB6788();
        v35 = ASInsertPlaceholderRelationshipEventForFriend();

        sub_221FB67C8();
        swift_unknownObjectRelease();
        [v30 insertEventWithType_];
        __swift_project_boxed_opaque_existential_0Tm((v31 + 88), *(v31 + 112));
        v36 = swift_task_alloc();
        *(v0 + 304) = v36;
        *v36 = v0;
        v36[1] = sub_221EF6328;
        v37 = *(v0 + 272);
        v38 = *(v0 + 184);

        return sub_221EBAEA8(v37, 0, v38, 0);
      }

      v17 = sub_221FB6B58();

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v18 = *(v0 + 272);
  v19 = sub_221FB61B8();
  v20 = sub_221FB65C8();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v24 = *(v0 + 256);
  if (v21)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v23;
    *v26 = v23;
    v27 = v23;
    _os_log_impl(&dword_221E93000, v19, v20, "Secure cloud relationship doesn't have a zone, no need to remove: %@", v25, 0xCu);
    sub_221EA0558(v26);
    MEMORY[0x223DADA80](v26, -1, -1);
    MEMORY[0x223DADA80](v25, -1, -1);
  }

  else
  {
    v27 = *(v0 + 264);
    v22 = *(v0 + 256);
    v24 = v19;
    v19 = *(v0 + 272);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_221EF6280(uint64_t a1)
{
  v2 = v1[35];
  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[32];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_221EF6328(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_221EF6634;
  }

  else
  {
    v4 = sub_221EF643C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EF643C()
{
  v1 = *(v0 + 312);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 312);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Removed friend for secure cloud relationship: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  v14 = *(v0 + 192);

  v15 = *__swift_project_boxed_opaque_existential_0Tm((v14 + 48), *(v14 + 72));
  v16 = sub_221FB5BF8();
  [v15 removePlaceholderWithContactUUID:v16 shouldNotify:0];

  __swift_project_boxed_opaque_existential_0Tm((v0 + 144), *(v0 + 168));
  [v12 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EF6634()
{
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v0[21]);
  [v4 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221EF6738(void *a1)
{
  v2 = [a1 accountStatus];
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (v2 == 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4;
    }
  }

  else if (v2 == 1)
  {
    if ([a1 hasValidCredentials])
    {
      v3 = 5;
    }

    else
    {
      v3 = 4;
    }
  }

  else if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v5 = [a1 deviceToDeviceEncryptionAvailability];

  if ((v5 & 2) != 0)
  {
    v6 = 512;
  }

  else
  {
    v6 = (v5 & 1) << 8;
  }

  return v6 & 0xFFFFFF00 | v3;
}

uint64_t sub_221EF67F4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_221E96070;

  return v19(a1, a2, a3 & 1, a4 & 1, a5, a6, a7, a8);
}

uint64_t sub_221EF6954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221EF6A84;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221EF6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_221EF6BA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221EF6BCC, 0, 0);
}

uint64_t sub_221EF6BCC()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0Tm((v0[4] + 8), *(v0[4] + 32));
  v2 = sub_221F9ACE4();
  v3 = [v2 privateCloudDatabase];

  type metadata accessor for XPCActivityContainer();
  v4 = swift_allocObject();
  v5 = v4;
  if (v1)
  {
    *(v4 + 16) = v0[3];
  }

  else
  {
    swift_deallocPartialClassInstance();
    v5 = 0;
  }

  v6 = v0[2];
  type metadata accessor for CloudZoneModifyOperation();
  v7 = swift_allocObject();
  v0[5] = v7;
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v7 + 112) = v3;
  *(v7 + 120) = 1;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 128) = v5;
  *(v7 + 136) = v8;
  *(v7 + 144) = v6;
  *(v7 + 152) = 0;

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_221EF6D54;

  return sub_221E9C1C8();
}

uint64_t sub_221EF6D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 56) = v4;

  if (v4)
  {
    v11 = sub_221EF6F08;
  }

  else
  {
    v10[8] = a4;
    v10[9] = a3;
    v10[10] = a2;
    v10[11] = a1;
    v11 = sub_221EF6E9C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_221EF6E9C()
{

  v1 = v0[1];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_221EF6F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Optional.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v5, v7, v1);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_221FB6B28();
  v9 = v11[0];
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t static String.read(from:key:)(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_221FB6318();

  return v5;
}

void sub_221EF71E0(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_221FB62E8();
  v6 = [a1 stringForKey_];

  if (v6)
  {
    v7 = sub_221FB6318();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a3 = v7;
  a3[1] = v9;
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_221FB62E8();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_221EF7304@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_221EF8B64(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

void sub_221EF7334(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_221FB62E8();
  [a1 setInteger:v4 forKey:v5];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_221FB62E8();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

uint64_t sub_221EF7408@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a1, a2);
  *a4 = result;
  return result;
}

void sub_221EF7430(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_221FB62E8();
  [a1 setBool:v4 forKey:v5];
}

uint64_t static Data.read(from:key:)(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 dataForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_221FB5B18();

  return v5;
}

void sub_221EF7538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a4, a5);
  v8 = sub_221FB62E8();
  [a1 setObject:v7 forKey:v8];
}

void sub_221EF75C4(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_221FB62E8();
  v6 = [a1 dataForKey_];

  if (v6)
  {
    v7 = sub_221FB5B18();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

void sub_221EF7664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  v8 = a6(*v6, v6[1]);
  v9 = sub_221FB62E8();
  [a1 setObject:v8 forKey:v9];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_221FB62E8();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

uint64_t sub_221EF7778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  result = sub_221EF8934(a1, a2);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_221EF77A8(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_221FB62E8();
  [a1 setDouble:v5 forKey:v4];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_221FB62E8();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_221EF78B4@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_221EF8C50(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_221EF78E4(void *a1, uint64_t a2)
{
  v4 = *v2;
  v6 = sub_221FB62E8();
  LODWORD(v5) = v4;
  [a1 setFloat:v6 forKey:v5];
}

uint64_t static Date.read(from:key:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_221FB62E8();
  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_221E9CFE8(v17, &qword_27CFEC128, &unk_221FBA430);
    v10 = sub_221FB5BC8();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
LABEL_8:
    sub_221E9CFE8(v7, &qword_27CFEC118, &unk_221FBB0A0);
    sub_221FB5BC8();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }

  v10 = sub_221FB5BC8();
  v11 = swift_dynamicCast();
  v12 = *(v10 - 8);
  v13 = *(v12 + 56);
  v13(v7, v11 ^ 1u, 1, v10);
  if ((*(v12 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_8;
  }

  (*(v12 + 32))(a3, v7, v10);
  return (v13)(a3, 0, 1, v10);
}

Swift::Void __swiftcall Date.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_221FB5B58();
  v4 = sub_221FB62E8();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

void sub_221EF7C6C(void *a1, uint64_t a2)
{
  v3 = sub_221FB5B58();
  v4 = sub_221FB62E8();
  [a1 setObject:v3 forKey:v4];
}

void Array<A>.write(to:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221FB6428();
  v6 = sub_221FB62E8();
  [a1 setObject:v5 forKey:v6];
}

uint64_t sub_221EF7D7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  result = _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(a1, a2);
  *a4 = result;
  return result;
}

void sub_221EF7DA4(void *a1, uint64_t a2)
{
  v3 = sub_221FB6428();
  v4 = sub_221FB62E8();
  [a1 setObject:v3 forKey:v4];
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  v4 = sub_221FB6778();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v11);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v20, v19);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    return (*(v10 + 8))(v13, a4);
  }

  (*(v16 + 32))(v18, v13, v15);
  (*(a5 + 16))(a1, a2, a3, v15, a5);
  return (*(v16 + 8))(v18, v15);
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v46 = a1;
  v47 = a7;
  v12 = sub_221FB6778();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v13;
  v44 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_221FB6778();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = *(a6 + 8);
  v26 = v46;
  v41 = a2;
  v46 = a3;
  v27 = a6;
  v29 = v28;
  v25(v26, a2, a3, AssociatedTypeWitness, v27);
  if ((*(v29 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v19, v15);
    return (*(*(a4 - 8) + 56))(v47, 1, 1, a4);
  }

  else
  {
    v31 = v47;
    (*(v29 + 32))(v24, v19, AssociatedTypeWitness);
    (*(v29 + 16))(v22, v24, AssociatedTypeWitness);
    v32 = v45;
    sub_221FB63E8();
    v33 = *(a4 - 8);
    if ((*(v33 + 48))(v32, 1, a4) == 1)
    {
      v44 = v29;
      (*(v42 + 8))(v32, v43);
      if (qword_281307070 != -1)
      {
        swift_once();
      }

      v34 = sub_221FB61D8();
      __swift_project_value_buffer(v34, qword_281307DC0);
      v35 = v46;

      v36 = sub_221FB61B8();
      v37 = sub_221FB65A8();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = v24;
        v40 = swift_slowAlloc();
        v48 = v40;
        *v38 = 141558274;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_221EF4114(v41, v35, &v48);
        _os_log_impl(&dword_221E93000, v36, v37, "Couldn't parse user default %{mask.hash}s.", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x223DADA80](v40, -1, -1);
        MEMORY[0x223DADA80](v38, -1, -1);

        (*(v44 + 8))(v39, AssociatedTypeWitness);
      }

      else
      {

        (*(v44 + 8))(v24, AssociatedTypeWitness);
      }

      return (*(v33 + 56))(v31, 1, 1, a4);
    }

    else
    {
      (*(v29 + 8))(v24, AssociatedTypeWitness);
      (*(v33 + 32))(v31, v32, a4);
      return (*(v33 + 56))(v31, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v16 - v13;
  sub_221FB63D8();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

void *sub_221EF8740(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

BOOL sub_221EF8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_221FB6968();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 valueForKey_];

  if (v4)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_221E9CFE8(v9, &qword_27CFEC128, &unk_221FBA430);
    return 2;
  }
}

uint64_t sub_221EF8934(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 valueForKey_];

  if (v4)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_221E9CFE8(v11, &qword_27CFEC128, &unk_221FBA430);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v11[0] = 0;
  v5 = sub_221EF8760(v7, v8, v11, MEMORY[0x277D84FA8], sub_221EF8DF4);

  if (v5)
  {
    return *&v11[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 objectForKey_];

  if (v4)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB30, &qword_221FBB1A8);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_221E9CFE8(v9, &qword_27CFEC128, &unk_221FBA430);
  }

  return 0;
}

uint64_t sub_221EF8B64(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 valueForKey_];

  if (v4)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_221E9CFE8(v9, &qword_27CFEC128, &unk_221FBA430);
    return 0;
  }
}

unint64_t sub_221EF8C50(void *a1, uint64_t a2)
{
  v3 = sub_221FB62E8();
  v4 = [a1 valueForKey_];

  if (v4)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_221E9CFE8(v13, &qword_27CFEC128, &unk_221FBA430);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = 0;
    v7 = 1;
    return v6 | ((v7 & 1) << 32);
  }

  LODWORD(v13[0]) = 0;
  v5 = sub_221EF8760(v9, v10, v13, MEMORY[0x277D84FB0], sub_221EF8DC8);

  v6 = LODWORD(v13[0]);
  v7 = !v5;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | ((v7 & 1) << 32);
}

_BYTE *sub_221EF8E20@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_221EF8EAC(uint64_t a1)
{
  sub_221FB6908();
  if (!*(a1 + 16) || (v2 = sub_221ED4BD4(v10), (v3 & 1) == 0))
  {

    sub_221EC5354(v10);
    goto LABEL_7;
  }

  sub_221E951A4(*(a1 + 56) + 32 * v2, v11);
  sub_221EC5354(v10);
  if (swift_dynamicCast() & 1) == 0 || (sub_221FB5D18(), (v4))
  {

LABEL_7:
    v5 = 6;
LABEL_8:
    sub_221EC459C();
    swift_allocError();
    *v6 = v5;
    return swift_willThrow();
  }

  sub_221FB6908();
  if (!*(a1 + 16) || (v8 = sub_221ED4BD4(v10), (v9 & 1) == 0))
  {

    sub_221EC5354(v10);
    goto LABEL_14;
  }

  sub_221E951A4(*(a1 + 56) + 32 * v8, v11);
  sub_221EC5354(v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v5 = 4;
    goto LABEL_8;
  }

  return sub_221FB5D48();
}

unint64_t sub_221EF9080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECB10, &unk_221FBF680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221FBB1B0;
  sub_221FB6908();
  sub_221FB5D58();
  v1 = sub_221FB5D28();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v1;
  sub_221FB6908();
  v2 = sub_221FB5D38();
  *(inited + 168) = MEMORY[0x277CC9318];
  *(inited + 144) = v2;
  *(inited + 152) = v3;
  v4 = sub_221ED8054(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB20, &unk_221FBA170);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_221EF91A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221EF92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221EF93F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

id sub_221EF9520(void *a1, unint64_t a2)
{
  v17 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_18:
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_221FB6868();
  }

  else
  {
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v3)
    {
      return v13;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DACD50](v3, a2);
    }

    else
    {
      if (v3 >= *(v15 + 16))
      {
        goto LABEL_17;
      }

      v4 = *(a2 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = [a1 relationshipStorage];
    v8 = [v7 secureCloudRelationship];

    result = [v8 secureCloudZoneName];
    if (!result)
    {
      break;
    }

    v10 = result;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    v11 = sub_221FB65D8();

    v12 = [v5 recordWithZoneID:v11 recordEncryptionType:1];
    ++v3;
    if (v12)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
      v13 = v17;
      v3 = v6;
    }
  }

  __break(1u);
  return result;
}

void sub_221EF9770(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_221E96470(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 relationshipStorage];
    v15 = [v14 primaryRelationship];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_221EF9A10(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = v3;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v11 = v18) == 0))
    {
LABEL_26:
      sub_221E96470(v1);
      return;
    }

LABEL_18:
    v12 = [v11 relationshipStorage];
    v13 = [v12 primaryRelationship];

    v14 = [v11 relationshipStorage];
    v15 = [v14 legacyRelationship];

    if ([v15 secureCloudDowngradeRequested] && objc_msgSend(v13, sel_cloudType) == 1 && objc_msgSend(v13, sel_isFriendshipActive))
    {
      v16 = [v13 secureCloudMigrationCompleted];

      if (v16)
      {
        MEMORY[0x223DAC7E0]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_221FB6458();
        }

        sub_221FB6478();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_221EF9D50(uint64_t a1)
{
  v3 = sub_221FB5C38();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_221FB6868();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_221F77684(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_221FB6818();
    }

    else
    {
      result = sub_221FB67E8();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_221F78B6C(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 UUID];
        sub_221FB5C18();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_221F77684((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_221FB6838())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD48, &unk_221FB9270);
          v12 = sub_221FB6528();
          sub_221FB68B8();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_221EB9940(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_221EB9940(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_221EB9940(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_221EFA15C(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_221EFA180, 0, 0);
}

uint64_t sub_221EFA180()
{
  v1 = [*(*(v0 + 24) + 288) contacts];
  if (v1)
  {
    v2 = v1;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v3 = sub_221FB64F8();
    *(v0 + 32) = v3;

    sub_221EF9770(v3);
    v5 = v4;
    v19 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DACD50](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (*(v0 + 80))
        {
          sub_221FB69B8();
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
        }

        else
        {
        }

        ++v7;
        if (v9 == i)
        {
          v10 = v19;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_22:
    *(v0 + 40) = v10;
    v14 = *(v0 + 24);

    *(v0 + 16) = v10;
    v15 = swift_task_alloc();
    *(v0 + 48) = v15;
    *(v15 + 16) = v14;

    v16 = swift_task_alloc();
    *(v0 + 56) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
    v18 = sub_221EB83D0(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660, MEMORY[0x277D83988]);
    *v16 = v0;
    v16[1] = sub_221EFA48C;

    return MEMORY[0x28213AEB8](&unk_221FBB2F8, v15, v17, v18);
  }

  else
  {
    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

void sub_221EFA48C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221EFA5D8, 0, 0);
  }
}

uint64_t sub_221EFA5D8(uint64_t a1)
{
  v2 = v1[3];
  v3 = *(v2 + 617);
  v4 = *(v2 + 624);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v5 = UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4, v5);

    if (v6 == 2)
    {
      v7 = v3;
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

  else if (!v3)
  {
LABEL_6:

    v8 = v1[8];
    goto LABEL_9;
  }

  v9 = v1[8];
  sub_221EF9A10(v1[4]);
  v11 = v10;

  sub_221ED43D0(v11);
  v8 = v9;
LABEL_9:
  v12 = v1[1];

  return v12(v8);
}

uint64_t sub_221EFA6DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2[2] = a2;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_221EFA778;

  return sub_221EFA948(v3);
}

uint64_t sub_221EFA778(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_221EFA878, 0, 0);
}

uint64_t sub_221EFA878()
{
  if (![*(v0 + 24) isFriendshipActive] || objc_msgSend(*(v0 + 24), sel_cloudType))
  {
    goto LABEL_3;
  }

  v4 = *(v0 + 40);
  v5 = [*(v0 + 24) secureCloudUpgradeCompleted];
  LOBYTE(v1) = 0;
  if (v5 && (v4 & 1) == 0)
  {
    if ([*(v0 + 24) secureCloudMigrationCompleted])
    {
LABEL_3:
      LOBYTE(v1) = 0;
      goto LABEL_4;
    }

    v1 = !sub_221EFADA8(*(v0 + 24));
  }

LABEL_4:
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_221EFA948(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_221FB5C38();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFAA08, 0, 0);
}

id sub_221EFAA08(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 601);
  v4 = *(v2 + 608);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v5 = UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4, v5);

    if (v6 == 2)
    {
      v7 = v3;
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

  else if (!v3)
  {
LABEL_6:
    v8 = [*(v1 + 56) secureCloudMigrationAvailable];

    v9 = *(v1 + 8);

    return v9(v8);
  }

  v11 = *(v1 + 56);
  sub_221EA4AB4(*(v1 + 64) + 336, v1 + 16);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 16), *(v1 + 40));
  result = [v11 UUID];
  if (result)
  {
    v12 = result;
    v14 = *(v1 + 80);
    v13 = *(v1 + 88);
    v15 = *(v1 + 72);
    sub_221FB5C18();

    v16 = sub_221FB5BE8();
    v18 = v17;
    *(v1 + 96) = v17;
    (*(v14 + 8))(v13, v15);
    v19 = swift_task_alloc();
    *(v1 + 104) = v19;
    *v19 = v1;
    v19[1] = sub_221EFABF4;

    return sub_221F2898C(v16, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221EFABF4(char a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_221EFAD14, 0, 0);
}

uint64_t sub_221EFAD14()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1 == 1)
  {
    v2 = [*(v0 + 56) secureCloudMigrationAvailable];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

BOOL sub_221EFADA8(void *a1)
{
  v2 = v1;
  v4 = sub_221FB5BC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 dateForLatestMigrationCompleted];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  sub_221FB5B98();

  sub_221FB5B78();
  v11 = v10;
  v12 = *(v2 + 552);
  v13 = *(v2 + 560);
  v14 = *(v2 + 568);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v37) = v12;
    v15 = UserDefaultsKeys.rawValue.getter();
    v16 = COERCE_DOUBLE(sub_221EF8934(v14, v15));
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v13 = v16;
    }
  }

  v19 = fabs(v11);
  v20 = v19 < v13;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v21 = sub_221FB61D8();
  __swift_project_value_buffer(v21, qword_281307DF0);
  v22 = a1;
  v23 = sub_221FB61B8();
  v24 = sub_221FB65C8();

  if (os_log_type_enabled(v23, v24))
  {
    v36[0] = v4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315394;
    v27 = [v22 cloudKitAddress];
    if (v27)
    {
      v28 = v27;
      v29 = sub_221FB6318();
      v31 = v30;

      v37 = 0;
      v38 = 0xE000000000000000;
      v36[1] = v29;
      v36[2] = v31;
      sub_221FB6A08();

      v32 = v37;
      v33 = v38;
    }

    else
    {
      v33 = 0xE300000000000000;
      v32 = 7104878;
    }

    v34 = sub_221EF4114(v32, v33, &v39);

    *(v25 + 4) = v34;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v19 < v13;
    _os_log_impl(&dword_221E93000, v23, v24, "Relationship migration %s backing off previous completion: %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223DADA80](v26, -1, -1);
    MEMORY[0x223DADA80](v25, -1, -1);

    (*(v5 + 8))(v7, v36[0]);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return v20;
}

uint64_t sub_221EFB0E8(uint64_t a1)
{
  *(v2 + 672) = v1;
  *(v2 + 664) = a1;
  return MEMORY[0x2822009F8](sub_221EFB10C, 0, 0);
}

uint64_t sub_221EFB10C()
{
  v1 = [*(v0[84] + 288) contacts];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v3 = sub_221FB64F8();
  v0[85] = v3;

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_221FB6868())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*(v3 + 16))
  {
LABEL_9:

LABEL_10:
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No contacts to update migration availability";
    goto LABEL_18;
  }

LABEL_4:
  v4 = *__swift_project_boxed_opaque_existential_0Tm((v0[84] + 120), *(v0[84] + 144));
  v5 = sub_221FB62E8();

  v6 = [v4 installStateForBundleIdentifier_];

  if (v6 == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0[84], *(v0[84] + 24));
    v7 = swift_task_alloc();
    v0[86] = v7;
    *v7 = v0;
    v7[1] = sub_221EFB458;

    return sub_221EF490C();
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v14 = sub_221FB61D8();
  __swift_project_value_buffer(v14, qword_281307DF0);
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "App not installed, not updating migration availability";
LABEL_18:
    _os_log_impl(&dword_221E93000, v10, v11, v13, v12, 2u);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

LABEL_19:

  v15 = v0[1];

  return v15();
}

uint64_t sub_221EFB458(__int16 a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_221EFB7DC;
  }

  else
  {
    v4 = sub_221EFB570;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EFB570()
{
  v14 = v0;
  if (*(v0 + 776) == 517)
  {
    v1 = sub_221E9ECE4(*(v0 + 680));
    *(v0 + 704) = v1;

    v2 = swift_task_alloc();
    *(v0 + 712) = v2;
    *v2 = v0;
    v2[1] = sub_221EFB840;
    v3 = *(v0 + 664);

    return sub_221EFC55C(v1, v3);
  }

  else
  {

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 776);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v0 + 648) = 0;
      *(v0 + 656) = 0xE000000000000000;
      *(v0 + 778) = v8;
      sub_221FB6A08();
      v11 = sub_221EF4114(*(v0 + 648), *(v0 + 656), &v13);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_221E93000, v6, v7, "Account is invalid, not updating migration availability: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_221EFB7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EFB840()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_221EFC368;
  }

  else
  {

    v2 = sub_221EFB95C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EFB95C()
{
  v1 = *(v0 + 672);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  v4 = swift_task_alloc();
  *(v0 + 728) = v4;
  *v4 = v0;
  v4[1] = sub_221EFBA14;

  return MEMORY[0x28213AC20](v2, v3);
}

uint64_t sub_221EFBA14(char a1)
{
  *(*v1 + 780) = a1;

  return MEMORY[0x2822009F8](sub_221EFBB14, 0, 0);
}

uint64_t sub_221EFBB14()
{
  v1 = *(v0 + 672);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  v4 = swift_task_alloc();
  *(v0 + 736) = v4;
  *v4 = v0;
  v4[1] = sub_221EFBBCC;

  return MEMORY[0x28213AC28](v2, v3);
}

uint64_t sub_221EFBBCC(uint64_t a1)
{
  *(*v1 + 744) = a1;

  return MEMORY[0x2822009F8](sub_221EFBCCC, 0, 0);
}

uint64_t sub_221EFBCCC()
{
  v24 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221F0419C(v1, v0 + 16);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 744);
  if (v5)
  {
    v7 = *(v0 + 780);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315650;
    __swift_project_boxed_opaque_existential_0Tm((v0 + 176), *(v0 + 200));
    sub_221E94E44();
    v11 = v10;
    v12 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
    v13 = MEMORY[0x223DAC810](v11, v12);
    v15 = v14;

    sub_221F041D4(v0 + 16);
    v16 = sub_221EF4114(v13, v15, &v23);

    *(v8 + 4) = v16;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v7;
    *(v8 + 18) = 2080;
    v17 = MEMORY[0x223DAC810](v6, MEMORY[0x277D837D0]);
    v19 = v18;

    v20 = sub_221EF4114(v17, v19, &v23);

    *(v8 + 20) = v20;
    _os_log_impl(&dword_221E93000, v3, v4, "Running migration service with devices: %s, ignore %{BOOL}d, ids %s", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {

    sub_221F041D4(v0 + 16);
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 672) + 160), *(*(v0 + 672) + 184));
  v21 = swift_task_alloc();
  *(v0 + 752) = v21;
  *v21 = v0;
  v21[1] = sub_221EFBF98;

  return sub_221F7C268(0);
}

uint64_t sub_221EFBF98(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  *(v3 + 760) = v5;
  *v5 = v4;
  v5[1] = sub_221EFC0FC;
  v6 = *(v3 + 664);

  return sub_221EFCF28(v2, v6);
}

uint64_t sub_221EFC0FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 768) = v6;
    *v6 = v3;
    v6[1] = sub_221EFC274;
    v7 = *(v2 + 664);

    return sub_221EFDC74(v7);
  }
}

uint64_t sub_221EFC274()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221EFC368()
{

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[90];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to fix up legacy relationships: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[84];
  v13 = v12[8];
  v14 = v12[9];
  __swift_project_boxed_opaque_existential_0Tm(v12 + 5, v13);
  v15 = swift_task_alloc();
  v0[91] = v15;
  *v15 = v0;
  v15[1] = sub_221EFBA14;

  return MEMORY[0x28213AC20](v13, v14);
}

uint64_t sub_221EFC55C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221EFC580, 0, 0);
}

uint64_t sub_221EFC580()
{
  if (qword_281307080 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v1 = v0[2];
    v2 = sub_221FB61D8();
    v0[5] = __swift_project_value_buffer(v2, qword_281307DF0);
    sub_221E9DCE8(0xD000000000000095, 0x8000000221FC25C0, 0xD00000000000002FLL, 0x8000000221FC2690);
    v53 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      v3 = sub_221FB6868();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = 0;
      v51 = v1 & 0xC000000000000001;
      v50 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = v0[2] + 32;
      do
      {
        if (v51)
        {
          v7 = MEMORY[0x223DACD50](v5, v0[2]);
        }

        else
        {
          if (v5 >= *(v50 + 16))
          {
            goto LABEL_48;
          }

          v7 = *(v6 + 8 * v5);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v10 = [v7 relationshipStorage];
        v11 = [v10 primaryRelationship];

        v12 = [v8 relationshipStorage];
        v13 = [v12 secureCloudRelationship];

        v14 = [v8 relationshipStorage];
        v15 = [v14 legacyRelationship];

        if ([v11 cloudType] == 1 && objc_msgSend(v13, sel_isFriendshipActive) && objc_msgSend(v15, sel_isFriendshipActive) && objc_msgSend(v13, sel_secureCloudMigrationCompleted))
        {
          v16 = [v15 secureCloudMigrationCompleted];

          if (v16)
          {
          }

          else
          {
            sub_221FB69B8();
            sub_221FB69E8();
            sub_221FB69F8();
            sub_221FB69C8();
          }
        }

        else
        {
        }

        ++v5;
      }

      while (v9 != v3);
      v17 = v53;
      v4 = MEMORY[0x277D84F90];
      if ((v53 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_24:
        if ((v17 & 0x4000000000000000) == 0)
        {
          v18 = *(v17 + 16);
          if (!v18)
          {
            goto LABEL_59;
          }

          v54 = v4;
          sub_221FB69D8();
LABEL_27:
          v49 = v0;
          v19 = 0;
          v20 = v17 & 0xC000000000000001;
          v52 = v17;
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v20)
            {
              v22 = MEMORY[0x223DACD50](v19, v17);
            }

            else
            {
              if (v19 >= *(v17 + 16))
              {
                goto LABEL_52;
              }

              v22 = *(v17 + 8 * v19 + 32);
            }

            v23 = v22;
            v24 = [v22 relationshipStorage];
            v25 = sub_221FB61B8();
            v26 = sub_221FB65C8();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v28 = v20;
              v29 = v18;
              v30 = swift_slowAlloc();
              *v27 = 138412290;
              *(v27 + 4) = v24;
              *v30 = v24;
              v31 = v24;
              _os_log_impl(&dword_221E93000, v25, v26, "Found legacy relationship to fix up for migration: %@", v27, 0xCu);
              sub_221EA0558(v30);
              v32 = v30;
              v18 = v29;
              v20 = v28;
              v17 = v52;
              MEMORY[0x223DADA80](v32, -1, -1);
              MEMORY[0x223DADA80](v27, -1, -1);
            }

            v0 = [v24 legacyRelationship];
            sub_221FB69B8();
            sub_221FB69E8();
            sub_221FB69F8();
            sub_221FB69C8();
            ++v19;
            if (v21 == v18)
            {

              v4 = v54;
              v0 = v49;
              goto LABEL_37;
            }
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }
    }

    if (!sub_221FB6868())
    {
      goto LABEL_59;
    }

    v38 = sub_221FB6868();
    if (v38)
    {
      v18 = v38;
      v54 = v4;
      sub_221FB69D8();
      if (v18 < 0)
      {
        __break(1u);
LABEL_59:

        v39 = sub_221FB61B8();
        v40 = sub_221FB65C8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_221E93000, v39, v40, "No legacy relationships to fix up for migration", v41, 2u);
          MEMORY[0x223DADA80](v41, -1, -1);
        }

        v42 = v0[1];

        return v42();
      }

      goto LABEL_27;
    }

LABEL_37:
    v33 = v0;
    v0[6] = v4;
    if (!(v4 >> 62))
    {
      v34 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        break;
      }

      goto LABEL_39;
    }

    v34 = sub_221FB6868();
    if (!v34)
    {
      break;
    }

LABEL_39:
    v35 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x223DACD50](v35, v4);
      }

      else
      {
        if (v35 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v36 = *(v4 + 8 * v35 + 32);
      }

      v0 = v36;
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v36 insertEventWithType_];

      ++v35;
      if (v37 == v34)
      {
        goto LABEL_65;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_65:
  v44 = v33[4];
  __swift_project_boxed_opaque_existential_0Tm(v44 + 57, v44[60]);
  v45 = v44[30];
  v46 = swift_task_alloc();
  v33[7] = v46;
  *v46 = v33;
  v46[1] = sub_221EFCC90;
  v47 = v33[3];
  v48 = MEMORY[0x277D84F90];

  return sub_221EBA884(v4, v48, v45, v47);
}

uint64_t sub_221EFCC90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221EFCDE4, 0, 0);
  }
}

uint64_t sub_221EFCDE4()
{

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 64);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v6 = sub_221FB6868();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;

    _os_log_impl(&dword_221E93000, v1, v2, "Fixed up %ld legacy relationships for migration", v5, 0xCu);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EFCF28(char a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_221EFCFC0;

  return sub_221EFA15C(a1);
}

uint64_t sub_221EFCFC0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_221EFD0C0, 0, 0);
}

uint64_t sub_221EFD0C0()
{
  v1 = *(v0 + 48);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v0 + 48);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v32 = sub_221FB61D8();
    __swift_project_value_buffer(v32, qword_281307DF0);
    v33 = sub_221FB61B8();
    v34 = sub_221FB65C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_221E93000, v33, v34, "No relationships to update with migration availability", v35, 2u);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    v36 = *(v0 + 8);

    return v36();
  }

LABEL_25:
  v2 = sub_221FB6868();
  v3 = *(v0 + 48);
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v3 + 32;
  do
  {
    if (v5)
    {
      v8 = MEMORY[0x223DACD50](v4, *(v0 + 48));
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_24;
      }

      v8 = *(v7 + 8 * v4);
    }

    v1 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v8 insertEventWithType_];

    ++v4;
  }

  while (v9 != v2);
  v10 = *(v0 + 32);
  v11 = *(v10 + 601);
  *(v0 + 128) = v11;
  v12 = *(v10 + 608);
  *(v0 + 56) = v12;
  v13 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  if (v13)
  {
    v14 = UserDefaultsKeys.rawValue.getter();
    v15 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v12, v14);

    if (v15 == 2)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v11)
  {
LABEL_16:
    v17 = MEMORY[0x277D84F90];
    *(v0 + 96) = MEMORY[0x277D84F90];
    v18 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_0Tm(v18 + 57, v18[60]);
    v19 = v18[30];
    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    *v20 = v0;
    v20[1] = sub_221EFD71C;
    v21 = *(v0 + 48);
    v22 = *(v0 + 24);

    return sub_221EBA884(v21, v17, v19, v22);
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 32);
  v26 = [objc_opt_self() relationshipZone];
  *(v0 + 64) = v26;
  *(v0 + 16) = v24;
  v27 = swift_task_alloc();
  *(v0 + 72) = v27;
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  v28 = swift_task_alloc();
  *(v0 + 80) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  v30 = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  v31 = sub_221EB83D0(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660, MEMORY[0x277D83988]);
  *v28 = v0;
  v28[1] = sub_221EFD504;

  return MEMORY[0x28213AED0](&unk_221FBB2E0, v27, v29, v30, v31);
}

void sub_221EFD504(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 88) = a1;

    MEMORY[0x2822009F8](sub_221EFD648, 0, 0);
  }
}

uint64_t sub_221EFD648()
{
  v1 = *(v0 + 88);
  *(v0 + 96) = v1;
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_0Tm(v2 + 57, v2[60]);
  v3 = v2[30];
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_221EFD71C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);

  return sub_221EBA884(v5, v1, v3, v6);
}

uint64_t sub_221EFD71C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 112) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221EFD890, 0, 0);
  }
}

uint64_t sub_221EFD890()
{
  v23 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v9 = MEMORY[0x223DAC810](v5, v8);
    v11 = v10;

    v12 = sub_221EF4114(v9, v11, &v22);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_221E93000, v2, v3, "Updated legacy relationships with migration availability: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  else
  {
  }

  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 128);
    v15 = UserDefaultsKeys.rawValue.getter();
    v16 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v13, v15);

    if (v16 == 2)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(v0 + 128) != 1)
  {
LABEL_11:

    v18 = *(v0 + 8);

    return v18();
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 32) + 456), *(*(v0 + 32) + 480));
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_221EFDB60;
  v21 = *(v0 + 112);

  return sub_221EBC594(v21);
}

uint64_t sub_221EFDB60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221EFDC74(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_221FB5C38();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFDD40, 0, 0);
}

uint64_t sub_221EFDD40()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  v0[10] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000095, 0x8000000221FC25C0, 0xD000000000000025, 0x8000000221FC2660);
  v3 = *(v1 + 537);
  v4 = *(v1 + 544);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v5 = UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4, v5);

    if (v6 == 2)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
LABEL_8:
      v8 = sub_221FB61B8();
      v9 = sub_221FB65C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Auto migration disallowed";
LABEL_17:
        _os_log_impl(&dword_221E93000, v8, v9, v11, v10, 2u);
        MEMORY[0x223DADA80](v10, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  v12 = [*(v0[5] + 288) contacts];
  if (!v12)
  {
    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "No contacts to migrate";
      goto LABEL_17;
    }

LABEL_18:

    v20 = v0[1];

    return v20();
  }

  v13 = v12;
  v14 = v0[5];
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v15 = sub_221FB64F8();
  v0[11] = v15;

  v0[2] = v15;
  v16 = swift_task_alloc();
  v0[12] = v16;
  *(v16 + 16) = v14;
  v17 = swift_task_alloc();
  v0[13] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD08, &qword_221FB9210);
  v19 = sub_221EB83D0(&qword_281306F30, &qword_27CFEBD08, &qword_221FB9210, MEMORY[0x277D83B78]);
  *v17 = v0;
  v17[1] = sub_221EFE0DC;

  return MEMORY[0x28213AEB8](&unk_221FBB260, v16, v18, v19);
}

void sub_221EFE0DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221EFE21C, 0, 0);
  }
}

uint64_t sub_221EFE21C()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + 336), *(*(v0 + 40) + 360));
  v2 = *v1;
  *(v0 + 128) = *v1;

  return MEMORY[0x2822009F8](sub_221EFE290, v2, 0);
}

uint64_t sub_221EFE290()
{
  v8 = v0;
  v1 = *(*(v0 + 128) + 120);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = sub_221E9E980();
      v4 = sub_221E9EDC0(&v7, (v3 + 32), v2, v1);
      v5 = v7;

      sub_221E96470(v5);
      if (v4 == v2)
      {
        goto LABEL_6;
      }

      __break(1u);
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_6:
  *(v0 + 136) = v3;

  return MEMORY[0x2822009F8](sub_221EFE390, 0, 0);
}

uint64_t sub_221EFE390()
{
  v69 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v67 = v5;
    *v4 = 136315138;
    if (v3 >> 62)
    {
      v6 = sub_221FB6868();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v68[0] = MEMORY[0x277D84F90];
      v8 = sub_221F77684(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        return MEMORY[0x28213AEC8](v8, v9, v10, v11);
      }

      v64 = v5;
      v65 = v2;
      v66 = v1;
      v7 = v68[0];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = 0;
        v13 = v0[7];
        do
        {
          MEMORY[0x223DACD50](v12, v0[14]);
          v14 = [swift_unknownObjectRetain() UUID];
          sub_221FB5C18();

          swift_unknownObjectRelease_n();
          v68[0] = v7;
          v16 = *(v7 + 16);
          v15 = *(v7 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_221F77684((v15 > 1), v16 + 1, 1);
            v7 = v68[0];
          }

          v17 = v0[9];
          v18 = v0[6];
          ++v12;
          *(v7 + 16) = v16 + 1;
          (*(v13 + 32))(v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16, v17, v18);
        }

        while (v6 != v12);
      }

      else
      {
        v19 = v0[7];
        v20 = (v0[14] + 32);
        do
        {
          v21 = *v20;
          v22 = [v21 UUID];
          sub_221FB5C18();

          v68[0] = v7;
          v24 = *(v7 + 16);
          v23 = *(v7 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_221F77684((v23 > 1), v24 + 1, 1);
            v7 = v68[0];
          }

          v25 = v0[8];
          v26 = v0[6];
          *(v7 + 16) = v24 + 1;
          (*(v19 + 32))(v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v24, v25, v26);
          ++v20;
          --v6;
        }

        while (v6);
      }

      v1 = v66;
      v2 = v65;
      v5 = v64;
    }

    v27 = MEMORY[0x223DAC810](v7, v0[6]);
    v29 = v28;

    v30 = sub_221EF4114(v27, v29, &v67);

    *(v4 + 4) = v30;
    _os_log_impl(&dword_221E93000, v1, v2, "Contacts eligible for migration %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v31 = sub_221FB61B8();
  v32 = sub_221FB65C8();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[11];
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68[0] = v36;
    *v35 = 136315138;
    v37 = v0[11];
    if ((v34 & 0xC000000000000001) != 0)
    {
      if (v37 < 0)
      {
        v38 = v0[11];
      }

      else
      {
        v38 = v34 & 0xFFFFFFFFFFFFFF8;
      }

      v39 = sub_221FB6868();
      v37 = sub_221F15F48(v38, v39);
    }

    v40 = v0[6];
    v41 = sub_221F04204(v0[14], v37);
    v42 = sub_221EF9D50(v41);

    v43 = MEMORY[0x223DAC810](v42, v40);
    v45 = v44;

    v46 = sub_221EF4114(v43, v45, v68);

    *(v35 + 4) = v46;
    _os_log_impl(&dword_221E93000, v31, v32, "Contacts ineligible for migration %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x223DADA80](v36, -1, -1);
    MEMORY[0x223DADA80](v35, -1, -1);
  }

  else
  {
  }

  v47 = sub_221FB61B8();
  v48 = sub_221FB65C8();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v0[17];
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v68[0] = v52;
    *v51 = 136315138;
    v53 = sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
    v54 = MEMORY[0x223DAC810](v50, v53);
    v56 = v55;

    v57 = sub_221EF4114(v54, v56, v68);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_221E93000, v47, v48, "Checked against migration available items: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x223DADA80](v52, -1, -1);
    MEMORY[0x223DADA80](v51, -1, -1);
  }

  else
  {
  }

  v59 = v0[4];
  v58 = v0[5];
  v0[3] = v0[14];
  v60 = swift_task_alloc();
  v0[18] = v60;
  *(v60 + 16) = v58;
  *(v60 + 24) = v59;
  v61 = swift_task_alloc();
  v0[19] = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD10, &unk_221FBB280);
  v11 = sub_221EB83D0(&qword_27CFEBD18, &qword_27CFEBD10, &unk_221FBB280, MEMORY[0x277D83988]);
  *v61 = v0;
  v61[1] = sub_221EFEA5C;
  v8 = &unk_221FBB278;
  v9 = v60;
  v10 = v62;

  return MEMORY[0x28213AEC8](v8, v9, v10, v11);
}

void sub_221EFEA5C()
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

uint64_t sub_221EFEBA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = sub_221FB5C38();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[7] = v7;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_221EFEC6C, 0, 0);
}

uint64_t sub_221EFEC6C()
{
  v1 = [*(v0 + 64) UUID];
  if (v1)
  {
    v4 = v1;
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    sub_221FB5C18();

    *(v0 + 72) = sub_221FB5BE8();
    *(v0 + 80) = v9;
    (*(v6 + 8))(v5, v7);
    v10 = __swift_project_boxed_opaque_existential_0Tm((v8 + 336), *(v8 + 360));
    v2 = *v10;
    *(v0 + 88) = *v10;
    v1 = sub_221EFED4C;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221EFED4C()
{
  v1 = *(v0[11] + 120);
  if (v1 && *(v1 + 16))
  {
    v3 = v0[9];
    v2 = v0[10];

    v4 = sub_221ED4B5C(v3, v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);
      v0[12] = v6;
      v7 = v6;

      v8 = sub_221EFEEE8;
    }

    else
    {

      v8 = sub_221F051C4;
    }
  }

  else
  {
    v8 = sub_221EFEE24;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221EFEE24()
{
  v1 = objc_allocWithZone(MEMORY[0x277CE9108]);
  v2 = sub_221FB62E8();

  v3 = [v1 initWithRelationshipIdentifier_];

  *(v0 + 104) = v3;
  v4 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 24) + 336), *(*(v0 + 24) + 360));

  return MEMORY[0x2822009F8](sub_221EFEF68, v4, 0);
}

uint64_t sub_221EFEEE8()
{

  v0[13] = v0[12];
  v1 = *__swift_project_boxed_opaque_existential_0Tm((v0[3] + 336), *(v0[3] + 360));

  return MEMORY[0x2822009F8](sub_221EFEF68, v1, 0);
}

uint64_t sub_221EFEF68()
{
  *(v0 + 112) = sub_221F5A3A4(*(v0 + 64), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_221EFF004, 0, 0);
}

uint64_t sub_221EFF004()
{
  v1 = *(v0 + 112);

  **(v0 + 16) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EFF078()
{
  **(v0 + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EFF0EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFF1AC, 0, 0);
}

uint64_t sub_221EFF1AC()
{
  v23 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  v0[7] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000095, 0x8000000221FC25C0, 0xD000000000000020, 0x8000000221FC26C0);
  v3 = *(v1 + 288);
  v4 = sub_221FB5BF8();
  v5 = [v3 contactWithUUID_];
  v0[8] = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_221EFF4D8;

    return sub_221EFFA68(v5);
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
      sub_221EA8278();
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

uint64_t sub_221EFF4D8(char a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_221EFF5D8, 0, 0);
}

uint64_t sub_221EFF5D8()
{
  if (*(v0 + 96) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 80) = v1;
    *v1 = v0;
    v1[1] = sub_221EFF878;
    v2 = *(v0 + 64);

    return sub_221F003C8(v2, 0);
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = [v4 relationshipStorage];
    v6 = [v5 primaryRelationship];

    v7 = [v4 relationshipStorage];
    v8 = [v7 primaryRemoteRelationship];

    v9 = v6;
    v10 = v8;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v9;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v14[1] = v10;
      v15 = v9;
      v16 = v10;
      _os_log_impl(&dword_221E93000, v11, v12, "Migration unavailable for (relationship: %@, remote relationship: %@)", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    v17 = *(v0 + 64);

    sub_221EA4994();
    swift_allocError();
    *v18 = 35;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_221EFF878()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_221EFF9FC;
  }

  else
  {
    v2 = sub_221EFF98C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EFF98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EFF9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EFFA68(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_221FB5BC8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFFB28, 0, 0);
}

uint64_t sub_221EFFB28()
{
  v1 = *(v0 + 48);
  v2 = [v1 relationshipStorage];
  v3 = [v2 primaryRelationship];
  *(v0 + 88) = v3;

  v4 = [v1 relationshipStorage];
  v5 = [v4 secureCloudRelationship];
  *(v0 + 96) = v5;

  v6 = [v1 relationshipStorage];
  *(v0 + 104) = [v6 primaryRemoteRelationship];

  if (![v3 isFriendshipActive] || objc_msgSend(v3, sel_cloudType) || (objc_msgSend(v5, sel_secureCloudNeedsRepair) & 1) != 0)
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9(0);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_221EFFD0C;

    return sub_221EFA948(v3);
  }
}

uint64_t sub_221EFFD0C(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_221EFFE0C, 0, 0);
}

uint64_t sub_221EFFE0C()
{
  if (*(v0 + 128) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_221EFFF1C;
    v2 = *(v0 + 104);

    return sub_221F04A70(v2);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_221EFFF1C(char a1)
{
  *(*v1 + 129) = a1;

  return MEMORY[0x2822009F8](sub_221F0001C, 0, 0);
}

uint64_t sub_221F0001C()
{
  v52 = v0;
  if (*(v0 + 129) == 1)
  {
    if ([*(v0 + 88) secureCloudMigrationStarted] && (v1 = objc_msgSend(*(v0 + 88), sel_dateForLatestMigrationStarted)) != 0)
    {
      v2 = *(v0 + 56);
      v3 = v1;
      sub_221FB5B98();

      sub_221FB5B78();
      v5 = v4;
      v6 = *(v2 + 552);
      v7 = *(v2 + 560);
      v8 = *(v2 + 568);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        v51 = v6;
        v9 = UserDefaultsKeys.rawValue.getter();
        v10 = COERCE_DOUBLE(sub_221EF8934(v8, v9));
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          v7 = v10;
        }
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v13 = fabs(v5);
      v14 = *(v0 + 88);
      v15 = sub_221FB61D8();
      __swift_project_value_buffer(v15, qword_281307DF0);
      v16 = v14;
      v17 = sub_221FB61B8();
      v18 = sub_221FB65C8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 88);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v50 = v21;
        *v20 = 136315394;
        v22 = [v19 cloudKitAddress];
        if (v22)
        {
          v23 = v22;
          v24 = sub_221FB6318();
          v26 = v25;

          *(v0 + 16) = 0;
          *(v0 + 24) = 0xE000000000000000;
          *(v0 + 32) = v24;
          *(v0 + 40) = v26;
          sub_221FB6A08();

          v27 = *(v0 + 16);
          v28 = *(v0 + 24);
        }

        else
        {
          v28 = 0xE300000000000000;
          v27 = 7104878;
        }

        v41 = *(v0 + 104);
        v46 = *(v0 + 96);
        v47 = *(v0 + 88);
        v42 = *(v0 + 72);
        v48 = *(v0 + 64);
        v49 = *(v0 + 80);
        v43 = sub_221EF4114(v27, v28, &v50);

        *(v20 + 4) = v43;
        *(v20 + 12) = 1024;
        *(v20 + 14) = v13 < v7;
        _os_log_impl(&dword_221E93000, v17, v18, "Relationship migration %s backing off started attempt: %{BOOL}d", v20, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x223DADA80](v21, -1, -1);
        MEMORY[0x223DADA80](v20, -1, -1);

        (*(v42 + 8))(v49, v48);
      }

      else
      {
        v37 = *(v0 + 96);
        v36 = *(v0 + 104);
        v38 = *(v0 + 80);
        v39 = *(v0 + 64);
        v40 = *(v0 + 72);

        (*(v40 + 8))(v38, v39);
      }

      v31 = v13 >= v7;
    }

    else
    {
      v33 = *(v0 + 96);
      v32 = *(v0 + 104);
      v34 = *(v0 + 88);
      v35 = sub_221EFADA8(v34);

      v31 = !v35;
    }
  }

  else
  {
    v29 = *(v0 + 104);
    v30 = *(v0 + 88);

    v31 = 0;
  }

  v44 = *(v0 + 8);

  return v44(v31);
}

uint64_t sub_221F003C8(uint64_t a1, uint64_t a2)
{
  v3[104] = v2;
  v3[103] = a2;
  v3[102] = a1;
  v4 = sub_221FB5C38();
  v3[105] = v4;
  v3[106] = *(v4 - 8);
  v3[107] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F00490, 0, 0);
}

uint64_t sub_221F00490()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = sub_221FB61D8();
  *(v0 + 864) = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 816);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Migrating contact: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = *(v0 + 832);

  if ([*(*__swift_project_boxed_opaque_existential_0Tm((v10 + 296) *(v10 + 320)) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    v11 = *(v0 + 832);
    v12 = [*(v0 + 816) relationshipStorage];
    *(v0 + 872) = [v12 primaryRelationship];

    *(v0 + 880) = sub_221E9A100();
    v13 = sub_221E9A100();
    *(v0 + 888) = v13;
    __swift_project_boxed_opaque_existential_0Tm((v11 + 496), *(v11 + 520));
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 896) = v15;
    *v15 = v0;
    v15[1] = sub_221F007C8;
    v16 = *(v0 + 824);

    return sub_221E9B754(v14, v16);
  }

  else
  {
    v18 = sub_221FB61B8();
    v19 = sub_221FB65A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_221E93000, v18, v19, "Protected data is unavailable, skipping migration", v20, 2u);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v21 = 36;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_221F007C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 904) = a1;
  *(v4 + 912) = v1;

  if (v1)
  {
    v5 = sub_221F017CC;
  }

  else
  {
    v5 = sub_221F00908;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F00908()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 832);
  v3 = [*(v0 + 816) relationshipStorage];
  v4 = [v3 secureCloudRelationship];

  *(v0 + 920) = [v4 remoteRelationshipZoneShareID];
  [v1 insertEventWithType_];
  v5 = __swift_project_boxed_opaque_existential_0Tm(v2 + 57, v2[60]);
  v6 = v2[30];
  *(v0 + 928) = v6;
  if ([v1 cloudType])
  {
    v7 = *(v0 + 880);
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 880);
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

    v14 = *(v0 + 880);

    sub_221EA4994();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();

    v16 = *(v0 + 920);
    v17 = *(v0 + 888);
    v18 = *(v0 + 880);
    v19 = *(v0 + 872);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 880);
    v23 = *(v0 + 824);
    v24 = *(v0 + 816);
    v25 = *__swift_project_boxed_opaque_existential_0Tm(v5 + 6, v5[9]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 800;
    *(v0 + 24) = sub_221F00C68;
    v26 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_221EF4C50;
    *(v0 + 360) = &block_descriptor_16;
    *(v0 + 368) = v26;
    [v25 saveRelationship:v22 contact:v24 cloudKitGroup:v6 activity:v23 completion:v0 + 336];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221F00C68()
{
  v1 = *(*v0 + 48);
  *(*v0 + 936) = v1;
  if (v1)
  {
    v2 = sub_221F01720;
  }

  else
  {
    v2 = sub_221F00D78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F00D78()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 800);
  *(v0 + 944) = v2;

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_221E93000, v3, v4, "Started migration on legacy relationship: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = *(v0 + 856);
  v9 = *(v0 + 848);
  v10 = *(v0 + 840);
  v11 = *(v0 + 832);
  v12 = *(v0 + 816);

  v13 = __swift_project_boxed_opaque_existential_0Tm((v11 + 248), *(v11 + 272));
  v14 = [v12 UUID];
  sub_221FB5C18();

  v15 = *v13;
  v16 = sub_221FB5BF8();
  v17 = [v15 currentCompetitionListForFriendWithUUID_];
  *(v0 + 952) = v17;

  v18 = *(v9 + 8);
  v18(v8, v10);
  v19 = __swift_project_boxed_opaque_existential_0Tm((v11 + 248), *(v11 + 272));
  v20 = [v12 UUID];
  sub_221FB5C18();

  v21 = *v19;
  v22 = sub_221FB5BF8();
  v23 = [v21 archivedCompetitionListForFriendWithUUID_];
  *(v0 + 960) = v23;

  v18(v8, v10);
  *(v0 + 688) = v17;
  *(v0 + 696) = v23;
  v24 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  v25 = v17;
  v26 = v23;
  for (i = 0; i != 2; ++i)
  {
    v28 = *(v0 + 688 + 8 * i);
    if (v28)
    {
      v29 = v28;
      MEMORY[0x223DAC7E0]();
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
      v24 = v84;
    }
  }

  v30 = *(v0 + 920);
  v31 = *(v0 + 904);
  v32 = *(v0 + 888);
  v33 = *(v0 + 832);
  v34 = *(v0 + 816);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD20, &qword_221FBB2A0);
  swift_arrayDestroy();
  v35 = sub_221EF9520(v34, v24);
  *(v0 + 968) = v35;

  [v32 setCloudType_];
  [v32 insertEventWithType_];
  v36 = [v31 recordID];
  [v32 setRelationshipZoneShareID_];

  [v32 setRemoteRelationshipZoneShareID_];
  [v32 setRelationshipShareID_];
  [v32 setRemoteActivityDataShareID_];
  v37 = __swift_project_boxed_opaque_existential_0Tm((v33 + 456), *(v33 + 480));
  v38 = [v32 cloudType];
  v39 = *(v0 + 888);
  if (v38 == 1)
  {
    v40 = [*(v0 + 888) secureCloudZoneName];
    if (v40)
    {
      v41 = v40;
      v42 = *(v0 + 888);
      sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
      sub_221FB6318();

      sub_221FB6318();
      v43 = sub_221FB65D8();
      v44 = [v42 recordWithZoneID:v43 recordEncryptionType:1];
      *(v0 + 976) = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_221FB81B0;
      *(v45 + 32) = v44;
      v85 = v45;
      v46 = v44;

      sub_221ED4350(v47);

      v48 = sub_221FB61B8();
      v49 = sub_221FB65C8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        if (v35 >> 62)
        {
          v51 = sub_221FB6868();
        }

        else
        {
          v51 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v50 + 4) = v51;

        _os_log_impl(&dword_221E93000, v48, v49, "Pushing relationship to iCloud with %ld extra records", v50, 0xCu);
        MEMORY[0x223DADA80](v50, -1, -1);
      }

      else
      {
      }

      v78 = *(v0 + 928);
      v79 = *(v0 + 824);
      v80 = *__swift_project_boxed_opaque_existential_0Tm(v37 + 11, v37[14]);
      *(v0 + 984) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v81 = sub_221FB6428();
      *(v0 + 992) = v81;

      *(v0 + 1000) = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v82 = sub_221FB6428();
      *(v0 + 1008) = v82;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 752;
      *(v0 + 88) = sub_221F01848;
      v83 = swift_continuation_init();
      *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_221EBA78C;
      *(v0 + 424) = &block_descriptor_23_2;
      *(v0 + 432) = v83;
      [v80 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v81 recordIDsToDelete:v82 priority:2 activity:v79 useZoneWideSharing:1 group:v78 completion:{v0 + 400, v85}];
      v40 = (v0 + 80);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v40);
  }

  else
  {

    v52 = v39;
    v53 = sub_221FB61B8();
    v54 = sub_221FB65A8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 888);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v55;
      *v57 = v55;
      v58 = v55;
      _os_log_impl(&dword_221E93000, v53, v54, "Attempting to save legacy relationship to secure cloud container %@", v56, 0xCu);
      sub_221EA0558(v57);
      MEMORY[0x223DADA80](v57, -1, -1);
      MEMORY[0x223DADA80](v56, -1, -1);
    }

    sub_221EA4994();
    v59 = swift_allocError();
    *v60 = 11;
    swift_willThrow();
    *(v0 + 1120) = v59;
    v61 = *(v0 + 944);
    v62 = v59;
    v63 = sub_221FB61B8();
    v64 = sub_221FB65A8();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 944);
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412546;
      v69 = v59;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *(v67 + 12) = 2112;
      *(v67 + 14) = v66;
      *v68 = v70;
      v68[1] = v66;
      _os_log_impl(&dword_221E93000, v63, v64, "Failed to migrate relationship to secure cloud with error: %@, relationship: %@", v67, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v68, -1, -1);
      MEMORY[0x223DADA80](v67, -1, -1);
    }

    else
    {
    }

    v71 = *(v0 + 944);

    v72 = v71;
    v73 = swift_task_alloc();
    *(v0 + 1128) = v73;
    *v73 = v0;
    v73[1] = sub_221F031F0;
    v74 = *(v0 + 944);
    v75 = *(v0 + 824);
    v76 = *(v0 + 816);

    return sub_221F03B6C(v74, v76, v75);
  }
}

uint64_t sub_221F01720(uint64_t a1)
{
  v2 = *(v1 + 880);
  swift_willThrow();

  v3 = *(v1 + 920);
  v4 = *(v1 + 888);
  v5 = *(v1 + 880);
  v6 = *(v1 + 872);

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_221F017CC()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F01848()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1016) = v1;
  if (v1)
  {

    v2 = sub_221F01960;
  }

  else
  {
    v2 = sub_221F01B5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F01960(uint64_t a1)
{
  v2 = *(v1 + 1008);
  v3 = *(v1 + 992);
  v4 = *(v1 + 976);
  swift_willThrow();

  v5 = *(v1 + 1016);
  *(v1 + 1120) = v5;
  v6 = *(v1 + 944);
  v7 = v5;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 944);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v15;
    v13[1] = v11;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to migrate relationship to secure cloud with error: %@, relationship: %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v1 + 944);

  v17 = v16;
  v18 = swift_task_alloc();
  *(v1 + 1128) = v18;
  *v18 = v1;
  v18[1] = sub_221F031F0;
  v19 = *(v1 + 944);
  v20 = *(v1 + 824);
  v21 = *(v1 + 816);

  return sub_221F03B6C(v19, v21, v20);
}

uint64_t sub_221F01B5C()
{
  v1 = v0[126];
  v2 = v0[124];
  v3 = v0[122];
  v4 = v0[104];
  v5 = v0[102];
  v0[128] = v0[95];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v4 + 456), *(v4 + 480));
  v7 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 6, v6[9]);

  sub_221F17A54(v8);

  v0[129] = sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v9 = sub_221FB64E8();
  v0[130] = v9;

  v0[18] = v0;
  v0[23] = v0 + 96;
  v0[19] = sub_221F01D38;
  v10 = swift_continuation_init();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[131] = v11;
  v0[65] = v11;
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_221EBCB58;
  v0[61] = &block_descriptor_26_0;
  v0[62] = v10;
  [v7 handleSavedRecords:v9 forContact:v5 completion:v0 + 58];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F01D38()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1056) = v1;
  if (v1)
  {
    v2 = sub_221F025FC;
  }

  else
  {
    v2 = sub_221F01E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F01E48()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 888);
  v4 = *(v0 + 832);
  v5 = *(v0 + 776);
  *(v0 + 1064) = v5;

  __swift_project_boxed_opaque_existential_0Tm((v4 + 248), *(v4 + 272));
  v6 = off_28355EF40;
  v7 = v5;
  v6(v2, &type metadata for CompetitionCoordinator, &off_28355EF08);

  v8 = v7;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 968);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v8;
    *v14 = v8;
    *(v13 + 12) = 2048;
    if (v12 >> 62)
    {
      v15 = sub_221FB6868();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 14) = v15;

    _os_log_impl(&dword_221E93000, v9, v10, "Saved secure cloud relationship for migration: %@, with competition %ld lists", v13, 0x16u);
    sub_221EA0558(v14);
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v16 = *(v0 + 952);
  if (v16)
  {
    v17 = [v16 systemFieldsOnlyRecord];
    v18 = *(v0 + 952);
    if (v17)
    {
      v19 = v17;
      v20 = [v17 recordID];

      goto LABEL_11;
    }
  }

  v20 = 0;
LABEL_11:
  v21 = *(v0 + 960);
  *(v0 + 736) = v20;
  if (!v21)
  {
LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  v22 = [v21 systemFieldsOnlyRecord];
  v23 = *(v0 + 960);
  if (!v22)
  {

    goto LABEL_15;
  }

  v24 = v22;
  v25 = [v22 recordID];

LABEL_16:
  v26 = 0;
  *(v0 + 744) = v25;
  v73 = MEMORY[0x277D84F90];
  while (v26 != 2)
  {
    v27 = *(v0 + 8 * v26++ + 736);
    if (v27)
    {
      v28 = v27;
      MEMORY[0x223DAC7E0]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
    }
  }

  v29 = *(v0 + 944);
  v30 = *(v0 + 832);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD40, &qword_221FB9250);
  swift_arrayDestroy();
  [v29 insertEventWithType_];
  v31 = __swift_project_boxed_opaque_existential_0Tm((v30 + 456), *(v30 + 480));
  if ([v29 cloudType])
  {
    v32 = *(v0 + 944);

    v33 = v32;
    v34 = sub_221FB61B8();
    v35 = sub_221FB65A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 944);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v36;
      *v38 = v36;
      v39 = v36;
      _os_log_impl(&dword_221E93000, v34, v35, "Attempting to save secure cloud relationship to legacy container %@", v37, 0xCu);
      sub_221EA0558(v38);
      MEMORY[0x223DADA80](v38, -1, -1);
      MEMORY[0x223DADA80](v37, -1, -1);
    }

    v40 = *(v0 + 944);

    sub_221EA4994();
    v41 = swift_allocError();
    *v42 = 11;
    swift_willThrow();

    v43 = *(v0 + 944);
    v44 = v41;
    v45 = sub_221FB61B8();
    v46 = sub_221FB65C8();

    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 1064);
    v49 = *(v0 + 960);
    v50 = *(v0 + 952);
    if (v47)
    {
      v51 = *(v0 + 944);
      v68 = *(v0 + 904);
      v69 = *(v0 + 920);
      v71 = *(v0 + 872);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412546;
      v54 = v41;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v51;
      *v53 = v55;
      v53[1] = v51;
      _os_log_impl(&dword_221E93000, v45, v46, "Failed to save migration completed event on legacy with error: %@ relationship: %@", v52, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v53, -1, -1);
      MEMORY[0x223DADA80](v52, -1, -1);

      v56 = *(v0 + 944);
    }

    else
    {
      v63 = *(v0 + 920);
      v64 = *(v0 + 904);
      v65 = *(v0 + 872);

      v56 = *(v0 + 944);
      v45 = v56;
    }

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v57 = *(v0 + 944);
    v70 = *(v0 + 824);
    v72 = *(v0 + 928);
    v58 = *(v0 + 816);
    v59 = *__swift_project_boxed_opaque_existential_0Tm(v31 + 6, v31[9]);
    v60 = sub_221FB6428();
    *(v0 + 1072) = v60;
    v61 = sub_221FB6428();
    *(v0 + 1080) = v61;

    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 808;
    *(v0 + 216) = sub_221F02800;
    v62 = swift_continuation_init();
    *(v0 + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 560) = v62;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_221F68D78;
    *(v0 + 552) = &block_descriptor_30;
    [v59 saveRelationship:v57 contact:v58 extraRecordsToSave:v60 extraRecordIDsToDelete:v61 cloudKitGroup:v72 activity:v70 completion:v0 + 528];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_221F025FC(uint64_t a1)
{
  v2 = *(v1 + 1040);
  swift_willThrow();

  v3 = *(v1 + 1056);
  *(v1 + 1120) = v3;
  v4 = *(v1 + 944);
  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 944);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v3;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v13;
    v11[1] = v9;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to migrate relationship to secure cloud with error: %@, relationship: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v1 + 944);

  v15 = v14;
  v16 = swift_task_alloc();
  *(v1 + 1128) = v16;
  *v16 = v1;
  v16[1] = sub_221F031F0;
  v17 = *(v1 + 944);
  v18 = *(v1 + 824);
  v19 = *(v1 + 816);

  return sub_221F03B6C(v17, v19, v18);
}

uint64_t sub_221F02800()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1088) = v1;
  if (v1)
  {
    v2 = sub_221F02FB8;
  }

  else
  {
    v2 = sub_221F02910;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F02910()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[118];
  v4 = v0[104];
  v11 = v0[131];
  v12 = v0[102];
  v0[137] = v0[101];

  v5 = __swift_project_boxed_opaque_existential_0Tm((v4 + 456), *(v4 + 480));
  v6 = *__swift_project_boxed_opaque_existential_0Tm(v5 + 6, v5[9]);

  sub_221F17A54(v7);

  v8 = sub_221FB64E8();
  v0[138] = v8;

  v0[34] = v0;
  v0[39] = v0 + 98;
  v0[35] = sub_221F02AC0;
  v9 = swift_continuation_init();
  v0[81] = v11;
  v0[78] = v9;
  v0[74] = MEMORY[0x277D85DD0];
  v0[75] = 1107296256;
  v0[76] = sub_221EBCB58;
  v0[77] = &block_descriptor_33;
  [v6 handleSavedRecords:v8 forContact:v12 completion:v0 + 74];

  return MEMORY[0x282200938](v0 + 34);
}

uint64_t sub_221F02AC0()
{
  v1 = *(*v0 + 304);
  *(*v0 + 1112) = v1;
  if (v1)
  {
    v2 = sub_221F02D84;
  }

  else
  {
    v2 = sub_221F02BD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F02BD0()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 792);

  v3 = v2;

  v4 = v3;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 960);
  v9 = *(v0 + 920);
  v10 = *(v0 + 904);
  v11 = *(v0 + 872);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v4;
    *v13 = v4;
    _os_log_impl(&dword_221E93000, v5, v6, "Completed migration on legacy relationship: %@", v12, 0xCu);
    sub_221EA0558(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v8 = v10;
    v10 = v9;
    v9 = v11;
    v11 = v5;
    v5 = v4;
  }

  v14 = *(v0 + 952);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F02D84(uint64_t a1)
{
  v2 = *(v1 + 1104);
  swift_willThrow();

  v3 = *(v1 + 1112);
  v4 = *(v1 + 944);
  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 1064);
  v10 = *(v1 + 960);
  v11 = *(v1 + 952);
  if (v8)
  {
    v12 = *(v1 + 944);
    v23 = *(v1 + 904);
    v24 = *(v1 + 920);
    v25 = *(v1 + 872);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v16;
    v14[1] = v12;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to save migration completed event on legacy with error: %@ relationship: %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);

    v17 = *(v1 + 944);
  }

  else
  {
    v18 = *(v1 + 920);
    v19 = *(v1 + 904);
    v20 = *(v1 + 872);

    v17 = *(v1 + 944);
    v6 = v17;
  }

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_221F02FB8(uint64_t a1)
{
  v2 = *(v1 + 1080);
  v3 = *(v1 + 1072);
  v4 = *(v1 + 944);
  swift_willThrow();

  v5 = *(v1 + 1088);
  v6 = *(v1 + 944);
  v7 = v5;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 1064);
  v12 = *(v1 + 960);
  v13 = *(v1 + 952);
  if (v10)
  {
    v14 = *(v1 + 944);
    v25 = *(v1 + 904);
    v26 = *(v1 + 920);
    v27 = *(v1 + 872);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v18;
    v16[1] = v14;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to save migration completed event on legacy with error: %@ relationship: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v16, -1, -1);
    MEMORY[0x223DADA80](v15, -1, -1);

    v19 = *(v1 + 944);
  }

  else
  {
    v20 = *(v1 + 920);
    v21 = *(v1 + 904);
    v22 = *(v1 + 872);

    v19 = *(v1 + 944);
    v8 = v19;
  }

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_221F031F0()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v3 = sub_221F033E8;
  }

  else
  {
    v3 = sub_221F03324;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F03324(uint64_t a1)
{
  v2 = v1[120];
  v3 = v1[119];
  v4 = v1[118];
  v5 = v1[115];
  v6 = v1[113];
  v7 = v1[111];
  v8 = v1[109];
  swift_willThrow();

  v9 = v1[1];

  return v9();
}

uint64_t sub_221F033E8()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 960);
  v3 = *(v0 + 944);
  v4 = *(v0 + 920);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F034A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221F03540;

  return sub_221EFFA68(v2);
}

uint64_t sub_221F03540(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_221F03640(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221F036F0;

  return sub_221F003C8(v5, a3);
}

uint64_t sub_221F036F0()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_221F038D8;
  }

  else
  {
    v2 = sub_221F03804;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F03804()
{
  v1 = [*(v0 + 16) relationshipStorage];
  v2 = [v1 secureCloudRemoteRelationship];

  [v2 secureCloudMigrationCompleted];
  v3 = sub_221FB62E8();
  ASAnalyticsReportManateeMigration();

  v4 = *(v0 + 8);

  return v4();
}

void sub_221F038D8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to migrate contact %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[4];
  v11 = v0[2];

  v12 = v10;
  v13 = [v11 relationshipStorage];
  v14 = [v13 secureCloudRemoteRelationship];

  [v14 secureCloudMigrationCompleted];
  v15 = v10;
  v16 = sub_221FB5A98();
  v17 = [v16 domain];

  if (!v17)
  {
    sub_221FB6318();
    v17 = sub_221FB62E8();
  }

  v18 = sub_221FB5A98();
  v19 = [v18 code];

  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v20 = v0[4];
  ASAnalyticsReportManateeMigration();

  v21 = v0[1];

  v21();
}

uint64_t sub_221F03B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_221F03B90, 0, 0);
}

uint64_t sub_221F03B90()
{
  v1 = v0[22];
  v2 = v0[19];
  [v2 insertEventWithType_];
  v3 = __swift_project_boxed_opaque_existential_0Tm(v1 + 57, v1[60]);
  v4 = v1[30];
  if ([v2 cloudType])
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
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];
    v20 = *__swift_project_boxed_opaque_existential_0Tm(v3 + 6, v3[9]);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_221F03E9C;
    v21 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_221EF4C50;
    v0[13] = &block_descriptor_36;
    v0[14] = v21;
    [v20 saveRelationship:v19 contact:v18 cloudKitGroup:v4 activity:v17 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_221F03E9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_221F04130;
  }

  else
  {
    v2 = sub_221F03FAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F03FAC()
{
  v1 = qword_281307080;
  v2 = *(v0 + 144);
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    _os_log_impl(&dword_221E93000, v5, v6, "Saved legacy relationship with failed migration event: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F04130(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221F04204(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v52[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v52[0] = a1;
    v43 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v34 = a1;
      v3 = sub_221FB6868();
      a1 = v34;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = a1;

    if (v3)
    {
      v4 = 0;
      v49 = v48 & 0xC000000000000001;
      v47 = v48 & 0xFFFFFFFFFFFFFF8;
      v45 = v48 + 32;
      v51 = (v2 + 56);
      while (1)
      {
        if (v49)
        {
          a1 = MEMORY[0x223DACD50](v4, v48);
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v45 + 8 * v4);
        }

        v50 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_221FB6748();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_221FB6758();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v52[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v41 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v42 = &v40;
        MEMORY[0x28223BE20](v14);
        v19 = &v40 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v51, v18);
        v20 = *(v2 + 16);
        v21 = *&v19[8 * v9] & ~v10;
        v46 = v19;
        *&v19[8 * v9] = v21;
        v44 = v20 - 1;
        if (v43)
        {
          a1 = sub_221FB6868();
          v50 = a1;
        }

        else
        {
          v50 = *(v47 + 16);
        }

        while (1)
        {
          if (v4 == v50)
          {
            v2 = sub_221F77424(v46, v41, v44, v2);
            goto LABEL_40;
          }

          if (v49)
          {
            a1 = MEMORY[0x223DACD50](v4, v48);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v47 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v45 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_221FB6748();
          v24 = -1 << *(v2 + 32);
          v25 = v23 & ~v24;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          if (((1 << v25) & v51[v25 >> 6]) != 0)
          {
            v28 = ~v24;
            while (1)
            {
              v29 = *(*(v2 + 48) + 8 * v25);
              v30 = sub_221FB6758();

              if (v30)
              {
                break;
              }

              v25 = (v25 + 1) & v28;
              v26 = v25 >> 6;
              v27 = 1 << v25;
              if (((1 << v25) & v51[v25 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v31 = v46[v26];
            v46[v26] = v31 & ~v27;
            if ((v31 & v27) != 0)
            {
              v32 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              --v44;
              if (!v32)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35 = 8 * v17;

      v36 = v35;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v37 = swift_slowAlloc();
      memcpy(v37, v51, v36);
      sub_221F046DC(v37, v41, v2, v8, v52);
      v39 = v38;

      MEMORY[0x223DADA80](v37, -1, -1);

      return v39;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_221F046DC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_221FB6868();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_221F77424(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223DACD50](v5[1]);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_221FB6748();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_221FB6758();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_221FB6758();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_221F0491C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E96070;

  return sub_221F034A8(a1);
}

uint64_t sub_221F049B8(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221F03640(a1, v5, v4);
}

uint64_t sub_221F04A70(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_221FB5C38();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F04B30, 0, 0);
}

id sub_221F04B30(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 601);
  v4 = *(v2 + 608);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v5 = UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4, v5);

    if (v6 == 2)
    {
      v7 = v3;
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

  else if (!v3)
  {
LABEL_6:
    if ([*(v1 + 56) secureCloudMigrationAvailable])
    {
      v8 = 1;
    }

    else
    {
      v8 = [*(v1 + 56) secureCloudMigrationCompleted];
    }

    v19 = *(v1 + 8);

    return v19(v8);
  }

  v9 = *(v1 + 56);
  sub_221EA4AB4(*(v1 + 64) + 336, v1 + 16);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 16), *(v1 + 40));
  result = [v9 UUID];
  if (result)
  {
    v11 = result;
    v13 = *(v1 + 80);
    v12 = *(v1 + 88);
    v14 = *(v1 + 72);
    sub_221FB5C18();

    v15 = sub_221FB5BE8();
    v17 = v16;
    *(v1 + 96) = v16;
    (*(v13 + 8))(v12, v14);
    v18 = swift_task_alloc();
    *(v1 + 104) = v18;
    *v18 = v1;
    v18[1] = sub_221F04D38;

    return sub_221F2898C(v15, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F04D38(char a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_221F04E58, 0, 0);
}

uint64_t sub_221F04E58()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1 == 1)
  {
    if ([*(v0 + 56) secureCloudMigrationAvailable])
    {
      v2 = 1;
    }

    else
    {
      v2 = [*(v0 + 56) secureCloudMigrationCompleted];
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221F04F08(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E9544C;

  return sub_221EFEBA0(a1, a2, v7, v6);
}

uint64_t sub_221F04FBC(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221EFA6DC(a1, v4);
}

uint64_t sub_221F05060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
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

uint64_t sub_221F050A8(uint64_t result, int a2, int a3)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
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
      *(result + 632) = 1;
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

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F051C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F052F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F05418(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F05530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F05660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F05790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F058C0(uint64_t a1)
{
  v2 = sub_221FB67E8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_221F78D98(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_221F0593C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v39 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_221FB6A18() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v9 = ~v12;
    v8 = a1 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 64);
    v11 = a1;
  }

  v15 = 0;
  v38 = v9;
  v40 = MEMORY[0x277D84F90];
  v16 = &off_278497000;
  while ((v11 & 0x8000000000000000) != 0)
  {
    if (!sub_221FB6A48() || (v21 = v20, swift_unknownObjectRelease(), v41 = v21, sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118), swift_dynamicCast(), v19 = v42, v16 = &off_278497000, !v42))
    {
LABEL_24:
      sub_221E96470(v11);
      return;
    }

LABEL_17:
    v22 = v19;
    v23 = [v22 v16[311]];
    if (v23)
    {
      v25 = v23;
      sub_221FB5C18();

      v34 = sub_221FB5C38();
      v26 = *(v34 - 8);
      (*(v26 + 56))(v7, 0, 1, v34);
      v27 = v37;
      sub_221EB99BC(v7, v37);
      v35 = sub_221FB5BE8();
      v36 = v28;
      (*(v26 + 8))(v27, v34);
      sub_221E9CFE8(v7, &qword_27CFEBD50, &unk_221FB9FB0);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_221EF3C20(0, *(v40 + 2) + 1, 1, v40);
      }

      v30 = *(v40 + 2);
      v29 = *(v40 + 3);
      v16 = &off_278497000;
      if (v30 >= v29 >> 1)
      {
        v40 = sub_221EF3C20((v29 > 1), v30 + 1, 1, v40);
      }

      v31 = v40;
      *(v40 + 2) = v30 + 1;
      v32 = &v31[16 * v30];
      v33 = v36;
      *(v32 + 4) = v35;
      *(v32 + 5) = v33;
    }

    else
    {
      v24 = sub_221FB5C38();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      sub_221E9CFE8(v7, &qword_27CFEBD50, &unk_221FB9FB0);
    }
  }

  v17 = v15;
  v18 = v10;
  if (v10)
  {
LABEL_13:
    v10 = (v18 - 1) & v18;
    v19 = *(*(v11 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v9 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v8 + 8 * v15);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

BOOL sub_221F05D20(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_221FB5C38();
    ++v2;
    sub_221F10D24(&qword_27CFEC260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_221FB62D8() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_221F05E2C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_221FB5C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC258, &unk_221FBB4A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *(a2 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = (v4 + 48);
  v23 = v10;
  v24 = (v4 + 32);
  v27 = (v4 + 8);
  v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  while (1)
  {
    v17 = *(v10 + 48);
    sub_221EB99BC(v15, v12);
    sub_221EB99BC(v28, &v12[v17]);
    v18 = *v14;
    if ((*v14)(v12, 1, v3) == 1)
    {
      break;
    }

    sub_221EB99BC(v12, v9);
    if (v18(&v12[v17], 1, v3) == 1)
    {
      (*v27)(v9, v3);
      goto LABEL_4;
    }

    v19 = v25;
    (*v24)(v25, &v12[v17], v3);
    sub_221F10D24(&qword_27CFEC260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v26 = sub_221FB62D8();
    v20 = *v27;
    v21 = v19;
    v10 = v23;
    (*v27)(v21, v3);
    v20(v9, v3);
    sub_221E9CFE8(v12, &qword_27CFEBD50, &unk_221FB9FB0);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v15 += v16;
    if (!--v13)
    {
      return 0;
    }
  }

  if (v18(&v12[v17], 1, v3) != 1)
  {
LABEL_4:
    sub_221E9CFE8(v12, &qword_27CFEC258, &unk_221FBB4A0);
    goto LABEL_5;
  }

  sub_221E9CFE8(v12, &qword_27CFEBD50, &unk_221FB9FB0);
  return 1;
}

uint64_t sub_221F061B4(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v30 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v30 = MEMORY[0x277D84F90];
  sub_221FB69D8();
  result = sub_221FB67E8();
  v5 = *(a1 + 36);
  v27 = result;
  v28 = v5;
  v29 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v27;
    v9 = v28;
    v11 = v29;
    sub_221F78B6C(v27, v28, v29, a1);
    v13 = v12;
    v14 = [v12 relationshipStorage];
    v15 = [v14 secureCloudRelationship];

    sub_221FB69B8();
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v25)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD48, &unk_221FB9270);
      v7 = sub_221FB6528();
      sub_221FB68B8();
      result = v7(v26, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_221EB9940(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v10 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v10 >> 6;
      v18 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v18 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_221EB9940(v10, v9, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_221EB9940(v10, v9, 0);
      }

LABEL_27:
      v27 = v16;
      v28 = v9;
      v29 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_221F064E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221F0650C, 0, 0);
}

uint64_t sub_221F0650C()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 22, v1[25]);
  v3 = v1[15];
  v0[6] = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_221F065C4;
  v7 = v0[2];
  v6 = v0[3];

  return sub_221E9F708(v7, v6, v3, v4);
}

uint64_t sub_221F065C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F066F8, 0, 0);
  }
}

uint64_t sub_221F066F8()
{
  v26 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = [*(v0 + 64) userIdentity];
    v3 = [v2 hasiCloudAccount];

    if (v3)
    {
      __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + 296), *(*(v0 + 40) + 320));
      v4 = swift_task_alloc();
      *(v0 + 72) = v4;
      *v4 = v0;
      v4[1] = sub_221F06AC8;
      v5 = *(v0 + 48);
      v6 = *(v0 + 32);

      return sub_221E9AC64(v6, v5, 0);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v16 = sub_221FB61D8();
    __swift_project_value_buffer(v16, qword_281307DF0);

    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_221EF4114(v20, v19, v25);
      _os_log_impl(&dword_221E93000, v17, v18, "Destination %s has a participant, but no iCloud account", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DADA80](v22, -1, -1);
      MEMORY[0x223DADA80](v21, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v23 = 6;
    swift_willThrow();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);

    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221EF4114(v12, v11, v25);
      _os_log_impl(&dword_221E93000, v9, v10, "Destination %s does not have a matching CloudKit participant", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v15 = 12;
    swift_willThrow();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_221F06AC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_221F06DA8;
  }

  else
  {
    v4 = sub_221F06BDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F06BDC()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_0Tm((v0[5] + 296), *(v0[5] + 320));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_221F06C94;
  v3 = v0[10];
  v4 = v0[6];

  return sub_221E9A43C(v1, v3, v4, 0);
}

uint64_t sub_221F06C94()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_221F06FD8;
  }

  else
  {
    v2 = sub_221F06E0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F06DA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F06E0C()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_0Tm((v0[5] + 296), *(v0[5] + 320));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_221F06EC4;
  v3 = v0[10];
  v4 = v0[6];

  return sub_221E993C0(v1, v3, v4, 0);
}

uint64_t sub_221F06EC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_221F072E0;
  }

  else
  {
    v4 = sub_221F07044;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F06FD8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F07044()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  sub_221E9D138(0, &qword_27CFEC268, 0x277CE9130);
  v3 = sub_221FA6C68(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7(v4);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 64);
    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = v9;
    v13 = v10;
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 120);
      v17 = *(v0 + 64);
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

    v22 = *(v0 + 120);
    v23 = *(v0 + 80);
    v24 = *(v0 + 64);

    sub_221EA4994();
    swift_allocError();
    *v25 = 31;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_221F072E0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F0734C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for IDSErrorAction(0);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F073E0, 0, 0);
}

uint64_t sub_221F073E0()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 10, v1[13]);
  v3 = v1[15];
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221F07524;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_17;
  v0[14] = v5;
  [v4 fetchAllChangesWithPriority:2 activity:0 group:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F07524()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_221F077E0;
  }

  else
  {
    v2 = sub_221F07634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F07634()
{
  v1 = *(v0[19] + 128);
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
    sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
    swift_allocError();
    v11 = v10;
    sub_221EA4A40(v6, v10);
    *(v11 + *(v9 + 20)) = v7;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_221F077E0(uint64_t a1)
{
  v2 = v1[21];
  swift_willThrow();
  *v2 = 1;
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
  swift_allocError();
  v5 = v4;
  sub_221EA4A40(v2, v4);
  *(v5 + *(v3 + 20)) = v1[22];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_221F07910()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((v0[4] + 40), *(v0[4] + 64));
  v2 = sub_221FB62E8();

  v3 = [v1 installStateForBundleIdentifier_];

  if (v3 == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_221F07B48;

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
      _os_log_impl(&dword_221E93000, v7, v8, "App not installed to handle repair", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_221F07B48(__int16 a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F07C7C, 0, 0);
  }
}

uint64_t sub_221F07C7C()
{
  v12 = v0;
  if (*(v0 + 48) == 517)
  {
    v1 = *(v0 + 8);
  }

  else
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
      _os_log_impl(&dword_221E93000, v3, v4, "Invalid account info for repair: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

BOOL sub_221F07E7C(void *a1)
{
  v3 = sub_221FB5BC8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  if (![a1 hasOutgoingSecureCloudRepairRequest])
  {
    return 1;
  }

  v10 = [a1 dateForLatestRepairRequest];
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  sub_221FB5B98();

  (*(v4 + 32))(v9, v7, v3);
  v12 = v1;
  sub_221FB5B78();
  v14 = v13;
  v15 = *(v1 + 336);
  v16 = *(v12 + 344);
  v17 = *(v12 + 352);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v23[15] = v15;
    v18 = UserDefaultsKeys.rawValue.getter();
    v19 = COERCE_DOUBLE(sub_221EF8934(v17, v18));
    v21 = v20;

    (*(v4 + 8))(v9, v3);
    if ((v21 & 1) == 0)
    {
      v16 = v19;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  return v16 < -v14;
}

uint64_t sub_221F08060(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F08084, 0, 0);
}

uint64_t sub_221F08084()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD00000000000002DLL, 0x8000000221FC27F0);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_221F08198;

  return sub_221F078F0();
}

uint64_t sub_221F08198()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F082CC, 0, 0);
  }
}

uint64_t sub_221F082CC()
{
  v24 = v0;
  v1 = [*(v0[4] + 128) contacts];
  if (v1)
  {
    v2 = v1;
    v3 = v0[2];
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    v4 = sub_221FB64F8();

    v5 = sub_221EC4E48(v3);
    v6 = sub_221F0FEA4(v4, v5);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = sub_221FB6508();
      v13 = sub_221EF4114(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_221E93000, v7, v8, "Contacts lost secure cloud identity %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v14 = v0[4];
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    sub_221F41EC4(sub_221F11150, v15, v6);

    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_221F085C8;
    v17 = v0[3];

    return sub_221F08A7C(v17);
  }

  else
  {
    v19 = sub_221FB61B8();
    v20 = sub_221FB65C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_221E93000, v19, v20, "No contacts to repair", v21, 2u);
      MEMORY[0x223DADA80](v21, -1, -1);
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_221F085C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_221F086BC(id *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 relationshipStorage];
  v5 = [v4 secureCloudRelationship];

  if ([v5 secureCloudNeedsZoneDeletion])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = v5;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_221E93000, v8, v9, "Relationship already marked needed deletion %@", v10, 0xCu);
      sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v19 = 0;
    return (v19 & 1);
  }

  v13 = [v3 relationshipStorage];
  v14 = [v13 secureCloudRelationship];

  result = [v14 secureCloudZoneName];
  if (result)
  {
    v16 = result;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    v17 = sub_221FB65D8();

    v21 = v17;
    MEMORY[0x28223BE20](v18);
    v20[2] = &v21;
    v19 = sub_221F7C788(sub_221F1159C, v20, a2);

    return (v19 & 1);
  }

  __break(1u);
  return result;
}

void sub_221F08998(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 relationshipStorage];
  v5 = [v3 relationshipStorage];
  v6 = [v5 secureCloudRelationship];

  [v6 insertEventWithType_];
  [v4 setSecureCloudRelationship_];
  [v3 setRelationshipStorage_];
  [*(a2 + 128) saveContact_];
}

uint64_t sub_221F08A7C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F08BC4, 0, 0);
}

uint64_t sub_221F08BC4()
{
  v102 = v0;
  v101[1] = *MEMORY[0x277D85DE8];
  if (qword_281307080 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v1 = *(v0 + 104);
    v2 = sub_221FB61D8();
    v3 = __swift_project_value_buffer(v2, qword_281307DF0);
    *(v0 + 184) = v3;
    sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD000000000000021, 0x8000000221FC2820);
    v4 = [*(v1 + 128) contacts];
    v100 = v0;
    if (!v4)
    {
      v23 = sub_221FB61B8();
      v24 = sub_221FB65C8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_221E93000, v23, v24, "No contacts to repair", v25, 2u);
        MEMORY[0x223DADA80](v25, -1, -1);
      }

      goto LABEL_76;
    }

    v5 = v4;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    v0 = sub_221FB64F8();

    v94 = v3;
    if ((v0 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x277D84FA0];
    v101[0] = MEMORY[0x277D84FA0];
    sub_221FB6828();
    v8 = sub_221FB6898();
    if (!v8)
    {
LABEL_22:

      goto LABEL_42;
    }

LABEL_8:
    v0 = v100;
    v100[11] = v8;
    swift_dynamicCast();
    v9 = [*(v0 + 80) relationshipStorage];
    v10 = [v9 secureCloudRelationship];

    LOBYTE(v9) = [v10 secureCloudNeedsZoneDeletion];
    v11 = *(v0 + 80);
    if ((v9 & 1) == 0)
    {

      goto LABEL_7;
    }

    v12 = *(v7 + 16);
    if (*(v7 + 24) <= v12)
    {
      sub_221F161CC(v12 + 1);
      v7 = v101[0];
    }

    v13 = sub_221FB6748();
    v14 = v7 + 56;
    v15 = -1 << *(v7 + 32);
    v16 = v13 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 56 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_21;
    }

    v19 = 0;
    v20 = (63 - v15) >> 6;
    while (++v17 != v20 || (v19 & 1) == 0)
    {
      v21 = v17 == v20;
      if (v17 == v20)
      {
        v17 = 0;
      }

      v19 |= v21;
      v22 = *(v14 + 8 * v17);
      if (v22 != -1)
      {
        v18 = __clz(__rbit64(~v22)) + (v17 << 6);
LABEL_21:
        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v7 + 48) + 8 * v18) = v11;
        ++*(v7 + 16);
LABEL_7:
        v8 = sub_221FB6898();
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
  }

  v26 = *(v0 + 32);
  v27 = ((1 << v26) + 63) >> 6;
  v28 = v0;
  if ((v26 & 0x3Fu) > 0xD)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_27;
    }

    v92 = swift_slowAlloc();
    v7 = sub_221F107FC(v92, v27, v0, sub_221F0B154);

    MEMORY[0x223DADA80](v92, -1, -1);
  }

  else
  {
LABEL_27:
    v97 = &v93;
    v98 = v27;
    MEMORY[0x28223BE20](v6);
    v30 = &v93 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v29);
    v99 = 0;
    v31 = 0;
    v32 = 1 << *(v0 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v0 + 56);
    v0 = (v32 + 63) >> 6;
    while (1)
    {
      if (v34)
      {
        v35 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v36 = v31;
        do
        {
          v31 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_80;
          }

          if (v31 >= v0)
          {
            goto LABEL_41;
          }

          v37 = *(v28 + 56 + 8 * v31);
          ++v36;
        }

        while (!v37);
        v35 = __clz(__rbit64(v37));
        v34 = (v37 - 1) & v37;
      }

      v38 = v35 | (v31 << 6);
      v39 = *(*(v28 + 48) + 8 * v38);
      v40 = [v39 relationshipStorage];
      v41 = [v40 secureCloudRelationship];

      LODWORD(v40) = [v41 secureCloudNeedsZoneDeletion];
      if (v40)
      {
        *&v30[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
        v42 = __OFADD__(v99++, 1);
        if (v42)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_41:
    v7 = sub_221F77424(v30, v98, v99, v28);
  }

LABEL_42:
  v100[24] = v7;
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (!*(v7 + 16))
    {
      goto LABEL_74;
    }

LABEL_44:
    v43 = sub_221F061B4(v7);
    v93 = 0;
    if (v43 >> 62)
    {
      v75 = v43;
      v44 = sub_221FB6868();
      v43 = v75;
      if (v44)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
LABEL_46:
        v45 = 0;
        v98 = v43 & 0xFFFFFFFFFFFFFF8;
        v99 = v43 & 0xC000000000000001;
        v97 = *MEMORY[0x277CBBF28];
        v46 = MEMORY[0x277D84F98];
        v95 = v44;
        v96 = v43;
        while (1)
        {
          if (v99)
          {
            v49 = MEMORY[0x223DACD50](v45, v43);
          }

          else
          {
            if (v45 >= *(v98 + 16))
            {
              goto LABEL_82;
            }

            v49 = *(v43 + 8 * v45 + 32);
          }

          v50 = v49;
          v51 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_81;
          }

          v52 = [v49 secureCloudZoneName];
          if (!v52)
          {
            __break(1u);
          }

          v53 = v52;
          v0 = sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
          sub_221FB6318();

          sub_221FB6318();
          v54 = sub_221FB65D8();
          if ((v46 & 0xC000000000000001) != 0)
          {
            if (v46 < 0)
            {
              v55 = v46;
            }

            else
            {
              v55 = v46 & 0xFFFFFFFFFFFFFF8;
            }

            v56 = v50;
            v57 = sub_221FB6868();
            if (__OFADD__(v57, 1))
            {
              goto LABEL_84;
            }

            v46 = sub_221F1088C(v55, v57 + 1);
          }

          else
          {
            v58 = v50;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101[0] = v46;
          v61 = sub_221ED4C18(v54);
          v62 = *(v46 + 16);
          v63 = (v60 & 1) == 0;
          v64 = v62 + v63;
          if (__OFADD__(v62, v63))
          {
            goto LABEL_83;
          }

          v65 = v60;
          if (*(v46 + 24) >= v64)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v46 = v101[0];
              if (v60)
              {
                goto LABEL_47;
              }
            }

            else
            {
              sub_221ED72B0();
              v46 = v101[0];
              if (v65)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
            sub_221ED5E50(v64, isUniquelyReferenced_nonNull_native);
            v66 = sub_221ED4C18(v54);
            if ((v65 & 1) != (v67 & 1))
            {
              return sub_221FB6B98();
            }

            v61 = v66;
            v46 = v101[0];
            if (v65)
            {
LABEL_47:
              v47 = *(v46 + 56);
              v48 = *(v47 + 8 * v61);
              *(v47 + 8 * v61) = v50;

              goto LABEL_48;
            }
          }

          *(v46 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          *(*(v46 + 48) + 8 * v61) = v54;
          *(*(v46 + 56) + 8 * v61) = v50;

          v68 = *(v46 + 16);
          v42 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v42)
          {
            goto LABEL_85;
          }

          *(v46 + 16) = v69;
LABEL_48:
          ++v45;
          v43 = v96;
          if (v51 == v95)
          {
            goto LABEL_89;
          }
        }
      }
    }

    v46 = MEMORY[0x277D84F98];
LABEL_89:
    v100[25] = v46;

    v76 = sub_221FB61B8();
    v77 = sub_221FB65C8();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v101[0] = v79;
      *v78 = 136315138;

      sub_221F0593C(v80);
      v82 = v81;

      v83 = MEMORY[0x223DAC810](v82, MEMORY[0x277D837D0]);
      v85 = v84;

      v86 = sub_221EF4114(v83, v85, v101);

      *(v78 + 4) = v86;
      _os_log_impl(&dword_221E93000, v76, v77, "Deleting zones for relationships %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x223DADA80](v79, -1, -1);
      MEMORY[0x223DADA80](v78, -1, -1);
    }

    v87 = v100;
    __swift_project_boxed_opaque_existential_0Tm((v100[13] + 216), *(v100[13] + 240));

    v89 = sub_221E9ED00(v88);
    v87[26] = v89;

    v90 = swift_task_alloc();
    v87[27] = v90;
    *v90 = v87;
    v90[1] = sub_221F09774;
    v91 = v87[12];

    return sub_221EF6BA8(v89, v91);
  }

  if (sub_221FB6868())
  {
    goto LABEL_44;
  }

LABEL_74:

  v23 = sub_221FB61B8();
  v70 = sub_221FB65C8();
  if (os_log_type_enabled(v23, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_221E93000, v23, v70, "No contacts with zone deletion requested", v71, 2u);
    MEMORY[0x223DADA80](v71, -1, -1);
  }

LABEL_76:

  v72 = v100;

  v73 = v72[1];

  return v73();
}

uint64_t sub_221F09774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v6[28] = a1;
  v6[29] = a2;
  v6[30] = a3;
  v6[31] = a4;
  v6[32] = v4;

  if (v4)
  {

    v8 = v7[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F099AC, 0, 0);
  }
}

uint64_t sub_221F099AC()
{
  v55 = v0;
  v54[2] = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  v54[0] = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_68:
    v3 = sub_221FB6868();
    v4 = v0[29];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1;
  }

  v5 = v0[25];
  v52 = v5 & 0xC000000000000001;
  v53 = v5;
  if (!v3)
  {
    v51 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v8 = v4 + 32;
  v51 = MEMORY[0x277D84F90];
  v1 = v5 & 0xC000000000000001;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x223DACD50](v9, v0[29]);
      }

      else
      {
        if (v9 >= *(v2 + 16))
        {
          goto LABEL_64;
        }

        v10 = *(v8 + 8 * v9);
      }

      v11 = v10;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (!v1)
      {
        break;
      }

      v12 = sub_221FB6A38();
      if (!v12)
      {
        goto LABEL_6;
      }

      v0[3] = v12;
      sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
      swift_dynamicCast();
      v13 = v0[2];

      if (v13)
      {
        goto LABEL_21;
      }

LABEL_7:
      ++v9;
      if (v6 == v3)
      {
        goto LABEL_26;
      }
    }

    if (!*(v53 + 16) || (v14 = sub_221ED4C18(v10), v1 = v52, (v15 & 1) == 0))
    {
LABEL_6:

      goto LABEL_7;
    }

    v16 = *(*(v53 + 56) + 8 * v14);

    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_21:
    MEMORY[0x223DAC7E0]();
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_221FB6458();
    }

    sub_221FB6478();
    v51 = v54[0];
    v1 = v52;
    if (v6 != v3)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v17 = v0[31];
  v54[0] = MEMORY[0x277D84F90];
  v2 = *(v17 + 16);
  if (v2)
  {
    v18 = 0;
    v19 = v17 + 40;
    v50 = MEMORY[0x277D84F90];
    while (2)
    {
      v20 = (v19 + 16 * v18);
      v21 = v18;
LABEL_32:
      if (v21 >= *(v17 + 16))
      {
        goto LABEL_65;
      }

      v22 = *(v20 - 1);
      v23 = *v20;
      v0[4] = *v20;
      v24 = v23;
      v25 = v23;
      v26 = v22;
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
      type metadata accessor for CKError(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      v27 = v0[5];
      v0[6] = v27;
      sub_221F10D24(&qword_27CFEBA20, type metadata accessor for CKError, &unk_221FB8764);
      v1 = (v0 + 6);
      sub_221FB5A58();
      if (v0[7] == 26)
      {
        if (v52)
        {
          v1 = v26;
          v28 = sub_221FB6A38();

          if (v28)
          {
            v0[9] = v28;
            sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
            swift_dynamicCast();
            v29 = v0[8];

            if (v29)
            {
              goto LABEL_45;
            }
          }

          else
          {
          }

          break;
        }

        if (*(v53 + 16))
        {
          v1 = v0[25];
          v30 = sub_221ED4C18(v26);
          if (v31)
          {
            v32 = *(*(v53 + 56) + 8 * v30);

            if (v32)
            {
LABEL_45:
              MEMORY[0x223DAC7E0]();
              if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_221FB6458();
              }

              v18 = v21 + 1;
              v1 = v54;
              sub_221FB6478();
              v50 = v54[0];
              v19 = v17 + 40;
              if (v2 - 1 != v21)
              {
                continue;
              }

              goto LABEL_50;
            }

            break;
          }
        }

LABEL_30:
      }

      else
      {
      }

      break;
    }

    ++v21;
    v20 += 2;
    if (v2 == v21)
    {
      goto LABEL_50;
    }

    goto LABEL_32;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_50:
  v33 = v0[13];

  v54[0] = v51;
  sub_221ED43D0(v50);
  v34 = v54[0];
  v35 = swift_task_alloc();
  *(v35 + 16) = v33;
  v36 = sub_221F54478(sub_221F1116C, v35, v34);
  v0[33] = v36;

  if (v36 >> 62)
  {
    v2 = sub_221FB6868();
    v0[34] = v2;
    if (v2)
    {
LABEL_52:
      v37 = 0;
      v1 = v36 & 0xC000000000000001;
      while (1)
      {
        if (v1)
        {
          v38 = MEMORY[0x223DACD50](v37, v36);
        }

        else
        {
          if (v37 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v38 = *(v36 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        [v38 setSystemFieldsOnlyRecord_];
        [v39 insertEventWithType_];

        ++v37;
        if (v40 == v2)
        {
          v41 = v0[13];
          __swift_project_boxed_opaque_existential_0Tm(v41 + 32, v41[35]);
          v42 = v41[15];
          v0[35] = v42;
          v43 = swift_task_alloc();
          v0[36] = v43;
          *v43 = v0;
          v43[1] = sub_221F0A17C;
          v44 = v0[12];

          return sub_221EBB94C(v36, v42, v44);
        }
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

  else
  {
    v2 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[34] = v2;
    if (v2)
    {
      goto LABEL_52;
    }
  }

  v46 = sub_221FB61B8();
  v47 = sub_221FB65A8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_221E93000, v46, v47, "Didn't find any relationship needing repair after deletion", v48, 2u);
    MEMORY[0x223DADA80](v48, -1, -1);
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_221F0A17C()
{
  v2 = *v1;
  *(v2 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F0A384, 0, 0);
  }
}

uint64_t sub_221F0A384()
{
  v68 = v0;
  v67[1] = *MEMORY[0x277D85DE8];

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  if (os_log_type_enabled(v1, v2))
  {
    v60 = v2;
    log = v1;
    v3 = v0[33];
    v4 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v67[0] = v58;
    buf = v4;
    *v4 = 136315138;
    if (v0[34])
    {
      v5 = 0;
      v63 = v3 & 0xFFFFFFFFFFFFFF8;
      v65 = v3 & 0xC000000000000001;
      v62 = MEMORY[0x277D84F90];
      v6 = v3 + 32;
      do
      {
        v7 = v5;
        while (1)
        {
          if (v65)
          {
            v8 = MEMORY[0x223DACD50](v7, v0[33]);
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v7 >= *(v63 + 16))
            {
              goto LABEL_54;
            }

            v8 = *(v6 + 8 * v7);
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_53;
            }
          }

          v9 = v8;
          v10 = [v9 UUID];
          if (v10)
          {
            v11 = v10;
            sub_221FB5C18();

            v12 = 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = v0[21];
          v14 = v0[22];
          v15 = sub_221FB5C38();
          v16 = *(v15 - 8);
          (*(v16 + 56))(v13, v12, 1, v15);
          sub_221EB994C(v13, v14);
          if ((*(v16 + 48))(v14, 1, v15) != 1)
          {
            break;
          }

          v4 = v0[34];
          sub_221E9CFE8(v0[22], &qword_27CFEBD50, &unk_221FB9FB0);

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_24;
          }
        }

        v17 = v0[22];
        v18 = v0[20];
        sub_221EB99BC(v17, v18);
        v19 = sub_221FB5BE8();
        v21 = v20;
        (*(v16 + 8))(v18, v15);
        sub_221E9CFE8(v17, &qword_27CFEBD50, &unk_221FB9FB0);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_221EF3C20(0, *(v62 + 2) + 1, 1, v62);
        }

        v4 = *(v62 + 2);
        v22 = *(v62 + 3);
        if (v4 >= v22 >> 1)
        {
          v62 = sub_221EF3C20((v22 > 1), v4 + 1, 1, v62);
        }

        *(v62 + 2) = v4 + 1;
        v23 = &v62[16 * v4];
        *(v23 + 4) = v19;
        *(v23 + 5) = v21;
      }

      while (v5 != v0[34]);
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
    }

LABEL_24:
    v24 = MEMORY[0x223DAC810](v62, MEMORY[0x277D837D0]);
    v26 = v25;

    v27 = sub_221EF4114(v24, v26, v67);

    *(buf + 4) = v27;
    v1 = log;
    _os_log_impl(&dword_221E93000, log, v60, "Pushed relationships after deleting zones: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x223DADA80](v58, -1, -1);
    MEMORY[0x223DADA80](buf, -1, -1);
  }

  v28 = v0[33];
  if (v28 >> 62)
  {
    v29 = sub_221FB6868();
    if (v29)
    {
      goto LABEL_27;
    }

LABEL_40:

    v33 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_40;
  }

LABEL_27:
  v67[0] = MEMORY[0x277D84F90];
  sub_221F776A4(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
    __break(1u);
  }

  v30 = 0;
  v31 = v0[33];
  v32 = v0[14];
  v33 = v67[0];
  v64 = v31 + 32;
  v66 = v31 & 0xC000000000000001;
  do
  {
    if (v66)
    {
      v34 = MEMORY[0x223DACD50](v30, v0[33]);
    }

    else
    {
      v34 = *(v64 + 8 * v30);
    }

    v35 = v34;
    v36 = [v35 UUID];
    if (v36)
    {
      v37 = v36;
      sub_221FB5C18();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v40 = v0[18];
    v39 = v0[19];
    v41 = v0[17];
    v42 = sub_221FB5C38();
    (*(*(v42 - 8) + 56))(v41, v38, 1, v42);
    sub_221EB994C(v41, v40);
    sub_221EB994C(v40, v39);

    v67[0] = v33;
    v44 = *(v33 + 16);
    v43 = *(v33 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_221F776A4((v43 > 1), v44 + 1, 1);
      v33 = v67[0];
    }

    v45 = v0[19];
    ++v30;
    *(v33 + 16) = v44 + 1;
    sub_221EB994C(v45, v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v44);
  }

  while (v29 != v30);

LABEL_41:
  v46 = v0[24];

  sub_221F10DD4(v46, v33);
  v4 = v47;
  v0[38] = v47;
  swift_bridgeObjectRelease_n();

  if (v4 >> 62)
  {
    goto LABEL_55;
  }

  v48 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[39] = v48; v48; v0[39] = v48)
  {
    v49 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x223DACD50](v49, v4);
      }

      else
      {
        if (v49 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v50 = *(v4 + 8 * v49 + 32);
      }

      v51 = v50;
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      [v50 insertEventWithType_];

      ++v49;
      if (v52 == v48)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v48 = sub_221FB6868();
  }

LABEL_56:
  __swift_project_boxed_opaque_existential_0Tm((v0[13] + 256), *(v0[13] + 280));
  v53 = swift_task_alloc();
  v0[40] = v53;
  *v53 = v0;
  v53[1] = sub_221F0AAB4;
  v54 = v0[35];
  v55 = v0[12];
  v56 = MEMORY[0x277D84F90];

  return sub_221EBA884(v4, v56, v54, v55);
}

uint64_t sub_221F0AAB4(uint64_t a1)
{
  v3 = *v2;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F0ACB8, 0, 0);
  }
}

uint64_t sub_221F0ACB8()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v36 = v2;
    log = v1;
    v5 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    buf = v5;
    *v5 = 136315138;
    if (v0[39])
    {
      v6 = 0;
      v39 = v4 & 0xFFFFFFFFFFFFFF8;
      v40 = v4 & 0xC000000000000001;
      v38 = MEMORY[0x277D84F90];
      v7 = v4 + 32;
      do
      {
        v8 = v6;
        while (1)
        {
          if (v40)
          {
            v9 = MEMORY[0x223DACD50](v8, v0[38]);
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v8 >= *(v39 + 16))
            {
              goto LABEL_30;
            }

            v9 = *(v7 + 8 * v8);
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
            }
          }

          v10 = v9;
          v11 = [v10 UUID];
          if (v11)
          {
            v12 = v11;
            sub_221FB5C18();

            v13 = 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = v0[15];
          v15 = v0[16];
          v16 = sub_221FB5C38();
          v17 = *(v16 - 8);
          (*(v17 + 56))(v14, v13, 1, v16);
          sub_221EB994C(v14, v15);
          v18 = (*(v17 + 48))(v15, 1, v16);
          v19 = v0[16];
          if (v18 != 1)
          {
            break;
          }

          v20 = v0[39];
          sub_221E9CFE8(v0[16], &qword_27CFEBD50, &unk_221FB9FB0);

          ++v8;
          if (v6 == v20)
          {
            goto LABEL_25;
          }
        }

        v21 = v0[20];
        sub_221EB99BC(v0[16], v21);
        v22 = sub_221FB5BE8();
        v24 = v23;
        (*(v17 + 8))(v21, v16);
        sub_221E9CFE8(v19, &qword_27CFEBD50, &unk_221FB9FB0);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_221EF3C20(0, *(v38 + 2) + 1, 1, v38);
        }

        v26 = *(v38 + 2);
        v25 = *(v38 + 3);
        if (v26 >= v25 >> 1)
        {
          v38 = sub_221EF3C20((v25 > 1), v26 + 1, 1, v38);
        }

        *(v38 + 2) = v26 + 1;
        v27 = &v38[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
      }

      while (v6 != v0[39]);
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

LABEL_25:

    v28 = MEMORY[0x223DAC810](v38, MEMORY[0x277D837D0]);
    v30 = v29;

    v31 = sub_221EF4114(v28, v30, v41);

    *(buf + 4) = v31;
    _os_log_impl(&dword_221E93000, log, v36, "Pushed legacy relationships after deleting zones: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x223DADA80](v34, -1, -1);
    MEMORY[0x223DADA80](buf, -1, -1);
  }

  else
  {
  }

  v32 = v0[1];

  return v32();
}

id sub_221F0B154(id *a1)
{
  v1 = [*a1 relationshipStorage];
  v2 = [v1 secureCloudRelationship];

  v3 = [v2 secureCloudNeedsZoneDeletion];
  return v3;
}

uint64_t sub_221F0B1D4(void **a1, uint64_t a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if ([v8 isFriendshipActive] && (objc_msgSend(v8, sel_secureCloudMigrationCompleted) & 1) != 0)
  {
    return 1;
  }

  v9 = *(a2 + 128);
  result = [v8 UUID];
  if (result)
  {
    v11 = result;
    sub_221FB5C18();

    v12 = sub_221FB5BF8();
    (*(v5 + 8))(v7, v4);
    v13 = [v9 contactWithUUID_];

    if (v13)
    {
      v14 = [v13 relationshipStorage];

      v15 = [v14 legacyRelationship];
      if (v15)
      {
        if ([v15 isFriendshipActive])
        {
          v16 = [v15 secureCloudUpgradeCompleted];

          if (v16)
          {
            return 1;
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F0B3BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F0B47C, 0, 0);
}

uint64_t sub_221F0B47C()
{
  v26 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD00000000000001FLL, 0x8000000221FC2870);
  v3 = *(v1 + 128);
  v4 = sub_221FB5BF8();
  v5 = [v3 contactWithUUID_];
  v0[7] = v5;

  if (v5)
  {
    v6 = [v5 relationshipStorage];
    v0[8] = v6;
    v7 = [v5 relationshipStorage];
    v8 = [v7 secureCloudRelationship];
    v0[9] = v8;

    [v8 insertEventWithType_];
    [v6 setSecureCloudRelationship_];
    [v5 setRelationshipStorage_];
    [v3 saveContact_];
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_221F0B87C;

    return sub_221F08A7C(0);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      sub_221F10D24(&qword_27CFEBB90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_221FB6B08();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_221EF4114(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_221E93000, v11, v12, "Failed to find contact for friend identifier: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    sub_221EA4994();
    swift_allocError();
    *v23 = 21;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_221F0B87C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_221F0BA10;
  }

  else
  {
    v2 = sub_221F0B990;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F0B990()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F0BA10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F0BAA8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD000000000000018, 0x8000000221FC2850);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_221F0BBBC;

  return sub_221F078F0();
}

uint64_t sub_221F0BBBC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F0BCF0, 0, 0);
  }
}

uint64_t sub_221F0BCF0()
{
  v20 = v0;
  v1 = [*(*(v0 + 16) + 128) contacts];
  if (!v1)
  {
    v6 = sub_221FB61B8();
    v15 = sub_221FB65C8();
    if (!os_log_type_enabled(v6, v15))
    {
LABEL_7:

      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_221E93000, v6, v15, "No contacts to repair", v16, 2u);
    v14 = v16;
LABEL_6:
    MEMORY[0x223DADA80](v14, -1, -1);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(v0 + 16);
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221F10D6C();
  v4 = sub_221FB64F8();

  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  sub_221F10104(sub_221F11604, v5, v4);

  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_221FB6508();
    v12 = v11;

    v13 = sub_221EF4114(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_221E93000, v6, v7, "Found contacts needing repair: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    v14 = v8;
    goto LABEL_6;
  }

LABEL_9:
  v17 = *(v0 + 8);

  return v17();
}

BOOL sub_221F0BF5C(id *a1)
{
  v1 = [*a1 relationshipStorage];
  v2 = [v1 secureCloudRelationship];

  if ([v2 secureCloudNeedsRepair])
  {
    v3 = sub_221F07E7C(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_221F0BFF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for IDSErrorAction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_221FB5F48();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_221FB5F78();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_221FB5C38();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC258, &unk_221FBB4A0);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_221FB5BC8();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F0C294, 0, 0);
}

uint64_t sub_221F0C294()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD00000000000002ALL, 0x8000000221FC27C0);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_221F0C3A8;

  return sub_221F078F0();
}

uint64_t sub_221F0C3A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_221F0E64C;
  }

  else
  {
    v2 = sub_221F0C4BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F0C4BC()
{
  v1 = [*(v0 + 24) fromID];
  if (!v1)
  {
    sub_221FB6318();
    v1 = sub_221FB62E8();
  }

  v2 = ASSanitizedContactDestination();

  v3 = sub_221FB6318();
  v5 = v4;

  *(v0 + 224) = v3;
  *(v0 + 232) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  v6 = swift_allocObject();
  *(v0 + 240) = v6;
  *(v6 + 16) = xmmword_221FB81A0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_221F0C604;

  return sub_221F0734C(v6);
}

uint64_t sub_221F0C604(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_221F0E7B8;
  }

  else
  {

    v4 = sub_221F0C720;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F0C720()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = [v1 relationshipStorage];
  v7 = [v6 secureCloudRelationship];
  *(v0 + 272) = v7;

  v8 = [v1 relationshipStorage];
  v9 = [v8 legacyRelationship];
  *(v0 + 280) = v9;

  sub_221FB5F58();
  sub_221FB5BB8();
  sub_221FB5B28();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v3, v4);
  sub_221FB5B28();
  v14 = v13;
  v12(v2, v4);
  v15 = v11 - v14;
  if (v11 - v14 <= 0.0 || v15 >= 86400.0)
  {
    goto LABEL_5;
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = [*(v0 + 24) uniqueID];
  sub_221FB5C18();

  v27 = *(v25 + 56);
  v28 = 1;
  v27(v23, 0, 1, v24);
  v29 = [v7 receivedInvitation];
  v73 = v9;
  v74 = v7;
  if (v29)
  {
    v30 = v29;
    v31 = [v29 uniqueID];

    sub_221FB5C18();
    v28 = 0;
  }

  v33 = *(v0 + 152);
  v32 = *(v0 + 160);
  v34 = *(v0 + 128);
  v35 = *(v0 + 136);
  v36 = *(v0 + 104);
  v37 = *(v0 + 112);
  v27(v33, v28, 1, v36);
  v38 = *(v34 + 48);
  sub_221EB99BC(v32, v35);
  sub_221EB99BC(v33, v35 + v38);
  v39 = *(v37 + 48);
  if (v39(v35, 1, v36) == 1)
  {
    v40 = *(v0 + 160);
    v41 = *(v0 + 104);
    sub_221E9CFE8(*(v0 + 152), &qword_27CFEBD50, &unk_221FB9FB0);
    sub_221E9CFE8(v40, &qword_27CFEBD50, &unk_221FB9FB0);
    v9 = v73;
    v7 = v74;
    if (v39(v35 + v38, 1, v41) == 1)
    {
      sub_221E9CFE8(*(v0 + 136), &qword_27CFEBD50, &unk_221FB9FB0);
LABEL_5:

      v17 = sub_221FB61B8();
      v18 = sub_221FB65A8();
      if (!os_log_type_enabled(v17, v18))
      {
        v22 = 47;
LABEL_26:
        v59 = *(v0 + 256);
        v60 = *(v0 + 48);

        swift_storeEnumTagMultiPayload();
        sub_221EA4994();
        v61 = swift_allocError();
        *v62 = v22;
        v63 = type metadata accessor for IDSError(0);
        sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError, &unk_221FBABF0);
        swift_allocError();
        v65 = v64;
        sub_221EA4A40(v60, v64);
        *(v65 + *(v63 + 20)) = v61;
        swift_willThrow();

        v66 = *(v0 + 8);

        return v66();
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v7;
      *v20 = v7;
      v21 = v7;
      _os_log_impl(&dword_221E93000, v17, v18, "Already handling a repair request for relationship %@", v19, 0xCu);
      sub_221E9CFE8(v20, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v20, -1, -1);
      v22 = 47;
LABEL_25:
      MEMORY[0x223DADA80](v19, -1, -1);
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v42 = *(v0 + 104);
  sub_221EB99BC(*(v0 + 136), *(v0 + 144));
  v43 = v39(v35 + v38, 1, v42);
  v45 = *(v0 + 152);
  v44 = *(v0 + 160);
  v46 = *(v0 + 144);
  if (v43 == 1)
  {
    v48 = *(v0 + 104);
    v47 = *(v0 + 112);
    sub_221E9CFE8(*(v0 + 152), &qword_27CFEBD50, &unk_221FB9FB0);
    sub_221E9CFE8(v44, &qword_27CFEBD50, &unk_221FB9FB0);
    (*(v47 + 8))(v46, v48);
    v9 = v73;
    v7 = v74;
LABEL_15:
    sub_221E9CFE8(*(v0 + 136), &qword_27CFEC258, &unk_221FBB4A0);
    goto LABEL_16;
  }

  v75 = *(v0 + 136);
  v72 = *(v0 + 160);
  v67 = *(v0 + 112);
  v68 = *(v0 + 120);
  v69 = *(v0 + 104);
  (*(v67 + 32))(v68, v35 + v38, v69);
  sub_221F10D24(&qword_27CFEC260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v70 = sub_221FB62D8();
  v71 = *(v67 + 8);
  v71(v68, v69);
  sub_221E9CFE8(v45, &qword_27CFEBD50, &unk_221FB9FB0);
  sub_221E9CFE8(v72, &qword_27CFEBD50, &unk_221FB9FB0);
  v71(v46, v69);
  sub_221E9CFE8(v75, &qword_27CFEBD50, &unk_221FB9FB0);
  v9 = v73;
  v7 = v74;
  if (v70)
  {
    goto LABEL_5;
  }

LABEL_16:
  if ((![v7 isFriendshipActive] || (objc_msgSend(v7, sel_secureCloudUpgradeCompleted) & 1) == 0) && (!objc_msgSend(v9, sel_isFriendshipActive) || !objc_msgSend(v9, sel_secureCloudUpgradeCompleted)))
  {

    v17 = sub_221FB61B8();
    v58 = sub_221FB65A8();
    if (!os_log_type_enabled(v17, v58))
    {
      v22 = 52;
      goto LABEL_26;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_221E93000, v17, v58, "Request to repair inactive friendship", v19, 2u);
    v22 = 52;
    goto LABEL_25;
  }

  v49 = *(v0 + 256);
  v50 = v7;
  v52 = *(v0 + 24);
  v51 = *(v0 + 32);
  [v50 insertEventWithType_];
  [v50 setReceivedInvitation_];
  __swift_project_boxed_opaque_existential_0Tm(v51 + 32, v51[35]);
  v53 = v51[15];
  *(v0 + 288) = v53;
  v54 = v50;
  v55 = v49;
  v56 = swift_task_alloc();
  *(v0 + 296) = v56;
  *v56 = v0;
  v56[1] = sub_221F0CF54;

  return sub_221EBAEA8(v54, v49, v53, 0);
}