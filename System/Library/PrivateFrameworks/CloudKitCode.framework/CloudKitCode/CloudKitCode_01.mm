uint64_t sub_243889E0C()
{
  sub_24388A7BC();
  v1 = *v0;
  sub_24388A7B0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_243889EF8()
{
  _Block_release(*(v0 + 16));

  v1 = sub_24388A694();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_243889F30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24388A37C;
  v2 = sub_243876224();

  return v3(v2);
}

unint64_t sub_243889FD8()
{
  result = qword_27ED94B00;
  if (!qword_27ED94B00)
  {
    sub_24388A094(255, &unk_27ED94AF0, 0x277CBC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94B00);
  }

  return result;
}

uint64_t sub_24388A094(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24388A0D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_243876174();
  v4 = sub_243876224();
  v5(v4);
  return a2;
}

uint64_t sub_24388A130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_243876174();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24388A1C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_243876174();
  v4 = sub_243876224();
  v5(v4);
  return a2;
}

void *sub_24388A220(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24388A2E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  v6 = a2;
  v7 = a3 & 1;
  return v4(&v8, &v6);
}

uint64_t sub_24388A3F4()
{

  return swift_beginAccess();
}

uint64_t sub_24388A434(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_24388A458()
{
  v1 = *v0;
  sub_243871FA4(*v0, v0[1]);
  return v1;
}

uint64_t sub_24388A480(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_24388A4B4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_24388A590(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_24388A61C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_24388A6A4@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x282200288](v1, 0xD000000000000026, v2 | 0x8000000000000000, a1 + 8);
}

void sub_24388A744(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_24388A750()
{

  JUMPOUT(0x245D42E40);
}

uint64_t sub_24388A788()
{
  v2 = *(v0 + 96);
  *(v1 - 144) = *(v0 + 80);
  *(v1 - 128) = v2;
  return 0;
}

uint64_t sub_24388A824()
{
  v4 = *v1;
  v5 = v1[1];
  *v1 = v2;
  v1[1] = v0;

  return sub_243871FB4(v4, v5);
}

id CKCodeService.databaseScope.getter()
{
  v1 = [v0 implementation];
  v2 = [v1 boxedDatabaseScope];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 integerValue];

  return v3;
}

void CKCodeService.add<A, B>(_:)(void *a1)
{
  v3 = [v1 implementation];
  v4 = [v1 container];
  v5 = [v4 convenienceConfiguration];

  sub_24388A970(a1, v1, v5);
}

id sub_24388A970(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = a2;
  sub_243880AAC(a2);
  [a1 applyConvenienceConfiguration_];

  return [v4 _addPreparedOperation_];
}

void sub_24388AA00()
{
  sub_24388BC94();
  sub_24388A094(0, &unk_27ED94CC0, 0x277CBC668);

  v12 = CKSerializeRecordModificationsOperation.init(recordsToSave:recordIDsToDelete:)(v3, v0);

  v4 = CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v2, v1);
  sub_24388BD00(v4, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKDatabase.serializedModifications(recordsToSave:recordIDsToDelete:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388AACC()
{
  sub_24388BCF4();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 container];
  v0[6] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v4 = sub_24388BCB4(v3);

  return sub_24388AD54(v4, v5, v6, v7);
}

uint64_t sub_24388ABB8()
{
  sub_24388BCF4();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v5 = *v1;
  sub_24388BC74();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24388ACF0, 0, 0);
  }

  else
  {
    v7 = *(v3 + 40);

    v8 = sub_24388BCD0();

    return v9(v8);
  }
}

uint64_t sub_24388ACF0()
{
  sub_24388A7BC();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24388AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388AD70()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_24388AE80;
  v7 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000055, 0x80000002438A1C20, sub_24388BAC4, v4, v7);
}

uint64_t sub_24388AE80()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v5 = *v1;
  sub_24388BC74();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_24388BC40;
  }

  else
  {

    v7 = sub_24388AF84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_24388AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *, id, uint64_t, uint64_t))
{
  v11 = [v5 implementation];
  v12 = [v5 container];
  v13 = [v12 convenienceConfiguration];

  a5(a1, a2, v5, v13, a3, a4);
}

void sub_24388B080()
{
  sub_24388BC94();
  sub_24388A094(0, &qword_27ED94CB0, 0x277CBC2A8);
  sub_243873DE8(v3, v0);
  v12 = sub_24388B80C(v3, v0);

  v4 = CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v2, v1);
  sub_24388BD00(v4, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKDatabase.deserializedModifications(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388B14C()
{
  sub_24388BCF4();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 container];
  v0[6] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v4 = sub_24388BCB4(v3);

  return sub_24388B370(v4, v5, v6, v7);
}

uint64_t sub_24388B238()
{
  sub_24388BCF4();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v5 = *v1;
  sub_24388BC74();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24388BC44, 0, 0);
  }

  else
  {
    v7 = *(v3 + 40);

    v8 = sub_24388BCD0();

    return v9(v8);
  }
}

uint64_t sub_24388B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388B38C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v8 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = sub_243873884(&qword_27ED94CA0, &qword_24389DF78);
  *v5 = v0;
  v5[1] = sub_24388B4B4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000004FLL, 0x80000002438A1BD0, sub_24388B9F8, v4, v6);
}

uint64_t sub_24388B4B4()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v5 = *v1;
  sub_24388BC74();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_24388B5B8;
  }

  else
  {

    v7 = sub_24388AF84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24388B5B8()
{
  sub_24388A7BC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24388B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v7 = sub_243873884(&qword_27ED94CB8, &qword_24389DF88);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_24388AA00();
}

uint64_t sub_24388B78C(void *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    sub_243873884(&qword_27ED94CB8, &qword_24389DF88);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_243873DE8(a1, a2);
    sub_243873884(&qword_27ED94CB8, &qword_24389DF88);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_24388B80C(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithSerializedModifications_];

  sub_243873E40(a1, a2);
  return v6;
}

uint64_t sub_24388B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v7 = sub_243873884(&qword_27ED94CA8, &qword_24389DF80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_24388B080();
}

uint64_t sub_24388BA10(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    sub_243873884(&qword_27ED94CA8, &qword_24389DF80);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_243873884(&qword_27ED94CA8, &qword_24389DF80);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_24388BAF4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_243873884(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24388BBA0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  v10 = *(sub_243873884(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3 & 1, v11);
}

id sub_24388BD00(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 a2];
}

id CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_24388C1B0;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388C1B8;
    v9[3] = &unk_28569B550;
    v7 = _Block_copy(v9);

    [v3 setDeserializeCompletionBlock_];
    _Block_release(v7);
    return sub_243871FB4(a1, a2);
  }

  else
  {

    return [v2 setDeserializeCompletionBlock_];
  }
}

uint64_t (*CKDeserializeRecordModificationsOperation.deserializeResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 deserializeCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24388C2B0;
    *(v4 + 24) = v3;
    return sub_24388C2B8;
  }

  return result;
}

uint64_t (*sub_24388BEF4@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKDeserializeRecordModificationsOperation.deserializeResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_24388C3F4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_24388BF64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24388C3B4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_243871FA4(v1, v2);
  return CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v4, v3);
}

void sub_24388BFF4(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

void sub_24388C0D8(void *a1, uint64_t a2, id a3, void (*a4)(id, uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    a4(a3, 0, 1);
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    a4(v7, v8, 0);
  }
}

uint64_t sub_24388C1B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_24388C298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24388C2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    a1 = 0;
    a2 = 0;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (*(v3 + 16))(a1, a2, v5);
}

id (*CKDeserializeRecordModificationsOperation.deserializeResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDeserializeRecordModificationsOperation.deserializeResultBlock.getter();
  a1[1] = v3;
  return sub_24388C348;
}

id sub_24388C348(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_24388C428();
    sub_243871FA4(v2, v3);
    v4 = sub_24388C428();
    CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v4, v5);
    v6 = sub_24388C428();

    return sub_243871FB4(v6, v7);
  }

  else
  {
    v9 = sub_24388C428();
    return CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v9, v10);
  }
}

uint64_t sub_24388C3B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

