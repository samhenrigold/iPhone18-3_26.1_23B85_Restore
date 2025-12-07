void *AccountProvider.__allocating_init(eventHub:accountStore:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[21] = 0;
  sub_265B3FF48(a3, (v6 + 14));
  v6[19] = a1;
  v6[20] = a2;
  return v6;
}

uint64_t sub_265B3FF48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_265B3FF84()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() SMUACDAccountStoreDidChangeNotification];
  [v1 addObserver:v0 selector:sel_onAccountChanged name:v2 object:0];
}

uint64_t AccountProviding.fetchCurrentAccount()(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  return (*(a2 + 32))(&v3, a1);
}

{
  *(v2 + 32) = 0;
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B6FFA8;

  return v7(v2 + 32, a1, a2);
}

uint64_t sub_265B40088(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v5 + 24) = 43;
  *(v5 + 32) = 2;
  *(v5 + 40) = 39;
  *(v5 + 48) = &unk_265B79BF8;
  *(v5 + 56) = v4;
  sub_265B401DC();

  return sub_265B76BB0();
}

uint64_t sub_265B40168()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265B401A0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

unint64_t sub_265B401DC()
{
  result = qword_280CEB920[0];
  if (!qword_280CEB920[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280CEB920);
  }

  return result;
}

unint64_t sub_265B40228(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26676C0E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26676C0E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_265B402B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265B40798(v11, 0, 0, 1, a1, a2);
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
    sub_265B4073C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_265B40380(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B4221C;

  return sub_265B40438(a1, v4);
}

uint64_t sub_265B40438(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B42350;

  return v6(a1);
}

uint64_t sub_265B40574()
{
  v1 = [*(v0 + 152) ams_mediaType];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = [*(v0 + 152) ams:v1 activeiTunesAccountForMediaType:?];
    *(v0 + 168) = v2;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_265B413A8;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AE8, &qword_265B79398);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265B41010;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v3;
    [v2 resultWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_265B4ACC0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_265B4073C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_265B40798(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265B4D6FC(a5, a6);
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
    result = sub_265B77460();
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_265B408F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B4096C()
{
  v1 = *(v0 + 144);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 selectedUserProfile];
  *(v0 + 72) = v3;

  if ((v1 & 1) == 0)
  {
    if (v3)
    {
      v19 = [swift_unknownObjectRetain() iTunesAltDSID];
      if (v19)
      {
        v20 = *(v0 + 64);
        v21 = v19;
        v22 = sub_265B77030();
        v24 = v23;

        *(v0 + 80) = v24;
        v25 = v20[17];
        v26 = v20[18];
        __swift_project_boxed_opaque_existential_1(v20 + 14, v25);
        v42 = (*(v26 + 8) + **(v26 + 8));
        v27 = swift_task_alloc();
        *(v0 + 88) = v27;
        *v27 = v0;
        v27[1] = sub_265B71AA0;
        v13 = v22;
        v14 = v24;
        v15 = v25;
        v16 = v26;
        v17 = v42;

        return v17(v13, v14, v15, v16);
      }

      goto LABEL_12;
    }

    v37 = *(v0 + 64);
    v38 = v37[17];
    v39 = v37[18];
    __swift_project_boxed_opaque_existential_1(v37 + 14, v38);
    v44 = (*(v39 + 16) + **(v39 + 16));
    v40 = swift_task_alloc();
    *(v0 + 104) = v40;
    *v40 = v0;
    v40[1] = sub_265B41790;
    v34 = v38;
    v35 = v39;
    v36 = v44;

    return v36(v34, v35);
  }

  if (!v3)
  {
    v30 = *(v0 + 64);
    v31 = v30[17];
    v32 = v30[18];
    __swift_project_boxed_opaque_existential_1(v30 + 14, v31);
    v43 = (*(v32 + 24) + **(v32 + 24));
    v33 = swift_task_alloc();
    *(v0 + 136) = v33;
    *v33 = v0;
    v33[1] = sub_265B71DFC;
    v34 = v31;
    v35 = v32;
    v36 = v43;

    return v36(v34, v35);
  }

  v4 = [swift_unknownObjectRetain() iCloudAltDSID];
  if (v4)
  {
    v5 = *(v0 + 64);
    v6 = v4;
    v7 = sub_265B77030();
    v9 = v8;

    *(v0 + 112) = v9;
    v10 = v5[17];
    v11 = v5[18];
    __swift_project_boxed_opaque_existential_1(v5 + 14, v10);
    v41 = (*(v11 + 32) + **(v11 + 32));
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_265B71C4C;
    v13 = v7;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v41;

    return v17(v13, v14, v15, v16);
  }

LABEL_12:
  sub_265B4ACC0();
  swift_allocError();
  *v28 = 1;
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v29 = *(v0 + 8);

  return v29();
}

uint64_t AccountProvider.fetchCurrentAccount(accountType:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 144) = *a1;
  return MEMORY[0x2822009F8](sub_265B4096C, v1, 0);
}

uint64_t sub_265B40F80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B41608;

  return ACAccountStore.activeiTunesAccount()();
}

