void *sub_2155C9718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64FA0, &unk_2155DD1F0);
  v2 = *v0;
  v3 = sub_2155DAAAC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_2155C9888(uint64_t a1, uint64_t a2)
{
  v4 = sub_2155DA5FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64FD8, &qword_2155DD208);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v21 - v11;
  sub_2155DA5EC();
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2155B1F44(v12, &qword_27CA64FD8, &qword_2155DD208);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2155DA5DC();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    if (v14)
    {

      goto LABEL_10;
    }
  }

  v15 = sub_2155DA7DC();
  IsEmail = IMStringIsEmail();

  if (!IsEmail)
  {
    v18 = sub_2155DA7DC();
    v19 = MEMORY[0x21606BE10]();

    if (v19)
    {
      v17 = 980182388;
      goto LABEL_9;
    }

LABEL_10:

    return a1;
  }

  v17 = 980445555;
LABEL_9:
  v21[0] = v17;
  v21[1] = 0xE400000000000000;
  MEMORY[0x21606B9D0](a1, a2);
  return v21[0];
}

void sub_2155C9AD0(void *a1, id a2, void *a3)
{
  v3 = a3;
  v5 = 0x2781C1000uLL;
  if (a2)
  {
    v6 = [a2 cacheType];
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v7 = sub_2155DA75C();
    __swift_project_value_buffer(v7, qword_280E1C7F0);
    v8 = a1;
    v9 = sub_2155DA72C();
    v10 = sub_2155DA96C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38[0] = v12;
      *v11 = 136315394;
      v13 = [v8 uri];
      v14 = sub_2155DA80C();
      v16 = v15;

      v17 = sub_2155BC03C(v14, v16, v38);
      v5 = 0x2781C1000;

      *(v11 + 4) = v17;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v6;
      _os_log_impl(&dword_2155AF000, v9, v10, "Successfully fetched Chatbot rendering information from CT for %s with cacheType %ld", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21606C4C0](v12, -1, -1);
      MEMORY[0x21606C4C0](v11, -1, -1);
    }

    v3 = a3;
  }

  else
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v18 = sub_2155DA75C();
    __swift_project_value_buffer(v18, qword_280E1C7F0);
    v19 = a1;
    v20 = sub_2155DA72C();
    v21 = sub_2155DA98C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v22 = 136315138;
      v23 = [v19 uri];
      v24 = sub_2155DA80C();
      v25 = v3;
      v27 = v26;

      v28 = sub_2155BC03C(v24, v27, v38);
      v3 = v25;

      *(v22 + 4) = v28;
      v5 = 0x2781C1000uLL;
      _os_log_impl(&dword_2155AF000, v20, v21, "Fetched Chatbot rendering information from CT for %s but cacheType is unknown", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x21606C4C0](v36, -1, -1);
      MEMORY[0x21606C4C0](v22, -1, -1);
    }
  }

  v29 = [a1 *(v5 + 2224)];
  sub_2155DA80C();

  v30 = [v3 operation];
  v31 = [v30 uuid];
  sub_2155DA80C();

  v32 = *(v37 + 72);
  MEMORY[0x28223BE20](v33, v34);
  os_unfair_lock_lock(v32 + 6);
  sub_2155C9F18(&v32[4]);
  os_unfair_lock_unlock(v32 + 6);
}

unint64_t sub_2155C9F40()
{
  result = qword_27CA64F98;
  if (!qword_27CA64F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F98);
  }

  return result;
}

uint64_t sub_2155C9F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2155CA004()
{
  result = qword_27CA64FA8;
  if (!qword_27CA64FA8)
  {
    type metadata accessor for RCSChatBotBrand(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64FA8);
  }

  return result;
}

uint64_t sub_2155CA05C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2155CA0E0()
{
  result = qword_27CA64FE0;
  if (!qword_27CA64FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64FE0);
  }

  return result;
}

uint64_t sub_2155CA1A8()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails);

  return v1;
}

id BrandMessagingDetailsObjcShim.__allocating_init(_:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BrandMessagingDetailsObjcShim.init(_:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrandMessagingDetailsObjcShim();
  return objc_msgSendSuper2(&v3, sel_init);
}

id BrandMessagingDetailsObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandMessagingDetailsObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandMessagingDetailsObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2155CA3DC()
{
  type metadata accessor for NetworkReachabilityProvider();
  swift_allocObject();
  v0 = sub_2155C3A10();
  if (v0)
  {
    v1 = &off_28277FFB8;
  }

  else
  {
    v1 = 0;
  }

  type metadata accessor for NetworkConnectivityTrampoline();
  v2 = swift_allocObject();
  result = sub_2155CA4BC(v0, v1, 0);
  qword_27CA64FF0 = v2;
  return result;
}

uint64_t static NetworkConnectivityTrampoline.shared.getter()
{
  if (qword_27CA64AF0 != -1)
  {
    swift_once();
  }
}

void *sub_2155CA4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v28 = sub_2155DA9BC();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2155DA9AC();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_2155DA79C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_2155B1BBC();
  v27[1] = &OBJC_IVAR____TtC16BusinessServices29NetworkConnectivityTrampoline_maximumBlockCount;
  v27[2] = v12;
  sub_2155DA78C();
  v32 = MEMORY[0x277D84F90];
  sub_2155CBB68(&unk_280E1C268, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64F00, &unk_2155DD3D0);
  sub_2155CBBB0(&qword_280E1C278, &unk_27CA64F00, &unk_2155DD3D0);
  sub_2155DAA2C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v28);
  v13 = v29;
  v14 = sub_2155DA9EC();
  v15 = MEMORY[0x277D84F90];
  v13[5] = v14;
  v13[6] = v15;
  v16 = v30;
  v17 = v31;
  v13[2] = a1;
  v13[3] = v16;
  v18 = 200;
  if (v17 > 1)
  {
    v18 = v17;
  }

  v13[4] = v18;
  if (a1)
  {
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    *(a1 + 32) = sub_2155CBC04;
    *(a1 + 40) = v19;
    swift_unknownObjectRetain();

    sub_2155C4000(v20, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v22 = sub_2155DA75C();
    __swift_project_value_buffer(v22, qword_27CA66C00);
    v23 = sub_2155DA72C();
    v24 = sub_2155DA99C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2155AF000, v23, v24, "networkReachabilityProvider is nil, requests will be unconditionally dispatched", v25, 2u);
      MEMORY[0x21606C4C0](v25, -1, -1);
    }
  }

  return v13;
}

uint64_t sub_2155CA860(uint64_t a1)
{
  v1 = sub_2155DA76C();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2155DA79C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2155DA77C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v6;
    v16 = *(result + 16);
    if (v16)
    {
      if (*(v16 + 24))
      {
        v17 = result;
        sub_2155B1BBC();
        (*(v11 + 104))(v14, *MEMORY[0x277D851C8], v10);
        swift_unknownObjectRetain();
        v24 = sub_2155DA9FC();
        (*(v11 + 8))(v14, v10);
        aBlock[4] = sub_2155CBC0C;
        aBlock[5] = v17;
        v23 = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2155CB478;
        aBlock[3] = &block_descriptor_24;
        v22 = _Block_copy(aBlock);

        sub_2155DA78C();
        v27 = MEMORY[0x277D84F90];
        sub_2155CBB68(&qword_27CA64FF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v18 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65000, &qword_2155DD320);
        sub_2155CBBB0(&qword_27CA65008, &qword_27CA65000, &qword_2155DD320);
        sub_2155DAA2C();
        v19 = v22;
        v20 = v24;
        MEMORY[0x21606BB20](0, v9, v4, v22);
        _Block_release(v19);
        swift_unknownObjectRelease();

        (*(v18 + 8))(v4, v1);
        (*(v25 + 8))(v9, v5);
      }
    }
  }

  return result;
}

uint64_t sub_2155CAC34(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_2155DA76C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2155DA79C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 16);
  if (!v16 || (*(v16 + 24) & 1) != 0)
  {
    return a1(v13);
  }

  v20[1] = *(v2 + 40);
  v21 = v13;
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_2155CB46C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155CB478;
  aBlock[3] = &block_descriptor_0;
  v20[0] = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_2155DA78C();
  v22 = MEMORY[0x277D84F90];
  sub_2155CBB68(&qword_27CA64FF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65000, &qword_2155DD320);
  sub_2155CBBB0(&qword_27CA65008, &qword_27CA65000, &qword_2155DD320);
  sub_2155DAA2C();
  v19 = v20[0];
  MEMORY[0x21606BB20](0, v15, v9, v20[0]);
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v15, v21);
}

