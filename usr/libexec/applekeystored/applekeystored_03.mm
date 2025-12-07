uint64_t sub_10003D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10003D700()
{
  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue, &qword_1000A3538, &qword_100076E20);

  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, qword_1000A3480, &qword_100076D10);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ProtectionClassRemediator(uint64_t a1)
{
  result = qword_1000A3340;
  if (!qword_1000A3340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D7F8(uint64_t a1)
{
  sub_1000401B8(319, &qword_1000A3350, &type metadata for ProtectionClassRemediator.QueueItem, type metadata accessor for ProtectionClassRemediator.FIFO);
  if (v2 <= 0x3F)
  {
    v6 = *(v1 - 8) + 64;
    v7 = &value witness table for Builtin.NativeObject + 64;
    v8 = &value witness table for Builtin.Int64 + 64;
    v9 = &value witness table for Builtin.Int64 + 64;
    sub_1000401B8(319, &qword_1000A3358, &type metadata for () + 8, &type metadata accessor for AsyncStream);
    if (v3 <= 0x3F)
    {
      sub_1000401B8(319, &unk_1000A3360, &type metadata for () + 8, &type metadata accessor for AsyncStream.Continuation);
      if (v4 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v10 = &v5;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10003DA14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  *a3 = a1;
  v8 = *(type metadata accessor for ProtectionClassRemediator.FIFO.Iterator(0, *(v7 + 80), a4, a5) + 28);
  v9 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_10003DAB8(uint64_t a1)
{
  *(v2 + 624) = v1;
  *(v2 + 616) = a1;
  return _swift_task_switch(sub_10003DADC, 0, 0);
}

uint64_t sub_10003DADC()
{
  v1 = *(v0 + 624);
  v2 = *v1;
  *(v0 + 632) = *v1;
  return _swift_task_switch(sub_10003DB00, v2, 0);
}

uint64_t sub_10003DB00(uint64_t a1)
{
  sub_10003EA4C((v1 + 16));

  return _swift_task_switch(sub_10003DB6C, 0, 0);
}

uint64_t sub_10003DB6C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 64);
    v3 = *(v0 + 80);
    *(v0 + 448) = v4;
    *(v0 + 464) = v3;
    v5 = *(v0 + 80);
    *(v0 + 480) = *(v0 + 96);
    v6 = *(v0 + 16);
    v8 = *(v0 + 32);
    v7 = *(v0 + 48);
    *(v0 + 416) = v8;
    *(v0 + 432) = v7;
    *(v0 + 384) = *(v0 + 96);
    *(v0 + 400) = v6;
    v9 = *(v0 + 616);
    v10 = *(v0 + 16);
    *(v0 + 304) = v10;
    *(v0 + 312) = v1;
    *(v0 + 352) = v4;
    *(v0 + 368) = v5;
    *(v0 + 320) = v8;
    *(v0 + 336) = v2;
    sub_10003F37C(v0 + 304, v0 + 496);
    sub_100002CF0(v0 + 400, &qword_1000A3548, &qword_100076E40);
    *v9 = v10;
    *(v9 + 8) = v1;
    *(v9 + 16) = *(v0 + 32);
    v11 = *(v0 + 96);
    v13 = *(v0 + 48);
    v12 = *(v0 + 64);
    *(v9 + 64) = *(v0 + 80);
    *(v9 + 80) = v11;
    *(v9 + 32) = v13;
    *(v9 + 48) = v12;
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 648) = *(sub_10000A0C8(&qword_1000A3568, &unk_100076E70) + 28);
    swift_beginAccess();
    v16 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v16;
    v17 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v17;
    v18 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v18;
    v19 = swift_task_alloc();
    *(v0 + 640) = v19;
    v20 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
    *v19 = v0;
    v19[1] = sub_10003DD34;

    return AsyncStream.Iterator.next()(v0 + 652, v20);
  }
}

uint64_t sub_10003DD34()
{

  return _swift_task_switch(sub_10003DE30, 0, 0);
}

uint64_t sub_10003DE4C()
{
  v1 = *(v0 + 632);
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 112) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = *(v2 + 16);
      if (v6)
      {
LABEL_4:
        v7 = *(v0 + 632);
        v8 = v6 - 1;
        v9 = (v2 + 96 * v6);
        v10 = *(v9 - 3);
        *(v0 + 208) = *(v9 - 4);
        *(v0 + 224) = v10;
        v11 = v9[1];
        v13 = *(v9 - 2);
        v12 = *(v9 - 1);
        *(v0 + 272) = *v9;
        *(v0 + 288) = v11;
        *(v0 + 240) = v13;
        *(v0 + 256) = v12;
        *(v2 + 16) = v8;
        *(v7 + 112) = v2;
        v14 = sub_10003DF2C;
        goto LABEL_6;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = sub_10003F04C(v2);
      v2 = isUniquelyReferenced_nonNull_native;
      v6 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return _swift_task_switch(isUniquelyReferenced_nonNull_native, v4, v5);
  }

  v14 = sub_10003DFC4;
LABEL_6:
  isUniquelyReferenced_nonNull_native = v14;
  v4 = 0;
  v5 = 0;

  return _swift_task_switch(isUniquelyReferenced_nonNull_native, v4, v5);
}

uint64_t sub_10003DF2C()
{
  v1 = *(v0 + 616);
  sub_100002CF0(v0 + 112, &qword_1000A3548, &qword_100076E40);
  v3 = *(v0 + 208);
  v2 = *(v0 + 224);
  *(v0 + 16) = v3;
  *(v0 + 32) = v2;
  v5 = *(v0 + 272);
  v4 = *(v0 + 288);
  *(v0 + 80) = v5;
  *(v0 + 96) = v4;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  v1[4] = v5;
  v1[5] = v4;
  v1[2] = v7;
  v1[3] = v6;
  *v1 = v3;
  v1[1] = v2;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003DFC4()
{
  sub_100002CF0(v0 + 112, &qword_1000A3548, &qword_100076E40);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 640) = v1;
  v2 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  *v1 = v0;
  v1[1] = sub_10003DD34;

  return AsyncStream.Iterator.next()(v0 + 652, v2);
}

uint64_t sub_10003E0B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10003E1A0, 0, 0);
}

uint64_t sub_10003E1A0()
{
  v1 = *(v0 + 32);
  v2 = *v1;
  *(v0 + 96) = *v1;
  return _swift_task_switch(sub_10003E1C4, v2, 0);
}

uint64_t sub_10003E1C4()
{
  sub_10003EB48();

  return _swift_task_switch(sub_10003E22C, 0, 0);
}

uint64_t sub_10003E22C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v4 + 16);
  *(v0 + 104) = v6;
  *(v0 + 112) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v3);
  v7 = *(v5 - 8);
  v8 = *(v7 + 48);
  *(v0 + 120) = v8;
  *(v0 + 128) = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v8(v2, 1, v5);
  v10 = *(v4 + 8);
  *(v0 + 136) = v10;
  *(v0 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v9 == 1)
  {
    v11 = *(v0 + 24);
    v10(*(v0 + 80), *(v0 + 48));
    *(v0 + 160) = *(v11 + 28);
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    v13 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
    *v12 = v0;
    v12[1] = sub_10003E464;

    return AsyncStream.Iterator.next()(v0 + 164, v13);
  }

  else
  {
    v14 = *(v0 + 80);
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);
    v10(*(v0 + 88), *(v0 + 48));
    (*(v7 + 32))(v16, v14, v15);
    (*(v7 + 56))(v16, 0, 1, v15);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10003E464()
{

  return _swift_task_switch(sub_10003E560, 0, 0);
}

uint64_t sub_10003E57C()
{
  sub_10003EB48();

  return _swift_task_switch(sub_10003E5E8, 0, 0);
}

uint64_t sub_10003E5E8()
{
  v18 = *(v0 + 120);
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  (*(v0 + 136))(v2, v5);
  v8 = *(v6 + 32);
  v8(v2, v3, v5);
  v1(v4, v2, v5);
  v9 = v18(v4, 1, v7);
  v10 = *(v0 + 136);
  if (v9 == 1)
  {
    v10(*(v0 + 64), *(v0 + 48));
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    v12 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
    *v11 = v0;
    v11[1] = sub_10003E464;

    return AsyncStream.Iterator.next()(v0 + 164, v12);
  }

  else
  {
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);
    v15 = *(v0 + 16);
    v10(*(v0 + 64), v14);
    v8(v15, v13, v14);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10003E7DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E574;

  return sub_10003E0B0(a1, a2);
}

uint64_t sub_10003E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_10003E950;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t sub_10003E950()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003EA4C@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    sub_10003F108(&v8);
    if (*(&v8 + 1))
    {
      v3 = v11;
      a1[2] = v10;
      a1[3] = v3;
      v4 = v13;
      a1[4] = v12;
      a1[5] = v4;
      v5 = v9;
      *a1 = v8;
      a1[1] = v5;
    }

    else
    {
      v7[2] = v10;
      v7[3] = v11;
      v7[4] = v12;
      v7[5] = v13;
      v7[0] = v8;
      v7[1] = v9;
      sub_100002CF0(v7, &qword_1000A3548, &qword_100076E40);
      sub_10003F060(*(*(v1 + 112) + 16) - 1, a1);
    }
  }

  else
  {
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_10003EB48()
{
  swift_beginAccess();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.popLast()();
  return swift_endAccess();
}

uint64_t sub_10003EC10()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10003EC38()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10003EC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10003ECA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003ECEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10003ED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtectionClassRemediator.FIFO.Storage(319, *(a1 + 16), a3, a4);
  if (v4 <= 0x3F)
  {
    sub_10003EE24(319);
    if (v5 <= 0x3F)
    {
      sub_10003EEB0(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003EE24(uint64_t a1)
{
  if (!qword_1000A3508)
  {
    sub_10000A738(&qword_1000A3510, &qword_100076D20);
    sub_10000A738(&qword_1000A3518, &qword_100076D28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000A3508);
    }
  }
}

void sub_10003EEB0(uint64_t a1)
{
  if (!qword_1000A3520)
  {
    sub_10000A738(&qword_1000A3528, qword_100076D30);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A3520);
    }
  }
}

uint64_t sub_10003EF4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_100038058(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_10003EFD0()
{
  v0 = sub_10003F8F8(&off_100095DD0);
  result = swift_arrayDestroy();
  qword_1000B19E0 = v0;
  return result;
}

uint64_t sub_10003F060@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003F04C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

char *sub_10003F108@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 2);
    if (v5)
    {
LABEL_3:
      v6 = &v3[96 * v5];
      v7 = *(v6 - 1);
      a1[2] = *(v6 - 2);
      a1[3] = v7;
      v8 = *(v6 + 1);
      a1[4] = *v6;
      a1[5] = v8;
      v9 = *(v6 - 3);
      *a1 = *(v6 - 4);
      a1[1] = v9;
      *(v3 + 2) = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_10003F04C(v3);
    v3 = result;
    v5 = *(result + 2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F18C(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 96 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 96 * v7;
  a2 = (v9 + 32 + 96 * v8);
  if (result != a2 || result >= &a2[96 * v14])
  {
    result = memmove(result, a2, 96 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x60uLL);
  a3 = &qword_1000A3550;
  a4 = &qword_100076E48;
  a2 = v18;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_10003F3B4(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_10003F3B4(v6, v18, &qword_1000A3550, &qword_100076E48);
}

unint64_t sub_10003F2A8(unint64_t result, _BYTE *a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100028458(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10003F18C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_10003F3B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A0C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003F41C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100010760;

  return sub_100036E70(a1, v4, v5, v6);
}

uint64_t sub_10003F52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003F574()
{
  result = qword_1000A4E80;
  if (!qword_1000A4E80)
  {
    sub_10000A738(&qword_1000A3570, &unk_100076E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4E80);
  }

  return result;
}

uint64_t sub_10003F5D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100010760;

  return sub_10003D490(v2, v3);
}

uint64_t sub_10003F670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100010760;

  return sub_10003D4FC(v2, v3);
}

uint64_t sub_10003F708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0);
}

uint64_t sub_10003F800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0);
}

Swift::Int sub_10003F8F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A0C8(&qword_1000A3580, &unk_100076EF8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10003FA60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A21B0 != -1)
  {
    swift_once();
  }

  if (sub_10003D608(a3, a4, qword_1000B19E0))
  {
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002DB8(v14, qword_1000B19C8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100005C68(a3, a4, v33);
      _os_log_impl(&_mh_execute_header, v15, v16, "bypassing setting of xattr 'com.apple.dataprotection.policy.exception-applied-by' for %{public}s", v17, 0xCu);
      sub_100005E9C(v18);
    }
  }

  else
  {
    v35 = a5;
    v19 = [objc_opt_self() defaultManager];
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    if (v22 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      sub_100011FAC(v20, v22);
      v23 = sub_10006B624(a1, a2, 0xD000000000000034, 0x8000000100083890, v20, v22);

      sub_10000B068(v20, v22);
      if (v23)
      {
        v24 = errno.getter();
        v25 = v24;
        LODWORD(v33[0]) = v24;
        sub_100033644(v24, v26, v27);
        swift_willThrowTypedImpl();
        v28 = sub_10003FDF8(v20, v22);
        if (v25 != 2)
        {
          v33[0] = a1;
          v33[1] = a2;
          v33[2] = 0;
          v33[3] = 0;
          v34 = 21;
          sub_10000EEA4(v28, v29, v30);
          swift_willThrowTypedImpl();

          v31 = v35;
          *v35 = a1;
          v31[1] = a2;
          v31[2] = 0;
          v31[3] = 0;
          *(v31 + 32) = 21;
        }
      }

      else
      {
        sub_10003FDF8(v20, v22);
      }
    }
  }
}

uint64_t sub_10003FDF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B068(result, a2);
  }

  return result;
}

uint64_t sub_10003FE0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000DBBC;

  return sub_10003D554(v2, v3);
}

uint64_t sub_10003FEA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DBBC;

  return sub_100037A00();
}

void sub_10003FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtectionClassRemediator.FIFO.Storage(319, *(a1 + 16), a3, a4);
  if (v4 <= 0x3F)
  {
    sub_1000401B8(319, &qword_1000A3618, &type metadata for () + 8, &type metadata accessor for AsyncStream.Iterator);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004004C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_10000A0C8(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

void *sub_100040110(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v9 = sub_10000A0C8(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 28);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1000401B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100040208()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  AnalyticsStore.init()();
  if (v1)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002DB8(v8, qword_1000B1908);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20[1] = v2;
      v12 = v4;
      v13 = v11;
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to open database: %{public}@", v13, 0xCu);
      sub_100002CF0(v14, &qword_1000A4EC0, &qword_100076C00);

      v4 = v12;
    }

    else
    {
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "removing old database", v18, 2u);
    }

    static AnalyticsStore.databaseURL(reset:)(1, v6);
    (*(v4 + 8))(v6, v3);
    v7 = swift_allocObject();
    AnalyticsStore.init()();
  }

  return v7;
}

void *AnalyticsStoreContext.__allocating_init(modelContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  v3 = DefaultSerialModelExecutor.init(modelContext:)();
  v4 = sub_100057610(&qword_1000A2330, &type metadata accessor for DefaultSerialModelExecutor, &protocol conformance descriptor for DefaultSerialModelExecutor);
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = a1;
  return v2;
}

uint64_t sub_1000405AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *v4;
  v11 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  __chkstk_darwin(v11 - 8);
  v13 = v21 - v12;
  result = sub_100050644();
  if (!v5)
  {
    v23 = a2;
    v26 = result;
    v25 = v10;
    v15 = result;
    KeyPath = swift_getKeyPath();
    v24 = a4;
    v21[1] = v21;
    __chkstk_darwin(KeyPath);
    v22 = a3;
    v21[-2] = v15;
    v21[-1] = a1;
    sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v26 = v15;
    v17 = swift_getKeyPath();
    __chkstk_darwin(v17);
    v18 = v23;
    v21[-4] = v15;
    v21[-3] = v18;
    LOBYTE(v21[-2]) = v22 & 1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000216C4(v24, v13);
    v26 = v15;
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v21[-2] = v15;
    v21[-1] = v13;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100002CF0(v13, &qword_1000A28C0, &qword_100075130);
    sub_100006ABC(&qword_1000A2B30, v20, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
  }

  return result;
}