uint64_t sub_265B41010(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_265B41194(uint64_t a1)
{
  sub_265B76520();
  if (v1 <= 0x3F)
  {
    sub_265B41218(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B41218(uint64_t a1)
{
  if (!qword_280CEBA50)
  {
    sub_265B76EF0();
    v1 = sub_265B77300();
    if (!v2)
    {
      atomic_store(v1, &qword_280CEBA50);
    }
  }
}

uint64_t type metadata accessor for MultiUserGroupActivity(uint64_t a1)
{
  result = qword_280CEB9A8;
  if (!qword_280CEB9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265B412BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265B41370(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265B413A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_265B5CFF8;
  }

  else
  {
    v2 = sub_265B414B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B414B8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_265B41548(uint64_t a1)
{
  result = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(319);
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

uint64_t sub_265B41608(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_265B41708(uint64_t a1)
{
  sub_265B418B0(319);
  if (v1 <= 0x3F)
  {
    sub_265B41A64(319);
    if (v2 <= 0x3F)
    {
      sub_265B41AC0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_265B41790(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_265B418B0(uint64_t a1)
{
  if (!qword_280CEB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035AC0, "2$");
    sub_265B76390();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280CEB650);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265B41970()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_265B41A64(uint64_t a1)
{
  if (!qword_280CEB658)
  {
    sub_265B766C0();
    v1 = sub_265B771B0();
    if (!v2)
    {
      atomic_store(v1, &qword_280CEB658);
    }
  }
}

unint64_t sub_265B41AC0()
{
  result = qword_280CEB640;
  if (!qword_280CEB640)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280CEB640);
  }

  return result;
}

uint64_t SummaryShelfLockupDescriptorsCache.__allocating_init(catalogClient:contentAvailabilityClient:eventHub:networkEvaluator:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  swift_storeEnumTagMultiPayload();
  sub_265B41D44(a1, v13 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient);
  sub_265B41D44(a2, v13 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient);
  v14 = (v13 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  *v14 = a3;
  v14[1] = a4;
  sub_265B41D44(a5, v13 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator);
  sub_265B76CC0();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v13 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken) = sub_265B76CB0();
  v15 = sub_265B77230();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v13;

  sub_265B566AC(0, 0, v12, &unk_265B78FE0, v16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_265B41D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265B41DA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B4221C;

  return sub_265B40438(a1, v4);
}

uint64_t sub_265B41E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B41F14(a1, v4, v5, v6);
}

uint64_t sub_265B41F34()
{
  sub_265B41F94();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B41F94()
{
  swift_getObjectType();
  sub_265B76E00();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_265B76E10();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_265B76C60();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_265B76DD0();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_265B421E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t SummaryShelfLockupDescriptorsCache.__deallocating_deinit()
{
  sub_265B422F4(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265B422F4(uint64_t a1)
{
  v2 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B42350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AchievementProgressEvaluator.makeProgressUpdates(forTemplates:)(unint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  sub_265B76DF0();
  v6 = v1;
  v3 = sub_265B4DF9C(sub_265B4DF5C, v5, a1);
  __swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  sub_265B76DE0();
  return v3;
}

id sub_265B42574(void *a1)
{
  v3 = sub_265B76F60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = [a1 progressExpression];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  sub_265B77030();
  v13 = v12;

  v14 = [a1 goalExpression];
  if (!v14)
  {
LABEL_7:

LABEL_8:
    sub_265B76E20();
    v20 = a1;
    v21 = sub_265B76F50();
    v22 = sub_265B77270();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v56 = v24;
      *v23 = 136315138;
      v25 = [v20 uniqueName];
      if (v25)
      {
        v26 = v25;
        v27 = sub_265B77030();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      *&v58[0] = v27;
      *(&v58[0] + 1) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
      v30 = sub_265B772E0();
      v32 = v31;

      v33 = sub_265B402B4(v30, v32, &v56);

      *(v23 + 4) = v33;
      _os_log_impl(&dword_265B3E000, v21, v22, "Progress: %s no progressExpression/goalExpression/canonicalUnit", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26676C0C0](v24, -1, -1);
      MEMORY[0x26676C0C0](v23, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  v51 = v3;
  v52 = v13;
  v15 = v14;
  sub_265B77030();

  v16 = [a1 canonicalUnit];
  if (!v16)
  {

    v3 = v51;
    goto LABEL_7;
  }

  v50 = v16;
  sub_265B42B70();
  v17 = sub_265B77260();
  v18 = sub_265B77260();
  v19 = *v1;
  v49 = v17;
  if ([v17 expressionValueWithObject:v19 context:0])
  {
    sub_265B77360();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  v34 = v18;
  if ([v18 expressionValueWithObject:v19 context:0])
  {
    sub_265B77360();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v35 = v50;
  v36 = v51;
  v56 = v54;
  v57 = v55;
  sub_265B42BBC(v58, &v54);
  if (!*(&v55 + 1))
  {
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:

    goto LABEL_26;
  }

  v37 = v53;
  sub_265B42BBC(&v56, &v54);
  if (!*(&v55 + 1))
  {
LABEL_24:

    sub_265B42C2C(&v54);
LABEL_26:
    sub_265B76E20();
    v45 = sub_265B76F50();
    v46 = sub_265B77270();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_265B3E000, v45, v46, "No progressValue or goalValue, returning nil", v47, 2u);
      MEMORY[0x26676C0C0](v47, -1, -1);
    }

    (*(v4 + 8))(v9, v36);
    sub_265B42C2C(&v56);
    sub_265B42C2C(v58);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v38 = v53;
  v39 = objc_opt_self();
  v40 = [v39 quantityWithUnit:v35 doubleValue:v37];
  v41 = [v39 quantityWithUnit:v35 doubleValue:v38];
  result = [a1 uniqueName];
  if (result)
  {
    v43 = result;

    v44 = [objc_allocWithZone(MEMORY[0x277CE8CC0]) initWithTemplateUniqueName:v43 progressQuantity:v40 goalQuantity:v41];

    sub_265B42C2C(&v56);
    sub_265B42C2C(v58);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_265B42B70()
{
  result = qword_280CEB648;
  if (!qword_280CEB648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CEB648);
  }

  return result;
}

uint64_t sub_265B42BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B42C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B42C94(void **a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_265B42D6C(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t *sub_265B42D24(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_265B42D6C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_265B76F60();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E40();
  v16 = sub_265B76F50();
  v17 = sub_265B77280();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_265B77440();
    v23 = sub_265B402B4(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_265B3E000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x26676C0C0](v24, -1, -1);
    MEMORY[0x26676C0C0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  if (v10)
  {
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
    return sub_265B771D0();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
    return sub_265B771E0();
  }
}

uint64_t sub_265B42FC8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {

    v3 = sub_265B57FD4;
    v4 = 0;
  }

  else
  {
    v6 = v2[35];
    v5 = v2[36];
    v7 = v2[34];
    v8 = v2[17];
    v2[40] = v2[14];

    (*(v6 + 8))(v5, v7);
    v3 = sub_265B4384C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t static ACHAchievementProgressUpdate.filterForNextEarnableProgressUpdates(from:templates:)(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v86 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v4 = a2;
    v39 = *(a1 + 32);
    v40 = v39 & 0x3F;
    v3 = ((1 << v39) + 63) >> 6;
    v11 = (8 * v3);

    if (v40 > 0xD)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v71[1] = v71;
      v72 = v3;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v73 = v71 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v73, v11);
      v74 = 0;
      v42 = 0;
      v43 = v2 + 56;
      v44 = 1 << *(v2 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v2 + 56);
      v47 = (v44 + 63) >> 6;
      v4 = 0x279BB9000uLL;
      while (v46)
      {
        v48 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
LABEL_47:
        v51 = v48 | (v42 << 6);
        v52 = *(v2 + 48);
        v75 = v51;
        v53 = *(v52 + 8 * v51);
        v54 = [v53 *(v4 + 3808)];
        v55 = sub_265B77030();
        v3 = v56;

        v82 = v55;
        v83 = v3;
        v80 = 45;
        v81 = 0xE100000000000000;
        sub_265B43C20();
        v11 = sub_265B77320();

        if (v11[2])
        {
          v76 = v53;
          v77 = v46;
          v3 = v11[4];
          v57 = v11[5];

          sub_265B76D80();
          v58 = sub_265B76D00();
          v11 = v59;
          if (v3 == v58 && v57 == v59)
          {

LABEL_61:

            v46 = v77;
LABEL_62:
            *&v73[(v75 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v75;
            if (__OFADD__(v74++, 1))
            {
              __break(1u);
LABEL_65:
              v3 = sub_265B43EC4(v73, v72, v74, v2);
              goto LABEL_66;
            }
          }

          else
          {
            v61 = v4;
            v62 = v2;
            v63 = sub_265B77580();

            if (v63)
            {

LABEL_60:
              v11 = v57;
              v2 = v62;
              v4 = v61;
              goto LABEL_61;
            }

            v64 = sub_265B76CF0();
            v11 = v65;
            if (v3 == v64 && v57 == v65)
            {

              goto LABEL_60;
            }

            v66 = sub_265B77580();

            v2 = v62;
            v4 = v61;
            v46 = v77;
            if (v66)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
        }
      }

      v49 = v42;
      while (1)
      {
        v42 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v42 >= v47)
        {
          goto LABEL_65;
        }

        v50 = *(v43 + 8 * v42);
        ++v49;
        if (v50)
        {
          v48 = __clz(__rbit64(v50));
          v46 = (v50 - 1) & v50;
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v70 = swift_slowAlloc();
        v3 = sub_265B66B08(v70, v3, v2, sub_265B66740, 0);
        MEMORY[0x26676C0C0](v70, -1, -1);
        goto LABEL_67;
      }
    }
  }

  v3 = MEMORY[0x277D84FA0];
  v85 = MEMORY[0x277D84FA0];

  v4 = sub_265B773A0();
  v5 = sub_265B773F0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_265B66CFC();
    v8 = v6;
    v9 = MEMORY[0x277D84F68];
    v10 = 0x279BB9000uLL;
    v2 = 45;
    do
    {
      v82 = v8;
      swift_dynamicCast();
      v18 = [v84[0] *(v10 + 3808)];
      v19 = sub_265B77030();
      v21 = v20;

      v82 = v19;
      v83 = v21;
      v80 = 45;
      v81 = 0xE100000000000000;
      sub_265B43C20();
      v22 = sub_265B77320();

      if (v22[2])
      {
        v23 = v22[4];
        v24 = v22[5];

        sub_265B76D80();
        if (v23 == sub_265B76D00() && v24 == v25)
        {
          goto LABEL_17;
        }

        v27 = v7;
        v28 = v10;
        v29 = v9;
        v30 = sub_265B77580();

        if (v30)
        {
          v9 = v29;
          v10 = v28;
          v7 = v27;
          v2 = 45;
          goto LABEL_18;
        }

        if (v23 == sub_265B76CF0() && v24 == v37)
        {
          v9 = v29;
          v10 = v28;
          v7 = v27;
          v2 = 45;
LABEL_17:

LABEL_18:

LABEL_19:
          v31 = v84[0];
          v32 = *(v3 + 16);
          if (*(v3 + 24) <= v32)
          {
            sub_265B4FB34(v32 + 1);
          }

          v3 = v85;
          v11 = v84[0];
          v12 = sub_265B772C0();
          v13 = v85 + 56;
          v14 = -1 << *(v85 + 32);
          v15 = v12 & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~*(v85 + 56 + 8 * (v15 >> 6))) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~*(v85 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = 0;
            v34 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v34 && (v33 & 1) != 0)
              {
                __break(1u);
                goto LABEL_68;
              }

              v35 = v16 == v34;
              if (v16 == v34)
              {
                v16 = 0;
              }

              v33 |= v35;
              v36 = *(v13 + 8 * v16);
            }

            while (v36 == -1);
            v17 = __clz(__rbit64(~v36)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v3 + 48) + 8 * v17) = v31;
          ++*(v3 + 16);
          goto LABEL_7;
        }

        v38 = sub_265B77580();

        v9 = v29;
        v10 = v28;
        v7 = v27;
        v2 = 45;
        if (v38)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

LABEL_7:
      v8 = sub_265B773F0();
    }

    while (v8);
  }

LABEL_66:
  v4 = v79;
LABEL_67:

  v68 = sub_265B43F30(v3, v4);

  return v68;
}

uint64_t sub_265B4384C()
{
  v1 = v0[29];
  v2 = v0[17];
  v3 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v2 + v3, v1);
  if (swift_getEnumCaseMultiPayload())
  {
    v4 = v0[29];

    sub_265B422F4(v4);
  }

  else
  {
    v5 = v0[33];
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[29];
    v9 = *v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
    (*(v6 + 32))(v5, &v8[*(v10 + 48)], v7);
    v11 = sub_265B76360();
    v12 = v0[40];
    if (v11)
    {
      v13 = v0[27];
      v14 = v0[24];
      v15 = v0[25];
      v16 = v0[23];
      sub_265B76E50();
      sub_265B76F40();
      (*(v14 + 8))(v15, v16);
      *v13 = v12;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();

      sub_265B43E60(v13, v2 + v3);
      swift_endAccess();
      v17 = *(v9 + 16);
      if (v17)
      {
        v18 = v0[20];
        v21 = *(v18 + 16);
        v19 = v18 + 16;
        v20 = v21;
        v22 = v9 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
        v23 = *(v19 + 56);
        do
        {
          v24 = v0[40];
          v25 = v0[22];
          v26 = v0[19];
          v20(v25, v22, v26);
          v0[16] = v24;

          sub_265B771E0();
          (*(v19 - 8))(v25, v26);
          v22 += v23;
          --v17;
        }

        while (v17);
      }

      v30 = v0[33];
      v31 = v0[30];
      v32 = v0[31];
      swift_getObjectType();
      sub_265B43ED8();
      sub_265B76C70();

      (*(v32 + 8))(v30, v31);
    }

    else
    {
      v27 = v0[33];
      v29 = v0[30];
      v28 = v0[31];

      (*(v28 + 8))(v27, v29);
    }
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_265B43BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265B43C20()
{
  result = qword_280CEB660;
  if (!qword_280CEB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB660);
  }

  return result;
}

uint64_t sub_265B43C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_265B77420();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_265B772C0();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_265B43E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_265B43ED8()
{
  result = qword_280CEB668[0];
  if (!qword_280CEB668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CEB668);
  }

  return result;
}

uint64_t sub_265B43F30(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_265B44130(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];

  sub_265B773A0();
  if (sub_265B773F0())
  {
    sub_265B66CFC();
    do
    {
      swift_dynamicCast();
      if (ACHAchievementProgressUpdate.isNextEarnable(for:)(a2))
      {
        v4 = *(v3 + 16);
        if (*(v3 + 24) <= v4)
        {
          sub_265B4FB34(v4 + 1);
        }

        v3 = v16;
        result = sub_265B772C0();
        v6 = v16 + 56;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v9 == v12;
            if (v9 == v12)
            {
              v9 = 0;
            }

            v11 |= v13;
            v14 = *(v6 + 8 * v9);
          }

          while (v14 == -1);
          v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v16 + 48) + 8 * v10) = v15;
        ++*(v16 + 16);
      }

      else
      {
      }
    }

    while (sub_265B773F0());
  }

  return v3;
}

uint64_t sub_265B44130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v8;
    v26 = v3;
    v24 = &v24;
    MEMORY[0x28223BE20](v10);
    v27 = &v24 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v9);
    v28 = 0;
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v18 = v15 | (v11 << 6);
      v9 = *(*(a1 + 48) + 8 * v18);
      v19 = ACHAchievementProgressUpdate.isNextEarnable(for:)(a2);

      if (v19)
      {
        *&v27[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_265B43EC4(v27, v25, v28, a1);

          return v21;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_16;
      }

      v17 = *(v3 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v21 = sub_265B66A6C(v23, v8, a1, a2);

  MEMORY[0x26676C0C0](v23, -1, -1);

  return v21;
}

uint64_t sub_265B443A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ACHAchievementProgressUpdate.isNextEarnable(for:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_265B76F60();
  v6 = MEMORY[0x28223BE20](v5);
  v83 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v80 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v80 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v80 = &v80 - v13;
  v84 = v12;
  v85 = v14;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_265B773A0();
    sub_265B4E9FC();
    sub_265B4EA48();
    sub_265B77250();
    a1 = v92[1];
    v15 = v92[2];
    v16 = v92[3];
    v17 = v92[4];
    v18 = v92[5];
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(a1 + 56);

    v17 = 0;
  }

  v86 = v16;
  v22 = (v16 + 64) >> 6;
  for (i = a1; ; a1 = i)
  {
    if (a1 < 0)
    {
      v28 = sub_265B773F0();
      if (!v28 || (v91 = v28, sub_265B4E9FC(), swift_dynamicCast(), v27 = v92[0], v25 = v17, v26 = v18, !v92[0]))
      {
LABEL_27:
        sub_265B45764(a1);
        v38 = v83;
        sub_265B76E20();
        v39 = v3;
        v40 = sub_265B76F50();
        v41 = sub_265B77280();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v92[0] = v43;
          *v42 = 136315138;
          v44 = [v39 templateUniqueName];
          v45 = sub_265B77030();
          v47 = v46;

          v48 = sub_265B402B4(v45, v47, v92);

          *(v42 + 4) = v48;
          _os_log_impl(&dword_265B3E000, v40, v41, "No matching template for %s, marking progress update as not earnable", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x26676C0C0](v43, -1, -1);
          MEMORY[0x26676C0C0](v42, -1, -1);
        }

LABEL_30:
        (*(v85 + 8))(v38, v84);
        return 0;
      }
    }

    else
    {
      v23 = v17;
      v24 = v18;
      v25 = v17;
      if (!v18)
      {
        while (1)
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v25 >= v22)
          {
            goto LABEL_27;
          }

          v24 = *(v15 + 8 * v25);
          ++v23;
          if (v24)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_15:
      v26 = (v24 - 1) & v24;
      v27 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
      if (!v27)
      {
        goto LABEL_27;
      }
    }

    v90 = v27;
    v29 = [v27 uniqueName];
    v87 = v17;
    v88 = v18;
    if (v29)
    {
      v30 = v29;
      v31 = sub_265B77030();
      v16 = v32;
    }

    else
    {
      v31 = 0;
      v16 = 0;
    }

    v2 = v3;
    v33 = [v3 templateUniqueName];
    v34 = sub_265B77030();
    v36 = v35;

    if (!v16)
    {

      v3 = v2;
      goto LABEL_9;
    }

    if (v31 == v34 && v16 == v36)
    {
      break;
    }

    v37 = sub_265B77580();

    v3 = v2;
    if (v37)
    {
      goto LABEL_33;
    }

LABEL_9:

    v17 = v25;
    v18 = v26;
  }

  v3 = v2;
LABEL_33:
  sub_265B45764(i);
  v50 = v90;
  v51 = sub_265B44DA0();
  v52 = [v3 progressQuantity];
  if (!v52 || (v53 = v52, sub_265B45A6C(), v55 = v54, v53, (v56 = [v3 goalQuantity]) == 0))
  {
    v38 = v81;
    sub_265B76E20();
    v69 = v3;
    v70 = sub_265B76F50();
    v71 = sub_265B77280();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v50;
      v74 = swift_slowAlloc();
      v92[0] = v74;
      *v72 = 136315138;
      v75 = [v69 templateUniqueName];
      v76 = sub_265B77030();
      v78 = v77;

      v79 = sub_265B402B4(v76, v78, v92);

      *(v72 + 4) = v79;
      _os_log_impl(&dword_265B3E000, v70, v71, "Required values not found for earnable evaluation of %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x26676C0C0](v74, -1, -1);
      MEMORY[0x26676C0C0](v72, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v57 = v56;
  sub_265B45A6C();
  v59 = v58;

  if (v55 < v51 || v55 >= v59)
  {

    return 0;
  }

  v2 = v80;
  sub_265B76E20();
  v60 = v3;
  v16 = sub_265B76F50();
  v61 = sub_265B77280();

  if (os_log_type_enabled(v16, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v92[0] = v63;
    *v62 = 136315906;
    v64 = [v60 templateUniqueName];
    v65 = sub_265B77030();
    v67 = v66;

    v68 = sub_265B402B4(v65, v67, v92);

    *(v62 + 4) = v68;
    *(v62 + 12) = 2048;
    *(v62 + 14) = v51;
    *(v62 + 22) = 2048;
    *(v62 + 24) = v55;
    *(v62 + 32) = 2048;
    *(v62 + 34) = v59;
    _os_log_impl(&dword_265B3E000, v16, v61, "Found next earnable progress update (%s) with prerequisiteGoalValue: %ld progressValue: %ld goalValue: %ld", v62, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x26676C0C0](v63, -1, -1);
    MEMORY[0x26676C0C0](v62, -1, -1);

    (*(v85 + 8))(v80, v84);
    return 1;
  }

LABEL_44:

  (*(v85 + 8))(v2, v84);
  return 1;
}

unint64_t sub_265B44DA0()
{
  v2 = v0;
  v3 = sub_265B76F60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v99 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v99 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v99 - v14;
  v16 = [v0 prerequisiteTemplateName];
  v106 = v3;
  if (!v16)
  {
LABEL_7:
    v102 = v1;
    sub_265B76E20();
    v25 = v2;
    v26 = sub_265B76F50();
    v27 = sub_265B77280();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v103[0] = v29;
      *v28 = 136315138;
      v30 = [v25 uniqueName];
      if (v30)
      {
        v31 = v30;
        v32 = sub_265B77030();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v104 = v32;
      v105 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
      v51 = sub_265B772E0();
      v53 = v52;

      v54 = sub_265B402B4(v51, v53, v103);

      *(v28 + 4) = v54;
      _os_log_impl(&dword_265B3E000, v26, v27, "No prerequisiteNameComponents for %s, returning 0", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26676C0C0](v29, -1, -1);
      MEMORY[0x26676C0C0](v28, -1, -1);

      (*(v4 + 8))(v7, v106);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return 0;
  }

  v100 = v10;
  v101 = v4;
  v17 = v16;
  v18 = sub_265B77030();
  v20 = v19;

  v104 = v18;
  v105 = v20;
  v103[0] = 45;
  v103[1] = 0xE100000000000000;
  sub_265B43C20();
  v21 = sub_265B77320();

  if (!v21[2])
  {

    v4 = v101;
    v3 = v106;
    goto LABEL_7;
  }

  v22 = v21[4];
  v23 = v21[5];
  sub_265B76D80();

  if (v22 == sub_265B76D00() && v23 == v24)
  {

LABEL_12:

    if (v21[2] < 3uLL)
    {
    }

    else
    {
      v36 = v21[8];
      v37 = v21[9];

      result = sub_265B4576C(v36, v37);
      if ((v39 & 1) == 0)
      {
        return result;
      }
    }

    sub_265B76E20();
    v40 = v2;
    v41 = sub_265B76F50();
    v42 = sub_265B77280();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v103[0] = v44;
      *v43 = 136315138;
      v45 = [v40 uniqueName];
      v46 = v101;
      if (v45)
      {
        v47 = v45;
        v48 = sub_265B77030();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v104 = v48;
      v105 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
      v60 = sub_265B772E0();
      v62 = v61;

      v63 = sub_265B402B4(v60, v62, v103);

      *(v43 + 4) = v63;
      _os_log_impl(&dword_265B3E000, v41, v42, "Could not fetch previous goal value for modality award %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x26676C0C0](v44, -1, -1);
      MEMORY[0x26676C0C0](v43, -1, -1);

      (*(v46 + 8))(v15, v106);
    }

    else
    {

      (*(v101 + 8))(v15, v106);
    }

    goto LABEL_32;
  }

  v102 = v1;
  v35 = sub_265B77580();

  if (v35)
  {
    goto LABEL_12;
  }

  if (v22 != sub_265B76CF0() || v23 != v55)
  {
    v56 = sub_265B77580();

    if (v56)
    {
      goto LABEL_27;
    }

    if (v22 != sub_265B76D40() || v23 != v77)
    {
      v78 = sub_265B77580();

      if (v78)
      {
        return 0;
      }

      v83 = v100;
      sub_265B76E20();
      v84 = v2;
      v85 = sub_265B76F50();
      v86 = sub_265B77280();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v103[0] = v88;
        *v87 = 136315138;
        v89 = [v84 uniqueName];
        v90 = v101;
        if (v89)
        {
          v91 = v89;
          v92 = sub_265B77030();
          v94 = v93;
        }

        else
        {
          v92 = 0;
          v94 = 0;
        }

        v104 = v92;
        v105 = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
        v95 = sub_265B772E0();
        v97 = v96;

        v98 = sub_265B402B4(v95, v97, v103);

        *(v87 + 4) = v98;
        _os_log_impl(&dword_265B3E000, v85, v86, "Not a lifetime or modality lifetime award: %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x26676C0C0](v88, -1, -1);
        MEMORY[0x26676C0C0](v87, -1, -1);

        (*(v90 + 8))(v100, v106);
      }

      else
      {

        (*(v101 + 8))(v83, v106);
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_27:

  if (v21[2] < 2uLL)
  {
  }

  else
  {
    v57 = v21[6];
    v58 = v21[7];

    result = sub_265B4576C(v57, v58);
    if ((v59 & 1) == 0)
    {
      return result;
    }
  }

  sub_265B76E20();
  v66 = v2;
  v67 = sub_265B76F50();
  v68 = sub_265B77280();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v103[0] = v70;
    *v69 = 136315138;
    v71 = [v66 uniqueName];
    v72 = v101;
    if (v71)
    {
      v73 = v71;
      v74 = sub_265B77030();
      v76 = v75;
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    v104 = v74;
    v105 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
    v79 = sub_265B772E0();
    v81 = v80;

    v82 = sub_265B402B4(v79, v81, v103);

    *(v69 + 4) = v82;
    _os_log_impl(&dword_265B3E000, v67, v68, "Could not fetch previous goal value for modality award %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x26676C0C0](v70, -1, -1);
    MEMORY[0x26676C0C0](v69, -1, -1);

    (*(v72 + 8))(v13, v106);
  }

  else
  {

    (*(v101 + 8))(v13, v106);
  }

LABEL_32:
  v64 = sub_265B764D0();
  sub_265B5046C();
  swift_allocError();
  (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D50D10], v64);
  return swift_willThrow();
}

unint64_t sub_265B4576C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_265B77460();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_265B64F1C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_265B45A6C()
{
  v1 = v0;
  v2 = sub_265B76F60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() countUnit];
  [v1 doubleValueForUnit_];
  v8 = v7;

  if (fabs(v8) >= 9.22337204e18)
  {
    sub_265B76E20();
    v9 = v1;
    v10 = sub_265B76F50();
    v11 = sub_265B77280();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v12 = 136315394;
      v13 = v9;
      v14 = [v13 description];
      v15 = sub_265B77030();
      v17 = v16;

      v18 = sub_265B402B4(v15, v17, &v21);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v8;
      _os_log_impl(&dword_265B3E000, v10, v11, "HKQuantity %s had out of bounds doubleValue: %f, returning 0", v12, 0x16u);
      v19 = v20;
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26676C0C0](v19, -1, -1);
      MEMORY[0x26676C0C0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else if (v8 <= -9.22337204e18)
  {
    __break(1u);
  }
}

uint64_t sub_265B45CD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B45D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265B76520();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265B45E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265B76520();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_265B45F18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265B45F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B45FF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265B4609C()
{
  v1 = sub_265B76390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B46168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B461FC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B4623C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B46280()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B462B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B462F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B46338()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B46378()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B463B8()
{
  MEMORY[0x26676C1B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B463F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B46430()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B46474()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B464B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B464F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B46580()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B465B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B465F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265B46630()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B46678()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B466B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_265B46734()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_265B766B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_265B46878()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B468B8()
{
  v1 = sub_265B766B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B46980()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B469D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t static AccountChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for AccountChanged(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccountChanged(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for HTTPCookiePropertyKey()
{
  if (!qword_280035740)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280035740);
    }
  }
}

uint64_t sub_265B46B7C()
{
  v0 = sub_265B77030();
  v1 = MEMORY[0x26676B4C0](v0);

  return v1;
}

uint64_t sub_265B46BB8(uint64_t a1)
{
  sub_265B77030();
  sub_265B77070();
}

uint64_t sub_265B46C0C(uint64_t a1)
{
  sub_265B77030();
  sub_265B77600();
  sub_265B77070();
  v1 = sub_265B77620();

  return v1;
}

uint64_t sub_265B46C88(uint64_t a1, id *a2)
{
  result = sub_265B77010();
  *a2 = 0;
  return result;
}

uint64_t sub_265B46D00(uint64_t a1, id *a2)
{
  v3 = sub_265B77020();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_265B46D80@<X0>(uint64_t *a2@<X8>)
{
  sub_265B77030();
  v3 = sub_265B77000();

  *a2 = v3;
  return result;
}

uint64_t sub_265B46DC4(void *a1, uint64_t *a2)
{
  v2 = sub_265B77030();
  v4 = v3;
  if (v2 == sub_265B77030() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_265B77580();
  }

  return v7 & 1;
}

uint64_t sub_265B46E4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_265B77000();

  *a2 = v3;
  return result;
}

uint64_t sub_265B46E94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265B77030();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_265B46EC0(uint64_t a1)
{
  v2 = sub_265B46FF4(&qword_280035760, &unk_265B782E4);
  v3 = sub_265B46FF4(&qword_280035768, &unk_265B78238);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_265B46FF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTTPCookiePropertyKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WristState.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

uint64_t sub_265B470DC()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

uint64_t sub_265B47150(uint64_t a1)
{
  v2 = *v1;
  sub_265B77600();
  MEMORY[0x26676B9F0](v2);
  return sub_265B77620();
}

unint64_t sub_265B47198()
{
  result = qword_280035830;
  if (!qword_280035830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WristState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WristState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WristStateObserver.__allocating_init(eventHub:)(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_allocObject();
}

uint64_t WristStateObserver.queryState()()
{
  sub_265B47454();
  v0 = swift_allocError();
  *(swift_allocObject() + 16) = v0;

  return sub_265B76BC0();
}

unint64_t sub_265B47454()
{
  result = qword_280035838;
  if (!qword_280035838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035838);
  }

  return result;
}

uint64_t sub_265B474A8()
{
  sub_265B47454();
  v0 = swift_allocError();
  *(swift_allocObject() + 16) = v0;

  return sub_265B76BC0();
}

id sub_265B4759C(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  return v2;
}

uint64_t MultiUserGroupActivity.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265B76520();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserGroupActivity.activityMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MultiUserGroupActivity(0) + 20);

  return sub_265B476E4(v3, a1);
}

uint64_t sub_265B476E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t MultiUserGroupActivity.activityMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MultiUserGroupActivity(0) + 20);

  return sub_265B477E0(a1, v3);
}

uint64_t sub_265B477E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserGroupActivity.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MultiUserGroupActivity(0) + 20);
  v5 = sub_265B76EF0();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = sub_265B76520();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2, a1, v6);
}

uint64_t MultiUserGroupActivity.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for MultiUserGroupActivity(0);
  sub_265B476E4(v1 + *(v6 + 20), v5);
  v7 = sub_265B76EF0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_265B47A7C(v5);
  return sub_265B47AE4();
}

uint64_t sub_265B47A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B47AE4()
{
  v0 = sub_265B76F30();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A0, &qword_265B78680);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = sub_265B76E90();
  MEMORY[0x28223BE20](v4 - 8);
  sub_265B76EE0();
  v5 = sub_265B76510();
  MEMORY[0x26676B2B0](v5);
  sub_265B76E80();
  sub_265B76EC0();
  sub_265B764E0();
  v6 = sub_265B762E0();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_265B76EA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A8, &qword_265B78688);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265B78400;
  sub_265B76F20();
  v9[1] = v7;
  sub_265B412BC(&qword_2800358B0, MEMORY[0x277CCB270], MEMORY[0x277CCB278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358B8, &unk_265B78690);
  sub_265B48A60();
  sub_265B77370();
  return sub_265B76EB0();
}

uint64_t sub_265B47D90()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7974697669746361;
  }
}

uint64_t sub_265B47DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xE800000000000000;
  if (v6 || (sub_265B77580() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265B79D40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_265B77580();

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

uint64_t sub_265B47ECC(uint64_t a1)
{
  v2 = sub_265B48144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265B47F08(uint64_t a1)
{
  v2 = sub_265B48144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiUserGroupActivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035848, &qword_265B78418);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265B48144();
  sub_265B77660();
  v8[15] = 0;
  sub_265B76520();
  sub_265B412BC(&qword_280035858, MEMORY[0x277D51510], MEMORY[0x277D51518]);
  sub_265B77540();
  if (!v1)
  {
    type metadata accessor for MultiUserGroupActivity(0);
    v8[14] = 1;
    sub_265B76EF0();
    sub_265B412BC(&qword_280035860, MEMORY[0x277CCB160], MEMORY[0x277CCB168]);
    sub_265B77530();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_265B48144()
{
  result = qword_280035850;
  if (!qword_280035850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035850);
  }

  return result;
}

uint64_t MultiUserGroupActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v24 = sub_265B76520();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035868, &unk_265B78420);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MultiUserGroupActivity(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v15 = sub_265B76EF0();
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265B48144();
  v17 = v26;
  sub_265B77650();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_265B47A7C(&v13[v27]);
  }

  else
  {
    v18 = v22;
    v29 = 0;
    sub_265B412BC(&qword_280035870, MEMORY[0x277D51510], MEMORY[0x277D51530]);
    sub_265B77520();
    (*(v18 + 32))(v13, v7, v24);
    v28 = 1;
    sub_265B412BC(&qword_280035878, MEMORY[0x277CCB160], MEMORY[0x277CCB170]);
    sub_265B77510();
    (*(v23 + 8))(v9, v25);
    sub_265B477E0(v5, &v13[v27]);
    sub_265B485AC(v13, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_265B48610(v13);
  }
}

uint64_t sub_265B485AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserGroupActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B48610(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserGroupActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B48688(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  v6 = swift_task_alloc();
  sub_265B476E4(v2 + *(a2 + 20), v6);
  v7 = sub_265B76EF0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_265B47A7C(v6);
    sub_265B47AE4();
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
  }

  v9 = *(v3 + 8);

  return v9();
}

uint64_t MultiUserGroupActivity.hashValue.getter()
{
  sub_265B77600();
  _s21SeymourClientServices22MultiUserGroupActivityV4hash4intoys6HasherVz_tF_0();
  return sub_265B77620();
}

uint64_t sub_265B48858()
{
  sub_265B77600();
  _s21SeymourClientServices22MultiUserGroupActivityV4hash4intoys6HasherVz_tF_0();
  return sub_265B77620();
}

uint64_t sub_265B4889C(uint64_t a1)
{
  sub_265B77600();
  _s21SeymourClientServices22MultiUserGroupActivityV4hash4intoys6HasherVz_tF_0();
  return sub_265B77620();
}

unint64_t sub_265B4895C()
{
  result = qword_280035888;
  if (!qword_280035888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035888);
  }

  return result;
}

unint64_t sub_265B489B4()
{
  result = qword_280035890;
  if (!qword_280035890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035890);
  }

  return result;
}

unint64_t sub_265B48A0C()
{
  result = qword_280035898;
  if (!qword_280035898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035898);
  }

  return result;
}

unint64_t sub_265B48A60()
{
  result = qword_2800358C0;
  if (!qword_2800358C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800358B8, &unk_265B78690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800358C0);
  }

  return result;
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

SeymourClientServices::AccountState_optional __swiftcall AccountState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_265B48B40()
{
  result = qword_2800358C8[0];
  if (!qword_2800358C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800358C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccountState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t RequestCoalescer.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t RequestCoalescer.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t RequestCoalescer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RequestCoalescer.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t RequestCoalescer.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_265B48E44, v3, 0);
}

uint64_t sub_265B48E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = *(*(v4 + 48) + 80);
  type metadata accessor for RequestCoalescer(255, v6, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  v9 = *(v4 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v9;
  v10 = swift_task_alloc();
  *(v4 + 64) = v10;
  *v10 = v4;
  v10[1] = sub_265B48F6C;
  v11 = *(v4 + 16);

  return MEMORY[0x2822008A0](v11, v5, WitnessTable, 0x293A5F286E7572, 0xE700000000000000, sub_265B4940C, v8, v6);
}

uint64_t sub_265B48F6C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_265B490A8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_265B490A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B49124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v9 = sub_265B771F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  if (a2[14])
  {
    v25 = a2[14];
    (*(v10 + 16))(v12, a1, v9);
    sub_265B771B0();

    sub_265B771A0();
    a2[14] = v25;
  }

  else
  {
    sub_265B77560();
    swift_allocObject();
    v17 = sub_265B77160();
    (*(v10 + 16))(v18, a1, v9);
    sub_265B771B0();
    a2[14] = v17;

    v19 = sub_265B77230();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    type metadata accessor for RequestCoalescer(255, v8, v20, v21);
    WitnessTable = swift_getWitnessTable();
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = WitnessTable;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = a2;
    swift_retain_n();

    sub_265B566AC(0, 0, v15, &unk_265B78878, v23);
  }
}

uint64_t sub_265B49418(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v9 = sub_265B77640();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = *(v8 - 8);
  v10 = swift_task_alloc();
  v6[8] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_265B49604;

  return v13(v10);
}

uint64_t sub_265B49604()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_265B4982C;
  }

  else
  {
    v4 = sub_265B49730;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265B49730()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  (*(v2 + 16))(v3, v1, v6);
  swift_storeEnumTagMultiPayload();
  sub_265B498FC(v3);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_265B4982C()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  sub_265B498FC(v2);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_265B498FC(uint64_t result)
{
  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
    sub_265B771F0();
    sub_265B771B0();
    swift_getWitnessTable();
    sub_265B77110();
  }

  return result;
}

uint64_t RequestCoalescer.waitForActiveRequest()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_265B49A6C, v1, 0);
}

uint64_t sub_265B49A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = *(v4[4] + 80);
  type metadata accessor for RequestCoalescer(255, v6, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_265B49B78;
  v9 = v4[2];
  v10 = v4[3];

  return MEMORY[0x2822008A0](v9, v5, WitnessTable, 0xD000000000000016, 0x8000000265B79D60, sub_265B49E3C, v10, v6);
}

uint64_t sub_265B49B78()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_265B49CAC, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_265B49CC4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v4 = sub_265B771F0();
  MEMORY[0x28223BE20](v4);
  if (a2[14])
  {
    v9 = a2[14];
    (*(v6 + 16))(&v8 - v5, a1, v4);
    sub_265B771B0();

    sub_265B771A0();
    a2[14] = v9;
  }

  else
  {
    sub_265B4A2B8();
    v9 = swift_allocError();
    return sub_265B771D0();
  }
}

uint64_t sub_265B49EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_265B49F14(uint64_t *a1, unsigned int a2)
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

uint64_t sub_265B49F64(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_265B49FB8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_265B49FD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_265B4A008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v4 = sub_265B771F0();
  return sub_265B4A07C(a2, v4);
}

uint64_t sub_265B4A07C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265B77640();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_265B771D0();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_265B771E0();
  }
}

unint64_t sub_265B4A2B8()
{
  result = qword_280CEB860;
  if (!qword_280CEB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB860);
  }

  return result;
}

uint64_t sub_265B4A30C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_265B41970;

  return sub_265B49418(a1, v4, v5, v6, v7, v8);
}

uint64_t WristMonitorError.hashValue.getter()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

uint64_t sub_265B4A49C()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

uint64_t sub_265B4A508(uint64_t a1)
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

unint64_t sub_265B4A54C()
{
  result = qword_280035960;
  if (!qword_280035960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035960);
  }

  return result;
}

unint64_t sub_265B4A5B4()
{
  result = qword_280035968;
  if (!qword_280035968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035968);
  }

  return result;
}

uint64_t sub_265B4A638(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  v4 = sub_265B4A6B4();
  v5 = sub_265B47454();

  return a3(a1, v4, v5);
}

unint64_t sub_265B4A6B4()
{
  result = qword_280035970;
  if (!qword_280035970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035970);
  }

  return result;
}

id AchievementWeeklyStreak.earnedThisWeek.getter()
{
  v0 = sub_265B76350();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_265B76340();
  v10 = objc_opt_self();
  result = [v10 hk_gregorianCalendar];
  if (result)
  {
    v12 = result;
    v13 = *MEMORY[0x277CCE2F8];
    v14 = sub_265B76320();
    v15 = [v12 hk:v13 startOfWeekWithFirstWeekday:v14 beforeDate:0 addingWeeks:?];

    sub_265B76330();
    v16 = *(v1 + 8);
    v16(v7, v0);
    sub_265B766D0();
    result = [v10 hk_gregorianCalendar];
    if (result)
    {
      v17 = result;
      v18 = sub_265B76320();
      v19 = sub_265B76320();
      v20 = [v17 hk:v18 isDate:0 withinNumberOfCalendarDays:v19 ofDate:?];

      v16(v4, v0);
      v16(v9, v0);
      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static WristStateChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AccountType.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B4AA8C()
{
  result = qword_280035978;
  if (!qword_280035978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035978);
  }

  return result;
}

uint64_t AccountError.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B4AB7C()
{
  result = qword_280035980;
  if (!qword_280035980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035980);
  }

  return result;
}

unint64_t sub_265B4ABD4()
{
  result = qword_280035988;
  if (!qword_280035988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035988);
  }

  return result;
}

uint64_t sub_265B4AC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_265B4AE68();
  v5 = sub_265B4ACC0();

  return a3(a1, v4, v5);
}

unint64_t sub_265B4ACC0()
{
  result = qword_280035990;
  if (!qword_280035990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccountError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265B4AE68()
{
  result = qword_280035998;
  if (!qword_280035998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035998);
  }

  return result;
}

uint64_t sub_265B4AEC4(void *a1)
{
  v52 = sub_265B769F0();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_265B76750();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_265B76580();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 itemsMap];
  sub_265B4C97C();
  v9 = sub_265B76FC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C8, &qword_265B78D28);
  result = sub_265B774D0();
  v11 = result;
  v12 = 0;
  v14 = v9 + 64;
  v13 = *(v9 + 64);
  v53 = v9;
  v15 = 1 << *(v9 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v44 = *MEMORY[0x277D52C48];
  v43 = (v4 + 104);
  v42 = *MEMORY[0x277D52C40];
  v41 = *MEMORY[0x277D53698];
  v40 = (v2 + 104);
  v39 = result + 64;
  v38 = *MEMORY[0x277D53690];
  v47 = v6;
  v37[1] = v6 + 32;
  v45 = result;
  v19 = v46;
  if (v17)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v54 = (v17 - 1) & v17;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v56 = 16 * v23;
      v24 = *(v53 + 56);
      v25 = (*(v53 + 48) + 16 * v23);
      v26 = v25[1];
      v57 = *v25;
      v55 = v26;
      v27 = *(v24 + 8 * v23);

      v28 = v27;
      v29 = [v28 identifier];
      sub_265B77030();

      v30 = [v28 isEnabled] ? v42 : v44;
      (*v43)(v49, v30, v50);
      v31 = [v28 userChanged] ? v38 : v41;
      (*v40)(v51, v31, v52);
      sub_265B76550();

      *(v39 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v11 = v45;
      v32 = (*(v45 + 48) + v56);
      v33 = v55;
      *v32 = v57;
      v32[1] = v33;
      result = (*(v47 + 32))(*(v11 + 56) + *(v47 + 72) * v23, v19, v48);
      v34 = *(v11 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      *(v11 + 16) = v36;
      v17 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v54 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NotificationSettingsProvider.fetchNotificationSettings(account:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_265B4B384, 0, 0);
}

uint64_t sub_265B4B384()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x277CEE738]);
  v4 = sub_265B77000();
  v5 = sub_265B77000();
  v6 = [v3 initWithIdentifier:v4 clientIdentifier:v5 account:v1 bag:v2];
  v0[5] = v6;

  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A0, &qword_265B78C68);
  *v8 = v0;
  v8[1] = sub_265B4B518;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000023, 0x8000000265B79F60, sub_265B4B8F8, v7, v9);
}

uint64_t sub_265B4B518()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_265B4B69C;
  }

  else
  {

    v2 = sub_265B4B634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B4B634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_265B4B69C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_265B4B708(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [a2 fetchAllSettings];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_265B4CAA8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B4B9C0;
  aBlock[3] = &block_descriptor_16;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v11 addFinishBlock_];
  _Block_release(v14);
}

void sub_265B4B900(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
    sub_265B771D0();
    return;
  }

  if (!a1)
  {
    sub_265B4C9C8();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  v3 = a1;
  sub_265B4AEC4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
  sub_265B771E0();
}

void sub_265B4B9C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t NotificationSettingsProvider.updateNotificationSettings(settings:account:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_265B76750();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_265B76580();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[10] = v6;
  v3[11] = v7;

  return MEMORY[0x2822009F8](sub_265B4BB78, 0, 0);
}

uint64_t sub_265B4BB78()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v1[9];
    v6 = v1[5];
    v33 = MEMORY[0x277D84F90];
    sub_265B77490();
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v29 = *(v5 + 56);
    v30 = v7;
    v28 = *MEMORY[0x277D52C40];
    v26 = (v5 - 8);
    v27 = (v6 + 8);
    do
    {
      v9 = v1[10];
      v10 = v1[7];
      v32 = v1[8];
      v11 = v1[6];
      v12 = v1[4];
      v30(v9, v8);
      sub_265B76560();
      sub_265B76570();
      (*(v6 + 104))(v11, v28, v12);
      v31 = sub_265B76740();
      v13 = *v27;
      (*v27)(v11, v12);
      v13(v10, v12);
      v14 = objc_allocWithZone(MEMORY[0x277CEE730]);
      v15 = sub_265B77000();

      [v14 initWithIdentifier:v15 enabled:v31 & 1];

      (*v26)(v9, v32);
      sub_265B77470();
      sub_265B774A0();
      sub_265B774B0();
      sub_265B77480();
      v8 += v29;
      --v3;
    }

    while (v3);
    v4 = v33;
  }

  v1[12] = v4;
  v16 = v1[11];
  v17 = v1[3];
  v18 = objc_allocWithZone(MEMORY[0x277CEE738]);
  v19 = sub_265B77000();
  v20 = sub_265B77000();
  v21 = [v18 initWithIdentifier:v19 clientIdentifier:v20 account:v17 bag:v16];
  v1[13] = v21;

  v22 = swift_task_alloc();
  v1[14] = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v4;
  v23 = swift_task_alloc();
  v1[15] = v23;
  *v23 = v1;
  v23[1] = sub_265B4BEDC;
  v24 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002DLL, 0x8000000265B79F90, sub_265B4C364, v22, v24);
}

