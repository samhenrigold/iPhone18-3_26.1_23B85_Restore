id ControlCenterModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ControlCenterModule.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_29C9C6484();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s33HomeControlCenterSingleTileModule0bcF0C22moduleUniqueIdentifier33_5E8AC97B6834A1F8CFE2911C562B275DLL10Foundation4UUIDVvpfi_0();
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_lockState] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation] = 0;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  sub_29C9C6464();
  v11 = sub_29C9C6474();
  v12 = sub_29C9C66E4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_29C9BD000, v11, v12, "Initializing ControlCenterModule", v13, 2u);
    MEMORY[0x29ED50000](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = [objc_opt_self() sharedManager];
  [v14 bootstrap];

  type metadata accessor for LockStateHandler();
  v15 = swift_allocObject();
  *(v15 + 16) = -1;
  *(v15 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 32) = &off_2A23EDD68;
  swift_unknownObjectWeakAssign();
  v16 = v10;
  sub_29C9C56C8();
  *&v16[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_lockState] = v15;

  v17 = sub_29C9C66A4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  sub_29C9BF164(0, 0, v5, &unk_29C9C7200, v18);

  return v16;
}

uint64_t sub_29C9BEF7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29C9BEFFC()
{
  sub_29C9C65C4();
  *(v0 + 24) = sub_29C9C65A4();
  *(v0 + 32) = sub_29C9C5270(&qword_2A179B1B8, type metadata accessor for ControlCenterModule, &protocol conformance descriptor for ControlCenterModule);
  sub_29C9C5270(&qword_2A179B1C0, MEMORY[0x29EDC5428], MEMORY[0x29EDC5430]);
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9BF0F8, v2, v1);
}

uint64_t sub_29C9BF0F8()
{
  sub_29C9C65B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29C9BF164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v25 - v10;
  sub_29C9C5448(a3, v25 - v10);
  v12 = sub_29C9C66A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29C9C54B8(v11, &qword_2A179AF20, &qword_29C9C71F0);
  }

  else
  {
    sub_29C9C6694();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29C9C6664();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29C9C6624() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_29C9C54B8(a3, &qword_2A179AF20, &qword_29C9C71F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29C9C54B8(a3, &qword_2A179AF20, &qword_29C9C71F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id ControlCenterModule.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion;
  v3 = *&v0[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 sharedDispatcher];
    v6 = [v5 homeManager];

    [v6 _endActiveAssertion_];
    swift_unknownObjectRelease();
  }

  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t ControlCenterModule.moduleDescription.getter()
{
  v0 = sub_29C9C6604();
  v1 = HULocalizedString();

  v2 = sub_29C9C6614();
  return v2;
}

id ControlCenterModule.setContentModuleContext(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  *(v1 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context) = a1;

  return a1;
}

void *ControlCenterModule.contentModuleContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  v2 = v1;
  return v1;
}

uint64_t sub_29C9BF8A0()
{
  v1 = sub_29C9C6484();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v5 = v0;
  v6 = sub_29C9C6474();
  v7 = sub_29C9C66E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_29C9BD000, v6, v7, "%@:CharacteristicRegistration canceling scheduled characteristic deregistration", v8, 0xCu);
    sub_29C9C54B8(v9, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v9, -1, -1);
    MEMORY[0x29ED50000](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v11 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation;
  v12 = *&v5[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation];
  if (v12)
  {
    [v12 cancel];
  }

  *&v5[v11] = 0;
  return swift_unknownObjectRelease();
}

void sub_29C9BFA60()
{
  v1 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion;
  if (!*&v0[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion])
  {
    v2 = v0;
    swift_getObjectType();
    sub_29C9C67C4();
    MEMORY[0x29ED4FA30](58, 0xE100000000000000);
    v3 = [v0 description];
    v4 = sub_29C9C6614();
    v6 = v5;

    MEMORY[0x29ED4FA30](v4, v6);

    v7 = [objc_opt_self() sharedDispatcher];
    v8 = [v7 homeManager];

    if (v8)
    {
      v9 = sub_29C9C6604();

      v10 = [v8 _beginActiveAssertionWithReason_];
    }

    else
    {

      v10 = 0;
    }

    *&v2[v1] = v10;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_29C9BFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_29C9C6404();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9BFCA4, 0, 0);
}

uint64_t sub_29C9BFCA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v0[8];
  v2 = v0[9];
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[6];
    v6 = v0[7];
    v7 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_moduleUniqueIdentifier;
    v8 = sub_29C9C63F4();
    (*(*(v8 - 8) + 16))(v3, &v4[v7], v8);

    (*(v6 + 104))(v3, *MEMORY[0x29EDC5410], v5);
    (*(v6 + 32))(v2, v3, v5);
    v0[10] = sub_29C9C6444();
    v0[11] = sub_29C9C6684();
    v0[12] = sub_29C9C6674();
    v10 = sub_29C9C6664();

    return MEMORY[0x2A1C73D48](sub_29C9BFE5C, v10, v9);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_29C9BFE5C()
{

  *(v0 + 104) = sub_29C9C6434();

  return MEMORY[0x2A1C73D48](sub_29C9BFED0, 0, 0);
}

uint64_t sub_29C9BFED0()
{
  *(v0 + 112) = sub_29C9C6674();
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9BFF5C, v2, v1);
}