void CKMergeable.merge(_:)(void *a1, uint64_t a2, void (**a3)(unint64_t, void))
{
  v5 = v4;
  v92 = a3;
  v100 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for Logger();
  sub_24387C120();
  v93 = v9;
  v94 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v88 = &v82[-v14];
  MEMORY[0x28223BE20](v15);
  v89 = &v82[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v82[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v82[-v21];
  sub_24387C120();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v82[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *(v27 + 16);
  v90 = v3;
  v28(v26, v3, a2, v24);
  sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  v91 = a2;
  if (swift_dynamicCast())
  {
    sub_24388DB40(v95, v97);
    CKLogDistributedSync.getter();
    v87 = a1;
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      swift_slowAlloc();
      v89 = v12;
      v32 = sub_24388DE98();
      *v8 = 138412290;
      *(v8 + 4) = v29;
      *v32 = v29;
      v33 = v29;
      _os_log_impl(&dword_243870000, v30, v31, "Merging record value into versioned mergeable %@", v8, 0xCu);
      sub_24388DA9C(v32, qword_27ED949D0, ":\x1B");
      v5 = v4;
      sub_24388A750();
      v8 = v12;
      v12 = v89;
      sub_24388A750();
    }

    v34 = v94[1];
    v35 = v8;
    v34(v22, v8);
    v36 = v98;
    v37 = v99;
    sub_24388A220(v97, v98);
    v38 = (*(v37 + 16))(v36, v37);
    v39 = v98;
    v40 = v99;
    sub_24388A220(v97, v98);
    v41 = [v29 deliverableDeltasWithCurrentStateVector:v38 usingDeliveryRequirements:{(*(v40 + 24))(v39, v40)}];

    if (v41)
    {
      sub_24388DAFC();
      v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (sub_24387233C(v42))
      {
        v92[2](v42, v91);

        if (v5)
        {

          sub_24387E12C(v97);
          return;
        }

        v8 = v35;
        [v29 didMergeDeltas_];
      }

      else
      {

        v8 = v35;
      }

      a1 = v87;
    }

    else
    {
      v8 = v35;
      a1 = v87;
    }

    sub_24387E12C(v97);
  }

  else
  {
    v86 = v4;
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    sub_24388DA9C(v95, &unk_27ED94CD8, &unk_24389DFA8);
    CKLogDistributedSync.getter();
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      swift_slowAlloc();
      v46 = sub_24388DE98();
      *v8 = 138412290;
      *(v8 + 4) = v43;
      *v46 = v43;
      v47 = v43;
      _os_log_impl(&dword_243870000, v44, v45, "Merging record value into non-versioned mergeable %@", v8, 0xCu);
      sub_24388DA9C(v46, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      v8 = v12;
      sub_24388A750();
    }

    v48 = v19;
    v34 = v94[1];
    v34(v48, v8);
    v49 = v43;
    v50 = [v43 multiValueRegister];
    v51 = [v50 stateVector];
    v52 = [v50 deltaDeliveryRequirements];
    v94 = v49;
    v53 = [v49 deliverableDeltasWithCurrentStateVector:v51 usingDeliveryRequirements:v52];

    if (v53)
    {
      v54 = sub_24388DAFC();
      v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (sub_24387233C(v55))
      {
        v87 = v8;
        v97[0] = 0;
        if (![v50 mergeDeltas:v53 error:v97])
        {
          v66 = v97[0];

          _convertNSErrorToError(_:)();
          swift_willThrow();

          return;
        }

        v85 = v54;
        v56 = v97[0];
        CKLogDistributedSync.getter();

        v57 = v50;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v84 = v58;
          v61 = v60;
          v62 = swift_slowAlloc();
          v83 = v59;
          v63 = v57;
          v64 = v62;
          *v61 = 134218242;
          *(v61 + 4) = sub_24387233C(v55);

          *(v61 + 12) = 2112;
          *(v61 + 14) = v63;
          *v64 = v63;
          v65 = v63;
          _os_log_impl(&dword_243870000, v84, v83, "Merged %ld deltas into multi-value register %@", v61, 0x16u);
          sub_24388DA9C(v64, qword_27ED949D0, ":\x1B");
          v57 = v63;
          sub_24388A750();
          sub_24388A750();
        }

        else
        {
        }

        v8 = v87;
        v87 = a1;
        v34(v89, v8);
        v73 = [v57 contents];
        if (!v73)
        {
          __break(1u);
          return;
        }

        v74 = v73;

        v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v76 = v86;
        v92[2](v75, v91);
        if (v76)
        {

          return;
        }

        CKLogDistributedSync.getter();
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v92 = v57;
          *v79 = 0;
          _os_log_impl(&dword_243870000, v77, v78, "Merged multi-value register changes into mergeable", v79, 2u);
          v57 = v92;
          sub_24388A750();
        }

        v34(v88, v8);
        v80 = [v57 persistedState];
        v81 = v94;
        [v94 setMultiValueRegisterState_];

        [v81 didMergeDeltas_];
        a1 = v87;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  CKLogDistributedSync.getter();
  v67 = a1;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    *(v70 + 4) = v67;
    *v71 = v67;
    v72 = v67;
    _os_log_impl(&dword_243870000, v68, v69, "Done merging record value %@", v70, 0xCu);
    sub_24388DA9C(v71, qword_27ED949D0, ":\x1B");
    sub_24388A750();
    sub_24388A750();
  }

  v34(v12, v8);
}

id CKMergeable.merge(_:)(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([a1 mergeIntoMergeable:v1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id CKMergeableRecordValue.addDeltasToSave(from:)(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  v4 = a1[4];
  sub_24388A220(a1, v3);
  v5 = sub_24388CFF0(v3, v4);
  v8[0] = 0;
  LODWORD(v2) = [v2 addDeltasToSaveFromMergeable:v5 error:v8];

  if (v2)
  {
    return v8[0];
  }

  v7 = v8[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_24388CFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24387C120();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = *(v7 + 16);
  v13(v19 - v14, v3, a1, v12);
  sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  if (swift_dynamicCast())
  {
    sub_24388DB40(v19, v21);
    sub_24388DDFC(v21, v19);
    v15 = objc_allocWithZone(type metadata accessor for BoxedCKVersionedMergeable());
    v16 = sub_24388D708(v19);
    sub_24387E12C(v21);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_24388DA9C(v19, &unk_27ED94CD8, &unk_24389DFA8);
    v17 = type metadata accessor for BoxedCKMergeable();
    (v13)(v10, v3, a1);
    return sub_24388DD18(v10, v17, a1, a2);
  }

  return v16;
}

void *CKMergeableDelta.data.getter()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 dataWithError_];
  v2 = v5[0];
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_24388D26C()
{
  v1 = OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388DDFC(v0 + v1, v6);
  sub_24388A220(v6, v6[3]);
  v2 = sub_24388DE84();
  v4 = v3(v2);
  sub_24387E12C(v6);
  return v4;
}

uint64_t sub_24388D3F0()
{
  v1 = v0 + OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  swift_beginAccess();
  sub_24388DC18(v1, *(v1 + 24));
  v2 = sub_24388DE84();
  v3(v2);
  return swift_endAccess();
}

uint64_t sub_24388D598()
{
  v9 = 0x203A6465786F42;
  v10 = 0xE700000000000000;
  v1 = (v0 + OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable);
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A220(v1, v1[3]);
  sub_24387C120();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v8 - v4, v3);
  v6 = String.init<A>(describing:)();
  MEMORY[0x245D42450](v6);

  return v9;
}

id sub_24388D708(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_24388A220(a1, v4);
  sub_24387C120();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = *(v7 + 16);
  v14 = v13(&v18 - v12, v11);
  v15 = MEMORY[0x28223BE20](v14);
  (v13)(&v18 - v12, &v18 - v12, v4, v15);
  v16 = sub_24388DC68(&v18 - v12, v2, v4, *(v5 + 8));
  (*(v7 + 8))(&v18 - v12, v4);
  sub_24387E12C(a1);
  return v16;
}

uint64_t sub_24388D854()
{
  v1 = OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388DDFC(v0 + v1, v11);
  sub_243873884(&qword_27ED94DC8, &unk_24389E040);
  v2 = sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  sub_24388DE60(v2, v3);
  v4 = v9;
  v5 = v10;
  sub_24388A220(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  sub_24387E12C(v8);
  return v6;
}

uint64_t sub_24388D958()
{
  v1 = OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388DDFC(v0 + v1, v11);
  sub_243873884(&qword_27ED94DC8, &unk_24389E040);
  v2 = sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  sub_24388DE60(v2, v3);
  v4 = v9;
  v5 = v10;
  sub_24388A220(v8, v9);
  v6 = (*(v5 + 24))(v4, v5);
  sub_24387E12C(v8);
  return v6;
}

id sub_24388DA64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24388DA9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_243873884(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24388DAFC()
{
  result = qword_27ED94CE8;
  if (!qword_27ED94CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED94CE8);
  }

  return result;
}

uint64_t sub_24388DB40(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24388DC18(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_24388DC68(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v7 = sub_24387FE78(v11);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  sub_24388DDFC(v11, &a2[OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for BoxedCKMergeable();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_24387E12C(v11);
  return v8;
}

id sub_24388DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for BoxedCKMergeable());
  (*(v7 + 32))(v9, a1, a3);
  return sub_24388DC68(v9, v10, a3, a4);
}

uint64_t sub_24388DDFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24388DE60(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_24388DE98()
{

  return swift_slowAlloc();
}

void Ckcode_RecordTransport.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = xmmword_24389D0D0;
  v4 = type metadata accessor for Ckcode_RecordTransport(0);
  UnknownStorage.init()();
  *(a2 + *(v4 + 24)) = xmmword_24389CB00;
  v5 = [a1 valueStore];
  sub_243873884(&qword_27ED94DD0, &qword_24389E060);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24389E050;
  *(v6 + 32) = sub_24388E154();
  sub_243873884(&qword_27ED94DD8, &unk_24389E068);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18[4] = sub_24388E21C;
  v18[5] = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24388E220;
  v18[3] = &unk_28569B578;
  v8 = _Block_copy(v18);

  v9 = [v5 containsValueOfClasses:isa options:1 passingTest:v8];

  _Block_release(v8);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (v9)
  {
    v10 = *MEMORY[0x277CBE660];
    v11 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v12 = sub_24388E3C4(v10, 0xD000000000000045, 0x80000002438A1DC0, 0);
    [v12 raise];
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeWithCoder_];
    v14 = [v13 encodedData];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_243879A04(*a2, a2[1]);
    *a2 = v15;
    a2[1] = v17;
  }
}

unint64_t sub_24388E154()
{
  result = qword_280D49520;
  if (!qword_280D49520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D49520);
  }

  return result;
}

id sub_24388E198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243889CD8(a3, v6);
  sub_24388E154();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = [v5 shouldReadAssetContentUsingClientProxy];

  return v3;
}

uint64_t sub_24388E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v9[3] = swift_getObjectType();
  v9[0] = a3;
  swift_unknownObjectRetain();
  LOBYTE(a3) = v4(v5, v7, v9);

  sub_24387E12C(v9);
  return a3 & 1;
}

uint64_t sub_24388E2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CKRecord.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((~v2 & 0x3000000000000000) == 0 || (v2 & 0x2000000000000000) != 0)
  {
    sub_24388E48C(a1);
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v4 = sub_243879908();
    sub_2438799B4(v4, v5);
    v6 = sub_243879908();
    sub_2438799C8(v6, v7);
    v8 = sub_243879908();
    v10 = sub_24388E4E8(v8, v9);
    v13 = v10;
    if (v10)
    {
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

      v14 = sub_243879908();
      sub_243879A04(v14, v15);
      sub_24388E48C(a1);
      if (v11)
      {
        return v11;
      }
    }

    else
    {
      sub_24388E48C(a1);
      v16 = sub_243879908();
      sub_243879A04(v16, v17);
    }
  }

  return 0;
}

id sub_24388E3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8.super.isa = 0;
    goto LABEL_6;
  }

  v7 = MEMORY[0x245D42400](a2, a3);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_24388E48C(uint64_t a1)
{
  v2 = type metadata accessor for Ckcode_RecordTransport(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24388E4E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:isa error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_243873E40(a1, a2);
  return v7;
}

void *CKSerializeRecordModificationsOperation.init(recordsToSave:recordIDsToDelete:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (a1)
  {
    sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
    v6 = v5;
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8 = v4;
    v7.super.isa = 0;
  }

  [v5 setRecordsToSave_];

  if (a2)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  [v5 setRecordIDsToDelete_];

  return v5;
}

id CKSerializeRecordModificationsOperation.serializeResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_24388EACC;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388EAD4;
    v9[3] = &unk_28569B5A0;
    v7 = _Block_copy(v9);

    [v3 setSerializeCompletionBlock_];
    _Block_release(v7);
    return sub_243871FB4(a1, a2);
  }

  else
  {

    return [v2 setSerializeCompletionBlock_];
  }
}

uint64_t (*CKSerializeRecordModificationsOperation.serializeResultBlock.getter())(uint64_t a1, unint64_t a2, char a3)
{
  result = [v0 serializeCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24388EB98;
    *(v4 + 24) = v3;
    return sub_24388EBA0;
  }

  return result;
}

uint64_t (*sub_24388E8A4@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKSerializeRecordModificationsOperation.serializeResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_24388C3F4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_24388E914(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24388C3B4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_243871FA4(v1, v2);
  return CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v4, v3);
}

void sub_24388E9A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_24388EA3C(uint64_t a1, unint64_t a2, id a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a3;
    (a4)(a3, 0, 1);
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      a1 = 0;
      a2 = 0xC000000000000000;
    }

    a4(a1, a2);
  }
}

uint64_t sub_24388EAD4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_2438729FC(v4, v8);
}

uint64_t sub_24388EB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24388EBA0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    a1 = 0;
    a2 = 0xF000000000000000;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (*(v3 + 16))(a1, a2, v5);
}

id (*CKSerializeRecordModificationsOperation.serializeResultBlock.modify(uint64_t (**a1)(uint64_t a1, unint64_t a2, char a3)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKSerializeRecordModificationsOperation.serializeResultBlock.getter();
  a1[1] = v3;
  return sub_24388EC30;
}

id sub_24388EC30(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_24388C428();
    sub_243871FA4(v2, v3);
    v4 = sub_24388C428();
    CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v4, v5);
    v6 = sub_24388C428();

    return sub_243871FB4(v6, v7);
  }

  else
  {
    v9 = sub_24388C428();
    return CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v9, v10);
  }
}

void CodeOperation.__allocating_init(service:functionName:request:destinationServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243899BAC();
  v5 = v4;
  sub_243899AD8();
  v6 = sub_243899AA0();
  CodeOperation.init(service:functionName:request:destinationServer:)(v6, v7, v8, v9, v10, v5);
  sub_243899B78();
}

uint64_t sub_24388ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2438999B0();
  sub_243898F0C(v3, v4, v5);
  if (v6)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_24388ED30(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_243898EB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_24388EE3C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for Ckcode_RecordTransport(0);
      sub_243876218();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v2;
      v6 = *(v4 - 8);
      sub_24388A634();
      for (i = v7 + v8; ; i += *(v6 + 72))
      {
        --v2;
        sub_24388A538();
        sub_24389955C(v3);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_24388A130(v3, type metadata accessor for Ckcode_RecordTransport);
    return v5;
  }

  return result;
}

void sub_24388EF18(uint64_t a1, void *a2)
{
  v3 = sub_24388A220((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    sub_24388EFA4(v3, v4);
  }

  else
  {

    sub_24388EFF0();
  }
}

uint64_t sub_24388F02C()
{
  sub_243899B18();
  v2 = sub_243873884(&qword_27ED94E78, &qword_24389E340);
  sub_243876184(v2);
  sub_243876190();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  type metadata accessor for TaskPriority();
  sub_243899A50();
  sub_243873554(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v0;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24389E350;
  v11[5] = v10;
  sub_2438979EC(0, 0, v5, &unk_24389E360, v11);
}

void sub_24388F12C(uint64_t a1)
{
  sub_243899BE0(a1);
  v2;
  v4 = v1;
  v3(v2, v1);

  sub_243899C30();
}

void sub_24388F1A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_243899A18();
  v3(v2);
}

void sub_24388F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_243899BAC();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_243873884(&qword_27ED94E68, &qword_24389E328);
  sub_243876184(v28);
  sub_243876190();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = *(v27 + 32);
  if (v25)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = type metadata accessor for URL();
    v34 = 0;
  }

  else
  {
    v33 = type metadata accessor for URL();
    v34 = 1;
  }

  sub_243873554(v31, v34, 1, v33);

  v35 = v23;
  v36 = v21;
  v32(v31, v23, v21);

  sub_24387605C(v31, &qword_27ED94E68, &qword_24389E328);
  sub_243899B78();
}