uint64_t sub_265B4BEDC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_265B4C090;
  }

  else
  {

    v2 = sub_265B4C004;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B4C004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B4C090()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_265B4C138(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  sub_265B4C97C();
  v9 = sub_265B77130();
  v10 = [a2 updateSettings_];

  if (v10)
  {
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    aBlock[4] = sub_265B4CA1C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265B4C3E4;
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);

    [v10 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_265B4C9C8();
    v14 = swift_allocError();
    *v15 = 0;
    aBlock[0] = v14;
    sub_265B771D0();
  }
}

uint64_t sub_265B4C36C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
    return sub_265B771D0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
    return sub_265B771E0();
  }
}

void sub_265B4C3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_265B4C45C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B41608;

  return NotificationSettingsProvider.fetchNotificationSettings(account:)(a1);
}

uint64_t sub_265B4C4F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B41970;

  return NotificationSettingsProvider.updateNotificationSettings(settings:account:)(a1, a2);
}

uint64_t dispatch thunk of NotificationSettingsProviding.fetchNotificationSettings(account:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265B4C6BC;

  return v9(a1, a2, a3);
}

uint64_t sub_265B4C6BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of NotificationSettingsProviding.updateNotificationSettings(settings:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_265B41970;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_265B4C8E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_265B4C930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265B4C97C()
{
  result = qword_2800359B0;
  if (!qword_2800359B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800359B0);
  }

  return result;
}