uint64_t sub_29C9BFF5C()
{
  v1 = *(v0 + 104);

  sub_29C9C6414();

  return MEMORY[0x2A1C73D48](sub_29C9BFFD4, 0, 0);
}

uint64_t sub_29C9BFFD4()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

void ControlCenterModule.controlCenterModuleViewController(_:didChangeDisplayedItems:)(void *a1, uint64_t a2)
{
  v5 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v24[-1] - v6;
  v8 = [a1 itemManager];
  v23 = [v8 home];

  if (v23)
  {
    if ([a1 allowsCharacteristicNotifications] && (v9 = objc_msgSend(objc_opt_self(), sel_sharedDispatcher), v10 = objc_msgSend(v9, sel_homeManager), v9, v10))
    {

      v11 = sub_29C9C66A4();
      v12 = *(*(v11 - 8) + 56);
      v12(v7, 1, 1, v11);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a2;
      v13[5] = v23;

      v14 = v23;
      sub_29C9BF164(0, 0, v7, &unk_29C9C7210, v13);

      sub_29C9C6574();
      v24[3] = sub_29C9BEF7C(&qword_2A179AF60, &qword_29C9C7218);
      v24[4] = sub_29C9C46A8();
      v24[0] = a2;

      v15 = sub_29C9C6534();
      sub_29C9C4D80(v24);
      v16 = *(v2 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration);
      v12(v7, 1, 1, v11);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_29C9C64E4();
      swift_retain_n();

      v18 = v14;

      v19 = sub_29C9C64D4();
      v20 = sub_29C9C5270(&qword_2A179AF70, MEMORY[0x29EDC52D0], MEMORY[0x29EDC52D8]);
      v21 = swift_allocObject();
      v21[2] = v19;
      v21[3] = v20;
      v21[4] = v16;
      v21[5] = v15;
      v21[6] = a2;
      v21[7] = v17;
      v21[8] = v18;

      sub_29C9BF164(0, 0, v7, &unk_29C9C7228, v21);
    }

    else
    {
      v22 = v23;
    }
  }
}

uint64_t sub_29C9C0440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2A1C73D48](sub_29C9C0460, 0, 0);
}

uint64_t sub_29C9C0460()
{
  sub_29C9C64C4();
  v0[4] = sub_29C9C64B4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_29C9C0510;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x2A1C67B60](v3, v2);
}

uint64_t sub_29C9C0510()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29C9C0620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_29C9C6594();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  sub_29C9C64E4();
  v8[24] = sub_29C9C64D4();
  sub_29C9C5270(&qword_2A179AF70, MEMORY[0x29EDC52D0], MEMORY[0x29EDC52D8]);
  v11 = sub_29C9C6664();
  v8[25] = v11;
  v8[26] = v10;

  return MEMORY[0x2A1C73D48](sub_29C9C074C, v11, v10);
}

uint64_t sub_29C9C074C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[17];
    v3 = sub_29C9C6504();
    sub_29C9C31C4(v3, v2);
    LOBYTE(v2) = v4;

    if (v2)
    {
LABEL_24:

      sub_29C9C64F4();

      v23 = v0[1];

      return v23();
    }
  }

  if ((v0[17] & 0xC000000000000001) != 0 && sub_29C9C6754() < 0)
  {
    __break(1u);
  }

  v34 = v1;
  v5 = v0[18];
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29C9C6744();
    sub_29C9C52B8(0, &qword_2A179B180, 0x29EDC53A0);
    sub_29C9C4EC4();
    v6 = sub_29C9C66C4();
    v5 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v17 = v9;
    v18 = v10;
    if (!v10)
    {
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {
          goto LABEL_23;
        }

        v18 = *(v7 + 8 * v9);
        ++v17;
        if (v18)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return MEMORY[0x2A1C67BC0](v6);
    }

