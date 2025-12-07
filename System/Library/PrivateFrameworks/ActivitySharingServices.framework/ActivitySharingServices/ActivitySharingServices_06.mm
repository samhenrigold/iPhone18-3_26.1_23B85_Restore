uint64_t sub_221F2278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9606C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F228F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB918, &unk_221FB82A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = [a1 URL];
  if (v8)
  {
    v9 = v8;
    sub_221FB5AD8();

    v10 = sub_221FB5AE8();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = sub_221FB5AE8();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_221E9CF08(v5, v7);
  sub_221FB5AE8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_221F22AE0(v7);
    return 0;
  }

  else
  {
    v13 = sub_221FB5AB8();
    (*(v11 + 8))(v7, v10);
    return v13;
  }
}

uint64_t sub_221F22AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB918, &unk_221FB82A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_221F22B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_221F22BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F22C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_221E9544C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F22D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F22EA8(char a1, uint64_t a2)
{
  *(v3 + 304) = a2;
  *(v3 + 312) = v2;
  *(v3 + 466) = a1;
  v4 = sub_221FB5C38();
  *(v3 + 320) = v4;
  *(v3 + 328) = *(v4 - 8);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F22F78, 0, 0);
}

uint64_t sub_221F22F78(uint64_t a1)
{
  v2 = v1[39];
  v3 = sub_221FB5BF8();
  v1[44] = *v2;
  v4 = ASInsertPlaceholderRelationshipEventForFriend();

  sub_221FB67C8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0Tm(v2 + 12, v2[15]);
  v8 = off_28355BEA0 + *off_28355BEA0;
  v5 = swift_task_alloc();
  v1[45] = v5;
  *v5 = v1;
  v5[1] = sub_221F23100;
  v6 = v1[38];

  return (v8)(v6, &type metadata for RelationshipFinalizationCoordinator, &off_28355BE88);
}

uint64_t sub_221F23100()
{

  return MEMORY[0x2822009F8](sub_221F231FC, 0, 0);
}

uint64_t sub_221F231FC()
{
  v1 = v0[39];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v1[4]);
  v3 = v1[6];
  v0[46] = v3;
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 58;
  v0[3] = sub_221F23348;
  v5 = swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[47] = v6;
  v0[25] = v6;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221FA909C;
  v0[21] = &block_descriptor_19;
  v0[22] = v5;
  [v4 fetchAllChangesWithPriority:2 activity:0 group:v3 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F23348()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_221F23CE4;
  }

  else
  {
    v2 = sub_221F23458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F23458(uint64_t a1)
{
  v75 = v1;
  v2 = *(v1 + 352);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  *(v1 + 392) = v4;

  if (v4)
  {
    v5 = *(v1 + 466);
    v6 = [v4 relationshipStorage];
    *(v1 + 400) = [v6 primaryRelationship];

    v7 = [v4 relationshipStorage];
    *(v1 + 408) = [v7 secureCloudRelationship];

    v8 = [v4 relationshipStorage];
    v9 = [v8 legacyRelationship];
    *(v1 + 416) = v9;

    if (v5 != [v9 isMuteEnabled])
    {
      v10 = *(v1 + 376);
      v11 = *(v1 + 466);
      v12 = *__swift_project_boxed_opaque_existential_0Tm((*(v1 + 312) + 56), *(*(v1 + 312) + 80));
      v13 = sub_221FB5BF8();
      *(v1 + 424) = v13;
      *(v1 + 80) = v1;
      *(v1 + 120) = v1 + 465;
      *(v1 + 88) = sub_221F23DB0;
      v14 = swift_continuation_init();
      *(v1 + 264) = v10;
      *(v1 + 208) = MEMORY[0x277D85DD0];
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_221FA909C;
      *(v1 + 232) = &block_descriptor_5_0;
      *(v1 + 240) = v14;
      [v12 setMuteEnabled:v11 forFriendWithUUID:v13 completion:v1 + 208];

      return MEMORY[0x282200938](v1 + 80);
    }

    if ([*(v1 + 400) cloudType] == 1)
    {
      v32 = *(v1 + 466);
      if (v32 != [*(v1 + 408) isMuteEnabled])
      {
        v33 = *(v1 + 312);
        if (*(v1 + 466))
        {
          v34 = 8;
        }

        else
        {
          v34 = 9;
        }

        [*(v1 + 408) insertEventWithType_];
        __swift_project_boxed_opaque_existential_0Tm((v33 + 136), *(v33 + 160));
        v35 = swift_task_alloc();
        *(v1 + 440) = v35;
        *v35 = v1;
        v35[1] = sub_221F24420;
        v36 = *(v1 + 408);
        v37 = *(v1 + 368);

        return sub_221EBAEA8(v36, 0, v37, 0);
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v49 = *(v1 + 344);
      v50 = *(v1 + 320);
      v51 = *(v1 + 328);
      v52 = *(v1 + 304);
      v53 = sub_221FB61D8();
      __swift_project_value_buffer(v53, qword_281307DF0);
      (*(v51 + 16))(v49, v52, v50);
      v54 = sub_221FB61B8();
      v55 = sub_221FB65A8();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v1 + 408);
      v58 = *(v1 + 392);
      v59 = *(v1 + 400);
      v60 = *(v1 + 344);
      v61 = *(v1 + 320);
      v62 = *(v1 + 328);
      if (v56)
      {
        v72 = *(v1 + 416);
        v73 = *(v1 + 392);
        v63 = swift_slowAlloc();
        v71 = v59;
        v64 = swift_slowAlloc();
        v74[0] = v64;
        *v63 = 136315138;
        sub_221EA8278();
        v70 = v57;
        v65 = sub_221FB6B08();
        v67 = v66;
        (*(v62 + 8))(v60, v61);
        v68 = sub_221EF4114(v65, v67, v74);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_221E93000, v54, v55, "Unable to update notification preference, no change to current preference for identifier %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x223DADA80](v64, -1, -1);
        MEMORY[0x223DADA80](v63, -1, -1);
      }

      else
      {

        (*(v62 + 8))(v60, v61);
      }
    }

    else
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v41 = sub_221FB61D8();
      __swift_project_value_buffer(v41, qword_281307DF0);
      v42 = sub_221FB61B8();
      v43 = sub_221FB65C8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_221E93000, v42, v43, "Secure cloud relationship is not primary not updating notification state", v44, 2u);
        MEMORY[0x223DADA80](v44, -1, -1);
      }

      v45 = *(v1 + 408);
      v47 = *(v1 + 392);
      v46 = *(v1 + 400);
    }

    v48 = *(v1 + 352);
    __swift_project_boxed_opaque_existential_0Tm((v1 + 272), *(v1 + 296));
    [v48 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v1 + 272));

    v40 = *(v1 + 8);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v16 = *(v1 + 328);
    v15 = *(v1 + 336);
    v17 = *(v1 + 320);
    v18 = *(v1 + 304);
    v19 = sub_221FB61D8();
    __swift_project_value_buffer(v19, qword_281307DF0);
    (*(v16 + 16))(v15, v18, v17);
    v20 = sub_221FB61B8();
    v21 = sub_221FB65A8();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v1 + 328);
    v23 = *(v1 + 336);
    v25 = *(v1 + 320);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v74[0] = v27;
      *v26 = 136315138;
      sub_221EA8278();
      v28 = sub_221FB6B08();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_221EF4114(v28, v30, v74);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_221E93000, v20, v21, "Unable to update notification preference, no contact for identifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DADA80](v27, -1, -1);
      MEMORY[0x223DADA80](v26, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    sub_221EA4994();
    swift_allocError();
    *v38 = 21;
    swift_willThrow();
    v39 = *(v1 + 352);
    __swift_project_boxed_opaque_existential_0Tm((v1 + 272), *(v1 + 296));
    [v39 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v1 + 272));

    v40 = *(v1 + 8);
  }

  return v40();
}

uint64_t sub_221F23CE4(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[44];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 34, v1[37]);
  [v2 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v1 + 34);

  v3 = v1[1];

  return v3();
}

uint64_t sub_221F23DB0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_221F24330;
  }

  else
  {
    v2 = sub_221F23EC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F23EC0()
{
  v42 = v0;

  if ([*(v0 + 400) cloudType] == 1)
  {
    v1 = *(v0 + 466);
    if (v1 != [*(v0 + 408) isMuteEnabled])
    {
      v2 = *(v0 + 312);
      if (*(v0 + 466))
      {
        v3 = 8;
      }

      else
      {
        v3 = 9;
      }

      [*(v0 + 408) insertEventWithType_];
      __swift_project_boxed_opaque_existential_0Tm((v2 + 136), *(v2 + 160));
      v4 = swift_task_alloc();
      *(v0 + 440) = v4;
      *v4 = v0;
      v4[1] = sub_221F24420;
      v5 = *(v0 + 408);
      v6 = *(v0 + 368);

      return sub_221EBAEA8(v5, 0, v6, 0);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 344);
    v18 = *(v0 + 320);
    v19 = *(v0 + 328);
    v20 = *(v0 + 304);
    v21 = sub_221FB61D8();
    __swift_project_value_buffer(v21, qword_281307DF0);
    (*(v19 + 16))(v17, v20, v18);
    v22 = sub_221FB61B8();
    v23 = sub_221FB65A8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 408);
    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    v28 = *(v0 + 344);
    v29 = *(v0 + 320);
    v30 = *(v0 + 328);
    if (v24)
    {
      v39 = *(v0 + 416);
      v40 = *(v0 + 392);
      v31 = swift_slowAlloc();
      v38 = v27;
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      sub_221EA8278();
      v37 = v25;
      v33 = sub_221FB6B08();
      v35 = v34;
      (*(v30 + 8))(v28, v29);
      v36 = sub_221EF4114(v33, v35, &v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_221E93000, v22, v23, "Unable to update notification preference, no change to current preference for identifier %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223DADA80](v32, -1, -1);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }
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
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_221E93000, v9, v10, "Secure cloud relationship is not primary not updating notification state", v11, 2u);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v12 = *(v0 + 408);
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
  }

  v15 = *(v0 + 352);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v15 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221F24330(uint64_t a1)
{
  v2 = v1[53];
  v4 = v1[51];
  v3 = v1[52];
  v6 = v1[49];
  v5 = v1[50];
  swift_willThrow();

  v7 = v1[44];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 34, v1[37]);
  [v7 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v1 + 34);

  v8 = v1[1];

  return v8();
}

uint64_t sub_221F24420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_221F24754;
  }

  else
  {
    v4 = sub_221F24534;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F24534()
{
  v1 = (v0 + 448);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *v1;
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *v1;
  if (v7)
  {
    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_221E93000, v5, v6, "Updated notification preference on secure cloud relationship: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);

    v14 = 408;
    v15 = 416;
  }

  else
  {

    v1 = (v0 + 416);
    v14 = 400;
    v15 = 408;
  }

  v16 = *(v0 + v15);
  v17 = *(v0 + v14);

  v18 = *(v0 + 352);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v18 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_221F24754()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);

  v4 = *(v0 + 352);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v4 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F24840(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_221F24888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F2490C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F24A38(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F24B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F24C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F24DA0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221EE581C;

  return v7(a1, a2);
}

uint64_t sub_221F24EB8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F24FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9E350;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F25100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9E350;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F25230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F25358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E96070;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F25498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_221F78008(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_221ED4B5C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_221ED6B78();
        v14 = v16;
      }

      result = sub_221F554A0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_221F255B0()
{
  v1 = *(v0[20] + 112);
  v2 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v3 = sub_221FB62E8();
  v4 = [v2 initWithCategory:3 domainName:v3 healthStore:v1];
  v0[21] = v4;

  v5 = sub_221FB62E8();
  v0[22] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221F2575C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_98;
  v0[14] = v6;
  [v4 dataForKey:v5 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F2575C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_221F25DD4;
  }

  else
  {
    v4 = sub_221F2587C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F2587C()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (v2 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
LABEL_32:
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_221E93000, v5, v6, "No existing migration available items", v7, 2u);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    v8 = 0;
    goto LABEL_7;
  }

  sub_221FB5998();
  swift_allocObject();
  sub_221FB5988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC360, qword_221FBC270);
  sub_221F29714();
  sub_221FB5978();

  v11 = *(v0 + 80);
  v34 = MEMORY[0x277D84F90];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 40;
    v32 = v2;
    v33 = MEMORY[0x277D84F90];
    v31 = v3;
    while (1)
    {
      v15 = (v14 + 16 * v13);
      v16 = v13;
      v17 = 0x277CE9000uLL;
      while (1)
      {
        if (v16 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v19 = *(v15 - 1);
        v18 = *v15;
        v20 = objc_allocWithZone(*(v17 + 184));
        sub_221EBEF90(v19, v18);
        v21 = sub_221FB5B08();
        v22 = [v20 initWithData_];

        if (!v22)
        {
          if (qword_281307080 != -1)
          {
            swift_once();
          }

          v25 = sub_221FB61D8();
          __swift_project_value_buffer(v25, qword_281307DF0);
          v26 = sub_221FB61B8();
          v27 = sub_221FB65A8();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_221E93000, v26, v27, "Failed to decode migration available item", v28, 2u);
            v29 = v28;
            v17 = 0x277CE9000;
            MEMORY[0x223DADA80](v29, -1, -1);
          }

          sub_221EBEF30(v19, v18);

          goto LABEL_14;
        }

        v23 = [objc_opt_self() migrationAvailableItemWithCodableContainer_];

        v24 = sub_221EBEF30(v19, v18);
        if (v23)
        {
          break;
        }

LABEL_14:
        ++v16;
        v15 += 2;
        if (v12 == v16)
        {
          v3 = v31;
          v2 = v32;
          goto LABEL_30;
        }
      }

      MEMORY[0x223DAC7E0](v24);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      v13 = v16 + 1;
      sub_221FB6478();
      v33 = v34;
      v3 = v31;
      v30 = v12 - 1 == v16;
      v2 = v32;
      v14 = v11 + 40;
      if (v30)
      {
        goto LABEL_30;
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_30:
  sub_221EBEFE4(v3, v2);

  v8 = v33;
LABEL_7:
  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_221F25DD4(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[23];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "No existing migration available items: %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v13 = v1[1];

  return v13(0);
}

uint64_t sub_221F25F8C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F25FAC, v1, 0);
}

uint64_t sub_221F25FAC()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    v2 = sub_221FB6868();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    v4 = sub_221F77664(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v4);
    }

    v5 = 0;
    v3 = v28;
    v6 = v1 & 0xC000000000000001;
    v27 = v0[18] + 32;
    do
    {
      if (v6)
      {
        v7 = MEMORY[0x223DACD50](v5, v0[18]);
      }

      else
      {
        v7 = *(v27 + 8 * v5);
      }

      v8 = v7;
      v9 = [v7 codableMigrationAvailableItemContainer];
      v10 = [v9 data];

      if (v10)
      {
        v11 = sub_221FB5B18();
        v13 = v12;
      }

      else
      {

        v11 = 0;
        v13 = 0xF000000000000000;
      }

      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_221F77664((v14 > 1), v15 + 1, 1);
      }

      ++v5;
      *(v28 + 16) = v15 + 1;
      v16 = v28 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v2 != v5);
  }

  sub_221FB59C8();
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC340, &unk_221FBC260);
  sub_221F295A8();
  v0[20] = sub_221FB59A8();
  v0[21] = v17;
  v18 = v0[19];

  v19 = *(v18 + 112);
  v20 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v21 = sub_221FB62E8();
  v22 = [v20 initWithCategory:3 domainName:v21 healthStore:v19];
  v0[22] = v22;

  v23 = sub_221FB5B08();
  v0[23] = v23;
  v24 = sub_221FB62E8();
  v0[24] = v24;
  v0[2] = v0;
  v0[3] = sub_221ECF258;
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_20;
  v0[14] = v25;
  [v22 setData:v23 forKey:v24 completion:v0 + 10];
  v4 = v0 + 2;

  return MEMORY[0x282200938](v4);
}

