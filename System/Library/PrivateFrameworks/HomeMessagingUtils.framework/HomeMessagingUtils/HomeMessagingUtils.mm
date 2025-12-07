char *HomeManager.init(homeDelegate:options:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v24 = a1;
  v21 = sub_25428ECD8();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20]();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25428ECC8();
  MEMORY[0x28223BE20]();
  sub_25428EC48();
  MEMORY[0x28223BE20]();
  v3[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homesLoaded] = 0;
  v20 = OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_serialQueue;
  v8 = sub_25428C714(0, &qword_27F5DD330, 0x277D85C78);
  v19[0] = "idation";
  v19[1] = v8;
  sub_25428EC38();
  v26 = MEMORY[0x277D84F90];
  sub_25428C638(&qword_27F5DD338, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD340, &qword_25428FB90);
  sub_25428C680(&qword_27F5DD348, &qword_27F5DD340, &qword_25428FB90);
  sub_25428ED58();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v21);
  *&v3[v20] = sub_25428ECF8();
  *&v3[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homesLoadedHandlers] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homeDelegate] = 0;
  v9 = objc_allocWithZone(MEMORY[0x277CD1C60]);
  v10 = [v9 initWithOptions:v22 cachePolicy:v23];
  [v10 setDiscretionary_];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v10 setDelegateQueue_];

  [v10 setInactiveUpdatingLevel_];
  v12 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v4[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_manager] = v12;
  v13 = [v12 createAccessorySettingsDataSource];
  *&v4[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_accessorySettingsDataSource] = v13;
  v14 = type metadata accessor for HomeManager();
  v25.receiver = v4;
  v25.super_class = v14;
  v15 = objc_msgSendSuper2(&v25, sel_init);
  *&v15[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homeDelegate] = v24;
  v16 = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v17 = *&v16[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_manager];
  [v17 setDelegate_];
  swift_unknownObjectRelease();

  return v16;
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

id HomeManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *HomeManager.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeManager());
  v1 = HomeManager.init(homeDelegate:options:cachePolicy:)(0, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_25428B8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25428EC28();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25428EC48();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_serialQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_25428C614;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25428BD34;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);

  sub_25428EC38();
  v19 = MEMORY[0x277D84F90];
  sub_25428C638(&qword_27F5DD360, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD368, &qword_25428FB98);
  sub_25428C680(&qword_27F5DD370, &qword_27F5DD368, &qword_25428FB98);
  sub_25428ED58();
  MEMORY[0x259C07600](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_25428BBCC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homesLoaded))
    {
      a2();
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a2;
      *(v7 + 24) = a3;
      v8 = OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homesLoadedHandlers;
      swift_beginAccess();
      v9 = *&v6[v8];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v6[v8] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_25428C934(0, v9[2] + 1, 1, v9);
        *&v6[v8] = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_25428C934((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_25428C90C;
      v13[5] = v7;
      *&v6[v8] = v9;
      swift_endAccess();
    }
  }

  else
  {
    a2();
  }
}

uint64_t sub_25428BD34(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25428BD78()
{
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_25428B8C0(sub_25428C70C, v1);

  sub_25428ECB8();
}

uint64_t sub_25428BE14()
{
  v1 = v0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  sub_25428B8C0(sub_25428CA74, v3);

  sub_25428ECB8();

  v5 = [*(v1 + OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_manager) homes];
  sub_25428C714(0, &unk_27F5DD378, 0x277CD1A60);
  v6 = sub_25428EC98();

  return v6;
}

id sub_25428BEF4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_manager) currentHome];

  return v1;
}

id sub_25428BF34()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_manager) currentAccessory];

  return v1;
}

id HomeManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall HomeManager.homeManagerDidUpdateHomes(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = sub_25428EC28();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25428EC48();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_serialQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2].super.isa = v10;
  v11[3].super.isa = a1.super.isa;
  aBlock[4] = sub_25428C79C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25428BD34;
  aBlock[3] = &block_descriptor_17;
  v12 = _Block_copy(aBlock);

  v13 = a1.super.isa;
  sub_25428EC38();
  v17 = MEMORY[0x277D84F90];
  sub_25428C638(&qword_27F5DD360, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD368, &qword_25428FB98);
  sub_25428C680(&qword_27F5DD370, &qword_27F5DD368, &qword_25428FB98);
  sub_25428ED58();
  MEMORY[0x259C07600](0, v9, v6, v12);
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

_BYTE *sub_25428C324(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [a2 homes];
    sub_25428C714(0, &unk_27F5DD378, 0x277CD1A60);
    v6 = sub_25428EC98();

    if (v6 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25428ED98())
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homeDelegate;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x259C07690](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        [v10 setDelegate_];

        ++v8;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v4[OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homesLoaded] = 1;
    v13 = OBJC_IVAR____TtC18HomeMessagingUtils11HomeManager_homesLoadedHandlers;
    swift_beginAccess();
    v14 = *&v4[v13];
    v15 = *(v14 + 16);

    if (v15)
    {
      v16 = 0;
      v17 = v14 + 40;
      while (v16 < *(v14 + 16))
      {
        ++v16;
        v18 = *(v17 - 8);

        v18(v19);

        v17 += 16;
        if (v15 == v16)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:

      *&v4[v13] = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_25428C59C()
{
  MEMORY[0x259C07C00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25428C5D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25428C638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25428C680(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25428C6D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25428C714(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25428C75C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25428C8D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_25428C934(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD3E8, &qword_25428FBE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DD3F0, &qword_25428FBF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25428CA7C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for ContactStore(0);
  v1 = swift_allocObject();
  sub_25428EBD8();
  *(v1 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber) = 0;
  *(v1 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate + 8) = 0;
  result = swift_unknownObjectWeakInit();
  *(v1 + 16) = v0;
  qword_27F5DD400 = v1;
  return result;
}

uint64_t ContactStore.__allocating_init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v2 = *(v0 + 160);

  return v2(v1);
}

uint64_t static ContactStore.sharedContactStore.getter()
{
  if (qword_27F5DD0C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25428CBE8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  return sub_25428CC50();
}

uint64_t sub_25428CC50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD458, &qword_25428FCC8);
  MEMORY[0x28223BE20]();
  v3 = &v22 - v2;
  v27 = sub_25428ED48();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25428ED08();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD460, &unk_25428FCD0);
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber;
  if (*(v0 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber))
  {

    sub_25428EBF8();
  }

  *(v0 + v13) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v15 = [objc_opt_self() defaultCenter];
    v23 = v9;
    sub_25428ED18();

    sub_25428ED38();
    v16 = [objc_opt_self() mainRunLoop];
    v24 = v13;
    v17 = v16;
    v28 = v16;
    v18 = sub_25428ED28();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    sub_25428C714(0, &qword_27F5DD468, 0x277CBEB88);
    sub_25428E9D8();
    sub_25428EA30();
    v19 = v23;
    sub_25428EC08();
    sub_25428EA98(v3);

    (*(v4 + 8))(v6, v27);
    (*(v26 + 8))(v19, v7);
    swift_allocObject();
    swift_weakInit();
    sub_25428EB40();
    v20 = v25;
    v21 = sub_25428EC18();

    (*(v10 + 8))(v12, v20);
    *(v1 + v24) = v21;
  }

  return result;
}

uint64_t sub_25428D098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_25428D1B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_25428CC50();
  return swift_unknownObjectRelease();
}

void (*sub_25428D220(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25428D2C0;
}

void sub_25428D2C0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_25428CC50();
  }

  free(v3);
}

uint64_t ContactStore.__allocating_init(contactStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_25428EBD8();
  *(v2 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber) = 0;
  *(v2 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ContactStore.init(contactStore:)(uint64_t a1)
{
  sub_25428EBD8();
  *(v1 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber) = 0;
  *(v1 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t ContactStore.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber;
  if (*(v0 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_subscriber))
  {

    sub_25428EBF8();
  }

  *(v0 + v2) = 0;

  v3 = OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_logger;
  v4 = sub_25428EBE8();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  sub_25428D548(v1 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate);
  return v1;
}

uint64_t ContactStore.__deallocating_deinit()
{
  ContactStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

CNContact_optional __swiftcall ContactStore.contact(forPhoneNumber:keys:)(Swift::String forPhoneNumber, Swift::OpaquePointer keys)
{
  object = forPhoneNumber._object;
  countAndFlagsBits = forPhoneNumber._countAndFlagsBits;
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v6 = sub_25428EC58();
  v7 = [v5 initWithStringValue_];

  v8 = [objc_opt_self() predicateForContactsMatchingPhoneNumber_];
  v9 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD418, &qword_25428FC38);
  v10 = sub_25428EC88();
  v29[0] = 0;
  v11 = [v9 unifiedContactsMatchingPredicate:v8 keysToFetch:v10 error:v29];

  v12 = v29[0];
  if (!v11)
  {
    v19 = v29[0];
    v20 = sub_25428EBB8();

    swift_willThrow();

    v21 = v20;
    v22 = sub_25428EBC8();
    v23 = sub_25428ECA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_25428E0D4(countAndFlagsBits, object, v29);
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_25428EDA8();
      v28 = sub_25428E0D4(v26, v27, v29);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_254286000, v22, v23, "Failed to find contact with phone number %s %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07BC0](v25, -1, -1);
      MEMORY[0x259C07BC0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  sub_25428C714(0, &qword_27F5DD420, 0x277CBDA58);
  v13 = sub_25428EC98();
  v14 = v12;

  if (v13 >> 62)
  {
    if (sub_25428ED98())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

LABEL_13:
    v18 = 0;
    goto LABEL_17;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C07690](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v18 = v16;
LABEL_17:
  result.value.super.isa = v18;
  result.is_nil = v17;
  return result;
}

CNContact_optional __swiftcall ContactStore.contact(forEmailAddress:keys:)(Swift::String forEmailAddress, Swift::OpaquePointer keys)
{
  object = forEmailAddress._object;
  countAndFlagsBits = forEmailAddress._countAndFlagsBits;
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = sub_25428EC58();
  v7 = [v5 predicateForContactsMatchingEmailAddress_];

  v8 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD418, &qword_25428FC38);
  v9 = sub_25428EC88();
  v28[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v28];

  v11 = v28[0];
  if (!v10)
  {
    v18 = v28[0];
    v19 = sub_25428EBB8();

    swift_willThrow();

    v20 = v19;
    v21 = sub_25428EBC8();
    v22 = sub_25428ECA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_25428E0D4(countAndFlagsBits, object, v28);
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_25428EDA8();
      v27 = sub_25428E0D4(v25, v26, v28);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_254286000, v21, v22, "Failed to find contact with email address %s %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07BC0](v24, -1, -1);
      MEMORY[0x259C07BC0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  sub_25428C714(0, &qword_27F5DD420, 0x277CBDA58);
  v12 = sub_25428EC98();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_25428ED98())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

LABEL_13:
    v17 = 0;
    goto LABEL_17;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x259C07690](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v17 = v15;
LABEL_17:
  result.value.super.isa = v17;
  result.is_nil = v16;
  return result;
}

CNContact_optional __swiftcall ContactStore.contact(for:keys:)(Swift::String a1, Swift::OpaquePointer_optional keys)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (keys.value._rawValue)
  {
    v4._rawValue = keys.value._rawValue;
  }

  else
  {
    v4._rawValue = sub_25428E67C();
  }

  v5 = sub_25428EC58();
  v6 = [v5 hmu_isEmail];

  v7 = countAndFlagsBits;
  v8 = object;
  if (v6)
  {
    v9 = ContactStore.contact(forEmailAddress:keys:)(*&v7, v4);
    goto LABEL_8;
  }

  v10 = sub_25428EC58();
  v11 = [v10 hmu_isPhoneNumber];

  if (v11)
  {
    v12._countAndFlagsBits = countAndFlagsBits;
    v12._object = object;
    v9 = ContactStore.contact(forPhoneNumber:keys:)(v12, v4);
LABEL_8:
    v13 = v9;

    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v15 = sub_25428EBC8();
  v16 = sub_25428ECA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_25428E0D4(countAndFlagsBits, object, &v24);
    _os_log_impl(&dword_254286000, v15, v16, "HMUser userID invalid %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x259C07BC0](v18, -1, -1);
    MEMORY[0x259C07BC0](v17, -1, -1);
  }

LABEL_13:

  v19 = sub_25428EBC8();
  v20 = sub_25428ECA8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_25428E0D4(countAndFlagsBits, object, &v24);
    _os_log_impl(&dword_254286000, v19, v20, "No contact found for userID %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C07BC0](v22, -1, -1);
    MEMORY[0x259C07BC0](v21, -1, -1);
  }

  v13 = 0;
LABEL_16:
  v23 = v13;
  result.value.super.isa = v23;
  result.is_nil = v14;
  return result;
}

Swift::String __swiftcall ContactStore.name(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v3 setStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DD428, &qword_25428FC40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25428FC10;
  *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  v13.value._rawValue = v4;
  v6 = ContactStore.contact(for:keys:)(v5, v13);

  if (v6)
  {
    v7 = [v3 stringFromContact_];
    if (v7)
    {
      v8 = v7;
      countAndFlagsBits = sub_25428EC68();
      object = v9;
    }

    else
    {
    }
  }

  else
  {
  }

  v10 = countAndFlagsBits;
  v11 = object;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

CNContact_optional __swiftcall ContactStore.contact(forUser:)(HMUser forUser)
{
  v1 = [(objc_class *)forUser.super.isa userID];
  if (v1)
  {
    v3 = v1;
    v4 = sub_25428EC68();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v10.value._rawValue = 0;
    v8 = ContactStore.contact(for:keys:)(v7, v10);

    v1 = v8;
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

unint64_t sub_25428E0D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25428E1A0(v11, 0, 0, 1, a1, a2);
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
    sub_25428E97C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25428E1A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25428E2AC(a5, a6);
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
    result = sub_25428ED88();
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

void *sub_25428E2AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_25428E2F8(a1, a2);
  sub_25428E428(&unk_28663EED8);
  return v3;
}

void *sub_25428E2F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_25428E514(v5, 0);
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

  result = sub_25428ED88();
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
        v10 = sub_25428EC78();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25428E514(v10, 0);
        result = sub_25428ED68();
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

uint64_t sub_25428E428(uint64_t result)
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

  result = sub_25428E588(result, v11, 1, v3);
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

void *sub_25428E514(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD450, &qword_25428FCC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25428E588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD450, &qword_25428FCC0);
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

uint64_t sub_25428E67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DD428, &qword_25428FC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25428FC20;
  v1 = *MEMORY[0x277CBD078];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD078];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBCFF8];
  v4 = *MEMORY[0x277CBD028];
  *(v0 + 48) = *MEMORY[0x277CBCFF8];
  *(v0 + 56) = v4;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  return v0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_25428E768@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HomeMessagingUtils12ContactStore_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for ContactStore(uint64_t a1)
{
  result = qword_27F5DD438;
  if (!qword_27F5DD438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25428E830(uint64_t a1)
{
  result = sub_25428EBE8();
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

uint64_t sub_25428E97C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25428E9D8()
{
  result = qword_27F5DD470;
  if (!qword_27F5DD470)
  {
    sub_25428ED08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD470);
  }

  return result;
}

unint64_t sub_25428EA30()
{
  result = qword_27F5DD478;
  if (!qword_27F5DD478)
  {
    sub_25428C714(255, &qword_27F5DD468, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD478);
  }

  return result;
}

uint64_t sub_25428EA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD458, &qword_25428FCC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25428EB00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25428EB40()
{
  result = qword_27F5DD480;
  if (!qword_27F5DD480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DD460, &unk_25428FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD480);
  }

  return result;
}