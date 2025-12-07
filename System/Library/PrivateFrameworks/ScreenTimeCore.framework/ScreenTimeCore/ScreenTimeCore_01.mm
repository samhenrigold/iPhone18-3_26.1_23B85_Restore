id sub_1B83B3744(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  sub_1B83A1210(0, &qword_1EBA84D30, 0x1E6996208);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1B83DD8FC();
  v15[0] = 0;
  v4 = [ObjCClassFromMetadata declarationForData:v3 error:v15];

  v5 = v15[0];
  if (!v4)
  {
    v10 = v15[0];
    sub_1B83DD8CC();

    swift_willThrow();
    return v5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    sub_1B83B3910();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v5;
LABEL_8:

    return v5;
  }

  v7 = v6;
  v4 = v4;
  v8 = v5;
  v9 = [v7 payloadRatingApps];
  if (!v9)
  {
    sub_1B83B3910();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v5 = v9;

  return v5;
}

unint64_t sub_1B83B3910()
{
  result = qword_1EBA84D38;
  if (!qword_1EBA84D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84D38);
  }

  return result;
}

uint64_t sub_1B83B3964(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B83DE18C() & 1;
  }
}

uint64_t sub_1B83B39BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1B83B3A18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B83B3A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84D50, &qword_1B83E8A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B83B3B00()
{
  result = qword_1EBA84D58;
  if (!qword_1EBA84D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84D58);
  }

  return result;
}

id STOrganizationSettingsRestrictionUtility.init(persistenceController:restrictionPayloadUtility:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistenceController:a1 restrictionPayloadUtility:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

{
  *&v2[OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation] = sub_1B83B5774(a1, a2);
  v5.receiver = v2;
  v5.super_class = STOrganizationSettingsRestrictionUtility;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

id STOrganizationSettingsRestrictionUtility.init(persistenceController:restrictionPayloadUtility:userDefaults:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistenceController:a1 restrictionPayloadUtility:a2 userDefaults:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

{
  v7 = type metadata accessor for STOrganizationSettingsRestrictionUtilityImplementation();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_persistenceController] = a1;
  *&v8[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_restrictionPayloadUtility] = a2;
  *&v8[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_userDefaults] = a3;
  v13.receiver = v8;
  v13.super_class = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a3;
  *&v3[OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation] = objc_msgSendSuper2(&v13, sel_init);
  v12.receiver = v3;
  v12.super_class = STOrganizationSettingsRestrictionUtility;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

uint64_t STOrganizationSettingsRestrictionUtility.isImageGenerationAllowed(forUserDSID:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1B83DDE3C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;

  sub_1B83B4324(0, 0, v9, &unk_1B83E8B10, v11);
}

uint64_t sub_1B83B4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B83B4058, 0, 0);
}

uint64_t sub_1B83B4058()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B83B40FC;
  v2 = *(v0 + 24);

  return sub_1B83B4A64(v2);
}

uint64_t sub_1B83B40FC(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1B83B4294;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = sub_1B83B4228;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B83B4228()
{
  (*(v0 + 32))(*(v0 + 64), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B83B4294()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B83B4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B83B67D8(a3, v25 - v10);
  v12 = sub_1B83DDE3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B83B6848(v11);
  }

  else
  {
    sub_1B83DDE2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B83DDE1C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B83DDD4C() + 32;
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

      sub_1B83B6848(a3);

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

  sub_1B83B6848(a3);
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

void sub_1B83B473C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B83DD8BC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> STOrganizationSettingsRestrictionUtility.isImageGenerationAllowed(forUserDSID:)(NSNumber forUserDSID)
{
  result.super.super.isa = sub_1B83B4FC4(forUserDSID.super.super.isa);
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return result;
}

void __swiftcall STOrganizationSettingsRestrictionUtility.init()(STOrganizationSettingsRestrictionUtility *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B83B4998()
{
  v0 = sub_1B83DDC5C();
  __swift_allocate_value_buffer(v0, qword_1EBA83740);
  __swift_project_value_buffer(v0, qword_1EBA83740);
  return sub_1B83DDC4C();
}

uint64_t sub_1B83B4A1C()
{
  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  result = sub_1B83DDF0C();
  qword_1EBA84D68 = result;
  return result;
}

uint64_t sub_1B83B4A64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B83DDECC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83B4B24, 0, 0);
}

uint64_t sub_1B83B4B24()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = [*&v4[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_persistenceController] newBackgroundContext];
  v0[7] = v6;
  v7 = swift_allocObject();
  v0[8] = v7;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = v4;
  v9 = v5;
  v6;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1B83B4C84;
  v11 = v0[6];
  v12 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEDB6538](v0 + 11, v11, sub_1B83B6A8C, v7, v12);
}

uint64_t sub_1B83B4C84()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B83B4F54;
  }

  else
  {
    v5 = sub_1B83B4E18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B83B4E18()
{
  v1 = *(v0 + 88);
  if (qword_1EBA83738 != -1)
  {
    swift_once();
  }

  v2 = sub_1B83DDC5C();
  __swift_project_value_buffer(v2, qword_1EBA83740);
  v3 = sub_1B83DDC3C();
  v4 = sub_1B83DDEAC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1B831F000, v3, v4, "Image Creation: STOrganizationSettingsRestrictionUtility returning isAllowed = %{BOOL}d", v5, 8u);
    MEMORY[0x1B8CBE260](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_1B83B4F54()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1B83B4FC4(uint64_t a1)
{
  v4 = [*(v1 + OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_persistenceController) newBackgroundContext];
  sub_1B83DDEBC();
  if (v2)
  {
  }

  else
  {
    v3 = v10;
    if (qword_1EBA83738 != -1)
    {
      swift_once();
    }

    v5 = sub_1B83DDC5C();
    __swift_project_value_buffer(v5, qword_1EBA83740);
    v6 = sub_1B83DDC3C();
    v7 = sub_1B83DDEAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v10;
      _os_log_impl(&dword_1B831F000, v6, v7, "Image Creation: STOrganizationSettingsRestrictionUtility returning isAllowed = %{BOOL}d", v8, 8u);
      MEMORY[0x1B8CBE260](v8, -1, -1);
    }
  }

  return v3 & 1;
}

uint64_t sub_1B83B5134(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v3 = [objc_opt_self() fetchUserWithDSID:a1 inContext:a2 error:v9];
  if (v3)
  {
    v4 = v3;
    v5 = v9[0];
    v6 = [v4 contentPrivacySiriImageGenerationRestriction];
    if (v6)
    {
      if (v6 == 2)
      {

        LOBYTE(v2) = 0;
      }

      else if (v6 == 1)
      {

        LOBYTE(v2) = 1;
      }

      else
      {
        sub_1B83B5A64();
        swift_allocError();
        *v7 = 1;
        swift_willThrow();
      }
    }

    else
    {
      LOBYTE(v2) = sub_1B83B6108(v4);
    }
  }

  else
  {
    v2 = v9[0];
    sub_1B83DD8CC();

    swift_willThrow();
  }

  return v2 & 1;
}

id sub_1B83B52C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STOrganizationSettingsRestrictionUtilityImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B83B5358(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B83B5450;

  return v6(a1);
}

uint64_t sub_1B83B5450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B83B5548(id result, uint64_t a2)
{
  v3 = v2;
  v4 = v2[2];
  while (1)
  {
    if ((~v4 & 0xF000000000000007) == 0)
    {
      goto LABEL_20;
    }

    if (v4 < 0)
    {
      if (sub_1B83DDFCC())
      {
        sub_1B83A1210(0, &qword_1EBA84E88, off_1E7CE5D98);
        swift_dynamicCast();
        if (v23)
        {
          return;
        }
      }

      goto LABEL_20;
    }

    v9 = v3[5];
    v10 = v3[6];
    if (!v10)
    {
      break;
    }

    v11 = v3[5];
LABEL_18:
    v15 = (v10 - 1) & v10;
    v16 = *(*(v4 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    v17 = v16;
    v14 = v11;
LABEL_19:
    v3[5] = v14;
    v3[6] = v15;
    if (v16)
    {
      return;
    }

LABEL_20:
    v18 = v3[1];
    v19 = *(*v3 + 16);
    if (v18 == v19)
    {
      return;
    }

    if (v18 >= v19)
    {
      goto LABEL_30;
    }

    v4 = *(*v3 + 8 * v18 + 32);
    v3[1] = v18 + 1;
    if ((v4 & 0xC000000000000001) != 0)
    {

      sub_1B83DDF8C();
      sub_1B83A1210(0, &qword_1EBA84E88, off_1E7CE5D98);
      sub_1B83B6494();
      sub_1B83DDE8C();
      v4 = v24;
      v5 = v25;
      v7 = v26;
      v6 = v27;
      v8 = v28;
    }

    else
    {
      v20 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v7 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v8 = v22 & *(v4 + 56);

      v6 = 0;
    }

    sub_1B83B64FC(v3[2]);
    v3[2] = v4;
    v3[3] = v5;
    v3[4] = v7;
    v3[5] = v6;
    v3[6] = v8;
  }

  v12 = (v3[4] + 64) >> 6;
  if (v12 <= v9 + 1)
  {
    v13 = v9 + 1;
  }

  else
  {
    v13 = (v3[4] + 64) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_19;
    }

    v10 = *(v3[3] + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

id sub_1B83B5774(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1B83DDCBC();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (qword_1EBA83738 != -1)
    {
      swift_once();
    }

    v8 = sub_1B83DDC5C();
    __swift_project_value_buffer(v8, qword_1EBA83740);
    v9 = sub_1B83DDC3C();
    v10 = sub_1B83DDE9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B831F000, v9, v10, "Could not initialize customUserDefaults. Using standard as a fallback.", v11, 2u);
      MEMORY[0x1B8CBE260](v11, -1, -1);
    }

    v7 = [objc_opt_self() standardUserDefaults];
  }

  v12 = v7;
  v13 = type metadata accessor for STOrganizationSettingsRestrictionUtilityImplementation();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_persistenceController] = a1;
  *&v14[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_restrictionPayloadUtility] = a2;
  *&v14[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_userDefaults] = v12;
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

uint64_t sub_1B83B597C(uint64_t a1)
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
  v10[1] = sub_1B83B6A88;

  return sub_1B83B4034(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1B83B5A64()
{
  result = qword_1EBA84E70;
  if (!qword_1EBA84E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84E70);
  }

  return result;
}

id sub_1B83B5AB8(void *a1)
{
  v1 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v2 = [a1 managingOrganization];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() fetchRequestMatchingBlueprintsForUser:v1 fromOrganization:v2 includeTombstones:0];
    v66 = 0;
    v5 = [v4 execute_];
    v6 = v66;
    if (v5)
    {
      v7 = v5;
      v58 = v4;
      sub_1B83A1210(0, &qword_1EBA84E80, off_1E7CE5D88);
      v8 = sub_1B83DDDDC();
      v9 = v6;

      if (v8 >> 62)
      {
LABEL_25:
        v10 = sub_1B83DDF9C();
        v59 = v3;
        if (v10)
        {
LABEL_5:
          v11 = 0;
          v60 = MEMORY[0x1E69E7CC0];
          v3 = (v8 & 0xC000000000000001);
          do
          {
            v12 = v11;
            while (1)
            {
              if (v3)
              {
                v13 = MEMORY[0x1B8CBD580](v12, v8);
              }

              else
              {
                if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_24;
                }

                v13 = *(v8 + 8 * v12 + 32);
              }

              v14 = v13;
              v11 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v15 = [v13 configurations];
              if (v15)
              {
                break;
              }

              ++v12;
              if (v11 == v10)
              {
                goto LABEL_27;
              }
            }

            v16 = v15;
            sub_1B83A1210(0, &qword_1EBA84E88, off_1E7CE5D98);
            sub_1B83B6494();
            v62 = sub_1B83DDE7C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1B83BE340(0, v60[2] + 1, 1, v60);
            }

            v18 = v60[2];
            v17 = v60[3];
            if (v18 >= v17 >> 1)
            {
              v60 = sub_1B83BE340((v17 > 1), v18 + 1, 1, v60);
            }

            v60[2] = v18 + 1;
            v60[v18 + 4] = v62;
          }

          while (v11 != v10);
LABEL_27:

          v66 = v60;
          v67 = xmmword_1B83E8AF0;
          v68 = 0u;
          v69 = 0u;

          sub_1B83B5548(v20, v21);
          v23 = MEMORY[0x1E69E7CC0];
          if (v22)
          {
            v24 = v22;
            v25 = MEMORY[0x1E69E7CC0];
            do
            {
              v26 = [v24 payloadPlist];
              v27 = sub_1B83DD90C();
              v29 = v28;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_1B83BE234(0, *(v25 + 16) + 1, 1, v25);
                v25 = isUniquelyReferenced_nonNull_native;
              }

              v33 = *(v25 + 16);
              v32 = *(v25 + 24);
              if (v33 >= v32 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_1B83BE234((v32 > 1), v33 + 1, 1, v25);
                v25 = isUniquelyReferenced_nonNull_native;
              }

              *(v25 + 16) = v33 + 1;
              v34 = v25 + 16 * v33;
              *(v34 + 32) = v27;
              *(v34 + 40) = v29;
              sub_1B83B5548(isUniquelyReferenced_nonNull_native, v31);
              v24 = v35;
            }

            while (v35);
          }

          else
          {
            v25 = MEMORY[0x1E69E7CC0];
          }

          v63 = v25;

          v36 = *(&v67 + 1);

          v37 = v36;
          v38 = v25;
          sub_1B83B64FC(v37);
          v66 = v23;
          v39 = *(v25 + 16);
          if (v39)
          {
            v40 = 0;
            v61 = OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_restrictionPayloadUtility;
            v41 = v38 + 40;
            v23 = MEMORY[0x1E69E7CC0];
            v55 = v38 + 40;
            v56 = v39;
            do
            {
              v57 = v23;
              v42 = v39 - v40;
              v23 = v41 + 16 * v40;
              while (1)
              {
                if (v40 >= *(v38 + 16))
                {
                  __break(1u);
                  goto LABEL_53;
                }

                v43 = *(v23 - 8);
                v44 = *v23;
                v45 = *(v64 + v61);
                sub_1B83B6510(v43, *v23);
                v46 = sub_1B83DD8FC();
                v65 = 0;
                v47 = [v45 getAppsRatingFromPayloadPlist:v46 error:&v65];

                if (v47)
                {
                  break;
                }

                v48 = v65;
                v49 = sub_1B83DD8CC();

                swift_willThrow();
                sub_1B83B100C(v43, v44);

                v23 += 16;
                ++v40;
                --v42;
                v38 = v63;
                if (!v42)
                {
                  v23 = v57;
                  goto LABEL_46;
                }
              }

              v50 = v65;
              v51 = sub_1B83B100C(v43, v44);
              MEMORY[0x1B8CBD2E0](v51);
              if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B83DDDEC();
              }

              ++v40;
              sub_1B83DDDFC();
              v23 = v66;
              v38 = v63;
              v41 = v55;
              v39 = v56;
            }

            while (v42 != 1);
          }

LABEL_46:

          if (v23 >> 62)
          {
LABEL_53:
            v52 = v59;
            if (sub_1B83DDF9C())
            {
              goto LABEL_48;
            }
          }

          else
          {
            v52 = v59;
            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_48:
              if ((v23 & 0xC000000000000001) != 0)
              {
                v53 = MEMORY[0x1B8CBD580](0, v23);
              }

              else
              {
                if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                }

                v53 = *(v23 + 32);
              }

              v1 = v53;

              goto LABEL_55;
            }
          }

          v1 = 0;