uint64_t sub_221F26384()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F263F0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_221F26440(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221F26494(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221F264DC()
{
  if (*(v0[2] + 120))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_221F265A8;

    return sub_221F25590();
  }
}

uint64_t sub_221F265A8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221F266C0, v2, 0);
}

uint64_t sub_221F266C0()
{
  v43 = v0;
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (qword_281307080 != -1)
  {
LABEL_34:
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v39 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v42 = v6;
    *v5 = 136315138;
    v7 = sub_221F292D4();
    v8 = MEMORY[0x223DAC810](v1, v7);
    v10 = sub_221EF4114(v8, v9, &v42);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Loaded migration available items %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v11 = sub_221ED7E68(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
    v12 = sub_221FB6868();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_9:
      v13 = 0;
      v40 = v1 & 0xFFFFFFFFFFFFFF8;
      v41 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v41)
        {
          v17 = MEMORY[0x223DACD50](v13, v1);
        }

        else
        {
          if (v13 >= *(v40 + 16))
          {
            goto LABEL_31;
          }

          v17 = *(v1 + 8 * v13 + 32);
        }

        v18 = v17;
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v0 = v1;
        v1 = [v17 relationshipIdentifier];
        v20 = sub_221FB6318();
        v22 = v21;

        v23 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v11;
        v25 = sub_221ED4B5C(v20, v22);
        v27 = v11[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_32;
        }

        v1 = v26;
        if (v11[3] < v30)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v35 = v25;
        sub_221ED6B78();
        v25 = v35;
        if (v1)
        {
LABEL_10:
          v14 = v25;

          v11 = v42;
          v15 = v42[7];
          v16 = *(v15 + 8 * v14);
          *(v15 + 8 * v14) = v23;

          goto LABEL_11;
        }

LABEL_22:
        v11 = v42;
        v42[(v25 >> 6) + 8] |= 1 << v25;
        v32 = (v11[6] + 16 * v25);
        *v32 = v20;
        v32[1] = v22;
        *(v11[7] + 8 * v25) = v23;

        v33 = v11[2];
        v29 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v29)
        {
          goto LABEL_33;
        }

        v11[2] = v34;
LABEL_11:
        ++v13;
        v1 = v0;
        if (v19 == v12)
        {
          goto LABEL_36;
        }
      }

      sub_221ED5174(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_221ED4B5C(v20, v22);
      if ((v1 & 1) != (v31 & 1))
      {

        return sub_221FB6B98();
      }

LABEL_21:
      if (v1)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

LABEL_36:
  v37 = v39[2];

  *(v37 + 120) = v11;

  v38 = v39[1];

  return v38();
}

uint64_t sub_221F26AB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F26B54, v1, 0);
}

uint64_t sub_221F26B54()
{
  v0[5] = *(v0[3] + 128);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_221F26BF8;

  return sub_221F7E048();
}

uint64_t sub_221F26BF8()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_221F26D24, v1, 0);
}

uint64_t sub_221F26D24()
{
  v48 = v0;
  v1 = v0[3];
  if (*(v1 + 120))
  {
    v2 = v0[2];
    v43 = *(v1 + 120);

    v3 = sub_221ED7E68(MEMORY[0x277D84F90]);
    if (v2 >> 62)
    {
LABEL_32:
      v4 = sub_221FB6868();
      v44 = v0;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v0;
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v45 = v2 & 0xFFFFFFFFFFFFFF8;
        v46 = v2 & 0xC000000000000001;
        v2 = v0[2] + 32;
        while (1)
        {
          if (v46)
          {
            v9 = MEMORY[0x223DACD50](v5, v44[2]);
          }

          else
          {
            if (v5 >= *(v45 + 16))
            {
              goto LABEL_29;
            }

            v9 = *(v2 + 8 * v5);
          }

          v10 = v9;
          v0 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v11 = [v9 relationshipIdentifier];
          v12 = sub_221FB6318();
          v14 = v13;

          v15 = v10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v3;
          v17 = sub_221ED4B5C(v12, v14);
          v19 = v3[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_30;
          }

          v23 = v18;
          if (v3[3] < v22)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v28 = v17;
          sub_221ED6B78();
          v17 = v28;
          if (v23)
          {
LABEL_5:
            v6 = v17;

            v3 = v47;
            v7 = v47[7];
            v8 = *(v7 + 8 * v6);
            *(v7 + 8 * v6) = v15;

            goto LABEL_6;
          }

LABEL_17:
          v3 = v47;
          v47[(v17 >> 6) + 8] |= 1 << v17;
          v25 = (v3[6] + 16 * v17);
          *v25 = v12;
          v25[1] = v14;
          *(v3[7] + 8 * v17) = v15;

          v26 = v3[2];
          v21 = __OFADD__(v26, 1);
          v27 = v26 + 1;
          if (v21)
          {
            goto LABEL_31;
          }

          v3[2] = v27;
LABEL_6:
          ++v5;
          if (v0 == v4)
          {
            goto LABEL_33;
          }
        }

        sub_221ED5174(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_221ED4B5C(v12, v14);
        if ((v23 & 1) != (v24 & 1))
        {

          return sub_221FB6B98();
        }

LABEL_16:
        if (v23)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

LABEL_33:
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v43;
    sub_221F29320(v3, sub_221F29288, 0, v35, &v47);

    v36 = v47;
    v44[7] = v47;
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = v36;
      v39 = sub_221E9E980();
      v40 = sub_221E9EDC0(&v47, (v39 + 32), v37, v38);
      v41 = v47;

      sub_221E96470(v41);
      if (v40 == v37)
      {
LABEL_37:
        v44[8] = v39;
        v42 = swift_task_alloc();
        v44[9] = v42;
        *v42 = v44;
        v42[1] = sub_221F27200;

        return sub_221F25F8C(v39);
      }

      __break(1u);
    }

    v39 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v29 = v0[4];
  v30 = *(v1 + 128);
  v31 = sub_221FB64C8();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v30;

  sub_221FA7A78(0, 0, v29, &unk_221FB9A50, v32);

  v33 = v0[1];

  return v33();
}

uint64_t sub_221F27200()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_221F275C0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_221F27328;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F27328()
{
  v17 = v0;
  *(v0[3] + 120) = v0[7];

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
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    sub_221F292D4();
    v6 = sub_221FB6298();
    v8 = v7;

    v9 = sub_221EF4114(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_221E93000, v2, v3, "Added items to map %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  else
  {
  }

  v10 = v0[4];
  v11 = *(v0[3] + 128);
  v12 = sub_221FB64C8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  sub_221FA7A78(0, 0, v10, &unk_221FBC1E0, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_221F275C0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = *(v2 + 128);
  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_221FA7A78(0, 0, v1, &unk_221FBC1D8, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F276D8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F27774, v1, 0);
}

uint64_t sub_221F27774()
{
  v0[12] = *(v0[10] + 128);

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_221F27818;

  return sub_221F7E048();
}

uint64_t sub_221F27818()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_221F27944, v1, 0);
}

uint64_t sub_221F27944()
{
  v26 = v0;
  v1 = v0[10];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC330, &qword_221FBC200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;

    v5 = [v3 relationshipIdentifier];
    v6 = sub_221FB6318();
    v8 = v7;

    *(inited + 32) = v6;
    *(inited + 40) = v8;
    *(inited + 48) = v3;
    v9 = v3;
    v10 = sub_221ED7E68(inited);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEC338, &qword_221FBC208);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v2;
    sub_221F29320(v10, sub_221F29288, 0, isUniquelyReferenced_nonNull_native, &v25);

    v12 = v25;
    v0[14] = v25;
    v19 = *(v12 + 16);
    if (v19)
    {
      v20 = v12;
      v21 = sub_221E9E980();
      v22 = sub_221E9EDC0(&v25, (v21 + 32), v19, v20);
      v23 = v25;

      sub_221E96470(v23);
      if (v22 == v19)
      {
LABEL_10:
        v0[15] = v21;
        v24 = swift_task_alloc();
        v0[16] = v24;
        *v24 = v0;
        v24[1] = sub_221F27C80;

        return sub_221F25F8C(v21);
      }

      __break(1u);
    }

    v21 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v13 = v0[11];
  v14 = *(v1 + 128);
  v15 = sub_221FB64C8();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;

  sub_221FA7A78(0, 0, v13, &unk_221FBC1F8, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F27C80()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_221F28040;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_221F27DA8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F27DA8()
{
  v17 = v0;
  *(v0[10] + 120) = v0[14];

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
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    sub_221F292D4();
    v6 = sub_221FB6298();
    v8 = v7;

    v9 = sub_221EF4114(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_221E93000, v2, v3, "Added item to map %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  else
  {
  }

  v10 = v0[11];
  v11 = *(v0[10] + 128);
  v12 = sub_221FB64C8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  sub_221FA7A78(0, 0, v10, &unk_221FBC218, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_221F28040()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = *(v2 + 128);
  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_221FA7A78(0, 0, v1, &unk_221FBC210, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F28158()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F281F4, v0, 0);
}

uint64_t sub_221F281F4()
{
  v0[4] = *(v0[2] + 128);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_221F28298;

  return sub_221F7E048();
}

uint64_t sub_221F28298()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_221F283C4, v1, 0);
}

uint64_t sub_221F283C4()
{
  v1 = v0[2];
  if (*(v1 + 120))
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_221F28550;
    v3 = MEMORY[0x277D84F90];

    return sub_221F25F8C(v3);
  }

  else
  {
    v5 = v0[3];
    v6 = *(v1 + 128);
    v7 = sub_221FB64C8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;

    sub_221FA7A78(0, 0, v5, &unk_221FBC248, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_221F28550()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_221F287A4;
  }

  else
  {
    v4 = sub_221F2867C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F2867C()
{
  v1 = v0[2];
  *(v1 + 120) = sub_221ED7E68(MEMORY[0x277D84F90]);

  v2 = v0[3];
  v3 = *(v0[2] + 128);
  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_221FA7A78(0, 0, v2, &unk_221FBC258, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F287A4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 128);
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_221FA7A78(0, 0, v1, &unk_221FBC250, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221F288AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F288D0, v2, 0);
}

uint64_t sub_221F288D0()
{
  v1 = *(v0[4] + 120);
  if (v1 && *(v1 + 16))
  {
    v3 = v0[2];
    v2 = v0[3];

    v4 = sub_221ED4B5C(v3, v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      v7 = v6;
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_221F2898C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F289B0, v2, 0);
}

uint64_t sub_221F289B0()
{
  v1 = *(v0[4] + 120);
  if (v1 && *(v1 + 16))
  {
    v3 = v0[2];
    v2 = v0[3];

    sub_221ED4B5C(v3, v2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t sub_221F28A54(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F28AF0, v1, 0);
}

uint64_t sub_221F28AF0()
{
  v0[6] = *(v0[4] + 128);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_221F28B94;

  return sub_221F7E048();
}

uint64_t sub_221F28B94()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_221F28CC0, v1, 0);
}

uint64_t sub_221F28CC0()
{
  v21 = v0;
  v1 = v0[4];
  v2 = *(v1 + 120);
  if (!v2)
  {
LABEL_5:
    v13 = v0[5];
    v14 = *(v1 + 128);
    v15 = sub_221FB64C8();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;

    sub_221FA7A78(0, 0, v13, &unk_221FBC228, v16);

    v17 = v0[1];

    return v17();
  }

  v3 = v0[3];
  v0[2] = v2;

  v4 = [v3 relationshipIdentifier];
  v5 = sub_221FB6318();
  v7 = v6;

  sub_221F25498(0, v5, v7);
  v8 = v0[2];
  v0[8] = v8;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_221E9E980();
    v11 = sub_221E9EDC0(&v20, (v10 + 32), v9, v8);
    v12 = v20;

    sub_221E96470(v12);
    if (v11 != v9)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v0[9] = v10;
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = sub_221F28F2C;

  return sub_221F25F8C(v10);
}

uint64_t sub_221F28F2C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_221F29170;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_221F29054;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221F29054()
{
  *(v0[4] + 120) = v0[8];

  v1 = v0[5];
  v2 = *(v0[4] + 128);
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_221FA7A78(0, 0, v1, &unk_221FBC238, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221F29170()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = *(v2 + 128);
  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_221FA7A78(0, 0, v1, &unk_221FBC230, v5);

  v6 = v0[1];

  return v6();
}

id sub_221F29288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_221F292D4()
{
  result = qword_281306E80;
  if (!qword_281306E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306E80);
  }

  return result;
}

uint64_t sub_221F29320(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_221ED4B5C(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_221ED6B78();
      }
    }

    else
    {
      sub_221ED5174(v29, v42 & 1);
      v31 = sub_221ED4B5C(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_221E96470(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

unint64_t sub_221F295A8()
{
  result = qword_27CFEC348;
  if (!qword_27CFEC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC340, &unk_221FBC260);
    sub_221F2962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC348);
  }

  return result;
}

unint64_t sub_221F2962C()
{
  result = qword_27CFEC350;
  if (!qword_27CFEC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBD70, &unk_221FB9550);
    sub_221F296B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC350);
  }

  return result;
}

unint64_t sub_221F296B0()
{
  result = qword_27CFEC358;
  if (!qword_27CFEC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC358);
  }

  return result;
}

unint64_t sub_221F29714()
{
  result = qword_27CFEC368;
  if (!qword_27CFEC368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC360, qword_221FBC270);
    sub_221F29798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC368);
  }

  return result;
}

unint64_t sub_221F29798()
{
  result = qword_27CFEC370;
  if (!qword_27CFEC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC370);
  }

  return result;
}

id sub_221F297F4()
{
  v1 = v0;
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_221FB6978();

  v27 = 0xD000000000000012;
  v28 = 0x8000000221FC2A20;
  result = [*(v0 + 16) UUID];
  if (result)
  {
    v7 = result;
    sub_221FB5C18();

    v8 = sub_221FB5BE8();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x223DAC740](v8, v10);

    MEMORY[0x223DAC740](8236, 0xE200000000000000);
    v11 = 0xEE006E6F6974656CLL;
    v12 = 0x706D6F436C616F67;
    v13 = *(v1 + 40);
    v14 = 0xEF6E6F6974656C65;
    v15 = 0x4474756F6B726F77;
    if (v13 != 5)
    {
      v15 = 0x74697465706D6F63;
      v14 = 0xEF7473694C6E6F69;
    }

    v16 = 0xEB00000000746E65;
    v17 = 0x6D65766569686361;
    if (v13 != 3)
    {
      v17 = 0x74756F6B726F77;
      v16 = 0xE700000000000000;
    }

    if (*(v1 + 40) <= 4u)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v13 == 1)
    {
      v12 = 0xD000000000000019;
      v11 = 0x8000000221FC1BB0;
    }

    if (!*(v1 + 40))
    {
      v12 = 0xD000000000000015;
      v11 = 0x8000000221FC1BD0;
    }

    if (*(v1 + 40) <= 2u)
    {
      v18 = v12;
    }

    else
    {
      v18 = v15;
    }

    if (*(v1 + 40) <= 2u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v14;
    }

    MEMORY[0x223DAC740](v18, v19);

    MEMORY[0x223DAC740](8236, 0xE200000000000000);
    if (*v1 >> 62)
    {
      v20 = sub_221FB6868();
    }

    else
    {
      v20 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v20;
    v21 = sub_221FB6B08();
    MEMORY[0x223DAC740](v21);

    MEMORY[0x223DAC740](0x202C6576617320, 0xE700000000000000);
    v22 = *(v1 + 8);
    if (v22 >> 62)
    {
      v23 = sub_221FB6868();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v23;
    v24 = sub_221FB6B08();
    MEMORY[0x223DAC740](v24);

    MEMORY[0x223DAC740](0x6574656C656420, 0xE700000000000000);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221F29B7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_221F29BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F29C20(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F29D68()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[425];
  v2 = sub_221FB61D8();
  v0[426] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0x6174614468737570, 0xEA00000000002928);
  v3 = *v1;
  v0[427] = *v1;

  return MEMORY[0x2822009F8](sub_221F29E50, v3, 0);
}

uint64_t sub_221F29E50()
{
  v1 = *(v0 + 3416);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3424) = v3;
  *v3 = v0;
  v3[1] = sub_221F29F3C;
  v4 = *(v0 + 3416);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F29F3C()
{

  return MEMORY[0x2822009F8](sub_221F2A038, 0, 0);
}

uint64_t sub_221F2A038()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm(v0 + 369, v0[372]);
  sub_221E9DCE8(0xD00000000000007FLL, 0x8000000221FC2DA0, 0x6174614468737570, 0xEA00000000002928);
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v1[8]);
  v2 = ASCloudKitGroupUserActionExplicit();
  v0[429] = v2;
  v3 = swift_task_alloc();
  v0[430] = v3;
  *v3 = v0;
  v3[1] = sub_221F2A138;

  return sub_221EEF754(v2, 0);
}