void sub_24388F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_243899BAC();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  sub_243899B18();
  v24 = sub_243873884(&qword_27ED94E68, &qword_24389E328);
  sub_243876184(v24);
  sub_243876190();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  sub_2438994F8(v19);
  v28 = type metadata accessor for URL();
  v30 = 0;
  if (sub_243873AA4(v27, 1, v28) != 1)
  {
    URL._bridgeToObjectiveC()(v29);
    v30 = v31;
    (*(*(v28 - 8) + 8))(v27, v28);
  }

  if (v23)
  {
    v23 = _convertErrorToNSError(_:)();
  }

  v32 = sub_243899AC8();
  v33(v32, v30, v18, v23);

  sub_243899B78();
}

void sub_24388F450(uint64_t a1)
{
  sub_243899BE0(a1);
  v7 = v2;
  v4 = v1;
  v3(v7, v1);

  sub_243899C30();
}

void sub_24388F4C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
LABEL_3:
    _convertErrorToNSError(_:)();
  }

LABEL_5:
  v5 = sub_243899A18();
  v6(v5);
}

void sub_24388F550(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v3.super.isa = 0;
  if (a2)
  {
LABEL_3:
    _convertErrorToNSError(_:)();
  }

LABEL_5:
  v4 = sub_243899A18();
  v5(v4);
}

uint64_t sub_24388F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Optional();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_24388F74C(v8);
}

