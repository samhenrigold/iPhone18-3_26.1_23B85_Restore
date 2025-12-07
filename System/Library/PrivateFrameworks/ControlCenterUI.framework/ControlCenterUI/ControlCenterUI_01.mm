double sub_21EA4F918(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_21EA4F96C(int a1, uint64_t a2)
{
  state64[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    state64[0] = 0;
    state = notify_get_state(a1, state64);
    if (!state)
    {
      sub_21EA50A74(state, v6);
    }
  }
}

uint64_t sub_21EA4FA90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_bundleIdentifierState);
  if (!*(v3 + 16))
  {
    return 4;
  }

  v6 = sub_21EA49DF4(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 8 * v6);
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

void sub_21EA4FB70(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >= 4)
  {
    if (a1 != 4)
    {
      sub_21EAA9540();
      __break(1u);
    }
  }

  else
  {
    v10 = [objc_allocWithZone(type metadata accessor for CCUIGamePolicyProxy()) init];
    v11 = sub_21EA4EB0C();
    v12 = [v11 remoteObjectProxy];

    sub_21EAA9320();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCBE8, &qword_21EAB68E8);
    if (swift_dynamicCast())
    {
      v13 = aBlock[6];
      v14 = sub_21EAA8DC0();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = v15;
      v16[4] = a4;
      v16[5] = a5;
      v16[6] = a2;
      v16[7] = a3;
      aBlock[4] = sub_21EA518C8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA4FFB0;
      aBlock[3] = &block_descriptor_11;
      v17 = _Block_copy(aBlock);
      v18 = v10;

      [v13 requestCCUISetGameModeInfoWithState:a1 bundleIdentifier:v14 withReply:v17];
      _Block_release(v17);

      swift_unknownObjectRelease();
    }

    else
    {

      a4(4);
    }
  }
}

void sub_21EA4FDB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  [*(a2 + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection) invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4(4);
    return;
  }

  v11 = Strong;
  v12 = sub_21EAA8610();
  v13 = v12;
  v22 = a4;
  if (v12 >> 62)
  {
LABEL_22:
    v14 = sub_21EAA9380();
    if (v14)
    {
LABEL_4:
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223D67210](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        if (sub_21EAA8650() == a6 && v19 == a7)
        {
          break;
        }

        v20 = sub_21EAA9530();

        if (v20)
        {
          goto LABEL_17;
        }

        ++v15;
        if (v18 == v14)
        {
          goto LABEL_23;
        }
      }

LABEL_17:

      v21 = sub_21EAA8670();
      if (v21 >= 4)
      {
        v21 = 4;
      }

      v22(v21);

      goto LABEL_24;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }
  }

LABEL_23:

  v22(4);
LABEL_24:
  sub_21EA50138(a1);
}

void sub_21EA4FFB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_21EA500BC()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = 8;
  v3[0] = 0;
  return sysctlbyname("kern.console_mode", v3, &v2, 0, 0) != -1 && v3[0] == 1;
}

unint64_t sub_21EA50138(void *a1)
{
  v2 = sub_21EAA8CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21EAA8D10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v10 = sub_21EA511B0(MEMORY[0x277D84F90]);
  if (v9 >> 62 && sub_21EAA9380())
  {
    sub_21EA5848C(MEMORY[0x277D84F90]);
    v11 = v38;
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v50 = v11;
  v42 = a1;
  result = sub_21EAA8610();
  v13 = result;
  if (result >> 62)
  {
    result = sub_21EAA9380();
    v14 = result;
  }

  else
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v5;
  v46 = v6;
  v44 = v7;
  if (!v14)
  {

    v15 = 0;
LABEL_20:
    sub_21E9F8880(0, &qword_28125B7F0, 0x277D85C78);
    v30 = sub_21EAA90C0();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v10;
    v33 = v42;
    *(v32 + 32) = v11;
    *(v32 + 40) = v33;
    *(v32 + 48) = v15 & 1;
    aBlock[4] = sub_21EA51E1C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA87FF0;
    aBlock[3] = &block_descriptor_55;
    v34 = _Block_copy(aBlock);
    v35 = v33;

    v36 = v43;
    sub_21EAA8CF0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21EA51E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40, &qword_21EAB7090);
    sub_21EA51E84();
    v37 = v45;
    sub_21EAA9340();
    MEMORY[0x223D66E90](0, v36, v37, v34);
    _Block_release(v34);

    (*(v3 + 8))(v37, v2);
    return (*(v44 + 8))(v36, v46);
  }

  if (v14 >= 1)
  {
    v40 = v3;
    v41 = v2;
    v15 = 0;
    v16 = 0;
    v47 = "icySupport";
    v48 = v13 & 0xC000000000000001;
    do
    {
      if (v48)
      {
        v17 = MEMORY[0x223D67210](v16, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = sub_21EAA8650();
      v21 = v20;
      v22 = sub_21EAA8670();
      if (v22 >= 4)
      {
        v23 = 4;
      }

      else
      {
        v23 = v22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v10;
      sub_21EA65A88(v23, v19, v21, isUniquelyReferenced_nonNull_native);

      v10 = aBlock[0];
      v25 = [objc_allocWithZone(MEMORY[0x277CFC9B8]) init];
      [v25 setSensorType_];
      sub_21EAA8660();
      v26 = sub_21EAA8DC0();

      [v25 setExecutableDisplayName_];

      sub_21EAA8650();
      v27 = sub_21EAA8DC0();

      [v25 setBundleIdentifier_];

      v28 = sub_21EAA8DC0();
      [v25 setAttributionGroup_];

      [v25 setWebsite_];
      [v25 setIsSystemService_];
      [v25 setUsedRecently_];
      v29 = v25;
      sub_21EA559F8(aBlock, v29);

      if (v15)
      {
        v15 = 1;
      }

      else
      {
        v15 = sub_21EAA8680();
      }

      ++v16;
    }

    while (v14 != v16);

    v11 = v50;
    v3 = v40;
    v2 = v41;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

_BYTE *sub_21EA506C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_21EAA8620();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    *&result[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_bundleIdentifierState] = a2;

    v17 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData;
    swift_beginAccess();
    *&v16[v17] = a3;

    v18 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
    swift_beginAccess();
    v29 = v18;
    v19 = *&v16[v18];
    sub_21EAA8600();
    (*(v9 + 16))(v11, v14, v8);
    v20 = (*(v9 + 88))(v11, v8);
    v21 = 0;
    if (v20 != *MEMORY[0x277D0C970])
    {
      if (v20 == *MEMORY[0x277D0C950])
      {
        v21 = 1;
      }

      else if (v20 == *MEMORY[0x277D0C968])
      {
        v21 = 2;
      }

      else if (v20 == *MEMORY[0x277D0C958])
      {
        v21 = 3;
      }

      else
      {
        if (v20 != *MEMORY[0x277D0C960])
        {
          goto LABEL_25;
        }

        v21 = 4;
      }
    }

    (*(v9 + 8))(v14, v8);
    *&v16[v29] = v21;
    v22 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
    swift_beginAccess();
    v16[v22] = a5 & 1;
    v23 = [*&v16[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC50, &unk_21EAB6B00);
    v24 = sub_21EAA8EC0();

    if (v24 >> 62)
    {
      v25 = sub_21EAA9380();
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_13:
        if (v25 >= 1)
        {
          for (i = 0; i != v25; ++i)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x223D67210](i, v24);
            }

            else
            {
              v27 = *(v24 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            [v27 gameModeActivitiesDidChange];
            if (v19 != v21)
            {
              [v27 gameModeStateDidChange_];
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_25:
        result = sub_21EAA9520();
        __break(1u);
        return result;
      }
    }

LABEL_22:
  }

  return result;
}

void sub_21EA50A74(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(type metadata accessor for CCUIGamePolicyProxy()) init];
  v3 = sub_21EA4EB0C();
  v4 = [v3 remoteObjectProxy];

  sub_21EAA9320();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCBE8, &qword_21EAB68E8);
  if (swift_dynamicCast())
  {
    v5 = v19[7];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v19[4] = sub_21EA51E14;
    v19[5] = v7;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_21EA4FFB0;
    v19[3] = &block_descriptor_48;
    v8 = _Block_copy(v19);
    v9 = v2;

    [v5 requestCCUIGameModeStatusInfoWithReply_];
    _Block_release(v8);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_21EA51D58();
    v10 = swift_allocError();
    swift_willThrow();

    if (qword_27CEDBC00 != -1)
    {
      swift_once();
    }

    v11 = sub_21EAA8790();
    __swift_project_value_buffer(v11, qword_27CEDF0C8);
    v12 = v10;
    v13 = sub_21EAA8760();
    v14 = sub_21EAA8FE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_21E9F5000, v13, v14, "Unable to request game mode status %@", v15, 0xCu);
      sub_21EA51DAC(v16);
      MEMORY[0x223D68580](v16, -1, -1);
      MEMORY[0x223D68580](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21EA50D6C(void *a1, uint64_t a2, uint64_t a3)
{
  [*(a2 + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection) invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_21EA50138(a1);
  }
}

id CCUIGameModeActivityDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CCUIGameModeActivityDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21EA50E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC20, &unk_21EAB7000);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21EA49DF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA50F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC60, &unk_21EAB6B10);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 52); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 3);
      v7 = *(i - 4);
      v8 = *i;
      sub_21EA4E7C8(v5, v6, v7);
      result = sub_21EA49FAC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 4 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA5108C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCB98, &qword_21EAB67F0);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_21EA4E7C8(v5, v6, v7);
      result = sub_21EA49FAC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA511B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCF30, &qword_21EAB6B48);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21EA49DF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA512AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC90, &qword_21EAB6B40);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21EA49DF4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA513B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC88, &qword_21EAB6F70);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21EA49DF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA514FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21EA49DF4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA515F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF20, &qword_21EAB79D0);
    v3 = sub_21EAA94E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_21EA51CD8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_21EA49DF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21EA51D48(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA51708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC18, &unk_21EAB6AE0);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_21EA4A554();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21EA51800(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21EA51834()
{
  result = qword_28125BB38[0];
  if (!qword_28125BB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28125BB38);
  }

  return result;
}

unint64_t sub_21EA518D0()
{
  result = qword_27CEDCBF0;
  if (!qword_27CEDCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCBF0);
  }

  return result;
}

unint64_t sub_21EA51C84()
{
  result = qword_27CEDCC00;
  if (!qword_27CEDCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCC00);
  }

  return result;
}

uint64_t sub_21EA51CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC10, &unk_21EAB6AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_21EA51D48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21EA51D58()
{
  result = qword_27CEDCC28;
  if (!qword_27CEDCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCC28);
  }

  return result;
}

uint64_t sub_21EA51DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC30, &unk_21EAB6AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21EA51E2C()
{
  result = qword_28125B890;
  if (!qword_28125B890)
  {
    sub_21EAA8CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B890);
  }

  return result;
}

unint64_t sub_21EA51E84()
{
  result = qword_28125B860;
  if (!qword_28125B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEDCC40, &qword_21EAB7090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B860);
  }

  return result;
}

void sub_21EA51EE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  if (a1 >= 4)
  {
    if (a1 == 4)
    {
      _Block_copy(a5);
    }

    else
    {

      aBlock[0] = a1;
      sub_21EAA9540();
      __break(1u);
    }
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for CCUIGamePolicyProxy());
    _Block_copy(a5);
    v11 = [v10 init];
    v12 = sub_21EA4EB0C();
    v13 = [v12 remoteObjectProxy];

    sub_21EAA9320();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCBE8, &qword_21EAB68E8);
    if (swift_dynamicCast())
    {
      v14 = aBlock[6];
      v15 = sub_21EAA8DC0();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v11;
      v17[3] = v16;
      v17[4] = sub_21EA4C65C;
      v17[5] = v9;
      v17[6] = a2;
      v17[7] = a3;
      aBlock[4] = sub_21EA523AC;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA4FFB0;
      aBlock[3] = &block_descriptor_66;
      v18 = _Block_copy(aBlock);
      v19 = v11;

      [v14 requestCCUISetGameModeInfoWithState:a1 bundleIdentifier:v15 withReply:v18];
      _Block_release(v18);

      swift_unknownObjectRelease();
    }

    else
    {

      a5[2](a5, 4);
    }
  }
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21EA5222C(unsigned int *a1, int a2)
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

_WORD *sub_21EA5227C(_WORD *result, int a2, int a3)
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

unint64_t sub_21EA5230C()
{
  result = qword_27CEDCCA0;
  if (!qword_27CEDCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCCA0);
  }

  return result;
}

Swift::Void __swiftcall UIView.ccui_applyGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_21EAA8840();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21EAA8880();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-1] - v7;
  sub_21EAA8810();
  sub_21EAA8890();
  sub_21EAA8870();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v11[3] = v2;
  v11[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_21EAA8850();
  v9(v8, v2);
  sub_21EAA91D0();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_21EA525E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21EAA8840();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21EAA8880();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-1] - v10;
  v12 = a1;
  sub_21EAA8810();
  sub_21EAA8890();
  sub_21EAA8870();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v15[3] = v5;
  v15[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_21EAA8850();
  v13(v11, v5);
  sub_21EAA91D0();
}

Swift::Void __swiftcall UIView.ccui_applySubduedGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_21EAA8840();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v6 = sub_21EAA8880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-1] - v11;
  sub_21EAA8810();
  sub_21EAA8800();
  (*(v2 + 8))(v4, v1);
  sub_21EAA8890();
  sub_21EAA8870();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v15[3] = v6;
  v15[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_21EAA8850();
  v13(v12, v6);
  sub_21EAA91D0();
}

void sub_21EA529D8(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIView.ccui_applySubduedGlass(grouping:)(a3);
}