LABEL_55:

          return v1;
        }
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v59 = v3;
        if (v10)
        {
          goto LABEL_5;
        }
      }

      v60 = MEMORY[0x1E69E7CC0];
      goto LABEL_27;
    }

    v1 = v66;
    sub_1B83DD8CC();

    swift_willThrow();
  }

  else
  {
    sub_1B83B5A64();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1B83B6108(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_userDefaults);
  v5 = sub_1B83DDCBC();
  v6 = [v4 integerForKey_];

  if (v6)
  {
    if (v6 == 1)
    {
LABEL_12:
      v7 = 1;
      return v7 & 1;
    }
  }

  else
  {
    v8 = sub_1B83B5AB8(a1);
    if (v2)
    {
      return v7 & 1;
    }

    v14 = v8;
    if (v8)
    {
      if (qword_1EBA84640 != -1)
      {
        swift_once();
      }

      if ([v14 compare:qword_1EBA84D68]< 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (qword_1EBA83738 != -1)
      {
        swift_once();
      }

      v15 = sub_1B83DDC5C();
      __swift_project_value_buffer(v15, qword_1EBA83740);
      v16 = sub_1B83DDC3C();
      v17 = sub_1B83DDEAC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = v6;
        _os_log_impl(&dword_1B831F000, v16, v17, "Image Creation: STOrganizationSettingsRestrictionUtility found Apps rating; derived Image Creation restriction value %lld", v18, 0xCu);
        MEMORY[0x1B8CBE260](v18, -1, -1);
      }
    }

    else
    {
      if (qword_1EBA83738 != -1)
      {
        swift_once();
      }

      v19 = sub_1B83DDC5C();
      __swift_project_value_buffer(v19, qword_1EBA83740);
      v14 = sub_1B83DDC3C();
      v20 = sub_1B83DDEAC();
      if (os_log_type_enabled(v14, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1B831F000, v14, v20, "Image Creation: STOrganizationSettingsRestrictionUtility found no Apps rating; assuming that Apps is not restricted, so the derived Image Creation restriction value is Allow", v21, 2u);
        MEMORY[0x1B8CBE260](v21, -1, -1);
      }

      v6 = 1;
    }

    v22 = sub_1B83DDCBC();
    [v4 setInteger:v6 forKey:v22];

    if (v6 == 1)
    {
      goto LABEL_12;
    }
  }

  if (v6 != 2)
  {
    if (qword_1EBA83738 != -1)
    {
      swift_once();
    }

    v9 = sub_1B83DDC5C();
    __swift_project_value_buffer(v9, qword_1EBA83740);
    v10 = sub_1B83DDC3C();
    v11 = sub_1B83DDE9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B831F000, v10, v11, "Invalid Image Creation restriction value found in UserDefaults; returning Allow", v12, 2u);
      MEMORY[0x1B8CBE260](v12, -1, -1);
    }

    goto LABEL_12;
  }

  v7 = 0;
  return v7 & 1;
}

unint64_t sub_1B83B6494()
{
  result = qword_1EBA84E90;
  if (!qword_1EBA84E90)
  {
    sub_1B83A1210(255, &qword_1EBA84E88, off_1E7CE5D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84E90);
  }

  return result;
}

uint64_t sub_1B83B64FC(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1B83A5EAC(a1);
  }

  return a1;
}

uint64_t sub_1B83B6510(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B83B65BC(uint64_t a1)
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
  v10[1] = sub_1B83B6690;

  return sub_1B83B4034(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B83B6690()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B83B679C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B83B5134(*(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1B83B67D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B83B6848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B83B68B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B83B6A88;

  return sub_1B83B5358(a1, v4);
}

uint64_t sub_1B83B6968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B83B6690;

  return sub_1B83B5358(a1, v4);
}

unint64_t sub_1B83B6A34()
{
  result = qword_1EBA84E98;
  if (!qword_1EBA84E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84E98);
  }

  return result;
}

unint64_t sub_1B83B6AA4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EC0, &qword_1B83E8C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B83E8C70;
  *(inited + 32) = @"system.ratings.ratingTVShows";
  v3 = @"system.ratings.ratingTVShows";
  *(inited + 40) = [a1 tvShowsRating];
  *(inited + 48) = @"system.ratings.ratingApps";
  v4 = @"system.ratings.ratingApps";
  *(inited + 56) = [a1 appsRating];
  *(inited + 64) = @"system.ratings.ratingMovies";
  v5 = @"system.ratings.ratingMovies";
  *(inited + 72) = [a1 moviesRating];
  *(inited + 80) = @"STCustomRestrictionConfiguration.STCustomRestrictionWebFilterState";
  v6 = @"STCustomRestrictionConfiguration.STCustomRestrictionWebFilterState";
  if ([a1 webFilterState] - 1 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1B83DDF4C();
  }

  *(inited + 88) = v7;
  *(inited + 96) = @"media.settings.allowBookstoreErotica";
  v8 = @"media.settings.allowBookstoreErotica";
  v9 = [a1 allowExplicitBooks];
  if (v9 == 1 || v9 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v10 = sub_1B83DDEFC();
  }

  else
  {
    v10 = 0;
  }

  *(inited + 104) = v10;
  *(inited + 112) = @"system.ratings.allowExplicitContent";
  v11 = @"system.ratings.allowExplicitContent";
  v12 = [a1 allowExplicitMediaContent];
  if (v12 == 1 || v12 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v13 = sub_1B83DDEFC();
  }

  else
  {
    v13 = 0;
  }

  *(inited + 120) = v13;
  *(inited + 128) = @"system.music.allowMusicVideos";
  v14 = @"system.music.allowMusicVideos";
  v15 = [a1 allowMusicVideos];
  if (v15 == 1 || v15 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v16 = sub_1B83DDEFC();
  }

  else
  {
    v16 = 0;
  }

  *(inited + 136) = v16;
  *(inited + 144) = @"system.music.allowMusicArtistActivity";
  v17 = @"system.music.allowMusicArtistActivity";
  v18 = [a1 allowMusicProfiles];
  if (v18 == 1 || v18 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v19 = sub_1B83DDEFC();
  }

  else
  {
    v19 = 0;
  }

  *(inited + 152) = v19;
  *(inited + 160) = @"system.siri.allowAssistantUserGeneratedContent";
  v20 = @"system.siri.allowAssistantUserGeneratedContent";
  v21 = [a1 allowWebContentSearchInSiri];
  if (v21 == 1 || v21 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v22 = sub_1B83DDEFC();
  }

  else
  {
    v22 = 0;
  }

  *(inited + 168) = v22;
  *(inited + 176) = @"system.siri.forceAssistantProfanityFilter";
  v23 = @"system.siri.forceAssistantProfanityFilter";
  v24 = [a1 allowExplicitLanguageInSiri];
  if (v24 == 2 || v24 == 1)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v25 = sub_1B83DDEFC();
  }

  else
  {
    v25 = 0;
  }

  *(inited + 184) = v25;
  *(inited + 192) = @"application.store.allowAppRemoval";
  v26 = @"application.store.allowAppRemoval";
  v27 = [a1 allowDeletingApps];
  if (v27 == 1 || v27 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v28 = sub_1B83DDEFC();
  }

  else
  {
    v28 = 0;
  }

  *(inited + 200) = v28;
  *(inited + 208) = @"system.siri.allowExternalIntelligenceIntegrations";
  v29 = @"system.siri.allowExternalIntelligenceIntegrations";
  v30 = [a1 allowExternalIntelligenceIntegrations];
  if (v30 == 1 || v30 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v31 = sub_1B83DDEFC();
  }

  else
  {
    v31 = 0;
  }

  *(inited + 216) = v31;
  *(inited + 224) = @"system.siri.allowWritingTools";
  v32 = @"system.siri.allowWritingTools";
  v33 = [a1 allowWritingTools];
  if (v33 == 1 || v33 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v34 = sub_1B83DDEFC();
  }

  else
  {
    v34 = 0;
  }

  *(inited + 232) = v34;
  *(inited + 240) = @"STCustomRestrictionConfiguration.STCustomRestrictionImageGeneration";
  v35 = @"STCustomRestrictionConfiguration.STCustomRestrictionImageGeneration";
  v36 = [a1 allowImageCreation];
  if (v36 == 1 || v36 == 2)
  {
    sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
    v37 = sub_1B83DDEFC();
  }

  else
  {
    v37 = 0;
  }

  *(inited + 248) = v37;
  v38 = sub_1B83C4708(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EC8, &qword_1B83E8CA0);
  swift_arrayDestroy();
  return v38;
}