uint64_t sub_2155CAF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2155DA76C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2155DA79C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2155DA77C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a1 + 48);
  if (v18[2] == *(a1 + 32))
  {
    result = swift_beginAccess();
    if (!v18[2])
    {
      __break(1u);
      return result;
    }

    v39 = v6;
    v40 = a3;
    v20 = a2;
    v22 = v18[4];
    v21 = v18[5];

    sub_2155CBA70(0, 1);
    swift_endAccess();
    v23 = swift_allocObject();
    v38 = v7;
    v24 = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    a2 = v20;
    sub_2155B1BBC();
    (*(v14 + 104))(v17, *MEMORY[0x277D851C8], v13);
    v37 = sub_2155DA9FC();
    (*(v14 + 8))(v17, v13);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_2155CBB40;
    *(v25 + 24) = v24;
    aBlock[4] = sub_2155CB838;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2155CB478;
    aBlock[3] = &block_descriptor_18;
    v26 = _Block_copy(aBlock);

    sub_2155DA78C();
    v44 = MEMORY[0x277D84F90];
    sub_2155CBB68(&qword_27CA64FF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65000, &qword_2155DD320);
    sub_2155CBBB0(&qword_27CA65008, &qword_27CA65000, &qword_2155DD320);
    v27 = v42;
    v28 = v39;
    a3 = v40;
    sub_2155DAA2C();
    v29 = v37;
    MEMORY[0x21606BB20](0, v12, v27, v26);
    _Block_release(v26);

    (*(v38 + 8))(v27, v28);
    (*(v41 + 8))(v12, v43);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  swift_beginAccess();
  v31 = *(a1 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_2155CB874(0, v31[2] + 1, 1, v31, &qword_27CA65018, &qword_2155DD3C8);
    *(a1 + 48) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_2155CB874((v33 > 1), v34 + 1, 1, v31, &qword_27CA65018, &qword_2155DD3C8);
  }

  v31[2] = v34 + 1;
  v35 = &v31[2 * v34];
  v35[4] = sub_2155CB838;
  v35[5] = v30;
  *(a1 + 48) = v31;
  return swift_endAccess();
}

uint64_t sub_2155CB478(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2155CB4D4(uint64_t a1)
{
  v13 = MEMORY[0x277D84F90];
  v2 = *(a1 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2155CBC14;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2155CB838;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155CB700;
  aBlock[3] = &block_descriptor_33;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v13;
    v8 = *(v13 + 16);
    if (v8)
    {

      v9 = v7 + 40;
      do
      {
        v10 = *(v9 - 8);

        v10(v11);

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_2155CB68C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 48);

  *(a2 + 48) = MEMORY[0x277D84F90];
}

uint64_t NetworkConnectivityTrampoline.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NetworkConnectivityTrampoline.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void *sub_2155CB874(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65010, &qword_2155DD3C0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t sub_2155CB9A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65010, &qword_2155DD3C0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2155CBA70(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2155CB874(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_27CA65018, &qword_2155DD3C8);
    *v2 = v4;
  }

  result = sub_2155CB9A0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2155CBB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2155CBBB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *sub_2155CBC44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 32))(ObjectType, a2);
  if (v2)
  {
    return v3;
  }

  j = v6;
  v9 = [v6 subscriptions];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  sub_2155CC398();
  v11 = sub_2155DA8FC();

  if (v11 >> 62)
  {
    if (sub_2155DAA9C())
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

LABEL_12:
    v3 = 0;
    goto LABEL_13;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x21606BBB0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_43;
    }

    v12 = *(v11 + 32);
  }

  v3 = v12;

LABEL_13:
  v13 = [j subscriptions];
  if (!v13)
  {
    if (qword_280E1C288 == -1)
    {
LABEL_33:
      v31 = sub_2155DA75C();
      __swift_project_value_buffer(v31, qword_280E1C7F0);
      v32 = sub_2155DA72C();
      v33 = sub_2155DA98C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = j;
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2155AF000, v32, v33, "Did not find any CTXPCServiceSubscriptionContext object", v35, 2u);
        v36 = v35;
        j = v34;
        MEMORY[0x21606C4C0](v36, -1, -1);
      }

      sub_2155C32DC();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();

      return v3;
    }

LABEL_43:
    swift_once();
    goto LABEL_33;
  }

  v14 = v13;
  sub_2155CC398();
  v15 = sub_2155DA8FC();

  if (v15 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2155DAA9C())
  {
    v38 = v3;
    v39 = j;
    for (j = 0; ; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x21606BBB0](j, v15);
      }

      else
      {
        if (j >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = *(v15 + 8 * j + 32);
      }

      v3 = v17;
      v18 = (j + 1);
      if (__OFADD__(j, 1))
      {
        break;
      }

      v19 = [v17 phoneNumber];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2155DA80C();
        v23 = v22;

        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          goto LABEL_31;
        }
      }

      v25 = [v3 labelID];
      if (v25)
      {
        v26 = v25;
        v27 = sub_2155DA80C();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
LABEL_31:

          return v3;
        }
      }

      if (v18 == i)
      {

        return v38;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  return v3;
}

void *sub_2155CC020(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(BSCoreTelephonyUtilities) init];
    v8 = sub_2155DA7DC();
    v9 = [v7 subscriptionContextForSimID_];

    result = v9;
    if (!v9)
    {
      if (qword_280E1C288 != -1)
      {
        swift_once();
      }

      v11 = sub_2155DA75C();
      __swift_project_value_buffer(v11, qword_280E1C7F0);

      v12 = sub_2155DA72C();
      v13 = sub_2155DA98C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v27 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_2155BC03C(a1, a2, &v27);
        _os_log_impl(&dword_2155AF000, v12, v13, "Did not find any valid CTXPCServiceSubscriptionContext object for simId %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x21606C4C0](v15, -1, -1);
        MEMORY[0x21606C4C0](v14, -1, -1);
      }

      v16 = 1;
LABEL_8:
      sub_2155C32DC();
      swift_allocError();
      *v17 = v16;
      return swift_willThrow();
    }
  }

  else
  {
    result = sub_2155CBC44(a3, a4);
    if (!v4)
    {
      if (!result)
      {
        if (qword_280E1C288 != -1)
        {
          swift_once();
        }

        v23 = sub_2155DA75C();
        __swift_project_value_buffer(v23, qword_280E1C7F0);
        v24 = sub_2155DA72C();
        v25 = sub_2155DA98C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_2155AF000, v24, v25, "Did not find any valid CTXPCServiceSubscriptionContext object", v26, 2u);
          MEMORY[0x21606C4C0](v26, -1, -1);
        }

        v16 = 0;
        goto LABEL_8;
      }

      v18 = result;
      if (qword_280E1C288 != -1)
      {
        swift_once();
      }

      v19 = sub_2155DA75C();
      __swift_project_value_buffer(v19, qword_280E1C7F0);
      v20 = sub_2155DA72C();
      v21 = sub_2155DA98C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2155AF000, v20, v21, "Invalid simID. Will use detault subscription.", v22, 2u);
        MEMORY[0x21606C4C0](v22, -1, -1);
      }

      return v18;
    }
  }

  return result;
}

unint64_t sub_2155CC398()
{
  result = qword_27CA65020;
  if (!qword_27CA65020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA65020);
  }

  return result;
}

id BrandObjcShim.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BSBrandObjcShim_brand] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2155CC454(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2155DA68C();
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t sub_2155CC574()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 32))(v2, v3);
}

uint64_t sub_2155CC608()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 40))(&v5, v2, v3);
  return v5;
}

unint64_t sub_2155CC758()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = (*(v3 + 88))(v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_2155D003C(v4);

  return v5;
}

BOOL sub_2155CC810()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 32))(v2, v3);
  v4 = sub_2155DA8AC();

  if (v4)
  {
    return 0;
  }

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  (*(v7 + 40))(&v8, v6, v7);
  return v8 != 4;
}

uint64_t sub_2155CC9A0()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t sub_2155CCAC0()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 56))(v2, v3);
}

uint64_t sub_2155CCBE0()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 96))(v2, v3);
}

uint64_t sub_2155CCDB8()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 80))(v2, v3);
}

uint64_t sub_2155CCEFC()
{
  sub_2155B0E68(*(v0 + OBJC_IVAR___BSBrandObjcShim_brand) + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 104))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_2155CD064()
{
  sub_2155B0E68(*(v0 + OBJC_IVAR___BSBrandObjcShim_brand) + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 112))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_2155CD170()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 120))(v2, v3) & 1;
}

uint64_t sub_2155CD294()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 128))(v2, v3);
}

uint64_t sub_2155CD468()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 136))(v2, v3);
}

uint64_t sub_2155CD590()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 144))(v2, v3);
}

uint64_t sub_2155CD6B0()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 152))(v2, v3);
}