Swift::Void __swiftcall UIView.ccui_applyClearGlass()()
{
  v0 = sub_21EAA8840();
  MEMORY[0x28223BE20](v0 - 8);
  sub_21EAA8820();
  v1[3] = sub_21EAA8880();
  v1[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_21EAA8890();
  sub_21EAA91D0();
}

void sub_21EA52AD0(void *a1)
{
  v2 = sub_21EAA8840();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1;
  sub_21EAA8820();
  v4[3] = sub_21EAA8880();
  v4[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_21EAA8890();
  sub_21EAA91D0();
}

Swift::Void __swiftcall UIView.ccui_applyGlass(with:)(UIColor with)
{
  v1 = sub_21EAA8840();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21EAA8880();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8830();
  sub_21EAA8890();
  v7[3] = v2;
  v7[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_21EAA8860();
  (*(v3 + 8))(v5, v2);
  sub_21EAA91D0();
}

void sub_21EA52CE0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_21EAA8840();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21EAA8880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = a1;
  sub_21EAA8830();
  sub_21EAA8890();
  v13[3] = v6;
  v13[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_21EAA8860();
  (*(v7 + 8))(v9, v6);
  sub_21EAA91D0();
}

void sub_21EA52E88(void *a1)
{
  v1 = a1;
  sub_21EAA91D0();
}

void sub_21EA52F74(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A0, &unk_21EAB6C38);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  if ([v1 isEnabled] != v3)
  {
    v8 = [v1 layer];
    sub_21EAA92E0();
    v9 = sub_21EAA92D0();
    if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
    {
      goto LABEL_6;
    }

    sub_21EA53C48(v7);
    do
    {
      v10 = [v1 tintColor];
      if (v10)
      {
        break;
      }

      __break(1u);
LABEL_6:
      v10 = sub_21EAA9260();
      sub_21EA53C48(v7);
    }

    while (!v10);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v46 = v11;
    v12 = v8;
    v45 = v10;
    v13 = [v12 filters];
    v14 = MEMORY[0x277CDA640];
    v47 = v12;
    if (v13)
    {
      v44 = v1;
      v12 = MEMORY[0x277D84F70];
      v15 = v13;
      v16 = sub_21EAA8EC0();

      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = 0;
        v19 = v16 + 32;
        v2 = 0x277CD9EA0;
        while (1)
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          sub_21E9FE6EC(v19, &aBlock);
          sub_21E9FE6EC(&aBlock, v49);
          sub_21E9F8880(0, &unk_28125B708, 0x277CD9EA0);
          if (!swift_dynamicCast())
          {
            break;
          }

          v20 = v48;
          v21 = [v48 name];

          if (!v21)
          {
            break;
          }

          v22 = sub_21EAA8E00();
          v24 = v23;

          v25 = sub_21EAA8E00();
          if (!v24)
          {
            v12 = MEMORY[0x277D84F70];
            goto LABEL_11;
          }

          if (v22 == v25 && v24 == v26)
          {

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_33:

            v37 = 0;
            v35 = 0;
            v2 = v44;
            goto LABEL_30;
          }

          v27 = sub_21EAA9530();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v12 = MEMORY[0x277D84F70];
          if (v27)
          {
            goto LABEL_33;
          }

LABEL_12:
          ++v18;
          v19 += 32;
          if (v17 == v18)
          {
            goto LABEL_22;
          }
        }

        sub_21EAA8E00();
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(&aBlock);

        goto LABEL_12;
      }

LABEL_22:

      v2 = v44;
      v12 = v47;
      v14 = MEMORY[0x277CDA640];
    }

    v28 = [v12 filters];
    if (v28)
    {
      v29 = v28;
      v16 = sub_21EAA8EC0();
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v18 = v46;
    v30 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v52 = sub_21E9F8880(0, &unk_28125B708, 0x277CD9EA0);
    *&aBlock = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_35:
      v16 = sub_21EA48258(0, *(v16 + 16) + 1, 1, v16);
    }

    v32 = *(v16 + 16);
    v31 = *(v16 + 24);
    if (v32 >= v31 >> 1)
    {
      v16 = sub_21EA48258((v31 > 1), v32 + 1, 1, v16);
    }

    *(v16 + 16) = v32 + 1;
    sub_21EA51D48(&aBlock, (v16 + 32 * v32 + 32));
    v33 = sub_21EAA8EB0();

    [v12 setFilters_];

    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v35[2] = sub_21EA53CB0;
    v35[3] = v18;
    v35[4] = v2;
    v36 = swift_allocObject();
    v37 = sub_21EA53CB8;
    *(v36 + 16) = sub_21EA53CB8;
    *(v36 + 24) = v35;
    v53 = sub_21EA4C654;
    v54 = v36;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v51 = sub_21EA89FB8;
    v52 = &block_descriptor_3;
    v38 = _Block_copy(&aBlock);

    v39 = v2;

    [v34 performWithoutAnimation_];
    _Block_release(v38);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if (v38)
    {
      __break(1u);
    }

    else
    {
LABEL_30:
      v40 = [v2 isEnabled];
      v41 = v45;
      v42 = v47;
      sub_21EA535A4(v40, v45, v47);

      sub_21EA4C674(v37, v35);
    }
  }
}

void sub_21EA535A4(char a1, id a2, void *a3)
{
  if (a1)
  {
    sub_21EA42D10();
    CAColorMatrixMakeColorSourceOver();
  }

  else
  {
    v4 = [a2 colorWithAlphaComponent_];
    sub_21EA42D10();
    CAColorMatrixMakePlusL();
  }

  v7[2] = v7[7];
  v7[3] = v7[8];
  v7[4] = v7[9];
  v7[0] = v7[5];
  v7[1] = v7[6];
  v5 = [objc_opt_self() valueWithCAColorMatrix_];
  if (qword_28125B868 != -1)
  {
    swift_once();
  }

  v6 = sub_21EAA8DC0();
  [a3 setValue:v5 forKeyPath:v6];
}

id sub_21EA536F0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccessoryButton();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_21EA53784(char a1)
{
  v3 = type metadata accessor for AccessoryButton();
  v8.receiver = v1;
  v8.super_class = v3;
  v4 = objc_msgSendSuper2(&v8, sel_isHighlighted);
  v7.receiver = v1;
  v7.super_class = v3;
  objc_msgSendSuper2(&v7, sel_setHighlighted_, a1 & 1);
  result = [v1 isHighlighted];
  if (v4 != result)
  {
    [v1 isHighlighted];
    v6 = sub_21E9F8880(0, &unk_28125B720, 0x277D75D18);
    MEMORY[0x28223BE20](v6);
    return sub_21EAA91F0();
  }

  return result;
}

id AccessoryButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AccessoryButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AccessoryButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AccessoryButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AccessoryButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AccessoryButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AccessoryButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA53B44(uint64_t a1, uint64_t a2)
{
  v2 = sub_21EAA8E00();
  MEMORY[0x223D66C10](v2);

  MEMORY[0x223D66C10](46, 0xE100000000000000);
  v3 = sub_21EAA8E00();
  MEMORY[0x223D66C10](v3);

  qword_28125B870 = 0x2E737265746C6966;
  *algn_28125B878 = 0xE800000000000000;
  return result;
}

id sub_21EA53BE8()
{
  v1 = *(v0 + 16);
  v2 = [v1 isHighlighted];
  v3 = 0.4;
  if (!v2)
  {
    v3 = 1.0;
  }

  return [v1 setAlpha_];
}

uint64_t sub_21EA53C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A0, &unk_21EAB6C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CCUIStretchApplier.init(parameters:)(double a1, double a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithParameters_];
}

{
  v7 = &v3[OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleMagnitude];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleScalarMagnitude];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR___CCUIStretchApplier_baseEffectiveTranslation];
  v10 = MEMORY[0x277D84F90];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (v10 >> 62 && sub_21EAA9380())
  {
    sub_21EA5877C(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *&v3[OBJC_IVAR___CCUIStretchApplier_stretchSources] = v11;
  v12 = OBJC_IVAR___CCUIStretchApplier_transformersByStretchSource;
  *&v3[v12] = [objc_opt_self() strongToStrongObjectsMapTable];
  v13 = OBJC_IVAR___CCUIStretchApplier_stretchables;
  *&v3[v13] = [objc_opt_self() weakObjectsHashTable];
  v14 = &v3[OBJC_IVAR___CCUIStretchApplier_parameters];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v16.receiver = v3;
  v16.super_class = CCUIStretchApplier;
  return objc_msgSendSuper2(&v16, sel_init);
}

id CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = _s14_StretchSourceCMa();
  v15 = objc_allocWithZone(v14);
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue] = 0;
  v16 = &v15[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  *&v15[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_primaryAxis] = a1;
  swift_unknownObjectWeakAssign();
  v25.receiver = v15;
  v25.super_class = v14;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  v18 = [v7 stretchSources];
  sub_21EA58A64();
  v19 = sub_21EAA8F60();

  sub_21EA55A1C(&v24, v17);
  v20 = sub_21EAA8F50();

  [v7 setStretchSources_];

  if (a2)
  {

    v21 = [v7 transformersByStretchSource];
    _s21StretchTransformerBoxCMa();
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;

    [v21 setObject:v22 forKey:v17];

    sub_21E9FFAF0(a2, a3);
  }

  [v7 updateStretchForChangedSource_];
  return v17;
}

id CCUIStretchApplier.__addStretchSource(with:primaryAxis:stretchTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    sub_21EA58AE0(a2, a3);

    v14 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(a1, sub_21EA58ADC, v13, a4, a5, a6);

    sub_21E9FFAF0(a2, a3);
    return v14;
  }

  else
  {
    v16 = [v6 addStretchSourceWithParameters:a1 primaryAxis:{a4, a5, a6}];

    return v16;
  }
}

id CCUIStretchApplier.beginApplyingStretch(to:)(uint64_t a1)
{
  v3 = [v1 stretchables];
  [v3 addObject_];

  return [v1 applyStretchTo:a1 applyScale:1 applyTranslation:1];
}

void CCUIStretchApplier.endApplyingStretch(to:)(uint64_t a1)
{
  v3 = [v1 stretchables];
  v4 = [v3 containsObject_];

  if (v4)
  {
    v5 = [v1 stretchables];
    [v5 removeObject_];

    [v1 applyWithScale:a1 to:{1.0, 1.0}];

    [v1 applyWithTranslation:a1 to:{0.0, 0.0}];
  }
}

void sub_21EA5492C()
{
  v1 = v0;
  v2 = [v0 stretchSources];
  _s14_StretchSourceCMa();
  sub_21EA58A64();
  v3 = sub_21EAA8F60();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_21EAA9370();
    sub_21EAA8F90();
    v3 = v37;
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  while (v3 < 0)
  {
    if (!sub_21EAA93A0() || (swift_dynamicCast(), (v20 = v36) == 0))
    {
LABEL_31:
      sub_21E9FBFD4(v3);
      [v1 setBaseEffectiveScaleMagnitude_];
      [v1 setBaseEffectiveScaleScalarMagnitude_];
      [v1 setBaseEffectiveTranslation_];
      return;
    }

LABEL_17:
    v21 = [v1 transformersByStretchSource];
    v22 = [v21 objectForKey_];

    if (v22)
    {
    }

    else
    {
      v23 = *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue];
      v24 = *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
      v34 = v15;
      v35 = v14;
      v25 = v23 * *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 8];
      v26 = v23 * *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 16];
      v27 = *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_primaryAxis];

      v28 = -(v23 * v24);
      v29 = 0.0;
      v30 = -v25;
      if (v27)
      {
        v31 = v23 * v24;
      }

      else
      {
        v31 = -(v23 * v24);
      }

      if (v27)
      {
        v32 = v25;
      }

      else
      {
        v28 = v23 * v24;
        v32 = -v25;
      }

      if (v27)
      {
        v33 = v26;
      }

      else
      {
        v30 = v25;
        v33 = 0.0;
      }

      if (!v27)
      {
        v29 = v26;
      }

      v17 = v17 + v31;
      v16 = v16 + v28;
      v15 = v34 + v32;
      v14 = v35 + v30;
      v13 = v13 + v33;
      v12 = v12 + v29;
    }
  }

  v18 = v6;
  v19 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v19 - 1) & v19;
    v20 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_31;
    }

    v19 = *(v4 + 8 * v6);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_21EA54C9C(void *a1)
{
  v2 = v1;
  v4 = sub_21EA54E18();
  [a1 parameters];
  IsZero = BSFloatIsZero();
  v6 = [v2 stretchables];
  v7 = [v6 allObjects];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD28, &qword_21EAB6C88);
  v8 = sub_21EAA8EC0();

  if (v8 >> 62)
  {
    v9 = sub_21EAA9380();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D67210](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v2 applyStretchTo:v11 applyScale:v4 & 1 applyTranslation:IsZero ^ 1u];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

uint64_t sub_21EA54E18()
{
  [v0 parameters];
  if (!BSFloatIsZero())
  {
    return 1;
  }

  [v0 parameters];
  return BSFloatIsZero() ^ 1;
}