uint64_t sub_221F2A138()
{
  v2 = *(*v1 + 3432);
  *(*v1 + 3448) = v0;

  if (v0)
  {
    v3 = sub_221F3369C;
  }

  else
  {
    v3 = sub_221F336B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2A284()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3400);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0x7461446863746566, 0xEB00000000292861);
  v3 = *v1;
  *(v0 + 3408) = *v1;

  return MEMORY[0x2822009F8](sub_221F2A36C, v3, 0);
}

uint64_t sub_221F2A36C()
{
  v1 = *(v0 + 3408);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3416) = v3;
  *v3 = v0;
  v3[1] = sub_221F2A458;
  v4 = *(v0 + 3408);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2A458()
{

  return MEMORY[0x2822009F8](sub_221F2A554, 0, 0);
}

uint64_t sub_221F2A554()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 369, v0[372]);
  v1 = swift_task_alloc();
  v0[428] = v1;
  *v1 = v0;
  v1[1] = sub_221F2A5F0;

  return sub_221F8E640();
}

uint64_t sub_221F2A5F0(uint64_t a1)
{
  *(*v2 + 3432) = v1;

  if (v1)
  {
    v3 = sub_221F2A710;
  }

  else
  {

    v3 = sub_221F336B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2A710()
{
  sub_221E95288(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F2A774(uint64_t a1)
{
  *(v2 + 3408) = v1;
  *(v2 + 3400) = a1;
  return MEMORY[0x2822009F8](sub_221F2A798, 0, 0);
}

uint64_t sub_221F2A798()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[426];
  v2 = sub_221FB61D8();
  v0[427] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001ELL, 0x8000000221FC2D50);
  v3 = *v1;
  v0[428] = *v1;

  return MEMORY[0x2822009F8](sub_221F2A884, v3, 0);
}

uint64_t sub_221F2A884()
{
  v1 = *(v0 + 3424);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3432) = v3;
  *v3 = v0;
  v3[1] = sub_221F2A970;
  v4 = *(v0 + 3424);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2A970()
{

  return MEMORY[0x2822009F8](sub_221F2AA6C, 0, 0);
}

uint64_t sub_221F2AA6C()
{
  sub_221E9DCE8(0xD000000000000088, 0x8000000221FC2CA0, 0xD000000000000020, 0x8000000221FC2D70);
  __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
  v1 = swift_task_alloc();
  v0[430] = v1;
  *v1 = v0;
  v1[1] = sub_221F2AB4C;
  v2 = v0[425];

  return sub_221F6B068(v2);
}

uint64_t sub_221F2AB4C()
{
  *(*v1 + 3448) = v0;

  if (v0)
  {
    v2 = sub_221F2ACC4;
  }

  else
  {
    v2 = sub_221F2AC60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2AC60()
{
  sub_221E95288(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F2ACC4()
{
  sub_221E95288(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F2AD28(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2AE28, 0, 0);
}

uint64_t sub_221F2AE28()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[427];
  v2 = sub_221FB61D8();
  v0[432] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2C80);
  v3 = *v1;
  v0[433] = *v1;

  return MEMORY[0x2822009F8](sub_221F2AF14, v3, 0);
}

uint64_t sub_221F2AF14()
{
  v1 = *(v0 + 3464);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3472) = v3;
  *v3 = v0;
  v3[1] = sub_221F2B000;
  v4 = *(v0 + 3464);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2B000()
{

  return MEMORY[0x2822009F8](sub_221F2B0FC, 0, 0);
}

uint64_t sub_221F2B0FC()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    sub_221E9DCE8(0xD000000000000088, 0x8000000221FC2CA0, 0xD00000000000001ALL, 0x8000000221FC2D30);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
    v7 = swift_task_alloc();
    v0[435] = v7;
    *v7 = v0;
    v7[1] = sub_221F2B2D0;
    v8 = v0[431];

    return sub_221F6CC20(v8);
  }
}

uint64_t sub_221F2B2D0()
{
  *(*v1 + 3488) = v0;

  if (v0)
  {
    v2 = sub_221F2B47C;
  }

  else
  {
    v2 = sub_221F2B3E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2B3E4()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  sub_221E95288((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F2B47C()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  sub_221E95288((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F2B51C(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2B61C, 0, 0);
}

uint64_t sub_221F2B61C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000021, 0x8000000221FC2C30);
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[427];
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    v9 = *v8;
    v0[432] = *v8;

    return MEMORY[0x2822009F8](sub_221F2B80C, v9, 0);
  }
}

uint64_t sub_221F2B80C()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2B8F8;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2B8F8()
{

  return MEMORY[0x2822009F8](sub_221F2B9F4, 0, 0);
}

uint64_t sub_221F2B9F4()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
  v1 = swift_task_alloc();
  v0[434] = v1;
  *v1 = v0;
  v1[1] = sub_221F2BA98;
  v2 = v0[431];

  return sub_221F6E094(v2);
}

uint64_t sub_221F2BA98()
{
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v2 = sub_221F336A0;
  }

  else
  {
    v2 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2BBAC(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2BCAC, 0, 0);
}

uint64_t sub_221F2BCAC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2C60);
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[427];
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    v9 = *v8;
    v0[432] = *v8;

    return MEMORY[0x2822009F8](sub_221F2BE9C, v9, 0);
  }
}

uint64_t sub_221F2BE9C()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2BF88;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2BF88()
{

  return MEMORY[0x2822009F8](sub_221F2C084, 0, 0);
}

uint64_t sub_221F2C084()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
  v1 = swift_task_alloc();
  v0[434] = v1;
  *v1 = v0;
  v1[1] = sub_221F2C128;
  v2 = v0[431];

  return sub_221F6DBCC(v2);
}

uint64_t sub_221F2C128()
{
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v2 = sub_221F2C23C;
  }

  else
  {
    v2 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2C23C()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  sub_221E95288((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F2C2D0(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  return MEMORY[0x2822009F8](sub_221F2C2F8, 0, 0);
}

uint64_t sub_221F2C2F8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000013, 0x8000000221FC2C10);
  v3 = *v1;
  *(v0 + 3424) = *v1;

  return MEMORY[0x2822009F8](sub_221F2C3E0, v3, 0);
}

uint64_t sub_221F2C3E0()
{
  v1 = *(v0 + 3424);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3432) = v3;
  *v3 = v0;
  v3[1] = sub_221F2C4CC;
  v4 = *(v0 + 3424);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2C4CC()
{

  return MEMORY[0x2822009F8](sub_221F2C5C8, 0, 0);
}

uint64_t sub_221F2C5C8()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 57, v0[60]);
  v1 = swift_task_alloc();
  v0[430] = v1;
  *v1 = v0;
  v1[1] = sub_221F2C670;
  v2 = v0[426];
  v3 = v0[425];

  return sub_221EE1974(v3, v2);
}

uint64_t sub_221F2C670()
{
  *(*v1 + 3448) = v0;

  if (v0)
  {
    v2 = sub_221F3369C;
  }

  else
  {
    v2 = sub_221F336B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2C784(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2C884, 0, 0);
}

uint64_t sub_221F2C884()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000020, 0x8000000221FC2BE0);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2C96C, v3, 0);
}

uint64_t sub_221F2C96C()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2CA58;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2CA58()
{

  return MEMORY[0x2822009F8](sub_221F2CB54, 0, 0);
}