uint64_t sub_24388F6A8@<X0>(uint64_t a1@<X8>)
{
  sub_24388A608();
  v4 = *(v3 + 112);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243899A04();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_24388F74C(uint64_t a1)
{
  sub_24388A608();
  v4 = *(v3 + 112);
  v5 = sub_24388A800();
  sub_24388A61C(v5, v6);
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243899A04();
  (*(v7 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24388F7F4@<X0>(uint64_t a1@<X8>)
{
  sub_24388A608();
  v4 = *(v3 + 120);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243899A04();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_24388F898(uint64_t a1)
{
  sub_24388A608();
  v4 = *(v3 + 120);
  v5 = sub_24388A800();
  sub_24388A61C(v5, v6);
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243899A04();
  (*(v7 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24388F940()
{
  sub_24388A768();

  return sub_243876224();
}

uint64_t sub_24388F990@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v4 = sub_24388A4D4();
  type metadata accessor for CodeOperation.DestinationServer(v4, v5);
  sub_243899A04();
  return (*(v6 + 16))(a1, &v1[v3]);
}

void *sub_24388FAA8()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA8));
  v2 = v1;
  return v1;
}

void sub_24388FAF8()
{
  sub_24388A768();
  v2 = *(v1 + 168);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
}

double sub_24388FB38@<D0>(uint64_t a1@<X8>)
{
  sub_24388FBD0(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_24388FB7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v7 = v4;
  sub_243880E88(v6[0], v1, v2, v3, v4);
  return sub_24388FC48(v6);
}

uint64_t sub_24388FBD0@<X0>(uint64_t a1@<X8>)
{
  sub_24388A768();
  v4 = v1 + *(v3 + 176);
  sub_24388A4E4();
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a1 = *v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v9 = *(v4 + 32);
  *(a1 + 32) = v9;
  return sub_243880E88(v5, v6, v7, v8, v9);
}

uint64_t sub_24388FC48(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_24388A768();
  sub_24388A434(v4);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v9;
  v10 = *(v1 + 32);
  *(v1 + 32) = v3;
  return sub_243880F5C(v5, v6, v7, v8, v10);
}

double sub_24388FCBC@<D0>(_OWORD *a1@<X8>)
{
  sub_24388FD3C(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24388FCF8(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_2438764C4(v3[0], v1);
  return sub_24388FD8C(v3);
}

uint64_t sub_24388FD3C@<X0>(uint64_t *a1@<X8>)
{
  sub_24388FBD0(&v4);
  result = v4;
  v3 = v5;
  if (v8)
  {
    sub_243880F5C(v4, v5, v6, v7, v8);
    result = 0;
    v3 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24388FD8C(void *a1)
{
  v1 = a1[1];
  if (v1 >> 60 == 15)
  {
    v7 = 0u;
    v8 = 0u;
    v9 = 2;
    return sub_24388FC48(&v7);
  }

  else
  {
    *&v7 = *a1;
    *(&v7 + 1) = v1;
    v8 = 0uLL;
    v9 = 0;
    v3 = sub_24388A708();
    sub_243873DE8(v3, v4);
    sub_24388FC48(&v7);
    v5 = sub_24388A708();
    return sub_2438729FC(v5, v6);
  }
}

uint64_t (*sub_24388FE0C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  sub_24388FD3C(a1);
  return sub_24388FE54;
}

uint64_t sub_24388FE54(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v8 = *a1;
    v9 = v2;
    v3 = sub_24388A708();
    sub_2438764C4(v3, v4);
    sub_24388FD8C(&v8);
    v5 = sub_24388A708();

    return sub_2438729FC(v5, v6);
  }

  else
  {
    v8 = *a1;
    v9 = v2;
    return sub_24388FD8C(&v8);
  }
}

uint64_t sub_24388FED4()
{
  sub_24388A768();
  v2 = *(v1 + 184);
  sub_24388A4E4();
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_24388FF2C(char a1)
{
  sub_24388A768();
  v4 = *(v3 + 184);
  result = sub_24388A590(v5);
  *(v1 + v4) = a1;
  return result;
}

uint64_t sub_24388FF84()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

void *sub_24388FFE4()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xC0));
  v2 = v1;
  return v1;
}

void sub_243890030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243899BAC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_2438819B4(v11, *v4);
  if (!v13 || (v14 = v13, v15 = sub_243876218(), v17 = sub_24388ECDC(v15, v16, v14), , !v17) || (v18 = sub_24388ED30(v6, v17), , !v18))
  {
    v19 = objc_allocWithZone(MEMORY[0x277CBC510]);
    v20 = v12;

    sub_24389015C([v19 init], v20, v10, v8, v6);
    v18 = 0;
  }

  v21 = sub_2438819B4(v12, *v4);
  if (!v21)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v21;
  v23 = sub_243876218();
  v25 = sub_24388ECDC(v23, v24, v22);
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = sub_24388ED30(v6, v25);

  if (v26)
  {

    sub_243899B78();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_24389015C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = a2;
  v13 = sub_2438819B4(v12, v11);

  if (v13)
  {
  }

  else
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v88 = *v6;
    sub_243899208(MEMORY[0x277D84F98], v14, isUniquelyReferenced_nonNull_native);

    v11 = *v88;
    *v6 = *v88;
  }

  v16 = v12;

  v17 = sub_2438819B4(v16, v11);
  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = v17;
  v81 = a1;

  v19 = sub_243899A7C();
  v21 = sub_24388ECDC(v19, v20, v18);

  v83 = a5;
  if (v21)
  {
  }

  else
  {
    v22 = v16;
    swift_bridgeObjectRetain_n();
    v23 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    *v89 = *v6;
    sub_243898F8C();
    sub_243899A30();
    if (__OFADD__(v26, v27))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v28 = v24;
    v29 = v25;
    v30 = sub_243873884(&unk_27ED94E80, &unk_24389E390);
    if (sub_243899BC0(v30, v31, v32, v33, v34, v35, v36, v37, v80, v81, a5, v85, v86, v89[0]))
    {
      v38 = sub_243898F8C();
      if ((v29 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      v28 = v38;
    }

    if ((v29 & 1) == 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v40 = *(*(*v90 + 56) + 8 * v28);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v40;
    sub_2438990D8(MEMORY[0x277D84F98], a3, a4, v41);

    if (v40)
    {
      *(*(*v90 + 56) + 8 * v28) = v40;
    }

    else
    {

      sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
      sub_243873884(&unk_27ED94E90, &unk_24389DF30);
      sub_243889FD8();
      _NativeDictionary._delete(at:)();
    }

    *v6 = *v90;
  }

  v42 = v16;
  swift_bridgeObjectRetain_n();
  v43 = v42;
  swift_isUniquelyReferenced_nonNull_native();
  *v91 = *v6;
  sub_243898F8C();
  sub_243899A30();
  if (__OFADD__(v46, v47))
  {
    __break(1u);
    goto LABEL_31;
  }

  v48 = v44;
  v49 = v45;
  v50 = sub_243873884(&unk_27ED94E80, &unk_24389E390);
  if (sub_243899BC0(v50, v51, v52, v53, v54, v55, v56, v57, v80, v81, v83, v85, v86, v91[0]))
  {
    v58 = sub_243898F8C();
    if ((v49 & 1) == (v59 & 1))
    {
      v48 = v58;
      goto LABEL_20;
    }

LABEL_37:
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    goto LABEL_38;
  }

LABEL_20:
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60 = *(*(*v92 + 56) + 8 * v48);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v60;
  sub_2438999B0();
  v62 = sub_243899A7C();
  sub_243898F0C(v62, v63, v64);
  sub_243899A30();
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v70 = v65;
  v71 = v66;
  sub_243873884(&unk_27ED94EA0, &unk_24389E3A0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v61, v69))
  {
    sub_2438999B0();
    v72 = sub_243899A7C();
    v75 = sub_243898F0C(v72, v73, v74);
    if ((v71 & 1) != (v76 & 1))
    {
LABEL_38:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v70 = v75;
  }

  if ((v71 & 1) == 0)
  {
    goto LABEL_33;
  }

  v77 = *(*(v60 + 56) + 8 * v70);

  v78 = v82;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  sub_243898FCC(v78, v84, v79);
  if (v77)
  {

    *(*(v87 + 56) + 8 * v70) = v77;
  }

  else
  {

    sub_24388A040(*(v87 + 48) + 16 * v70);
    sub_243873884(&qword_27ED94B10, &qword_24389DF40);
    sub_243899B8C();
    _NativeDictionary._delete(at:)();
  }

  *(*(*v92 + 56) + 8 * v48) = v87;

  *v6 = *v92;
}

void sub_243890608(uint64_t a1, void *a2)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_243899208(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v13;
LABEL_5:
    sub_243899C30();
    return;
  }

  v5 = sub_243898F8C();
  if (v6)
  {
    v7 = v5;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v9 = *(*v2 + 24);
    sub_243873884(&unk_27ED94E80, &unk_24389E390);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9);

    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    sub_243873884(&unk_27ED94E90, &unk_24389DF30);
    sub_243889FD8();
    _NativeDictionary._delete(at:)();

    *v2 = v14;
    goto LABEL_5;
  }

  sub_243899C30();
}

uint64_t sub_243890778()
{
  sub_24388A768();
  sub_24388A4E4();
  swift_beginAccess();
}

void *CodeOperation.init(service:functionName:request:destinationServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = MEMORY[0x277D85000];
  v11 = *MEMORY[0x277D85000];
  v12 = *MEMORY[0x277D85000] & *v6;
  v13 = *(v12 + 0x70);
  v14 = *(v12 + 0x50);
  sub_243899A50();
  sub_243873554(v15, v16, v17, v14);
  sub_2438999DC();
  v18 = *((v11 & v9) + 0x58);
  sub_243899A50();
  sub_243873554(v19, v20, v21, v18);
  sub_2438999DC();
  v23 = MEMORY[0x277D84F90];
  *(v6 + *(v22 + 152)) = MEMORY[0x277D84F90];
  *(v6 + *((*v10 & *v6) + 0xA0)) = v23;
  sub_2438999DC();
  *(v6 + *(v24 + 168)) = 0;
  sub_2438999DC();
  v26 = v6 + *(v25 + 176);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[32] = 2;
  sub_2438999DC();
  *(v6 + *(v27 + 184)) = 0;
  sub_2438999DC();
  *(v6 + *(v28 + 192)) = 0;
  *&v29 = v14;
  *(&v29 + 1) = v18;
  v59 = v29;
  v64 = *(v12 + 96);
  *(v6 + *((*v10 & *v6) + 0xC8)) = MEMORY[0x277D84F98];
  sub_2438999DC();
  sub_24388A744(*(v30 + 208));
  sub_2438999DC();
  sub_24388A744(*(v31 + 216));
  sub_2438999DC();
  sub_24388A744(*(v32 + 224));
  sub_2438999DC();
  sub_24388A744(*(v33 + 248));
  sub_2438999DC();
  sub_24388A744(*(v34 + 256));
  sub_24388A61C(v6 + v13, v66);
  v35 = type metadata accessor for Optional();
  sub_24387993C();
  v37 = v36;
  (*(v36 + 24))(v6 + v13, a5, v35);
  swift_endAccess();
  sub_2438999DC();
  v39 = (v6 + *(v38 + 128));
  *v39 = a1;
  v39[1] = a2;
  sub_2438999DC();
  v41 = (v6 + *(v40 + 136));
  *v41 = a3;
  v41[1] = a4;
  sub_2438999DC();
  v43 = *(v42 + 144);
  v66[0] = v59;
  v66[1] = v64;
  v44 = type metadata accessor for CodeOperation.DestinationServer(0, v66);
  sub_24387993C();
  v46 = v45;
  (*(v45 + 16))(v6 + v43, a6, v44);
  sub_2438999DC();
  *(v6 + *(v47 + 240)) = 0;
  sub_2438999DC();
  *(v6 + *(v48 + 232)) = 1;
  v49 = sub_243899B60();
  v65.receiver = v6;
  v65.super_class = type metadata accessor for CodeOperation(v49, v50);
  v51 = objc_msgSendSuper2(&v65, sel_init);
  v52 = sub_243899B60();
  type metadata accessor for CodeOperation.CallbackRelay(v52, v53);
  v54 = v51;
  v55 = sub_243890C34(v54);
  (*(v46 + 8))(a6, v44);
  (*(v37 + 8))(a5, v35);
  v56 = *((*v10 & *v54) + 0xC0);
  v57 = *(v54 + v56);
  *(v54 + v56) = v55;

  return v54;
}

void CodeOperation.__allocating_init(serviceName:functionName:request:local:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243899BAC();
  sub_243899AD8();
  sub_243899AA0();
  CodeOperation.init(serviceName:functionName:request:local:)();
  sub_243899B78();
}

void CodeOperation.init(serviceName:functionName:request:local:)()
{
  sub_24388A664();
  v70 = v1;
  v3 = v2;
  v68 = v4;
  v69 = v5;
  v65 = v6;
  v66 = v7;
  v8 = MEMORY[0x277D85000];
  sub_243899B48();
  v10 = *(v9 + 80);
  sub_243899B48();
  v12 = *(v11 + 88);
  sub_243899B48();
  v71 = *(v13 + 96);
  sub_243899B48();
  v64 = *(v14 + 104);
  v73 = v10;
  v74 = v12;
  v75 = v15;
  v76 = v64;
  v67 = type metadata accessor for CodeOperation.DestinationServer(0, &v73);
  sub_243876204();
  v17 = v16;
  sub_243876190();
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  sub_243899B48();
  v22 = *(v21 + 112);
  sub_243899A50();
  sub_243873554(v23, v24, v25, v10);
  sub_2438999C8();
  sub_243899A50();
  sub_243873554(v26, v27, v28, v12);
  sub_2438999C8();
  v30 = MEMORY[0x277D84F90];
  *(v0 + *(v29 + 152)) = MEMORY[0x277D84F90];
  *(v0 + *((*v8 & *v0) + 0xA0)) = v30;
  sub_2438999C8();
  *(v0 + *(v31 + 168)) = 0;
  sub_2438999C8();
  v33 = v0 + *(v32 + 176);
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 2;
  sub_2438999C8();
  *(v0 + *(v34 + 184)) = 0;
  sub_2438999C8();
  *(v0 + *(v35 + 192)) = 0;
  sub_2438999C8();
  *(v0 + *(v36 + 200)) = MEMORY[0x277D84F98];
  sub_2438999C8();
  sub_24388A744(*(v37 + 208));
  sub_2438999C8();
  sub_24388A744(*(v38 + 216));
  sub_2438999C8();
  sub_24388A744(*(v39 + 224));
  sub_2438999C8();
  sub_24388A744(*(v40 + 248));
  sub_2438999C8();
  sub_24388A744(*(v41 + 256));
  sub_24388A61C(v0 + v22, &v73);
  sub_243899B54();
  v42 = type metadata accessor for Optional();
  sub_24387993C();
  v44 = v43;
  (*(v43 + 24))(v0 + v22, v3, v42);
  swift_endAccess();
  sub_2438999C8();
  v46 = (v0 + *(v45 + 128));
  v47 = v66;
  *v46 = v65;
  v46[1] = v47;
  sub_2438999C8();
  v49 = (v0 + *(v48 + 136));
  v50 = v69;
  *v49 = v68;
  v49[1] = v50;
  v51 = type metadata accessor for URL();
  if (v70)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  sub_243873554(v20, v52, 2, v51);
  sub_2438999C8();
  (*(v17 + 32))(v0 + *(v53 + 144), v20, v67);
  sub_2438999C8();
  *(v0 + *(v54 + 240)) = 0;
  sub_2438999C8();
  *(v0 + *(v55 + 232)) = 1;
  v73 = v10;
  v74 = v12;
  v56 = v71;
  v57 = v64;
  v75 = v71;
  v76 = v64;
  v58 = type metadata accessor for CodeOperation(0, &v73);
  v72.receiver = v0;
  v72.super_class = v58;
  v59 = objc_msgSendSuper2(&v72, sel_init);
  v73 = v10;
  v74 = v12;
  v75 = v56;
  v76 = v57;
  type metadata accessor for CodeOperation.CallbackRelay(0, &v73);
  v60 = v59;
  v61 = sub_243890C34(v60);
  (*(v44 + 8))(v3, v42);
  v62 = *((*v8 & *v60) + 0xC0);
  v63 = *(v60 + v62);
  *(v60 + v62) = v61;

  sub_24388A67C();
}

uint64_t sub_2438910D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = sub_243882320(a1);
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_243899934;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_243891148(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_243871FA4(v1, v2);
  return sub_24388236C();
}

uint64_t sub_2438911D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_24389121C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = sub_243882548(a1);
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_2438998FC;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_24389128C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_243871FA4(v1, v2);
  return sub_243882594();
}

uint64_t sub_24389131C()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_24389137C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  v10 = *(a1 + a2 - 32);
  result = sub_2438914A4();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v9;
    *(result + 48) = v6;
    *(result + 56) = v7;
    v8 = sub_24389989C;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_243891408(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 16);
    *(v7 + 16) = *(v6 - 32);
    *(v7 + 32) = v8;
    *(v7 + 48) = v4;
    *(v7 + 56) = v5;
  }

  sub_243871FA4(v4, v5);
  return sub_2438914F0();
}

uint64_t sub_2438914A4()
{
  sub_24388A768();
  sub_24388A480(v0);
  return sub_24388A458();
}

uint64_t sub_2438914F0()
{
  sub_24388A5EC();
  sub_24388A768();
  sub_24388A434(v0);
  return sub_24388A824();
}

uint64_t sub_243891544()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_2438915A4()
{
  sub_24388A768();
  v2 = *(v1 + 232);
  sub_24388A4E4();
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_2438915FC()
{
  sub_24388A768();
  v2 = *(v1 + 240);
  sub_24388A4E4();
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_243891654(char a1)
{
  sub_24388A768();
  v4 = *(v3 + 240);
  result = sub_24388A590(v5);
  *(v1 + v4) = a1;
  return result;
}

uint64_t sub_2438916AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  v10 = *(a1 + a2 - 32);
  result = sub_2438917D4();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v9;
    *(result + 48) = v6;
    *(result + 56) = v7;
    v8 = sub_24388A2AC;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_243891738(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 16);
    *(v7 + 16) = *(v6 - 32);
    *(v7 + 32) = v8;
    *(v7 + 48) = v4;
    *(v7 + 56) = v5;
  }

  sub_243871FA4(v4, v5);
  return sub_243891820();
}

uint64_t sub_2438917D4()
{
  sub_24388A768();
  sub_24388A480(v0);
  return sub_24388A458();
}

uint64_t sub_243891820()
{
  sub_24388A5EC();
  sub_24388A768();
  sub_24388A434(v0);
  return sub_24388A824();
}

uint64_t sub_243891874()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_2438918D4()
{
  sub_24388A768();
  v0 = sub_243876224();
  sub_243871FA4(v0, v1);
  return sub_243876224();
}

uint64_t sub_243891924()
{
  v1 = sub_24388A4D4();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CodeOperation(v1, v2);
  v3 = objc_msgSendSuper2(&v6, sel_hasCKOperationCallbacksSet);
  if (v3)
  {
    return 1;
  }

  result = sub_243882320(v3);
  if (result || (result = sub_2438914A4()) != 0 || (result = sub_243882548(0)) != 0 || (result = sub_2438917D4()) != 0)
  {
    sub_243871FB4(result, v5);
    return 1;
  }

  return result;
}

uint64_t sub_2438919C0(void *a1)
{
  v1 = a1;
  v2 = sub_243891924();

  return v2 & 1;
}

id sub_2438919F4()
{
  v24 = *MEMORY[0x277D85DE8];
  sub_24388A768();
  v2 = v1;
  v5 = *((v4 & v3) + 0x50);
  v6 = type metadata accessor for Optional();
  sub_243876204();
  v8 = v7;
  sub_243876190();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_24388F6A8(&v19 - v10);
  v12 = sub_243873AA4(v11, 1, v5);
  (*(v8 + 8))(v11, v6);
  if (v12 == 1 || (v13 = [v0 resolvedConfiguration], v14 = objc_msgSend(v13, sel_isLongLived), v13, (v14 & 1) != 0))
  {
    sub_24388A714();
    related decl 'e' for CKErrorCode.init(_:description:)();
    return swift_willThrow();
  }

  v20 = 0;
  v21 = v5;
  v16 = *(v2 + 104);
  v22 = *(v2 + 88);
  v23 = v16;
  v17 = type metadata accessor for CodeOperation(0, &v21);
  v19.receiver = v0;
  v19.super_class = v17;
  if ((objc_msgSendSuper2(&v19, sel_CKOperationShouldRun_, &v20) & 1) == 0)
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return v20;
}

uint64_t sub_243891C30(void *a1)
{
  v1 = a1;
  sub_2438919F4();

  return 1;
}

void sub_243891CC4()
{
  sub_24388A664();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v98 = type metadata accessor for Google_Protobuf_Any();
  sub_243876204();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_24388A424();
  v97 = v8 - v7;
  v9 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v10 = sub_243876184(v9);
  MEMORY[0x28223BE20](v10);
  sub_24388A414();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v104 = &v87 - v15;
  v16 = type metadata accessor for Ckcode_ProtectedEnvelope(0);
  sub_243876204();
  v103 = v17;
  MEMORY[0x28223BE20](v18);
  sub_24388A424();
  v102 = v20 - v19;
  v21 = *((v2 & v1) + 0x50);
  sub_243899B54();
  v22 = type metadata accessor for Optional();
  sub_243876184(v22);
  sub_243876190();
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  sub_24387C120();
  v27 = v26;
  sub_243876190();
  MEMORY[0x28223BE20](v28);
  v30 = &v87 - v29;
  sub_24388F6A8(v25);
  if (sub_243873AA4(v25, 1, v21) == 1)
  {
    goto LABEL_30;
  }

  v101 = v16;
  v99 = v5;
  v95 = v13;
  v96 = v0;
  v89 = v27;
  (*(v27 + 32))(v30, v25, v21);
  v31 = type metadata accessor for Ckcode_RecordTransport(0);
  v88 = v3;
  v32 = *(v3 + 96);
  sub_24388A3D0();
  v35 = sub_243897EA4(v33, v34);
  v92 = v21;
  v90 = v32;
  v91 = v30;
  v36 = sub_24387BBC4(v31, v21, v31, v32, v35);
  v37 = 0;
  v38 = *(v36 + 16);
  v39 = v31 - 8;
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v38 == v37)
    {

      sub_24388A508();
      v59 = sub_243897EA4(v57, v58);
      v60 = sub_24387BBC4(v101, v92, v101, v90, v59);
      v62 = v95;
      v61 = v96;
      v101 = *(v60 + 16);
      if (!v101)
      {
LABEL_26:

        sub_243880CB4(v40);
        sub_24388FA74();
        v84 = *(v88 + 88);
        v85 = *(v88 + 104);
        v83 = v92;
        v105[0] = v92;
        v105[1] = v84;
        v105[2] = v90;
        v105[3] = v85;
        v86 = type metadata accessor for CodeOperation(0, v105);
        v106.receiver = v61;
        v106.super_class = v86;
        objc_msgSendSuper2(&v106, sel_performCKOperation);
LABEL_27:
        (*(v89 + 8))(v91, v83);
        sub_24388A67C();
        return;
      }

      v63 = 0;
      sub_24388A634();
      v100 = v60 + v64;
      v93 = (v99 + 8);
      v94 = (v99 + 32);
      v65 = MEMORY[0x277D84F90];
      v99 = "localSerialization";
      while (1)
      {
        if (v63 >= *(v60 + 16))
        {
          goto LABEL_29;
        }

        v66 = v102;
        sub_24389955C(v100 + *(v103 + 72) * v63);
        v67 = v104;
        sub_2438994F8(v66);
        sub_24388A130(v66, type metadata accessor for Ckcode_ProtectedEnvelope);
        v68 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
        if (sub_243873AA4(v67, 1, v68) != 1)
        {
          sub_2438994F8(v104);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            (*v94)(v97, v62, v98);
            sub_243897EA4(qword_280D49098, MEMORY[0x277D215C8]);
            v69 = Message.serializedData(partial:)();
            v71 = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_24388A5C4();
              v65 = sub_243888BE8(v77, v78, v79, v65);
            }

            v73 = *(v65 + 2);
            v72 = *(v65 + 3);
            if (v73 >= v72 >> 1)
            {
              v80 = sub_243899ABC(v72);
              v65 = sub_243888BE8(v80, v73 + 1, 1, v65);
            }

            (*v93)(v97, v98);
            *(v65 + 2) = v73 + 1;
            v74 = &v65[16 * v73];
            *(v74 + 4) = v69;
            *(v74 + 5) = v71;
            v62 = v95;
            v61 = v96;
            goto LABEL_23;
          }

          sub_24388A130(v62, type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents);
        }

        sub_24388A714();
        v75 = related decl 'e' for CKErrorCode.init(_:description:)();
        v76 = _convertErrorToNSError(_:)();

        [v61 finishWithError_];
LABEL_23:
        ++v63;
        sub_24387605C(v104, &qword_27ED94960, &qword_24389CB10);
        if (v101 == v63)
        {
          goto LABEL_26;
        }
      }
    }

    if (v37 >= *(v36 + 16))
    {
      break;
    }

    v41 = (v36 + ((*(*v39 + 80) + 32) & ~*(*v39 + 80)) + *(*v39 + 72) * v37);
    v42 = v41[1];
    if ((v42 & 0x2000000000000000) != 0)
    {

      sub_24388A714();
      v81 = related decl 'e' for CKErrorCode.init(_:description:)();
      v82 = _convertErrorToNSError(_:)();

      [v96 finishWithError_];
      v83 = v92;
      goto LABEL_27;
    }

    v43 = *v41;
    v44 = sub_243899B30();
    sub_2438799C8(v44, v45);
    v46 = sub_243899B30();
    sub_243873DE8(v46, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_24388A5C4();
      v40 = sub_243888BE8(v53, v54, v55, v40);
    }

    v49 = *(v40 + 2);
    v48 = *(v40 + 3);
    if (v49 >= v48 >> 1)
    {
      v56 = sub_243899ABC(v48);
      v40 = sub_243888BE8(v56, v49 + 1, 1, v40);
    }

    v50 = sub_243899B30();
    sub_243879A04(v50, v51);
    *(v40 + 2) = v49 + 1;
    v52 = &v40[16 * v49];
    *(v52 + 4) = v43;
    *(v52 + 5) = v42;
    ++v37;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  sub_243899A40();
  swift_unexpectedError();
  __break(1u);
}

