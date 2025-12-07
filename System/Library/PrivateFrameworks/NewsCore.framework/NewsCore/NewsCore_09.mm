uint64_t sub_1B650A7B0(uint64_t a1)
{
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v4 = *(v1 + 160);
  swift_willThrow();

  _s3__C4CodeOMa_0(0);
  *(v1 + 80) = 11;
  v5 = v2;
  sub_1B6416A48(&unk_1EB94B9C0, _s3__C4CodeOMa_0, &unk_1B6819070);
  v6 = sub_1B67D84BC();

  if (v6)
  {

    sub_1B650B4C0();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1B650A8E4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
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

uint64_t sub_1B650A9BC(uint64_t a1)
{
  v1 = sub_1B67D8A9C();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B948, &qword_1B6819E10);
  return sub_1B67D8F1C();
}

void *PrivateDataContext.deinit()
{
  sub_1B650AC58(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

void *sub_1B650AC58(void *result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t PrivateDataContext.__deallocating_deinit()
{
  sub_1B650AC58(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsCore18PrivateDataContextC11AccessModel33_598916D8853500E4550C3E7DA629AD5CLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B650AD10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B650AD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B650ADC4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B650ADF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v7 = *a1;
  v8 = sub_1B67D910C();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B948, &qword_1B6819E10);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[17] = v9;
  v11 = v7[10];
  v5[18] = v11;
  v5[19] = v7[11];
  v12 = v7[12];
  v5[20] = v12;
  v5[21] = v7[13];
  *v9 = v5;
  v9[1] = sub_1B650AFB0;

  return sub_1B650A0F4(a3, v11, v10, v12);
}

uint64_t sub_1B650AFB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 176) = a2;
    *(v6 + 184) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B650B11C, 0, 0);
  }
}

uint64_t sub_1B650B11C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v15 = *(v0 + 88);
  v6 = *(v0 + 64);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);
  sub_1B650A9BC(*(v0 + 56));
  v7 = [v6 privateCloudDatabase];
  sub_1B6415FF0(v2, v1, &qword_1EB94B948, &qword_1B6819E10);
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  type metadata accessor for PrivateZone(255, v0 + 16);
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  sub_1B67D90FC();

  sub_1B67D90EC();
  (*(v5 + 16))(v3, v4, v15);
  sub_1B67D944C();
  swift_allocObject();
  v8 = sub_1B67D945C();
  (*(v5 + 8))(v4, v15);
  sub_1B6418AB4(v2, &qword_1EB94B948, &qword_1B6819E10);

  v9 = *(v0 + 8);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);

  return v9(v8, v10, v11);
}

uint64_t sub_1B650B30C@<X0>(uint64_t a1@<X8>)
{
  sub_1B641A49C();
  result = sub_1B67D8F3C();
  if (!v1)
  {
    sub_1B67D8D5C();
    v4 = sub_1B67D8CEC();

    if (*(v4 + 16))
    {

      sub_1B6501908(a1);
    }

    else
    {

      v5 = sub_1B67D93DC();
      return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
    }
  }

  return result;
}

unint64_t sub_1B650B4C0()
{
  result = qword_1EB95A320;
  if (!qword_1EB95A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95A320);
  }

  return result;
}

unint64_t sub_1B650B540()
{
  result = qword_1EB95A328[0];
  if (!qword_1EB95A328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95A328);
  }

  return result;
}

id DropboxSubscriptionList.__allocating_init(todayDropbox:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v3[v4] = v5;
  *&v3[OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DropboxSubscriptionList.init(todayDropbox:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t DropboxSubscriptionList.addInterest()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InterestToken();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = InterestToken.__allocating_init(_:)(sub_1B650B73C, v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for InterestToken;
  *a1 = result;
  return result;
}

char *sub_1B650B73C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *&result[OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_lazyDropboxData];
    v2 = result;

    os_unfair_lock_lock((v1 + 24));
    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t DropboxSubscriptionList.rankedAllSubscribedTagIDs.getter()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B650B994;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B644DC48;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B644CB30;
  aBlock[3] = &block_descriptor_12;
  v4 = _Block_copy(aBlock);

  [v1 peekSyncWithAccessor_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B650B994(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 rankedAllSubscribedTagIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B67D97BC();
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DropboxSubscriptionList.autoFavoriteTagIDs.getter()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B650BBB0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B650C014;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B644CB30;
  aBlock[3] = &block_descriptor_16;
  v4 = _Block_copy(aBlock);

  [v1 peekSyncWithAccessor_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  return result;
}

uint64_t sub_1B650BBB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 autoFavoriteTagIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B67D97BC();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B646A4DC(v5);

  *v2 = v6;
}

id sub_1B650BC58(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B67D9AEC();

  return v5;
}

uint64_t DropboxSubscriptionList.mutedTagIDs.getter()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B650BE3C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B650C014;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B644CB30;
  aBlock[3] = &block_descriptor_26;
  v4 = _Block_copy(aBlock);

  [v1 peekSyncWithAccessor_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  return result;
}

uint64_t sub_1B650BE3C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 mutedTagIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B67D9AFC();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  *v2 = v5;
}

id DropboxSubscriptionList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DropboxSubscriptionList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B650C018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivateZoneLocation(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PrivateDataContext();
  result = sub_1B67D88BC();
  if (result)
  {
    v12 = result;
    result = FCURLForNotificationHistory();
    if (result)
    {
      v13 = result;
      v14 = type metadata accessor for NotificationHistory();
      sub_1B67D85AC();

      (*(v5 + 32))(v10, v7, v4);
      (*(v5 + 56))(v10, 0, 1, v4);
      result = sub_1B6477BC0(v12, v10);
      a2[3] = v14;
      a2[4] = &off_1F2DBE538;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B650C1F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v21 - v1;
  v3 = sub_1B67D856C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D85FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v21 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  result = FCBaseURLForSharedPrivateData();
  if (result)
  {
    v18 = result;
    sub_1B67D85AC();

    (*(v8 + 32))(v16, v14, v7);
    type metadata accessor for ItemExposureRegistry(0);
    v21[0] = 0xD000000000000011;
    v21[1] = 0x80000001B682A4A0;
    (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
    sub_1B64B5234();
    sub_1B67D85EC();
    (*(v4 + 8))(v6, v3);
    v19 = sub_1B67D8A9C();
    (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
    v20 = sub_1B644F5E0(v11, v2);
    (*(v8 + 8))(v16, v7);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ItemExposureRegistryNames.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ItemExposureRegistryNames.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ItemExposureRegistryNames.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B650C6B4()
{
  v1 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64E4EC4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
        sub_1B646FA50(&v3[*(v6 + 48)]);
        v7 = sub_1B67D877C();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0xD000000000000010;
      }

      else
      {
        return 7107429;
      }
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
      sub_1B646FA50(&v3[*(v8 + 48)]);
      v9 = sub_1B67D877C();
      (*(*(v9 - 8) + 8))(v3, v9);
      return 0x74736574616CLL;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x6C41656C706F6570;
    }

    else
    {
      return 0x6C707075536C7365;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x53456C61626F6C67;
  }

  else
  {
    return 0x4C5345676174;
  }
}

int *sub_1B650C918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1B650CA30(a1, a9);
  result = type metadata accessor for SmarterFetchRequest(0);
  v24 = (a9 + result[5]);
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + result[6]);
  *v25 = a4;
  v25[1] = a5;
  *(a9 + result[7]) = a6;
  *(a9 + result[8]) = a7;
  *(a9 + result[9]) = a8;
  *(a9 + result[10]) = a10;
  *(a9 + result[11]) = a11;
  *(a9 + result[12]) = a12;
  *(a9 + result[13]) = a13;
  v26 = (a9 + result[14]);
  *v26 = a14;
  v26[1] = a15;
  v27 = (a9 + result[15]);
  *v27 = a16;
  v27[1] = a17;
  return result;
}

uint64_t sub_1B650CA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B650CA94@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64E4EC4(v2, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0) + 48);
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    sub_1B646FA50(&v6[v11]);
    v12(a1, v10, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_1B650CC38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1B64E4EC4(v2, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v13 = sub_1B67D877C();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
    sub_1B6404758(&v6[*(v10 + 48)], v9);
    v11 = sub_1B67D877C();
    (*(*(v11 - 8) + 8))(v6, v11);
    return sub_1B6404758(v9, a1);
  }
}

uint64_t sub_1B650CDD8()
{
  v1 = *(v0 + *(type metadata accessor for SmarterFetchRequest(0) + 20));

  return v1;
}

uint64_t sub_1B650CE18(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_1B650CE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B650CE64@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B681A100;
  *(inited + 32) = 0x6570795461746164;
  v52 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v50 = v3;
  *(inited + 72) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_1B64E4EC4(v1, boxed_opaque_existential_0);
  *(inited + 80) = 0x5574736575716572;
  *(inited + 88) = 0xEB00000000444955;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v16 = (v1 + Request[5]);
  v17 = v16[1];
  v18 = MEMORY[0x1E69E6158];
  *(inited + 96) = *v16;
  *(inited + 104) = v17;
  *(inited + 120) = v18;
  strcpy((inited + 128), "storefrontID");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v19 = (v1 + Request[6]);
  v20 = v19[1];
  *(inited + 144) = *v19;
  *(inited + 152) = v20;
  *(inited + 168) = v18;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001B682A4E0;
  v21 = *(v1 + Request[7]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  *(inited + 192) = v21;
  *(inited + 216) = v22;
  strcpy((inited + 224), "subscriberType");
  *(inited + 239) = -18;
  v23 = *(v1 + Request[8]);
  v53 = a1;
  v49 = v5;
  if ((v23 - 2) < 2)
  {
    v26 = 0x6373627553746F6ELL;
    v25 = 0xED00006465626972;
  }

  else
  {
    if (v23)
    {
      v24 = MEMORY[0x1E69E6158];
      if (v23 == 1)
      {
        v25 = 0xEA00000000006465;
        v26 = 0x6269726373627573;
      }

      else
      {
        v25 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      goto LABEL_9;
    }

    v25 = 0xE500000000000000;
    v26 = 0x6C61697274;
  }

  v24 = MEMORY[0x1E69E6158];
LABEL_9:
  *(inited + 240) = v26;
  *(inited + 248) = v25;
  *(inited + 264) = v24;
  *(inited + 272) = 0x657461446D6F7266;
  *(inited + 280) = 0xE800000000000000;

  v54 = v1;
  sub_1B650CA94(v12);
  v27 = sub_1B67D877C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v12, 1, v27) == 1)
  {
    sub_1B646FA50(v12);
    *(inited + 312) = v24;
    *(inited + 288) = 0x3E6C696E3CLL;
    *(inited + 296) = 0xE500000000000000;
  }

  else
  {
    v56 = v27;
    v30 = __swift_allocate_boxed_opaque_existential_0(&v55);
    (*(v28 + 32))(v30, v12, v27);
    sub_1B644A4F0(&v55, (inited + 288));
  }

  *(inited + 320) = 0x657461446F74;
  *(inited + 328) = 0xE600000000000000;
  v31 = v54;
  v32 = v49;
  sub_1B64E4EC4(v54, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v51;
  if (EnumCaseMultiPayload > 1)
  {
    (*(v28 + 56))(v51, 1, 1, v27);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
    v36 = Request;
    v37 = v48;
    sub_1B6404758(v32 + *(v35 + 48), v48);
    (*(v28 + 8))(v32, v27);
    v38 = v37;
    Request = v36;
    v31 = v54;
    sub_1B6404758(v38, v34);
  }

  if (v29(v34, 1, v27) == 1)
  {
    sub_1B646FA50(v34);
    v39 = MEMORY[0x1E69E6158];
    *(inited + 360) = MEMORY[0x1E69E6158];
    *(inited + 336) = 0x3E6C696E3CLL;
    *(inited + 344) = 0xE500000000000000;
    v40 = v53;
  }

  else
  {
    v56 = v27;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v55);
    (*(v28 + 32))(v41, v34, v27);
    sub_1B644A4F0(&v55, (inited + 336));
    v40 = v53;
    v39 = MEMORY[0x1E69E6158];
  }

  strcpy((inited + 368), "fetchStrategy");
  *(inited + 382) = -4864;
  v42 = (v31 + Request[14]);
  v44 = *v42;
  v43 = v42[1];
  *(inited + 408) = v39;
  if (v43)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0x3E6C696E3CLL;
  }

  v46 = 0xE500000000000000;
  if (v43)
  {
    v46 = v43;
  }

  *(inited + 384) = v45;
  *(inited + 392) = v46;

  sub_1B6482328(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  swift_arrayDestroy();
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BB70, qword_1B681A118);
  v40[4] = sub_1B650D4F8();
  __swift_allocate_boxed_opaque_existential_0(v40);
  return sub_1B67D894C();
}

uint64_t sub_1B650D4A0(uint64_t a1)
{
  v2 = sub_1B650D8C8(&qword_1EB94BBA8, &unk_1B681A1A8);

  return MEMORY[0x1EEE44678](a1, v2);
}

unint64_t sub_1B650D4F8()
{
  result = qword_1EB94BB78;
  if (!qword_1EB94BB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94BB70, qword_1B681A118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94BB78);
  }

  return result;
}

void sub_1B650D5B8(uint64_t a1)
{
  type metadata accessor for SmarterFetchRequest.DataType(319);
  if (v1 <= 0x3F)
  {
    sub_1B650D798(319, &qword_1EDB1E608, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FCSubscriptionState(319);
      if (v3 <= 0x3F)
      {
        sub_1B650D740();
        if (v4 <= 0x3F)
        {
          sub_1B650D798(319, &qword_1EB94BB88, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B650D798(319, &qword_1EB94BB90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B650D740()
{
  if (!qword_1EB94BB80)
  {
    v0 = sub_1B67D9B1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB94BB80);
    }
  }
}

void sub_1B650D798(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B650D7E8(uint64_t a1)
{
  sub_1B650D848(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B650D848(uint64_t a1)
{
  if (!qword_1EB94BB98)
  {
    sub_1B67D877C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94A100, &qword_1B680FD50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB94BB98);
    }
  }
}

uint64_t sub_1B650D8C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmarterFetchRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id URLResponsePayload.init(fileURL:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v10 = swift_allocObject();
  *(v10 + 28) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  *&v2[v9] = v10;
  sub_1B63F3DA0(0, &qword_1EDB20368, 0x1E696AC00);
  v11 = *(v6 + 16);
  v11(v8, a1, v5);
  v12 = sub_1B650DCA8(v8);
  v13 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48);
  v11(v13, a1, v5);
  *&v13[v14] = v12;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  (*(v6 + 8))(a1, v5);
  return v15;
}

id sub_1B650DCA8(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D858C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1B67D85FC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1B67D855C();

    swift_willThrow();
    v9 = sub_1B67D85FC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

id _s8NewsCore18URLResponsePayloadC4dataAC10Foundation4DataV_tcfC_0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *&v5[v6] = v7;
  v8 = &v5[OBJC_IVAR___FCURLResponsePayload_kind];
  *v8 = a1;
  *(v8 + 1) = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id _s8NewsCore18URLResponsePayloadC4dataAC10Foundation4DataV_tcfc_0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  *(v7 + 24) = 1;
  v8 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
  *v8 = a1;
  *(v8 + 1) = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *URLResponsePayload.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v9 = swift_allocObject();
  *(v9 + 28) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  v19 = v8;
  *&v2[v8] = v9;
  sub_1B63F3DA0(0, &qword_1EDB20368, 0x1E696AC00);
  v10 = *(v5 + 16);
  v11 = a1;
  v12 = a1;
  v13 = v4;
  v10(v7, v12, v4);
  v14 = v20;
  v15 = sub_1B650DCA8(v7);
  if (v14)
  {
    (*(v5 + 8))(v11, v4);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;
    v17 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48);
    v10(v17, v11, v13);
    *&v17[v20] = v16;
    type metadata accessor for URLResponsePayload.Kind(0);
    swift_storeEnumTagMultiPayload();
    v21.receiver = v2;
    v21.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v21, sel_init);
    (*(v5 + 8))(v11, v13);
  }

  return v2;
}

id URLResponsePayload.__allocating_init(_:response:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *&v5[v6] = v7;
  v8 = &v5[OBJC_IVAR___FCURLResponsePayload_kind];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB50, &unk_1B6813210) + 48);
  v10 = sub_1B67D9C5C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  *&v8[v9] = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v5;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

id URLResponsePayload.init(_:response:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *&v2[v6] = v7;
  v8 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB50, &unk_1B6813210) + 48);
  v10 = sub_1B67D9C5C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  *&v8[v9] = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

unint64_t URLResponsePayload.size.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCURLResponsePayload__size);
  os_unfair_lock_lock(v1 + 7);
  sub_1B650E938(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 7);
  return v3;
}

void sub_1B650E64C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1B67D85FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLResponsePayload.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8) != 1)
  {
    v16 = *a1;
LABEL_21:
    *a3 = v16;
    return;
  }

  sub_1B648CE30(a2 + OBJC_IVAR___FCURLResponsePayload_kind, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *v12;
    v18 = v12[1];
    v19 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_19;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v17 = sub_1B645745C(v17, v18);
      v16 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
LABEL_17:
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        __break(1u);
LABEL_19:
        sub_1B645745C(v17, v18);
        v16 = 0;
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v19)
    {
      v20 = v12[1];
      sub_1B645745C(v17, v18);
      v16 = BYTE6(v20);
      goto LABEL_20;
    }

    v25 = HIDWORD(v17);
    v26 = v17;
    v17 = sub_1B645745C(v17, v18);
    if (__OFSUB__(v25, v26))
    {
      goto LABEL_23;
    }

    v16 = v25 - v26;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {

    (*(v7 + 32))(v9, v12, v6);
    v14 = [objc_opt_self() defaultManager];
    v15 = sub_1B67D858C();
    v16 = [v14 fc:v15 sizeOfItemAtURL:0 error:?];

    (*(v7 + 8))(v9, v6);
LABEL_20:
    *a1 = v16;
    *(a1 + 8) = 0;
    goto LABEL_21;
  }

  v21 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB50, &unk_1B6813210) + 48));
  v16 = [v21 expectedContentLength];

  if ((v16 & 0x8000000000000000) == 0)
  {
    *a1 = v16;
    *(a1 + 8) = 0;
    v22 = sub_1B67D9C5C();
    (*(*(v22 - 8) + 8))(v12, v22);
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

id URLResponsePayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLResponsePayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B650EA7C(uint64_t a1)
{
  v2 = type metadata accessor for URLResponsePayload.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B650EB00(uint64_t a1)
{
  result = type metadata accessor for URLResponsePayload.Kind(319);
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

uint64_t dispatch thunk of URLResponsePayload.__allocating_init(_:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

void sub_1B650EC2C(uint64_t a1)
{
  sub_1B650ED04(319, &qword_1EDB20438, MEMORY[0x1E6968FB0], &qword_1EDB20368, 0x1E696AC00);
  if (v1 <= 0x3F)
  {
    sub_1B650ED04(319, qword_1EDB20228, MEMORY[0x1E6969EA0], &qword_1EDB20220, 0x1E695AC70);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B650ED04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1B63F3DA0(255, a4, a5);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B650EDF0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t UserEventHistoryPruningStartupTask.__allocating_init(group:executionPhase:userEventHistoryStorage:pruningPolicyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v12 = sub_1B67D896C();
  (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  v13 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v14 = sub_1B67D89BC();
  (*(*(v14 - 8) + 32))(v10 + v13, a2, v14);
  *(v10 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage) = a3;
  v15 = (v10 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider);
  *v15 = a4;
  v15[1] = a5;
  return v10;
}

uint64_t UserEventHistoryPruningStartupTask.init(group:executionPhase:userEventHistoryStorage:pruningPolicyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v12 = sub_1B67D896C();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v14 = sub_1B67D89BC();
  (*(*(v14 - 8) + 32))(v5 + v13, a2, v14);
  *(v5 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage) = a3;
  v15 = (v5 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider);
  *v15 = a4;
  v15[1] = a5;
  return v5;
}

uint64_t UserEventHistoryPruningStartupTask.run(launchOptions:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BBC0, "^N");
  swift_allocObject();
  return sub_1B67D8A2C();
}

uint64_t sub_1B650F0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1B67D88FC();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = sub_1B650F500;
  v7[4] = v6;

  sub_1B67D88EC();
}

uint64_t UserEventHistoryPruningStartupTask.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v2 = sub_1B67D896C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v4 = sub_1B67D89BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t UserEventHistoryPruningStartupTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v2 = sub_1B67D896C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v4 = sub_1B67D89BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B650F3A0@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_1B650F420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BBC0, "^N");
  swift_allocObject();
  return sub_1B67D8A2C();
}

uint64_t type metadata accessor for UserEventHistoryPruningStartupTask(uint64_t a1)
{
  result = qword_1EDB20E60;
  if (!qword_1EDB20E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B650F528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v11 = (*(v1 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider))();
  v3 = [v11 policies];
  sub_1B650F690();
  v4 = sub_1B67D97BC();

  if (v4 >> 62)
  {
    v5 = sub_1B67DA04C();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = *(v1 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C95180](v6, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    ++v6;
  }

  while (v5 != v6);
LABEL_10:

  v2(v10);
}

unint64_t sub_1B650F690()
{
  result = qword_1EDB1E540[0];
  if (!qword_1EDB1E540[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDB1E540);
  }

  return result;
}

void sub_1B65117C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6513F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6517464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65184DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B651F600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65207F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6520C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6522E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B652D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6530E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6533978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6533B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6535AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6535F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6537CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6539234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6539CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653A7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653B2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653BE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653D1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653DB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B653EBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B653EF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B653F530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653FFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromShortcutCategoryType(__CFString *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = FCCKShortcutCategoryTypeUnknown;
  }

  else
  {
    v2 = FCCKShortcutCategoryTypeCurated;
  }

  a1 = *v2;
LABEL_6:

  return a1;
}

__CFString *NSStringFromShortcutCategoryStatus(__CFString *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = FCCKShortcutCategoryStatusUnknown;
  }

  else
  {
    v2 = FCCKShortcutCategoryStatusBlocked;
  }

  a1 = *v2;
LABEL_6:

  return a1;
}

uint64_t FCShortcutCategoryTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"curated"])
  {
    v2 = 0;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 1;
  }

  return v2;
}