LABEL_13:
    v10 = (v18 - 1) & v18;
    v15 = *(*(v5 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_14:
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();

    if (v16)
    {
      goto LABEL_23;
    }
  }

  v19 = sub_29C9C6774();
  if (v19)
  {
    v0[15] = v19;
    sub_29C9C52B8(0, &qword_2A179B180, 0x29EDC53A0);
    swift_dynamicCast();
    v15 = v0[14];
    if (v15)
    {
      goto LABEL_14;
    }
  }

LABEL_23:
  sub_29C9C5268(v5);
  v20 = v0[22];
  v21 = v0[23];
  v22 = v0[21];
  sub_29C9C6584();
  sub_29C9C5270(&qword_2A179B198, MEMORY[0x29EDC5420], MEMORY[0x29EDC5418]);
  sub_29C9C6454();
  (*(v20 + 8))(v21, v22);
  if (v34)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    v28 = v0[20];
    sub_29C9C6524();
    swift_allocObject();

    v29 = v28;
    v30 = sub_29C9C6514();
    v0[31] = v30;
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      *(v31 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration) = v30;
      v32 = v31;
    }

    sub_29C9C6574();
    v0[32] = sub_29C9C6564();
    v33 = swift_task_alloc();
    v0[33] = v33;
    *v33 = v0;
    v33[1] = sub_29C9C0ECC;
    v6 = v30;

    return MEMORY[0x2A1C67BC0](v6);
  }

  sub_29C9C6684();
  v0[28] = sub_29C9C6674();
  v27 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C0C5C, v27, v26);
}

uint64_t sub_29C9C0C5C()
{
  v1 = v0[27];

  v2 = *(v1 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
  if (v2 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = v0[27];
    v6 = v2;
    v7 = [v4 fullDescription];
    v8 = sub_29C9C6614();
    v10 = v9;
  }

  else
  {
    v7 = v0[27];
    v0[13] = v2;
    v6 = v2;
    sub_29C9BEF7C(&qword_2A179B1A0, &qword_29C9C7330);
    v8 = sub_29C9C6734();
    v10 = v11;
  }

  v0[29] = v10;
  v0[30] = v8;
  v12 = v0[25];
  v13 = v0[26];

  return MEMORY[0x2A1C73D48](sub_29C9C0D7C, v12, v13);
}

uint64_t sub_29C9C0D7C()
{
  v1 = v0[20];
  sub_29C9C6524();
  swift_allocObject();

  v2 = v1;
  v3 = sub_29C9C6514();
  v0[31] = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration) = v3;
    v5 = Strong;
  }

  sub_29C9C6574();
  v0[32] = sub_29C9C6564();
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_29C9C0ECC;

  return MEMORY[0x2A1C67BC0](v3);
}

uint64_t sub_29C9C0ECC()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2A1C73D48](sub_29C9C1010, v3, v2);
}

uint64_t sub_29C9C1010()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29C9C1124()
{
  v1 = v0;
  v2 = sub_29C9C6484();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation;
  v7 = *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation];
  if (v7)
  {
    [v7 cancel];
  }

  sub_29C9C6464();
  v8 = v1;
  v9 = sub_29C9C6474();
  v10 = sub_29C9C66E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_29C9BD000, v9, v10, "%@:CharacteristicRegistration scheduling characteristic deregistration", v11, 0xCu);
    sub_29C9C54B8(v12, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v12, -1, -1);
    MEMORY[0x29ED50000](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = [objc_opt_self() mainThreadScheduler];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29C9C5140;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29C9C220C;
  aBlock[3] = &unk_2A23EDDA0;
  v16 = _Block_copy(aBlock);

  v17 = [v14 afterDelay:v16 performBlock:5.0];
  swift_unknownObjectRelease();
  _Block_release(v16);
  *&v1[v6] = v17;
  return swift_unknownObjectRelease();
}

uint64_t sub_29C9C13F8()
{
  sub_29C9C64C4();
  sub_29C9C64B4();
  sub_29C9C64A4();

  v0[3] = sub_29C9C6444();
  v0[4] = sub_29C9C6684();
  v0[5] = sub_29C9C6674();
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C14BC, v2, v1);
}

uint64_t sub_29C9C14BC()
{

  *(v0 + 48) = sub_29C9C6434();

  return MEMORY[0x2A1C73D48](sub_29C9C1530, 0, 0);
}

uint64_t sub_29C9C1530()
{
  *(v0 + 56) = sub_29C9C6674();
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C15BC, v2, v1);
}

uint64_t sub_29C9C15BC()
{
  v1 = *(v0 + 48);

  sub_29C9C6424();

  v2 = *(v0 + 8);

  return v2();
}