void sub_2438924EC(void *a1)
{
  v1 = a1;
  sub_243891CC4();
}

uint64_t sub_243892534()
{
  sub_2438836CC();

  return swift_getObjCClassFromMetadata();
}

id sub_24389255C()
{
  v0 = sub_243883720();

  return v0;
}

void sub_24389259C(void *a1)
{
  v1 = a1;
  sub_243892584();
}

void sub_243892600(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_2438925E4(a3);
}

id sub_243892658(void *a1)
{
  v1 = a1;
  v2 = sub_243883828();

  return v2;
}

void sub_24389269C()
{
  sub_24388A664();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x277D85000];
  v7 = type metadata accessor for URL();
  sub_243876204();
  v52 = v8;
  MEMORY[0x28223BE20](v9);
  sub_24388A424();
  v12 = v11 - v10;
  v13 = *((v6 & v5) + 0x50);
  v14 = *((v6 & v5) + 0x60);
  v15 = *((v6 & v5) + 0x68);
  v55 = *((v6 & v5) + 0x58);
  v56 = v13;
  v59 = v13;
  v60 = v55;
  v53 = v15;
  v54 = v14;
  v61 = v14;
  v62 = v15;
  v16 = type metadata accessor for CodeOperation.DestinationServer(0, &v59);
  sub_243876184(v16);
  sub_243876190();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  objc_opt_self();
  v57 = v4;
  v20 = swift_dynamicCastObjCClassUnconditional();
  v21 = sub_243880940(v20);
  MEMORY[0x245D42400](v21);
  v22 = sub_243899C18();
  sub_243899C00(v22, sel_setServiceName_);

  v23 = sub_24388F940();
  MEMORY[0x245D42400](v23);
  v24 = sub_243899C18();
  sub_243899C00(v24, sel_setFunctionName_);

  sub_243880C80();
  v25 = MEMORY[0x277CC9318];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setRequestLocalSerializations_];

  sub_24388FA40();
  Array._bridgeToObjectiveC()();
  v27 = sub_243899C18();
  sub_243899C00(v27, sel_setRequestLocalEnvelopes_);

  sub_24388FBD0(&v59);
  v29 = v61;
  v28 = v62;
  if (v63)
  {
    if (v63 == 1)
    {
      [v20 setDataProtectionType_];
      v30 = sub_243899B3C();
      v31 = MEMORY[0x245D42400](v30);

      [v20 setTrustedTargetDomain_];

      MEMORY[0x245D42400](v29, v28);
      v32 = sub_243899C18();
      sub_243899C00(v32, sel_setTrustedTargetOID_);
    }

    else
    {
      [v20 setDataProtectionType_];
    }
  }

  else
  {
    v33 = sub_243899B3C();
    sub_243873DE8(v33, v34);
    sub_243899B3C();
    v35 = Data._bridgeToObjectiveC()().super.isa;
    v36 = sub_243899B3C();
    sub_243880F5C(v36, v37, v29, v28, 0);
    [v20 setPermittedRemoteMeasurement_];

    [v20 setDataProtectionType_];
    v38 = sub_243899B3C();
    sub_243880F5C(v38, v39, v29, v28, 0);
  }

  v40 = v53;
  [v20 setShouldSendRecordPCSKeys_];
  sub_24388F990(v19);
  v41 = sub_243873AA4(v19, 2, v7);
  if (v41)
  {
    if (v41 == 1)
    {
      [v20 setLegacyIsLocalBit_];
    }

    else
    {
      [v20 setLegacyIsLocalBit_];
    }
  }

  else
  {
    v42 = v52;
    (*(v52 + 32))(v12, v19, v7);
    [v20 setLegacyIsLocalBit_];
    URL._bridgeToObjectiveC()(v43);
    v45 = v44;
    [v20 setClientRuntimeProvidedServiceURL_];

    (*(v42 + 8))(v12, v7);
  }

  v47 = v56;
  v46 = v57;
  v49 = v54;
  v48 = v55;
  [v20 setShouldFetchAssetContentInMemory_];
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v40;
  v50 = type metadata accessor for CodeOperation(0, &v59);
  v58.receiver = v2;
  v58.super_class = v50;
  objc_msgSendSuper2(&v58, sel_fillOutOperationInfo_, v46);
  sub_24388A67C();
}

void sub_243892AFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24389269C();
}

id sub_243892BD0(uint64_t a1)
{
  sub_24388A094(0, &qword_280D49658, 0x277CBC7B0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  sub_24388A094(0, &qword_280D49670, 0x277CBC3E0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_24388A4D4();
  v5 = (*MEMORY[0x277D85000] & *type metadata accessor for CodeOperation(v3, v4));
  v7.receiver = ObjCClassFromMetadata;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, a1);
}

void sub_243892CB4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_243892BD0(v4);
}

void sub_243892D04()
{
  sub_24388A664();
  v99 = v1;
  v3 = v2;
  v5 = v4;
  v108 = v6;
  v106 = v7;
  v8 = *v0;
  v9 = *MEMORY[0x277D85000];
  v103 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for Ckcode_ProtectedEnvelope(0);
  sub_243876204();
  v104 = v11;
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  sub_24388A424();
  v95 = v13 - v12;
  v109 = type metadata accessor for Ckcode_RecordTransport(0);
  sub_243876204();
  v107 = v14;
  MEMORY[0x28223BE20](v15);
  sub_24388A424();
  v18 = v17 - v16;
  v19 = *((v9 & v8) + 0x50);
  v20 = type metadata accessor for Optional();
  sub_243876184(v20);
  sub_243876190();
  MEMORY[0x28223BE20](v21);
  v23 = &v91 - v22;
  sub_24387C120();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_24388A414();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30);
  v96 = &v91 - v31;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  v97 = v0;
  sub_24388F6A8(v23);
  if (sub_243873AA4(v23, 1, v19) == 1)
  {
    __break(1u);
  }

  else
  {
    v98 = v3;
    v35 = *(v25 + 32);
    v93 = v25 + 32;
    v94 = v29;
    v92 = v35;
    v35(v34, v23, v19);
    v36 = v106;
    v37 = *(v106 + 16);
    v38 = MEMORY[0x277D84F90];
    v101 = v25;
    v102 = v19;
    v100 = v34;
    if (v37)
    {
      v91 = v5;
      v39 = sub_24388A6CC(MEMORY[0x277D84F90]);
      sub_243899608(v39, v40, v41);
      v43 = 0;
      v44 = v110;
      v106 = v36 + 32;
      do
      {
        *&v45 = MEMORY[0x28223BE20](v42);
        *(&v91 - 2) = v45;
        v46 = v108;
        *(&v91 - 2) = v43;
        *(&v91 - 1) = v46;
        v47 = sub_24388A80C();
        sub_243873DE8(v47, v48);
        sub_24388A3D0();
        v50 = sub_243897EA4(qword_280D49750, v49);
        static Message.with(_:)();
        v51 = sub_24388A80C();
        sub_243873E40(v51, v52);
        v110 = v44;
        v54 = v44[2];
        v53 = v44[3];
        if (v54 >= v53 >> 1)
        {
          v55 = sub_243899ABC(v53);
          sub_243899608(v55, v54 + 1, 1);
          v44 = v110;
        }

        ++v43;
        v44[2] = v54 + 1;
        sub_24388A634();
        sub_24388A4F0();
        v42 = sub_243899660(v18);
      }

      while (v37 != v43);
      v56 = v102;
      v57 = v96;
      v58 = v100;
      sub_24387C358(v44, v102, v109, *(v103 + 96), v50, v96);
      v59 = sub_24388A640();
      v60(v59);

      v92(v58, v57, v56);
      if (*MEMORY[0x277CBC810] == 1)
      {
        v61 = sub_2438918D4();
        v5 = v91;
        if (v61)
        {
          v61(v58);
          v62 = sub_243876224();
          sub_243871FB4(v62, v63);
        }
      }

      else
      {
        v5 = v91;
      }

      v38 = MEMORY[0x277D84F90];
    }

    v64 = *(v5 + 16);
    if (v64)
    {
      v65 = sub_24388A6CC(v38);
      sub_2438995B0(v65, v66, v67);
      v69 = v110;
      v70 = v5 + 32;
      v71 = v95;
      do
      {
        *&v72 = MEMORY[0x28223BE20](v68);
        *(&v91 - 1) = v72;
        v73 = sub_24388A80C();
        sub_243873DE8(v73, v74);
        sub_24388A508();
        v109 = sub_243897EA4(&qword_280D496C0, v75);
        static Message.with(_:)();
        v76 = sub_24388A80C();
        sub_243873E40(v76, v77);
        v110 = v69;
        v79 = v69[2];
        v78 = v69[3];
        if (v79 >= v78 >> 1)
        {
          v80 = sub_243899ABC(v78);
          sub_2438995B0(v80, v79 + 1, 1);
          v69 = v110;
        }

        v69[2] = v79 + 1;
        sub_24388A634();
        v68 = sub_243899660(v71);
        v70 += 16;
        --v64;
      }

      while (v64);
      v81 = v102;
      v82 = v94;
      v83 = v100;
      sub_24387C358(v69, v102, v105, *(v103 + 96), v109, v94);
      v84 = sub_24388A640();
      v85(v84);

      v92(v83, v82, v81);
    }

    v86 = Message.serializedData(partial:)();
    v88 = v87;
    sub_243873DE8(v86, v87);
    v98(v86, v88, 0);
    sub_243873E40(v86, v88);
    sub_243873E40(v86, v88);
    v89 = sub_24388A640();
    v90(v89);
    sub_24388A67C();
  }
}