uint64_t sub_1B83B7078@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B83DDCEC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_1B83B70A4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1B83B70B0(void (*a1)(uint64_t *__return_ptr, void **), uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *), uint64_t a4, uint64_t a5)
{
  v6 = (a5 + 64);
  v7 = 1 << *(a5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a5 + 48) + v13);
    v9 &= v9 - 1;
    v30 = *(*(a5 + 56) + v13);
    v31 = v14;
    v15 = v30;
    v16 = v14;
    a1(&v28, &v31);
    v17 = v29;
    if (v29)
    {
      v18 = v28;
      a3(&v28, &v30);
      v19 = v28;

      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1B83BE498(0, v25[2] + 1, 1, v25);
        }

        v21 = v25[2];
        v20 = v25[3];
        if (v21 >= v20 >> 1)
        {
          v25 = sub_1B83BE498((v20 > 1), v21 + 1, 1, v25);
        }

        v25[2] = v21 + 1;
        v22 = &v25[3 * v21];
        v22[4] = v18;
        v22[5] = v17;
        v22[6] = v19;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + v11);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v25[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EB8, &qword_1B83E8C90);
    v23 = sub_1B83DE0DC();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC8];
  }

  v28 = v23;
  sub_1B83B8434(v25, 1, &v28);

  return v28;
}

STRestrictionsConverter __swiftcall STRestrictionsConverter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_1B83B77C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84ED0, &qword_1B83E8CA8);
  v2 = *v0;
  v3 = sub_1B83DE0BC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_1B83B7940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EB8, &qword_1B83E8C90);
  v2 = *v0;
  v3 = sub_1B83DE0BC();
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

        result = v20;
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

id sub_1B83B7AAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EB0, &qword_1B83E8C88);
  v2 = *v0;
  v3 = sub_1B83DE0BC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_1B83B7C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84ED0, &qword_1B83E8CA8);
  v37 = v4;
  result = sub_1B83DE0CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1B83DE20C();
      sub_1B83DDD5C();
      result = sub_1B83DE24C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B83B7ECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EB8, &qword_1B83E8C90);
  v35 = v4;
  result = sub_1B83DE0CC();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B83DE20C();
      sub_1B83DDD5C();
      result = sub_1B83DE24C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
  return result;
}

uint64_t sub_1B83B8170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EB0, &qword_1B83E8C88);
  v36 = v4;
  result = sub_1B83DE0CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_1B83DDCEC();
      sub_1B83DE20C();
      sub_1B83DDD5C();
      v25 = sub_1B83DE24C();

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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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
  return result;
}

void sub_1B83B8434(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_1B83C3DEC(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_1B83B7ECC(v17, v5 & 1);
    v12 = sub_1B83C3DEC(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1B83DE1BC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v25 = (v20[6] + 16 * v12);
    *v25 = v8;
    v25[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v26 = v20[2];
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v27;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v24 = v12;
  sub_1B83B7940();
  v12 = v24;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;

  v22 = v20[7];
  v23 = *(v22 + 8 * v21);
  *(v22 + 8 * v21) = v11;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 9);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v31 = *v5;
      v32 = *a3;

      v8 = v31;
      v33 = sub_1B83C3DEC(v7, v6);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v16 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v16)
      {
        goto LABEL_23;
      }

      v11 = v34;
      if (v32[3] < v37)
      {
        sub_1B83B7ECC(v37, 1);
        v33 = sub_1B83C3DEC(v7, v6);
        if ((v11 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      v39 = *a3;
      if (v11)
      {
        v28 = v33;

        v29 = v39[7];
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v8;
      }

      else
      {
        v39[(v33 >> 6) + 8] |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = v7;
        v40[1] = v6;
        *(v39[7] + 8 * v33) = v8;
        v41 = v39[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v39[2] = v42;
      }

      v5 += 3;
      if (!--v18)
      {
        return;
      }
    }
  }
}

void sub_1B83B86AC(char *a1, char a2, void *a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 5);
  v8 = *a3;
  v9 = *(a1 + 4);
  v10 = v7;
  v11 = sub_1B83C3E64(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v8[3] < v16)
  {
    sub_1B83B8170(v16, v5 & 1);
    v11 = sub_1B83C3E64(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for STAgePresetKey(0);
    v11 = sub_1B83DE1BC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    *(v19[6] + 8 * v11) = v9;
    *(v19[7] + 8 * v11) = v10;
    v24 = v19[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v25;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v23 = v11;
  sub_1B83B7AAC();
  v11 = v23;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v11;

  v21 = v19[7];
  v22 = *(v21 + 8 * v20);
  *(v21 + 8 * v20) = v10;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v29 = *v5;
      v30 = *a3;
      v10 = *(v5 - 1);
      v6 = v29;
      v31 = sub_1B83C3E64(v10);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v15 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v15)
      {
        goto LABEL_23;
      }

      v9 = v32;
      if (v30[3] < v35)
      {
        sub_1B83B8170(v35, 1);
        v31 = sub_1B83C3E64(v10);
        if ((v9 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v9)
      {
        v26 = v31;

        v27 = v37[7];
        v28 = *(v27 + 8 * v26);
        *(v27 + 8 * v26) = v6;
      }

      else
      {
        v37[(v31 >> 6) + 8] |= 1 << v31;
        *(v37[6] + 8 * v31) = v10;
        *(v37[7] + 8 * v31) = v6;
        v38 = v37[2];
        v15 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v37[2] = v39;
      }

      v5 += 2;
      if (!--v17)
      {
        return;
      }
    }
  }
}

id sub_1B83B88FC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1B83DDCEC();
  v7 = v6;
  if (v5 == sub_1B83DDCEC() && v7 == v8)
  {

    goto LABEL_15;
  }

  v10 = sub_1B83DE18C();

  if (v10)
  {
LABEL_15:
    v21 = sel_setTvShowsRating_;
    goto LABEL_16;
  }

  v11 = sub_1B83DDCEC();
  v13 = v12;
  if (v11 == sub_1B83DDCEC() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1B83DE18C();

    if ((v16 & 1) == 0)
    {
      v17 = sub_1B83DDCEC();
      v19 = v18;
      if (v17 == sub_1B83DDCEC() && v19 == v20)
      {

LABEL_23:
        v21 = sel_setMoviesRating_;
        goto LABEL_16;
      }

      v25 = sub_1B83DE18C();

      if (v25)
      {
        goto LABEL_23;
      }

      v26 = sub_1B83DDCEC();
      v28 = v27;
      if (v26 == sub_1B83DDCEC() && v28 == v29)
      {
      }

      else
      {
        v30 = sub_1B83DE18C();

        if ((v30 & 1) == 0)
        {
          v31 = sub_1B83DDCEC();
          v33 = v32;
          if (v31 == sub_1B83DDCEC() && v33 == v34)
          {
          }

          else
          {
            v35 = sub_1B83DE18C();

            if ((v35 & 1) == 0)
            {
              v36 = sub_1B83DDCEC();
              v38 = v37;
              if (v36 == sub_1B83DDCEC() && v38 == v39)
              {
              }

              else
              {
                v40 = sub_1B83DE18C();

                if ((v40 & 1) == 0)
                {
                  v41 = sub_1B83DDCEC();
                  v43 = v42;
                  if (v41 == sub_1B83DDCEC() && v43 == v44)
                  {
                  }

                  else
                  {
                    v45 = sub_1B83DE18C();

                    if ((v45 & 1) == 0)
                    {
                      v46 = sub_1B83DDCEC();
                      v48 = v47;
                      if (v46 == sub_1B83DDCEC() && v48 == v49)
                      {
                      }

                      else
                      {
                        v50 = sub_1B83DE18C();

                        if ((v50 & 1) == 0)
                        {
                          v51 = sub_1B83DDCEC();
                          v53 = v52;
                          if (v51 == sub_1B83DDCEC() && v53 == v54)
                          {
                          }

                          else
                          {
                            v55 = sub_1B83DE18C();

                            if ((v55 & 1) == 0)
                            {
                              v56 = sub_1B83DDCEC();
                              v58 = v57;
                              if (v56 == sub_1B83DDCEC() && v58 == v59)
                              {
                              }

                              else
                              {
                                v60 = sub_1B83DE18C();

                                if ((v60 & 1) == 0)
                                {
                                  v61 = sub_1B83DDCEC();
                                  v63 = v62;
                                  if (v61 == sub_1B83DDCEC() && v63 == v64)
                                  {
                                  }

                                  else
                                  {
                                    v65 = sub_1B83DE18C();

                                    if ((v65 & 1) == 0)
                                    {
                                      v66 = sub_1B83DDCEC();
                                      v68 = v67;
                                      if (v66 == sub_1B83DDCEC() && v68 == v69)
                                      {
                                      }

                                      else
                                      {
                                        v70 = sub_1B83DE18C();

                                        if ((v70 & 1) == 0)
                                        {
                                          v71 = sub_1B83DDCEC();
                                          v73 = v72;
                                          if (v71 == sub_1B83DDCEC() && v73 == v74)
                                          {
                                          }

                                          else
                                          {
                                            v75 = sub_1B83DE18C();

                                            if ((v75 & 1) == 0)
                                            {
                                              v76 = sub_1B83DDCEC();
                                              v78 = v77;
                                              if (v76 == sub_1B83DDCEC() && v78 == v79)
                                              {
                                              }

                                              else
                                              {
                                                v80 = sub_1B83DE18C();

                                                if ((v80 & 1) == 0)
                                                {
                                                  return result;
                                                }
                                              }

                                              if ([a3 BOOLValue])
                                              {
                                                v23 = 1;
                                              }

                                              else
                                              {
                                                v23 = 2;
                                              }

                                              v21 = sel_setAllowImageCreation_;
                                              goto LABEL_29;
                                            }
                                          }

                                          if ([a3 BOOLValue])
                                          {
                                            v23 = 1;
                                          }

                                          else
                                          {
                                            v23 = 2;
                                          }

                                          v21 = sel_setAllowWritingTools_;
LABEL_29:
                                          v22 = a1;
                                          goto LABEL_17;
                                        }
                                      }

                                      if ([a3 BOOLValue])
                                      {
                                        v23 = 1;
                                      }

                                      else
                                      {
                                        v23 = 2;
                                      }

                                      v21 = sel_setAllowExternalIntelligenceIntegrations_;
                                      goto LABEL_29;
                                    }
                                  }

                                  if ([a3 BOOLValue])
                                  {
                                    v23 = 1;
                                  }

                                  else
                                  {
                                    v23 = 2;
                                  }

                                  v21 = sel_setAllowDeletingApps_;
                                  goto LABEL_29;
                                }
                              }

                              if ([a3 BOOLValue])
                              {
                                v23 = 2;
                              }

                              else
                              {
                                v23 = 1;
                              }

                              v21 = sel_setAllowExplicitLanguageInSiri_;
                              goto LABEL_29;
                            }
                          }

                          if ([a3 BOOLValue])
                          {
                            v23 = 1;
                          }

                          else
                          {
                            v23 = 2;
                          }

                          v21 = sel_setAllowWebContentSearchInSiri_;
                          goto LABEL_29;
                        }
                      }

                      if ([a3 BOOLValue])
                      {
                        v23 = 1;
                      }

                      else
                      {
                        v23 = 2;
                      }

                      v21 = sel_setAllowMusicProfiles_;
                      goto LABEL_29;
                    }
                  }

                  if ([a3 BOOLValue])
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = 2;
                  }

                  v21 = sel_setAllowMusicVideos_;
                  goto LABEL_29;
                }
              }

              if ([a3 BOOLValue])
              {
                v23 = 1;
              }

              else
              {
                v23 = 2;
              }

              v21 = sel_setAllowExplicitMediaContent_;
              goto LABEL_29;
            }
          }

          if ([a3 BOOLValue])
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          v21 = sel_setAllowExplicitBooks_;
          goto LABEL_29;
        }
      }

      v23 = [a3 unsignedIntegerValue];
      v21 = sel_setWebFilterState_;
      goto LABEL_29;
    }
  }

  v21 = sel_setAppsRating_;
LABEL_16:
  v22 = a1;
  v23 = a3;
LABEL_17:

  return [v22 v21];
}

id sub_1B83B91B4(void *a1, uint64_t a2)
{
  v3 = [a1 restrictionsMutableCopy];
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = v11 | (v8 << 6);
        v13 = (*(a2 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_1B83B39BC(*(a2 + 56) + 32 * v12, v43);
        v42[0] = v14;
        v42[1] = v15;

        v16 = sub_1B83DDCBC();
        sub_1B83B39BC(v43, v40);
        sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          break;
        }

        v41 = 0;
LABEL_6:

        sub_1B83B950C(v42);
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v17 = v41;
      if (!v41)
      {
        goto LABEL_6;
      }

      sub_1B83B950C(v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B83BE5E0(0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v39 = v19 + 1;
        v22 = v9;
        v23 = v9[2];
        v24 = sub_1B83BE5E0((v18 > 1), v19 + 1, 1, v22);
        v19 = v23;
        v20 = v39;
        v9 = v24;
      }

      v9[2] = v20;
      v21 = &v9[2 * v19];
      v21[4] = v16;
      v21[5] = v17;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(a2 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EB0, &qword_1B83E8C88);
    v25 = sub_1B83DE0DC();
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC8];
  }

  v42[0] = v25;
  v8 = 0;
  sub_1B83B86AC(v9, 1, v42);

  v26 = v42[0];
  v27 = v42[0] + 64;
  v28 = 1 << *(v42[0] + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v42[0] + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  while (v30)
  {
    v33 = v32;
LABEL_30:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v35 = (v33 << 9) | (8 * v34);
    v36 = *(*(v26 + 56) + v35);
    v8 = *(*(v26 + 48) + v35);
    v37 = v36;
    sub_1B83B88FC(v3, v8, v37);
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      return v3;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_30;
    }
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B83B950C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84EA8, &qword_1B83E8C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t UserType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B83B9588()
{
  v1 = *v0;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v1);
  return sub_1B83DE24C();
}

uint64_t sub_1B83B95FC(uint64_t a1)
{
  v2 = *v1;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v2);
  return sub_1B83DE24C();
}

unint64_t *sub_1B83B9640@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static UserID.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA84EE0 = a1;
  return result;
}

void sub_1B83B97CC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type);
  v4 = sub_1B83DDCBC();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = sub_1B83DDCBC();
  v6 = sub_1B83DDCBC();
  [a1 encodeObject:v5 forKey:v6];
}

