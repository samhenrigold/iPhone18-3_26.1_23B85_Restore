uint64_t FairPlayValidationManager.validateDownloadedEpisodes(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177E0C();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR___PFFairPlayValidationManager_internalQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1D8D6F9C0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  sub_1D8D1F93C(a1, a2);
  sub_1D9177E4C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1D8D6E7DC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D6E814()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D8D6E8B8()
{
  result = qword_1ECAB8520;
  if (!qword_1ECAB8520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8520);
  }

  return result;
}

uint64_t sub_1D8D6E9F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_1D8D6EBC0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8D6ECD0, 0, 0);
}

uint64_t sub_1D8D6ECD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  v4(v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D8D6EE7C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0EC0);
  __swift_project_value_buffer(v0, qword_1ECAB0EC0);
  return sub_1D917742C();
}

uint64_t objectdestroy_5Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_3()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D8D6F198(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1D8D6F530();
    v4 = sub_1D917802C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PFAnalyticsNumberForGlobalEpisodeLimit()
{
  v0 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v1 = [v0 objectForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  v2 = PFAnalyticsNumberFromPodcastEpisodeLimitPolicy(v1);

  return v2;
}

id sub_1D8D6F298()
{
  v0 = PFAnalyticsNumberForGlobalEpisodeLimit();
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = 0xD000000000000015;
    v2 = inited + 32;
    *(inited + 40) = 0x80000001D91D8E00;
    *(inited + 48) = v0;
    v0 = sub_1D8D6F4B4(inited);
    swift_setDeallocating();
    sub_1D8D6F4C8(v2);
  }

  return v0;
}

void *PFAnalyticsNumberFromPodcastEpisodeLimitPolicy(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 unsignedLongLongValue];
    v3 = &unk_1F54BDD18;
    if (v2 > 6)
    {
      if (v2 > 4294967294)
      {
        if (v2 == 0x100000001)
        {
          v5 = &unk_1F54BDE38;
        }

        else
        {
          v5 = &unk_1F54BDD18;
        }

        if (v2 == 0x100000000)
        {
          v6 = &unk_1F54BDE20;
        }

        else
        {
          v6 = v5;
        }

        if (v2 == 0xFFFFFFFFLL)
        {
          v3 = &unk_1F54BDE08;
        }

        else
        {
          v3 = v6;
        }
      }

      else
      {
        switch(v2)
        {
          case 7:
            v3 = &unk_1F54BDDC0;
            break;
          case 8:
            v3 = &unk_1F54BDDD8;
            break;
          case 9:
            v3 = &unk_1F54BDDF0;
            break;
        }
      }
    }

    else if (v2 > 3)
    {
      if (v2 == 4)
      {
        v3 = &unk_1F54BDD78;
      }

      else if (v2 == 5)
      {
        v3 = &unk_1F54BDD90;
      }

      else
      {
        v3 = &unk_1F54BDDA8;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          v3 = &unk_1F54BDD30;
          break;
        case 2:
          v3 = &unk_1F54BDD48;
          break;
        case 3:
          v3 = &unk_1F54BDD60;
          break;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D8D6F4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8D6F530()
{
  result = qword_1EDCD07F8;
  if (!qword_1EDCD07F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD07F8);
  }

  return result;
}

uint64_t sub_1D8D6F57C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v36 = a8;
  v35 = a7;
  v33 = a6;
  v32 = a5;
  v31 = a4;
  v34 = a9;
  v13 = *v9;
  v14 = *v9;
  v15 = sub_1D917752C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v13[21];
  v20 = v13[10];
  v21 = v13[13];
  v40[1] = 0;
  v40[2] = 0;
  v39 = v21;
  v40[0] = MEMORY[0x1E69E7CC0];
  v37 = v20;
  v30 = *(v14 + 11);
  v38 = v30;
  v22 = type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v37);
  v23 = sub_1D8D07908(v40, v22);

  *(v9 + v19) = v23;
  sub_1D917751C();
  (*(v16 + 32))(v9 + qword_1EDCDE880, v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DF0, &qword_1D91955B8);
  v24 = swift_allocObject();
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 0;
  *(v9 + *(*v9 + 176)) = v24;
  (*(*(v30 - 8) + 16))(v9 + *(*v9 + 120), a1);
  sub_1D8CFD9D8(a2, v9 + *(*v9 + 128));
  v25 = v9 + *(*v9 + 136);
  v26 = v31;
  *v25 = a3;
  *(v25 + 8) = v26;
  *(v25 + 16) = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v27 = (v9 + *(*v9 + 144));
  v28 = v35;
  *v27 = v33;
  v27[1] = v28;
  *(v9 + *(*v9 + 152)) = v36;
  *(v9 + *(*v9 + 160)) = v34;
  return v9;
}

void sub_1D8D6F9CC(uint64_t a1, void (*a2)(id, void *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD0F68);
    v8 = v6;
    v9 = sub_1D917741C();
    v10 = sub_1D9178CDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      v13 = sub_1D8D6FDF8();
      v15 = sub_1D8CFA924(v13, v14, &v31);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "%s Validating downloaded FairPlay episodes.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = a2;
    v16[4] = a3;
    v17 = *&v8[OBJC_IVAR___PFFairPlayValidationManager_internalQueue];
    v18 = swift_allocObject();
    v18[2] = sub_1D8D96718;
    v18[3] = v16;
    v18[4] = v17;
    v18[5] = v8;
    v19 = a3;
    v21 = *&v8[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher + 24];
    v20 = *&v8[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher], v21);
    v22 = swift_allocObject();
    v22[2] = sub_1D8EAD99C;
    v22[3] = v18;
    v22[4] = v8;
    v30 = *(v20 + 16);
    v23 = v8;
    sub_1D8D1F93C(a2, v19);

    v24 = v17;

    v30(sub_1D8D96930, v22, v21, v20);
  }

  else if (a2)
  {
    v25 = type metadata accessor for FairPlayValidationManager.Response();
    v26 = objc_allocWithZone(v25);
    v27 = MEMORY[0x1E69E7CC0];
    *&v26[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = MEMORY[0x1E69E7CC0];
    *&v26[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v27;
    *&v26[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v27;
    v32.receiver = v26;
    v32.super_class = v25;
    v28 = objc_msgSendSuper2(&v32, sel_init);
    sub_1D8EAD948();
    v29 = swift_allocError();
    a2(v28, v29);
  }
}

uint64_t sub_1D8D6FD28()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8D6FD70()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D6FDB8()
{

  return swift_deallocObject();
}

unint64_t sub_1D8D6FDF8()
{
  v1 = (v0 + OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
    *v1 = 0xD00000000000002FLL;
    v1[1] = 0x80000001D91CC260;
  }

  return v2;
}

uint64_t sub_1D8D6FE5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v7 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 16);

  v10(sub_1D8D8143C, v9, v6, v7);
}

uint64_t sub_1D8D6FF68()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D6FFCC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = sub_1D8D80B1C;
  v9[4] = v8;
  v9[5] = v5;
  v13[4] = sub_1D8E966AC;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_20_1;
  v10 = _Block_copy(v13);

  v11 = v7;

  [v11 performBlock_];
  _Block_release(v10);
}

uint64_t sub_1D8D7016C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D701C0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1D8D70240(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1D8D702A0()
{
  v3[3] = &type metadata for Podcasts;
  v3[4] = sub_1D8CF0F2C();
  LOBYTE(v3[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v2 = &unk_1F545D280;
  if (v0)
  {
    v2 = &unk_1F545D248;
  }

  off_1ECAB1FF0 = v2;
  return result;
}

void sub_1D8D7037C(uint64_t a1)
{
  v26 = *v1;
  v2 = v26;
  v27 = a1;
  v3 = *(v26 + 176);
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = *(v1 + *(v2 + 216));
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 208);
  swift_beginAccess();
  v14 = *(v1 + v13);
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (!v14)
    {
LABEL_6:
      *(v1 + *(*v1 + 232)) = 0;
      os_unfair_lock_unlock(v12 + 4);
      return;
    }
  }

  v15 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v15, v4);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_6;
  }

  v16 = v11;
  (*(v8 + 32))(v11, v7, v3);
  swift_beginAccess();
  v17 = *(v1 + v13);
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
      v18 = sub_1D91777FC();
    }

    else
    {
      if (v17 < 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v17)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v18 = v17 - 1;
    }

    *(v1 + v13) = v18;
  }

  swift_endAccess();
  *(v1 + *(*v1 + 232)) = 1;
  os_unfair_lock_unlock(v12 + 4);
  v19 = v1;
  os_unfair_recursive_lock_lock_with_options();
  v20 = sub_1D91777AC();
  os_unfair_recursive_lock_unlock();
  sub_1D91777FC();
  if (sub_1D91777DC())
  {
LABEL_17:
    os_unfair_lock_lock(v12 + 4);
    v21 = v19;
    swift_beginAccess();
    v22 = *(v19 + v13);
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
LABEL_26:
      swift_endAccess();
      os_unfair_lock_unlock(v12 + 4);
      goto LABEL_27;
    }

    sub_1D91777FC();
    v23 = sub_1D91777DC();
    v24 = sub_1D91777FC();
    if (v23)
    {
LABEL_25:
      *(v21 + v13) = v24;
      goto LABEL_26;
    }

    if (sub_1D91777DC())
    {
LABEL_23:
      v24 = sub_1D91777FC();
      goto LABEL_25;
    }

    if (((v22 | v20) & 0x8000000000000000) == 0)
    {
      v24 = v22 + v20;
      if (!__OFADD__(v22, v20))
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_34:
        __break(1u);
        return;
      }

      goto LABEL_23;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v20 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v20)
  {
    goto LABEL_17;
  }

LABEL_27:
  (*(v8 + 8))(v16, v3);
}

uint64_t _s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 128) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1D917739C();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D708E4, 0, 0);
}

uint64_t sub_1D8D708E4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 128);
  sub_1D8CF5C74(*(v0 + 24), v2);
  (*(v4 + 16))(v1, v5, v3);
  v10 = _sScT18PodcastsFoundations5NeverORs_rlE8priority10signposter4name5blockScTyxACGScPSg_2os12OSSignposterVs12StaticStringVxyYaYAcntcfC(v2, v1, v8, v7, v9, v6, v15, v16);
  *(v0 + 112) = v10;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1D8D9CCEC;
  v12 = *(v0 + 64);
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DA40](v13, v10, v12);
}

uint64_t _sScT18PodcastsFoundations5NeverORs_rlE8priority10signposter4name5blockScTyxACGScPSg_2os12OSSignposterVs12StaticStringVxyYaYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v11 = sub_1D917739C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  sub_1D8CF5C74(a1, &v28 - v16);
  (*(v12 + 16))(v14, a2, v11);
  v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v19 = (v18 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a8;
  (*(v12 + 32))(&v21[v18], v14, v11);
  v22 = &v21[v19];
  v23 = v30;
  *v22 = v29;
  *(v22 + 1) = v23;
  v22[16] = v31;
  v24 = &v21[v20];
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  v26 = sub_1D8F4D428(0, 0, v17, &unk_1D9197070, v21, a8);
  (*(v12 + 8))(a2, v11);
  sub_1D8CF5CE4(v28);
  return v26;
}

uint64_t sub_1D8D70C34()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8D70D10(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8CF7944(a1, v4);
}

uint64_t sub_1D8D70DD8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1D917739C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v9 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D8D58924;

  return sub_1D8D70F40(a1, v7, v8, v1 + v5, v10, v11, v13, v12);
}

uint64_t sub_1D8D70F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v13;
  *(v8 + 168) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  v9 = sub_1D91773AC();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = sub_1D917734C();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D71088, 0, 0);
}

uint64_t sub_1D8D71088(uint64_t a1)
{
  sub_1D917737C();
  sub_1D917731C();
  v2 = sub_1D917737C();
  v3 = sub_1D9178F5C();
  result = sub_1D917918C();
  if (result)
  {
    v5 = *(v1 + 48);
    if ((*(v1 + 168) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x1DA72CB90](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v8 = *(v1 + 128);
  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 56);
  (*(v10 + 16))(*(v1 + 120), v8, v9);
  sub_1D91773FC();
  swift_allocObject();
  *(v1 + 136) = sub_1D91773EC();
  v12 = *(v10 + 8);
  *(v1 + 144) = v12;
  *(v1 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  v15 = (v11 + *v11);
  v13 = swift_task_alloc();
  *(v1 + 160) = v13;
  *v13 = v1;
  v13[1] = sub_1D8D9BE98;
  v14 = *(v1 + 32);

  return v15(v14);
}

uint64_t ArtworkRequest.key.getter()
{
  v1 = v0;
  v2 = v0[1];
  v45 = *v0;
  v46 = v2;
  v43 = 8217467;
  v44 = 0xE300000000000000;
  v41 = CropCode.rawValue.getter();
  v42 = v3;
  v4 = sub_1D8D447DC();

  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1D917922C(&v43, &v41, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v4, v4, v4);
  v8 = v7;

  v45 = v6;
  v46 = v8;
  v43 = 8222587;
  v44 = 0xE300000000000000;
  v41 = sub_1D8D756D0(v9, v10);
  v41 = sub_1D9179A4C();
  v42 = v11;
  v12 = sub_1D917922C(&v43, &v41, 0, 0, 0, 1, v5, v5, v5, v4, v4, v4);
  v14 = v13;

  v45 = v12;
  v46 = v14;
  v43 = 8218747;
  v44 = 0xE300000000000000;
  v41 = sub_1D8D75758(v15, v16);
  v41 = sub_1D9179A4C();
  v42 = v17;
  v18 = sub_1D917922C(&v43, &v41, 0, 0, 0, 1, v5, v5, v5, v4, v4, v4);
  v20 = v19;

  v45 = v18;
  v46 = v20;
  v43 = 8218235;
  v44 = 0xE300000000000000;
  v41 = 0;
  v42 = 0xE000000000000000;
  v21 = 1734701162;
  if (*(v1 + 152) != 2)
  {
    v21 = 1667851624;
  }

  v22 = 6778986;
  if (!*(v1 + 152))
  {
    v22 = 6778480;
  }

  if (*(v1 + 152) <= 1u)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (*(v1 + 152) <= 1u)
  {
    v24 = 0xE300000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v23, v24);

  v25 = sub_1D917922C(&v43, &v41, 0, 0, 0, 1, v5, v5, v5, v4, v4, v4);
  v27 = v26;

  v45 = v25;
  v46 = v27;
  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v28 = sub_1D9178A4C();
  MEMORY[0x1DA7298F0](v28);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v29 = sub_1D9178A4C();
  MEMORY[0x1DA7298F0](v29);

  v30 = MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v30.n128_u64[0] = v1[24];
  v31 = sub_1D8DAF458(v30);
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = v31;
  }

  v43 = v33;
  v34 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v34);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  if (*(v1 + 200))
  {
    v35 = 82;
  }

  else
  {
    v35 = 70;
  }

  MEMORY[0x1DA7298F0](v35, 0xE100000000000000);
  v36 = *(v1 + 201);
  if (v36 != 16)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    LOBYTE(v41) = v36;
    sub_1D917964C();
    MEMORY[0x1DA7298F0](v43, v44);
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  LOBYTE(v41) = *(v1 + 202);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](v43, v44);

  v37 = v1[26];
  if (*(v37 + 16))
  {
    v43 = 45;
    v44 = 0xE100000000000000;
    v38 = Array<A>.cacheKey.getter(v37);
    MEMORY[0x1DA7298F0](v38);

    MEMORY[0x1DA7298F0](v43, v44);
  }

  v39 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v39;
}

void sub_1D8D718AC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D8D71950(v1 + v3, *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D8D71950(int a1, id a2, uint64_t a3, void (*a4)(void))
{
  [a2 setSessionSendsLaunchEvents_];
  [a2 setDiscretionary_];
  [a2 setSharedContainerIdentifier_];
  v7 = [objc_opt_self() sessionWithConfiguration:a2 delegate:a3 delegateQueue:0];
  a4();
}

uint64_t EmitLifecycle.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8D088B4(v4 + *(a2 + 36), &v21, &qword_1ECAB4928, &qword_1D918B380);
  if (v23)
  {
    sub_1D8D6BCE0(&v21, v24);
    v20 = *(a2 + 24);
    *&v21 = *(a2 + 16);
    *(&v21 + 1) = a3;
    v22 = v20;
    v23 = a4;
    type metadata accessor for EmitLifecycle.LifecycleEmitting(0, &v21);
    sub_1D8CFD9D8(v24, &v21);
    v9 = v4 + *(a2 + 40);
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = (v4 + *(a2 + 44));
    v13 = *v12;
    v14 = v12[1];
    v15 = *(a2 + 52);
    v16 = *(v4 + *(a2 + 48));
    v17 = *(v4 + v15);
    v18 = *(v9 + 16);

    *&v21 = sub_1D8D71D38(a1, &v21, v10, v11, v18, v13, v14, v16, v17);
    swift_getWitnessTable();
    sub_1D9177AFC();

    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_1D8D08A50(&v21, &qword_1ECAB4928, &qword_1D918B380);
    return sub_1D9177AFC();
  }
}

uint64_t sub_1D8D71C34(uint64_t a1)
{
  result = sub_1D917752C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8D71D38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v18 = *(v9 + 96);
  v20[0] = *(v9 + 80);
  v20[1] = v18;
  type metadata accessor for EmitLifecycle.LifecycleEmitting(0, v20);
  swift_allocObject();
  return sub_1D8D6F57C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t Publishers.CachedAssetPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v39 = a4;
  v37 = *(*(a2 + 24) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 40);
  v11 = v10;
  v33 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v32 - v13;
  v14 = *(a2 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 32);
  v40[0] = v14;
  v40[1] = v11;
  v40[2] = v24;
  v41 = v23;
  v25 = v24;
  WitnessTable = v9;
  v43 = v39;
  v26 = _s20CachedAssetPublisherV5InnerCMa(0, v40);
  (*(v19 + 16))(v22, v38, v25);
  (*(v15 + 16))(v18, v4, v14);
  v27 = v34;
  (*(v12 + 16))(v34, v4 + *(a2 + 52), AssociatedTypeWitness);
  v28 = v36;
  (*(v37 + 16))(v36, v4 + *(a2 + 56), v33);
  LODWORD(v14) = *(v4 + *(a2 + 60));
  v29 = *(v4 + *(a2 + 64));
  swift_allocObject();
  v30 = sub_1D8D72358(v22, v18, v27, v28, v14, v29);
  v41 = v26;
  WitnessTable = swift_getWitnessTable();
  v40[0] = v30;
  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_1D8D721BC(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D91791BC();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

char *sub_1D8D72358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v24 = a1;
  v25 = a2;
  v7 = *v6;
  v8 = *(*v6 + 80);
  v26 = sub_1D91791BC();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v6 + 2) = v12;
  v13 = v7[20];
  v14 = *(v8 - 8);
  v15 = *(v14 + 56);
  v15(&v6[v13], 1, 1, v8);
  v16 = &v6[*(*v6 + 168)];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = *(*v6 + 176);
  *&v6[v17] = sub_1D91777EC();
  (*(*(v7[12] - 8) + 32))(&v6[*(*v6 + 136)], v24);
  (*(v14 + 32))(v11, v25, v8);
  v15(v11, 0, 1, v8);
  swift_beginAccess();
  (*(v9 + 40))(&v6[v13], v11, v26);
  swift_endAccess();
  v18 = *(*v6 + 184);
  v19 = v7[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v6[v18], v27, AssociatedTypeWitness);
  (*(*(v19 - 8) + 32))(&v6[*(*v6 + 192)], v28, v19);
  v21 = v30;
  v6[*(*v6 + 144)] = v29;
  v6[*(*v6 + 152)] = v21;
  return v6;
}

uint64_t sub_1D8D72714()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + *(*v1 + 168));
  v4 = *(*v0 + 80);
  v11 = v4;
  v5 = v2[11];
  v12 = v5;
  v6 = v2[12];
  v13 = v6;
  v7 = v2[13];
  v14 = v7;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v15);
  sub_1D8D056BC(sub_1D8F2B014, v10, v3);
  v8 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v8 + 24);
  sub_1D8F2B02C(&v8[4]);
  os_unfair_lock_unlock(v8 + 24);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v18 = type metadata accessor for EmitLifecycle.LifecycleEmitting(0, &v15);
  WitnessTable = swift_getWitnessTable();
  v15 = v0;

  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
}

uint64_t sub_1D8D728EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CombinedTrace.identifier.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v3 = v18;
    v4 = v1 + 32;
    do
    {
      sub_1D8CFD9D8(v4, v15);
      v5 = v16;
      v6 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v18 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D8D41BE0((v10 > 1), v11 + 1, 1);
        v3 = v18;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v15[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v13 = sub_1D917817C();

  return v13;
}

uint64_t sub_1D8D72ADC()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1D8D72B0C()
{
  result = qword_1EDCD7708;
  if (!qword_1EDCD7708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7708);
  }

  return result;
}

uint64_t sub_1D8D72B70(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1D8D72BCC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D917752C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + v4[21]);
  v28 = v4[10];
  v29 = v4[11];
  v30 = v4[12];
  v31 = v4[13];
  v32 = a1;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v34);
  sub_1D8D056BC(sub_1D8F2AFD8, v27, v9);
  v10 = *v2;
  if (*(v2 + *(*v2 + 160)) == 1)
  {
    v11 = (v2 + *(*v2 + 128));
    v12 = v11[3];
    v13 = v11[4];
    v26 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v14 = v2 + *(*v2 + 136);
    v15 = *v14;
    v24 = *(v14 + 1);
    v25 = v15;
    HIDWORD(v23) = v14[16];
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1D917946C();
    v16 = (v2 + *(*v2 + 144));
    v18 = *v16;
    v17 = v16[1];

    v34 = v18;
    v35 = v17;
    MEMORY[0x1DA7298F0](0xD000000000000012, 0x80000001D91CD420);
    sub_1D8DB1938(v8);
    v19 = sub_1D917750C();
    (*(v6 + 8))(v8, v5);
    v33 = v19;
    v20 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v20);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    (*(v13 + 16))(v25, v24, HIDWORD(v23), v34, v35, v12, v13);

    v10 = *v2;
  }

  v21 = *(v2 + *(v10 + 176));
  os_unfair_lock_lock(v21 + 24);
  sub_1D8D088B4(&v21[4], &v34, qword_1ECAB6CD0, &unk_1D9195040);
  os_unfair_lock_unlock(v21 + 24);
  if (!v37)
  {
    return sub_1D8D08A50(&v34, qword_1ECAB6CD0, &unk_1D9195040);
  }

  __swift_project_boxed_opaque_existential_1(&v34, v37);
  sub_1D917782C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v34);
}