void ControlCenterModule.controlCenterModuleViewController(_:didStartDisplaying:)(void *a1, void *a2)
{
  v5 = sub_29C9C6484();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v9 = a2;
  v10 = a1;
  v11 = v2;
  v12 = sub_29C9C6474();
  v13 = sub_29C9C66E4();

  v14 = 0x29F33C000uLL;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = v9;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v5;
    v18 = v17;
    *v16 = 138413058;
    *(v16 + 4) = v11;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v10;
    *v17 = v11;
    v17[1] = v10;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v15;
    v17[2] = a2;
    *(v16 + 32) = 1024;
    v19 = v11;
    v20 = v15;
    *(v16 + 34) = [v10 allowsCharacteristicNotifications];

    _os_log_impl(&dword_29C9BD000, v12, v13, "%@: controlCenterModuleViewController:%@ didStartDisplayingHome %@ allowsCharacteristicNotifications:%{BOOL}d", v16, 0x26u);
    sub_29C9BEF7C(&qword_2A179AF78, &qword_29C9C7230);
    swift_arrayDestroy();
    v21 = v18;
    v5 = v28;
    MEMORY[0x29ED50000](v21, -1, -1);
    v22 = v16;
    v9 = v15;
    v14 = 0x29F33C000;
    MEMORY[0x29ED50000](v22, -1, -1);
  }

  else
  {

    v12 = v10;
  }

  (*(v6 + 8))(v8, v5);
  if ([v10 *(v14 + 2160)] && (v23 = -[NSObject itemManager](v10, sel_itemManager), v24 = objc_msgSend(v23, sel_home), v23, v24))
  {
  }

  else
  {
    v9 = 0;
  }

  v25 = [objc_opt_self() sharedManager];
  v26 = sub_29C9C63D4();
  [v25 setModuleWithIdentifier:v26 subscribedToHome:v9];
}

uint64_t ControlCenterModule.launchHomeApp(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_29C9C6484();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29C9BEF7C(&unk_2A179AF80, &qword_29C9C7238);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_29C9C63A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6394();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_29C9C54B8(v10, &unk_2A179AF80, &qword_29C9C7238);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_29C9C6464();
  v16 = a1;
  v17 = sub_29C9C6474();
  v18 = sub_29C9C66E4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = v4;
    v22 = v21;
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v23 = v16;
    _os_log_impl(&dword_29C9BD000, v17, v18, "Launching Home app for moduleViewController %@", v20, 0xCu);
    sub_29C9C54B8(v22, &qword_2A179AF78, &qword_29C9C7230);
    v24 = v22;
    v4 = v29;
    MEMORY[0x29ED50000](v24, -1, -1);
    v25 = v20;
    v2 = v30;
    MEMORY[0x29ED50000](v25, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v26 = *(v2 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  if (v26)
  {
    v27 = v26;
    v28 = sub_29C9C6384();
    [v27 openURL:v28 completionHandler:0];
  }

  return (*(v12 + 8))(v14, v11);
}

char *sub_29C9C1E04(uint64_t a1)
{
  v1 = sub_29C9C6484();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29C9C6464();

  v5 = sub_29C9C6474();
  v6 = sub_29C9C66E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v7 + 4) = Strong;
    *v8 = Strong;
    _os_log_impl(&dword_29C9BD000, v5, v6, "%@:CharacteristicRegistration deregistering characteristic notifications", v7, 0xCu);
    sub_29C9C54B8(v8, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v8, -1, -1);
    MEMORY[0x29ED50000](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_29C9C20DC();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion;
    v15 = *(v12 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion);
    if (v15)
    {
      v16 = objc_opt_self();
      swift_unknownObjectRetain();
      v17 = [v16 sharedDispatcher];
      v18 = [v17 homeManager];

      [v18 _endActiveAssertion_];
      swift_unknownObjectRelease();
    }

    *&v13[v14] = 0;

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29C9C20DC()
{
  v1 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  result = MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration;
  v6 = *&v0[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration];
  if (v6)
  {
    v7 = sub_29C9C66A4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v8[5] = v6;

    v9 = v0;
    sub_29C9BF164(0, 0, v4, &unk_29C9C7328, v8);

    *&v0[v5] = 0;
  }

  return result;
}

uint64_t sub_29C9C220C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_29C9C2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_29C9C6404();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9C2310, 0, 0);
}

uint64_t sub_29C9C2310()
{
  v0[7] = sub_29C9C6444();
  v0[8] = sub_29C9C6684();
  v0[9] = sub_29C9C6674();
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C23B4, v2, v1);
}