uint64_t sub_10004091C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[59] = a3;
  v4[60] = a4;
  v4[57] = a1;
  v4[58] = a2;
  sub_10000A0C8(&qword_1000A43A8, &qword_1000780D0);
  v4[61] = swift_task_alloc();
  v4[62] = type metadata accessor for AnalyticsStoreContext();
  sub_100006ABC(&qword_1000A2338, v5, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[63] = v7;
  v4[64] = v6;

  return _swift_task_switch(sub_100040A14, v7, v6);
}

uint64_t sub_100040A14()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  *(v0 + 520) = v5;
  v6 = swift_task_alloc();
  *(v0 + 528) = v6;
  *(v6 + 16) = v2;
  v7 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  *(v0 + 536) = v7;
  *(v0 + 448) = v7;
  Predicate.init(_:)();
  v8 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  *(v0 + 544) = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 552) = sub_100006ABC(&qword_1000A2B30, v9, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v10 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 560) = v10;
  (*(v4 + 8))(v5, v3);

  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    *(v0 + 568) = result;
    if (result)
    {
LABEL_7:
      if (v12 < 1)
      {
        __break(1u);
      }

      else
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = 0;
          v14 = _swiftEmptyArrayStorage;
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v15 = swift_unknownObjectRetain();
            sub_10001CE0C(v15, v0 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_100028578(0, *(v14 + 2) + 1, 1, v14);
            }

            v17 = *(v14 + 2);
            v16 = *(v14 + 3);
            if (v17 >= v16 >> 1)
            {
              v14 = sub_100028578((v16 > 1), v17 + 1, 1, v14);
            }

            ++v13;
            swift_unknownObjectRelease();
            *(v14 + 2) = v17 + 1;
            v18 = &v14[216 * v17];
            v19 = *(v0 + 32);
            *(v18 + 2) = *(v0 + 16);
            *(v18 + 3) = v19;
            v20 = *(v0 + 48);
            v21 = *(v0 + 64);
            v22 = *(v0 + 96);
            *(v18 + 6) = *(v0 + 80);
            *(v18 + 7) = v22;
            *(v18 + 4) = v20;
            *(v18 + 5) = v21;
            v23 = *(v0 + 112);
            v24 = *(v0 + 128);
            v25 = *(v0 + 160);
            *(v18 + 10) = *(v0 + 144);
            *(v18 + 11) = v25;
            *(v18 + 8) = v23;
            *(v18 + 9) = v24;
            v26 = *(v0 + 176);
            v27 = *(v0 + 192);
            v28 = *(v0 + 208);
            *(v18 + 30) = *(v0 + 224);
            *(v18 + 13) = v27;
            *(v18 + 14) = v28;
            *(v18 + 12) = v26;
          }

          while (v12 != v13);
        }

        else
        {
          v29 = v10 + 32;
          v14 = _swiftEmptyArrayStorage;
          do
          {
            v30 = swift_retain_n();
            sub_10001CE0C(v30, v0 + 232);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_100028578(0, *(v14 + 2) + 1, 1, v14);
            }

            v32 = *(v14 + 2);
            v31 = *(v14 + 3);
            if (v32 >= v31 >> 1)
            {
              v14 = sub_100028578((v31 > 1), v32 + 1, 1, v14);
            }

            *(v14 + 2) = v32 + 1;
            v33 = &v14[216 * v32];
            v34 = *(v0 + 248);
            *(v33 + 2) = *(v0 + 232);
            *(v33 + 3) = v34;
            v35 = *(v0 + 264);
            v36 = *(v0 + 280);
            v37 = *(v0 + 312);
            *(v33 + 6) = *(v0 + 296);
            *(v33 + 7) = v37;
            *(v33 + 4) = v35;
            *(v33 + 5) = v36;
            v38 = *(v0 + 328);
            v39 = *(v0 + 344);
            v40 = *(v0 + 376);
            *(v33 + 10) = *(v0 + 360);
            *(v33 + 11) = v40;
            *(v33 + 8) = v38;
            *(v33 + 9) = v39;
            v41 = *(v0 + 392);
            v42 = *(v0 + 408);
            v43 = *(v0 + 424);
            *(v33 + 30) = *(v0 + 440);
            *(v33 + 13) = v42;
            *(v33 + 14) = v43;
            *(v33 + 12) = v41;
            v29 += 8;
            --v12;
          }

          while (v12);
        }

        *(v0 + 576) = v14;
        v44 = swift_task_alloc();
        *(v0 + 584) = v44;
        *v44 = v0;
        v44[1] = sub_10004110C;
        v45 = *(v0 + 480);

        return sub_100016AA8(v14, v45);
      }

      return result;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 568) = v12;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10004110C()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {

    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_1000419EC;
  }

  else
  {
    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_100041250;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100041250()
{
  v1 = 0;
  do
  {
    if ((*(v0 + 560) & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v2 = *(v0 + 568);
    ++v1;
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  while (v1 != v2);

  v3 = *(v0 + 488);
  v59 = *(v0 + 592);
  v4 = *(v0 + 456);
  v5 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  *(v0 + 520) = v7;
  v8 = swift_task_alloc();
  *(v0 + 528) = v8;
  *(v8 + 16) = v4;
  v9 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  *(v0 + 536) = v9;
  *(v0 + 448) = v9;
  Predicate.init(_:)();
  v10 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  *(v0 + 544) = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 552) = sub_100006ABC(&qword_1000A2B30, v11, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v12 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 560) = v12;
  (*(v6 + 8))(v7, v5);

  if (v59)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002DB8(v14, qword_1000B1908);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "processViolations failed: %@", v17, 0xCu);
      sub_100002CF0(v18, &qword_1000A4EC0, &qword_100076C00);
    }

    sub_10000EEA4(v20, v21, v22);
    swift_allocError();
    *v23 = 6;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 22;
    swift_willThrow();

    v24 = *(v0 + 8);
    goto LABEL_12;
  }

  if (!(v12 >> 62))
  {
    v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 568) = v25;
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_36:

    v24 = *(v0 + 8);
LABEL_12:

    return v24();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  *(v0 + 568) = result;
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v25 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v26 = 0;
      v27 = _swiftEmptyArrayStorage;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v28 = swift_unknownObjectRetain();
        sub_10001CE0C(v28, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100028578(0, *(v27 + 2) + 1, 1, v27);
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v27 = sub_100028578((v29 > 1), v30 + 1, 1, v27);
        }

        ++v26;
        swift_unknownObjectRelease();
        *(v27 + 2) = v30 + 1;
        v31 = &v27[216 * v30];
        v32 = *(v0 + 32);
        *(v31 + 2) = *(v0 + 16);
        *(v31 + 3) = v32;
        v33 = *(v0 + 48);
        v34 = *(v0 + 64);
        v35 = *(v0 + 96);
        *(v31 + 6) = *(v0 + 80);
        *(v31 + 7) = v35;
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        v36 = *(v0 + 112);
        v37 = *(v0 + 128);
        v38 = *(v0 + 160);
        *(v31 + 10) = *(v0 + 144);
        *(v31 + 11) = v38;
        *(v31 + 8) = v36;
        *(v31 + 9) = v37;
        v39 = *(v0 + 176);
        v40 = *(v0 + 192);
        v41 = *(v0 + 208);
        *(v31 + 30) = *(v0 + 224);
        *(v31 + 13) = v40;
        *(v31 + 14) = v41;
        *(v31 + 12) = v39;
      }

      while (v25 != v26);
    }

    else
    {
      v42 = v12 + 32;
      v27 = _swiftEmptyArrayStorage;
      do
      {
        v43 = swift_retain_n();
        sub_10001CE0C(v43, v0 + 232);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100028578(0, *(v27 + 2) + 1, 1, v27);
        }

        v45 = *(v27 + 2);
        v44 = *(v27 + 3);
        if (v45 >= v44 >> 1)
        {
          v27 = sub_100028578((v44 > 1), v45 + 1, 1, v27);
        }

        *(v27 + 2) = v45 + 1;
        v46 = &v27[216 * v45];
        v47 = *(v0 + 248);
        *(v46 + 2) = *(v0 + 232);
        *(v46 + 3) = v47;
        v48 = *(v0 + 264);
        v49 = *(v0 + 280);
        v50 = *(v0 + 312);
        *(v46 + 6) = *(v0 + 296);
        *(v46 + 7) = v50;
        *(v46 + 4) = v48;
        *(v46 + 5) = v49;
        v51 = *(v0 + 328);
        v52 = *(v0 + 344);
        v53 = *(v0 + 376);
        *(v46 + 10) = *(v0 + 360);
        *(v46 + 11) = v53;
        *(v46 + 8) = v51;
        *(v46 + 9) = v52;
        v54 = *(v0 + 392);
        v55 = *(v0 + 408);
        v56 = *(v0 + 424);
        *(v46 + 30) = *(v0 + 440);
        *(v46 + 13) = v55;
        *(v46 + 14) = v56;
        *(v46 + 12) = v54;
        v42 += 8;
        --v25;
      }

      while (v25);
    }

    *(v0 + 576) = v27;
    v57 = swift_task_alloc();
    *(v0 + 584) = v57;
    *v57 = v0;
    v57[1] = sub_10004110C;
    v58 = *(v0 + 480);

    return sub_100016AA8(v27, v58);
  }

  return result;
}

uint64_t sub_1000419EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a3;
  v4[64] = a4;
  v4[61] = a1;
  v4[62] = a2;
  sub_10000A0C8(&qword_1000A44C8, &qword_100078140);
  v4[65] = swift_task_alloc();
  v4[66] = type metadata accessor for AnalyticsStoreContext();
  sub_100006ABC(&qword_1000A2338, v5, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[67] = v7;
  v4[68] = v6;

  return _swift_task_switch(sub_100041B74, v7, v6);
}

uint64_t sub_100041B74()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = sub_10000A0C8(&qword_1000A44D0, &qword_100078148);
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  v6 = swift_task_alloc();
  *(v0 + 560) = v6;
  *(v6 + 16) = v2;
  v7 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v0 + 568) = v7;
  *(v0 + 480) = v7;
  Predicate.init(_:)();
  v8 = sub_10000A0C8(&qword_1000A44D8, &qword_100078150);
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  *(v0 + 576) = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 584) = sub_100006ABC(&qword_1000A2B30, v9, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v10 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 592) = v10;
  (*(v4 + 8))(v5, v3);

  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    *(v0 + 600) = result;
    if (result)
    {
LABEL_7:
      if (v12 < 1)
      {
        __break(1u);
      }

      else
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = 0;
          v14 = _swiftEmptyArrayStorage;
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v15 = swift_unknownObjectRetain();
            sub_10001D540(v15, v0 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1000286A0(0, *(v14 + 2) + 1, 1, v14);
            }

            v17 = *(v14 + 2);
            v16 = *(v14 + 3);
            if (v17 >= v16 >> 1)
            {
              v14 = sub_1000286A0((v16 > 1), v17 + 1, 1, v14);
            }

            ++v13;
            swift_unknownObjectRelease();
            *(v14 + 2) = v17 + 1;
            v18 = &v14[232 * v17];
            v19 = *(v0 + 16);
            v20 = *(v0 + 48);
            *(v18 + 3) = *(v0 + 32);
            *(v18 + 4) = v20;
            *(v18 + 2) = v19;
            v21 = *(v0 + 64);
            v22 = *(v0 + 80);
            v23 = *(v0 + 112);
            *(v18 + 7) = *(v0 + 96);
            *(v18 + 8) = v23;
            *(v18 + 5) = v21;
            *(v18 + 6) = v22;
            v24 = *(v0 + 128);
            v25 = *(v0 + 144);
            v26 = *(v0 + 176);
            *(v18 + 11) = *(v0 + 160);
            *(v18 + 12) = v26;
            *(v18 + 9) = v24;
            *(v18 + 10) = v25;
            v27 = *(v0 + 192);
            v28 = *(v0 + 208);
            v29 = *(v0 + 224);
            *(v18 + 32) = *(v0 + 240);
            *(v18 + 14) = v28;
            *(v18 + 15) = v29;
            *(v18 + 13) = v27;
          }

          while (v12 != v13);
        }

        else
        {
          v30 = v10 + 32;
          v14 = _swiftEmptyArrayStorage;
          do
          {
            v31 = swift_retain_n();
            sub_10001D540(v31, v0 + 248);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1000286A0(0, *(v14 + 2) + 1, 1, v14);
            }

            v33 = *(v14 + 2);
            v32 = *(v14 + 3);
            if (v33 >= v32 >> 1)
            {
              v14 = sub_1000286A0((v32 > 1), v33 + 1, 1, v14);
            }

            *(v14 + 2) = v33 + 1;
            v34 = &v14[232 * v33];
            v35 = *(v0 + 248);
            v36 = *(v0 + 280);
            *(v34 + 3) = *(v0 + 264);
            *(v34 + 4) = v36;
            *(v34 + 2) = v35;
            v37 = *(v0 + 296);
            v38 = *(v0 + 312);
            v39 = *(v0 + 344);
            *(v34 + 7) = *(v0 + 328);
            *(v34 + 8) = v39;
            *(v34 + 5) = v37;
            *(v34 + 6) = v38;
            v40 = *(v0 + 360);
            v41 = *(v0 + 376);
            v42 = *(v0 + 408);
            *(v34 + 11) = *(v0 + 392);
            *(v34 + 12) = v42;
            *(v34 + 9) = v40;
            *(v34 + 10) = v41;
            v43 = *(v0 + 424);
            v44 = *(v0 + 440);
            v45 = *(v0 + 456);
            *(v34 + 32) = *(v0 + 472);
            *(v34 + 14) = v44;
            *(v34 + 15) = v45;
            *(v34 + 13) = v43;
            v30 += 8;
            --v12;
          }

          while (v12);
        }

        *(v0 + 608) = v14;
        v46 = swift_task_alloc();
        *(v0 + 616) = v46;
        *v46 = v0;
        v46[1] = sub_100042284;
        v47 = *(v0 + 512);

        return sub_100018308(v14, v47);
      }

      return result;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v12;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100042284()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {

    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_100042B84;
  }

  else
  {
    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_1000423D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000423D0()
{
  v1 = 0;
  do
  {
    if ((*(v0 + 592) & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v2 = *(v0 + 600);
    ++v1;
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  while (v1 != v2);

  v61 = *(v0 + 624);
  v3 = *(v0 + 520);
  v4 = *(v0 + 488);
  v5 = sub_10000A0C8(&qword_1000A44D0, &qword_100078148);
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  *(v0 + 552) = v7;
  v8 = swift_task_alloc();
  *(v0 + 560) = v8;
  *(v8 + 16) = v4;
  v9 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v0 + 568) = v9;
  *(v0 + 480) = v9;
  Predicate.init(_:)();
  v10 = sub_10000A0C8(&qword_1000A44D8, &qword_100078150);
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  *(v0 + 576) = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 584) = sub_100006ABC(&qword_1000A2B30, v11, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v12 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 592) = v12;
  (*(v6 + 8))(v7, v5);

  if (v61)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002DB8(v14, qword_1000B1908);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "processFileAccesses failed: %@", v17, 0xCu);
      sub_100002CF0(v18, &qword_1000A4EC0, &qword_100076C00);
    }

    sub_10000EEA4(v20, v21, v22);
    swift_allocError();
    *v23 = 6;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 22;
    swift_willThrow();

    v24 = *(v0 + 8);
    goto LABEL_12;
  }

  if (!(v12 >> 62))
  {
    v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v25;
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_36:

    v24 = *(v0 + 8);
LABEL_12:

    return v24();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  *(v0 + 600) = result;
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v25 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v26 = 0;
      v27 = _swiftEmptyArrayStorage;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v28 = swift_unknownObjectRetain();
        sub_10001D540(v28, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000286A0(0, *(v27 + 2) + 1, 1, v27);
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v27 = sub_1000286A0((v29 > 1), v30 + 1, 1, v27);
        }

        ++v26;
        swift_unknownObjectRelease();
        *(v27 + 2) = v30 + 1;
        v31 = &v27[232 * v30];
        v32 = *(v0 + 16);
        v33 = *(v0 + 48);
        *(v31 + 3) = *(v0 + 32);
        *(v31 + 4) = v33;
        *(v31 + 2) = v32;
        v34 = *(v0 + 64);
        v35 = *(v0 + 80);
        v36 = *(v0 + 112);
        *(v31 + 7) = *(v0 + 96);
        *(v31 + 8) = v36;
        *(v31 + 5) = v34;
        *(v31 + 6) = v35;
        v37 = *(v0 + 128);
        v38 = *(v0 + 144);
        v39 = *(v0 + 176);
        *(v31 + 11) = *(v0 + 160);
        *(v31 + 12) = v39;
        *(v31 + 9) = v37;
        *(v31 + 10) = v38;
        v40 = *(v0 + 192);
        v41 = *(v0 + 208);
        v42 = *(v0 + 224);
        *(v31 + 32) = *(v0 + 240);
        *(v31 + 14) = v41;
        *(v31 + 15) = v42;
        *(v31 + 13) = v40;
      }

      while (v25 != v26);
    }

    else
    {
      v43 = v12 + 32;
      v27 = _swiftEmptyArrayStorage;
      do
      {
        v44 = swift_retain_n();
        sub_10001D540(v44, v0 + 248);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000286A0(0, *(v27 + 2) + 1, 1, v27);
        }

        v46 = *(v27 + 2);
        v45 = *(v27 + 3);
        if (v46 >= v45 >> 1)
        {
          v27 = sub_1000286A0((v45 > 1), v46 + 1, 1, v27);
        }

        *(v27 + 2) = v46 + 1;
        v47 = &v27[232 * v46];
        v48 = *(v0 + 248);
        v49 = *(v0 + 280);
        *(v47 + 3) = *(v0 + 264);
        *(v47 + 4) = v49;
        *(v47 + 2) = v48;
        v50 = *(v0 + 296);
        v51 = *(v0 + 312);
        v52 = *(v0 + 344);
        *(v47 + 7) = *(v0 + 328);
        *(v47 + 8) = v52;
        *(v47 + 5) = v50;
        *(v47 + 6) = v51;
        v53 = *(v0 + 360);
        v54 = *(v0 + 376);
        v55 = *(v0 + 408);
        *(v47 + 11) = *(v0 + 392);
        *(v47 + 12) = v55;
        *(v47 + 9) = v53;
        *(v47 + 10) = v54;
        v56 = *(v0 + 424);
        v57 = *(v0 + 440);
        v58 = *(v0 + 456);
        *(v47 + 32) = *(v0 + 472);
        *(v47 + 14) = v57;
        *(v47 + 15) = v58;
        *(v47 + 13) = v56;
        v43 += 8;
        --v25;
      }

      while (v25);
    }

    *(v0 + 608) = v27;
    v59 = swift_task_alloc();
    *(v0 + 616) = v59;
    *v59 = v0;
    v59[1] = sub_100042284;
    v60 = *(v0 + 512);

    return sub_100018308(v27, v60);
  }

  return result;
}