id UserID.init(coder:)(void *a1)
{
  v3 = sub_1B83DDCBC();
  v4 = [a1 decodeIntegerForKey_];

  if (v4 < 2)
  {
    v5 = sub_1B83DDCBC();
    v6 = [a1 decodeObjectForKey_];

    if (v6)
    {
      sub_1B83DDF5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (!*(&v15 + 1))
    {

      sub_1B83A5890(v16);
      goto LABEL_10;
    }

    if (swift_dynamicCast())
    {
      *&v1[OBJC_IVAR____TtC14ScreenTimeCore6UserID_type] = v4;
      v7 = v13;
      v8 = &v1[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID];
      *v8 = v12;
      *(v8 + 1) = v7;
      v11.receiver = v1;
      v11.super_class = type metadata accessor for UserID();
      v9 = objc_msgSendSuper2(&v11, sel_init);

      return v9;
    }
  }

LABEL_10:
  type metadata accessor for UserID();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1B83B9BA8()
{
  v0 = type metadata accessor for UserID();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC14ScreenTimeCore6UserID_type] = 0;
  v2 = &v1[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID];
  *v2 = 0x6C61636F6CLL;
  *(v2 + 1) = 0xE500000000000000;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B83B9C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserID();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC14ScreenTimeCore6UserID_type] = 1;
  v6 = &v5[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B83B9DA4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type))
  {
    v3 = *(v2 + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
  }

  else
  {
    sub_1B83B9E24();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_1B83B9E24()
{
  result = qword_1EBA84F00;
  if (!qword_1EBA84F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84F00);
  }

  return result;
}

uint64_t sub_1B83B9F64(uint64_t a1)
{
  swift_getObjectType();
  sub_1B83A58F8(a1, v7);
  if (!v8)
  {
    sub_1B83A5890(v7);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type) != *&v6[OBJC_IVAR____TtC14ScreenTimeCore6UserID_type])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID) == *&v6[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID] && *(v1 + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID + 8) == *&v6[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1B83DE18C();
  }

  return v4 & 1;
}

uint64_t UserID.UserIDError.hashValue.getter()
{
  v1 = *v0;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v1);
  return sub_1B83DE24C();
}

id UserID.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B83BA398()
{
  result = qword_1EBA84F08;
  if (!qword_1EBA84F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84F08);
  }

  return result;
}

unint64_t sub_1B83BA3F0()
{
  result = qword_1EBA84F10;
  if (!qword_1EBA84F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84F10);
  }

  return result;
}

uint64_t sub_1B83BA5B0(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4();
}

uint64_t static STDeviceActivityDataSource.fetchData(segment:segmentInterval:userAltDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_1B83DDA5C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F18, &qword_1B83E8E68);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F20, &qword_1B83E8E70);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1B83DDACC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1B83DD82C();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  v4[18] = swift_task_alloc();
  v9 = sub_1B83DDA8C();
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();
  v10 = sub_1B83DDB8C();
  v4[22] = v10;
  v4[23] = *(v10 - 8);
  v4[24] = swift_task_alloc();
  v11 = sub_1B83DDBCC();
  v4[25] = v11;
  v4[26] = *(v11 - 8);
  v4[27] = swift_task_alloc();
  v12 = sub_1B83DDC2C();
  v4[28] = v12;
  v4[29] = *(v12 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83BAB70, 0, 0);
}

uint64_t sub_1B83BAB70()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[2];
  sub_1B83DDC0C();
  (*(v2 + 16))(v1, v4, v3);

  sub_1B83DDBAC();
  if (qword_1EBA83758 != -1)
  {
    swift_once();
  }

  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[4];
  v9 = sub_1B83DDB6C();
  v0[31] = __swift_project_value_buffer(v9, qword_1EBA83760);
  sub_1B83DDB4C();
  v10 = sub_1B83DDA7C();
  v12 = v11;
  (*(v6 + 8))(v5, v7);
  if (v8)
  {
    if (v12)
    {
      if (v10 == v0[3] && v12 == v0[4])
      {

LABEL_11:
        v15 = v0[29];
        v14 = v0[30];
        v16 = v0[28];
        v18 = v0[17];
        v17 = v0[18];
        v19 = v0[15];
        v20 = v0[16];
        sub_1B83DDB7C();
        sub_1B83DD81C();
        (*(v20 + 8))(v18, v19);
        v21 = sub_1B83DD94C();
        (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F30, &qword_1B83E8E80);
        v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v23 = swift_allocObject();
        v0[32] = v23;
        *(v23 + 16) = xmmword_1B83E80B0;
        (*(v15 + 16))(v23 + v22, v14, v16);
        v24 = swift_task_alloc();
        v0[33] = v24;
        *v24 = v0;
        v24[1] = sub_1B83BAEF4;
        v25 = v0[18];

        return MEMORY[0x1EEDC05F0](v25, v23);
      }

      v13 = sub_1B83DE18C();

      if (v13)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v26 = swift_task_alloc();
  v0[35] = v26;
  *v26 = v0;
  v26[1] = sub_1B83BB0D4;
  v27 = v0[27];

  return MEMORY[0x1EEDC0608](v27, 0);
}

uint64_t sub_1B83BAEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 272) = v0;

  sub_1B83AD84C(v3, &qword_1EBA84F28, &qword_1B83E8E78);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B83BB56C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 280) = v5;
    *v5 = v4;
    v5[1] = sub_1B83BB0D4;
    v6 = *(v2 + 216);

    return MEMORY[0x1EEDC0608](v6, 0);
  }
}

uint64_t sub_1B83BB0D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_1B83BB6D4;
  }

  else
  {
    v4 = sub_1B83BB1E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B83BB1E8()
{
  result = v0[36];
  v24 = *(result + 16);
  if (v24)
  {
    v2 = 0;
    v3 = v0[6];
    v21 = result + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80));
    v22 = v0[13];
    v29 = (v3 + 48);
    v26 = v3;
    v4 = (v3 + 32);
    v20 = (v0[10] + 8);
    v5 = MEMORY[0x1E69E7CC0];
    v23 = v0[36];
    while (v2 < *(result + 16))
    {
      v6 = v0[14];
      v7 = v0[12];
      v8 = v0[8];
      v25 = v2;
      v27 = v0[5];
      (*(v22 + 16))(v6, v21 + *(v22 + 72) * v2, v7);
      sub_1B83DDA6C();
      (*(v22 + 8))(v6, v7);
      sub_1B83DDADC();
      v9 = v27;
      v28 = *v29;
      if ((*v29)(v8, 1, v9) != 1)
      {
        v10 = *v4;
        do
        {
          v10(v0[7], v0[8], v0[5]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1B83BE714(0, *(v5 + 2) + 1, 1, v5);
          }

          v12 = *(v5 + 2);
          v11 = *(v5 + 3);
          if (v12 >= v11 >> 1)
          {
            v5 = sub_1B83BE714((v11 > 1), v12 + 1, 1, v5);
          }

          v13 = v0[8];
          v14 = v0[7];
          v15 = v0[5];
          *(v5 + 2) = v12 + 1;
          v10(&v5[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v12], v14, v15);
          sub_1B83DDADC();
        }

        while (v28(v13, 1, v15) != 1);
      }

      v2 = v25 + 1;
      (*v20)(v0[11], v0[9]);
      result = v23;
      if (v25 + 1 == v24)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[28];
    (*(v0[26] + 8))(v0[27], v0[25]);
    (*(v17 + 8))(v16, v18);

    v19 = v0[1];

    return v19(v5);
  }

  return result;
}

uint64_t sub_1B83BB56C()
{
  if (qword_1EBA83780 != -1)
  {
    swift_once();
  }

  v1 = sub_1B83DDC5C();
  __swift_project_value_buffer(v1, qword_1EBA887F0);
  v2 = sub_1B83DDC3C();
  v3 = sub_1B83DDE9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[34];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B831F000, v2, v3, "Could not refresh local device activity", v6, 2u);
    MEMORY[0x1B8CBE260](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1B83BB0D4;
  v8 = v0[27];

  return MEMORY[0x1EEDC0608](v8, 0);
}

uint64_t sub_1B83BB6D4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t static STDeviceActivityDataSource.lastUpdatedDate(for:)@<X0>(void (*a1)(char *, unint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v61 = a1;
  v65 = sub_1B83DDAAC();
  v54 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v49 - v7;
  v8 = sub_1B83DD94C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - v12;
  v67 = sub_1B83DDACC();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F38, &qword_1B83E8E88);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_1B83DDB8C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B83DDBCC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v9;
  v25 = *(v9 + 56);
  v66 = a2;
  v53 = v8;
  v55 = v25;
  v56 = v9 + 56;
  v25(a2, 1, 1, v8);
  if (qword_1EBA83758 != -1)
  {
    swift_once();
  }

  v26 = sub_1B83DDB6C();
  __swift_project_value_buffer(v26, qword_1EBA83760);
  v27 = sub_1B83DD82C();
  (*(*(v27 - 8) + 16))(v20, v61, v27);
  (*(v18 + 104))(v20, *MEMORY[0x1E69667D8], v17);
  v28 = sub_1B83DDB9C();
  (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
  sub_1B83DDBBC();
  v29 = sub_1B83DDB3C();
  (*(v22 + 8))(v24, v21);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v64 + 16);
    v32 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v49 = v29;
    v33 = v29 + v32;
    v60 = (v58 + 6);
    v61 = v31;
    v34 = *(v64 + 72);
    v51 = (v58 + 4);
    v35 = v54 + 1;
    v54 = v58 + 1;
    v64 += 16;
    v58 = (v64 - 8);
    v59 = v34;
    v36 = v50;
    v37 = v53;
    v38 = v63;
    v31(v63, v29 + v32, v67);
    while (1)
    {
      v42 = v68;
      sub_1B83C24E8(v66, v68);
      if ((*v60)(v42, 1, v37) == 1)
      {
        break;
      }

      (*v51)(v62, v68, v37);
      sub_1B83DDABC();
      v43 = v52;
      sub_1B83DDA9C();
      v44 = *v35;
      (*v35)(v36, v65);
      v45 = sub_1B83DD92C();
      v46 = *v54;
      (*v54)(v43, v37);
      if (v45)
      {
        sub_1B83DDABC();
        v47 = v57;
        sub_1B83DDA9C();
        v44(v36, v65);
        v46(v62, v37);
        (*v58)(v38, v67);
        v40 = v66;
        sub_1B83AD84C(v66, &qword_1EBA84F28, &qword_1B83E8E78);
        v55(v47, 0, 1, v37);
        v41 = v47;
        goto LABEL_6;
      }

      v46(v62, v37);
      (*v58)(v38, v67);
LABEL_7:
      v33 += v59;
      if (!--v30)
      {
      }

      v61(v38, v33, v67);
    }

    sub_1B83AD84C(v68, &qword_1EBA84F28, &qword_1B83E8E78);
    sub_1B83DDABC();
    v39 = v57;
    sub_1B83DDA9C();
    v37 = v53;
    (*v35)(v36, v65);
    (*v58)(v63, v67);
    v40 = v66;
    sub_1B83AD84C(v66, &qword_1EBA84F28, &qword_1B83E8E78);
    v55(v39, 0, 1, v37);
    v41 = v39;
    v38 = v63;
LABEL_6:
    sub_1B83C2558(v41, v40);
    goto LABEL_7;
  }
}