uint64_t FCShortcutCategoryStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"blocked"])
  {
    v2 = 0;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 1;
  }

  return v2;
}

void sub_1B6542DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PBArticleContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"web"])
  {
    if ([v1 caseInsensitiveCompare:@"flint"])
    {
      if ([v1 caseInsensitiveCompare:@"video"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCArticleContentTypeFromPBContentType(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PBArticleStoryTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"topStory"])
    {
      if ([v2 caseInsensitiveCompare:@"breaking"])
      {
        if ([v2 caseInsensitiveCompare:@"developing"])
        {
          if ([v2 caseInsensitiveCompare:@"updated"])
          {
            if ([v2 caseInsensitiveCompare:@"local"])
            {
              v3 = 0;
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCArticleStoryTypeFromPBStoryType(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t PBArticleStoryTypeFromFCStoryType(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t PBArticleRoleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] && objc_msgSend(v2, "caseInsensitiveCompare:", @"article"))
  {
    if ([v2 caseInsensitiveCompare:@"cover"])
    {
      if ([v2 caseInsensitiveCompare:@"campaign_landing_page"])
      {
        if ([v2 caseInsensitiveCompare:@"end-of-issue"])
        {
          if ([v2 caseInsensitiveCompare:@"replica-advertisement"])
          {
            if ([v2 caseInsensitiveCompare:@"spotlight"])
            {
              if ([v2 caseInsensitiveCompare:@"feature"])
              {
                v3 = 8 * ([v2 caseInsensitiveCompare:@"audio-daily-briefing"] == 0);
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 7;
        }
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t PBArticleRoleFromFCRole(uint64_t result)
{
  if ((result - 1) < 8)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_1B6544C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6545230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCTopicallyOrderGroups(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v125 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v120 = *&a5;
    v121 = 2048;
    v122 = *&a6;
    v123 = 2048;
    *v124 = a7;
    *&v124[8] = 2048;
    *&v124[10] = a8;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Topically ordering groups with relatednessThreshold=%f relatednessKWeight=%f topicScoreWeight=%f highestScoringRelativeScoreMultiplier=%f", buf, 0x2Au);
  }

  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = &__block_literal_global_144;
  }

  v21 = _Block_copy(v20);

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = &__block_literal_global_147;
  }

  v23 = _Block_copy(v22);

  v24 = MEMORY[0x1E695DEC8];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __FCTopicallyOrderGroups_block_invoke_3;
  v117[3] = &unk_1E7C36D40;
  v25 = v15;
  v118 = v25;
  v26 = [v24 fc_array:v117];
  v27 = [v16 arrayByAddingObjectsFromArray:v26];

  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __FCTopicallyOrderGroups_block_invoke_5;
  v113[3] = &unk_1E7C382E8;
  v28 = v25;
  v114 = v28;
  v29 = v27;
  v115 = v29;
  v79 = v16;
  v116 = v79;
  if (!__FCTopicallyOrderGroups_block_invoke_5(v113) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected allArticleTopicData to be size of groups.allValues.count + extraData.count"];
    *buf = 136315906;
    v120 = "NSOrderedSet<NSString *> * _Nonnull FCTopicallyOrderGroups(NSDictionary<NSString *,NSSet<FCTopicalNodeElement *> *> * _Nonnull __strong, NSArray<NSSet<NSString *> *> * _Nonnull __strong, double (^ _Nullable __strong)(NSSet<NSString *> * _Nonnull __strong), NSString * _Nonnull (^ _Nullable __strong)(NSString * _Nonnull __strong), double, double, double, double)";
    v121 = 2080;
    v122 = "FCHeadlineClusterOrdering.m";
    v123 = 1024;
    *v124 = 564;
    *&v124[4] = 2114;
    *&v124[6] = v73;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v30 = MEMORY[0x1E695DF20];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __FCTopicallyOrderGroups_block_invoke_163;
  v110[3] = &unk_1E7C37D00;
  v31 = v28;
  v111 = v31;
  v78 = v29;
  v112 = v78;
  v77 = [v30 fc_dictionary:v110];
  v32 = [v77 fc_dictionaryBySwappingValuesAndKeys];
  v33 = MEMORY[0x1E695DFD8];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __FCTopicallyOrderGroups_block_invoke_4_172;
  v103[3] = &unk_1E7C38388;
  v76 = v32;
  v104 = v76;
  v34 = v31;
  v105 = v34;
  v106 = a5;
  v107 = a6;
  v108 = a7;
  v109 = a8;
  v35 = [v33 fc_set:v103];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __FCTopicallyOrderGroups_block_invoke_179;
  v100[3] = &unk_1E7C36F68;
  v36 = v35;
  v101 = v36;
  v75 = v34;
  v102 = v75;
  if ((__FCTopicallyOrderGroups_block_invoke_179(v100) & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected each group to have exactly 1 node containing it's identifier"];
    *buf = 136315906;
    v120 = "NSOrderedSet<NSString *> * _Nonnull FCTopicallyOrderGroups(NSDictionary<NSString *,NSSet<FCTopicalNodeElement *> *> * _Nonnull __strong, NSArray<NSSet<NSString *> *> * _Nonnull __strong, double (^ _Nullable __strong)(NSSet<NSString *> * _Nonnull __strong), NSString * _Nonnull (^ _Nullable __strong)(NSString * _Nonnull __strong), double, double, double, double)";
    v121 = 2080;
    v122 = "FCHeadlineClusterOrdering.m";
    v123 = 1024;
    *v124 = 625;
    *&v124[4] = 2114;
    *&v124[6] = v74;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v37 = MEMORY[0x1E695DFD8];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __FCTopicallyOrderGroups_block_invoke_189;
  v98[3] = &unk_1E7C371F8;
  v99 = v36;
  v38 = v36;
  v39 = [v37 fc_set:v98];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTopicallyOrderGroups_block_invoke_4_193;
  aBlock[3] = &unk_1E7C383D8;
  v40 = v21;
  v97 = v40;
  v41 = _Block_copy(aBlock);
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __FCTopicallyOrderGroups_block_invoke_5_195;
  v94[3] = &unk_1E7C38400;
  v42 = v41;
  v95 = v42;
  v80 = v39;
  [v39 enumerateObjectsUsingBlock:v94];
  v43 = [FCTopicalNode alloc];
  v44 = [MEMORY[0x1E695DFD8] setWithObject:@"root"];
  v45 = objc_opt_new();
  v46 = objc_opt_new();
  v47 = [(FCTopicalNode *)&v43->super.isa initWithIdentifier:v44 displayedElements:v45 allTopicCollections:v46 relatednessThreshold:a5 relatednessKWeight:a6 topicScoreWeight:a7 highestScoringRelativeScoreMultiplier:a8];

  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __FCTopicallyOrderGroups_block_invoke_6_200;
  v92[3] = &unk_1E7C38180;
  v48 = v47;
  v93 = v48;
  [v38 enumerateObjectsUsingBlock:v92];
  v49 = [v38 setByAddingObject:v48];

  v50 = MEMORY[0x1E695DF20];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __FCTopicallyOrderGroups_block_invoke_7;
  v90[3] = &unk_1E7C36EC8;
  v51 = v49;
  v91 = v51;
  v52 = [v50 fc_dictionary:v90];
  [v52 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_203];
  v53 = v40;
  if (v48)
  {
    v54 = [(FCTopicalNode *)v48 calculateLeafScoresWithTopicScoreProvider:v53];
    v55 = v54;
    v56 = v23;
    if (v54)
    {
      v57 = *(v54 + 8);
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;
    v59 = v58;
    WeakRetained = v58;
    if (v58 != v48)
    {
      v61 = v58;
      do
      {
        if (v61)
        {
          v61[9] = v48[16];
          WeakRetained = objc_loadWeakRetained(v61 + 7);
        }

        else
        {
          WeakRetained = 0;
        }

        v61 = WeakRetained;
      }

      while (WeakRetained != v48);
    }

    [(FCTopicalNode *)v48 calculateNonLeafScoresWithTopicProvider:v53];

    v23 = v56;
  }

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __FCTopicallyOrderGroups_block_invoke_12;
  v86[3] = &unk_1E7C38538;
  v62 = v53;
  v88 = v62;
  v89 = &__block_literal_global_205;
  v63 = v48;
  v87 = v63;
  v64 = __FCTopicallyOrderGroups_block_invoke_12(v86);
  v65 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __FCTopicallyOrderGroups_block_invoke_18;
    v83[3] = &unk_1E7C385B0;
    v84 = v23;
    v85 = v62;
    v69 = v65;
    v70 = [v51 fc_arrayByTransformingWithBlock:v83];
    *buf = 138412290;
    v120 = v70;
    _os_log_debug_impl(&dword_1B63EF000, v69, OS_LOG_TYPE_DEBUG, "Ordered clusters with nodes %@", buf, 0xCu);

    v65 = FCPersonalizationLog;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __FCTopicallyOrderGroups_block_invoke_220;
    v81[3] = &unk_1E7C385D8;
    v82 = v23;
    v71 = v65;
    v72 = [v80 fc_arrayByTransformingWithBlock:v81];
    *buf = 138412290;
    v120 = v72;
    _os_log_debug_impl(&dword_1B63EF000, v71, OS_LOG_TYPE_DEBUG, "Ordered clusters with edges %@", buf, 0xCu);
  }

  if (v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = MEMORY[0x1E695E0F0];
  }

  v67 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v66];

  return v67;
}

void __FCTopicallyOrderGroups_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allValues];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_4;
  v6[3] = &unk_1E7C382A0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 allObjects];
  v3 = [v4 valueForKeyPath:@"topics"];
  [v2 addObjectsFromArray:v3];
}

BOOL __FCTopicallyOrderGroups_block_invoke_5(id *a1)
{
  v2 = [a1[4] allValues];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_155];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  v5 = [v4 count];
  v6 = [a1[5] count];
  v7 = v6 == [a1[6] count] + v5;

  return v7;
}

void __FCTopicallyOrderGroups_block_invoke_163(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_2_164;
  v6[3] = &unk_1E7C38338;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_2_164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696AB50]);
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AE18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCTopicallyOrderGroups_block_invoke_3_167;
  v14[3] = &unk_1E7C38310;
  v7 = v3;
  v15 = v7;
  v8 = [v6 predicateWithBlock:v14];
  v9 = [v5 filteredArrayUsingPredicate:v8];
  v10 = [v4 initWithArray:v9];

  objc_opt_class();
  v11 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
    v13 = v12;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = 0;
  }

  [v13 addObject:v7];
  [*(a1 + 40) setObject:v13 forKeyedSubscript:v10];
}

void __FCTopicallyOrderGroups_block_invoke_4_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCTopicallyOrderGroups_block_invoke_5_173;
  v7[3] = &unk_1E7C38360;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v5;
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

void __FCTopicallyOrderGroups_block_invoke_5_173(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 anyObject];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (![v9 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected to find some displayed elements for %@ in %@", v5, *(a1 + 32)];
    *buf = 136315906;
    v14 = "NSOrderedSet<NSString *> * _Nonnull FCTopicallyOrderGroups(NSDictionary<NSString *,NSSet<FCTopicalNodeElement *> *> * _Nonnull __strong, NSArray<NSSet<NSString *> *> * _Nonnull __strong, double (^ _Nullable __strong)(NSSet<NSString *> * _Nonnull __strong), NSString * _Nonnull (^ _Nullable __strong)(NSString * _Nonnull __strong), double, double, double, double)_block_invoke_5";
    v15 = 2080;
    v16 = "FCHeadlineClusterOrdering.m";
    v17 = 1024;
    v18 = 601;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = *(a1 + 40);
  v11 = [[FCTopicalNode alloc] initWithIdentifier:v5 displayedElements:v9 allTopicCollections:v7 relatednessThreshold:*(a1 + 48) relatednessKWeight:*(a1 + 56) topicScoreWeight:*(a1 + 64) highestScoringRelativeScoreMultiplier:*(a1 + 72)];

  [v10 addObject:v11];
}

uint64_t __FCTopicallyOrderGroups_block_invoke_179(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"identifiers"];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_185];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v6 = [v4 count];
  if (v6 == [v5 count])
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [*(a1 + 40) allKeys];
    v9 = [v7 setWithArray:v8];
    v10 = [v9 isEqualToSet:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __FCTopicallyOrderGroups_block_invoke_189(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FCTopicallyOrderGroups_block_invoke_2_190;
  v8[3] = &unk_1E7C383B0;
  v9 = v5;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  [v9 enumerateObjectsUsingBlock:v8];
}

void __FCTopicallyOrderGroups_block_invoke_2_190(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_3_191;
  v6[3] = &unk_1E7C383B0;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_3_191(id *a1, id a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1[4] == a2)
  {
    return;
  }

  v3 = a2;
  v4 = [FCTopicalEdge alloc];
  v5 = a1[4];
  v6 = v3;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "node1"];
    *v22 = 136315906;
    *&v22[4] = "[FCTopicalEdge initWithNode:andNode:]";
    *&v22[12] = 2080;
    *&v22[14] = "FCHeadlineClusterOrdering.m";
    v23 = 1024;
    v24 = 431;
    v25 = 2114;
    v26 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v22, 0x26u);

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "node2"];
    *v22 = 136315906;
    *&v22[4] = "[FCTopicalEdge initWithNode:andNode:]";
    *&v22[12] = 2080;
    *&v22[14] = "FCHeadlineClusterOrdering.m";
    v23 = 1024;
    v24 = 432;
    v25 = 2114;
    v26 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v22, 0x26u);
  }

LABEL_8:
  *v22 = v4;
  *&v22[8] = FCTopicalEdge;
  v7 = objc_msgSendSuper2(v22, sel_init);
  if (v7)
  {
    if (v6 && v5)
    {
      v21[0] = v5;
      v21[1] = v6;
      v20 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_100];

      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = v20[2];
      v20[2] = v10;

      v12 = [v9 objectAtIndexedSubscript:1];
      v13 = v20[3];
      v20[3] = v12;
    }

    else
    {
      v9 = v7;
      v20 = 0;
    }

    goto LABEL_16;
  }

LABEL_13:
  v20 = 0;
LABEL_16:

  v14 = a1 + 5;
  if (([a1[5] containsObject:v20] & 1) == 0)
  {
    v16 = a1[6];
    v15 = a1 + 6;
    if (([v16 containsObject:v20] & 1) == 0)
    {
      [(FCTopicalEdge *)v20 calculateRelatedness];
      v17 = v20;
      if (v20)
      {
        if (([v20 relatednessCalculated] & 1) == 0)
        {
          [(FCTopicalEdge *)v20 calculateRelatedness];
        }

        v17 = v20;
        if (v20[5] && v20[4] + v20[6])
        {
          v15 = v14;
        }
      }

      v20 = v17;
      [*v15 addObject:v17];
    }
  }
}

uint64_t __FCTopicallyOrderGroups_block_invoke_4_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = *(a2 + 24);
  }

  return (*(v2 + 16))(v2, a2);
}