void sub_1D8D72FA8(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v72 = *v1;
  v3 = v72[13];
  v4 = v72[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v65 = AssociatedTypeWitness;
  v64 = sub_1D91777CC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v59 - v6;
  v68 = sub_1D91791BC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v59 - v10;
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v61 = (v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v60 = v59 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1D91791BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v59 - v19;
  v71 = v16;
  v73 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v66 = v59 - v22;
  v23 = *(v2 + 2);
  os_unfair_lock_lock(v23 + 4);
  v24 = *(*v2 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(&v2[v24], &v78);
  if (v79 == 1)
  {
    v33 = v23 + 4;
    goto LABEL_7;
  }

  if (v79)
  {
    sub_1D8D6BCE0(&v78, &v74);
    os_unfair_lock_unlock(v23 + 4);
    __swift_project_boxed_opaque_existential_1(&v74, v77);
    sub_1D917782C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    return;
  }

  v59[0] = v11;
  v59[1] = v3;
  os_unfair_lock_unlock(v23 + 4);
  v25 = v23;
  (*(v72[14] + 24))(&v2[*(*v2 + 184)], v72[11]);
  v26 = v71;
  if ((*(v73 + 48))(v20, 1, v71) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v27 = v25;
    os_unfair_lock_lock(v25 + 4);
    v28 = *(*v2 + 160);
    swift_beginAccess();
    v29 = v67;
    v30 = &v2[v28];
    v31 = v68;
    (*(v67 + 16))(v8, v30, v68);
    v32 = v69;
    if ((*(v69 + 48))(v8, 1, v4) == 1)
    {
      (*(v29 + 8))(v8, v31);
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = xmmword_1D918BEE0;
      swift_beginAccess();
      sub_1D8D74118(&v74, &v2[v24]);
      swift_endAccess();
      v33 = v27 + 4;
LABEL_7:
      os_unfair_lock_unlock(v33);
      return;
    }

    v44 = v61;
    (*(v32 + 32))(v61, v8, v4);
    v45 = *(*v2 + 176);
    swift_beginAccess();
    v46 = *&v2[v45];
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
      goto LABEL_29;
    }

    sub_1D91777FC();
    v47 = sub_1D91777DC();
    v48 = sub_1D91777FC();
    if (v47)
    {
LABEL_28:
      *&v2[v45] = v48;
LABEL_29:
      swift_endAccess();
      os_unfair_lock_unlock(v27 + 4);
      v74 = v2;
      swift_getWitnessTable();
      sub_1D9177D5C();
      (*(v32 + 8))(v44, v4);
      return;
    }

    v49 = v70;
    if (sub_1D91777DC())
    {
LABEL_19:
      v48 = sub_1D91777FC();
      goto LABEL_28;
    }

    if (((v46 | v49) & 0x8000000000000000) == 0)
    {
      v48 = v46 + v49;
      if (!__OFADD__(v46, v49))
      {
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_36;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v61 = v25;
  v34 = v66;
  (*(v73 + 32))(v66, v20, v26);
  v35 = v26;
  sub_1D91777AC();
  if (v2[*(*v2 + 152)] != 1)
  {
LABEL_12:
    v42 = v61;
    os_unfair_lock_lock(v61 + 4);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = xmmword_1D918BEE0;
    swift_beginAccess();
    sub_1D8D74118(&v74, &v2[v24]);
    swift_endAccess();
    os_unfair_lock_unlock(v42 + 4);
    v43 = v62;
    (*(*(v65 - 8) + 56))(v62, 1, 1);
    sub_1D917778C();
    (*(v63 + 8))(v43, v64);
    (*(v73 + 8))(v34, v35);
    return;
  }

  v36 = *(*v2 + 160);
  swift_beginAccess();
  v37 = v67;
  v38 = &v2[v36];
  v39 = v59[0];
  v40 = v68;
  (*(v67 + 16))(v59[0], v38, v68);
  v41 = v69;
  if ((*(v69 + 48))(v39, 1, v4) == 1)
  {
    (*(v37 + 8))(v39, v40);
    v35 = v71;
    v34 = v66;
    goto LABEL_12;
  }

  v50 = v60;
  (*(v41 + 32))(v60, v39, v4);
  os_unfair_lock_lock(v61 + 4);
  v51 = *(*v2 + 176);
  swift_beginAccess();
  v52 = *&v2[v51];
  sub_1D91777FC();
  v53 = sub_1D91777DC();
  v54 = v73;
  v55 = v66;
  if ((v53 & 1) == 0)
  {
    sub_1D91777FC();
    v56 = sub_1D91777DC();
    v57 = sub_1D91777FC();
    if ((v56 & 1) == 0)
    {
      v58 = v70;
      if (sub_1D91777DC())
      {
        goto LABEL_26;
      }

      if ((v52 | v58) < 0)
      {
        goto LABEL_35;
      }

      v57 = v52 + v58;
      if (__OFADD__(v52, v58))
      {
LABEL_26:
        v57 = sub_1D91777FC();
      }

      else if (v57 < 0)
      {
LABEL_37:
        __break(1u);
        return;
      }
    }

    *&v2[v51] = v57;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v61 + 4);
  v74 = v2;
  swift_getWitnessTable();
  sub_1D9177D5C();
  (*(v41 + 8))(v50, v4);
  (*(v54 + 8))(v55, v71);
}

void InMemoryAssetCache.asset(at:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5 = *(*v1 + 80);
  v6 = v2[11];
  v7 = v2[12];
  v8 = v2[13];
  v9 = v2[14];
  v10 = a1;
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  type metadata accessor for InMemoryAssetCache.SizedStore(0, v11);
  sub_1D91791BC();
  sub_1D8D056BC(sub_1D8D73F34, &v4, v3);
}

uint64_t sub_1D8D73C44@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v31 = a7;
  v29 = a3;
  v30 = a5;
  v10 = sub_1D9176E3C();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  (*(a4 + 16))(a2, a4, v15);
  v18 = v29;
  v32[0] = a2;
  v32[1] = v29;
  v32[2] = a4;
  v32[3] = v30;
  v32[4] = a6;
  type metadata accessor for InMemoryAssetCache.Record(0, v32);
  sub_1D91780FC();
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  v19 = v33;
  if (v33)
  {
    sub_1D9176E0C();
    v20 = *(*v19 + 136);
    swift_beginAccess();
    (*(v27 + 40))(v19 + v20, v12, v28);
    swift_endAccess();
    v21 = *(v18 - 8);
    v22 = v31;
    (*(v21 + 16))(v31, v19 + *(*v19 + 120), v18);

    v23 = 0;
    v24 = v22;
  }

  else
  {
    v21 = *(v18 - 8);
    v23 = 1;
    v24 = v31;
  }

  return (*(v21 + 56))(v24, v23, 1, v18);
}

uint64_t sub_1D8D73F7C(void *a1)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  v4 = *(*v1 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v1 + v4, v8);
  v5 = v9;
  sub_1D8D740C4(v8);
  if (v5)
  {
    os_unfair_lock_unlock(v3 + 4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1D91777BC();
  }

  else
  {
    sub_1D8CFD9D8(a1, v8);
    swift_beginAccess();
    sub_1D8D74118(v8, v1 + v4);
    swift_endAccess();
    v7 = *(*v1 + 176);
    swift_beginAccess();
    *(v1 + v7) = sub_1D91777EC();
    os_unfair_lock_unlock(v3 + 4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1D917782C();
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation5Trace_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t DiskAssetCache<>.asset(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v95 = a3;
  v7 = *v3;
  v8 = *(v7 + 88);
  v91 = sub_1D91791BC();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85[-v11];
  v13 = *(v7 + 80);
  v94 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v85[-v20];
  v93 = v8;
  v92 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85[-v22];
  v24 = sub_1D9176C2C();
  v96 = *(v24 - 8);
  v97 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v85[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85[-v27];
  FileBasedAssetLocation.fileURL(in:)(v4 + qword_1EDCDE890, v13, a2, &v85[-v27]);
  v29 = [objc_opt_self() defaultManager];
  v98 = v28;
  sub_1D9176BCC();
  v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v31 = [v29 contentsAtPath_];

  if (v31)
  {
    v32 = sub_1D9176C8C();
    v34 = v33;

    v35 = a1;
    v36 = v13;
    (*(a2 + 40))(v32, v34, v13, a2);
    v91 = v32;
    v90 = v23;
    v66 = v98;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v67 = sub_1D917744C();
    __swift_project_value_buffer(v67, qword_1EDCD5E70);
    v68 = v94;
    v69 = v86;
    v70 = v13;
    (*(v94 + 16))(v86, v35, v13);
    v71 = sub_1D917741C();
    v72 = sub_1D9178CEC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v69;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v99 = v75;
      *v74 = 136315138;
      v76 = (*(a2 + 16))(v70, a2);
      v77 = v34;
      v79 = v78;
      (*(v68 + 8))(v73, v70);
      v80 = sub_1D8CFA924(v76, v79, &v99);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_1D8CEC000, v71, v72, "Cache hit for asset at %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1DA72CB90](v75, -1, -1);
      MEMORY[0x1DA72CB90](v74, -1, -1);
      sub_1D8D7567C(v91, v77);

      (*(v96 + 8))(v98, v97);
    }

    else
    {
      sub_1D8D7567C(v91, v34);

      (*(v68 + 8))(v69, v36);
      (*(v96 + 8))(v66, v97);
    }

    v83 = v92;
    v82 = v93;
    v84 = v95;
    (*(v92 + 32))(v95, v90, v93);
    return (*(v83 + 56))(v84, 0, 1, v82);
  }

  else
  {
    v90 = v18;
    v38 = v87;
    v37 = v88;
    v86 = a2;
    InMemoryAssetCache.asset(at:)(a1);
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v39 = sub_1D917744C();
    __swift_project_value_buffer(v39, qword_1EDCD5E70);
    v40 = v37;
    v41 = *(v37 + 16);
    v42 = v38;
    v43 = v91;
    v41(v38, v12, v91);
    v44 = v94;
    v45 = v90;
    v46 = v13;
    (*(v94 + 16))(v90, a1, v13);
    v47 = sub_1D917741C();
    v48 = sub_1D9178CEC();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v98;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v89 = v12;
      v53 = v52;
      v99 = v52;
      *v51 = 136315394;
      v54 = (*(v92 + 48))(v42, 1, v93);
      v55 = v54 == 1;
      if (v54 == 1)
      {
        v56 = 1936943469;
      }

      else
      {
        v56 = 7629160;
      }

      v57 = v42;
      if (v55)
      {
        v58 = 0xE400000000000000;
      }

      else
      {
        v58 = 0xE300000000000000;
      }

      (*(v40 + 8))(v57, v91);
      v59 = sub_1D8CFA924(v56, v58, &v99);

      *(v51 + 4) = v59;
      *(v51 + 12) = 2080;
      v60 = (*(v86 + 2))(v46);
      v62 = v61;
      (*(v44 + 8))(v45, v46);
      v63 = sub_1D8CFA924(v60, v62, &v99);

      *(v51 + 14) = v63;
      _os_log_impl(&dword_1D8CEC000, v47, v48, "Cache %s for asset at %s", v51, 0x16u);
      swift_arrayDestroy();
      v64 = v53;
      v12 = v89;
      MEMORY[0x1DA72CB90](v64, -1, -1);
      v65 = v51;
      v43 = v91;
      MEMORY[0x1DA72CB90](v65, -1, -1);

      (*(v96 + 8))(v98, v97);
    }

    else
    {

      (*(v44 + 8))(v45, v46);
      (*(v96 + 8))(v50, v97);
      (*(v40 + 8))(v42, v43);
    }

    return (*(v40 + 32))(v95, v12, v43);
  }
}

uint64_t FileBasedAssetLocation.fileURL(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a1;
  v18 = a4;
  v6 = sub_1D9176AAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9176C2C();
  v10 = *(v17 - 8);
  v11 = MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = (*(a3 + 16))(a2, a3, v11);
  v19[1] = v14;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968F70], v6);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v7 + 8))(v9, v6);

  (*(a3 + 24))(v19, a2, a3);
  sub_1D9176B4C();

  return (*(v10 + 8))(v13, v17);
}

uint64_t ArtworkRequest.fileName.getter()
{
  v15 = ArtworkRequest.stableFilePrefix.getter();

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);

  sub_1D8D756D0(v1, v2);
  v13 = sub_1D9179A4C();
  v14 = v3;
  v4 = MEMORY[0x1DA7298F0](120, 0xE100000000000000);
  sub_1D8D75758(v4, v5);
  v6 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v6);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);

  v7 = CropCode.rawValue.getter();
  v9 = v8;

  MEMORY[0x1DA7298F0](v7, v9);

  MEMORY[0x1DA7298F0](v13, v14);

  v10 = *(v0 + 208);
  if (*(v10 + 16))
  {
    v11 = Array<A>.cacheKey.getter(v10);
    MEMORY[0x1DA7298F0](v11);

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  }

  return v15;
}

uint64_t sub_1D8D752C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D8D75318(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1D9177FCC();
      sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return sub_1D9177F7C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1D8D754F8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1D8D754F8(v5, v6);
  }

  sub_1D9177FCC();
  sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  return sub_1D9177F7C();
}

uint64_t sub_1D8D754F8(uint64_t a1, uint64_t a2)
{
  result = sub_1D917681C();
  if (!result || (result = sub_1D917683C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D917682C();
      sub_1D9177FCC();
      sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return sub_1D9177F7C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D755D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D75620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D75668(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8D7567C(result, a2);
  }

  return result;
}

uint64_t sub_1D8D7567C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D8D756D0(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(v2 + 40);
  v3 = *(v2 + 192);
  if (*(v2 + 176) * v3 < a2.n128_f64[0])
  {
    a2.n128_f64[0] = *(v2 + 176) * v3;
  }

  result = sub_1D8DAF458(a2);
  if (v5)
  {
    if (600.0 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (600.0 < 9.22337204e18)
    {
      return 600.0;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D75758(uint64_t a1, __n128 a2)
{
  v3 = sub_1D8D756D0(a1, a2);
  v4.n128_u64[0] = *(v2 + 184);
  if (v3 >= 1)
  {
    v4.n128_f64[0] = ceil(v4.n128_f64[0] * v3 / *(v2 + 176));
  }

  result = sub_1D8DAF458(v4);
  if (v6)
  {
    if (600.0 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (600.0 < 9.22337204e18)
    {
      return 600.0;
    }

    __break(1u);
  }

  return result;
}

uint64_t CropCode.rawValue.getter()
{
  result = 25186;
  switch(*v0)
  {
    case 1:
      result = 29299;
      break;
    case 2:
      result = 29555;
      break;
    case 3:
      result = 28006;
      break;
    case 4:
      result = 28262;
      break;
    case 5:
      result = 28518;
      break;
    case 6:
      result = 24934;
      break;
    case 7:
      result = 30309;
      break;
    case 8:
      result = 30053;
      break;
    case 9:
      result = 29797;
      break;
    case 0xA:
      result = 0x4D7370552E545053;
      break;
    case 0xB:
      result = 0x577370552E545053;
      break;
    case 0xC:
      result = 0x547370552E545053;
      break;
    case 0xD:
      result = 0x3042454C532E4553;
      break;
    case 0xE:
      result = 0x544C424C532E4253;
      break;
    case 0xF:
      result = 0x5452424C532E4253;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeedUpdateRequest.init(feedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v24 = updated[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7540, &unk_1D9197370);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(a9 + v24) = v25;
  v26 = updated[19];
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(a9 + v26) = v27;
  v28 = updated[20];
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(a9 + v28) = v29;
  sub_1D8D088B4(a12, a9, &qword_1ECAB71E0, &unk_1D9197360);
  v30 = updated[5];
  v31 = sub_1D9176C2C();
  v32 = *(v31 - 8);
  (*(v32 + 16))(a9 + v30, a1, v31);
  v49 = a2;
  sub_1D8D088B4(a2, a9 + updated[6], &unk_1ECAB5910, &qword_1D9188C90);
  *(a9 + updated[7]) = a3;
  v33 = (a9 + updated[8]);
  *v33 = a4;
  v33[1] = a5;
  *(a9 + updated[9]) = a6;
  *(a9 + updated[10]) = a7;
  *(a9 + updated[11]) = a8;
  *(a9 + updated[12]) = a10;
  *(a9 + updated[13]) = a11;
  v34 = (a9 + updated[14]);
  *v34 = a13;
  v34[1] = a14;
  v35 = (a9 + updated[15]);
  *v35 = a15;
  v35[1] = a16;
  v36 = (a9 + updated[16]);
  *v36 = a17;
  v36[1] = a18;
  if (a19)
  {
    v37 = swift_allocObject();
    v38 = a20;
    *(v37 + 16) = a19;
    *(v37 + 24) = a20;
    v39 = (a9 + updated[17]);
    *v39 = sub_1D8F55908;
    v39[1] = v37;
  }

  else
  {
    v40 = (a9 + updated[17]);
    *v40 = 0;
    v40[1] = 0;
    v38 = a20;
  }

  v50 = 23;

  sub_1D8D1F93C(a19, v38);
  v41 = sub_1D8D76684(&v50, &v51);
  MEMORY[0x1EEE9AC00](v41);
  os_unfair_lock_lock((v27 + 32));
  sub_1D8D76FAC((v27 + 16));
  os_unfair_lock_unlock((v27 + 32));

  sub_1D8D15664(a19, v38);
  sub_1D8D08A50(a12, &qword_1ECAB71E0, &unk_1D9197360);
  sub_1D8D08A50(v49, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v32 + 8))(a1, v31);
}

uint64_t sub_1D8D76164()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D7619C()
{
  v0 = sub_1D917739C();
  __swift_allocate_value_buffer(v0, qword_1ECAB1038);
  __swift_project_value_buffer(v0, qword_1ECAB1038);
  return sub_1D917738C();
}

uint64_t sub_1D8D7621C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D76684@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D917734C();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - v9;
  v10 = sub_1D917739C();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v49 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v49 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v49 - v22;
  v24 = *a1;
  sub_1D8D76CE0(v3, &v49 - v22);
  v25 = sub_1D9176EAC();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    result = sub_1D8D798AC(v23);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v50 = sub_1D9176E5C();
    v52 = v28;
    (*(v26 + 8))(v23, v25);
    v53 = a2;
    v54 = v6;
    v55 = v24;
    if ((v24 - 24) >= 4 && v24 != 8)
    {
      if (qword_1ECAB1030 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (qword_1ECAB1008 != -1)
    {
      swift_once();
    }

    v29 = 1;
    for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
    {
      v31 = __swift_project_value_buffer(v10, i);
      v32 = v60;
      v33 = *(v60 + 16);
      v33(v18, v31, v10);
      v34 = *(v32 + 32);
      v34(v59, v18, v10);
      v62 = v55;
      v51 = sub_1D8D76D50();
      if (v29)
      {
        if (qword_1ECAB1008 != -1)
        {
          swift_once();
        }

        v35 = qword_1ECAB1010;
      }

      else
      {
        if (qword_1ECAB1030 != -1)
        {
          swift_once();
        }

        v35 = qword_1ECAB1038;
      }

      v36 = v54;
      v37 = __swift_project_value_buffer(v10, v35);
      v33(v12, v37, v10);
      v34(v15, v12, v10);
      sub_1D917737C();
      v38 = v58;
      sub_1D917731C();
      v39 = *(v60 + 8);
      v60 += 8;
      v39(v15, v10);
      v40 = v52;

      v15 = sub_1D917737C();
      v12 = sub_1D9178F5C();
      v18 = sub_1D917918C();

      if ((v18 & 1) == 0)
      {
        break;
      }

      v41 = v53;
      if (v51)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v61 = v43;
        *v42 = 136446210;
        v44 = sub_1D8CFA924(v50, v40, &v61);

        *(v42 + 4) = v44;
        v45 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v15, v12, v45, v51, "[identifier=%{name=identifier,public}s]", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        v46 = v43;
        v36 = v54;
        MEMORY[0x1DA72CB90](v46, -1, -1);
        MEMORY[0x1DA72CB90](v42, -1, -1);

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      swift_once();
LABEL_21:
      v29 = 0;
    }

    v41 = v53;
LABEL_19:
    v47 = v57;
    (*(v57 + 16))(v56, v38, v36);
    sub_1D91773FC();
    swift_allocObject();
    v48 = sub_1D91773EC();
    (*(v47 + 8))(v38, v36);
    result = (v39)(v59, v10);
    *v41 = v55;
    v41[1] = v48;
  }

  return result;
}

os_log_t _MTLogCategoryFeedUpdateDiagnostics()
{
  v0 = os_log_create("com.apple.podcasts", "FUDiagnostics");

  return v0;
}

uint64_t sub_1D8D76CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *sub_1D8D76D50()
{
  result = "RSSFeedUpdateJob";
  switch(*v0)
  {
    case 1:
      result = "StoreFeedUpdateJob";
      break;
    case 2:
      result = "StoreFeedUpdateJobBootstrap";
      break;
    case 3:
      result = "SystemCreation";
      break;
    case 4:
      result = "RequestQueue";
      break;
    case 5:
      result = "UpdateCreation";
      break;
    case 6:
      result = "BuildMAPIRequest";
      break;
    case 7:
      result = "EncodeMAPIRequest";
      break;
    case 8:
      result = "EncodeMAPIRequestDiagnostics";
      break;
    case 9:
      result = "MAPIShowMetadataNetwork";
      break;
    case 0xA:
      result = "MAPIParseShowMetadata";
      break;
    case 0xB:
      result = "MAPIEpisodesNetwork";
      break;
    case 0xC:
      result = "MAPIParseEpisodes";
      break;
    case 0xD:
      result = "RequestShowMetadata";
      break;
    case 0xE:
      result = "PrepareForInitialEpisodesRequest";
      break;
    case 0xF:
      result = "RequestInitialEpisodes";
      break;
    case 0x10:
      result = "ProcessShowMetadataAndInitialEpisodes";
      break;
    case 0x11:
      result = "RequestEpisodes";
      break;
    case 0x12:
      result = "ParseEpisodesResponse";
      break;
    case 0x13:
      result = "ProcessEpisodes";
      break;
    case 0x14:
      result = "ProcessingCompleted";
      break;
    case 0x15:
      result = "FailureCleanup";
      break;
    case 0x16:
      result = "Completion";
      break;
    case 0x17:
      result = "TimeToFirstEpisodeInsertion";
      break;
    case 0x18:
      result = "DispatchCongestion";
      break;
    case 0x19:
      result = "DispatchWork";
      break;
    case 0x1A:
      result = "CoreDataCongestion";
      break;
    case 0x1B:
      result = "CoreDataWork";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8D76FE0(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

id sub_1D8D77030(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D8D77098();
  v4 = swift_allocError();
  *v5 = a3;
  v6 = sub_1D9176A5C();

  return v6;
}

unint64_t sub_1D8D77098()
{
  result = qword_1ECAB2250;
  if (!qword_1ECAB2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2250);
  }

  return result;
}

uint64_t sub_1D8D770F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8D77148();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_1D8D77148()
{
  result = qword_1ECAB2258;
  if (!qword_1ECAB2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2258);
  }

  return result;
}

uint64_t PageContextTracker.value.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t *sub_1D8D77280(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D77358()
{
  v1 = *(v0 + 144);

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  v3 = __swift_project_value_buffer(v2, qword_1EDCD1098);

  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  v29 = v3;
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1D8CEC000, v4, v5, "DonationService: Begin registering %ld podcast entities.", v8, 0xCu);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 152);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    v12 = *(v9 + 16);
    while (1)
    {
      v13 = v11[3];
      v14 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v13);
      v15 = (*(v14 + 8))(v13, v14);
      *(v0 + 80) = 0;
      v16 = [v1 registerItem:v15 error:v0 + 80];
      v17 = *(v0 + 80);
      if (!v16)
      {
        break;
      }

      v18 = v17;

      v11 += 5;
      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    v26 = v17;
    sub_1D9176A6C();

    swift_willThrow();
  }

  else
  {
LABEL_10:
    *(v0 + 80) = 0;
    v19 = [v1 finish_];
    v20 = *(v0 + 80);
    if (v19)
    {

      v21 = v20;
      v22 = sub_1D917741C();
      v23 = sub_1D9178D1C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v10;

        _os_log_impl(&dword_1D8CEC000, v22, v23, "DonationService: Finished registering %ld podcast entities.", v24, 0xCu);
        MEMORY[0x1DA72CB90](v24, -1, -1);
      }

      else
      {
      }

      v27 = *(v0 + 8);
      goto LABEL_18;
    }

    v25 = v20;
    sub_1D9176A6C();

    swift_willThrow();
  }

  v27 = *(v0 + 8);
LABEL_18:

  return v27();
}

uint64_t sub_1D8D776C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D90F6870;
  }

  else
  {
    v2 = sub_1D8D77358;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id PodcastDonationModel.itemInstance()()
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = objc_allocWithZone(MEMORY[0x1E69AA770]);

  v10 = sub_1D8D77B30(v5, v6, v7, v8);
  if (!v1)
  {
    v11 = v10;
    v31 = v2;
    v12 = objc_allocWithZone(MEMORY[0x1E69AA758]);
    v32[0] = 0;
    v13 = v11;
    v14 = [v12 initWithEntity:v13 entityType:1 error:v32];
    if (v14)
    {
      v15 = v14;
      v16 = v32[0];

      v32[0] = v3;
      v32[1] = v31;
      v33 = v4;
      v34 = v5;
      v35 = v6;
      v36 = v7;
      v37 = v8;
      v17 = sub_1D8D77C44();
      if (v18)
      {
        v19 = v17;
        v20 = v18;
        v21 = objc_allocWithZone(MEMORY[0x1E69AA760]);
        v22 = sub_1D8D77D50(v19, v20);
        v23 = objc_allocWithZone(MEMORY[0x1E69939F8]);
        v32[0] = 0;
        v24 = [v23 initWithContent:v15 metaContent:v22 error:v32];
        if (v24)
        {
          v5 = v24;
          v25 = v32[0];

          return v5;
        }

        v5 = v32[0];
        sub_1D9176A6C();

        swift_willThrow();
        v13 = v15;
        v15 = v22;
      }

      else
      {
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v27 = sub_1D917744C();
        __swift_project_value_buffer(v27, qword_1EDCD1098);
        v28 = sub_1D917741C();
        v5 = sub_1D9178D0C();
        if (os_log_type_enabled(v28, v5))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          MEMORY[0x1DA72CB90](v29, -1, -1);
        }

        sub_1D90F65A4();
        swift_allocError();
        swift_willThrow();
      }
    }

    else
    {
      v26 = v32[0];
      sub_1D9176A6C();

      swift_willThrow();
      v15 = v13;
    }
  }

  return v5;
}

id sub_1D8D77B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    if (a4)
    {
LABEL_3:
      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v12[0] = 0;
  v8 = [v4 initWithName:v6 author:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v8;
}

unint64_t sub_1D8D77C44()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return 0;
    }

    v4 = v0[1];
    sub_1D917946C();

    v5 = 0xD000000000000022;
    MEMORY[0x1DA7298F0](v1, v4);
  }

  else
  {
    sub_1D917946C();

    v5 = 0xD000000000000020;
    sub_1D8E40A10();
    v3 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v3);
  }

  return v5;
}

id sub_1D8D77D50(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8[0] = 0;
  v4 = [v2 initWithSourceItemIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v4;
}

id StationDonationModel.itemInstance()()
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = objc_allocWithZone(MEMORY[0x1E69AA768]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v24 = 0;
  v6 = [v4 initWithName:v5 error:&v24];

  v7 = v24;
  if (v6)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E69AA758]);
    v24 = 0;
    v9 = v6;
    v10 = v7;
    v11 = [v8 initWithEntity:v9 entityType:2 error:&v24];
    if (v11)
    {
      v12 = v11;
      v13 = v24;

      v24 = 0;
      v25 = 0xE000000000000000;
      sub_1D917946C();

      v24 = 0xD000000000000029;
      v25 = 0x80000001D91D6240;
      MEMORY[0x1DA7298F0](v2, v3);
      v14 = v24;
      v2 = v25;
      v15 = objc_allocWithZone(MEMORY[0x1E69AA760]);
      v16 = sub_1D8D77D50(v14, v2);
      if (v1)
      {
      }

      else
      {
        v20 = v16;
        v21 = objc_allocWithZone(MEMORY[0x1E69939F8]);
        v24 = 0;
        v22 = [v21 initWithContent:v12 metaContent:v20 error:&v24];
        if (v22)
        {
          v2 = v22;
          v23 = v24;
        }

        else
        {
          v2 = v24;
          sub_1D9176A6C();

          swift_willThrow();
        }
      }
    }

    else
    {
      v18 = v24;
      sub_1D9176A6C();

      swift_willThrow();
    }
  }

  else
  {
    v17 = v24;
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1D8D78090@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ArtworkContent(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D8D752C4(a1, a2);
}

void *CombinedTrace.start(interval:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a6;
  v8 = *v6;
  v9 = *(*v6 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D8D782D8(0, v9, 0);
    v10 = v27;
    v15 = v8 + 32;
    do
    {
      sub_1D8CFD9D8(v15, v23);
      v16 = v24;
      v17 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v17 + 24))(v26, a1, a2, a3, a4, a5, v16, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v27 = v10;
      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        sub_1D8D782D8((v18 > 1), v19 + 1, 1);
        v10 = v27;
      }

      v10[2] = v19 + 1;
      sub_1D8D6BCE0(v26, &v10[5 * v19 + 4]);
      v15 += 40;
      --v9;
    }

    while (v9);
    v7 = a6;
  }

  result = sub_1D8D7B56C(v10);
  v7[3] = &type metadata for CombinedTrace.Interval;
  v7[4] = &off_1F546E5A0;
  *v7 = result;
  return result;
}