uint64_t static STDeviceActivityDataSource.refreshAndUploadLocalData(sinceDate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1B83DDE3C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1B83C24E8(a1, v10);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1B83C2558(v10, v16 + v15);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  sub_1B83B4324(0, 0, v13, &unk_1B83E8EA8, v16);
}

uint64_t sub_1B83BC680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1B83DDB6C();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83BC744, 0, 0);
}

uint64_t sub_1B83BC744()
{
  sub_1B83DDB5C();
  v1 = sub_1B83DDC1C();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1B83BC7F8;
  v3 = v0[2];

  return MEMORY[0x1EEDC05F0](v3, v1);
}

uint64_t sub_1B83BC7F8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B83BC9D4;
  }

  else
  {
    v2 = sub_1B83BC928;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83BC928()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_1B83DDAEC();
  v4(0);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B83BC9D4()
{
  v1 = v0[10];
  v2 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

void sub_1B83BCD54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B83DD8BC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t static STDeviceActivityDataSource.downloadRemoteData()()
{
  v0 = sub_1B83DDB6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DDB5C();
  sub_1B83DDB0C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static STDeviceActivityDataSource.hasData(forUserWithAltDSID:userDeviceStates:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0();
  if (qword_1ED9A0050 != -1)
  {
    swift_once();
  }

  v7 = sub_1B83DDBFC();
  __swift_project_value_buffer(v7, qword_1ED9A0058);
  v8 = sub_1B83DDBDC();
  v9 = _s14ScreenTimeCore26STDeviceActivityDataSourceC03hasF018forUserWithAltDSID16userDeviceStates019deviceIdentifiersByjlM00qrsC14DuetIdentifierSbSSSg_ShySo06STUserO5StateCGSgSDySSSaySSGGSDySSShySSGGtFZ_0(a1, a2, a3, v6, v8);

  return v9 & 1;
}

uint64_t sub_1B83BD144(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [*a1 device];
  if (!v10)
  {
    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v17 = sub_1B83DDC5C();
    __swift_project_value_buffer(v17, qword_1EBA887F0);
    v18 = v9;
    v19 = sub_1B83DDC3C();
    v20 = sub_1B83DDE9C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v85 = v22;
      *v21 = 136446210;
      v23 = v18;
      v24 = [v23 description];
      v25 = sub_1B83DDCEC();
      v27 = v26;

      v28 = sub_1B83CD594(v25, v27, &v85);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_1B831F000, v19, v20, "Ignoring malformed user device state without a device: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1B8CBE260](v22, -1, -1);
      MEMORY[0x1B8CBE260](v21, -1, -1);
    }

    return 1;
  }

  v11 = v10;
  v84 = a3;
  v12 = [v10 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B83DDCEC();
    v16 = v15;
  }

  else
  {
    v16 = 0xEE00656369766544;
    v14 = 0x206E776F6E6B6E55;
  }

  v29 = [v9 coreDuetIdentifier];
  if (!v29)
  {
    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v46 = sub_1B83DDC5C();
    __swift_project_value_buffer(v46, qword_1EBA887F0);

    v47 = sub_1B83DDC3C();
    v48 = sub_1B83DDEAC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v14;
      v52 = v50;
      v85 = v50;
      *v49 = 136446210;
      v53 = sub_1B83CD594(v51, v16, &v85);

      *(v49 + 4) = v53;
      v54 = "Ignoring %{public}s because it has no CoreDuet identifier";
LABEL_38:
      _os_log_impl(&dword_1B831F000, v47, v48, v54, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1B8CBE260](v52, -1, -1);
      MEMORY[0x1B8CBE260](v49, -1, -1);
LABEL_40:

LABEL_41:
      return 1;
    }

LABEL_39:

    goto LABEL_40;
  }

  v30 = v29;
  v83 = sub_1B83DDCEC();
  v32 = v31;

  if ([v11 platform] != 2 && objc_msgSend(v11, sel_platform) != 1)
  {

    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v66 = sub_1B83DDC5C();
    __swift_project_value_buffer(v66, qword_1EBA887F0);

    v47 = sub_1B83DDC3C();
    v48 = sub_1B83DDEAC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = v14;
      v52 = v67;
      v85 = v67;
      *v49 = 136446210;
      v69 = sub_1B83CD594(v68, v16, &v85);

      *(v49 + 4) = v69;
      v54 = "Ignoring %{public}s because it is not an iOS or macOS device";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (![v11 hasLegacyUsageData])
  {

    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v55 = sub_1B83DDC5C();
    __swift_project_value_buffer(v55, qword_1EBA887F0);

    v47 = sub_1B83DDC3C();
    v48 = sub_1B83DDEAC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v14;
      v52 = v56;
      v85 = v56;
      *v49 = 136446210;
      v58 = sub_1B83CD594(v57, v16, &v85);

      *(v49 + 4) = v58;
      v54 = "Ignoring %{public}s because it has no legacy usage data";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (!*(a2 + 16) || (v33 = sub_1B83C3DEC(v83, v32), (v34 & 1) == 0) || (v35 = *(*(a2 + 56) + 8 * v33), !*(v35 + 16)))
  {
    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v59 = sub_1B83DDC5C();
    __swift_project_value_buffer(v59, qword_1EBA887F0);

    v60 = sub_1B83DDC3C();
    v61 = sub_1B83DDEAC();

    if (os_log_type_enabled(v60, v61))
    {
      v81 = a4;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v85 = v63;
      *v62 = 136446722;
      v64 = sub_1B83CD594(v14, v16, &v85);

      *(v62 + 4) = v64;
      *(v62 + 12) = 2082;
      v65 = sub_1B83CD594(v83, v32, &v85);

      *(v62 + 14) = v65;
      *(v62 + 22) = 2082;
      *(v62 + 24) = sub_1B83CD594(v84, v81, &v85);
      _os_log_impl(&dword_1B831F000, v60, v61, "Device Activity data is unavailable for %{public}s: %{public}s user: %{public}s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CBE260](v63, -1, -1);
      MEMORY[0x1B8CBE260](v62, -1, -1);
    }

    else
    {
    }

    goto LABEL_45;
  }

  v36 = sub_1B83C0BA0(a5, v35);

  if ((v36 & 1) == 0)
  {
    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v71 = sub_1B83DDC5C();
    __swift_project_value_buffer(v71, qword_1EBA887F0);

    v72 = sub_1B83DDC3C();
    v73 = sub_1B83DDEAC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v82 = a4;
      v75 = swift_slowAlloc();
      v85 = v75;
      *v74 = 136446722;
      v76 = sub_1B83CD594(v14, v16, &v85);
      v77 = v72;
      v78 = v76;

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v79 = sub_1B83CD594(v83, v32, &v85);

      *(v74 + 14) = v79;
      *(v74 + 22) = 2082;
      *(v74 + 24) = sub_1B83CD594(v84, v82, &v85);
      _os_log_impl(&dword_1B831F000, v77, v73, "Device Activity data is available for %{public}s: %{public}s user: %{public}s", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CBE260](v75, -1, -1);
      MEMORY[0x1B8CBE260](v74, -1, -1);
    }

    else
    {
    }

    goto LABEL_41;
  }

  if (qword_1EBA83780 != -1)
  {
    swift_once();
  }

  v37 = sub_1B83DDC5C();
  __swift_project_value_buffer(v37, qword_1EBA887F0);

  v38 = sub_1B83DDC3C();
  v39 = sub_1B83DDEAC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v80 = a4;
    v41 = swift_slowAlloc();
    v85 = v41;
    *v40 = 136446722;
    v42 = sub_1B83CD594(v14, v16, &v85);
    v43 = v38;
    v44 = v42;

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = sub_1B83CD594(v83, v32, &v85);

    *(v40 + 14) = v45;
    *(v40 + 22) = 2082;
    *(v40 + 24) = sub_1B83CD594(v84, v80, &v85);
    _os_log_impl(&dword_1B831F000, v43, v39, "Device Activity data is unavailable for %{public}s: %{public}s user: %{public}s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CBE260](v41, -1, -1);
    MEMORY[0x1B8CBE260](v40, -1, -1);
  }

  else
  {
  }

LABEL_45:

  return 0;
}

id STDeviceActivityDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STDeviceActivityDataSource.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STDeviceActivityDataSource();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STDeviceActivityDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for STDeviceActivityDataSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B83BDD20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0();
  if (qword_1ED9A0050 != -1)
  {
    swift_once();
  }

  v7 = sub_1B83DDBFC();
  __swift_project_value_buffer(v7, qword_1ED9A0058);
  v8 = sub_1B83DDBDC();
  v9 = _s14ScreenTimeCore26STDeviceActivityDataSourceC03hasF018forUserWithAltDSID16userDeviceStates019deviceIdentifiersByjlM00qrsC14DuetIdentifierSbSSSg_ShySo06STUserO5StateCGSgSDySSSaySSGGSDySSShySSGGtFZ_0(a1, a2, a3, v6, v8);

  return v9 & 1;
}

void STCoreDevice.hasLegacyUsageData.getter()
{
  v1 = [v0 usages];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1B83A1210(0, &qword_1EBA836F8, off_1E7CE5FB0);
  sub_1B83C2C74(&qword_1EBA836F0, &qword_1EBA836F8, off_1E7CE5FB0);
  v3 = sub_1B83DDE7C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B83DDF8C();
    sub_1B83DDE8C();
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
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

    v6 = 0;
  }

  v20 = v5;
  v11 = (v5 + 64) >> 6;
  v21 = v3;
  while (v3 < 0)
  {
    if (!sub_1B83DDFCC() || (swift_dynamicCast(), (v14 = v22) == 0))
    {
LABEL_25:
      sub_1B83A5EAC(v3);

      return;
    }

LABEL_20:
    v15 = [v14 blocks];
    if (v15)
    {
      v16 = v15;
      sub_1B83A1210(0, &qword_1EBA84F48, off_1E7CE5FB8);
      sub_1B83C2C74(&qword_1EBA84F50, &qword_1EBA84F48, off_1E7CE5FB8);
      v17 = sub_1B83DDE7C();

      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = sub_1B83DDF9C();

        v3 = v21;
        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {

        v19 = *(v17 + 16);

        v3 = v21;
        if (v19)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_16:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

char *sub_1B83BE104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84850, &qword_1B83E8FA0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B83BE234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F80, &qword_1B83E8F70);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B83BE364(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B83BE498(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F70, &qword_1B83E8F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F78, &qword_1B83E8F68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B83BE5E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F60, &qword_1B83E8F50);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F68, &qword_1B83E8F58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B83BE714(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F98, &qword_1B83E8F88);
  v10 = *(sub_1B83DDA5C() - 8);
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
  v15 = *(sub_1B83DDA5C() - 8);
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

void *sub_1B83BE8EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84850, &qword_1B83E8FA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1B83BE970(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B83DE20C();
  sub_1B83DDD5C();
  v8 = sub_1B83DE24C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B83DE18C() & 1) != 0)
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

    sub_1B83BFA00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B83BEAC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B83DD8EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B83C2F5C(&qword_1EBA84A30, MEMORY[0x1E6968FC0]);
  v33 = a2;
  v11 = sub_1B83DDC8C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1B83C2F5C(&qword_1EBA848D0, MEMORY[0x1E6968FC8]);
      v21 = sub_1B83DDCAC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1B83BFB80(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1B83BED78(uint64_t *a1, void *a2)
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

    v9 = sub_1B83DDFAC();

    if (v9)
    {

      type metadata accessor for AppLimitSchedule();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B83DDF9C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B83AD490(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B83BF7E0(v20 + 1, &unk_1EBA848C0, &qword_1B83E8FB0);
    }

    v18 = v8;
    sub_1B83A6188();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AppLimitSchedule();
  v11 = sub_1B83DDF1C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B83BFDFC(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1EBA848C0, &qword_1B83E8FB0, type metadata accessor for AppLimitSchedule);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B83DDF2C();

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

uint64_t sub_1B83BEFC4(uint64_t *a1, void *a2)
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

    v9 = sub_1B83DDFAC();

    if (v9)
    {

      type metadata accessor for AppLimit(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B83DDF9C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B83AD66C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B83BF7E0(v20 + 1, &qword_1EBA848B8, &unk_1B83E87F0);
    }

    v18 = v8;
    sub_1B83A6188();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AppLimit(0);
  v11 = sub_1B83DDF1C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B83BFDFC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EBA848B8, &unk_1B83E87F0, type metadata accessor for AppLimit);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B83DDF2C();

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

uint64_t sub_1B83BF210(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA848E0, &qword_1B83E8270);
  result = sub_1B83DE00C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B83DE20C();
      sub_1B83DDD5C();
      result = sub_1B83DE24C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B83BF470(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1B83DD8EC();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA848D8, &qword_1B83E8268);
  result = sub_1B83DE00C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1B83C2F5C(&qword_1EBA84A30, MEMORY[0x1E6968FC0]);
      result = sub_1B83DDC8C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1B83BF7E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B83DE00C();
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
      result = sub_1B83DDF1C();
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

uint64_t sub_1B83BFA00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B83BF210(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B83BFF80();
      goto LABEL_16;
    }

    sub_1B83C0454(v8 + 1);
  }

  v10 = *v4;
  sub_1B83DE20C();
  sub_1B83DDD5C();
  result = sub_1B83DE24C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B83DE18C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B83DE1AC();
  __break(1u);
  return result;
}

uint64_t sub_1B83BFB80(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B83DD8EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B83BF470(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B83C00DC();
      goto LABEL_12;
    }

    sub_1B83C068C(v10 + 1);
  }

  v12 = *v3;
  sub_1B83C2F5C(&qword_1EBA84A30, MEMORY[0x1E6968FC0]);
  v13 = sub_1B83DDC8C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1B83C2F5C(&qword_1EBA848D0, MEMORY[0x1E6968FC8]);
      v21 = sub_1B83DDCAC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B83DE1AC();
  __break(1u);
  return result;
}

void sub_1B83BFDFC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1B83BF7E0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B83C0314(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1B83C0994(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_1B83DDF1C();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_1B83DDF2C();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B83DE1AC();
  __break(1u);
}

void *sub_1B83BFF80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA848E0, &qword_1B83E8270);
  v2 = *v0;
  v3 = sub_1B83DDFFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_1B83C00DC()
{
  v1 = v0;
  v2 = sub_1B83DD8EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA848D8, &qword_1B83E8268);
  v6 = *v0;
  v7 = sub_1B83DDFFC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1B83C0314(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B83DDFFC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
        result = v20;
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

  return result;
}

uint64_t sub_1B83C0454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA848E0, &qword_1B83E8270);
  result = sub_1B83DE00C();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B83DE20C();

      sub_1B83DDD5C();
      result = sub_1B83DE24C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_1B83C068C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1B83DD8EC();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA848D8, &qword_1B83E8268);
  v7 = sub_1B83DE00C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1B83C2F5C(&qword_1EBA84A30, MEMORY[0x1E6968FC0]);
      result = sub_1B83DDC8C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1B83C0994(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B83DE00C();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1B83DDF1C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v4 = v26;
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

  return result;
}

uint64_t sub_1B83C0BA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_1B83DE20C();

    sub_1B83DDD5C();
    v10 = sub_1B83DE24C();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_1B83DE18C() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *sub_1B83C0CEC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0()
{
  if (qword_1EBA83758 != -1)
  {
    swift_once();
  }

  v0 = sub_1B83DDB6C();
  __swift_project_value_buffer(v0, qword_1EBA83760);
  return sub_1B83DDB2C();
}

void *_s14ScreenTimeCore26STDeviceActivityDataSourceC31allLocallyUsedBundleIdentifiersSaySSGvgZ_0()
{
  v0 = sub_1B83DDA0C();
  v75 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B83DDA2C();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B83DDA5C();
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F18, &qword_1B83E8E68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = (&v49 - v7);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F20, &qword_1B83E8E70);
  v85 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v49 - v8;
  v60 = sub_1B83DDACC();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F38, &qword_1B83E8E88);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_1B83DDB8C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B83DDBCC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD7FC();
  (*(v14 + 104))(v16, *MEMORY[0x1E69667D8], v13);
  v21 = sub_1B83DDB9C();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = MEMORY[0x1E69E7CD0];
  sub_1B83DDBBC();
  if (qword_1EBA83758 != -1)
  {
LABEL_27:
    swift_once();
  }

  v23 = sub_1B83DDB6C();
  __swift_project_value_buffer(v23, qword_1EBA83760);
  v24 = sub_1B83DDB3C();
  v88 = v22;
  v54 = *(v24 + 16);
  if (v54)
  {
    v58 = v20;
    v50 = v18;
    v51 = v17;
    v25 = 0;
    v57 = v24 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v56 = v61 + 16;
    v55 = v61 + 8;
    v67 = (v86 + 48);
    v65 = (v86 + 32);
    v77 = v82 + 8;
    v78 = v82 + 16;
    v63 = (v86 + 8);
    v52 = (v85 + 8);
    v18 = v73;
    v17 = v74;
    v72 = v4;
    v53 = v24;
    v71 = v75 + 16;
    v70 = (v75 + 8);
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v22 = v61;
      v26 = *(v61 + 72);
      v62 = v25;
      v27 = v59;
      v28 = v60;
      (*(v61 + 16))(v59, v57 + v26 * v25, v60);
      sub_1B83DDA6C();
      (*(v22 + 8))(v27, v28);
      sub_1B83DDADC();
      v66 = *v67;
      if (v66(v18, 1, v4) != 1)
      {
        break;
      }

LABEL_4:
      v25 = v62 + 1;
      (*v52)(v68, v69);
      v24 = v53;
      if (v25 == v54)
      {
        while (1)
        {

          v44 = v88;
          v17 = v51;
          v18 = v50;
          v20 = v58;
          v45 = *(v88 + 16);
          if (!v45)
          {
            goto LABEL_24;
          }

LABEL_21:
          v46 = sub_1B83BE8EC(v45, 0);
          v47 = sub_1B83C0CEC(&v87, v46 + 4, v45, v44);
          sub_1B83A5EAC(v87);
          if (v47 == v45)
          {
            goto LABEL_25;
          }

          __break(1u);
        }
      }
    }

    v64 = *v65;
    v64(v17, v18, v4);
    while (1)
    {
      v29 = sub_1B83DDA4C();
      v20 = v29;
      v83 = *(v29 + 16);
      if (v83)
      {
        break;
      }

LABEL_8:

      (*v63)(v17, v4);
      sub_1B83DDADC();
      if (v66(v18, 1, v4) == 1)
      {
        goto LABEL_4;
      }

      v64(v17, v18, v4);
    }

    v30 = 0;
    v81 = v29 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v76 = v29;
    while (v30 < *(v20 + 2))
    {
      v31 = v82;
      v32 = *(v82 + 72);
      v85 = v30;
      v34 = v79;
      v33 = v80;
      (*(v82 + 16))(v79, v81 + v32 * v30, v80);
      v35 = sub_1B83DDA1C();
      (*(v31 + 8))(v34, v33);
      v36 = v35;
      v22 = *(v35 + 16);
      if (v22)
      {
        v37 = *(v75 + 80);
        v84 = v36;
        v38 = v36 + ((v37 + 32) & ~v37);
        v86 = *(v75 + 72);
        v39 = *(v75 + 16);
        v40 = v70;
        do
        {
          v39(v2, v38, v0);
          v41 = sub_1B83DD9FC();
          v43 = v42;
          (*v40)(v2, v0);
          sub_1B83BE970(&v87, v41, v43);

          v38 += v86;
          --v22;
        }

        while (v22);

        v4 = v72;
        v18 = v73;
        v17 = v74;
        v20 = v76;
      }

      else
      {
      }

      v30 = v85 + 1;
      if (v85 + 1 == v83)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  v44 = MEMORY[0x1E69E7CD0];
  v45 = *(MEMORY[0x1E69E7CD0] + 16);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_24:

  v46 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v18[1](v20, v17);
  return v46;
}