void __FCTopicallyOrderGroups_block_invoke_5_195(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v8 = a2;
  [(FCTopicalNode *)v4 considerEdge:v8 withNodeScorer:v5];
  if (a2)
  {
    v6 = v8;
    v7 = v8[3];
  }

  else
  {
    v7 = 0;
    v6 = v8;
  }

  [(FCTopicalNode *)v7 considerEdge:v6 withNodeScorer:*(a1 + 32)];
}

void __FCTopicallyOrderGroups_block_invoke_6_200(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained(v3 + 7);

    v3 = v5;
    if (!WeakRetained)
    {
      objc_storeWeak(v5 + 7, *(a1 + 32));
      v3 = v5;
    }
  }
}

void __FCTopicallyOrderGroups_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_8;
  v6[3] = &unk_1E7C38428;
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [v7 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_9;
  v6[3] = &unk_1E7C38428;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    v9 = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(v3 + 7);
      v4 = *(a1 + 32);
    }

    else
    {
      WeakRetained = 0;
    }

    v3 = v9;
    if (WeakRetained == v4)
    {
      objc_opt_class();
      v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
      if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v7 = v6;
        v8 = v7;
      }

      else
      {
        v8 = [MEMORY[0x1E695DFA8] set];
        v7 = 0;
      }

      [v8 addObject:v9];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];

      v3 = v9;
    }
  }
}

void __FCTopicallyOrderGroups_block_invoke_10(int a1, uint64_t a2, id obj)
{
  if (a2)
  {
    objc_storeStrong((a2 + 64), obj);
  }
}

uint64_t __FCTopicallyOrderGroups_block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = 0.0;
  v6 = 0.0;
  if (a3)
  {
    v6 = *(a3 + 8) * *(a3 + 72);
  }

  if (v4)
  {
    v5 = v4[1] * v4[9];
  }

  if (v6 < v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 > v5;
  }

  return v7;
}

id __FCTopicallyOrderGroups_block_invoke_12(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTopicallyOrderGroups_block_invoke_13;
  aBlock[3] = &unk_1E7C38498;
  v16 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FCTopicallyOrderGroups_block_invoke_15;
  v12[3] = &unk_1E7C38510;
  v13 = *(a1 + 48);
  v3 = v2;
  v14 = v3;
  v4 = _Block_copy(v12);
  v5 = _Block_copy(v4);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[8];
  }

  v7 = v6;
  v8 = [v7 allObjects];
  v9 = [v8 sortedArrayUsingComparator:*(a1 + 48)];

  v10 = (*(v4 + 2))(v4, v5, v9);

  return v10;
}

id __FCTopicallyOrderGroups_block_invoke_13(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FCTopicallyOrderGroups_block_invoke_14;
  v8[3] = &unk_1E7C38470;
  v9 = *(a1 + 32);
  v6 = [v5 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __FCTopicallyOrderGroups_block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695DFD8];
  v7 = a2;
  v8 = [v6 setWithObject:a3];
  v9 = (*(v5 + 16))(v5, v8);
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E695DFD8] setWithObject:v7];

  v12 = (*(v10 + 16))(v10, v11);
  if (v9 < v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v9 > v12;
  }

  return v13;
}

id __FCTopicallyOrderGroups_block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FCTopicallyOrderGroups_block_invoke_16;
  v12[3] = &unk_1E7C384E8;
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = [v7 fc_array:v12];

  return v10;
}

void __FCTopicallyOrderGroups_block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_17;
  v6[3] = &unk_1E7C384C0;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_17(void *a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (v3 && v3[8])
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = _Block_copy(v5);
    v7 = v13[8];
    v8 = [v7 allObjects];
    v9 = [v8 sortedArrayUsingComparator:a1[6]];
    v10 = (v5)[2](v5, v6, v9);
    [v4 addObjectsFromArray:v10];
  }

  v11 = a1[4];
  v12 = (*(a1[7] + 16))();
  [v11 addObjectsFromArray:v12];
}

id __FCTopicallyOrderGroups_block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v25 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = v4[3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __FCTopicallyOrderGroups_block_invoke_19;
  v34[3] = &unk_1E7C38560;
  v35 = *(a1 + 32);
  v27 = v7;
  v26 = [v7 fc_arrayByTransformingWithBlock:v34];
  v29 = [v26 componentsJoinedByString:{@", "}];
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:{-[FCTopicalNode individualScoreWithTopicScoreProvider:](v5, *(a1 + 40))}];
  if (v5)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(v5 + 8) * *(v5 + 72)];
    WeakRetained = objc_loadWeakRetained((v5 + 56));
    v24 = WeakRetained == 0;
    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained((v5 + 56));
      v2 = v10;
      if (v10)
      {
        v11 = *(v10 + 3);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __FCTopicallyOrderGroups_block_invoke_20;
      v32[3] = &unk_1E7C38560;
      v22 = &v33;
      v33 = *(a1 + 32);
      v23 = v12;
      v21 = [v12 fc_arrayByTransformingWithBlock:v32];
      v13 = [v21 componentsJoinedByString:{@", "}];
    }

    else
    {
      v13 = @"nil";
    }

    v14 = *(v5 + 64);
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    WeakRetained = 0;
    v14 = 0;
    v24 = 1;
    v13 = @"nil";
  }

  v15 = v14;
  v16 = [v15 allObjects];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __FCTopicallyOrderGroups_block_invoke_21;
  v30[3] = &unk_1E7C38588;
  v31 = *(a1 + 32);
  v17 = [v16 fc_arrayByTransformingWithBlock:v30];
  v18 = [v17 componentsJoinedByString:{@", "}];
  v19 = [v25 stringWithFormat:@"Node : %@ (Individual Score : %@ Final Score : %@) Parent : %@ Children : %@", v29, v28, v8, v13, v18];

  if (!v24)
  {
  }

  return v19;
}