uint64_t sub_29C9C23B4()
{

  *(v0 + 80) = sub_29C9C6434();

  return MEMORY[0x2A1C73D48](sub_29C9C2428, 0, 0);
}

uint64_t sub_29C9C2428(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v3 = v2[6];
  v5 = v2[4];
  v6 = v2[2];
  v7 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_moduleUniqueIdentifier;
  v8 = sub_29C9C63F4();
  (*(*(v8 - 8) + 16))(v3, v6 + v7, v8);
  (*(v4 + 104))(v3, *MEMORY[0x29EDC5410], v5);
  v2[11] = sub_29C9C6674();
  v10 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C2538, v10, v9);
}

uint64_t sub_29C9C2538()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  sub_29C9C6424();

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_29C9C25D4, 0, 0);
}

uint64_t sub_29C9C25D4()
{
  *(v0 + 96) = sub_29C9C6574();
  sub_29C9C64E4();
  *(v0 + 104) = sub_29C9C64D4();
  sub_29C9C5270(&qword_2A179AF70, MEMORY[0x29EDC52D0], MEMORY[0x29EDC52D8]);
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C26A4, v2, v1);
}

uint64_t sub_29C9C26A4()
{

  v0[14] = sub_29C9C6564();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_29C9C2750;
  v2 = v0[3];

  return MEMORY[0x2A1C67BC8](v2);
}

uint64_t sub_29C9C2750()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ControlCenterModule.configuration.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_29C9C6484();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9C2948, 0, 0);
}

uint64_t sub_29C9C2948()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
  v0[8] = v1;
  if (v1 && (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (v0[9] = v2) != 0))
  {
    v0[10] = sub_29C9C6684();
    v3 = v1;
    v0[11] = sub_29C9C6674();
    v5 = sub_29C9C6664();

    return MEMORY[0x2A1C73D48](sub_29C9C2AA0, v5, v4);
  }

  else
  {
    v6 = v0[2];
    v7 = sub_29C9C65F4();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_29C9C2AA0()
{
  v1 = v0[8];
  v2 = v0[9];

  v0[12] = [v2 itemManager];

  return MEMORY[0x2A1C73D48](sub_29C9C2B2C, 0, 0);
}

uint64_t sub_29C9C2B2C()
{
  v29 = v0;
  v1 = v0[12];
  sub_29C9C65E4();
  v2 = swift_dynamicCastClass();
  v0[13] = v2;
  if (v2)
  {
    v0[14] = sub_29C9C6674();
    v4 = sub_29C9C6664();

    return MEMORY[0x2A1C73D48](sub_29C9C2E18, v4, v3);
  }

  else
  {
    sub_29C9C6464();
    v5 = v1;
    v6 = sub_29C9C6474();
    v7 = sub_29C9C66D4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[12];
    v10 = v0[7];
    v11 = v0[8];
    v13 = v0[5];
    v12 = v0[6];
    if (v8)
    {
      v27 = v0[7];
      v14 = swift_slowAlloc();
      v26 = v11;
      v15 = swift_slowAlloc();
      v25 = v13;
      v16 = swift_slowAlloc();
      v28 = v16;
      *v14 = 136315394;
      v17 = sub_29C9C67C4();
      v19 = sub_29C9C372C(v17, v18, &v28);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v9;
      *v15 = v9;
      v20 = v9;
      _os_log_impl(&dword_29C9BD000, v6, v7, "%s: Failed to unwrap item manager to ControlCenterModuleItemManager: %@", v14, 0x16u);
      sub_29C9C54B8(v15, &qword_2A179AF78, &qword_29C9C7230);
      MEMORY[0x29ED50000](v15, -1, -1);
      sub_29C9C4D80(v16);
      MEMORY[0x29ED50000](v16, -1, -1);
      MEMORY[0x29ED50000](v14, -1, -1);

      (*(v12 + 8))(v27, v25);
    }

    else
    {

      (*(v12 + 8))(v10, v13);
    }

    v21 = v0[2];
    v22 = sub_29C9C65F4();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_29C9C2E18()
{

  sub_29C9C65D4();

  return MEMORY[0x2A1C73D48](sub_29C9C2E8C, 0, 0);
}

uint64_t sub_29C9C2E8C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = sub_29C9C65F4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29C9C2F44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29C9C2FDC;

  return ControlCenterModule.configuration.getter(a1);
}

uint64_t sub_29C9C2FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29C9C30D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C9C3110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9C56C4;

  return sub_29C9BEFDC(a1, v4, v5, v6);
}

void sub_29C9C31C4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_29C9C343C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_29C9C52B8(0, &qword_2A179B1A8, 0x29EDBB0C8);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_29C9C6714();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_29C9C6724();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_29C9C343C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29C9C6754())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_29C9C6784();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29C9C353C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29C9C3634;

  return v6(a1);
}