uint64_t _s14ScreenTimeCore26STDeviceActivityDataSourceC14setGenesisDateyy10Foundation0J0VFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  if (qword_1ED9A0050 != -1)
  {
    swift_once();
  }

  v5 = sub_1B83DDBFC();
  __swift_project_value_buffer(v5, qword_1ED9A0058);
  v6 = sub_1B83DD94C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  sub_1B83DDBEC();
  return sub_1B83AD84C(v4, &qword_1EBA84F28, &qword_1B83E8E78);
}

uint64_t sub_1B83C1E9C(uint64_t a1, unint64_t a2, char *a3)
{
  v61 = a2;
  v55 = a1;
  v56 = a3;
  v63 = sub_1B83DDA5C();
  v49 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F18, &qword_1B83E8E68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F20, &qword_1B83E8E70);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v42 - v9;
  v10 = sub_1B83DDACC();
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B83DDB8C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B83DDBCC();
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B83DD82C();
  (*(*(v20 - 8) + 16))(v16, v55, v20);
  (*(v14 + 104))(v16, *MEMORY[0x1E69667D8], v13);
  v21 = v19;

  sub_1B83DDBAC();
  if (qword_1EBA83758 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v22 = sub_1B83DDB6C();
    __swift_project_value_buffer(v22, qword_1EBA83760);
    v23 = v62;
    v24 = sub_1B83DDB3C();
    v45 = v23;
    if (v23)
    {
      (*(v46 + 8))(v21, v17);
      return v8;
    }

    v55 = *(v24 + 16);
    if (!v55)
    {
      break;
    }

    v48 = v4;
    v56 = v21;
    v43 = v17;
    v25 = 0;
    v17 = v60;
    v53 = v24 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v54 = v24;
    v51 = v59 + 8;
    v52 = v59 + 16;
    v26 = (v49 + 6);
    v27 = (v49 + 4);
    v28 = (v49 + 1);
    v49 = (v44 + 8);
    v50 = v26;
    v29 = 0.0;
    v47 = v28;
    v62 = v27;
    while (v25 < *(v24 + 16))
    {
      v30 = v58;
      v31 = v59;
      v32 = *(v59 + 72);
      v61 = v25;
      v33 = v53 + v32 * v25;
      v34 = v57;
      (*(v59 + 16))(v57, v33, v58);
      sub_1B83DDA6C();
      (*(v31 + 8))(v34, v30);
      sub_1B83DDADC();
      v4 = *v50;
      v21 = v7;
      v35 = v63;
      if ((*v50)(v7, 1, v63) == 1)
      {
        v17 = v60;
      }

      else
      {
        v36 = *v27;
        v17 = v60;
        v38 = v47;
        v37 = v48;
        do
        {
          v36(v37, v21, v35);
          sub_1B83DDA3C();
          v40 = v39;
          (*v38)(v37, v63);
          v29 = v29 + v40;
          sub_1B83DDADC();
          v35 = v63;
        }

        while (v4(v21, 1, v63) != 1);
      }

      v25 = v61 + 1;
      (*v49)(v17, v8);
      v24 = v54;
      v27 = v62;
      v7 = v21;
      if (v25 == v55)
      {

        v17 = v43;
        v21 = v56;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

LABEL_15:
  v8 = sub_1B83DDE4C();
  (*(v46 + 8))(v21, v17);
  return v8;
}

uint64_t sub_1B83C24E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B83C2558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B83C25C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B83B6A88;

  return sub_1B83BC680(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t _s14ScreenTimeCore26STDeviceActivityDataSourceC03hasF018forUserWithAltDSID16userDeviceStates019deviceIdentifiersByjlM00qrsC14DuetIdentifierSbSSSg_ShySo06STUserO5StateCGSgSDySSSaySSGGSDySSShySSGGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    if (qword_1EBA83780 != -1)
    {
      swift_once();
    }

    v16 = sub_1B83DDC5C();
    __swift_project_value_buffer(v16, qword_1EBA887F0);
    v17 = sub_1B83DDC3C();
    v18 = sub_1B83DDEAC();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_25;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Device Activity data is always available for users not signed into iCloud";
    goto LABEL_24;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_21;
  }

  if ((a3 & 0xC000000000000001) == 0)
  {
    if (*(a3 + 16))
    {
      goto LABEL_5;
    }

LABEL_21:
    if (qword_1EBA83780 == -1)
    {
LABEL_22:
      v27 = sub_1B83DDC5C();
      __swift_project_value_buffer(v27, qword_1EBA887F0);
      v17 = sub_1B83DDC3C();
      v18 = sub_1B83DDEAC();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_25:

        return 1;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Device Activity data is always available for the local device";
LABEL_24:
      _os_log_impl(&dword_1B831F000, v17, v18, v20, v19, 2u);
      MEMORY[0x1B8CBE260](v19, -1, -1);
      goto LABEL_25;
    }

LABEL_48:
    swift_once();
    goto LABEL_22;
  }

  if (!sub_1B83DDF9C())
  {
    goto LABEL_21;
  }

LABEL_5:
  if (*(a4 + 16))
  {
    v10 = sub_1B83C3DEC(a1, a2);
    if (v11)
    {
      v39 = *(*(a4 + 56) + 8 * v10);
      if (*(v39 + 16))
      {
        if ((v5 & 0xC000000000000001) != 0)
        {

          sub_1B83DDF8C();
          sub_1B83A1210(0, &qword_1EBA83718, off_1E7CE5FF8);
          sub_1B83C2C74(&qword_1EBA83710, &qword_1EBA83718, off_1E7CE5FF8);
          sub_1B83DDE8C();
          v5 = v41[0];
          v12 = v41[1];
          v13 = v41[2];
          v14 = v41[3];
          v15 = v41[4];
        }

        else
        {
          v28 = -1 << *(v5 + 32);
          v12 = v5 + 56;
          v13 = ~v28;
          v29 = -v28;
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v15 = v30 & *(v5 + 56);

          v14 = 0;
        }

        v38 = (v13 + 64) >> 6;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

LABEL_32:
        if (!sub_1B83DDFCC() || (sub_1B83A1210(0, &qword_1EBA83718, off_1E7CE5FF8), swift_dynamicCast(), (v31 = v40) == 0))
        {
LABEL_43:

          sub_1B83A5EAC(v5);
          return 1;
        }

        while (1)
        {
          v40 = v31;
          v34 = a5;
          v35 = a5;
          v36 = a1;
          v37 = sub_1B83BD144(&v40, v35, a1, a2, v39);

          if ((v37 & 1) == 0)
          {

            sub_1B83A5EAC(v5);
            return 0;
          }

          a1 = v36;
          a5 = v34;
          if (v5 < 0)
          {
            goto LABEL_32;
          }

LABEL_35:
          v32 = v14;
          v33 = v15;
          if (!v15)
          {
            break;
          }

LABEL_39:
          v15 = (v33 - 1) & v33;
          v31 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v33)))));
          if (!v31)
          {
            goto LABEL_43;
          }
        }

        while (1)
        {
          v14 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v14 >= v38)
          {
            goto LABEL_43;
          }

          v33 = *(v12 + 8 * v14);
          ++v32;
          if (v33)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_48;
      }
    }
  }

  if (qword_1EBA83780 != -1)
  {
    swift_once();
  }

  v21 = sub_1B83DDC5C();
  __swift_project_value_buffer(v21, qword_1EBA887F0);

  v22 = sub_1B83DDC3C();
  v23 = sub_1B83DDEAC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1B83CD594(a1, a2, v41);
    _os_log_impl(&dword_1B831F000, v22, v23, "Device Activity data is unavailable for user: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1B8CBE260](v25, -1, -1);
    MEMORY[0x1B8CBE260](v24, -1, -1);
  }

  return 0;
}