id __FCTopicallyOrderGroups_block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_21(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCTopicallyOrderGroups_block_invoke_22;
  v7[3] = &unk_1E7C38560;
  v8 = *(a1 + 32);
  v3 = v2;
  v4 = [v3 fc_arrayByTransformingWithBlock:v7];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v24 = MEMORY[0x1E696AEC0];
  if (v3 && (v5 = v3[2]) != 0)
  {
    v26 = v5;
    v6 = *(v5 + 3);
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = v6;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __FCTopicallyOrderGroups_block_invoke_2_221;
  v29[3] = &unk_1E7C38560;
  v30 = *(a1 + 32);
  v25 = v7;
  v23 = [v7 fc_arrayByTransformingWithBlock:v29];
  v8 = [v23 componentsJoinedByString:{@", "}];
  if (v4)
  {
    v9 = v4[3];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 3);
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
LABEL_7:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __FCTopicallyOrderGroups_block_invoke_3_222;
  v27[3] = &unk_1E7C38560;
  v28 = *(a1 + 32);
  v12 = v11;
  v13 = [v12 fc_arrayByTransformingWithBlock:v27];
  v14 = [v13 componentsJoinedByString:{@", "}];
  if (v4)
  {
    v15 = v4[4];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  if (v4)
  {
    v17 = v4[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  if (v4)
  {
    v19 = v4[6];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
  v21 = [v24 stringWithFormat:@"Edge from %@ to %@ with { %@ -- %@ -- %@ }", v8, v14, v16, v18, v20];

  return v21;
}

id __FCTopicallyOrderGroups_block_invoke_2_221(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_3_222(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

void sub_1B6548EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCPostPurchaseOnboardingStepWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"landingPage"])
    {
      if ([v2 caseInsensitiveCompare:@"channelPicker"])
      {
        if ([v2 caseInsensitiveCompare:@"channelPickerNewsPlus"])
        {
          v3 = 4 * ([v2 caseInsensitiveCompare:@"deepLink"] == 0);
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCPostPurchaseOnboardingConfigurationTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"postPurchaseFromOslo"])
    {
      if ([v2 caseInsensitiveCompare:@"postPurchaseFromLandingPage"])
      {
        if ([v2 caseInsensitiveCompare:@"postPurchaseFromPuzzle"])
        {
          if ([v2 caseInsensitiveCompare:@"detectionAsFamilyMember"])
          {
            if ([v2 caseInsensitiveCompare:@"detectionAsAppleOneUser"])
            {
              if ([v2 caseInsensitiveCompare:@"detectionAsAmplifyUser"])
              {
                if ([v2 caseInsensitiveCompare:@"detectionAsPaidBundleViaOfferUser"])
                {
                  v3 = 8 * ([v2 caseInsensitiveCompare:@"postPurchaseFromPaidBundleViaOffer"] == 0);
                }

                else
                {
                  v3 = 7;
                }
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *FCDescriptionForVerticalAlignment(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7C387F8[a1];
  }
}

void sub_1B654BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B654D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B654D214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B654D9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6555024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6555840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6556088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6557370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6559548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B655DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655E6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655E84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655EC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655F2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B655F718(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B65603A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v55 - 208), 8);
  _Block_object_dispose((v55 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B6563668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6564DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65655E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B65667BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 120));
  _Unwind_Resume(a1);
}

void CKValidateRecordArrayValue(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = objc_getProtocol("CKRecordValue");
    for (i = objc_opt_class(); i != objc_opt_class(); i = class_getSuperclass(i))
    {
      if (class_conformsToProtocol(i, v3))
      {
        if (i)
        {
          goto LABEL_10;
        }

        break;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v16 initWithFormat:@"Array members must conform to CKRecordValue: %@ (%@)", v1, v18];
      *buf = 136315906;
      v29 = "void CKValidateRecordArrayValue(NSArray<__kindof id<CKRecordValue>> *__strong)";
      v30 = 2080;
      v31 = "FCCKRecordFieldConversion.m";
      v32 = 1024;
      v33 = 33;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    i = 0;
LABEL_10:
    v20 = v3;
    v21 = v2;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v1;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x1E69E9C10];
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v11 = objc_alloc(MEMORY[0x1E696AEC0]);
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = NSStringFromClass(i);
            v15 = [v11 initWithFormat:@"Array members can't be mixed class: %@ (%@ != %@)", v5, v13, v14, v20, v21];
            *buf = 136315906;
            v29 = "void CKValidateRecordArrayValue(NSArray<__kindof id<CKRecordValue>> *__strong)";
            v30 = 2080;
            v31 = "FCCKRecordFieldConversion.m";
            v32 = 1024;
            v33 = 38;
            v34 = 2114;
            v35 = v15;
            _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v1 = v22;
  }
}

void sub_1B656DA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B656F974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 200), 8);
  _Block_object_dispose((v33 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6572D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6574784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6574C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B6575100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  objc_destroyWeak((v25 + 64));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCDebugFetchOperationDescriptionForStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7C39D88[a1];
  }
}

uint64_t PBTagTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"topic"])
  {
    if ([v1 caseInsensitiveCompare:@"channel"])
    {
      if ([v1 caseInsensitiveCompare:@"section"])
      {
        if ([v1 caseInsensitiveCompare:@"list"])
        {
          if ([v1 caseInsensitiveCompare:@"issue"])
          {
            v2 = 0;
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 4;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCTagTypeFromPBTagType(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 5)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FCTagEligibilityForGroupingFromNTPBTagRecord_GroupingAvailability(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t NTPBTagRecord_GroupingAvailabilityFromFCTagEligibilityForGrouping(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t FCSportsLeagueTypeFromString(uint64_t a1)
{
  v1 = [&unk_1F2E718E8 objectForKeyedSubscript:a1];
  v2 = [v1 integerValue];

  return v2;
}

uint64_t FCSportsTypeFromString(uint64_t a1)
{
  v1 = [&unk_1F2E71910 objectForKeyedSubscript:a1];
  v2 = [v1 integerValue];

  return v2;
}

void *FCMastheadLogoVisibilityFromString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [&unk_1F2E71960 objectForKeyedSubscript:v1];

    if (v2)
    {
      v3 = [&unk_1F2E71960 objectForKeyedSubscript:v1];
      v2 = [v3 integerValue];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B65790E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6579650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t FCPaidAccessCheckerHasBundleSubscriptionToChannelInline(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && ([v5 bundleSubscription], v7 = objc_claimAutoreleasedReturnValue(), objc_getAssociatedObject(v7, (v7 + 1)), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "unsignedIntegerValue"), v10 = v9, objc_getAssociatedObject(v7, ~v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = (objc_msgSend(v11, "unsignedIntegerValue") - a3) ^ (v10 + a3), v11, v8, v7, (v12 & 1) != 0))
  {
    v14 = [v5 bundleSubscription];
    v15 = [v14 bundleChannelIDs];
    v13 = [v15 containsObject:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

__CFString *NSStringFromFCFeedDescriptorConfiguration(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"Default";
  }

  else
  {
    return off_1E7C3A1D0[a1 - 1];
  }
}

uint64_t FCAssetHandleQoSFromPriority(uint64_t a1)
{
  if (a1 <= 0)
  {
    return -1;
  }

  else
  {
    return 25;
  }
}

void sub_1B658208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B6582940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_1B6582AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6583994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6584390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6585830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65875F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B659A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(v65);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

FCBundleSubscription *FCBundleSubscriptionMakeInline(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7, char a8, void *a9)
{
  v17 = a9;
  v18 = a6;
  v19 = a3;
  v20 = a2;
  v21 = a1;
  LOBYTE(v29) = a8;
  LOBYTE(v28) = a7;
  v22 = [[FCBundleSubscription alloc] initWithBundlePurchaseID:v21 bundleChannelIDs:v20 bundleChannelIDsVersion:v19 inTrialPeriod:a4 isPurchaser:a5 servicesBundlePurchaseID:v18 isAmplifyUser:v28 initialPurchaseTimestamp:v17 isPaidBundleViaOfferActivated:v29];
  v23 = MEMORY[0x1E696AD98];
  v24 = v22;
  v25 = [v23 numberWithUnsignedInteger:&v22[5]._servicesBundlePurchaseID + 3];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-364 - v22];
  objc_setAssociatedObject(v24, &v22->super.isa + 1, v25, 1);
  objc_setAssociatedObject(v24, (-364 - v22), v26, 1);

  return v24;
}

void sub_1B659F164(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 232));
  _Unwind_Resume(a1);
}

void sub_1B659F4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A0844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A09B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A1790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A25A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A3650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A4564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCStringFromFeedPersonalizationConfigurationSet(uint64_t a1)
{
  if ((a1 - 1) > 0x27)
  {
    return @"Default";
  }

  else
  {
    return off_1E7C3ABB0[a1 - 1];
  }
}

uint64_t ArticleContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"web"])
  {
    if ([v1 caseInsensitiveCompare:@"flint"])
    {
      if ([v1 caseInsensitiveCompare:@"video"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCSortOptionForNTPBSortOption(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t FCSortOptionForStringSortOption(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"VideoGroupSortOptionDate"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"VideoGroupSortOptionPersonalization"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B65AC7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCOSVersionCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (a2 >= a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (a1 <= a3)
  {
    v4 = v5;
  }

  if (a1 >= a3)
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

__CFString *FCStringFromOSVersion(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", a1, a2];
  }

  else
  {
    v3 = @"<none>";
  }

  return v3;
}

id FCStringFromOSVersions(uint64_t *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = FCStringFromOSVersion(*a1, a1[1]);
  v4 = FCStringFromOSVersion(a1[2], a1[3]);
  v5 = FCStringFromOSVersion(a1[4], a1[5]);
  v6 = FCStringFromOSVersion(a1[6], a1[7]);
  v7 = [v2 stringWithFormat:@"iOS=%@, macOS=%@, watchOS=%@, visionOS=%@", v3, v4, v5, v6];

  return v7;
}

id FCCoreConfigurationPromise(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v10 = "NFPromise<id<FCCoreConfiguration>> *FCCoreConfigurationPromise(__strong id<FCCoreConfigurationManager>)";
    v11 = 2080;
    v12 = "FCCoreConfigurationManager.m";
    v13 = 1024;
    v14 = 13;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = objc_alloc(MEMORY[0x1E69B68F8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCCoreConfigurationPromise_block_invoke;
  v7[3] = &unk_1E7C39ED0;
  v8 = v1;
  v3 = v1;
  v4 = [v2 initWithResolver:v7];

  return v4;
}

void __FCCoreConfigurationPromise_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCCoreConfigurationPromise_block_invoke_2;
  v10[3] = &unk_1E7C3B098;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  FCCoreConfigurationFetch(v7, v10);
}

uint64_t __FCCoreConfigurationPromise_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_1B65B26E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 240), 8);
  _Block_object_dispose((v40 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1B65B4C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65B6E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  objc_destroyWeak((v36 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t FCWriteDictionary(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v14 = "BOOL FCWriteDictionary(NSDictionary *__strong, NSURL *__strong)";
    v15 = 2080;
    v16 = "FCFileCoordinatedDictionaryUtilities.m";
    v17 = 1024;
    v18 = 36;
    v19 = 2114;
    v20 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v14 = "BOOL FCWriteDictionary(NSDictionary *__strong, NSURL *__strong)";
    v15 = 2080;
    v16 = "FCFileCoordinatedDictionaryUtilities.m";
    v17 = 1024;
    v18 = 37;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v12 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "afterData"];
    *buf = 136315906;
    v14 = "BOOL FCWriteDictionary(NSDictionary *__strong, NSURL *__strong)";
    v15 = 2080;
    v16 = "FCFileCoordinatedDictionaryUtilities.m";
    v17 = 1024;
    v18 = 41;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v5 writeToURL:v4 atomically:1];

  return v7;
}

long double FCPersonalizationUtilitiesStaticHourlyFlowRate(void *a1, unint64_t a2)
{
  v3 = a1;
  [v3 hourlyFlowRateDampeningFactor];
  v4 = 1.0;
  if (v5 != 0.0)
  {
    [v3 hourlyFlowRateDampeningFactor];
    v4 = 1.0 / v6;
  }

  [v3 hourlyFlowRateMinimum];
  v8 = v7;
  [v3 hourlyFlowRatePerSubscription];
  v10 = v9;
  [v3 hourlyFlowRateSubscriptionCountBuffer];
  v12 = v8 + pow(v11 + v10 * a2, v4);

  return v12;
}

double FCPersonalizationBaselineClicksMultiplerForTagID(void *a1, void *a2, double a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 defaultTags];
    v9 = [v8 objectForKeyedSubscript:v5];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v13 = [v7 optionalTags];
      v10 = [v13 objectForKeyedSubscript:v5];

      if (!v10)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_2;
        v28[3] = &unk_1E7C3B528;
        v29 = v5;
        __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_2(v28);
        v11 = 1.0;
        v12 = v29;
        goto LABEL_12;
      }
    }

    v12 = v10;
    [v12 doubleValue];
    if (a3 <= 0.0 || v14 <= 0.0)
    {
      *&v24[0] = MEMORY[0x1E69E9820];
      *&v24[1] = 3221225472;
      *&v24[2] = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_3;
      *&v24[3] = &unk_1E7C3B550;
      v25 = v12;
      v27 = a3;
      v26 = v5;
      v11 = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_3(v24);
    }

    else
    {
      [v12 doubleValue];
      v16 = v15 / 100.0;
      v11 = v15 / 100.0 / a3;
      v17 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
      {
        v18 = MEMORY[0x1E696AD98];
        v19 = v17;
        v20 = [v18 numberWithDouble:v16];
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
        *buf = 138413058;
        v33 = v5;
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = v21;
        v38 = 2112;
        v39 = v22;
        _os_log_debug_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEBUG, "Found whitelisted tag prior for %@. Tag prior %@, baseline prior %@, multiplier %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke;
    v30[3] = &unk_1E7C3B528;
    v31 = v5;
    __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke(v30);
    v11 = 1.0;
    v12 = v31;
  }

LABEL_12:

  return v11;
}

double __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEBUG, "No whitelist present for %@", &v5, 0xCu);
  }

  return 1.0;
}

double __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEBUG, "No whitelisted tag prior specified for %@", &v5, 0xCu);
  }

  return 1.0;
}

double __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_3(double *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 4);
    v5 = MEMORY[0x1E696AD98];
    v6 = a1[6];
    v7 = v2;
    v8 = [v5 numberWithDouble:v6];
    v9 = *(a1 + 5);
    v10 = 138412802;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEBUG, "tagPriorPercent = %@, baselineRatePrior = %@ for %@", &v10, 0x20u);
  }

  return 1.0;
}

void sub_1B65BE3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v52 - 256), 8);
  _Unwind_Resume(a1);
}

void FCResourceArchiveCopyFileFinishedHandler(uint64_t a1, const char *a2)
{
  v5 = BOMCopierUserData();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a2 length:strlen(a2)];

  [v5 addObject:v4];
}

__CFString *NSStringForFCUserEventHistoryPruningPolicyType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"MaxTotalSize";
  }

  else
  {
    return off_1E7C3B8B8[a1];
  }
}

uint64_t FCCKSubscriptionOriginFromFCSubscriptionOrigin(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  result = 3;
  if (a1 <= 5)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v8 = 136315906;
            v9 = "FCCKSubscriptionOrigin FCCKSubscriptionOriginFromFCSubscriptionOrigin(FCSubscriptionOrigin)";
            v10 = 2080;
            v11 = "FCSubscription.m";
            v12 = 1024;
            v13 = 388;
            v14 = 2114;
            v15 = v7;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
          }

          return 4;
        }

        else if (a1 == 5)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v8 = 136315906;
            v9 = "FCCKSubscriptionOrigin FCCKSubscriptionOriginFromFCSubscriptionOrigin(FCSubscriptionOrigin)";
            v10 = 2080;
            v11 = "FCSubscription.m";
            v12 = 1024;
            v13 = 392;
            v14 = 2114;
            v15 = v5;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
          }

          return 5;
        }

        return result;
      }

      return a1;
    }

    if (a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 0;
LABEL_25:
    if (v4)
    {
      return a1;
    }

    else
    {
      return v3;
    }
  }

  if (a1 <= 7)
  {
    if (a1 == 7)
    {
      v3 = 7;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 6;
    goto LABEL_25;
  }

  if (a1 == 8 || a1 == 9)
  {
    return a1;
  }

  if (a1 == 10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: This value should never be persisted as a subscription origin"];
      v8 = 136315906;
      v9 = "FCCKSubscriptionOrigin FCCKSubscriptionOriginFromFCSubscriptionOrigin(FCSubscriptionOrigin)";
      v10 = 2080;
      v11 = "FCSubscription.m";
      v12 = 1024;
      v13 = 414;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
    }

    return 10;
  }

  return result;
}

__CFString *FCDescriptionForSubscriptionType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"tag";
  }

  else
  {
    return off_1E7C3B8E0[a1 - 1];
  }
}