uint64_t sub_29C9C3634()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_29C9C372C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29C9C37F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29C9C4F2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29C9C4D80(v11);
  return v7;
}

unint64_t sub_29C9C37F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29C9C3904(a5, a6);
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
    result = sub_29C9C67A4();
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

void *sub_29C9C3904(uint64_t a1, unint64_t a2)
{
  v3 = sub_29C9C3950(a1, a2);
  sub_29C9C3A80(&unk_2A23EDCA0);
  return v3;
}

void *sub_29C9C3950(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29C9C3B6C(v5, 0);
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

  result = sub_29C9C67A4();
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
        v10 = sub_29C9C6644();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29C9C3B6C(v10, 0);
        result = sub_29C9C6794();
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

uint64_t sub_29C9C3A80(uint64_t result)
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

  result = sub_29C9C3BE0(result, v11, 1, v3);
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

void *sub_29C9C3B6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29C9BEF7C(&qword_2A179B190, &qword_29C9C7308);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29C9C3BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29C9BEF7C(&qword_2A179B190, &qword_29C9C7308);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

id _s33HomeControlCenterSingleTileModule0bcF0C21contentViewController3forSo011CCUIContentf7ContenthI0_So06UIViewI0CXcSo0kF19PresentationContextCSg_tF_0()
{
  v46[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController;
  v2 = *(v0 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
LABEL_10:
    v37 = v2;
    return v3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = objc_allocWithZone(MEMORY[0x29EDC7678]);
  v7 = sub_29C9C6604();
  v8 = [v6 initWithName:v7 bundle:v5];

  if (v8)
  {
    v44 = v8;
    v45 = v1;
    v9 = [v8 data];
    v10 = sub_29C9C63C4();
    v12 = v11;

    sub_29C9C6614();
    v13 = sub_29C9C63B4();
    v14 = sub_29C9C6604();

    v46[0] = 0;
    v15 = [objc_opt_self() packageWithData:v13 type:v14 options:0 error:v46];

    if (v15)
    {
      v16 = v46[0];
      sub_29C9C53F4(v10, v12);
      v17 = objc_opt_self();
      v42 = [v17 previewWithPackage:v15 forGridSize:{1, 2}];
      v41 = [v17 previewWithPackage:v15 forGridSize:{1, 4}];
      v43 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:25.0];
      v18 = [objc_allocWithZone(MEMORY[0x29EDC5398]) initWithSystemImageNamed:*MEMORY[0x29EDC5330] configuration:v43];
      v19 = objc_opt_self();
      v20 = [v19 systemWhiteColor];
      v21 = sub_29C9C6604();
      v22 = HULocalizedString();

      if (!v22)
      {
        sub_29C9C6614();
        v22 = sub_29C9C6604();
      }

      v23 = [v17 previewWithTemplate:v18 tintColor:v20 title:v22 subtitle:0 forGridSize:{2, 2}];

      v24 = [v19 systemWhiteColor];
      v25 = sub_29C9C6604();
      v26 = HULocalizedString();

      if (!v26)
      {
        sub_29C9C6614();
        v26 = sub_29C9C6604();
      }

      v27 = [v17 previewWithTemplate:v18 tintColor:v24 title:v26 subtitle:0 forGridSize:{2, 4}];

      sub_29C9BEF7C(&qword_2A179B1B0, &qword_29C9C7348);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_29C9C71E0;
      *(v28 + 32) = v42;
      *(v28 + 40) = v41;
      *(v28 + 48) = v23;
      *(v28 + 56) = v27;
      v29 = objc_allocWithZone(MEMORY[0x29EDC54A0]);
      sub_29C9C6704();
      v30 = v42;
      v31 = v41;
      v32 = v23;
      v33 = v27;
      v34 = sub_29C9C6654();

      v35 = [v29 initWithDelegate:v0 ofKind:1 withPreviews:v34];

      v36 = *(v0 + v45);
      *(v0 + v45) = v35;
      v3 = v35;

      v2 = 0;
      goto LABEL_10;
    }

    v39 = v46[0];
    v40 = sub_29C9C6374();

    swift_willThrow();
    sub_29C9C53F4(v10, v12);
  }

  result = sub_29C9C67B4();
  __break(1u);
  return result;
}

uint64_t _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_16moduleWillAppearySo09HUControlcfhI0C_SbtF_0()
{
  v1 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_29C9C6484();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v8 = v0;
  v9 = sub_29C9C6474();
  v10 = sub_29C9C66E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v20 = v4;
    v21 = v13;
    v14 = v8;
    *(v11 + 14) = sub_29C9C372C(0xD000000000000036, 0x800000029C9C7D30, &v21);
    _os_log_impl(&dword_29C9BD000, v9, v10, "%@-%s delegate called", v11, 0x16u);
    sub_29C9C54B8(v12, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v12, -1, -1);
    sub_29C9C4D80(v13);
    MEMORY[0x29ED50000](v13, -1, -1);
    MEMORY[0x29ED50000](v11, -1, -1);

    (*(v5 + 8))(v7, v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_29C9BF8A0();
  sub_29C9BFA60();
  v15 = [objc_opt_self() sharedManager];
  [v15 enterModuleViewWillAppear];

  v16 = sub_29C9C66A4();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_29C9BF164(0, 0, v3, &unk_29C9C7340, v18);
}

uint64_t sub_29C9C45A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C9C45E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9C56C4;

  return sub_29C9C0440(a1, v4, v5, v7, v6);
}

unint64_t sub_29C9C46A8()
{
  result = qword_2A179AF68;
  if (!qword_2A179AF68)
  {
    sub_29C9C470C(&qword_2A179AF60, &qword_29C9C7218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A179AF68);
  }

  return result;
}

uint64_t sub_29C9C470C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29C9C4754()
{
  MEMORY[0x29ED50080](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9C478C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29C9C47EC(uint64_t a1)
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
  v11[1] = sub_29C9C56C4;

  return sub_29C9C0620(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_18moduleDidDisappearySo09HUControlcfhI0C_SbtF_0()
{
  v1 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_29C9C6404();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v37 = v7;
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - v8;
  v10 = sub_29C9C6484();
  v36 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v13 = v0;
  v14 = sub_29C9C6474();
  v15 = sub_29C9C66E4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v3;
    v20 = v19;
    v39 = v19;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v18 = v13;
    *(v16 + 12) = 2080;
    v33 = v10;
    v21 = v13;
    *(v16 + 14) = sub_29C9C372C(0xD000000000000038, 0x800000029C9C7CF0, &v39);
    _os_log_impl(&dword_29C9BD000, v14, v15, "%@-%s delegate called", v16, 0x16u);
    sub_29C9C54B8(v18, &qword_2A179AF78, &qword_29C9C7230);
    v22 = v18;
    v9 = v34;
    MEMORY[0x29ED50000](v22, -1, -1);
    sub_29C9C4D80(v20);
    v23 = v20;
    v3 = v35;
    MEMORY[0x29ED50000](v23, -1, -1);
    MEMORY[0x29ED50000](v16, -1, -1);

    (*(v36 + 8))(v12, v33);
  }

  else
  {

    (*(v36 + 8))(v12, v10);
  }

  v24 = [objc_opt_self() sharedManager];
  [v24 exitModuleViewDidDisappear];

  sub_29C9C1124();
  v25 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_moduleUniqueIdentifier;
  v26 = sub_29C9C63F4();
  (*(*(v26 - 8) + 16))(v9, &v13[v25], v26);
  (*(v5 + 104))(v9, *MEMORY[0x29EDC5410], v4);
  v27 = sub_29C9C66A4();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
  v28 = v38;
  (*(v5 + 16))(v38, v9, v4);
  v29 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v5 + 32))(v30 + v29, v28, v4);
  sub_29C9BF164(0, 0, v3, &unk_29C9C7318, v30);

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_29C9C4D80(void *a1)
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

uint64_t type metadata accessor for ControlCenterModule(uint64_t a1)
{
  result = qword_2A179AFF0;
  if (!qword_2A179AFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29C9C4E20(uint64_t a1, uint64_t a2)
{
  result = sub_29C9C63F4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_29C9C4EC4()
{
  result = qword_2A179B188;
  if (!qword_2A179B188)
  {
    sub_29C9C52B8(255, &qword_2A179B180, 0x29EDC53A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A179B188);
  }

  return result;
}

uint64_t sub_29C9C4F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29C9C4F8C()
{
  v1 = sub_29C9C6404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29C9C5050(uint64_t a1)
{
  v4 = *(sub_29C9C6404() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9C56C4;

  return sub_29C9C13D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_29C9C5148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29C9C5160()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C9C51A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9C56C4;

  return sub_29C9C2250(a1, v4, v5, v7, v6);
}

uint64_t sub_29C9C5270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29C9C52B8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_29C9C5300()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C9C5340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9C2FDC;

  return sub_29C9BFBD8(a1, v4, v5, v6);
}

uint64_t sub_29C9C53F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29C9C5448(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C9C54B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C9BEF7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C9C5518()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C9C5550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C9C56C4;

  return sub_29C9C353C(a1, v4);
}

uint64_t sub_29C9C5608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C9C2FDC;

  return sub_29C9C353C(a1, v4);
}

void sub_29C9C56C8()
{
  v1 = v0;
  v2 = sub_29C9C6484();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v6 = sub_29C9C6474();
  v7 = sub_29C9C66E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_29C9BD000, v6, v7, "Registering for lock state notifications", v8, 2u);
    MEMORY[0x29ED50000](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  if (*(v1 + 16) == -1)
  {
    v9 = *MEMORY[0x29EDC5D48];
    sub_29C9C5F98();
    v10 = sub_29C9C66F4();
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_29C9C601C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29C9C5D38;
    aBlock[3] = &unk_2A23EDE90;
    v12 = _Block_copy(aBlock);

    swift_beginAccess();
    notify_register_dispatch(v9, (v1 + 16), v10, v12);
    swift_endAccess();
    _Block_release(v12);
  }
}

uint64_t sub_29C9C5918()
{
  v1 = v0;
  v2 = sub_29C9C6484();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v6 = sub_29C9C6474();
  v7 = sub_29C9C66E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_29C9BD000, v6, v7, "Unregistering lock state notifications", v8, 2u);
    MEMORY[0x29ED50000](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = *(v1 + 16);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(v1 + 16) = -1;
  }

  return result;
}

uint64_t sub_29C9C5A88()
{
  *(v0 + 32) = 0;
  swift_unknownObjectWeakAssign();
  sub_29C9C5918();
  sub_29C9C5AF8(v0 + 24);

  return MEMORY[0x2A1C73398](v0, 40, 7);
}

uint64_t sub_29C9C5B20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29C9C5B78();
  }

  return result;
}

uint64_t sub_29C9C5B78()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29C9C603C();
  sub_29C9C6464();
  v5 = sub_29C9C6474();
  v6 = sub_29C9C66E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4;
    _os_log_impl(&dword_29C9BD000, v5, v6, "Access allowed for current lock state is %{BOOL}d, updating delegate", v7, 8u);
    MEMORY[0x29ED50000](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
    if (v9)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        [v11 setAccessAllowedForCurrentLockState_];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29C9C5D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

BOOL sub_29C9C5D8C()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - v5;
  sub_29C9C6464();
  v7 = sub_29C9C6474();
  v8 = sub_29C9C66E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29C9BD000, v7, v8, "Checking if device is unlocked", v9, 2u);
    MEMORY[0x29ED50000](v9, -1, -1);
  }

  v10 = *(v1 + 8);
  v10(v6, v0);
  v11 = MKBGetDeviceLockState();
  sub_29C9C6464();
  v12 = sub_29C9C6474();
  v13 = sub_29C9C66E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_29C9BD000, v12, v13, "Lock state is %d", v14, 8u);
    MEMORY[0x29ED50000](v14, -1, -1);
  }

  v10(v4, v0);
  return !v11 || v11 == 3;
}