uint64_t sub_1B83C2C74(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B83A1210(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_1B83DD94C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1B83C2E18(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B83B6690;

  return sub_1B83BC680(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_1B83C2F5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B83DD8EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ScreenTimeCore::Synchronous __swiftcall Synchronous.init()()
{
  v1 = v0;
  result.lock.super.isa = [objc_allocWithZone(MEMORY[0x1E696AB38]) initWithCondition_];
  v1->lock.super.isa = result.lock.super.isa;
  return result;
}

Swift::Void __swiftcall Synchronous.complete()()
{
  v1 = *v0;
  [*v0 lock];

  [v1 unlockWithCondition_];
}

Swift::Void __swiftcall Synchronous.waitForCompletion()()
{
  v1 = *v0;
  [*v0 lockWhenCondition_];

  [v1 unlock];
}

uint64_t sub_1B83C308C(uint64_t *a1, int a2)
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

uint64_t sub_1B83C30D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1B83C3124(uint64_t a1)
{
  v2 = sub_1B83DDF6C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1B83C46B4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1B83C31A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ResourceType.rawValue.getter();
  v4 = ResourceType.rawValue.getter();
  v5 = sub_1B83C5F2C(v3, v4);

  return v5 & 1;
}

unint64_t ResourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = sub_1B83C4350(MEMORY[0x1E69E7CC0]);
  if (v3)
  {
    if (v3 == 1)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v4;
      v6 = 0x65746973626577;
      v7 = v1;
      v8 = v2;
      v9 = 0xE700000000000000;
    }

    else
    {
      v10 = sub_1B83DDCEC();
      v12 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v4;
      v6 = 0x79726F6765746163;
      v7 = v10;
      v8 = v12;
      v9 = 0xE800000000000000;
    }
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v4;
    v7 = v1;
    v8 = v2;
    v6 = 7368801;
    v9 = 0xE300000000000000;
  }

  sub_1B83C40B4(v7, v8, v6, v9, isUniquelyReferenced_nonNull_native);
  return v14;
}

uint64_t ResourceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B83C3124(a1);
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 16) && (v7 = v4, v8 = sub_1B83C3DEC(v4, v5), (v9 & 1) != 0))
    {
      v10 = (*(a1 + 56) + 16 * v8);
      v12 = *v10;
      v11 = v10[1];

      if (v7 == 7368801 && v6 == 0xE300000000000000 || (sub_1B83DE18C() & 1) != 0)
      {

        *a2 = v12;
        *(a2 + 8) = v11;
        *(a2 + 16) = 0;
        return result;
      }

      if (v7 == 0x65746973626577 && v6 == 0xE700000000000000 || (sub_1B83DE18C() & 1) != 0)
      {

        *a2 = v12;
        *(a2 + 8) = v11;
        v14 = 1;
        goto LABEL_10;
      }

      if (v7 == 0x79726F6765746163 && v6 == 0xE800000000000000)
      {

LABEL_19:
        v16 = sub_1B83DDCBC();

        *a2 = v16;
        *(a2 + 8) = 0;
        v14 = 2;
        goto LABEL_10;
      }

      v15 = sub_1B83DE18C();

      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = -1;
LABEL_10:
  *(a2 + 16) = v14;
  return result;
}

unint64_t sub_1B83C34FC@<X0>(unint64_t *a1@<X8>)
{
  result = ResourceType.rawValue.getter();
  *a1 = result;
  return result;
}

id AccessRequest.resource.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource;
  v3 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource);
  v4 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_1B83C4464(v3, v4, v5);
}

id sub_1B83C3644(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = &v8[OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource];
  *v9 = a1;
  *(v9 + 1) = a2;
  v9[16] = a4;
  v11.receiver = v8;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1B83C36B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = &v4[OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource];
  *v5 = a1;
  *(v5 + 1) = a2;
  v5[16] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for AccessRequest();
  return objc_msgSendSuper2(&v7, sel_init);
}

id AccessRequest.__allocating_init(categoryIdentifier:accessType:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 2;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AccessRequest.init(categoryIdentifier:accessType:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource];
  *v2 = a1;
  *(v2 + 1) = 0;
  v2[16] = 2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AccessRequest();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t static AccessRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA84FB0 = a1;
  return result;
}

void sub_1B83C3914(void *a1)
{
  ResourceType.rawValue.getter();
  v2 = sub_1B83DDC6C();

  v3 = sub_1B83DDCBC();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_1B83DDCBC();
  [a1 encodeInteger:0 forKey:v4];
}

id AccessRequest.init(coder:)(void *a1)
{
  v3 = sub_1B83DDCBC();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84FC8, &qword_1B83E8FF0);
  if (swift_dynamicCast())
  {
    ResourceType.init(rawValue:)(v13, &v16);
    v5 = v17;
    if (v17 != 255)
    {
      v6 = v16;
      v7 = sub_1B83DDCBC();
      v8 = [a1 decodeObjectForKey_];

      if (v8)
      {
        sub_1B83DDF5C();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && !v13)
        {
          v10 = &v1[OBJC_IVAR____TtC14ScreenTimeCore13AccessRequest_resource];
          *v10 = v6;
          v10[16] = v5;
          v12.receiver = v1;
          v12.super_class = type metadata accessor for AccessRequest();
          v11 = objc_msgSendSuper2(&v12, sel_init);

          return v11;
        }

        sub_1B83C44B0(v6, *(&v6 + 1), v5);
        goto LABEL_14;
      }

      sub_1B83C44B0(v6, *(&v6 + 1), v5);
LABEL_16:

      sub_1B83A5890(&v16);
      goto LABEL_17;
    }
  }

LABEL_14:

LABEL_17:
  type metadata accessor for AccessRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

id AccessRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessRequest.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccessRequest();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B83C3DEC(uint64_t a1, uint64_t a2)
{
  sub_1B83DE20C();
  sub_1B83DDD5C();
  v4 = sub_1B83DE24C();

  return sub_1B83C3EF8(a1, a2, v4);
}

unint64_t sub_1B83C3E64(uint64_t a1)
{
  sub_1B83DDCEC();
  sub_1B83DE20C();
  sub_1B83DDD5C();
  v2 = sub_1B83DE24C();

  return sub_1B83C3FB0(a1, v2);
}

unint64_t sub_1B83C3EF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B83DE18C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B83C3FB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B83DDCEC();
      v8 = v7;
      if (v6 == sub_1B83DDCEC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B83DE18C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1B83C40B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B83C3DEC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B83B7C0C(v18, a5 & 1);
      v13 = sub_1B83C3DEC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1B83DE1BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1B83B77C8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1B83C423C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84FF0, &qword_1B83E9230);
    v3 = sub_1B83DE0DC();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1B83C3DEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B83C4350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84ED0, &qword_1B83E8CA8);
    v3 = sub_1B83DE0DC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B83C3DEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1B83C4464(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1B83C44B0(void *result, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1B83C44C4(result, a2, a3);
  }
}

void sub_1B83C44C4(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

unint64_t sub_1B83C44F0()
{
  result = qword_1EBA84FD0;
  if (!qword_1EBA84FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84FD0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B83C4564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B83C45AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B83C46B4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1B83C4708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84FE0, &qword_1B83E9228);
    v3 = sub_1B83DE0DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_1B83C3E64(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B83C47F8()
{
  result = qword_1EBA84FE8;
  if (!qword_1EBA84FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA84FE8);
  }

  return result;
}

unint64_t sub_1B83C484C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85000, &qword_1B83E9238);
    v3 = sub_1B83DE0DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B83C3DEC(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1B83C496C()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83C49C8()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id static NSXPCConnection.accessResponderConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRespondingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83C4AD0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRespondingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

id static NSXPCConnection.accessResponderCompatibilityConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRespondingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83C4C68()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRespondingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

uint64_t sub_1B83C4DA0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B83A06F0;
  aBlock[3] = a3;
  v7 = _Block_copy(aBlock);

  v8 = [v5 *a4];
  _Block_release(v7);
  sub_1B83DDF5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85010, &qword_1B83E9258);
  if (swift_dynamicCast())
  {
    return v10;
  }

  result = sub_1B83DE09C();
  __break(1u);
  return result;
}

id sub_1B83C4F30(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

void sub_1B83C4FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRespondingInterfaceyySo14NSXPCInterfaceCFZ_0(v3);
}