uint64_t sub_100042B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042C10(uint64_t a1)
{
  v3 = sub_100050644();
  if (!v1)
  {
    v5 = v3;
    swift_getKeyPath();
    sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
    sub_1000586F4();
    PersistentModel.getValue<A>(forKey:)();

    v2 = v5;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_1000585B8(&qword_1000A42D0, &qword_1000A42D8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    PersistentModel.getValue<A>(forKey:)();
  }

  return v2;
}

uint64_t sub_100042DFC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10000A0C8(&qword_1000A43A8, &qword_1000780D0);
  __chkstk_darwin(v5 - 8);
  v83 = &v78[-v6];
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  v89 = v4;
  v90 = v7;
  v85 = v2;
  v91 = v10;
  v92 = v8;
  v93 = v9;
  v82 = *(qword_1000B1920 + 16);
  v11 = 0xEA0000000000656CLL;
  v12 = 0x6946657461657263;
  v13 = *(a1 + 48);
  v14 = 0xE800000000000000;
  v15 = 0x656C694665766F6DLL;
  v16 = 0xE900000000000065;
  v17 = 0x6C6946656E6F6C63;
  if (v13 != 4)
  {
    v17 = 0x656C694670617773;
    v16 = 0xE800000000000000;
  }

  if (v13 != 3)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = 0x8000000100082AF0;
  v19 = 0xD000000000000012;
  if (v13 != 1)
  {
    v19 = 0x656C69466B6E696CLL;
    v18 = 0xE800000000000000;
  }

  if (*(a1 + 48))
  {
    v12 = v19;
    v11 = v18;
  }

  if (*(a1 + 48) <= 2u)
  {
    v20 = v12;
  }

  else
  {
    v20 = v15;
  }

  if (*(a1 + 48) <= 2u)
  {
    v21 = v11;
  }

  else
  {
    v21 = v14;
  }

  v22 = *(a1 + 16);
  v97 = *(a1 + 32);
  v98 = v22;
  v23 = *(a1 + 49);
  v79 = *(a1 + 50);
  LODWORD(v80) = *(a1 + 52);
  LODWORD(v81) = *(a1 + 53);
  v86 = *(a1 + 56);
  v24 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  v25 = swift_allocObject();
  *(v25 + 48) = sub_10000A0C8(&qword_1000A42B8, &qword_100077E20);
  v26 = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  *&v94 = v24;
  *(&v94 + 1) = v24;
  v95 = v26;
  v96 = v26;
  *(v25 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v25 + 24));
  v87 = v26;
  v88 = v24;
  static PersistentModel.createBackingData<A>()();
  *(v25 + 16) = 257;
  ObservationRegistrar.init()();
  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  *&v94 = v20;
  *(&v94 + 1) = v21;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  *&v94 = v90;
  *(&v94 + 1) = v92;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  v94 = v98;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  v94 = v97;
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  sub_100006A40();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 16) = 0;
  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  *&v94 = v91;
  *(&v94 + 1) = v93;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 17) = 0;
  if (v23 <= 3)
  {
    v34 = 0x7269447373616C63;
    v35 = 0x427373616C63;
    v36 = 0xE600000000000000;
    if (v23 != 2)
    {
      v35 = 0x437373616C63;
    }

    if (v23)
    {
      v34 = 0x417373616C63;
    }

    else
    {
      v36 = 0xEC000000656E6F4ELL;
    }

    if (v23 <= 1)
    {
      v32 = v34;
    }

    else
    {
      v32 = v35;
    }

    if (v23 <= 1)
    {
      v33 = v36;
    }

    else
    {
      v33 = 0xE600000000000000;
    }
  }

  else
  {
    v27 = 0xE600000000000000;
    v28 = 0x467373616C63;
    v29 = 0xE700000000000000;
    v30 = 0x58437373616C63;
    if (v23 != 7)
    {
      v30 = 0x6365746F72506F6ELL;
      v29 = 0xEC0000006E6F6974;
    }

    if (v23 != 6)
    {
      v28 = v30;
      v27 = v29;
    }

    v31 = 0x447373616C63;
    if (v23 != 4)
    {
      v31 = 0x457373616C63;
    }

    if (v23 <= 5)
    {
      v32 = v31;
    }

    else
    {
      v32 = v28;
    }

    if (v23 <= 5)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = v27;
    }
  }

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  *&v94 = v32;
  *(&v94 + 1) = v33;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v37 = v91;
  if (v79 <= 3)
  {
    v45 = 0x7269447373616C63;
    v46 = 0x427373616C63;
    v47 = 0xE600000000000000;
    if (v79 != 2)
    {
      v46 = 0x437373616C63;
    }

    if (v79)
    {
      v45 = 0x417373616C63;
    }

    else
    {
      v47 = 0xEC000000656E6F4ELL;
    }

    if (v79 <= 1)
    {
      v43 = v45;
    }

    else
    {
      v43 = v46;
    }

    if (v79 <= 1)
    {
      v44 = v47;
    }

    else
    {
      v44 = 0xE600000000000000;
    }
  }

  else
  {
    v38 = 0xE600000000000000;
    v39 = 0x467373616C63;
    v40 = 0xE700000000000000;
    v41 = 0x58437373616C63;
    if (v79 != 7)
    {
      v41 = 0x6365746F72506F6ELL;
      v40 = 0xEC0000006E6F6974;
    }

    if (v79 != 6)
    {
      v39 = v41;
      v38 = v40;
    }

    v42 = 0x447373616C63;
    if (v79 != 4)
    {
      v42 = 0x457373616C63;
    }

    if (v79 <= 5)
    {
      v43 = v42;
    }

    else
    {
      v43 = v39;
    }

    if (v79 <= 5)
    {
      v44 = 0xE600000000000000;
    }

    else
    {
      v44 = v38;
    }
  }

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  *&v94 = v43;
  *(&v94 + 1) = v44;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  LOBYTE(v94) = v80;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  LOBYTE(v94) = v81;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  *&v94 = v86;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v25 + 24), *(v25 + 48));
  swift_getKeyPath();
  v48 = v82;
  *&v94 = v82;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v49 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
  v81 = v78;
  v86 = v49;
  v50 = *(v49 - 8);
  v51 = __chkstk_darwin(v49);
  v53 = &v78[-v52];
  v80 = v78;
  __chkstk_darwin(v51);
  v55 = v92;
  v54 = v93;
  *&v78[-48] = v90;
  *&v78[-40] = v55;
  *&v78[-32] = v37;
  *&v78[-24] = v54;
  *&v78[-16] = v48;
  *&v94 = v88;
  v56 = v83;
  Predicate.init(_:)();
  v57 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100006ABC(&qword_1000A2B30, v58, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v59 = v84;
  v60 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v59)
  {
    (*(v50 + 8))(v53, v86);
  }

  v62 = v60;
  v84 = v53;
  v63 = v86;

  if (!v62)
  {
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.insert<A>(_:)();

    v76 = *(v50 + 8);
    v77 = v84;
    return v76(v77, v63);
  }

  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100002DB8(v64, qword_1000B1908);
  v65 = v93;

  v66 = v92;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();

  v89 = v67;
  v69 = os_log_type_enabled(v67, v68);
  v70 = v84;
  if (!v69)
  {

    v76 = *(v50 + 8);
    v77 = v70;
    return v76(v77, v63);
  }

  v71 = swift_slowAlloc();
  v99 = swift_slowAlloc();
  *v71 = 136446466;
  *(v71 + 4) = sub_100005C68(v90, v66, &v99);
  *(v71 + 12) = 2082;
  if (v65)
  {
    v72 = v91;
  }

  else
  {
    v72 = 0x206E776F6E6B6E75;
  }

  if (v65)
  {
    v73 = v65;
  }

  else
  {
    v73 = 0xEE006E69616D6F64;
  }

  v74 = sub_100005C68(v72, v73, &v99);

  *(v71 + 14) = v74;
  v75 = v89;
  _os_log_impl(&_mh_execute_header, v89, v68, "skipping duplicate violation for %{public}s in %{public}s", v71, 0x16u);
  swift_arrayDestroy();

  return (*(v50 + 8))(v70, v86);
}

uint64_t sub_100043B30(uint64_t a1)
{
  v4 = *v1;
  v5 = sub_10000A0C8(&qword_1000A44C8, &qword_100078140);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = *(a1 + 64);
  v62 = v7;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v60 = 0x8000000100082AF0;
      v13 = 0xD000000000000012;
      v14 = &v73;
    }

    else
    {
      v15 = v8 == 4;
      v13 = 0xE400000000000000;
      v16 = 1802398060;
      if (!v15)
      {
        v16 = 0x6E776F6E6B6E75;
      }

      v61 = v16;
      if (!v15)
      {
        v13 = 0xE700000000000000;
      }

      v14 = &v72;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x6574697277;
    if (v8 != 1)
    {
      v10 = 0x657461657263;
      v9 = 0xE600000000000000;
    }

    v11 = v8 == 0;
    if (v8)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1684104562;
    }

    v61 = v12;
    if (v11)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = v9;
    }

    v14 = &v72;
  }

  *(v14 - 32) = v13;
  v17 = *(a1 + 65);
  v64 = v1;
  v56 = v4;
  v63 = v2;
  if (v17 <= 3)
  {
    v26 = 0xEC000000656E6F4ELL;
    v27 = 0x7269447373616C63;
    v28 = 0x427373616C63;
    if (v17 != 2)
    {
      v28 = 0x437373616C63;
    }

    if (v17)
    {
      v27 = 0x417373616C63;
      v26 = 0xE600000000000000;
    }

    v29 = v17 <= 1;
    if (v17 <= 1)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    v59 = v30;
    if (v29)
    {
      v25 = v26;
    }

    else
    {
      v25 = 0xE600000000000000;
    }
  }

  else
  {
    v18 = 0xE600000000000000;
    v19 = 0x467373616C63;
    v20 = 0xE700000000000000;
    v21 = 0x58437373616C63;
    if (v17 != 7)
    {
      v21 = 0x6365746F72506F6ELL;
      v20 = 0xEC0000006E6F6974;
    }

    if (v17 != 6)
    {
      v19 = v21;
      v18 = v20;
    }

    v22 = 0x447373616C63;
    if (v17 != 4)
    {
      v22 = 0x457373616C63;
    }

    v23 = v17 <= 5;
    if (v17 <= 5)
    {
      v24 = v22;
    }

    else
    {
      v24 = v19;
    }

    v59 = v24;
    if (v23)
    {
      v25 = 0xE600000000000000;
    }

    else
    {
      v25 = v18;
    }
  }

  v31 = *a1;
  v32 = *(a1 + 8);
  v34 = *(a1 + 48);
  v33 = *(a1 + 56);
  LODWORD(v58) = *(a1 + 66);
  LODWORD(v57) = *(a1 + 67);
  if (qword_1000A2180 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v35 = *(qword_1000B1920 + 16);
    v36 = sub_10000A0C8(&qword_1000A44D0, &qword_100078148);
    v68 = &v53;
    v65 = *(v36 - 8);
    v66 = v36;
    v37 = __chkstk_darwin(v36);
    v39 = &v53 - v38;
    v67 = &v53;
    __chkstk_darwin(v37);
    *(&v53 - 10) = v31;
    *(&v53 - 9) = v32;
    *(&v53 - 8) = v34;
    *(&v53 - 7) = v33;
    v40 = v60;
    *(&v53 - 6) = v61;
    *(&v53 - 5) = v40;
    *(&v53 - 4) = v59;
    *(&v53 - 3) = v25;
    *(&v53 - 16) = v58;
    *(&v53 - 15) = v57;
    *(&v53 - 1) = v35;
    v31 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
    v71 = v31;
    v41 = v62;
    Predicate.init(_:)();

    v42 = sub_10000A0C8(&qword_1000A44D8, &qword_100078150);
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    v34 = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
    FetchDescriptor.init(predicate:sortBy:)();
    v44 = sub_100006ABC(&qword_1000A2B30, v43, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
    v32 = v56;
    v25 = v64;
    ModelActor.modelContext.getter();
    v45 = v63;
    v46 = dispatch thunk of ModelContext.fetch<A>(_:)();
    v55 = v45;
    if (v45)
    {
      (*(v65 + 8))(v39, v66);
    }

    v62 = v34;
    v63 = v46;

    v48 = v63;
    v54 = v39;
    v53 = v35;
    v61 = v31;
    v60 = v44;
    if (v63 >> 62)
    {
      break;
    }

    v49 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_62;
    }

LABEL_46:
    v50 = 0;
    v59 = v48 & 0xC000000000000001;
    v58 = v48 & 0xFFFFFFFFFFFFFF8;
    v57 = v49;
    while (1)
    {
      if (v59)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v33 = v68;
      }

      else
      {
        v33 = v68;
        if (v50 >= *(v58 + 16))
        {
          goto LABEL_59;
        }

        v31 = *(v48 + 8 * v50 + 32);
      }

      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if ((*(a1 + 80) & 1) != 0 || (v34 = a1, v52 = *(a1 + 72), v69 = v31, swift_getKeyPath(), sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_getKeyPath(), sub_100057E94(), PersistentModel.getValue<A>(forKey:)(), , v70 == 1) || v69 >= v52)
      {
        (*(v65 + 8))(v54, v66);
      }

      v25 = v64;
      ModelActor.modelContext.getter();
      dispatch thunk of ModelContext.delete<A>(_:)();

      ++v50;
      v48 = v63;
      if (v51 == v57)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  v49 = _CocoaArrayWrapper.endIndex.getter();
  v48 = v63;
  if (v49)
  {
    goto LABEL_46;
  }

LABEL_62:

  swift_allocObject();
  sub_100028ADC(a1, &v69);
  sub_100047F94(a1, v53);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.insert<A>(_:)();

  return (*(v65 + 8))(v54, v66);
}

