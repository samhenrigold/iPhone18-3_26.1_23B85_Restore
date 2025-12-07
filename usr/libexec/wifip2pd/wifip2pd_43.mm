void sub_100365CB0(char a1)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  swift_beginAccess();
  v24 = a1;
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v20 = v5;
  v21 = _s8InstanceCMa_0(255, v5, v6, v7);
  v22 = v6;
  WitnessTable = swift_getWitnessTable("]\r\n", v21);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v20);
  Dictionary.subscript.getter();
  v8 = v25;
  if (v25)
  {
    v9 = v26;
    v10 = v25;
    swift_endAccess();
    sub_100058BA4(v8, v9);
  }

  else
  {
    swift_endAccess();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v4 setTxtRecordData:isa];

  if (v8 && (swift_beginAccess(), v12 = , NANGenericServiceProtocol.instanceName.getter(v12), v14 = v13, , v14))
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v4 setInstanceName:v15];

  swift_beginAccess();
  v24 = a1;
  Dictionary.subscript.getter();
  v16 = v25;
  if (v25)
  {
    v17 = v26;
    v18 = v25;
    swift_endAccess();
    sub_100058BA4(v16, v17);
    v19 = v4;
    sub_1002FAF10(v4, NANBitmap.Channel.operatingClass.getter, 0);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100365F5C(char a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  *&v16 = v3;
  *(&v16 + 1) = _s8InstanceCMa_0(255, v3, v4, v5);
  *&v17 = v4;
  *(&v17 + 1) = swift_getWitnessTable("]\r\n", *(&v16 + 1));
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v16);
  Dictionary.subscript.getter();
  if (!v13)
  {
    swift_endAccess();
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  v6 = v13;
  swift_endAccess();
  v7 = sub_100058BA4(v13, v14);
  sub_1002EBB40(&v16, v7, v8, v9, v10, v11);

  if (!*(&v17 + 1))
  {
LABEL_7:
    sub_100016290(&v16, &qword_10058BA80, &qword_1004818C0);
    return 0;
  }

  sub_10005DC58(&unk_100595B60, qword_1004AFC70);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_1003660F4(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  v14 = a1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v10 = v4;
  v11 = _s8InstanceCMa_0(255, v4, v5, v6);
  v12 = v5;
  WitnessTable = swift_getWitnessTable("]\r\n", v11);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v10);
  Dictionary.subscript.getter();
  v7 = v15;
  if (v15)
  {
    v8 = v16;
    v9 = v15;
    swift_endAccess();
    sub_100058BA4(v7, v8);
    sub_1002F9FB0();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_10036621C(uint64_t a1)
{
  LODWORD(v8) = a1;
  BYTE6(v8) = BYTE6(a1);
  WORD2(v8) = WORD2(a1);
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  *&v12 = v3;
  *(&v12 + 1) = _s17InitiatorInstanceCMa(255, v3, v4, v5);
  *&v13 = v4;
  *(&v13 + 1) = swift_getWitnessTable(byte_1004B0F14, *(&v12 + 1), v8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v12);
  sub_10020CB70();
  Dictionary.subscript.getter();
  if (!v9)
  {
    swift_endAccess();
    v12 = 0u;
    v13 = 0u;
    goto LABEL_7;
  }

  v6 = v9;
  swift_endAccess();
  sub_100058BA4(v9, v10);
  sub_10031DBFC(&v12);

  if (!*(&v13 + 1))
  {
LABEL_7:
    sub_100016290(&v12, &qword_10058BA80, &qword_1004818C0);
    return 0;
  }

  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void sub_1003663C4(uint64_t a1)
{
  v13 = a1;
  v15 = BYTE6(a1);
  v14 = WORD2(a1);
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v9 = v3;
  v10 = _s17InitiatorInstanceCMa(255, v3, v4, v5);
  v11 = v4;
  WitnessTable = swift_getWitnessTable(byte_1004B0F14, v10);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v9);
  sub_10020CB70();
  Dictionary.subscript.getter();
  v6 = v16;
  if (v16)
  {
    v7 = v17;
    v8 = v16;
    swift_endAccess();
    sub_100058BA4(v6, v7);
    sub_10032DAF8();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1003664FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1003654D0(a1, a2, a3 & 1, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_100366580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_100365950(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_100366628(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10036C320(*(a1 + 16), *(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8), a2, a3);
  if (!v4)
  {
    *a4 = v6;
    *(a4 + 2) = BYTE2(v6);
    *(a4 + 3) = BYTE3(v6);
    *(a4 + 4) = BYTE4(v6);
    *(a4 + 5) = BYTE5(v6);
    *(a4 + 6) = BYTE6(v6);
  }
}

uint64_t sub_10036676C(uint64_t a1, void *a2, uint64_t (*a3)(void *, uint64_t, void, void, uint64_t))
{
  v9[0] = a2;
  v10 = 0;
  v6 = a2;
  v11 = 1;
  v7 = a3(v9, a1, 0, 0, 0x100000000);
  if (!v3)
  {
  }

  return sub_100016290(v9, &unk_100597480, &qword_1004B1798);
}

uint64_t sub_100366804(void *a1, char *a2)
{
  v9[0] = a2;
  v10 = 0;
  v4 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
  v5 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
  v6 = a2;
  sub_10035E470(v9, a1, v4, v5, 0x100000000);
  if (!v2)
  {
  }

  return sub_100016290(v9, &unk_100597480, &qword_1004B1798);
}

uint64_t sub_1003668A8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = v3;
  *(v4 + 192) = a2;
  *(v4 + 248) = a1;
  *(v4 + 216) = *v3;
  return _swift_task_switch(sub_1003668F8, 0, 0);
}

uint64_t sub_1003668F8()
{
  v1 = *(v0 + 192);
  if (v1 == 2)
  {
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v17 = *(v0 + 200);
    v18 = *(v0 + 248);
    v19 = qword_100596C98;
    swift_beginAccess();
    *(v0 + 176) = *(v15 + v19);
    v20 = swift_task_alloc();
    v21 = *(v16 + 80);
    *(v20 + 16) = v21;
    v22 = *(v16 + 88);
    *(v20 + 24) = v22;
    *(v20 + 32) = v18;
    *(v20 + 33) = v17;
    *(v20 + 35) = BYTE2(v17);
    *(v20 + 36) = BYTE3(v17);
    *(v20 + 37) = BYTE4(v17);
    *(v20 + 38) = BYTE5(v17);
    v24 = _s17ResponderInstanceCMa(255, v21, v22, v23);

    WitnessTable = swift_getWitnessTable(aM_9, v24);
    *(v0 + 16) = v21;
    *(v0 + 24) = v24;
    *(v0 + 32) = v22;
    *(v0 + 40) = WitnessTable;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(255, v0 + 16);
    sub_10020CB70();
    v26 = type metadata accessor for Dictionary();
    swift_getWitnessTable(&protocol conformance descriptor for [A : B], v26);
    Sequence.first(where:)();

    v13 = *(v0 + 88);
    if (v13)
    {

      v14 = swift_getWitnessTable(aQ_10, v24, v17 >> 16, v17 >> 24);
      goto LABEL_7;
    }
  }

  else if (v1 == 1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 248);
    v5 = qword_100596C90;
    swift_beginAccess();
    *(v0 + 184) = *(v3 + v5);
    v6 = swift_task_alloc();
    v7 = *(v2 + 80);
    *(v6 + 16) = v7;
    v8 = *(v2 + 88);
    *(v6 + 24) = v8;
    *(v6 + 32) = v4;
    v10 = _s17InitiatorInstanceCMa(255, v7, v8, v9);

    v11 = swift_getWitnessTable(byte_1004B0F14, v10);
    *(v0 + 48) = v7;
    *(v0 + 56) = v10;
    *(v0 + 64) = v8;
    *(v0 + 72) = v11;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(255, v0 + 48);
    sub_10020CB70();
    v12 = type metadata accessor for Dictionary();
    swift_getWitnessTable(&protocol conformance descriptor for [A : B], v12);
    Sequence.first(where:)();

    v13 = *(v0 + 136);
    if (v13)
    {

      v14 = swift_getWitnessTable(byte_1004B0F38, v10);
LABEL_7:
      v27 = v14;
      *(v0 + 224) = v13;
      ObjectType = swift_getObjectType();
      v32 = (*(v27 + 112) + **(v27 + 112));
      v29 = swift_task_alloc();
      *(v0 + 232) = v29;
      *v29 = v0;
      v29[1] = sub_100366D5C;

      return v32(ObjectType, v27);
    }
  }

  v31 = *(v0 + 8);

  return v31(0);
}

uint64_t sub_100366D5C(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_100366E5C, 0, 0);
}

uint64_t sub_100366E5C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 240);
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_100366EC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v18[-v10];
  v12 = *(v7 + 64);

  v12(a4, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v19 = a2;
  v15 = swift_modifyAtReferenceWritableKeyPath();
  sub_1001D5218(v14);
  v15(v18, 0);

  return result;
}

double sub_10036708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_100355F78(a1, KeyPath, v5);

  return result;
}

uint64_t sub_100367158(uint64_t *a1, void *a2)
{
  sub_10036728C(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003671F4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10036728C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  swift_unownedRelease();
  return v2;
}

uint64_t sub_100367344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100367380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1003673C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_100367418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100367480()
{
  result = qword_100597298;
  if (!qword_100597298)
  {
    result = swift_getWitnessTable(byte_1004B1534, &type metadata for NANDiscoveryState, v0, v1);
    atomic_store(result, &qword_100597298);
  }

  return result;
}

void *sub_1003674F0(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&qword_10058D610, &qword_1004871C0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003675EC(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&unk_100597450, &qword_1004B16D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_100367684(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&qword_100595370, &qword_1004AF240);
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

void *sub_100367708(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&qword_100597380, &unk_1004B0770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10036777C(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_100367828(char *a1, int64_t a2, char a3)
{
  result = sub_10030E494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10030E598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367868(char *a1, int64_t a2, char a3)
{
  result = sub_10030E5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367888(char *a1, int64_t a2, char a3)
{
  result = sub_10030E6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003678A8(char *a1, int64_t a2, char a3)
{
  result = sub_10030E808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003678C8(void *a1, int64_t a2, char a3)
{
  result = sub_10030E81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003678E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10030E950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367908(char *a1, int64_t a2, char a3)
{
  result = sub_10030E978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367928(char *a1, int64_t a2, char a3)
{
  result = sub_10030E98C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367948(void *a1, int64_t a2, char a3)
{
  result = sub_10030EAB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367968(char *a1, int64_t a2, char a3)
{
  result = sub_10030EBFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367988(void *a1, int64_t a2, char a3)
{
  result = sub_10030ECF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003679A8(char *a1, int64_t a2, char a3)
{
  result = sub_10030EE18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003679C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10030EF30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100367A54(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_10036839C(v7, v4, a1);

      return;
    }
  }

  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_100367D24(v6, v4, a1);
  if (v1)
  {
    swift_willThrow();
  }
}

void *sub_100367BB4(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, a1);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_100368414(v12, v7, a1, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_100367D24(unint64_t *a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v23 = a1;
  v26 = sub_10005DC58(&unk_100597360, &unk_1004B1658);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v25 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v8 = 0;
  v27 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = *(v27[6] + v19);
    sub_10036D334(v27[7] + *(v25 + 72) * v19, v7, type metadata accessor for NANAttribute);
    *v5 = v20;
    sub_10036D334(v7, &v5[*(v26 + 48)], type metadata accessor for NANAttribute);
    sub_100016290(v5, &unk_100597360, &unk_1004B1658);
    sub_10036D24C(v7, type metadata accessor for NANAttribute);
    if ((v20 - 43) >= 2)
    {
      *(v23 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100368AB0(v23, v22, v24, v27);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100367F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = Channel.isDFS.getter(*(*(a3 + 48) + 8 * v16));
    if (result)
    {
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_100368DE4(v5, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_100368DE4(v5, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003680D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v11 + 4) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100368DE4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100368DE4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003681C4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(a3 + 48) + 8 * v11 + 4))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100368DE4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100368DE4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003682B0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100368DE4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100368DE4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10036839C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_100367D24(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_100368414(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_10036849C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100002B30(v17 + 32 * v16, v33);
    sub_100085188(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_100085188(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1003686EC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = a1;
  v47 = *(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v46 = &v42 - v8;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v54 = v7;
  sub_10005DC58(&qword_100596310, &unk_1004B07C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v55 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v45;
  }

  v11 = 0;
  v12 = v55 + 64;
  v43 = a2;
  v44 = a4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v48 = (v10 - 1) & v10;
    v49 = a3;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = a4[7];
    v18 = (a4[6] - v16 + 8 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = v18[4];
    v24 = v18[5];
    v25 = v18[6];
    v26 = v46;
    v52 = *(v47 + 72);
    v53 = v23;
    sub_10036D334(v17 + v52 * v16, v46, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_10036D640(v26, v54, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v27 = v55;
    Hasher.init(_seed:)();
    v50 = v19;
    v28 = v19;
    v29 = v53;
    Hasher._combine(_:)(v28);
    v51 = v22;
    NANClusterChangeEvent.hash(into:)(v56, v20 | (v21 << 8) | (v22 << 16) | (v29 << 24) | (v24 << 32) | (v25 << 40));
    result = Hasher._finalize()();
    v30 = -1 << *(v27 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v30) >> 6;
      v34 = v54;
      while (++v32 != v36 || (v35 & 1) == 0)
      {
        v37 = v32 == v36;
        if (v32 == v36)
        {
          v32 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v32);
        if (v38 != -1)
        {
          v33 = __clz(__rbit64(~v38)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v34 = v54;
LABEL_26:
    *(v12 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v39 = v55;
    v40 = (*(v55 + 48) - v33 + 8 * v33);
    *v40 = v50;
    v40[1] = v20;
    v40[2] = v21;
    v41 = v52;
    v40[3] = v51;
    v40[4] = v29;
    v40[5] = v24;
    v40[6] = v25;
    result = sub_10036D640(v34, *(v39 + 56) + v33 * v41, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    ++*(v39 + 16);
    a3 = v49 - 1;
    if (__OFSUB__(v49, 1))
    {
      goto LABEL_32;
    }

    a4 = v44;
    v10 = v48;
    a2 = v43;
    if (v49 == 1)
    {
      return v55;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v55;
    }

    v15 = v45[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
      v49 = a3;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100368AB0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v34 = &v32 - v9;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v33 = v8;
  sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v14 = result + 64;
  v15 = v33;
  v32 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = v16 | (v13 << 6);
    v20 = a4[7];
    v21 = *(a4[6] + v19);
    v22 = v34;
    v36 = *(v35 + 72);
    sub_10036D334(v20 + v36 * v19, v34, type metadata accessor for NANAttribute);
    sub_10036D640(v22, v15, type metadata accessor for NANAttribute);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(byte_1004B18B8[v21]);
    result = Hasher._finalize()();
    v23 = -1 << *(v11 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      v15 = v33;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    v15 = v33;
LABEL_26:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v11 + 48) + v26) = v21;
    result = sub_10036D640(v15, *(v11 + 56) + v26 * v36, type metadata accessor for NANAttribute);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    if (!a3)
    {
      return v11;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100368DE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&qword_100595318, &qword_1004AF220);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 8 * v16);
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = *(v18 + 5);
    v34 = *(v17 + v16);
    Hasher.init(_seed:)();
    Channel.hash(into:)(v35, v19 | (v20 << 32) | (v21 << 40));
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 8 * v25;
    *v30 = v19;
    *(v30 + 4) = v20;
    *(v30 + 5) = v21;
    *(*(v9 + 56) + v25) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100369030(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_10005DC58(&unk_100597410, &unk_1004B4D50);
      v7 = static _DictionaryStorage.allocate(capacity:)();
      v8 = a2;
      v40 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v36 = a2;
      v37 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v38 = (v9 - 1) & v9;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 6 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        v23 = v17[5];
        v39 = *(v16 + 8 * v15);
        Hasher.init(_seed:)();
        NANClusterChangeEvent.hash(into:)(v41, v18 | (v19 << 8) | (v20 << 16) | (v21 << 24) | (v22 << 32) | (v23 << 40));
        v24 = Hasher._finalize()();
        v25 = -1 << *(v40 + 32);
        v26 = v24 & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
        {
          v29 = 0;
          v30 = (63 - v25) >> 6;
          while (++v27 != v30 || (v29 & 1) == 0)
          {
            v31 = v27 == v30;
            if (v27 == v30)
            {
              v27 = 0;
            }

            v29 |= v31;
            v32 = *(v11 + 8 * v27);
            if (v32 != -1)
            {
              v28 = __clz(__rbit64(~v32)) + (v27 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v11 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v33 = (*(v40 + 48) + 6 * v28);
        *v33 = v18;
        v33[1] = v19;
        v33[2] = v20;
        v33[3] = v21;
        v33[4] = v22;
        v33[5] = v23;
        *(*(v40 + 56) + 8 * v28) = v39;
        ++*(v40 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v37;
        v9 = v38;
        v8 = v36;
        if (!v5)
        {
          return;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v38 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

void *sub_1003692DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a1;
  v43 = *(type metadata accessor for NANPeer(0) - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v42 = &v39 - v8;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v7;
  sub_10005DC58(&qword_100596300, &unk_1004B0780);
  result = static _DictionaryStorage.allocate(capacity:)();
  v50 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v41;
  }

  v11 = 0;
  v12 = v50 + 8;
  v39 = a2;
  v40 = a4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v44 = (v10 - 1) & v10;
    v45 = a3;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = a4[7];
    v18 = (a4[6] + 6 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = v18[4];
    v24 = v18[5];
    v25 = v42;
    v48 = *(v43 + 72);
    sub_10036D334(v17 + v48 * v16, v42, type metadata accessor for NANPeer);
    sub_10036D640(v25, v49, type metadata accessor for NANPeer);
    v26 = v50;
    Hasher.init(_seed:)();
    v46 = v19;
    v47 = v22;
    NANClusterChangeEvent.hash(into:)(v51, v19 | (v20 << 8) | (v21 << 16) | (v22 << 24) | (v23 << 32) | (v24 << 40));
    v27 = Hasher._finalize()();
    v28 = -1 << *(v26 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~v12[v29 >> 6]) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      result = v49;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = v12[v30];
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~v12[v29 >> 6])) | v29 & 0x7FFFFFFFFFFFFFC0;
    result = v49;
LABEL_26:
    *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = v50;
    v37 = (v50[6] + 6 * v31);
    v38 = v47;
    *v37 = v46;
    v37[1] = v20;
    v37[2] = v21;
    v37[3] = v38;
    v37[4] = v23;
    v37[5] = v24;
    result = sub_10036D640(result, v36[7] + v31 * v48, type metadata accessor for NANPeer);
    ++v36[2];
    a3 = v45 - 1;
    if (__OFSUB__(v45, 1))
    {
      goto LABEL_32;
    }

    a2 = v39;
    a4 = v40;
    v10 = v44;
    if (v45 == 1)
    {
      return v50;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v50;
    }

    v15 = v41[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
      v45 = a3;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100369678(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005DC58(&unk_1005974F0, &qword_1004B0838);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  v34 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 17);
    v36 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();
    String.lowercased()();

    String.hash(into:)();

    String.hash(into:)();

    Hasher._combine(_:)(v22);
    result = Hasher._finalize()();
    v9 = v34;
    v23 = -1 << *(v34 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v34 + 48) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(v31 + 17) = v22;
    *(*(v34 + 56) + 8 * v26) = v36;
    ++*(v34 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_100369940(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100315F54(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = byte_1004B18B8[v11];
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= byte_1004B18B8[v15])
          {
            break;
          }

          v14[1] = v15;
          *v14-- = v11;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_100369A90(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100369A90(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_89:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10036A00C((*a3 + *v78), (*a3 + *v80), (*a3 + v81), v6);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_113;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_114;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_115;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = byte_1004B18B8[*(*a3 + v7)];
      v11 = *(*a3 + v7);
      v12 = byte_1004B18B8[*(*a3 + v9)];
      v13 = v9 + 2;
      if (v5 <= v9 + 2)
      {
        v7 = v9 + 2;
      }

      else
      {
        v7 = v5;
      }

      while (v7 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = (v10 < v12) ^ (byte_1004B18B8[v14] >= byte_1004B18B8[v11]);
        ++v13;
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      if (v10 < v12)
      {
        if (v7 < v9)
        {
          goto LABEL_118;
        }

        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v18;
            }
          }

          while (++v17 < v16--);
          v5 = a3[1];
        }
      }
    }

    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_119;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_10011707C((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_10036A00C((*a3 + v73), (*a3 + *&v8[16 * v35 + 32]), (*a3 + v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10016AD7C(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_10016ACF0(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_89;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_31:
  v24 = *(v21 + v7);
  v25 = byte_1004B18B8[v24];
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= byte_1004B18B8[v28])
    {
LABEL_30:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_10036A00C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (byte_1004B18B8[v18] < byte_1004B18B8[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (byte_1004B18B8[*v6] >= byte_1004B18B8[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10036A224(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = 0;
    if (v1 && -v1 % v1)
    {
      v2 = (-v1 % v1);
      do
      {
        swift_stdlib_random();
      }

      while (v2);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10036A2C0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_10005DC58(&unk_100597360, &unk_1004B1658) + 48);
  v5 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
  v6 = *a1;
  result = sub_10036D334(&a1[v4], &a2[*(v5 + 48)], type metadata accessor for NANAttribute);
  *a2 = v6;
  return result;
}

void sub_10036A344(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10036CDE8();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10036CDE8();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10036A544@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_10036A604(uint64_t a1@<X8>)
{
  v38 = sub_10005DC58(&unk_100597360, &unk_1004B1658);
  v3 = *(v38 - 8);
  __chkstk_darwin();
  v36 = &v35 - v4;
  v37 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597378, &unk_1004B1670);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v11 = &v35 - v9;
  v13 = *v1;
  v12 = v1[1];
  v15 = v1[2];
  v14 = v1[3];
  v16 = v1[4];
  v39 = v15;
  v40 = a1;
  if (v16)
  {
    v17 = v14;
LABEL_10:
    v21 = (v16 - 1) & v16;
    v22 = __clz(__rbit64(v16)) | (v17 << 6);
    v23 = *(*(v13 + 48) + v22);
    sub_10036D334(*(v13 + 56) + *(v37 + 72) * v22, v6, type metadata accessor for NANAttribute);
    v24 = v38;
    v25 = *(v38 + 48);
    *v11 = v23;
    v26 = v6;
    v27 = v24;
    sub_10036D640(v26, &v11[v25], type metadata accessor for NANAttribute);
    (*(v3 + 56))(v11, 0, 1, v27);
    v20 = v17;
LABEL_11:
    *v1 = v13;
    v1[1] = v12;
    v1[2] = v39;
    v1[3] = v20;
    v1[4] = v21;
    v28 = v1[5];
    sub_10001CEA8(v11, v8, &qword_100597378, &unk_1004B1670);
    v29 = 1;
    v30 = (*(v3 + 48))(v8, 1, v27);
    v31 = v40;
    if (v30 != 1)
    {
      v32 = v8;
      v33 = v36;
      sub_10001CEA8(v32, v36, &unk_100597360, &unk_1004B1658);
      v28(v33);
      sub_100016290(v33, &unk_100597360, &unk_1004B1658);
      v29 = 0;
    }

    v34 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    (*(*(v34 - 8) + 56))(v31, v29, 1, v34);
  }

  else
  {
    v18 = (v15 + 64) >> 6;
    if (v18 <= v14 + 1)
    {
      v19 = v14 + 1;
    }

    else
    {
      v19 = (v15 + 64) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v17 >= v18)
      {
        v27 = v38;
        (*(v3 + 56))(&v35 - v9, 1, 1, v38, v10);
        v21 = 0;
        goto LABEL_11;
      }

      v16 = *(v12 + 8 * v17);
      ++v14;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

char *sub_10036A9C4(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result + 32;
  while (1)
  {
    if (v2 == v1)
    {
      return _swiftEmptyArrayStorage;
    }

    if (v1 >= v2)
    {
      break;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = v3[v1++];
    if (v5 >= 6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003678A8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        result = sub_1003678A8((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *(&_swiftEmptyArrayStorage[4] + v7) = v5;
      v1 = v4;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

double sub_10036AAC0(void *a1)
{
  swift_unownedRetainStrong();
  sub_1003741C0();

  return result;
}

BOOL sub_10036AC48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  return sub_1003700B4(v1, v2) && sub_1003700FC(v1, v2) != 0;
}

uint64_t sub_10036AD28(uint64_t a1)
{
  *(v1 + 16) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v1 + qword_100596DC0) = 0;
  *(v1 + qword_100596DC8) = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t sub_10036AD98(uint64_t a1)
{
  v3 = qword_100596E50;
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + qword_100596E58) = 256;
  *(v1 + qword_100596E60) = a1;
  swift_unownedRetain();
  return v1;
}

void *sub_10036AE30(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  __chkstk_darwin();
  v7 = v15 - v6 + 16;
  Logger.init(subsystem:category:)();
  *(v2 + qword_100596EF8) = 0;
  *(v2 + qword_100596F00) = &_swiftEmptyDictionarySingleton;
  *(v2 + qword_100596F08) = 0;
  *(v2 + qword_100596F10) = a1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  sub_1003EB210(v7);

  v8 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = *(v4 + 80);
  v10[3] = *(v4 + 88);
  v10[4] = v9;
  v11 = qword_100596EF8;
  swift_beginAccess();
  v12 = v8;
  ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v12, (v2 + v11), sub_10036D240, v10, v5, v15);
  swift_endAccess();

  sub_100016290(v7, &qword_100594D50, &unk_1004AEBF0);

  return v2;
}

void *sub_10036B088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NANDiscoveryEngine.PeerChannelLearner(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_10036AE30(a1);
}

uint64_t *sub_10036B0CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin();
  v70 = &v69 - v7;
  v69 = type metadata accessor for UUID();
  v8 = *(v69 - 8);
  __chkstk_darwin();
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v11 = qword_100596C80;
  v13 = _s8InstanceCMa(255, v5, v4, v12);
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v13);
  v75 = v5;
  v76 = v13;
  v77 = v4;
  v78 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v75);
  *(v2 + v11) = Dictionary.init()();
  v15 = qword_100596C88;
  v17 = _s8InstanceCMa_0(255, v5, v4, v16);
  v18 = swift_getWitnessTable("]\r\n", v17);
  v75 = v5;
  v76 = v17;
  v77 = v4;
  v78 = v18;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v75);
  *(v2 + v15) = Dictionary.init()();
  v19 = qword_100596C90;
  v21 = _s17InitiatorInstanceCMa(255, v5, v4, v20);
  v22 = swift_getWitnessTable(byte_1004B0F14, v21);
  v75 = v5;
  v76 = v21;
  v77 = v4;
  v78 = v22;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v75);
  sub_10020CB70();
  *(v2 + v19) = Dictionary.init()();
  v23 = qword_100596C98;
  v25 = _s17ResponderInstanceCMa(255, v5, v4, v24);
  v26 = swift_getWitnessTable(aM_9, v25);
  v75 = v5;
  v76 = v25;
  v77 = v4;
  v78 = v26;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v75);
  *(v2 + v23) = Dictionary.init()();
  v27 = qword_10059B9C8;
  v29 = _s17InitiatorInstanceCMa_0(255, v5, v4, v28);
  v31 = _s17ResponderInstanceCMa_0(255, v5, v4, v30);
  type metadata accessor for Either(0, v29, v31, v32);
  sub_1002CAFC4();
  *(v2 + v27) = Dictionary.init()();
  v33 = qword_100596CA0;
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink(0, v5, v4, v34);
  *(v2 + v33) = Dictionary.init()();
  v35 = qword_100596CA8;
  *(v2 + v35) = *NANDiscoveryWindowIndex.first.unsafeMutableAddressor();
  *(v2 + qword_100596CB0) = 0;
  *(v2 + qword_100596CB8) = 0;
  *(v2 + qword_100596CC0) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  variable initialization expression of AWDLPeer.lastUpdated();
  variable initialization expression of AWDLPeer.lastUpdated();
  v36 = (v2 + qword_100596CE0);
  v37 = sub_10004D6CC(&off_100572888);
  *v36 = &_swiftEmptySetSingleton;
  v36[1] = v37;
  v38 = (v2 + qword_100596CE8);
  v39 = sub_10004D6CC(&off_1005728B0);
  *v38 = &_swiftEmptySetSingleton;
  v38[1] = v39;
  v40 = *(*v2 + 256);
  v41 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
  (*(*(v41 - 8) + 56))(v2 + v40, 1, 1, v41);
  v42 = *(*v2 + 264);
  v43 = type metadata accessor for PriorityRadioConstraint(0);
  (*(*(v43 - 8) + 56))(v2 + v42, 1, 1, v43);
  v44 = v2 + *(*v2 + 272);
  UUID.init()();
  *(v44 + *(sub_10005DC58(&qword_1005973B0, &qword_1004B1690) + 36)) = 6;
  (*(v8 + 32))(v44, v10, v69);
  *(v2 + *(*v2 + 312)) = 0;
  *(v2 + *(*v2 + 304)) = a1;
  type metadata accessor for NANDiscoveryEngine.StateMachine(0, v5, v4, v45);
  swift_unownedRetain();
  swift_allocObject();

  v47 = sub_10036AD28(v46);

  *(v2 + qword_100596CF0) = v47;
  type metadata accessor for NANDiscoveryEngine.BeaconScheduler(0, v5, v4, v48);
  swift_allocObject();
  *(v2 + qword_100596CF8) = sub_10036AD98(a1);
  type metadata accessor for NANDiscoveryEngine.PeerChannelLearner(0, v5, v4, v49);

  v54 = sub_10036B088(v50, v51, v52, v53);

  *(v2 + qword_100596D00) = v54;
  type metadata accessor for LowLatencyInternetRequesterPolicy(0, v5, v4, v55);

  v57 = sub_100408C58(v56);

  *(v2 + *(*v2 + 280)) = v57;
  type metadata accessor for LowLatencyInternetProviderPolicy(0, v5, v4, v58);

  v60 = sub_100408E0C(v59);

  *(v2 + *(*v2 + 288)) = v60;
  type metadata accessor for NANFollowUpTransmitter(0, v5, v4, v61);

  v63 = sub_100373D68(v62);

  *(v2 + *(*v2 + 296)) = v63;
  v64 = AssociatedConformanceWitness;
  v65 = *(AssociatedConformanceWitness + 104);
  v66 = swift_checkMetadataState();
  v67 = v70;
  v65(v66, v64);
  (*(v73 + 32))(v2 + *(*v2 + 248), v67, v74);
  sub_10033D51C();
  return v2;
}

void sub_10036B958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[4] = a1;
  v8[5] = _swiftEmptyArrayStorage;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v7 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v8);
  sub_10033AE2C(a2, v7);
}

uint64_t sub_10036B9B4(uint64_t a1)
{
  sub_10027B614();
  dispatch thunk of SetAlgebra.init()();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = sub_10036C4CC();
    for (i = 0; i != v2; ++i)
    {
      v10 = *(v3 + 8 * i);
      v6 = v10;
      v11 = v12;

      ExtendableOptionSet.formIntersection(_:)(&v10, &type metadata for NANAttribute.DeviceCapabilityExtension.Kind, v4);
      v7 = *(v11 + 16);
      if (v7 == *(v6 + 16))
      {
        if (!v7 || v11 == v6)
        {
LABEL_11:

          goto LABEL_4;
        }

        v8 = 32;
        while (*(v11 + v8) == *(v6 + v8))
        {
          ++v8;
          if (!--v7)
          {
            goto LABEL_11;
          }
        }
      }

      v11 = v6;
      ExtendableOptionSet.formUnion(_:)(&v11, &type metadata for NANAttribute.DeviceCapabilityExtension, v4);
LABEL_4:
    }
  }

  return v12;
}

void sub_10036BAF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597370, &qword_1004B1668);
  __chkstk_darwin();
  v14 = &v35 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v36 = a1;
  v37 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v38 = v16;
  v39 = 0;
  v40 = v19 & v17;
  v41 = a2;
  v42 = a3;

  v35 = a3;

  while (1)
  {
    sub_10036A604(v14);
    v20 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
    {
      sub_1000E290C(v36);

      return;
    }

    v21 = *v14;
    sub_10036D640(&v14[*(v20 + 48)], v12, type metadata accessor for NANAttribute);
    v22 = *a5;
    v24 = sub_1003E08F4(v21);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (a4)
      {
        v31 = *a5;
        if ((v23 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_10046BF70();
        v31 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_10036C468(v12, v31[7] + *(v10 + 72) * v24);
      a4 = 1;
    }

    else
    {
      sub_1003118E4(v27, a4 & 1);
      v29 = sub_1003E08F4(v21);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_21;
      }

      v24 = v29;
      v31 = *a5;
      if (v28)
      {
        goto LABEL_5;
      }

LABEL_14:
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + v24) = v21;
      sub_10036D640(v12, v31[7] + *(v10 + 72) * v24, type metadata accessor for NANAttribute);
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v31[2] = v34;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t sub_10036BE24(unint64_t result, char a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    LOBYTE(i) = a2;
    v6 = result;
    v7 = *(result + 38);
    v8 = *(result + 36);
    v9 = *(result + 32);
    v10 = *a3;
    v39 = *(result + 37);
    v11 = (v39 << 40) | (v8 << 32);
    result = sub_1003E09BC(v11 | v9);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_26;
    }

    LOBYTE(v3) = v12;
    if (v10[3] < v16)
    {
      sub_100311C4C(v16, i & 1);
      result = sub_1003E09BC(v11 | v9);
      if ((v3 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((i & 1) == 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
LABEL_7:
      v18 = *a3;
      if (v3)
      {
        v19 = v18[7];
        v20 = *(v19 + result);
        if (v20 <= v7)
        {
          LOBYTE(v20) = v7;
        }

        *(v19 + result) = v20;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      else
      {
        v18[(result >> 6) + 8] |= 1 << result;
        v21 = v18[6] + 8 * result;
        *v21 = v9;
        *(v21 + 4) = v8;
        *(v21 + 5) = v39;
        *(v18[7] + result) = v7;
        v22 = v18[2];
        v15 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v18[2] = v23;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      for (i = (v6 + 46); ; i += 8)
      {
        LODWORD(v8) = *i;
        v9 = *(i - 1);
        v26 = *(i - 2);
        v4 = *(i - 6);
        v27 = *a3;
        v7 = (v9 << 40) | (v26 << 32);
        result = sub_1003E09BC(v7 | v4);
        v29 = v27[2];
        v30 = (v28 & 1) == 0;
        v15 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v15)
        {
          break;
        }

        v6 = v28;
        if (v27[3] < v31)
        {
          sub_100311C4C(v31, 1);
          result = sub_1003E09BC(v7 | v4);
          if ((v6 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        v33 = *a3;
        if (v6)
        {
          v24 = v33[7];
          v25 = *(v24 + result);
          if (v25 <= v8)
          {
            LOBYTE(v25) = v8;
          }

          *(v24 + result) = v25;
        }

        else
        {
          v33[(result >> 6) + 8] |= 1 << result;
          v34 = v33[6] + 8 * result;
          *v34 = v4;
          *(v34 + 4) = v26;
          *(v34 + 5) = v9;
          *(v33[7] + result) = v8;
          v35 = v33[2];
          v15 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v15)
          {
            goto LABEL_27;
          }

          v33[2] = v36;
        }

        if (!--v3)
        {
          return result;
        }
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v37 = v7;
      v38 = result;
      sub_10046C1A4();
      result = v38;
      v7 = v37;
    }
  }

  return result;
}

unint64_t sub_10036C0A8(unint64_t result, char a2, void *a3)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v34 = *(result + 38);
  v7 = *(result + 36);
  v8 = *(result + 32);
  v9 = *a3;
  v10 = *(result + 37);
  v11 = (v10 << 40) | (v7 << 32);
  result = sub_1003E09BC(v11 | v8);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    goto LABEL_21;
  }

  LOBYTE(v3) = v12;
  if (v9[3] >= v16)
  {
    goto LABEL_6;
  }

  sub_100311C4C(v16, i & 1);
  result = sub_1003E09BC(v11 | v8);
  if ((v3 & 1) != (v17 & 1))
  {
LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_6:
    if ((i & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  while (1)
  {
    v3 = v4 - 1;
    if (v4 == 1)
    {
      return result;
    }

    for (i = (v6 + 46); ; i += 8)
    {
      LODWORD(v8) = *i;
      v7 = *(i - 1);
      v22 = *(i - 2);
      v4 = *(i - 6);
      v23 = *a3;
      v10 = (v7 << 40) | (v22 << 32);
      result = sub_1003E09BC(v10 | v4);
      v25 = v23[2];
      v26 = (v24 & 1) == 0;
      v15 = __OFADD__(v25, v26);
      v27 = v25 + v26;
      if (v15)
      {
        break;
      }

      v6 = v24;
      if (v23[3] < v27)
      {
        sub_100311C4C(v27, 1);
        result = sub_1003E09BC(v10 | v4);
        if ((v6 & 1) != (v28 & 1))
        {
          goto LABEL_5;
        }
      }

      if ((v6 & 1) == 0)
      {
        v29 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        v30 = v29[6] + 8 * result;
        *v30 = v4;
        *(v30 + 4) = v22;
        *(v30 + 5) = v7;
        *(v29[7] + result) = v8;
        v31 = v29[2];
        v15 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v15)
        {
          goto LABEL_20;
        }

        v29[2] = v32;
      }

      if (!--v3)
      {
        return result;
      }
    }

LABEL_21:
    while (1)
    {
      __break(1u);
LABEL_22:
      v33 = result;
      sub_10046C1A4();
      result = v33;
      if (v3)
      {
        break;
      }

LABEL_8:
      v18 = *a3;
      *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
      v19 = v18[6] + 8 * result;
      *v19 = v8;
      *(v19 + 4) = v7;
      *(v19 + 5) = v10;
      *(v18[7] + result) = v34;
      v20 = v18[2];
      v15 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (!v15)
      {
        v18[2] = v21;
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
    }
  }
}

void sub_10036C320(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v10) = 0;
  v7 = [objc_allocWithZone(WiFiAwareDatapathConfiguration) initWithDiscoveryResult:a4 serviceType:DNSRecords.Identifier.serviceType.getter(a1 passphrase:a2 pmk:a3 & 0xFF01) pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:0 pairingMethod:0 pairingCachingEnabled:0 pairSetupServiceSpecificInfo:1 connectionMode:v10 pairingMetadata:{0, 0, 0}];
  LOBYTE(v11) = 1;
  v8 = sub_1003653DC(v7, a5, 0, 0, 0x100000000uLL, sub_10035E470);

  if (!v5)
  {
    v9 = *((swift_isaMask & *v8) + 0x68);
    swift_beginAccess();
    sub_1003336F4(v8 + v9, &v11);

    sub_100333750(&v11);
  }
}

uint64_t sub_10036C468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10036C4CC()
{
  result = qword_100597388;
  if (!qword_100597388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension, &type metadata for NANAttribute.DeviceCapabilityExtension, v0, v1);
    atomic_store(result, &qword_100597388);
  }

  return result;
}

uint64_t sub_10036C540(_WORD *a1, void *a2)
{
  v3 = *a2 + qword_10059B890;
  swift_beginAccess();
  result = type metadata accessor for NANPublish.Configuration(0);
  *a1 |= *(v3 + *(result + 100));
  return result;
}

uint64_t sub_10036C5BC(void *a1)
{
  v1 = *a1 + qword_10059B890;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for NANPublish.Configuration(0) + 104));
}

unint64_t sub_10036C644()
{
  result = qword_1005973C0;
  if (!qword_1005973C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_1005973B0, &qword_1004B1690);
    v4[0] = sub_10036C6C8();
    result = swift_getWitnessTable(aI_18, v3, v4);
    atomic_store(result, &qword_1005973C0);
  }

  return result;
}

unint64_t sub_10036C6C8()
{
  result = qword_1005973C8;
  if (!qword_1005973C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100596DA8, &qword_1004B11F0);
    v4[0] = sub_10036C74C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_1005973C8);
  }

  return result;
}

unint64_t sub_10036C74C()
{
  result = qword_1005973D0;
  if (!qword_1005973D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANQualityOfService, &type metadata for NANQualityOfService, v0, v1);
    atomic_store(result, &qword_1005973D0);
  }

  return result;
}

uint64_t sub_10036C8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036C960(uint64_t result)
{
  if (result)
  {
    return swift_unownedRelease();
  }

  return result;
}

uint64_t sub_10036C9C4(void *a1)
{
  v1 = *a1 + qword_10059BAE8;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for NANSubscribe.Configuration(0) + 60));
}

uint64_t sub_10036CA28(void *a1)
{
  v1 = *a1 + qword_10059B890;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for NANPublish.Configuration(0) + 80));
}

unint64_t sub_10036CA8C()
{
  result = qword_100597430;
  if (!qword_100597430)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100596D90, &qword_1004B11E8);
    v4[0] = sub_10036CB10();
    result = swift_getWitnessTable(aI_18, v3, v4);
    atomic_store(result, &qword_100597430);
  }

  return result;
}

unint64_t sub_10036CB10()
{
  result = qword_100597438;
  if (!qword_100597438)
  {
    result = swift_getWitnessTable(asc_1004B14F4, &type metadata for NANDiscoveryState, v0, v1);
    atomic_store(result, &qword_100597438);
  }

  return result;
}

uint64_t sub_10036CC58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((result & 0xFF0000) != 0xE0000)
  {
    return sub_1001AD708(a2, a3, a4, a5);
  }

  return result;
}

void sub_10036CC7C()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100364DCC(v3, v4, v0 + v2, v5);
}

void sub_10036CD28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_100355C5C(v6, v7, v0 + v5, v8, v1, v2, v3);
}

unint64_t sub_10036CDE8()
{
  result = qword_1005974C0;
  if (!qword_1005974C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005974C0);
  }

  return result;
}

uint64_t sub_10036CE34(uint64_t a1)
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
  v11[1] = sub_1002CB380;

  return sub_10035D97C(a1, v4, v5, v6, v7, v8, v9, v10);
}

double sub_10036CF6C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

uint64_t sub_10036CFC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10036D024(uint64_t a1)
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
  v11[1] = sub_10030BDD0;

  return sub_1003583D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

BOOL sub_10036D110(void *a1)
{
  v1 = *a1 + qword_10059BAE8;
  swift_beginAccess();
  return (*(v1 + *(type metadata accessor for NANSubscribe.Configuration(0) + 80)) & 1) == 0;
}

BOOL sub_10036D17C(void *a1)
{
  v1 = *a1 + qword_10059B890;
  swift_beginAccess();
  return (*(v1 + *(type metadata accessor for NANPublish.Configuration(0) + 116)) & 1) == 0;
}

uint64_t sub_10036D24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10036D334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10036D434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10036D49C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double sub_10036D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10036D56C()
{
  result = qword_100597568;
  if (!qword_100597568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Channel, &type metadata for Channel, v0, v1);
    atomic_store(result, &qword_100597568);
  }

  return result;
}

uint64_t sub_10036D5EC@<X0>(uint64_t *a2@<X8>)
{
  result = swift_unownedRetainStrong();
  *a2 = result;
  return result;
}

void *sub_10036D618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + qword_10059BA28;
  v3 = *(v2 + 4);
  *a2 = *v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_10036D640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10036D72C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_10036D7F0(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DispatchTimeInterval();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10036D924()
{
  swift_unownedRelease();
  v1 = qword_100597620;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_10059BA00;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_100597628;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + qword_100597630, v6);
  return v0;
}

uint64_t sub_10036DA3C()
{
  sub_10036D924();

  return swift_deallocClassInstance();
}

uint64_t sub_10036DAAC(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10036DB68(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  (*(v3 + 64))(a1, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 56))(&v12, AssociatedTypeWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v12 | (BYTE2(v12) << 16) | (*(&v12 + 3) << 24);
}

BOOL sub_10036DCD0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin();
  v8 = &v13[-1] - v7;
  (*(v3 + 64))(a1, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v10 = v14;
  if (v14 != 1)
  {
    sub_100016290(v13, &qword_1005914A0, &qword_100499040);
  }

  return v10 != 1;
}

uint64_t sub_10036DE50(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a3;
  v60 = a4;
  v58 = a2;
  LODWORD(v57) = a1;
  v13 = *(*v8 + 88);
  v55 = *(*v8 + 80);
  v61 = v13;
  v14 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, v55, v13, a4);
  v52 = type metadata accessor for Optional();
  v51 = *(v52 - 8);
  __chkstk_darwin();
  v62 = &v50 - v15;
  type metadata accessor for DispatchTime();
  __chkstk_darwin();
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v50 - v19;
  v64 = v14;
  v67 = *(v14 - 8);
  __chkstk_darwin();
  v69 = a5;
  v70 = &v50 - v21;
  v22 = a5 << 8;
  v68 = a6;
  v63 = a7;
  v65 = (a7 | ((a6 | (a5 << 8)) << 8));
  sub_1003738C8(a8, v18);
  v23 = type metadata accessor for NANIdentityKey(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v18, 1, v23);
  v56 = v8;
  v53 = v20;
  if (v26 == 1)
  {
    (*(v24 + 56))(v20, 1, 1, v23);
    if (v25(v18, 1, v23) != 1)
    {
      sub_100016290(v18, &unk_100595C50, &unk_1004AFD20);
    }
  }

  else
  {
    sub_100373938(v18, v20, type metadata accessor for NANIdentityKey);
    (*(v24 + 56))(v20, 0, 1, v23);
  }

  v66 = HIWORD(v22);
  v27 = v22 >> 40;
  v28 = HIDWORD(v22);
  v29 = v22 >> 24;
  v30 = v22 >> 16;
  type metadata accessor for P2PTimer(0);
  v31 = v54;
  variable initialization expression of AWDLPeer.lastUpdated();
  v32 = v60;

  v34 = v58;
  v33 = v59;
  sub_10000AB0C(v58, v59);
  v35 = v61;
  v36 = v70;
  v37 = v33;
  v38 = v55;
  sub_100370764(v57, v34, v37, v32, v53, 0, v31, v70, v55, v61);
  v39 = v67;
  v40 = v62;
  v41 = v64;
  (*(v67 + 16))(v62, v36, v64);
  (*(v39 + 56))(v40, 0, 1, v41);
  v42 = v63;
  v71 = v63;
  v72 = v68;
  v73 = v69;
  v57 = v30;
  v58 = v29;
  v74 = v30;
  v75 = v29;
  v59 = v28;
  v60 = v27;
  v76 = v28;
  v77 = v27;
  v78 = v66;
  swift_beginAccess();
  v44 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v38, v35, v43);
  swift_getWitnessTable(byte_1004B1B38, v44);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v48 = sub_100371384(v65, v45, v46, v47);
  if (v48 == 2)
  {
    v71 = v42;
    v72 = v68;
    v73 = v69;
    v74 = v57;
    v75 = v58;
    v76 = v59;
    v77 = v60;
    v78 = v66;
    swift_beginAccess();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    (*(v51 + 8))(v40, v52);
    return (*(v39 + 8))(v70, v41);
  }

  else
  {
    if (v48)
    {
      sub_1003718E8(v65);
    }

    return (*(v67 + 8))(v70, v41);
  }
}

void sub_10036E438(void (*a1)(uint64_t), char *a2, uint64_t a3, uint64_t a4)
{
  v91 = a2;
  v92 = a1;
  v8 = type metadata accessor for Logger();
  v88 = *(v8 - 8);
  v89 = v8;
  __chkstk_darwin();
  v96 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v74 - v11;
  v12 = *(a4 + 8);
  v13 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = AssociatedTypeWitness;
  v15 = swift_getAssociatedTypeWitness();
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin();
  v77 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v74 - v17;
  v87 = type metadata accessor for NANSubscribe.Configuration(0);
  __chkstk_darwin();
  v79 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v74 - v19;
  v93 = v13;
  v21 = swift_getAssociatedTypeWitness();
  v95 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v26 = &v74 - v25;
  v27 = *(v12 + 24);
  v90 = v4;
  v97 = a3;
  v94 = v12;
  v27(a3, v12, v24);
  sub_10040CBA8();

  if (v5)
  {
    return;
  }

  v74 = v27;
  v28 = v23;
  v76 = v21;
  v29 = v93;
  v30 = *(v93 + 64);
  v75 = v26;
  v31 = v90;
  v32 = v30(v97, v93);
  v92(v32);
  v92 = 0;
  v30(v97, v29);
  v46 = v76;
  if (!swift_dynamicCast())
  {
    v44 = v97;
    v57 = v31;
    v58 = v81;
    if (!swift_dynamicCast())
    {
      sub_10000B02C();
      v68 = swift_allocError();
      *v69 = xmmword_100481800;
      *(v69 + 16) = 1;
      v92 = v68;
      swift_willThrow();
      (*(v95 + 8))(v28, v46);
      goto LABEL_3;
    }

    v91 = v28;
    v59 = v78;
    sub_100373938(v58, v78, type metadata accessor for NANPublish.Configuration);
    v60 = v74(v44, v94);
    v61 = *(*v60 + 96);
    swift_beginAccess();
    v62 = v85;
    v63 = v60 + v61;
    v64 = v77;
    v65 = v86;
    (*(v85 + 16))(v77, v63, v86);

    v66 = swift_getAssociatedConformanceWitness();
    v67 = v92;
    (*(v66 + 232))(v59, v65, v66);
    v92 = v67;
    if (v67)
    {
      (*(v62 + 8))(v64, v65);
      sub_1003739EC(v59, type metadata accessor for NANPublish.Configuration);
      (*(v95 + 8))(v91, v76);
      goto LABEL_3;
    }

    (*(v62 + 8))(v64, v65);
    sub_1003739EC(v59, type metadata accessor for NANPublish.Configuration);
    v70 = v95;
    v71 = v75;
    v28 = v91;
LABEL_17:
    v72 = *(v70 + 8);
    v73 = v76;
    v72(v71, v76);
    v72(v28, v73);
    return;
  }

  v47 = v20;
  v48 = v79;
  sub_100373938(v47, v79, type metadata accessor for NANSubscribe.Configuration);
  v44 = v97;
  v49 = v74(v97, v94);
  v50 = *(*v49 + 96);
  swift_beginAccess();
  v51 = v85;
  v52 = v49 + v50;
  v53 = v80;
  v54 = v86;
  (*(v85 + 16))(v80, v52, v86);

  v55 = swift_getAssociatedConformanceWitness();
  v56 = v92;
  (*(v55 + 224))(v48, v54, v55);
  v92 = v56;
  if (!v56)
  {
    (*(v51 + 8))(v53, v54);
    sub_1003739EC(v48, type metadata accessor for NANSubscribe.Configuration);
    v70 = v95;
    v71 = v75;
    goto LABEL_17;
  }

  v57 = v31;
  (*(v51 + 8))(v53, v54);
  sub_1003739EC(v48, type metadata accessor for NANSubscribe.Configuration);
  (*(v95 + 8))(v28, v76);
  v29 = v93;
LABEL_3:
  v99[3] = v57;
  v33 = v96;
  (*(*(v29 + 8) + 8))(v44);
  swift_unknownObjectRetain();
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v98 = v57;
    v99[0] = v38;
    *v36 = 136315394;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = sub_100002320(v39, v41, v99);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 14) = v43;
    *v37 = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s failed to update its configuration because of error %@", v36, 0x16u);
    sub_100016290(v37, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v38);

    v44 = v97;

    (*(v88 + 8))(v96, v89);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v88 + 8))(v33, v89);
  }

  v45 = v75;
  (*(v94 + 48))(v75, v44);
  swift_willThrow();
  (*(v95 + 8))(v45, v76);
}

uint64_t sub_10036EEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = *v4;
  v6 = *(v171 + 80);
  v172 = v4;
  v166 = *(v171 + 88);
  v167 = v6;
  v7 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, v6, v166, a4);
  v170 = type metadata accessor for Optional();
  v168.i64[0] = *(v170 - 8);
  __chkstk_darwin();
  v161 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = &v148 - v9;
  __chkstk_darwin();
  v163 = &v148 - v10;
  __chkstk_darwin();
  v12 = &v148 - v11;
  __chkstk_darwin();
  v14 = &v148 - v13;
  v169 = *(v7 - 8);
  __chkstk_darwin();
  v164.i64[0] = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v148 - v16;
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v148 - v19;
  __chkstk_darwin();
  v22 = &v148 - v21;
  __chkstk_darwin();
  v24 = &v148 - v23;
  sub_1000133C4(a1, &v148 - v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_1000133C4(v24, v20);
    if (*v20 == 1)
    {
      swift_beginAccess();
      v28 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v167, v166, v27);
      swift_getWitnessTable(byte_1004B1B38, v28);
      type metadata accessor for Dictionary();
      Dictionary.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      swift_beginAccess();
      Dictionary.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      sub_100370840();
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_23:
    sub_1000133C4(a1, v18);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v56 = 136315394;
      v57 = _typeName(_:qualified:)();
      v59 = sub_100002320(v57, v58, v179);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v60 = DriverEvent.shortDescription.getter();
      v62 = v61;
      sub_1003739EC(v18, type metadata accessor for DriverEvent);
      v63 = sub_100002320(v60, v62, v179);

      *(v56 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s unable to handle event: %s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1003739EC(v18, type metadata accessor for DriverEvent);
    }

    return sub_1003739EC(v24, type metadata accessor for DriverEvent);
  }

  sub_1000133C4(v24, v22);
  memcpy(v178, v22, 0x16AuLL);
  memcpy(v179, v22, 0x16AuLL);
  v26 = sub_100185198(v179);
  v152 = v7;
  if (v26 > 11)
  {
    if (v26 == 12)
    {
LABEL_32:
      NANBitmap.Channel.operatingClass.getter();
      sub_100370F54(*v93);
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    if (v26 != 14)
    {
      goto LABEL_22;
    }

    v151 = v24;
    NANBitmap.Channel.operatingClass.getter();
    v165 = *v29;
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    v33 = v29[4];
    v34 = v29[5];
    v35 = v29[7];
    v36 = v29[8];
    v158 = v29[6];
    v159 = v35;
    v37 = v35 << 48;
    i = v158 << 40;
    v155 = v34;
    v153 = v34 << 32;
    v160 = v33;
    v38 = v33 << 24;
    v150 = v32 << 16;
    v171 = v31;
    v39 = v31 << 8;
    v40 = Logger.logObject.getter();
    if (!v36)
    {
      v94 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v94))
      {
        v95 = swift_slowAlloc();
        v156.i64[0] = v32;
        v32 = v95;
        v96 = swift_slowAlloc();
        v157.i64[0] = v30;
        v30 = v96;
        v177[0] = v96;
        *v32 = 136315394;
        v97 = NANPeerServiceIdentifier.description.getter(v37 | v157.i64[0] | v39 | i | v153 | v38 | v150);
        v99 = sub_100002320(v97, v98, v177);

        *(v32 + 4) = v99;
        *(v32 + 12) = 256;
        v100 = v165;
        *(v32 + 14) = v165;
        _os_log_impl(&_mh_execute_header, v40, v94, "Follow up transmission to %s from %hhu completed", v32, 0xFu);
        sub_100002A00(v30);
        LOBYTE(v30) = v157.i8[0];

        LOBYTE(v32) = v156.i8[0];

        v24 = v151;
      }

      else
      {

        v24 = v151;
        v100 = v165;
      }

      LOBYTE(v173) = v100;
      BYTE1(v173) = v30;
      BYTE2(v173) = v171;
      BYTE3(v173) = v32;
      BYTE4(v173) = v160;
      BYTE5(v173) = v155;
      BYTE6(v173) = v158;
      HIBYTE(v173) = v159;
      swift_beginAccess();
      v132 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v167, v166, v131);
      swift_getWitnessTable(byte_1004B1B38, v132);
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      (*(v168.i64[0] + 8))(v14, v170);
      swift_endAccess();
      sub_100370840();
      sub_100372790(v133, v134, v135, v136);
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    v156.i64[0] = v32;
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v157.i64[0] = v30;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v177[0] = v149;
      *v43 = 136315650;
      v44 = NANPeerServiceIdentifier.description.getter(v37 | v30 | v39 | i | v153 | v38 | v150);
      v46 = sub_100002320(v44, v45, v177);

      *(v43 + 4) = v46;
      *(v43 + 12) = 256;
      v47 = v165;
      *(v43 + 14) = v165;
      *(v43 + 15) = 2080;
      v48 = 0xE700000000000000;
      v49 = 0x646570706F7264;
      if (v36 != 2)
      {
        v49 = 0xD000000000000010;
        v48 = 0x80000001004BA2F0;
      }

      if (v36 == 1)
      {
        v50 = 0x756F2064656D6974;
      }

      else
      {
        v50 = v49;
      }

      if (v36 == 1)
      {
        v51 = 0xE900000000000074;
      }

      else
      {
        v51 = v48;
      }

      v52 = v169;
      v53 = sub_100002320(v50, v51, v177);

      *(v43 + 17) = v53;
      _os_log_impl(&_mh_execute_header, v40, v41, "Follow up transmission to %s from %hhu failed with reason: %s", v43, 0x19u);
      swift_arrayDestroy();
    }

    else
    {

      v52 = v169;
      v47 = v165;
    }

    LOBYTE(v173) = v47;
    BYTE1(v173) = v157.i8[0];
    BYTE2(v173) = v171;
    v101 = v155;
    BYTE3(v173) = v156.i8[0];
    BYTE4(v173) = v160;
    BYTE5(v173) = v155;
    BYTE6(v173) = v158;
    HIBYTE(v173) = v159;
    swift_beginAccess();
    v103 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v167, v166, v102);
    WitnessTable = swift_getWitnessTable(byte_1004B1B38, v103);
    v105 = v152;
    v167 = WitnessTable;
    v106 = type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    v107 = sub_100370840();
    v108 = v105;
    v109 = *(v52 + 48);
    if (v109(v12, 1, v108, v107) == 1)
    {
      v110 = (*(v168.i64[0] + 8))(v12, v170);
      sub_100372790(v110, v111, v112, v113);
      v24 = v151;
      return sub_1003739EC(v24, type metadata accessor for DriverEvent);
    }

    v166 = v109;
    v153 = v106;
    v149 = *(v52 + 32);
    v150 = v52 + 32;
    v149(v164.i64[0], v12, v108);
    v114 = v108;
    v115 = v171;
    v116 = sub_10037059C(v108);
    v120 = v159;
    if ((v116 & 1) != 0 && (swift_beginAccess(), v52 = v169, LOBYTE(v173) = v165, BYTE1(v173) = v157.i8[0], BYTE2(v173) = v115, BYTE3(v173) = v156.i8[0], BYTE4(v173) = v160, BYTE5(v173) = v101, BYTE6(v173) = v158, HIBYTE(v173) = v120, v121 = v163, Dictionary.subscript.getter(), swift_endAccess(), v122 = v166(v121, 1, v108), v123 = (*(v168.i64[0] + 8))(v121, v170), v122 == 1))
    {
      sub_100372790(v123, v117, v118, v119);
      (*(v52 + 8))(v164.i64[0], v114);
    }

    else
    {
      v124 = v157.i8[0];
      v125 = v156.i8[0];
      v126 = v157.i64[0] & 0xFF00FFFFFF0000FFLL | (v115 << 8) | (v120 << 48) | (v156.u8[0] << 16);
      v127 = v101;
      v128 = v160;
      v129 = v165;
      v163 = (v165 | ((v126 & 0xFFFFFF0000FFFFFFLL | (v160 << 24) | (v127 << 32) | i) << 8));
      v130 = sub_100371384(v163, v117, v118, v119);
      if (v130 != 2)
      {
        LODWORD(i) = v130;
        swift_beginAccess();
        LOBYTE(v173) = v129;
        BYTE1(v173) = v124;
        BYTE2(v173) = v171;
        BYTE3(v173) = v125;
        BYTE4(v173) = v128;
        BYTE5(v173) = v127;
        v137 = v159;
        BYTE6(v173) = v158;
        HIBYTE(v173) = v159;
        v138 = v161;
        v139 = v152;
        Dictionary.subscript.getter();
        swift_endAccess();
        v140 = v166;
        v141 = v137;
        if (v166(v138, 1, v139) == 1)
        {
          v142 = v162;
          (*(v169 + 16))(v162, v164.i64[0], v139);
          if (v140(v138, 1, v139) != 1)
          {
            (*(v168.i64[0] + 8))(v138, v170);
          }
        }

        else
        {
          v142 = v162;
          v149(v162, v138, v139);
        }

        (*(v169 + 56))(v142, 0, 1, v139);
        LOBYTE(v173) = v165;
        BYTE1(v173) = v157.i8[0];
        BYTE2(v173) = v171;
        BYTE3(v173) = v156.i8[0];
        BYTE4(v173) = v160;
        BYTE5(v173) = v155;
        BYTE6(v173) = v158;
        HIBYTE(v173) = v141;
        swift_beginAccess();
        Dictionary.subscript.setter();
        swift_endAccess();
        v24 = v151;
        if (i)
        {
          sub_1003718E8(v163);
        }

        (*(v169 + 8))(v164.i64[0], v152);
        return sub_1003739EC(v24, type metadata accessor for DriverEvent);
      }

      (*(v52 + 8))(v164.i64[0], v152);
    }

    v24 = v151;
    return sub_1003739EC(v24, type metadata accessor for DriverEvent);
  }

  if (v26 != 8)
  {
    if (v26 == 11)
    {
      goto LABEL_32;
    }

LABEL_22:
    sub_1001854F8(v178);
    goto LABEL_23;
  }

  v151 = v24;
  NANBitmap.Channel.operatingClass.getter();
  v65.i32[0] = *v64;
  v66 = vmovl_u8(v65);
  v168 = v66;
  LODWORD(v163) = *(v64 + 4);
  LODWORD(v162) = *(v64 + 5);
  LODWORD(v161) = *(v64 + 6);
  LODWORD(v160) = *(v64 + 7);
  v66.i32[0] = *(v64 + 8);
  v164 = vmovl_u8(*v66.i8);
  LODWORD(v159) = *(v64 + 12);
  LODWORD(v158) = *(v64 + 13);
  v67 = qword_1005976D0;
  v68 = v172;
  swift_beginAccess();
  v155 = (v169 + 8);
  v70 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v167, v166, v69);
  v170 = v67;
  v171 = 0;
  v71 = v168;
  *v71.i8 = vuzp1_s8(*v71.i8, *v71.i8);
  v157 = v71;
  v72 = v164;
  *v72.i8 = vuzp1_s8(*v72.i8, *v72.i8);
  v156 = v72;
  for (i = v70; ; v70 = i)
  {
    while (1)
    {
      v173 = *(v68 + v67);
      __chkstk_darwin();
      v76 = v166;
      *(&v148 - 4) = v167;
      *(&v148 - 3) = v76;
      LODWORD(v144) = v157.i32[0];
      BYTE4(v144) = v163;
      BYTE5(v144) = v162;
      BYTE6(v144) = v161;
      HIBYTE(v144) = v160;
      v145 = v156.i32[0];
      v146 = v159;
      v147 = v158;

      v77 = swift_getWitnessTable(byte_1004B1B38, v70);
      v78 = type metadata accessor for Dictionary();
      swift_getWitnessTable(&protocol conformance descriptor for [A : B], v78);
      v79 = v171;
      Collection.firstIndex(where:)();

      v80 = v176;
      if (v176 == 255)
      {
        v24 = v151;
        return sub_1003739EC(v24, type metadata accessor for DriverEvent);
      }

      v164.i64[0] = v78;
      v171 = v79;
      v82 = v174;
      v81 = v175;
      v83 = v172;

      v144 = v77;
      v84 = v165;
      v169 = v82;
      v168.i64[0] = v81;
      Dictionary.subscript.getter();

      v68 = v83;
      v85 = *v155;
      (*v155)(v84, v7);
      v86 = v173;
      v90 = sub_100371384(v173, v87, v88, v89);
      if (v90 != 2)
      {
        break;
      }

      v73 = v170;
      swift_beginAccess();
      v74 = v169;
      v153 = v85;
      v75 = v168.i64[0];
      Dictionary.remove(at:)();
      swift_endAccess();
      sub_100085170(v74, v75, v80);
      (v153)(v84, v7);
      v67 = v73;
      v70 = i;
    }

    v91 = v169;
    v67 = v170;
    v92 = v168.i64[0];
    if ((v90 & 1) == 0)
    {
      break;
    }

    v68 = v172;
    sub_1003718E8(v86);
    sub_100085170(v91, v92, v80);
    v7 = v152;
  }

  sub_100085170(v169, v168.i64[0], v80);
  v24 = v151;
  return sub_1003739EC(v24, type metadata accessor for DriverEvent);
}

BOOL sub_1003700B4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1003700FC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  (*(v3 + 64))(a1, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

void sub_100370270(int a1, unint64_t a2)
{
  v3 = a2 >> 8;
  v4 = a2 >> 16;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v3);

  NANClusterChangeEvent.hash(into:)(a1, v4);
}

Swift::Int sub_1003702C8(unint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100370270(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100370348(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100370270(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1003703A4()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  DispatchTime.distance(to:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003704A0()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  DispatchTime.distance(to:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10037059C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  if ((*(v1 + *(a1 + 44)) & 1) != 0 || (sub_1003704A0(), v9 = NANConstants.followUpTimeout.unsafeMutableAddressor(), v10 = *(v4 + 16), v10(v6, v9, v3), v11 = static DispatchTimeInterval.< infix(_:_:)(v8, v6), v12 = *(v4 + 8), v12(v6, v3), v12(v8, v3), !v11))
  {
    v15 = 1;
  }

  else
  {
    sub_1003703A4();
    v13 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
    v10(v6, v13, v3);
    v14 = static DispatchTimeInterval.< infix(_:_:)(v8, v6);
    v12(v6, v3);
    v12(v8, v3);
    v15 = !v14;
  }

  return v15 & 1;
}

uint64_t sub_100370764@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9@<X7>, uint64_t a10)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v14 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(0, a9, a10, a4);
  sub_100373B14(a5, a8 + v14[10]);
  *(a8 + v14[11]) = a6;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v15 = v14[13];
  v16 = type metadata accessor for DispatchTime();
  v17 = *(*(v16 - 8) + 32);

  return v17(a8 + v15, a7, v16);
}

double sub_100370840()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v26 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v22 - v5);
  __chkstk_darwin();
  v8 = (&v22 - v7);
  swift_beginAccess();
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v9, v10, v11);
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(0, v9, v10, v13);

  swift_getWitnessTable(byte_1004B1B38, v12);
  LOBYTE(v12) = Dictionary.isEmpty.getter();

  v14 = qword_1005976E0;
  if (v12)
  {
    *(v0 + qword_1005976E0) = 0;
  }

  else
  {
    v15 = *(v0 + qword_1005976E0);
    if (!v15)
    {
      *v8 = 5;
      v16 = enum case for DispatchTimeInterval.seconds(_:);
      v24 = v4;
      v17 = *(v26 + 104);
      v26 = 0;
      v17(v8, enum case for DispatchTimeInterval.seconds(_:), v2);
      v23 = v17;
      v25 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      *v6 = 5;
      v17(v6, v16, v2);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = v9;
      v19[3] = v10;
      v19[4] = v18;
      v20 = v24;
      *v24 = 100;
      v23(v20, enum case for DispatchTimeInterval.milliseconds(_:), v2);
      type metadata accessor for P2PTimer(0);
      swift_allocObject();
      v15 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v8, v25, v6, v20, sub_1003739A0, v19);
    }

    *(v0 + v14) = v15;
  }

  return result;
}

double sub_100370B6C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100370BC4();
  }

  return result;
}

uint64_t sub_100370BC4()
{
  v1 = *v0;
  v2 = type metadata accessor for DriverEvent(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v1 + 80);
  v23 = v6;
  v7 = *(v1 + 88);
  v24 = v7;
  v9 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v6, v7, v8);
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(0, v6, v7, v10);

  swift_getWitnessTable(byte_1004B1B38, v9);
  v19 = Dictionary.filter(_:)();
  v25 = v19;
  v21 = v6;
  v22 = v7;
  v11 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B], v11);
  v14 = sub_10002B84C(sub_1003739CC, v20, v11, v2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v13);

  v15 = *(v14 + 16);
  if (!v15)
  {
  }

  swift_unownedRetainStrong();
  sub_10040D52C(0xD000000000000012, 0x80000001004C00E0);

  v16 = 0;
  while (v16 < *(v14 + 16))
  {
    sub_1000133C4(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5);
    sub_10036EEBC(v5);
    ++v16;
    sub_1003739EC(v5, type metadata accessor for DriverEvent);
    if (v15 == v16)
    {
    }
  }

  __break(1u);

  result = sub_1003739EC(v5, type metadata accessor for DriverEvent);
  __break(1u);
  return result;
}

double (*sub_100370EBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100370F20;
}

double sub_100370F20(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100370840();
  }

  return result;
}

uint64_t sub_100370F54(char a1)
{
  v2 = *v1;
  v3 = qword_1005976D0;
  swift_beginAccess();
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v5 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v10, v11, v4);
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(0, v10, v11, v6);

  swift_getWitnessTable(byte_1004B1B38, v5);
  *(v1 + v3) = Dictionary.filter(_:)();

  swift_beginAccess();
  NANBitmap.Channel.operatingClass.getter();
  v7 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v7);
  Sequence.filter(_:)();
  v8 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v8);
  Array.init<A>(_:)();
  Sequence.forEach(_:)();
}

BOOL sub_1003711AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v24 = a3;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, a4, a5, a4);
  v11 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, a4, a5, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = __chkstk_darwin();
  v16 = &v23 - v15;
  v17 = *(v13 + 16);
  v23 = a1;
  v17(&v23 - v15, a1, TupleTypeMetadata2, v14);
  v18 = *(TupleTypeMetadata2 + 48);
  LOBYTE(a2) = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v16 + 1) | (*(v16 + 1) << 16), (a2 >> 8) & 0xFFFFFFFFFFFFLL);
  v19 = *(*(v11 - 8) + 8);
  v19(&v16[v18], v11);
  if (a2)
  {
    return 1;
  }

  else
  {
    (v17)(v16, v23, TupleTypeMetadata2);
    v21 = *(TupleTypeMetadata2 + 48);
    v20 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v16 + 1) | (*(v16 + 1) << 16), v24 & 0xFFFFFFFFFFFFLL);
    v19(&v16[v21], v11);
  }

  return v20;
}

uint64_t sub_100371384(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(0, v7, v8, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = swift_unownedRetainStrong();
  sub_10040CAE8(v13, v14, v15, v16);

  v17 = sub_100349E9C(a1);

  if ((v17 & 1) == 0)
  {
    return 2;
  }

  swift_unownedRetainStrong();
  v18 = sub_100019F94();

  if (v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return 2;
    }
  }

  swift_unownedRetainStrong();
  v20 = sub_100410360(a1 >> 16);

  if (!v20)
  {
    return 2;
  }

  swift_unownedRetainStrong();
  v21 = sub_10040E40C();

  if (v21)
  {
    return 0;
  }

  v22 = swift_unownedRetainStrong();
  sub_10040CAE8(v22, v23, v24, v25);

  v26 = sub_10033ACA4(a1 >> 16);

  if (v26)
  {
    return 0;
  }

  v54 = HIWORD(a1);
  v55 = HIBYTE(a1);
  v52 = HIDWORD(a1);
  v53 = a1 >> 40;
  v51 = a1 >> 24;
  v28 = qword_1005976D8;
  swift_beginAccess();
  v49 = a1 >> 8;
  v50 = v28;
  v30 = *(v5 + v28);
  v56 = a1;
  v57 = BYTE2(a1);
  v58 = v51;
  v59 = v52;
  v60 = v53;
  v61 = v54;
  v62 = v55;
  if (*(v30 + 16))
  {
    v31 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v7, v8, v29);

    WitnessTable = swift_getWitnessTable(byte_1004B1B38, v31);
    v48 = v31;
    v46 = WitnessTable;
    v47 = sub_1002B7254(&v56, v31, WitnessTable);
    if (v33)
    {
      v34 = *(v30 + 36);

      v42 = v46;
      v45 = v34;
      Dictionary.subscript.getter();

      v35 = sub_10037059C(v9);
      v36 = *(v10 + 8);
      v36(v12, v9);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

      v44 = v36;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.remove(at:)();
      v44(v12, v9);
      swift_endAccess();
      sub_100370840();
    }

    else
    {
    }
  }

  v37 = *(v5 + qword_1005976C8);
  if (*(v5 + qword_1005976C8 + 8))
  {
    v38 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v7, v8, v29);

    swift_getWitnessTable(byte_1004B1B38, v38);
  }

  else
  {
    __chkstk_darwin();
    *(&v43 - 4) = v7;
    *(&v43 - 3) = v8;
    LOBYTE(v42) = a1;
    BYTE1(v42) = v49;
    BYTE2(v42) = BYTE2(a1);
    BYTE3(v42) = v51;
    BYTE4(v42) = v52;
    BYTE5(v42) = v53;
    BYTE6(v42) = v54;
    HIBYTE(v42) = v55;
    v40 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v7, v8, v39);

    swift_getWitnessTable(byte_1004B1B38, v40);
    Dictionary.filter(_:)();
  }

  v41 = Dictionary.count.getter();

  return v41 < v37;
}

void *sub_1003718E8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v97 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v83 - v6;
  v7 = *(v4 + 88);
  v8 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = *(AssociatedTypeWitness - 8);
  v105 = AssociatedTypeWitness;
  __chkstk_darwin();
  v107 = &v83 - v10;
  v11 = type metadata accessor for DispatchTime();
  v102 = *(v11 - 8);
  v103 = v11;
  __chkstk_darwin();
  v101 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, v8, v7, v13);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v96 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v83 - v18;
  v20 = *(v14 - 8);
  __chkstk_darwin();
  v22 = &v83 - v21;
  v106 = a1;
  v110[0] = a1;
  v23 = qword_1005976D0;
  swift_beginAccess();
  v98 = v8;
  v99 = v7;
  v25 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v8, v7, v24);
  swift_getWitnessTable(byte_1004B1B38, v25);
  v26 = type metadata accessor for Dictionary();
  v108 = v2;
  v95 = v23;
  v27 = v20;
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  v28 = *(v20 + 48);
  v109 = v14;
  if (v28(v19, 1, v14) == 1)
  {
    return (*(v16 + 8))(v19, v15);
  }

  v30 = v109;
  (*(v20 + 32))(v22, v19, v109);
  if (sub_10037059C(v30))
  {
    return (*(v27 + 8))(v22, v109);
  }

  v93 = v26;
  type metadata accessor for P2PTimer(0);
  v31 = v101;
  variable initialization expression of AWDLPeer.lastUpdated();
  (*(v102 + 40))(&v22[*(v109 + 52)], v31, v103);
  type metadata accessor for BinaryEncoder();
  v32 = *(v22 + 1);
  v33 = *(v22 + 2);
  v119 = *v22;
  v120 = v32;
  v121 = v33;
  sub_10000AB0C(v32, v33);
  v34 = sub_10027837C();
  static BinaryEncoder.encode<A>(_:)(&v119, &type metadata for NANServiceInfo, v34);
  v36 = v35;
  v38 = v37;
  sub_1001842D0(v119, v120, v121);
  if (v38 >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  if (v38 >> 60 == 15)
  {
    v40 = 0xC000000000000000;
  }

  else
  {
    v40 = v38;
  }

  v41 = v106;
  v119 = *(v22 + 3);

  v42 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
  v43 = sub_1002304FC();
  static BinaryEncoder.encode<A>(_:)(&v119, v42, v43);
  v45 = v44;
  v47 = v46;

  if (v47 >> 60 == 15)
  {
    v48 = 0;
  }

  else
  {
    v48 = v45;
  }

  if (v47 >> 60 == 15)
  {
    v49 = 0xC000000000000000;
  }

  else
  {
    v49 = v47;
  }

  v50 = v40 >> 62;
  v51 = v107;
  if ((v40 >> 62) > 1)
  {
    if (v50 == 2 && *(v39 + 16) != *(v39 + 24))
    {
      goto LABEL_30;
    }
  }

  else if (v50)
  {
    if (v39 != v39 >> 32)
    {
      goto LABEL_30;
    }
  }

  else if ((v40 & 0xFF000000000000) != 0)
  {
    goto LABEL_30;
  }

  v52 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v52 != 2 || *(v48 + 16) == *(v48 + 24))
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (!v52)
  {
    if ((v49 & 0xFF000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_30:
    v83 = v40 >> 62;
    v102 = v49;
    v103 = v48;
    v94 = v40;
    v91 = v39;
    v101 = (v41 >> 8);
    v53 = *(v108 + qword_10059BA10);
    swift_unownedRetainStrong();
    v54 = *(*v53 + 96);
    swift_beginAccess();
    (*(v104 + 16))(v51, v53 + v54, v105);

    v90 = HIWORD(v41);
    v89 = v41 >> 40;
    v87 = BYTE3(v41);
    v88 = HIDWORD(v41);
    v55 = *(v109 + 40);
    v92 = v22;
    v56 = v97;
    sub_1003738C8(&v22[v55], v97);
    v57 = type metadata accessor for NANIdentityKey(0);
    v58 = *(v57 - 8);
    v59 = *(v58 + 48);
    if (v59(v56, 1, v57) == 1)
    {
      v60 = v100;
      (*(v58 + 56))(v100, 1, 1, v57);
      if (v59(v56, 1, v57) != 1)
      {
        sub_100016290(v56, &unk_100595C50, &unk_1004AFD20);
      }
    }

    else
    {
      v60 = v100;
      sub_100373938(v56, v100, type metadata accessor for NANIdentityKey);
      (*(v58 + 56))(v60, 0, 1, v57);
    }

    v61 = HIBYTE(v41);
    v84 = BYTE6(v41);
    v85 = BYTE5(v41);
    v86 = BYTE4(v41);
    v97 = BYTE2(v41);
    v100 = BYTE1(v41);
    v62 = v105;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v64 = v91;
    v40 = v94;
    v65 = v107;
    (*(AssociatedConformanceWitness + 264))(v91, v94, v103, v102, v41, ((v41 & 0xFF00000000000000 | (BYTE6(v41) << 48) | (BYTE5(v41) << 40) | (BYTE3(v41) << 24) | (BYTE4(v41) << 32)) >> 16) & 0xFFFFFFFFFFFFFF00 | BYTE2(v41), v101, v60, v62, AssociatedConformanceWitness);
    v66 = v27;
    sub_100016290(v60, &unk_100595C50, &unk_1004AFD20);
    (*(v104 + 8))(v65, v62);
    sub_10000AB0C(v64, v40);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v67, v68))
    {
      sub_1000124C8(v64, v40);

      v72 = v64;
LABEL_49:
      v27 = v66;
      v80 = *(v66 + 16);
      v81 = v96;
      v22 = v92;
      v82 = v109;
      v80(v96, v92, v109);
      (*(v27 + 56))(v81, 0, 1, v82);
      v111 = v41;
      v112 = v101;
      v113 = BYTE2(v41);
      v114 = BYTE3(v41);
      v115 = v88;
      v116 = v89;
      v117 = v90;
      v118 = v61;
      swift_beginAccess();
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_100370840();
      sub_1000124C8(v103, v102);
      v71 = v72;
      goto LABEL_50;
    }

    v69 = swift_slowAlloc();
    result = swift_slowAlloc();
    v41 = result;
    v110[0] = result;
    *v69 = 134218498;
    if (v83 > 1)
    {
      if (v83 != 2)
      {
        v70 = 0;
        goto LABEL_48;
      }

      v74 = *(v64 + 16);
      v73 = *(v64 + 24);
      v75 = __OFSUB__(v73, v74);
      v70 = v73 - v74;
      if (!v75)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    else if (!v83)
    {
      v70 = BYTE6(v94);
LABEL_48:
      *(v69 + 4) = v70;
      v40 = v94;
      sub_1000124C8(v64, v94);
      *(v69 + 12) = 2080;
      v76 = NANPeerServiceIdentifier.description.getter((v61 << 48) | (v84 << 40) | (v85 << 32) | (v86 << 24) | (v87 << 16) | (v97 << 8) | v100);
      v78 = sub_100002320(v76, v77, v110);

      *(v69 + 14) = v78;
      v72 = v64;
      *(v69 + 22) = 256;
      v79 = v106;
      *(v69 + 24) = v106;
      _os_log_impl(&_mh_execute_header, v67, v68, "Transmitted a follow up of size %ld to %s from %hhu", v69, 0x19u);
      sub_100002A00(v41);
      LODWORD(v41) = v79;

      goto LABEL_49;
    }

    LODWORD(v70) = HIDWORD(v64) - v64;
    if (__OFSUB__(HIDWORD(v64), v64))
    {
      __break(1u);
      return result;
    }

    v70 = v70;
    goto LABEL_48;
  }

  if (v48 != v48 >> 32)
  {
    goto LABEL_30;
  }

LABEL_39:
  sub_1000124C8(v48, v49);
  v71 = v39;
LABEL_50:
  sub_1000124C8(v71, v40);
  return (*(v27 + 8))(v22, v109);
}

uint64_t sub_100372790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(v5 + 88);
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, v6, v7, a4);
  v23 = type metadata accessor for Optional();
  v8 = *(v23 - 8);
  __chkstk_darwin();
  v10 = &v22 - v9;
  swift_beginAccess();
  v12 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v6, v7, v11);
  swift_getWitnessTable(byte_1004B1B38, v12);
  NANBitmap.Channel.operatingClass.getter();
  v24 = v13;
  v14 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v14);
  v28 = Set.init<A>(_:)();
  type metadata accessor for Set();
  Set.popFirst()();
  if ((v27 & 1) == 0)
  {
    v19 = (v8 + 8);
    do
    {
      v20 = v26;
      v21 = sub_100371384(v26, v15, v16, v17);
      if (v21 == 2)
      {
        v25 = v20;
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.removeValue(forKey:)();
        swift_endAccess();
        (*v19)(v10, v23);
      }

      else if (v21)
      {
        sub_1003718E8(v20);
      }

      Set.popFirst()();
    }

    while (v27 != 1);
  }
}