unint64_t sub_265B4C9C8()
{
  result = qword_2800359B8;
  if (!qword_2800359B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800359B8);
  }

  return result;
}

uint64_t sub_265B4CA1C(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);

  return sub_265B4C36C(a1, a2);
}

void sub_265B4CAA8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);

  sub_265B4B900(a1, a2);
}

void Date.startOfWeek()()
{
  v0 = [objc_opt_self() hk_gregorianCalendar];
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x277CCE2F8];
    v3 = sub_265B76320();
    v4 = [v1 hk:v2 startOfWeekWithFirstWeekday:v3 beforeDate:0 addingWeeks:?];

    sub_265B76330();
  }

  else
  {
    __break(1u);
  }
}

id Date.isSameDay(as:)()
{
  result = [objc_opt_self() hk_gregorianCalendar];
  if (result)
  {
    v1 = result;
    v2 = sub_265B76320();
    v3 = sub_265B76320();
    v4 = [v1 hk:v2 isDate:0 withinNumberOfCalendarDays:v3 ofDate:?];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Date.isSameWeek(as:)(uint64_t a1)
{
  v22[1] = a1;
  v1 = sub_265B76350();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  v8 = objc_opt_self();
  result = [v8 hk_gregorianCalendar];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  v11 = *MEMORY[0x277CCE2F8];
  v12 = sub_265B76320();
  v13 = [v10 hk:v11 startOfWeekWithFirstWeekday:v12 beforeDate:0 addingWeeks:?];

  sub_265B76330();
  result = [v8 hk_gregorianCalendar];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = result;
  v15 = sub_265B76320();
  v16 = [v14 hk:v11 startOfWeekWithFirstWeekday:v15 beforeDate:0 addingWeeks:?];

  sub_265B76330();
  result = [v8 hk_gregorianCalendar];
  if (result)
  {
    v17 = result;
    v18 = sub_265B76320();
    v19 = sub_265B76320();
    v20 = [v17 hk:v18 isDate:0 withinNumberOfCalendarDays:v19 ofDate:?];

    v21 = *(v2 + 8);
    v21(v5, v1);
    v21(v7, v1);
    return v20;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static RemoteBrowsingEnvironment.makeFakeEnvironment()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_265B76F60();
  v27[2] = *(v1 - 8);
  v27[3] = v1;
  MEMORY[0x28223BE20](v1);
  v27[1] = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265B76290();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A0, &qword_265B78680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v30 = sub_265B762E0();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265B76C90();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D0, &qword_265B78D68);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v27 - v18;
  (*(v13 + 104))(v15, *MEMORY[0x277D4EFD8], v12);
  v32 = 0;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
  sub_265B4D690(&qword_2800359E0, MEMORY[0x277D4F9E0], MEMORY[0x277D4FA50]);
  sub_265B4D690(&qword_2800359E8, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  sub_265B76C50();
  sub_265B76C40();
  (*(v17 + 8))(v19, v16);
  if (v33)
  {
    v21 = v30;
    v20 = v31;
    (*(v9 + 56))(v8, 1, 1, v30);
    (*(v28 + 104))(v5, *MEMORY[0x277CC91D8], v29);

    sub_265B762D0();
    sub_265B762F0();
    v23 = sub_265B76780();
    v24 = v21;
    v25 = v23;
    (*(v9 + 8))(v11, v24);
    sub_265B4DA58();
    sub_265B769E0();
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
  }

  else
  {
    v22 = sub_265B76780();
    return (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
  }
}

uint64_t sub_265B4D690(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800359D8, "r%");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_265B4D6FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_265B4D748(a1, a2);
  sub_265B4D878(&unk_28776F4E0);
  return v3;
}

void *sub_265B4D748(uint64_t a1, unint64_t a2)
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

  v6 = sub_265B64094(v5, 0);
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

  result = sub_265B77460();
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
        v10 = sub_265B77090();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265B64094(v10, 0);
        result = sub_265B77430();
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

uint64_t sub_265B4D878(uint64_t result)
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

  result = sub_265B4D964(result, v11, 1, v3);
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

char *sub_265B4D964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359F8, &qword_265B78D70);
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

unint64_t sub_265B4DA58()
{
  result = qword_2800359F0;
  if (!qword_2800359F0)
  {
    sub_265B76780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800359F0);
  }

  return result;
}

size_t static Data.makeRandomValue(byteCount:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_265B77180();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
      v3 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      v3 = *(MEMORY[0x277D84F90] + 16);
    }

    v4 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v3, (v2 + 32));
    if (v4)
    {
      v5 = v4;

      sub_265B4DBA0();
      swift_allocError();
      *v6 = v5;
      return swift_willThrow();
    }

    else
    {
      v7 = sub_265B4DE9C((v2 + 32), v1);

      return v7;
    }
  }

  return result;
}

unint64_t sub_265B4DBA0()
{
  result = qword_280035A00;
  if (!qword_280035A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035A00);
  }

  return result;
}

void *sub_265B4DBF4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A08, &qword_265B79150);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100) - 8);
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

uint64_t sub_265B4DDE4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_265B4DE9C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_265B4DDE4(a1, &a1[a2]);
  }

  sub_265B76250();
  swift_allocObject();
  sub_265B76240();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_265B76300();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