uint64_t sub_100044414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  *(v5 + 208) = a2;
  *(v5 + 216) = a3;
  *(v5 + 320) = a1;
  *(v5 + 240) = type metadata accessor for AnalyticsStoreContext();
  sub_100006ABC(&qword_1000A2338, v6, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 248) = v8;
  *(v5 + 256) = v7;

  return _swift_task_switch(sub_1000444D8, v8, v7);
}

uint64_t sub_1000444D8()
{
  v1 = sub_100053C28(*(v0 + 320), *(v0 + 208));
  *(v0 + 264) = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 272) = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    sub_100006ABC(&qword_1000A2B30, v2, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    v23 = *(v0 + 264);

    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((*(v0 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = *(v0 + 208);

    v26 = *(v0 + 8);

    return v26(v24 == v25);
  }

LABEL_21:
  v22 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 272) = v22;
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_3:
  for (i = 0; ; i = *(v0 + 288))
  {
    v5 = *(v0 + 264);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v5 + 8 * i + 32);
    }

    *(v0 + 280) = v6;
    *(v0 + 288) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_10004E8EC((v0 + 104));
    v7 = *(v0 + 112);
    if (v7)
    {
      break;
    }

    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002DB8(v8, qword_1000B1908);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "EnforcementTask has malformed event: a column in this row has an invalid value.", v11, 2u);
    }

    sub_100006ABC(&qword_1000A2B30, v12, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
    sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
    dispatch thunk of ModelContext.delete<A>(_:)();

    v13 = *(v0 + 288);
    v14 = *(v0 + 272);

    if (v13 == v14)
    {
      goto LABEL_22;
    }
  }

  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = v7;
  v15 = *(v0 + 136);
  v16 = *(v0 + 168);
  *(v0 + 64) = *(v0 + 152);
  *(v0 + 80) = v16;
  *(v0 + 96) = *(v0 + 184);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v15;
  *(v0 + 192) = v6;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 296) = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  v17 = *(v0 + 200);
  v18 = swift_task_alloc();
  *(v0 + 304) = v18;
  *v18 = v0;
  v18[1] = sub_1000449FC;
  v19 = *(v0 + 224);
  v20 = *(v0 + 232);

  return sub_10003870C(v0 + 16, v17, v19, v20);
}

uint64_t sub_1000449FC(char a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {

    sub_100002CF0(v4 + 104, &qword_1000A4318, &qword_100078080);
    v5 = *(v4 + 248);
    v6 = *(v4 + 256);
    v7 = sub_1000450A0;
  }

  else
  {
    *(v4 + 321) = a1 & 1;
    sub_100002CF0(v4 + 104, &qword_1000A4318, &qword_100078080);
    v5 = *(v4 + 248);
    v6 = *(v4 + 256);
    v7 = sub_100044B5C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100044B5C(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 321) & 1) == 0)
  {
    v3 = *(v2 + 312);
    goto LABEL_24;
  }

  sub_100006ABC(&qword_1000A2B30, a2, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  dispatch thunk of ModelContext.delete<A>(_:)();
  v3 = *(v2 + 312);
  while (1)
  {

LABEL_24:
    v17 = *(v2 + 288);
    v18 = *(v2 + 272);

    if (v17 == v18)
    {
      break;
    }

    v20 = *(v2 + 288);
    v21 = *(v2 + 264);
    if ((v21 & 0xC000000000000001) == 0)
    {
      if (v20 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v21 + 8 * v20 + 32);

        goto LABEL_17;
      }

      __break(1u);
    }

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    *(v2 + 280) = v10;
    *(v2 + 288) = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_20;
    }

    sub_10004E8EC((v2 + 104));
    v11 = *(v2 + 112);
    if (v11)
    {
      *(v2 + 16) = *(v2 + 104);
      *(v2 + 24) = v11;
      v22 = *(v2 + 136);
      v23 = *(v2 + 168);
      *(v2 + 64) = *(v2 + 152);
      *(v2 + 80) = v23;
      *(v2 + 96) = *(v2 + 184);
      *(v2 + 32) = *(v2 + 120);
      *(v2 + 48) = v22;
      *(v2 + 192) = v10;
      swift_getKeyPath();
      sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      *(v2 + 296) = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
      PersistentModel.getValue<A>(forKey:)();

      v24 = *(v2 + 200);
      v25 = swift_task_alloc();
      *(v2 + 304) = v25;
      *v25 = v2;
      v25[1] = sub_1000449FC;
      v26 = *(v2 + 224);
      v27 = *(v2 + 232);

      return sub_10003870C(v2 + 16, v24, v26, v27);
    }

    if (qword_1000A2178 != -1)
    {
      goto LABEL_31;
    }