BOOL sub_100372A3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchTimeInterval();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin();
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v31 - v10;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, a3, a4, v12);
  v14 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, a3, a4, v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = &v31 - v20;
  *(&v31 - v20) = *a1;
  v23 = *(v14 - 8);
  (*(v23 + 16))(&v31 + *(v22 + 48) - v20, a2, v14, v19);
  (*(v16 + 16))(v18, v21, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  sub_1003704A0();
  (*(v23 + 8))(&v18[v24], v14);
  v25 = NANConstants.followUpTimeout.unsafeMutableAddressor();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  (*(v33 + 16))(v32, v25, v34);
  LOBYTE(v18) = static DispatchTimeInterval.< infix(_:_:)(v11, v26);
  v29 = *(v27 + 8);
  v29(v26, v28);
  v29(v11, v28);
  (*(v16 + 8))(v21, TupleTypeMetadata2);
  return (v18 & 1) == 0;
}

uint64_t sub_100372D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  v27 = a4;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, a2, a3, x3_0);
  v10 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, a2, a3, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v17 = __chkstk_darwin();
  v19 = &v23 - v18;
  v20 = *(v12 + 16);
  v20(&v23 - v18, a1, TupleTypeMetadata2, v17);
  v26 = *v19;
  v25 = *(TupleTypeMetadata2 + 48);
  (v20)(v16, a1, TupleTypeMetadata2);
  v24 = v16[1];
  v23 = *(TupleTypeMetadata2 + 48);
  (v20)(v14, a1, TupleTypeMetadata2);
  LOWORD(a1) = *(v14 + 3);
  v21 = *(*(v10 - 8) + 8);
  LODWORD(v12) = *(v14 + 2);
  v21(&v14[*(TupleTypeMetadata2 + 48)], v10);
  v21(&v16[v23], v10);
  v21(&v19[v25], v10);
  LOBYTE(v28[0]) = v26;
  HIBYTE(v28[0]) = v24;
  *&v28[1] = v12;
  v28[3] = a1;
  LOBYTE(v28[4]) = 1;
  sub_1000B24D4(v28);
  memcpy(v27, v28, 0x16AuLL);
  type metadata accessor for DriverEvent(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100372FA4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, a4, a5, a4);
  v12 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, a4, a5, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin();
  v19 = &v24[-v18];
  *&v24[-v18] = *a1;
  v21 = *(v12 - 8);
  (*(v21 + 16))(&v24[*(v20 + 48) - v18], a2, v12, v17);
  (*(v14 + 16))(v16, v19, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  LOBYTE(a3) = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v16 + 1) | (*(v16 + 1) << 16), a3 >> 16);
  (*(v14 + 8))(v19, TupleTypeMetadata2);
  (*(v21 + 8))(&v16[v22], v12);
  return a3 & 1;
}

