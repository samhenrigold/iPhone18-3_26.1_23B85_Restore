void *sub_1000012C0()
{
  v1 = v0;
  v2 = sub_100001AB4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A94();
  v6 = sub_100001AA4();
  v7 = sub_100001AC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing XPC Service", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_100001A84();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  swift_allocObject();
  v10 = sub_100001A74();
  v1[10] = v9;
  v1[11] = sub_1000019CC(&qword_100008198, 255, &type metadata accessor for ImageProcessingUIImplementation, &protocol conformance descriptor for ImageProcessingUIImplementation);
  v1[7] = v10;
  v11 = sub_100001A34();
  swift_allocObject();
  v12 = sub_100001A24();
  v1[5] = v11;
  v1[6] = &protocol witness table for ImageProcessingImplementation;
  v1[2] = v12;
  return v1;
}

uint64_t sub_1000014B0()
{
  swift_allocObject();
  sub_1000012C0();
  sub_1000019CC(&qword_100008190, v0, type metadata accessor for FinanceImageProcessingService, &unk_100001CA0);
}

uint64_t sub_100001550()
{
  sub_100001980((v0 + 16));
  sub_100001980((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100001590(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1000015B8, 0, 0);
}

uint64_t sub_1000015B8()
{
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  sub_10000193C(v1 + 7, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100001678;
  v5 = v0[2];
  v6 = v0[3];

  return dispatch thunk of ImageProcessingUIXPCServiceProviding.generateIcon(for:)(v5, v6, v2, v3);
}

uint64_t sub_100001678()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FinanceImageProcessingService();
  sub_1000014B0();
  return 0;
}

void *sub_10000193C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001980(void *a1)
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

uint64_t sub_1000019CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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