uint64_t FCSubscriptionOriginFromFCCKSubscriptionOrigin(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  result = 3;
  if (a1 <= 5)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v8 = 136315906;
            v9 = "FCSubscriptionOrigin FCSubscriptionOriginFromFCCKSubscriptionOrigin(FCCKSubscriptionOrigin)";
            v10 = 2080;
            v11 = "FCSubscription.m";
            v12 = 1024;
            v13 = 347;
            v14 = 2114;
            v15 = v7;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
          }

          return 4;
        }

        else if (a1 == 5)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v8 = 136315906;
            v9 = "FCSubscriptionOrigin FCSubscriptionOriginFromFCCKSubscriptionOrigin(FCCKSubscriptionOrigin)";
            v10 = 2080;
            v11 = "FCSubscription.m";
            v12 = 1024;
            v13 = 351;
            v14 = 2114;
            v15 = v5;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
          }

          return 5;
        }

        return result;
      }

      return a1;
    }

    if (a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 0;
LABEL_25:
    if (v4)
    {
      return a1;
    }

    else
    {
      return v3;
    }
  }

  if (a1 <= 7)
  {
    if (a1 == 7)
    {
      v3 = 7;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 6;
    goto LABEL_25;
  }

  if (a1 == 8 || a1 == 9)
  {
    return a1;
  }

  if (a1 == 10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: This value should never be persisted as a subscription origin"];
      v8 = 136315906;
      v9 = "FCSubscriptionOrigin FCSubscriptionOriginFromFCCKSubscriptionOrigin(FCCKSubscriptionOrigin)";
      v10 = 2080;
      v11 = "FCSubscription.m";
      v12 = 1024;
      v13 = 373;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
    }

    return 10;
  }

  return result;
}

__CFString *NSStringFromFCSubscriptionType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"FCSubscriptionTypeTag";
  }

  else
  {
    return off_1E7C3B908[a1 - 1];
  }
}

__CFString *NSStringFromFCSubscriptionOrigin(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"FCSubscriptionOriginUserInitiated";
  }

  else
  {
    return off_1E7C3B930[a1 - 1];
  }
}

uint64_t FCSubscriptionOriginFromNSString(uint64_t a1)
{
  v1 = [&unk_1F2E719B0 objectForKeyedSubscript:a1];
  v2 = [v1 integerValue];

  return v2;
}

void sub_1B65C719C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Block_object_dispose((v38 - 192), 8);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D1A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65D1D1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B65D212C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B65D2614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65D3790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B65D6254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v39 - 248), 8);
  _Block_object_dispose((v39 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D6890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v44 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D8424(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1B65D91FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 248), 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D9FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFCOnboardingVersionNumber(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Onboarded Post-YukonF with versionNumber %ld", a1];
  }

  else
  {
    v2 = off_1E7C3C240[a1];
  }

  return v2;
}

__CFString *NSStringFromFCSportsOnboardingState(uint64_t a1)
{
  if (a1)
  {
    return @"Sports Onboarded";
  }

  else
  {
    return @"Sports Not Onboarded";
  }
}

void sub_1B65DC7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65DCD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65E5594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65E63A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65EA7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKMutablePaymentClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EDB27098)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C3C530;
    v6 = 0;
    qword_1EDB27098 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EDB27098)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKMutablePayment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "SKMutablePayment");
  }

  qword_1EDB27090 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EDB27098 = result;
  return result;
}

id FCApplyFeedTransformations(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    v9 = *v14;
    v7 = v5;
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [*(*(&v13 + 1) + 8 * v10) transformFeedItems:v11];

        ++v10;
        v11 = v7;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v7;
}

id FCApplyFeedTransformationsAndLog(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v24 = v3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  v6 = v24;
  if (v5)
  {
    v26 = *v33;
    v6 = v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [v6 count];
        objc_opt_class();
        if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v10 = v8;
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 1;
          v11 = [v10 transformFeedItemsWithResults:v6];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __FCApplyFeedTransformationsAndLog_block_invoke;
          v27[3] = &unk_1E7C3C618;
          v27[4] = &v28;
          v12 = [v11 fc_arrayByTransformingWithBlock:v27];

          v13 = FCFeedItemTransformationLog;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = [v12 count];
            v17 = FCFeedFilterOptionsToNSString(v29[3]);
            *buf = 138544130;
            v37 = v15;
            v38 = 2048;
            v39 = v9;
            v40 = 2048;
            v41 = v16;
            v42 = 2114;
            v43 = v17;
            _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu -> %lu, reasons=%{public}@", buf, 0x2Au);
          }

          _Block_object_dispose(&v28, 8);
          goto LABEL_13;
        }

        v12 = [v8 transformFeedItems:v6];

        v18 = FCFeedItemTransformationLog;
        if (os_log_type_enabled(FCFeedItemTransformationLog, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v12 count];
          *buf = 138543874;
          v37 = v21;
          v38 = 2048;
          v39 = v9;
          v40 = 2048;
          v41 = v22;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu -> %lu", buf, 0x20u);

          v10 = 0;
LABEL_13:
          v6 = v12;
          goto LABEL_15;
        }

        v10 = 0;
        v6 = v12;
LABEL_15:
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v5);
  }

  return v6;
}

void sub_1B65ECBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __FCApplyFeedTransformationsAndLog_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) |= [v3 filteredReasons];
  if ([v3 isFiltered])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 item];
  }

  return v4;
}

void sub_1B65EFD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v52 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1B65F47F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FCPersonalizationActionToIndex()
{
  if (qword_1EDB23E30 != -1)
  {
    dispatch_once(&qword_1EDB23E30, &__block_literal_global_45);
  }

  v1 = _MergedGlobals_4;

  return v1;
}

void __FCPersonalizationActionToIndex_block_invoke()
{
  v0 = objc_opt_new();
  v1 = FCPersonalizationActions();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FCPersonalizationActionToIndex_block_invoke_3;
  v5[3] = &unk_1E7C38A30;
  v6 = v0;
  v2 = v0;
  [v1 enumerateObjectsUsingBlock:v5];

  v3 = [v2 copy];
  v4 = _MergedGlobals_4;
  _MergedGlobals_4 = v3;
}

void __FCPersonalizationActionToIndex_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

id FCPersonalizationActionIndexToAction()
{
  if (qword_1EDB23E40 != -1)
  {
    dispatch_once(&qword_1EDB23E40, &__block_literal_global_50_1);
  }

  v1 = qword_1EDB23E38;

  return v1;
}

void __FCPersonalizationActionIndexToAction_block_invoke()
{
  v2 = FCPersonalizationActionToIndex();
  v0 = [v2 fc_dictionaryBySwappingValuesAndKeys];
  v1 = qword_1EDB23E38;
  qword_1EDB23E38 = v0;
}

uint64_t FCPersonalizationActionIndex(uint64_t a1)
{
  v2 = FCPersonalizationActionToIndex();
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

uint64_t FCPersonalizationActionForIndex(uint64_t a1)
{
  v2 = FCPersonalizationActionIndexToAction();
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

id FCRankTagsDescending(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 fc_dictionaryWithKeySelector:sel_identifier];
  v5 = [v4 allKeys];
  v6 = [v3 rankTagIDsDescending:v5];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCRankTagsDescending_block_invoke;
  v10[3] = &unk_1E7C38D38;
  v11 = v4;
  v7 = v4;
  v8 = [v6 fc_arrayByTransformingWithBlock:v10];

  return v8;
}

id __FCCKReadingHistoryItemKeys_block_invoke()
{
  if (qword_1EDB27110 != -1)
  {
    dispatch_once(&qword_1EDB27110, &__block_literal_global_1865);
  }

  v1 = _MergedGlobals_152;

  return v1;
}

uint64_t __FCCKReadingHistoryItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleID", @"sourceChannelTagID", @"deviceID", @"lastVisited", @"articleRead", @"articleSeen", @"completedListening", @"completedReading", @"articleConsumed", @"liked", @"disliked", @"offensive", @"listenedCount", @"listeningProgress", @"listeningProgressLastSaved", @"lastListened", @"readingPosition", @"readingPositionLastSaved", @"readCount", @"removedFromAudio", @"pruningDisabled", 0}];
  v1 = _MergedGlobals_152;
  _MergedGlobals_152 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKIssueReadingHistoryItemKeys_block_invoke()
{
  if (qword_1EDB27120 != -1)
  {
    dispatch_once(&qword_1EDB27120, &__block_literal_global_1909);
  }

  v1 = qword_1EDB27118;

  return v1;
}

uint64_t __FCCKIssueReadingHistoryItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"issueID", @"lastVisited", @"lastBadged", @"lastEngaged", @"lastSeen", @"lastRemovedFromMyMagazines", @"lastVisitedArticleID", @"lastVisitedPageID", 0}];
  v1 = qword_1EDB27118;
  qword_1EDB27118 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKSubscriptionKeys_block_invoke()
{
  if (qword_1EDB27130 != -1)
  {
    dispatch_once(&qword_1EDB27130, &__block_literal_global_1979);
  }

  v1 = qword_1EDB27128;

  return v1;
}

uint64_t __FCCKSubscriptionKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"subscriptionType", @"subscriptionOrder", @"subscriptionOrigin", @"dateAdded", @"tagID", @"notificationsEnabled", @"groupID", 0}];
  v1 = qword_1EDB27128;
  qword_1EDB27128 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKReadingListEntryKeys_block_invoke()
{
  if (qword_1EDB27140 != -1)
  {
    dispatch_once(&qword_1EDB27140, &__block_literal_global_2004);
  }

  v1 = qword_1EDB27138;

  return v1;
}

uint64_t __FCCKReadingListEntryKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleID", @"dateAdded", @"origin", 0}];
  v1 = qword_1EDB27138;
  qword_1EDB27138 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKShortcutKeys_block_invoke()
{
  if (qword_1EDB27150 != -1)
  {
    dispatch_once(&qword_1EDB27150, &__block_literal_global_2029);
  }

  v1 = qword_1EDB27148;

  return v1;
}

uint64_t __FCCKShortcutKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"dateAdded", @"order", @"type", 0}];
  v1 = qword_1EDB27148;
  qword_1EDB27148 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKShortcutCategoryKeys_block_invoke()
{
  if (qword_1EDB27160 != -1)
  {
    dispatch_once(&qword_1EDB27160, &__block_literal_global_2054);
  }

  v1 = qword_1EDB27158;

  return v1;
}

uint64_t __FCCKShortcutCategoryKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"dateAdded", @"type", @"categoryID", @"status", 0}];
  v1 = qword_1EDB27158;
  qword_1EDB27158 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKAudioPlaylistItemKeys_block_invoke()
{
  if (qword_1EDB27170 != -1)
  {
    dispatch_once(&qword_1EDB27170, &__block_literal_global_2076);
  }

  v1 = qword_1EDB27168;

  return v1;
}

uint64_t __FCCKAudioPlaylistItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleID", @"dateAdded", @"order", 0}];
  v1 = qword_1EDB27168;
  qword_1EDB27168 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKUserEventHistorySessionKeys_block_invoke()
{
  if (qword_1EDB27180 != -1)
  {
    dispatch_once(&qword_1EDB27180, &__block_literal_global_2101);
  }

  v1 = qword_1EDB27178;

  return v1;
}

uint64_t __FCCKUserEventHistorySessionKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"sessionData", 0}];
  v1 = qword_1EDB27178;
  qword_1EDB27178 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKUserInfoKeys_block_invoke()
{
  if (qword_1EDB27190 != -1)
  {
    dispatch_once(&qword_1EDB27190, &__block_literal_global_2252);
  }

  v1 = qword_1EDB27188;

  return v1;
}

uint64_t __FCCKUserInfoKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"canonicalLanguage", @"editorialArticleVersion", @"feldsparID", @"finishFirstLaunchVersion", @"lastOpenedDate", @"lastViewedSavedDate", @"monthlyMeteredCount", @"meteredCountLastResetDate", @"monthlyPaidBundleMeteredCount", @"paidBundleMeteredCountLastResetDate", @"upsellAppLaunchCount", @"lastAppLaunchUpsellInstanceID", @"upsellAppLaunchLastSeenDate", @"upsellAppLaunchLastShownCampaignID", @"upsellAppLaunchLastPresenterBundleID", @"newsletterSignupLastSeenDate", @"personalizedNewsletterSignupLastSeenDate", @"issuesNewsletterOptinLastSeenDate", @"notificationsUserID", @"marketingNotificationsEnabled", @"newIssueNotificationsEnabled", @"endOfAudioNotificationsEnabled", @"sportsTopicNotificationsEnabledState2", @"totalMeteredCount", @"userStartDate", @"adsUserID", @"adsUserIDCreatedDate", @"lastViewedSharedWithYouDate", @"postPurchaseOnboardingLastSeenDate", @"appReviewRequestLastSeenDate", @"sportsOnboardingState", @"sportsOnboardingCompletedDate", @"sportsSyncState", @"sportsSyncStateLastSavedDate", @"sportsFavoritesLastModifiedDate", @"shortcutsOnboardingState", @"shortcutsOnboardingCompletedDate", @"sportsUserID", @"puzzleNotificationsEnabled2", @"puzzleNotificationsLastChangedDate", @"puzzleStatsStartDate", @"importSavedToRecipeVersion", 0}];
  v1 = qword_1EDB27188;
  qword_1EDB27188 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKTagSettingsKeys_block_invoke()
{
  if (qword_1EDB271A0 != -1)
  {
    dispatch_once(&qword_1EDB271A0, &__block_literal_global_2283);
  }

  v1 = qword_1EDB27198;

  return v1;
}

uint64_t __FCCKTagSettingsKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"fontMultiplier", @"fontMultiplierMacOS", @"contentScale", @"contentScaleMacOS", @"tagID", @"accessToken", @"webAccessOptIn", 0}];
  v1 = qword_1EDB27198;
  qword_1EDB27198 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKPuzzleHistoryItemKeys_block_invoke()
{
  if (qword_1EDB271B0 != -1)
  {
    dispatch_once(&qword_1EDB271B0, &__block_literal_global_2395);
  }

  v1 = qword_1EDB271A8;

  return v1;
}

uint64_t __FCCKPuzzleHistoryItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"puzzleID", @"puzzleTypeID", @"progressData", @"progressLevel", @"score", @"scoreType", @"rankID", @"usedReveal", @"playDuration", @"lastPlayedDate", @"completedDate", @"firstCompletedDate", @"firstPlayDuration", @"bestScore", @"difficulty", @"publishDate", @"behaviorFlags", @"progressMovesDescription", 0}];
  v1 = qword_1EDB271A8;
  qword_1EDB271A8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKPuzzleTypeSettingsKeys_block_invoke()
{
  if (qword_1EDB271C0 != -1)
  {
    dispatch_once(&qword_1EDB271C0, &__block_literal_global_2411);
  }

  v1 = qword_1EDB271B8;

  return v1;
}

uint64_t __FCCKPuzzleTypeSettingsKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"puzzleTypeID", @"settingsData", @"lastSeenPuzzleIDs", 0}];
  v1 = qword_1EDB271B8;
  qword_1EDB271B8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void FCSetupLogging()
{
  if (FCSetupLogging_onceToken != -1)
  {
    dispatch_once(&FCSetupLogging_onceToken, &__block_literal_global_50);
  }
}

id FCURLForUserAccountHomePath()
{
  v0 = FCSystemDirectoryDirectoryPath(5, 16);

  return FCURLForSystemDirectoriesPath(v0);
}

id FCURLForAppleInternalLibraryDirectory()
{
  v0 = FCSystemDirectoryDirectoryPath(5, 64);
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithCString:v0 encoding:4];
    free(v0);
    if (v1)
    {
      v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:1];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

id FCURLForAppleInternalLibraryBundlesDirectory()
{
  v0 = FCURLForAppleInternalLibraryDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"Bundles" isDirectory:1];

  return v1;
}