BOOL sub_100373198(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, a4, a5, a4);
  v12 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, a4, a5, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin();
  v19 = &v24[-v18];
  *&v24[-v18] = *a1;
  v21 = *(v12 - 8);
  (*(v21 + 16))(&v24[*(v20 + 48) - v18], a2, v12, v17);
  (*(v14 + 32))(v16, v19, TupleTypeMetadata2);
  v22 = *v16 != a3;
  (*(v21 + 8))(&v16[*(TupleTypeMetadata2 + 48)], v12);
  return v22;
}

uint64_t sub_100373364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = sub_100370EBC(v17);
  v16 = v3;
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(255, v5, v6, v7);
  v10 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(255, v5, v6, v9);
  swift_getWitnessTable(byte_1004B1B38, v8);
  type metadata accessor for Dictionary();
  v11 = Dictionary.subscript.modify();
  v13 = v12;
  if (!(*(*(v10 - 8) + 48))(v12, 1, v10))
  {
    *(v13 + *(v10 + 44)) = 1;
  }

  v11(v15, 0);
  return (v4)(v17, 0);
}

uint64_t sub_1003734D8()
{
  v1 = qword_10059BA08;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unownedRelease();

  return v0;
}

uint64_t sub_100373578()
{
  sub_1003734D8();

  return swift_deallocClassInstance();
}