id sub_265B4DF5C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_265B42574(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_265B4DF9C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_265B774C0())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26676B830](v6, a3);
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
        MEMORY[0x26676B500]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_265B77170();
        }

        sub_265B77190();
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_265B4E15C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_265B4E1A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void ArchivedSession.startOfWeek()()
{
  v0 = sub_265B76350();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() hk_gregorianCalendar];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x277CCE2F8];
    sub_265B764B0();
    v7 = sub_265B76320();
    (*(v1 + 8))(v3, v0);
    v8 = [v5 hk:v6 startOfWeekWithFirstWeekday:v7 beforeDate:0 addingWeeks:?];

    sub_265B76330();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ACHAchievementProgressUpdate.modalityIdentifier(from:)(uint64_t a1)
{
  v3 = [v1 templateUniqueName];
  sub_265B77030();

  sub_265B43C20();
  v4 = sub_265B77320();

  v5 = v4[2];
  if (v5 && (v4[4] == 0xD000000000000027 ? (v6 = 0x8000000265B7A0D0 == v4[5]) : (v6 = 0), (v6 || (sub_265B77580() & 1) != 0) && v5 != 1))
  {

    sub_265B76D80();
    sub_265B76CE0();
    v8 = sub_265B77330();
    v10 = v9;

    v11 = sub_265B4E62C(v8, v10, a1);

    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t ACHAchievementProgressUpdate.isRequired.getter()
{
  v1 = [v0 templateUniqueName];
  sub_265B77030();

  sub_265B43C20();
  v2 = sub_265B77320();

  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];

    if (v4 == 0xD00000000000001CLL && 0x8000000265B7A100 == v3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_265B77580();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_265B4E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v38 = a1;
  v4 = sub_265B76730();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A30, &qword_265B78DF8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v13;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v39 = v5 + 16;
  v41 = v5 + 32;
  v42 = (v5 + 8);

  v19 = 0;
  v37 = v8;
  while (v16)
  {
LABEL_11:
    v21 = v40;
    (*(v5 + 16))(v40, *(a3 + 48) + *(v5 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v4);
    v22 = *(v5 + 32);
    v22(v8, v21, v4);
    v23 = sub_265B76720();
    if (v25)
    {
      v26 = MEMORY[0x26676A920](v23);
      if (v26 == v38 && v27 == v36)
      {

LABEL_22:
        v31 = v34;
        v22(v34, v8, v4);
        v29 = 0;
        v30 = v35;
LABEL_17:
        (*(v5 + 56))(v31, v29, 1, v4);
        sub_265B4EAB0(v31, v30);
        if ((*(v5 + 48))(v30, 1, v4) == 1)
        {
          sub_265B4EB20(v31);
          sub_265B4EB20(v30);
          return 0;
        }

        else
        {
          v32 = sub_265B76710();
          sub_265B4EB20(v31);
          (*v42)(v30, v4);
          return v32;
        }
      }

      v28 = sub_265B77580();

      if (v28)
      {

        v8 = v37;
        goto LABEL_22;
      }
    }

    else
    {
      sub_265B4EAA0(v23, v24, 0);
    }

    v16 &= v16 - 1;
    v8 = v37;
    result = (*v42)(v37, v4);
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      v29 = 1;
      v31 = v34;
      v30 = v35;
      goto LABEL_17;
    }

    v16 = *(a3 + 56 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265B4E9FC()
{
  result = qword_280035A20;
  if (!qword_280035A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035A20);
  }

  return result;
}

unint64_t sub_265B4EA48()
{
  result = qword_280035A28;
  if (!qword_280035A28)
  {
    sub_265B4E9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035A28);
  }

  return result;
}

uint64_t sub_265B4EAA0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_265B4EAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A30, &qword_265B78DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B4EB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A30, &qword_265B78DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *Set<>.removingUnrelatedTemplates(for:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v114 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D84FA0];
  LODWORD(v106) = a1;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v29 = *(a2 + 32);
    v30 = v29 & 0x3F;
    v6 = ((1 << v29) + 63) >> 6;
    v18 = 8 * v6;

    if (v30 > 0xD)
    {
      goto LABEL_84;
    }

    goto LABEL_23;
  }

  v108 = MEMORY[0x277D84FA0];

  v2 = sub_265B773A0();
  v4 = sub_265B773F0();
  if (!v4)
  {
LABEL_21:

    goto LABEL_39;
  }

  v5 = v4;
  v6 = sub_265B4E9FC();
  v7 = v5;
  v3 = MEMORY[0x277D84FA0];
LABEL_6:
  v110 = v7;
  swift_dynamicCast();
  v8 = v113;
  sub_265B76D80();
  v9 = sub_265B76D60();
  v10 = [v8 uniqueName];
  if (!v10)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  v11 = v10;
  v12 = sub_265B77030();
  v14 = v13;

  v110 = v12;
  v111 = v14;
  MEMORY[0x28223BE20](v15);
  v99 = &v110;
  LOBYTE(v12) = sub_265B4FE0C(sub_265B4FEB8, v98, v9);

  v16 = v113;
  if (v12)
  {

    goto LABEL_5;
  }

  v17 = *(v3 + 16);
  if (*(v3 + 24) <= v17)
  {
    sub_265B4FB48(v17 + 1, &qword_280035A40, &qword_265B78E08);
  }

  v3 = v108;
  v18 = v16;
  v19 = sub_265B772C0();
  v20 = v3 + 56;
  v21 = -1 << *(v3 + 32);
  v22 = v19 & ~v21;
  v23 = v22 >> 6;
  if (((-1 << v22) & ~*(v3 + 56 + 8 * (v22 >> 6))) != 0)
  {
    v24 = __clz(__rbit64((-1 << v22) & ~*(v3 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_20;
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v20 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
LABEL_20:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v3 + 48) + 8 * v24) = v16;
      ++*(v3 + 16);
LABEL_5:
      v7 = sub_265B773F0();
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v94 = swift_slowAlloc();
    v3 = sub_265B4FD68(v94, v6, v2, sub_265B4F5E0, 0);
    MEMORY[0x26676C0C0](v94, -1, -1);
    goto LABEL_39;
  }

LABEL_23:
  v100 = &v100;
  v101 = v6;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v102 = &v100 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v102, v18);
  v103 = 0;
  v32 = 0;
  v33 = v2 + 56;
  v34 = 1 << *(v2 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v2 + 56);
  v6 = (v34 + 63) >> 6;
  v105 = v2;
  while (1)
  {
    if (v36)
    {
      v37 = __clz(__rbit64(v36));
      v107 = (v36 - 1) & v36;
    }

    else
    {
      v38 = v32;
      do
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_82;
        }

        if (v32 >= v6)
        {
          goto LABEL_38;
        }

        v39 = *(v33 + 8 * v32);
        ++v38;
      }

      while (!v39);
      v37 = __clz(__rbit64(v39));
      v107 = (v39 - 1) & v39;
    }

    v40 = v37 | (v32 << 6);
    v41 = *(v2 + 48);
    v104 = v40;
    v42 = *(v41 + 8 * v40);
    sub_265B76D80();
    v43 = v42;
    v18 = sub_265B76D60();
    v44 = [v43 uniqueName];
    if (!v44)
    {
      goto LABEL_91;
    }

    v45 = v44;
    v46 = sub_265B77030();
    v48 = v47;

    v110 = v46;
    v111 = v48;
    MEMORY[0x28223BE20](v49);
    v99 = &v110;
    LOBYTE(v45) = sub_265B4FE0C(sub_265B4FF2C, v98, v18);

    v2 = v105;
    v36 = v107;
    if ((v45 & 1) == 0)
    {
      *&v102[(v104 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v104;
      v50 = __OFADD__(v103++, 1);
      if (v50)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_38:
  v3 = sub_265B43C74(v102, v101, v103, v2, &qword_280035A40, &qword_265B78E08);
LABEL_39:
  v18 = sub_265B76BF0();
  v51 = sub_265B76BF0();
  if (v18 == v51 || (v18 = sub_265B76BF0(), v51 = sub_265B76BF0(), v18 == v51))
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x277D84FA0];
      v113 = MEMORY[0x277D84FA0];
      sub_265B773A0();
      v53 = sub_265B773F0();
      if (v53)
      {
        v54 = v53;
        v2 = sub_265B4E9FC();
        v55 = v54;
        v3 = MEMORY[0x277D84FA0];
        v6 = MEMORY[0x277D837D0];
        while (1)
        {
          v110 = v55;
          swift_dynamicCast();
          v56 = [v112 uniqueName];
          if (!v56)
          {
            goto LABEL_90;
          }

          v57 = v56;
          v58 = sub_265B77030();
          v60 = v59;

          v110 = v58;
          v111 = v60;
          sub_265B76D80();
          v108 = sub_265B76CE0();
          v109 = v61;
          sub_265B43C20();
          LOBYTE(v57) = sub_265B77340();

          v62 = v112;
          if (v57)
          {
          }

          else
          {
            v63 = *(v3 + 16);
            if (*(v3 + 24) <= v63)
            {
              sub_265B4FB48(v63 + 1, &qword_280035A40, &qword_265B78E08);
            }

            v3 = v113;
            v18 = v62;
            v64 = sub_265B772C0();
            v65 = v3 + 56;
            v66 = -1 << *(v3 + 32);
            v67 = v64 & ~v66;
            v68 = v67 >> 6;
            if (((-1 << v67) & ~*(v3 + 56 + 8 * (v67 >> 6))) != 0)
            {
              v69 = __clz(__rbit64((-1 << v67) & ~*(v3 + 56 + 8 * (v67 >> 6)))) | v67 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v70 = 0;
              v71 = (63 - v66) >> 6;
              do
              {
                if (++v68 == v71 && (v70 & 1) != 0)
                {
                  goto LABEL_81;
                }

                v72 = v68 == v71;
                if (v68 == v71)
                {
                  v68 = 0;
                }

                v70 |= v72;
                v73 = *(v65 + 8 * v68);
              }

              while (v73 == -1);
              v69 = __clz(__rbit64(~v73)) + (v68 << 6);
            }

            *(v65 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
            *(*(v3 + 48) + 8 * v69) = v62;
            ++*(v3 + 16);
          }

          v55 = sub_265B773F0();
          if (!v55)
          {
            goto LABEL_79;
          }
        }
      }

      v3 = v52;
LABEL_79:
    }

    else
    {
      v74 = *(v3 + 32);
      v75 = v74 & 0x3F;
      v76 = (1 << v74) + 63;
      v77 = v76 >> 6;
      if (v75 > 0xD)
      {
        v95 = 8 * (v76 >> 6);

        v18 = v95;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v96 = swift_slowAlloc();
          v97 = sub_265B4FD68(v96, v77, v3, sub_265B4F6DC, 0);

          MEMORY[0x26676C0C0](v96, -1, -1);
          return v97;
        }
      }

      v105 = v77;
      v103 = 0;
      v104 = &v100;
      MEMORY[0x28223BE20](v51);
      v106 = &v100 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v106, v78);
      v107 = 0;
      v6 = 0;
      v79 = 1 << *(v3 + 32);
      v80 = -1;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      v81 = v80 & *(v3 + 56);
      v2 = (v79 + 63) >> 6;
      while (1)
      {
        if (v81)
        {
          v82 = __clz(__rbit64(v81));
          v81 &= v81 - 1;
        }

        else
        {
          v83 = v6;
          do
          {
            v6 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              goto LABEL_83;
            }

            if (v6 >= v2)
            {
              return sub_265B43C74(v106, v105, v107, v3, &qword_280035A40, &qword_265B78E08);
            }

            v84 = *(v3 + 56 + 8 * v6);
            ++v83;
          }

          while (!v84);
          v82 = __clz(__rbit64(v84));
          v81 = (v84 - 1) & v84;
        }

        v85 = v82 | (v6 << 6);
        v86 = *(*(v3 + 48) + 8 * v85);
        v87 = [v86 uniqueName];
        if (!v87)
        {
          goto LABEL_92;
        }

        v88 = v87;
        v89 = sub_265B77030();
        v91 = v90;

        v110 = v89;
        v111 = v91;
        sub_265B76D80();
        v108 = sub_265B76CE0();
        v109 = v92;
        sub_265B43C20();
        v18 = sub_265B77340();

        if ((v18 & 1) == 0)
        {
          *&v106[(v85 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v85;
          v50 = __OFADD__(v107++, 1);
          if (v50)
          {
            break;
          }
        }
      }

      __break(1u);
      return sub_265B43C74(v106, v105, v107, v3, &qword_280035A40, &qword_265B78E08);
    }
  }

  return v3;
}