uint64_t sub_221F2CB54()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 297, v0[300]);
    v7 = swift_task_alloc();
    v0[434] = v7;
    *v7 = v0;
    v7[1] = sub_221F2CCEC;
    v8 = v0[431];

    return sub_221F4519C(v8);
  }
}

uint64_t sub_221F2CCEC()
{
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v2 = sub_221F336B4;
  }

  else
  {
    v2 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2CE00(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2CF00, 0, 0);
}

uint64_t sub_221F2CF00()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000020, 0x8000000221FC26C0);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2CFE8, v3, 0);
}

uint64_t sub_221F2CFE8()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2D0D4;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2D0D4()
{

  return MEMORY[0x2822009F8](sub_221F2D1D0, 0, 0);
}

uint64_t sub_221F2D1D0()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 277, v0[280]);
    v7 = swift_task_alloc();
    v0[434] = v7;
    *v7 = v0;
    v7[1] = sub_221F2CCEC;
    v8 = v0[431];

    return sub_221EFF0EC(v8);
  }
}

uint64_t sub_221F2D388()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3400);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000013, 0x8000000221FC2BC0);
  v3 = *v1;
  *(v0 + 3408) = *v1;

  return MEMORY[0x2822009F8](sub_221F2D470, v3, 0);
}

uint64_t sub_221F2D470()
{
  v1 = *(v0 + 3408);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3416) = v3;
  *v3 = v0;
  v3[1] = sub_221F2D55C;
  v4 = *(v0 + 3408);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2D55C()
{

  return MEMORY[0x2822009F8](sub_221E95200, 0, 0);
}

uint64_t sub_221F2D658(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2D758, 0, 0);
}

uint64_t sub_221F2D758()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000023, 0x8000000221FC2B90);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2D840, v3, 0);
}

uint64_t sub_221F2D840()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2D92C;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2D92C()
{

  return MEMORY[0x2822009F8](sub_221F2DA28, 0, 0);
}

uint64_t sub_221F2DA28()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 272, v0[275]);
    v7 = swift_task_alloc();
    v0[434] = v7;
    *v7 = v0;
    v7[1] = sub_221F2CCEC;
    v8 = v0[431];

    return sub_221EB6F64(v8);
  }
}

uint64_t sub_221F2DBC0(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2DCC0, 0, 0);
}

uint64_t sub_221F2DCC0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000002ELL, 0x8000000221FC2B60);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2DDA8, v3, 0);
}

uint64_t sub_221F2DDA8()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2DE94;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2DE94()
{

  return MEMORY[0x2822009F8](sub_221F2DF90, 0, 0);
}

uint64_t sub_221F2DF90()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 272, v0[275]);
    v7 = swift_task_alloc();
    v0[434] = v7;
    *v7 = v0;
    v7[1] = sub_221F2CCEC;
    v8 = v0[431];

    return sub_221EB753C(v8);
  }
}

uint64_t sub_221F2E128(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2E228, 0, 0);
}

uint64_t sub_221F2E228()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2B40);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2E310, v3, 0);
}

uint64_t sub_221F2E310()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2E3FC;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2E3FC()
{

  return MEMORY[0x2822009F8](sub_221F2E4F8, 0, 0);
}

uint64_t sub_221F2E4F8()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 287, v0[290]);
    v7 = ASCloudKitGroupUserActionExplicit();
    v0[434] = v7;
    v8 = swift_task_alloc();
    v0[435] = v8;
    *v8 = v0;
    v8[1] = sub_221F2E6AC;
    v9 = v0[431];

    return sub_221EF560C(v9, 4, v7);
  }
}

uint64_t sub_221F2E6AC()
{
  v2 = *v1;
  *(*v1 + 3488) = v0;

  if (v0)
  {
    v3 = sub_221F336B8;
  }

  else
  {
    v3 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2E7E0(uint64_t a1)
{
  v2[426] = v1;
  v2[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v2[427] = swift_task_alloc();
  v3 = sub_221FB5C38();
  v2[428] = v3;
  v2[429] = *(v3 - 8);
  v2[430] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2E8DC, 0, 0);
}

uint64_t sub_221F2E8DC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000002CLL, 0x8000000221FC2B10);
  v3 = *v1;
  *(v0 + 3448) = *v1;

  return MEMORY[0x2822009F8](sub_221F2E9C4, v3, 0);
}

uint64_t sub_221F2E9C4()
{
  v1 = *(v0 + 3448);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3456) = v3;
  *v3 = v0;
  v3[1] = sub_221F2EAB0;
  v4 = *(v0 + 3448);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2EAB0()
{

  return MEMORY[0x2822009F8](sub_221F2EBAC, 0, 0);
}

uint64_t sub_221F2EBAC()
{
  v1 = v0[429];
  v2 = v0[428];
  v3 = v0[427];
  sub_221FB6148();
  sub_221FB5BD8();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[427]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[429] + 32))(v0[430], v0[427], v0[428]);
    v7 = sub_221FB6138();
    __swift_project_boxed_opaque_existential_0Tm(v0 + 282, v0[285]);
    v8 = swift_task_alloc();
    v0[433] = v8;
    *v8 = v0;
    v8[1] = sub_221F2ED70;
    v9 = v0[430];

    return sub_221F22EA8(v7 & 1, v9);
  }
}

uint64_t sub_221F2ED70()
{
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v2 = sub_221F336BC;
  }

  else
  {
    v2 = sub_221F336A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2EE84(uint64_t a1)
{
  v2[426] = v1;
  v2[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v2[427] = swift_task_alloc();
  v3 = sub_221FB5C38();
  v2[428] = v3;
  v2[429] = *(v3 - 8);
  v2[430] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2EF80, 0, 0);
}

uint64_t sub_221F2EF80()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000003CLL, 0x8000000221FC2AD0);
  v3 = *v1;
  *(v0 + 3448) = *v1;

  return MEMORY[0x2822009F8](sub_221F2F068, v3, 0);
}

uint64_t sub_221F2F068()
{
  v1 = *(v0 + 3448);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3456) = v3;
  *v3 = v0;
  v3[1] = sub_221F2F154;
  v4 = *(v0 + 3448);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2F154()
{

  return MEMORY[0x2822009F8](sub_221F2F250, 0, 0);
}

uint64_t sub_221F2F250()
{
  v1 = v0[429];
  v2 = v0[428];
  v3 = v0[427];
  sub_221FB5C88();
  sub_221FB5BD8();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[427]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[429] + 32))(v0[430], v0[427], v0[428]);
    v7 = sub_221FB5C78();
    __swift_project_boxed_opaque_existential_0Tm(v0 + 302, v0[305]);
    v8 = swift_task_alloc();
    v0[433] = v8;
    *v8 = v0;
    v8[1] = sub_221F2F414;
    v9 = v0[430];

    return sub_221EA6AB8(v7 & 1, v9);
  }
}

uint64_t sub_221F2F414()
{
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v2 = sub_221F2F5C0;
  }

  else
  {
    v2 = sub_221F2F528;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2F528()
{
  (*(v0[429] + 8))(v0[430], v0[428]);
  sub_221E95288((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F2F5C0()
{
  (*(v0[429] + 8))(v0[430], v0[428]);
  sub_221E95288((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F2F660(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v3[428] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v3[429] = v4;
  v3[430] = *(v4 - 8);
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2F760, 0, 0);
}

uint64_t sub_221F2F760()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2870);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2F848, v3, 0);
}

uint64_t sub_221F2F848()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = swift_task_alloc();
  *(v0 + 3464) = v3;
  *v3 = v0;
  v3[1] = sub_221F2F934;
  v4 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F3362C, v4, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2F934()
{

  return MEMORY[0x2822009F8](sub_221F2FA30, 0, 0);
}

uint64_t sub_221F2FA30()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    sub_221E95288((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 292, v0[295]);
    v7 = swift_task_alloc();
    v0[434] = v7;
    *v7 = v0;
    v7[1] = sub_221F2FBC8;
    v8 = v0[431];

    return sub_221F0B3BC(v8);
  }
}

uint64_t sub_221F2FBC8()
{
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v2 = sub_221F2FCDC;
  }

  else
  {
    v2 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F2FCDC()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  sub_221E95288((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_221F2FD9C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 784);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0x6574617669746361, 0xEA00000000002928);
  v4 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v4);
  sub_221F32250(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 792) = v5;
  v6 = *(v0 + 32);
  v5[1] = *(v0 + 16);
  v5[2] = v6;
  v5[3] = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 800) = v7;
  *v7 = v0;
  v7[1] = sub_221F2FF28;

  return MEMORY[0x28213ACC8](1101, &unk_221FBC478, v5, v4, v3);
}

uint64_t sub_221F2FF28()
{

  return MEMORY[0x2822009F8](sub_221F30040, 0, 0);
}

uint64_t sub_221F30040()
{
  v1 = *(v0 + 784);
  v3 = v1[4];
  v2 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v3);
  sub_221F32250(v1, v0 + 64);
  v4 = swift_allocObject();
  *(v0 + 808) = v4;
  v5 = *(v0 + 80);
  v4[1] = *(v0 + 64);
  v4[2] = v5;
  v4[3] = *(v0 + 96);
  v6 = swift_task_alloc();
  *(v0 + 816) = v6;
  *v6 = v0;
  v6[1] = sub_221F30150;

  return MEMORY[0x28213ACC8](1102, &unk_221FBC488, v4, v3, v2);
}

uint64_t sub_221F30150()
{

  return MEMORY[0x2822009F8](sub_221F30268, 0, 0);
}

uint64_t sub_221F30268()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 112);
  v4 = swift_allocObject();
  *(v0 + 824) = v4;
  v5 = *(v0 + 128);
  v4[1] = *(v0 + 112);
  v4[2] = v5;
  v4[3] = *(v0 + 144);
  v6 = swift_task_alloc();
  *(v0 + 832) = v6;
  v7 = sub_221FB5E48();
  *v6 = v0;
  v6[1] = sub_221F30398;
  v8 = MEMORY[0x277CE93D0];

  return MEMORY[0x28213ACB8](1103, &unk_221FBC498, v4, v2, v7, v3, v8);
}

uint64_t sub_221F30398()
{

  return MEMORY[0x2822009F8](sub_221F304B0, 0, 0);
}

uint64_t sub_221F304B0()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 160);
  v4 = swift_allocObject();
  *(v0 + 840) = v4;
  v5 = *(v0 + 176);
  v4[1] = *(v0 + 160);
  v4[2] = v5;
  v4[3] = *(v0 + 192);
  v6 = swift_task_alloc();
  *(v0 + 848) = v6;
  *v6 = v0;
  v6[1] = sub_221F305D0;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1105, &unk_221FBC4A8, v4, v2, v7, v3, v8);
}

uint64_t sub_221F305D0()
{

  return MEMORY[0x2822009F8](sub_221F306E8, 0, 0);
}

uint64_t sub_221F306E8()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 208);
  v4 = swift_allocObject();
  *(v0 + 856) = v4;
  v5 = *(v0 + 224);
  v4[1] = *(v0 + 208);
  v4[2] = v5;
  v4[3] = *(v0 + 240);
  v6 = swift_task_alloc();
  *(v0 + 864) = v6;
  *v6 = v0;
  v6[1] = sub_221F30808;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1107, &unk_221FBC4B8, v4, v2, v7, v3, v8);
}

uint64_t sub_221F30808()
{

  return MEMORY[0x2822009F8](sub_221F30920, 0, 0);
}

uint64_t sub_221F30920()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 256);
  v4 = swift_allocObject();
  *(v0 + 872) = v4;
  v5 = *(v0 + 272);
  v4[1] = *(v0 + 256);
  v4[2] = v5;
  v4[3] = *(v0 + 288);
  v6 = swift_task_alloc();
  *(v0 + 880) = v6;
  *v6 = v0;
  v6[1] = sub_221F30A40;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1106, &unk_221FBC4C8, v4, v2, v7, v3, v8);
}

uint64_t sub_221F30A40()
{

  return MEMORY[0x2822009F8](sub_221F30B58, 0, 0);
}

uint64_t sub_221F30B58()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 304);
  v4 = swift_allocObject();
  *(v0 + 888) = v4;
  v5 = *(v0 + 320);
  v4[1] = *(v0 + 304);
  v4[2] = v5;
  v4[3] = *(v0 + 336);
  v6 = swift_task_alloc();
  *(v0 + 896) = v6;
  *v6 = v0;
  v6[1] = sub_221F30C78;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1150, &unk_221FBC4D8, v4, v2, v7, v3, v8);
}

uint64_t sub_221F30C78()
{

  return MEMORY[0x2822009F8](sub_221F30D90, 0, 0);
}

uint64_t sub_221F30D90()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 352);
  v4 = swift_allocObject();
  *(v0 + 904) = v4;
  v5 = *(v0 + 368);
  v4[1] = *(v0 + 352);
  v4[2] = v5;
  v4[3] = *(v0 + 384);
  v6 = swift_task_alloc();
  *(v0 + 912) = v6;
  *v6 = v0;
  v6[1] = sub_221F30EB0;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1108, &unk_221FBC4E8, v4, v2, v7, v3, v8);
}

uint64_t sub_221F30EB0()
{

  return MEMORY[0x2822009F8](sub_221F30FC8, 0, 0);
}