void sub_1003735E8(uint64_t a1)
{
  sub_10037373C(319, qword_1005977E8, type metadata accessor for NANAttribute, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10037373C(319, &qword_10059A640, type metadata accessor for NANIdentityKey, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DispatchTime();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10037373C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1003737A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003737F4(uint64_t a1, unsigned int a2)
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

uint64_t sub_10037383C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1003738C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100373938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003739EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_100373A4C(uint64_t a1, __n128 a2)
{
  v3 = 0x100000000000000;
  if (!*(v2 + 39))
  {
    v3 = 0;
  }

  return sub_1003711AC(a1, *(v2 + 32) | (*(v2 + 36) << 32) | (*(v2 + 37) << 40) | (*(v2 + 38) << 48) | v3, *(v2 + 40) | (*(v2 + 44) << 32) | (*(v2 + 45) << 40), *(v2 + 16), *(v2 + 24), a2);
}

uint64_t sub_100373B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100373B84(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  Logger.init(subsystem:category:)();
  v5 = qword_1005976D0;
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  v9 = type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier(0, v6, v7, v8);
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation(0, v6, v7, v10);
  swift_getWitnessTable(byte_1004B1B38, v9);
  *(v2 + v5) = Dictionary.init()();
  v11 = qword_1005976D8;
  *(v2 + v11) = Dictionary.init()();
  *(v2 + qword_1005976E0) = 0;
  *(v2 + qword_10059BA10) = a1;
  swift_unownedRetain();

  WiFiInterface.capabilities.getter();

  WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();

  v13 = v2 + qword_1005976C8;
  v14 = 4;
  if (v12)
  {
    v14 = 10;
  }

  *v13 = v14;
  v13[8] = (v12 & 1) == 0;
  return v2;
}

uint64_t sub_100373DA4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_100373E60(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10040CAE8(Strong, v2, v3, v4);

    sub_10036C2F4();
  }

  return result;
}

uint64_t sub_100373ECC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + qword_1005978F0) & 1) == 0)
  {
    v7 = swift_unownedRetainStrong();
    sub_10040CAE8(v7, v8, v9, v10);

    sub_100349934(v0);
  }

  v11 = qword_10059BA18;
  (*(v3 + 16))(v6, v0 + qword_10059BA18, v2, v4);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v11;
    v24 = v15;
    v16 = v15;
    *v14 = 136315138;

    v17 = sub_1003741D4();
    v19 = v18;

    v20 = sub_100002320(v17, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Destroyed %s", v14, 0xCu);
    sub_100002A00(v16);
    v11 = v23;
  }

  else
  {
  }

  v21 = *(v3 + 8);
  v21(v6, v2);
  v21((v1 + v11), v2);
  swift_unownedRelease();

  return v1;
}