void sub_21EA54ED4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v60 = a1;
  v7 = sub_21EAA83E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 baseEffectiveScaleMagnitude];
  v62 = v12;
  v14 = v13;
  [v3 baseEffectiveScaleScalarMagnitude];
  v61 = v15;
  v17 = v16;
  [v3 baseEffectiveTranslation];
  v19 = v18;
  v21 = v20;
  v22 = [v3 transformersByStretchSource];
  v23 = [v22 keyEnumerator];

  sub_21EAA8FB0();
  sub_21EAA83D0();
  if (v70)
  {
    v57 = v7;
    v56 = v8;
    while (1)
    {
      while (1)
      {
        sub_21EA51D48(&v69, &v63);
        _s14_StretchSourceCMa();
        swift_dynamicCast();
        v24 = v68;
        if (a2)
        {
          [v68 parameters];
          if (!BSFloatIsZero())
          {
            break;
          }

          [v24 parameters];
          if (!BSFloatIsZero())
          {
            break;
          }
        }

        if (a3)
        {
          [v24 parameters];
          if ((BSFloatIsZero() & 1) == 0)
          {
            break;
          }
        }

        sub_21EAA83D0();
        if (!v70)
        {
          goto LABEL_24;
        }
      }

      v25 = v14;
      v58 = v19;
      v59 = v21;
      v26 = v4;
      v27 = [v4 transformersByStretchSource];
      v28 = [v27 objectForKey_];

      if (!v28)
      {
        break;
      }

      v29 = v28[2];

      v31.n128_u64[0] = *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue];
      v32.n128_f64[0] = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
      v33.n128_f64[0] = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 8];
      v34 = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 16];
      v35 = *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_primaryAxis];
      v36.n128_f64[0] = -v32.n128_f64[0];
      v37.n128_f64[0] = -v33.n128_f64[0];
      if (v35)
      {
        v31.n128_f64[0] = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
      }

      else
      {
        v31.n128_f64[0] = -v32.n128_f64[0];
      }

      if (v35)
      {
        v30.n128_f64[0] = v33.n128_f64[0];
      }

      else
      {
        v36.n128_f64[0] = v32.n128_f64[0];
        v30.n128_f64[0] = -v33.n128_f64[0];
      }

      if (!v35)
      {
        v37.n128_f64[0] = v33.n128_f64[0];
      }

      v33.n128_u64[0] = 0;
      if (v35)
      {
        v32.n128_f64[0] = v34;
      }

      else
      {
        v32.n128_f64[0] = 0.0;
      }

      if (!v35)
      {
        v33.n128_f64[0] = v34;
      }

      v29(&v63, v60, v31, v36, v30, v37, v32, v33);
      v38 = *(&v63 + 1);
      v39 = *&v63;
      v40 = v64;
      v41 = v65;
      v42 = v66;
      v43 = v67;

      v44 = v62 + v39;
      v14 = v25 + v38;
      v61 = v61 + v40;
      v62 = v44;
      v17 = v17 + v41;
      v19 = v58 + v42;
      v21 = v59 + v43;
      sub_21EAA83D0();
      v7 = v57;
      v4 = v26;
      v8 = v56;
      if (!v70)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    (*(v8 + 8))(v11, v7);
    [v4 parameters];
    v48 = v47;
    if (a2)
    {
      v49 = -v45;
      v51 = v61;
      v50 = v62;
      if (v62 <= -v45)
      {
        v50 = -v45;
      }

      if (v45 < v50)
      {
        v50 = v45;
      }

      if (v14 > v49)
      {
        v49 = v14;
      }

      if (v45 >= v49)
      {
        v45 = v49;
      }

      v52 = -v46;
      if (v61 <= -v46)
      {
        v51 = -v46;
      }

      if (v46 < v51)
      {
        v51 = v46;
      }

      if (v17 > v52)
      {
        v52 = v17;
      }

      if (v46 >= v52)
      {
        v46 = v52;
      }

      [v4 applyWithScale:v60 to:{(v50 + 1.0) * (v51 + 1.0), (v45 + 1.0) * (v46 + 1.0)}];
    }

    if (a3)
    {
      v53 = -v48;
      if (v19 > -v48)
      {
        v54 = v19;
      }

      else
      {
        v54 = -v48;
      }

      if (v48 < v54)
      {
        v54 = v48;
      }

      if (v21 > v53)
      {
        v53 = v21;
      }

      if (v48 < v53)
      {
        v53 = v48;
      }

      [v4 applyWithTranslation:v60 to:{v54, v53}];
    }
  }
}

void sub_21EA55400(void *a1)
{
  v2 = v1;
  v4 = [v1 stretchSources];
  _s14_StretchSourceCMa();
  sub_21EA58A64();
  sub_21EAA8F60();

  v6 = sub_21EAA8F50();

  [v2 setStretchSources_];

  v7 = [v2 transformersByStretchSource];
  [v7 removeObjectForKey_];
}

void sub_21EA555F4(uint64_t a1, double a2)
{
  *(v2 + OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue) = a2;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong updateStretchForChangedSource_];
    }
  }
}

id sub_21EA55738(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s14_StretchSourceCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21EA5577C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id CCUIStretchApplier.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21EA558A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21EAA95B0();
  sub_21EAA8E40();
  v8 = sub_21EAA95D0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21EAA9530() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21EA56BFC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21EA55A1C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_21EAA9390();

    if (v9)
    {

      _s14_StretchSourceCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21EAA9380();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21EA56080(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21EA56958(v20 + 1, &qword_27CEDCD20, &qword_21EAB6C80);
    }

    v18 = v8;
    sub_21EA56B78(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  _s14_StretchSourceCMa();
  v11 = sub_21EAA9200();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21EA56D7C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21EAA9210();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21EA55C3C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_21EAA8E00();
  sub_21EAA95B0();
  sub_21EAA8E40();
  v7 = sub_21EAA95D0();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_21EAA8E00();
      v13 = v12;
      if (v11 == sub_21EAA8E00() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_21EAA9530();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_21EA56F08(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_21EA55E0C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_21EAA9390();

    if (v17)
    {

      sub_21E9F8880(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_21EAA9380();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_21EA5627C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_21EA56958(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_21EA56B78(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_21E9F8880(0, a3, a4);
    v19 = sub_21EAA9200();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_21EAA9210();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_21EA570F0(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21EA56080(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD20, &qword_21EAB6C80);
    v2 = sub_21EAA9410();
    v15 = v2;
    sub_21EAA9370();
    if (sub_21EAA93A0())
    {
      _s14_StretchSourceCMa();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21EA56958(v9 + 1, &qword_27CEDCD20, &qword_21EAB6C80);
        }

        v2 = v15;
        result = sub_21EAA9200();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21EAA93A0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21EA5627C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_21EAA9410();
    v23 = v10;
    sub_21EAA9370();
    if (sub_21EAA93A0())
    {
      sub_21E9F8880(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_21EA56958(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_21EAA9200();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_21EAA93A0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

void sub_21EA5647C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40, &qword_21EAB6C98);
  v4 = sub_21EAA9400();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21EAA95B0();
      sub_21EAA8E40();
      v21 = sub_21EAA95D0();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21EA566DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD18, &qword_21EAB6C78);
  v4 = sub_21EAA9400();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_21EAA8E00();
      sub_21EAA95B0();
      sub_21EAA8E40();
      v18 = sub_21EAA95D0();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21EA56958(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21EAA9400();
  v7 = v6;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_21EAA9200();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_21EA56B78(uint64_t a1, uint64_t a2)
{
  sub_21EAA9200();
  result = sub_21EAA9360();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_21EA56BFC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21EA5647C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21EA57280();
      goto LABEL_16;
    }

    sub_21EA5766C(v8 + 1);
  }

  v10 = *v4;
  sub_21EAA95B0();
  sub_21EAA8E40();
  v11 = sub_21EAA95D0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_21EAA9530() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_21EAA9550();
  __break(1u);
}

void sub_21EA56D7C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21EA56958(v6 + 1, &qword_27CEDCD20, &qword_21EAB6C80);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21EA5752C(&qword_27CEDCD20, &qword_21EAB6C80);
      goto LABEL_12;
    }

    sub_21EA57AF8(v6 + 1, &qword_27CEDCD20, &qword_21EAB6C80);
  }

  v8 = *v3;
  v9 = sub_21EAA9200();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    _s14_StretchSourceCMa();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21EAA9210();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21EAA9550();
  __break(1u);
}

void sub_21EA56F08(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_21EA566DC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_21EA573DC();
      goto LABEL_16;
    }

    sub_21EA578A4(v7 + 1);
  }

  v9 = *v3;
  sub_21EAA8E00();
  sub_21EAA95B0();
  sub_21EAA8E40();
  v10 = sub_21EAA95D0();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for SBHIconGridSizeClass(0);
    do
    {
      v13 = sub_21EAA8E00();
      v15 = v14;
      if (v13 == sub_21EAA8E00() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_21EAA9530();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = result;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_21EAA9550();
  __break(1u);
}

void sub_21EA570F0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_21EA56958(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_21EA5752C(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_21EA57AF8(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_21EAA9200();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_21E9F8880(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_21EAA9210();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21EAA9550();
  __break(1u);
}

void sub_21EA57280()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40, &qword_21EAB6C98);
  v2 = *v0;
  v3 = sub_21EAA93F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21EA573DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD18, &qword_21EAB6C78);
  v2 = *v0;
  v3 = sub_21EAA93F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21EA5752C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21EAA93F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_21EA5766C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40, &qword_21EAB6C98);
  v4 = sub_21EAA9400();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21EAA95B0();

      sub_21EAA8E40();
      v20 = sub_21EAA95D0();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_21EA578A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD18, &qword_21EAB6C78);
  v4 = sub_21EAA9400();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_21EAA8E00();
      sub_21EAA95B0();
      v18 = v17;
      sub_21EAA8E40();
      v19 = sub_21EAA95D0();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_21EA57AF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21EAA9400();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_21EAA9200();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

uint64_t sub_21EA57D04(void *a1, uint64_t a2)
{
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v2;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = a1;
    v7 = sub_21EAA93B0();

    if (v7)
    {
      v8 = sub_21EA57FD4(v5, v6);

      return v8;
    }

    return 0;
  }

  v10 = v2;
  _s14_StretchSourceCMa();
  v11 = sub_21EAA9200();
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v4 + 48) + 8 * v13);
    v16 = sub_21EAA9210();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v10;
  v20 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21EA5752C(&qword_27CEDCD20, &qword_21EAB6C80);
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v13);
  sub_21EA58128(v13);
  result = v19;
  *v10 = v20;
  return result;
}

uint64_t sub_21EA57E98(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21EAA95B0();
  sub_21EAA8E40();
  v6 = sub_21EAA95D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21EAA9530() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21EA57280();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21EA582C8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_21EA57FD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_21EAA9380();
  v5 = swift_unknownObjectRetain();
  v6 = sub_21EA56080(v5, v4);
  v15 = v6;

  v7 = sub_21EAA9200();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s14_StretchSourceCMa();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_21EAA9210();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_21EA58128(v9);
  result = sub_21EAA9210();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA58128(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21EAA9350();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_21EAA9200();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_21EA582C8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21EAA9350();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21EAA95B0();

        sub_21EAA8E40();
        v10 = sub_21EAA95D0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_21EA5848C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21EAA9380())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD30, &qword_21EAB6C90);
      v3 = sub_21EAA9420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21EAA9380();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D67210](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21EAA9200();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_21E9F8880(0, &qword_28125B790, 0x277CFC9B8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21EAA9210();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_21EAA9200();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_21E9F8880(0, &qword_28125B790, 0x277CFC9B8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21EAA9210();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21EA5877C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21EAA9380())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD20, &qword_21EAB6C80);
      v3 = sub_21EAA9420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21EAA9380();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D67210](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21EAA9200();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        _s14_StretchSourceCMa();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21EAA9210();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_21EAA9200();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        _s14_StretchSourceCMa();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21EAA9210();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_21EA58A64()
{
  result = qword_28125B7D8;
  if (!qword_28125B7D8)
  {
    _s14_StretchSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B7D8);
  }

  return result;
}

double sub_21EA58AE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

__n128 sub_21EA58B0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v10 = *(v8 + 16);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v14 = a5;
  *(&v14 + 1) = a6;
  v13.n128_f64[0] = a7;
  v13.n128_f64[1] = a8;
  v10(a1, &v15, &v14, &v13);
  result = v13;
  v12 = v14;
  *a2 = v15;
  *(a2 + 16) = v12;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_21EA58B6C()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21EA58BD0(uint64_t a1, void *a2)
{
  v4 = sub_21EAA8790();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[4];
  [v9 removeObjectForKey_];
  sub_21EAA8750();

  v10 = sub_21EAA8760();
  v11 = sub_21EAA9000();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    v15 = a2[2];
    v16 = a2[3];

    v17 = sub_21E9FE748(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = [v9 count];

    _os_log_impl(&dword_21E9F5000, v10, v11, "[IconImageViewControllerCache (%s)] Removed entry. Cache size: %ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D68580](v14, -1, -1);
    MEMORY[0x223D68580](v13, -1, -1);

    return (*(v5 + 8))(v8, v19);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21EA58DE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21EAA8790();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[4];
  [v11 setObject:a1 forKey:{a2, v8}];
  sub_21EAA8750();

  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    v17 = a3[2];
    v18 = a3[3];

    v19 = sub_21E9FE748(v17, v18, &v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = [v11 count];

    _os_log_impl(&dword_21E9F5000, v12, v13, "[IconImageViewControllerCache (%s)] Added entry. Cache size: %ld", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D68580](v16, -1, -1);
    MEMORY[0x223D68580](v15, -1, -1);

    return (*(v7 + 8))(v10, v21);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

id PowerButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_21EA5907C(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView] = 0;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for PowerButton();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_luminanceMap_, a1, a2, a3, a4, a5);
  if (UIAccessibilityButtonShapesEnabled())
  {
    sub_21EA5943C();
  }

  else
  {
    v12 = OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView;
    [*&v11[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView] removeFromSuperview];
    v13 = *&v11[v12];
    *&v11[v12] = 0;
  }

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v11 selector:sel_updateAccessibilityButtonShapeAppearance name:*MEMORY[0x277D76450] object:0];

  return v11;
}

void sub_21EA5943C()
{
  v1 = OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView;
  [*&v0[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView] removeFromSuperview];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setUserInteractionEnabled_];
  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  [v3 setBackgroundColor_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 insertSubview:v3 atIndex:0];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10, &qword_21EAB6F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21EAB6CF0;
  v8 = [v3 topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v3 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v3 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [v3 bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_21EA59878();
  v20 = sub_21EAA8EB0();

  [v6 activateConstraints_];

  v21 = *&v0[v1];
  *&v0[v1] = v3;
}

id PowerButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PowerButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21EA59878()
{
  result = qword_28125B7C8;
  if (!qword_28125B7C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28125B7C8);
  }

  return result;
}

void sub_21EA59C28(void *a1)
{
  v3 = [a1 customIconImageViewController];
  if (v3)
  {
    v4 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        [v7 pagingViewController:v6 didAdd:v4];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  [a1 setAllowsAdornmentsOverIconImage:v1[OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_allowsIconAdornments] animated:0];
  v8 = [a1 customIconImageViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      [v10 setWantsSubduedBackground_];
      v12 = [v11 parentViewController];
      if (v12)
      {
        v13 = v12;

        if (v13 == v1)
        {
          v14 = [v1 _appearState];
          if (v14 - 1 <= 1)
          {
            v15 = v14;
            [v11 ccui:1 safelyBeginAppearanceTransitionForChildViewControllers:0 animated:?];
            if (v15 == 2)
            {
              [v11 ccui_safelyEndAppearanceTransitionForChildViewControllers];
            }
          }
        }
      }
    }
  }
}

void *sub_21EA59DE8(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v2 = v1;
      v3 = [v2 parentViewController];
      if (v3)
      {
        v4 = v3;

        v2 = v4;
      }

      else
      {
        [v2 ccui:0 safelyBeginAppearanceTransitionForChildViewControllers:0 animated:?];
        [v2 ccui_safelyEndAppearanceTransitionForChildViewControllers];
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = v1;
        [v7 pagingViewController:v5 willRemove:v8];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_21EA59F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconListFolderController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ControlDescriptorProvider.__allocating_init(widgetExtensionProvider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___CCUIControlDescriptorProvider_widgetExtensionProvider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ControlDescriptorProvider.init(widgetExtensionProvider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CCUIControlDescriptorProvider_widgetExtensionProvider] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlDescriptorProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ControlDescriptorProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlDescriptorProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlDescriptorProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21EA5A2FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleContentModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21EA5A364()
{
  v1 = [v0 folderView];
  v2 = [v1 currentIconListView];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 visibleIcons];
  sub_21E9F8880(0, &qword_28125B730, 0x277D66368);
  v4 = sub_21EAA8EC0();

  if (v4 >> 62)
  {
    result = sub_21EAA9380();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D67210](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = [v2 displayedIconViewForIcon_];

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA5A4B0@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 visibleIcons];
  sub_21E9F8880(0, &qword_28125B730, 0x277D66368);
  v4 = sub_21EAA8EC0();

  v32 = MEMORY[0x277D84F90];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_41:
    v6 = sub_21EAA9380();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D67210](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_38;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = [v2 displayedIconViewForIcon_];

    ++v7;
    if (v11)
    {
      MEMORY[0x223D66C60]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21EAA8EE0();
      }

      sub_21EAA8EF0();
      v31 = v32;
      v7 = v10;
    }
  }

  v32 = MEMORY[0x277D84F90];
  v12 = v31;
  v5 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
    v2 = sub_21EAA9380();
    v12 = v31;
    if (v2)
    {
LABEL_16:
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v15 = v12 & 0xC000000000000001;
      v16 = &off_278383000;
      v30 = v12 & 0xC000000000000001;
LABEL_17:
      v28 = v14;
      v17 = v13;
      while (1)
      {
        if (v15)
        {
          v18 = MEMORY[0x223D67210](v17, v12);
        }

        else
        {
          if (v17 >= *(v5 + 16))
          {
            goto LABEL_40;
          }

          v18 = *(v12 + 8 * v17 + 32);
        }

        v19 = v18;
        v13 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        v20 = [v18 v16[419]];
        if (v20)
        {
          v4 = v20;
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            v22 = v21;
            v23 = v2;
            v24 = v5;
            v25 = v16;
            v26 = v4;
            v4 = [v22 contentViewController];

            v16 = v25;
            v5 = v24;
            v2 = v23;
            v15 = v30;

            if (!v4)
            {
              goto LABEL_20;
            }

            if ([v4 respondsToSelector_])
            {
              MEMORY[0x223D66C60]();
              if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21EAA8EE0();
              }

              sub_21EAA8EF0();
              v14 = v32;
              v12 = v31;
              if (v13 != v2)
              {
                goto LABEL_17;
              }

              goto LABEL_44;
            }
          }

          else
          {
          }
        }

        else
        {
          v4 = v19;
        }

LABEL_20:
        ++v17;
        v12 = v31;
        if (v13 == v2)
        {
          v14 = v28;
          goto LABEL_44;
        }
      }
    }
  }

  else
  {
    v2 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_16;
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_44:

  *a2 = v14;
  return result;
}