LABEL_20:
    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "EnforcementTask has malformed event: a column in this row has an invalid value.", v15, 2u);
    }

    sub_100006ABC(&qword_1000A2B30, v16, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
    sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  sub_100006ABC(&qword_1000A2B30, v19, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v4 = *(v2 + 264);
  if (v3)
  {

    v5 = *(v2 + 8);
    v6 = 0;
  }

  else
  {

    if (v4 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((*(v2 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = *(v2 + 208);

    v6 = v7 == v8;
    v5 = *(v2 + 8);
  }

  return v5(v6);
}

uint64_t sub_1000450A0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100045114(uint64_t a1)
{
  v23 = *v1;
  v3 = sub_10000A0C8(&qword_1000A4320, &qword_100078088);
  __chkstk_darwin(v3 - 8);
  v21 = &v20 - v4;
  v28 = a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  v5 = v28;
  v6 = v29;
  v28 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v8 = v28;
  v7 = v29;
  v9 = sub_10000A0C8(&qword_1000A4328, &qword_100078090);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v24 = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v28 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  v12 = v21;
  Predicate.init(_:)();

  v13 = sub_10000A0C8(&qword_1000A4330, &unk_100078098);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100006ABC(&qword_1000A2B30, v14, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v15 = dispatch thunk of ModelContext.fetch<A>(_:)();

  if (v15 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();

    if (v19)
    {
      goto LABEL_3;
    }

LABEL_4:
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.insert<A>(_:)();

    v17 = 1;
    goto LABEL_5;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
    goto LABEL_4;
  }

LABEL_3:
  v17 = 0;
LABEL_5:
  (*(v22 + 8))(v11, v9);
  return v17;
}

uint64_t sub_1000456BC()
{
  v0 = type metadata accessor for Schema.Version();
  sub_10000A574(v0, qword_1000B19E8);
  sub_100002DB8(v0, qword_1000B19E8);
  return Schema.Version.init(_:_:_:)();
}

uint64_t sub_100045714@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100045828(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100045904()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100045A10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100045B24(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100045C00()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100045D18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

double sub_100045E0C@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_100045F20(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046008(uint64_t a1)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100046110@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100046224(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046300()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004640C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100046520(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000465FC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100046708@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004681C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000468F0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_1000469FC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100046B10(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046BE4()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100046CF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  sub_100057E94();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100046E10(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046EF0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  sub_100057E94();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100047004(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  sub_100057E18();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004710C@<X0>(_DWORD *a3@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v5;
  return result;
}

uint64_t sub_10004723C(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100047314(uint64_t a1)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t sub_100047418(uint64_t a1, int a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1000474C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_1000475D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000476A4()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1000477B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004785C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100047970(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100047A40()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100047B4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100047BF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100047D0C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100047DDC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000776AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100047EE8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100047F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v2 + 48) = sub_10000A0C8(&qword_1000A42B0, &qword_100077C60);
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v2 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  sub_100006A40();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 17) = 0;
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_10000A0C8(&qword_1000A2818, &qword_100075050);
  sub_100057E18();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 18) = 0;
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  sub_100011348(a1);

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v2;
}

uint64_t sub_10004876C(__int128 *a1)
{
  type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42B0, &qword_100077C60);
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000488B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000489C4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100048AA0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100048BAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100048CC0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100048D9C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100048EA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100048FBC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049098()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_1000491A4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000492BC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049398()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_1000494A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000495C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004969C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1000497AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000498C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004999C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100049AA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100049BBC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049C98()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100049DA4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100049EB8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049F8C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004A098@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A1AC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004A280()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004A38C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A4A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004A570()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004A67C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004A728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A83C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004A90C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_1000775F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004AA18(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004AAC4(__int128 *a1)
{
  type metadata accessor for AnalyticsSchemaV1.Violation(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42B8, &qword_100077E20);
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10004ABE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004ACFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004ADCC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004AED8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004AF84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  sub_1000586F4();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10004B0A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004B184()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  sub_1000586F4();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004B298(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  sub_100058678();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004B35C(uint64_t *a1)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  sub_1000585B8(&qword_1000A42D0, &qword_1000A42D8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10004B4A4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000216C4(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100002CF0(v6, &qword_1000A28C0, &qword_100075130);
}

uint64_t sub_10004B5F0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  sub_1000585B8(&qword_1000A42D0, &qword_1000A42D8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10004B738(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  sub_1000585B8(&qword_1000A42C0, &qword_1000A42C8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004B81C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v16 = a4;
  HIDWORD(v15) = a3;
  v8 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  *(v5 + 48) = sub_10000A0C8(&qword_1000A42F8, &qword_100077EB0);
  v12 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  v22 = v11;
  v23 = v11;
  v24 = v12;
  v25 = v12;
  *(v5 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v5 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v5 + 16) = 257;
  ObservationRegistrar.init()();
  sub_100006978((v5 + 24), *(v5 + 48));
  swift_getKeyPath();
  v22 = a1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v22 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = a2;
  v21 = BYTE4(v15) & 1;
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000774B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v13 = v16;
  sub_1000216C4(v16, v10);
  v22 = v5;
  swift_getKeyPath();
  v17 = v5;
  v18 = v10;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100002CF0(v13, &qword_1000A28C0, &qword_100075130);
  sub_100002CF0(v10, &qword_1000A28C0, &qword_100075130);
  return v5;
}

uint64_t sub_10004BAF4(__int128 *a1)
{
  type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42F8, &qword_100077EB0);
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10004BC24()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004BD30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004BE44(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004BF20()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004C02C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004C140(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004C21C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10004C32C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10004C444(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_100006ABC(a5, 255, a6, a7);
  sub_100006A40();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004C5C8()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004C6D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004C7E8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004C8C4()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004C9D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004CAE4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004CBC0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004CCCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004CDE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004CEBC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004CFC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004D0DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_100006ABC(a5, 255, a6, a7);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004D25C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004D368@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004D47C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004D550()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004D65C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004D770(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004D844(uint64_t a1, char a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_100006ABC(a4, 255, a5, a6);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004D8DC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004D9E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004DAFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004DBCC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004DC78()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004DD84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004DE98(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004DF68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.setValue<A>(forKey:to:)();
}

void *sub_10004E014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 48) = sub_10000A0C8(&qword_1000A4300, &qword_100078070);
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v2 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  ObservationRegistrar.init()();
  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  sub_100006A40();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  sub_100005BFC(a1);

  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v2;
}

void sub_10004E8EC(_OWORD *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for Date();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49._countAndFlagsBits = v1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  v6 = sub_100028A4C(v49);
  if (v6 == 6 || (v7 = v6, v49._countAndFlagsBits = v1, swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_getKeyPath(), PersistentModel.getValue<A>(forKey:)(), , v37 = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(v49), v37 == 9) || (v49._countAndFlagsBits = v1, swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_getKeyPath(), PersistentModel.getValue<A>(forKey:)(), , v36 = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(v49), v36 == 9) || (v49._countAndFlagsBits = v1, swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_getKeyPath(), PersistentModel.getValue<A>(forKey:)(), , v8 = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(v49), v8 == 9))
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002DB8(v9, qword_1000B1908);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v43 = v39;
      *v12 = 136315906;
      v49._countAndFlagsBits = v2;
      swift_getKeyPath();
      LODWORD(v38) = v11;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v13 = sub_100005C68(v49._countAndFlagsBits, v49._object, &v43);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      v49._countAndFlagsBits = v2;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v14 = sub_100005C68(v49._countAndFlagsBits, v49._object, &v43);

      *(v12 + 14) = v14;
      *(v12 + 22) = 2080;
      v49._countAndFlagsBits = v2;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v15 = sub_100005C68(v49._countAndFlagsBits, v49._object, &v43);

      *(v12 + 24) = v15;
      *(v12 + 32) = 2080;
      v49._countAndFlagsBits = v2;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v16 = sub_100005C68(v49._countAndFlagsBits, v49._object, &v43);

      *(v12 + 34) = v16;
      _os_log_impl(&_mh_execute_header, v10, v38, "database has invalid column values for EnforcementTask: op(%s), pc(%s), mpc(%s), dpc(%s)", v12, 0x2Au);
      swift_arrayDestroy();
    }

    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    goto LABEL_10;
  }

  v35 = v8;
  v49._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  object = v49._object;
  countAndFlagsBits = v49._countAndFlagsBits;
  v49._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v31 = v49._object;
  v32 = v49._countAndFlagsBits;
  v49._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  v29 = v49._object;
  v30 = v49._countAndFlagsBits;
  v49._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  HIDWORD(v28) = LOBYTE(v49._countAndFlagsBits);
  v49._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v24 = v49._countAndFlagsBits;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v26 = v25;
  v27 = v25;
  (*(v38 + 8))(v5, v39);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v26 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v26 < 1.84467441e19)
  {
    *&v43 = countAndFlagsBits;
    *(&v43 + 1) = object;
    *&v44 = v32;
    *(&v44 + 1) = v31;
    *&v45 = v30;
    *(&v45 + 1) = v29;
    LOBYTE(v46) = v7;
    BYTE1(v46) = v37;
    BYTE2(v46) = v36;
    BYTE3(v46) = v35;
    *(&v47 + 1) = *v42;
    DWORD1(v47) = *&v42[3];
    BYTE4(v46) = 1;
    BYTE5(v46) = BYTE4(v28);
    BYTE6(v46) = v24;
    *(&v46 + 1) = v26;
    LOBYTE(v47) = 1;
    *(&v47 + 1) = 0;
    v48 = 0;
    v49._countAndFlagsBits = countAndFlagsBits;
    v49._object = object;
    v50 = v32;
    v51 = v31;
    v52 = v30;
    v53 = v29;
    v54 = v7;
    v55 = v37;
    v56 = v36;
    v57 = v35;
    v58 = 1;
    v59 = BYTE4(v28);
    v60 = v24;
    v61 = v26;
    v62 = 1;
    *&v63[3] = *&v42[3];
    *v63 = *v42;
    v64 = 0;
    v65 = 0;
    sub_10000626C(&v43, &v41);
    sub_100005BFC(&v49);
    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = v46;
    v22 = v47;
    v17 = v48;
LABEL_10:
    v23 = v40;
    *v40 = v18;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
    v23[4] = v22;
    *(v23 + 10) = v17;
    return;
  }

LABEL_17:
  __break(1u);
}

void *sub_10004F2B8(__int128 *a1)
{
  *(v1 + 48) = sub_10000A0C8(&qword_1000A4300, &qword_100078070);
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 1;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10004F484()
{
  sub_10000A0C8(&qword_1000A3620, &qword_100076FE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076F90;
  v1 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  v2 = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  v4 = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  v6 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  v8 = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_10004F5F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A21B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = sub_100002DB8(v2, qword_1000B19E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004F69C()
{
  sub_10004E8EC(v30);
  v0 = sub_1000057A8(0, 4, 0, _swiftEmptyArrayStorage);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1000057A8((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  v3 = &v0[32 * v2];
  *(v3 + 2) = xmmword_1000758D0;
  *(v3 + 6) = 0;
  v3[56] = 0;
  if (*(&v30[0] + 1))
  {
    v32 = v30[0];
    v35 = v30[3];
    v36 = v30[4];
    v37 = v31;
    v34 = v30[2];
    v33 = v30[1];
    v4 = sub_100003644();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_100002CF0(v30, &qword_1000A4318, &qword_100078080);
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v6 = 0x8000000100083CF0;
    v4 = 0xD000000000000011;
  }

  sub_100058B30(v4, v6, v8, v10 & 1);
  v12 = *(v0 + 2);
  v11 = *(v0 + 3);
  if (v12 >= v11 >> 1)
  {
    v0 = sub_1000057A8((v11 > 1), v12 + 1, 1, v0);
  }

  *(v0 + 2) = v12 + 1;
  v13 = &v0[32 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(v13 + 6) = v8;
  v13[56] = v10 & 1 | 0x80;
  sub_100005C50(v4, v6, v8, v10 & 1);
  v15 = *(v0 + 2);
  v14 = *(v0 + 3);
  if (v15 >= v14 >> 1)
  {
    v0 = sub_1000057A8((v14 > 1), v15 + 1, 1, v0);
  }

  *(v0 + 2) = v15 + 1;
  v16 = &v0[32 * v15];
  *(v16 + 2) = xmmword_100076FA0;
  *(v16 + 6) = 0;
  v16[56] = 0;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_10007756C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  PersistentModel.getValue<A>(forKey:)();

  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = *(v0 + 2);
  v19 = *(v0 + 3);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    v27 = v17;
    v28 = v18;
    v29 = sub_1000057A8((v19 > 1), v20 + 1, 1, v0);
    v18 = v28;
    v0 = v29;
    v17 = v27;
    v19 = *(v0 + 3);
    v21 = v19 >> 1;
  }

  *(v0 + 2) = v22;
  v23 = &v0[32 * v20];
  *(v23 + 4) = v17;
  *(v23 + 5) = v18;
  *(v23 + 6) = 2;
  v23[56] = 64;
  v24 = v20 + 2;
  if (v21 < v24)
  {
    v0 = sub_1000057A8((v19 > 1), v24, 1, v0);
  }

  *(v0 + 2) = v24;
  v25 = &v0[32 * v22];
  *(v25 + 2) = xmmword_1000758D0;
  *(v25 + 6) = 0;
  v25[56] = 0;
  return 12;
}

uint64_t sub_10004FA4C()
{
  sub_10004F69C();
  v1 = v0;
  v2 = sub_100005A2C(0, 12, 2, v0);
  sub_100005C50(12, 2, v1, 1);
  return v2;
}

uint64_t sub_10004FAB4()
{
  sub_10000A0C8(&qword_1000A4308, &qword_100078078);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076380;
  v3 = sub_100058ADC(v0, v1, v2);
  *(v0 + 32) = &type metadata for AnalyticsSchemaV1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t AnalyticsStore.__allocating_init()()
{
  v0 = swift_allocObject();
  AnalyticsStore.init()();
  return v0;
}

void *AnalyticsStore.init()()
{
  v2 = *v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v49 - v9;
  __chkstk_darwin(v8);
  v12 = v49 - v11;
  static AnalyticsStore.databaseURL(reset:)(0, v49 - v11);
  if (!v1)
  {
    v54 = 0;
    v49[1] = v2;
    v56 = v0;
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v51 = v7;
    v13 = type metadata accessor for Logger();
    sub_100002DB8(v13, qword_1000B1908);
    v50 = *(v4 + 16);
    v50(v10, v12, v3);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v55 = v4;
    v57 = v3;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v49[0] = v4 + 16;
      v18 = v17;
      v19 = swift_slowAlloc();
      v52 = v12;
      v20 = v19;
      v58 = v19;
      *v18 = 136446210;
      v21 = URL.absoluteString.getter();
      v23 = v22;
      v53 = *(v4 + 8);
      v53(v10, v3);
      v24 = sub_100005C68(v21, v23, &v58);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "opening AnalyticsStore at %{public}s", v18, 0xCu);
      sub_100005E9C(v20);
      v12 = v52;
    }

    else
    {

      v53 = *(v4 + 8);
      v53(v10, v3);
    }

    v25 = type metadata accessor for ModelConfiguration();
    v52 = v49;
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50(v51, v12, v57);
    v29 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
    __chkstk_darwin(v29 - 8);
    static ModelConfiguration.CloudKitDatabase.automatic.getter();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    v51 = type metadata accessor for ModelContainer();
    sub_10000A0C8(&qword_1000A3620, &qword_100076FE0);
    v30 = v12;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100076F90;
    v32 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
    v33 = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess, &unk_1000779B4);
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    v34 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
    v35 = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
    *(v31 + 48) = v34;
    *(v31 + 56) = v35;
    v36 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
    v37 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
    *(v31 + 64) = v36;
    *(v31 + 72) = v37;
    v38 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
    v39 = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
    *(v31 + 80) = v38;
    *(v31 + 88) = v39;
    sub_100054518(v39, v40, v41);
    sub_10000A0C8(&qword_1000A3638, &qword_100076FE8);
    v42 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100076380;
    (*(v26 + 16))(v43 + v42, v28, v25);
    v44 = v54;
    v45 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
    if (!v44)
    {
      v47 = v45;
      (*(v26 + 8))(v28, v25);
      v53(v30, v57);
      v48 = v56;
      v56[2] = v47;
      return v48;
    }

    (*(v26 + 8))(v28, v25);
    v53(v30, v57);
    v0 = v56;
  }

  swift_deallocPartialClassInstance();
  return v0;
}

uint64_t static AnalyticsStore.databaseURL(reset:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37[1] = a2;
  v3 = type metadata accessor for URLResourceValues();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for URL();
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v37 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v41 = 0;
  v14 = [v13 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v41];

  v15 = v41;
  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    URL.appendingPathComponent(_:isDirectory:)();
    if (a1)
    {
      v17 = [v12 defaultManager];
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      v41 = 0;
      v21 = [v17 removeItemAtURL:v19 error:&v41];

      v22 = v41;
      if (!v21)
      {
        goto LABEL_9;
      }

      v23 = v41;
    }

    v24 = [v12 defaultManager];
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    v41 = 0;
    v28 = [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v41];

    v22 = v41;
    if (v28)
    {
      v29 = v41;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v30 = v37[2];
      URL.setResourceValues(_:)();
      if (!v30)
      {
        URL.appendingPathComponent(_:)();
      }

      (*(v38 + 8))(v5, v39);
      goto LABEL_10;
    }

LABEL_9:
    v31 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_10:
    v32 = *(v6 + 8);
    v33 = v9;
    v34 = v40;
    v32(v33, v40);
    return (v32)(v11, v34);
  }

  v36 = v41;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

BOOL static AnalyticsStore.available()()
{
  if (&metaclass for ModelContainer)
  {
    v0 = &nominal type descriptor for ModelContainer == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &type metadata for ModelContainer != 0 && &type metadata accessor for ModelContainer != 0 && &protocol conformance descriptor for ModelContainer != 0 && &class metadata base offset for ModelContainer != 0;
}

uint64_t sub_100050644()
{
  v2 = *v0;
  v3 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - v4;
  v5 = sub_10000A0C8(&qword_1000A4698, &qword_100078208);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100006ABC(&qword_1000A2B30, v8, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  v26 = v2;
  ModelActor.modelContext.getter();
  v9 = sub_10000A0C8(&qword_1000A46A0, &qword_100078210);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10000A0C8(&qword_1000A46A8, qword_100078218);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  v14 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState, &unk_1000778D4);
  FetchDescriptor.init(predicate:sortBy:)();
  v15 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v10 + 8))(v12, v9);

  if (v1)
  {
    return v14;
  }

  v16 = v25;
  if (v15 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v15 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v15 + 32);

LABEL_7:

      return v14;
    }

    __break(1u);
    goto LABEL_19;
  }

  v26 = 0;

  if (qword_1000A2178 != -1)
  {
LABEL_19:
    swift_once();
  }

  v25 = v14;
  v18 = type metadata accessor for Logger();
  sub_100002DB8(v18, qword_1000B1908);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "initializing PipelineState", v21, 2u);
  }

  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v14 = swift_allocObject();
  sub_10004B81C(1, 0, 1, v16);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.insert<A>(_:)();

  ModelActor.modelContext.getter();
  v23 = v26;
  dispatch thunk of ModelContext.save()();
  if (v23)
  {
  }

  return v14;
}

uint64_t sub_100050B38@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13)
{
  v134 = a8;
  v166 = a7;
  v127 = a6;
  v160 = a5;
  v149 = a4;
  v169 = a3;
  v159 = a2;
  v147 = a9;
  v141 = a13;
  v136 = a12;
  v135 = a11;
  v132 = a10;
  v143 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v144 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v107 - v14;
  v140 = sub_10000A0C8(&qword_1000A44E0, &qword_100078158);
  v142 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = &v107 - v15;
  v145 = sub_10000A0C8(&qword_1000A44E8, &qword_100078160);
  v146 = *(v145 - 8);
  __chkstk_darwin(v145);
  v138 = &v107 - v16;
  v164 = sub_10000A0C8(&qword_1000A44F0, &qword_100078168);
  v172 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v107 - v17;
  v133 = sub_10000A0C8(&qword_1000A44F8, &qword_100078170);
  v170 = *(v133 - 8);
  __chkstk_darwin(v133);
  v128 = &v107 - v18;
  v163 = sub_10000A0C8(&qword_1000A4500, &qword_100078178);
  v171 = *(v163 - 8);
  __chkstk_darwin(v163);
  v131 = &v107 - v19;
  v119 = sub_10000A0C8(&qword_1000A43D8, &qword_100078100);
  v148 = *(v119 - 8);
  __chkstk_darwin(v119);
  v112 = &v107 - v20;
  v115 = sub_10000A0C8(&qword_1000A4508, &qword_100078180);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v107 - v21;
  v117 = sub_10000A0C8(&qword_1000A4510, &qword_100078188);
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = &v107 - v22;
  v168 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v176 = *(v168 - 1);
  __chkstk_darwin(v168);
  v24 = &v107 - v23;
  v25 = sub_10000A0C8(&qword_1000A4518, &qword_100078190);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v107 - v27;
  v150 = sub_10000A0C8(&qword_1000A4520, &qword_100078198);
  v175 = *(v150 - 8);
  __chkstk_darwin(v150);
  v30 = &v107 - v29;
  v155 = sub_10000A0C8(&qword_1000A4528, &qword_1000781A0);
  v177 = *(v155 - 8);
  __chkstk_darwin(v155);
  v107 = &v107 - v31;
  v113 = sub_10000A0C8(&qword_1000A4530, &qword_1000781A8);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v157 = &v107 - v32;
  v120 = sub_10000A0C8(&qword_1000A4538, &qword_1000781B0);
  v121 = *(v120 - 8);
  __chkstk_darwin(v120);
  v156 = &v107 - v33;
  v122 = sub_10000A0C8(&qword_1000A4540, &qword_1000781B8);
  v123 = *(v122 - 8);
  __chkstk_darwin(v122);
  v158 = &v107 - v34;
  v125 = sub_10000A0C8(&qword_1000A4548, &qword_1000781C0);
  v126 = *(v125 - 8);
  __chkstk_darwin(v125);
  v161 = &v107 - v35;
  v129 = sub_10000A0C8(&qword_1000A4550, &qword_1000781C8);
  v130 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v107 - v36;
  v174 = *a1;
  v37 = v28;
  v38 = v25;
  v39 = sub_100059EE0(&qword_1000A4558, &qword_1000A4518, &qword_100078190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v178 = *(v26 + 8);
  v178(v37, v38);
  v167 = v26 + 8;
  v179 = v159;
  v180 = v169;
  static PredicateExpressions.build_Arg<A>(_:)();
  v169 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v154 = sub_100059EE0(&qword_1000A4560, &qword_1000A4520, &qword_100078198, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v159 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v153 = sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v40 = v30;
  v108 = v30;
  v109 = v24;
  v41 = v150;
  v42 = v168;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v43 = *(v176 + 8);
  v176 += 8;
  v152 = v43;
  v43(v24, v42);
  v44 = *(v175 + 1);
  v175 += 8;
  v151 = v44;
  v44(v40, v41);
  v45 = v38;
  v173 = v39;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v46 = v110;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v47 = v37;
  v178(v37, v45);
  v179 = v149;
  v180 = v160;
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  v48 = v112;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A4568, &qword_1000A4508, &qword_100078180, v169);
  sub_100059EE0(&qword_1000A4428, &qword_1000A43D8, &qword_100078100, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100058D9C();
  v49 = v111;
  v50 = v46;
  v51 = v48;
  v52 = v115;
  v53 = v119;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v148 + 1))(v51, v53);
  (*(v116 + 8))(v50, v52);
  v160 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  v149 = sub_100059EE0(&qword_1000A4570, &qword_1000A4528, &qword_1000781A0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100059EE0(&qword_1000A4578, &qword_1000A4510, &qword_100078188, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v54 = v107;
  v55 = v155;
  v56 = v117;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v118 + 8))(v49, v56);
  v57 = *(v177 + 8);
  v177 += 8;
  v148 = v57;
  v57(v54, v55);
  v58 = v47;
  v165 = v47;
  v59 = v45;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v60 = v108;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v178(v58, v45);
  v179 = v127;
  v180 = v166;
  v61 = v109;
  static PredicateExpressions.build_Arg<A>(_:)();
  v62 = v60;
  v63 = v150;
  v64 = v168;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v152(v61, v64);
  v151(v62, v63);
  v166 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100059EE0(&qword_1000A4580, &qword_1000A4530, &qword_1000781A8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v65 = v157;
  v66 = v113;
  v67 = v155;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v148(v54, v67);
  (*(v114 + 8))(v65, v66);
  v68 = v165;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v69 = v178;
  v178(v68, v59);
  v179 = v134;
  v180 = v132;
  static PredicateExpressions.build_Arg<A>(_:)();
  v70 = v168;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v152(v61, v70);
  v151(v62, v63);
  sub_100059EE0(&qword_1000A4588, &qword_1000A4538, &qword_1000781B0, v166);
  v71 = v156;
  v72 = v120;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v148(v54, v67);
  (*(v121 + 8))(v71, v72);
  v73 = v165;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v74 = v128;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v69(v73, v59);
  LOBYTE(v179) = v135;
  v75 = v162;
  static PredicateExpressions.build_Arg<A>(_:)();
  v177 = sub_100059EE0(&qword_1000A4590, &qword_1000A44F8, &qword_100078170, v169);
  v176 = sub_100059EE0(&qword_1000A4598, &qword_1000A44F0, &qword_100078168, v159);
  v76 = v131;
  v77 = v133;
  v78 = v164;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v79 = *(v172 + 8);
  v172 += 8;
  v175 = v79;
  (v79)(v75, v78);
  v80 = *(v170 + 8);
  v170 += 8;
  v168 = v80;
  v81 = v77;
  (v80)(v74, v77);
  v82 = v166;
  sub_100059EE0(&qword_1000A45A0, &qword_1000A4540, &qword_1000781B8, v166);
  v157 = sub_100059EE0(&qword_1000A45A8, &qword_1000A4500, &qword_100078178, v160);
  v83 = v158;
  v84 = v76;
  v85 = v122;
  v86 = v163;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v87 = *(v171 + 8);
  v171 += 8;
  v156 = v87;
  (v87)(v84, v86);
  (*(v123 + 8))(v83, v85);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v178(v73, v59);
  LOBYTE(v179) = v136;
  v88 = v162;
  static PredicateExpressions.build_Arg<A>(_:)();
  v89 = v164;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (v175)(v88, v89);
  (v168)(v74, v81);
  sub_100059EE0(&qword_1000A45B0, &qword_1000A4548, &qword_1000781C0, v82);
  v90 = v124;
  v91 = v161;
  v92 = v125;
  v93 = v163;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (v156)(v84, v93);
  (*(v126 + 8))(v91, v92);
  v94 = v165;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v95 = v137;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v178(v94, v59);
  v179 = v141;
  v96 = v139;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A45B8, &qword_1000A44E0, &qword_100078158, v169);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8, v159);
  v97 = v138;
  v98 = v95;
  v99 = v96;
  v100 = v140;
  v101 = v143;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v144 + 8))(v99, v101);
  (*(v142 + 8))(v98, v100);
  v102 = sub_10000A0C8(&qword_1000A45C0, &qword_1000781D0);
  v103 = v147;
  v147[3] = v102;
  v103[4] = sub_100059440();
  sub_1000069DC(v103);
  sub_100059EE0(&qword_1000A4648, &qword_1000A4550, &qword_1000781C8, v166);
  sub_100059EE0(&qword_1000A4650, &qword_1000A44E8, &qword_100078160, v160);
  v104 = v129;
  v105 = v145;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v146 + 8))(v97, v105);
  return (*(v130 + 8))(v90, v104);
}

uint64_t sub_100052388@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v4 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10000A0C8(&qword_1000A4518, &qword_100078190);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_10000A0C8(&qword_1000A44E0, &qword_100078158);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100059EE0(&qword_1000A4558, &qword_1000A4518, &qword_100078190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v21 = v18;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_10000A0C8(&qword_1000A44E8, &qword_100078160);
  a3[4] = sub_100059BC0();
  sub_1000069DC(a3);
  sub_100059EE0(&qword_1000A45B8, &qword_1000A44E0, &qword_100078158, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v16 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000526F4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v78 = a6;
  v72 = a4;
  v73 = a5;
  v86 = a2;
  v87 = a3;
  v84 = a7;
  v85 = a1;
  v7 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  __chkstk_darwin(v7);
  v76 = v53 - v9;
  v77 = sub_10000A0C8(&qword_1000A43C8, &qword_1000780F0);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v53 - v10;
  v11 = sub_10000A0C8(&qword_1000A43D0, &qword_1000780F8);
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  __chkstk_darwin(v11);
  v75 = v53 - v13;
  v68 = sub_10000A0C8(&qword_1000A43D8, &qword_100078100);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = v53 - v14;
  v64 = sub_10000A0C8(&qword_1000A43E0, &qword_100078108);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = v53 - v15;
  v66 = sub_10000A0C8(&qword_1000A43E8, &qword_100078110);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v53 - v16;
  v57 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v18 = v53 - v17;
  v19 = sub_10000A0C8(&qword_1000A43F0, &qword_100078118);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v53 - v21;
  v55 = sub_10000A0C8(&qword_1000A43F8, &qword_100078120);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v24 = v53 - v23;
  v60 = sub_10000A0C8(&qword_1000A4400, &qword_100078128);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v54 = v53 - v25;
  v26 = sub_10000A0C8(&qword_1000A4408, &qword_100078130);
  v27 = *(v26 - 8);
  v70 = v26;
  v71 = v27;
  __chkstk_darwin(v26);
  v88 = v53 - v28;
  v85 = *v85;
  sub_100059EE0(&qword_1000A4410, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v29 = *(v20 + 8);
  v29(v22, v19);
  v53[0] = v29;
  v53[1] = v20 + 8;
  v89 = v86;
  v90 = v87;
  static PredicateExpressions.build_Arg<A>(_:)();
  v86 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100059EE0(&qword_1000A4418, &qword_1000A43F8, &qword_100078120, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v87 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v30 = v55;
  v31 = v57;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v58 + 8))(v18, v31);
  (*(v56 + 8))(v24, v30);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v32 = v59;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v29(v22, v19);
  v89 = v72;
  v90 = v73;
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  v33 = v63;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A4420, &qword_1000A43E0, &qword_100078108, v86);
  sub_100059EE0(&qword_1000A4428, &qword_1000A43D8, &qword_100078100, v87);
  sub_100058D9C();
  v34 = v62;
  v35 = v32;
  v36 = v33;
  v37 = v64;
  v38 = v68;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v69 + 8))(v36, v38);
  (*(v65 + 8))(v35, v37);
  sub_100059EE0(&qword_1000A4438, &qword_1000A4400, &qword_100078128, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100059EE0(&qword_1000A4440, &qword_1000A43E8, &qword_100078110, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v39 = v54;
  v40 = v60;
  v41 = v66;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v67 + 8))(v34, v41);
  (*(v61 + 8))(v39, v40);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v42 = v74;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (v53[0])(v22, v19);
  v89 = v78;
  v43 = v76;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A4448, &qword_1000A43C8, &qword_1000780F0, v86);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8, v87);
  v44 = v75;
  v45 = v77;
  v46 = v80;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v81 + 8))(v43, v46);
  (*(v79 + 8))(v42, v45);
  v47 = sub_10000A0C8(&qword_1000A4458, &qword_100078138);
  v48 = v84;
  v84[3] = v47;
  v48[4] = sub_100058E18();
  sub_1000069DC(v48);
  sub_100059EE0(&qword_1000A44B8, &qword_1000A4408, &qword_100078130, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100059EE0(&qword_1000A44C0, &qword_1000A43D0, &qword_1000780F8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v49 = v88;
  v50 = v70;
  v51 = v82;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v83 + 8))(v44, v51);
  return (*(v71 + 8))(v49, v50);
}

uint64_t sub_100053324@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v4 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10000A0C8(&qword_1000A43F0, &qword_100078118);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_10000A0C8(&qword_1000A43C8, &qword_1000780F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100059EE0(&qword_1000A4410, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v21 = v18;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_10000A0C8(&qword_1000A43D0, &qword_1000780F8);
  a3[4] = sub_100059234();
  sub_1000069DC(a3);
  sub_100059EE0(&qword_1000A4448, &qword_1000A43C8, &qword_1000780F0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v16 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100053690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_10000A0C8(&qword_1000A4340, &qword_1000780B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_10000A0C8(&qword_1000A4348, &qword_1000780B8);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_10000A0C8(&qword_1000A4350, &qword_1000780C0);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = __chkstk_darwin(v16);
  v37 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100059EE0(&qword_1000A4358, &qword_1000A4340, &qword_1000780B0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  static PredicateExpressions.build_Arg<A>(_:)();
  v39 = sub_100059EE0(&qword_1000A4360, &qword_1000A4348, &qword_1000780B8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v22 = v45;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v25 = v37;
  v26 = v45;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_10000A0C8(&qword_1000A4370, &qword_1000780C8);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_100058B48();
  sub_1000069DC(v28);
  sub_100059EE0(&qword_1000A43A0, &qword_1000A4350, &qword_1000780C0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v29 = v36;
  v30 = v40;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_100053C28(unsigned __int8 a1, uint64_t a2)
{
  v26[2] = *v2;
  v4 = sub_10000A0C8(&qword_1000A4320, &qword_100078088);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  if (a1 <= 3u)
  {
    v14 = 0xEC000000656E6F4ELL;
    v15 = 0x7269447373616C63;
    v16 = 0x427373616C63;
    if (a1 != 2)
    {
      v16 = 0x437373616C63;
    }

    if (a1)
    {
      v15 = 0x417373616C63;
      v14 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v16;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v8 = 0x467373616C63;
    v9 = 0xE700000000000000;
    v10 = 0x58437373616C63;
    if (a1 != 7)
    {
      v10 = 0x6365746F72506F6ELL;
      v9 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = 0x447373616C63;
    if (a1 != 4)
    {
      v11 = 0x457373616C63;
    }

    if (a1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    if (a1 <= 5u)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = v7;
    }
  }

  v17 = sub_10000A0C8(&qword_1000A4328, &qword_100078090);
  v26[1] = v26;
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v26 - v20;
  v26[0] = v26;
  __chkstk_darwin(v19);
  v26[-2] = v12;
  v26[-1] = v13;
  v26[5] = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  Predicate.init(_:)();

  v22 = sub_10000A0C8(&qword_1000A4330, &unk_100078098);
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077864);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  sub_100006ABC(&qword_1000A2B30, v23, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v24 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v18 + 8))(v21, v17);

  return v24;
}

uint64_t sub_100054040@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_10000A0C8(&qword_1000A4340, &qword_1000780B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000A0C8(&qword_1000A4348, &qword_1000780B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100059EE0(&qword_1000A4358, &qword_1000A4340, &qword_1000780B0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_10000A0C8(&qword_1000A4350, &qword_1000780C0);
  a4[4] = sub_100058BCC();
  sub_1000069DC(a4);
  sub_100059EE0(&qword_1000A4360, &qword_1000A4348, &qword_1000780B8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

void *AnalyticsStoreContext.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  v4 = DefaultSerialModelExecutor.init(modelContext:)();
  v5 = sub_100057610(&qword_1000A2330, &type metadata accessor for DefaultSerialModelExecutor, &protocol conformance descriptor for DefaultSerialModelExecutor);
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a1;
  return v2;
}

uint64_t sub_1000544E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100054518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3630;
  if (!qword_1000A3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3630);
  }

  return result;
}

uint64_t AnalyticsStoreContext.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AnalyticsStoreContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100054670@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v26 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A0C8(&qword_1000A4658, &qword_1000781D8);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_10000A0C8(&qword_1000A43F0, &qword_100078118);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_10000A0C8(&qword_1000A4660, &qword_1000781E0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  sub_100059EE0(&qword_1000A4410, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v30 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = v24;
  v18 = v26;
  (*(v24 + 104))(v4, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v26);
  v19 = sub_10000A0C8(&qword_1000A4668, &qword_1000781E8);
  v20 = v27;
  v27[3] = v19;
  v20[4] = sub_100059D20();
  sub_1000069DC(v20);
  sub_100059EE0(&qword_1000A4688, &qword_1000A4660, &qword_1000781E0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100059EE0(&qword_1000A4690, &qword_1000A4658, &qword_1000781D8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v21 = v28;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v17 + 8))(v4, v18);
  (*(v29 + 8))(v8, v21);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100054AA8(uint64_t a1, void (*a2)(_BYTE *, double))
{

  v4 = sub_10001CE0C(v3, v6);
  a2(v6, v4);
  return sub_100020F18(v6);
}

Swift::Int sub_100054B14()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100054B58(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100054BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74726F706572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100054C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100057038(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100054C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100057038(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t AnalyticsStore.ViolationDiagnostic.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000A0C8(&qword_1000A3640, &qword_100076FF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100006978(a1, a1[3]);
  sub_100057038(v8, v9, v10);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v2 + 176);
  v33 = *(v2 + 160);
  v34 = v11;
  v35 = *(v2 + 192);
  v36 = *(v2 + 208);
  v12 = *(v2 + 112);
  v29 = *(v2 + 96);
  v30 = v12;
  v13 = *(v2 + 144);
  v31 = *(v2 + 128);
  v32 = v13;
  v14 = *(v2 + 48);
  v25 = *(v2 + 32);
  v26 = v14;
  v15 = *(v2 + 80);
  v27 = *(v2 + 64);
  v28 = v15;
  v16 = *(v2 + 16);
  v23 = *v2;
  v24 = v16;
  v17 = sub_10005708C(v2, v21);
  sub_100021224(v17, v18, v19);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v21[10] = v33;
  v21[11] = v34;
  v21[12] = v35;
  v22 = v36;
  v21[6] = v29;
  v21[7] = v30;
  v21[8] = v31;
  v21[9] = v32;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v21[0] = v23;
  v21[1] = v24;
  sub_100020F18(v21);
  return (*(v5 + 8))(v7, v4);
}

void static AnalyticsStore.streamViolationDiagnostics(since:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100056A7C(a1, sub_1000570C4, v3);
}

void (*sub_100054F7C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

uint64_t sub_1000551B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100005E9C((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_100055220(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

void sub_1000552B0(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100006B04(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100005E9C((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100005E9C(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100005E9C((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1000554E4(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_10004F2B8(a1);
  return v2;
}

void (*sub_100055524(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

Swift::Int sub_1000555B8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100055694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2, a3);
  v7 = swift_allocObject();
  a5(a1);
  return v7;
}

void (*sub_1000557F8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

Swift::Int sub_1000558D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  Hasher.init(_seed:)();
  a3(0);
  sub_100006ABC(a4, 255, a5, a6);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000559D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100055A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_100006ABC(a4, 255, a5, a6);
  return PersistentModel.id.getter();
}

unint64_t _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095CD8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100055BA4()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076FB0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_1000560B0()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076FC0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_1000564B8()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076FD0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_100056668()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076FC0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

void sub_100056A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v37 = a1;
  v5 = sub_10000A0C8(&qword_1000A43A8, &qword_1000780D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnalyticsStore();
  swift_allocObject();
  AnalyticsStore.init()();
  if (!v3)
  {
    v29 = v14;
    v30 = v7;
    v34 = a2;
    v35 = 0;
    type metadata accessor for ModelContext();
    swift_allocObject();

    ModelContext.init(_:)();
    v15 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
    v31 = *(v15 - 8);
    v32 = v15;
    __chkstk_darwin(v15);
    v17 = &v28 - v16;
    sub_1000216C4(v37, v10);
    v18 = (*(v12 + 48))(v10, 1, v11);
    v33 = &v28;
    if (v18 == 1)
    {
      sub_100002CF0(v10, &qword_1000A28C0, &qword_100075130);
      v19 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
      (*(*(v19 - 8) + 56))(v30, 1, 1, v19);
      type metadata accessor for AnalyticsSchemaV1.Violation(0);
      sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
      v20 = FetchDescriptor.init(predicate:sortBy:)();
LABEL_8:
      __chkstk_darwin(v20);
      v27 = v36;
      *(&v28 - 2) = v34;
      *(&v28 - 1) = v27;
      type metadata accessor for AnalyticsSchemaV1.Violation(0);
      sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
      dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
      (*(v31 + 8))(v17, v32);

      return;
    }

    v37 = v12;
    v21 = v29;
    (*(v12 + 32))(v29, v10, v11);
    v22 = Date.timeIntervalSince1970.getter();
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -1.0)
    {
      if (v23 < 1.84467441e19)
      {
        __chkstk_darwin(v22);
        *(&v28 - 2) = v24;
        v38 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
        v25 = v30;
        Predicate.init(_:)();
        v26 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
        (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
        sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation, &unk_100077944);
        FetchDescriptor.init(predicate:sortBy:)();
        v20 = (*(v37 + 8))(v21, v11);
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

unint64_t sub_100057038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3648;
  if (!qword_1000A3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3648);
  }

  return result;
}

uint64_t sub_1000570C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 176);
  v10[10] = *(a1 + 160);
  v10[11] = v3;
  v10[12] = *(a1 + 192);
  v11 = *(a1 + 208);
  v4 = *(a1 + 112);
  v10[6] = *(a1 + 96);
  v10[7] = v4;
  v5 = *(a1 + 144);
  v10[8] = *(a1 + 128);
  v10[9] = v5;
  v6 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v6;
  v7 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v7;
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  return v2(v10);
}

uint64_t sub_1000571AC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000572A4(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100057380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsStore.ViolationDiagnostic.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalyticsStore.ViolationDiagnostic.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1000575BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4208;
  if (!qword_1000A4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4208);
  }

  return result;
}

uint64_t sub_100057610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100057788(uint64_t a1)
{
  result = sub_100006ABC(&qword_1000A4238, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask, &unk_100077768);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000577E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4240;
  if (!qword_1000A4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4240);
  }

  return result;
}

unint64_t sub_100057840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4248;
  if (!qword_1000A4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4248);
  }

  return result;
}

unint64_t sub_100057E18()
{
  result = qword_1000A42A0;
  if (!qword_1000A42A0)
  {
    sub_10000A738(&qword_1000A2818, &qword_100075050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A42A0);
  }

  return result;
}

unint64_t sub_100057E94()
{
  result = qword_1000A2810;
  if (!qword_1000A2810)
  {
    sub_10000A738(&qword_1000A2818, &qword_100075050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2810);
  }

  return result;
}

unint64_t sub_1000580C8()
{
  result = qword_1000A27C0;
  if (!qword_1000A27C0)
  {
    sub_10000A738(&qword_1000A25C0, &qword_100074D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A27C0);
  }

  return result;
}

uint64_t sub_1000585B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A738(&qword_1000A28C0, &qword_100075130);
    sub_100006ABC(a2, 255, &type metadata accessor for Date, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058678()
{
  result = qword_1000A42E0;
  if (!qword_1000A42E0)
  {
    sub_10000A738(&qword_1000A42E8, &qword_100077EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A42E0);
  }

  return result;
}

unint64_t sub_1000586F4()
{
  result = qword_1000A42F0;
  if (!qword_1000A42F0)
  {
    sub_10000A738(&qword_1000A42E8, &qword_100077EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A42F0);
  }

  return result;
}

unint64_t sub_100058ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4310;
  if (!qword_1000A4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4310);
  }

  return result;
}

unint64_t sub_100058B48()
{
  result = qword_1000A4378;
  if (!qword_1000A4378)
  {
    sub_10000A738(&qword_1000A4370, &qword_1000780C8);
    sub_100058BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4378);
  }

  return result;
}

unint64_t sub_100058BCC()
{
  result = qword_1000A4380;
  if (!qword_1000A4380)
  {
    sub_10000A738(&qword_1000A4350, &qword_1000780C0);
    sub_100058C58();
    sub_100058D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4380);
  }

  return result;
}

unint64_t sub_100058C58()
{
  result = qword_1000A4388;
  if (!qword_1000A4388)
  {
    sub_10000A738(&qword_1000A4348, &qword_1000780B8);
    sub_100059EE0(&qword_1000A4390, &qword_1000A4340, &qword_1000780B0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4388);
  }

  return result;
}

unint64_t sub_100058D08()
{
  result = qword_1000A4398;
  if (!qword_1000A4398)
  {
    sub_10000A738(&qword_1000A4338, &qword_1000780A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4398);
  }

  return result;
}

unint64_t sub_100058D9C()
{
  result = qword_1000A4430;
  if (!qword_1000A4430)
  {
    sub_10000A738(&qword_1000A25C0, &qword_100074D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4430);
  }

  return result;
}

unint64_t sub_100058E18()
{
  result = qword_1000A4460;
  if (!qword_1000A4460)
  {
    sub_10000A738(&qword_1000A4458, &qword_100078138);
    sub_100058EA4();
    sub_100059234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4460);
  }

  return result;
}

unint64_t sub_100058EA4()
{
  result = qword_1000A4468;
  if (!qword_1000A4468)
  {
    sub_10000A738(&qword_1000A4408, &qword_100078130);
    sub_100058F30();
    sub_10005906C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4468);
  }

  return result;
}

unint64_t sub_100058F30()
{
  result = qword_1000A4470;
  if (!qword_1000A4470)
  {
    sub_10000A738(&qword_1000A4400, &qword_100078128);
    sub_100058FBC();
    sub_100058D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4470);
  }

  return result;
}

unint64_t sub_100058FBC()
{
  result = qword_1000A4478;
  if (!qword_1000A4478)
  {
    sub_10000A738(&qword_1000A43F8, &qword_100078120);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4478);
  }

  return result;
}

unint64_t sub_10005906C()
{
  result = qword_1000A4488;
  if (!qword_1000A4488)
  {
    sub_10000A738(&qword_1000A43E8, &qword_100078110);
    sub_1000590F8();
    sub_1000591A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4488);
  }

  return result;
}

unint64_t sub_1000590F8()
{
  result = qword_1000A4490;
  if (!qword_1000A4490)
  {
    sub_10000A738(&qword_1000A43E0, &qword_100078108);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4490);
  }

  return result;
}

unint64_t sub_1000591A8()
{
  result = qword_1000A4498;
  if (!qword_1000A4498)
  {
    sub_10000A738(&qword_1000A43D8, &qword_100078100);
    sub_1000580C8();
    sub_100006A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4498);
  }

  return result;
}

unint64_t sub_100059234()
{
  result = qword_1000A44A0;
  if (!qword_1000A44A0)
  {
    sub_10000A738(&qword_1000A43D0, &qword_1000780F8);
    sub_1000592C0();
    sub_100059370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A44A0);
  }

  return result;
}

unint64_t sub_1000592C0()
{
  result = qword_1000A44A8;
  if (!qword_1000A44A8)
  {
    sub_10000A738(&qword_1000A43C8, &qword_1000780F0);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A44A8);
  }

  return result;
}

unint64_t sub_100059370()
{
  result = qword_1000A44B0;
  if (!qword_1000A44B0)
  {
    sub_10000A738(&qword_1000A43C0, &qword_1000780E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A44B0);
  }

  return result;
}

unint64_t sub_100059440()
{
  result = qword_1000A45C8;
  if (!qword_1000A45C8)
  {
    sub_10000A738(&qword_1000A45C0, &qword_1000781D0);
    sub_1000594CC();
    sub_100059BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45C8);
  }

  return result;
}

unint64_t sub_1000594CC()
{
  result = qword_1000A45D0;
  if (!qword_1000A45D0)
  {
    sub_10000A738(&qword_1000A4550, &qword_1000781C8);
    sub_100059558();
    sub_100059A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45D0);
  }

  return result;
}

unint64_t sub_100059558()
{
  result = qword_1000A45D8;
  if (!qword_1000A45D8)
  {
    sub_10000A738(&qword_1000A4548, &qword_1000781C0);
    sub_1000595E4();
    sub_100059A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45D8);
  }

  return result;
}

unint64_t sub_1000595E4()
{
  result = qword_1000A45E0;
  if (!qword_1000A45E0)
  {
    sub_10000A738(&qword_1000A4540, &qword_1000781B8);
    sub_100059670();
    sub_100059788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45E0);
  }

  return result;
}

unint64_t sub_100059670()
{
  result = qword_1000A45E8;
  if (!qword_1000A45E8)
  {
    sub_10000A738(&qword_1000A4538, &qword_1000781B0);
    sub_1000596FC();
    sub_100059788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45E8);
  }

  return result;
}

unint64_t sub_1000596FC()
{
  result = qword_1000A45F0;
  if (!qword_1000A45F0)
  {
    sub_10000A738(&qword_1000A4530, &qword_1000781A8);
    sub_100059788();
    sub_1000598C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45F0);
  }

  return result;
}

unint64_t sub_100059788()
{
  result = qword_1000A45F8;
  if (!qword_1000A45F8)
  {
    sub_10000A738(&qword_1000A4528, &qword_1000781A0);
    sub_100059814();
    sub_100058D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45F8);
  }

  return result;
}

unint64_t sub_100059814()
{
  result = qword_1000A4600;
  if (!qword_1000A4600)
  {
    sub_10000A738(&qword_1000A4520, &qword_100078198);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4600);
  }

  return result;
}

unint64_t sub_1000598C4()
{
  result = qword_1000A4610;
  if (!qword_1000A4610)
  {
    sub_10000A738(&qword_1000A4510, &qword_100078188);
    sub_100059950();
    sub_1000591A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4610);
  }

  return result;
}

unint64_t sub_100059950()
{
  result = qword_1000A4618;
  if (!qword_1000A4618)
  {
    sub_10000A738(&qword_1000A4508, &qword_100078180);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4618);
  }

  return result;
}

unint64_t sub_100059A00()
{
  result = qword_1000A4620;
  if (!qword_1000A4620)
  {
    sub_10000A738(&qword_1000A4500, &qword_100078178);
    sub_100059A8C();
    sub_100059B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4620);
  }

  return result;
}

unint64_t sub_100059A8C()
{
  result = qword_1000A4628;
  if (!qword_1000A4628)
  {
    sub_10000A738(&qword_1000A44F8, &qword_100078170);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4628);
  }

  return result;
}

