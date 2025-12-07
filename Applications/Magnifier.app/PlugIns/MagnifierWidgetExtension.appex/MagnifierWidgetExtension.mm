uint64_t sub_100001578@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_100002190();
  v22 = *(v25 - 8);
  __chkstk_darwin();
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001BE0(&qword_1000081C0, &qword_1000024C0);
  v20 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = sub_100001BE0(&qword_1000081C8, &qword_1000024C8);
  v21 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = sub_100001BE0(&qword_1000081D0, &qword_1000024D0);
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  __chkstk_darwin();
  v12 = &v19 - v11;
  sub_100001BE0(&qword_1000081D8, &qword_1000024D8);
  sub_100001C78(&qword_1000081E0, &qword_1000081D8, &qword_1000024D8, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_100002240();
  sub_100002180();
  v13 = sub_100001C78(&qword_1000081E8, &qword_1000081C0, &qword_1000024C0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100002200();
  v14 = *(v22 + 8);
  v15 = v25;
  v14(v2, v25);
  (*(v20 + 8))(v5, v3);
  sub_100002180();
  v27 = v3;
  v28 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000021F0();
  v14(v2, v15);
  (*(v21 + 8))(v8, v6);
  v27 = v6;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v23;
  sub_100002210();
  return (*(v24 + 8))(v12, v17);
}

uint64_t sub_1000019D0()
{
  sub_1000021B0();
  __chkstk_darwin();
  sub_1000021A0();
  sub_100001BE0(&qword_1000081F0, &unk_1000024E0);
  sub_100001C78(&qword_1000081F8, &qword_1000081F0, &unk_1000024E0, &protocol conformance descriptor for Label<A, B>);
  sub_100001CC0();
  return sub_100002230();
}

uint64_t sub_100001ADC()
{
  type metadata accessor for MagnifierWidgetReferenceClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4._countAndFlagsBits = 0x8000000100002370;
  v5._countAndFlagsBits = 0x545F544547444957;
  v5._object = 0xEC000000454C5449;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v2.super.isa = v1;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_100002170(v5, v6, v2, v7, 0xD00000000000001ALL, v4);

  sub_100001D18();
  return sub_100002220();
}

uint64_t sub_100001BE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001C2C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100001CC0()
{
  result = qword_100008200;
  if (!qword_100008200)
  {
    sub_1000021B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008200);
  }

  return result;
}

unint64_t sub_100001D18()
{
  result = qword_100008208;
  if (!qword_100008208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008208);
  }

  return result;
}

uint64_t sub_100001D6C()
{
  sub_100001C2C(&qword_1000081D0, &qword_1000024D0);
  sub_100001C2C(&qword_1000081C8, &qword_1000024C8);
  sub_100001C2C(&qword_1000081C0, &qword_1000024C0);
  sub_100001C78(&qword_1000081E8, &qword_1000081C0, &qword_1000024C0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100001E84()
{
  v0 = sub_100001BE0(&qword_100008218, qword_100002548);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_100002030();
  sub_1000021E0();
  sub_100002084();
  sub_1000021D0();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001FB0();
  sub_1000021C0();
  return 0;
}

unint64_t sub_100001FB0()
{
  result = qword_100008210;
  if (!qword_100008210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008210);
  }

  return result;
}

unint64_t sub_100002030()
{
  result = qword_100008220;
  if (!qword_100008220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008220);
  }

  return result;
}

unint64_t sub_100002084()
{
  result = qword_100008228;
  if (!qword_100008228)
  {
    sub_100001C2C(&qword_100008218, qword_100002548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008228);
  }

  return result;
}

uint64_t sub_1000020E8()
{
  sub_100001C2C(&qword_100008218, qword_100002548);
  sub_100002084();
  return swift_getOpaqueTypeConformance2();
}