void _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRespondingInterfaceyySo14NSXPCInterfaceCFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84778, &qword_1B83E7EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B83E9240;
  v2 = sub_1B83A1210(0, &unk_1EBA83728, 0x1E695DF20);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84C78, &qword_1B83E89D0);
  *(v1 + 32) = v2;
  v3 = sub_1B83A1210(0, &qword_1EBA836E0, 0x1E696AEC0);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847B8, &qword_1B83E7EE8);
  *(v1 + 64) = v3;
  v4 = sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84C80, &qword_1B83E89D8);
  *(v1 + 96) = v4;
  v5 = sub_1B83A1210(0, &qword_1EBA83700, 0x1E696ABC0);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847C0, &qword_1B83E7EF0);
  *(v1 + 128) = v5;
  v6 = sub_1B83A1210(0, &qword_1EBA847C8, 0x1E695DFB0);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847D0, &qword_1B83E7EF8);
  *(v1 + 160) = v6;
  v7 = type metadata accessor for UserID();
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847F8, &qword_1B83E7F18);
  *(v1 + 192) = v7;
  v8 = type metadata accessor for AccessRequest();
  *(v1 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85018, &qword_1B83E9260);
  *(v1 + 224) = v8;
  v9 = type metadata accessor for AccessResponse();
  *(v1 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85020, &qword_1B83E9268);
  *(v1 + 256) = v9;
  v10 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v11 = sub_1B83DDDCC();

  v12 = [v10 initWithArray_];

  sub_1B83DDE6C();
  sub_1B83DE09C();
  __break(1u);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AccessRequestError.hashValue.getter()
{
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](0);
  return sub_1B83DE24C();
}

unint64_t sub_1B83C546C()
{
  result = qword_1EBA85028;
  if (!qword_1EBA85028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85028);
  }

  return result;
}

uint64_t sub_1B83C54D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = AnswerType.rawValue.getter();
  v5 = AnswerType.rawValue.getter();
  v6 = sub_1B83C60D0(v4, v5);

  return v6 & 1;
}

unint64_t AnswerType.rawValue.getter()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    v5 = sub_1B83C423C(&unk_1F303F060);
    sub_1B83AD84C(&unk_1F303F080, &qword_1EBA85038, &qword_1B83E9338);
    return v5;
  }

  else
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85040, &qword_1B83E9340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B83E80B0;
    if (v1)
    {
      v4 = "approvedTillDate";
    }

    else
    {
      v4 = "approvedDuration";
    }

    *(inited + 32) = 0xD000000000000010;
    v7 = inited + 32;
    *(inited + 40) = (v4 - 32) | 0x8000000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = 0;
    v8 = sub_1B83C423C(inited);
    swift_setDeallocating();
    sub_1B83AD84C(v7, &qword_1EBA85038, &qword_1B83E9338);
    return v8;
  }
}

uint64_t AnswerType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B83C3120();
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v4;
  v7 = v5;
  if ((v4 != 0x6465696E6564 || v5 != 0xE600000000000000) && (sub_1B83DE18C() & 1) == 0)
  {
    if (v6 == 0xD000000000000010 && 0x80000001B83F3B50 == v7 || (sub_1B83DE18C() & 1) != 0)
    {
      if (*(a1 + 16))
      {
        v11 = sub_1B83C3DEC(v6, v7);
        v13 = v12;

        if (v13)
        {
          v14 = *(a1 + 56) + 16 * v11;
          v9 = *v14;
          v15 = *(v14 + 8);

          if ((v15 & 1) == 0)
          {
            v10 = 0;
            goto LABEL_23;
          }

LABEL_22:
          v9 = 0;
          v10 = -2;
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else if (v6 == 0xD000000000000010 && 0x80000001B83F3B30 == v7 || (sub_1B83DE18C()) && *(a1 + 16))
    {
      v16 = sub_1B83C3DEC(v6, v7);
      v18 = v17;

      if (v18)
      {
        v19 = *(a1 + 56) + 16 * v16;
        v9 = *v19;
        v20 = *(v19 + 8);

        if ((v20 & 1) == 0)
        {
          v10 = 1;
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v9 = 0;
  v10 = -1;
LABEL_23:
  *a2 = v9;
  *(a2 + 8) = v10;
  return result;
}

unint64_t sub_1B83C5848@<X0>(unint64_t *a1@<X8>)
{
  result = AnswerType.rawValue.getter();
  *a1 = result;
  return result;
}

void AccessResponse.answerType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType);
  *(a1 + 8) = v2;
}

id AccessResponse.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType];
  *v5 = *a1;
  v5[8] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AccessResponse.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType];
  *v3 = *a1;
  v3[8] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AccessResponse();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static AccessResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA85030 = a1;
  return result;
}

void sub_1B83C5AB0(void *a1)
{
  AnswerType.rawValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85050, &qword_1B83E9348);
  v2 = sub_1B83DDC6C();

  v3 = sub_1B83DDCBC();
  [a1 encodeObject:v2 forKey:v3];
}

id AccessResponse.init(coder:)(void *a1)
{
  v3 = sub_1B83DDCBC();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85060, &qword_1B83E9350);
    if (swift_dynamicCast())
    {
      AnswerType.init(rawValue:)(v10, v13);
      v5 = BYTE8(v13[0]);
      if (BYTE8(v13[0]) != 254)
      {
        v7 = &v1[OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType];
        *v7 = *&v13[0];
        v7[8] = v5;
        v9.receiver = v1;
        v9.super_class = type metadata accessor for AccessResponse();
        v8 = objc_msgSendSuper2(&v9, sel_init);

        return v8;
      }
    }
  }

  else
  {

    sub_1B83AD84C(v13, &qword_1EBA84970, &qword_1B83E8430);
  }

  type metadata accessor for AccessResponse();
  swift_deallocPartialClassInstance();
  return 0;
}

id AccessResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessResponse.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccessResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B83C5F2C(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1B83C3DEC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1B83DE18C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B83C60D0(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = 16 * (v10 | (v4 << 6));
    v14 = (*(v3 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v3 + 56) + v13;
    v18 = *v17;
    v19 = *(v17 + 8);

    v20 = sub_1B83C3DEC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(a2 + 56) + 16 * v20;
    if (*(v23 + 8))
    {
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 == v18)
      {
        v9 = v19;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
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

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ApprovalType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ApprovalType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnswerType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnswerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1B83C63A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B83C63BC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t AccessResponseError.hashValue.getter()
{
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](0);
  return sub_1B83DE24C();
}

unint64_t sub_1B83C64E0()
{
  result = qword_1EBA85068;
  if (!qword_1EBA85068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85068);
  }

  return result;
}

id sub_1B83C6560()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83C65BC()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id static NSXPCConnection.accessRequestorConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRequestingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83C66C4()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRequestingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

id static NSXPCConnection.accessRequestorCompatibilityConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRequestingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83C685C()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRequestingInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

uint64_t sub_1B83C6994(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B83A06F0;
  aBlock[3] = a3;
  v7 = _Block_copy(aBlock);

  v8 = [v5 *a4];
  _Block_release(v7);
  sub_1B83DDF5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85070, &qword_1B83E94F8);
  if (swift_dynamicCast())
  {
    return v10;
  }

  result = sub_1B83DE09C();
  __break(1u);
  return result;
}

id sub_1B83C6B24(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

void sub_1B83C6BC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRequestingInterfaceyySo14NSXPCInterfaceCFZ_0(v3);
}

void _sSo15NSXPCConnectionC14ScreenTimeCoreE42configureExportedAccessRequestingInterfaceyySo14NSXPCInterfaceCFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84778, &qword_1B83E7EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B83E94E0;
  v2 = sub_1B83A1210(0, &unk_1EBA83728, 0x1E695DF20);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84C78, &qword_1B83E89D0);
  *(v1 + 32) = v2;
  v3 = sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84C80, &qword_1B83E89D8);
  *(v1 + 64) = v3;
  v4 = sub_1B83A1210(0, &qword_1EBA83700, 0x1E696ABC0);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847C0, &qword_1B83E7EF0);
  *(v1 + 96) = v4;
  v5 = sub_1B83A1210(0, &qword_1EBA836E0, 0x1E696AEC0);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847B8, &qword_1B83E7EE8);
  *(v1 + 128) = v5;
  v6 = type metadata accessor for AccessRequest();
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85018, &qword_1B83E9260);
  *(v1 + 160) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = sub_1B83DDDCC();

  v9 = [v7 initWithArray_];

  sub_1B83DDE6C();
  sub_1B83DE09C();
  __break(1u);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *ScreenTimeFeatureFlags.feature.getter()
{
  result = "new_usage";
  switch(*v0)
  {
    case 1:
      result = "screentime_api";
      break;
    case 2:
      result = "new_usage_swiftui";
      break;
    case 3:
      result = "ams_app_metadata_api";
      break;
    case 4:
      result = "appDistribution";
      break;
    case 5:
      result = "nlg_dialog_response";
      break;
    case 6:
      result = "data_validation";
      break;
    case 7:
      result = "greymatter";
      break;
    case 8:
      result = "greymatter_imagegeneration";
      break;
    case 9:
      result = "greymatter_imagepreset";
      break;
    case 0xA:
      result = "legacy_usage_shutdown";
      break;
    case 0xB:
      result = "one_more_minute";
      break;
    case 0xC:
      result = "fast_debounce";
      break;
    case 0xD:
      result = "paa_age_ratings";
      break;
    case 0xE:
      result = "passcode_activity";
      break;
    case 0xF:
      result = "exempt_apps";
      break;
    case 0x10:
      result = "harden_shield_authentication";
      break;
    case 0x11:
      result = "monarch";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ScreenTimeFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v1);
  return sub_1B83DE24C();
}

unint64_t sub_1B83C7290()
{
  result = qword_1EBA85078;
  if (!qword_1EBA85078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85078);
  }

  return result;
}

unint64_t sub_1B83C72E8()
{
  result = qword_1EBA85080;
  if (!qword_1EBA85080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85080);
  }

  return result;
}

unint64_t sub_1B83C7340()
{
  result = qword_1EBA85088;
  if (!qword_1EBA85088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85088);
  }

  return result;
}

unint64_t sub_1B83C7398()
{
  result = qword_1EBA85090;
  if (!qword_1EBA85090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85090);
  }

  return result;
}

unint64_t sub_1B83C73F0()
{
  result = qword_1EBA85098;
  if (!qword_1EBA85098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenTimeFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenTimeFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id STConsistencyChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STConsistencyChecker.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STConsistencyChecker();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STConsistencyChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STConsistencyChecker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B83C7738(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851C0, &unk_1B83E8F90);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
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

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B83C7988(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B83C7A30;

  return sub_1B83C88D0();
}

uint64_t sub_1B83C7A30(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    if (v6)
    {
      v8 = *(v5 + 16);
      v9 = sub_1B83DD8BC();

      v8[2](v8, 0, v9);
      v10 = v8;
LABEL_6:
      _Block_release(v10);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v11 = *(v5 + 16);
      v9 = sub_1B83DDCBC();

      v11[2](v11, v9, 0);
      v10 = v11;
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1B83C7D68(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B83C7E10;

  return sub_1B83C8CD4();
}

uint64_t sub_1B83C7E10(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    if (v6)
    {
      v8 = *(v5 + 16);
      v9 = sub_1B83DD8BC();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v10 = *(v5 + 16);
    (v10)[2](v10, a1, 0);

    _Block_release(v10);
  }

  else
  {
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1B83C8144(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B83C81E0, 0, 0);
}

uint64_t sub_1B83C81E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_opt_self() createScreenTimeBag];
  v0[6] = v3;
  v0[7] = [objc_allocWithZone(MEMORY[0x1E698C878]) initWithParentAccount:v2 childDSID:v1 bag:v3];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1B83C82D0;

  return MEMORY[0x1EEDEE010]();
}

uint64_t sub_1B83C82D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = sub_1B83C84C8;
  }

  else
  {
    v5 = sub_1B83C83E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B83C83E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  if (v2)
  {
    v5 = *(v0 + 40);
    v6 = sub_1B83DDCBC();

    (v5)[2](v5, v6, 0);
    _Block_release(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B83C84C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = *(v0 + 88);
  if (v2)
  {
    v6 = *(v0 + 40);
    v7 = sub_1B83DD8BC();

    (v6)[2](v6, 0, v7);
    _Block_release(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}