uint64_t sub_221F30FC8()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 400);
  v4 = swift_allocObject();
  *(v0 + 920) = v4;
  v5 = *(v0 + 416);
  v4[1] = *(v0 + 400);
  v4[2] = v5;
  v4[3] = *(v0 + 432);
  v6 = swift_task_alloc();
  *(v0 + 928) = v6;
  *v6 = v0;
  v6[1] = sub_221F310E8;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1110, &unk_221FBC4F8, v4, v2, v7, v3, v8);
}

uint64_t sub_221F310E8()
{

  return MEMORY[0x2822009F8](sub_221F31200, 0, 0);
}

uint64_t sub_221F31200()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 448);
  v4 = swift_allocObject();
  *(v0 + 936) = v4;
  v5 = *(v0 + 464);
  v4[1] = *(v0 + 448);
  v4[2] = v5;
  v4[3] = *(v0 + 480);
  v6 = swift_task_alloc();
  *(v0 + 944) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2A0, &qword_221FBC510);
  v8 = sub_221F32E08();
  *v6 = v0;
  v6[1] = sub_221F31340;

  return MEMORY[0x28213ACA8](1111, &unk_221FBC508, v4, v2, v7, v3, v8);
}

uint64_t sub_221F31340()
{

  return MEMORY[0x2822009F8](sub_221F31458, 0, 0);
}

uint64_t sub_221F31458()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 496);
  v4 = swift_allocObject();
  *(v0 + 952) = v4;
  v5 = *(v0 + 512);
  v4[1] = *(v0 + 496);
  v4[2] = v5;
  v4[3] = *(v0 + 528);
  v6 = swift_task_alloc();
  *(v0 + 960) = v6;
  *v6 = v0;
  v6[1] = sub_221F31578;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1153, &unk_221FBC520, v4, v2, v7, v3, v8);
}

uint64_t sub_221F31578()
{

  return MEMORY[0x2822009F8](sub_221F31690, 0, 0);
}

uint64_t sub_221F31690()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 544);
  v4 = swift_allocObject();
  *(v0 + 968) = v4;
  v5 = *(v0 + 560);
  v4[1] = *(v0 + 544);
  v4[2] = v5;
  v4[3] = *(v0 + 576);
  v6 = swift_task_alloc();
  *(v0 + 976) = v6;
  *v6 = v0;
  v6[1] = sub_221F317B0;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1156, &unk_221FBC530, v4, v2, v7, v3, v8);
}

uint64_t sub_221F317B0()
{

  return MEMORY[0x2822009F8](sub_221F318C8, 0, 0);
}

uint64_t sub_221F318C8()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 592);
  v4 = swift_allocObject();
  *(v0 + 984) = v4;
  v5 = *(v0 + 608);
  v4[1] = *(v0 + 592);
  v4[2] = v5;
  v4[3] = *(v0 + 624);
  v6 = swift_task_alloc();
  *(v0 + 992) = v6;
  *v6 = v0;
  v6[1] = sub_221F319E8;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1157, &unk_221FBC540, v4, v2, v7, v3, v8);
}

uint64_t sub_221F319E8()
{

  return MEMORY[0x2822009F8](sub_221F31B00, 0, 0);
}

uint64_t sub_221F31B00()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 640);
  v4 = swift_allocObject();
  *(v0 + 1000) = v4;
  v5 = *(v0 + 656);
  v4[1] = *(v0 + 640);
  v4[2] = v5;
  v4[3] = *(v0 + 672);
  v6 = swift_task_alloc();
  *(v0 + 1008) = v6;
  v7 = sub_221FB6158();
  *v6 = v0;
  v6[1] = sub_221F31C30;
  v8 = MEMORY[0x277CE9440];

  return MEMORY[0x28213ACB8](1158, &unk_221FBC550, v4, v2, v7, v3, v8);
}

uint64_t sub_221F31C30()
{

  return MEMORY[0x2822009F8](sub_221F31D48, 0, 0);
}

uint64_t sub_221F31D48()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 688);
  v4 = swift_allocObject();
  *(v0 + 1016) = v4;
  v5 = *(v0 + 704);
  v4[1] = *(v0 + 688);
  v4[2] = v5;
  v4[3] = *(v0 + 720);
  v6 = swift_task_alloc();
  *(v0 + 1024) = v6;
  v7 = sub_221FB5C98();
  *v6 = v0;
  v6[1] = sub_221F31E78;
  v8 = MEMORY[0x277CE9350];

  return MEMORY[0x28213ACB8](1159, &unk_221FBC560, v4, v2, v7, v3, v8);
}

uint64_t sub_221F31E78()
{

  return MEMORY[0x2822009F8](sub_221F31F90, 0, 0);
}

uint64_t sub_221F31F90()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 736);
  v4 = swift_allocObject();
  *(v0 + 1032) = v4;
  v5 = *(v0 + 752);
  v4[1] = *(v0 + 736);
  v4[2] = v5;
  v4[3] = *(v0 + 768);
  v6 = swift_task_alloc();
  *(v0 + 1040) = v6;
  *v6 = v0;
  v6[1] = sub_221F320B0;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1160, &unk_221FBC570, v4, v2, v7, v3, v8);
}

uint64_t sub_221F320B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221F321C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F29D48();
}

uint64_t sub_221F32288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F321C0();
}

uint64_t sub_221F3231C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F2A264();
}

uint64_t sub_221F323AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F3231C();
}

uint64_t sub_221F32440(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F2A774(a1);
}

uint64_t sub_221F324D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32440(a1);
}

uint64_t sub_221F32570(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2AD28(v2, v3);
}

uint64_t sub_221F32614(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32570(a1);
}

uint64_t sub_221F326AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2BBAC(v2, v3);
}

uint64_t sub_221F32750(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F326AC(a1);
}

uint64_t sub_221F327E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2B51C(v2, v3);
}

uint64_t sub_221F3288C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F327E8(a1);
}

uint64_t sub_221F32924(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2C2D0(v2, v3);
}

uint64_t sub_221F329C8(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32924(a1);
}

uint64_t sub_221F32A60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2C784(v2, v3);
}

uint64_t sub_221F32B04(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32A60(a1);
}

uint64_t sub_221F32B9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2CE00(v2, v3);
}

uint64_t sub_221F32C40(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32B9C(a1);
}

uint64_t sub_221F32CD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221E952DC;

  return sub_221F2D368();
}

uint64_t sub_221F32D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F32CD8(a1);
}

unint64_t sub_221F32E08()
{
  result = qword_281306F50;
  if (!qword_281306F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC2A0, &qword_221FBC510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F50);
  }

  return result;
}

uint64_t sub_221F32E84(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2D658(v2, v3);
}

uint64_t sub_221F32F28(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32E84(a1);
}

uint64_t sub_221F32FC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2DBC0(v2, v3);
}

uint64_t sub_221F33064(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32FC0(a1);
}

uint64_t sub_221F330FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2E128(v2, v3);
}

uint64_t sub_221F331A0(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F330FC(a1);
}

uint64_t sub_221F33238(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F2E7E0(a1);
}

uint64_t sub_221F332D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F33238(a1);
}

uint64_t sub_221F33368(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F2EE84(a1);
}

uint64_t sub_221F33400(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F33368(a1);
}

uint64_t sub_221F33498(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2F660(v2, v3);
}

uint64_t sub_221F3353C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F33498(a1);
}

unint64_t sub_221F335D4()
{
  result = qword_281307270;
  if (!qword_281307270)
  {
    type metadata accessor for SecureCloudActivationGateway();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307270);
  }

  return result;
}

uint64_t sub_221F33634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_221F336CC()
{
  [*__swift_project_boxed_opaque_existential_0Tm(&v0[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator] *&v0[OBJC:sel_removeObserver_ IVAR:v0 :? :? :? TtC23ActivitySharingServices17MigrationObserver:?cloudKitCoordinator + 24])];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221F337FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_221F33820, 0, 0);
}

uint64_t sub_221F33820()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A8, &unk_221FBC660);
  v5 = sub_221F35DE8();
  *v3 = v0;
  v3[1] = sub_221F33918;

  return MEMORY[0x28213AEC8](&unk_221FBC658, v2, v4, v5);
}

void sub_221F33918()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221F33A54, 0, 0);
  }
}

uint64_t sub_221F33A54()
{
  (*(v0 + 40))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F33AB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221F33ADC, 0, 0);
}

uint64_t sub_221F33ADC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  v0[4] = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Storing migration available item %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[2];

  __swift_project_boxed_opaque_existential_0Tm((v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_221F33CA4;
  v12 = v0[3];

  return sub_221F276D8(v12);
}

uint64_t sub_221F33CA4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F33DD8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221F33DD8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to store migration available item: %@, error: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_221F33F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_221F33F90, 0, 0);
}

uint64_t sub_221F33F90()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(*(v0 + 40) + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v2 = *v1;
  *(v0 + 72) = *v1;

  return MEMORY[0x2822009F8](sub_221F3400C, v2, 0);
}

uint64_t sub_221F3400C()
{
  v8 = v0;
  v1 = *(*(v0 + 72) + 120);
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
  *(v0 + 80) = v3;

  return MEMORY[0x2822009F8](sub_221F3410C, 0, 0);
}

uint64_t sub_221F3410C()
{
  v55 = v0;
  v1 = *(v0 + 80);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_221ED84F8(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v5 = 0;
    v51 = v1 & 0xFFFFFFFFFFFFFF8;
    v52 = v1 & 0xC000000000000001;
    v49 = v48[10] + 32;
    while (1)
    {
      if (v52)
      {
        v8 = MEMORY[0x223DACD50](v5, v48[10]);
      }

      else
      {
        if (v5 >= *(v51 + 16))
        {
          goto LABEL_32;
        }

        v8 = *(v49 + 8 * v5);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = [v8 systemFieldsOnlyRecord];
      v12 = [v11 recordID];

      if ((v3 & 0xC000000000000001) != 0)
      {
        if (v3 < 0)
        {
          v1 = v3;
        }

        else
        {
          v1 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        v13 = v9;
        v14 = sub_221FB6868();
        if (__OFADD__(v14, 1))
        {
          goto LABEL_34;
        }

        v3 = sub_221F10AD8(v1, v14 + 1);
      }

      else
      {
        v15 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v3;
      v1 = v3;
      v17 = sub_221ED4CAC(v12);
      v19 = *(v3 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_33;
      }

      v23 = v18;
      if (*(v3 + 24) < v22)
      {
        sub_221ED60E0(v22, isUniquelyReferenced_nonNull_native);
        v3 = v54;
        v1 = v54;
        v17 = sub_221ED4CAC(v12);
        if ((v23 & 1) != (v24 & 1))
        {
          sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);

          return sub_221FB6B98();
        }

LABEL_22:
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v1 = &v54;
      v27 = v2;
      v28 = v17;
      sub_221ED7424();
      v17 = v28;
      v2 = v27;
      v3 = v54;
      if (v23)
      {
LABEL_4:
        v6 = *(v3 + 56);
        v7 = *(v6 + 8 * v17);
        *(v6 + 8 * v17) = v9;

        goto LABEL_5;
      }

LABEL_23:
      *(v3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
      *(*(v3 + 48) + 8 * v17) = v12;
      *(*(v3 + 56) + 8 * v17) = v9;

      v25 = *(v3 + 16);
      v21 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v26;
LABEL_5:
      ++v5;
      if (v10 == i)
      {
        goto LABEL_37;
      }
    }

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
    ;
  }

LABEL_37:
  v30 = v48[6];

  v54 = v2;
  if (v30 >> 62)
  {
LABEL_67:
    v53 = v30 & 0xFFFFFFFFFFFFFF8;
    v31 = sub_221FB6868();
  }

  else
  {
    v53 = v30 & 0xFFFFFFFFFFFFFF8;
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v48[6];
  v48[11] = v2;
  if (!v31)
  {
    v50 = v2;
    goto LABEL_62;
  }

  v2 = 0;
  v33 = v30 & 0xC000000000000001;
  v34 = v32 + 32;
  v50 = MEMORY[0x277D84F90];
  do
  {
    v35 = v2;
    while (1)
    {
      if (v33)
      {
        v36 = MEMORY[0x223DACD50](v35, v48[6]);
      }

      else
      {
        if (v35 >= *(v53 + 16))
        {
          goto LABEL_66;
        }

        v36 = *(v34 + 8 * v35);
      }

      v37 = v36;
      v2 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      v38 = sub_221FB6A38();
      if (!v38)
      {
        goto LABEL_42;
      }

      v30 = v48;
      v48[3] = v38;
      sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
      swift_dynamicCast();
      v39 = v48[2];

      if (v39)
      {
        goto LABEL_57;
      }

LABEL_43:
      ++v35;
      if (v2 == v31)
      {
        goto LABEL_62;
      }
    }

    if (!*(v3 + 16) || (v30 = v3, v40 = sub_221ED4CAC(v36), (v41 & 1) == 0))
    {
LABEL_42:

      goto LABEL_43;
    }

    v42 = *(*(v3 + 56) + 8 * v40);

    if (!v42)
    {
      goto LABEL_43;
    }

LABEL_57:
    MEMORY[0x223DAC7E0]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_221FB6458();
    }

    v30 = &v54;
    sub_221FB6478();
    v50 = v54;
    v48[11] = v54;
  }

  while (v2 != v31);
LABEL_62:
  v43 = v48[5];

  v48[4] = v50;
  v44 = swift_task_alloc();
  v48[12] = v44;
  *(v44 + 16) = v43;
  v45 = swift_task_alloc();
  v48[13] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A8, &unk_221FBC660);
  v47 = sub_221F35DE8();
  *v45 = v48;
  v45[1] = sub_221F346A8;

  return MEMORY[0x28213AEC8](&unk_221FBC690, v44, v46, v47);
}

void sub_221F346A8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221F347EC, 0, 0);
  }
}