unint64_t sub_21EA5A854(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D67210](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_21EA5A4B0(&v39, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_21EAA9380();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_21EAA9380();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_21EAA9380();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_21EAA9460();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_21EAA9380();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v36)
        {
          goto LABEL_44;
        }

        v35 = v5;
        v19 = v14 + 8 * v15 + 32;
        v30 = v14;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_21EA5BC04(&unk_27CEDCE30, &qword_27CEDCE28, &qword_21EAB6DC8);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCE28, &qword_21EAB6DC8);
            v21 = sub_21EA5BAC4(v37, j, v9);
            v23 = *v22;
            (v21)(v37, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCE20, &qword_21EAB6DC0);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v35;
        if (v36 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v36);
          v25 = v24 + v36;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_21EAA9380();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21EA5ABCC(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v4 folderView];
  type metadata accessor for IconListFolderView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView);
  }

  else
  {

    v8 = [v4 folderView];
    v10 = [v8 scrollView];
  }

  v11 = v10;

  [a1 convertPoint:v11 toCoordinateSpace:{a2, a3}];
  v13 = v12;
  v15 = v14;
  v16 = [v11 hitTest:0 withEvent:?];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;
  if (v16 == v11)
  {

LABEL_19:
    return 0;
  }

  v18 = [v4 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830, 0x277D663D0);
  v19 = sub_21EAA8EC0();

  v20 = sub_21EA5A854(v19);

  v34 = v11;
  if (v20 >> 62)
  {
LABEL_25:
    v21 = sub_21EAA9380();
    if (v21)
    {
LABEL_8:
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x223D67210](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        result = [v23 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v27 = result;
        v28 = [v17 isDescendantOfView_];

        if (v28)
        {
          break;
        }

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_26;
        }
      }

      [v34 convertPoint:v17 toCoordinateSpace:{v13, v15}];
      v30 = v29;
      v32 = v31;
      if ([v24 respondsToSelector_])
      {
        v33 = [v24 interpretsLocationAsContent:v17 inView:{v30, v32}];

        return v33;
      }

      return 1;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_8;
    }
  }

LABEL_26:

  return 1;
}

void sub_21EA5AEE4()
{
  v6 = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  *(v1 + 16) = &v6;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21EA5BBFC;
  *(v2 + 24) = v1;
  aBlock[4] = sub_21E9FEBF8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_12;
  v3 = _Block_copy(aBlock);

  [v0 enumerateDisplayedIconViewsUsingBlock_];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_21EA5B048(void *a1)
{
  v1 = [a1 customIconImageViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        v5 = [v4 topLevelBlockingGestureRecognizers];
        sub_21E9F8880(0, &qword_28125B7C0, 0x277D75548);
        v6 = sub_21EAA8EC0();

        sub_21EA5B11C(v6);
      }
    }
  }
}

void sub_21EA5B11C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21EAA9380();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21EAA9380();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21EA5B884(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21EA5B924(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_21EA5B20C(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  sub_21EAA9170();
  v8 = a1;
  v9 = sub_21EA95BD4(v8);
  v10 = [v8 identity];
  v11 = [v10 intentReference];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 intent];

    if (v13)
    {
      v14 = [v10 extensionIdentity];
      v15 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638, qword_21EAB5FC0);
      if ((*(*(v16 - 8) + 48))(&v14[v15], 1, v16))
      {
        swift_endAccess();
        v17 = v13;
      }

      else
      {
        sub_21EAA86D0();
        swift_endAccess();

        v17 = sub_21EAA8DC0();

        v14 = [v9 uniqueIdentifier];
        if (!v14)
        {
          sub_21EAA8E00();
          v14 = sub_21EAA8DC0();
        }

        [a2 storeIntent:v13 bundleIdentifier:v17 dataSourceIdentifier:v14];
      }
    }
  }

  sub_21E9F8880(0, &unk_27CEDCDA0, 0x277D66450);
  v18 = sub_21EAA8FA0();
  [v18 addIconDataSource_];
  v19 = v18;
  [v8 size];
  v20 = sub_21EAA9120();
  [v19 setGridSizeClass_];

  sub_21EA5B4E8(v19, a3, a4);
}

uint64_t CCUIGridSizeClass.init(controlSize:)(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21EAB6DD0[a1 - 1];
  }
}

void sub_21EA5B4E8(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = [v4 folderView];
  v9 = [v4 folderView];
  v10 = [v9 currentPageIndex];

  v11 = [v8 iconListModelIndexForPageIndex_];
  v12 = [v4 folder];
  if (v12)
  {
    v24 = v12;

    [v4 layoutIconListsWithAnimationType:-1 forceRelayout:0];
    v13 = [v24 indexOfListContainingIcon_];
    v14 = [v4 folderView];
    v15 = [v14 pageIndexForIconListViewIndex_];

    v16 = [v4 folderView];
    v17 = [v16 currentPageIndex];

    if (v17 == v15)
    {
      if (a2)
      {
        v18 = [v4 firstIconViewForIcon_];
        a2();
      }
    }

    else
    {
      v19 = [v4 folderView];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = a2;
      v21[3] = a3;
      v21[4] = v20;
      v21[5] = a1;
      aBlock[4] = sub_21EA5BBF0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA87FF0;
      aBlock[3] = &block_descriptor_4;
      v22 = _Block_copy(aBlock);
      sub_21EA58AE0(a2, a3);
      v23 = a1;

      [v19 setCurrentPageIndex:v15 animated:1 completion:v22];

      _Block_release(v22);
    }
  }
}

void sub_21EA5B7E0(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong firstIconViewForIcon_];
    }

    else
    {
      v8 = 0;
    }

    a1(v8);
  }
}

uint64_t sub_21EA5B884(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21EAA9380();
LABEL_9:
  result = sub_21EAA9460();
  *v2 = result;
  return result;
}

uint64_t sub_21EA5B924(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21EAA9380();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21EAA9380();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21EA5BC04(&unk_28125B850, &qword_27CEDCE18, &qword_21EAB6DB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCE18, &qword_21EAB6DB8);
            v9 = sub_21EA5BB44(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21E9F8880(0, &qword_28125B7C0, 0x277D75548);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_21EA5BAC4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D67210](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21EA5BC5C;
  }

  __break(1u);
  return result;
}

void (*sub_21EA5BB44(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D67210](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21EA5BBC4;
  }

  __break(1u);
  return result;
}

uint64_t _sSo17CCUIGridSizeClassV15ControlCenterUIE06moduleB0ABSo09CCSModuleB0V_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_21EAB6DE8[a1 - 1];
  }
}

uint64_t sub_21EA5BC04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_21EA5BCC0(void *a1)
{
  v3 = 0x3FF0000000000000;
  v4 = 0;
  v5 = 0;
  v6 = 0x3FF0000000000000;
  v7 = 0;
  v8 = 0;
  [a1 setTransform_];
  v2 = [a1 contentContainerView];
  v3 = 0x3FF0000000000000;
  v4 = 0;
  v5 = 0;
  v6 = 0x3FF0000000000000;
  v7 = 0;
  v8 = 0;
  [v2 setTransform_];
}