unint64_t sub_100059B3C()
{
  result = qword_1000A4630;
  if (!qword_1000A4630)
  {
    sub_10000A738(&qword_1000A44F0, &qword_100078168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4630);
  }

  return result;
}

unint64_t sub_100059BC0()
{
  result = qword_1000A4638;
  if (!qword_1000A4638)
  {
    sub_10000A738(&qword_1000A44E8, &qword_100078160);
    sub_100059C4C();
    sub_100059370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4638);
  }

  return result;
}

unint64_t sub_100059C4C()
{
  result = qword_1000A4640;
  if (!qword_1000A4640)
  {
    sub_10000A738(&qword_1000A44E0, &qword_100078158);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4640);
  }

  return result;
}

unint64_t sub_100059D20()
{
  result = qword_1000A4670;
  if (!qword_1000A4670)
  {
    sub_10000A738(&qword_1000A4668, &qword_1000781E8);
    sub_100059DAC();
    sub_100059E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4670);
  }

  return result;
}

unint64_t sub_100059DAC()
{
  result = qword_1000A4678;
  if (!qword_1000A4678)
  {
    sub_10000A738(&qword_1000A4660, &qword_1000781E0);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4678);
  }

  return result;
}

unint64_t sub_100059E5C()
{
  result = qword_1000A4680;
  if (!qword_1000A4680)
  {
    sub_10000A738(&qword_1000A4658, &qword_1000781D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4680);
  }

  return result;
}

