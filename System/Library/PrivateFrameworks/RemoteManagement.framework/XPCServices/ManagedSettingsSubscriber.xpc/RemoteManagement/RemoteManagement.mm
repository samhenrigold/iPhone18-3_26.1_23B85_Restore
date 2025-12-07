int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_100001550(&unk_10001C940, &unk_1000121B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000121A0;
  *(v4 + 32) = type metadata accessor for ManagedSettingsApplicator(0, v5);
  sub_100001550(&qword_10001CAD0, &qword_100012920);
  isa = sub_10001158C().super.isa;

  type metadata accessor for ManagedSettingsStatus(0, v7);
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_100001550(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100001598@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000015C8(uint64_t a1, id *a2)
{
  result = sub_10001148C();
  *a2 = 0;
  return result;
}

uint64_t sub_100001640(uint64_t a1, id *a2)
{
  v3 = sub_10001149C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000016C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000114AC();
  v2 = sub_10001147C();

  *a1 = v2;
  return result;
}

void sub_1000017A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000017F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000114AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001820(uint64_t a1)
{
  v2 = sub_100001A70(&qword_10001C920, type metadata accessor for MOSettingScope, &unk_10001253C);
  v3 = sub_100001A70(&qword_10001C928, type metadata accessor for MOSettingScope, &unk_1000124E4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000018DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10001147C();

  *a2 = v3;
  return result;
}

uint64_t sub_100001924(uint64_t a1)
{
  v2 = sub_100001A70(&qword_10001C930, type metadata accessor for MOSafariCookiePolicy, &unk_1000123C4);
  v3 = sub_100001A70(&qword_10001C938, type metadata accessor for MOSafariCookiePolicy, &unk_10001236C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001AC4()
{
  sub_1000114AC();
  v0 = sub_10001156C();

  return v0;
}

uint64_t sub_100001B00(uint64_t a1)
{
  sub_1000114AC();
  sub_10001151C();
}

Swift::Int sub_100001B54(uint64_t a1)
{
  sub_1000114AC();
  sub_10001189C();
  sub_10001151C();
  v1 = sub_1000118AC();

  return v1;
}

uint64_t sub_100001BCC(void *a1, uint64_t *a2)
{
  v2 = sub_1000114AC();
  v4 = v3;
  if (v2 == sub_1000114AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10001182C();
  }

  return v7 & 1;
}

uint64_t sub_100001DC0(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v3 = *v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10000B45C;
  *(v4 + 24) = v7;
  aBlock[4] = sub_10000B494;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BBE4;
  aBlock[3] = &unk_100018EC8;
  v5 = _Block_copy(aBlock);

  [v3 batchUpdate:v5];
  _Block_release(v5);

  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_100001EE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_100001F58(void *a5@<X8>)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_10001147C();

  v8 = sub_10001147C();

  v9 = [v6 initWithName:v7 sharedContainer:v8];

  *a5 = v9;
}

uint64_t sub_100002000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_10001147C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() storesForSharedContainer:v2];

  v4 = sub_10001160C();
  return v4;
}

void sub_10000207C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.super.isa = sub_1000115FC().super.isa;
  if (a3)
  {
    v5 = sub_10001147C();
  }

  else
  {
    v5 = 0;
  }

  [swift_getObjCClassFromMetadata() deleteStoresWithStoreNames:v4.super.isa sharedContainer:v5];
}

uint64_t sub_100002118(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v3 = *v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10000BB88;
  *(v4 + 24) = v7;
  aBlock[4] = sub_10000BC10;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BBE4;
  aBlock[3] = &unk_100018E78;
  v5 = _Block_copy(aBlock);

  [v3 batchUpdate:v5];
  _Block_release(v5);

  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id sub_100002240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000AD34(a1, v15, &qword_10001CA88, &qword_100012830);
  v4 = v16;
  if (v16)
  {
    v5 = sub_10000B408(v15, v16);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5, v5);
    v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_10001181C();
    (*(v6 + 8))(v8, v4);
    sub_10000A9E8(v15);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_10001147C();
  v14 = 0;
  v11 = [v3 setValue:v9 forSettingKey:v10 outError:&v14];
  swift_unknownObjectRelease();

  if (v11)
  {
    return v14;
  }

  v13 = v14;
  sub_10001130C();

  return swift_willThrow();
}

uint64_t sub_100002428()
{
  v0 = sub_1000113CC();
  sub_10000AA80(v0, qword_10001D740);
  v1 = sub_10000AA34(v0, qword_10001D740);
  type metadata accessor for ManagedSettingsAdapter(v1, v2, v3);
  sub_100001550(&qword_10001CAA8, &qword_100012848);
  sub_1000114CC();
  return sub_1000113BC();
}

void sub_1000024C8(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_10001173C(41);

      v7 = 0x8000000100014470;
      v8 = 0xD000000000000027;
    }

    else
    {
      sub_10001173C(44);

      v7 = 0x8000000100014440;
      v8 = 0xD00000000000002ALL;
    }
  }

  else if (a3)
  {
    sub_10001173C(25);

    v7 = 0x80000001000144A0;
    v8 = 0xD000000000000017;
  }

  else
  {
    sub_10001173C(18);

    v7 = 0x80000001000144C0;
    v8 = 0xD000000000000010;
  }

  v9 = v8;
  v10 = v7;
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  sub_10001153C(v11);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = v9;
  a4[3] = v10;
  a4[4] = 0;
}