uint64_t sub_2155CD7D0()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 160))(v2, v3);
}

uint64_t sub_2155CD9A4()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 168))(v2, v3);
}

uint64_t sub_2155CDB80()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 176))(v2, v3);
}

uint64_t sub_2155CDCA8()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_2155CDDC8()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 184))(v2, v3);
}

uint64_t sub_2155CDEF4()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 192))(v2, v3);
}

id BrandObjcShim.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___BSBrandObjcShim_brand] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrandObjcShim();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2155CDFF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, double, double), double a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR___BSBrandObjcShim_brand);

  a3(v11, a1, a2, a4, a5);
}

uint64_t sub_2155CE0B0(char *a1, int a2, void *aBlock, double a4, double a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, double, double))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *&a1[OBJC_IVAR___BSBrandObjcShim_brand];
  v16 = a1;
  a8(v15, a7, v14, a4, a5);
}

uint64_t sub_2155CE168(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2155CE190, 0, 0);
}

uint64_t sub_2155CE190()
{
  v1 = swift_task_alloc();
  *(v0 + 7) = v1;
  *v1 = v0;
  v1[1] = sub_2155CE238;
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);

  return sub_2155D3E70(v4, v5, v2, v3);
}

uint64_t sub_2155CE238(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2155CE4E0(uint64_t a1, const void *a2, void *a3, double a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  v8 = sub_2155DA67C();
  *(v5 + 48) = v8;
  *(v5 + 56) = *(v8 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = _Block_copy(a2);
  v9 = a3;

  return MEMORY[0x2822009F8](sub_2155CE5C4, 0, 0);
}

uint64_t sub_2155CE5C4()
{
  v1 = swift_task_alloc();
  *(v0 + 10) = v1;
  *v1 = v0;
  v1[1] = sub_2155CE670;
  v2 = *(v0 + 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 2);

  return sub_2155D3E70(v2, v5, v3, v4);
}

uint64_t sub_2155CE670(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 88) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2155CE850, 0, 0);
  }

  else
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);

    v9 = sub_2155DA63C();
    (*(v8 + 8))(v5, v7);
    v10 = sub_2155DA7DC();

    (*(v6 + 16))(v6, v9, v10, 0);

    v11 = *(v4 + 72);
    _Block_release(v11);

    v12 = *(v4 + 8);

    return v12();
  }
}

uint64_t sub_2155CE850()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = sub_2155DA61C();
  (*(v2 + 16))(v2, 0, 0, v3);
  v4 = *(v0 + 72);

  _Block_release(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2155CE908(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR___BSBrandObjcShim_brand);

  sub_2155D7894(a1, 0, 0, v11, a2, a3, a4, a5);
}

uint64_t sub_2155CEA58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7)
{
  v15 = *(v7 + OBJC_IVAR___BSBrandObjcShim_brand);

  sub_2155D7894(a1, a2, a3, v15, a4, a5, a6, a7);
}

uint64_t sub_2155CEBF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(v5 + OBJC_IVAR___BSBrandObjcShim_brand);

  sub_2155D7F30(a1, a2, a3, v11, a4, a5);
}

uint64_t sub_2155CED58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2155D55D4();
}

void sub_2155CEDE4(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
    sub_2155BC714();
    if (swift_dynamicCast())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  a2(v4);
}

id BrandObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandObjcShim.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrandObjcShim();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static BrandObjcShim.placeholderName.getter()
{
  if (qword_27CA64B08 != -1)
  {
    swift_once();
  }

  v0 = qword_27CA65028;

  return v0;
}

id sub_2155CF13C(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_2155DA67C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_2155DA63C();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_2155CF280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR___BSBrandObjcShim_brand);
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v8 = (*(v7 + 88))(v6, v7);
  if (v8)
  {
    v9 = sub_2155D003C(v8);

    if (*(v9 + 16) && (v10 = sub_2155D0A68(a1, 0xEB000000004C5255), (v11 & 1) != 0))
    {
      sub_2155B0F9C(*(v9 + 56) + 32 * v10, v14);

      if (swift_dynamicCast())
      {
        sub_2155DA66C();
      }
    }

    else
    {
    }
  }

  v13 = sub_2155DA67C();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t BrandObjcShim.permissions(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2155CF3F8, 0, 0);
}

uint64_t sub_2155CF3F8()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = *(v0[6] + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2155CF50C;
  v6 = MEMORY[0x277CC9310];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x697373696D726570, 0xEF293A5F28736E6FLL, sub_2155D10F8, v4, v6);
}

uint64_t sub_2155CF50C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2155CF644;
  }

  else
  {

    v2 = sub_2155CF628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2155CF644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2155CF830(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_2155DA80C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[6] = v6;
  v3[7] = v7;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_2155CF8CC, 0, 0);
}

uint64_t sub_2155CF8CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v0[4] + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2155CF9E0;
  v6 = MEMORY[0x277CC9310];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x697373696D726570, 0xEF293A5F28736E6FLL, sub_2155D1ED4, v4, v6);
}

uint64_t sub_2155CF9E0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2155CFBB8;
  }

  else
  {

    v2 = sub_2155CFAFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2155CFAFC()
{

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_2155DA68C();
  sub_2155B453C(v2, v1);
  v4 = *(v0 + 40);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2155CFBB8()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = sub_2155DA61C();

  v4 = v0[5];
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

id sub_2155CFC70(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = *&a1[OBJC_IVAR___BSBrandObjcShim_brand];
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  v9 = *(v8 + 72);
  v10 = a1;
  v9(v7, v8);

  v11 = sub_2155DA67C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v5, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2155DA63C();
    (*(v12 + 8))(v5, v11);
    v14 = v15;
  }

  return v14;
}

uint64_t sub_2155CFDE4()
{
  v1 = *(v0 + OBJC_IVAR___BSBrandObjcShim_brand);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 72))(v2, v3);
}