uint64_t sub_100059EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A738(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100059F90(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) <= 1u)
  {
  }

  if (a4 >> 6 == 2)
  {
    return sub_100058B30(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_100059FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10005A038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

char *sub_10005A0D4@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if ((a2 + 0x4000000000000000) < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_1000057A8(0, (2 * a2) & ~((2 * a2) >> 63), 0, _swiftEmptyArrayStorage);
    *a3 = v5;
    a3[1] = a2;
    a3[2] = result;
  }

  return result;
}

char *sub_10005A138(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000057A8(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    result = sub_1000057A8((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[32 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v2;
  *(v8 + 6) = 0;
  v8[56] = 0;
  *(v1 + 16) = v4;
  return result;
}

__n128 sub_10005A1F4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = 1;
  return result;
}

Swift::Int sub_10005A210()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);

    v5 = sub_100005A2C(0, v1, v4, v3);
    sub_100005C50(v1, v2, v3, 1);
    return v5;
  }

  else
  {
  }

  return v1;
}

unint64_t sub_10005A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46B0;
  if (!qword_1000A46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46B0);
  }

  return result;
}

unint64_t sub_10005A304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46B8;
  if (!qword_1000A46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46B8);
  }

  return result;
}

unint64_t sub_10005A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10005A380(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005A380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46C0;
  if (!qword_1000A46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46C0);
  }

  return result;
}

unint64_t sub_10005A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46C8;
  if (!qword_1000A46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46C8);
  }

  return result;
}

unint64_t sub_10005A430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46D0;
  if (!qword_1000A46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46D0);
  }

  return result;
}

uint64_t sub_10005A484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10005A4CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_10005A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46D8;
  if (!qword_1000A46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46D8);
  }

  return result;
}

void *sub_10005A5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = ProtectionClass.code.getter(a3);
      v6 = v8;
      return set_protection_class(v6, v5);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = ProtectionClass.code.getter(a3);
      v6 = (v4 + 32);
      return set_protection_class(v6, v5);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v9;
  }

  return result;
}

void *sub_10005A65C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = 0;
      protection_class = get_protection_class(v7, &v6);
      v4 = v6;
      return __PAIR64__(protection_class, v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      LODWORD(v7[0]) = 0;
      protection_class = get_protection_class(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v7);
      v4 = v7[0];
      return __PAIR64__(protection_class, v4);
    }
  }

  sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v8;
  }

  return result;
}

void *sub_10005A768@<X0>(char *path@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    *name = a2;
    v7 = a3 & 0xFFFFFFFFFFFFFFLL;
    v4 = name;
    return sub_10001169C(v4, path, a4);
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_10000A0C8(&qword_1000A46E8, &unk_100078750);
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v4 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_10001169C(v4, path, a4);
}

uint64_t sub_10005A824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *path = a1;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = path;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_10000A0C8(&qword_1000A46E8, &unk_100078750);
    _StringGuts._slowWithCString<A>(_:)();
  }

  v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_10005A768(v6, a3, a4, a5);
}

uint64_t sub_10005A904()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B1A00);
  sub_100002DB8(v0, qword_1000B1A00);
  return Logger.init(subsystem:category:)();
}

uint64_t ProtectionClassJanitor.init(domainIndex:client:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100006B04(a1, a3);
  *(a3 + 40) = a2;
  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopySigningIdentifier(v6, 0);
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        goto LABEL_8;
      }
    }

    else
    {
      v9 = v7;
    }
  }

LABEL_8:
  result = sub_100005E9C(a1);
  *(a3 + 48) = 0xD000000000000018;
  *(a3 + 56) = 0x8000000100082A30;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtectionClassJanitor.sweep(base:)(Swift::String base)
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);

  URL.init(filePath:directoryHint:relativeTo:)();
  ProtectionClassJanitor.sweep(base:)(v11);
  (*(v9 + 8))(v11, v8);
}

void ProtectionClassJanitor.sweep(base:)(uint64_t a1)
{
  sub_10006DCE4(v9);
  if (!v1)
  {
    if (v9[0])
    {
      countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
      v3 = __chkstk_darwin(countAndFlagsBits);
      sub_10002FE64(v3, v4, sub_10005C500);
    }

    else
    {
      if (qword_1000A21C0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100002DB8(v5, qword_1000B1A00);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "skipping sweep since device is before first unlock", v8, 2u);
      }
    }
  }
}