__n128 sub_100002624@<Q0>(uint64_t a1@<X8>)
{
  sub_1000024C8(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100002674(uint64_t a1)
{
  v2 = sub_10000BB34();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000026B0(uint64_t a1)
{
  v2 = sub_10000BB34();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_1000026F8(uint64_t a1)
{
  v2 = sub_10000BA88();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002734(uint64_t a1)
{
  v2 = sub_10000BA88();

  return Error<>._code.getter(a1, v2);
}

uint64_t ManagedSettingsAdapter.configurationClasses()()
{
  sub_100001550(&unk_10001C940, &unk_1000121B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000121A0;
  *(v0 + 32) = sub_10000B858(0, &unk_10001CCB0, RMModelConfigurationDynamic_ptr);
  return v0;
}

id ManagedSettingsAdapter.declarationKey(forConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_10001147C();
  v6 = [v4 newDeclarationKeyWithSubscriberIdentifier:v5 reference:a1];

  return v6;
}

uint64_t ManagedSettingsAdapter.beginProcessingConfigurations(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BB9C;

  return sub_100007DD4();
}

uint64_t sub_100002BC4(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10000BB98;

  return sub_100007DD4();
}

uint64_t ManagedSettingsAdapter.endProcessingConfigurations(_:scope:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D18;

  return sub_1000084F8(a2);
}

uint64_t sub_100002D18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002F98(int a1, uint64_t a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10000304C;

  return sub_1000084F8(a2);
}

uint64_t sub_10000304C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1000112FC();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1000031C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10000CBB4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t ManagedSettingsAdapter.applyConfiguration(_:replace:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100003454;

  return sub_1000090CC(a1, a3);
}

uint64_t sub_100003454(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000036F4(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1000037E8;

  return sub_1000090CC(v10, a3);
}

uint64_t sub_1000037E8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    v9 = sub_1000112FC();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_10000B858(0, &qword_10001CAB8, RMModelStatusReason_ptr);
    isa = sub_10001158C().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v4 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1000039BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_100003B3C(a5, a1, a6, a7, a8, a9);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *a2 = v11;

  v18 = *a3;
  v19 = a3[1];
  *a3 = v13;
  a3[1] = v15;
  v20 = *(a3 + 16);
  *(a3 + 16) = v17;

  return sub_10000AA6C(v18, v19, v20);
}

uint64_t sub_100003A50(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v10[4] = swift_getAssociatedConformanceWitness();
  v8 = sub_10000B8A0(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a1, AssociatedTypeWitness);
  a2(v10);
  return sub_10000A9E8(v10);
}

uint64_t sub_100003B3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = -1;
  v13 = swift_allocObject();
  *(v13 + 16) = &_swiftEmptySetSingleton;
  sub_10000A870(a1, aBlock);
  sub_100001550(&qword_10001CA78, &qword_100012828);
  sub_10000B858(0, &qword_10001CA80, MOSystemSettingsStore_ptr);
  if (swift_dynamicCast())
  {

    v14 = &MOSettingScopeSystem;
  }

  else
  {
    v14 = &MOSettingScopeUser;
  }

  v15 = *v14;
  sub_10000A870(a2, v30);
  sub_10000A870(a1, v29);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = v13;
  v16[6] = v15;
  v16[7] = v7;
  sub_10000A934(v30, (v16 + 8));
  v16[13] = v12;
  sub_10000A934(v29, (v16 + 14));
  v16[19] = ObjectType;
  aBlock[4] = sub_10000A94C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000049E8;
  aBlock[3] = &unk_100018B80;
  v17 = _Block_copy(aBlock);

  v18 = v15;
  v19 = v7;

  [a3 enumerateManagedSettingsUsingBlock:v17];

  _Block_release(v17);
  swift_beginAccess();
  v20 = *(v13 + 16);
  swift_beginAccess();
  v21 = *(v12 + 16);
  v22 = *(v12 + 24);
  v23 = *(v12 + 32);

  sub_10000A9AC(v21, v22, v23);

  return v20;
}

uint64_t sub_100003DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_10000AD34(a2, &v33, &qword_10001CA88, &qword_100012830);
  if (!v34)
  {
    return sub_10000B94C(&v33, &qword_10001CA88, &qword_100012830);
  }

  sub_10000A9D8(&v33, v35);
  if ([a1 isSupportedForPlatform:a4 scope:a5 enrollmentType:a6])
  {
    v14 = [a1 managedSettingScope];
    v15 = sub_1000114AC();
    v17 = v16;

    if (v15 == sub_1000114AC() && v17 == v18)
    {

LABEL_13:
      v26 = [a1 managedSettingKey];
      v27 = sub_1000114AC();
      v29 = v28;

      sub_100004F64(v27, v29, v35, &v33);
      v30 = a10[3];
      v31 = a10[4];
      sub_10000B408(a10, v30);
      sub_10000A7B8(&v33, &v32);
      (*(v31 + 8))(&v32, v27, v29, v30, v31);

      sub_10000B94C(&v32, &qword_10001CA88, &qword_100012830);
      sub_10000A9E8(&v33);
      return sub_10000A9E8(v35);
    }

    v20 = sub_10001182C();

    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = [a1 keyPath];
    v23 = sub_1000114AC();
    v25 = v24;

    swift_beginAccess();
    sub_10000CBB4(&v32, v23, v25);
    swift_endAccess();
  }

  return sub_10000A9E8(v35);
}

uint64_t sub_1000049E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v10 = a3;
    sub_10000A9D8(&v10, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v8 = a2;
  swift_unknownObjectRetain();
  v7(v8, v12, a4);

  return sub_10000B94C(v12, &qword_10001CA88, &qword_100012830);
}

uint64_t ManagedSettingsAdapter.remove(_:scope:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BB9C;

  return sub_100009B54(a1, a2);
}

uint64_t sub_100004CE8(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100004DC8;

  return sub_100009B54(v8, a2);
}

uint64_t sub_100004DC8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_1000112FC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

id sub_100004F64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v51 = a2;
  v52 = a4;
  v53 = a3;
  v5 = sub_100001550(&qword_10001CA58, &qword_100012808);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5, v6);
  v45 = &v45 - v7;
  v8 = sub_100001550(&qword_10001CA60, &qword_100012810);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8, v9);
  v48 = &v45 - v10;
  v11 = sub_100001550(&qword_10001CA68, &qword_100012818);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v45 - v14;
  v16 = sub_100001550(&qword_10001CA70, &qword_100012820);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v45 - v19;
  sub_10001133C();
  v21 = sub_10001137C();
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  v24 = v51;
  if (v21 == a1 && v23 == v51)
  {

    return sub_100010950(v53, a1, v24, v52);
  }

  v26 = sub_10001182C();

  if (v26)
  {
    return sub_100010950(v53, a1, v24, v52);
  }

  sub_10001134C();
  v27 = sub_10001137C();
  v29 = v28;
  (*(v12 + 8))(v15, v11);
  if (v27 == a1 && v29 == v24)
  {

    return sub_10000F9EC(v53, a1, v24, v52);
  }

  v31 = sub_10001182C();

  if (v31)
  {
    return sub_10000F9EC(v53, a1, v24, v52);
  }

  v32 = v48;
  sub_10001136C();
  v33 = v50;
  v34 = sub_10001137C();
  v36 = v35;
  (*(v49 + 8))(v32, v33);
  if (v34 == a1 && v36 == v24)
  {

    return sub_10000EB14(v53, a1, v24, v52);
  }

  v38 = sub_10001182C();

  if (v38)
  {
    return sub_10000EB14(v53, a1, v24, v52);
  }

  v39 = v45;
  sub_10001135C();
  v40 = v47;
  v41 = sub_10001137C();
  v43 = v42;
  (*(v46 + 8))(v39, v40);
  if (v41 == a1 && v43 == v24)
  {

    return sub_100010044(v53, a1, v24, v52);
  }

  v44 = sub_10001182C();

  if (v44)
  {
    return sub_100010044(v53, a1, v24, v52);
  }

  return sub_10000A7B8(v53, v52);
}

uint64_t sub_10000541C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v53 = a3;
  v54 = a4;
  v6 = sub_100001550(&qword_10001CA58, &qword_100012808);
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6, v7);
  v47 = &v47 - v8;
  v9 = sub_100001550(&qword_10001CA60, &qword_100012810);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9, v10);
  v50 = &v47 - v11;
  v12 = sub_100001550(&qword_10001CA68, &qword_100012818);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v47 - v15;
  v17 = sub_100001550(&qword_10001CA70, &qword_100012820);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v47 - v20;
  sub_10001133C();
  v22 = sub_10001137C();
  v24 = v23;
  (*(v18 + 8))(v21, v17);
  if (v22 == a1 && v24 == a2)
  {

    goto LABEL_15;
  }

  v26 = sub_10001182C();

  if (v26)
  {
LABEL_15:
    result = sub_100010E3C(v53);
    goto LABEL_16;
  }

  sub_10001134C();
  v27 = sub_10001137C();
  v29 = v28;
  (*(v13 + 8))(v16, v12);
  if (v27 == a1 && v29 == a2)
  {

    goto LABEL_19;
  }

  v31 = sub_10001182C();

  if (v31)
  {
LABEL_19:
    result = sub_10000FC94(v53);
    goto LABEL_16;
  }

  v32 = v50;
  sub_10001136C();
  v33 = v52;
  v34 = sub_10001137C();
  v36 = v35;
  (*(v51 + 8))(v32, v33);
  if (v34 == a1 && v36 == a2)
  {

LABEL_21:
    result = sub_10000F7F0(v53);
    goto LABEL_16;
  }

  v40 = sub_10001182C();

  if (v40)
  {
    goto LABEL_21;
  }

  v41 = v47;
  sub_10001135C();
  v42 = v49;
  v43 = sub_10001137C();
  v45 = v44;
  (*(v48 + 8))(v41, v42);
  if (v43 == a1 && v45 == a2)
  {
  }

  else
  {
    v46 = sub_10001182C();

    if ((v46 & 1) == 0)
    {
      return sub_10000A7B8(v53, v54);
    }
  }

  result = sub_10001055C(v53);
LABEL_16:
  v39 = v54;
  v54[3] = &type metadata for String;
  *v39 = result;
  v39[1] = v38;
  return result;
}

uint64_t ManagedSettingsAdapter.configurationUI(forConfiguration:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005948;

  return sub_100009F40(a1);
}

uint64_t sub_100005948(char a1, uint64_t a2)
{
  v10 = *v3;

  v7 = *(v10 + 8);
  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1 & 1;
    v6 = a2;
  }

  return v7(v8, v6);
}

uint64_t sub_100005A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10001132C();
  __chkstk_darwin(v14 - 8, v15);
  v16 = sub_10001145C();
  __chkstk_darwin(v16 - 8, v17);
  sub_10000AD34(a2, v60, &qword_10001CA88, &qword_100012830);
  if (!v61)
  {
    return sub_10000B94C(v60, &qword_10001CA88, &qword_100012830);
  }

  sub_10000A9D8(v60, v62);
  if ([a1 isSupportedForPlatform:a4 scope:a5 enrollmentType:a6])
  {
    v18 = [a1 managedSettingKey];
    v19 = sub_1000114AC();
    v21 = v20;

    sub_1000114DC();
    sub_10000541C(v19, v21, v62, v60);

    sub_10000A7B8(v60, v59);
    if (swift_dynamicCast())
    {
      sub_10001146C();
      sub_10001131C();
      v22 = sub_1000114BC();
      v24 = v23;
      v25 = (v57 ^ [a1 invertBoolean]) & 1;
      v26 = [a1 invertBoolean];
      swift_beginAccess();
      if (v25 != v26)
      {
        sub_100001550(&qword_10001CAF0, &qword_100012930);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100012640;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;

        *(v27 + 48) = sub_10000B5B8(v25);
        *(v27 + 56) = v28;
        v29 = *(a8 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_100006ECC(0, v29[2] + 1, 1, v29);
          *(a8 + 16) = v29;
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_100006ECC((v31 > 1), v32 + 1, 1, v29);
        }

        v29[2] = v32 + 1;
        v29[v32 + 4] = v27;
        *(a8 + 16) = v29;
      }

      swift_endAccess();
    }

    else
    {
      sub_10000A7B8(v60, v59);
      sub_10000B858(0, &qword_10001CAE8, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        sub_10001146C();
        sub_10001131C();
        v34 = sub_1000114BC();
        v36 = v35;
        swift_beginAccess();
        sub_100001550(&qword_10001CAF0, &qword_100012930);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_100012640;
        *(v37 + 32) = v34;
        *(v37 + 40) = v36;
        v38 = v57;

        v39 = [v38 stringValue];
        v40 = sub_1000114AC();
        v42 = v41;

        *(v37 + 48) = v40;
        *(v37 + 56) = v42;
        v43 = *(a8 + 16);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v43;
        if ((v44 & 1) == 0)
        {
          v43 = sub_100006ECC(0, v43[2] + 1, 1, v43);
          *(a8 + 16) = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_100006ECC((v45 > 1), v46 + 1, 1, v43);
          *(a8 + 16) = v43;
        }

        v43[2] = v46 + 1;
        v43[v46 + 4] = v37;
        *(a8 + 16) = v43;
        swift_endAccess();

        goto LABEL_26;
      }

      sub_10000A7B8(v60, v59);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_100001550(&qword_10001CAF0, &qword_100012930);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_100012640;
        sub_10001146C();
        sub_10001131C();
        *(v50 + 32) = sub_1000114BC();
        *(v50 + 40) = v51;
        sub_1000113FC();
        sub_10001131C();
        *(v50 + 48) = sub_1000114BC();
        *(v50 + 56) = v52;
        swift_beginAccess();
        v53 = *(a8 + 16);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_100006ECC(0, v53[2] + 1, 1, v53);
          *(a8 + 16) = v53;
        }

        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          v53 = sub_100006ECC((v55 > 1), v56 + 1, 1, v53);
        }

        v53[2] = v56 + 1;
        v53[v56 + 4] = v50;
        *(a8 + 16) = v53;
        swift_endAccess();
        goto LABEL_26;
      }

      sub_10001146C();
      sub_10001131C();
      v47 = sub_1000114BC();
      v49 = v48;
      swift_beginAccess();
      sub_10000B6D4(v47, v49, v57, v58, (a8 + 16));
      swift_endAccess();
    }