uint64_t sub_100374150()
{
  sub_100373ECC();

  return swift_deallocClassInstance();
}

uint64_t sub_1003741D4()
{
  _StringGuts.grow(_:)(17);

  strcpy(v4, "NANDeviceLink[");
  HIBYTE(v4[1]) = -18;
  v1._countAndFlagsBits = WiFiAddress.description.getter(*(v0 + qword_10059BA28) | (*(v0 + qword_10059BA28 + 2) << 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

void *sub_1003742A4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = a2 >> 8;
  v25 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = *v3;
  v11 = a2 >> 40;
  Logger.init(subsystem:category:)();
  *(v3 + qword_1005978F0) = 0;
  *(v3 + qword_10059BA20) = a1;
  v12 = v3 + qword_10059BA28;
  *v12 = a2;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(v10 + 80);
  *(v14 + 24) = *(v10 + 88);
  *(v14 + 32) = v13;
  *(v14 + 40) = a2;
  *(v14 + 41) = v25;
  *(v14 + 42) = v7;
  *(v14 + 43) = v8;
  *(v14 + 44) = v9;
  *(v14 + 45) = v11;
  swift_unownedRetain();

  v15 = sub_10040DECC(a2 & 0xFFFFFFFFFFFFLL, 0x12u, sub_1003745C0, v14);

  *(v3 + qword_1005978F8) = v15;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = sub_1003741D4();
    v22 = v21;

    v23 = sub_100002320(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Created %s", v18, 0xCu);
    sub_100002A00(v19);
  }

  else
  {
  }

  return v3;
}

void *sub_10037456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NANDeviceLink(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1003742A4(a1, a2 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_1003745D8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_100374684()
{
  swift_unownedRetainStrong();
  sub_10044C304();

  return result;
}

uint64_t sub_1003746CC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, v2, v3, v4);
  sub_10006153C();

  v5 = Dictionary.count.getter();

  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, v2, v3, v6);
  sub_10002B68C();

  v7 = Dictionary.count.getter();

  v9 = __OFADD__(v5, v7);
  v10 = v5 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(0, v2, v3, v11);

  v12 = Dictionary.count.getter();

  result = v10 + v12;
  if (__OFADD__(v10, v12))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

double sub_100374870@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_100597980;
  swift_beginAccess();
  v5 = *(v1 + v4);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, *(v3 + 80), *(v3 + 88), v6);
  sub_10006153C();
  *a1 = v5;

  return result;
}