uint64_t sub_21EA5BDB0()
{
  sub_21EA01354(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_21EA5BE14(void *a1, uint64_t a2)
{
  v2 = a1;
  [a1 setDelegate_];
  swift_unknownObjectRelease();
  [v2 setAllowsResizeHandle_];
  [v2 setSuppressesDefaultEditingAnimation_];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21EA5BFC8;
  *(v5 + 24) = v4;
  v8[4] = sub_21EA4C654;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21EA89FB8;
  v8[3] = &block_descriptor_5;
  v6 = _Block_copy(v8);
  v7 = v2;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_21EA5C0C4()
{
  v0 = [objc_opt_self() rootSettings];
  v1 = [v0 editingSettings];

  v2 = [v1 resizingSettings];
  qword_27CEDCE40 = v2;
}

id sub_21EA5C148()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 248);
  }

  else
  {
    v3 = [objc_opt_self() feedbackGeneratorWithStyle:0 forView:*(v0 + 16)];
    v4 = *(v0 + 248);
    *(v0 + 248) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_21EA5C1C8(void *a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v11 = WORD1(a4);
  v12 = [a3 iconGridSizeForClass_];
  if (v11 >= HIWORD(v12) && v9 >= v12)
  {
    swift_beginAccess();
    v13 = a1;
    sub_21EA55C3C(&v14, v13);
    swift_endAccess();

    if (sub_21EAA9020())
    {
      swift_beginAccess();
      sub_21EA55C3C(&v14, v13);
      swift_endAccess();
    }
  }
}

void sub_21EA5C2E0(void *a1)
{
  if (*(v1 + 120))
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 104);
  v79 = *(v1 + 96);
  v6 = *(v1 + 88);
  v7 = [v3 _shouldReverseLayoutDirection];
  [a1 locationInView_];
  v9 = v8;
  v11 = v10;
  v77 = v5;
  if (v7)
  {
    v12 = BSFloatGreaterThanFloat();
  }

  else
  {
    v5 = 0.0;
    v12 = BSFloatLessThanFloat();
  }

  if (v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = v9;
  }

  v14 = 0.0;
  if (!BSFloatLessThanFloat())
  {
    v14 = v11;
  }

  [v4 frame];
  v76 = v6;
  v88.origin.x = v13 - (v6 - v15);
  v86.origin.y = 0.0;
  v86.size.width = 1.0;
  v86.size.height = 1.0;
  v88.size.width = 1.0;
  v88.size.height = 1.0;
  v86.origin.x = v5;
  v88.origin.y = v14;
  v87 = CGRectUnion(v86, v88);
  if (*(v1 + 144))
  {
    goto LABEL_47;
  }

  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  v20 = *(v1 + 128);
  v21 = *(v1 + 136);
  if (qword_27CEDBC10 != -1)
  {
    swift_once();
  }

  v22 = qword_27CEDCE40;
  [qword_27CEDCE40 undersizeRubberbandingRange];
  if (BSFloatLessThanFloat())
  {
    BSIntervalMake(&aBlock, v20, v20);
    BSUIConstrainValueToIntervalWithRubberBand();
    width = v23;
  }

  if (BSFloatLessThanFloat())
  {
    BSIntervalMake(&aBlock, v21, v21);
    BSUIConstrainValueToIntervalWithRubberBand();
    height = v24;
  }

  if (*(v1 + 168))
  {
    goto LABEL_48;
  }

  v25 = *(v1 + 152);
  v26 = *(v1 + 160);
  [v22 oversizeRubberbandingRange];
  if (BSFloatGreaterThanFloat())
  {
    BSIntervalMake(&aBlock, v25, v25);
    BSUIConstrainValueToIntervalWithRubberBand();
    width = v27;
  }

  if (BSFloatGreaterThanFloat())
  {
    BSIntervalMake(&aBlock, v26, v26);
    BSUIConstrainValueToIntervalWithRubberBand();
    height = v28;
  }

  v29 = *(v1 + 208);
  if (!v29)
  {
    goto LABEL_49;
  }

  v30 = [v29 gridSizeClass];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v72 = v4;
  v74 = v22;
  v75 = v3;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = *(v1 + 184);
  if (!v35)
  {
    goto LABEL_50;
  }

  v36 = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v71 = v7;
  *(v37 + 24) = v7;
  *(v37 + 32) = v5;
  *(v37 + 40) = 0;
  *(v37 + 48) = x;
  *(v37 + 56) = y;
  *(v37 + 64) = width;
  *(v37 + 72) = height;
  *(v37 + 80) = width * height;
  *(v37 + 88) = v31;
  *(v37 + 96) = v32;
  *(v37 + 104) = v36;
  *(v37 + 112) = v33;
  v84 = sub_21EA5E0BC;
  v85 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_21EA946E8;
  v83 = &block_descriptor_71;
  v38 = _Block_copy(&aBlock);

  v39 = v35;
  v40 = v31;

  [v39 enumerateGridSizeClassesUsingBlock_];
  _Block_release(v38);

  swift_beginAccess();
  v41 = *(v33 + 16);
  if (v41)
  {
    swift_beginAccess();
    swift_beginAccess();
    v42 = v40;
    v43 = v41;
    v73 = v43;
    if (BSFloatGreaterThanFloat())
    {
      v44 = *(v1 + 192);
      v45 = v74;
      if (!v44)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ([v44 containsGridSizeClass_])
      {

        v46 = *(v1 + 208);
        if (!v46)
        {
LABEL_54:
          __break(1u);
          return;
        }

        v42 = v43;
        [v46 setGridSizeClass_];
        [v75 layoutIconsIfNeededWithAnimationType:0 options:0];
        v47 = 1;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
      v45 = v74;
    }

    if (*(v1 + 224))
    {
      SBHIconListLayoutIconImageInfoForGridSizeClass();
      v49 = v48;
      v51 = v50;
      if (v71)
      {
        v52 = v77 + v76 - width;
      }

      else
      {
        v52 = v76;
      }

      v53 = objc_opt_self();
      v54 = [v45 animationSettings];
      v55 = swift_allocObject();
      *(v55 + 16) = v72;
      *(v55 + 24) = width;
      *(v55 + 32) = height;
      *(v55 + 40) = v49;
      *(v55 + 48) = v51;
      *(v55 + 56) = v52;
      *(v55 + 64) = v79;
      *(v55 + 72) = width;
      *(v55 + 80) = height;
      v84 = sub_21EA5E0E0;
      v85 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_21EA87FF0;
      v83 = &block_descriptor_77;
      v56 = _Block_copy(&aBlock);
      v57 = v72;

      [v53 sb:v54 animateWithSettings:5 mode:v56 animations:0 completion:?];
      _Block_release(v56);

      if (v47)
      {
        v58 = sub_21EA5C148();
        [v45 hapticIntensity];
        [v58 impactOccurredWithIntensity_];

        v59 = *(v1 + 200);
        if (v59)
        {
          [v59 setSuppressesContentTransitions_];
        }

        v60 = [v45 animationSettings];
        v61 = swift_allocObject();
        v61[2] = v59;
        v61[3] = v42;
        v61[4] = v75;
        v84 = sub_21EA5E0F8;
        v85 = v61;
        aBlock = MEMORY[0x277D85DD0];
        v81 = 1107296256;
        v82 = sub_21EA87FF0;
        v83 = &block_descriptor_83;
        v62 = _Block_copy(&aBlock);
        v78 = v59;
        v63 = v75;
        v64 = v42;

        [v53 &selRef_minimumFlickVelocity + 6];
        _Block_release(v62);

        v65 = [v45 labelTransitionAnimationSettings];
        v66 = swift_allocObject();
        *(v66 + 16) = v59;
        v84 = sub_21EA5F548;
        v85 = v66;
        aBlock = MEMORY[0x277D85DD0];
        v81 = 1107296256;
        v82 = sub_21EA87FF0;
        v83 = &block_descriptor_89_0;
        v67 = _Block_copy(&aBlock);
        v68 = v78;

        [v53 sb:v65 animateWithSettings:3 mode:v67 animations:0 completion:?];
        _Block_release(v67);
      }

      v69 = *(v1 + 216);
      if (v69)
      {
        v70 = v69;
        [v75 bringSubviewToFront_];

        goto LABEL_44;
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_44:
}

uint64_t sub_21EA5CC40(void *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = *(a10 + 224);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v46 = a1;
  SBHIconListLayoutIconImageInfoForGridSizeClass();
  v29 = v27;
  v30 = v28;
  if (a11)
  {
    v31 = a2 - v27;
    v32 = 0;
    v33 = v27;
    v34 = v28;
  }

  else
  {
    BSRectWithSize();
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
  }

  v48.origin.x = a4;
  v48.origin.y = a5;
  v48.size.width = a6;
  v48.size.height = a7;
  v49 = CGRectIntersection(v48, *&v31);
  v39 = 1.0 - (v29 * v30 + a8 - v49.size.width * v49.size.height - v49.size.width * v49.size.height) / (v29 * v30 + a8);
  v40 = sub_21EAA8E00();
  v42 = v41;
  if (v40 == sub_21EAA8E00() && v42 == v43)
  {

LABEL_9:
    result = swift_beginAccess();
    *(a13 + 16) = v39;
    return result;
  }

  v44 = sub_21EAA9530();

  if (v44)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  result = BSFloatGreaterThanFloat();
  if (result)
  {
    swift_beginAccess();
    *(a14 + 16) = v39;
    swift_beginAccess();
    v45 = *(a15 + 16);
    *(a15 + 16) = v46;

    return v46;
  }

  return result;
}

id sub_21EA5CE70(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  [a1 setIconImageInfo_];
  UIRectGetCenter();
  [a1 setCenter_];

  return [a1 layoutIfNeeded];
}

id sub_21EA5CEFC(id result, uint64_t a2, id a3)
{
  if (result)
  {
    v3 = result;
    [a3 orientation];
    [v3 setGridSizeClass_];
    [v3 setSuppressesCompactContinuousCornerRadiusUpdates_];

    return [v3 setSuppressesCompactContinuousCornerRadiusUpdates_];
  }

  return result;
}

void sub_21EA5CF88(uint64_t (*a1)(void, void, __n128), double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11)
{
  if (qword_27CEDBC10 != -1)
  {
    swift_once();
  }

  v40 = qword_27CEDCE40;
  v39 = [qword_27CEDCE40 animationSettings];
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  *(v21 + 32) = a9;
  *(v21 + 40) = a10;
  *(v21 + 48) = a11;
  *(v21 + 56) = a2;
  *(v21 + 64) = a3;
  *(v21 + 72) = a4;
  *(v21 + 80) = a5;
  v45 = sub_21EA5F4C4;
  v46 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_21EA87FF0;
  v44 = &block_descriptor_126;
  v22 = _Block_copy(&aBlock);
  v38 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;

  v26 = (a1)(0, 0);
  v28 = a1;
  if (v26)
  {
    v45 = v26;
    v46 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_21EA5DB18;
    v44 = &block_descriptor_138;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  [v30 sb:v39 animateWithSettings:3 mode:v22 animations:v29 completion:?];
  _Block_release(v29);
  _Block_release(v22);

  v31 = [v40 labelTransitionAnimationSettings];
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  v45 = sub_21EA5F4DC;
  v46 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_21EA87FF0;
  v44 = &block_descriptor_132;
  v33 = _Block_copy(&aBlock);
  v34 = v38;

  v35 = v28(0, 0);
  if (v35)
  {
    v45 = v35;
    v46 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_21EA5DB18;
    v44 = &block_descriptor_135;
    v37 = _Block_copy(&aBlock);
  }

  else
  {
    v37 = 0;
  }

  [v30 sb:v31 animateWithSettings:3 mode:v33 animations:v37 completion:v38];
  _Block_release(v37);
  _Block_release(v33);
}

id sub_21EA5D30C(void *a1, uint64_t a2, void *a3, void *a4, double *a5, double a6, double a7, double a8, double a9)
{
  v37 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0, &qword_21EAB6F38);
  MEMORY[0x28223BE20](v13 - 8);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = sub_21EAA8710();
  v38 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v35 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21EAA87C0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v34 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v34 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v34 - v28;
  if (a1)
  {
    [a3 orientation];
    [a1 setGridSizeClass_];
  }

  swift_beginAccess();
  [a4 setIconImageInfo_];
  if (a1)
  {
    [a1 setSuppressesCompactContinuousCornerRadiusUpdates_];
  }

  UIRectGetCenter();
  [a4 setCenter_];
  result = [a4 layoutIfNeeded];
  if (a1)
  {
    sub_21EAA9050();
    (*(v21 + 32))(v29, v25, v20);
    sub_21EAA87A0();
    v31 = v38;
    if ((*(v38 + 48))(v17, 1, v18) == 1)
    {
      (*(v21 + 8))(v29, v20);
      return sub_21EA5F3A8(v17);
    }

    else
    {
      v32 = v35;
      (*(v31 + 32))(v35, v17, v18);
      v33 = v36;
      sub_21EAA86F0();
      (*(v31 + 56))(v33, 0, 1, v18);
      sub_21EAA87B0();
      (*(v21 + 16))(v34, v29, v20);
      sub_21EAA9060();
      [a1 updateTraitsIfNeeded];
      (*(v31 + 8))(v32, v18);
      return (*(v21 + 8))(v29, v20);
    }
  }

  return result;
}

double sub_21EA5D758(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_21EA5F438, v4);

  return result;
}

uint64_t (*sub_21EA5D7EC(uint64_t a1, uint64_t a2, uint64_t a3))(char a1, char a2)
{
  if (a2)
  {
    v4 = sub_21EAA8DC0();
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(a3 + 16))(a3, v4);

  if (!v5)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v5;
  return sub_21EA5F440;
}

void sub_21EA5D884(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0, &qword_21EAB6F38);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_21EAA87C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v29 - v21;
  if (a4[29] == a3)
  {
    if (a5)
    {
      v23 = v18;
      v24 = a5;
      sub_21EAA9050();
      v25 = sub_21EAA8710();
      (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
      sub_21EAA87B0();
      (*(v14 + 16))(v16, v22, v23);
      sub_21EAA9060();
      [v24 setResizing_];
      [v24 setMinResizeDimensions_];
      [v24 setMaxResizeDimensions_];

      (*(v14 + 8))(v22, v23);
    }

    v26 = a4[30];
    if (v26)
    {
      [v26 invalidate];
      a4[30] = 0;
      v26 = swift_unknownObjectRelease();
    }

    v27 = a4[9];
    if (v27)
    {
      v28 = a4[10];

      v27(a4, a6);
      v26 = sub_21E9FFAF0(v27, v28);
    }

    sub_21EA5DB78(v26, v19);
  }
}

double sub_21EA5DB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

id sub_21EA5DB78(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v5 = Strong;
  v6 = v2[25];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v2[2];
  v8 = v6;
  v9 = [v7 icon];
  if (!v9)
  {

LABEL_10:
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    goto LABEL_11;
  }

  v12 = [v11 activeDataSource];
  if (!v12)
  {

    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v3 iconViewProvider];
  if (v14)
  {
    [v14 recycleIconView_];
    swift_unknownObjectRelease();
  }

  v15 = v8;
  v16 = sub_21EA5DE60(v15, v13, 0x632D657A69736572, 0xEE0070756E61656CLL, v5);
  swift_unknownObjectRelease();

LABEL_12:
  result = v2[26];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  [result invalidate];
  v2[26] = 0;
  swift_unknownObjectRelease();
  result = v2[27];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  [result removeFromSuperview];
  v18 = v2[27];
  v2[27] = 0;

  result = [v3 layoutIconsNow];
  if (v16)
  {
    [v16 invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21EA5DD78()
{
  MEMORY[0x223D68630](v0 + 32);
  sub_21E9FFAF0(*(v0 + 40), *(v0 + 48));
  sub_21E9FFAF0(*(v0 + 56), *(v0 + 64));
  sub_21E9FFAF0(*(v0 + 72), *(v0 + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_21EA5DE08()
{
  sub_21EA5DD78();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

id sub_21EA5DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource;
  v9 = *(a5 + OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource);
  if (v9)
  {
    v10 = *(a5 + OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource);
  }

  else
  {
    v11 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
    v10 = v11;
    if (!*(a5 + v8))
    {
      *(a5 + v8) = v11;
      v10 = v11;
    }
  }

  v12 = v9;
  [v10 setObject:a1 forKey:a2];
  v13 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v14 = [v13 UUIDString];

  if (!v14)
  {
    sub_21EAA8E00();
    v14 = sub_21EAA8DC0();
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v10;
  v16[4] = a2;
  v17 = objc_allocWithZone(MEMORY[0x277CF0CE8]);
  v18 = v10;

  swift_unknownObjectRetain();
  v19 = sub_21EAA8DC0();
  v23[4] = sub_21EA5E0B0;
  v23[5] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21EA4FFB0;
  v23[3] = &block_descriptor_6;
  v20 = _Block_copy(v23);
  v21 = [v17 initWithIdentifier:v14 forReason:v19 invalidationBlock:v20];

  _Block_release(v20);

  return v21;
}

void BSIntervalMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  *(a1 + 24) = 1;
}

uint64_t sub_21EA5E124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 120) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 1;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 1;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v3;
}

void sub_21EA5E1B0(double a1)
{
  v6 = sub_21EAA8710();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0, &qword_21EAB6F38);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - v14;
  v16 = sub_21EAA87C0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v101 - v24;
  v26 = *(v1 + 232);
  v27 = __CFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v1 + 232) = v28;
    if (*(v1 + 120) != 1)
    {
      v67 = *(v1 + 200);
      if (v67)
      {
        v112 = v15;
        v68 = v67;
        sub_21EAA9050();
        sub_21EAA87A0();
        if ((*(v7 + 48))(v12, 1, v6) == 1)
        {

          (*(v17 + 8))(v19, v16);
          sub_21EA5F3A8(v12);
        }

        else
        {
          (*(v7 + 32))(v9, v12, v6);
          v100 = v112;
          sub_21EAA86F0();
          (*(v7 + 56))(v100, 0, 1, v6);
          sub_21EAA87B0();
          (*(v17 + 16))(v25, v19, v16);
          sub_21EAA9060();
          [v68 updateTraitsIfNeeded];

          (*(v7 + 8))(v9, v6);
          (*(v17 + 8))(v19, v16);
        }
      }

      return;
    }

    v101 = v22;
    v102 = v7;
    v29 = *(v1 + 16);
    v30 = *(v1 + 24);
    v31 = [v29 icon];
    if (v31)
    {
      v32 = v31;
      v112 = v15;
      v111 = v25;
      v103 = v6;
      v104 = v17;
      v105 = v16;
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
        v113 = [v29 listLayout];
        if (v113)
        {
          [v29 frame];
          *(v1 + 88) = v35;
          *(v1 + 96) = v36;
          *(v1 + 104) = v37;
          *(v1 + 112) = v38;
          *(v1 + 120) = 0;
          v114 = v32;
          v39 = [v34 gridSizeClass];
          v40 = *(v1 + 176);
          *(v1 + 176) = v39;

          v41 = [v30 gridSizeForCurrentOrientation];
          v42 = v41;
          v115 = v29;
          v43 = HIWORD(v41);
          v44 = [v30 gridCellIndexForIcon_];
          v110 = v34;
          v108 = v44;
          v45 = swift_allocObject();
          v46 = MEMORY[0x277D84FA0];
          *(v45 + 16) = MEMORY[0x277D84FA0];
          v47 = swift_allocObject();
          *(v47 + 16) = v46;
          v109 = v47 + 16;
          v48 = [v34 supportedGridSizeClasses];

          v49 = swift_allocObject();
          *(v49 + 16) = v30;
          *(v49 + 24) = v42;
          *(v49 + 26) = v43;
          v50 = v108;
          *(v49 + 32) = v45;
          *(v49 + 40) = v50;
          *(v49 + 48) = 0;
          *(v49 + 56) = v42;
          *(v49 + 58) = v43;
          *(v49 + 64) = v47;
          aBlock[4] = sub_21EA5F314;
          aBlock[5] = v49;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21EA946E8;
          aBlock[3] = &block_descriptor_99;
          v51 = _Block_copy(aBlock);
          v108 = v30;
          v107 = v45;

          v106 = v47;
          v52 = v45 + 16;

          [v48 enumerateGridSizeClassesUsingBlock_];
          _Block_release(v51);

          swift_beginAccess();
          v53 = objc_allocWithZone(MEMORY[0x277D661B8]);
          type metadata accessor for SBHIconGridSizeClass(0);
          sub_21EA5F350();

          v54 = sub_21EAA8F50();

          v55 = [v53 initWithGridSizeClasses_];

          v56 = *(v1 + 184);
          *(v1 + 184) = v55;

          swift_beginAccess();
          v57 = objc_allocWithZone(MEMORY[0x277D661B8]);

          v58 = v115;
          v59 = sub_21EAA8F50();

          v60 = v57;
          v61 = v108;
          v62 = [v60 initWithGridSizeClasses_];

          v63 = *(v1 + 192);
          *(v1 + 192) = v62;

          [v58 setAllowsCloseBox_];
          [v61 forgetIconView_];
          v64 = sub_21EAA8DC0();
          v65 = [v61 addPlaceholderRepresentingIcon:v110 reason:v64 options:20];

          v66 = *(v1 + 208);
          if (v66)
          {
            [v66 invalidate];
          }

          v15 = v113;
          *(v1 + 208) = v65;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          [v61 bounds];
          v73 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
          [v61 addSubview_];
          [v73 addSubview_];
          v9 = *(v1 + 216);
          *(v1 + 216) = v73;
          v110 = v73;

          *(v1 + 224) = v15;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v74 = *v52;
          v75 = *v52 + 56;
          v76 = 1 << *(*v52 + 32);
          v77 = -1;
          if (v76 < 64)
          {
            v77 = ~(-1 << v76);
          }

          v78 = v77 & *(*v52 + 56);
          v79 = (v76 + 63) >> 6;

          v80 = 0;
          v2 = 0.0;
          v4 = 9.22337204e18;
          v3 = 0.0;
          v5 = 9.22337204e18;
          v25 = v111;
          while (v78)
          {
LABEL_20:
            v9 = *(*(v74 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v78)))));
            SBHIconListLayoutIconImageInfoForGridSizeClass();
            v83 = v82;
            v85 = v84;
            if (BSFloatGreaterThanFloat())
            {
              BSIntervalMake(aBlock, v83, v83);
              BSUIConstrainValueToIntervalWithRubberBand();
              v4 = v86;
            }

            if (BSFloatGreaterThanFloat())
            {
              BSIntervalMake(aBlock, v85, v85);
              BSUIConstrainValueToIntervalWithRubberBand();
              v5 = v87;
            }

            if (BSFloatLessThanFloat())
            {
              BSIntervalMake(aBlock, v83, v83);
              BSUIConstrainValueToIntervalWithRubberBand();
              v2 = v88;
            }

            if (BSFloatLessThanFloat())
            {
              BSIntervalMake(aBlock, v85, v85);
              BSUIConstrainValueToIntervalWithRubberBand();
              v3 = v89;
            }

            v78 &= v78 - 1;
          }

          while (1)
          {
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if (v81 >= v79)
            {

              *(v1 + 128) = v4;
              *(v1 + 136) = v5;
              *(v1 + 144) = 0;
              *(v1 + 152) = v2;
              *(v1 + 160) = v3;
              *(v1 + 168) = 0;
              v90 = v115;
              [v115 setOverrideCustomIconImageViewController_];
              v91 = [v90 customIconImageViewController];
              if (v91)
              {
                v92 = v91;
                objc_opt_self();
                v93 = swift_dynamicCastObjCClass();
                if (v93)
                {
                  v15 = v93;
                  v94 = *(v1 + 200);
                  *(v1 + 200) = v93;
                  v95 = v92;

                  v9 = v95;
                  sub_21EAA9050();
                  if (qword_27CEDBC10 != -1)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_31;
                }

                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              return;
            }

            v78 = *(v75 + 8 * v81);
            ++v80;
            if (v78)
            {
              v80 = v81;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }
    }

    sub_21EAA94A0();
    __break(1u);
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_31:
  v96 = qword_27CEDCE40;
  [qword_27CEDCE40 labelTransitionCrossblurRadius];
  [v96 blurPocketWidth];
  [v96 blurPocketFadeDuration];
  v97 = v112;
  sub_21EAA8700();
  (*(v102 + 56))(v97, 0, 1, v103);
  v98 = v105;
  sub_21EAA87B0();
  v99 = v104;
  (*(v104 + 16))(v101, v25, v98);
  sub_21EAA9060();

  [v15 updateTraitsIfNeeded];
  [v15 setResizing_];
  [v15 setMinResizeDimensions_];
  [v15 setMaxResizeDimensions_];
  [v15 setSuppressesCompactContinuousCornerRadiusUpdates_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v99 + 8))(v25, v98);
}

void sub_21EA5EF5C()
{
  if (v0[15])
  {
    __break(1u);
    goto LABEL_17;
  }

  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[12];
  v6 = *(v0 + 13);
  v7 = *(v0 + 11);
  v8 = [v4 _shouldReverseLayoutDirection];
  v9 = swift_allocObject();
  [v3 iconImageInfo];
  v9[2] = v10;
  *(v9 + 3) = v11;
  *(v9 + 4) = v12;
  *(v9 + 5) = v13;
  v14 = v0[26];
  if (!v14)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v10;
  v16 = v11;
  v17 = [v14 gridSizeClass];
  if (v17)
  {
    if (!v0[28])
    {
LABEL_20:
      __break(1u);
      return;
    }

    v18 = v17;
    swift_unknownObjectRetain();
    SBHIconListLayoutIconImageInfoForGridSizeClass();
    v15 = v19;
    v16 = v20;
    swift_unknownObjectRelease();

    v9[2] = v15;
    *(v9 + 3) = v16;
  }

  v21 = v1[26];
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = [v21 gridSizeClass];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v41 = v1[29];
  [v3 setAllowsCloseBox_];
  v24 = v1[7];
  if (v24)
  {
    v25 = v1[8];

    v24(v1);
    sub_21E9FFAF0(v24, v25);
  }

  v26 = v1[25];
  v27 = v1[30];
  v28 = v26;
  if (!v27)
  {
    v1[30] = [v3 extendResizingFinish];
    swift_unknownObjectRelease();
  }

  if (v8)
  {
    v29 = v6 + v7 - v15;
  }

  else
  {
    v29 = v7;
  }

  [v28 setSuppressesContentTransitions_];
  v40 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = v23;
  *(v30 + 32) = v4;
  *(v30 + 40) = v3;
  *(v30 + 48) = v9;
  *(v30 + 56) = v29;
  *(v30 + 64) = v5;
  *(v30 + 72) = v15;
  *(v30 + 80) = v16;
  *(v30 + 88) = v2;
  v46 = sub_21EA5F410;
  v47 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_21EA5D758;
  v45 = &block_descriptor_108;
  v31 = _Block_copy(&aBlock);
  v32 = v28;
  v33 = v23;
  v34 = v4;
  v35 = v3;

  v36 = swift_allocObject();
  v36[2] = v41;
  v36[3] = v1;
  v36[4] = v26;
  v36[5] = v33;
  v46 = sub_21EA5F42C;
  v47 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_21EA5DB18;
  v45 = &block_descriptor_114;
  v37 = _Block_copy(&aBlock);
  v38 = v32;
  v39 = v33;

  [v40 perform:v31 finalCompletion:v37];
  _Block_release(v37);
  _Block_release(v31);
}

unint64_t sub_21EA5F350()
{
  result = qword_28125B7B0;
  if (!qword_28125B7B0)
  {
    type metadata accessor for SBHIconGridSizeClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B7B0);
  }

  return result;
}

uint64_t sub_21EA5F3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0, &qword_21EAB6F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_104Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_21EA5F4DC()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setSuppressesContentTransitions_];
  }

  return result;
}

void sub_21EA5F54C()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return;
  }

  v1 = [v0 _codableDescription];
  v2 = [v1 attributes];

  if (!v2)
  {
    return;
  }

  sub_21E9F8880(0, &unk_28125B648, 0x277CCABB0);
  sub_21E9F8880(0, &qword_27CEDCEB8, 0x277CD3AF0);
  sub_21EA5F7CC();
  v3 = sub_21EAA8DB0();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_21EAA9480() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  v11 = 0;
  v17 = v5;
  v12 = (v5 + 64) >> 6;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_21EAA9490() || (swift_unknownObjectRelease(), swift_dynamicCast(), (v15 = v18) == 0))
    {
LABEL_21:
      sub_21E9FBFD4(v7);

      return;
    }