LABEL_26:
    sub_10000A9E8(v60);
  }

  return sub_10000A9E8(v62);
}

uint64_t sub_100006304(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000063DC;

  return sub_100009F40(v7);
}

uint64_t sub_1000063DC(char a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  v11 = (v7 + 16);
  v12 = *(v10 + 32);
  if (v4)
  {
    v13 = sub_1000112FC();

    (*v11)(v12, 0, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (*v11)(v12, a1 & 1, a2, 0);
    _Block_release(v12);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1000065A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_10001152C();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return String.removeSubrange(_:)(result, v1);
      }
    }

    __break(1u);
    return String.removeSubrange(_:)(result, v1);
  }

  return result;
}

id ManagedSettingsAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedSettingsAdapter.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ManagedSettingsAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "init");
}

id ManagedSettingsAdapter.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ManagedSettingsAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10000670C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000BB9C;

  return v6();
}

uint64_t sub_1000067F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002D18;

  return v7();
}

uint64_t sub_1000068DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001550(&qword_10001CAB0, &qword_100012850);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v24 - v11;
  sub_10000AD34(a3, v24 - v11, &qword_10001CAB0, &qword_100012850);
  v13 = sub_1000115EC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B94C(v12, &qword_10001CAB0, &qword_100012850);
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

  sub_1000115DC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1000115CC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1000114EC() + 32;
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

    sub_10000B94C(a3, &qword_10001CAB0, &qword_100012850);

    return v22;
  }

LABEL_8:
  sub_10000B94C(a3, &qword_10001CAB0, &qword_100012850);
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

uint64_t sub_100006BD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006CD0;

  return v6(a1);
}