uint64_t sub_10005ADEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v17[0] = a1;
  v17[1] = a4;
  v5 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    (*(v9 + 104))(v11, enum case for URL.DirectoryHint.notDirectory(_:), v8);
    (*(v13 + 56))(v7, 1, 1, v12);

    URL.init(filePath:directoryHint:relativeTo:)();
    sub_10005B010();
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_10005B010()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100038FFC();
  if ((result & 1) == 0)
  {
    v142 = v7;
    v144 = v4;
    v145 = v2;
    v146 = v1;
    v13 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v13._countAndFlagsBits;
    v15 = v0[3];
    v14 = v0[4];
    v143 = v0;
    sub_100006978(v0, v15);
    sub_10005DE38(v11);
    v16 = URL.path(percentEncoded:)(0);
    (*(v9 + 8))(v11, v8);
    (*(v14 + 8))(&v170, v16._countAndFlagsBits, v16._object, v15, v14);

    if (!*(&v171 + 1))
    {

      return sub_100002CF0(&v170, &qword_1000A25B8, &unk_100074610);
    }

    v17 = v153;
    v168[1] = v171;
    v168[2] = v172;
    v168[3] = v173;
    v169 = v174;
    v168[0] = v170;
    sub_100006B04(v168, v165);
    v18 = v166;
    v19 = v167;
    sub_100006978(v165, v166);
    if (((*(v19 + 16))(v18, v19) & 1) == 0)
    {
      goto LABEL_32;
    }

    v20 = v166;
    v21 = v167;
    sub_100006978(v165, v166);
    object = v13._object;
    if ((*(v21 + 32))(v20, v21))
    {

      if (qword_1000A21C0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002DB8(v23, qword_1000B1A00);
      sub_100006B04(v165, &v170);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v153[0] = v27;
        *v26 = 136315138;
        v28 = *(&v171 + 1);
        v29 = v172;
        sub_100006978(&v170, *(&v171 + 1));
        v30 = (*(v29 + 8))(v28, v29);
        v32 = v31;
        sub_100005E9C(&v170);
        v33 = sub_100005C68(v30, v32, v153);

        *(v26 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v24, v25, "skipping domain %s since it has process exceptions", v26, 0xCu);
        sub_100005E9C(v27);

LABEL_9:

LABEL_28:
        sub_10001139C(v168);
        return sub_100005E9C(v165);
      }

      sub_10001139C(v168);
      v40 = &v170;
LABEL_16:
      sub_100005E9C(v40);
      return sub_100005E9C(v165);
    }

    v34 = objc_opt_self();

    v35 = sub_10005A65C(countAndFlagsBits, v13._object);
    if (HIDWORD(v35))
    {
      v41 = errno.getter();
      v39 = v41;
      LODWORD(v170) = v41;
      sub_100033644(v41, v42, v43);
      swift_willThrowTypedImpl();
      if (v39 == 2)
      {
        if (qword_1000A21C0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_100002DB8(v44, qword_1000B1A00);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v170 = v48;
          *v47 = 136315138;
          v49 = sub_100005C68(countAndFlagsBits, v13._object, &v170);

          *(v47 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v45, v46, "skipping repair of %s since it no longer exists", v47, 0xCu);
          sub_100005E9C(v48);

LABEL_26:

          goto LABEL_28;
        }

LABEL_27:

        goto LABEL_28;
      }

LABEL_22:
      if (qword_1000A21C0 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100002DB8(v50, qword_1000B1A00);

      v45 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v170 = v54;
        *v52 = 136315394;
        v55 = sub_100005C68(countAndFlagsBits, v13._object, &v170);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2112;
        sub_100033644(v56, v57, v58);
        swift_allocError();
        *v59 = v39;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 14) = v60;
        *v53 = v60;
        _os_log_impl(&_mh_execute_header, v45, v51, "failed to get protection class for %s: %@", v52, 0x16u);
        sub_100002CF0(v53, &qword_1000A4EC0, &qword_100076C00);

        sub_100005E9C(v54);

        goto LABEL_26;
      }

      goto LABEL_27;
    }

    LOBYTE(v36) = ProtectionClass.init(value:)(v35);
    if (v36 == 9)
    {
      v39 = 34;
      LODWORD(v170) = 34;
      sub_100033644(v36, v37, v38);
      swift_willThrowTypedImpl();
      goto LABEL_22;
    }

    v61 = v36;
    v62 = v166;
    v63 = v167;
    sub_100006978(v165, v166);
    v64 = (*(v63 + 24))(v62, v63);
    if (ProtectionClass.allowed(forMinimumProtection:)(v64))
    {
LABEL_32:
      sub_10001139C(v168);

      return sub_100005E9C(v165);
    }

    sub_10005A824(countAndFlagsBits, v13._object, 0xD000000000000034, 0x8000000100083890, &v170);
    v65 = *(&v170 + 1);
    if (*(&v170 + 1) >> 60 == 15)
    {
      v141 = 0;
      v142 = v34;
      if (*(v143 + 40))
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      v140 = v66;
      v67 = v143[7];
      v139 = v143[6];
      v68 = v166;
      v69 = v167;
      sub_100006978(v165, v166);
      v70 = *(v69 + 24);

      v71 = v70(v68, v69);
      v72 = v166;
      v73 = v167;
      sub_100006978(v165, v166);
      object = (*(v73 + 24))(v72, v73);
      v65 = v144;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v75 = v74;
      v76 = v74;
      (*(v145 + 8))(v65, v146);
      if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v75 <= -1.0)
        {
          __break(1u);
        }

        else if (v75 < 1.84467441e19)
        {
          *&v170 = v139;
          *(&v170 + 1) = v67;
          *&v171 = countAndFlagsBits;
          *(&v171 + 1) = v13._object;
          v172 = 0uLL;
          *(&v174 + 1) = v148;
          DWORD1(v174) = *(&v148 + 3);
          LOBYTE(v173) = 1;
          BYTE1(v173) = v61;
          BYTE2(v173) = v71;
          BYTE3(v173) = object;
          WORD2(v173) = 1;
          BYTE6(v173) = 1;
          *(&v173 + 1) = v75;
          LOBYTE(v174) = v140;
          *(&v174 + 1) = 0;
          v175 = 0;
          v153[0] = v139;
          v153[1] = v67;
          v153[2] = countAndFlagsBits;
          v153[3] = v13._object;
          v153[4] = 0;
          v153[5] = 0;
          v154 = 1;
          v155 = v61;
          v156 = v71;
          v157 = object;
          v158 = 1;
          v159 = 1;
          v160 = v75;
          v161 = v140;
          *&v162[3] = *(&v148 + 3);
          *v162 = v148;
          v163 = 0;
          v164 = 0;
          sub_10000626C(&v170, v149);
          sub_100005BFC(v153);
          if (qword_1000A21C0 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_105;
        }

        __break(1u);
LABEL_105:
        swift_once();
LABEL_41:
        v77 = type metadata accessor for Logger();
        v78 = sub_100002DB8(v77, qword_1000B1A00);
        sub_10000626C(&v170, v149);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        sub_100005BFC(&v170);
        if (os_log_type_enabled(v79, v80))
        {
          v146 = v78;
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v148 = v82;
          *v81 = 136315138;
          sub_10000626C(&v170, v149);
          v85 = sub_100003644();
          v86 = v83;
          if (v87)
          {
            v88 = v84;
            v89 = sub_100005A2C(0, v85, v83, v84);
            v145 = v90;
            sub_100005BFC(&v170);
            sub_100005C50(v85, v86, v88, 1);
            v85 = v89;
            v86 = v145;
          }

          else
          {
            sub_100005BFC(&v170);
          }

          v105 = sub_100005C68(v85, v86, &v148);

          *(v81 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v79, v80, "VIOLATION %s", v81, 0xCu);
          sub_100005E9C(v82);

          v103 = v13._object;
          v104 = v142;
        }

        else
        {

          v103 = v13._object;
          v104 = v142;
        }

        v106 = String._bridgeToObjectiveC()();
        v107 = swift_allocObject();
        v108 = v173;
        *(v107 + 48) = v172;
        *(v107 + 64) = v108;
        *(v107 + 80) = v174;
        *(v107 + 96) = v175;
        v109 = v171;
        *(v107 + 16) = v170;
        *(v107 + 32) = v109;
        v151 = sub_1000067F8;
        v152 = v107;
        v149[0] = _NSConcreteStackBlock;
        v149[1] = 1107296256;
        v149[2] = sub_1000065D0;
        v150 = &unk_1000984C0;
        v110 = _Block_copy(v149);

        AnalyticsSendEventLazy();
        _Block_release(v110);

        v111 = v166;
        v112 = v167;
        sub_100006978(v165, v166);
        v113 = (*(v112 + 24))(v111, v112);
        if (!sub_10005A5A4(countAndFlagsBits, v103, v113))
        {
          goto LABEL_32;
        }

        v114 = errno.getter();
        v115 = v114;
        LODWORD(v149[0]) = v114;
        sub_100033644(v114, v116, v117);
        swift_willThrowTypedImpl();
        if (v115 == 2)
        {
          sub_100006B04(v165, v149);

          v24 = Logger.logObject.getter();
          v118 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v24, v118))
          {
            v119 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            *v119 = 136315394;
            v120 = sub_100005C68(countAndFlagsBits, v103, &v148);

            *(v119 + 4) = v120;
            *(v119 + 12) = 2080;
            v121 = v150;
            v122 = v151;
            sub_100006978(v149, v150);
            v123 = (*(v122 + 3))(v121, v122);
            if (v123 <= 3)
            {
              if (v123 > 1)
              {
                v124 = 0xE600000000000000;
                if (v123 == 2)
                {
                  v125 = 0x427373616C63;
                }

                else
                {
                  v125 = 0x437373616C63;
                }
              }

              else if (v123)
              {
                v124 = 0xE600000000000000;
                v125 = 0x417373616C63;
              }

              else
              {
                v125 = 0x7269447373616C63;
                v124 = 0xEC000000656E6F4ELL;
              }
            }

            else if (v123 <= 5)
            {
              v124 = 0xE600000000000000;
              if (v123 == 4)
              {
                v125 = 0x447373616C63;
              }

              else
              {
                v125 = 0x457373616C63;
              }
            }

            else if (v123 == 6)
            {
              v124 = 0xE600000000000000;
              v125 = 0x467373616C63;
            }

            else if (v123 == 7)
            {
              v124 = 0xE700000000000000;
              v125 = 0x58437373616C63;
            }

            else
            {
              v125 = 0x6365746F72506F6ELL;
              v124 = 0xEC0000006E6F6974;
            }

            sub_100005E9C(v149);
            v135 = sub_100005C68(v125, v124, &v148);

            *(v119 + 14) = v135;
            _os_log_impl(&_mh_execute_header, v24, v118, "setProtectionClass(for: %s, to: %s) skipped: file no longer exists", v119, 0x16u);
            swift_arrayDestroy();

            goto LABEL_9;
          }

          goto LABEL_73;
        }

        sub_100006B04(v165, v149);

        v24 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v24, v126))
        {
LABEL_73:

          sub_10001139C(v168);
          v40 = v149;
          goto LABEL_16;
        }

        v127 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *v127 = 136315650;
        v128 = sub_100005C68(countAndFlagsBits, v103, &v148);

        *(v127 + 4) = v128;
        *(v127 + 12) = 2082;
        v129 = v150;
        v130 = v151;
        sub_100006978(v149, v150);
        v131 = (*(v130 + 3))(v129, v130);
        if (v131 <= 3)
        {
          if (v131 > 1)
          {
            v133 = 0xE600000000000000;
            if (v131 == 2)
            {
              v134 = 0x427373616C63;
            }

            else
            {
              v134 = 0x437373616C63;
            }
          }

          else if (v131)
          {
            v133 = 0xE600000000000000;
            v134 = 0x417373616C63;
          }

          else
          {
            v134 = 0x7269447373616C63;
            v133 = 0xEC000000656E6F4ELL;
          }
        }

        else if (v131 <= 5)
        {
          v133 = 0xE600000000000000;
          if (v131 == 4)
          {
            v134 = 0x447373616C63;
          }

          else
          {
            v134 = 0x457373616C63;
          }
        }

        else
        {
          if (v131 != 6)
          {
            v132 = v146;
            if (v131 == 7)
            {
              v133 = 0xE700000000000000;
              v134 = 0x58437373616C63;
            }

            else
            {
              v134 = 0x6365746F72506F6ELL;
              v133 = 0xEC0000006E6F6974;
            }

            goto LABEL_100;
          }

          v133 = 0xE600000000000000;
          v134 = 0x467373616C63;
        }

        v132 = v146;
LABEL_100:
        sub_100005E9C(v149);
        v136 = sub_100005C68(v134, v133, &v148);

        *(v127 + 14) = v136;
        *(v127 + 22) = 2112;
        swift_allocError();
        *v137 = v115;
        v138 = _swift_stdlib_bridgeErrorToNSError();
        *(v127 + 24) = v138;
        *v132 = v138;
        _os_log_impl(&_mh_execute_header, v24, v126, "failed to repair %s to %{public}s: %@", v127, 0x20u);
        sub_100002CF0(v132, &qword_1000A4EC0, &qword_100076C00);

        swift_arrayDestroy();

        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      v61 = v170;
      static String.Encoding.utf8.getter();
      v91 = String.init(data:encoding:)();
      if (v92)
      {
        v67 = v91;
      }

      else
      {
        v67 = 0x6E776F6E6B6E753CLL;
      }

      if (v92)
      {
        v17 = v92;
      }

      else
      {
        v17 = 0xE90000000000003ELL;
      }

      if (qword_1000A21C0 == -1)
      {
        goto LABEL_51;
      }
    }

    swift_once();
LABEL_51:
    v93 = type metadata accessor for Logger();
    sub_100002DB8(v93, qword_1000B1A00);

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = object;
      v97 = swift_slowAlloc();
      *&v170 = swift_slowAlloc();
      *v97 = 136315394;
      v98 = sub_100005C68(countAndFlagsBits, v96, &v170);
      countAndFlagsBits = v65;
      v99 = v98;

      *(v97 + 4) = v99;
      *(v97 + 12) = 2082;
      v100 = sub_100005C68(v67, v17, &v170);

      *(v97 + 14) = v100;
      _os_log_impl(&_mh_execute_header, v94, v95, "file at %s has exception xattr from: %{public}s", v97, 0x16u);
      swift_arrayDestroy();

      v101 = v61;
      v102 = countAndFlagsBits;
    }

    else
    {

      v101 = v61;
      v102 = v65;
    }

    sub_10003FDF8(v101, v102);

    goto LABEL_28;
  }

  return result;
}

Swift::Int ProtectionClassJanitor.Client.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10005C520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A46E0;
  if (!qword_1000A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46E0);
  }

  return result;
}

__n128 sub_10005C574(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005C588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C5D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10005C694()
{
  sub_10005D9AC(&v1);
  xmmword_1000B1A38 = v3;
  *&qword_1000B1A48 = v4;
  qword_1000B1A58 = v5;
  result = *&v2;
  xmmword_1000B1A18 = v1;
  *&qword_1000B1A28 = v2;
  return result;
}

void sub_10005C6E0(uint64_t a3@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = MGCopyAnswerWithError();

  if (v5)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v5;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_10005C8EC(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10005C9E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DDEC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10005CA18@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = *v1;
  v4 = "untDirectory";
  v5 = "ritance_enforcement";
  v6 = 0xD000000000000025;
  if (v3 != 5)
  {
    v6 = 0xD00000000000001ELL;
    v5 = "rce_disabled_policies";
  }

  v7 = "dataprotect_policy_logging";
  v8 = 0xD00000000000001CLL;
  result = 0xD000000000000023;
  if (v3 != 3)
  {
    v8 = 0xD000000000000023;
    v7 = "dataprotect_policy_analytics";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "dataprotect_policy_enable";
  if (v3 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v10 = "dataprotect_policy_enforcement";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_10005CAF0(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_100061C68(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (v9 == 1)
        {
          v12 = 0xD00000000000001ELL;
        }

        else
        {
          v12 = 0xD00000000000001ALL;
        }

        v13 = "dataprotect_policy_enable";
        if (v9 != 1)
        {
          v13 = "dataprotect_policy_enforcement";
        }

        v14 = v9 == 0;
        v11 = "untDirectory";
        if (v14)
        {
          v10 = 0xD000000000000019;
        }

        else
        {
          v10 = v12;
        }

        if (!v14)
        {
          v11 = v13;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v10 = 0xD000000000000025;
          v11 = "ritance_enforcement";
        }

        else
        {
          v10 = 0xD00000000000001ELL;
          v11 = "rce_disabled_policies";
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xD00000000000001CLL;
        v11 = "dataprotect_policy_logging";
      }

      else
      {
        v10 = 0xD000000000000023;
        v11 = "dataprotect_policy_analytics";
      }

      if (v3 <= 2u)
      {
        if (v3 == 1)
        {
          v21 = 0xD00000000000001ELL;
        }

        else
        {
          v21 = 0xD00000000000001ALL;
        }

        v22 = "dataprotect_policy_enable";
        if (v3 != 1)
        {
          v22 = "dataprotect_policy_enforcement";
        }

        if (v3)
        {
          v19 = v21;
        }

        else
        {
          v19 = 0xD000000000000019;
        }

        v20 = "untDirectory";
        if (v3)
        {
          v20 = v22;
        }
      }

      else
      {
        v15 = 0xD000000000000025;
        if (v3 != 5)
        {
          v15 = 0xD00000000000001ELL;
        }

        v16 = "ritance_enforcement";
        if (v3 != 5)
        {
          v16 = "rce_disabled_policies";
        }

        v17 = 0xD00000000000001CLL;
        if (v3 != 3)
        {
          v17 = 0xD000000000000023;
        }

        v18 = "dataprotect_policy_logging";
        if (v3 != 3)
        {
          v18 = "dataprotect_policy_analytics";
        }

        v19 = v3 <= 4u ? v17 : v15;
        v20 = v3 <= 4u ? v18 : v16;
      }

      if (v10 == v19 && (v11 | 0x8000000000000000) == (v20 | 0x8000000000000000))
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_53;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_51:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v26;
    sub_10005D0BC(v3, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v28;
    result = 1;
  }

  *a1 = v3;
  return result;
}

Swift::Int sub_10005CD88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A0C8(&qword_1000A46F8, &qword_100078768);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10005D0BC(uint64_t result, unint64_t a2, char a3)
{
  v30 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_57;
  }

  if (a3)
  {
    sub_10005CD88(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10005D3A4();
      goto LABEL_57;
    }

    sub_10005D4E4(v5 + 1);
  }

  v7 = *v3;
  result = sub_100061C68(*(*v3 + 40), v30);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 2)
      {
        if (v10 == 1)
        {
          v13 = 0xD00000000000001ELL;
        }

        else
        {
          v13 = 0xD00000000000001ALL;
        }

        v14 = "dataprotect_policy_enable";
        if (v10 != 1)
        {
          v14 = "dataprotect_policy_enforcement";
        }

        v15 = v10 == 0;
        v12 = "untDirectory";
        if (v15)
        {
          v11 = 0xD000000000000019;
        }

        else
        {
          v11 = v13;
        }

        if (!v15)
        {
          v12 = v14;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v10 == 5)
        {
          v11 = 0xD000000000000025;
          v12 = "ritance_enforcement";
        }

        else
        {
          v11 = 0xD00000000000001ELL;
          v12 = "rce_disabled_policies";
        }
      }

      else if (v10 == 3)
      {
        v11 = 0xD00000000000001CLL;
        v12 = "dataprotect_policy_logging";
      }

      else
      {
        v11 = 0xD000000000000023;
        v12 = "dataprotect_policy_analytics";
      }

      if (v30 <= 2u)
      {
        if (v30 == 1)
        {
          v22 = 0xD00000000000001ELL;
        }

        else
        {
          v22 = 0xD00000000000001ALL;
        }

        v23 = "dataprotect_policy_enable";
        if (v30 != 1)
        {
          v23 = "dataprotect_policy_enforcement";
        }

        if (v30)
        {
          v20 = v22;
        }

        else
        {
          v20 = 0xD000000000000019;
        }

        v21 = "untDirectory";
        if (v30)
        {
          v21 = v23;
        }
      }

      else
      {
        v16 = 0xD000000000000025;
        if (v30 != 5)
        {
          v16 = 0xD00000000000001ELL;
        }

        v17 = "ritance_enforcement";
        if (v30 != 5)
        {
          v17 = "rce_disabled_policies";
        }

        v18 = 0xD000000000000023;
        v19 = "dataprotect_policy_logging";
        if (v30 == 3)
        {
          v18 = 0xD00000000000001CLL;
        }

        else
        {
          v19 = "dataprotect_policy_analytics";
        }

        v20 = v30 <= 4u ? v18 : v16;
        v21 = v30 <= 4u ? v19 : v17;
      }

      if (v11 == v20 && (v12 | 0x8000000000000000) == (v21 | 0x8000000000000000))
      {
        goto LABEL_60;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_61;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_57:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v30;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_60:

LABEL_61:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}