id FCURLForTodayPersonalizationUpdateStore()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayPersonalizationUpdateStore" isDirectory:0];

  return v3;
}

id FCURLForTodayPersonalizationDirectory()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);
  v3 = [v2 URLByAppendingPathComponent:@"Personalization_Data" isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  return v3;
}

id FCURLForLegacyWidgetReferralItems()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayWidgetArticleList" isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  return v3;
}

id FCURLForWidgetReferralItems(void *a1)
{
  v1 = a1;
  v2 = +[FCContextConfiguration defaultConfiguration];
  v3 = [v2 privateDataContainerCombinationIdentifier];
  v4 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v3);

  v5 = [v4 URLByAppendingPathComponent:@"referralItems" isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:v1 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v9];

  return v6;
}

id FCURLForWidgetDebugLogs()
{
  v0 = FCURLForFeldsparUserAccountHomeDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"widget-debug-logs" isDirectory:1];

  return v1;
}

id FCURLForMyArticlesRequest()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"myArticlesRequest" isDirectory:0];

  return v1;
}

id FCURLForNewsComputeServiceResources()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"tabi" isDirectory:1];
  v2 = [v1 URLByResolvingSymlinksInPath];

  return v2;
}

id FCURLForStocksComputeServiceResources()
{
  v0 = FCURLForGroupIdentifier(@"group.com.apple.stocks");
  v1 = [v0 URLByAppendingPathComponent:@"ComputationalGraph" isDirectory:1];
  v2 = [v1 URLByResolvingSymlinksInPath];

  return v2;
}

id FCURLForNotificationHistory()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"notification_history" isDirectory:0];
  v2 = [v1 URLByResolvingSymlinksInPath];

  return v2;
}

id FCURLForAVAssetDownloads()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = FCURLForGroupIdentifier(@"group.com.apple.news");
  v1 = [v0 URLByAppendingPathComponent:@"Library/com.apple.UserManagedAssets" isDirectory:1];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  v3 = [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v4;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "failed to create directory for AV asset downloads with error: %{public}@", buf, 0xCu);
    }

    v1 = 0;
  }

  return v1;
}

id FCURLForNewsAnalyticsPayloads()
{
  v0 = FCURLForFeldsparUserAccountHomeDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"Analytics_Payloads" isDirectory:1];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v4];

  return v1;
}

id FCURLForInternalExtrasBundle()
{
  v0 = FCURLForAppleInternalLibraryBundlesDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"NewsCoreInternalExtras"];
  v2 = [v1 URLByAppendingPathExtension:@"bundle"];

  return v2;
}

id FCURLsForAppExternalFiles(char a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FCURLsForAppExternalFiles_block_invoke;
  v3[3] = &__block_descriptor_33_e22_v16__0__NSMutableSet_8l;
  v4 = a1;
  v1 = [MEMORY[0x1E695DFD8] fc_set:v3];

  return v1;
}

void __FCURLsForAppExternalFiles_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = FCURLForFeldsparUserAccountHomeDirectory();
  v6 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 lastPathComponent];
        if (![v13 isEqualToString:@"actionQueue"] || *(a1 + 32) == 1)
        {
          [v3 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = FCURLForNotificationHistory();
  [v3 addObject:v14];
}

id FCPurchaseReceiptDirectoryURL(void *a1)
{
  v1 = a1;
  v2 = FCURLForContainerizedUserAccountDocumentDirectory(1);
  v3 = [v2 URLByAppendingPathComponent:@"receipts" isDirectory:1];
  v4 = v3;
  if (v1)
  {
    v5 = [v3 URLByAppendingPathComponent:v1 isDirectory:1];

    v4 = v5;
  }

  return v4;
}

uint64_t FCPaywallTypeForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"PaywallTypeArticleHardPaywall"])
    {
      if ([v2 caseInsensitiveCompare:@"PaywallTypeArticleSharedHardPaywall"])
      {
        if ([v2 caseInsensitiveCompare:@"PaywallTypeArticleSoftPaywall"])
        {
          if ([v2 caseInsensitiveCompare:@"PaywallTypeArticleSharedSoftPaywall"])
          {
            if ([v2 caseInsensitiveCompare:@"PaywallTypeChannelSoftPaywall"])
            {
              if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedSoftPaywallSmall"])
              {
                if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedSoftPaywallMedium"])
                {
                  if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedSoftPaywallLarge"])
                  {
                    if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedVideoSoftPaywallSmall"])
                    {
                      if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedVideoSoftPaywallLarge"])
                      {
                        if ([v2 caseInsensitiveCompare:@"PaywallTypePDFHardPaywall"])
                        {
                          if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedSoftPaywallSmall"])
                          {
                            if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedSoftPaywallLarge"])
                            {
                              if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedVideoSoftPaywallSmall"])
                              {
                                if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedVideoSoftPaywallLarge"])
                                {
                                  v3 = 0;
                                }

                                else
                                {
                                  v3 = 15;
                                }
                              }

                              else
                              {
                                v3 = 14;
                              }
                            }

                            else
                            {
                              v3 = 13;
                            }
                          }

                          else
                          {
                            v3 = 12;
                          }
                        }

                        else
                        {
                          v3 = 11;
                        }
                      }

                      else
                      {
                        v3 = 10;
                      }
                    }

                    else
                    {
                      v3 = 9;
                    }
                  }

                  else
                  {
                    v3 = 8;
                  }
                }

                else
                {
                  v3 = 7;
                }
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCPaywallOffersLinkTargetTypeForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"OffersLinkTargetTypeURL"])
    {
      v3 = 2 * ([v2 caseInsensitiveCompare:@"OffersLinkTargetTypeAMSURL"] == 0);
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *_FCFeedFilterOptionsAsStrings(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"DuplicateArticles"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"DuplicateClusters"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"BlockedStorefronts"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"ExplicitContent"];
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"MutedChannels"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"MutedChannelsExceptDailyBriefing"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"IgnoringLocalArticleDuplicates"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"IgnoringLocalClusterDuplicates"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 addObject:@"MinimumNewsVersion"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 addObject:@"NonFlint"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 addObject:@"FreeArticles"];
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 addObject:@"Paywall"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_14:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 addObject:@"BriefingArticles"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_15:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 addObject:@"InaccessiblePaid"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_16:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 addObject:@"NonSubscribedChannels"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 addObject:@"NonSubscribedChannelsExceptLocal"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_18:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 addObject:@"NonVideoArticles"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_19:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 addObject:@"PaidBundleArticles"];
  if ((a1 & 0x20000) == 0)
  {
LABEL_20:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 addObject:@"MutedTopics"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_21:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 addObject:@"MutedTopicsForSingleTopic"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_22:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 addObject:@"EvergreenArticles"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_23:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 addObject:@"SeenArticles"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_24:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 addObject:@"ReadArticles"];
  if ((a1 & 0x400000) == 0)
  {
LABEL_25:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 addObject:@"CompletedReadingArticles"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_26:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 addObject:@"ListenedArticles"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 addObject:@"CompletedListeningArticles"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 addObject:@"PlaylistArticles"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 addObject:@"RemovedFromAudioArticles"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_30:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 addObject:@"NonDownloadedArticles"];
  if ((a1 & 0x40000000) == 0)
  {
LABEL_31:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 addObject:@"DislikedArticles"];
  if ((a1 & 0x80000000) == 0)
  {
LABEL_32:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 addObject:@"SponsoredArticles"];
  if ((a1 & 0x100000000) == 0)
  {
LABEL_33:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 addObject:@"NonBundleArticles"];
  if ((a1 & 0x200000000) == 0)
  {
LABEL_34:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 addObject:@"ReduceVisibilityForNonFollowers"];
  if ((a1 & 0x400000000) == 0)
  {
LABEL_35:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 addObject:@"AlaCarteInaccessiblePaidForBundleSubscribers"];
  if ((a1 & 0x800000000) == 0)
  {
LABEL_36:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 addObject:@"MissingSourceChannel"];
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_77:
    [v3 addObject:@"SportsHighlightArticles"];
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_76:
  [v3 addObject:@"ArticlesWithZeroTabiScore"];
  if ((a1 & 0x2000000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_38:
  if ((a1 & 0x4000000000) != 0)
  {
LABEL_39:
    [v3 addObject:@"RecipeArticles"];
  }

LABEL_40:
  v4 = v3;

  return v3;
}

id FCFeedFilterOptionsToNSString(uint64_t a1)
{
  v1 = _FCFeedFilterOptionsAsStrings(a1);
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v1 componentsJoinedByString:{@", "}];
  v4 = [v2 stringWithFormat:@"[%@]", v3];

  return v4;
}

id FCFeedFilterOptionToNSString(uint64_t a1)
{
  v1 = _FCFeedFilterOptionsAsStrings(a1);
  v2 = [v1 firstObject];

  return v2;
}

id FCInterestTokenByCombiningTokens(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [FCPair pairWithFirst:v3 second:v4];
  }

  else
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    v6 = v7;
  }

  v8 = v6;

  return v8;
}

uint64_t FCNotificationSourceFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EIM"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"EFY"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PIM"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PFY"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"AIFY"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"SFY"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FCStringFromNotificationSource(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"EIM";
  }

  else
  {
    return off_1E7C3F298[a1];
  }
}

void sub_1B661A63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B661AAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B661AC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PBLifetimeFromFCLifetime(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_1B661B3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B661BAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_1B661BD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCLifetimeFromPBLifetime(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t FCArticleContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"web"])
  {
    if ([v1 caseInsensitiveCompare:@"flint"])
    {
      if ([v1 caseInsensitiveCompare:@"video"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *FCStringFromArticleContentType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E7C3F450[a1 - 1];
  }
}

uint64_t FCRankOfQualityOfService(uint64_t a1)
{
  v1 = -1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 != 33)
  {
    v4 = -1;
  }

  if (a1 != 25)
  {
    v3 = v4;
  }

  if (a1 != 17)
  {
    v2 = v3;
  }

  if (a1 == 9)
  {
    v1 = 1;
  }

  if (a1 == -1)
  {
    v1 = 0;
  }

  if (a1 <= 16)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1B661E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 - 136));
  objc_destroyWeak(&location);
  _Block_object_dispose((v65 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B661F410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromShortcutType(__CFString *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = FCCKShortcutTypeMySports;
  }

  else
  {
    v2 = FCCKShortcutTypeTag;
  }

  a1 = *v2;
LABEL_6:

  return a1;
}

uint64_t FCShortcutTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"tag"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"mySports"];
  }

  return v2;
}

void sub_1B6642028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66421A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6642F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6643588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6649AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  objc_destroyWeak((v34 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1B664CB30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id FCChannelsWithHeldRecords(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v22 = "NSDictionary<NSString *,id<FCChannelProviding>> *FCChannelsWithHeldRecords(FCAssetManager *__strong, FCHeldRecords<NTPBTagRecord *> *__strong, __strong id<FCCoreConfiguration>)";
    v23 = 2080;
    v24 = "FCArticleHeadlineUtilities.m";
    v25 = 1024;
    v26 = 69;
    v27 = 2114;
    v28 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __FCChannelsWithHeldRecords_block_invoke;
  v18[3] = &unk_1E7C37C38;
  v8 = v5;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = [v6 transformRecordsWithBlock:v18];
  v11 = [v10 fc_dictionaryWithKeySelector:sel_identifier];

  v12 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v6 count];
    v15 = [v11 count];
    *buf = 134218240;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "ArticleHeadlineUtilities transformed heldTagRecords:%lu into tags:%lu", buf, 0x16u);
  }

  return v11;
}

FCTag *__FCChannelsWithHeldRecords_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [FCTag alloc];
  v8 = *(a1 + 32);
  v9 = [v6 base];
  v10 = [v9 identifier];
  v11 = [(FCTag *)v7 initWithTagRecord:v6 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, *(a1 + 40))];

  return v11;
}

FCIssue *__FCIssuesWithHeldRecords_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 channelTagID];
  v9 = [v7 fc_safeObjectForKey:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [[FCIssue alloc] initWithIssueRecord:v5 assetManager:*(a1 + 40) interestToken:v6 sourceChannel:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id FCHeadlinesWithHeldRecords(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v17 = FCChannelsWithHeldRecords(v14, a4, v13);
  v18 = FCIssuesWithHeldRecords(v14, v16, v17);

  if (a7)
  {
    v19 = -[FCHeadlineExperimentalTitleProvider initWithShouldShowAlternateHeadlines:]([FCHeadlineExperimentalTitleProvider alloc], "initWithShouldShowAlternateHeadlines:", [v13 shouldShowAlternateHeadlines]);
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x1E695DF20];
  v21 = [v15 allRecordIDs];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __FCHeadlinesWithHeldRecords_block_invoke;
  v30[3] = &unk_1E7C406C8;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v17;
  v36 = v19;
  v37 = a6;
  v35 = v18;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  v28 = [v20 fc_dictionaryWithKeys:v21 allowingNil:1 valueBlock:v30];

  return v28;
}

id FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a6;
  v17 = a5;
  v18 = FCChannelsWithHeldRecords(v14, a4, v13);
  v19 = FCIssuesWithHeldRecords(v14, v17, v18);

  v20 = MEMORY[0x1E695DF20];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists_block_invoke;
  v29[3] = &unk_1E7C40718;
  v30 = v13;
  v31 = v16;
  v32 = v14;
  v33 = v15;
  v35 = v19;
  v36 = a7;
  v34 = v18;
  v21 = v19;
  v22 = v18;
  v23 = v15;
  v24 = v14;
  v25 = v16;
  v26 = v13;
  v27 = [v20 fc_dictionary:v29];

  return v27;
}

void __FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists_block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = -[FCHeadlineExperimentalTitleProvider initWithShouldShowAlternateHeadlines:]([FCHeadlineExperimentalTitleProvider alloc], "initWithShouldShowAlternateHeadlines:", [*(a1 + 32) shouldShowAlternateHeadlines]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v9 articleIDs];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists_block_invoke_2;
        v24[3] = &unk_1E7C406F0;
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        v27 = *(a1 + 56);
        v11 = *(a1 + 64);
        v13 = *(a1 + 72);
        v12 = *(a1 + 80);
        v28 = v11;
        v31 = v12;
        v29 = v13;
        v30 = v4;
        v14 = [v10 fc_arrayByTransformingWithBlock:v24];

        if ([v9 type] == 1)
        {
          v15 = [v9 editorialMetadata];

          if (v15)
          {
            v16 = [v9 editorialMetadata];
            [v16 articleMetadata];
            v17 = v7;
            v18 = v4;
            v20 = v19 = v3;

            v21 = FCAssignHeadlineMetadata(v14, v20, *(a1 + 32));

            v3 = v19;
            v4 = v18;
            v7 = v17;
            v14 = v21;
          }
        }

        v22 = [v9 identifier];
        [v3 setObject:v14 forKeyedSubscript:v22];
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }
}

void sub_1B66502D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t FCHLSUIntegerFromString(void *a1)
{
  v1 = MEMORY[0x1E696AE88];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:v2];

  v6 = 0;
  [v3 scanUnsignedLongLong:&v6];
  v4 = v6;

  return v4;
}