double sub_100374904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 17) = v4;

  return result;
}

void sub_100374938()
{
  v1 = v0;
  v2 = *v0;
  v42 = _swiftEmptyArrayStorage;
  v3 = qword_100597980;
  swift_beginAccess();
  v38[0] = *(v1 + v3);
  v36 = *(v2 + 80);
  v37 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(255, v36, v37, v4);
  sub_10006153C();
  v5 = type metadata accessor for Dictionary();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B], v5);
  Sequence.forEach(_:)();

  v41 = _swiftEmptyArrayStorage;
  v6 = qword_100597988;
  swift_beginAccess();
  v38[0] = *(v1 + v6);
  type metadata accessor for AWDLDiscoveryEngine.Advertise(255, v36, v37, v7);
  sub_10002B68C();
  v8 = type metadata accessor for Dictionary();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B], v8);
  Sequence.forEach(_:)();

  if (_swiftEmptyArrayStorage[2])
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v11 = 136315394;

      v12 = Array.description.getter();
      v14 = v13;

      v15 = sub_100002320(v12, v14, v38);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;

      v16 = Array.description.getter();
      v18 = v17;

      v19 = sub_100002320(v16, v18, v38);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to recover browses: %s, advertises: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v20 = _swiftEmptyArrayStorage[2];

    if (v20)
    {
      v21 = 0;
      v22 = &_swiftEmptyArrayStorage[6] + 1;
      while (v21 < _swiftEmptyArrayStorage[2])
      {
        ++v21;
        v23 = *(v22 - 1);
        v24 = *(v22 - 9);
        v25 = *(v22 - 17);
        v26 = *v22;
        v22 += 24;
        v27 = v23 | (v26 << 8);

        sub_1003758C0(v25, v24, v27);

        if (v20 == v21)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      v28 = _swiftEmptyArrayStorage[2];

      if (!v28)
      {
LABEL_12:

        swift_bridgeObjectRelease_n();
        return;
      }

      v29 = 0;
      v30 = &_swiftEmptyArrayStorage[8] + 1;
      while (v29 < _swiftEmptyArrayStorage[2])
      {
        ++v29;
        v31 = *v30;
        v32 = *(v30 - 1);
        v33 = *(v30 - 9);
        v34 = *(v30 - 17);
        v35 = *(v30 - 25);
        v38[0] = *(v30 - 33);
        v38[1] = v35;
        v38[2] = v34;
        v38[3] = v33;
        v39 = v32;
        v40 = v31;

        sub_1003759A0(v38);

        v30 += 40;
        if (v28 == v29)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_100374DB0(uint64_t *a1, char **a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  result = sub_100374EB0(1);
  if (v2)
  {
    v9 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1003A79F4(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      *a2 = sub_1003A79F4((v11 > 1), v12 + 1, 1, v9);
    }

    v13 = *a2;
    *(v13 + 2) = v12 + 1;
    v14 = &v13[24 * v12];
    *(v14 + 4) = v5;
    *(v14 + 5) = v4;
    v14[48] = v6;
    v14[49] = v7;
  }

  return result;
}

uint64_t sub_100374EB0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = v15 - v5;
  v7 = *(v1 + qword_100597A18);
  swift_unownedRetainStrong();
  v8 = *(*v7 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, AssociatedTypeWitness);

  v9 = DNSRecords.Identifier.keyData.getter(*(v1 + qword_100597A20), *(v1 + qword_100597A20 + 8), *(v1 + qword_100597A20 + 16) | (*(v1 + qword_100597A20 + 17) << 8));
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = v15[1];
  (*(AssociatedConformanceWitness + 128))(a1, v9, v11, 0, 0xF000000000000000, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v13)
  {
    (*(v4 + 8))(v6, AssociatedTypeWitness);
    return sub_1000124C8(v9, v11);
  }

  (*(v4 + 8))(v6, AssociatedTypeWitness);
  sub_1000124C8(v9, v11);
  v19 = v13;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  if (!swift_dynamicCast())
  {
  }

  if (v18 == 1)
  {
    if (v16 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v18)
    {
      if (v16 != 6)
      {
      }

LABEL_9:
    }

    sub_1000B2594(v16, v17, v18);
  }
}

uint64_t sub_100375180(uint64_t *a1, char **a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  result = sub_10037529C(1u);
  if (v2)
  {
    v11 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1003A7B10(0, *(v11 + 2) + 1, 1, v11);
      *a2 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      *a2 = sub_1003A7B10((v13 > 1), v14 + 1, 1, v11);
    }

    v15 = *a2;
    *(v15 + 2) = v14 + 1;
    v16 = &v15[40 * v14];
    *(v16 + 4) = v5;
    *(v16 + 5) = v4;
    *(v16 + 6) = v7;
    *(v16 + 7) = v6;
    v16[64] = v8;
    v16[65] = v9;
  }

  return result;
}

uint64_t sub_10037529C(unsigned int a1)
{
  v43 = a1;
  v40 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = *(v1 + qword_100597AD8);
  swift_unownedRetainStrong();
  v8 = *(*v7 + 96);
  swift_beginAccess();
  v42 = v3;
  v35 = *(v3 + 16);
  v36 = v3 + 16;
  v35(v6, v7 + v8, AssociatedTypeWitness);
  v37 = v7;

  v39 = v1;
  v9 = *(v1 + qword_100597AE0 + 16);
  v57 = *(v1 + qword_100597AE0);
  v58 = v9;
  v59 = *(v1 + qword_100597AE0 + 32);
  v10 = DNSRecords.PTR.keyData.getter();
  v12 = v11;
  v13 = DNSRecords.PTR.valueData.getter();
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 128);
  v18 = v41;
  v40 = AssociatedConformanceWitness + 128;
  v41 = AssociatedConformanceWitness;
  v34 = v17;
  (v17)(v43, v10, v12, v13, v15, AssociatedTypeWitness);
  if (v18)
  {
    v33 = *(v42 + 8);
    v33(v6, AssociatedTypeWitness);
    sub_100017554(v13, v15);
    sub_1000124C8(v10, v12);
    v44[0] = v18;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v46 == 1)
      {
        v19 = v38;
        v20 = v39;
        if (v45 == 2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v19 = v38;
        v20 = v39;
        if (!v46)
        {
          if (v45 != 6)
          {
          }

LABEL_10:

          if ((v43 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_8;
        }

        sub_1000B2594(v45, *(&v45 + 1), v46);
      }
    }
  }

  v33 = *(v42 + 8);
  v33(v6, AssociatedTypeWitness);
  sub_100017554(v13, v15);
  sub_1000124C8(v10, v12);
  v19 = v38;
  v20 = v39;
  if ((v43 & 1) == 0)
  {
LABEL_11:
    v22 = *(v20 + qword_100597AE8 + 16);
    v45 = *(v20 + qword_100597AE8);
    v46 = v22;
    v47 = *(v20 + qword_100597AE8 + 32);
    v48 = *(v20 + qword_100597AE8 + 48);
    v53[0] = v45;
    v53[1] = v22;
    v53[2] = v47;
    v54 = v48;
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_100083AB8(&v45, v44);
    sub_10037C314(v53, v55);
    sub_100083B14(&v45);
    goto LABEL_14;
  }

LABEL_8:
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v21 = *(v20 + qword_100597AE8 + 16);
  v45 = *(v20 + qword_100597AE8);
  v46 = v21;
  v47 = *(v20 + qword_100597AE8 + 32);
  v48 = *(v20 + qword_100597AE8 + 48);
  v51[0] = v45;
  v51[1] = v21;
  v51[2] = v47;
  v52 = v48;
  sub_100083AB8(&v45, v44);
  sub_10037C314(v49, v51);
  sub_100083B14(&v45);
LABEL_14:
  v24 = v37;
  swift_unownedRetainStrong();
  v25 = *(*v24 + 96);
  swift_beginAccess();
  v35(v19, v24 + v25, AssociatedTypeWitness);

  v26 = AssociatedTypeWitness;
  v27 = DNSRecords.SRV.keyData.getter();
  v29 = v28;
  v30 = DNSRecords.SRV.valueData.getter();
  v32 = v31;
  v34(v43 & 1, v27, v29, v30, v31, v26, v41);
  v33(v19, v26);
  sub_100017554(v30, v32);
  return sub_1000124C8(v27, v29);
}

double sub_1003758C0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *v3;
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Browse(255, *(v4 + 80), *(v4 + 88), v5);
  sub_10006153C();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  result = sub_100374684();
  if (v7)
  {
    sub_1003789F0();
  }

  return result;
}

double sub_1003759A0(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Advertise(255, *(v2 + 80), *(v2 + 88), v3);
  sub_10002B68C();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  result = sub_100374684();
  if (v5)
  {
    sub_1003798C8();
  }

  return result;
}

uint64_t sub_100375A88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v11 = qword_10059BA40;
    swift_beginAccess();
    v12 = *(v1 + v11);
    v13 = *(v2 + 80);
    v14 = *(v2 + 88);
    type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(0, v13, v14, v15);
    v25[2] = sub_10002B68C();
    v28 = v12;
    v16 = type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v16);
    v28 = Array.init<A>(_:)();
    v25[1] = sub_10005DC58(&qword_100597CD0, &unk_1004B1E98);
    sub_10000CB24(&qword_100597CD8, &qword_100597CD0, &unk_1004B1E98);
    Sequence.forEach(_:)();

    v17 = qword_100597980;
    swift_beginAccess();
    v18 = *(v1 + v17);
    type metadata accessor for AWDLDiscoveryEngine.Browse(0, v13, v14, v19);
    sub_10006153C();
    v27 = v18;
    v20 = type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v20);
    v27 = Array.init<A>(_:)();
    sub_10005DC58(&unk_10059B190, &unk_1004B1EA8);
    sub_10000CB24(&unk_100597CF0, &unk_10059B190, &unk_1004B1EA8);
    Sequence.forEach(_:)();

    v21 = qword_100597988;
    swift_beginAccess();
    v22 = *(v1 + v21);
    type metadata accessor for AWDLDiscoveryEngine.Advertise(0, v13, v14, v23);
    v26 = v22;
    v24 = type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v24);
    v26 = Array.init<A>(_:)();
    Sequence.forEach(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100375E90(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(255, *(v2 + 80), *(v2 + 88), v3);
  sub_10002B68C();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  if (v5)
  {
    sub_10037B30C();
  }

  return result;
}

uint64_t sub_100375F6C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, v2, v3, v4);
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter();
  v5 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v5);
  Sequence.forEach(_:)();

  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, v2, v3, v6);
  sub_10002B68C();
  NANBitmap.Channel.operatingClass.getter();
  v7 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v7);
  Sequence.forEach(_:)();
}

double sub_1003761F8@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, _BYTE *, uint64_t, uint64_t)@<X1>, void (*a3)(char *, char *)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  swift_beginAccess();
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, v10, v11, v12);
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter();
  v23 = v13;
  v21 = v10;
  v22 = v11;
  v14 = type metadata accessor for Dictionary.Values();

  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v14);
  a2(&v24, a1, v20, v14, WitnessTable);

  v23 = v24;
  v19[2] = v10;
  v19[3] = v11;
  type metadata accessor for Optional();
  v16 = type metadata accessor for DispatchTimeInterval();
  sub_1003392B0(a3, v19, &type metadata for Never, v16, v17, a4);

  return result;
}

uint64_t sub_10037639C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v17[-v8];
  v10 = *a1;
  v11 = *a2;
  v12 = qword_100597A48;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v9, v10 + v12, v4);
  v14 = qword_100597A48;
  swift_beginAccess();
  v13(v7, v11 + v14, v4);
  LOBYTE(v11) = static DispatchTime.< infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v9, v4);
  return v11 & 1;
}

uint64_t sub_100376540(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *a1;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = qword_100597A48;
  swift_beginAccess();
  (*(v3 + 16))(v5, v8 + v9, v2);
  DispatchTime.distance(to:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  return (v10)(v7, v2);
}

uint64_t sub_1003766B4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, v2, v3, v4);
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter();
  v5 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v5);
  LOBYTE(v1) = Sequence.contains(where:)();

  if (v1)
  {
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    type metadata accessor for AWDLDiscoveryEngine.Advertise(0, v2, v3, v7);
    sub_10002B68C();
    NANBitmap.Channel.operatingClass.getter();
    __chkstk_darwin();
    v8 = type metadata accessor for Dictionary.Values();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v8);
    v6 = Sequence.contains(where:)();
  }

  return v6 & 1;
}

uint64_t sub_10037690C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, v2, v3, v4);
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter();
  v5 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v5);
  Sequence.forEach(_:)();

  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, v2, v3, v6);
  sub_10002B68C();
  NANBitmap.Channel.operatingClass.getter();
  v7 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v7);
  Sequence.forEach(_:)();
}

void sub_100376B14(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_100597A38;
  v3 = qword_100597A40;
  *(*a1 + qword_100597A40) = *(*a1 + qword_100597A38);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315650;
    v8 = *(v1 + qword_100597A20);
    v9 = *(v1 + qword_100597A20 + 8);

    v10 = sub_100002320(v8, v9, &v11);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = *(v1 + v2);
    *(v6 + 18) = 1024;
    *(v6 + 20) = *(v1 + v3);

    _os_log_impl(&_mh_execute_header, v4, v5, "triggeredTTRForServiceAcrossSleep BService:%s sleep/wake:%{BOOL}d alreadyTTR:%{BOOL}d", v6, 0x18u);
    sub_100002A00(v7);
  }

  else
  {
  }
}

uint64_t sub_100376CA8()
{
  v1 = qword_10059BA30;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unownedRelease();

  return v0;
}