LABEL_20:
    v16 = [v15 isConfigurable];

    if (v16)
    {
      goto LABEL_21;
    }
  }

  v13 = v11;
  v14 = v6;
  if (v6)
  {
LABEL_16:
    v6 = (v14 - 1) & v14;
    v15 = *(*(v7 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_21;
    }

    v14 = *(v4 + 8 * v11);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

unint64_t sub_21EA5F7CC()
{
  result = qword_27CEDCEC0;
  if (!qword_27CEDCEC0)
  {
    sub_21E9F8880(255, &unk_28125B648, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCEC0);
  }

  return result;
}

void sub_21EA5F834(uint64_t a1)
{
  v2 = 0;
  v12[2] = MEMORY[0x223D66D40](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_21EA558A8(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_21EA5F950(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_21EAA9380();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D67210](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for ControlIntentPersistenceAssertion();
    v8 = sub_21EAA9210();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

INIntent_optional __swiftcall ControlIntentStorage.intent(bundleIdentifier:dataSourceIdentifier:)(Swift::String bundleIdentifier, Swift::String dataSourceIdentifier)
{
  v3 = sub_21EAA8DC0();
  v4 = sub_21EAA8DC0();
  v5 = [v2 intentWithBundleIdentifier:v3 dataSourceIdentifier:v4 defaultIntentProvider:0];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void sub_21EA5FAB8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_21EA5FB48(a2, a3, a4, a5);
  sub_21EA5FE30(a1, a2, a3, a4, a5);

  sub_21EA67554(a1, a2, a3, a4, a5);
}

double sub_21EA5FB48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  swift_beginAccess();
  v12 = *(v4 + v10);
  if (*(v12 + 16))
  {

    v13 = sub_21EA49DF4(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v25 = v15;
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v16 = sub_21EAA8790();
      __swift_project_value_buffer(v16, qword_28125B8A8);

      v17 = sub_21EAA8760();
      v18 = sub_21EAA9000();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24[0] = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_21E9FE748(a1, a2, v24);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_21E9FE748(a3, a4, v24);
        _os_log_impl(&dword_21E9F5000, v17, v18, "Cancelling deferred intent removal for bundle identifier:%s data source identifier:%s.", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D68580](v20, -1, -1);
        MEMORY[0x223D68580](v19, -1, -1);
      }

      sub_21EA62D44(a3, a4);
      v21 = v25;
      if (*(v25 + 16))
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v5 + v10);
        *(v5 + v10) = 0x8000000000000000;
        sub_21EA65BEC(v21, a1, a2, isUniquelyReferenced_nonNull_native, &qword_27CEDCC68, &qword_21EAB7040);

        *(v5 + v10) = v23;
        swift_endAccess();
        return result;
      }

      swift_beginAccess();
      sub_21EA62DDC(a1, a2, &qword_27CEDCC68, &qword_21EAB7040);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_21EA5FE30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_5;
  }

  v14 = sub_21EA49DF4(a2, a3);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF68, &qword_21EAB7060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21EAB6F50;
    *(inited + 32) = a4;
    *(inited + 40) = a5;
    *(inited + 48) = a1;

    v21 = a1;
    v19 = sub_21EA512AC(inited);
    swift_setDeallocating();
    sub_21EA488A0(inited + 32, &unk_27CEDCF70, &qword_21EAB7068);
    goto LABEL_6;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v17 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21EA65D8C(v17, a4, a5, isUniquelyReferenced_nonNull_native);

  v19 = v16;
LABEL_6:
  swift_beginAccess();

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v6 + v12);
  *(v6 + v12) = 0x8000000000000000;
  sub_21EA65BEC(v19, a2, a3, v22, &qword_27CEDCC78, &unk_21EAB7030);

  *(v6 + v12) = v24;
  return swift_endAccess();
}

void sub_21EA600EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_21EA49DF4(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
    }

    else
    {
      v14 = 0;
    }

    if (a4)
    {
LABEL_11:
      v21 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
      swift_beginAccess();
      v22 = *(v5 + v21);
      if (*(v22 + 16))
      {

        v23 = sub_21EA49DF4(a1, a2);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);

          v151[0] = v25;
          if (!v14 || !*(v14 + 16) || (, sub_21EA49DF4(a3, a4), v27 = v26, , (v27 & 1) == 0))
          {

            v36 = v151[0];
            if (*(v151[0] + 16))
            {
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v149 = *(v5 + v21);
              *(v5 + v21) = 0x8000000000000000;
              sub_21EA65BEC(v36, a1, a2, isUniquelyReferenced_nonNull_native, &qword_27CEDCC78, &unk_21EAB7030);

              *(v5 + v21) = v149;
              swift_endAccess();
            }

            else
            {

              swift_beginAccess();
              sub_21EA62DDC(a1, a2, &qword_27CEDCC78, &unk_21EAB7030);
              swift_endAccess();
            }

            if (qword_28125B8A0 != -1)
            {
LABEL_124:
              swift_once();
            }

            v42 = sub_21EAA8790();
            __swift_project_value_buffer(v42, qword_28125B8A8);

            v43 = sub_21EAA8760();
            v44 = sub_21EAA9000();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v152[0] = v46;
              *v45 = 136315394;
              *(v45 + 4) = sub_21E9FE748(a1, a2, v152);
              *(v45 + 12) = 2080;
              *(v45 + 14) = sub_21E9FE748(a3, a4, v152);
              _os_log_impl(&dword_21E9F5000, v43, v44, "Remove intent from local succeeded with bundle identifier:%s data source identifier:%s.", v45, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D68580](v46, -1, -1);
              MEMORY[0x223D68580](v45, -1, -1);
            }

            sub_21EA67BCC(a1, a2, a3, a4);
            goto LABEL_34;
          }

          sub_21EA61450(a1, a2, a3, a4);
          if (qword_28125B8A0 != -1)
          {
            swift_once();
          }

          v28 = sub_21EAA8790();
          __swift_project_value_buffer(v28, qword_28125B8A8);

          v29 = sub_21EAA8760();
          v30 = sub_21EAA9000();

          if (!os_log_type_enabled(v29, v30))
          {
            goto LABEL_33;
          }

          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v152[0] = v32;
          *v31 = 136315394;
          *(v31 + 4) = sub_21E9FE748(a1, a2, v152);
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_21E9FE748(a3, a4, v152);
          v33 = "Remove intent from local deferred due to assertion -- bundle identifier:%s data source identifier:%s.";
LABEL_24:
          _os_log_impl(&dword_21E9F5000, v29, v30, v33, v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D68580](v32, -1, -1);
          v35 = v31;
          goto LABEL_32;
        }
      }

      if (qword_28125B8A0 != -1)
      {
LABEL_120:
        swift_once();
      }

      v34 = sub_21EAA8790();
      __swift_project_value_buffer(v34, qword_28125B8A8);

      v29 = sub_21EAA8760();
      v30 = sub_21EAA8FE0();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_33;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v152[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_21E9FE748(a1, a2, v152);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_21E9FE748(a3, a4, v152);
      v33 = "Remove intent from local failed because no intents found with bundle identifier:%s data source identifier:%s.";
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  v15 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  swift_beginAccess();
  v16 = *(v5 + v15);
  if (!*(v16 + 16))
  {
LABEL_28:
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v38 = sub_21EAA8790();
    __swift_project_value_buffer(v38, qword_28125B8A8);

    v29 = sub_21EAA8760();
    v39 = sub_21EAA8FE0();

    if (!os_log_type_enabled(v29, v39))
    {
      goto LABEL_33;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v152[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_21E9FE748(a1, a2, v152);
    _os_log_impl(&dword_21E9F5000, v29, v39, "Remove all intents from local failed because no intents found with bundle identifier:%s.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x223D68580](v41, -1, -1);
    v35 = v40;
LABEL_32:
    MEMORY[0x223D68580](v35, -1, -1);
LABEL_33:

    goto LABEL_34;
  }

  v17 = sub_21EA49DF4(a1, a2);
  if ((v18 & 1) == 0)
  {

    goto LABEL_28;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (v14)
  {
    swift_bridgeObjectRetain_n();

    sub_21EA5F834(v14);
    a4 = sub_21EA66394(v19, v20);
  }

  else
  {

    a4 = MEMORY[0x277D84FA0];
  }

  v142 = v19;
  if (!*(a4 + 16))
  {

    if (qword_28125B8A0 != -1)
    {
      goto LABEL_130;
    }

    goto LABEL_94;
  }

  v141 = v15;
  v47 = a4 + 56;
  v48 = 1 << *(a4 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a4 + 56);
  v51 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;

  v146 = v51;
  swift_beginAccess();
  v15 = 0;
  a3 = ((v48 + 63) >> 6);
  v144 = a4;
  v145 = a2;
  v148 = a1;
  for (i = a4 + 56; ; v47 = i)
  {
    if (!v50)
    {
      while (1)
      {
        v52 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_119;
        }

        if (v52 >= a3)
        {
          break;
        }

        v50 = *(v47 + 8 * v52);
        ++v15;
        if (v50)
        {
          v15 = v52;
          goto LABEL_52;
        }
      }

      if (qword_28125B8A0 != -1)
      {
        goto LABEL_127;
      }

LABEL_89:
      v101 = sub_21EAA8790();
      __swift_project_value_buffer(v101, qword_28125B8A8);

      v102 = sub_21EAA8760();
      v103 = sub_21EAA9000();

      a3 = v142;
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v151[0] = v105;
        *v104 = 136315394;
        *(v104 + 4) = sub_21E9FE748(a1, v145, v151);
        *(v104 + 12) = 2080;
        v106 = sub_21EAA8F70();
        v108 = sub_21E9FE748(v106, v107, v151);

        *(v104 + 14) = v108;
        _os_log_impl(&dword_21E9F5000, v102, v103, "Remove intents from local deferred due to assertions -- bundle identifier:%s deferred data source identifiers:%s.", v104, 0x16u);
        swift_arrayDestroy();
        v109 = v105;
        a4 = v144;
        MEMORY[0x223D68580](v109, -1, -1);
        v110 = v104;
        a2 = v145;
        MEMORY[0x223D68580](v110, -1, -1);
      }

      sub_21EA5F834(v111);
      if (*(a4 + 16) <= *(v112 + 16) >> 3)
      {
        v151[0] = v112;
        sub_21EA66534(a4);

        v113 = v151[0];
      }

      else
      {
        v113 = sub_21EA66660(a4, v112);
      }

      if (*(v113 + 16))
      {

        v119 = sub_21EAA8760();
        v120 = sub_21EAA9000();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          a4 = swift_slowAlloc();
          v151[0] = a4;
          *v121 = 136315394;
          *(v121 + 4) = sub_21E9FE748(v148, a2, v151);
          *(v121 + 12) = 2080;
          v122 = sub_21EAA8F70();
          v124 = sub_21E9FE748(v122, v123, v151);

          *(v121 + 14) = v124;
          a2 = v145;
          _os_log_impl(&dword_21E9F5000, v119, v120, "Remove intents from local succeeded with bundle identifier:%s data source identifiers:%s.", v121, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D68580](a4, -1, -1);
          MEMORY[0x223D68580](v121, -1, -1);
        }

        a3 = v142;
      }

      v125 = 0;
      v147 = v113;
      v126 = v113 + 56;
      v127 = 1 << *(v113 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v113 + 56);
      v130 = (v127 + 63) >> 6;
      while (1)
      {
        a1 = v148;
        if (!v129)
        {
          break;
        }

LABEL_113:
        v134 = (*(v147 + 48) + ((v125 << 10) | (16 * __clz(__rbit64(v129)))));
        v136 = *v134;
        v135 = v134[1];

        v137 = sub_21EA49DF4(v136, v135);
        if (v138)
        {
          a4 = v137;
          v139 = swift_isUniquelyReferenced_nonNull_native();
          v151[0] = a3;
          if (!v139)
          {
            sub_21EA651D4();
            a3 = v151[0];
          }

          sub_21EA64700(a4, a3, v131);
        }

        v129 &= v129 - 1;
        v132 = v136;
        a2 = v145;
        sub_21EA67BCC(v148, v145, v132, v135);
      }

      while (1)
      {
        v133 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          break;
        }

        if (v133 >= v130)
        {

          v15 = v141;
          if (!a3[2])
          {
            goto LABEL_97;
          }

          goto LABEL_117;
        }

        v129 = *(v126 + 8 * v133);
        ++v125;
        if (v129)
        {
          v125 = v133;
          goto LABEL_113;
        }
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_52:
    v53 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v54 = (*(a4 + 48) + ((v15 << 10) | (16 * v53)));
    v55 = *v54;
    a2 = v54[1];
    v56 = *(v5 + v146);
    v57 = *(v56 + 16);

    if (!v57)
    {
      goto LABEL_59;
    }

    v58 = sub_21EA49DF4(a1, v145);
    if ((v59 & 1) == 0)
    {

LABEL_59:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC88, &qword_21EAB6F70);
      a1 = sub_21EAA94E0();

      v68 = sub_21EA49DF4(v55, a2);
      v70 = v69;

      if (v70)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      *(a1 + 8 * (v68 >> 6) + 64) |= 1 << v68;
      v71 = (*(a1 + 48) + 16 * v68);
      *v71 = v55;
      v71[1] = a2;
      *(*(a1 + 56) + v68) = 1;
      v72 = *(a1 + 16);
      v65 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v65)
      {
        goto LABEL_122;
      }

      *(a1 + 16) = v73;
      swift_beginAccess();
      a2 = v145;

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v5 + v146);
      *(v5 + v146) = 0x8000000000000000;
      v76 = sub_21EA49DF4(v148, v145);
      v78 = v75[2];
      v79 = (v77 & 1) == 0;
      v65 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v65)
      {
        goto LABEL_123;
      }

      a4 = v77;
      if (v75[3] >= v80)
      {
        if ((v74 & 1) == 0)
        {
          v86 = v76;
          sub_21EA65340(&qword_27CEDCC68, &qword_21EAB7040);
          v76 = v86;
          if (a4)
          {
            goto LABEL_45;
          }

          goto LABEL_67;
        }
      }

      else
      {
        sub_21EA63D34(v80, v74, &qword_27CEDCC68, &qword_21EAB7040);
        v76 = sub_21EA49DF4(v148, v145);
        if ((a4 & 1) != (v81 & 1))
        {
          goto LABEL_131;
        }
      }

      if (a4)
      {
        goto LABEL_45;
      }

LABEL_67:
      v75[(v76 >> 6) + 8] |= 1 << v76;
      v82 = (v75[6] + 16 * v76);
      *v82 = v148;
      v82[1] = v145;
      *(v75[7] + 8 * v76) = a1;
      v83 = v75[2];
      v65 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v65)
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        swift_once();
        goto LABEL_89;
      }

      goto LABEL_85;
    }

    v60 = *(*(v56 + 56) + 8 * v58);

    a1 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v60;
    v61 = sub_21EA49DF4(v55, a2);
    v63 = *(v60 + 16);
    v64 = (v62 & 1) == 0;
    v65 = __OFADD__(v63, v64);
    v66 = v63 + v64;
    if (v65)
    {
      goto LABEL_125;
    }

    a4 = v62;
    if (*(v60 + 24) < v66)
    {
      sub_21EA637F0(v66, a1);
      v61 = sub_21EA49DF4(v55, a2);
      if ((a4 & 1) != (v67 & 1))
      {
        goto LABEL_131;
      }

LABEL_71:
      if (a4)
      {
        goto LABEL_72;
      }

      goto LABEL_76;
    }

    if (a1)
    {
      goto LABEL_71;
    }

    v87 = v61;
    sub_21EA6506C();
    v61 = v87;
    if (a4)
    {
LABEL_72:
      v85 = v61;

      a1 = v151[0];
      *(*(v151[0] + 56) + v85) = 1;
      goto LABEL_78;
    }