id sub_2155CFE64(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_2155DA7DC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2155CFF34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BSBrandObjcShim_brand);
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  result = (*(v7 + 88))(v6, v7);
  if (result)
  {
    v9 = sub_2155D003C(result);

    if (*(v9 + 16) && (v10 = sub_2155D0A68(a1, a2), (v11 & 1) != 0))
    {
      sub_2155B0F9C(*(v9 + 56) + 32 * v10, v13);

      if (swift_dynamicCast())
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_2155D003C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E50, &qword_2155DC978);
    v2 = sub_2155DAACC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2155BCD54(&v22, v24);
        sub_2155BCD54(v24, v25);
        sub_2155BCD54(v25, &v23);
        result = sub_2155D0A68(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_2155BCD54(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2155BCD54(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2155D02B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2155D1ECC;

  return v6();
}

uint64_t sub_2155D03A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2155D0488;

  return v7();
}

uint64_t sub_2155D0488()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2155D057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65040, &qword_2155DD4C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_2155BCCEC(a3, v24 - v11, &qword_27CA65040, &qword_2155DD4C0);
  v13 = sub_2155DA94C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2155B1F44(v12, &qword_27CA65040, &qword_2155DD4C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2155DA93C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2155DA90C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2155DA86C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2155B1F44(a3, &qword_27CA65040, &qword_2155DD4C0);

    return v22;
  }

LABEL_8:
  sub_2155B1F44(a3, &qword_27CA65040, &qword_2155DD4C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2155D0878(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2155D0970;

  return v6(a1);
}

uint64_t sub_2155D0970()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2155D0A68(uint64_t a1, uint64_t a2)
{
  sub_2155DAC3C();
  sub_2155DA87C();
  v4 = sub_2155DAC5C();

  return sub_2155D0AE0(a1, a2, v4);
}

unint64_t sub_2155D0AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2155DABAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id _s16BusinessServices13BrandObjcShimC04mockC0ACyFZ_0()
{
  v0 = type metadata accessor for MapKitBrand(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2155DA66C();
  v52 = type metadata accessor for FakeBrandLogoURLProvider(0);
  v8 = swift_allocObject();
  v51 = v8;
  v9 = OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_squareLogoURL;
  v10 = sub_2155DA67C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v47 = v11 + 56;
  v12(v8 + v9, 1, 1, v10);
  v12(v8 + OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_wideLogoURL, 1, 1, v10);
  v13 = v12;
  swift_beginAccess();
  v50 = v7;
  sub_2155D1D40(v7, v8 + v9);
  swift_endAccess();
  v49 = type metadata accessor for FakeBrandService();
  v14 = swift_allocObject();
  v48 = v14;
  *(v14 + 16) = 0;
  v40 = 0x80000002155E0F50;
  v46 = 0x80000002155E0F80;
  v41 = 0x80000002155E1070;
  v45 = 0x80000002155E1090;
  MEMORY[0x28223BE20](v14, v15);
  v43 = v7;
  v16 = sub_2155BCCEC(v7, v7, &qword_27CA64B20, &qword_2155DBDC0);
  v42 = 0x80000002155E10B0;
  v44 = 0x80000002155E10D0;
  MEMORY[0x28223BE20](v16, v17);
  sub_2155BCCEC(v7, v7, &qword_27CA64B20, &qword_2155DBDC0);
  v39 = 0x80000002155E1110;
  *(v3 + 4) = 0;
  v18 = v0[13];
  v12(&v3[v18], 1, 1, v10);
  v19 = v0[14];
  v38 = v0[15];
  v20 = &v3[v19];
  v21 = v0[17];
  v22 = &v3[v0[16]];
  v13(&v3[v21], 1, 1, v10);
  v23 = &v3[v0[18]];
  v24 = v40;
  *v3 = 0xD00000000000002BLL;
  *(v3 + 1) = v24;
  *(v3 + 2) = 0x6172422074736554;
  *(v3 + 3) = 0xEA0000000000646ELL;
  v25 = v41;
  *(v3 + 5) = 0xD000000000000010;
  *(v3 + 6) = v25;
  *(v3 + 56) = xmmword_2155DD430;
  *(v3 + 72) = xmmword_2155DD440;
  v3[88] = 1;
  v26 = v45;
  *(v3 + 12) = 0xD000000000000011;
  *(v3 + 13) = v26;
  v27 = v46;
  *(v3 + 14) = 0xD0000000000000E5;
  *(v3 + 15) = v27;
  sub_2155B4C00(v43, &v3[v18]);
  v28 = v42;
  *v20 = 0xD000000000000010;
  *(v20 + 1) = v28;
  *&v3[v38] = xmmword_2155DD450;
  v29 = v44;
  *v22 = 0xD000000000000030;
  *(v22 + 1) = v29;
  sub_2155B4C00(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), &v3[v21]);
  v30 = v39;
  *v23 = 0xD000000000000012;
  *(v23 + 1) = v30;
  v61 = v0;
  v62 = sub_2155D1DB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_2155D1E08(v3, boxed_opaque_existential_1);
  v58 = v52;
  v59 = &off_282780308;
  *&v57 = v51;
  v55 = v49;
  v56 = &off_28277FFE0;
  *&v54 = v48;
  type metadata accessor for Brand();
  v32 = swift_allocObject();
  sub_2155B146C(&v54, v32 + 136);
  sub_2155B146C(&v60, v32 + 16);
  sub_2155B146C(&v57, v32 + 56);
  *(v32 + 96) = 0u;
  *(v32 + 112) = 0u;
  *(v32 + 128) = 0;
  v33 = type metadata accessor for BrandObjcShim();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR___BSBrandObjcShim_brand] = v32;
  v53.receiver = v34;
  v53.super_class = v33;
  v35 = objc_msgSendSuper2(&v53, sel_init);
  sub_2155B1F44(v50, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155D1E6C(v3);
  return v35;
}

uint64_t dispatch thunk of BrandObjcShim.logoFileURL(ofType:desiredSize:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x120);
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2155BAA50;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(a1, a2, v12, v13);
}

uint64_t sub_2155D1874()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2155D1ECC;

  return sub_2155CF830(v2, v3, v4);
}

uint64_t sub_2155D1928()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2155D1ECC;

  return sub_2155D02B8(v2, v3, v4);
}

uint64_t sub_2155D19E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2155D1ECC;

  return sub_2155D03A0(a1, v4, v5, v6);
}

uint64_t sub_2155D1AB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2155D1ECC;

  return sub_2155D0878(a1, v4);
}

uint64_t sub_2155D1B6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2155D0488;

  return sub_2155D0878(a1, v4);
}

uint64_t sub_2155D1C38()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2155D0488;

  return sub_2155CE4E0(v2, v6, v5, v3, v4);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2155D1D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2155D1DB0()
{
  result = qword_27CA65048;
  if (!qword_27CA65048)
  {
    type metadata accessor for MapKitBrand(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA65048);
  }

  return result;
}

uint64_t sub_2155D1E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapKitBrand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2155D1E6C(uint64_t a1)
{
  v2 = type metadata accessor for MapKitBrand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2155D1F34(uint64_t a1, void (*a2)(void *))
{
  sub_2155BCCEC(a1, v10, &qword_27CA64F88, &unk_2155DD160);
  if (v12)
  {
    v3 = *&v10[0];
    v8[0] = *&v10[0];
    v9[80] = 1;
    v4 = *&v10[0];
    a2(v8);

    return sub_2155B1F44(v8, &qword_27CA65050, &unk_2155DD5E0);
  }

  else
  {
    sub_2155B146C(v10, v7);
    sub_2155B146C(&v11, v6);
    sub_2155B0E68(v7, v8);
    sub_2155B0E68(v6, v9);
    memset(&v9[40], 0, 41);
    a2(v8);
    sub_2155B1F44(v8, &qword_27CA65050, &unk_2155DD5E0);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }
}

void sub_2155D2054(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v8 = sub_2155DA76C();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2155DA79C();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2155BCCEC(a1, v29, &qword_27CA65050, &unk_2155DD5E0);
  if (v31)
  {
    v16 = *&v29[0];
    v17 = *&v29[0];
    a3(v16, 1);
  }

  else
  {
    sub_2155B146C(v29, v28);
    sub_2155B146C(v30, v27);
    v25[0] = *&v30[5];
    v25[1] = *&v30[7];
    v26 = v30[9];
    v24[0] = *(a2 + 40);

    v18 = BrandFactory.makeBrand(brandModel:brandLogoURLProvider:brandLogoDataProvider:)(v28, v27, v25);

    sub_2155B1BBC();
    v19 = sub_2155DA9CC();
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = v18;
    v24[4] = sub_2155D24F0;
    v24[5] = v20;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_2155CB478;
    v24[3] = &block_descriptor_1;
    v21 = _Block_copy(v24);

    sub_2155DA78C();
    v24[0] = MEMORY[0x277D84F90];
    sub_2155D253C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65000, &qword_2155DD320);
    sub_2155D2594();
    sub_2155DAA2C();
    MEMORY[0x21606BB20](0, v15, v11, v21);
    _Block_release(v21);

    (*(v23 + 8))(v11, v8);
    (*(v12 + 8))(v15, v22);
    sub_2155B1F44(v25, &qword_27CA64F58, &qword_2155DCFF0);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }
}

uint64_t dispatch thunk of BrandRemoteDataSourceNeedingFactory.brandModelWithURI(_:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 8))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BrandRemoteDataSourceNeedingFactory.brandModelWithURI(_:usingSim:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 16))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 32))(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t sub_2155D244C(uint64_t a1, int a2)
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

uint64_t sub_2155D2494(uint64_t result, int a2, int a3)
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

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_2155D253C()
{
  result = qword_27CA64FF8;
  if (!qword_27CA64FF8)
  {
    sub_2155DA76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64FF8);
  }

  return result;
}

unint64_t sub_2155D2594()
{
  result = qword_27CA65008;
  if (!qword_27CA65008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA65000, &qword_2155DD320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA65008);
  }

  return result;
}

uint64_t sub_2155D2640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v7 = (*(v6 + 88))(v5, v6);
  if (v7)
  {
    v8 = sub_2155D003C(v7);

    if (*(v8 + 16) && (v9 = sub_2155D0A68(a1, 0xEB000000004C5255), (v10 & 1) != 0))
    {
      sub_2155B0F9C(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        sub_2155DA66C();
      }
    }

    else
    {
    }
  }

  v12 = sub_2155DA67C();
  return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
}

uint64_t Brand.permissions(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2155D27AC, 0, 0);
}

uint64_t sub_2155D27AC()
{
  v1 = *(v0 + 48);
  v6 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2155CF50C;
  v4 = MEMORY[0x277CC9310];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x697373696D726570, 0xEF293A5F28736E6FLL, sub_2155D10F8, v2, v4);
}

uint64_t sub_2155D28F4(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  result = (*(v6 + 88))(v5, v6);
  if (result)
  {
    v8 = sub_2155D003C(result);

    if (*(v8 + 16) && (v9 = sub_2155D0A68(a1, a2), (v10 & 1) != 0))
    {
      sub_2155B0F9C(*(v8 + 56) + 32 * v9, v12);

      if (swift_dynamicCast())
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2155D29F0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 40))(v1, v2);
}

unint64_t sub_2155D2A4C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 88))(v1, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = sub_2155D003C(v3);

  return v4;
}