uint64_t sub_100376D78(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

double sub_100376E6C(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v6 = a3;
  v30 = a3 >> 8;
  v9 = *v4;
  v10 = *(v4 + qword_10059BA38);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v28 = v6;
  v6 &= 0xFFFFFF01;

  sub_10046F77C(v36, a1, a2, v6);
  swift_endAccess();

  type metadata accessor for AWDLDiscoveryEngine.Browse(0, *(v9 + 80), *(v9 + 88), v11);
  swift_unownedRetainStrong();
  swift_allocObject();

  v33 = a1;
  v12 = a1;
  v13 = v6;
  v14 = sub_10037F80C(v10, v12, a2, v6);

  *(v14 + qword_100597A28) = a4;
  swift_unknownObjectRelease();
  v36[0] = v14;
  swift_beginAccess();
  sub_10006153C();
  type metadata accessor for Dictionary();

  v31 = a4;
  swift_unknownObjectRetain();

  Dictionary.subscript.setter();
  swift_endAccess();
  sub_100374684();
  sub_1003772C4();
  if (v32)
  {
    v29 = v28 & 1;

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v26 = v16;
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v17 = 136315394;
      v18 = v33;
      DNSRecords.Identifier.description.getter(v33, a2, v13);
      v24 = v15;
      v21 = sub_100002320(v19, v20, v35);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v25 = v22;
      _os_log_impl(&_mh_execute_header, v24, v26, "Failed to start browse for %s because %@", v17, 0x16u);
      sub_100016290(v25, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v27);
    }

    else
    {

      v18 = v33;
    }

    v36[0] = v18;
    v36[1] = a2;
    v37 = v29;
    v38 = v30;
    swift_beginAccess();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_100374684();
    swift_getErrorValue();
    [v31 subscribeFailedToStartWithError:Error.apiError.getter(v34)];
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

void sub_1003772C4()
{
  v2 = v0;
  v52 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  __chkstk_darwin();
  v51 = &v48 - v3;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  sub_100374EB0(1);
  if (!v1)
  {
    v48 = 0;
    *(v2 + qword_100597A30) = 1;
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v15 = qword_100597A48;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v15, v7, v4);
    swift_endAccess();
    v16 = *(v2 + qword_100597A28);
    if (v16)
    {
      [v16 subscribeStartedWithInstanceID:0];
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55[0] = v20;
      *v19 = 136315138;
      v21 = sub_10037BFE4();
      v23 = v22;

      v24 = sub_100002320(v21, v23, v55);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s was started", v19, 0xCu);
      sub_100002A00(v20);
    }

    else
    {
    }

    v25 = *(v2 + qword_100597A18);
    swift_unownedRetainStrong();
    v26 = *(*v25 + 448);
    swift_beginAccess();
    v27 = *(v25 + v26);

    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v32 = (v29 + 63) >> 6;
    v50 = v27;

    v33 = 0;
    v49 = v2;
    while (v31)
    {
      v34 = v33;
LABEL_16:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v34 << 6);
      v37 = *(v50 + 56);
      v38 = (*(v50 + 48) + 6 * v36);
      v53 = *v38;
      v39 = v38[1];
      v40 = v38[2];
      v41 = v38[3];
      v54 = v38[4];
      v56 = v38[5];
      v42 = v37 + *(*(type metadata accessor for AWDLPeer(0) - 8) + 72) * v36;
      v43 = v51;
      v44 = *(v52 + 48);
      sub_1000275E0(v42, &v51[v44], type metadata accessor for AWDLPeer);
      v45 = v53;
      v46 = v54;
      *v43 = v53;
      v43[1] = v39;
      v43[2] = v40;
      v43[3] = v41;
      v43[4] = v46;
      v47 = v56;
      v43[5] = v56;
      sub_10037BD70(v45 | (v39 << 8) | (v40 << 16) | (v41 << 24) | (v46 << 32) | (v47 << 40), &v43[v44], v49);
      sub_100016290(v43, &unk_100595FA0, &unk_1004B0190);
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        return;
      }

      v31 = *(v28 + 8 * v34);
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_100377818()
{
  v1 = *v0;
  DNSRecords.Identifier.assistedDiscovery.unsafeMutableAddressor();
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, *(v1 + 80), *(v1 + 88), v2);
  sub_10006153C();

  Dictionary.subscript.getter();

  if (!v7)
  {
    swift_endAccess();
LABEL_7:
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    return sub_100016290(&v8, &unk_100597CA0, &unk_1004B1E70);
  }

  swift_endAccess();
  v3 = *(v7 + qword_100597A28);
  swift_unknownObjectRetain();

  if (!v3)
  {
    goto LABEL_7;
  }

  sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
  sub_10005DC58(&unk_100597CB0, &unk_1004B1E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    v5 = v10;
    sub_100029B34(&v8, *(&v9 + 1));
    (*(v5 + 8))(v4, v5);
    return sub_100002A00(&v8);
  }

  return sub_100016290(&v8, &unk_100597CA0, &unk_1004B1E70);
}

uint64_t sub_1003779EC(void *a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setInstanceName:v6];

  if (a1[7])
  {
    v8 = a1[11];
    v7 = a1[12];
    sub_10000AB0C(v8, v7);
    v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v8, v7);
  }

  else
  {
    v9.super.isa = 0;
  }

  [v5 setTxtRecordData:v9.super.isa];

  if (*(v2 + qword_100597A28))
  {
    swift_unknownObjectRetain();
    sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
    sub_10005DC58(&unk_100597CB0, &unk_1004B1E80);
    if (swift_dynamicCast())
    {
      v10 = *(&v17 + 1);
      if (*(&v17 + 1))
      {
        v11 = v18;
        sub_100029B34(&v16, *(&v17 + 1));
        v12 = *(v11 + 16);
        v13 = *a1 | ((a2 & 0xFFFFFFFFFFFFLL) << 8);
        v14 = v5;
        v12(v5, v13, v10, v11);

        return sub_100002A00(&v16);
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {

    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  return sub_100016290(&v16, &unk_100597CA0, &unk_1004B1E70);
}

void sub_100377BC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v24[-1] - v7;
  v9 = qword_10059BA68;
  swift_beginAccess();
  sub_10037FFA4(a1, v2 + v9);
  swift_endAccess();
  sub_1000275E0(a1, v8, type metadata accessor for DNSRecords.SRV);
  sub_1000275E0(a1, v6, type metadata accessor for DNSRecords.SRV);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24[0] = v23;
    *v12 = 136315650;
    v13 = sub_10037D390();
    v15 = v14;

    v16 = sub_100002320(v13, v15, v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = &v8[*(v4 + 24)];
    v18 = *v17;
    v19 = v17[1];

    sub_100380008(v8, type metadata accessor for DNSRecords.SRV);
    v20 = sub_100002320(v18, v19, v24);

    *(v12 + 14) = v20;
    *(v12 + 22) = 512;
    LOWORD(v20) = NWEndpoint.Port.rawValue.getter();
    sub_100380008(v6, type metadata accessor for DNSRecords.SRV);
    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s updated datapath service info to %s%%%hu", v12, 0x1Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_100380008(v6, type metadata accessor for DNSRecords.SRV);

    sub_100380008(v8, type metadata accessor for DNSRecords.SRV);
  }

  v21 = *(v2 + qword_10059BA70);
  if (v21)
  {
    swift_unknownObjectRetain();
    v22 = sub_10037D1EC();
    [v21 datapathUpdatedServiceSpecificInfo:v22];

    swift_unknownObjectRelease();
  }
}

void sub_100377EE0(void *a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  type metadata accessor for AWDLPeer.AdvertisedService(0);
  __chkstk_darwin();
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v7 = v52 - v6;
  v8 = type metadata accessor for AWDLPeer(0);
  __chkstk_darwin();
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v12 = String._bridgeToObjectiveC()();
  [v11 setInstanceName:v12];

  if (a1[7])
  {
    v14 = a1[11];
    v13 = a1[12];
    sub_10000AB0C(v14, v13);
    v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v14, v13);
  }

  else
  {
    v15.super.isa = 0;
  }

  [v11 setTxtRecordData:v15.super.isa];

  v52[1] = a1[4];
  v53 = *a1;
  v16 = v55;
  v17 = WiFiAddress.apiAddress.getter(v55 & 0xFFFFFFFFFFFFLL);
  swift_unownedRetainStrong();
  sub_100041B60(v16 & 0xFFFFFFFFFFFFLL, v10);

  v18 = &v10[*(v8 + 96)];
  v19 = v18[8];
  v56 = v3;
  if (v19)
  {
    v20 = &v10[*(v8 + 92)];
    v21 = *v20;
    v22 = v20[8];
    sub_100380008(v10, type metadata accessor for AWDLPeer);
    if (v22)
    {
      v23 = -60;
    }

    else
    {
      v23 = v21;
    }
  }

  else
  {
    v23 = *v18;
    sub_100380008(v10, type metadata accessor for AWDLPeer);
  }

  if (qword_1005943E8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for UUID();
  v25 = sub_100037644(v24, qword_10059BAD0);
  v26 = *(v24 - 8);
  (*(v26 + 16))(v7, v25, v24);
  (*(v26 + 56))(v7, 0, 1, v24);
  v27 = v11;
  v28 = String._bridgeToObjectiveC()();
  isa = 0;
  if ((*(v26 + 48))(v7, 1, v24) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v7, v24);
  }

  v30 = objc_allocWithZone(WiFiAwareDiscoveryResult);
  LOBYTE(v51) = 0;
  v31 = [v30 initWithServiceName:v28 serviceSpecificInfo:v27 publishID:v53 subscribeID:0 publisherAddressKey:v17 datapathSupported:1 datapathCipherSuite:0 fsdFunction:0 rssi:v23 pairSetupRequired:v51 pairingConfiguration:0 pairedUUID:isa pairedDeviceName:0 signature:0];

  v32 = v54;
  sub_1000275E0(a1, v54, type metadata accessor for AWDLPeer.AdvertisedService);
  v33 = v31;
  v34 = v56;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v32;
    v38 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v38 = 136315650;
    v39 = WiFiAddress.description.getter(v55 & 0xFFFFFFFFFFFFLL);
    v41 = sub_100002320(v39, v40, &v58);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = *(v37 + 24);
    v59 = *(v37 + 8);
    v60 = v42;
    v61 = *(v37 + 40);
    v43 = DNSRecords.PTR.description.getter();
    v45 = v44;
    sub_100380008(v37, type metadata accessor for AWDLPeer.AdvertisedService);
    v46 = sub_100002320(v43, v45, &v58);

    *(v38 + 14) = v46;
    *(v38 + 22) = 2080;
    v34 = v56;
    v57 = [v33 rssi];
    v47 = sub_100086E78();
    RSSI.init<A>(_:)(&v57, &type metadata for Int, v47);
    v48 = RSSI.description.getter();
    v50 = sub_100002320(v48, v49, &v58);

    *(v38 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v35, v36, "Received a new discovery result %s [%s] at %s", v38, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100380008(v32, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  if (*(v34 + qword_100597A28))
  {
    [swift_unknownObjectRetain() subscribeReceivedDiscoveryResult:v33];
    swift_unknownObjectRelease();
  }
}

double sub_100378510(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, *(v5 + 80), *(v5 + 88), v10);
  sub_10006153C();

  Dictionary.subscript.getter();

  swift_endAccess();
  if (v17)
  {
    v11 = type metadata accessor for AWDLPeer(0);
    sub_10037867C(a1, *(a3 + *(v11 + 20)) | (*(a3 + *(v11 + 20) + 2) << 16));
  }

  v12 = *(a1 + 16);
  v14[0] = *(a1 + 8);
  v14[1] = v12;
  v14[2] = v7;
  v14[3] = v6;
  v15 = v8;
  v16 = v9;
  return sub_100375E90(v14);
}

void sub_10037867C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AWDLPeer.AdvertisedService(0);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000275E0(a1, v7, type metadata accessor for AWDLPeer.AdvertisedService);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = WiFiAddress.description.getter(a2 & 0xFFFFFFFFFFFFLL);
    v13 = sub_100002320(v11, v12, &v23);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *(v7 + 24);
    v24 = *(v7 + 8);
    v25 = v14;
    v26 = *(v7 + 20);
    v15 = DNSRecords.PTR.description.getter();
    v17 = v16;
    sub_100380008(v7, type metadata accessor for AWDLPeer.AdvertisedService);
    v18 = sub_100002320(v15, v17, &v23);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Aging out discovery result %s [%s]", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100380008(v7, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  v19 = *(v3 + qword_100597A28);
  if (v19)
  {
    v20 = *a1;
    swift_unknownObjectRetain();
    v21 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
    [v19 subscribeLostDiscoveryResultForPublishID:v20 address:v21];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1003788E8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *v3;
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, *(v4 + 80), *(v4 + 88), v5);
  sub_10006153C();

  Dictionary.subscript.getter();

  swift_endAccess();
  if (!v8)
  {
    return 0;
  }

  v6 = *(v8 + qword_100597A28);
  swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1003789F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v10 = qword_100597A30;
    if (*(v1 + qword_100597A30) == 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136315138;
        v15 = sub_10037BFE4();
        v17 = v16;

        v18 = sub_100002320(v15, v17, &v29);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s will attempt to stop", v13, 0xCu);
        sub_100002A00(v14);
      }

      else
      {
      }

      *(v1 + v10) = 0;
      sub_100374EB0(0);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v21 = 136315394;
        v22 = sub_10037BFE4();
        v24 = v23;

        v25 = sub_100002320(v22, v24, &v29);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_100002320(0x7165522072657355, 0xEE00646574736575, &v29);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s was terminated with reason %s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v26 = qword_100597A28;
      v27 = *(v1 + qword_100597A28);
      if (v27)
      {
        [v27 subscribeTerminatedWithReason:2];
      }

      *(v1 + v26) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100378FB8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v47 = a4;
  v44 = a3;
  v45 = a2;
  v42 = a5;
  v7 = *v5;
  type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v43 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v5 + qword_10059BA38);
  swift_unownedRetainStrong();
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = *(a1 + 32);
  v13 = *(a1 + 33);
  swift_beginAccess();
  v14 = v12 | (v13 << 8);
  v15 = v47;

  sub_10046F77C(v50, v11, v10, v14);
  swift_endAccess();

  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, *(v7 + 80), *(v7 + 88), v16);
  swift_unownedRetainStrong();
  v54[0] = *a1;
  v17 = v43;
  sub_1000275E0(v44, v43, type metadata accessor for DNSRecords.SRV);

  sub_1000836D4(v54, &v51);
  v18 = v45;
  sub_100083AB8(v45, &v51);
  swift_allocObject();
  v19 = sub_10037FA1C(v9, a1, v18, v17);

  *(v19 + qword_100597AF8) = v15;
  swift_unknownObjectRelease();
  v55 = v19;
  v20 = a1[1];
  v51 = *a1;
  v52 = v20;
  v53 = *(a1 + 16);
  v21 = qword_100597988;
  swift_beginAccess();

  sub_1000836D4(v54, &v49);
  sub_10002B68C();
  v22 = type metadata accessor for Dictionary();
  swift_unknownObjectRetain();

  v45 = v21;
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_100374684();
  v23 = v46;
  sub_10037950C();
  if (v23)
  {
    v46 = v22;

    sub_1000836D4(v54, &v51);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_10008378C(v54);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = v24;
      v27 = v26;
      v43 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v51 = v28;
      *v27 = 136315394;
      v29 = DNSRecords.PTR.description.getter();
      v31 = sub_100002320(v29, v30, &v51);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v32;
      v33 = v43;
      *v43 = v32;
      v34 = v44;
      _os_log_impl(&_mh_execute_header, v44, v25, "Failed to start advertise for %s because %@", v27, 0x16u);
      sub_100016290(v33, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v28);
    }

    else
    {
    }

    v38 = a1[1];
    v51 = *a1;
    v52 = v38;
    v53 = *(a1 + 16);
    swift_beginAccess();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_100374684();
    swift_getErrorValue();
    v39 = Error.apiError.getter(v48);
    [v47 publishFailedToStartWithError:v39];
    swift_willThrow();
  }

  else
  {

    sub_1000836D4(v54, &v51);

    v35 = *a1;
    v36 = a1[1];
    v37 = v42;
    *v42 = *a1;
    v37[1] = v36;
    *(v37 + 16) = *(a1 + 16);
  }

  return *&v35;
}