uint64_t sub_221F347EC()
{
  (*(v0 + 56))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F34850(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221F34874, 0, 0);
}

uint64_t sub_221F34874()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  v0[4] = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Removing migration available item %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[2];

  __swift_project_boxed_opaque_existential_0Tm((v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_221F34A3C;
  v12 = v0[3];

  return sub_221F28A54(v12);
}

uint64_t sub_221F34A3C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F34B70, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221F34B70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to remove migration available item: %@, error: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_221F34D80()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[3] = __swift_project_value_buffer(v1, qword_281307DF0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Full fetch type, clearing all migration available items", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[2];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_221F34EE8;

  return sub_221F28158();
}

uint64_t sub_221F34EE8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F3501C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221F3501C()
{
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed clear all migration available items, error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_221F35294(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, const char *a6)
{
  v9 = _Block_copy(aBlock);
  sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
  v10 = sub_221FB6438();
  _Block_copy(v9);
  v11 = a3;
  v12 = a1;
  sub_221F357C0(v10, v12, v9, a6);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_221F3556C(unint64_t a1, void *a2, void (**a3)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  _Block_copy(a3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v10 = sub_221FB61D8();
  __swift_project_value_buffer(v10, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000007CLL, 0x8000000221FC2EA0, 0xD000000000000031, 0x8000000221FC2F70);
  if (a1 >> 62)
  {
    if (sub_221FB6868())
    {
      goto LABEL_5;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v11 = sub_221FB64C8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a1;
    v12[6] = sub_221F36194;
    v12[7] = v9;
    v13 = a2;

    sub_221FA7A78(0, 0, v8, &unk_221FBC680, v12);
  }

  a3[2](a3);
}

void sub_221F357C0(unint64_t a1, void *a2, void *aBlock, const char *a4)
{
  _Block_copy(aBlock);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v14 = MEMORY[0x223DAC810](a1, v13);
    v16 = sub_221EF4114(v14, v15, &v17);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_221E93000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  _Block_copy(aBlock);
  sub_221F3556C(a1, a2, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_221F35984(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, ...)
{
  v10 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v17 = sub_221FB61D8();
  v18 = __swift_project_value_buffer(v17, qword_281307DF0);

  v43 = v18;
  v19 = sub_221FB61B8();
  v20 = sub_221FB65C8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = v10;
    v22 = v21;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v22 = 136315138;
    v23 = sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
    v24 = MEMORY[0x223DAC810](a1, v23);
    v39 = a4;
    v41 = a5;
    v26 = v20;
    v27 = v16;
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a6;
    v32 = sub_221EF4114(v24, v25, &v44);

    *(v22 + 4) = v32;
    a6 = v31;
    a3 = v30;
    a2 = v29;
    a1 = v28;
    v16 = v27;
    _os_log_impl(&dword_221E93000, v19, v26, v39, v22, 0xCu);
    v33 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223DADA80](v33, -1, -1);
    v34 = v22;
    v10 = v42;
    MEMORY[0x223DADA80](v34, -1, -1);
  }

  sub_221E9DCE8(0xD00000000000007CLL, 0x8000000221FC2EA0, 0xD000000000000041, 0x8000000221FC2F20);
  v35 = sub_221FB64C8();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = a1;
  v36[5] = v10;
  v36[6] = a2;
  v36[7] = a3;

  v37 = v10;

  sub_221FA7A78(0, 0, v16, a6, v36);
}

uint64_t sub_221F35C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E963B4;

  return sub_221F337FC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_221F35D4C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221F33AB8(a1, v4);
}

unint64_t sub_221F35DE8()
{
  result = qword_27CFEC3B0;
  if (!qword_27CFEC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC3A8, &unk_221FBC660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC3B0);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_221F35E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E9544C;

  return sub_221F337FC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_221F35F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E963B4;

  return sub_221F33F6C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_221F36044(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F34850(a1, v4);
}

uint64_t sub_221F360E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221F34D60(a1, v4, v5, v6);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_221F361C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_221F36208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F36520(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  swift_unknownObjectRetain();
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_221F36620;

  return sub_221F37654(v11, a3);
}

uint64_t sub_221F36620(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  swift_unknownObjectRelease();
  if (v1)
  {
    if (v5)
    {
      v10 = *(v4 + 48);
      v11 = sub_221FB5A98();

      (v10)[2](v10, 0, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v12 = *(v4 + 48);
    v12[2](v12, a1 & 1, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_221F369CC(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a2;

  return MEMORY[0x2822009F8](sub_221F36A68, 0, 0);
}

uint64_t sub_221F36A68()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000090, 0x8000000221FC3200, 0xD000000000000040, 0x8000000221FC32E0);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudUpdateCoalescer), *(v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudUpdateCoalescer + 24));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_221F36B98;
  v5 = v0[2];
  v4 = v0[3];

  return sub_221EEF754(v5, v4);
}

uint64_t sub_221F36B98()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_221F36D4C;
  }

  else
  {
    v2 = sub_221F36CAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F36CAC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = *(v0 + 40);
    v3[2](v3, 1, 0);
    _Block_release(v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221F36D4C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 56);
    v5 = sub_221FB5A98();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F36FB8(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a2;

  return MEMORY[0x2822009F8](sub_221F37054, 0, 0);
}

uint64_t sub_221F37054()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000090, 0x8000000221FC3200, 0xD000000000000038, 0x8000000221FC32A0);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudErrorDispatcher), *(v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudErrorDispatcher + 24));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_221F37184;
  v5 = v0[2];
  v4 = v0[3];

  return sub_221F54990(v5, v4);
}

uint64_t sub_221F37184()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_221F37338;
  }

  else
  {
    v2 = sub_221F37298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F37298()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = *(v0 + 40);
    v3[2](v3, 1, 0);
    _Block_release(v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221F37338()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 56);
    v5 = sub_221FB5A98();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F373FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E963B4;

  return sub_221F36FB8(v2, v3, v4, v5, v6);
}

uint64_t sub_221F374C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E963B4;

  return sub_221F369CC(v2, v3, v4, v5, v6);
}

uint64_t sub_221F3758C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E9544C;

  return sub_221F36520(v2, v3, v4, v5, v6);
}

uint64_t sub_221F37654(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_221F37678, 0, 0);
}

uint64_t sub_221F37678()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[9] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000090, 0x8000000221FC3200, 0xD00000000000003ALL, 0x8000000221FC3330);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running repair zone task for periodic update.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipRepairService;
  v0[10] = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipRepairService;
  __swift_project_boxed_opaque_existential_0Tm((v5 + v6), *(v5 + v6 + 24));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_221F37824;
  v8 = v0[7];

  return sub_221F08A7C(v8);
}

uint64_t sub_221F37824()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_221F37A54;
  }

  else
  {
    v2 = sub_221F37938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F37938(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running repair contacts task for periodic update.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[10];
  v6 = v1[8];

  __swift_project_boxed_opaque_existential_0Tm((v6 + v5), *(v6 + v5 + 24));
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v1;
  v7[1] = sub_221F37C60;

  return sub_221F0BA88();
}

uint64_t sub_221F37A54()
{
  v1 = v0[12];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to delete zones for repair: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_221FB61B8();
  v12 = sub_221FB65C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_221E93000, v11, v12, "Running repair contacts task for periodic update.", v13, 2u);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v14 = v0[10];
  v15 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v15 + v14), *(v15 + v14 + 24));
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_221F37C60;

  return sub_221F0BA88();
}

uint64_t sub_221F37C60()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_221F37EA0;
  }

  else
  {
    v2 = sub_221F37D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F37D74(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running consolidation task.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[8];

  v6 = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  v1[15] = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  __swift_project_boxed_opaque_existential_0Tm((v5 + v6), *(v5 + v6 + 24));
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v1;
  v7[1] = sub_221F380BC;
  v9 = v1[6];
  v8 = v1[7];

  return sub_221EDD788(v9, v8);
}

uint64_t sub_221F37EA0()
{
  v1 = v0[14];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to repair contacts %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_221FB61B8();
  v12 = sub_221FB65C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_221E93000, v11, v12, "Running consolidation task.", v13, 2u);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v14 = v0[8];

  v15 = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  v0[15] = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  __swift_project_boxed_opaque_existential_0Tm((v14 + v15), *(v14 + v15 + 24));
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_221F380BC;
  v18 = v0[6];
  v17 = v0[7];

  return sub_221EDD788(v18, v17);
}

uint64_t sub_221F380BC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F381F0, 0, 0);
  }
}

uint64_t sub_221F381F0(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running relationship supported feature update.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[15];
  v6 = v1[8];

  __swift_project_boxed_opaque_existential_0Tm((v6 + v5), *(v6 + v5 + 24));
  v7 = swift_task_alloc();
  v1[17] = v7;
  *v7 = v1;
  v7[1] = sub_221F38314;
  v9 = v1[6];
  v8 = v1[7];

  return sub_221EDE92C(v9, v8);
}

uint64_t sub_221F38314()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_221F38550;
  }

  else
  {
    v2 = sub_221F38428;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F38428(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running upgrade task for periodic update manager", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService + 24));
  v6 = swift_task_alloc();
  v1[19] = v6;
  *v6 = v1;
  v6[1] = sub_221F38768;
  v7 = v1[7];

  return sub_221F43688(v7);
}

uint64_t sub_221F38550()
{
  v1 = v0[18];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to update supported features on relationships: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_221FB61B8();
  v12 = sub_221FB65C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_221E93000, v11, v12, "Running upgrade task for periodic update manager", v13, 2u);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v14 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v14 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService), *(v14 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService + 24));
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_221F38768;
  v16 = v0[7];

  return sub_221F43688(v16);
}

uint64_t sub_221F38768()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_221F389A4;
  }

  else
  {
    v2 = sub_221F3887C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F3887C(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running migration task for periodic update manager", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService + 24));
  v6 = swift_task_alloc();
  v1[21] = v6;
  *v6 = v1;
  v6[1] = sub_221F38BBC;
  v7 = v1[7];

  return sub_221EFB0E8(v7);
}

uint64_t sub_221F389A4()
{
  v1 = v0[20];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Upgrade task failed with error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_221FB61B8();
  v12 = sub_221FB65C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_221E93000, v11, v12, "Running migration task for periodic update manager", v13, 2u);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v14 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v14 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService), *(v14 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService + 24));
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_221F38BBC;
  v16 = v0[7];

  return sub_221EFB0E8(v16);
}

uint64_t sub_221F38BBC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_221F38DF8;
  }

  else
  {
    v2 = sub_221F38CD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F38CD0(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running downgrade task for periodic update manager", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService + 24));
  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v1;
  v6[1] = sub_221F39010;
  v7 = v1[7];

  return sub_221EB6204(v7);
}

uint64_t sub_221F38DF8()
{
  v1 = v0[22];
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Migration task failed with error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_221FB61B8();
  v12 = sub_221FB65C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_221E93000, v11, v12, "Running downgrade task for periodic update manager", v13, 2u);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v14 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v14 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService), *(v14 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService + 24));
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_221F39010;
  v16 = v0[7];

  return sub_221EB6204(v16);
}

uint64_t sub_221F39010()
{

  return MEMORY[0x2822009F8](sub_221F3910C, 0, 0);
}

uint64_t sub_221F3910C(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Donating IDS addresses if needed", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v1 + 64);

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_idsFirewallService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_idsFirewallService + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 192) = v9;
  *v9 = v1;
  v9[1] = sub_221F39234;

  return sub_221F5CC8C(v8, v7);
}

uint64_t sub_221F39234()
{

  return MEMORY[0x2822009F8](sub_221F39330, 0, 0);
}

uint64_t sub_221F39330(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Processing any retry messages", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[8];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_invitationListener), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_invitationListener + 24));
  v1[25] = v6;
  v7 = __swift_project_boxed_opaque_existential_0Tm(v6 + 5, v6[8]);
  v8 = *v7;
  v1[26] = *v7;

  return MEMORY[0x2822009F8](sub_221F39434, v8, 0);
}

uint64_t sub_221F39434()
{
  v1 = *(v0 + 208);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_221F394BC, 0, 0);
}

uint64_t sub_221F394BC()
{
  v1 = v0[25];
  v0[5] = v0[27];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC480, &unk_221FB90D8);
  v5 = sub_221F39B48();
  *v3 = v0;
  v3[1] = sub_221F395B8;

  return MEMORY[0x28213AEC8](&unk_221FBC7D0, v2, v4, v5);
}

void sub_221F395B8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221F396FC, 0, 0);
  }
}

uint64_t sub_221F396FC(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Reporting manatee status", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v1 + 64);

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_analyticsService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_analyticsService + 24));
  v6 = swift_task_alloc();
  *(v1 + 240) = v6;
  *v6 = v1;
  v6[1] = sub_221F3981C;

  return sub_221EC6F14();
}

uint64_t sub_221F3981C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F39954, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3(1);
  }
}

uint64_t sub_221F39954()
{
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to report manatee status with error: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(1);
}

uint64_t sub_221F39AAC(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221EC3284(a1, v4);
}

unint64_t sub_221F39B48()
{
  result = qword_281306F60;
  if (!qword_281306F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC480, &unk_221FB90D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F60);
  }

  return result;
}