LABEL_76:
    a1 = v151[0];
    *(v151[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
    v88 = (*(a1 + 48) + 16 * v61);
    *v88 = v55;
    v88[1] = a2;
    *(*(a1 + 56) + v61) = 1;
    v89 = *(a1 + 16);
    v65 = __OFADD__(v89, 1);
    v90 = v89 + 1;
    if (v65)
    {
      break;
    }

    *(a1 + 16) = v90;
LABEL_78:
    a2 = v145;
    swift_beginAccess();

    v91 = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v5 + v146);
    *(v5 + v146) = 0x8000000000000000;
    v76 = sub_21EA49DF4(v148, v145);
    v93 = v75[2];
    v94 = (v92 & 1) == 0;
    v65 = __OFADD__(v93, v94);
    v95 = v93 + v94;
    if (v65)
    {
      goto LABEL_126;
    }

    v96 = v92;
    if (v75[3] >= v95)
    {
      if ((v91 & 1) == 0)
      {
        v100 = v76;
        sub_21EA65340(&qword_27CEDCC68, &qword_21EAB7040);
        v76 = v100;
        if (v96)
        {
LABEL_45:
          *(v75[7] + 8 * v76) = a1;

          goto LABEL_46;
        }

        goto LABEL_84;
      }
    }

    else
    {
      sub_21EA63D34(v95, v91, &qword_27CEDCC68, &qword_21EAB7040);
      v76 = sub_21EA49DF4(v148, v145);
      if ((v96 & 1) != (v97 & 1))
      {
LABEL_131:
        sub_21EAA9560();
        __break(1u);
        return;
      }
    }

    if (v96)
    {
      goto LABEL_45;
    }

LABEL_84:
    v75[(v76 >> 6) + 8] |= 1 << v76;
    v98 = (v75[6] + 16 * v76);
    *v98 = v148;
    v98[1] = v145;
    *(v75[7] + 8 * v76) = a1;
    v99 = v75[2];
    v65 = __OFADD__(v99, 1);
    v84 = v99 + 1;
    if (v65)
    {
      goto LABEL_129;
    }

LABEL_85:
    v75[2] = v84;
LABEL_46:
    a1 = v148;
    a4 = v144;
    *(v5 + v146) = v75;
    swift_endAccess();
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  swift_once();
LABEL_94:
  v114 = sub_21EAA8790();
  __swift_project_value_buffer(v114, qword_28125B8A8);

  v115 = sub_21EAA8760();
  v116 = sub_21EAA9000();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v152[0] = v118;
    *v117 = 136315138;
    *(v117 + 4) = sub_21E9FE748(a1, a2, v152);
    _os_log_impl(&dword_21E9F5000, v115, v116, "Remove all intents from local succeeded with bundle identifier:%s.", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x223D68580](v118, -1, -1);
    MEMORY[0x223D68580](v117, -1, -1);
  }

  sub_21EA67BCC(a1, a2, 0, 0);
  a3 = MEMORY[0x277D84F98];
  if (*(MEMORY[0x277D84F98] + 16))
  {
LABEL_117:
    swift_beginAccess();

    v140 = swift_isUniquelyReferenced_nonNull_native();
    v150 = *(v5 + v15);
    *(v5 + v15) = 0x8000000000000000;
    sub_21EA65BEC(a3, a1, a2, v140, &qword_27CEDCC78, &unk_21EAB7030);

    *(v5 + v15) = v150;
    swift_endAccess();
  }

  else
  {
LABEL_97:

    swift_beginAccess();
    sub_21EA62DDC(a1, a2, &qword_27CEDCC78, &unk_21EAB7030);
    swift_endAccess();
  }