BOOL sub_2155D2AC4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 32))(v1, v2);
  LOBYTE(v1) = sub_2155DA8AC();

  if (v1)
  {
    return 0;
  }

  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 40))(&v6, v4, v5);
  return v6 != 4;
}

uint64_t sub_2155D2BA0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_2155D2BF4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_2155D2C48()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 96))(v1, v2);
}

uint64_t sub_2155D2CA0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_2155D2CFC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_2155D2D58()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t sub_2155D2DB0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 128))(v1, v2);
}

uint64_t sub_2155D2E04()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_2155D2E58()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 136))(v1, v2);
}

uint64_t sub_2155D2EB4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 144))(v1, v2);
}

uint64_t sub_2155D2F08()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 152))(v1, v2);
}

uint64_t sub_2155D2F5C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 160))(v1, v2);
}

uint64_t sub_2155D2FB0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 168))(v1, v2);
}

uint64_t sub_2155D300C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 176))(v1, v2);
}

uint64_t sub_2155D3068()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 192))(v1, v2);
}

uint64_t sub_2155D30BC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 184))(v1, v2);
}

void sub_2155D3110(void (*a1)(void *, void, uint64_t), uint64_t a2, double a3, double a4)
{
  sub_2155C3864((v4 + 12), &v65);
  if (!v66)
  {
    sub_2155B1F44(&v65, &qword_27CA64F58, &qword_2155DCFF0);
    goto LABEL_5;
  }

  sub_2155B146C(&v65, v67);
  v9 = v68;
  v10 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v11 = (*(v10 + 8))(v9, v10, a3, a4);
  if (v12 >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_5:
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v13 = sub_2155DA75C();
    __swift_project_value_buffer(v13, qword_280E1C7F0);

    v14 = sub_2155DA72C();
    v15 = sub_2155DA99C();

    v63 = a2;
    v64 = a1;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v67[0] = v17;
      *v16 = 136315138;
      v18 = v4[5];
      v19 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v18);
      v20 = (*(v19 + 32))(v18, v19);
      v22 = sub_2155BC03C(v20, v21, v67);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2155AF000, v14, v15, "Fetching squareLogoDataForDesiredSize for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21606C4C0](v17, -1, -1);
      MEMORY[0x21606C4C0](v16, -1, -1);
    }

    v23 = sub_2155DA67C();
    v62 = &v61;
    v24 = *(v23 - 8);
    MEMORY[0x28223BE20](v23, v25);
    v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    MEMORY[0x28223BE20](v28 - 8, v29);
    v31 = &v61 - v30;
    v32 = v4[10];
    v33 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v32);
    (*(v33 + 8))(v32, v33, a3, a4);
    if ((*(v24 + 48))(v31, 1, v23) == 1)
    {
      sub_2155B1F44(v31, &qword_27CA64B20, &qword_2155DBDC0);

      v34 = sub_2155DA72C();
      v35 = sub_2155DA99C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v67[0] = v37;
        *v36 = 136315138;
        v38 = v4[5];
        v39 = v4[6];
        __swift_project_boxed_opaque_existential_1(v4 + 2, v38);
        v40 = (*(v39 + 32))(v38, v39);
        v42 = sub_2155BC03C(v40, v41, v67);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_2155AF000, v34, v35, "Missing square logo url for brand with URI: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x21606C4C0](v37, -1, -1);
        MEMORY[0x21606C4C0](v36, -1, -1);
      }

      sub_2155C061C();
      v43 = swift_allocError();
      *v44 = 0;
      v64(v43, 0, 1);
    }

    else
    {
      (*(v24 + 32))(v27, v31, v23);
      sub_2155B0E68((v4 + 17), v67);
      v45 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v46 = v4[5];
      v47 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v46);
      v48 = (*(v47 + 32))(v46, v47);
      (*(v45 + 8))(v48);

      (*(v24 + 8))(v27, v23);
      __swift_destroy_boxed_opaque_existential_1(v67);
    }

    return;
  }

  v49 = v11;
  v50 = v12;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v51 = sub_2155DA75C();
  __swift_project_value_buffer(v51, qword_280E1C7F0);

  v52 = sub_2155DA72C();
  v53 = sub_2155DA99C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v62 = v55;
    *v54 = 136315138;
    v64 = a1;
    *&v65 = v55;
    v56 = v4[5];
    v57 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v56);
    v58 = (*(v57 + 32))(v56, v57);
    v60 = sub_2155BC03C(v58, v59, &v65);
    a1 = v64;

    *(v54 + 4) = v60;
    _os_log_impl(&dword_2155AF000, v52, v53, "Getting squareLogoData for %s from data provider instead of fetching from URL", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x21606C4C0](v62, -1, -1);
    MEMORY[0x21606C4C0](v54, -1, -1);
  }

  sub_2155BD47C(v49, v50);
  a1(v49, v50, 0);
  sub_2155B4528(v49, v50);
  sub_2155B4528(v49, v50);
  __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t Brand.squareLogoURLForDesiredSize(_:)(double a1, double a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  return (*(v6 + 8))(v5, v6, a1, a2);
}

void sub_2155D38D8(void (*a1)(void *, void, uint64_t), uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v45 = a1;
  v46 = a2;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v8 = sub_2155DA75C();
  __swift_project_value_buffer(v8, qword_280E1C7F0);

  v9 = sub_2155DA72C();
  v10 = sub_2155DA99C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47[0] = v12;
    *v11 = 136315138;
    v14 = v4[5];
    v13 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v14);
    v15 = (*(v13 + 32))(v14, v13);
    v17 = sub_2155BC03C(v15, v16, v47);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_2155AF000, v9, v10, "Fetching wideLogoDataForDesiredSize for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21606C4C0](v12, -1, -1);
    MEMORY[0x21606C4C0](v11, -1, -1);
  }

  v18 = sub_2155DA67C();
  v44 = &v44;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v44 - v25;
  v27 = v5[10];
  v28 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v27);
  (*(v28 + 16))(v27, v28, a3, a4);
  if ((*(v19 + 48))(v26, 1, v18) == 1)
  {
    sub_2155B1F44(v26, &qword_27CA64B20, &qword_2155DBDC0);

    v29 = sub_2155DA72C();
    v30 = sub_2155DA99C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47[0] = v32;
      *v31 = 136315138;
      v33 = v5[5];
      v34 = v5[6];
      __swift_project_boxed_opaque_existential_1(v5 + 2, v33);
      v35 = (*(v34 + 32))(v33, v34);
      v37 = sub_2155BC03C(v35, v36, v47);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2155AF000, v29, v30, "Missing wide logo url for brand with URI: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21606C4C0](v32, -1, -1);
      MEMORY[0x21606C4C0](v31, -1, -1);
    }

    sub_2155C061C();
    v38 = swift_allocError();
    *v39 = 0;
    v45(v38, 0, 1);
  }

  else
  {
    (*(v19 + 32))(v22, v26, v18);
    sub_2155B0E68((v5 + 17), v47);
    v40 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v41 = v5[5];
    v42 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v41);
    v43 = (*(v42 + 32))(v41, v42);
    (*(v40 + 8))(v43);

    (*(v19 + 8))(v22, v18);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }
}

uint64_t Brand.wideLogoURLForDesiredSize(_:)(double a1, double a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  return (*(v6 + 16))(v5, v6, a1, a2);
}

uint64_t sub_2155D3E70(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 88) = v4;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2155D3E98, 0, 0);
}

uint64_t sub_2155D3E98()
{
  v56 = v0;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v1 = sub_2155DA75C();
  __swift_project_value_buffer(v1, qword_280E1C7F0);

  v2 = sub_2155DA72C();
  v3 = sub_2155DA99C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 11);
    v5 = *(v0 + 8);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v55[0] = v7;
    *v6 = 134218242;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = v4[5];
    v9 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v8);
    v10 = (*(v9 + 32))(v8, v9);
    v12 = sub_2155BC03C(v10, v11, v55);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_2155AF000, v2, v3, "Fetching logoFileURL of type %ld for %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21606C4C0](v7, -1, -1);
    MEMORY[0x21606C4C0](v6, -1, -1);
  }

  v13 = *(v0 + 8);
  v14 = sub_2155DA67C();
  *(v0 + 12) = v14;
  v15 = *(v14 - 8);
  *(v0 + 13) = v15;
  v16 = swift_task_alloc();
  *(v0 + 14) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v17 = swift_task_alloc();
  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        v18 = *(v0 + 11);
        v20 = v0[9];
        v19 = v0[10];
        v21 = v18[10];
        v22 = v18[11];
        __swift_project_boxed_opaque_existential_1(v18 + 7, v21);
        (*(v22 + 16))(v21, v22, v20, v19);
        goto LABEL_13;
      }

      return sub_2155DAA8C();
    }

    goto LABEL_12;
  }

  if (v13 == 2)
  {
LABEL_12:
    v26 = *(v0 + 11);
    v28 = v0[9];
    v27 = v0[10];
    v29 = v26[10];
    v30 = v26[11];
    __swift_project_boxed_opaque_existential_1(v26 + 7, v29);
    (*(v30 + 8))(v29, v30, v28, v27);
    goto LABEL_13;
  }

  if (v13 != 3)
  {
    return sub_2155DAA8C();
  }

  v23 = *(v0 + 11);
  v24 = v23[5];
  v25 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v24);
  (*(v25 + 136))(v24, v25);