uint64_t sub_221F39BDC()
{
  v1 = *(v0 + 376);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  sub_221F3B3C0(v1, v0 + 16);
  v4 = swift_allocObject();
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  v6 = swift_allocObject();
  *(v0 + 384) = v6;
  *(v6 + 16) = sub_221F3B3F8;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  *v7 = v0;
  v7[1] = sub_221F39D20;

  return MEMORY[0x28213ACC8](1001, &unk_221FBC838, v6, v3, v2);
}

uint64_t sub_221F39D20()
{

  return MEMORY[0x2822009F8](sub_221F39E38, 0, 0);
}

uint64_t sub_221F39E38()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 56);
  v4 = swift_allocObject();
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 88);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3B514;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 400) = v7;
  *(v7 + 16) = &unk_221FBC848;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_221F39FBC;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277CE94C0];

  return MEMORY[0x28213ACB8](1004, &unk_221FBC858, v7, v2, v9, v3, v10);
}

uint64_t sub_221F39FBC()
{

  return MEMORY[0x2822009F8](sub_221F3A0D4, 0, 0);
}

uint64_t sub_221F3A0D4()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 96);
  v4 = swift_allocObject();
  v5 = *(v0 + 112);
  *(v4 + 16) = *(v0 + 96);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 128);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3B8FC;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 416) = v7;
  *(v7 + 16) = &unk_221FBC868;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 424) = v8;
  *v8 = v0;
  v8[1] = sub_221F3A254;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277CE94C0];

  return MEMORY[0x28213ACB0](1005, &unk_221FBC878, v7, v2, v9, v3, v10);
}

uint64_t sub_221F3A254()
{

  return MEMORY[0x2822009F8](sub_221F3A36C, 0, 0);
}

uint64_t sub_221F3A36C()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 136);
  v4 = swift_allocObject();
  v5 = *(v0 + 152);
  *(v4 + 16) = *(v0 + 136);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 168);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3BDC0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 432) = v7;
  *(v7 + 16) = &unk_221FBC888;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  *v8 = v0;
  v8[1] = sub_221F3A4F0;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACA8](1002, &unk_221FBC898, v7, v2, v9, v3, v10);
}

uint64_t sub_221F3A4F0()
{

  return MEMORY[0x2822009F8](sub_221F3A608, 0, 0);
}

uint64_t sub_221F3A608()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 176);
  v4 = swift_allocObject();
  v5 = *(v0 + 192);
  *(v4 + 16) = *(v0 + 176);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 208);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3C1A8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 448) = v7;
  *(v7 + 16) = &unk_221FBC8A8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 456) = v8;
  *v8 = v0;
  v8[1] = sub_221F3A788;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACA8](1003, &unk_221FBC8B0, v7, v2, v9, v3, v10);
}

uint64_t sub_221F3A788()
{

  return MEMORY[0x2822009F8](sub_221F3A8A0, 0, 0);
}

uint64_t sub_221F3A8A0()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 216);
  v4 = swift_allocObject();
  v5 = *(v0 + 232);
  *(v4 + 16) = *(v0 + 216);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 248);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3C2E0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 464) = v7;
  *(v7 + 16) = &unk_221FBC8C0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  *v8 = v0;
  v8[1] = sub_221F3AA30;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83B88];

  return MEMORY[0x28213ACA0](1006, &unk_221FBC8D0, v7, v2, v9, v10, v3);
}

uint64_t sub_221F3AA30()
{

  return MEMORY[0x2822009F8](sub_221F3AB48, 0, 0);
}

uint64_t sub_221F3AB48()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 256);
  v4 = swift_allocObject();
  v5 = *(v0 + 272);
  *(v4 + 16) = *(v0 + 256);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 288);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3C6F4;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 480) = v7;
  *(v7 + 16) = &unk_221FBC8E0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  *v8 = v0;
  v8[1] = sub_221F3ACD4;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83B88];

  return MEMORY[0x28213AC98](1007, &unk_221FBC8F0, v7, v2, v9, v10, v3);
}

uint64_t sub_221F3ACD4()
{

  return MEMORY[0x2822009F8](sub_221F3ADEC, 0, 0);
}

uint64_t sub_221F3ADEC()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 296);
  v4 = swift_allocObject();
  v5 = *(v0 + 312);
  *(v4 + 16) = *(v0 + 296);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 328);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3CA10;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 496) = v7;
  *(v7 + 16) = &unk_221FBC900;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 504) = v8;
  *v8 = v0;
  v8[1] = sub_221F3AF7C;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83B88];

  return MEMORY[0x28213ACA0](1008, &unk_221FBC908, v7, v2, v9, v10, v3);
}

uint64_t sub_221F3AF7C()
{

  return MEMORY[0x2822009F8](sub_221F3B094, 0, 0);
}

uint64_t sub_221F3B094()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 336);
  v4 = swift_allocObject();
  v5 = *(v0 + 352);
  *(v4 + 16) = *(v0 + 336);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 368);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3CB44;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 512) = v7;
  *(v7 + 16) = &unk_221FBC918;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 520) = v8;
  *v8 = v0;
  v8[1] = sub_221F3B220;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83B88];

  return MEMORY[0x28213AC98](1009, &unk_221FBC920, v7, v2, v9, v10, v3);
}

uint64_t sub_221F3B220()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_221F3B330()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v0 = sub_221FB61D8();
  __swift_project_value_buffer(v0, qword_281307DC0);
  sub_221E9DCE8(0xD00000000000006ALL, 0x8000000221FC33B0, 0x2928676E6970, 0xE600000000000000);
}

uint64_t sub_221F3B400(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221F3B468()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F3B400(v2);
}

void sub_221F3B538(uint64_t a1)
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  oslog = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_221E93000, oslog, v3, "Submitted %ld", v4, 0xCu);
    MEMORY[0x223DADA80](v4, -1, -1);
  }
}

uint64_t sub_221F3B638(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_221F3B6A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F3B638(a1, v4);
}

uint64_t sub_221F3B754(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221E963B4;

  return v6(v3);
}

uint64_t sub_221F3B848(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F3B754(a1, v4);
}

void sub_221F3B924(uint64_t a1, char a2)
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DC0);
  oslog = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a2)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      sub_221FB6A08();
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    v9 = sub_221EF4114(v8, v7, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_221E93000, oslog, v4, "Submitted optional %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_221F3BADC(uint64_t a1, char a2, void (*a3)(uint64_t, void))
{
  a3(a1, a2 & 1);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_221F3BB48(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F3BADC(a1, a2 & 1, v6);
}

uint64_t sub_221F3BC0C(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(v3, v4);
}

uint64_t sub_221F3BD0C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F3BC0C(a1, v4);
}

uint64_t sub_221F3BDD4(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_221F3BE3C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221EBD108;

  return sub_221F3BDD4(v2);
}

uint64_t sub_221F3BEE8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221F3BFD4;

  return v5();
}

uint64_t sub_221F3BFD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_221F3C0F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F3BEE8(a1, v4);
}

uint64_t sub_221F3C1CC(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_221F3C234()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221F3CC94;

  return sub_221F3C1CC(v2);
}

uint64_t sub_221F3C2E0(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3C2F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a2(a1);
  v4 = *(v2 + 8);

  return v4(v3, 0);
}

uint64_t sub_221F3C35C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221EBD108;

  return sub_221F3C2F0(a1, v4);
}

uint64_t sub_221F3C410(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_221F3C508;

  return v7(v4);
}

uint64_t sub_221F3C508(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    *(v8 + 8) = a2 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_221F3C62C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F3C410(a1, a2, v6);
}

uint64_t sub_221F3C6F4(uint64_t a1, char a2)
{
  if (a2)
  {
    return -1;
  }

  v3 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3C710(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = a3(a1, a2 & 1);
  v5 = *(v3 + 8);

  return v5(v4, 0);
}

uint64_t sub_221F3C780(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221F3CC94;

  return sub_221F3C710(a1, a2 & 1, v6);
}

uint64_t sub_221F3C844(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221F3CC90;

  return v8(v4, v5);
}

uint64_t sub_221F3C948(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F3C844(a1, a2, v6);
}

uint64_t sub_221F3CA10(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3CA24(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a2(a1);
  v4 = *(v2 + 8);
  v6 = v5 & 1;

  return v4(v3, v6);
}

uint64_t sub_221F3CA90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221F3CC94;

  return sub_221F3CA24(a1, v4);
}

uint64_t sub_221F3CB44(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && __OFSUB__(result--, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3CB5C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = a3(a1, a2 & 1);
  v5 = *(v3 + 8);
  v7 = v6 & 1;

  return v5(v4, v7);
}

uint64_t sub_221F3CBCC(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221F3CC94;

  return sub_221F3CB5C(a1, a2 & 1, v6);
}

uint64_t sub_221F3CCE8()
{

  return swift_deallocClassInstance();
}

void sub_221F3CD44()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  v3 = [v2 emptyCopy];

  v4 = *(v0 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_221F3CE14((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  [v3 persistToUserDefaults];
}

uint64_t sub_221F3CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221F3CF70(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_221FB5C38();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F3D03C, 0, 0);
}

uint64_t sub_221F3D03C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = sub_221FB61D8();
  v0[45] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000099, 0x8000000221FC3490, 0xD00000000000001ALL, 0x8000000221FC3530);
  v3 = sub_221FB5BF8();
  v0[46] = v1[6];
  v4 = sub_221FB6788();
  v5 = ASInsertPlaceholderRelationshipEventForFriend();

  sub_221FB67C8();
  swift_unknownObjectRelease();
  v6 = __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v7 = v1[5];
  v0[47] = v7;
  v8 = *v6;
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_221F3D268;
  v9 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221FA909C;
  v0[21] = &block_descriptor_21;
  v0[22] = v9;
  [v8 fetchAllChangesWithPriority:2 activity:0 group:v7 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F3D268()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_221F3D8E8;
  }

  else
  {
    v2 = sub_221F3D378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F3D378(uint64_t a1)
{
  v47 = v1;
  v2 = v1[46];
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  v1[49] = v4;

  if (v4)
  {
    v5 = [v4 relationshipStorage];
    v6 = [v5 secureCloudRelationship];
    v1[50] = v6;

    v7 = v6;
    v8 = [v4 relationshipStorage];
    v9 = [v8 legacyRelationship];
    v1[51] = v9;

    LODWORD(v8) = [v7 isAwaitingInviteResponse];
    if (v8)
    {
      v10 = v1[40];
      [v4 setPendingRelationshipShareItem_];
      [v4 setPendingLegacyShareLocations_];
      [v7 insertEventWithType_];
      __swift_project_boxed_opaque_existential_0Tm((v10 + 56), *(v10 + 80));
      v11 = v4;
      v12 = swift_task_alloc();
      v1[52] = v12;
      *v12 = v1;
      v12[1] = sub_221F3D9B4;
      v13 = v1[47];

      return sub_221EBAEA8(v7, v4, v13, 0);
    }

    (*(v1[42] + 16))(v1[44], v1[39], v1[41]);
    v27 = sub_221FB61B8();
    v28 = sub_221FB65A8();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v1[44];
    v32 = v1[41];
    v31 = v1[42];
    if (v29)
    {
      v44 = v28;
      v33 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46[0] = v43;
      *v33 = 136315138;
      sub_221EA8278();
      v45 = v9;
      v34 = sub_221FB6B08();
      v36 = v35;
      (*(v31 + 8))(v30, v32);
      v37 = v34;
      v9 = v45;
      v38 = sub_221EF4114(v37, v36, v46);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_221E93000, v27, v44, "Removing friend for inactive friendship: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223DADA80](v43, -1, -1);
      MEMORY[0x223DADA80](v33, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }

    sub_221EA4994();
    swift_allocError();
    *v40 = 37;
    swift_willThrow();
  }

  else
  {
    (*(v1[42] + 16))(v1[43], v1[39], v1[41]);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v1[42];
    v18 = v1[43];
    v20 = v1[41];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46[0] = v22;
      *v21 = 136315138;
      sub_221EA8278();
      v23 = sub_221FB6B08();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_221EF4114(v23, v25, v46);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_221E93000, v15, v16, "Unable to remove friend, no contact for identifier: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DADA80](v22, -1, -1);
      MEMORY[0x223DADA80](v21, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    sub_221EA4994();
    swift_allocError();
    *v39 = 21;
    swift_willThrow();
  }

  v41 = v1[46];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 34, v1[37]);
  [v41 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v1 + 34);

  v42 = v1[1];

  return v42();
}

uint64_t sub_221F3D8E8(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[46];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 34, v1[37]);
  [v2 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v1 + 34);

  v3 = v1[1];

  return v3();
}

uint64_t sub_221F3D9B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {

    v4 = sub_221F3DEC8;
  }

  else
  {
    v4 = sub_221F3DAD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F3DAD0()
{
  v1 = *(v0 + 424);

  v2 = v1;
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    _os_log_impl(&dword_221E93000, v3, v4, "Ignored invitation request on secure cloud relationship: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  else
  {

    v3 = *(v0 + 424);
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 320);

  [v8 insertEventWithType_];
  v10 = __swift_project_boxed_opaque_existential_0Tm((v9 + 56), *(v9 + 80));
  if ([v8 cloudType])
  {
    v11 = *(v0 + 408);
    v12 = sub_221FB61B8();
    v13 = sub_221FB65A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 408);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&dword_221E93000, v12, v13, "Attempting to save secure cloud relationship to legacy container %@", v15, 0xCu);
      sub_221EA0558(v16);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v18 = 11;
    swift_willThrow();
    v19 = *(v0 + 424);
    v20 = *(v0 + 392);

    v21 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    [v21 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 408);
    v25 = *(v0 + 392);
    v26 = *(v0 + 376);
    v27 = *__swift_project_boxed_opaque_existential_0Tm(v10 + 6, v10[9]);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 304;
    *(v0 + 88) = sub_221F3DFA0;
    v28 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_221EF4C50;
    *(v0 + 232) = &block_descriptor_5_1;
    *(v0 + 240) = v28;
    [v27 saveRelationship:v24 contact:v25 cloudKitGroup:v26 activity:0 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_221F3DEC8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  v3 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v3 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221F3DFA0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_221F3E268;
  }

  else
  {
    v2 = sub_221F3E0B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F3E0B0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);

  v3 = v2;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 392);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v3;
    _os_log_impl(&dword_221E93000, v4, v5, "Ignored invitation request on legacy relationship: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);

    v9 = *(v0 + 424);
  }

  else
  {
    v10 = *(v0 + 392);

    v9 = v3;
  }

  v11 = *(v0 + 368);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v11 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221F3E268(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 424);
  v3 = *(v1 + 392);

  v4 = *(v1 + 368);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 272), *(v1 + 296));
  [v4 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v1 + 272));

  v5 = *(v1 + 8);

  return v5();
}