unint64_t sub_29C9C5F98()
{
  result = qword_2A179B1C8;
  if (!qword_2A179B1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A179B1C8);
  }

  return result;
}

uint64_t sub_29C9C5FE4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9C6024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_29C9C603C()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v25 - v6;
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v25 - v8;
  sub_29C9C6464();
  v10 = sub_29C9C6474();
  v11 = sub_29C9C66E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_29C9BD000, v10, v11, "Checking if access is allowed for current lock state", v12, 2u);
    MEMORY[0x29ED50000](v12, -1, -1);
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v14 = [objc_opt_self() sharedDispatcher];
  v15 = [v14 homeManager];

  if (v15 && (v16 = [v15 isAccessAllowedWhenLocked], v15, v16))
  {
    sub_29C9C6464();
    v17 = sub_29C9C6474();
    v18 = sub_29C9C66E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_29C9BD000, v17, v18, "Home manager doesn't care about lock state, returning YES", v19, 2u);
      MEMORY[0x29ED50000](v19, -1, -1);
    }

    v13(v7, v0);
    return 1;
  }

  else
  {
    sub_29C9C6464();
    v21 = sub_29C9C6474();
    v22 = sub_29C9C66E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_29C9BD000, v21, v22, "Home manager does care, checking lock state", v23, 2u);
      MEMORY[0x29ED50000](v23, -1, -1);
    }

    v13(v4, v0);
    return sub_29C9C5D8C();
  }
}