void sub_243893470()
{
  sub_24388A664();
  v91 = v2;
  v92 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *MEMORY[0x277D85000];
  v9 = type metadata accessor for Ckcode_RecordTransport(0);
  sub_243876204();
  v95 = v10;
  MEMORY[0x28223BE20](v11);
  sub_24388A414();
  v96 = v12 - v13;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v14);
  v89 = (&v80 - v15);
  v16 = *((v8 & v7) + 0x58);
  type metadata accessor for Optional();
  sub_243876204();
  v97 = v18;
  v98 = v17;
  sub_243876190();
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for BinaryDecodingOptions();
  v23 = sub_243876184(v22);
  MEMORY[0x28223BE20](v23);
  sub_24388A424();
  sub_24387C120();
  v90 = v24;
  MEMORY[0x28223BE20](v25);
  sub_24388A414();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29);
  v102 = v6;
  v103 = v4;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v30 = v8 & v7;
  v32 = &v80 - v31;
  v33 = v4;
  v34 = *(v30 + 104);
  sub_243873DE8(v6, v33);
  BinaryDecodingOptions.init()();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v94 = v28;
  v35 = *(v90 + 16);
  v82 = v90 + 16;
  v81 = v35;
  v35(v21, v32, v16);
  sub_243873554(v21, 0, 1, v16);
  v87 = v0;
  sub_24388F898(v21);
  sub_24388A3D0();
  v38 = sub_243897EA4(v36, v37);
  v88 = v16;
  v85 = v34;
  v84 = v38;
  v86 = v32;
  v39 = sub_24387BBC4(v9, v16, v9, v34, v38);
  v83 = 0;
  v40 = v39;
  v41 = v21;
  v42 = 0;
  v93 = *(v39 + 16);
  v43 = MEMORY[0x277D84F90];
  v45 = v97;
  v44 = v98;
  while (1)
  {
    v46 = v94;
    v47 = v96;
    if (v93 == v42)
    {
      break;
    }

    if (v42 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v48 = v9;
    v49 = v41;
    sub_24388A634();
    v52 = (v40 + v50 + *(v51 + 72) * v42);
    v53 = v52[1];
    if ((~v53 & 0x3000000000000000) == 0 || (v53 & 0x2000000000000000) == 0)
    {

      sub_24388A714();
      v77 = related decl 'e' for CKErrorCode.init(_:description:)();
      v78 = _convertErrorToNSError(_:)();

      [v87 finishWithError_];
      v79 = v77;
      v92(0, v77);

      (*(v90 + 8))(v86, v88);
LABEL_17:
      sub_24388A67C();
      return;
    }

    v54 = *v52;
    sub_2438799C8(*v52, v52[1]);
    sub_243873DE8(v54, v53 & 0xDFFFFFFFFFFFFFFFLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_24388A5C4();
      v43 = sub_243888BE8(v58, v59, v60, v43);
    }

    v56 = *(v43 + 2);
    v55 = *(v43 + 3);
    if (v56 >= v55 >> 1)
    {
      v61 = sub_243899ABC(v55);
      v43 = sub_243888BE8(v61, v56 + 1, 1, v43);
    }

    sub_243879A04(v54, v53);
    *(v43 + 2) = v56 + 1;
    v57 = &v43[16 * v56];
    *(v57 + 4) = v54;
    *(v57 + 5) = v53 & 0xDFFFFFFFFFFFFFFFLL;
    ++v42;
    v45 = v97;
    v44 = v98;
    v41 = v49;
    v9 = v48;
  }

  v62 = v89;
  *v89 = xmmword_24389D0D0;
  UnknownStorage.init()();
  *(v62 + *(v9 + 24)) = xmmword_24389CB00;
  sub_24388A538();
  sub_24389955C(v62);
  v63 = *(v43 + 2);

  v64 = sub_24388EE3C(v47, v63);
  v65 = v46;
  v66 = v86;
  v67 = v83;
  sub_24387C358(v64, v88, v9, v85, v84, v65);
  if (!v67)
  {

    v68 = v90;
    if (*(v43 + 2))
    {
      v69 = sub_2438917D4();
      if (v69)
      {
        v70 = v69;
        v71 = v88;
        v81(v41, v94, v88);
        sub_243873554(v41, 0, 1, v71);
        v70(v41);
        v72 = sub_243876224();
        sub_243871FB4(v72, v73);
        (*(v45 + 8))(v41, v44);
      }
    }

    v92(v43, 0);

    v74 = *(v68 + 8);
    v75 = v88;
    v74(v94, v88);
    sub_24388A520();
    sub_24388A130(v62, v76);
    v74(v66, v75);
    goto LABEL_17;
  }

  sub_243899A40();
LABEL_20:
  swift_unexpectedError();
  __break(1u);
}

void sub_243893B74()
{
  sub_24388A664();
  v2 = v1;
  sub_24388A768();
  v58 = v3;
  v69 = v0;
  v6 = *((v5 & v4) + 0x58);
  sub_24387C120();
  v8 = v7;
  sub_243876190();
  MEMORY[0x28223BE20](v9);
  sub_243899B00(v10, v55);
  v11 = type metadata accessor for Optional();
  sub_243876204();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_24388A414();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v63 = &v55 - v19;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v57 = type metadata accessor for Ckcode_RecordTransport(0);
  sub_243876204();
  MEMORY[0x28223BE20](v23);
  sub_24388A414();
  v26 = v24 - v25;
  v28.n128_f64[0] = MEMORY[0x28223BE20](v27);
  v30 = (&v55 - v29);
  if (v2 >> 62)
  {
LABEL_21:
    if (v2 < 0)
    {
      v54 = v2;
    }

    else
    {
      v54 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = MEMORY[0x245D42700](v54, v28);
    if (!v31)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_18;
    }
  }

  v55 = v8;
  v56 = v17;
  v61 = v6;
  v62 = v22;
  v59 = v13;
  v60 = v11;
  v8 = 0;
  v13 = 0;
  v68 = v2 & 0xC000000000000001;
  v65 = v2 & 0xFFFFFFFFFFFFFF8;
  v22 = MEMORY[0x277D84F90];
  v66 = v31;
  v67 = v2;
  do
  {
    if (v68)
    {
      v32 = MEMORY[0x245D426C0](v8, v2, v28);
    }

    else
    {
      if (v8 >= *(v65 + 16))
      {
        goto LABEL_20;
      }

      v32 = *(v2 + 8 * v8 + 32);
    }

    v6 = v32;
    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_2438940C8(v32);
    v11 = v6;
    Ckcode_RecordTransport.init(_:)(v11, v30);
    sub_24388A538();
    sub_24389955C(v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_24388A5C4();
      v22 = sub_243888DF0(v36, v37, v38, v22);
    }

    v34 = *(v22 + 2);
    v33 = *(v22 + 3);
    v6 = (v34 + 1);
    if (v34 >= v33 >> 1)
    {
      v39 = sub_243899ABC(v33);
      v22 = sub_243888DF0(v39, v34 + 1, 1, v22);
    }

    sub_24388A520();
    sub_24388A130(v30, v35);
    *(v22 + 2) = v6;
    sub_24388A634();
    sub_24388A4F0();
    sub_243899660(v26);
    ++v8;
    v2 = v67;
  }

  while (v17 != v66);
  v40 = v63;
  sub_24388F7F4(v63);
  v41 = v61;
  if (sub_243873AA4(v40, 1, v61))
  {

    v43 = v59;
    v42 = v60;
    v44 = *(v59 + 8);
    v44(v40, v60);
    v45 = 1;
  }

  else
  {
    v48 = v55;
    (*(v55 + 16))(v64, v40, v41);
    v43 = v59;
    v42 = v60;
    v44 = *(v59 + 8);
    v44(v40, v60);
    v49 = *(v58 + 104);
    sub_24388A3D0();
    v52 = sub_243897EA4(v50, v51);
    v53 = v64;
    sub_24387C358(v22, v41, v57, v49, v52, v62);
    (*(v48 + 8))(v53, v41);

    v45 = 0;
  }

  v46 = v62;
  sub_243873554(v62, v45, 1, v41);
  v47 = v56;
  (*(v43 + 16))(v56, v46, v42);
  sub_24388F898(v47);
  v44(v46, v42);
LABEL_18:
  sub_24388A67C();
}

void sub_2438940C8(void *a1)
{
  v2 = [a1 recordID];
  v57 = v1;
  sub_243890778();
  v3 = sub_243899B30();
  v5 = sub_2438819B4(v3, v4);

  if (!v5)
  {
    return;
  }

  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v56 = v5;
  v54 = v11;
  v55 = v5 + 64;
  if (!v10)
  {
LABEL_7:
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        goto LABEL_10;
      }
    }

LABEL_50:
    __break(1u);
  }

LABEL_6:
  v12 = v6;
LABEL_10:
  v13 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v14 = v13 | (v12 << 6);
  v15 = *(v5 + 56);
  v16 = (*(v5 + 48) + 16 * v14);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v15 + 8 * v14);

  v53 = v17;
  v20 = MEMORY[0x245D42640](v17, v18);
  v21 = v20;
  v22 = 0;
  v23 = v19 + 64;
  v24 = 1 << *(v19 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v19 + 64);
  v27 = (v24 + 63) >> 6;
  v59 = v19;
  v60 = v20;
  v58 = v27;
  if (!v26)
  {
LABEL_15:
    while (1)
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        swift_unknownObjectRelease();

        v6 = v12;
        v5 = v56;
        v11 = v54;
        v7 = v55;
        if (!v10)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v26 = *(v23 + 8 * v28);
      ++v22;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v28 = v22;
LABEL_18:
    v29 = (v28 << 9) | (8 * __clz(__rbit64(v26)));
    v30 = *(*(v19 + 56) + v29);
    if (!v21)
    {
LABEL_46:
      v52 = v30;
      _StringGuts.grow(_:)(46);

      MEMORY[0x245D42450](v53, v18);

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();
      swift_unknownObjectRelease();

      goto LABEL_47;
    }

    v31 = *(*(v19 + 48) + v29);
    objc_opt_self();
    sub_243899B24();
    v32 = swift_dynamicCastObjCClass();
    v61 = v30;
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      if (v31 < 0)
      {
      }

      else
      {
        swift_unknownObjectRetain();
        if (v31 < [v33 count])
        {
          v35 = [v33 objectAtIndexedSubscript_];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_24388A094(0, &qword_280D49520, 0x277CBC190);
          swift_dynamicCast();
          v36 = v62;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    objc_opt_self();
    sub_243899B24();
    v37 = swift_dynamicCastObjCClass();
    if (!v37)
    {
      goto LABEL_46;
    }

    v36 = v37;
    swift_unknownObjectRetain_n();
    v38 = v30;
LABEL_25:
    if (*MEMORY[0x277CBC810] == 1)
    {
      v39 = MEMORY[0x245D42400](0xD000000000000018, 0x80000002438A1B50);
      v40 = [v57 _BOOLForUnitTestOverride_defaultValue_];

      if (v40)
      {
        break;
      }
    }

    sub_24388A4E4();
    v43 = [v41 v42];
    v44 = 0;
    if (!v43)
    {
      v51 = v44;

      _convertNSErrorToError(_:)();

      goto LABEL_44;
    }

    v26 &= v26 - 1;
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    switch(v47 >> 62)
    {
      case 1uLL:
        v48 = v45;
        v49 = v45 >> 32;
        goto LABEL_32;
      case 2uLL:
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        goto LABEL_32;
      case 3uLL:
        goto LABEL_51;
      default:
        v48 = 0;
        v49 = BYTE6(v47);
LABEL_32:
        if (v48 == v49)
        {
LABEL_51:
          __break(1u);
          return;
        }

        isa = Data._bridgeToObjectiveC()().super.isa;
        [v36 setAssetContent_];

        sub_243873E40(v45, v47);
        v22 = v28;
        v19 = v59;
        v21 = v60;
        v27 = v58;
        if (!v26)
        {
          goto LABEL_15;
        }

        break;
    }
  }

  [v36 setAssetContent_];
  type metadata accessor for CKError(0);
  sub_2438975D8(MEMORY[0x277D84F90]);
  sub_243897EA4(&qword_27ED94718, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_44:
  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_45:

LABEL_47:
}

void sub_243894738()
{
  sub_24388A664();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277D85000];
  sub_24388A768();
  v10 = v9;
  v11 = type metadata accessor for Logger();
  sub_243876204();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_24388A424();
  v18 = v17 - v16;
  if (v7)
  {
    v19 = sub_243882320(v15);
    if (v19)
    {
      v20 = v19;
      v21 = v7;
      if (v5)
      {
        v38 = v10;
        v22 = v5;
        sub_2438940C8(v22);

        v32 = v3;
        v10 = v38;
      }

      else
      {
        v31 = v3;
      }

      v20(v5, v21, v3);
      v33 = sub_24388A80C();
      sub_243871FB4(v33, v34);
      v8 = MEMORY[0x277D85000];
    }

    else
    {
      v29 = v7;
      v30 = v3;
    }

    if (sub_2438915FC() & 1) != 0 && (sub_2438915A4())
    {
      sub_24388A61C(v1 + *((*v8 & *v1) + 0xC8), &v40);
      v7;
      v35 = *(v10 + 96);
      v39[0] = *(v10 + 80);
      v39[1] = v35;
      type metadata accessor for CodeOperation.AssetInfo(0, v39);
      v36 = sub_243899B54();
      sub_243890608(v36, v37);
      swift_endAccess();
    }

    if (v3)
    {
      sub_24388FAF8();
    }
  }

  else
  {
    CKLog.getter();
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v1;
      v28 = v23;
      _os_log_impl(&dword_243870000, v24, v25, "Ignoring handleFetch with nil recordID %@", v26, 0xCu);
      sub_24387605C(v27, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    (*(v13 + 8))(v18, v11);
  }

  sub_24388A67C();
}

void (*sub_243894A0C(uint64_t a1, double a2))(uint64_t, double)
{
  result = sub_243882548(a1);
  if (result)
  {
    result(a1, a2);
    v5 = sub_243876224();

    return sub_243871FB4(v5, v6);
  }

  return result;
}

void sub_243894A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_24388A768();
  sub_24388A768();
  sub_24388A61C(v7 + *(v13 + 200), v19);
  v14 = sub_24388A4D4();
  type metadata accessor for CodeOperation.AssetInfo(v14, v15);
  sub_243890030(a1, a2, a3, a4);
  v17 = v16;
  swift_endAccess();
  sub_243876218();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v17 writeData:isa atOffset:a7];
}