uint64_t sub_100006CD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100006DC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001550(&qword_10001CB38, &qword_100012968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100006ECC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001550(&qword_10001CAF8, &qword_100012938);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001550(&qword_10001CAE0, &qword_100012928);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100007000(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001550(&qword_10001CAF0, &qword_100012930);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

char *sub_100007084(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001550(&qword_10001CAF0, &qword_100012930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

Swift::Int sub_100007190(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100007DC0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000071FC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000071FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10001180C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1000115BC();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000073C4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000072F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000072F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_10001182C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000073C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100007C54(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000079A0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_10001182C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10001182C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100006DC8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100006DC8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000079A0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100007C54(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100007BC8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_10001182C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000079A0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_10001182C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_10001182C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100007BC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100007C54(v3);
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

void *sub_100007C68(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100007DF0()
{
  if (qword_10001C8A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000113CC();
  sub_10000AA34(v1, qword_10001D740);
  v2 = sub_1000113AC();
  v3 = sub_10001163C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin processing configurations", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100007F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() currentPlatform];
  if (v4 > 5)
  {
    v11 = 0x8000000100014380;
    v12 = 0xD000000000000010;
  }

  else
  {
    if (((1 << v4) & 0x3A) != 0)
    {
      sub_100001550(&qword_10001CB08, &qword_100012948);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100012640;
      *(v5 + 32) = sub_10000B858(0, &qword_10001CB10, MOSystemLocalSettingsStore_ptr);
      *(v5 + 40) = &off_10001C990;
      v6 = sub_10000B858(0, &qword_10001CB18, MOLocalSettingsStore_ptr);
      result = v5;
      *(v5 + 48) = v6;
      *(v5 + 56) = &off_10001C950;
      return result;
    }

    if (!a1)
    {
      sub_100001550(&qword_10001CB08, &qword_100012948);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000121A0;
      v9 = sub_10000B858(0, &qword_10001CB18, MOLocalSettingsStore_ptr);
      result = v8;
      v10 = &off_10001C950;
      goto LABEL_9;
    }

    if (a1 == 1)
    {
      sub_100001550(&qword_10001CB08, &qword_100012948);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000121A0;
      v9 = sub_10000B858(0, &qword_10001CB10, MOSystemLocalSettingsStore_ptr);
      result = v8;
      v10 = &off_10001C990;
LABEL_9:
      *(v8 + 32) = v9;
      *(v8 + 40) = v10;
      return result;
    }

    if (qword_10001C8A0 != -1)
    {
      swift_once();
    }

    v13 = sub_1000113CC();
    sub_10000AA34(v13, qword_10001D740);
    v14 = sub_1000113AC();
    v15 = sub_10001164C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unknown scope", v16, 2u);
    }

    v11 = 0xED000065706F6373;
    v12 = 0x206E776F6E6B6E55;
  }

  sub_10000B4BC();
  swift_allocError();
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = 0;
  return swift_willThrow();
}

void sub_1000081D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_10001147C();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    sub_10001167C();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() && (v25 & 1) != 0)
    {
LABEL_14:

      return;
    }
  }

  else
  {
    sub_10000B94C(v24, &qword_10001CA88, &qword_100012830);
  }

  if (qword_10001C8A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000113CC();
  sub_10000AA34(v9, qword_10001D740);
  v10 = sub_1000113AC();
  v11 = sub_10001163C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cleaning legacy shared containers", v12, 2u);
  }

  v15 = sub_100007F08(a1, v13, v14);
  if (v3)
  {
    goto LABEL_14;
  }

  v21 = v5;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *v17;
      (*(*v17 + 32))(0xD000000000000019, 0x8000000100012770, *(v17 - 1), *v17);
      (*(v18 + 48))();

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v19 = [v21 standardUserDefaults];
  v20 = sub_10001147C();

  [v19 setBool:1 forKey:v20];
}

uint64_t sub_100008518()
{
  if (qword_10001C8A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000113CC();
  sub_10000AA34(v1, qword_10001D740);
  v2 = sub_1000113AC();
  v3 = sub_10001163C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End processing configurations", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_1000081D8(v5, v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

void sub_10000864C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1000117BC())
    {
LABEL_3:
      sub_100001550(&qword_10001CB40, &qword_100012970);
      v3 = sub_10001171C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1000117BC();
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

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10001174C();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10001165C(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10001166C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
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
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10001165C(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10001166C();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
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

void sub_10000893C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000117BC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10001174C();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_10000C97C(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void *sub_100008A14(unint64_t a1)
{
  v2 = v1;
  if (qword_10001C8A0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v4 = sub_1000113CC();
    sub_10000AA34(v4, qword_10001D740);
    v5 = sub_1000113AC();
    v6 = sub_10001163C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching applied configuration keys", v7, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62 && sub_1000117BC())
    {
      sub_10000864C(_swiftEmptyArrayStorage);
      v10 = v28;
    }

    else
    {
      v10 = &_swiftEmptySetSingleton;
    }

    v36 = v10;
    v11 = sub_100007F08(a1, v8, v9);
    if (v2)
    {
      break;
    }

    v2 = v11;
    v30 = *(v11 + 16);
    if (!v30)
    {
      break;
    }

    a1 = 0;
    v31 = v11 + 32;
    v29 = v11;
    while (a1 < *(v2 + 16))
    {
      v13 = (*(*(v31 + 16 * a1 + 8) + 32))(0xD00000000000001ALL, 0x8000000100014360);
      v14 = *(v13 + 16);
      if (v14)
      {
        v32 = a1;
        v34 = v13;
        sub_10001178C();
        v35 = v34 + 56;
        v15 = sub_10001168C();
        v16 = *(v34 + 36);
        v33 = objc_opt_self();
        a1 = 1;
        if (v15 < 0 || v15 >= 1 << *(v34 + 32))
        {
LABEL_37:
          __break(1u);
        }

        else
        {
          v17 = 1;
          while (1)
          {
            v18 = v15 >> 6;
            if ((*(v35 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
            {
              break;
            }

            v19 = sub_10001147C();
            [v33 newDeclarationKey:v19];

            sub_10001176C();
            sub_10001179C();
            a1 = 1;
            sub_1000117AC();
            sub_10001177C();
            v20 = v34;
            v2 = 1 << *(v34 + 32);
            if (v15 >= v2)
            {
              goto LABEL_39;
            }

            v21 = *(v35 + 8 * v18);
            if ((v21 & (1 << v15)) == 0)
            {
              goto LABEL_40;
            }

            if (v16 != *(v34 + 36))
            {
              goto LABEL_41;
            }

            v22 = v21 & (-2 << (v15 & 0x3F));
            if (v22)
            {
              v15 = __clz(__rbit64(v22)) | v15 & 0x7FFFFFFFFFFFFFC0;
              if (v17 == v14)
              {
                goto LABEL_11;
              }
            }

            else
            {
              v23 = v18 << 6;
              v24 = v18 + 1;
              v25 = (v34 + 64 + 8 * v18);
              while (v24 < (v2 + 63) >> 6)
              {
                v27 = *v25++;
                v26 = v27;
                v23 += 64;
                ++v24;
                if (v27)
                {
                  sub_10000B9AC(v15, v16, 0);
                  v15 = __clz(__rbit64(v26)) + v23;
                  goto LABEL_30;
                }
              }

              sub_10000B9AC(v15, v16, 0);
              v15 = v2;
LABEL_30:
              a1 = 1;
              v20 = v34;
              if (v17 == v14)
              {
LABEL_11:

                v2 = v29;
                a1 = v32;
                goto LABEL_12;
              }
            }

            if ((v15 & 0x8000000000000000) == 0)
            {
              v16 = *(v20 + 36);
              ++v17;
              if (v15 < 1 << *(v20 + 32))
              {
                continue;
              }
            }

            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

LABEL_12:
      ++a1;
      sub_10000893C(_swiftEmptyArrayStorage);

      if (a1 == v30)
      {

        return v36;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

  return v10;
}

unint64_t sub_100008E6C(unint64_t result)
{
  if (result >= 2)
  {
    v1 = result;
    if (qword_10001C8A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1000113CC();
    sub_10000AA34(v2, qword_10001D740);
    v3 = sub_1000113AC();
    v4 = sub_10001164C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unknown scope", v5, 2u);
    }

    sub_10000B4BC();
    swift_allocError();
    *v6 = xmmword_100012650;
    *(v6 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_100008F94(unint64_t result)
{
  if (result >= 4)
  {
    v1 = result;
    if (qword_10001C8A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1000113CC();
    sub_10000AA34(v2, qword_10001D740);
    v3 = sub_1000113AC();
    v4 = sub_10001164C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unknown enrollment type", v5, 2u);
    }

    sub_10000B4BC();
    swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x8000000100014340;
    *(v6 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

uint64_t sub_1000090CC(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return _swift_task_switch(sub_1000090F0, 0, 0);
}

uint64_t sub_1000090F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = v3;
  v4 = *(v3 + 168);
  v5 = objc_opt_self();
  v6 = sub_10001147C();
  v7 = [v5 newDeclarationKeyWithSubscriberIdentifier:v6 reference:v4];

  if (qword_10001C8A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000113CC();
  sub_10000AA34(v8, qword_10001D740);
  v9 = v7;
  v10 = sub_1000113AC();
  v11 = sub_10001163C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v88 = v13;
    *v12 = 136446210;
    v14 = [v9 key];
    v15 = sub_1000114AC();
    v17 = v16;

    v18 = sub_10000C3D4(v15, v17, &v88);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Applying configuration with key: %{public}s", v12, 0xCu);
    sub_10000A9E8(v13);
  }

  v19 = [*(v3 + 168) declaration];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  v21 = *(v3 + 168);
  if (v20)
  {
    v22 = v20;
    v85 = [objc_opt_self() currentPlatform];
    v23 = &ManagedSettingsAdapter;
    v24 = [v21 store];
    v25 = [v24 scope];

    v26 = sub_100008E6C(v25);
    v82 = v22;
    v27 = [*(v3 + 168) store];
    v28 = [v27 type];

    v39 = sub_100008F94(v28);
    result = sub_100007F08(*(v3 + 176), v40, v41);
    v42 = result;
    v80 = *(result + 16);
    v81 = v9;
    v75 = v19;
    if (v80)
    {
      v78 = result;
      v79 = v26;
      v43 = 0;
      v44 = (v3 + 96);
      v76 = (v3 + 160);
      v77 = (v3 + 136);
      while (v43 < *(v42 + 16))
      {
        v83 = v43;
        v84 = *(v3 + 184);
        v87 = *(v42 + 16 * v43 + 32);

        v45 = [v9 key];
        v46 = sub_1000114AC();
        v48 = v47;

        *v77 = 0;
        *(v3 + 144) = 0;
        *(v3 + 152) = -1;
        *(v3 + 160) = &_swiftEmptySetSingleton;
        v49 = *(*(&v87 + 1) + 24);
        *(v3 + 120) = v87;
        sub_10000B8A0(v44);
        v49(v46, v48, 0xD00000000000001ALL, 0x8000000100014360);
        v50 = *(v3 + 120);
        v51 = *(v3 + 128);
        sub_10000B408(v44, v50);
        v52 = swift_task_alloc();
        v52[2] = v76;
        v52[3] = v77;
        v52[4] = v84;
        v52[5] = v44;
        v52[6] = v82;
        v52[7] = v85;
        v52[8] = v79;
        v52[9] = v39;
        v53 = swift_task_alloc();
        v53[2] = v50;
        v53[3] = v51;
        v53[4] = sub_10000B904;
        v53[5] = v52;
        (*(v51 + 56))(sub_10000B938, v53, v50, v51);

        v54 = *(v3 + 152);
        if (v54 != 255)
        {
          v65 = *(v3 + 136);
          v64 = *(v3 + 144);
          sub_10000A9C0(v65, v64, *(v3 + 152));

          sub_10000B4BC();
          swift_allocError();
          *v66 = v65;
          *(v66 + 8) = v64;
          *(v66 + 16) = v54;
          swift_willThrow();

          sub_10000A9E8(v44);

          sub_10000AA6C(v65, v64, v54);

          goto LABEL_8;
        }

        ++v43;
        v55 = *v76;
        sub_10000A9E8(v44);
        result = sub_1000031C8(v55);
        v9 = v81;
        v23 = &ManagedSettingsAdapter;
        v42 = v78;
        if (v80 == v83 + 1)
        {

          v19 = v75;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_18:
    if (*(&_swiftEmptySetSingleton + 2))
    {
      sub_100001550(&qword_10001CB20, &qword_100012950);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_100012660;
      v57 = sub_10001147C();
      sub_100001550(&qword_10001CB28, &qword_100012958);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000121A0;
      *(inited + 32) = 0x73676E6974746553;
      *(inited + 40) = 0xE800000000000000;
      v59 = *(&_swiftEmptySetSingleton + 2);
      if (v59)
      {
        v60 = sub_100007000(*(&_swiftEmptySetSingleton + 2), 0);
        v61 = sub_100007C68(&v88, v60 + 4, v59, &_swiftEmptySetSingleton);
        v62 = v88;
        v86 = v61;

        result = sub_10000B944(v62);
        if (v86 != v59)
        {
LABEL_30:
          __break(1u);
          return result;
        }

        v63 = v81;
      }

      else
      {
        v60 = _swiftEmptyArrayStorage;
        v63 = v81;
      }

      v88 = v60;
      sub_100007190(&v88);

      v68 = objc_opt_self();
      v69 = objc_opt_self();
      v70 = v88;
      *(inited + 72) = sub_100001550(&qword_10001CAE0, &qword_100012928);
      *(inited + 48) = v70;
      v67 = v56;
      sub_10000E374(inited);
      swift_setDeallocating();
      sub_10000B94C(inited + 32, &qword_10001CB30, &qword_100012960);
      isa = sub_1000113DC().super.isa;

      v72 = [v69 buildFromDictionary:isa];

      v73 = [v68 buildWithCode:v57 description:0 details:v72];
      *(v56 + 32) = v73;
      v19 = v63;
      v9 = v75;
    }

    else
    {

      v67 = _swiftEmptyArrayStorage;
    }

    v74 = *(v3 + 8);

    return v74(v67);
  }

  else
  {

    v88 = 0;
    v89 = 0xE000000000000000;
    sub_10001173C(30);

    v88 = 0xD00000000000001CLL;
    v89 = 0x80000001000143A0;
    v29 = [v21 declaration];
    v30 = [v29 declarationType];

    v31 = sub_1000114AC();
    v33 = v32;

    v92._countAndFlagsBits = v31;
    v92._object = v33;
    sub_10001153C(v92);

    v34 = v88;
    v35 = v89;
    sub_10000B4BC();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 0;
    swift_willThrow();

LABEL_8:
    v37 = *(v3 + 8);

    return v37();
  }
}

uint64_t sub_100009AA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_10001152C();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_100009B54(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_100009B74, 0, 0);
}

uint64_t sub_100009B74()
{
  v48 = v0;
  if (qword_10001C8A0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1000113CC();
  sub_10000AA34(v2, qword_10001D740);
  v3 = v1;
  v4 = sub_1000113AC();
  v5 = sub_10001163C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47[0] = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_1000114AC();
    v12 = v11;

    v13 = sub_10000C3D4(v10, v12, v47);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_10000A9E8(v8);
  }

  v14 = *(v0 + 72);
  v15 = [*(v0 + 64) key];
  v16 = sub_1000114AC();
  v18 = v17;

  v21 = sub_100007F08(v14, v19, v20);
  v46 = *(v21 + 16);
  if (v46)
  {
    v45 = v21 + 32;
    v44 = v0;
    sub_100001550(&qword_10001CB00, &qword_100012940);
    v22 = 0;
    v42 = v16;
    v43 = v18;
    do
    {
      v23 = *(v45 + 16 * v22 + 8);
      *(v0 + 48) = v16;
      *(v0 + 56) = v18;
      v24 = sub_10001171C();
      v25 = v24 + 56;

      v26 = *(v0 + 48);
      v27 = *(v0 + 56);
      sub_10001189C();

      sub_10001151C();
      v28 = sub_1000118AC();
      v29 = ~(-1 << *(v24 + 32));
      v30 = v28 & v29;
      v31 = (v28 & v29) >> 6;
      v32 = *(v24 + 56 + 8 * v31);
      v33 = 1 << (v28 & v29);
      if ((v33 & v32) != 0)
      {
        while (1)
        {
          v34 = (*(v24 + 48) + 16 * v30);
          v35 = *v34 == v26 && v34[1] == v27;
          if (v35 || (sub_10001182C() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v29;
          v31 = v30 >> 6;
          v32 = *(v25 + 8 * (v30 >> 6));
          v33 = 1 << v30;
          if ((v32 & (1 << v30)) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        *(v25 + 8 * v31) = v33 | v32;
        v36 = (*(v24 + 48) + 16 * v30);
        *v36 = v26;
        v36[1] = v27;
        v37 = *(v24 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          __break(1u);
          goto LABEL_21;
        }

        *(v24 + 16) = v39;
      }

      ++v22;
      v0 = v44;
      sub_10000B804(v44 + 48);
      (*(v23 + 48))(v24, 0xD00000000000001ALL, 0x8000000100014360);

      v16 = v42;
      v18 = v43;
    }

    while (v22 != v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100009F40(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = swift_getObjectType();
  sub_10001132C();
  v2[14] = swift_task_alloc();
  sub_10001145C();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000A008, 0, 0);
}

uint64_t sub_10000A008()
{
  v58 = v0;
  if (qword_10001C8A0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1000113CC();
  sub_10000AA34(v2, qword_10001D740);
  v3 = v1;
  v4 = sub_1000113AC();
  v5 = sub_10001164C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v56 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_1000114AC();
    v13 = v12;

    v14 = sub_10000C3D4(v11, v13, &v56);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_10000A9E8(v8);
  }

  v15 = [v0[11] declaration];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v55 = v16;
    v17 = [v16 declarationType];
    v18 = sub_1000114AC();
    v20 = v19;

    v56 = v18;
    v57 = v20;

    v60._object = 0x80000001000142E0;
    v60._countAndFlagsBits = 0xD000000000000018;
    LOBYTE(v17) = sub_10001155C(v60);

    if (v17)
    {
      sub_1000065A4(24);
    }

    v21 = v0[11];
    v22 = sub_1000114DC();
    v24 = v23;

    v56 = v22;
    v57 = v24;

    v61._countAndFlagsBits = 0x454C5449542ELL;
    v61._object = 0xE600000000000000;
    sub_10001153C(v61);
    v56 = v22;
    v57 = v24;
    v62._countAndFlagsBits = 0x504952435345442ELL;
    v62._object = 0xEC0000004E4F4954;
    sub_10001153C(v62);
    v25 = [objc_opt_self() currentPlatform];
    v26 = [v21 store];
    v27 = [v26 scope];

    v28 = sub_100008E6C(v27);
    v29 = [v0[11] store];
    v30 = [v29 type];

    v42 = sub_100008F94(v30);
    v43 = v0[12];
    v54 = v0[13];
    v44 = swift_allocObject();
    *(v44 + 16) = _swiftEmptyArrayStorage;
    v45 = swift_allocObject();
    v45[2] = v25;
    v45[3] = v28;
    v45[4] = v42;
    v45[5] = v43;
    v45[6] = v44;
    v45[7] = v54;
    v0[6] = sub_10000B588;
    v0[7] = v45;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000049E8;
    v0[5] = &unk_100018F40;
    v46 = _Block_copy(v0 + 2);
    v47 = v43;

    [v55 enumerateManagedSettingsUsingBlock:v46];
    _Block_release(v46);
    v48 = objc_opt_self();
    sub_10001146C();
    sub_10001131C();
    sub_1000114BC();
    v49 = sub_10001147C();

    sub_10001146C();
    sub_10001131C();
    sub_1000114BC();
    v50 = sub_10001147C();

    swift_beginAccess();

    sub_100001550(&qword_10001CAE0, &qword_100012928);
    isa = sub_10001158C().super.isa;

    v52 = [v48 configurationUIWithTitle:v49 description:v50 details:isa];

    v53 = v0[1];

    return v53(1, v52);
  }

  else
  {
    v31 = v0[11];

    v56 = 0;
    v57 = 0xE000000000000000;
    sub_10001173C(28);

    v56 = 0xD00000000000001ALL;
    v57 = 0x80000001000142C0;
    v32 = [v31 declaration];
    v33 = [v32 declarationType];

    v34 = sub_1000114AC();
    v36 = v35;

    v63._countAndFlagsBits = v34;
    v63._object = v36;
    sub_10001153C(v63);

    v37 = v56;
    v38 = v57;
    sub_10000B4BC();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 0;
    swift_willThrow();

    v40 = v0[1];

    return v40(0);
  }
}

uint64_t sub_10000A7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A814()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_10000A858(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000A858(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_10000A870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A8D4()
{

  sub_10000A9E8((v0 + 64));

  sub_10000A9E8((v0 + 112));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10000A934(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000A994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A9AC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_10000A9C0(result, a2, a3);
  }

  return result;
}

uint64_t sub_10000A9C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

_OWORD *sub_10000A9D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A9E8(void *a1)
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

uint64_t sub_10000AA34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000AA6C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_10000A858(a1, a2, a3);
  }

  return a1;
}

uint64_t *sub_10000AA80(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000AAE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002D18;

  return sub_100006304(v2, v3, v5, v4);
}

uint64_t sub_10000ABA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BB9C;

  return sub_10000670C(v2, v3, v4);
}

uint64_t sub_10000AC68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BB9C;

  return sub_1000067F4(a1, v4, v5, v6);
}

uint64_t sub_10000AD34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001550(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000AD9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ADD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BB9C;

  return sub_100006BD8(a1, v4);
}

uint64_t sub_10000AE8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D18;

  return sub_100006BD8(a1, v4);
}

uint64_t sub_10000AF44()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AF8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000BB9C;

  return sub_100004CE8(v2, v3, v5, v4);
}

uint64_t sub_10000B04C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B09C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000BB9C;

  return sub_1000036F4(v2, v3, v4, v5, v6);
}

unint64_t sub_10000B164()
{
  result = qword_10001CAC8;
  if (!qword_10001CAC8)
  {
    sub_10000B858(255, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAC8);
  }

  return result;
}

uint64_t sub_10000B1CC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B20C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BB9C;

  return sub_100002F98(v2, v3, v4);
}

uint64_t sub_10000B2D0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B310()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BB9C;

  return sub_100002BC4(v2, v3);
}

uint64_t sub_10000B3C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10000B408(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B45C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_10000B4BC()
{
  result = qword_10001CAD8;
  if (!qword_10001CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAD8);
  }

  return result;
}

uint64_t sub_10000B510()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B548()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000B5B8(char a1)
{
  v1 = sub_10001132C();
  __chkstk_darwin(v1 - 8, v2);
  v3 = sub_10001145C();
  __chkstk_darwin(v3 - 8, v4);
  sub_1000113FC();
  sub_10001131C();
  return sub_1000114BC();
}

uint64_t sub_10000B6D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a4)
  {
    v9 = result;
    if (a3 || a4 != 0xE000000000000000)
    {
      result = sub_10001182C();
      if ((result & 1) == 0)
      {
        sub_100001550(&qword_10001CAF0, &qword_100012930);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_100012640;
        *(v10 + 32) = v9;
        *(v10 + 40) = a2;
        *(v10 + 48) = a3;
        *(v10 + 56) = a4;
        v11 = *a5;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100006ECC(0, v11[2] + 1, 1, v11);
          v11 = result;
        }

        v13 = v11[2];
        v12 = v11[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_100006ECC((v12 > 1), v13 + 1, 1, v11);
          v11 = result;
        }

        v11[2] = v13 + 1;
        v11[v13 + 4] = v10;
        *a5 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_10000B858(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *sub_10000B8A0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000B94C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001550(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B9AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 sub_10000B9C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B9D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000BA20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_10000BA88()
{
  result = qword_10001CB48;
  if (!qword_10001CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB48);
  }

  return result;
}

unint64_t sub_10000BAE0()
{
  result = qword_10001CB50;
  if (!qword_10001CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB50);
  }

  return result;
}

unint64_t sub_10000BB34()
{
  result = qword_10001CB58;
  if (!qword_10001CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB58);
  }

  return result;
}

id sub_10000BDC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedSettingsApplicator(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10000BE1C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() managedSettingsSchemas];
  sub_10000B858(0, &qword_10001CCA8, RMModelConfigurationSchema_ptr);
  v3 = sub_1000113EC();

  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        v10 = objc_opt_self();
        sub_10000B858(0, &unk_10001CCB0, RMModelConfigurationDynamic_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v12 = sub_10001147C();

        [v10 addClass:ObjCClassFromMetadata declarationType:v12];
      }

      while (v7);
      continue;
    }
  }
}

uint64_t sub_10000BFD0(uint64_t a1)
{
  result = sub_10001161C();
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

    sub_10000CBB4(v13, v11, v12);
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

uint64_t sub_10000C0EC()
{
  v0 = sub_1000113CC();
  sub_10000AA80(v0, qword_10001D758);
  v1 = sub_10000AA34(v0, qword_10001D758);
  type metadata accessor for ManagedSettingsStatus(v1, v2);
  sub_100001550(&qword_10001CD68, &qword_100012B80);
  sub_1000114CC();
  return sub_1000113BC();
}

id sub_10000C378(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedSettingsStatus(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000C3D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C4A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_10000A7B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A9E8(v11);
  return v7;
}

unint64_t sub_10000C4A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C5AC(a5, a6);
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
    result = sub_10001175C();
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

void *sub_10000C5AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C5F8(a1, a2);
  sub_10000C728(&off_1000188F8);
  return v3;
}

void *sub_10000C5F8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000C814(v5, 0);
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

  result = sub_10001175C();
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
        v10 = sub_10001154C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000C814(v10, 0);
        result = sub_10001172C();
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

uint64_t sub_10000C728(uint64_t result)
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

  result = sub_10000C888(result, v11, 1, v3);
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

void *sub_10000C814(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001550(&qword_10001CD50, &qword_100012B68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C888(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001550(&qword_10001CD50, &qword_100012B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000C97C(uint64_t *a1, void *a2)
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

    v9 = sub_1000116CC();

    if (v9)
    {

      sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1000116BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10000CD04(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10000CEF4(v20 + 1);
    }

    v18 = v8;
    sub_10000D37C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
  v11 = sub_10001165C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10000D400(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10001166C();

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

uint64_t sub_10000CBB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10001189C();
  sub_10001151C();
  v8 = sub_1000118AC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10001182C() & 1) != 0)
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

    sub_10000D570(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10000CD04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001550(&qword_10001CB40, &qword_100012970);
    v2 = sub_10001170C();
    v15 = v2;
    sub_1000116AC();
    if (sub_1000116DC())
    {
      sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000CEF4(v9 + 1);
        }

        v2 = v15;
        result = sub_10001165C(*(v15 + 40));
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

      while (sub_1000116DC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000CEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001550(&qword_10001CB40, &qword_100012970);
  result = sub_1000116FC();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_10001165C(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000D11C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001550(&qword_10001CB00, &qword_100012940);
  result = sub_1000116FC();
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
      sub_10001189C();
      sub_10001151C();
      result = sub_1000118AC();
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

unint64_t sub_10000D37C(uint64_t a1, void *a2)
{
  sub_10001165C(a2[5]);
  result = sub_10001169C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10000D400(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000CEF4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000D6F0();
      goto LABEL_12;
    }

    sub_10000D99C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10001165C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10001166C();

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
  sub_10001183C();
  __break(1u);
}

uint64_t sub_10000D570(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_10000D11C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000D840();
      goto LABEL_16;
    }

    sub_10000DBB0(v8 + 1);
  }

  v10 = *v4;
  sub_10001189C();
  sub_10001151C();
  result = sub_1000118AC();
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

      result = sub_10001182C();
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
  result = sub_10001183C();
  __break(1u);
  return result;
}

id sub_10000D6F0()
{
  v1 = v0;
  sub_100001550(&qword_10001CB40, &qword_100012970);
  v2 = *v0;
  v3 = sub_1000116EC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_10000D840()
{
  v1 = v0;
  sub_100001550(&qword_10001CB00, &qword_100012940);
  v2 = *v0;
  v3 = sub_1000116EC();
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

uint64_t sub_10000D99C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001550(&qword_10001CB40, &qword_100012970);
  result = sub_1000116FC();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_10001165C(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_10000DBB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001550(&qword_10001CB00, &qword_100012940);
  result = sub_1000116FC();
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
      sub_10001189C();

      sub_10001151C();
      result = sub_1000118AC();
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

unint64_t sub_10000DDE8(uint64_t a1, uint64_t a2)
{
  sub_10001189C();
  sub_10001151C();
  v4 = sub_1000118AC();

  return sub_10000DE60(a1, a2, v4);
}

unint64_t sub_10000DE60(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001182C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000DF18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001550(&unk_10001CD58, &unk_100012B70);
  v33 = v4;
  result = sub_1000117DC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000A9D8(v24, v34);
      }

      else
      {
        sub_10000A7B8(v24, v34);
      }

      sub_10001189C();
      sub_10001151C();
      result = sub_1000118AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000A9D8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_10000E1D0()
{
  v1 = v0;
  sub_100001550(&unk_10001CD58, &unk_100012B70);
  v2 = *v0;
  v3 = sub_1000117CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000A7B8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000A9D8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000E374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001550(&unk_10001CD58, &unk_100012B70);
    v3 = sub_1000117EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000EAA4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000DDE8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000A9D8(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000E4AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100001550(a2, a3);
    v5 = sub_1000117EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10000DDE8(v7, v8);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000E5A0(uint64_t a1, uint64_t *a2)
{
  if (qword_10001C8A8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v4 = sub_1000113CC();
  sub_10000AA34(v4, qword_10001D758);

  v5 = sub_1000113AC();
  v6 = sub_10001163C();

  aBlock = a2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48[0] = v8;
    *v7 = 136446210;
    v9 = sub_1000115AC();
    v11 = sub_10000C3D4(v9, v10, v48);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Querying status for key paths:%{public}s", v7, 0xCu);
    sub_10000A9E8(v8);
  }

  v12 = [objc_allocWithZone(MOEffectiveSettingsStore) init];
  v46 = sub_10000E374(_swiftEmptyArrayStorage);
  v13 = *(a1 + 16);
  if (!v13)
  {
LABEL_27:
    isa = sub_1000113DC().super.isa;
    (aBlock[2])(aBlock, isa, 0);

    return;
  }

  v14 = objc_opt_self();
  a2 = (a1 + 40);
  v15 = &ManagedSettingsAdapter;
  v44 = v12;
  while (1)
  {
    a1 = *(a2 - 1);
    v16 = *a2;

    v17 = [v14 v15[138].count];
    sub_10000B858(0, &qword_10001CD48, RMModelStatusSchema_ptr);
    v18 = sub_1000113EC();

    if (!*(v18 + 16) || (v19 = sub_10000DDE8(a1, v16), (v20 & 1) == 0))
    {

      goto LABEL_7;
    }

    v21 = *(*(v18 + 56) + 8 * v19);

    v22 = [v21 managedSetting];
    if (!v22)
    {

      goto LABEL_7;
    }

    v23 = v22;
    v24 = [v22 managedSettingKey];

    if (!v24)
    {
      sub_1000114AC();
      v24 = sub_10001147C();
    }

    v25 = [v12 valueForSettingKey:v24];

    if (!v25)
    {

      goto LABEL_7;
    }

    v45 = v21;
    v26 = v15;
    v27 = v14;
    sub_10001167C();
    swift_unknownObjectRelease();
    sub_10000A7B8(v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = sub_10000DDE8(a1, v16);
    v31 = v46[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v34 = v29;
    if (v46[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E1D0();
      }

      goto LABEL_22;
    }

    sub_10000DF18(v33, isUniquelyReferenced_nonNull_native);
    v35 = sub_10000DDE8(a1, v16);
    if ((v34 & 1) != (v36 & 1))
    {
      break;
    }

    v30 = v35;
LABEL_22:
    v14 = v27;
    v15 = v26;
    if (v34)
    {

      v37 = (v46[7] + 32 * v30);
      sub_10000A9E8(v37);
      sub_10000A9D8(v47, v37);

      sub_10000A9E8(v48);
    }

    else
    {
      v46[(v30 >> 6) + 8] |= 1 << v30;
      v38 = (v46[6] + 16 * v30);
      *v38 = a1;
      v38[1] = v16;
      sub_10000A9D8(v47, (v46[7] + 32 * v30));

      sub_10000A9E8(v48);
      v39 = v46[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_29;
      }

      v46[2] = v41;
    }

    v12 = v44;
LABEL_7:
    a2 += 2;
    if (!--v13)
    {
      goto LABEL_27;
    }
  }

  _Block_release(aBlock);
  sub_10001184C();
  __break(1u);
}

uint64_t sub_10000EAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001550(&qword_10001CB30, &qword_100012960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EB14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_10000A7B8(a1, &v18);
  sub_100001550(&qword_10001CD80, &qword_100012BA8);
  if (swift_dynamicCast())
  {
    v8 = v20;
    v9 = *(v20 + 16);
    if (v9)
    {
      v18 = _swiftEmptyArrayStorage;
      result = sub_10001178C();
      v11 = 0;
      while (v11 < *(v8 + 16))
      {
        v17 = *(v8 + 8 * v11 + 32);

        sub_10000ED38(&v17, a2, a3, &v16, &v20);

        if (v4)
        {
        }

        ++v11;
        sub_10001176C();
        sub_10001179C();
        sub_1000117AC();
        result = sub_10001177C();
        if (v9 == v11)
        {

          v12 = v18;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
LABEL_10:
      result = sub_100001550(&qword_10001CD88, &qword_100012BB0);
      a4[3] = result;
      *a4 = v12;
    }
  }

  else
  {
    v18 = a2;
    v19 = a3;

    v21._countAndFlagsBits = 0x61766E6920736920;
    v21._object = 0xEB0000000064696CLL;
    sub_10001153C(v21);
    v13 = v18;
    v14 = v19;
    sub_10000B4BC();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

void sub_10000ED38(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X4>, void *a5@<X8>)
{
  v10 = *a1;
  if (!*(*a1 + 16) || (v11 = v5, v12 = sub_10000DDE8(0x65644970756F7247, 0xEF7265696669746ELL), (v13 & 1) == 0) || (sub_10000A7B8(*(v10 + 56) + 32 * v12, &v34), (swift_dynamicCast() & 1) == 0))
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(29);

    v34 = a2;
    v35 = a3;
    v21 = "Setting value is present";
    v22._countAndFlagsBits = 0xD00000000000001BLL;
LABEL_17:
    v22._object = (v21 | 0x8000000000000000);
    goto LABEL_18;
  }

  if (!*(v10 + 16) || (v37 = v33, v14 = sub_10000DDE8(0x656C746954, 0xE500000000000000), (v15 & 1) == 0) || (sub_10000A7B8(*(v10 + 56) + 32 * v14, &v34), (swift_dynamicCast() & 1) == 0))
  {

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(19);

    v34 = a2;
    v35 = a3;
    v22._object = 0x8000000100014660;
    v22._countAndFlagsBits = 0xD000000000000011;
LABEL_18:
    sub_10001153C(v22);
    v23 = v34;
    v24 = v35;
    sub_10000B4BC();
    v11 = swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 3;
    swift_willThrow();
LABEL_19:
    *a4 = v11;
    return;
  }

  if (!*(v10 + 16) || (v16 = sub_10000DDE8(0x6B72616D6B6F6F42, 0xE900000000000073), (v17 & 1) == 0) || (sub_10000A7B8(*(v10 + 56) + 32 * v16, &v34), sub_100001550(&qword_10001CD80, &qword_100012BA8), (swift_dynamicCast() & 1) == 0))
  {

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(23);

    v34 = a2;
    v35 = a3;
    v21 = ".Title is invalid";
    v22._countAndFlagsBits = 0xD000000000000015;
    goto LABEL_17;
  }

  v18 = *(v33 + 16);
  if (v18)
  {
    sub_10001178C();
    v19 = 0;
    v32 = v18;
    while (v19 < *(v33 + 16))
    {
      v20 = *(v33 + 8 * v19 + 32);
      v36 = sub_100001550(&qword_10001CD90, &qword_100012BB8);
      v34 = v20;
      swift_bridgeObjectRetain_n();
      sub_10000F1E0(&v34);

      if (v5)
      {

        sub_10000A9E8(&v34);

        goto LABEL_19;
      }

      ++v19;
      sub_10000A9E8(&v34);
      sub_10001176C();
      sub_10001179C();
      sub_1000117AC();
      sub_10001177C();
      if (v32 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    v26 = objc_allocWithZone(MOBookmarkSource);
    v27 = sub_10001147C();

    v28 = sub_10001147C();

    sub_10000F9A0(0, v29);
    isa = sub_10001158C().super.isa;

    v31 = [v26 initWithSourceIdentifier:v27 title:v28 children:isa];

    *a5 = v31;
  }
}

uint64_t sub_10000F1E0(uint64_t a1)
{
  v3 = sub_100001550(&qword_10001CA60, &qword_100012810);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v37 - v6;
  sub_10001136C();
  v8 = sub_10001137C();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  sub_10000A7B8(a1, &v41);
  v11 = sub_100001550(&qword_10001CD90, &qword_100012BB8);
  if (!swift_dynamicCast())
  {
    v41 = v8;
    v42 = v10;
    v20._countAndFlagsBits = 0x61766E6920736920;
    v20._object = 0xEB0000000064696CLL;
    goto LABEL_11;
  }

  v12 = v39;
  if (!v39[2] || (v13 = sub_10000DDE8(0x656C746954, 0xE500000000000000), (v14 & 1) == 0) || (sub_10000A7B8(v12[7] + 32 * v13, &v41), (swift_dynamicCast() & 1) == 0))
  {

    v41 = 0;
    v42 = 0xE000000000000000;
    sub_10001173C(19);

    v41 = v8;
    v42 = v10;
    v20._object = 0x8000000100014660;
    v20._countAndFlagsBits = 0xD000000000000011;
    goto LABEL_11;
  }

  v16 = v39;
  v15 = v40;
  if (v12[2] && (v17 = sub_10000DDE8(5001813, 0xE300000000000000), (v18 & 1) != 0))
  {
    sub_10000A7B8(v12[7] + 32 * v17, &v41);
    if (!swift_dynamicCast())
    {

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_10001173C(17);

      v41 = v8;
      v42 = v10;
      v20._countAndFlagsBits = 0x207369204C52552ELL;
      v20._object = 0xEF64696C61766E69;
      goto LABEL_11;
    }

    v38 = v16;
    v44 = v15;
    v19 = v40;
  }

  else
  {
    v38 = v16;
    v44 = v15;
    v19 = 0;
  }

  if (v12[2])
  {
    v25 = sub_10000DDE8(0x7265646C6F46, 0xE600000000000000);
    if (v26)
    {
      sub_10000A7B8(v12[7] + 32 * v25, &v41);

      sub_100001550(&qword_10001CD80, &qword_100012BA8);
      if (swift_dynamicCast())
      {
        v27 = v39;
        goto LABEL_19;
      }

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_10001173C(20);

      v41 = v8;
      v42 = v10;
      v20._countAndFlagsBits = 0xD000000000000012;
      v20._object = 0x80000001000146D0;
LABEL_11:
      sub_10001153C(v20);
      v21 = v41;
      v22 = v42;
      sub_10000B4BC();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 3;
      swift_willThrow();
      return v8;
    }
  }

  v27 = 0;
LABEL_19:
  if (v19)
  {
    if (v27)
    {

LABEL_32:

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_10001173C(47);

      v41 = v8;
      v42 = v10;
      v20._countAndFlagsBits = 0xD00000000000002DLL;
      v20._object = 0x80000001000146A0;
      goto LABEL_11;
    }

    v31 = objc_allocWithZone(MOBookmark);
    v32 = sub_10001147C();

    isa = sub_10001147C();

    v34 = [v31 initWithTitle:v32 url:isa];
LABEL_34:
    v8 = v34;

    return v8;
  }

  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = v27[2];
  if (!v28)
  {
LABEL_33:

    v35 = objc_allocWithZone(MOBookmark);
    v32 = sub_10001147C();

    sub_10000F9A0(0, v36);
    isa = sub_10001158C().super.isa;

    v34 = [v35 initWithTitle:v32 children:isa];
    goto LABEL_34;
  }

  v39 = _swiftEmptyArrayStorage;
  result = sub_10001178C();
  v29 = 0;
  while (v29 < v27[2])
  {
    v30 = v27[v29 + 4];
    v43 = v11;
    v41 = v30;
    swift_bridgeObjectRetain_n();
    v8 = sub_10000F1E0(&v41);

    if (v1)
    {

      sub_10000A9E8(&v41);

      return v8;
    }

    ++v29;
    sub_10000A9E8(&v41);
    sub_10001176C();
    sub_10001179C();
    sub_1000117AC();
    result = sub_10001177C();
    if (v28 == v29)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F7F0(uint64_t a1)
{
  v2 = sub_10001132C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_10001145C();
  __chkstk_darwin(v4 - 8, v5);
  sub_10000A7B8(a1, v7);
  sub_100001550(&qword_10001CD80, &qword_100012BA8);
  if (swift_dynamicCast())
  {
  }

  sub_1000113FC();
  sub_10001131C();
  return sub_1000114BC();
}

unint64_t sub_10000F9A0(uint64_t a1, uint64_t a2)
{
  result = qword_10001CD98;
  if (!qword_10001CD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001CD98);
  }

  return result;
}

id sub_10000F9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_10000A7B8(a1, &v16);
  if (swift_dynamicCast())
  {
    v7 = v15._countAndFlagsBits == 0x726576654ELL && v15._object == 0xE500000000000000;
    if (v7 || (sub_10001182C() & 1) != 0)
    {

      v8 = &MOSafariCookiePolicyNever;
LABEL_8:
      v9 = *v8;
      type metadata accessor for MOSafariCookiePolicy(0);
      a4[3] = v10;
      *a4 = v9;
      return v9;
    }

    if (v15 == __PAIR128__(0xEE00657469736265, 0x57746E6572727543) || (sub_10001182C() & 1) != 0)
    {

      v8 = &MOSafariCookiePolicyCurrentWebsite;
      goto LABEL_8;
    }

    if (v15 == __PAIR128__(0xEF73657469736265, 0x5764657469736956) || (sub_10001182C() & 1) != 0)
    {

      v8 = &MOSafariCookiePolicyVisitedWebsites;
      goto LABEL_8;
    }

    if (v15 == __PAIR128__(0xE600000000000000, 0x737961776C41) || (sub_10001182C() & 1) != 0)
    {

      v8 = &MOSafariCookiePolicyAlways;
      goto LABEL_8;
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_10001173C(20);

    v16 = a2;
    v17 = a3;
    v19._object = 0x80000001000147D0;
    v19._countAndFlagsBits = 0xD000000000000010;
    sub_10001153C(v19);
    sub_10001153C(v15);
  }

  else
  {
    v16 = a2;
    v17 = a3;

    v18._countAndFlagsBits = 0x61766E6920736920;
    v18._object = 0xEB0000000064696CLL;
    sub_10001153C(v18);
  }

  v12 = v16;
  v13 = v17;
  sub_10000B4BC();
  swift_allocError();
  *v14 = v12;
  *(v14 + 8) = v13;
  *(v14 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_10000FC94(uint64_t a1)
{
  v2 = sub_10001132C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_10001145C();
  __chkstk_darwin(v4 - 8, v5);
  sub_10000A7B8(a1, v9);
  if (!swift_dynamicCast())
  {
LABEL_18:
    sub_1000113FC();
    sub_10001131C();
    return sub_1000114BC();
  }

  if ((v7 != 0x726576654ELL || v8 != 0xE500000000000000) && (sub_10001182C() & 1) == 0 && (v7 != 0x57746E6572727543 || v8 != 0xEE00657469736265) && (sub_10001182C() & 1) == 0 && (v7 != 0x5764657469736956 || v8 != 0xEF73657469736265) && (sub_10001182C() & 1) == 0)
  {
    if (v7 == 0x737961776C41 && v8 == 0xE600000000000000)
    {
    }

    else
    {
      sub_10001182C();
    }

    goto LABEL_18;
  }

  sub_1000113FC();
  sub_10001131C();
  return sub_1000114BC();
}

unint64_t sub_100010044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_10000A7B8(a1, &v34);
  sub_100001550(&qword_10001CD90, &qword_100012BB8);
  if (!swift_dynamicCast())
  {
    v34 = a2;
    v35 = a3;

    v17._countAndFlagsBits = 0x61766E6920736920;
    v17._object = 0xEB0000000064696CLL;
LABEL_14:
    sub_10001153C(v17);
LABEL_15:
    v19 = v34;
    v20 = v35;
    sub_10000B4BC();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v20;
    *(v21 + 16) = 3;
    return swift_willThrow();
  }

  if (!*(v32 + 16) || (v7 = sub_10000DDE8(0x6570795465676150, 0xE800000000000000), (v8 & 1) == 0) || (sub_10000A7B8(*(v32 + 56) + 32 * v7, &v34), (swift_dynamicCast() & 1) == 0))
  {

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(22);

    v34 = a2;
    v35 = a3;
    v18 = " default start page";
    v17._countAndFlagsBits = 0xD000000000000014;
LABEL_13:
    v17._object = (v18 | 0x8000000000000000);
    goto LABEL_14;
  }

  v36 = v32;
  v9 = sub_10000E498(&off_100018970);
  sub_100001550(&qword_10001CDA0, &qword_100012BC0);
  swift_arrayDestroy();
  if (!*(v9 + 16) || (v10 = sub_10000DDE8(v36, v33), (v11 & 1) == 0))
  {

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(29);

    v34 = a2;
    v35 = a3;
    v37._countAndFlagsBits = 0xD000000000000019;
    v37._object = 0x80000001000148A0;
    sub_10001153C(v37);
    v38._countAndFlagsBits = v36;
    v38._object = v33;
    sub_10001153C(v38);

    goto LABEL_15;
  }

  v12 = v10;

  v13 = *(*(v9 + 56) + 8 * v12);

  if (v13 != 3)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {

        v14 = [objc_opt_self() startPage];
        result = sub_100010904(0, v15);
        a4[3] = result;
        *a4 = v14;
        return result;
      }

      goto LABEL_28;
    }

    if (*(v32 + 16) && (v22 = sub_10000DDE8(0x65676170656D6F48, 0xEB000000004C5255), (v23 & 1) != 0))
    {
      sub_10000A7B8(*(v32 + 56) + 32 * v22, &v34);

      if (swift_dynamicCast())
      {
        v24 = objc_opt_self();
        v25 = sub_10001147C();

        v26 = [v24 homepageWithURL:v25];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(25);

    v34 = a2;
    v35 = a3;
    v18 = "ExtensionIdentifier";
    v17._countAndFlagsBits = 0xD000000000000017;
    goto LABEL_13;
  }

  if (!*(v32 + 16) || (v27 = sub_10000DDE8(0xD000000000000013, 0x80000001000148E0), (v28 & 1) == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  sub_10000A7B8(*(v32 + 56) + 32 * v27, &v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(33);

    v34 = a2;
    v35 = a3;
    v17._object = 0x80000001000148C0;
    v17._countAndFlagsBits = 0xD00000000000001FLL;
    goto LABEL_14;
  }

  v29 = objc_opt_self();
  v25 = sub_10001147C();

  v26 = [v29 extensionPageWithIdentifier:v25];
LABEL_25:
  v30 = v26;

  result = sub_100010904(0, v31);
  a4[3] = result;
  *a4 = v30;
  return result;
}

uint64_t sub_10001055C(uint64_t a1)
{
  v2 = sub_10001132C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_10001145C();
  __chkstk_darwin(v4 - 8, v5);
  sub_10000A7B8(a1, v11);
  sub_100001550(&qword_10001CD90, &qword_100012BB8);
  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  if (!*(v9 + 16) || (v6 = sub_10000DDE8(0x6570795465676150, 0xE800000000000000), (v7 & 1) == 0))
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_10000A7B8(*(v9 + 56) + 32 * v6, v11);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1000113FC();
    sub_10001131C();
    return sub_1000114BC();
  }

  if ((v9 != 0x7472617453 || v10 != 0xE500000000000000) && (sub_10001182C() & 1) == 0 && (v9 != 1701670728 || v10 != 0xE400000000000000) && (sub_10001182C() & 1) == 0)
  {
    if (v9 != 0x6F69736E65747845 || v10 != 0xE90000000000006ELL)
    {
      sub_10001182C();

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1000113FC();
  sub_10001131C();
  return sub_1000114BC();
}

unint64_t sub_100010904(uint64_t a1, uint64_t a2)
{
  result = qword_10001CDA8;
  if (!qword_10001CDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001CDA8);
  }

  return result;
}

unint64_t sub_100010950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_10000A7B8(a1, &v34);
  sub_100001550(&qword_10001CD90, &qword_100012BB8);
  if (!swift_dynamicCast())
  {
    v34 = a2;
    v35 = a3;

    v24._countAndFlagsBits = 0x61766E6920736920;
    v24._object = 0xEB0000000064696CLL;
LABEL_19:
    sub_10001153C(v24);
LABEL_20:
    v26 = v34;
    v27 = v35;
    sub_10000B4BC();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 3;
    return swift_willThrow();
  }

  if (!*(v32 + 16) || (v7 = sub_10000DDE8(0x6E69726961706E55, 0xED0000656D695467), (v8 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_10000A7B8(*(v32 + 56) + 32 * v7, &v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(27);

    v34 = a2;
    v35 = a3;
    v25 = "g policy default value";
    v24._countAndFlagsBits = 0xD000000000000019;
LABEL_18:
    v24._object = (v25 | 0x8000000000000000);
    goto LABEL_19;
  }

  if (!*(v32 + 16) || (v9 = sub_10000DDE8(0x7963696C6F50, 0xE600000000000000), (v10 & 1) == 0) || (sub_10000A7B8(*(v32 + 56) + 32 * v9, &v34), (swift_dynamicCast() & 1) == 0))
  {

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(20);

    v34 = a2;
    v35 = a3;
    v24._object = 0x80000001000149B0;
    v24._countAndFlagsBits = 0xD000000000000012;
    goto LABEL_19;
  }

  v36 = v32;
  v11 = sub_10000E484(&off_100018920);
  sub_100001550(&qword_10001CDB0, &qword_100012BC8);
  swift_arrayDestroy();
  if (!*(v11 + 16) || (v12 = sub_10000DDE8(v36, v33), (v13 & 1) == 0))
  {

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(34);

    v34 = a2;
    v35 = a3;
    v37._countAndFlagsBits = 0xD00000000000001ELL;
    v37._object = 0x80000001000149D0;
    sub_10001153C(v37);
    v38._countAndFlagsBits = v36;
    v38._object = v33;
    sub_10001153C(v38);

    goto LABEL_20;
  }

  v14 = v12;

  v15 = *(*(v11 + 56) + 8 * v14);

  if (v15)
  {
    if (*(v32 + 16) && (v16 = sub_10000DDE8(1920298824, 0xE400000000000000), (v17 & 1) != 0))
    {
      sub_10000A7B8(*(v32 + 56) + 32 * v16, &v34);

      if (swift_dynamicCast())
      {
        v18 = objc_opt_self();
        isa = sub_10001162C().super.super.isa;
        v20 = [v18 hourPolicyWithHour:isa];

        v21 = [objc_allocWithZone(MOAudioAccessoryTemporaryPairingConfiguration) initWithUnpairingTime:v20];
        result = sub_100011260(0, v22);
        a4[3] = result;
        *a4 = v21;
        return result;
      }
    }

    else
    {
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_10001173C(29);

    v34 = a2;
    v35 = a3;
    v25 = ".UnpairingTime invalid value: ";
    v24._countAndFlagsBits = 0xD00000000000001BLL;
    goto LABEL_18;
  }

  v29 = [objc_opt_self() nonePolicy];
  v30 = [objc_allocWithZone(MOAudioAccessoryTemporaryPairingConfiguration) initWithUnpairingTime:v29];

  result = sub_100011260(0, v31);
  a4[3] = result;
  *a4 = v30;
  return result;
}

uint64_t sub_100010E3C(uint64_t a1)
{
  v2 = sub_10001143C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_10001132C();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_10001145C();
  __chkstk_darwin(v6 - 8, v7);
  sub_10000A7B8(a1, v18);
  sub_100001550(&qword_10001CD90, &qword_100012BB8);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_17;
  }

  v8 = sub_10000DDE8(0x6E69726961706E55, 0xED0000656D695467);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10000A7B8(*(v16 + 56) + 32 * v8, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(v16 + 16) || (v10 = sub_10000DDE8(0x7963696C6F50, 0xE600000000000000), (v11 & 1) == 0) || (sub_10000A7B8(*(v16 + 56) + 32 * v10, v18), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v16 != 1701736270 || v17 != 0xE400000000000000)
  {
    v12 = sub_10001182C();

    if (v12)
    {
      goto LABEL_12;
    }

    if (*(v16 + 16))
    {
      v13 = sub_10000DDE8(1920298824, 0xE400000000000000);
      if (v14)
      {
        sub_10000A7B8(*(v16 + 56) + 32 * v13, v18);

        if (swift_dynamicCast())
        {
          sub_10001142C();
          v19._countAndFlagsBits = 0x48206C65636E6143;
          v19._object = 0xED0000203A72756FLL;
          sub_10001141C(v19);
          v18[0] = v16;
          sub_10001140C();
          v20._countAndFlagsBits = 0;
          v20._object = 0xE000000000000000;
          sub_10001141C(v20);
          sub_10001144C();
          sub_10001131C();
          return sub_1000114BC();
        }

LABEL_18:
        sub_1000113FC();
        sub_10001131C();
        return sub_1000114BC();
      }
    }

    goto LABEL_17;
  }

LABEL_12:

  sub_1000113FC();
  sub_10001131C();
  return sub_1000114BC();
}

unint64_t sub_100011260(uint64_t a1, uint64_t a2)
{
  result = qword_10001CDB8;
  if (!qword_10001CDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001CDB8);
  }

  return result;
}