void *sub_1D8D782D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D50414(a1, a2, a3, *v3, &qword_1ECAB4700, &qword_1D918A120, &qword_1ECAB4708, &qword_1D9192170);
  *v3 = result;
  return result;
}

uint64_t LoggerTrace.start(interval:context:)@<X0>(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a3;
  *(&v26 + 1) = type metadata accessor for LoggerTrace(0);
  v27 = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  sub_1D8D785B8(v6, boxed_opaque_existential_0);
  sub_1D8D7861C(a1, v9, &v25, &v21);
  if (*(&v22 + 1))
  {
    *(&v26 + 1) = &type metadata for LoggerTrace.ActivityInterval;
    v27 = &off_1F546E7E8;
    v13 = swift_allocObject();
    *&v25 = v13;
    v14 = v22;
    *(v13 + 16) = v21;
    *(v13 + 32) = v14;
    *(v13 + 48) = v23;
    *(v13 + 64) = v24;
    sub_1D8D6BCE0(&v25, a6);
  }

  else
  {
    sub_1D8D08A50(&v21, &qword_1ECAB6DF8, &qword_1D91955C0);
    v15 = type metadata accessor for LoggerTrace.LogInterval(0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    a6[3] = v15;
    a6[4] = &off_1F546E7F8;
    v16 = __swift_allocate_boxed_opaque_existential_0(a6);
    sub_1D8D785B8(v6, v16);
    v17 = sub_1D917949C();
    v18 = (v16 + *(v15 + 20));
    *v18 = v17;
    v18[1] = v19;
    if (*(&v26 + 1))
    {
      sub_1D8D08A50(&v25, &unk_1ECAB6E00, &qword_1D91952E0);
    }
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4708, &qword_1D9192170);
  sub_1D917964C();
  if (a5)
  {
    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
    MEMORY[0x1DA7298F0](a4, a5);
  }

  LoggerTrace.emit(event:context:)("START INTERVAL", 14, 2, v21, *(&v21 + 1));
}

uint64_t sub_1D8D7856C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8D785B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggerTrace(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1D8D7861C@<D0>(unint64_t a1@<X0>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v16[7] = *MEMORY[0x1E69E9840];
  sub_1D8CFD9D8(a4, v16);
  v10 = sub_1D8D78740(&dword_1D8CEC000, a1, a3, v9);
  if (v10)
  {
    v16[5] = v10;
    v15.opaque[0] = 0;
    v15.opaque[1] = 0;
    os_activity_scope_enter(v10, &v15);
    v11 = v15.opaque[0];
    v12 = v15.opaque[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6E28, &qword_1D9195690);
    v13 = swift_allocObject();
    *(v13 + 36) = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    *(v13 + 32) = 0;
    v16[6] = v13;
    sub_1D8D7AB34(v16, a5);
    sub_1D8D7AB6C(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    *(a5 + 48) = 0;
    result = 0.0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

unint64_t sub_1D8D78740@<X0>(void *dso@<X3>, unint64_t result@<X0>, char a4@<W2>, unint64_t a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    if (result)
    {
      sub_1D8D78858(description, result, dso);
      return *description;
    }

    __break(1u);
    goto LABEL_12;
  }

  a5 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  a5 = result >> 16;
  if (result >> 16 > 0x10)
  {
    goto LABEL_13;
  }

  if (result > 0x7F)
  {
LABEL_14:
    v6 = (result & 0x3F) << 8;
    v7 = (result >> 6) + v6 + 33217;
    v8 = (v6 | (result >> 6) & 0x3F) << 8;
    v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
    v10 = (result >> 12) + v8 + 8487393;
    if (a5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v10;
    }

    if (result < 0x800)
    {
      v5 = v7;
    }

    goto LABEL_9;
  }

  v5 = result + 1;
LABEL_9:
  *description = (v5 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v5) >> 3))));
  sub_1D8D78858(&v11, description, dso);
  return v11;
}