LABEL_13:
  if ((*(v15 + 48))(v17, 1, v14) == 1)
  {
    sub_2155B1F44(v17, &qword_27CA64B20, &qword_2155DBDC0);

    v31 = sub_2155DA72C();
    v32 = sub_2155DA99C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 11);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55[0] = v35;
      *v34 = 136315138;
      v36 = v33[5];
      v37 = v33[6];
      __swift_project_boxed_opaque_existential_1(v33 + 2, v36);
      v38 = (*(v37 + 32))(v36, v37);
      v40 = sub_2155BC03C(v38, v39, v55);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2155AF000, v31, v32, "Missing logo url for brand with URI: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21606C4C0](v35, -1, -1);
      MEMORY[0x21606C4C0](v34, -1, -1);
    }

    sub_2155C061C();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    v42 = *(v0 + 1);

    return v42();
  }

  else
  {
    v44 = *(v0 + 11);
    (*(v15 + 32))(v16, v17, v14);

    sub_2155B0E68((v44 + 17), (v0 + 2));
    v45 = *(v0 + 5);
    v46 = *(v0 + 6);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
    v47 = v44[5];
    v48 = v44[6];
    __swift_project_boxed_opaque_existential_1(v44 + 2, v47);
    v49 = (*(v48 + 32))(v47, v48);
    v51 = v50;
    *(v0 + 15) = v50;
    v54 = (*(v46 + 16) + **(v46 + 16));
    v52 = swift_task_alloc();
    *(v0 + 16) = v52;
    *v52 = v0;
    v52[1] = sub_2155D458C;
    v53 = *(v0 + 7);

    return v54(v53, v49, v51, v16, v45, v46);
  }
}

uint64_t sub_2155D458C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_2155D4760;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_2155D46D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2155D46D4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_2155D4760()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t Brand.assetURL(forType:desiredSize:)(uint64_t a1, double a2, double a3)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v9 = v3[5];
      v10 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
      return (*(v10 + 136))(v9, v10);
    }

    if (a1 != 2)
    {
      goto LABEL_9;
    }

LABEL_8:
    v11 = v3[10];
    v12 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v11);
    return (*(v12 + 8))(v11, v12, a2, a3);
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v6 = v3[10];
    v7 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v6);
    return (*(v7 + 16))(v6, v7, a2, a3);
  }

LABEL_9:
  result = sub_2155DAA8C();
  __break(1u);
  return result;
}

void sub_2155D4960(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, uint64_t), uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v60 = a4;
  v56 = a2;
  v57 = a3;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v13 = sub_2155DA75C();
  v14 = __swift_project_value_buffer(v13, qword_280E1C7F0);

  v55 = v14;
  v15 = sub_2155DA72C();
  v16 = sub_2155DA99C();

  v59 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v61[0] = v18;
    *v17 = 134218242;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2080;
    v19 = v8[5];
    v20 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v19);
    v21 = (*(v20 + 32))(v19, v20);
    v23 = sub_2155BC03C(v21, v22, v61);

    *(v17 + 14) = v23;
    a1 = v59;
    _os_log_impl(&dword_2155AF000, v15, v16, "Fetching logoData ofType %ld for %s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x21606C4C0](v18, -1, -1);
    MEMORY[0x21606C4C0](v17, -1, -1);
  }

  v24 = sub_2155DA67C();
  v58 = &v54;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v54 - v31;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v33 = v8[10];
        v34 = v8[11];
        __swift_project_boxed_opaque_existential_1(v8 + 7, v33);
        (*(v34 + 16))(v33, v34, a6, a7);
        goto LABEL_13;
      }

LABEL_18:
      sub_2155DAA8C();
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

  if (a1 == 2)
  {
LABEL_10:
    v35 = v8[10];
    v36 = v8[11];
    __swift_project_boxed_opaque_existential_1(v8 + 7, v35);
    (*(v36 + 8))(v35, v36, a6, a7);
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_18;
  }

  v37 = v8[5];
  v38 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v37);
  (*(v38 + 136))(v37, v38);
LABEL_13:
  if ((*(v25 + 48))(v32, 1, v24) == 1)
  {
    sub_2155B1F44(v32, &qword_27CA64B20, &qword_2155DBDC0);

    v39 = sub_2155DA72C();
    v40 = sub_2155DA99C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61[0] = v42;
      *v41 = 136315138;
      v43 = v8[5];
      v44 = v8[6];
      __swift_project_boxed_opaque_existential_1(v8 + 2, v43);
      v45 = (*(v44 + 32))(v43, v44);
      v47 = sub_2155BC03C(v45, v46, v61);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2155AF000, v39, v40, "Missing logo url for brand with URI: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x21606C4C0](v42, -1, -1);
      MEMORY[0x21606C4C0](v41, -1, -1);
    }

    sub_2155C061C();
    v48 = swift_allocError();
    *v49 = 0;
    v60(v48, 0, 1);
  }

  else
  {
    (*(v25 + 32))(v28, v32, v24);
    sub_2155B0E68((v8 + 17), v61);
    v55 = a5;
    v50 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v51 = v8[5];
    v52 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v51);
    v53 = (*(v52 + 32))(v51, v52);
    (*(v50 + 8))(v53);

    (*(v25 + 8))(v28, v24);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }
}

void sub_2155D4F98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v54 = a2;
  v55 = a3;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v9 = sub_2155DA75C();
  v10 = __swift_project_value_buffer(v9, qword_280E1C7F0);

  v53 = v10;
  v11 = sub_2155DA72C();
  v12 = sub_2155DA99C();

  v57 = a1;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v59[0] = v14;
    *v13 = 134218242;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2080;
    v15 = v6[5];
    v16 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v15);
    v17 = (*(v16 + 32))(v15, v16);
    v19 = sub_2155BC03C(v17, v18, v59);

    *(v13 + 14) = v19;
    a1 = v57;
    _os_log_impl(&dword_2155AF000, v11, v12, "Fetching assetData ofType %ld for %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21606C4C0](v14, -1, -1);
    MEMORY[0x21606C4C0](v13, -1, -1);
  }

  v20 = sub_2155DA67C();
  v56 = &v52;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v52 - v27;
  v30 = *MEMORY[0x277CBF3A8];
  v29 = *(MEMORY[0x277CBF3A8] + 8);
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v31 = v6[10];
        v32 = v6[11];
        __swift_project_boxed_opaque_existential_1(v6 + 7, v31);
        (*(v32 + 16))(v31, v32, v30, v29);
        goto LABEL_13;
      }

LABEL_18:
      sub_2155DAA8C();
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

  if (a1 == 2)
  {
LABEL_10:
    v33 = v6[10];
    v34 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v33);
    (*(v34 + 8))(v33, v34, v30, v29);
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_18;
  }

  v35 = v6[5];
  v36 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v35);
  (*(v36 + 136))(v35, v36);
LABEL_13:
  if ((*(v21 + 48))(v28, 1, v20) == 1)
  {
    sub_2155B1F44(v28, &qword_27CA64B20, &qword_2155DBDC0);

    v37 = sub_2155DA72C();
    v38 = sub_2155DA99C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59[0] = v40;
      *v39 = 136315138;
      v41 = v6[5];
      v42 = v6[6];
      __swift_project_boxed_opaque_existential_1(v6 + 2, v41);
      v43 = (*(v42 + 32))(v41, v42);
      v45 = sub_2155BC03C(v43, v44, v59);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_2155AF000, v37, v38, "Missing logo url for brand with URI: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x21606C4C0](v40, -1, -1);
      MEMORY[0x21606C4C0](v39, -1, -1);
    }

    sub_2155C061C();
    v46 = swift_allocError();
    *v47 = 0;
    v58(v46, 0, 1);
  }

  else
  {
    (*(v21 + 32))(v24, v28, v20);
    sub_2155B0E68((v6 + 17), v59);
    v53 = a5;
    v48 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    v49 = v6[5];
    v50 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v49);
    v51 = (*(v50 + 32))(v49, v50);
    (*(v48 + 8))(v51);

    (*(v21 + 8))(v24, v20);
    __swift_destroy_boxed_opaque_existential_1(v59);
  }
}