id sub_265B4F5E0(void **a1)
{
  v1 = *a1;
  sub_265B76D80();
  v2 = sub_265B76D60();
  result = [v1 uniqueName];
  if (result)
  {
    v4 = result;
    v5 = sub_265B77030();
    v7 = v6;

    v11[0] = v5;
    v11[1] = v7;
    MEMORY[0x28223BE20](v8);
    v10[2] = v11;
    v9 = sub_265B4FE0C(sub_265B4FF2C, v10, v2);

    return ((v9 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_265B4F6DC(id *a1)
{
  result = [*a1 uniqueName];
  if (result)
  {
    v2 = result;
    sub_265B77030();

    sub_265B76D80();
    sub_265B76CE0();
    sub_265B43C20();
    LOBYTE(v2) = sub_265B77340();

    return ((v2 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Array<A>.removingUnrelatedTemplates(for:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  LODWORD(v3) = a1;
  v35 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_265B774C0())
  {
    v5 = MEMORY[0x277D84F90];
    if (i)
    {
      break;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_17:
    v18 = sub_265B76BF0();
    if (v18 != sub_265B76BF0())
    {
      v19 = sub_265B76BF0();
      if (v19 != sub_265B76BF0())
      {
        return v17;
      }
    }

    v37 = v5;
    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      v3 = sub_265B774C0();
      if (!v3)
      {
LABEL_40:
        v29 = MEMORY[0x277D84F90];
LABEL_41:

        return v29;
      }
    }

    else
    {
      v3 = *(v17 + 16);
      if (!v3)
      {
        goto LABEL_40;
      }
    }

    v20 = 0;
    v2 = MEMORY[0x277D837D0];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26676B830](v20, v17);
      }

      else
      {
        if (v20 >= *(v17 + 16))
        {
          goto LABEL_37;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      result = [v21 uniqueName];
      if (!result)
      {
        goto LABEL_44;
      }

      v24 = result;
      v25 = sub_265B77030();
      v27 = v26;

      v38 = v25;
      v39 = v27;
      sub_265B76D80();
      v35 = sub_265B76CE0();
      v36 = v28;
      sub_265B43C20();
      LOBYTE(v24) = sub_265B77340();

      if (v24)
      {
      }

      else
      {
        sub_265B77470();
        sub_265B774A0();
        sub_265B774B0();
        sub_265B77480();
      }

      ++v20;
      if (v23 == v3)
      {
        v29 = v37;
        goto LABEL_41;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v31 = v3;
  v6 = 0;
  LODWORD(v3) = 0;
  v32 = v2 & 0xFFFFFFFFFFFFFF8;
  v33 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v33)
    {
      v7 = MEMORY[0x26676B830](v6, v2);
    }

    else
    {
      if (v6 >= *(v32 + 16))
      {
        goto LABEL_35;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v34 = v6 + 1;
    sub_265B76D80();
    v9 = sub_265B76D60();
    v10 = v8;
    result = [v8 uniqueName];
    if (!result)
    {
      break;
    }

    v12 = result;
    v13 = sub_265B77030();
    v15 = v14;

    v38 = v13;
    v39 = v15;
    MEMORY[0x28223BE20](v16);
    v30[2] = &v38;
    LOBYTE(v12) = sub_265B4FE0C(sub_265B4FF2C, v30, v9);

    if (v12)
    {
    }

    else
    {
      sub_265B77470();
      sub_265B774A0();
      sub_265B774B0();
      sub_265B77480();
    }

    ++v6;
    if (v34 == i)
    {
      v17 = v35;
      v5 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_265B4FB48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_265B77410();
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
      result = sub_265B772C0();
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

void *sub_265B4FD68(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_265B668CC(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_265B4FE0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_265B4FED4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_265B77580() & 1;
  }
}

id ACHAchievementProgressUpdate.init(progressUpdate:)(uint64_t a1)
{
  v2 = sub_265B76460();
  if (v3 & 1) != 0 || (v4 = *&v2, v5 = sub_265B76450(), (v6))
  {
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_265B76440();
    v8 = sub_265B77000();

    v9 = [v7 initWithTemplateUniqueName:v8 progressQuantity:0 goalQuantity:0];
  }

  else
  {
    v10 = *&v5;
    v11 = objc_opt_self();
    v12 = [v11 countUnit];
    v13 = objc_opt_self();
    v14 = [v13 quantityWithUnit:v12 doubleValue:v4];

    v15 = [v11 countUnit];
    v16 = [v13 quantityWithUnit:v15 doubleValue:v10];

    v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_265B76440();
    v8 = sub_265B77000();

    v9 = [v17 initWithTemplateUniqueName:v8 progressQuantity:v14 goalQuantity:v16];
  }

  v18 = sub_265B76470();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v9;
}

void ACHAchievementProgressUpdate.transformed()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265B76F60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 goalQuantity];
  v9 = 0uLL;
  if (v8)
  {
    v10 = v8;
    v11 = objc_opt_self();
    v12 = [v11 countUnit];
    [v10 doubleValueForUnit_];
    v41 = v13;

    v14 = [v2 progressQuantity];
    if (v14)
    {
      v15 = v14;
      v16 = [v11 countUnit];
      [v15 doubleValueForUnit_];
      v40 = v17;

      sub_265B76E20();
      v18 = v2;
      v19 = sub_265B76F50();
      v20 = sub_265B77280();

      v21 = 0x279BB9000uLL;
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v42 = v38;
        *v22 = 136315650;
        v23 = [v18 templateUniqueName];
        v24 = sub_265B77030();
        v39 = v4;
        v25 = v5;
        v26 = v24;
        v27 = v18;
        v29 = v28;

        v30 = sub_265B402B4(v26, v29, &v42);
        v18 = v27;
        v21 = 0x279BB9000;

        *(v22 + 4) = v30;
        *(v22 + 12) = 2048;
        v31 = v41;
        *(v22 + 14) = v40;
        *(v22 + 22) = 2048;
        *(v22 + 24) = v31;
        _os_log_impl(&dword_265B3E000, v19, v20, "Creating SeymourAchievementProgress for %s, progress: %f, goal: %f", v22, 0x20u);
        v32 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x26676C0C0](v32, -1, -1);
        MEMORY[0x26676C0C0](v22, -1, -1);

        (*(v25 + 8))(v7, v39);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      v36 = [v18 *(v21 + 3808)];
      v33 = sub_265B77030();
      v34 = v37;

      v35 = 0;
      *&v9 = v40;
      *(&v9 + 1) = v41;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = -1;
      v9 = 0uLL;
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = -1;
  }

  *a1 = v33;
  *(a1 + 8) = v34;
  *(a1 + 16) = v9;
  *(a1 + 32) = v35;
}

unint64_t sub_265B5046C()
{
  result = qword_280CEB910;
  if (!qword_280CEB910)
  {
    sub_265B764D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB910);
  }

  return result;
}

void SeymourAchievementProgressUpdate.init(achProgressUpdate:)(void *a1)
{
  v1 = [a1 goalQuantity];
  if (v1)
  {
    v2 = [objc_opt_self() countUnit];
    [v1 doubleValueForUnit_];
  }

  v3 = [a1 progressQuantity];
  if (v3)
  {
    v4 = [objc_opt_self() countUnit];
    [v3 doubleValueForUnit_];
  }

  v5 = [a1 templateUniqueName];
  sub_265B77030();

  sub_265B76430();
}

id AchievementEnvironmentCache.makeCache(from:sessionEnergyBurned:isGuided:modalityIdentifier:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v106 = a4;
  v92 = a3;
  v99 = a2;
  v93 = a5;
  v8 = sub_265B769A0();
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v85[0] = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = v85 - v11;
  v100 = sub_265B764C0();
  v95 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v91 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v102 = v85 - v17;
  MEMORY[0x28223BE20](v16);
  v105 = v85 - v18;
  v19 = sub_265B76F60();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v101 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v85 - v22;
  v24 = sub_265B76350();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v85 - v29;
  result = [objc_opt_self() hk_gregorianCalendar];
  if (result)
  {
    v32 = result;
    v33 = *MEMORY[0x277CCE2F8];
    sub_265B764B0();
    v34 = sub_265B76320();
    v88 = *(v25 + 8);
    v88(v28, v24);
    v35 = [v32 hk:v33 startOfWeekWithFirstWeekday:v34 beforeDate:0 addingWeeks:?];

    sub_265B76330();
    sub_265B764A0();
    v37 = v36;
    sub_265B76D80();
    sub_265B76D30();
    v39 = v38;
    v87 = a1;
    sub_265B76490();
    v41 = v40;
    sub_265B76D20();
    v43 = v42;
    sub_265B76E20();
    v44 = v106;

    v45 = sub_265B76F50();
    v46 = sub_265B77280();

    v47 = os_log_type_enabled(v45, v46);
    v90 = v24;
    v89 = v25 + 8;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v107[0] = v49;
      *v48 = 67110146;
      *(v48 + 4) = v39 < v37;
      *(v48 + 8) = 1024;
      *(v48 + 10) = v43 < v41;
      *(v48 + 14) = 2048;
      *(v48 + 16) = a6;
      *(v48 + 24) = 1024;
      *(v48 + 26) = v99 & 1;
      *(v48 + 30) = 2080;
      v50 = v92;
      *(v48 + 32) = sub_265B402B4(v92, v106, v107);
      _os_log_impl(&dword_265B3E000, v45, v46, "Creating a new AchievementEnvironmentCache with meetsDurationThreshold: %{BOOL}d, meetsCompletionThreshold: %{BOOL}d, sessionEnergyBurned: %f, isGuided: %{BOOL}d, modalityIdentifier: %s", v48, 0x28u);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v51 = v49;
      v44 = v106;
      MEMORY[0x26676C0C0](v51, -1, -1);
      MEMORY[0x26676C0C0](v48, -1, -1);

      v86 = *(v103 + 8);
      v86(v23, v104);
    }

    else
    {

      v86 = *(v103 + 8);
      v86(v23, v104);
      v50 = v92;
    }

    v52 = v91;
    v53 = v105;
    v92 = v30;
    sub_265B51098(v30, v43 < v41, v39 < v37, v105);
    v91 = sub_265B76970();
    v85[4] = v54;
    v85[3] = sub_265B76990();
    v85[2] = v55;
    v85[1] = sub_265B51FD4(v50, v44, a6);
    sub_265B54094(v53, v102);
    sub_265B54094(v53, v52);
    v56 = sub_265B76700();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v52, 1, v56) == 1)
    {
      sub_265B54CA8(v52, &qword_280035A48, &qword_265B78E38);
    }

    else
    {
      sub_265B766F0();
      (*(v57 + 8))(v52, v56);
    }

    sub_265B76920();
    v58 = v99;
    v59 = v106;
    sub_265B523E4(v50, v106, v99 & 1, v43 < v41, v39 < v37);
    sub_265B546C8(v43 < v41, v39 < v37);
    sub_265B527F0(v50, v59, v58 & 1, v43 < v41, v39 < v37);
    v60 = v93;
    sub_265B76960();
    v61 = v101;
    sub_265B76E20();
    v63 = v94;
    v62 = v95;
    v64 = v100;
    (*(v95 + 16))(v94, v87, v100);
    v65 = v96;
    v66 = v97;
    v67 = *(v97 + 16);
    v68 = v60;
    v69 = v98;
    v67(v96, v68, v98);
    v70 = sub_265B76F50();
    LODWORD(v106) = sub_265B77280();
    if (os_log_type_enabled(v70, v106))
    {
      v71 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v107[0] = v102;
      *v71 = 136315394;
      v72 = sub_265B76480();
      v73 = v63;
      v74 = v65;
      v75 = v72;
      v77 = v76;
      (*(v62 + 8))(v73, v100);
      v78 = sub_265B402B4(v75, v77, v107);

      *(v71 + 4) = v78;
      *(v71 + 12) = 2080;
      v67(v85[0], v74, v69);
      v79 = sub_265B77040();
      v81 = v80;
      (*(v66 + 8))(v74, v69);
      v82 = sub_265B402B4(v79, v81, v107);

      *(v71 + 14) = v82;
      _os_log_impl(&dword_265B3E000, v70, v106, "[AchievementEnvironmentCache] New cache after updating with data from session %s: %s", v71, 0x16u);
      v83 = v102;
      swift_arrayDestroy();
      MEMORY[0x26676C0C0](v83, -1, -1);
      MEMORY[0x26676C0C0](v71, -1, -1);

      v84 = v101;
    }

    else
    {

      (*(v66 + 8))(v65, v69);
      (*(v62 + 8))(v63, v64);
      v84 = v61;
    }

    v86(v84, v104);
    sub_265B54CA8(v105, &qword_280035A48, &qword_265B78E38);
    return (v88)(v92, v90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265B51098@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v133 = a4;
  LODWORD(v127) = a3;
  v124 = a1;
  v128 = sub_265B769A0();
  v5 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265B76F60();
  v131 = *(v8 - 8);
  v132 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v117 = &v107 - v13;
  MEMORY[0x28223BE20](v12);
  v114 = &v107 - v14;
  v113 = sub_265B76280();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265B76400();
  v17 = *(v16 - 8);
  v118 = v16;
  v119 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A90, &qword_265B78E70);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v107 - v21;
  v23 = sub_265B76350();
  v125 = *(v23 - 8);
  v126 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v120 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v121 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v123 = &v107 - v31;
  v32 = sub_265B76410();
  v115 = *(v32 - 8);
  v116 = v32;
  MEMORY[0x28223BE20](v32);
  v122 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v107 - v38;
  v40 = sub_265B76700();
  v129 = *(v40 - 8);
  v130 = v40;
  MEMORY[0x28223BE20](v40);
  v42 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 || (v127 & 1) == 0)
  {
    sub_265B76E20();
    v59 = v128;
    (*(v5 + 16))(v7, v134, v128);
    v60 = sub_265B76F50();
    v61 = sub_265B77280();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v135[0] = v63;
      *v62 = 136315138;
      sub_265B76910();
      v64 = sub_265B772E0();
      v66 = v65;
      sub_265B54CA8(v37, &qword_280035A48, &qword_265B78E38);
      (*(v5 + 8))(v7, v128);
      v67 = sub_265B402B4(v64, v66, v135);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_265B3E000, v60, v61, "Session does not meet completion and duration threshold, returning current streak %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x26676C0C0](v63, -1, -1);
      MEMORY[0x26676C0C0](v62, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v59);
    }

    (*(v131 + 8))(v11, v132);
    return sub_265B76910();
  }

  v128 = v42;
  sub_265B76910();
  v44 = v129;
  v43 = v130;
  if ((*(v129 + 48))(v39, 1, v130) == 1)
  {
    sub_265B54CA8(v39, &qword_280035A48, &qword_265B78E38);
    v45 = v117;
    sub_265B76E20();
    v46 = v125;
    v47 = v126;
    v134 = *(v125 + 16);
    v134(v26, v124, v126);
    v48 = sub_265B76F50();
    v49 = sub_265B77280();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v135[0] = v51;
      *v50 = 136315138;
      sub_265B549EC(&qword_280035A58, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v52 = sub_265B77550();
      v53 = v46;
      v55 = v54;
      (*(v53 + 8))(v26, v47);
      v56 = sub_265B402B4(v52, v55, v135);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_265B3E000, v48, v49, "Current streak was nil, starting a new 1 week streak with start of week %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      v57 = v51;
      v44 = v129;
      MEMORY[0x26676C0C0](v57, -1, -1);
      v58 = v50;
      v43 = v130;
      MEMORY[0x26676C0C0](v58, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v26, v47);
    }

    (*(v131 + 8))(v45, v132);
    v134(v120, v124, v47);
    v84 = v133;
    sub_265B766E0();
    return (*(v44 + 56))(v84, 0, 1, v43);
  }

  v69 = *(v44 + 32);
  v110 = v44 + 32;
  v109 = v69;
  v69(v128, v39, v43);
  v70 = [objc_opt_self() currentCalendar];
  v71 = v122;
  sub_265B763C0();

  v108 = sub_265B766F0();
  v72 = v123;
  sub_265B766D0();
  v73 = v118;
  v74 = v119;
  v75 = *(v119 + 104);
  LODWORD(v134) = *MEMORY[0x277CC9968];
  v127 = v75;
  v75(v19);
  sub_265B763D0();
  v117 = *(v74 + 8);
  (v117)(v19, v73);
  v77 = v125;
  v76 = v126;
  if ((*(v125 + 48))(v22, 1, v126) != 1)
  {
    (*(v77 + 32))(v121, v22, v76);
    v127(v19, v134, v73);
    v85 = v124;
    v86 = sub_265B763E0();
    (v117)(v19, v73);
    if (v86)
    {
      v87 = *(v77 + 8);
      v87(v121, v76);
      v87(v72, v76);
LABEL_18:
      (*(v115 + 8))(v71, v116);
      v88 = v133;
      v89 = v130;
      v109(v133, v128, v130);
      return (*(v129 + 56))(v88, 0, 1, v89);
    }

    v127(v19, v134, v73);
    v90 = sub_265B763E0();
    result = (v117)(v19, v73);
    if (v90)
    {
      v91 = v126;
      if (__OFADD__(v108, 1))
      {
        __break(1u);
        return result;
      }

      v92 = v125;
      (*(v125 + 16))(v120, v85, v126);
      v93 = v133;
      sub_265B766E0();
      v94 = *(v92 + 8);
      v94(v121, v91);
      v94(v123, v91);
      (*(v115 + 8))(v122, v116);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
      v95 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_265B78400;
      v127((v96 + v95), v134, v73);
      sub_265B54134(v96);
      swift_setDeallocating();
      (v117)(v96 + v95, v73);
      swift_deallocClassInstance();
      v97 = v111;
      v98 = v123;
      sub_265B763A0();

      v99 = sub_265B76270();
      v100 = v126;
      if ((v101 & 1) != 0 || v99 < 14)
      {
        (*(v112 + 8))(v97, v113);
        v106 = *(v125 + 8);
        v106(v121, v100);
        v106(v98, v100);
        goto LABEL_18;
      }

      v102 = v125;
      (*(v125 + 16))(v120, v85, v126);
      v93 = v133;
      sub_265B766E0();
      (*(v112 + 8))(v97, v113);
      v103 = *(v102 + 8);
      v103(v121, v100);
      v103(v98, v100);
      (*(v115 + 8))(v71, v116);
    }

    v104 = v129;
    v105 = v130;
    (*(v129 + 8))(v128, v130);
    return (*(v104 + 56))(v93, 0, 1, v105);
  }

  sub_265B54CA8(v22, &qword_280035A90, &qword_265B78E70);
  v78 = v114;
  sub_265B76E20();
  v79 = sub_265B76F50();
  v80 = sub_265B77280();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_265B3E000, v79, v80, "Unable to determine the first weekday of the extended streak", v81, 2u);
    MEMORY[0x26676C0C0](v81, -1, -1);
  }

  (*(v131 + 8))(v78, v132);
  (*(v125 + 8))(v123, v126);
  (*(v115 + 8))(v122, v116);
  v82 = v129;
  v83 = v130;
  (*(v129 + 8))(v128, v130);
  return (*(v82 + 56))(v133, 1, 1, v83);
}

void *sub_265B51FD4(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_265B76F60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-v11];
  v13 = sub_265B76940();
  v14 = sub_265B76940();
  if (!*(v14 + 16) || (v15 = sub_265B65E98(a1, a2), (v16 & 1) == 0))
  {

    sub_265B76E20();

    v22 = sub_265B76F50();
    v23 = sub_265B77280();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_265B402B4(a1, a2, &v31);
      *(v24 + 12) = 2048;
      *(v24 + 14) = a3;
      _os_log_impl(&dword_265B3E000, v22, v23, "[AchievementEnvironmentCache] No current best energy burned value for modality %s, using %f", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26676C0C0](v25, -1, -1);
      MEMORY[0x26676C0C0](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A80, &qword_265B78E60);
    goto LABEL_10;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (v17 < a3)
  {
    sub_265B76E20();

    v18 = sub_265B76F50();
    v19 = sub_265B77280();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 134218498;
      *(v20 + 4) = a3;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v17;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_265B402B4(a1, a2, &v31);
      _os_log_impl(&dword_265B3E000, v18, v19, "[AchievementEnvironmentCache] Session energy burned (%f) is greater than the current best (%f) for %s", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26676C0C0](v21, -1, -1);
      MEMORY[0x26676C0C0](v20, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A80, &qword_265B78E60);
LABEL_10:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265B78400;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;

    v27 = sub_265B65F10(inited);
    swift_setDeallocating();
    sub_265B54CA8(inited + 32, &qword_280035A88, &qword_265B78E68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v13;
    sub_265B54454(v27, sub_265B54104, 0, isUniquelyReferenced_nonNull_native, &v31);

    return v31;
  }

  return v13;
}

void *sub_265B523E4(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v38[0] = sub_265B76F60();
  v10 = *(v38[0] - 8);
  v11 = MEMORY[0x28223BE20](v38[0]);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  v16 = sub_265B76980();
  v17 = v16;
  if ((a4 & 1) == 0 || (a5 & 1) == 0 || (a3 & 1) == 0)
  {
    sub_265B76E20();

    v21 = sub_265B76F50();
    v22 = sub_265B77280();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = sub_265B76FD0();
      v27 = sub_265B402B4(v25, v26, &v39);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_265B3E000, v21, v22, "[AchievementEnvironmentCache] Session not counted towards guided workout count, returning %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26676C0C0](v24, -1, -1);
      MEMORY[0x26676C0C0](v23, -1, -1);
    }

    (*(v10 + 8))(v13, v38[0]);
    return v17;
  }

  if (*(v16 + 16) && (v18 = sub_265B65E98(a1, a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  sub_265B76E20();

  v28 = sub_265B76F50();
  v29 = sub_265B77280();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 134218242;
    *(v30 + 4) = v20;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_265B402B4(a1, a2, &v39);
    _os_log_impl(&dword_265B3E000, v28, v29, "[AchievementEnvironmentCache] Adding to current guided workout count %ld for modality %s", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x26676C0C0](v31, -1, -1);
    MEMORY[0x26676C0C0](v30, -1, -1);
  }

  (*(v10 + 8))(v15, v38[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A70, &qword_265B78E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265B78400;
  *(inited + 32) = a1;
  v33 = inited + 32;
  *(inited + 40) = a2;
  if (!__OFADD__(v20, 1))
  {
    *(inited + 48) = v20 + 1;
    v34 = inited;

    v35 = sub_265B66014(v34);
    swift_setDeallocating();
    sub_265B54CA8(v33, &qword_280035A78, &qword_265B78E58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v17;
    sub_265B54A34(v35, sub_265B5411C, 0, isUniquelyReferenced_nonNull_native, &v39);

    return v39;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_265B527F0(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v38[0] = sub_265B76F60();
  v10 = *(v38[0] - 8);
  v11 = MEMORY[0x28223BE20](v38[0]);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  v16 = sub_265B76950();
  v17 = v16;
  if (a4 & 1) == 0 || (a5 & 1) == 0 || (a3)
  {
    sub_265B76E20();

    v21 = sub_265B76F50();
    v22 = sub_265B77280();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = sub_265B76FD0();
      v27 = sub_265B402B4(v25, v26, &v39);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_265B3E000, v21, v22, "[AchievementEnvironmentCache] Session not counted towards modality workout count, returning %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26676C0C0](v24, -1, -1);
      MEMORY[0x26676C0C0](v23, -1, -1);
    }

    (*(v10 + 8))(v13, v38[0]);
    return v17;
  }

  if (*(v16 + 16) && (v18 = sub_265B65E98(a1, a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  sub_265B76E20();

  v28 = sub_265B76F50();
  v29 = sub_265B77280();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 134218242;
    *(v30 + 4) = v20;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_265B402B4(a1, a2, &v39);
    _os_log_impl(&dword_265B3E000, v28, v29, "[AchievementEnvironmentCache] Adding to current workout count %ld for modality %s", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x26676C0C0](v31, -1, -1);
    MEMORY[0x26676C0C0](v30, -1, -1);
  }

  (*(v10 + 8))(v15, v38[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A70, &qword_265B78E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265B78400;
  *(inited + 32) = a1;
  v33 = inited + 32;
  *(inited + 40) = a2;
  if (!__OFADD__(v20, 1))
  {
    *(inited + 48) = v20 + 1;
    v34 = inited;

    v35 = sub_265B66014(v34);
    swift_setDeallocating();
    sub_265B54CA8(v33, &qword_280035A78, &qword_265B78E58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v17;
    sub_265B54A34(v35, sub_265B5411C, 0, isUniquelyReferenced_nonNull_native, &v39);

    return v39;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t AchievementEnvironmentCache.makeCache(firstCompletedPlanSessionIdentifier:mostRecentCompletedPlanSessionIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v48 = a3;
  v50 = sub_265B769A0();
  v45 = *(v50 - 8);
  v8 = MEMORY[0x28223BE20](v50);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_265B76F60();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  sub_265B76E20();

  v18 = sub_265B76F50();
  v19 = sub_265B77280();

  v20 = os_log_type_enabled(v18, v19);
  v46 = v12;
  v49 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = a5;
    v23 = v12;
    v24 = v22;
    v51 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_265B402B4(v47, a2, &v51);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_265B402B4(v48, a4, &v51);
    _os_log_impl(&dword_265B3E000, v18, v19, "Updating existing cache with firstCompletedPlanSessionIdentifier: %s and mostRecentCompletedPlanSessionIdentifier: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26676C0C0](v24, -1, -1);
    MEMORY[0x26676C0C0](v21, -1, -1);

    v25 = v23;
    a5 = v40;
    v42 = *(v49 + 8);
    v42(v17, v25);
  }

  else
  {

    v42 = *(v13 + 8);
    v42(v17, v12);
  }

  sub_265B76940();
  sub_265B76910();
  sub_265B76920();
  sub_265B76980();
  sub_265B76930();
  sub_265B76950();
  sub_265B76960();
  v26 = v44;
  sub_265B76E20();
  v27 = v45;
  v28 = *(v45 + 16);
  v29 = v43;
  v28(v43, a5, v50);
  v30 = sub_265B76F50();
  v31 = sub_265B77280();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = v48;
    *v32 = 136315138;
    v33 = v50;
    v28(v41, v29, v50);
    v34 = sub_265B77040();
    v36 = v35;
    (*(v27 + 8))(v29, v33);
    v37 = sub_265B402B4(v34, v36, &v51);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_265B3E000, v30, v31, "New cache after updating plan session identifiers: %s", v32, 0xCu);
    v38 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x26676C0C0](v38, -1, -1);
    MEMORY[0x26676C0C0](v32, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v29, v50);
  }

  return (v42)(v26, v46);
}

id AchievementEnvironmentCache.updatingWeeklyStreak(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v109 = a1;
  v119 = a2;
  v4 = sub_265B76F60();
  v120 = *(v4 - 8);
  v121 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v114 = &v102 - v9;
  MEMORY[0x28223BE20](v8);
  v116 = &v102 - v10;
  v11 = sub_265B76410();
  v110 = *(v11 - 8);
  v111 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265B76280();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x28223BE20](v14);
  v117 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v108 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v102 - v19;
  v21 = sub_265B76350();
  v122 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v102 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v118 = &v102 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v102 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v102 - v32;
  sub_265B76910();
  v34 = sub_265B76700();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v20, 1, v34) == 1)
  {
    sub_265B54CA8(v20, &qword_280035A48, &qword_265B78E38);
    sub_265B76E20();
    v36 = sub_265B76F50();
    v37 = sub_265B77280();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v119;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_265B3E000, v36, v37, "Checking if the current streak is broken but the current streak is nil, returning existing environment cache", v40, 2u);
      MEMORY[0x26676C0C0](v40, -1, -1);
    }

    (*(v120 + 8))(v7, v121);
    v41 = sub_265B769A0();
    return (*(*(v41 - 8) + 16))(v39, v3, v41);
  }

  else
  {
    v106 = v26;
    v107 = v3;
    sub_265B766D0();
    v103 = v35;
    v43 = *(v35 + 8);
    v104 = v34;
    v43(v20, v34);
    (*(v122 + 32))(v33, v31, v21);
    v44 = objc_opt_self();
    result = [v44 hk_gregorianCalendar];
    v105 = v21;
    if (result)
    {
      v45 = result;
      v46 = v33;
      v47 = *MEMORY[0x277CCE2F8];
      v48 = sub_265B76320();
      v49 = [v45 hk:v47 startOfWeekWithFirstWeekday:v48 beforeDate:0 addingWeeks:?];

      v50 = v118;
      sub_265B76330();

      v51 = [v44 currentCalendar];
      sub_265B763C0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
      v52 = sub_265B76400();
      v53 = *(v52 - 8);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_265B78400;
      (*(v53 + 104))(v55 + v54, *MEMORY[0x277CC9968], v52);
      sub_265B54134(v55);
      swift_setDeallocating();
      (*(v53 + 8))(v55 + v54, v52);
      swift_deallocClassInstance();
      v56 = v117;
      sub_265B763A0();

      (*(v110 + 8))(v13, v111);
      v57 = v116;
      sub_265B76E20();
      v58 = v122;
      v59 = *(v122 + 16);
      v60 = v106;
      v111 = v46;
      v61 = v46;
      v62 = v105;
      v59(v106, v61, v105);
      v63 = v115;
      v64 = v50;
      v65 = v57;
      v59(v115, v64, v62);
      v66 = sub_265B76F50();
      v67 = sub_265B77280();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v124[0] = v110;
        *v68 = 136315394;
        sub_265B549EC(&qword_280035A58, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v69 = sub_265B77550();
        v71 = v70;
        v72 = *(v58 + 8);
        v72(v60, v62);
        v73 = sub_265B402B4(v69, v71, v124);

        *(v68 + 4) = v73;
        *(v68 + 12) = 2080;
        v74 = v115;
        v75 = sub_265B77550();
        v77 = v76;
        v115 = v72;
        v72(v74, v62);
        v78 = v119;
        v56 = v117;
        v79 = sub_265B402B4(v75, v77, v124);

        *(v68 + 14) = v79;
        _os_log_impl(&dword_265B3E000, v66, v67, "Determining the difference between firstWeekdayOfStreakEnd (%s), and currentStartOfWeek (%s)", v68, 0x16u);
        v80 = v110;
        swift_arrayDestroy();
        MEMORY[0x26676C0C0](v80, -1, -1);
        MEMORY[0x26676C0C0](v68, -1, -1);

        v81 = *(v120 + 8);
        v81(v116, v121);
        v82 = v107;
      }

      else
      {

        v83 = *(v58 + 8);
        v83(v63, v62);
        v115 = v83;
        v83(v60, v62);
        v81 = *(v120 + 8);
        v81(v65, v121);
        v82 = v107;
        v78 = v119;
      }

      v84 = sub_265B76270();
      v85 = v114;
      if ((v86 & 1) != 0 || v84 < 14)
      {
        (*(v112 + 8))(v56, v113);
        v98 = v115;
        (v115)(v118, v62);
        v98(v111, v62);
        v99 = sub_265B769A0();
        return (*(*(v99 - 8) + 16))(v78, v82, v99);
      }

      else
      {
        v87 = v78;
        v88 = v84;
        sub_265B76E20();
        v89 = sub_265B76F50();
        v90 = sub_265B77280();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v123 = v88;
          v124[0] = v92;
          *v91 = 136315138;
          v93 = sub_265B77550();
          v95 = sub_265B402B4(v93, v94, v124);

          *(v91 + 4) = v95;
          _os_log_impl(&dword_265B3E000, v89, v90, "Number of days since the first weekday of the streak end is %s, updating weeklyStreak to nil", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v92);
          MEMORY[0x26676C0C0](v92, -1, -1);
          v96 = v91;
          v56 = v117;
          MEMORY[0x26676C0C0](v96, -1, -1);

          v97 = v114;
        }

        else
        {

          v97 = v85;
        }

        v81(v97, v121);
        v100 = v108;
        (*(v103 + 56))(v108, 1, 1, v104);
        sub_265B53CFC(v100, v87);
        sub_265B54CA8(v100, &qword_280035A48, &qword_265B78E38);
        (*(v112 + 8))(v56, v113);
        v101 = v115;
        (v115)(v118, v62);
        return v101(v111, v62);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265B53CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265B769A0();
  v32 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v28 - v7;
  v8 = sub_265B76F60();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_265B76970();
  v30 = v14;
  v31 = v13;
  sub_265B76990();
  sub_265B76940();
  sub_265B54094(a1, v12);
  sub_265B76920();
  sub_265B76980();
  sub_265B76930();
  sub_265B76950();
  v15 = v4;
  v16 = v32;
  sub_265B76960();
  sub_265B76E20();
  v17 = *(v16 + 16);
  v17(v35, a2, v4);
  v18 = sub_265B76F50();
  v19 = sub_265B77280();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v21;
    *v20 = 136315138;
    v22 = v35;
    v17(v29, v35, v15);
    v23 = sub_265B77040();
    v25 = v24;
    (*(v16 + 8))(v22, v15);
    v26 = sub_265B402B4(v23, v25, &v37);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_265B3E000, v18, v19, "[AchievementEnvironmentCache] New cache after updating weekly streak: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26676C0C0](v21, -1, -1);
    MEMORY[0x26676C0C0](v20, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v35, v4);
  }

  return (*(v33 + 8))(v36, v34);
}

uint64_t sub_265B54094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B54104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_265B5411C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_265B54134(uint64_t a1)
{
  v2 = sub_265B76400();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A60, &qword_265B78E48);
    v9 = sub_265B77420();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_265B549EC(&qword_280CEB918, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_265B76FE0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_265B549EC(&qword_280035A68, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_265B76FF0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_265B54454(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
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
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *a5;
    v23 = sub_265B65E98(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v38 & 1) == 0)
      {
        sub_265B6DBE8();
      }
    }

    else
    {
      sub_265B64108(v26, v38 & 1);
      v28 = sub_265B65E98(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *a5;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_265B45764(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265B775A0();
  __break(1u);
  return result;
}

uint64_t sub_265B546C8(int a1, int a2)
{
  v28 = a2;
  v29 = a1;
  v3 = sub_265B769A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_265B76F60();
  v7 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  sub_265B76E20();
  (*(v4 + 16))(v6, v2, v3);
  v13 = sub_265B76F50();
  v14 = sub_265B77280();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27[1] = v2;
    v16 = v15;
    *v15 = 134217984;
    v17 = sub_265B76930();
    (*(v4 + 8))(v6, v3);
    *(v16 + 1) = v17;
    _os_log_impl(&dword_265B3E000, v13, v14, "[AchievementEnvironmentCache] Total number of workouts %ld", v16, 0xCu);
    MEMORY[0x26676C0C0](v16, -1, -1);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  v18 = *(v7 + 8);
  v19 = v12;
  v20 = v30;
  v18(v19, v30);
  if (v29 & 1) != 0 && (v28)
  {
    v21 = sub_265B76930();
    v22 = __OFADD__(v21, 1);
    result = v21 + 1;
    if (!v22)
    {
      return result;
    }

    __break(1u);
  }

  sub_265B76E20();
  v24 = sub_265B76F50();
  v25 = sub_265B77280();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_265B3E000, v24, v25, "[AchievementEnvironmentCache] Session does not meet completion/duration thresholds, returning current count", v26, 2u);
    MEMORY[0x26676C0C0](v26, -1, -1);
  }

  v18(v10, v20);
  return sub_265B76930();
}

uint64_t sub_265B549EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265B54A34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
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
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_265B65E98(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_265B6DD50();
      }
    }

    else
    {
      sub_265B643AC(v26, v39 & 1);
      v28 = sub_265B65E98(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_265B45764(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265B775A0();
  __break(1u);
  return result;
}

uint64_t sub_265B54CA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static AchievementWeeklyStreakNotification.makeNotification(with:notificationRecord:)(uint64_t a1, uint64_t a2)
{
  v176 = a2;
  v163 = sub_265B76410();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v154[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = sub_265B76280();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v154[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v189 = sub_265B76350();
  v5 = *(v189 - 8);
  v6 = MEMORY[0x28223BE20](v189);
  v174 = &v154[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v168 = &v154[-v9];
  MEMORY[0x28223BE20](v8);
  v167 = &v154[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  MEMORY[0x28223BE20](v11 - 8);
  v178 = &v154[-v12];
  v13 = sub_265B76700();
  v14 = *(v13 - 8);
  v181 = v13;
  v182 = v14;
  MEMORY[0x28223BE20](v13);
  v180 = &v154[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A98, &unk_265B78E80);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v170 = &v154[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v185 = &v154[-v20];
  MEMORY[0x28223BE20](v19);
  v175 = &v154[-v21];
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A90, &qword_265B78E70);
  v22 = MEMORY[0x28223BE20](v171);
  v172 = &v154[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v173 = &v154[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v184 = &v154[-v27];
  MEMORY[0x28223BE20](v26);
  v191 = &v154[-v28];
  v29 = sub_265B769A0();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v154[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v35 = &v154[-v34];
  v187 = sub_265B76F60();
  v190 = *(v187 - 8);
  v36 = MEMORY[0x28223BE20](v187);
  v160 = &v154[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v159 = &v154[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v157 = &v154[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v158 = &v154[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v156 = &v154[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v177 = &v154[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v183 = &v154[-v49];
  MEMORY[0x28223BE20](v48);
  v51 = &v154[-v50];
  sub_265B76E20();
  v52 = *(v30 + 16);
  v179 = a1;
  v188 = v29;
  v52(v35, a1, v29);
  v53 = sub_265B76F50();
  v54 = sub_265B77280();
  v55 = os_log_type_enabled(v53, v54);
  v186 = v5;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v192 = v169;
    *v56 = 136315138;
    v57 = v35;
    v155 = v54;
    v58 = v35;
    v59 = v30;
    v60 = v188;
    v52(v33, v57, v188);
    v61 = sub_265B77040();
    v63 = v62;
    (*(v59 + 8))(v58, v60);
    v64 = sub_265B402B4(v61, v63, &v192);

    *(v56 + 4) = v64;
    _os_log_impl(&dword_265B3E000, v53, v155, "Evaluating weekly streak notification with environment cache: %s", v56, 0xCu);
    v65 = v169;
    __swift_destroy_boxed_opaque_existential_1(v169);
    MEMORY[0x26676C0C0](v65, -1, -1);
    MEMORY[0x26676C0C0](v56, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v35, v188);
  }

  v66 = v187;
  v188 = *(v190 + 8);
  v188(v51, v187);
  v68 = v175;
  v67 = v176;
  sub_265B56330(v176, v175, &qword_280035A98, &unk_265B78E80);
  v69 = sub_265B769D0();
  v70 = *(v69 - 8);
  v169 = *(v70 + 48);
  v71 = (v169)(v68, 1, v69);
  v72 = v191;
  if (v71 == 1)
  {
    sub_265B54CA8(v68, &qword_280035A98, &unk_265B78E80);
    (*(v186 + 56))(v72, 1, 1, v189);
  }

  else
  {
    sub_265B769B0();
    (*(v70 + 8))(v68, v69);
  }

  v73 = v184;
  v74 = v185;
  v75 = v183;
  sub_265B76E20();
  sub_265B56330(v67, v74, &qword_280035A98, &unk_265B78E80);
  sub_265B56330(v72, v73, &qword_280035A90, &qword_265B78E70);
  v76 = v73;
  v77 = sub_265B76F50();
  v78 = sub_265B77280();
  if (os_log_type_enabled(v77, v78))
  {
    LODWORD(v176) = v78;
    v79 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v192 = v175;
    *v79 = 136315394;
    v80 = v170;
    sub_265B56330(v74, v170, &qword_280035A98, &unk_265B78E80);
    if ((v169)(v80, 1, v69) == 1)
    {
      sub_265B54CA8(v80, &qword_280035A98, &unk_265B78E80);
      v81 = 0;
      v82 = 0xE000000000000000;
    }

    else
    {
      v81 = sub_265B769C0();
      v82 = v86;
      (*(v70 + 8))(v80, v69);
    }

    v84 = v186;
    v85 = v181;
    v87 = v183;
    sub_265B54CA8(v185, &qword_280035A98, &unk_265B78E80);
    v88 = sub_265B402B4(v81, v82, &v192);

    *(v79 + 4) = v88;
    *(v79 + 12) = 2080;
    v89 = v184;
    v90 = sub_265B772E0();
    v92 = v91;
    sub_265B54CA8(v89, &qword_280035A90, &qword_265B78E70);
    v93 = sub_265B402B4(v90, v92, &v192);

    *(v79 + 14) = v93;
    _os_log_impl(&dword_265B3E000, v77, v176, "Creating achievement notification for %s with previousPresentationDate: %s", v79, 0x16u);
    v94 = v175;
    swift_arrayDestroy();
    MEMORY[0x26676C0C0](v94, -1, -1);
    MEMORY[0x26676C0C0](v79, -1, -1);

    v95 = v87;
    v83 = v187;
    v188(v95, v187);
  }

  else
  {

    sub_265B54CA8(v76, &qword_280035A90, &qword_265B78E70);
    sub_265B54CA8(v74, &qword_280035A98, &unk_265B78E80);
    v83 = v66;
    v188(v75, v66);
    v84 = v186;
    v85 = v181;
  }

  v96 = v178;
  sub_265B76910();
  v97 = v182;
  v98 = (*(v182 + 48))(v96, 1, v85);
  v99 = v98;
  if (v98 == 1)
  {
    sub_265B54CA8(v96, &qword_280035A48, &qword_265B78E38);
    v100 = v172;
    sub_265B56330(v191, v172, &qword_280035A90, &qword_265B78E70);
    v101 = v189;
    if ((*(v84 + 48))(v100, 1, v189) == 1)
    {
      sub_265B54CA8(v100, &qword_280035A90, &qword_265B78E70);
      v102 = v160;
      sub_265B76E20();
      v103 = sub_265B76F50();
      v104 = sub_265B77280();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_265B3E000, v103, v104, "No streak and no previous presentation date, returning goForIt notification", v105, 2u);
        MEMORY[0x26676C0C0](v105, -1, -1);
      }

      v188(v102, v83);
      v106 = 0;
      goto LABEL_41;
    }

    LODWORD(v185) = v99;
    (*(v84 + 32))(v174, v100, v101);
    v114 = [objc_opt_self() currentCalendar];
    v115 = v161;
    sub_265B763C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
    v116 = sub_265B76400();
    v117 = *(v116 - 8);
    v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_265B78400;
    (*(v117 + 104))(v119 + v118, *MEMORY[0x277CC9968], v116);
    sub_265B54134(v119);
    swift_setDeallocating();
    (*(v117 + 8))(v119 + v118, v116);
    swift_deallocClassInstance();
    v120 = v168;
    sub_265B76340();
    v121 = v164;
    sub_265B763A0();

    v122 = *(v84 + 8);
    v122(v120, v189);
    (*(v162 + 8))(v115, v163);
    v123 = sub_265B76270();
    if (v124)
    {
      v125 = v159;
      sub_265B76E20();
      v126 = sub_265B76F50();
      v127 = sub_265B77280();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_265B3E000, v126, v127, "Failed to determine the date interval since the most recent achievement notification", v128, 2u);
        MEMORY[0x26676C0C0](v128, -1, -1);
      }

      v188(v125, v83);
      goto LABEL_34;
    }

    v141 = v123;
    sub_265B76D80();
    if (v141 < sub_265B76D70())
    {
LABEL_34:
      v106 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v106 - 8) + 104))(v142, *MEMORY[0x277D50D18], v106);
      swift_willThrow();
      (*(v165 + 8))(v121, v166);
      v122(v174, v189);
      goto LABEL_41;
    }

    v149 = v157;
    sub_265B76E20();
    v150 = sub_265B76F50();
    v151 = sub_265B77280();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_265B3E000, v150, v151, "Last presentation date was >=90 days ago, returning goForIt notification", v152, 2u);
      MEMORY[0x26676C0C0](v152, -1, -1);
    }

    v188(v149, v83);
    (*(v165 + 8))(v121, v166);
    v122(v174, v189);
    v106 = 0;
  }

  else
  {
    LODWORD(v185) = v98;
    (*(v97 + 32))(v180, v96, v85);
    v107 = AchievementWeeklyStreak.earnedThisWeek.getter();
    sub_265B76E20();
    v108 = sub_265B76F50();
    v109 = sub_265B77280();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 67109120;
      *(v110 + 4) = (v107 & 1) == 0;
      _os_log_impl(&dword_265B3E000, v108, v109, "Current streak extendable: %{BOOL}d", v110, 8u);
      MEMORY[0x26676C0C0](v110, -1, -1);
    }

    v188(v177, v83);
    v111 = v173;
    sub_265B56330(v191, v173, &qword_280035A90, &qword_265B78E70);
    v112 = v189;
    if ((*(v84 + 48))(v111, 1, v189) == 1)
    {
      sub_265B54CA8(v111, &qword_280035A90, &qword_265B78E70);
      if (v107)
      {
        v106 = sub_265B764D0();
        sub_265B5046C();
        swift_allocError();
        (*(*(v106 - 8) + 104))(v113, *MEMORY[0x277D50D18], v106);
        swift_willThrow();
        (*(v97 + 8))(v180, v85);
      }

      else
      {
        v136 = v158;
        sub_265B76E20();
        v137 = sub_265B76F50();
        v138 = sub_265B77280();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&dword_265B3E000, v137, v138, "Streak was extendable with no previous presentation date, returning maintain streak notification", v139, 2u);
          MEMORY[0x26676C0C0](v139, -1, -1);
        }

        v188(v136, v83);
        v140 = v180;
        v106 = sub_265B766F0();
        (*(v97 + 8))(v140, v85);
      }
    }

    else
    {
      v129 = v111;
      v130 = v167;
      (*(v84 + 32))(v167, v129, v112);
      if (v107 & 1) != 0 || (v131 = v168, sub_265B76340(), v132 = Date.isSameWeek(as:)(v130), v133 = *(v84 + 8), v134 = v131, v112 = v189, v133(v134, v189), (v132))
      {
        v106 = sub_265B764D0();
        sub_265B5046C();
        swift_allocError();
        (*(*(v106 - 8) + 104))(v135, *MEMORY[0x277D50D18], v106);
        swift_willThrow();
        (*(v84 + 8))(v130, v112);
        (*(v182 + 8))(v180, v85);
      }

      else
      {
        v143 = v156;
        sub_265B76E20();
        v144 = sub_265B76F50();
        v145 = sub_265B77280();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          _os_log_impl(&dword_265B3E000, v144, v145, "Streak was extendable with no previous presentation date this week, returning maintain streak notification", v146, 2u);
          v147 = v146;
          v130 = v167;
          MEMORY[0x26676C0C0](v147, -1, -1);
        }

        v188(v143, v187);
        v148 = v180;
        v106 = sub_265B766F0();
        v133(v130, v189);
        (*(v182 + 8))(v148, v85);
      }
    }
  }

LABEL_41:
  sub_265B54CA8(v191, &qword_280035A90, &qword_265B78E70);
  return v106;
}

uint64_t sub_265B56330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t RequestCoalescerError.hashValue.getter()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

unint64_t sub_265B56410()
{
  result = qword_280035AA0;
  if (!qword_280035AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AA0);
  }

  return result;
}

uint64_t dispatch thunk of SummaryShelfLockupDescriptorsCaching.fetch()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B4C6BC;

  return v7(a1, a2);
}