id sub_10037950C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    result = sub_10037529C(1u);
    if (!v1)
    {
      *(v2 + qword_100597B00) = 1;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315138;

        v15 = sub_10037CE1C();
        v17 = v16;

        v18 = sub_100002320(v15, v17, &v20);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s was started", v13, 0xCu);
        sub_100002A00(v14);
      }

      else
      {
      }

      result = *(v2 + qword_100597AF8);
      if (result)
      {
        return [result publishStartedWithInstanceID:0 maximumNANDataPath:0];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100379784(__int128 *a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a1[1];
  v15 = *a1;
  v13 = v6;
  v14 = *(a1 + 16);
  swift_beginAccess();
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v10 = *(a1 + 16);
  sub_1000836D4(&v15, v11);
  sub_100083730(&v13, v11);
  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, *(v5 + 80), *(v5 + 88), v8);
  sub_10002B68C();
  Dictionary.subscript.getter();
  sub_10008378C(&v15);
  sub_1000837E0(&v13);
  if (v12)
  {
    swift_endAccess();
    sub_100083AB8(a2, v9);
    sub_10037FC98(a2);
    sub_100083B14(a2);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1003798C8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v10 = qword_100597B00;
    if (*(v1 + qword_100597B00) == 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136315138;
        v15 = sub_10037CE1C();
        v17 = v16;

        v18 = sub_100002320(v15, v17, &v29);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s will attempt to stop", v13, 0xCu);
        sub_100002A00(v14);
      }

      else
      {
      }

      *(v1 + v10) = 0;
      sub_10037529C(0);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v21 = 136315394;
        v22 = sub_10037CE1C();
        v24 = v23;

        v25 = sub_100002320(v22, v24, &v29);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_100002320(0x7165522072657355, 0xEE00646574736575, &v29);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s was terminated with reason %s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v26 = qword_100597AF8;
      v27 = *(v1 + qword_100597AF8);
      if (v27)
      {
        [v27 publishTerminatedWithReason:2];
      }

      *(v1 + v26) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100379E90(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v18[1] = a3;
  v20 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = v18 - v6;
  v19 = v3;
  v8 = *(v3 + qword_10059BA38);
  swift_unownedRetainStrong();
  v9 = *(*v8 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, AssociatedTypeWitness);

  v10 = DNSRecords.ARPA.keyData.getter();
  v12 = v11;
  v13 = DNSRecords.ARPA.valueData.getter();
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 128))(v20, v10, v12, v13, v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  sub_100017554(v13, v15);
  return sub_1000124C8(v10, v12);
}

void sub_10037A24C(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  v5 = v4;
  v73 = a3;
  v67 = a4;
  v69 = *v5;
  type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AWDLPeer(0) - 8;
  __chkstk_darwin();
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FA18, &qword_100493068);
  __chkstk_darwin();
  v75 = &v66 - v12;
  v74 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v93 = *(v74 - 8);
  __chkstk_darwin();
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v66 - v15;
  *&v16 = __chkstk_darwin().n128_u64[0];
  v76 = &v66 - v17;
  v18 = [a2 publisherAddress];
  v19 = WiFiMACAddress.wifiAddress.getter();

  v77 = v5;
  v20 = *(v5 + qword_10059BA38);
  swift_unownedRetainStrong();
  v72 = v19;
  sub_100041B60(v19 & 0xFFFFFFFFFFFFLL, v11);
  v21 = a1;
  v68 = v20;

  v22 = *&v11[*(v9 + 88)];

  v23 = v11;
  v24 = v22;
  sub_100380008(v23, type metadata accessor for AWDLPeer);
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 56);
  v28 = (v25 + 63) >> 6;
  v78 = *(a1 + 33) << 8;

  v29 = 0;
  v80 = v22;
  while (v27)
  {
LABEL_10:
    v31 = v79;
    sub_1000275E0(*(v24 + 48) + *(v93 + 72) * (__clz(__rbit64(v27)) | (v29 << 6)), v79, type metadata accessor for AWDLPeer.AdvertisedService);
    sub_10037D4B0(v31, v14);
    v32 = *(v14 + 1);
    v33 = *(v14 + 2);
    v82 = *(v14 + 3);
    v81 = *(v14 + 4);
    v34 = v14[40];
    v35 = v14[41];
    *&v86 = v32;
    *(&v86 + 1) = v33;
    v85 = *v21;
    sub_10005E2E4();
    if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && static DNSRecords.Identifier.== infix(_:_:)(v82, v81, v34 | (v35 << 8), *(v21 + 2), *(v21 + 3), v78 | *(v21 + 32)))
    {

      v36 = v75;
      sub_10037D4B0(v14, v75);
      v37 = 0;
LABEL_14:
      v38 = v93;
      v39 = v74;
      (*(v93 + 56))(v36, v37, 1, v74);

      v40 = (*(v38 + 48))(v36, 1, v39);
      v41 = v76;
      if (v40 == 1)
      {
        sub_100016290(v36, &qword_10058FA18, &qword_100493068);
        sub_10000B02C();
        swift_allocError();
        *v42 = xmmword_10049C490;
        *(v42 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        sub_10037D4B0(v36, v76);
        type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(0, *(v69 + 80), *(v69 + 88), v43);
        v44 = v68;
        swift_unownedRetainStrong();
        v45 = v21[1];
        v92 = *v21;
        v90 = v45;
        v91 = *(v21 + 16);
        v46 = v70;
        sub_1000275E0(v41 + *(v39 + 28), v70, type metadata accessor for DNSRecords.SRV);
        sub_1000836D4(&v92, &v86);
        sub_100083730(&v90, &v86);
        swift_allocObject();
        v47 = sub_10037FD3C(v44, v72 & 0xFFFFFFFFFFFFLL, v21, v46);

        *(v47 + qword_10059BA70) = v73;
        swift_unknownObjectRelease();
        v89 = v47;
        v48 = v21[1];
        v86 = *v21;
        v87 = v48;
        v88 = *(v21 + 16);
        swift_beginAccess();
        sub_1000836D4(&v92, v84);
        sub_100083730(&v90, v84);
        sub_10002B68C();
        v49 = type metadata accessor for Dictionary();
        swift_unknownObjectRetain();

        Dictionary.subscript.setter();
        swift_endAccess();
        v50 = v71;
        sub_10037AC44();
        if (v50)
        {
          v93 = v49;
          sub_1000836D4(&v92, &v86);
          sub_100083730(&v90, &v86);
          swift_errorRetain();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();
          sub_10008378C(&v92);
          sub_1000837E0(&v90);

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *&v86 = v82;
            *v53 = 136315650;
            v54 = DNSRecords.PTR.description.getter();
            v56 = sub_100002320(v54, v55, &v86);

            *(v53 + 4) = v56;
            *(v53 + 12) = 2080;
            v57 = WiFiAddress.description.getter(v72 & 0xFFFFFFFFFFFFLL);
            v59 = sub_100002320(v57, v58, &v86);

            *(v53 + 14) = v59;
            v41 = v76;
            *(v53 + 22) = 2112;
            swift_errorRetain();
            v60 = _swift_stdlib_bridgeErrorToNSError();
            *(v53 + 24) = v60;
            v61 = v81;
            *v81 = v60;
            _os_log_impl(&_mh_execute_header, v51, v52, "Failed to start datapath for %s to %s because %@", v53, 0x20u);
            sub_100016290(v61, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();
          }

          v64 = v21[1];
          v86 = *v21;
          v87 = v64;
          v88 = *(v21 + 16);
          swift_beginAccess();
          Dictionary.removeValue(forKey:)();
          swift_endAccess();

          swift_getErrorValue();
          v65 = Error.apiError.getter(v83);
          [v73 datapathFailedToStartWithError:v65];
          swift_willThrow();

          sub_100380008(v41, type metadata accessor for AWDLPeer.AdvertisedService);
        }

        else
        {
          sub_100380008(v41, type metadata accessor for AWDLPeer.AdvertisedService);
          sub_1000836D4(&v92, &v86);
          sub_100083730(&v90, &v86);

          v62 = v21[1];
          v63 = v67;
          *v67 = *v21;
          v63[1] = v62;
          *(v63 + 16) = *(v21 + 16);
        }
      }

      return;
    }

    v27 &= v27 - 1;
    sub_100380008(v14, type metadata accessor for AWDLPeer.AdvertisedService);
    v24 = v80;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v37 = 1;
      v36 = v75;
      goto LABEL_14;
    }

    v27 = *(v22 + 56 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10037AC44()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint.Port();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    v48 = v2;
    *(v1 + qword_10059BA78) = 1;
    v50 = qword_10059BA70;
    v13 = *(v1 + qword_10059BA70);
    if (v13)
    {
      swift_unownedRetainStrong();
      swift_unknownObjectRetain();
      v14 = WiFiInterface.macAddress.getter();

      v15 = WiFiAddress.apiAddress.getter(v14 & 0xFFFFFFFFFFFFLL);
      swift_unownedRetainStrong();
      v16 = WiFiInterface.interfaceIndex.getter();

      [v13 datapathStartedWithInstanceID:0 initiatorDataAddress:v15 localInterfaceIndex:v16];

      swift_unknownObjectRelease();
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v47 = v3;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51[0] = v21;
      *v20 = 136315138;
      v22 = sub_10037D390();
      v24 = v23;

      v25 = sub_100002320(v22, v24, v51);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s was started", v20, 0xCu);
      sub_100002A00(v21);
    }

    else
    {
    }

    swift_retain_n();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v28 = 136315650;
      v29 = sub_10037D390();
      v31 = sub_100002320(v29, v30, &v52);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = v1 + qword_10059BA68;
      swift_beginAccess();
      v33 = type metadata accessor for DNSRecords.SRV(0);
      v34 = (v32 + *(v33 + 24));
      v35 = *v34;
      v36 = v34[1];

      v37 = sub_100002320(v35, v36, &v52);

      *(v28 + 14) = v37;
      *(v28 + 22) = 512;
      v39 = v47;
      v38 = v48;
      v40 = v32 + *(v33 + 20);
      v41 = v49;
      (*(v47 + 16))(v49, v40, v48);
      LOWORD(v32) = NWEndpoint.Port.rawValue.getter();
      (*(v39 + 8))(v41, v38);

      *(v28 + 24) = v32;

      _os_log_impl(&_mh_execute_header, v26, v27, "%s datapath established with %s%%%hu", v28, 0x1Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v42 = *(v1 + v50);
    if (v42)
    {
      v43 = *(v1 + qword_10059BA58) | (*(v1 + qword_10059BA58 + 2) << 16);
      swift_unknownObjectRetain();
      v44 = WiFiAddress.apiAddress.getter(v43);
      v45 = sub_10037D1EC();
      [v42 datapathConfirmedForPeerDataAddress:v44 serviceSpecificInfo:v45];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10037B1C8(__int128 *a1, uint64_t *a2, uint64_t (*a3)(void, void, void), void *a4)
{
  v8 = *v4;
  v9 = a1[1];
  v21 = *a1;
  v19 = v9;
  v20 = *(a1 + 16);
  swift_beginAccess();
  v10 = a1[1];
  v15 = *a1;
  v16 = v10;
  v17 = *(a1 + 16);
  sub_1000836D4(&v21, v14);
  sub_100083730(&v19, v14);
  a3(0, *(v8 + 80), *(v8 + 88));
  sub_10002B68C();
  Dictionary.subscript.getter();
  sub_10008378C(&v21);
  sub_1000837E0(&v19);
  v11 = v18;
  if (v18)
  {
    swift_endAccess();
    v12 = *(v11 + *a4);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v12;
}

uint64_t sub_10037B30C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v10 = qword_10059BA78;
    if (*(v1 + qword_10059BA78) == 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136315138;

        v15 = sub_10037D390();
        v17 = v16;

        v18 = sub_100002320(v15, v17, &v29);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s will attempt to stop", v13, 0xCu);
        sub_100002A00(v14);
      }

      else
      {
      }

      *(v1 + v10) = 0;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v21 = 136315394;

        v22 = sub_10037D390();
        v24 = v23;

        v25 = sub_100002320(v22, v24, &v29);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_100002320(0x7165522072657355, 0xEE00646574736575, &v29);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s was terminated because %s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v26 = qword_10059BA70;
      v27 = *(v1 + qword_10059BA70);
      if (v27)
      {
        [v27 datapathTerminatedWithReason:2];
      }

      *(v1 + v26) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10037B6B8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100376E6C(a1, a2, a3 & 0xFFFFFF01, a4);
  if (!v5)
  {
    *a5 = v7;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9 & 1;
    *(a5 + 17) = HIBYTE(v9);
  }
}

double sub_10037B76C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_100378FB8(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

double sub_10037B8A8@<D0>(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10037A24C(a1, a2, a3, v8);
  if (!v4)
  {
    result = *v8;
    v7 = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = v7;
    *(a4 + 32) = v9;
  }

  return result;
}

uint64_t sub_10037B960()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_100597A30) == 1)
  {
    sub_100374EB0(0);
  }

  v6 = qword_100597A28;
  v7 = *(v0 + qword_100597A28);
  if (v7)
  {
    [v7 subscribeTerminatedWithReason:-1];
  }

  *(v0 + v6) = 0;
  swift_unknownObjectRelease();
  v8 = qword_100597A10;
  (*(v3 + 16))(v5, v0 + qword_100597A10, v2);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v8;
    v14 = v13;
    v25 = v13;
    *v12 = 136315138;
    v15 = sub_10037BFE4();
    v17 = v16;

    v18 = sub_100002320(v15, v17, &v25);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Destroyed %s", v12, 0xCu);
    sub_100002A00(v14);
    v8 = v23;

    v2 = v24;
  }

  else
  {
  }

  v19 = *(v3 + 8);
  v19(v5, v2);
  v19((v1 + v8), v2);
  swift_unownedRelease();

  swift_unknownObjectRelease();
  v20 = qword_100597A48;
  v21 = type metadata accessor for DispatchTime();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  return v1;
}

uint64_t sub_10037BC74(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DNSRecords.SRV(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10037BD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + *(type metadata accessor for AWDLPeer(0) + 80));

  v10 = sub_10037ED68(sub_1003800F4, a3, v9);
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << v10[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 7);
  v16 = (v13 + 63) >> 6;

  for (i = 0; v15; i = v18)
  {
    v18 = i;
LABEL_8:
    sub_1000275E0(*(v11 + 6) + *(v6 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v8, type metadata accessor for AWDLPeer.AdvertisedService);
    sub_100377EE0(v8, a1 & 0xFFFFFFFFFFFFLL);
    v15 &= v15 - 1;
    sub_100380008(v8, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
    }

    v15 = *&v12[8 * v18];
    ++i;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = sub_100380008(v8, type metadata accessor for AWDLPeer.AdvertisedService);
  __break(1u);
  return result;
}

uint64_t sub_10037BFE4()
{
  DNSRecords.Identifier.description.getter(*(v0 + qword_100597A20), *(v0 + qword_100597A20 + 8), *(v0 + qword_100597A20 + 16));
  String.append(_:)(v1);

  return 0x776F72424C445741;
}

uint64_t sub_10037C084(uint64_t result)
{
  if (*(v1 + qword_100597B00) == 1)
  {
    v2 = *(result + 48);
    v3 = *(result + 16);
    v9[0] = *result;
    v9[1] = v3;
    v9[2] = *(result + 32);
    v10 = v2;
    v4 = *(v1 + qword_100597AE8 + 16);
    v6[0] = *(v1 + qword_100597AE8);
    v6[1] = v4;
    v7 = *(v1 + qword_100597AE8 + 32);
    v8 = *(v1 + qword_100597AE8 + 48);
    v11[0] = v6[0];
    v11[1] = v4;
    v11[2] = v7;
    v12 = v8;
    sub_100083AB8(v6, &v5);
    sub_10037C314(v9, v11);
    return sub_100083B14(v6);
  }

  return result;
}

void sub_10037C314(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v3;
  v7 = a2[1];
  v43 = a2 + 1;
  v8 = *a2;
  v47 = v7;
  v48 = v8;
  v9 = *(a2 + 4);
  v45 = *(a2 + 5);
  v46 = v9;
  v44 = *(a2 + 6);
  v10 = *a1;
  v53 = a1[1];
  v58 = v10;
  v11 = *(a1 + 4);
  v51 = *(a1 + 5);
  v52 = v11;
  v50 = *(a1 + 6);
  v12 = *(v6 + 88);
  v13 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v41 - v18;
  v55 = v4;
  v56 = v15;
  v54 = v12;
  v49 = v13;
  if (*(&v58 + 1))
  {
    v41 = v3;
    v42 = v17;
    v74 = v58;
    v19 = a1[2];
    v75 = a1[1];
    v76 = v19;
    v77 = *(a1 + 6);
    v20 = *(v3 + qword_100597AD8);
    swift_unownedRetainStrong();
    v21 = AssociatedTypeWitness;
    v22 = *(*v20 + 96);
    swift_beginAccess();
    (*(v15 + 16))(v78, v20 + v22, v21);
    v64 = v58;
    v65 = v53;
    v66 = v52;
    v67 = v51;
    v68 = v50;
    sub_100083AB8(&v64, &v60);

    v23 = DNSRecords.TXT.keyData.getter();
    v25 = v24;
    v27 = *(&v76 + 1);
    v26 = v77;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = *(AssociatedConformanceWitness + 128);
    sub_10000AB0C(v27, v26);
    v52 = v23;
    *&v53 = v25;
    v29 = v57;
    *&v58 = v21;
    v51(0, v23, v25, v27, v26, v21, AssociatedConformanceWitness);
    if (v29)
    {
      AssociatedTypeWitness = v58;
      (*(v56 + 8))(v78, v58);
      sub_1000124C8(v27, v26);
      sub_1000124C8(v52, v53);
      sub_100016290(a1, &qword_10058F7F8, &qword_100492EE0);
      v63 = v29;
      swift_errorRetain();
      sub_10005DC58(&qword_10058C830, &qword_1004821F0);
      if (!swift_dynamicCast())
      {
        goto LABEL_26;
      }

      if (v62 == 1)
      {
        v17 = v42;
        if (v60 != 2)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v42;
        if (v62)
        {
          sub_1000B2594(v60, v61, v62);
          goto LABEL_26;
        }

        if (v60 != 6)
        {
LABEL_26:

          return;
        }
      }

      v57 = 0;
      v4 = v55;
    }

    else
    {
      v57 = 0;
      AssociatedTypeWitness = v58;
      (*(v56 + 8))(v78, v58);
      sub_1000124C8(v27, v26);
      sub_1000124C8(v52, v53);
      sub_100016290(a1, &qword_10058F7F8, &qword_100492EE0);
      v4 = v55;
      v17 = v42;
    }

    v3 = v41;
  }

  v30 = *(v4 + 1);
  if (v30)
  {
    v69 = *v4;
    v70 = v30;
    v31 = v43[1];
    v71 = *v43;
    v72 = v31;
    v73 = *(v43 + 4);
    v32 = *(v3 + qword_100597AD8);
    swift_unownedRetainStrong();
    v33 = *(*v32 + 96);
    swift_beginAccess();
    (*(v56 + 16))(v17, v32 + v33, AssociatedTypeWitness);
    v64 = v48;
    v65 = v47;
    v66 = v46;
    v67 = v45;
    v68 = v44;
    sub_100083AB8(&v64, &v60);

    v34 = DNSRecords.TXT.keyData.getter();
    v36 = v35;
    v37 = *(&v72 + 1);
    v38 = v73;
    v39 = swift_getAssociatedConformanceWitness();
    v78 = *(v39 + 128);
    sub_10000AB0C(v37, v38);
    v54 = v34;
    *&v58 = v36;
    v40 = v57;
    (v78)(1, v34, v36, v37, v38, AssociatedTypeWitness, v39);
    if (!v40)
    {
      (*(v56 + 8))(v17, AssociatedTypeWitness);
      sub_1000124C8(v37, v38);
      sub_1000124C8(v54, v58);
      sub_100016290(v55, &qword_10058F7F8, &qword_100492EE0);
      return;
    }

    (*(v56 + 8))(v17, AssociatedTypeWitness);
    sub_1000124C8(v37, v38);
    sub_1000124C8(v54, v58);
    sub_100016290(v55, &qword_10058F7F8, &qword_100492EE0);
    v59 = v40;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (!swift_dynamicCast())
    {
      goto LABEL_26;
    }

    if (v62 == 1)
    {
      if (v60 != 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v62)
      {
        sub_1000B2594(v60, v61, v62);
        goto LABEL_26;
      }

      if (v60 != 6)
      {
        goto LABEL_26;
      }
    }
  }
}

uint64_t sub_10037C9B0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_100597B00) == 1)
  {
    sub_10037529C(0);
  }

  v6 = qword_100597AF8;
  v7 = *(v0 + qword_100597AF8);
  if (v7)
  {
    [v7 publishTerminatedWithReason:-1];
  }

  *(v0 + v6) = 0;
  swift_unknownObjectRelease();
  v8 = qword_100597AD0;
  (*(v3 + 16))(v5, v0 + qword_100597AD0, v2);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23[1] = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23[0] = v8;
    v14 = v13;
    v24 = v13;
    *v12 = 136315138;
    v15 = sub_10037CE1C();
    v17 = v16;

    v18 = sub_100002320(v15, v17, &v24);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Destroyed %s", v12, 0xCu);
    sub_100002A00(v14);
    v8 = v23[0];
  }

  else
  {
  }

  v19 = *(v3 + 8);
  v19(v5, v2);
  v19((v1 + v8), v2);
  swift_unownedRelease();

  v20 = *(v1 + qword_100597AE8 + 40);
  v21 = *(v1 + qword_100597AE8 + 48);

  sub_1000124C8(v20, v21);
  sub_100380008(v1 + qword_100597AF0, type metadata accessor for DNSRecords.SRV);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10037CCCC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_10037CD24(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DNSRecords.SRV(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10037CE1C()
{
  _StringGuts.grow(_:)(16);

  strcpy(v2, "AWDLAdvertise ");
  v0._countAndFlagsBits = DNSRecords.PTR.description.getter();
  String.append(_:)(v0);

  return v2[0];
}

uint64_t sub_10037CEE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_10059BA78) == 1)
  {
    sub_10037B30C();
  }

  v6 = qword_10059BA48;
  (*(v3 + 16))(v5, v0 + qword_10059BA48, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v6;
    v10 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_10037D390();
    v14 = v13;

    v15 = sub_100002320(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroyed %s", v10, 0xCu);
    sub_100002A00(v11);

    v6 = v18;
  }

  else
  {
  }

  v16 = *(v3 + 8);
  v16(v5, v2);
  v16((v1 + v6), v2);
  swift_unownedRelease();

  sub_100380008(v1 + qword_10059BA68, type metadata accessor for DNSRecords.SRV);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10037D190(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id sub_10037D1EC()
{
  v1 = type metadata accessor for NWEndpoint.Port();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_10059BA60 + 32);
  v6 = v0 + qword_10059BA68;
  swift_beginAccess();
  v7 = type metadata accessor for DNSRecords.SRV(0);
  (*(v2 + 16))(v4, v6 + *(v7 + 20), v1);
  v8 = NWEndpoint.Port.rawValue.getter();
  (*(v2 + 8))(v4, v1);
  v9 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:v5 servicePort:v8];

  v10 = String._bridgeToObjectiveC()();

  [v9 setHostname:v10];

  return v9;
}

unint64_t sub_10037D390()
{
  _StringGuts.grow(_:)(33);

  v1._countAndFlagsBits = DNSRecords.PTR.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A6F543C20;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = WiFiAddress.description.getter(*(v0 + qword_10059BA58) | (*(v0 + qword_10059BA58 + 2) << 16));
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000016;
}

uint64_t sub_10037D4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10037D514()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D10, &unk_1004B4D30);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 48);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = v24;
        *(v23 + 48) = v22;
        sub_10000AB0C(v19, v20);
        sub_10005D67C(v21, v24);
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

void sub_10037D6C0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059B0F0, &qword_1004B1EC0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
}

void sub_10037D8F8()
{
  v1 = v0;
  sub_10005DC58(&qword_10058B378, &unk_1004B4DA0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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