uint64_t *sub_1D8D78858@<X0>(uint64_t *__return_ptr a1@<X8>, char *description@<X0>, void *dso@<X2>)
{
  if (dso && description)
  {
    if (qword_1EDCD5750 != -1)
    {
      v10 = dso;
      swift_once();
      dso = v10;
    }

    result = _os_activity_create(dso, description, qword_1EDCD5760, OS_ACTIVITY_FLAG_DEFAULT);
  }

  else
  {
    if (qword_1ECAB34E0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB77E0);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "FAILED TO CREATE OS_ACTIVITY", v9, 2u);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t sub_1D8D789A0()
{
  qword_1EDCD5760 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1D8D789F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RSSFeedUpdater.didRestoreFeedUrlTask(_:)(uint64_t a1)
{
  v3 = sub_1D9177E0C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v18[1] = *&v1[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue];
  (*(v10 + 16))(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_1D8D79090;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_13_1;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v5, v15);
  _Block_release(v15);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t sub_1D8D78EA8()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1D8D78F64(uint64_t a1)
{
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD1070);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Finished restoring background download tasks.", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue);

    dispatch_resume(v7);
  }
}

uint64_t sub_1D8D79090()
{
  v1 = *(sub_1D9176C2C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8D7911C(v0 + v2, v3);
}

uint64_t sub_1D8D7911C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = v61 - v6;
  v66 = sub_1D9176C2C();
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v71 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  v15 = sub_1D9176ACC();
  v17 = v16;
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v68 = v14;
  v18 = sub_1D917744C();
  v19 = __swift_project_value_buffer(v18, qword_1EDCD1070);

  v61[1] = v19;
  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();

  v22 = os_log_type_enabled(v20, v21);
  v64 = v15;
  v65 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v73 = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    *(v23 + 14) = sub_1D8CFA924(v15, v17, &v73);
    _os_log_impl(&dword_1D8CEC000, v20, v21, "Restored background task for %{private,mask.hash}s.", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  v62 = *(v7 + 16);
  v63 = v7;
  v25 = v66;
  v62(v71, a1, v66);
  (*(v7 + 56))(v69, 1, 1, v25);
  v26 = sub_1D9176EAC();
  v27 = v70;
  (*(*(v26 - 8) + 56))(v70, 1, 1, v26);
  v28 = updated[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7540, &unk_1D9197370);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *&v11[v28] = v29;
  v30 = updated[19];
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = 0;
  v32 = (v31 + 16);
  *(v31 + 32) = 0;
  v33 = (v31 + 32);
  *&v11[v30] = v31;
  v34 = updated[20];
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *&v11[v34] = v35;
  sub_1D8D088B4(v27, v11, &qword_1ECAB71E0, &unk_1D9197360);
  v36 = v25;
  v62(&v11[updated[5]], v71, v25);
  v37 = v69;
  sub_1D8D088B4(v69, &v11[updated[6]], &unk_1ECAB5910, &qword_1D9188C90);
  *&v11[updated[7]] = 0;
  v38 = &v11[updated[8]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v11[updated[9]] = 0;
  v11[updated[10]] = 0;
  v11[updated[11]] = 0;
  *&v11[updated[12]] = 0;
  v11[updated[13]] = 0;
  v39 = &v11[updated[14]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v11[updated[15]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &v11[updated[16]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v11[updated[17]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v72 = 23;

  v43 = sub_1D8D76684(&v72, &v73);
  v44 = v74;
  MEMORY[0x1EEE9AC00](v43);
  v61[-2] = v45;
  v61[-1] = v44;
  os_unfair_lock_lock(v33);
  sub_1D8D76FC4(v32);
  os_unfair_lock_unlock(v33);

  sub_1D8D08A50(v70, &qword_1ECAB71E0, &unk_1D9197360);
  sub_1D8D08A50(v37, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v63 + 8))(v71, v36);

  v46 = v68;
  v47 = sub_1D8D79960(v11, v68);
  v48 = *(v67 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests);
  v50 = v64;
  v49 = v65;
  v73 = v64;
  v74 = v65;
  v51 = *(v48 + 32);
  MEMORY[0x1EEE9AC00](v47);
  v61[-4] = v52;
  v61[-3] = &v73;
  v61[-2] = v46;
  MEMORY[0x1EEE9AC00](v53);
  v61[-2] = sub_1D8D799C4;
  v61[-1] = v54;
  os_unfair_lock_lock(v51 + 4);
  sub_1D8D799DC(&v72);
  os_unfair_lock_unlock(v51 + 4);
  if (v72)
  {

    sub_1D8D79FDC(v46);
  }

  else
  {

    v55 = sub_1D917741C();
    v56 = sub_1D9178D1C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73 = v58;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      v59 = sub_1D8CFA924(v50, v49, &v73);

      *(v57 + 14) = v59;
      _os_log_impl(&dword_1D8CEC000, v55, v56, "Tried to insert an rss feed update request that was restored from background for %{private,mask.hash}s but there was already one running. Dropping this redundant request.", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1DA72CB90](v58, -1, -1);
      MEMORY[0x1DA72CB90](v57, -1, -1);
    }

    else
    {
    }
  }

  return sub_1D8D7A55C(v46);
}

uint64_t sub_1D8D798AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D79914(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  a1[1] = a3;
}

uint64_t sub_1D8D79960(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

BOOL sub_1D8D799F4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D8D79A74(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1D8D79A30@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL sub_1D8D79A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v9 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated - 8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v12 = *(a1 + 40);
  if (*(v12 + 16))
  {

    v13 = sub_1D8D33C70(a2, a3);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D5F1EC(a4, v11, type metadata accessor for FeedUpdateRequest);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1D8D7CE14(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1D8D7CE14((v16 > 1), v17 + 1, 1, v15);
  }

  v15[2] = v17 + 1;
  sub_1D8D7C424(v11, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, type metadata accessor for FeedUpdateRequest);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1D8D7D24C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 40) = v22;
  swift_endAccess();
  sub_1D8D7D28C(sub_1D8D7D560, &unk_1F5471340, sub_1D8D7D6AC, &block_descriptor_78_1);
  v19 = v15[2];

  return v19 == 1;
}

uint64_t sub_1D8D79D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D8D79FDC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D9176EAC();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &updated - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &updated - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&updated - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[12];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1D9177F4C();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    sub_1D8D7A3C4(a1, v8);
    v18 = v2[5];
    sub_1D8CFD9D8((v2 + 6), v38);
    v19 = v2[11];
    v20 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for RSSFeedUpdaterJob(0);
    v21 = swift_allocObject();
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = -96;
    v22 = (v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
    *v23 = 0;
    v23[1] = 0;
    sub_1D8D7A3C4(v8, v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request);
    *(v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx) = v18;
    sub_1D8CFD9D8(v38, v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider);
    *(v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader) = v19;
    *(v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue) = v15;
    v24 = (v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion);
    *v24 = sub_1D8DA24A4;
    v24[1] = v20;
    v25 = (v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
    *v25 = 0u;
    v25[1] = 0u;
    v26 = v18;
    swift_unknownObjectRetain();

    sub_1D9176E9C();
    v27 = sub_1D9176E5C();
    v29 = v28;
    (*(v4 + 8))(v6, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    sub_1D8D7A55C(v8);
    v30 = (v21 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID);
    *v30 = v27;
    v30[1] = v29;

    v31 = sub_1D9176ACC();
    v33 = v32;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v2[14];
    v2[14] = 0x8000000000000000;
    sub_1D8D7A5B8(v21, v31, v33, isUniquelyReferenced_nonNull_native);

    v2[14] = v37;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D7A3C4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t type metadata accessor for RSSFeedUpdaterJob(uint64_t a1)
{
  result = qword_1ECAB75A8;
  if (!qword_1ECAB75A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D7A474(uint64_t a1)
{
  result = type metadata accessor for FeedUpdateRequest(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D8D7A55C(uint64_t a1)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t UninitializedCurrentValueSubject.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a1;
  v7 = *(a2 + 16);
  sub_1D91791BC();
  v8 = *(a2 + 24);
  sub_1D917793C();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D91775AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &WitnessTable - v11;
  v19 = *v4;
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v8;
  v14 = v17;
  v13[4] = a3;
  v13[5] = v14;

  sub_1D9177B2C();

  sub_1D917759C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D8D7A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t UninitializedCurrentValueSubject.send(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_1D917790C();
  return (*(v5 + 8))(v8, v4);
}

void LoggerTrace.emit(event:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a3;
  v9 = type metadata accessor for LoggerTrace(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v37 - v13);
  v16 = *(v5 + *(v15 + 32));
  if (a5)
  {
    sub_1D8D785B8(v5, v37 - v13);
    v17 = sub_1D917741C();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[3] = v8;
      v20 = v19;
      *v18 = 136315650;
      v38 = a4;
      v39 = v19;
      v21 = *v14;
      v22 = v14[1];

      sub_1D8DB01E0(v14);
      v23 = sub_1D8CFA924(v21, v22, &v39);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = sub_1D917949C();
      v26 = sub_1D8CFA924(v24, v25, &v39);

      *(v18 + 14) = v26;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_1D8CFA924(v38, a5, &v39);
      _os_log_impl(&dword_1D8CEC000, v17, v16, "[%s] %s - %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v20, -1, -1);
      v27 = v18;
LABEL_6:
      MEMORY[0x1DA72CB90](v27, -1, -1);

      return;
    }

    v36 = v14;
  }

  else
  {
    sub_1D8D785B8(v5, v11);
    v17 = sub_1D917741C();
    if (os_log_type_enabled(v17, v16))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136315394;
      v30 = *v11;
      v31 = v11[1];

      sub_1D8DB01E0(v11);
      v32 = sub_1D8CFA924(v30, v31, &v39);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = sub_1D917949C();
      v35 = sub_1D8CFA924(v33, v34, &v39);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_1D8CEC000, v17, v16, "[%s] %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v29, -1, -1);
      v27 = v28;
      goto LABEL_6;
    }

    v36 = v11;
  }

  sub_1D8DB01E0(v36);
}

uint64_t sub_1D8D7AECC@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = v7;
  v27 = a4;
  v26 = a3;
  v14 = sub_1D917734C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1D917739C();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v9, v19);
  (*(v15 + 16))(v17, v9 + *(a6 + 20), v14);
  a7[3] = type metadata accessor for SignpostTrace.Interval(0);
  a7[4] = &protocol witness table for SignpostTrace.Interval;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);

  return SignpostTrace.Interval.init(starting:domain:identifier:with:)(a1, a2, v26, v21, v17, v27, a5, boxed_opaque_existential_0);
}

uint64_t sub_1D8D7B0C4(uint64_t a1)
{
  result = sub_1D91773FC();
  if (v2 <= 0x3F)
  {
    result = sub_1D917739C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SignpostTrace.Interval.init(starting:domain:identifier:with:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a3;
  v15 = sub_1D917734C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  if (a7)
  {
    v34 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v15;
    v15 = a5;
    v36 = a2;

    v19 = sub_1D917737C();
    v33 = sub_1D9178F5C();
    result = sub_1D917918C();
    if (result)
    {
      v35 = a4;
      if (v38)
      {
        if (!(a1 >> 32))
        {
          if ((a1 & 0xFFFFF800) == 0xD800)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (a1 >> 16 <= 0x10)
          {
            v15 = v18;

            v32 = &v39;
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }

      else
      {

        if (a1)
        {
          v32 = a1;
          v15 = v18;
LABEL_16:
          v18 = v34;
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v39 = v23;
          *v22 = 136315138;
          v24 = sub_1D8CFA924(a6, a7, &v39);

          *(v22 + 4) = v24;
          v25 = sub_1D917732C();
          _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v19, v33, v25, v32, "%s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          MEMORY[0x1DA72CB90](v23, -1, -1);
          MEMORY[0x1DA72CB90](v22, -1, -1);

LABEL_22:
          a4 = v35;
          a2 = v36;
          goto LABEL_23;
        }

        __break(1u);
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v35 = a4;
  a4 = sub_1D917737C();
  v21 = sub_1D9178F5C();
  result = sub_1D917918C();
  if ((result & 1) == 0)
  {

    a4 = v35;
    goto LABEL_23;
  }

  v36 = a2;
  if ((v38 & 1) == 0)
  {
    v19 = v37;
    if (!v37)
    {
      __break(1u);
LABEL_10:
      swift_bridgeObjectRelease_n();

      a2 = v36;
      a5 = v15;
      v15 = v18;
      v18 = v34;
LABEL_23:
      (*(v16 + 16))(v18, a5, v15);
      sub_1D91773FC();
      swift_allocObject();
      v28 = sub_1D91773EC();
      (*(v16 + 8))(a5, v15);
      *(a8 + 24) = v38;
      *(a8 + 8) = v37;
      *(a8 + 16) = a2;
      *a8 = v28;
      v29 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
      v30 = sub_1D917739C();
      return (*(*(v30 - 8) + 32))(a8 + v29, a4, v30);
    }

LABEL_21:
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, a4, v21, v27, v19, "", v26, 2u);
    MEMORY[0x1DA72CB90](v26, -1, -1);

    goto LABEL_22;
  }

  if (v37 >> 32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v37 & 0xFFFFF800) != 0xD800)
  {
    if (v37 >> 16 > 0x10)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = &v40;
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
  return result;
}

void *sub_1D8D7B56C(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1D8CFD9D8(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1D8CFD9D8(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D915C338(v1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v1[i]);
    result = sub_1D8D6BCE0(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6));
    result = sub_1D8D6BCE0(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D8D7B788()
{

  if (v0)
  {
    v1 = sub_1D8F40FA8;
  }

  else
  {
    v1 = sub_1D8D7B898;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D8D7B898()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  (*(v3 + 32))(v0[8], v1, v2);
  if (sub_1D917894C())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_4;
  }

  v8 = (v0[4] + *v0[4]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1D8DAECC8;
  v7 = v0[8];

  return v8(v7);
}

uint64_t sub_1D8D7BA74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8D7BB1C(a1, v4);
}

uint64_t sub_1D8D7BB1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8D5FF18;

  return v6(a1);
}

id jsonSerializableValueForValue(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F54E01E8])
  {
    v2 = [v1 im_jsonSerializableValue];
  }

  else if (v1)
  {
    v3 = CFGetTypeID(v1);
    v4 = CFCopyTypeIDDescription(v3);
    if ([(__CFString *)v4 length])
    {
      v2 = jsonSerializableValueForCoreFoundationType(v1, v4);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1D8D7BE00(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v5 = updated - 8;
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 5;
  sub_1D8D76684(&v33, &v34);
  v10 = v34;
  v9 = v35;
  v34 = *(a1 + *(v5 + 36));
  v11 = v34;
  v12 = sub_1D9179A4C();
  v14 = v13;
  if (![objc_opt_self() isEmpty_])
  {
    v32 = *(v2 + 24);
    sub_1D8D5F1EC(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedUpdateRequest);
    v23 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v31 = a1;
    v24 = v10;
    v25 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v26[2] = v2;
    v26[3] = v11;
    v26[4] = v12;
    v26[5] = v14;
    sub_1D8D7C424(v8, v26 + v23, type metadata accessor for FeedUpdateRequest);
    v27 = (v26 + v25);
    *v27 = v24;
    v27[1] = v9;

    NSManagedObjectContext.performWithTelemetry(for:_:)(v31, sub_1D8D7FE9C, v26);

LABEL_10:

    return;
  }

  v15 = v12;
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD1050);

  v17 = sub_1D917741C();
  v18 = sub_1D9178D1C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v21 = sub_1D8CFA924(v15, v14, &v34);
    v22 = v10;
    v10 = v21;

    *(v19 + 14) = v10;
    LOBYTE(v10) = v22;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Update request for %{private,mask.hash}s denied because it's not a valid adamID", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  else
  {
  }

  sub_1D8D77098();
  v28 = swift_allocError();
  *v29 = 0;
  FeedUpdateRequest.failRequest(_:)(v28);

  if (v9)
  {
    LOBYTE(v34) = v10;
    v35 = v9;
    sub_1D8D7FAB4();
    goto LABEL_10;
  }
}

uint64_t sub_1D8D7C18C()
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v2 = (*(*(updated - 1) + 80) + 48) & ~*(*(updated - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = updated[5];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = updated[6];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  if (*(v3 + updated[14]))
  {
  }

  if (*(v3 + updated[15]))
  {
  }

  if (*(v3 + updated[16]))
  {
  }

  if (*(v3 + updated[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8D7C424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NSManagedObjectContext.performWithTelemetry(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v11 = swift_allocObject();
  LOBYTE(aBlock[0]) = 26;
  sub_1D8D76684(aBlock, (v11 + 16));
  sub_1D8D7A3C4(a1, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1D8D79960(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  aBlock[4] = sub_1D8F564E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_41;
  v15 = _Block_copy(aBlock);

  [v4 performBlock_];
  _Block_release(v15);
}

uint64_t sub_1D8D7C674()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D7C6B4()
{
  v0 = sub_1D917739C();
  __swift_allocate_value_buffer(v0, qword_1ECAB1010);
  __swift_project_value_buffer(v0, qword_1ECAB1010);
  return sub_1D917738C();
}

uint64_t sub_1D8D7C738(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D8D33C70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1D8D33C70(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_1D8D7C8B8(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7518, &unk_1D91979D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32[-1] - v8;
  v10 = sub_1D9177F1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[12];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1D9177F4C();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = swift_beginAccess();
  v18 = v2[13];
  MEMORY[0x1EEE9AC00](v17);
  *(&v31 - 2) = a1;

  v14 = sub_1D8D7CCF8(sub_1D8D7F948, (&v31 - 4), v18);
  v20 = v19;

  if (v20)
  {
    v14 = *(v2[13] + 16);
  }

  swift_beginAccess();
  if (*(v2[13] + 16) < v14)
  {
    goto LABEL_12;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_1D8D7A3C4(a1, v9);
    sub_1D8D7F9A8(v14, v14, v9);
    swift_endAccess();
    if (qword_1EDCD1068 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  swift_once();
LABEL_7:
  v21 = sub_1D917744C();
  __swift_project_value_buffer(v21, qword_1EDCD1070);
  sub_1D8D7A3C4(a1, v6);

  v22 = sub_1D917741C();
  v23 = sub_1D9178D1C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136315907;
    *(v24 + 4) = sub_1D8CFA924(v2[2], v2[3], v32);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    v26 = sub_1D9176ACC();
    v28 = v27;
    sub_1D8D7A55C(v6);
    v29 = sub_1D8CFA924(v26, v28, v32);

    *(v24 + 24) = v29;
    *(v24 + 32) = 2048;
    *(v24 + 34) = v14;
    _os_log_impl(&dword_1D8CEC000, v22, v23, "%s: inserting %{private,mask.hash}s at index %ld", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v25, -1, -1);
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  else
  {

    sub_1D8D7A55C(v6);
  }

  return sub_1D8D801B0();
}

uint64_t sub_1D8D7CD24(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1D8D7CE3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177F1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1D9177F4C();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  type metadata accessor for FeedUpdateRequest(0);
  v11 = sub_1D9176ACC();
  v4 = v13;
  v14 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests);
  v27[0] = v11;
  v27[1] = v13;
  v15 = *(v14 + 32);
  MEMORY[0x1EEE9AC00](v11);
  *&v25[-32] = v16;
  *&v25[-24] = v27;
  *&v25[-16] = a1;
  MEMORY[0x1EEE9AC00](v17);
  *&v25[-16] = sub_1D8D79D24;
  *&v25[-8] = v18;
  os_unfair_lock_lock(v15 + 4);
  sub_1D8D7D230(&v26);
  os_unfair_lock_unlock(v15 + 4);
  if (v26)
  {

    sub_1D8D7C8B8(a1);
    return;
  }

  if (qword_1EDCD1068 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1EDCD1070);

  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27[0] = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = sub_1D8CFA924(v11, v4, v27);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "There is already an rss feed update request for %{private,mask.hash}s. Dropping this redundant request.", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation13LibraryEntityOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1D8D7D1EC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1D8D7D28C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v15 = a1(v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v17);
  _Block_release(v17);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1D8D7D568(uint64_t a1)
{
  result = MEMORY[0x1DA72A0A0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D8D19AFC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D7D6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1D917791C();
  LOBYTE(a3) = a3(a1);

  if ((a3 & 1) == 0)
  {
    return sub_1D917790C();
  }

  return result;
}

uint64_t sub_1D8D7D74C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D9179DBC();

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    v16 = sub_1D9179E1C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D9179ACC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_59Tm()
{

  return swift_deallocObject();
}

void sub_1D8D7D954()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  aBlock[4] = sub_1D8F5DD84;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_44;
  v7 = _Block_copy(aBlock);

  [v6 performBlock_];
  _Block_release(v7);
  v8 = v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  updated = type metadata accessor for FeedUpdateRequest(0);
  (*(v3 + 16))(v5, v8 + updated[5], v2);
  v10 = objc_allocWithZone(type metadata accessor for DownloadableURLOptions());
  sub_1D9176ACC();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 init:v11 nonAppInitiated:1];

  (*(v3 + 8))(v5, v2);
  [*(v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader) startDownloadTaskForFeedURL:v12 userInitiated:*(v8 + updated[9]) useBackgroundFetch:*(v8 + updated[11])];
}

void sub_1D8D7DD58(id a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 5;
  if (v5 <= 1)
  {
    if (a5 >> 5)
    {
      if (v5 != 1)
      {
        return;
      }

LABEL_15:

      return;
    }

    sub_1D8D7567C(a1, a2);
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          v6 = a5 & 1;

          sub_1D8F5DD78(a1, a2, a3, a4, v6);
        }

        return;
      }

      a1 = a2;
      goto LABEL_15;
    }
  }
}

void sub_1D8D7DE2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  v9 = *(v2 + 48);
  *(v2 + 48) = *(a1 + 32);
  sub_1D8DA19F4(a1, &v42);
  sub_1D8D7DD58(v4, v5, v6, v7, v9);
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD1070);
  sub_1D8DA19F4(a1, &v42);

  v11 = sub_1D917741C();
  v12 = sub_1D9178D1C();

  sub_1D8DA1FE0(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v14;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    type metadata accessor for FeedUpdateRequest(0);
    v15 = sub_1D9176ACC();
    v17 = sub_1D8CFA924(v15, v16, &v42);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v18 = sub_1D8DA2014();
    v20 = sub_1D8CFA924(v18, v19, &v42);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "Job %{private,mask.hash}s: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 32);
  v24 = v23 >> 5;
  if (v23 >> 5 <= 2)
  {
    v25 = *a1;
    if (v24)
    {
      if (v24 == 1)
      {
        sub_1D8F5A7A8(v25);
      }

      else
      {
        sub_1D8F5A9A0(v25, v21);
      }
    }

    else
    {
      sub_1D8F5A440(v25, v21);
    }

    return;
  }

  if (v24 == 3)
  {
    v27 = *(a1 + 8);

    v28 = v22;
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v31 = 141558531;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      type metadata accessor for FeedUpdateRequest(0);
      v34 = sub_1D9176ACC();
      v36 = sub_1D8CFA924(v34, v35, &v42);

      *(v31 + 14) = v36;
      *(v31 + 22) = 2112;
      v37 = sub_1D9176A5C();
      *(v31 + 24) = v37;
      *v32 = v37;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "Job %{private,mask.hash}s: Failed with error %@", v31, 0x20u);
      sub_1D8D08A50(v32, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1DA72CB90](v33, -1, -1);
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    v38 = v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
    v39 = (v38 + *(type metadata accessor for FeedUpdateRequest(0) + 56));
    if (*v39)
    {
      (*v39)(v22, v27);
    }

    v40 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion);
    v42 = v22;
    v43 = 0;
    v44 = 0uLL;
    v45 = 1;
    v40(v38, &v42);
  }

  else
  {
    v26 = *(a1 + 16);
    if (v24 != 4)
    {
      if (!(v26 | v21 | v22 | *(&v26 + 1)) && v23 == 160)
      {
        __break(1u);
      }

      else
      {
        sub_1D8D7D954();
      }

      return;
    }

    v42 = *a1;
    v43 = v21;
    v44 = v26;
    v45 = v23 & 0x1F;
    (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion))(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request, &v42);
  }

  v41 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
  if (v41[1])
  {

    sub_1D8D92750(0);
  }

  *v41 = 0;
  v41[1] = 0;
}

uint64_t sub_1D8D7E374()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD1050);
  __swift_project_value_buffer(v0, qword_1EDCD1050);
  return sub_1D917742C();
}

uint64_t sub_1D8D7E3F4(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a6;
  v83 = a3;
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoreFeedUpdater.Update(0);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v85 = v17;
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - v20;
  v88 = a1;
  v22 = [*(a1 + 24) podcastForStoreId_];
  if (v22)
  {
    v23 = v22;
    v84 = v16;
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD1050);
    v25 = v23;

    v26 = sub_1D917741C();
    v27 = sub_1D9178D1C();

    v28 = os_log_type_enabled(v26, v27);
    v82 = a7;
    if (v28)
    {
      v79 = v27;
      v80 = a5;
      v81 = updated;
      v29 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v89 = v78;
      *v29 = 136315907;
      v30 = [v25 uuid];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1D917820C();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v48 = sub_1D8CFA924(v32, v34, &v89);

      *(v29 + 4) = v48;
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      *(v29 + 24) = sub_1D8CFA924(v83, a4, &v89);
      *(v29 + 32) = 2081;
      v49 = [v25 title];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D917820C();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0xE000000000000000;
      }

      v54 = sub_1D8CFA924(v51, v53, &v89);

      *(v29 + 34) = v54;
      _os_log_impl(&dword_1D8CEC000, v26, v79, "Creating update for MTPodcast %s for %{private,mask.hash}s - %{private}s", v29, 0x2Au);
      v55 = v78;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v55, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);

      a5 = v80;
      updated = v81;
    }

    else
    {
    }

    if (*(a5 + updated[10]))
    {
      v56 = v25;
      v57 = v14;
      v58 = updated;
      v59 = 1;
    }

    else
    {
      v58 = updated;
      v60 = [v25 nextSyncToken];
      if (v60)
      {
        v83 = v14;
        v61 = v60;
        v62 = sub_1D917820C();
        v64 = v63;

        v56 = v25;
        if (!v64)
        {
          goto LABEL_27;
        }

        v65 = v62 & 0xFFFFFFFFFFFFLL;
        if ((v64 & 0x2000000000000000) != 0)
        {
          v65 = HIBYTE(v64) & 0xF;
        }

        if (v65)
        {
          v57 = v83;
          if (*(a5 + v58[12]) == 23)
          {
            v59 = *(v88 + 72);
          }

          else
          {
            v59 = 0;
          }
        }

        else
        {
LABEL_27:
          v57 = v83;
          v59 = 1;
        }
      }

      else
      {
        v56 = v25;
        v57 = v14;
        v59 = 1;
      }
    }

    sub_1D8D5F1EC(a5, v57, type metadata accessor for FeedUpdateRequest);
    v66 = *(a5 + v58[9]);
    v67 = v56;
    v68 = [v56 feedUpdateNeedsRetry];
    sub_1D8D5F1EC(v57, v21, type metadata accessor for FeedUpdateRequest);
    v21[v15[5]] = v66;
    v21[v15[6]] = v68;
    v21[v15[7]] = v59;
    v89 = *(v57 + v58[7]);
    v45 = sub_1D9179A4C();
    v47 = v69;

    sub_1D8D5FDB8(v57, type metadata accessor for FeedUpdateRequest);
    v16 = v84;
    a7 = v82;
  }

  else
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    __swift_project_value_buffer(v35, qword_1EDCD1050);

    v36 = sub_1D917741C();
    v37 = sub_1D9178D1C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v84 = v16;
      v39 = v38;
      v40 = swift_slowAlloc();
      v81 = updated;
      v41 = v40;
      v89 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_1D8CFA924(v83, a4, &v89);
      _os_log_impl(&dword_1D8CEC000, v36, v37, "No matching MTPodcast found for storeID %{private,mask.hash}s. Probably a new follow. Creating bootstrap update.", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      v42 = v41;
      updated = v81;
      MEMORY[0x1DA72CB90](v42, -1, -1);
      v43 = v39;
      v16 = v84;
      MEMORY[0x1DA72CB90](v43, -1, -1);
    }

    sub_1D8D5F1EC(a5, v14, type metadata accessor for FeedUpdateRequest);
    v44 = *(a5 + updated[9]);
    sub_1D8D5F1EC(v14, v21, type metadata accessor for FeedUpdateRequest);
    v21[v15[5]] = v44;
    v21[v15[6]] = 1;
    v21[v15[7]] = 1;
    v89 = *&v14[updated[7]];
    v45 = sub_1D9179A4C();
    v47 = v46;
    sub_1D8D5FDB8(v14, type metadata accessor for FeedUpdateRequest);
  }

  v70 = &v21[v15[8]];
  *v70 = v45;
  v70[1] = v47;
  v71 = v88;
  v72 = v86;
  sub_1D8D5F1EC(v21, v86, type metadata accessor for StoreFeedUpdater.Update);
  v73 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v74 = (v85 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  *(v75 + 16) = v71;
  sub_1D8D7C424(v72, v75 + v73, type metadata accessor for StoreFeedUpdater.Update);
  v76 = (v75 + v74);
  *v76 = v87;
  v76[1] = a7;

  OS_dispatch_queue.asyncWithTelemetry(for:_:)(a5, sub_1D8D83B24, v75);

  return sub_1D8D5FDB8(v21, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8D7EBC0(double a1)
{
  v2 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v1 + v3, 1, v5))
  {
    (*(v6 + 8))(v1 + v3, v5);
  }

  updated = type metadata accessor for FeedUpdateRequest(0);
  v8 = updated[5];
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v12 = updated[6];
  if (!(*(v10 + 48))(v4 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  if (*(v4 + updated[14]))
  {
  }

  if (*(v4 + updated[15]))
  {
  }

  if (*(v4 + updated[16]))
  {
  }

  if (*(v4 + updated[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t OS_dispatch_queue.asyncWithTelemetry(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_1D9177E0C();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest(0);
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v13 = swift_allocObject();
  LOBYTE(aBlock[0]) = 24;
  sub_1D8D76684(aBlock, (v13 + 16));
  sub_1D8D7A3C4(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1D8D79960(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = v21;
  *v16 = v20;
  v16[1] = v17;
  aBlock[4] = sub_1D8D834C4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19_1;
  v18 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v6, v18);
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v7 + 8))(v9, v22);
}

void sub_1D8D7F1E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest(0);
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v13 = sub_1D9176ACC();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v27[1] = *&v2[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue];
    sub_1D8D7A3C4(a1, v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    sub_1D8D79960(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    aBlock[4] = sub_1D8D7D188;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_7_0;
    v19 = _Block_copy(aBlock);
    v20 = v2;
    sub_1D9177E4C();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v9, v6, v19);
    _Block_release(v19);
    (*(v30 + 8))(v6, v4);
    (*(v28 + 8))(v9, v29);
  }

  else
  {
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD1070);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "The feedUrl is an empty string. Cannot proceed with feed update.", v24, 2u);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    sub_1D8D77098();
    v25 = swift_allocError();
    *v26 = 7;
    FeedUpdateRequest.failRequest(_:)(v25);
  }
}

uint64_t sub_1D8D7F688()
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v2 = (*(*(updated - 1) + 80) + 24) & ~*(*(updated - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = updated[5];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = updated[6];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  if (*(v3 + updated[14]))
  {
  }

  if (*(v3 + updated[15]))
  {
  }

  if (*(v3 + updated[16]))
  {
  }

  if (*(v3 + updated[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8D7F948(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for FeedUpdateRequest(0) + 36);
  if (*(v3 + v4) == 1)
  {
    v5 = *(a1 + v4) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D8D7F9A8(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D8D7CE14(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D8D7FF34(v7, a2, 1, a3, type metadata accessor for FeedUpdateRequest, type metadata accessor for FeedUpdateRequest, &unk_1ECAB7518, &unk_1D91979D8);
  *v3 = v5;
  return result;
}

uint64_t sub_1D8D7FAB4()
{
  v1 = sub_1D91773AC();
  v24 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D917734C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D917739C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22[-v12];
  LODWORD(v14) = *v0;
  if ((v14 - 24) >= 4 && v14 != 8)
  {
    if (qword_1ECAB1030 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (qword_1ECAB1008 != -1)
  {
    swift_once();
  }

  for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
  {
    v16 = __swift_project_value_buffer(v7, i);
    (*(v8 + 16))(v10, v16, v7);
    (*(v8 + 32))(v13, v10, v7);
    v27 = v14;
    v14 = sub_1D8D76D50();
    v10 = sub_1D917737C();
    sub_1D91773DC();
    v23 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {
      break;
    }

    if (v14)
    {

      sub_1D917740C();

      v17 = v24;
      if ((*(v24 + 88))(v3, v1) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v3, v1);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v10, v23, v20, v14, v18, v19, 2u);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_14:
    ;
  }

  (*(v25 + 8))(v6, v26);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1D8D7FE9C()
{
  v1 = *(type metadata accessor for FeedUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D8D7E3F4(v3, v4, v5, v6, v0 + v2, v8, v9);
}

unint64_t sub_1D8D7FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D8D08A50(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_1D8D08A50(a4, v31, v32);
  }

  result = sub_1D8D800E0(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_1D8D08A50(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D8D800E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D80148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D801B0()
{
  v1 = v0;
  v2 = sub_1D9176EAC();
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest(0);
  v4 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = sub_1D9177F1C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v1[12];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v52 = v18;
  LOBYTE(v18) = sub_1D9177F4C();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  result = swift_beginAccess();
  if (*(v1[14] + 16) > 2uLL)
  {
    return result;
  }

  result = swift_beginAccess();
  v20 = v1[13];
  if (!*(v20 + 16))
  {
    return result;
  }

  v51 = v2;
  swift_beginAccess();
  sub_1D8D7A3C4(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v12);
  sub_1D8DA8814(0, 1);
  swift_endAccess();
  if (qword_1EDCD1068 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v21 = sub_1D917744C();
  __swift_project_value_buffer(v21, qword_1EDCD1070);
  sub_1D8D7A3C4(v12, v9);

  v22 = sub_1D917741C();
  v23 = sub_1D9178D1C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57[0] = v25;
    *v24 = 136315651;
    *(v24 + 4) = sub_1D8CFA924(v1[2], v1[3], v57);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    v26 = sub_1D9176ACC();
    v28 = v27;
    sub_1D8D7A55C(v9);
    v29 = sub_1D8CFA924(v26, v28, v57);

    *(v24 + 24) = v29;
    _os_log_impl(&dword_1D8CEC000, v22, v23, "%s: starting %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v25, -1, -1);
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  else
  {

    sub_1D8D7A55C(v9);
  }

  sub_1D8D7A3C4(v12, v6);
  v30 = v1[5];
  sub_1D8CFD9D8((v1 + 6), v57);
  v31 = v1[11];
  v32 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for RSSFeedUpdaterJob(0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *(v33 + 48) = -96;
  v34 = (v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
  *v35 = 0;
  v35[1] = 0;
  sub_1D8D7A3C4(v6, v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request);
  *(v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx) = v30;
  sub_1D8CFD9D8(v57, v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider);
  *(v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader) = v31;
  v36 = v52;
  *(v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue) = v52;
  v37 = (v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion);
  *v37 = sub_1D8DA24C0;
  v37[1] = v32;
  v38 = (v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
  *v38 = 0u;
  v38[1] = 0u;
  v39 = v36;
  v40 = v30;
  swift_unknownObjectRetain();

  v41 = v53;
  sub_1D9176E9C();
  v42 = sub_1D9176E5C();
  v44 = v43;
  (*(v54 + 8))(v41, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  sub_1D8D7A55C(v6);
  v45 = (v33 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID);
  *v45 = v42;
  v45[1] = v44;

  v46 = sub_1D9176ACC();
  v48 = v47;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v1[14];
  v1[14] = 0x8000000000000000;
  sub_1D8D7A5B8(v33, v46, v48, isUniquelyReferenced_nonNull_native);

  v1[14] = v56;
  swift_endAccess();
  sub_1D8DA9384();
  sub_1D8D801B0();

  return sub_1D8D7A55C(v12);
}

uint64_t sub_1D8D80848()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D808E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults);
  result = sub_1D917668C();
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1D9179AAC();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    result = swift_unknownObjectRelease();
    if (v2 == v10)
    {
      v11 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8);
      v13[0] = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key);
      v13[1] = v11;
      v12[0] = 46;
      v12[1] = 0xE100000000000000;
      sub_1D8D447DC();
      result = sub_1D917926C();
      if (result)
      {
        return (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify))();
      }
    }
  }

  return result;
}

uint64_t sub_1D8D80A80()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1D8D60CD8(v0 + v2, v4, v5);
}

uint64_t sub_1D8D80B2C(unint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a3(a1, 1);
  }

  v19 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_31:
    v5 = sub_1D917935C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA72AA90](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = sub_1D8E90D80(v8);

    ++v6;
    if (v11)
    {
      MEMORY[0x1DA729B90]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      v7 = v19;
      v6 = v10;
    }
  }

  if (a1 >> 62)
  {
    v12 = sub_1D917935C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >> 62)
  {
    if (v12 != sub_1D917935C())
    {
      goto LABEL_21;
    }
  }

  else if (v12 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD0F68);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, &v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }
  }

  a3(v7, 0);
}

uint64_t sub_1D8D80E3C(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v52);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D8, &qword_1D9197EE8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v50 - v13;
  v15 = sub_1D9177F1C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2[2];
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v21 = v20;
  v22 = sub_1D9177F4C();
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v53 = v11;
  v25 = v2[4];
  updated = type metadata accessor for FeedUpdateRequest(0);
  v11 = *(a1 + *(updated + 28));
  v55 = v11;
  v27 = *(v25 + 32);
  MEMORY[0x1EEE9AC00](updated);
  v50[-4] = v25;
  v50[-3] = &v55;
  v50[-2] = a1;
  MEMORY[0x1EEE9AC00](v28);
  v50[-2] = sub_1D8D81A74;
  v50[-1] = v29;
  os_unfair_lock_lock(v27 + 4);
  sub_1D8D799DC(v54);
  os_unfair_lock_unlock(v27 + 4);
  swift_beginAccess();
  v30 = v2[8];
  if (!*(v30 + 16) || (v31 = sub_1D8D490F4(v11), (v32 & 1) == 0))
  {
    v47 = type metadata accessor for StoreFeedUpdater.Retry(0);
    (*(*(v47 - 8) + 56))(v14, 1, 1, v47);
    sub_1D8D08A50(v14, &qword_1ECAB76D8, &qword_1D9197EE8);
    return sub_1D8D825A0(a1);
  }

  v33 = v31;
  v34 = *(v30 + 56);
  v23 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v35 = *(v23 - 8);
  sub_1D8D5F1EC(v34 + *(v35 + 72) * v33, v14, type metadata accessor for StoreFeedUpdater.Retry);
  v36 = *(v35 + 56);
  v22 = v35 + 56;
  v51 = v36;
  v36(v14, 0, 1, v23);
  sub_1D8D08A50(v14, &qword_1ECAB76D8, &qword_1D9197EE8);
  if (qword_1EDCD1048 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v37 = sub_1D917744C();
  __swift_project_value_buffer(v37, qword_1EDCD1050);
  sub_1D8D5F1EC(a1, v8, type metadata accessor for StoreFeedUpdater.Update);
  v38 = sub_1D917741C();
  v39 = sub_1D9178D1C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50[1] = v22;
    v42 = v41;
    v54[0] = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_1D8D7C424(v8, v5, type metadata accessor for StoreFeedUpdater.Update);
    v43 = &v5[*(v52 + 32)];
    v52 = v23;
    v45 = *v43;
    v44 = v43[1];

    sub_1D8D5FDB8(v5, type metadata accessor for StoreFeedUpdater.Update);
    v46 = sub_1D8CFA924(v45, v44, v54);
    v23 = v52;

    *(v40 + 14) = v46;
    _os_log_impl(&dword_1D8CEC000, v38, v39, "Update %{private,mask.hash}s: clearing retries because a new request has come in", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1DA72CB90](v42, -1, -1);
    MEMORY[0x1DA72CB90](v40, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v8, type metadata accessor for StoreFeedUpdater.Update);
  }

  v48 = v53;
  v51(v53, 1, 1, v23);
  swift_beginAccess();
  sub_1D8F7D378(v48, v11);
  swift_endAccess();
  return sub_1D8D825A0(a1);
}

char *sub_1D8D814A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t))
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a2;
  v11 = sub_1D9177E0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D9177E9C();
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v24 = a9;
    v20 = *&result[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue];

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a5;
    *(v21 + 32) = a1;
    v22 = v26 & 1;
    *(v21 + 40) = v22;
    aBlock[4] = v27;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = v28;
    v23 = _Block_copy(aBlock);

    v24(a1, v22);
    sub_1D9177E4C();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v14, v23);
    _Block_release(v23);

    (*(v12 + 8))(v14, v11);
    (*(v15 + 8))(v17, v29);
  }

  return result;
}

BOOL sub_1D8D81798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v7 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 40);
  if (*(v10 + 16) && (v11 = sub_1D8D490F4(a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D5F1EC(a3, v9, type metadata accessor for FeedUpdateRequest);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D8D7CE14(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1D8D7CE14((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  sub_1D8D7C424(v9, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for FeedUpdateRequest);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1D8D81A94(v13, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v20;
  swift_endAccess();
  sub_1D8D7D28C(sub_1D8D81F3C, &unk_1F54712A0, sub_1D8D85B6C, &block_descriptor_63);
  v17 = v13[2];

  return v17 == 1;
}

id sub_1D8D81A00(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

BOOL sub_1D8D81A20@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D8D81798(*(v1 + 16), **(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8D81A94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F83A80();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D81BB8(v14, a3 & 1);
    v9 = sub_1D8D490F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8D81BCC(uint64_t a1)
{
  result = type metadata accessor for FeedUpdateRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D81C54(uint64_t a1)
{
  swift_beginAccess();
  [*(a1 + 104) lock];
  sub_1D8D81D40(a1);
  [*(a1 + 104) unlock];
  type metadata accessor for PodcastStateMachine();
  sub_1D8CFBF10(qword_1EDCD3F78, v2, type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
  sub_1D917788C();
  sub_1D917798C();
}

uint64_t sub_1D8D81D40(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_1D91040E0(v4, v15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v16(a1);
      }

      sub_1D9104150(v15);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 88);
    v6 = *(v5 + 16);

    if (v6)
    {
      v8 = 0;
      v9 = v5 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        sub_1D91040E0(v9, v15);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D9104118(v15, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8E318EC(0, *(v10 + 16) + 1, 1);
            v10 = v17;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_1D8E318EC((v12 > 1), v13 + 1, 1);
            v10 = v17;
          }

          *(v10 + 16) = v13 + 1;
          result = sub_1D9104118(v14, v10 + 24 * v13 + 32);
        }

        else
        {
          result = sub_1D9104150(v15);
        }

        ++v8;
        v9 += 24;
        if (v6 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(a1 + 88) = v10;
}

uint64_t sub_1D8D81F3C(uint64_t a1)
{
  result = MEMORY[0x1DA72A0A0](*(a1 + 16), MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1D8D82034(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D82034(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D9179DAC();
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
    sub_1D8D823A4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8D82114()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E7C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1EDCD09B0 = result;
  return result;
}

uint64_t sub_1D8D823A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8EFC678(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D8F0019C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D8F015F8(v5 + 1);
  }

  v8 = *v3;
  result = sub_1D9179DAC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D82524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1D9176EAC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D8D825A0(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v121 = (&v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v114 = (&v108 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v108 - v9;
  v118 = type metadata accessor for StoreFeedUpdater.Update(0);
  v115 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v108 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v108 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v116 = (&v108 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v108 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v108 - v24;
  v26 = sub_1D9177F1C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v2[2];
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26, v28);
  v32 = v31;
  v33 = sub_1D9177F4C();
  (*(v27 + 8))(v30, v26);
  if ((v33 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_11;
  }

  sub_1D8D5F1EC(v119, v25, type metadata accessor for StoreFeedUpdater.Update);
  v34 = *&v25[*(updated + 28)];
  v35 = v2[5];
  v36 = updated;
  updated = v25;
  if ((sub_1D8D834CC(v34) & 1) != 0 && v25[*(v118 + 28)] == 1)
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1EDCD1050);
    v38 = sub_1D917741C();
    v39 = sub_1D9178D1C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v121 = v2;
      v41 = v40;
      v42 = swift_slowAlloc();
      v123[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      swift_beginAccess();
      v43 = v25;
      v44 = v117;
      sub_1D8D5F1EC(v43, v117, type metadata accessor for StoreFeedUpdater.Update);
      v45 = v118;
      v46 = (v44 + *(v118 + 32));
      v47 = updated;
      v48 = *v46;
      v49 = v46[1];

      sub_1D8D5FDB8(v44, type metadata accessor for StoreFeedUpdater.Update);
      v50 = sub_1D8CFA924(v48, v49, v123);
      updated = v47;

      *(v41 + 14) = v50;
      _os_log_impl(&dword_1D8CEC000, v38, v39, "There is a running delta update for %{private,mask.hash}s. This is a bootstrap update, holding until the delta is done.", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1DA72CB90](v42, -1, -1);
      MEMORY[0x1DA72CB90](v41, -1, -1);
    }

    else
    {

      v45 = v118;
    }

    swift_beginAccess();
    v72 = v113;
    sub_1D8D5F1EC(updated, v113, type metadata accessor for StoreFeedUpdater.Update);
    (*(v115 + 56))(v72, 0, 1, v45);
    swift_beginAccess();
    sub_1D8F7D0D8(v72, v34);
    swift_endAccess();
    goto LABEL_18;
  }

  if ((sub_1D8D834CC(v34) & 1) == 0)
  {
    v51 = v2[6];
    if ((sub_1D8D834CC(v34) & 1) == 0)
    {
      v119 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76E0, &qword_1D9197EF0);
      v65 = *(v110 + 72);
      v66 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v110 = swift_allocObject();
      v67 = v110 + v66;
      v113 = v35;
      sub_1D8D83728(v34, v67);
      v108 = v51;
      sub_1D8D83728(v34, v67 + v65);
      v68 = v114;
      sub_1D8D83D98(v67, v114);
      v69 = v111;
      sub_1D8D843E0(v68, v111);
      v70 = *(v115 + 48);
      if (v70(v69, 1, v118) == 1)
      {
        sub_1D8D08A50(v69, &qword_1ECAB76D0, &unk_1D9197ED8);
        v71 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8D7C424(v69, v116, type metadata accessor for StoreFeedUpdater.Update);
        v73 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1D8D86DC8(0, v73[2] + 1, 1, v73);
        }

        v75 = v73[2];
        v74 = v73[3];
        v76 = v73;
        if (v75 >= v74 >> 1)
        {
          v76 = sub_1D8D86DC8((v74 > 1), v75 + 1, 1, v73);
        }

        v76[2] = v75 + 1;
        v71 = v76;
        sub_1D8D7C424(v116, v76 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v75, type metadata accessor for StoreFeedUpdater.Update);
        v68 = v114;
      }

      sub_1D8D83D98(v67 + v65, v68);
      sub_1D8D843E0(v68, v69);
      if (v70(v69, 1, v118) == 1)
      {
        v77 = updated;
        sub_1D8D08A50(v69, &qword_1ECAB76D0, &unk_1D9197ED8);
      }

      else
      {
        sub_1D8D7C424(v69, v116, type metadata accessor for StoreFeedUpdater.Update);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_1D8D86DC8(0, v71[2] + 1, 1, v71);
        }

        v79 = v71[2];
        v78 = v71[3];
        v80 = v71;
        if (v79 >= v78 >> 1)
        {
          v80 = sub_1D8D86DC8((v78 > 1), v79 + 1, 1, v71);
        }

        v77 = updated;
        v80[2] = v79 + 1;
        v71 = v80;
        sub_1D8D7C424(v116, v80 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v79, type metadata accessor for StoreFeedUpdater.Update);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v81 = v71[2];
      if (v81)
      {
        v114 = v71;
        v82 = v118;
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v83 = sub_1D917744C();
        __swift_project_value_buffer(v83, qword_1EDCD1050);
        v84 = sub_1D917741C();
        v85 = sub_1D9178D1C();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v123[0] = v116;
          *v86 = 141558275;
          *(v86 + 4) = 1752392040;
          *(v86 + 12) = 2081;
          swift_beginAccess();
          v87 = v117;
          sub_1D8D5F1EC(v77, v117, type metadata accessor for StoreFeedUpdater.Update);
          v88 = (v87 + v82[8]);
          v89 = *v88;
          v90 = v88[1];

          sub_1D8D5FDB8(v87, type metadata accessor for StoreFeedUpdater.Update);
          v91 = sub_1D8CFA924(v89, v90, v123);
          v82 = v118;

          *(v86 + 14) = v91;
          _os_log_impl(&dword_1D8CEC000, v84, v85, "There is a pending update for %{private,mask.hash}s. Merging together.", v86, 0x16u);
          v92 = v116;
          __swift_destroy_boxed_opaque_existential_1Tm(v116);
          MEMORY[0x1DA72CB90](v92, -1, -1);
          MEMORY[0x1DA72CB90](v86, -1, -1);
        }

        swift_beginAccess();
        v112 = v77;
        sub_1D8D5F1EC(v77, v16, type metadata accessor for StoreFeedUpdater.Update);
        v93 = v82[5];
        v117 = v82[6];
        v118 = v93;
        v94 = v82[7];
        v95 = v114 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
        v115 = *(v115 + 72);
        v116 = v94;
        v97 = v120;
        v96 = v121;
        do
        {
          sub_1D8D5F1EC(v95, v97, type metadata accessor for StoreFeedUpdater.Update);
          sub_1D8D5F1EC(v16, v96, type metadata accessor for FeedUpdateRequest);
          if (v16[v118])
          {
            v103 = 1;
          }

          else
          {
            v103 = *(v97 + v82[5]);
          }

          if (v16[v117])
          {
            v104 = 1;
          }

          else
          {
            v104 = *(v97 + v82[6]);
          }

          v105 = v82;
          if (*(v116 + v16))
          {
            v98 = 1;
            v97 = v120;
          }

          else
          {
            v97 = v120;
            v98 = v120[v82[7]];
          }

          v96 = v121;
          sub_1D8D5F1EC(v121, v11, type metadata accessor for FeedUpdateRequest);
          v11[v105[5]] = v103;
          v11[v105[6]] = v104;
          v11[v105[7]] = v98;
          v122[0] = *(v96 + *(v119 + 28));
          v99 = sub_1D9179A4C();
          v101 = v100;
          sub_1D8D5FDB8(v96, type metadata accessor for FeedUpdateRequest);
          sub_1D8D5FDB8(v97, type metadata accessor for StoreFeedUpdater.Update);
          sub_1D8D5FDB8(v16, type metadata accessor for StoreFeedUpdater.Update);
          v102 = &v11[v105[8]];
          *v102 = v99;
          v102[1] = v101;
          sub_1D8D7C424(v11, v16, type metadata accessor for StoreFeedUpdater.Update);
          v95 += v115;
          --v81;
          v82 = v105;
        }

        while (v81);

        v106 = v109;
        sub_1D8D7C424(v16, v109, type metadata accessor for StoreFeedUpdater.Update);
        v77 = v112;
        sub_1D8F67444(v106, v112);
      }

      else
      {
      }

      swift_beginAccess();
      sub_1D8D84450(v77);
      v64 = v77;
      return sub_1D8D5FDB8(v64, type metadata accessor for StoreFeedUpdater.Update);
    }
  }

  if (qword_1EDCD1048 != -1)
  {
    goto LABEL_52;
  }

LABEL_11:
  v52 = sub_1D917744C();
  __swift_project_value_buffer(v52, qword_1EDCD1050);
  v53 = sub_1D917741C();
  v54 = sub_1D9178D1C();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v118;
  if (!v55)
  {

LABEL_18:
    v64 = updated;
    return sub_1D8D5FDB8(v64, type metadata accessor for StoreFeedUpdater.Update);
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v122[0] = v58;
  *v57 = 141558275;
  *(v57 + 4) = 1752392040;
  *(v57 + 12) = 2081;
  swift_beginAccess();
  v59 = v117;
  sub_1D8D5F1EC(updated, v117, type metadata accessor for StoreFeedUpdater.Update);
  v60 = (v59 + *(v56 + 32));
  v61 = *v60;
  v62 = v60[1];

  sub_1D8D5FDB8(v59, type metadata accessor for StoreFeedUpdater.Update);
  v63 = sub_1D8CFA924(v61, v62, v122);

  *(v57 + 14) = v63;
  _os_log_impl(&dword_1D8CEC000, v53, v54, "There is already an update running for %{private,mask.hash}s. Dropping this redundant request.", v57, 0x16u);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  MEMORY[0x1DA72CB90](v58, -1, -1);
  MEMORY[0x1DA72CB90](v57, -1, -1);

  v64 = updated;
  return sub_1D8D5FDB8(v64, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8D834CC(uint64_t a1)
{
  v3 = type metadata accessor for StoreFeedUpdater.Update(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue;
    swift_beginAccess();
    v16 = *(v1 + v15);
    v17 = *(v16 + 16);

    v18 = 0;
    while (1)
    {
      v19 = v18;
      if (v17 == v18)
      {
LABEL_6:

        return v17 != v19;
      }

      if (v18 >= *(v16 + 16))
      {
        break;
      }

      sub_1D8D5F1EC(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18++, v6, type metadata accessor for StoreFeedUpdater.Update);
      v20 = *&v6[*(type metadata accessor for FeedUpdateRequest(0) + 28)];
      result = sub_1D8D5FDB8(v6, type metadata accessor for StoreFeedUpdater.Update);
      if (v20 == a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D83728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177F1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = *(v17 + 16);

  if (v18)
  {
    v19 = 0;
    while (v19 < *(v17 + 16))
    {
      sub_1D8D5F1EC(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v7, type metadata accessor for StoreFeedUpdater.Update);
      v20 = *&v7[*(type metadata accessor for FeedUpdateRequest(0) + 28)];
      result = sub_1D8D5FDB8(v7, type metadata accessor for StoreFeedUpdater.Update);
      if (v20 == a1)
      {

        swift_beginAccess();
        v23 = v25;
        sub_1D90D52B4(v19, v25);
        swift_endAccess();
        v22 = v23;
        v21 = 0;
        return (*(v5 + 56))(v22, v21, 1, v4);
      }

      if (v18 == ++v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_7:

  v21 = 1;
  v22 = v25;
  return (*(v5 + 56))(v22, v21, 1, v4);
}

uint64_t sub_1D8D839F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D8D80E3C(a2);
  if (a4)
  {

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8D83A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedUpdateRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8D83B24()
{
  v1 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1D8D839F0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1D8D83C04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1D9176C2C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[18]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D8D83D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D83E3C(uint64_t a1)
{
  result = sub_1D9176EAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D83ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v7 = *(updated - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, updated);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8D83FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D9176C2C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[18]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1D8D8410C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = (Strong + qword_1ECAB8648);
    *v8 = a2;
    v8[1] = a3 & 1;
    v8[2] = a4;
    v9 = Strong;

    sub_1D8D841A0();
  }
}

uint64_t sub_1D8D841A0()
{
  v1 = sub_1D9177F1C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + qword_1ECAB8610);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1D9177F4C();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v0 + qword_1ECAB8648;
  v10 = *(v0 + qword_1ECAB8648);
  if (v10)
  {
    v11 = *(v9 + 16);
    v12 = *(v9 + 8);
    v13 = qword_1ECAB8640;
    swift_beginAccess();
    v14 = *(v0 + v13);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = v12 & 1;

    for (i = 0; v17; result = )
    {
      v21 = i;
LABEL_11:
      v22 = *(*(v14 + 56) + ((v21 << 10) | (16 * __clz(__rbit64(v17)))));
      v23 = v10;
      v17 &= v17 - 1;
      v24 = v19;
      v25 = v11;

      v22(&v23);
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++i;
      if (v17)
      {
        i = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D8D843E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D84450(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76C8, &qword_1D9197ED0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_1D9177F1C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = sub_1D9177F4C();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = v4;
  v20 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue;
  v21 = swift_beginAccess();
  v22 = *(v2 + v20);
  MEMORY[0x1EEE9AC00](v21);
  *(&v38 - 2) = a1;

  v19 = sub_1D8D7CD24(sub_1D8F674D8, (&v38 - 4), v22, type metadata accessor for StoreFeedUpdater.Update);
  v24 = v23;

  if (v24)
  {
    v19 = *(*(v2 + v20) + 16);
  }

  updated = type metadata accessor for FeedUpdateRequest(0);
  v26 = *(a1 + *(updated + 72));
  MEMORY[0x1EEE9AC00](updated);
  *(&v38 - 2) = a1;
  *(&v38 - 1) = v19;
  os_unfair_lock_lock((v26 + 32));
  sub_1D8D850F0((v26 + 16));
  os_unfair_lock_unlock((v26 + 32));
  swift_beginAccess();
  if (*(*(v2 + v20) + 16) < v19)
  {
    goto LABEL_12;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    sub_1D8D5F1EC(a1, v11, type metadata accessor for StoreFeedUpdater.Update);
    sub_1D8D86CBC(v19, v19, v11);
    swift_endAccess();
    if (qword_1EDCD1048 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  swift_once();
LABEL_7:
  v27 = sub_1D917744C();
  __swift_project_value_buffer(v27, qword_1EDCD1050);
  sub_1D8D5F1EC(a1, v8, type metadata accessor for StoreFeedUpdater.Update);

  v28 = sub_1D917741C();
  v29 = sub_1D9178D1C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v30 = 136315907;
    *(v30 + 4) = sub_1D8CFA924(*(v2 + 16), *(v2 + 24), v41);
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    v32 = v40;
    sub_1D8D7C424(v8, v40, type metadata accessor for StoreFeedUpdater.Update);
    v33 = (v32 + *(v39 + 32));
    v34 = *v33;
    v35 = v33[1];

    sub_1D8D5FDB8(v32, type metadata accessor for StoreFeedUpdater.Update);
    v36 = sub_1D8CFA924(v34, v35, v41);

    *(v30 + 24) = v36;
    *(v30 + 32) = 2048;
    *(v30 + 34) = v19;
    _os_log_impl(&dword_1D8CEC000, v28, v29, "%s: inserting %{private,mask.hash}s at index %ld", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v8, type metadata accessor for StoreFeedUpdater.Update);
  }

  return sub_1D8D86EBC();
}

uint64_t sub_1D8D849A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v7 = sub_1D917734C();
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v54 - v10;
  v11 = sub_1D917739C();
  v64 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v54 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v54 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v54 - v23;
  v25 = *a1;
  sub_1D8D76CE0(v4, &v54 - v23);
  v26 = sub_1D9176EAC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    result = sub_1D8D798AC(v24);
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v54 = sub_1D9176E5C();
    v56 = v29;
    (*(v27 + 8))(v24, v26);
    v57 = a3;
    v59 = v7;
    v60 = v25;
    if ((v25 - 24) >= 4 && v25 != 8)
    {
      v30 = v64;
      if (qword_1ECAB1030 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v30 = v64;
    if (qword_1ECAB1008 != -1)
    {
      swift_once();
    }

    v31 = 1;
    for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
    {
      v33 = __swift_project_value_buffer(v11, i);
      v34 = v30[2];
      v34(v19, v33, v11);
      v35 = v30[4];
      v35(v65, v19, v11);
      v67 = v60;
      v55 = sub_1D8D76D50();
      if (v31)
      {
        if (qword_1ECAB1008 != -1)
        {
          swift_once();
        }

        v36 = qword_1ECAB1010;
      }

      else
      {
        if (qword_1ECAB1030 != -1)
        {
          swift_once();
        }

        v36 = qword_1ECAB1038;
      }

      v37 = v59;
      v38 = __swift_project_value_buffer(v11, v36);
      v34(v13, v38, v11);
      v35(v16, v13, v11);
      sub_1D917737C();
      v39 = v63;
      sub_1D917731C();
      v40 = v16;
      v16 = *(v64 + 1);
      (v16)(v40, v11);
      sub_1D8D32440();
      v41 = v56;

      sub_1D8D3852C();
      sub_1D8D15664(v42, v43);
      v19 = sub_1D917737C();
      v13 = sub_1D9178F5C();
      v44 = sub_1D917918C();

      if ((v44 & 1) == 0)
      {
        break;
      }

      v30 = v57;
      if (v55)
      {
        v45 = swift_slowAlloc();
        v64 = v16;
        v46 = v45;
        v47 = swift_slowAlloc();
        v66 = v47;
        *v46 = 136446466;
        v48 = sub_1D8CFA924(v54, v41, &v66);

        *(v46 + 4) = v48;
        *(v46 + 12) = 2050;
        *(v46 + 14) = v58;
        v49 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v19, v13, v49, v55, "[identifier=%{name=identifier,public}s]\n[position=%{name=position,public}ld]", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v50 = v47;
        v37 = v59;
        MEMORY[0x1DA72CB90](v50, -1, -1);
        v51 = v46;
        v16 = v64;
        MEMORY[0x1DA72CB90](v51, -1, -1);

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      swift_once();
LABEL_21:
      v31 = 0;
    }

    v30 = v57;
LABEL_19:
    v52 = v62;
    (*(v62 + 16))(v61, v39, v37);
    sub_1D91773FC();
    swift_allocObject();
    v53 = sub_1D91773EC();
    (*(v52 + 8))(v39, v37);
    result = (v16)(v65, v11);
    *v30 = v60;
    v30[1] = v53;
  }

  return result;
}

double sub_1D8D85010(_OWORD *a1, uint64_t a2, uint64_t a3)
{

  v6 = 4;
  sub_1D8D849A8(&v6, a3, &v7);
  result = *&v7;
  *a1 = v7;
  return result;
}

double sub_1D8D85088(_OWORD *a1)
{
  v3 = *(v1 + 24);

  v5 = 4;
  sub_1D8D849A8(&v5, v3, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

id sub_1D8D85118(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D8D85180(void *a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8D85284(a1, v4, v5);
}

uint64_t type metadata accessor for MediaRequest.Params(uint64_t a1)
{
  result = qword_1EDCD7028;
  if (!qword_1EDCD7028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D8D85284(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1D8D85658(a3);
  sub_1D8D85B08(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1D8D85D0C(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D8D86AFC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_109;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  v14 = [v9 thenWithBlock_];
  _Block_release(v12);

  return v14;
}

uint64_t sub_1D8D85440()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v3 + v4, v5);
  }

  return swift_deallocObject();
}

id sub_1D8D85658(uint64_t a1)
{
  v3 = type metadata accessor for MediaRequest.Params(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*(a1 + *(v6 + 124) + 8))
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v8 = [objc_opt_self() promiseWithResult_];
  }

  else
  {
    v9 = [objc_opt_self() sharedInstance];
    v7 = [v9 mediaTaskCountryCode];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v8 = [v7 asyncValuePromiseOnQueue_];
  }

  v10 = v8;

  sub_1D8D85B08(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  sub_1D8D85D0C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  aBlock[4] = sub_1D8D85F18;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_19_4;
  v13 = _Block_copy(aBlock);

  v14 = [v10 thenWithBlock_];
  _Block_release(v13);

  return v14;
}

uint64_t sub_1D8D858B0()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));
  sub_1D8D85E5C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = *(v1 + 112);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8D85B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaRequest.Params(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D85B9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1D9179DAC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation12MediaRequestC0D4TypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_1D8D85D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaRequest.Params(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = sub_1D917877C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8D85E5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >= 2u)
  {
    if (a6 == 3)
    {
    }

    else
    {
      v7 = a2;
      if (a6 != 2)
      {
        return v7;
      }
    }
  }
}

id sub_1D8D85F18(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8D85F8C(a1, v4, v5);
}

id sub_1D8D85F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4 <= 1)
  {
    if (*(a3 + 40))
    {
      v5 = 0xD00000000000002FLL;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (*(a3 + 40))
    {
      v6 = 0x80000001D91DA2D0;
    }

    else
    {
      v6 = 0x80000001D91DA300;
    }
  }

  else if (v4 == 2)
  {
    v6 = 0x80000001D91DA2A0;
    v5 = 0xD000000000000024;
  }

  else
  {
    v5 = *a3;
    v6 = *(a3 + 8);
    if (v4 == 3)
    {
    }

    else
    {
      v8 = *(a3 + 24);
      v7 = *(a3 + 32);
      v9 = *(a3 + 16);
      if (!(v6 | v5 | v7 | v8 | v9) || v5 - 1 > 2 || v7 | v6 | v8 | v9)
      {
        v6 = 0x80000001D91DA350;
        v5 = 0xD000000000000027;
      }

      else
      {
        v6 = 0x80000001D91DA330;
        v5 = 0xD00000000000001DLL;
      }
    }
  }

  v39 = v5;
  v40 = v6;
  v38[0] = 0x56746E65696C637BLL;
  v38[1] = 0xEF7D6E6F69737265;
  v10 = [objc_opt_self() mediaApiClientVersion];
  v11 = sub_1D917820C();
  v13 = v12;

  v36 = v11;
  v37 = v13;
  v14 = sub_1D8D447DC();
  v15 = MEMORY[0x1E69E6158];
  v16 = sub_1D917922C(v38, &v36, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v14, v14, v14);
  v18 = v17;

  v39 = v16;
  v40 = v18;
  strcpy(v38, "{storefront}");
  BYTE5(v38[1]) = 0;
  HIWORD(v38[1]) = -5120;
  v36 = sub_1D917820C();
  v37 = v19;
  v20 = sub_1D917922C(v38, &v36, 0, 0, 0, 1, v15, v15, v15, v14, v14, v14);
  v22 = v21;

  if (sub_1D8D865D0(a3))
  {
    v23 = 0x6970652D7478656ELL;
    v24 = 0xED00007365646F73;
LABEL_22:
    v39 = v23;
    v40 = v24;
    v38[0] = v20;
    v38[1] = v22;
    v38[0] = sub_1D91783DC();
    v38[1] = v26;
    sub_1D917831C();
    goto LABEL_23;
  }

  v25 = type metadata accessor for MediaRequest.Params(0);
  if (*(a3 + *(v25 + 124) + 8) && *(*(a3 + *(v25 + 128)) + 16))
  {
    v23 = 0x686372616573;
    v24 = 0xE600000000000000;
    goto LABEL_22;
  }

  if (*(a3 + 40) != 3)
  {
    v30 = *(a3 + 41);
    if (v30 > 3)
    {
      if (*(a3 + 41) > 5u)
      {
        if (v30 != 6)
        {
          goto LABEL_23;
        }

        v32 = 0x6970652D7478656ELL;
        v31 = 0xED00007365646F73;
      }

      else
      {
        if (v30 == 4)
        {
          v31 = 0xEB00000000737470;
          v33 = 0x63736E617274;
        }

        else
        {
          v31 = 0xEA00000000007365;
          v33 = 0x6F6765746163;
        }

        v32 = v33 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
      }
    }

    else if (*(a3 + 41) > 1u)
    {
      v34 = v30 == 2;
      v32 = 0xD000000000000010;
      if (v34)
      {
        v31 = 0x80000001D91C7F40;
      }

      else
      {
        v31 = 0x80000001D91C7F60;
      }
    }

    else if (*(a3 + 41))
    {
      v31 = 0xE800000000000000;
      v32 = 0x7374736163646F70;
    }

    else
    {
      v31 = 0x80000001D91C7F20;
      v32 = 0xD000000000000010;
    }

    v39 = v32;
    v40 = v31;
    v38[0] = v20;
    v38[1] = v22;
    v38[0] = sub_1D91783DC();
    v38[1] = v35;
    sub_1D917831C();
  }

LABEL_23:
  v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v28 = [objc_opt_self() promiseWithResult_];

  return v28;
}

uint64_t sub_1D8D86454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

BOOL Optional<A>.containsVisibleText.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D917662C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v13[0] = a1;
  v13[1] = a2;
  sub_1D91765FC();
  sub_1D8D447DC();
  v8 = sub_1D917920C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

uint64_t sub_1D8D865D0(uint64_t a1)
{
  if (*(a1 + 42))
  {
    return 0;
  }

  if (*(*(a1 + 144) + 16))
  {
    return 0;
  }

  v1 = *(a1 + 41);
  if (v1 == 7)
  {
    return 0;
  }

  v2 = sub_1D8D8D46C(v1, 1u);
  result = 1;
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return result;
}

id sub_1D8D86640(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for MediaRequest.Params(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + *(v12 + 144)) == 2)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 includeEntitlementsContent];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v15 = [v14 asyncValuePromiseOnQueue_];
  }

  else
  {
    v14 = sub_1D917873C();
    v15 = [objc_opt_self() promiseWithResult_];
  }

  v16 = v15;

  sub_1D8D85B08(a3, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1D8D85D0C(v11, v19 + v17);
  *(v19 + v18) = a4;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D8D88288;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_7_4;
  v20 = _Block_copy(aBlock);
  v21 = a4;
  v22 = a1;

  v23 = [v16 thenWithBlock_];
  _Block_release(v20);

  return v23;
}

uint64_t sub_1D8D868D4()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v3 + v4, v5);
  }

  v7 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

id sub_1D8D86AFC(void *a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8D86640(a1, v5, v1 + v4, v6);
}

uint64_t sub_1D8D86B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Loadable(0, *(a2 + 16), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *(a2 + 40);
  (*(v8 + 16))(&v16 - v10, v4 + v12, v7, v9);
  (*(v8 + 24))(v4 + v12, a1, v7);
  sub_1D8D87904(v11, a2, v13, v14);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1D8D86CBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D8D86DC8(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D8D7FF34(v7, a2, 1, a3, type metadata accessor for StoreFeedUpdater.Update, type metadata accessor for StoreFeedUpdater.Update, &qword_1ECAB76C8, &qword_1D9197ED0);
  *v3 = v5;
  return result;
}

uint64_t PerformanceLoadable.value.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8D86B9C(a1, a2, a3, a4);
  v8 = type metadata accessor for Loadable(0, *(a2 + 16), v6, v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t sub_1D8D86EBC()
{
  v1 = v0;
  v2 = sub_1D9176EAC();
  v77 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeedManagerBagConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for StoreFeedUpdater.Update(0);
  v79 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v16 = sub_1D9177F1C();
  v17 = *(v16 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v73 = v21;
  LOBYTE(v21) = sub_1D9177F4C();
  v23 = *(v17 + 8);
  v22 = v17 + 8;
  v23(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    v16 = sub_1D8D86DC8(0, v16[2] + 1, 1, v16);
    *(v1 + v22) = v16;
    goto LABEL_5;
  }

  v22 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue;
  result = swift_beginAccess();
  if (*(*(v1 + v22) + 16) >= v1[4])
  {
    return result;
  }

  v25 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue;
  result = swift_beginAccess();
  v26 = *(v1 + v25);
  if (!*(v26 + 16))
  {
    return result;
  }

  v71 = v2;
  swift_beginAccess();
  v2 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  sub_1D8D5F1EC(v26 + v2, v15, type metadata accessor for StoreFeedUpdater.Update);
  sub_1D8D880FC(0, 1);
  swift_endAccess();
  v78 = v15;
  sub_1D8D5F1EC(v15, v12, type metadata accessor for StoreFeedUpdater.Update);
  swift_beginAccess();
  v16 = *(v1 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v22) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v29 = v16[2];
  v28 = v16[3];
  if (v29 >= v28 >> 1)
  {
    v16 = sub_1D8D86DC8((v28 > 1), v29 + 1, 1, v16);
  }

  v16[2] = v29 + 1;
  sub_1D8D7C424(v12, v16 + v2 + *(v79 + 72) * v29, type metadata accessor for StoreFeedUpdater.Update);
  *(v1 + v22) = v16;
  swift_endAccess();
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v30 = sub_1D917744C();
  __swift_project_value_buffer(v30, qword_1EDCD1050);
  sub_1D8D5F1EC(v78, v9, type metadata accessor for StoreFeedUpdater.Update);

  v31 = sub_1D917741C();
  v32 = sub_1D9178D1C();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v74;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v82[0] = v36;
    *v35 = 136315651;
    *(v35 + 4) = sub_1D8CFA924(v1[2], v1[3], v82);
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    sub_1D8D7C424(v9, v34, type metadata accessor for StoreFeedUpdater.Update);
    v37 = (v34 + *(v72 + 32));
    v38 = *v37;
    v39 = v37[1];

    sub_1D8D5FDB8(v34, type metadata accessor for StoreFeedUpdater.Update);
    v40 = sub_1D8CFA924(v38, v39, v82);

    *(v35 + 24) = v40;
    _os_log_impl(&dword_1D8CEC000, v31, v32, "%s: starting %{private,mask.hash}s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v9, type metadata accessor for StoreFeedUpdater.Update);
  }

  sub_1D8D5F1EC(v78, v34, type metadata accessor for StoreFeedUpdater.Update);
  v41 = v75;
  sub_1D8D5F1EC(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, v75, type metadata accessor for FeedManagerBagConfiguration);
  v42 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ctx);
  sub_1D8CFD9D8(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider, v81);
  v43 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_mediaRequestController);
  v44 = swift_allocObject();
  swift_weakInit();
  v80[3] = type metadata accessor for MediaRequestController();
  v80[4] = &protocol witness table for MediaRequestController;
  v80[0] = v43;
  type metadata accessor for StoreFeedUpdaterJob(0);
  v45 = swift_allocObject();
  sub_1D8D888AC(v82);
  v46 = v82[5];
  v45[5] = v82[4];
  v45[6] = v46;
  *(v45 + 170) = *(v83 + 10);
  v47 = v83[0];
  v45[9] = v82[8];
  v45[10] = v47;
  v48 = v82[7];
  v45[7] = v82[6];
  v45[8] = v48;
  v49 = v82[1];
  v45[1] = v82[0];
  v45[2] = v49;
  v50 = v82[3];
  v45[3] = v82[2];
  v45[4] = v50;
  v51 = (v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval);
  *v52 = 0;
  v52[1] = 0;
  sub_1D8D5F1EC(v34, v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, type metadata accessor for StoreFeedUpdater.Update);
  sub_1D8D5F1EC(v41, v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  *(v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx) = v42;
  sub_1D8CFD9D8(v81, v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider);
  sub_1D8CFD9D8(v80, v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController);
  v53 = v73;
  *(v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_queue) = v73;
  v54 = (v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
  *v54 = sub_1D8F674A8;
  v54[1] = v44;
  v55 = v53;
  v56 = v42;
  swift_retain_n();
  v57 = v43;
  v58 = v76;
  sub_1D9176E9C();
  v59 = sub_1D9176E5C();
  v61 = v60;

  (*(v77 + 8))(v58, v71);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  sub_1D8D5FDB8(v41, type metadata accessor for FeedManagerBagConfiguration);
  sub_1D8D5FDB8(v34, type metadata accessor for StoreFeedUpdater.Update);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  v62 = (v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID);
  *v62 = v59;
  v62[1] = v61;
  v63 = v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData;
  *(v63 + 1) = 0u;
  *(v63 + 2) = 0u;
  *v63 = 0u;
  *(v63 + 6) = v59;
  *(v63 + 7) = v61;

  updated = type metadata accessor for FeedUpdateRequest(0);
  v65 = *&v78[*(updated + 28)];
  v66 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs;
  swift_beginAccess();

  v67 = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = *(v1 + v66);
  *(v1 + v66) = 0x8000000000000000;
  sub_1D8D888D4(v45, v65, v67);
  *(v1 + v66) = v80[0];
  swift_endAccess();
  v68 = v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v69 = *(v45 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update + *(updated + 72));
  os_unfair_lock_lock((v69 + 32));
  v70 = *(v69 + 24);
  if (v70)
  {
    LOBYTE(v81[0]) = *(v69 + 16);
    v81[1] = v70;

    sub_1D8D7FAB4();
  }

  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  os_unfair_lock_unlock((v69 + 32));

  OS_dispatch_queue.asyncWithTelemetry(for:_:)(v68, sub_1D8D8E794, v45);

  sub_1D8D86EBC();

  return sub_1D8D5FDB8(v78, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8D87904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Loadable(255, v6, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v19 - v10;
  v12 = *(a2 + 40);
  v21 = v13;
  v14 = *(v13 + 48);
  v15 = *(v7 - 8);
  v16 = *(v15 + 16);
  v16(&v19 - v10, v22, v7, v9);
  (v16)(&v11[v14], v4 + v12, v7);
  v17 = *(*(v6 - 8) + 48);
  if (v17(v11, 2, v6) == 1)
  {
    sub_1D8D87AFC(a2);
    return (*(v15 + 8))(&v11[v14], v7);
  }

  else if (v17(&v11[v14], 2, v6) == 1)
  {
    sub_1D8D2CD28(a2);
    return (*(v15 + 8))(v11, v7);
  }

  else
  {
    return (*(v20 + 8))(v11, v21);
  }
}

uint64_t sub_1D8D87AFC(uint64_t a1)
{
  sub_1D9178F4C();

  return sub_1D91772FC();
}

unint64_t sub_1D8D87B4C(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1D8D8813C(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

id sub_1D8D87C40(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for MediaRequest.Params(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (*(a3 + *(v13 + 148) + 8))
  {
    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v15 = [objc_opt_self() promiseWithResult_];
  }

  else
  {
    v16 = [objc_opt_self() sharedInstance];
    v14 = [v16 languageTag];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v15 = [v14 asyncValuePromiseOnQueue_];
  }

  v17 = v15;

  sub_1D8D85B08(a3, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a2;
  sub_1D8D85D0C(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D9172384;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_13_4;
  v20 = _Block_copy(aBlock);
  v21 = a4;
  v22 = a5;
  v23 = a1;

  v24 = [v17 thenWithBlock_];
  _Block_release(v20);

  return v24;
}

uint64_t sub_1D8D87ED4()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

unint64_t sub_1D8D8813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_1D8D88288(void *a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_1D8D87C40(a1, v8, v1 + v4, v6, v7);
}

uint64_t type metadata accessor for StoreFeedUpdaterJob(uint64_t a1)
{
  result = qword_1EDCD3CE0;
  if (!qword_1EDCD3CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D883D4(uint64_t a1)
{
  result = type metadata accessor for StoreFeedUpdater.Update(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedManagerBagConfiguration(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D8D88524(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D91766EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = *(*(a2 + 144) + 16);
  if (v10)
  {
    if (v10 == 1)
    {

      sub_1D917677C();
      v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v12 = [v27 stringByAppendingPathComponent_];

      v13 = sub_1D917820C();
      v15 = v14;

      MEMORY[0x1DA727D50](v13, v15);
      v16 = v27;
    }

    else
    {
      v28[0] = *(a2 + 144);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
      sub_1D917817C();

      sub_1D91766BC();

      v18 = sub_1D91766FC();
      if (*v17)
      {
        v19 = v17;
        (*(v4 + 16))(v6, v9, v3);
        v20 = *v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v19 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1D8D8EDF4(0, v20[2] + 1, 1, v20);
          *v19 = v20;
        }

        v23 = v20[2];
        v22 = v20[3];
        v24 = (v23 + 1);
        if (v23 >= v22 >> 1)
        {
          v27 = (v23 + 1);
          v25 = sub_1D8D8EDF4((v22 > 1), v23 + 1, 1, v20);
          v24 = v27;
          v20 = v25;
          *v19 = v25;
        }

        v20[2] = v24;
        (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v6, v3);
        v18(v28, 0);
      }

      else
      {
        v18(v28, 0);
      }

      (*(v4 + 8))(v9, v3);
    }
  }
}

double sub_1D8D888AC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 153) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 169) = 1;
  return result;
}

uint64_t sub_1D8D888D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F838E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D8D934(v14, a3 & 1);
    v9 = sub_1D8D490F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8D889F8(uint64_t *a1, uint64_t a2)
{
  v562 = a1;
  v3 = sub_1D91766EC();
  v560 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v514 = &v511 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v515 = &v511 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v517 = &v511 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v527 = &v511 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v550 = &v511 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v528 = &v511 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v553 = &v511 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v516 = &v511 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v512 = &v511 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v511 = &v511 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v521 = &v511 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v529 = &v511 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v554 = &v511 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v530 = &v511 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v538 = &v511 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v531 = &v511 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v539 = &v511 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v532 = &v511 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v555 = &v511 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v520 = &v511 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v513 = &v511 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v533 = &v511 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v549 = &v511 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v534 = &v511 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v523 = &v511 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v535 = &v511 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v522 = &v511 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v511 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v561 = (&v511 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v511 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v511 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v511 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v511 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v511 - v75;
  v77 = *(a2 + 42);
  v556 = a2;
  v78 = *(a2 + 168);
  v563 = v79;
  if (v77)
  {
    if (v78)
    {
      goto LABEL_21;
    }

    v570[0] = *(v556 + 160);
    sub_1D9179A4C();
    sub_1D91766BC();

    v81 = sub_1D91766FC();
    if (*v80)
    {
      v82 = v80;
      sub_1D8D8EBA0();
      v83 = *(*v82 + 16);
      sub_1D8D8EE90(v83);
      v84 = *v82;
      *(v84 + 16) = v83 + 1;
      v85 = v560;
      (*(v560 + 16))(v84 + ((*(v560 + 80) + 32) & ~*(v560 + 80)) + *(v560 + 72) * v83, v70, v3);
      v81(v570, 0);
      v73 = v70;
LABEL_20:
      (*(v85 + 8))(v73, v3);
      goto LABEL_21;
    }

    v81(v570, 0);
    v73 = v70;
    goto LABEL_19;
  }

  if ((v78 & 1) == 0)
  {
    v86 = *(v556 + 160);
    strcpy(v570, "[{specifier}]");
    HIWORD(v570[1]) = -4864;
    v566 = 0x696669636570737BLL;
    *&v567 = 0xEB000000007D7265;
    strcpy(v564, "next-episodes");
    HIWORD(v564[1]) = -4864;
    v87 = sub_1D8D447DC();
    v88 = sub_1D917922C(&v566, v564, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v87, v87, v87);
    v570[0] = 0x74696D696CLL;
    v570[1] = 0xE500000000000000;
    MEMORY[0x1DA7298F0](v88);

    v570[0] = v86;
    sub_1D9179A4C();
    sub_1D91766BC();

    v90 = sub_1D91766FC();
    v91 = *v89;
    if (*v89)
    {
      v92 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v92 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = sub_1D8D8EDF4(0, v91[2] + 1, 1, v91);
        *v92 = v91;
      }

      v95 = v91[2];
      v94 = v91[3];
      if (v95 >= v94 >> 1)
      {
        v91 = sub_1D8D8EDF4((v94 > 1), v95 + 1, 1, v91);
        *v92 = v91;
      }

      v91[2] = v95 + 1;
      v96 = v560;
      v3 = v563;
      (*(v560 + 16))(v91 + ((*(v560 + 80) + 32) & ~*(v560 + 80)) + *(v560 + 72) * v95, v76, v563);
      v90(v570, 0);
    }

    else
    {
      v90(v570, 0);
      v96 = v560;
    }

    (*(v96 + 8))(v76, v3);
  }

  if ((sub_1D8D865D0(v556) & 1) == 0)
  {
    sub_1D91766BC();
    v98 = sub_1D91766FC();
    if (*v97)
    {
      v99 = v97;
      sub_1D8D8EBA0();
      v100 = *(*v99 + 16);
      sub_1D8D8EE90(v100);
      v101 = *v99;
      *(v101 + 16) = v100 + 1;
      v85 = v560;
      (*(v560 + 16))(v101 + ((*(v560 + 80) + 32) & ~*(v560 + 80)) + *(v560 + 72) * v100, v73, v3);
      v98(v570, 0);
      goto LABEL_20;
    }

    v98(v570, 0);
LABEL_19:
    v85 = v560;
    goto LABEL_20;
  }

LABEL_21:
  v519 = type metadata accessor for MediaRequest.Params(0);
  v102 = v556;
  if (*(v556 + v519[31] + 8))
  {

    sub_1D91766BC();

    v104 = sub_1D91766FC();
    if (*v103)
    {
      v105 = v103;
      (*(v560 + 16))(v64, v67, v3);
      v106 = *v105;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *v105 = v106;
      if ((v107 & 1) == 0)
      {
        v106 = sub_1D8D8EDF4(0, v106[2] + 1, 1, v106);
        *v105 = v106;
      }

      v109 = v106[2];
      v108 = v106[3];
      v110 = v560;
      if (v109 >= v108 >> 1)
      {
        v510 = sub_1D8D8EDF4((v108 > 1), v109 + 1, 1, v106);
        v110 = v560;
        v106 = v510;
        *v105 = v510;
      }

      v106[2] = v109 + 1;
      v111 = v110;
      (*(v110 + 32))(v106 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v64, v3);
      v104(v570, 0);
    }

    else
    {
      v104(v570, 0);
      v111 = v560;
    }

    (*(v111 + 8))(v67, v3);
    v102 = v556;
  }

  v112 = *(v102 + v519[32]);
  v113 = *(v112 + 16);
  v114 = "podcast-episodes";
  if (v113)
  {
    v559 = v59;
    v570[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D8E71C(v113);
    v115 = (v112 + 32);
    do
    {
      v117 = *v115++;
      v116 = v117;
      v118 = v117 == 5;
      v119 = 0x6970652D7478656ELL;
      if (v117 == 5)
      {
        v119 = 0x69726F6765746163;
      }

      v120 = 0xED00007365646F73;
      if (v118)
      {
        v120 = 0xEA00000000007365;
      }

      v121 = 0x697263736E617274;
      if (v116 == 3)
      {
        v121 = 0xD000000000000010;
      }

      v122 = 0xEB00000000737470;
      if (v116 == 3)
      {
        v122 = 0x80000001D91C7F60;
      }

      if (v116 <= 4)
      {
        v119 = v121;
        v120 = v122;
      }

      v123 = 0x7374736163646F70;
      if (v116 != 1)
      {
        v123 = 0xD000000000000010;
      }

      v124 = 0xE800000000000000;
      if (v116 != 1)
      {
        v124 = 0x80000001D91C7F40;
      }

      if (!v116)
      {
        v123 = 0xD000000000000010;
        v124 = 0x80000001D91C7F20;
      }

      if (v116 <= 2)
      {
        v125 = v123;
      }

      else
      {
        v125 = v119;
      }

      if (v116 <= 2)
      {
        v126 = v124;
      }

      else
      {
        v126 = v120;
      }

      v127 = v570[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8D41BE0(0, *(v127 + 16) + 1, 1);
        v127 = v570[0];
      }

      v129 = *(v127 + 16);
      v128 = *(v127 + 24);
      if (v129 >= v128 >> 1)
      {
        sub_1D8D41BE0((v128 > 1), v129 + 1, 1);
        v127 = v570[0];
      }

      *(v127 + 16) = v129 + 1;
      v130 = v127 + 16 * v129;
      *(v130 + 32) = v125;
      *(v130 + 40) = v126;
      --v113;
    }

    while (v113);
    v570[0] = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v131 = v561;
    sub_1D91766BC();

    v132 = sub_1D91766FC();
    v134 = v132;
    if (*v133)
    {
      v135 = v133;
      sub_1D8D8EBA0();
      v136 = *(*v135 + 16);
      sub_1D8D8EE90(v136);
      v137 = *v135;
      *(v137 + 16) = v136 + 1;
      v138 = v560;
      v3 = v563;
      (*(v560 + 16))(v137 + ((*(v560 + 80) + 32) & ~*(v560 + 80)) + *(v560 + 72) * v136, v131, v563);
      v134(v570, 0);
    }

    else
    {
      v132(v570, 0);
      v3 = v563;
      v138 = v560;
    }

    v59 = v559;
    (*(v138 + 8))(v131, v3);
    v102 = v556;
    v114 = "podcast-episodes";
  }

  v139 = v522;
  if ((*(v102 + 200) & 1) == 0)
  {
    v570[0] = *(v102 + 192);
    sub_1D9179A4C();
    sub_1D91766BC();

    v141 = sub_1D91766FC();
    if (*v140)
    {
      v142 = v140;
      sub_1D8D8EBA0();
      v143 = *(*v142 + 16);
      sub_1D8D8EE90(v143);
      v144 = *v142;
      *(v144 + 16) = v143 + 1;
      v145 = v560;
      (*(v560 + 16))(v144 + ((*(v560 + 80) + 32) & ~*(v560 + 80)) + *(v560 + 72) * v143, v59, v3);
      v141(v570, 0);
    }

    else
    {
      v141(v570, 0);
      v145 = v560;
    }

    (*(v145 + 8))(v59, v3);
    v102 = v556;
  }

  v146 = *(v102 + 88);
  if (*(v146 + 16))
  {
    v147 = sub_1D8D94734(0);
    if (v148)
    {
      v536 = *(*(v146 + 56) + 8 * v147);
    }

    else
    {
      v536 = MEMORY[0x1E69E7CC0];
    }

    v102 = v556;
  }

  else
  {
    v536 = MEMORY[0x1E69E7CC0];
  }

  v149 = *(v102 + 41);
  if (v149 != 7 && (sub_1D8D8D46C(v149, 2u) & 1) != 0 || (sub_1D8D8D6CC(v556) & 1) != 0 || (sub_1D8D865D0(v556) & 1) != 0)
  {
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v151 = &v566;
    if (v150)
    {
      v152 = v536;
    }

    else
    {
LABEL_482:
      v152 = sub_1D8ECCFF4(0, *(*(v151 - 256) + 16) + 1, 1, *(v151 - 256));
    }

    v154 = *(v152 + 2);
    v153 = *(v152 + 3);
    if (v154 >= v153 >> 1)
    {
      v152 = sub_1D8ECCFF4((v153 > 1), v154 + 1, 1, v152);
    }

    *(v152 + 2) = v154 + 1;
    v536 = v152;
    v152[v154 + 32] = 9;
  }

  v155 = v556;
  v156 = *(v556 + 8);
  v157 = *(v556 + 16);
  v158 = *(v556 + 24);
  v159 = *(v556 + 32);
  v160 = *(v556 + 40);
  v570[0] = *v556;
  v570[1] = v156;
  v571 = v157;
  v572 = v158;
  v573 = v159;
  v574 = v160;
  v566 = 1;
  v567 = 0u;
  v568 = 0u;
  v569 = 4;
  sub_1D8D8DFD4(v570[0], v156, v157, v158, v159, v160);
  v161 = _s18PodcastsFoundation12MediaRequestC0D4TypeO2eeoiySbAE_AEtFZ_0(v570, &v566);
  sub_1D8D85E5C(v570[0], v570[1], v571, v572, v573, v574);
  v537 = v146;
  if (v161)
  {
    v162 = *(v155 + 41);
    if (v162 == 7 || (sub_1D8D8D46C(v162, 3u) & 1) == 0)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v163 = v536;
      }

      else
      {
        v163 = sub_1D8ECCFF4(0, *(v536 + 2) + 1, 1, v536);
      }

      v165 = *(v163 + 2);
      v164 = *(v163 + 3);
      if (v165 >= v164 >> 1)
      {
        v163 = sub_1D8ECCFF4((v164 > 1), v165 + 1, 1, v163);
      }

      *(v163 + 2) = v165 + 1;
      v536 = v163;
      v163[v165 + 32] = 7;
    }
  }

  v166 = *(v556 + 48);
  v167 = v166 + 64;
  v168 = 1 << *(v166 + 32);
  v169 = -1;
  if (v168 < 64)
  {
    v169 = ~(-1 << v168);
  }

  v170 = v169 & *(v166 + 64);
  v146 = (v168 + 63) >> 6;
  v557 = (v114 - 32) | 0x8000000000000000;
  v547 = 0x80000001D91C80F0;
  v546 = 0x80000001D91C80D0;
  v548 = 0x80000001D91C80B0;
  v545 = 0x80000001D91C8080;
  v544 = 0x80000001D91C8050;
  v543 = 0x80000001D91C8030;
  v542 = 0x80000001D91C8010;
  v541 = 0x80000001D91C7FF0;
  v540 = 0x80000001D91C7FD0;
  v559 = (v560 + 16);
  v558 = v560 + 32;
  v561 = (v560 + 8);

  v114 = 0;
  v525 = v166 + 64;
  v524 = v146;
  v518 = v166;
  while (v170)
  {
LABEL_101:
    v552 = (v170 - 1) & v170;
    v171 = __clz(__rbit64(v170)) | (v114 << 6);
    v172 = *(*(v166 + 48) + v171);
    v173 = *(*(v166 + 56) + 8 * v171);
    strcpy(v570, "include[");
    BYTE1(v570[1]) = 0;
    WORD1(v570[1]) = 0;
    HIDWORD(v570[1]) = -402653184;
    v174 = 0x697263736E617274;
    if (v172 != 3)
    {
      v174 = 0x7372657470616863;
    }

    v175 = 0xEB00000000737470;
    if (v172 != 3)
    {
      v175 = 0xE800000000000000;
    }

    if (v172 == 2)
    {
      v174 = 0x2D74736163646F70;
      v175 = 0xEF736E6F73616573;
    }

    v176 = 0xD000000000000010;
    if (!v172)
    {
      v176 = 0x7365646F73697065;
    }

    v177 = v557;
    if (!v172)
    {
      v177 = 0xE800000000000000;
    }

    if (v172 <= 1)
    {
      v178 = v176;
    }

    else
    {
      v178 = v174;
    }

    if (v172 <= 1)
    {
      v179 = v177;
    }

    else
    {
      v179 = v175;
    }

    MEMORY[0x1DA7298F0](v178, v179);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v180 = v570[1];
    v551 = v570[0];
    v570[0] = 0;
    v570[1] = 0xE000000000000000;
    v181 = *(v173 + 16);
    if (v181)
    {
      v526 = v180;
      v566 = MEMORY[0x1E69E7CC0];
      sub_1D8D8E71C(v181);
      v182 = 32;
      do
      {
        v183 = 0xE800000000000000;
        v184 = 0x7365646F73697065;
        switch(*(v173 + v182))
        {
          case 1:
            v184 = 0x7263736275537369;
            v183 = 0xEC00000064656269;
            break;
          case 2:
            v184 = 0x72617262694C6E69;
            v183 = 0xE900000000000079;
            break;
          case 3:
            v184 = 0xD00000000000001ELL;
            v183 = v540;
            break;
          case 4:
            v184 = 0xD000000000000012;
            v183 = v541;
            break;
          case 5:
            v184 = 0xD000000000000010;
            v183 = v542;
            break;
          case 6:
            v184 = 0xD000000000000012;
            v183 = v543;
            break;
          case 7:
            v184 = 0xD000000000000011;
            v183 = v544;
            break;
          case 8:
            break;
          case 9:
            v183 = 0xE700000000000000;
            v184 = 0x74736163646F70;
            break;
          case 0xA:
            v184 = 0x7374736163646F70;
            break;
          case 0xB:
            v184 = 0x637365446C6C7566;
            v183 = 0xEF6E6F6974706972;
            break;
          case 0xC:
            v184 = 0xD000000000000017;
            v183 = v545;
            break;
          case 0xD:
            v183 = 0xE700000000000000;
            v184 = 0x6C725564656566;
            break;
          case 0xE:
            v183 = 0xE700000000000000;
            v184 = 0x6C656E6E616863;
            break;
          case 0xF:
            v183 = 0xE600000000000000;
            v184 = 0x6C6C65737075;
            break;
          case 0x10:
            v184 = 0xD000000000000013;
            v183 = v548;
            break;
          case 0x11:
            v184 = 0xD000000000000010;
            v183 = v546;
            break;
          case 0x12:
            v184 = 0xD000000000000010;
            v183 = v547;
            break;
          case 0x13:
            v184 = 0x697263736E617274;
            v183 = 0xEB00000000737470;
            break;
          case 0x14:
            v183 = 0xE700000000000000;
            v184 = 0x74657070696E73;
            break;
          case 0x15:
            v184 = 0x69726F6765746163;
            goto LABEL_137;
          case 0x16:
            v183 = 0xE600000000000000;
            v184 = 0x746E65726170;
            break;
          case 0x17:
            v184 = 0x6E6572646C696863;
            break;
          case 0x18:
            v184 = 0x7372657470616863;
            break;
          case 0x19:
            v184 = 0x6D617266656D6974;
LABEL_137:
            v183 = 0xEA00000000007365;
            break;
          default:
            v183 = 0xE700000000000000;
            v184 = 0x6B726F77747261;
            break;
        }

        v185 = v566;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8D41BE0(0, *(v185 + 16) + 1, 1);
          v185 = v566;
        }

        v187 = *(v185 + 16);
        v186 = *(v185 + 24);
        if (v187 >= v186 >> 1)
        {
          sub_1D8D41BE0((v186 > 1), v187 + 1, 1);
          v185 = v566;
        }

        *(v185 + 16) = v187 + 1;
        v188 = v185 + 16 * v187;
        *(v188 + 32) = v184;
        *(v188 + 40) = v183;
        ++v182;
        --v181;
      }

      while (v181);

      v139 = v522;
      v166 = v518;
    }

    else
    {

      v185 = MEMORY[0x1E69E7CC0];
    }

    v566 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v189 = sub_1D917817C();
    v191 = v190;

    MEMORY[0x1DA7298F0](v189, v191);

    sub_1D91766BC();

    v193 = sub_1D91766FC();
    if (*v192)
    {
      v194 = v192;
      v3 = v563;
      (*v559)(v535, v139, v563);
      v195 = *v194;
      v196 = swift_isUniquelyReferenced_nonNull_native();
      *v194 = v195;
      if ((v196 & 1) == 0)
      {
        v195 = sub_1D8D8EDF4(0, v195[2] + 1, 1, v195);
        *v194 = v195;
      }

      v198 = v195[2];
      v197 = v195[3];
      v199 = v560;
      if (v198 >= v197 >> 1)
      {
        v200 = sub_1D8D8EDF4((v197 > 1), v198 + 1, 1, v195);
        v199 = v560;
        v195 = v200;
        *v194 = v200;
      }

      v195[2] = v198 + 1;
      (*(v199 + 32))(v195 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v198, v535, v3);
      v193(v570, 0);
    }

    else
    {
      v193(v570, 0);
      v3 = v563;
    }

    (*v561)(v139, v3);
    v167 = v525;
    v146 = v524;
    v170 = v552;
  }

  while (1)
  {
    v151 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      __break(1u);
LABEL_473:
      __break(1u);
LABEL_474:
      __break(1u);
LABEL_475:
      __break(1u);
LABEL_476:
      __break(1u);
LABEL_477:
      __break(1u);
LABEL_478:
      __break(1u);
LABEL_479:
      __break(1u);
LABEL_480:
      __break(1u);
LABEL_481:
      __break(1u);
      goto LABEL_482;
    }

    if (v151 >= v146)
    {
      break;
    }

    v170 = *(v167 + 8 * v151);
    ++v114;
    if (v170)
    {
      v114 = v151;
      goto LABEL_101;
    }
  }

  v201 = *(v556 + 56);
  v204 = *(v201 + 64);
  v203 = v201 + 64;
  v202 = v204;
  v205 = 1 << *(*(v556 + 56) + 32);
  v206 = -1;
  if (v205 < 64)
  {
    v206 = ~(-1 << v205);
  }

  v207 = v206 & v202;
  v146 = (v205 + 63) >> 6;
  v551 = *(v556 + 56);

  v208 = 0;
  v525 = v203;
  v524 = v146;
  while (v207)
  {
LABEL_169:
    v552 = (v207 - 1) & v207;
    v209 = __clz(__rbit64(v207)) | (v208 << 6);
    v210 = *(*(v551 + 48) + v209);
    v211 = *(*(v551 + 56) + 8 * v209);
    strcpy(v570, "relate[");
    v570[1] = 0xE700000000000000;
    v212 = 0x697263736E617274;
    if (v210 != 3)
    {
      v212 = 0x7372657470616863;
    }

    v213 = 0xEB00000000737470;
    if (v210 != 3)
    {
      v213 = 0xE800000000000000;
    }

    if (v210 == 2)
    {
      v212 = 0x2D74736163646F70;
      v213 = 0xEF736E6F73616573;
    }

    v214 = 0xD000000000000010;
    if (!v210)
    {
      v214 = 0x7365646F73697065;
    }

    v215 = v557;
    if (!v210)
    {
      v215 = 0xE800000000000000;
    }

    if (v210 <= 1)
    {
      v216 = v214;
    }

    else
    {
      v216 = v212;
    }

    if (v210 <= 1)
    {
      v217 = v215;
    }

    else
    {
      v217 = v213;
    }

    MEMORY[0x1DA7298F0](v216, v217);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v139 = v570[0];
    v218 = v570[1];
    v570[0] = 0;
    v570[1] = 0xE000000000000000;
    v219 = *(v211 + 16);
    if (v219)
    {
      v526 = v139;
      v535 = v218;
      v566 = MEMORY[0x1E69E7CC0];
      sub_1D8D8E71C(v219);
      v220 = 32;
      do
      {
        v221 = 0xE700000000000000;
        v222 = 0x6B726F77747261;
        switch(*(v211 + v220))
        {
          case 1:
            v222 = 0x7263736275537369;
            v221 = 0xEC00000064656269;
            break;
          case 2:
            v222 = 0x72617262694C6E69;
            v221 = 0xE900000000000079;
            break;
          case 3:
            v222 = 0xD00000000000001ELL;
            v221 = v540;
            break;
          case 4:
            v222 = 0xD000000000000012;
            v221 = v541;
            break;
          case 5:
            v222 = 0xD000000000000010;
            v221 = v542;
            break;
          case 6:
            v222 = 0xD000000000000012;
            v221 = v543;
            break;
          case 7:
            v222 = 0xD000000000000011;
            v221 = v544;
            break;
          case 8:
            v221 = 0xE800000000000000;
            v222 = 0x7365646F73697065;
            break;
          case 9:
            v222 = 0x74736163646F70;
            break;
          case 0xA:
            v221 = 0xE800000000000000;
            v222 = 0x7374736163646F70;
            break;
          case 0xB:
            v222 = 0x637365446C6C7566;
            v221 = 0xEF6E6F6974706972;
            break;
          case 0xC:
            v222 = 0xD000000000000017;
            v221 = v545;
            break;
          case 0xD:
            v222 = 0x6C725564656566;
            break;
          case 0xE:
            v222 = 0x6C656E6E616863;
            break;
          case 0xF:
            v221 = 0xE600000000000000;
            v222 = 0x6C6C65737075;
            break;
          case 0x10:
            v222 = 0xD000000000000013;
            v221 = v548;
            break;
          case 0x11:
            v222 = 0xD000000000000010;
            v221 = v546;
            break;
          case 0x12:
            v222 = 0xD000000000000010;
            v221 = v547;
            break;
          case 0x13:
            v222 = 0x697263736E617274;
            v221 = 0xEB00000000737470;
            break;
          case 0x14:
            v222 = 0x74657070696E73;
            break;
          case 0x15:
            v222 = 0x69726F6765746163;
            goto LABEL_205;
          case 0x16:
            v221 = 0xE600000000000000;
            v222 = 0x746E65726170;
            break;
          case 0x17:
            v221 = 0xE800000000000000;
            v222 = 0x6E6572646C696863;
            break;
          case 0x18:
            v221 = 0xE800000000000000;
            v222 = 0x7372657470616863;
            break;
          case 0x19:
            v222 = 0x6D617266656D6974;
LABEL_205:
            v221 = 0xEA00000000007365;
            break;
          default:
            break;
        }

        v223 = v566;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8D41BE0(0, *(v223 + 16) + 1, 1);
          v223 = v566;
        }

        v225 = *(v223 + 16);
        v224 = *(v223 + 24);
        if (v225 >= v224 >> 1)
        {
          sub_1D8D41BE0((v224 > 1), v225 + 1, 1);
          v223 = v566;
        }

        *(v223 + 16) = v225 + 1;
        v226 = v223 + 16 * v225;
        *(v226 + 32) = v222;
        *(v226 + 40) = v221;
        ++v220;
        --v219;
      }

      while (v219);

      v3 = v563;
      v139 = v526;
    }

    else
    {

      v223 = MEMORY[0x1E69E7CC0];
    }

    v566 = v223;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v227 = sub_1D917817C();
    v229 = v228;

    MEMORY[0x1DA7298F0](v227, v229);

    v114 = v523;
    sub_1D91766BC();

    v231 = sub_1D91766FC();
    if (*v230)
    {
      v232 = v230;
      (*v559)(v534, v114, v3);
      v233 = *v232;
      v234 = swift_isUniquelyReferenced_nonNull_native();
      *v232 = v233;
      if ((v234 & 1) == 0)
      {
        v233 = sub_1D8D8EDF4(0, v233[2] + 1, 1, v233);
        *v232 = v233;
      }

      v139 = v233[2];
      v235 = v233[3];
      v236 = v560;
      if (v139 >= v235 >> 1)
      {
        v237 = sub_1D8D8EDF4((v235 > 1), v139 + 1, 1, v233);
        v236 = v560;
        v233 = v237;
        *v232 = v237;
      }

      v146 = v524;
      v233[2] = v139 + 1;
      (*(v236 + 32))(v233 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v139, v534, v3);
      v231(v570, 0);
    }

    else
    {
      v231(v570, 0);
      v146 = v524;
    }

    (*v561)(v114, v3);
    v203 = v525;
    v207 = v552;
  }

  while (1)
  {
    v151 = v208 + 1;
    if (__OFADD__(v208, 1))
    {
      goto LABEL_473;
    }

    if (v151 >= v146)
    {
      break;
    }

    v207 = *(v203 + 8 * v151);
    ++v208;
    if (v207)
    {
      v208 = v151;
      goto LABEL_169;
    }
  }

  v238 = *(v556 + 64);
  v139 = v238 + 64;
  v239 = 1 << *(v238 + 32);
  v240 = -1;
  if (v239 < 64)
  {
    v240 = ~(-1 << v239);
  }

  v241 = v240 & *(v238 + 64);
  v3 = (v239 + 63) >> 6;

  v242 = 0;
  while (v241)
  {
LABEL_237:
    v243 = __clz(__rbit64(v241)) | (v242 << 6);
    v244 = *(*(v238 + 48) + v243);
    v245 = *(*(v238 + 56) + 8 * v243);
    v570[0] = 0x5B74696D696CLL;
    v570[1] = 0xE600000000000000;
    if (v244 <= 1)
    {
      if (v244)
      {
        v246 = 0xD000000000000010;
        v247 = v557;
      }

      else
      {
        v247 = 0xE800000000000000;
        v246 = 0x7365646F73697065;
      }
    }

    else if (v244 == 2)
    {
      v246 = 0x2D74736163646F70;
      v247 = 0xEF736E6F73616573;
    }

    else if (v244 == 3)
    {
      v246 = 0x697263736E617274;
      v247 = 0xEB00000000737470;
    }

    else
    {
      v247 = 0xE800000000000000;
      v246 = 0x7372657470616863;
    }

    MEMORY[0x1DA7298F0](v246, v247);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v570[0] = v245;
    sub_1D9179A4C();
    v114 = v549;
    sub_1D91766BC();

    v249 = sub_1D91766FC();
    if (*v248)
    {
      v250 = v248;
      (*v559)(v533, v114, v563);
      v251 = *v250;
      v252 = swift_isUniquelyReferenced_nonNull_native();
      *v250 = v251;
      if ((v252 & 1) == 0)
      {
        v251 = sub_1D8D8EDF4(0, v251[2] + 1, 1, v251);
        *v250 = v251;
      }

      v254 = v251[2];
      v253 = v251[3];
      v255 = v560;
      if (v254 >= v253 >> 1)
      {
        v256 = sub_1D8D8EDF4((v253 > 1), v254 + 1, 1, v251);
        v255 = v560;
        v251 = v256;
        *v250 = v256;
      }

      v251[2] = v254 + 1;
      v146 = v563;
      (*(v255 + 32))(v251 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v254, v533, v563);
      v249(v570, 0);
      v114 = v549;
    }

    else
    {
      v249(v570, 0);
      v146 = v563;
    }

    v241 &= v241 - 1;
    (*v561)(v114, v146);
  }

  while (1)
  {
    v151 = v242 + 1;
    if (__OFADD__(v242, 1))
    {
      goto LABEL_474;
    }

    if (v151 >= v3)
    {
      break;
    }

    v241 = *(v139 + 8 * v151);
    ++v242;
    if (v241)
    {
      v242 = v151;
      goto LABEL_237;
    }
  }

  v257 = v556;
  v258 = *(v556 + 72);
  v259 = *(v258 + 16);
  v3 = v563;
  if (v259)
  {
    v570[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D8E71C(v259);
    v260 = (v258 + 32);
    v261 = v570[0];
    do
    {
      v262 = *v260++;
      LOBYTE(v566) = v262;
      v263 = MediaRequest.IncludeExtendTypes.rawValue.getter();
      v265 = v264;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8D41BE0(0, *(v261 + 16) + 1, 1);
        v261 = v570[0];
      }

      v267 = *(v261 + 16);
      v266 = *(v261 + 24);
      if (v267 >= v266 >> 1)
      {
        sub_1D8D41BE0((v266 > 1), v267 + 1, 1);
        v261 = v570[0];
      }

      *(v261 + 16) = v267 + 1;
      v268 = v261 + 16 * v267;
      *(v268 + 32) = v263;
      *(v268 + 40) = v265;
      --v259;
    }

    while (v259);
    v570[0] = v261;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v269 = v513;
    sub_1D91766BC();

    v146 = v562;
    v271 = sub_1D91766FC();
    if (*v270)
    {
      v146 = v270;
      v272 = v520;
      (*v559)(v520, v269, v3);
      sub_1D8D8EBA0();
      v273 = *(*v146 + 16);
      sub_1D8D8EE90(v273);
      sub_1D8D8F684(v273, v272);
    }

    v271(v570, 0);
    (*v561)(v269, v3);
    v257 = v556;
  }

  v274 = *(v257 + 80);
  v139 = v274 + 64;
  v275 = 1 << *(v274 + 32);
  v276 = -1;
  if (v275 < 64)
  {
    v276 = ~(-1 << v275);
  }

  v114 = v276 & *(v274 + 64);
  v277 = (v275 + 63) >> 6;
  v552 = v274;

  v278 = 0;
  while (v114)
  {
LABEL_272:
    v279 = __clz(__rbit64(v114)) | (v278 << 6);
    v280 = (*(v552 + 48) + 16 * v279);
    v281 = *v280;
    v282 = v280[1];
    v283 = *(*(v552 + 56) + 8 * v279);
    v570[0] = 0x5B74696D6FLL;
    v570[1] = 0xE500000000000000;

    MEMORY[0x1DA7298F0](v281, v282);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v570[0] = v283;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v284 = v555;
    sub_1D91766BC();

    v146 = v562;
    v286 = sub_1D91766FC();
    if (*v285)
    {
      v146 = v285;
      (*v559)(v532, v284, v563);
      v287 = *v146;
      v288 = swift_isUniquelyReferenced_nonNull_native();
      *v146 = v287;
      if ((v288 & 1) == 0)
      {
        v287 = sub_1D8D8EDF4(0, v287[2] + 1, 1, v287);
        *v146 = v287;
      }

      v290 = v287[2];
      v289 = v287[3];
      v291 = v560;
      if (v290 >= v289 >> 1)
      {
        v292 = sub_1D8D8EDF4((v289 > 1), v290 + 1, 1, v287);
        v291 = v560;
        v287 = v292;
        *v146 = v292;
      }

      v287[2] = v290 + 1;
      v3 = v563;
      (*(v291 + 32))(v287 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v290, v532, v563);
      v286(v570, 0);
    }

    else
    {
      v286(v570, 0);
      v3 = v563;
    }

    v114 &= v114 - 1;
    (*v561)(v555, v3);
  }

  while (1)
  {
    v151 = v278 + 1;
    if (__OFADD__(v278, 1))
    {
      goto LABEL_475;
    }

    if (v151 >= v277)
    {
      break;
    }

    v114 = *(v139 + 8 * v151);
    ++v278;
    if (v114)
    {
      v278 = v151;
      goto LABEL_272;
    }
  }

  v564[0] = v537;
  if (*(v536 + 2))
  {

    sub_1D8F7D618(v293, 0);
    v294 = v564[0];
  }

  else
  {
  }

  v139 = 0;
  v295 = (v294 + 64);
  v296 = 1 << *(v294 + 32);
  v297 = -1;
  if (v296 < 64)
  {
    v297 = ~(-1 << v296);
  }

  v298 = v297 & *(v294 + 64);
  v146 = (v296 + 63) >> 6;
  v547 = 0x80000001D91C7F60;
  v546 = 0x80000001D91C7F40;
  v549 = (v294 + 64);
  v548 = v146;
  v537 = v294;
  while (v298)
  {
LABEL_291:
    v555 = ((v298 - 1) & v298);
    v299 = __clz(__rbit64(v298)) | (v139 << 6);
    v300 = *(*(v294 + 48) + v299);
    v301 = *(*(v294 + 56) + 8 * v299);
    strcpy(v570, "include[");
    BYTE1(v570[1]) = 0;
    WORD1(v570[1]) = 0;
    HIDWORD(v570[1]) = -402653184;
    v302 = 0x6970652D7478656ELL;
    if (v300 == 5)
    {
      v302 = 0x69726F6765746163;
    }

    v303 = 0xED00007365646F73;
    if (v300 == 5)
    {
      v303 = 0xEA00000000007365;
    }

    v304 = 0x697263736E617274;
    if (v300 == 3)
    {
      v304 = 0xD000000000000010;
    }

    v305 = 0xEB00000000737470;
    if (v300 == 3)
    {
      v305 = v547;
    }

    if (v300 <= 4)
    {
      v302 = v304;
      v303 = v305;
    }

    v306 = 0x7374736163646F70;
    if (v300 != 1)
    {
      v306 = 0xD000000000000010;
    }

    v307 = v546;
    if (v300 == 1)
    {
      v307 = 0xE800000000000000;
    }

    if (!v300)
    {
      v306 = 0xD000000000000010;
      v307 = v557;
    }

    if (v300 <= 2)
    {
      v308 = v306;
    }

    else
    {
      v308 = v302;
    }

    if (v300 <= 2)
    {
      v309 = v307;
    }

    else
    {
      v309 = v303;
    }

    MEMORY[0x1DA7298F0](v308, v309);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v114 = v570[1];
    v310 = *(v301 + 16);
    if (v310)
    {
      v551 = v570[0];
      v552 = v570[1];
      v570[0] = MEMORY[0x1E69E7CC0];
      sub_1D8D8E71C(v310);
      v311 = v570[0];
      v312 = 32;
      do
      {
        LOBYTE(v566) = *(v301 + v312);
        v313 = MediaRequest.IncludeExtendTypes.rawValue.getter();
        v315 = v314;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8D41BE0(0, *(v311 + 16) + 1, 1);
          v311 = v570[0];
        }

        v317 = *(v311 + 16);
        v316 = *(v311 + 24);
        if (v317 >= v316 >> 1)
        {
          sub_1D8D41BE0((v316 > 1), v317 + 1, 1);
          v311 = v570[0];
        }

        *(v311 + 16) = v317 + 1;
        v318 = v311 + 16 * v317;
        *(v318 + 32) = v313;
        *(v318 + 40) = v315;
        ++v312;
        --v310;
      }

      while (v310);

      v114 = v552;
    }

    else
    {

      v311 = MEMORY[0x1E69E7CC0];
    }

    v570[0] = v311;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v319 = v539;
    sub_1D91766BC();

    v321 = sub_1D91766FC();
    if (*v320)
    {
      v322 = v320;
      v3 = v563;
      (*v559)(v531, v319, v563);
      v114 = *v322;
      v323 = swift_isUniquelyReferenced_nonNull_native();
      *v322 = v114;
      if ((v323 & 1) == 0)
      {
        v114 = sub_1D8D8EDF4(0, *(v114 + 16) + 1, 1, v114);
        *v322 = v114;
      }

      v325 = *(v114 + 16);
      v324 = *(v114 + 24);
      v326 = v560;
      if (v325 >= v324 >> 1)
      {
        v327 = sub_1D8D8EDF4((v324 > 1), v325 + 1, 1, v114);
        v326 = v560;
        v114 = v327;
        *v322 = v327;
      }

      *(v114 + 16) = v325 + 1;
      (*(v326 + 32))(v114 + ((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v325, v531, v3);
      v321(v570, 0);
      v319 = v539;
    }

    else
    {
      v321(v570, 0);
      v3 = v563;
    }

    v295 = v549;
    v146 = v548;
    v298 = v555;
    (*v561)(v319, v3);
    v294 = v537;
  }

  while (1)
  {
    v151 = v139 + 1;
    if (__OFADD__(v139, 1))
    {
      goto LABEL_476;
    }

    if (v151 >= v146)
    {
      break;
    }

    v298 = *&v295[8 * v151];
    ++v139;
    if (v298)
    {
      v139 = v151;
      goto LABEL_291;
    }
  }

  v328 = *(v556 + 96);
  v330 = *(v328 + 64);
  v139 = v328 + 64;
  v329 = v330;
  v331 = 1 << *(*(v556 + 96) + 32);
  v332 = -1;
  if (v331 < 64)
  {
    v332 = ~(-1 << v331);
  }

  v333 = v332 & v329;
  v114 = (v331 + 63) >> 6;
  v555 = *(v556 + 96);

  v334 = 0;
  v557 = 0;
  while (v333)
  {
LABEL_338:
    v335 = __clz(__rbit64(v333)) | (v334 << 6);
    v336 = *(*(v555 + 6) + v335);
    v337 = *(*(v555 + 7) + 8 * v335);
    strcpy(v570, "extend[");
    v570[1] = 0xE700000000000000;
    LOBYTE(v566) = v336;
    v338 = MediaRequest.ContentType.rawValue.getter();
    v340 = v339;

    MEMORY[0x1DA7298F0](v338, v340);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v341 = v557;
    v342 = sub_1D9171AC0(v337);
    v557 = v341;

    v570[0] = v342;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v343 = v538;
    sub_1D91766BC();

    v345 = sub_1D91766FC();
    if (*v344)
    {
      v346 = v344;
      (*v559)(v530, v343, v563);
      v347 = *v346;
      v348 = swift_isUniquelyReferenced_nonNull_native();
      *v346 = v347;
      if ((v348 & 1) == 0)
      {
        v347 = sub_1D8D8EDF4(0, v347[2] + 1, 1, v347);
        *v346 = v347;
      }

      v350 = v347[2];
      v349 = v347[3];
      v351 = v560;
      if (v350 >= v349 >> 1)
      {
        v353 = sub_1D8D8EDF4((v349 > 1), v350 + 1, 1, v347);
        v351 = v560;
        v347 = v353;
        *v346 = v353;
      }

      v146 = v538;
      v347[2] = v350 + 1;
      v352 = v347 + ((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v350;
      v3 = v563;
      (*(v351 + 32))(v352, v530, v563);
      v345(v570, 0);
    }

    else
    {
      v345(v570, 0);
      v3 = v563;
      v146 = v343;
    }

    v333 &= v333 - 1;
    (*v561)(v146, v3);
  }

  while (1)
  {
    v151 = v334 + 1;
    if (__OFADD__(v334, 1))
    {
      goto LABEL_477;
    }

    if (v151 >= v114)
    {
      break;
    }

    v333 = *(v139 + 8 * v151);
    ++v334;
    if (v333)
    {
      v334 = v151;
      goto LABEL_338;
    }
  }

  v354 = *(v556 + 104);
  v356 = *(v354 + 64);
  v139 = v354 + 64;
  v355 = v356;
  v357 = 1 << *(*(v556 + 104) + 32);
  v358 = -1;
  if (v357 < 64)
  {
    v358 = ~(-1 << v357);
  }

  v114 = v358 & v355;
  v359 = (v357 + 63) >> 6;
  v555 = *(v556 + 104);

  v360 = 0;
  while (v114)
  {
LABEL_354:
    v361 = __clz(__rbit64(v114)) | (v360 << 6);
    v362 = (*(v555 + 6) + 2 * v361);
    v363 = v362[1];
    v364 = *(*(v555 + 7) + 8 * v361);
    LOBYTE(v570[0]) = *v362;
    v365 = MediaRequest.ContentType.rawValue.getter();
    v566 = v365;
    *&v567 = v366;
    if (v363 == 26)
    {
      v367 = v365;
      v368 = v366;
    }

    else
    {
      LOBYTE(v570[0]) = v363;
      v369 = MediaRequest.IncludeExtendTypes.rawValue.getter();
      v371 = v370;
      v570[0] = 58;
      v570[1] = 0xE100000000000000;

      MEMORY[0x1DA7298F0](v369, v371);

      MEMORY[0x1DA7298F0](v570[0], v570[1]);

      v367 = v566;
      v368 = v567;
    }

    strcpy(v570, "associate[");
    BYTE3(v570[1]) = 0;
    HIDWORD(v570[1]) = -369098752;
    MEMORY[0x1DA7298F0](v367, v368);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v372 = v557;
    v373 = sub_1D9171AC0(v364);
    v557 = v372;

    v570[0] = v373;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v374 = v554;
    sub_1D91766BC();

    v146 = v562;
    v376 = sub_1D91766FC();
    if (*v375)
    {
      v146 = v375;
      (*v559)(v529, v374, v563);
      v377 = *v146;
      v378 = swift_isUniquelyReferenced_nonNull_native();
      *v146 = v377;
      if ((v378 & 1) == 0)
      {
        v377 = sub_1D8D8EDF4(0, v377[2] + 1, 1, v377);
        *v146 = v377;
      }

      v380 = v377[2];
      v379 = v377[3];
      v381 = v560;
      if (v380 >= v379 >> 1)
      {
        v382 = sub_1D8D8EDF4((v379 > 1), v380 + 1, 1, v377);
        v381 = v560;
        v377 = v382;
        *v146 = v382;
      }

      v377[2] = v380 + 1;
      v3 = v563;
      (*(v381 + 32))(v377 + ((*(v381 + 80) + 32) & ~*(v381 + 80)) + *(v381 + 72) * v380, v529, v563);
      v376(v570, 0);
    }

    else
    {
      v376(v570, 0);
      v3 = v563;
    }

    v114 &= v114 - 1;
    (*v561)(v554, v3);
  }

  while (1)
  {
    v151 = v360 + 1;
    if (__OFADD__(v360, 1))
    {
      goto LABEL_478;
    }

    if (v151 >= v359)
    {
      break;
    }

    v114 = *(v139 + 8 * v151);
    ++v360;
    if (v114)
    {
      v360 = v151;
      goto LABEL_354;
    }
  }

  v383 = v556;
  v384 = *(v556 + 112);
  if (*(v384 + 16))
  {
    v385 = v557;
    v386 = sub_1D9171BAC(v384);
    v557 = v385;
    v570[0] = v386;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    sub_1D917817C();

    v388 = sub_1D91766FC();
    if (*v387)
    {
      v389 = v387;
      v390 = v520;
      sub_1D91766BC();

      sub_1D8D8EBA0();
      v391 = *(*v389 + 16);
      sub_1D8D8EE90(v391);
      sub_1D8D8F684(v391, v390);
    }

    else
    {
    }

    v388(v570, 0);
    v383 = v556;
  }

  v146 = *(v383 + 120);
  if (*(v146 + 16))
  {
    v139 = v146 + 64;
    v392 = 1 << *(v146 + 32);
    v393 = -1;
    if (v392 < 64)
    {
      v393 = ~(-1 << v392);
    }

    v394 = v393 & *(v146 + 64);
    v395 = (v392 + 63) >> 6;

    v114 = 0;
    v555 = v146;
    while (v394)
    {
LABEL_379:
      v396 = *(*(v146 + 48) + (__clz(__rbit64(v394)) | (v114 << 6)));
      if (*(v146 + 16) && (v397 = sub_1D8D94734(v396), (v398 & 1) != 0))
      {
        v399 = *(*(v146 + 56) + 8 * v397);
      }

      else
      {
        v399 = MEMORY[0x1E69E7CC0];
      }

      v394 &= v394 - 1;
      v400 = v557;
      v401 = sub_1D9171BAC(v399);
      v557 = v400;

      v570[0] = v401;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
      sub_1D917817C();

      v403 = sub_1D91766FC();
      if (*v402)
      {
        v404 = v402;
        v566 = 0x5B73646C656966;
        *&v567 = 0xE700000000000000;
        v565 = v396;
        v405 = MediaRequest.ContentType.rawValue.getter();
        MEMORY[0x1DA7298F0](v405);

        MEMORY[0x1DA7298F0](93, 0xE100000000000000);
        sub_1D91766BC();

        v406 = *v404;
        v407 = swift_isUniquelyReferenced_nonNull_native();
        *v404 = v406;
        if ((v407 & 1) == 0)
        {
          v406 = sub_1D8D8EDF4(0, v406[2] + 1, 1, v406);
          *v404 = v406;
        }

        v409 = v406[2];
        v408 = v406[3];
        v410 = v560;
        if (v409 >= v408 >> 1)
        {
          v411 = sub_1D8D8EDF4((v408 > 1), v409 + 1, 1, v406);
          v410 = v560;
          v406 = v411;
          *v404 = v411;
        }

        v406[2] = v409 + 1;
        v3 = v563;
        (*(v410 + 32))(v406 + ((*(v410 + 80) + 32) & ~*(v410 + 80)) + *(v410 + 72) * v409, v521, v563);
        v403(v570, 0);
      }

      else
      {

        v403(v570, 0);
        v3 = v563;
      }

      v146 = v555;
    }

    while (1)
    {
      v151 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_481;
      }

      if (v151 >= v395)
      {

        v383 = v556;
        break;
      }

      v394 = *(v139 + 8 * v151);
      ++v114;
      if (v394)
      {
        v114 = v151;
        goto LABEL_379;
      }
    }
  }

  v570[0] = sub_1D8D8F968(*(v383 + 128));
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  v413 = sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
  v557 = v412;
  v555 = v413;
  sub_1D917817C();

  if (sub_1D91782EC() < 1)
  {
  }

  else
  {
    v414 = v511;
    sub_1D91766BC();

    v416 = sub_1D91766FC();
    if (*v415)
    {
      v417 = v415;
      v418 = v520;
      (*v559)(v520, v414, v3);
      sub_1D8D8EBA0();
      v419 = *(*v417 + 16);
      sub_1D8D8EE90(v419);
      sub_1D8D8F684(v419, v418);
    }

    v416(v570, 0);
    (*v561)(v414, v3);
  }

  v420 = sub_1D8D8FBAC(*(v556 + 136));

  v570[0] = v420;
  v146 = sub_1D917817C();

  if (sub_1D91782EC() < 1)
  {
  }

  else
  {
    v421 = v512;
    sub_1D91766BC();

    v146 = v562;
    v423 = sub_1D91766FC();
    if (*v422)
    {
      v146 = v422;
      v424 = v520;
      (*v559)(v520, v421, v3);
      sub_1D8D8EBA0();
      v425 = *(*v146 + 16);
      sub_1D8D8EE90(v425);
      sub_1D8D8F684(v425, v424);
    }

    v423(v570, 0);
    (*v561)(v421, v3);
  }

  v426 = v556;
  v427 = v516;
  if (*(v556 + v519[30]) == 1)
  {
    sub_1D91766BC();
    v146 = v562;
    v429 = sub_1D91766FC();
    if (*v428)
    {
      v146 = v428;
      v430 = v520;
      (*v559)(v520, v427, v3);
      sub_1D8D8EBA0();
      v431 = *(*v146 + 16);
      sub_1D8D8EE90(v431);
      v432 = v431;
      v427 = v516;
      sub_1D8D8F684(v432, v430);
    }

    v429(v570, 0);
    (*v561)(v427, v3);
    v426 = v556;
  }

  v433 = *(v426 + 176);
  v139 = (v433 + 64);
  v434 = 1 << v433[32];
  v435 = -1;
  if (v434 < 64)
  {
    v435 = ~(-1 << v434);
  }

  v436 = v435 & *(v433 + 8);
  v3 = (v434 + 63) >> 6;
  v552 = 0x80000001D91C81C0;
  v554 = v433;

  v114 = 0;
  while (v436)
  {
LABEL_414:
    v437 = __clz(__rbit64(v436)) | (v114 << 6);
    v438 = *(*(v554 + 6) + v437);
    v436 &= v436 - 1;
    v439 = *(*(v554 + 7) + 8 * v437);
    strcpy(v570, "filter[");
    v570[1] = 0xE700000000000000;
    v440 = 0x6449636E7973;
    if (v438 == 3)
    {
      v441 = 0xE600000000000000;
    }

    else
    {
      v440 = 0x4B79616C70736964;
      v441 = 0xEC00000073646E69;
    }

    if (v438 == 2)
    {
      v440 = 0x6C725564656566;
      v441 = 0xE700000000000000;
    }

    v442 = 0xD000000000000016;
    if (!v438)
    {
      v442 = 0x656C75646F6DLL;
    }

    v443 = v552;
    if (!v438)
    {
      v443 = 0xE600000000000000;
    }

    if (v438 <= 1)
    {
      v444 = v442;
    }

    else
    {
      v444 = v440;
    }

    if (v438 <= 1)
    {
      v445 = v443;
    }

    else
    {
      v445 = v441;
    }

    MEMORY[0x1DA7298F0](v444, v445);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v570[0] = v439;
    sub_1D917817C();

    v446 = v553;
    sub_1D91766BC();

    v448 = sub_1D91766FC();
    if (*v447)
    {
      v449 = v447;
      (*v559)(v528, v446, v563);
      v450 = *v449;
      v451 = swift_isUniquelyReferenced_nonNull_native();
      *v449 = v450;
      if ((v451 & 1) == 0)
      {
        v450 = sub_1D8D8EDF4(0, v450[2] + 1, 1, v450);
        *v449 = v450;
      }

      v453 = v450[2];
      v452 = v450[3];
      v454 = v560;
      if (v453 >= v452 >> 1)
      {
        v455 = sub_1D8D8EDF4((v452 > 1), v453 + 1, 1, v450);
        v454 = v560;
        v450 = v455;
        *v449 = v455;
      }

      v450[2] = v453 + 1;
      v146 = v563;
      (*(v454 + 32))(v450 + ((*(v454 + 80) + 32) & ~*(v454 + 80)) + *(v454 + 72) * v453, v528, v563);
      v448(v570, 0);
    }

    else
    {
      v448(v570, 0);
      v146 = v563;
    }

    (*v561)(v553, v146);
  }

  while (1)
  {
    v151 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      goto LABEL_479;
    }

    if (v151 >= v3)
    {
      break;
    }

    v436 = *(v139 + 8 * v151);
    ++v114;
    if (v436)
    {
      v114 = v151;
      goto LABEL_414;
    }
  }

  v456 = *(v556 + 184);
  v458 = *(v456 + 64);
  v139 = v456 + 64;
  v457 = v458;
  v459 = 1 << *(*(v556 + 184) + 32);
  v460 = -1;
  if (v459 < 64)
  {
    v460 = ~(-1 << v459);
  }

  v461 = v460 & v457;
  v114 = (v459 + 63) >> 6;
  v554 = *(v556 + 184);

  v462 = 0;
  v463 = v563;
  while (v461)
  {
LABEL_445:
    v464 = __clz(__rbit64(v461)) | (v462 << 6);
    v465 = *(*(v554 + 6) + v464);
    v466 = *(*(v554 + 7) + 8 * v464);
    v570[0] = 0x5B6174656DLL;
    v570[1] = 0xE500000000000000;
    LOBYTE(v566) = v465;
    v467 = MediaRequest.ContentType.rawValue.getter();
    v469 = v468;

    MEMORY[0x1DA7298F0](v467, v469);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v570[0] = v466;
    sub_1D917817C();
    v3 = v470;

    v471 = v550;
    sub_1D91766BC();

    v146 = v562;
    v473 = sub_1D91766FC();
    if (*v472)
    {
      v146 = v472;
      (*v559)(v527, v471, v563);
      v474 = *v146;
      v475 = swift_isUniquelyReferenced_nonNull_native();
      *v146 = v474;
      if ((v475 & 1) == 0)
      {
        v474 = sub_1D8D8EDF4(0, v474[2] + 1, 1, v474);
        *v146 = v474;
      }

      v3 = v474[2];
      v476 = v474[3];
      v477 = v560;
      if (v3 >= v476 >> 1)
      {
        v478 = sub_1D8D8EDF4((v476 > 1), v3 + 1, 1, v474);
        v477 = v560;
        v474 = v478;
        *v146 = v478;
      }

      v474[2] = v3 + 1;
      v463 = v563;
      (*(v477 + 32))(v474 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v3, v527, v563);
      v473(v570, 0);
    }

    else
    {
      v473(v570, 0);
      v463 = v563;
    }

    v461 &= v461 - 1;
    (*v561)(v550, v463);
  }

  while (1)
  {
    v151 = v462 + 1;
    if (__OFADD__(v462, 1))
    {
      goto LABEL_480;
    }

    if (v151 >= v114)
    {
      break;
    }

    v461 = *(v139 + 8 * v151);
    ++v462;
    if (v461)
    {
      v462 = v151;
      goto LABEL_445;
    }
  }

  v480 = v556;
  v481 = v514;
  if (*(v556 + v519[33] + 8))
  {
    sub_1D91766BC();
    v482 = v515;
    sub_1D91766BC();
    v484 = sub_1D91766FC();
    if (*v483)
    {
      v485 = v483;
      v486 = v520;
      (*v559)(v520, v482, v463);
      sub_1D8D8EBA0();
      v487 = *(*v485 + 16);
      sub_1D8D8EE90(v487);
      sub_1D8D8F684(v487, v486);
    }

    v484(v570, 0);
    v489 = sub_1D91766FC();
    v490 = v517;
    if (*v488)
    {
      v491 = v488;
      v492 = v520;
      (*v559)(v520, v517, v463);
      sub_1D8D8EBA0();
      v493 = *(*v491 + 16);
      sub_1D8D8EE90(v493);
      v494 = v493;
      v490 = v517;
      sub_1D8D8F684(v494, v492);
    }

    v489(v570, 0);
    v495 = *v561;
    (*v561)(v515, v463);
    result = (v495)(v490, v463);
    v480 = v556;
  }

  v496 = *(v480 + 40);
  if (v496 == 2)
  {
    sub_1D91766BC();
    v498 = sub_1D91766FC();
    if (*v497)
    {
      v499 = v497;
      v500 = v520;
      (*v559)(v520, v481, v463);
      sub_1D8D8EBA0();
      v501 = *(*v499 + 16);
      sub_1D8D8EE90(v501);
      sub_1D8D8F684(v501, v500);
    }

    v498(v570, 0);
    result = (*v561)(v481, v463);
    v480 = v556;
    v496 = *(v556 + 40);
  }

  if (v496 == 3)
  {
    v502 = *(v480 + 16);

    v480 = v556;
    if (v502)
    {
      v503 = sub_1D91766FC();
      if (*v504)
      {
        sub_1D8E30BE0(v502);
      }

      else
      {
      }

      result = v503(v570, 0);
      v480 = v556;
    }
  }

  if ((*(v480 + 201) & 1) == 0)
  {
    v506 = sub_1D91766FC();
    if (*v505)
    {
      v507 = v505;
      v508 = v520;
      sub_1D91766BC();
      sub_1D8D8EBA0();
      v509 = *(*v507 + 16);
      sub_1D8D8EE90(v509);
      sub_1D8D8F684(v509, v508);
    }

    return v506(v570, 0);
  }

  return result;
}