uint64_t sub_2155D55D4()
{
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v1 = sub_2155DA75C();
  __swift_project_value_buffer(v1, qword_280E1C7F0);

  v2 = sub_2155DA72C();
  v3 = sub_2155DA99C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16[0] = v5;
    *v4 = 136315138;
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = (*(v7 + 32))(v6, v7);
    v10 = sub_2155BC03C(v8, v9, v16);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_2155AF000, v2, v3, "Calling clearCachedAssets for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21606C4C0](v5, -1, -1);
    MEMORY[0x21606C4C0](v4, -1, -1);
  }

  sub_2155B0E68((v0 + 17), v16);
  v11 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = (*(v13 + 32))(v12, v13);
  (*(v11 + 24))(v14);

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static Brand.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  if (v5 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2155DABAC();
  }

  return v12 & 1;
}

uint64_t sub_2155D58D8(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 32))(v2, v3);
  sub_2155DA87C();
}

void *Brand.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_2155B1F44((v0 + 12), &qword_27CA64F58, &qword_2155DCFF0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  return v0;
}

uint64_t sub_2155D59F0()
{
  sub_2155DAC3C();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 32))(v1, v2);
  sub_2155DA87C();

  return sub_2155DAC5C();
}

uint64_t sub_2155D5A80@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  result = (*(v4 + 32))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_2155D5AE0(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  __swift_project_boxed_opaque_existential_1((*a1 + 16), v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  if (v5 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2155DABAC();
  }

  return v12 & 1;
}

uint64_t sub_2155D5BC4()
{
  v1 = *v0;
  sub_2155DAC3C();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 32))(v2, v3);
  sub_2155DA87C();

  return sub_2155DAC5C();
}

uint64_t sub_2155D5C58(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v2);
  (*(v3 + 32))(v2, v3);
  sub_2155DA87C();
}

uint64_t sub_2155D5CE0(uint64_t a1)
{
  sub_2155DAC3C();
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v2);
  (*(v3 + 32))(v2, v3);
  sub_2155DA87C();

  return sub_2155DAC5C();
}

uint64_t sub_2155D5D70(double a1, double a2)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  __swift_project_boxed_opaque_existential_1((*v2 + 56), v5);
  return (*(v6 + 8))(v5, v6, a1, a2);
}

uint64_t sub_2155D5DE8(double a1, double a2)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  __swift_project_boxed_opaque_existential_1((*v2 + 56), v5);
  return (*(v6 + 16))(v5, v6, a1, a2);
}

uint64_t sub_2155D5E90(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return a1(v3, v4) & 1;
}

uint64_t static Brand.placeholderName.getter()
{
  if (qword_27CA64B10 != -1)
  {
    swift_once();
  }

  v0 = qword_27CA65058;

  return v0;
}

uint64_t sub_2155D5FF8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_2155D604C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a3;
    v22 = a2;
  }

  else
  {
    v7 = a4[5];
    v8 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v7);
    v22 = (*(v8 + 32))(v7, v8);
    v6 = v9;
  }

  sub_2155B0E68((a4 + 17), v23);
  v10 = v24;
  v11 = v25;
  v21[0] = __swift_project_boxed_opaque_existential_1(v23, v24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65070, "2\n");
  v21[1] = v21;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v21 - v15;
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = *(v11 + 40);

  v19(v22, v6, @"WebPresentment", sub_2155D6954, v18, v10, v11);

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2155D6268(void *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65070, "2\n");
    return sub_2155DA91C();
  }

  else
  {
    sub_2155BD47C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65070, "2\n");
    return sub_2155DA92C();
  }
}

unint64_t sub_2155D62EC()
{
  result = qword_27CA65068;
  if (!qword_27CA65068)
  {
    type metadata accessor for Brand();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA65068);
  }

  return result;
}

uint64_t dispatch thunk of Brand.logoFileURL(ofType:desiredSize:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v14 = (*(*v4 + 288) + **(*v4 + 288));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2155BAA50;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, v11, v12);
}

uint64_t sub_2155D6954(void *a1, unint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65070, "2\n");

  return sub_2155D6268(a1, a2, a3 & 1);
}

uint64_t sub_2155D69E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a6;
  v32 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v28 = a8;
  v29 = a11;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a8 - 8) + 32))(v19, a2, a8);
  v25 = a7;
  v26 = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a7 - 8) + 32))(v20, a3, a7);
  type metadata accessor for Brand();
  v21 = swift_allocObject();
  sub_2155B146C(&v24, v21 + 136);
  sub_2155B146C(&v30, v21 + 16);
  sub_2155B146C(&v27, v21 + 56);
  v22 = *(a4 + 16);
  *(v21 + 96) = *a4;
  *(v21 + 112) = v22;
  *(v21 + 128) = *(a4 + 32);
  return v21;
}

uint64_t sub_2155D6B50(void *a1, void (*a2)(void, void, void), uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_2155C3864((a1 + 12), &v71);
  v70 = a3;
  if (v72)
  {
    sub_2155B146C(&v71, v73);
    v11 = v74;
    v12 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v13 = *(v12 + 8);

    v14 = v13(v11, v12, a4, a5);
    if (v15 >> 60 != 15)
    {
      v55 = v14;
      v56 = v15;
      if (qword_280E1C288 != -1)
      {
        swift_once();
      }

      v57 = sub_2155DA75C();
      __swift_project_value_buffer(v57, qword_280E1C7F0);

      v58 = sub_2155DA72C();
      v59 = sub_2155DA99C();

      if (os_log_type_enabled(v58, v59))
      {
        v67 = a2;
        v60 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v71 = v68;
        *v60 = 136315138;
        v62 = a1[5];
        v61 = a1[6];
        __swift_project_boxed_opaque_existential_1(a1 + 2, v62);
        v63 = (*(v61 + 32))(v62, v61);
        v65 = sub_2155BC03C(v63, v64, &v71);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_2155AF000, v58, v59, "Getting squareLogoData for %s from data provider instead of fetching from URL", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x21606C4C0](v68, -1, -1);
        v66 = v60;
        a2 = v67;
        MEMORY[0x21606C4C0](v66, -1, -1);
      }

      sub_2155BD47C(v55, v56);
      a2(v55, v56, 0);
      sub_2155B4528(v55, v56);
      sub_2155B4528(v55, v56);
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {

    sub_2155B1F44(&v71, &qword_27CA64F58, &qword_2155DCFF0);
  }

  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v16 = sub_2155DA75C();
  __swift_project_value_buffer(v16, qword_280E1C7F0);

  v17 = sub_2155DA72C();
  v18 = sub_2155DA99C();

  v69 = v10;
  v67 = a2;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v73[0] = v20;
    *v19 = 136315138;
    v21 = a1[5];
    v22 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v21);
    v23 = (*(v22 + 32))(v21, v22);
    v25 = sub_2155BC03C(v23, v24, v73);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2155AF000, v17, v18, "Fetching squareLogoDataForDesiredSize for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21606C4C0](v20, -1, -1);
    MEMORY[0x21606C4C0](v19, -1, -1);
  }

  v26 = sub_2155DA67C();
  v68 = &v67;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v67 - v33;
  v35 = a1[10];
  v36 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v35);
  (*(v36 + 8))(v35, v36, a4, a5);
  if ((*(v27 + 48))(v34, 1, v26) != 1)
  {
    (*(v27 + 32))(v30, v34, v26);
    sub_2155B0E68((a1 + 17), v73);
    v50 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v51 = a1[5];
    v52 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v51);
    v53 = (*(v52 + 32))(v51, v52);
    (*(v50 + 8))(v53);

    (*(v27 + 8))(v30, v26);
    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  sub_2155B1F44(v34, &qword_27CA64B20, &qword_2155DBDC0);

  v37 = sub_2155DA72C();
  v38 = sub_2155DA99C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73[0] = v40;
    *v39 = 136315138;
    v41 = a1[5];
    v42 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v41);
    v43 = (*(v42 + 32))(v41, v42);
    v45 = sub_2155BC03C(v43, v44, v73);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_2155AF000, v37, v38, "Missing square logo url for brand with URI: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x21606C4C0](v40, -1, -1);
    MEMORY[0x21606C4C0](v39, -1, -1);
  }

  v46 = v67;
  sub_2155C061C();
  v47 = swift_allocError();
  *v48 = 0;
  v49 = sub_2155DA61C();
  v46(0, 0xF000000000000000, v49);
}

