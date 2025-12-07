uint64_t sub_100001108()
{
  v0 = sub_100002A08();
  sub_1000026D0(v0, qword_1000080C0);
  sub_100002034(v0, qword_1000080C0);
  sub_100002978();
  return sub_1000029F8();
}

double sub_100001174()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1000011A4()
{
  sub_10000277C(v0 + 16, &qword_1000081A0, &unk_100002E70);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000011F4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000011EC();
  *a1 = v3;
  return result;
}

uint64_t sub_100001250(_xpc_connection_s *a1)
{
  v2 = v1;
  v4 = sub_100001FD0(&qword_100008188, &qword_100002E30);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_100002A38();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000029B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  pid = xpc_connection_get_pid(a1);
  sub_1000029D8();
  *v11 = sub_1000016A8;
  v11[1] = 0;
  (*(v9 + 104))(v11, enum case for InferenceProviderXPCRequestDispatcher.ProviderConfiguration.uninitializedBuiltIn(_:), v8);
  v13 = sub_1000029C8();
  sub_100001FD0(&qword_100008190, &qword_100002E38);
  v19[1] = v13;

  sub_1000029A8();
  sub_100002A48();
  *(swift_allocObject() + 16) = pid;
  swift_unknownObjectRetain();

  sub_100002A28();
  v14 = sub_100002A18();
  v15 = sub_100002AB8();
  sub_100002250(v6, 1, 1, v15);
  sub_100002A98();

  v16 = sub_100002A88();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v2;
  v17[5] = v14;
  sub_100001BE0(0, 0, v6, &unk_100002E50, v17);
}

void sub_1000016A8(uint64_t a1)
{
  v2 = sub_100002988();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v10 - v7;
  v9 = *(v3 + 16);
  v9(v10 - v7, a1, v2);
  v9(v6, v8, v2);
  (*(v3 + 88))(v6, v2);
  sub_100002AD8();
  __break(1u);
}

void sub_100001814(uint64_t a1, int a2)
{
  v4 = sub_100002A58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000080B8 != -1)
  {
    swift_once();
  }

  v8 = sub_100002A08();
  sub_100002034(v8, qword_1000080C0);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_1000029E8();
  v11 = sub_100002AC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 67109378;
    *(v12 + 4) = a2;
    *(v12 + 8) = 2112;
    sub_100002734(&qword_1000081A8, 255, &type metadata accessor for XPCRichError, &protocol conformance descriptor for XPCRichError);
    swift_allocError();
    v9(v14, v7, v4);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v12 + 10) = v15;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Session with host process with %d was cancelled: %@", v12, 0x12u);
    sub_10000277C(v13, &qword_100008198, &qword_100002E40);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  exit(1);
}

uint64_t sub_100001A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_100002A98();
  v5[12] = sub_100002A88();
  v7 = sub_100002A78();

  return _swift_task_switch(sub_100001B2C, v7, v6);
}

uint64_t sub_100001B2C()
{
  v1 = v0[11];
  v2 = v0[10];

  v0[5] = sub_100002A48();
  v0[6] = &protocol witness table for XPCSession;
  v0[2] = v1;
  swift_beginAccess();

  sub_100002660((v0 + 2), v2 + 16);
  swift_endAccess();
  sub_100002824();

  return v3();
}

uint64_t sub_100001BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FD0(&qword_100008188, &qword_100002E30);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100002460(a3, v24 - v10);
  v12 = sub_100002AB8();
  v13 = sub_1000024D0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000277C(v11, &qword_100008188, &qword_100002E30);
  }

  else
  {
    sub_100002AA8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100002A78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100002A68() + 32;
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

      sub_10000277C(a3, &qword_100008188, &qword_100002E30);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000277C(a3, &qword_100008188, &qword_100002E30);
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

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for BuiltInInferenceProviderService();
  sub_100002734(&qword_1000080D8, v3, type metadata accessor for BuiltInInferenceProviderService, &unk_100002DF0);
  sub_100002968();
  return 0;
}

uint64_t sub_100001FD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000206C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002164;

  return v6(a1);
}

uint64_t sub_100002164()
{
  v1 = *v0;
  sub_100002814();
  *v2 = v1;

  sub_100002824();

  return v3();
}

uint64_t sub_100002278()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000022C0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100002804(v7);
  *v8 = v9;
  v8[1] = sub_100002378;

  return sub_100001A94(a1, v3, v4, v6, v5);
}

uint64_t sub_100002378()
{
  v1 = *v0;
  sub_100002814();
  *v2 = v1;

  sub_100002824();

  return v3();
}

uint64_t sub_100002460(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FD0(&qword_100008188, &qword_100002E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000024F8()
{
  v0 = swift_task_alloc();
  v1 = sub_100002804(v0);
  *v1 = v2;
  v3 = sub_1000027E4(v1);

  return v4(v3);
}

uint64_t sub_100002590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000025C8()
{
  v0 = swift_task_alloc();
  v1 = sub_100002804(v0);
  *v1 = v2;
  v3 = sub_1000027E4(v1);

  return v4(v3);
}

uint64_t sub_100002660(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FD0(&qword_1000081A0, &unk_100002E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000026D0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002734(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000277C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FD0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void BuiltInInferenceProvider.inferenceProvider.getter()
{
  v1 = sub_100002988();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  (*(v2 + 88))(v4, v1);
  sub_100002AD8();
  __break(1u);
}