uint64_t FCPaymentTransactionStateFromSKState(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

id getSKPaymentQueueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKPaymentQueueClass_softClass;
  v7 = getSKPaymentQueueClass_softClass;
  if (!getSKPaymentQueueClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSKPaymentQueueClass_block_invoke;
    v3[3] = &unk_1E7C3C510;
    v3[4] = &v4;
    __getSKPaymentQueueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6655B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B665605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSKPaymentQueueClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKPaymentQueue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKPaymentQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "SKPaymentQueue");
    StoreKitLibrary();
  }
}

void StoreKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __StoreKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7C408F8;
    v3 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (StoreKitLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __StoreKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSKPaymentQueueClientClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  result = objc_getClass("SKPaymentQueueClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKPaymentQueueClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "SKPaymentQueueClient");
    return resolvedPuzzleTypeTraits(v3);
  }

  return result;
}

uint64_t resolvedPuzzleTypeTraits(void *a1)
{
  v1 = a1;
  v2 = [v1 kind];
  v3 = [v1 behaviorFlags];

  v4 = resolvedPuzzleTypeTraitsFromKind(v2, v3);
  return v4;
}

uint64_t resolvedPuzzleTypeTraitsFromKind(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"SUDOKU"])
  {
    v4 = a2 | 0x38000;
  }

  else
  {
    v4 = a2;
  }

  v5 = [v3 isEqualToString:@"WORD_BRICKS"];

  if (v5)
  {
    return v4 | 0x40000;
  }

  else
  {
    return v4;
  }
}

uint64_t resolvedPuzzleTypeBehaviorFlags(void *a1)
{
  v1 = a1;
  v2 = [v1 kind];
  v3 = [v1 behaviorFlags];

  v4 = resolvedPuzzleTypeTraitsFromKind(v2, v3);
  return v4;
}

id resolvedPuzzleTypeDifficulty(void *a1)
{
  v1 = a1;
  v2 = [v1 puzzleType];
  v3 = [v1 difficulty];

  v4 = resolvedPuzzleTypeDifficultyWithPuzzleType(v2, v3);

  return v4;
}

id resolvedPuzzleTypeDifficultyWithPuzzleType(void *a1, uint64_t a2)
{
  if ((resolvedPuzzleTypeTraits(a1) & 0x8000) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id resolvedPuzzleTypeDifficultyWithPuzzleTypeRecord(void *a1, uint64_t a2)
{
  if ((resolvedPuzzleTypeBehaviorFlags(a1) & 0x8000) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCRecipeContentFormatFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"jsonld"])
  {
    v2 = 2 * ([v1 caseInsensitiveCompare:@"iarf"] == 0);
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCRecipeContentEncodingFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"json"])
  {
    v2 = 2 * ([v1 caseInsensitiveCompare:@"fb"] == 0);
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCFeedTransformationItemIsRecipe(void *a1)
{
  v1 = [a1 topicIDs];
  v2 = [v1 containsObject:@"TG6jHn_W2N7SaKRJiXzLqVA"];

  return v2;
}

void sub_1B66624D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6662990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCCKAllowedSystemFieldNames()
{
  if (qword_1EDB27460 != -1)
  {
    dispatch_once(&qword_1EDB27460, &__block_literal_global_78);
  }

  v1 = _MergedGlobals_163;

  return v1;
}

void __FCCKAllowedSystemFieldNames_block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695B7D0];
  v5[0] = *MEMORY[0x1E695B7F0];
  v5[1] = v0;
  v1 = *MEMORY[0x1E695B7C8];
  v5[2] = *MEMORY[0x1E695B7E0];
  v5[3] = v1;
  v2 = *MEMORY[0x1E695B7D8];
  v5[4] = *MEMORY[0x1E695B7E8];
  v5[5] = v2;
  v5[6] = *MEMORY[0x1E695B7F8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = _MergedGlobals_163;
  _MergedGlobals_163 = v3;
}

id FCCKServerFieldNameForUserFieldName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1EDB27470 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [qword_1EDB27468 objectForKeyedSubscript:v2];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1EDB27470, &__block_literal_global_2_1);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

void __FCCKServerFieldNameForUserFieldName_block_invoke()
{
  v9[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695B7F0];
  v8[0] = @"recordID";
  v8[1] = @"creationDate";
  v1 = *MEMORY[0x1E695B7C8];
  v9[0] = v0;
  v9[1] = v1;
  v2 = *MEMORY[0x1E695B7E8];
  v8[2] = @"modificationDate";
  v8[3] = @"creatorUserRecordID";
  v3 = *MEMORY[0x1E695B7D0];
  v9[2] = v2;
  v9[3] = v3;
  v4 = *MEMORY[0x1E695B7E0];
  v8[4] = @"lastModifiedUserRecordID";
  v8[5] = @"recordChangeTag";
  v5 = *MEMORY[0x1E695B7D8];
  v9[4] = v4;
  v9[5] = v5;
  v8[6] = @"shareID";
  v9[6] = *MEMORY[0x1E695B7F8];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v7 = qword_1EDB27468;
  qword_1EDB27468 = v6;
}

id NTPBCKRecordFieldIdentifierForUserFieldName(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695B718];
  v2 = a1;
  if ([v2 isEqualToString:v1] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported operation for special key-path allTokens"];
    v10 = 136315906;
    v11 = "NTPBCKRecordFieldIdentifier *NTPBCKRecordFieldIdentifierForUserFieldName(NSString *__strong)";
    v12 = 2080;
    v13 = "FCCKPredicateConversion.m";
    v14 = 1024;
    v15 = 54;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  v3 = FCCKServerFieldNameForUserFieldName(v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  v7 = objc_opt_new();
  [v7 setName:v6];

  return v7;
}

uint64_t NTPBCKQueryFilterTypeForNSPredicateOperatorType(unint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 < 0xB && ((0x53Fu >> a1) & 1) != 0)
  {
    return dword_1B681A8A8[a1];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected operator for predicate"];
    v3 = 136315906;
    v4 = "NTPBCKQueryFilter_Type NTPBCKQueryFilterTypeForNSPredicateOperatorType(NSPredicateOperatorType)";
    v5 = 2080;
    v6 = "FCCKPredicateConversion.m";
    v7 = 1024;
    v8 = 92;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v3, 0x26u);
  }

  return 1;
}

id FCCKVerifyFilters(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v12 + 1) + 8 * i) fieldName];
        v7 = [v6 name];

        v8 = FCCKAllowedSystemFieldNames();
        v9 = [v8 containsObject:v7];

        if ((v9 & 1) != 0 || !v7)
        {

          goto LABEL_13;
        }

        v10 = CKValidateKeyName();

        if (v10)
        {
          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

LABEL_14:

  return v10;
}

id FCCKNSArrayFromCollection(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 allValues];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 allObjects];
    }

    else
    {
      v2 = v1;
    }
  }

  v3 = v2;

  return v3;
}

uint64_t FCNextHigherVolumeFeedBin(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = 2;
    if (a1 != 1)
    {
      v1 = a1;
    }

    if (a1 == 2)
    {
      return 3;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't increase an unknown bin"];
      v4 = 136315906;
      v5 = "FCFeedBin FCNextHigherVolumeFeedBin(FCFeedBin)";
      v6 = 2080;
      v7 = "FCFeedBins.m";
      v8 = 1024;
      v9 = 26;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
    }

    return 0;
  }
}

__CFString *FCStringFromFeedBin(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7C40BB8[a1];
  }
}

id FCOfflineThumbnailAssetHandlesForHeadline(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DEC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCOfflineThumbnailAssetHandlesForHeadline_block_invoke;
  v10[3] = &unk_1E7C3B110;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 fc_array:v10];

  return v8;
}

void __FCOfflineThumbnailAssetHandlesForHeadline_block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) useSmallestArticleThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailLQ"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 40) thumbnailLQ];
    v5 = [v4 thumbnailAssetHandle];
    [v11 fc_safelyAddObject:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v6 thumbnailHQ], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [v6 thumbnailHQ];
    }

    else
    {
      v8 = [v6 thumbnail];
    }

    v9 = v8;
    v4 = [v8 thumbnailAssetHandle];

    [v11 fc_safelyAddObject:v4];
  }

  v10 = [*(a1 + 40) videoStillImage];
  [v11 fc_safelyAddObject:v10];
}

id FCOfflineThumbnailAssetHandlesForIssue(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695DEC8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCOfflineThumbnailAssetHandlesForIssue_block_invoke;
  v6[3] = &unk_1E7C36D40;
  v7 = v1;
  v3 = v1;
  v4 = [v2 fc_array:v6];

  return v4;
}

void __FCOfflineThumbnailAssetHandlesForIssue_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 coverImageAssetHandle];
  [v3 fc_safelyAddObject:v4];
}

id FCOfflineThumbnailAssetHandlesForPuzzle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DEC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCOfflineThumbnailAssetHandlesForPuzzle_block_invoke;
  v10[3] = &unk_1E7C3B110;
  v11 = v3;
  v12 = v4;
  v6 = v4;
  v7 = v3;
  v8 = [v5 fc_array:v10];

  return v8;
}

void __FCOfflineThumbnailAssetHandlesForPuzzle_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) thumbnailSmallImageAssetHandle];
  [v7 fc_safelyAddObject:v3];

  v4 = [*(a1 + 32) puzzleType];
  v5 = [v4 exploreTileImageAssetHandle];
  [v7 fc_safelyAddObject:v5];

  if (([*(a1 + 40) useSmallestPuzzleThumbnails] & 1) == 0)
  {
    v6 = [*(a1 + 32) thumbnailLargeImageAssetHandle];
    [v7 fc_safelyAddObject:v6];
  }
}

id FCOfflineThumbnailAssetHandlesForRecipe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DEC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCOfflineThumbnailAssetHandlesForRecipe_block_invoke;
  v10[3] = &unk_1E7C3B110;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 fc_array:v10];

  return v8;
}

void __FCOfflineThumbnailAssetHandlesForRecipe_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) useSmallestRecipeThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailSmall"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 40) thumbnailSmall];
    v5 = [v4 thumbnailAssetHandle];
    [v10 fc_safelyAddObject:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v6 thumbnailLarge], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [v6 thumbnailLarge];
    }

    else
    {
      v8 = [v6 thumbnailMedium];
    }

    v9 = v8;
    v4 = [v8 thumbnailAssetHandle];

    [v10 fc_safelyAddObject:v4];
  }
}

id FCOfflineThumbnailAssetHandlesForArticleRecord(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCOfflineThumbnailAssetHandlesForArticleRecord_block_invoke;
  v14[3] = &unk_1E7C3B1F8;
  v15 = v6;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v6;
  v12 = [v8 fc_array:v14];

  return v12;
}

void __FCOfflineThumbnailAssetHandlesForArticleRecord_block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([*(a1 + 32) useSmallestArticleThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailLQURL"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 40);
    v5 = [v4 thumbnailLQURL];
    v6 = [v4 generateThumbnailAssetHandleForURL:v5 withAssetManager:*(a1 + 48)];
    [v16 fc_safelyAddObject:v6];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = v7;
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v8 thumbnailHQURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v8 thumbnailHQURL];
    }

    else
    {
      v11 = [v8 thumbnailURL];
    }

    v12 = v11;
    v5 = [v8 generateThumbnailAssetHandleForURL:v11 withAssetManager:v9];

    [v16 fc_safelyAddObject:v5];
  }

  v13 = *(a1 + 40);
  v14 = [v13 videoStillImageURL];
  v15 = [v13 generateThumbnailAssetHandleForURL:v14 withAssetManager:*(a1 + 48)];
  [v16 fc_safelyAddObject:v15];
}

id FCOfflineThumbnailAssetHandlesForPuzzleRecords(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E695DEC8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __FCOfflineThumbnailAssetHandlesForPuzzleRecords_block_invoke;
  v18[3] = &unk_1E7C40BE0;
  v19 = v8;
  v20 = v7;
  v21 = v10;
  v22 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  v16 = [v11 fc_array:v18];

  return v16;
}

void __FCOfflineThumbnailAssetHandlesForPuzzleRecords_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = resolvedPuzzleTypeDifficultyWithPuzzleTypeRecord(*(a1 + 32), [*(a1 + 40) difficultyLevel]);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) publishedDate];
  v6 = [v5 nsDate];
  v7 = [v4 generateThumbnailImageAssetHandleForDate:v6 difficulty:v3 assetManager:*(a1 + 48)];
  [v10 fc_safelyAddObject:v7];

  v8 = [*(a1 + 32) generateExploreTileImageAssetHandleWithAssetManager:*(a1 + 48)];
  [v10 fc_safelyAddObject:v8];

  if (([*(a1 + 56) useSmallestPuzzleThumbnails] & 1) == 0)
  {
    v9 = [*(a1 + 40) generateThumbnailLargeImageAssetHandleWithAssetManager:*(a1 + 48)];
    [v10 fc_safelyAddObject:v9];
  }
}

id FCOfflineThumbnailAssetHandlesForRecipeRecord(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCOfflineThumbnailAssetHandlesForRecipeRecord_block_invoke;
  v14[3] = &unk_1E7C3B1F8;
  v15 = v6;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v6;
  v12 = [v8 fc_array:v14];

  return v12;
}

void __FCOfflineThumbnailAssetHandlesForRecipeRecord_block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([*(a1 + 32) useSmallestArticleThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailSmallURL"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 40);
    v5 = [v4 thumbnailSmallURL];
    v6 = [v4 generateThumbnailAssetHandleForURL:v5 withAssetManager:*(a1 + 48)];
    [v13 fc_safelyAddObject:v6];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = v7;
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v8 thumbnailSmallURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v8 thumbnailSmallURL];
    }

    else
    {
      v11 = [v8 thumbnailMediumURL];
    }

    v12 = v11;
    v5 = [v8 generateThumbnailAssetHandleForURL:v11 withAssetManager:v9];

    [v13 fc_safelyAddObject:v5];
  }
}

void sub_1B6669328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCAssetHandleForArticleAndMinimumSize(void *a1, double a2, double a3, double a4)
{
  v4 = FCThumbnailForHeadlineMinimumSizeInPixels(a1, a2 * a4, a3 * a4);
  v5 = [v4 thumbnailAssetHandle];

  return v5;
}

BOOL FCHeadlineHasLocalThumbnail(void *a1)
{
  v1 = a1;
  v2 = [v1 thumbnailUltraHQ];
  v3 = [v2 thumbnailAssetHandle];
  v4 = [v3 filePath];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 thumbnailHQ];
    v7 = [v6 thumbnailAssetHandle];
    v8 = [v7 filePath];
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v18 = [v1 thumbnailMedium];
      v9 = [v18 thumbnailAssetHandle];
      v10 = [v9 filePath];
      if (v10)
      {
        v5 = 1;
      }

      else
      {
        v17 = [v1 thumbnail];
        v16 = [v17 thumbnailAssetHandle];
        v11 = [v16 filePath];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          v15 = [v1 thumbnailLQ];
          v14 = [v15 thumbnailAssetHandle];
          v12 = [v14 filePath];
          v5 = v12 != 0;

          v11 = 0;
        }
      }
    }
  }

  return v5;
}