uint64_t sub_2155D7314(void *a1, void (*a2)(void, unint64_t, void *), uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  v50[1] = a3;
  v51 = a2;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v53 = v10;
  v11 = qword_280E1C288;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_2155DA75C();
  __swift_project_value_buffer(v12, qword_280E1C7F0);

  v13 = sub_2155DA72C();
  v14 = sub_2155DA99C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v54[0] = v16;
    *v15 = 136315138;
    v17 = a1[5];
    v18 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v17);
    v19 = (*(v18 + 32))(v17, v18);
    v21 = sub_2155BC03C(v19, v20, v54);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2155AF000, v13, v14, "Fetching wideLogoDataForDesiredSize for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21606C4C0](v16, -1, -1);
    MEMORY[0x21606C4C0](v15, -1, -1);
  }

  v22 = sub_2155DA67C();
  v52 = v50;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = v50 - v29;
  v31 = a1[10];
  v32 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v31);
  (*(v32 + 16))(v31, v32, a4, a5);
  if ((*(v23 + 48))(v30, 1, v22) == 1)
  {
    sub_2155B1F44(v30, &qword_27CA64B20, &qword_2155DBDC0);

    v33 = sub_2155DA72C();
    v34 = sub_2155DA99C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54[0] = v36;
      *v35 = 136315138;
      v37 = a1[5];
      v38 = a1[6];
      __swift_project_boxed_opaque_existential_1(a1 + 2, v37);
      v39 = (*(v38 + 32))(v37, v38);
      v41 = sub_2155BC03C(v39, v40, v54);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2155AF000, v33, v34, "Missing wide logo url for brand with URI: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x21606C4C0](v36, -1, -1);
      MEMORY[0x21606C4C0](v35, -1, -1);
    }

    sub_2155C061C();
    v42 = swift_allocError();
    *v43 = 0;
    v44 = sub_2155DA61C();
    v51(0, 0xF000000000000000, v44);
  }

  else
  {
    (*(v23 + 32))(v26, v30, v22);
    sub_2155B0E68((a1 + 17), v54);
    v46 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v47 = a1[5];
    v48 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v47);
    v49 = (*(v48 + 32))(v47, v48);
    (*(v46 + 8))(v49);

    (*(v23 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }
}

uint64_t sub_2155D7894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8)
{
  v61[1] = a2;
  v61[2] = a3;
  v14 = swift_allocObject();
  v62 = a5;
  v63 = a6;
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v64 = v14;
  v15 = qword_280E1C288;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_2155DA75C();
  v17 = __swift_project_value_buffer(v16, qword_280E1C7F0);

  v61[0] = v17;
  v18 = sub_2155DA72C();
  v19 = sub_2155DA99C();

  v65 = a1;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66[0] = v21;
    *v20 = 134218242;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2080;
    v23 = a4[5];
    v22 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v23);
    v24 = v23;
    a1 = v65;
    v25 = (*(v22 + 32))(v24, v22);
    v27 = sub_2155BC03C(v25, v26, v66);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_2155AF000, v18, v19, "Fetching logoData ofType %ld for %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x21606C4C0](v21, -1, -1);
    MEMORY[0x21606C4C0](v20, -1, -1);
  }

  v28 = sub_2155DA67C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = v61 - v35;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v37 = a4[10];
        v38 = a4[11];
        __swift_project_boxed_opaque_existential_1(a4 + 7, v37);
        (*(v38 + 16))(v37, v38, a7, a8);
        goto LABEL_13;
      }

LABEL_18:

      result = sub_2155DAA8C();
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  if (a1 == 2)
  {
LABEL_10:
    v39 = a4[10];
    v40 = a4[11];
    __swift_project_boxed_opaque_existential_1(a4 + 7, v39);
    (*(v40 + 8))(v39, v40, a7, a8);
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_18;
  }

  v41 = a4[5];
  v42 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v41);
  (*(v42 + 136))(v41, v42);
LABEL_13:
  if ((*(v29 + 48))(v36, 1, v28) == 1)
  {
    sub_2155B1F44(v36, &qword_27CA64B20, &qword_2155DBDC0);

    v43 = sub_2155DA72C();
    v44 = sub_2155DA99C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136315138;
      v47 = a4[5];
      v48 = a4[6];
      __swift_project_boxed_opaque_existential_1(a4 + 2, v47);
      v49 = (*(v48 + 32))(v47, v48);
      v51 = sub_2155BC03C(v49, v50, v66);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_2155AF000, v43, v44, "Missing logo url for brand with URI: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21606C4C0](v46, -1, -1);
      MEMORY[0x21606C4C0](v45, -1, -1);
    }

    sub_2155C061C();
    v52 = swift_allocError();
    *v53 = 0;
    v54 = sub_2155DA61C();
    (v62)(0, 0xF000000000000000, v54);
  }

  else
  {
    v56 = v32;
    (*(v29 + 32))(v32, v36, v28);
    sub_2155B0E68((a4 + 17), v66);
    v57 = v66[4];
    v63 = v61;
    v62 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    v58 = a4[5];
    v59 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v58);
    v60 = (*(v59 + 32))(v58, v59);
    (*(v57 + 8))(v60);

    (*(v29 + 8))(v56, v28);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }
}

uint64_t sub_2155D7F30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v58[2] = a2;
  v58[3] = a3;
  v10 = swift_allocObject();
  v59 = a5;
  v60 = a6;
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  v11 = qword_280E1C288;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_2155DA75C();
  v13 = __swift_project_value_buffer(v12, qword_280E1C7F0);

  v58[1] = v13;
  v14 = sub_2155DA72C();
  v15 = sub_2155DA99C();

  v61 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v62[0] = v17;
    *v16 = 134218242;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2080;
    v19 = a4[5];
    v18 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v19);
    v20 = v19;
    a1 = v61;
    v21 = (*(v18 + 32))(v20, v18);
    v23 = sub_2155BC03C(v21, v22, v62);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_2155AF000, v14, v15, "Fetching assetData ofType %ld for %s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x21606C4C0](v17, -1, -1);
    MEMORY[0x21606C4C0](v16, -1, -1);
  }

  v24 = sub_2155DA67C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v58[0] = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = v58 - v30;
  v33 = *MEMORY[0x277CBF3A8];
  v32 = *(MEMORY[0x277CBF3A8] + 8);
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v34 = a4[10];
        v35 = a4[11];
        __swift_project_boxed_opaque_existential_1(a4 + 7, v34);
        (*(v35 + 16))(v34, v35, v33, v32);
        goto LABEL_13;
      }

LABEL_18:

      result = sub_2155DAA8C();
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  if (a1 == 2)
  {
LABEL_10:
    v36 = a4[10];
    v37 = a4[11];
    __swift_project_boxed_opaque_existential_1(a4 + 7, v36);
    (*(v37 + 8))(v36, v37, v33, v32);
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_18;
  }

  v38 = a4[5];
  v39 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v38);
  (*(v39 + 136))(v38, v39);
LABEL_13:
  if ((*(v25 + 48))(v31, 1, v24) == 1)
  {
    sub_2155B1F44(v31, &qword_27CA64B20, &qword_2155DBDC0);

    v40 = sub_2155DA72C();
    v41 = sub_2155DA99C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62[0] = v43;
      *v42 = 136315138;
      v44 = a4[5];
      v45 = a4[6];
      __swift_project_boxed_opaque_existential_1(a4 + 2, v44);
      v46 = (*(v45 + 32))(v44, v45);
      v48 = sub_2155BC03C(v46, v47, v62);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_2155AF000, v40, v41, "Missing logo url for brand with URI: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21606C4C0](v43, -1, -1);
      MEMORY[0x21606C4C0](v42, -1, -1);
    }

    sub_2155C061C();
    v49 = swift_allocError();
    *v50 = 0;
    v51 = sub_2155DA61C();
    (v59)(0, 0xF000000000000000, v51);
  }

  else
  {
    v53 = v58[0];
    (*(v25 + 32))(v58[0], v31, v24);
    sub_2155B0E68((a4 + 17), v62);
    v60 = v58;
    v54 = v62[4];
    v59 = __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    v55 = a4[5];
    v56 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v55);
    v57 = (*(v56 + 32))(v55, v56);
    (*(v54 + 8))(v57);

    (*(v25 + 8))(v53, v24);
    __swift_destroy_boxed_opaque_existential_1(v62);
  }
}

id RCSChatBotBrandDataSourceObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RCSChatBotBrandDataSourceObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSChatBotBrandDataSourceObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2155D8670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrameworkBundleAnchor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BSBrandURIIsAppleMain(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 isEqualToString:@"urn:biz:b15ed773-9eed-11e7-baa2-7b88b04daa8e"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BSBrandURIIsAppleMako(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 isEqualToString:@"urn:biz:e46750f1-3f94-4aba-73ca-1c14fb3adddd"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}