void sub_243894B98()
{
  sub_24388A664();
  v1 = v0;
  v78 = v2;
  sub_24388A768();
  v4 = *(v3 + 88);
  type metadata accessor for Optional();
  sub_243876204();
  v75 = v6;
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  sub_24388A414();
  v74 = v7 - v8;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  sub_24387C120();
  v73 = v12;
  sub_243876190();
  MEMORY[0x28223BE20](v13);
  sub_243899B00(v14, v71);
  v15 = type metadata accessor for Logger();
  sub_243876204();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_24388A414();
  v77 = (v19 - v20);
  sub_24388A6FC();
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  CKLog.getter();
  v24 = v1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v71 = v15;
    v28 = v11;
    v29 = v27;
    v30 = v4;
    v31 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v24;
    *v31 = v1;
    v32 = v24;
    _os_log_impl(&dword_243870000, v25, v26, "In CodeOperation._finishOnCallbackQueueWithError() for %@", v29, 0xCu);
    sub_24387605C(v31, qword_27ED949D0, ":\x1B");
    v4 = v30;
    sub_24388A750();
    v11 = v28;
    v15 = v71;
    sub_24388A750();
  }

  v33 = *(v17 + 8);
  v33(v23, v15);
  v34 = sub_2438914A4();
  if (v34)
  {
    v35 = v34;
    v36 = v78;
    v37 = v78;
    if (v78 || (v37 = sub_24388FAA8()) != 0)
    {
      v38 = v36;
      v39 = v37;
      v40 = _convertErrorToNSError(_:)();

      v41 = v74;
      sub_243899A50();
      sub_243873554(v42, v43, v44, v4);
      v45 = [v40 CKClientSuitableError];
      v35(v41, v45);
      v46 = sub_243899B8C();
      sub_243871FB4(v46, v47);

      (*(v75 + 8))(v41, v76);
    }

    else
    {
      sub_24388F7F4(v11);
      if (sub_243873AA4(v11, 1, v4) == 1)
      {
        v56 = *(v75 + 8);
        v57 = v4;
        v58 = v76;
        v56(v11, v76);
        v59 = v74;
        sub_243899A50();
        sub_243873554(v60, v61, v62, v57);
        v63 = related decl 'e' for CKErrorCode.init(_:description:)();
        v35(v59, v63);
        v64 = sub_243899B8C();
        sub_243871FB4(v64, v65);

        v56(v59, v58);
      }

      else
      {
        v67 = v72;
        v66 = v73;
        (*(v73 + 32))(v72, v11, v4);
        v68 = v74;
        (*(v66 + 16))(v74, v67, v4);
        sub_243873554(v68, 0, 1, v4);
        v35(v68, 0);
        v69 = sub_243899B8C();
        sub_243871FB4(v69, v70);
        (*(v75 + 8))(v68, v76);
        (*(v66 + 8))(v67, v4);
      }
    }
  }

  else
  {
    CKLog.getter();
    v48 = v24;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v1;
      v53 = v48;
      _os_log_impl(&dword_243870000, v49, v50, "In CodeOperation._finishOnCallbackQueueWithError(), no completion block set for %@", v51, 0xCu);
      sub_24387605C(v52, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    v33(v77, v15);
  }

  v54 = sub_24388A708();
  sub_24389514C(v54, v55);
  sub_24388A67C();
}

void sub_24389514C(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  v6 = type metadata accessor for CodeOperation(0, v7);
  v8.receiver = a1;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel__finishOnCallbackQueueWithError_, v4);
}

void sub_2438951FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_243894B98();
}

uint64_t sub_243895254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24388FFE4();
  v3 = result;
  if (result)
  {
    v4 = sub_24388A4D4();
    result = type metadata accessor for CodeOperation.CallbackRelay(v4, v5);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

id sub_2438952E4()
{
  sub_243895254(v8);
  v0 = v9;
  if (v9)
  {
    v1 = sub_24388A220(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x28223BE20](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v2 + 8))(v5, v0);
    sub_24387E12C(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_243895428(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v4;
  v5 = type metadata accessor for CodeOperation.CallbackRelay(0, v8);
  v9.receiver = v1;
  v9.super_class = v5;
  v6 = objc_msgSendSuper2(&v9, sel_init);

  return v6;
}

uint64_t sub_2438954E4()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2438955B0, 0, 0);
}

uint64_t sub_2438955B0()
{
  v1 = sub_243895418();
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243895724;
    swift_continuation_init();
    v0[17] = v3;
    sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v4 = sub_24388A6E4();
    v5(v4);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v2 handleWillStart_];
    v6 = sub_243899A7C();
    v7(v6);
    v1 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_243895724()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = sub_2438999A0;
  }

  else
  {
    v3 = sub_2438999A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24389584C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_243899988;

  return sub_2438954E4();
}

uint64_t sub_2438958F4()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2438959C0, 0, 0);
}

uint64_t sub_2438959C0()
{
  v1 = sub_243895418();
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243895B34;
    swift_continuation_init();
    v0[17] = v3;
    sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v4 = sub_24388A6E4();
    v5(v4);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v2 handleDidStart_];
    v6 = sub_243899A7C();
    v7(v6);
    v1 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_243895B34()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = sub_243895CA0;
  }

  else
  {
    v3 = sub_243895C3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243895C3C()
{
  sub_24388A7BC();

  sub_243899A94();

  return v1();
}

uint64_t sub_243895CA0()
{
  sub_24388BCF4();
  v1 = *(v0 + 176);
  swift_willThrow();

  sub_243899A94();

  return v2();
}

uint64_t sub_243895D34(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_243895DDC;

  return sub_2438958F4();
}

uint64_t sub_243895DDC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_24388BC74();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_243899AC8();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_243899AC8();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v7 + 8);

  return v13();
}

void sub_243895F54(void *a1)
{
  v1 = a1;
  sub_243895F48();
}

void sub_243895FA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243895F9C(v4);
}

void sub_24389601C(uint64_t a1, SEL *a2)
{
  v4 = sub_243895418();
  if (v4)
  {
    v5 = v4;
    [v4 *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243896010(v4);
}

void sub_2438960E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243895418();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F12C;
    v9[3] = &unk_28569B410;
    v8 = _Block_copy(v9);

    [v7 openFileWithOpenInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_2438961F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243895418();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F204;
    v9[3] = &unk_28569B460;
    v8 = _Block_copy(v9);

    [v7 handleFinishWithAssetDownloadStagingInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896308(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a1;
  v13 = sub_243899B30();
  a7(v13);
}

void sub_2438963AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243895418();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v5 handleOperationDidCompleteWithMetrics:a1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896438(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1;
  v9 = a4;
  sub_2438963AC(a3, a4);
}

void sub_2438964B4(char a1, char a2, uint64_t a3)
{
  v6 = sub_243895418();
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 handleDiscretionaryOperationShouldStart:a1 & 1 nonDiscretionary:a2 & 1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896550(void *a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  sub_2438964B4(a3, a4, a5);
}

void sub_2438965D0(SEL *a1)
{
  v2 = sub_243895418();
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896624(void *a1)
{
  v1 = a1;
  sub_2438965C4();
}

void sub_24389666C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_243895418();
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x245D42400](a1, a2);
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2438999A8;
    v14[3] = &unk_28569B4B0;
    v13 = _Block_copy(v14);

    [v11 handleDaemonOperationWillStartWithClassName:v12 isTopLevelDaemonOperation:a3 & 1 replyBlock:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896770(void *a1, int a2, uint64_t a3, char a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a1;
  sub_24389666C(v8, v10, a4, sub_243898A60, v11);
}

void sub_243896890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v14 = sub_243895418();
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x245D42400](a1, a2);
    v18[4] = a4;
    v18[5] = a5;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2438999A8;
    v18[3] = a6;
    v17 = _Block_copy(v18);

    [v15 *a7];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2438969CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243899BAC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = _Block_copy(v12);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = v9;
  v19 = v11;
  v5(v14, v16, v18, v7, v17);

  sub_243899B78();
}

void sub_243896A98()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243892D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896B24(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = a1;
  sub_243896A98();
}

void sub_243896C30()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243893470();
  }

  else
  {
    __break(1u);
  }
}

void sub_243896CB4(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = a3;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_243896C30();

  sub_243873E40(v8, v10);
}

void sub_243896D8C()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243893B74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896DE8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = a1;
  sub_243896D8C();
}

void sub_243896E5C()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243894738();
  }

  else
  {
    __break(1u);
  }
}

void sub_243896ED0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5;
  sub_243896E5C();
}