uint64_t getEnumTagSinglePayload for InvitationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InvitationError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221F3E4CC()
{
  result = qword_27CFEC488;
  if (!qword_27CFEC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC488);
  }

  return result;
}

uint64_t sub_221F3E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 7040) = a5;
  *(v5 + 7032) = a4;
  return MEMORY[0x2822009F8](sub_221F3E544, 0, 0);
}

uint64_t sub_221F3E544()
{
  v1 = *(*(v0 + 7032) + OBJC_IVAR____TtC23ActivitySharingServices29SecureCloudActivationObserver_activationGateway);
  *(v0 + 7048) = v1;
  return MEMORY[0x2822009F8](sub_221F3E570, v1, 0);
}

uint64_t sub_221F3E570()
{
  sub_221FB35B8(*(v0 + 7040), (v0 + 6784));
  *(v0 + 7056) = 0;
  v1 = *(v0 + 7048);

  v2 = *(v1 + 112);
  sub_221F3EF6C(v0 + 6784, v0 + 6896);
  sub_221F9B3A4((v0 + 6784), v2, (v0 + 16));
  sub_221EE32F8(v0 + 16, v0 + 3400);
  swift_beginAccess();
  sub_221F3EE3C(v0 + 3400, v1 + 128);
  swift_endAccess();
  v3 = swift_task_alloc();
  *(v0 + 7064) = v3;
  *v3 = v0;
  v3[1] = sub_221F3E6E4;

  return sub_221FA1EC4();
}

uint64_t sub_221F3E6E4()
{
  v1 = *(*v0 + 7048);

  return MEMORY[0x2822009F8](sub_221F3E7F4, v1, 0);
}

uint64_t sub_221F3E7F4(uint64_t a1)
{
  sub_221EE304C(a1);
  sub_221F3EFC8(v1 + 6784);
  sub_221E95288(v1 + 16);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221F3E868()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 7056);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 7056);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to create Secure Cloud environment: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221F3EB2C()
{
  v1 = *(*(v0 + 3424) + OBJC_IVAR____TtC23ActivitySharingServices29SecureCloudActivationObserver_activationGateway);
  *(v0 + 3432) = v1;
  return MEMORY[0x2822009F8](sub_221F3EB58, v1, 0);
}

uint64_t sub_221F3EB58()
{
  v1 = v0[429];
  bzero(v0 + 2, 0xD38uLL);
  swift_beginAccess();
  sub_221F3EE3C((v0 + 2), v1 + 128);
  swift_endAccess();
  v2 = v0[1];

  return v2();
}

id sub_221F3ED20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureCloudActivationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221F3ED88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221F3EB0C(a1, v4, v5, v6);
}

uint64_t sub_221F3EE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC140, &qword_221FBA730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_221F3EEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E9544C;

  return sub_221F3E520(a1, v4, v5, v7, v6);
}

uint64_t sub_221F3F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221F3F198(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F3F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices19CloudOperationStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221F3F3F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F3F450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221F3F4C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_221F3F50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

id Daemon.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_221FB6618();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_221FB6608();
  MEMORY[0x28223BE20](v4);
  v34[2] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221FB6238();
  MEMORY[0x28223BE20](v6 - 8);
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x8000000221FC3610;
  v7 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(a1 + 72) = v7;
  v8 = sub_221FB5D08();
  v9 = v7;
  v10 = sub_221FB5CF8();
  *(a1 + 160) = v10;
  v11 = type metadata accessor for LanguageChangeObserver();
  v12 = swift_allocObject();
  v13 = v10;
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v12 + 116) = 1;
  *(a1 + 104) = v11;
  *(a1 + 112) = &off_28355C180;
  v14 = MEMORY[0x277CE9378];
  *(a1 + 80) = v12;
  *(a1 + 144) = v8;
  *(a1 + 152) = v14;
  *(a1 + 120) = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CE9550]) initWithHealthStore_];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v17 = result;
    v34[1] = v4;
    v18 = [result isAppleWatch];

    v19 = [objc_allocWithZone(MEMORY[0x277CE9528]) initWithDatabaseClient:v15 isWatch:v18];
    v20 = ASSecureCloudEnabled();
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      type metadata accessor for SecureCloudActivationGateway();
      v22 = swift_allocObject();
      v23 = v9;
      swift_defaultActor_initialize();
      v22[15] = MEMORY[0x277D84F90];
      bzero(v22 + 16, 0xD38uLL);
      v22[14] = v23;
      v24 = type metadata accessor for SecureCloudActivationObserver();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR____TtC23ActivitySharingServices29SecureCloudActivationObserver_activationGateway] = v22;
      v38.receiver = v25;
      v38.super_class = v24;

      v26 = objc_msgSendSuper2(&v38, sel_init);
      [v19 addObserver_];
      *(a1 + 168) = v26;
      *(a1 + 200) = &type metadata for SecureCloudDaemon;
      *(a1 + 208) = &off_283557C68;
      v27 = swift_allocObject();
      *(a1 + 176) = v27;
      v27[11] = v8;
      v28 = MEMORY[0x277CE9378];
      v27[12] = MEMORY[0x277CE9378];
      v27[8] = v13;
      v29 = (v27 + 8);
      v27[2] = v22;
      v27[6] = &type metadata for SecureCloudListener;
      v27[7] = &off_28355AA98;
      v30 = swift_allocObject();
      v27[3] = v30;
      v21 = MEMORY[0x277D84F90];
      sub_221EA4AB4(v29, v30 + 24);
      *(v30 + 16) = v22;
      v31 = v13;
    }

    else
    {
      *(a1 + 200) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 168) = 0u;
      v28 = MEMORY[0x277CE9378];
    }

    v40[3] = v8;
    v40[4] = v28;
    v40[0] = v13;
    *(a1 + 16) = v19;
    sub_221EA4AB4(v40, a1 + 32);
    sub_221F3FA70();
    v32 = v13;
    sub_221FB6228();
    v39 = v21;
    sub_221F3FABC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
    sub_221F3FB14();
    sub_221FB67D8();
    (*(v36 + 104))(v35, *MEMORY[0x277D85260], v37);
    v33 = sub_221FB6648();
    result = __swift_destroy_boxed_opaque_existential_0(v40);
    *(a1 + 24) = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_221F3FA70()
{
  result = qword_281306EB8;
  if (!qword_281306EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306EB8);
  }

  return result;
}

unint64_t sub_221F3FABC()
{
  result = qword_281306EC0;
  if (!qword_281306EC0)
  {
    sub_221FB6608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306EC0);
  }

  return result;
}

unint64_t sub_221F3FB14()
{
  result = qword_281306F48;
  if (!qword_281306F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC500, &qword_221FBCD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F48);
  }

  return result;
}

uint64_t sub_221F3FB98()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000061, 0x8000000221FC3660, 0x6574617669746361, 0xEA00000000002928);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_221F3FCA8;

  return sub_221F7EB14();
}

uint64_t sub_221F3FCA8()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v4;
  v2[1] = sub_221F3FDE8;

  return sub_221F39BBC();
}

uint64_t sub_221F3FDE8()
{

  return MEMORY[0x2822009F8](sub_221F3FEE4, 0, 0);
}

uint64_t sub_221F3FEE4()
{
  sub_221F40318(v0[7] + 176, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v1);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_221F40014;

    return sub_221E9D920();
  }

  else
  {
    sub_221F40388((v0 + 2));
    __swift_project_boxed_opaque_existential_0Tm((v0[7] + 80), *(v0[7] + 104));
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_221F401B8;

    return sub_221F58384();
  }
}

uint64_t sub_221F40014()
{

  return MEMORY[0x2822009F8](sub_221F40110, 0, 0);
}

uint64_t sub_221F40110()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_project_boxed_opaque_existential_0Tm((v0[7] + 80), *(v0[7] + 104));
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_221F401B8;

  return sub_221F58384();
}

uint64_t sub_221F401B8()
{

  return MEMORY[0x2822009F8](sub_221F402B4, 0, 0);
}

uint64_t sub_221F402B4()
{
  sub_221FB5CE8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F40318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC508, &qword_221FBCD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221F40388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC508, &qword_221FBCD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices25SecureCloudDaemonProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_221F4044C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_221F40494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F40540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 24) + **(a10 + 24));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_221E96070;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_221F406A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_221E963B4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F40800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 40) + **(a7 + 40));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_221E9544C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F40958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 48) + **(a7 + 48));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_221E963B4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F40AB0(void *a1, id a2, void *a3)
{
  if (a2)
  {
    v3 = a2;
LABEL_3:
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);
    return sub_221FB6498();
  }

  if (!a1)
  {
    v3 = a3;
    goto LABEL_3;
  }

  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);
  return sub_221FB64A8();
}

void sub_221F40BE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v8 = v2;
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D18730]);
    v4 = sub_221FB62E8();
    v5 = [v3 initWithServiceIdentifier_];

    v6 = [v5 setDelegate:v0 queue:*(v0 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_queue)];
    MEMORY[0x28223BE20](v6);
    v7 = v5;
    os_unfair_lock_lock((v1 + 24));
    sub_221F416F0((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }
}

void sub_221F40D44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = sub_221FB5BC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221FB5B48();
  v14 = sub_221FB5B58();
  (*(v11 + 8))(v13, v10);

  v15 = sub_221FB6278();

  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v9, v6);
  aBlock[4] = sub_221F41738;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F41064;
  aBlock[3] = &block_descriptor_22;
  v18 = _Block_copy(aBlock);

  [v20 sendInvitationToDestination:v21 expirationDate:v14 context:v22 options:v15 serverAcknowledgedBlock:v18];
  _Block_release(v18);
}

void sub_221F40FF0(void *a1, void *a2)
{
  sub_221F417D4();
  v4 = swift_allocError();
  sub_221F40AB0(a1, a2, v4);
}

void sub_221F41064(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_221F410FC(int a1, id a2, uint64_t a3, uint64_t a4)
{
  [a2 acceptInvitation:a3 withContext:a4 serverAcknowledgedBlock:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  return sub_221FB64A8();
}

uint64_t sub_221F4115C(int a1, id a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  [a2 *a5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  return sub_221FB64A8();
}

uint64_t sub_221F41230(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  v12 = __swift_project_boxed_opaque_existential_0Tm((a1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_invitationListener), *(a1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_invitationListener + 24));
  v13 = sub_221FB64C8();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_221F41394(v12, v20);
  v14 = swift_allocObject();
  v15 = v20[3];
  *(v14 + 72) = v20[2];
  *(v14 + 88) = v15;
  v16 = v20[5];
  *(v14 + 104) = v20[4];
  *(v14 + 120) = v16;
  v17 = v20[1];
  *(v14 + 40) = v20[0];
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a4;
  *(v14 + 56) = v17;
  v18 = a4;
  sub_221FA7A78(0, 0, v11, a6, v14);
}

uint64_t sub_221F413F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221EC3090(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_221F414B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221EC2E9C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_221F41570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221EC2BAC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_221F41630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221EC285C(a1, v4, v5, v6, (v1 + 5));
}

id sub_221F416F0(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

void sub_221F41738(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);

  sub_221F40FF0(a1, a2);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221F417D4()
{
  result = qword_27CFEC5A8;
  if (!qword_27CFEC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC5A8);
  }

  return result;
}

void sub_221F41828(uint64_t a1)
{
  v1 = sub_221FB62E8();
  IsEmail = ASDestinationIsEmail();

  v3 = sub_221FB62E8();
  if (IsEmail)
  {
    v4 = MEMORY[0x223DAD260]();

    if (v4)
    {
      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  IsPhoneNumber = ASDestinationIsPhoneNumber();

  if (!IsPhoneNumber)
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    return;
  }

  v6 = sub_221FB62E8();
  v7 = IDSCopyIDForPhoneNumber();

  if (!v7)
  {
    goto LABEL_9;
  }
}

uint64_t sub_221F41914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F41A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221F41B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F41C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

void sub_221F41DC4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v6 = 0;
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
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_221F41EC4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_221FB6898())
        {
          goto LABEL_19;
        }

        sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_221E96470(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}