id FCPlaceholderHeadlineThumbnail()
{
  v0 = FCBundle();
  v1 = [v0 pathForResource:@"cellImagePlaceholder" ofType:@"png"];

  v2 = [[FCRawFileDataProvider alloc] initWithFilePath:v1];
  v3 = [[FCAssetHandle alloc] initWithDataProvider:v2];
  v4 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v3 thumbnailSize:1.0, 1.0];

  return v4;
}

id FCCachedThumbnailForHeadline(void *a1)
{
  v1 = a1;
  v2 = [v1 thumbnailUltraHQ];
  v3 = [v2 thumbnailAssetHandle];
  v4 = [v3 filePath];

  if (v4)
  {
    v5 = [v1 thumbnailUltraHQ];
LABEL_11:
    v18 = v5;
    goto LABEL_12;
  }

  v6 = [v1 thumbnailHQ];
  v7 = [v6 thumbnailAssetHandle];
  v8 = [v7 filePath];

  if (v8)
  {
    v5 = [v1 thumbnailHQ];
    goto LABEL_11;
  }

  v9 = [v1 thumbnailMedium];
  v10 = [v9 thumbnailAssetHandle];
  v11 = [v10 filePath];

  if (v11)
  {
    v5 = [v1 thumbnailMedium];
    goto LABEL_11;
  }

  v12 = [v1 thumbnail];
  v13 = [v12 thumbnailAssetHandle];
  v14 = [v13 filePath];

  if (v14)
  {
    v5 = [v1 thumbnail];
    goto LABEL_11;
  }

  v15 = [v1 thumbnailLQ];
  v16 = [v15 thumbnailAssetHandle];
  v17 = [v16 filePath];

  if (v17)
  {
    v5 = [v1 thumbnailLQ];
    goto LABEL_11;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

id FCThumbnailForHeadline(void *a1)
{
  v1 = FCCachedThumbnailForHeadline(a1);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = FCPlaceholderHeadlineThumbnail();
  }

  v4 = v3;

  return v4;
}

id FCFetchThumbnailForHeadlineWithMinimumSize(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v11 = a3;
  v12 = FCAssetHandleForArticleAndMinimumSize(a1, a4, a5, a6);
  v13 = v12;
  if (v12)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __FCFetchThumbnailForHeadlineWithMinimumSize_block_invoke;
    v16[3] = &unk_1E7C37BC0;
    v17 = v12;
    v18 = v11;
    v14 = [v17 downloadIfNeededWithPriority:a2 completion:v16];
  }

  else
  {
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __FCFetchThumbnailForHeadlineWithMinimumSize_block_invoke(uint64_t a1)
{
  [*(a1 + 32) filePath];

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id FCNarrativeTrackForSubscription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v16 = v3;
    v14 = [v16 narrativeTrackSample];

    goto LABEL_9;
  }

  v6 = [v4 cachedSubscription];
  v7 = objc_getAssociatedObject(v6, (v6 + 1));
  v8 = [v7 unsignedIntegerValue];
  v9 = v8;
  v10 = objc_getAssociatedObject(v6, ~v8);
  v11 = [v10 unsignedIntegerValue] ^ v9;

  if (v11)
  {

    goto LABEL_7;
  }

  v12 = [v3 narrativeTrackSample];

  if (!v12)
  {
LABEL_7:
    v13 = [v3 narrativeTrack];
    goto LABEL_8;
  }

  v13 = [v3 narrativeTrackSample];
LABEL_8:
  v14 = v13;
LABEL_9:

  return v14;
}

void sub_1B666EF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCFDBErrorMessage(sqlite3 *a1)
{
  if (a1)
  {
    v2 = sqlite3_errmsg(a1);
    if (v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    }

    else
    {
      v3 = @"<unknown>";
    }
  }

  else
  {
    v3 = @"<unknown>";
  }

  return v3;
}

uint64_t FCFDBInvokeOpen(const char *a1, sqlite3 **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_open_v2(a1, a2, 32774, 0);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = FCFDBErrorMessage(*a2);
    v7 = [v5 initWithFormat:@"sqlite3 open failed with result=%d, error=%@", v3, v6];
    *buf = 136315906;
    v9 = "int FCFDBInvokeOpen(const char *, sqlite3 **, int)";
    v10 = 2080;
    v11 = "FCFDBUtilities.m";
    v12 = 1024;
    v13 = 20;
    v14 = 2114;
    v15 = v7;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBOpenFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v3;
}

uint64_t FCFDBInvokeClose(sqlite3 *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_close(a1);
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = FCFDBErrorMessage(a1);
    v6 = [v4 initWithFormat:@"sqlite3 close failed with result=%d, error=%@", v2, v5];
    *buf = 136315906;
    v8 = "int FCFDBInvokeClose(sqlite3 *)";
    v9 = 2080;
    v10 = "FCFDBUtilities.m";
    v11 = 1024;
    v12 = 27;
    v13 = 2114;
    v14 = v6;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBCloseFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v2;
}

uint64_t FCFDBInvokeExec(sqlite3 *a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_exec(a1, a2, 0, 0, 0);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = FCFDBErrorMessage(a1);
    v7 = [v5 initWithFormat:@"sqlite3 exec failed with result=%d, error=%@", v3, v6];
    *buf = 136315906;
    v9 = "int FCFDBInvokeExec(sqlite3 *, const char *)";
    v10 = 2080;
    v11 = "FCFDBUtilities.m";
    v12 = 1024;
    v13 = 34;
    v14 = 2114;
    v15 = v7;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBExecFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v3;
}

uint64_t FCFDBInvokePrepare(sqlite3 *a1, id a2, sqlite3_stmt **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = sqlite3_prepare_v2(a1, [a2 cStringUsingEncoding:4], -1, a3, 0);
  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = FCFDBErrorMessage(a1);
    v11 = [v9 initWithFormat:@"sqlite3 prepare failed with result=%d, error=%@", v7, v10];
    *buf = 136315906;
    v13 = "int FCFDBInvokePrepare(sqlite3 *, NSString *__strong, sqlite3_stmt **)";
    v14 = 2080;
    v15 = "FCFDBUtilities.m";
    v16 = 1024;
    v17 = 41;
    v18 = 2114;
    v19 = v11;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBPrepareFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v7;
}

uint64_t FCFDBInvokeStep(sqlite3 *a1, sqlite3_stmt *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(a2);
  if ((v3 & 0xFFFFFFFE) != 0x64 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = FCFDBErrorMessage(a1);
    v7 = [v5 initWithFormat:@"sqlite3 step failed with result=%d, error=%@", v3, v6];
    *buf = 136315906;
    v9 = "int FCFDBInvokeStep(sqlite3 *, sqlite3_stmt *)";
    v10 = 2080;
    v11 = "FCFDBUtilities.m";
    v12 = 1024;
    v13 = 48;
    v14 = 2114;
    v15 = v7;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBStepFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v3;
}

uint64_t FCFDBInvokeFinalize(sqlite3 *a1, sqlite3_stmt *pStmt)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_finalize(pStmt);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = FCFDBErrorMessage(a1);
    v7 = [v5 initWithFormat:@"sqlite3 finalize failed with result=%d, error=%@", v3, v6];
    *buf = 136315906;
    v9 = "int FCFDBInvokeFinalize(sqlite3 *, sqlite3_stmt *)";
    v10 = 2080;
    v11 = "FCFDBUtilities.m";
    v12 = 1024;
    v13 = 55;
    v14 = 2114;
    v15 = v7;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBFinalizeFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v3;
}

void sub_1B6671178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFCNewsPersonalizationArticleEmbeddingsFittingConfigurationEmbeddingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"body";
  }

  else
  {
    return @"title";
  }
}

void sub_1B6674AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6674DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6676570(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

id FCCloudKitIDFromUUID(void *a1, void *a2)
{
  v3 = a2;
  v4 = FCUUIDStringToUUIDBytes(a1);
  v5 = [v4 base64EncodedStringWithOptions:0];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v8 = [v7 substringToIndex:22];
  v9 = [v3 stringByAppendingString:v8];

  return v9;
}

id FCUUIDFromCloudKitID(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] != 23 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudKitID.length == FCLengthOfCloudKitID"];
    *buf = 136315906;
    v11 = "NSString *FCUUIDFromCloudKitID(NSString *__strong)";
    v12 = 2080;
    v13 = "FCNewsIDUtilities.m";
    v14 = 1024;
    v15 = 38;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = [v1 substringFromIndex:1];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

  v5 = [v4 stringByAppendingString:@"=="];

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];
  v7 = FCUUIDBytesToUUIDString(v6);

  return v7;
}

id FCRandomTagCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"T");

  return v2;
}

id FCRandomArticleCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"A");

  return v2;
}

id FCRandomIssueCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"I");

  return v2;
}

id FCRandomForYouConfigCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"Y-");

  return v2;
}

id FCRandomArticleListCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"L");

  return v2;
}

id FCRandomIssueListCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"M");

  return v2;
}

id FCRandomNotificationItemCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"NI");

  return v2;
}

id FCRandomPuzzleCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"J");

  return v2;
}

id FCRandomPuzzleTypeCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"Z");

  return v2;
}

id FCRandomShortcutCategoryCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCUUIDFromCloudKitID(v1);

  return v2;
}

uint64_t FCSubscriptionButtonTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"SubscriptionButtonTypeArticle"])
    {
      if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTypeLandingPage"])
      {
        if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTypeIssueCover"])
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCTargetTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"SubscriptionButtonTargetTypeLandingPage"])
    {
      if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTargetTypeOsloSheet"])
      {
        if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTargetTypeAMSSheet"])
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL FCPostPurchaseActionTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 && [v1 caseInsensitiveCompare:@"SubscriptionButtonPostPurchaseActionTypeNone"] && objc_msgSend(v2, "caseInsensitiveCompare:", @"SubscriptionButtonPostPurchaseActionTypeURL") == 0;

  return v3;
}

void sub_1B667FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSKReceiptRefreshRequestClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKReceiptRefreshRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_170 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "SKReceiptRefreshRequest");
    StoreKitLibrary_0();
  }
}

void StoreKitLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __StoreKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7C41190;
    v3 = 0;
    StoreKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v0 = v1[0];
    if (StoreKitLibraryCore_frameworkLibrary_0)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __StoreKitLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

FCSubscriptionList *__getSKPaymentQueueClientClass_block_invoke_0(uint64_t a1)
{
  StoreKitLibrary_0();
  result = objc_getClass("SKPaymentQueueClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EDB27570 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "SKPaymentQueueClient");
    return [(FCSubscriptionList *)v3 initWithContext:v4 pushNotificationCenter:v5 storeDirectory:v6, v7];
  }

  return result;
}

void sub_1B6683A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6683C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6683EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6687258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCFeedRangeCoveredByFeedItems(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 firstObject];
    v3 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v2 order]);

    v4 = [v1 lastObject];
    v5 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v4 order] - 1);

    v6 = [FCFeedRange feedRangeWithTop:v3 bottom:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1B6689F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCFeedGroupTypeFromNSString(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (([v1 isEqualToString:@"None"] & 1) == 0)
  {
    if ([v1 isEqualToString:@"SingleTag"])
    {
      v2 = 1;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"TopStories"])
    {
      v2 = 26;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"TrendingStories"])
    {
      v2 = 2;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"DailyBriefings"])
    {
      v2 = 3;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"SavedStories"])
    {
      v2 = 4;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"GreatStoriesYouMissed"])
    {
      v2 = 5;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Editorial"])
    {
      v2 = 6;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Latest"])
    {
      v2 = 8;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Topic"])
    {
      v2 = 9;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"MoreForYou"])
    {
      v2 = 10;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"NewFavorite"])
    {
      v2 = 11;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"PaidSubscription"])
    {
      v2 = 12;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"BestOfEdition"])
    {
      v2 = 13;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"DraftArticles"])
    {
      v2 = 16;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"DraftIssues"])
    {
      v2 = 17;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"AutoFavorite"])
    {
      v2 = 14;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"MoreFromPublisher"])
    {
      v2 = 18;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"RelatedArticles"])
    {
      v2 = 19;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"RecommendedReads"])
    {
      v2 = 20;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"EndOfArticleUnknown"])
    {
      v2 = 21;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Spotlight"])
    {
      v2 = 7;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Curated"])
    {
      v2 = 23;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Newspaper"])
    {
      v2 = 24;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"LocalNews"])
    {
      v2 = 25;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"AudioDailyBriefing"])
    {
      v2 = 36;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"MagazineTrending"])
    {
      v2 = 37;
      goto LABEL_55;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Don't have a mapping for %@", v1];
      *buf = 136315906;
      v6 = "FCFeedGroupType FCFeedGroupTypeFromNSString(NSString *__strong)";
      v7 = 2080;
      v8 = "FCFeedGroupType.m";
      v9 = 1024;
      v10 = 125;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v2 = 0;
LABEL_55:

  return v2;
}

__CFString *NSStringFromFCFeedGroupType(uint64_t a1)
{
  if ((a1 - 1) > 0x2C)
  {
    return @"None";
  }

  else
  {
    return off_1E7C415C0[a1 - 1];
  }
}

id NSErrorForHTTPStatusCode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A998]];
  }

  if (a1 > 399)
  {
    if ((a1 - 400) <= 0x1D && ((1 << (a1 + 112)) & 0x20002009) != 0)
    {
      goto LABEL_13;
    }

    if (a1 == 500 || a1 == 503)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
LABEL_13:
      v7 = MEMORY[0x1E696ABC0];
      v8 = a1;
      goto LABEL_14;
    }

LABEL_21:
    v7 = MEMORY[0x1E696ABC0];
    v8 = -1000;
    v9 = 0;
    goto LABEL_15;
  }

  if (a1 <= 199)
  {
    if (a1 == -2000)
    {
      goto LABEL_13;
    }

    if (!a1)
    {
      v6 = MEMORY[0x1E695E118];
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSErrorFCAdditionsIsNetworkUnavailable"];
      [v5 setObject:v6 forKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
      v7 = MEMORY[0x1E696ABC0];
      v8 = 0;
LABEL_14:
      v9 = v5;
LABEL_15:
      v10 = [v7 errorWithDomain:@"FCEndpointConnectionErrorDomain" code:v8 userInfo:v9];
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v10 = 0;
  if (a1 != 200 && a1 != 202)
  {
    goto LABEL_21;
  }

LABEL_16:

  return v10;
}

void sub_1B66939A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSErrorByUpdatingRetryStatusForError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A978]];

  v4 = v1;
  if (v3)
  {
    v5 = [v1 code];
    v4 = v1;
    if ((v5 + 1009) <= 8)
    {
      v4 = v1;
      if (((1 << (v5 - 15)) & 0x131) != 0)
      {
        v6 = [v1 userInfo];
        v7 = [v6 mutableCopy];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v10 = v9;

        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1, "code") == -1009}];
        [v10 setObject:v11 forKeyedSubscript:@"NSErrorFCAdditionsIsNetworkUnavailable"];

        v12 = MEMORY[0x1E696ABC0];
        v13 = [v1 domain];
        v4 = [v12 errorWithDomain:v13 code:objc_msgSend(v1 userInfo:{"code"), v10}];
      }
    }
  }

  return v4;
}

void sub_1B669BE30(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B669C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B669CB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B669E6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__35(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}