void sub_243896F68(uint64_t a1, double a2)
{
  v4 = sub_243895418();
  if (v4)
  {
    v5 = v4;
    sub_243894A0C(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_243896FD4(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_243896F68(v6, a2);
}

void sub_24389704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_243895418();
  if (v14)
  {
    v15 = v14;
    sub_243894A88(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2438970F0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a6;
  v17 = a1;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_24389704C(v15, v12, v14, a5, v18, v20, a7);
  sub_243873E40(v18, v20);
}

id CodeOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2438972A0()
{
  v1 = sub_24388A4D4();
  v4.receiver = v0;
  v4.super_class = v2(v1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243897318(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *a1;
  v5 = *(v4 + 0x70);
  v6 = *(v4 + 0x50);
  sub_243899B54();
  type metadata accessor for Optional();
  sub_243876174();
  (*(v7 + 8))(&a1[v5]);
  sub_2438999F0();
  v9 = *(v8 + 120);
  v10 = *((v3 & v2) + 0x58);
  type metadata accessor for Optional();
  sub_243876174();
  (*(v11 + 8))(&a1[v9]);
  sub_2438999F0();

  sub_2438999F0();

  sub_2438999F0();
  v13 = *(v12 + 144);
  v37[0] = v6;
  v37[1] = v10;
  v38 = *(v4 + 96);
  type metadata accessor for CodeOperation.DestinationServer(0, v37);
  sub_243876174();
  (*(v14 + 8))(&a1[v13]);
  sub_2438999F0();

  sub_2438999F0();

  sub_2438999F0();

  sub_2438999F0();
  v17 = sub_24388A658(*(v16 + 176));
  sub_243880F5C(v17, v19, *(v18 + 16), *(v18 + 24), *(v18 + 32));
  sub_2438999F0();

  sub_2438999F0();

  sub_2438999F0();
  v22 = sub_24388A658(*(v21 + 208));
  sub_243871FB4(v22, v23);
  sub_2438999F0();
  v25 = sub_24388A658(*(v24 + 216));
  sub_243871FB4(v25, v26);
  sub_2438999F0();
  v28 = sub_24388A658(*(v27 + 224));
  sub_243871FB4(v28, v29);
  sub_2438999F0();
  v31 = sub_24388A658(*(v30 + 248));
  sub_243871FB4(v31, v32);
  sub_2438999F0();
  v34 = sub_24388A658(*(v33 + 256));
  return sub_243871FB4(v34, v35);
}

unint64_t sub_2438975D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  sub_243873884(&qword_27ED94EB8, &qword_24389E3B8);
  sub_243899B24();
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2438994F8(v6);
    result = sub_243898F0C(v13, v14, sub_24389998C);
    if (v8)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v13;
    v9[1] = v14;
    result = sub_24389954C(&v15, (v3[7] + 32 * result));
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v3[2] = v12;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24389773C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_243899980;

  return v6();
}

uint64_t sub_243897824(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24389790C;

  return v7();
}

uint64_t sub_24389790C()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v1 = *v0;
  sub_24388BC74();
  *v2 = v1;

  sub_243899A94();

  return v3();
}

uint64_t sub_2438979EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_243873884(&qword_27ED94E78, &qword_24389E340);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2438994F8(a3);
  v12 = type metadata accessor for TaskPriority();
  if (sub_243873AA4(v11, 1, v12) == 1)
  {
    sub_24387605C(v11, &qword_27ED94E78, &qword_24389E340);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_24387605C(a3, &qword_27ED94E78, &qword_24389E340);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24387605C(a3, &qword_27ED94E78, &qword_24389E340);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_243897CC8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243897DC0;

  return v6(a1);
}

uint64_t sub_243897DC0()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v1 = *v0;
  sub_24388BC74();
  *v2 = v1;

  sub_243899A94();

  return v3();
}

uint64_t sub_243897EA4(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_243899B24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243897EE8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v10 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      v12 = &unk_24389E0A0;
      v13 = &unk_24389E0A0;
      v8[0] = v2;
      v8[1] = v5;
      v9 = *(a1 + 96);
      result = type metadata accessor for CodeOperation.DestinationServer(319, v8);
      if (v7 <= 0x3F)
      {
        v14 = *(result - 8) + 64;
        v15 = MEMORY[0x277D833F0] + 64;
        v16 = MEMORY[0x277D833F0] + 64;
        v17 = &unk_24389E0B8;
        v18 = &unk_24389E0D0;
        v19 = &unk_24389E0E8;
        v20 = &unk_24389E0B8;
        v21 = MEMORY[0x277D833F0] + 64;
        v22 = &unk_24389E100;
        v23 = &unk_24389E100;
        v24 = &unk_24389E100;
        v25 = &unk_24389E0E8;
        v26 = &unk_24389E0E8;
        v27 = &unk_24389E100;
        v28 = &unk_24389E100;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2438988A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2438988DC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_243898918(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2438989DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243898A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243898A7C()
{
  sub_24388BCF4();
  v0 = swift_task_alloc();
  v1 = sub_243899A88(v0);
  *v1 = v2;
  v1[1] = sub_24389790C;
  v3 = sub_243876224();

  return v4(v3);
}

uint64_t sub_243898B1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_243899A88(v4);
  *v5 = v6;
  v5[1] = sub_243899980;

  return sub_24389773C(v1, v2, v3);
}

uint64_t sub_243898BD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243898C18(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_243899A88(v6);
  *v7 = v8;
  v7[1] = sub_243899980;

  return sub_243897824(a1, v3, v4, v5);
}

uint64_t sub_243898CE0()
{
  sub_24388BCF4();
  v0 = swift_task_alloc();
  v1 = sub_243899A88(v0);
  *v1 = v2;
  v3 = sub_243899A5C(v1);

  return v4(v3);
}

uint64_t sub_243898D78()
{
  sub_24388BCF4();
  v0 = swift_task_alloc();
  v1 = sub_243899A88(v0);
  *v1 = v2;
  v3 = sub_243899A5C(v1);

  return v4(v3);
}

uint64_t sub_243898E10()
{
  sub_24388BCF4();
  v0 = swift_task_alloc();
  v1 = sub_243899A88(v0);
  *v1 = v2;
  v1[1] = sub_243899980;
  v3 = sub_243876224();

  return v4(v3);
}

unint64_t sub_243898EB0(uint64_t a1)
{
  v3 = MEMORY[0x245D427E0](*(v1 + 40), a1);

  return sub_2438993C0(a1, v3);
}

uint64_t sub_243898F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v3 = sub_243876218();

  return a3(v3);
}

unint64_t sub_243898F8C()
{
  NSObject._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_243899B24();

  return sub_243899420(v1, v2);
}

void sub_243898FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243899BAC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_243898EB0(v7);
  sub_243899A30();
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_243873884(&qword_27ED94EB0, &qword_24389E3B0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v6 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_243898EB0(v8);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  if (v17)
  {
    *(*(*v4 + 56) + 8 * v16) = v10;
    sub_243899B78();
  }

  else
  {
    sub_243899A7C();
    sub_243899B78();

    sub_243899334(v22, v23, v24, v25);
  }
}

uint64_t sub_2438990D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243899BAC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2438999B0();
  sub_243898F0C(v14, v9, v15);
  sub_243899A30();
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v16;
  v22 = v17;
  sub_243873884(&unk_27ED94EA0, &unk_24389E3A0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v7 & 1, v20))
  {
    goto LABEL_5;
  }

  sub_2438999B0();
  v24 = sub_243898F0C(v11, v9, v23);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v21 = v24;
LABEL_5:
  v26 = *v5;
  if (v22)
  {
    *(v26[7] + 8 * v21) = v13;
    sub_243899B78();
  }

  else
  {
    sub_243899378(v21, v11, v9, v13, v26);
    sub_243899B78();
  }
}

id sub_243899208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_243898F8C();
  sub_243899A30();
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v7;
  v13 = v8;
  sub_243873884(&unk_27ED94E80, &unk_24389E390);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v11))
  {
    goto LABEL_5;
  }

  v14 = sub_243898F8C();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
    sub_243899C30();
  }

  else
  {
    sub_243899334(v12, a2, a1, v16);
    sub_243899C30();

    return v19;
  }
}

unint64_t sub_243899334(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_243899378(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2438993C0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_243899420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2438994F8(uint64_t a1)
{
  sub_243899B18();
  sub_243873884(v2, v3);
  sub_243899A04();
  v4 = sub_243876224();
  v5(v4);
  return v1;
}

_OWORD *sub_24389954C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24389955C(uint64_t a1)
{
  sub_243899B18();
  v2(0);
  sub_243899A04();
  v3 = sub_243876224();
  v4(v3);
  return v1;
}

uint64_t sub_243899660(uint64_t a1)
{
  sub_243899B18();
  v2(0);
  sub_243899A04();
  v3 = sub_243876224();
  v4(v3);
  return v1;
}

void sub_2438996B4()
{
  sub_24388A664();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_243873884(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v7(0);
  sub_24387993C();
  sub_24388A634();
  if (v10)
  {
    v5(v8 + v22, v14, v19 + v22);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_24388A67C();
}

uint64_t sub_243899864(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v5 = a2;
  return v3(a1, &v5);
}

id sub_243899AD8()
{

  return objc_allocWithZone(v0);
}

BOOL sub_243899BC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
}

uint64_t sub_243899BE0(uint64_t a1)
{
}

id sub_243899C00(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_243899C18()
{
}

uint64_t RemoteMeasurement.data.getter()
{
  v1 = *v0;
  sub_243873DE8(*v0, *(v0 + 8));
  return v1;
}

uint64_t RemoteMeasurement.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, __int128 a11)
{
  sub_243873884(&qword_27ED94ED0, &qword_24389E3F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24389E3E0;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  *(v17 + 35) = a4;
  *(v17 + 36) = a5;
  *(v17 + 37) = a6;
  *(v17 + 38) = a7;
  *(v17 + 39) = a8;
  *(v17 + 40) = a10;
  *(v17 + 48) = a11;
  result = sub_243899D58(v17);
  *a9 = result;
  a9[1] = v19;
  return result;
}

uint64_t sub_243899D58(uint64_t a1)
{
  v7 = sub_243873884(&qword_27ED94ED8, &qword_24389E4A8);
  v8 = sub_243899F30();
  v6[0] = a1;
  v2 = sub_24388A220(v6, v7);
  sub_243899F94(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_24387E12C(v6);
  return v3;
}

uint64_t RemoteMeasurement.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v4 = v4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      if (v4 != 32)
      {
LABEL_7:
        sub_243873E40(result, a2);
        result = 0;
        a2 = 0xF000000000000000;
      }

      *a3 = result;
      a3[1] = a2;
      break;
  }

  return result;
}

uint64_t sub_243899E88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_243899ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_243899F30()
{
  result = qword_280D49090;
  if (!qword_280D49090)
  {
    sub_243888DA8(&qword_27ED94ED8, &qword_24389E4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D49090);
  }

  return result;
}

uint64_t sub_243899F94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x245D420C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x245D420D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

id CKRecordChange.changeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 changeType];
  if (v3 == 3)
  {
    result = 0;
    v5 = 2;
    goto LABEL_9;
  }

  if (v3 == 2)
  {
    result = [v1 record];
    if (result)
    {
      v5 = 1;
LABEL_9:
      *a1 = result;
      *(a1 + 8) = v5;
      return result;
    }
  }

  else if (v3 == 1)
  {
    result = [v1 record];
    if (result)
    {
      v5 = 0;
      goto LABEL_9;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CKRecordObserver.RecordChanges.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);
  *v1 = v0;
  v1[1] = sub_24389A1B8;

  return MEMORY[0x2822003F0](v0 + 16, v2);
}

uint64_t sub_24389A1B8()
{
  sub_24388BCE8();
  v1 = *v0;
  sub_24388BC74();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_24389B1AC, 0, 0);
}

uint64_t sub_24389A2A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24389A338;

  return CKRecordObserver.RecordChanges.Iterator.next()();
}

uint64_t sub_24389A338(uint64_t a1)
{
  sub_24388BCE8();
  v5 = v4;
  v6 = *v2;
  sub_24388BC74();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_24389A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_24389A4F8;

  return sub_24389A614();
}

uint64_t sub_24389A4F8(uint64_t a1)
{
  sub_24388BCE8();
  v5 = v4;
  v6 = *v2;
  sub_24388BC74();
  *v7 = v6;

  if (v1)
  {
    **(v5 + 24) = v1;
  }

  else
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_24389A614()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);
  *v1 = v0;
  v1[1] = sub_24389A6C4;

  return MEMORY[0x2822003F0](v0 + 16, v2);
}

uint64_t sub_24389A6C4()
{
  sub_24388BCE8();
  v1 = *v0;
  sub_24388BC74();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_24389A7B4, 0, 0);
}

uint64_t CKRecordObserver.RecordChanges.makeAsyncIterator()()
{
  v0 = sub_243873884(&qword_27ED94EE8, &qword_24389E4C0);

  return MEMORY[0x2822003E0](v0);
}

uint64_t sub_24389A818()
{
  CKRecordObserver.RecordChanges.makeAsyncIterator()();

  return sub_24389AF44(v0);
}

id CKRecordObserver.init(container:recordType:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = a1;
    v7 = MEMORY[0x245D42400](a2, a3);
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainer:a1 recordType:v7];

  return v9;
}

uint64_t CKRecordObserver.recordChanges.getter()
{
  v1 = sub_243873884(&qword_27ED94EF0, qword_24389E4C8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v7 = v0;
  sub_24388A094(0, &qword_27ED94EF8, 0x277CBC5B0);
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_24389A9FC(uint64_t a1, void *a2)
{
  v4 = sub_243873884(&qword_27ED94F38, &qword_24389E628);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - v7;
  [a2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_24388A094(0, &qword_27ED94F40, 0x277CBC5D8);
  swift_dynamicCast();
  v9 = aBlock[6];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_24389B0A0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24389B11C;
  aBlock[3] = &unk_28569B5F0;
  v12 = _Block_copy(aBlock);

  [v9 registerWithBlock_];
  _Block_release(v12);
  *(swift_allocObject() + 16) = v9;
  return AsyncStream.Continuation.onTermination.setter();
}

unint64_t sub_24389AC5C()
{
  result = qword_27ED94F00;
  if (!qword_27ED94F00)
  {
    type metadata accessor for CKRecordObserver.RecordChanges.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94F00);
  }

  return result;
}

uint64_t sub_24389ACD4(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24389ACF0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24389AD04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24389AD44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24389AD88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_24389AE60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_24389AED4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24389AED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_24388A094(255, &qword_27ED94EF8, 0x277CBC5B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24389AF44(uint64_t a1)
{
  v2 = type metadata accessor for CKRecordObserver.RecordChanges(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24389AFA0(void *a1)
{
  v2 = sub_243873884(&qword_27ED94F48, qword_24389E630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v8[1] = a1;
  v6 = a1;
  sub_243873884(&qword_27ED94F38, &qword_24389E628);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24389B0A0(void *a1)
{
  sub_243873884(&qword_27ED94F38, &qword_24389E628);

  return sub_24389AFA0(a1);
}

void sub_24389B11C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24389B184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}