LABEL_34:
}

uint64_t sub_21EA61450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_21EA49DF4(a1, a2);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF58, &qword_21EAB7050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21EAB6F50;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = 1;

    v16 = sub_21EA513B0(inited);
    swift_setDeallocating();
    sub_21EA488A0(inited + 32, &qword_27CEDCF60, &qword_21EAB7058);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21EA65F04(1, a3, a4, isUniquelyReferenced_nonNull_native);
  v16 = v14;
LABEL_6:
  swift_beginAccess();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + v10);
  *(v5 + v10) = 0x8000000000000000;
  sub_21EA65BEC(v16, a1, a2, v18, &qword_27CEDCC68, &qword_21EAB7040);

  *(v5 + v10) = v20;
  return swift_endAccess();
}

os_log_t sub_21EA616B0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  sub_21EA5FB48(a1, a2, a3, a4);
  v14 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  swift_beginAccess();
  v15 = *(v7 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_21EA49DF4(a1, a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      if (*(v18 + 16))
      {
        v19 = sub_21EA49DF4(a3, a4);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v19);

          return v21;
        }
      }
    }
  }

  v22 = sub_21EA6808C(a1, a2, a3, a4);
  if (v22)
  {
    v21 = v22;
    sub_21EA5FE30(v22, a1, a2, a3, a4);
  }

  else if (a5)
  {

    v21 = a5(v23);
    if (v21)
    {
      sub_21EA5FB48(a1, a2, a3, a4);
      sub_21EA5FE30(v21, a1, a2, a3, a4);
      sub_21EA67554(v21, a1, a2, a3, a4);
    }

    sub_21E9FFAF0(a5, a6);
  }

  else
  {
    return 0;
  }

  return v21;
}

id sub_21EA6196C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v10 = sub_21EAA8790();
  __swift_project_value_buffer(v10, qword_28125B8A8);

  v11 = sub_21EAA8760();
  v12 = sub_21EAA9000();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_21E9FE748(a1, a2, v43);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_21E9FE748(a3, a4, v43);
    _os_log_impl(&dword_21E9F5000, v11, v12, "Acquiring persistence assertion for bundle identifier:%s data source identifier:%s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D68580](v14, -1, -1);
    MEMORY[0x223D68580](v13, -1, -1);
  }

  v15 = type metadata accessor for ControlIntentPersistenceAssertion();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR___CCUIControlIntentPersistenceAssertion_bundleIdentifier];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v16[OBJC_IVAR___CCUIControlIntentPersistenceAssertion_dataSourceIdentifier];
  *v18 = a3;
  *(v18 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v44.receiver = v16;
  v44.super_class = v15;

  v19 = objc_msgSendSuper2(&v44, sel_init);
  v20 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  swift_beginAccess();
  v21 = *(v5 + v20);
  if (!*(v21 + 16))
  {
    goto LABEL_13;
  }

  v22 = sub_21EA49DF4(a1, a2);
  if ((v23 & 1) == 0)
  {

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF08, &qword_21EAB6F78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21EAB6F50;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10, &qword_21EAB6F80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21EAB6F60;
    *(v31 + 32) = v19;
    *(inited + 48) = v31;

    v32 = v19;
    v33 = sub_21EA514AC(inited);
    swift_setDeallocating();
    sub_21EA488A0(inited + 32, &qword_27CEDCF18, &qword_21EAB6F88);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v5 + v20);
    *(v5 + v20) = 0x8000000000000000;
    sub_21EA65BEC(v33, a1, a2, isUniquelyReferenced_nonNull_native, &qword_27CEDCC70, &unk_21EAB6B20);

    *(v5 + v20) = v40;
    swift_endAccess();
    return v19;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  if (*(v24 + 16) && (v25 = sub_21EA49DF4(a3, a4), (v26 & 1) != 0))
  {
    v42 = *(*(v24 + 56) + 8 * v25);

    v27 = v19;
    MEMORY[0x223D66C60]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21EAA8EE0();
    }

    sub_21EAA8EF0();

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_21EA65BEC(v42, a3, a4, v28, &qword_27CEDCC80, &unk_21EAB6B30);

    v29 = v24;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10, &qword_21EAB6F80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21EAB6F60;
    *(v35 + 32) = v19;

    v36 = v19;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_21EA65BEC(v35, a3, a4, v37, &qword_27CEDCC80, &unk_21EAB6B30);

    v29 = v24;
  }

  swift_beginAccess();

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v5 + v20);
  *(v5 + v20) = 0x8000000000000000;
  sub_21EA65BEC(v29, a1, a2, v38, &qword_27CEDCC70, &unk_21EAB6B20);

  *(v5 + v20) = v41;
  swift_endAccess();

  return v19;
}

double sub_21EA61F80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v11 = sub_21EAA8790();
  __swift_project_value_buffer(v11, qword_28125B8A8);

  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a4;
    v16 = swift_slowAlloc();
    v46[0] = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_21E9FE748(a2, a3, v46);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_21E9FE748(v15, a5, v46);
    _os_log_impl(&dword_21E9F5000, v12, v13, "Removing persistence assertion for bundle identifier:%s data source identifier:%s.", v14, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    a4 = v15;
    MEMORY[0x223D68580](v17, -1, -1);
    MEMORY[0x223D68580](v14, -1, -1);
  }

  v18 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  swift_beginAccess();
  v20 = *(v6 + v18);
  if (*(v20 + 16))
  {

    v21 = a2;
    v22 = sub_21EA49DF4(a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    v24 = *(*(v20 + 56) + 8 * v22);

    v47 = v24;
    if (!*(v24 + 16))
    {
      goto LABEL_11;
    }

    v25 = sub_21EA49DF4(a4, a5);
    if ((v26 & 1) == 0)
    {
      goto LABEL_11;
    }

    v40 = a4;
    v45 = *(*(v24 + 56) + 8 * v25);
    swift_bridgeObjectRetain_n();
    v27 = sub_21EA5F950(a1, v45);
    v29 = v28;

    if (v29)
    {

LABEL_11:

      return result;
    }

    if (v45 >> 62)
    {
      v30 = v40;
      if (sub_21EAA9380())
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = v40;
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v24;
        sub_21EA65BEC(v45, v30, a5, isUniquelyReferenced_nonNull_native, &qword_27CEDCC80, &unk_21EAB6B30);

        swift_beginAccess();

        v32 = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v6 + v18);
        *(v6 + v18) = 0x8000000000000000;
        sub_21EA65BEC(v24, v21, a3, v32, &qword_27CEDCC70, &unk_21EAB6B20);

        *(v6 + v18) = v42;
        swift_endAccess();

        return result;
      }
    }

    sub_21EA62DDC(v30, a5, &qword_27CEDCC80, &unk_21EAB6B30);

    v33 = v47;
    if (*(v47 + 16))
    {
      swift_beginAccess();

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v6 + v18);
      *(v6 + v18) = 0x8000000000000000;
      sub_21EA65BEC(v33, v21, a3, v34, &qword_27CEDCC70, &unk_21EAB6B20);

      *(v6 + v18) = v43;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      sub_21EA62DDC(v21, a3, &qword_27CEDCC70, &unk_21EAB6B20);
      swift_endAccess();
    }

    if (sub_21EA62688(v21, a3, v30, a5))
    {

      v35 = sub_21EAA8760();
      v36 = sub_21EAA9000();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44[0] = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_21E9FE748(v21, a3, v44);
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_21E9FE748(v40, a5, v44);
        _os_log_impl(&dword_21E9F5000, v35, v36, "Performing deferred intent removal for bundle identifier:%s data source identifier:%s.", v37, 0x16u);
        swift_arrayDestroy();
        v39 = v38;
        v30 = v40;
        MEMORY[0x223D68580](v39, -1, -1);
        MEMORY[0x223D68580](v37, -1, -1);
      }

      sub_21EA5FB48(v21, a3, v30, a5);
      sub_21EA600EC(v21, a3, v30, a5);
    }

    goto LABEL_11;
  }

  return result;
}

unint64_t sub_21EA6256C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_21EA6726C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_21EA625FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21EA672D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21EA62688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_21EA49DF4(a1, a2);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    if (*(v13 + 16) && (v14 = sub_21EA49DF4(a3, a4), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_21EA62770()
{
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v0 = sub_21EAA8790();
  __swift_project_value_buffer(v0, qword_28125B8A8);
  oslog = sub_21EAA8760();
  v1 = sub_21EAA9000();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21E9F5000, oslog, v1, "Control intent store is synchronized.", v2, 2u);
    MEMORY[0x223D68580](v2, -1, -1);
  }
}

id ControlIntentStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlIntentStore.init()()
{
  v1 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_21EA514C0(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  *&v0[v3] = sub_21EA514D4(v2);
  v4 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  *&v0[v4] = sub_21EA514E8(v2);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ControlIntentStore();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21EA62B1C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_21EA62BB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF50, &qword_21EAB7048);
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

uint64_t sub_21EA62CAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21EA49DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 7;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA64C28();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + v6);
  sub_21EA64550(v6, v8, v10);
  *v3 = v8;
  return v9;
}

uint64_t sub_21EA62D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21EA49DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 2;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA6506C();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + v6);
  sub_21EA64550(v6, v8, v10);
  *v3 = v8;
  return v9;
}

uint64_t sub_21EA62DDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = sub_21EA49DF4(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v16 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA65340(a3, a4);
    v12 = v16;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  sub_21EA64700(v10, v12, v14);
  *v7 = v12;
  return v13;
}

uint64_t sub_21EA62E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21EA49DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA651D4();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21EA64700(v6, v8, v10);
  *v3 = v8;
  return v9;
}

double sub_21EA62F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21EA49DF4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21EA654A0();
      v10 = v13;
    }

    sub_21EA51D48((*(v10 + 56) + 32 * v8), a3);
    sub_21EA648B0(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_21EA62FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC20, &unk_21EAB7000);
  v35 = v4;
  v6 = sub_21EAA94D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_21EAA95B0();
      sub_21EAA8E40();
      v25 = sub_21EAA95D0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}