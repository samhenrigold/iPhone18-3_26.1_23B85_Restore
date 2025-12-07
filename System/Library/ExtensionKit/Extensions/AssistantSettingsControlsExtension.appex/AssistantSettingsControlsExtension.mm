unint64_t sub_100001744()
{
  result = qword_10008C740;
  if (!qword_10008C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C740);
  }

  return result;
}

uint64_t type metadata accessor for AssistantLockScreenAccessEntity(uint64_t a1)
{
  result = qword_10008C868;
  if (!qword_10008C868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001818()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F088);
  sub_100003B1C(v0, qword_10008F088);
  return sub_1000651B0();
}

uint64_t sub_1000018C4(uint64_t a1)
{
  v2 = type metadata accessor for AssistantLockScreenAccessEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100003C50(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_100003D5C(a1);
}

uint64_t (*sub_100001954(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000019C8;
}

void sub_1000019C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001A14()
{
  result = qword_10008C750;
  if (!qword_10008C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C750);
  }

  return result;
}

uint64_t sub_100001A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CB4();
  v5 = sub_100003BB8(&qword_10008C8C0, &unk_10007085C);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100001AF4()
{
  result = qword_10008C758;
  if (!qword_10008C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C758);
  }

  return result;
}

unint64_t sub_100001B4C()
{
  result = qword_10008C760;
  if (!qword_10008C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C760);
  }

  return result;
}

unint64_t sub_100001BA4()
{
  result = qword_10008C768;
  if (!qword_10008C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C768);
  }

  return result;
}

uint64_t sub_100001CA0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100003CB4();
  v6 = sub_100003D08();
  v7 = sub_100003BB8(&qword_10008C8C0, &unk_10007085C);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100001D88()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100001E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003738();
  *a1 = result;
  return result;
}

uint64_t sub_100001EB8(uint64_t a1)
{
  v2 = sub_100001A14();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100001EF8()
{
  result = qword_10008C770;
  if (!qword_10008C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C770);
  }

  return result;
}

uint64_t sub_100001F80()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F0A0);
  sub_100003B1C(v10, qword_10008F0A0);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_100002270()
{
  v0 = type metadata accessor for AssistantLockScreenAccessEntity(0);
  sub_100003B54(v0, qword_10008F0B8);
  v1 = sub_100003B1C(v0, qword_10008F0B8);
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(13, v1);
}

id sub_1000022E4()
{
  result = [objc_opt_self() sharedController];
  qword_10008F0D0 = result;
  return result;
}

uint64_t sub_100002320(uint64_t a1)
{
  if ([*v1 assistantIsEnabled])
  {
    if (qword_10008C2D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for AssistantLockScreenAccessEntity(0);
    v5 = sub_100003B1C(v4, qword_10008F0B8);
    sub_100003C50(v5, a1);
    v6 = *(v2 + 8);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
    v6 = *(v2 + 8);
  }

  return v6();
}

unint64_t sub_10000243C()
{
  result = qword_10008C780;
  if (!qword_10008C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C780);
  }

  return result;
}

uint64_t sub_100002490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100002E80();
  *v4 = v2;
  v4[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100002540(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100002658()
{
  result = qword_10008C788;
  if (!qword_10008C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C788);
  }

  return result;
}

unint64_t sub_1000026B0()
{
  result = qword_10008C790;
  if (!qword_10008C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C790);
  }

  return result;
}

id sub_100002738@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedController];
  *a1 = result;
  return result;
}

uint64_t sub_10000277C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002E80();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100002830(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100002E80();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_1000028E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000029A0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000029A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100002AA4()
{
  result = qword_10008C7A0;
  if (!qword_10008C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C7A0);
  }

  return result;
}

unint64_t sub_100002B30()
{
  result = qword_10008C7B0;
  if (!qword_10008C7B0)
  {
    sub_100002BD0(&qword_10008C7B8, qword_100070770);
    sub_100003BB8(&qword_10008C7A8, &unk_100070A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C7B0);
  }

  return result;
}

uint64_t sub_100002BD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002C18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000243C();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100002CCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002CCC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100002E80()
{
  result = qword_10008C7C0;
  if (!qword_10008C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C7C0);
  }

  return result;
}

uint64_t sub_100002F08(uint64_t a1)
{
  v2 = sub_100003BB8(&qword_10008C798, &unk_1000708C4);

  return EntityURLRepresentation.init(_:)(0xD00000000000004ALL, 0x8000000100065B60, a1, v2);
}

uint64_t sub_100002F88()
{
  v0 = qword_10008C2E0;

  return v0;
}

id sub_100003034@<X0>(void *a1@<X8>)
{
  if (qword_10008C2F0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F0D0;
  *a1 = qword_10008F0D0;

  return v2;
}

uint64_t sub_1000030A4(uint64_t a1)
{
  sub_100003BB8(&qword_10008C8C0, &unk_10007085C);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000031D4@<X0>(uint64_t *a2@<X8>)
{
  sub_100003BB8(&qword_10008C778, &unk_10007082C);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100003268@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003B1C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100003314()
{
  result = qword_10008C7F8;
  if (!qword_10008C7F8)
  {
    sub_100002BD0(&qword_10008C800, &qword_100070A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C7F8);
  }

  return result;
}

uint64_t sub_100003378(uint64_t a1)
{
  v2 = sub_100003BB8(&qword_10008C798, &unk_1000708C4);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100003414@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100064FD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003DB8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003540(uint64_t a1)
{
  v2 = sub_100003BB8(&qword_10008C7F0, &unk_100070AA8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000035CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000364C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000036BC(uint64_t a1)
{
  result = sub_100064FD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100003738()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008C8A8, &unk_100070C00);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008C8B8, &unk_100070C10);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for AssistantLockScreenAccessEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_100003BB8(&qword_10008C798, &unk_1000708C4);
  return sub_100064DC0();
}

uint64_t sub_100003AD4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003B1C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003B54(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003BB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssistantLockScreenAccessEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003BFC()
{
  result = qword_10008C8C8;
  if (!qword_10008C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C8C8);
  }

  return result;
}

uint64_t sub_100003C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssistantLockScreenAccessEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100003CB4()
{
  result = qword_10008C8D0;
  if (!qword_10008C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C8D0);
  }

  return result;
}

unint64_t sub_100003D08()
{
  result = qword_10008C8D8;
  if (!qword_10008C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C8D8);
  }

  return result;
}

uint64_t sub_100003D5C(uint64_t a1)
{
  v2 = type metadata accessor for AssistantLockScreenAccessEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100003DE4()
{
  result = qword_10008C8F0;
  if (!qword_10008C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C8F0);
  }

  return result;
}

uint64_t type metadata accessor for SiriSuggestionsShowInAppEntity(uint64_t a1)
{
  result = qword_10008CA20;
  if (!qword_10008CA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E84()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F0D8);
  sub_100003B1C(v0, qword_10008F0D8);
  return sub_1000651B0();
}

uint64_t sub_100003EE8(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100008388(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10000840C(a1);
}

void (*sub_100003F78(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100003FEC()
{
  result = qword_10008C900;
  if (!qword_10008C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C900);
  }

  return result;
}

uint64_t sub_100004040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000085D8();
  v5 = sub_100008340(&qword_10008CAB8, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_10007114C);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000040E0()
{
  result = qword_10008C908;
  if (!qword_10008C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C908);
  }

  return result;
}

unint64_t sub_100004138()
{
  result = qword_10008C910;
  if (!qword_10008C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C910);
  }

  return result;
}

uint64_t sub_1000041DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000085D8();
  v6 = sub_10000862C();
  v7 = sub_100008340(&qword_10008CAB8, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_10007114C);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000042D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000079C8();
  *a1 = result;
  return result;
}

uint64_t sub_100004300(uint64_t a1)
{
  v2 = sub_100003FEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100004340()
{
  result = qword_10008C918;
  if (!qword_10008C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C918);
  }

  return result;
}

uint64_t sub_1000043E4()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F0F8);
  sub_100003B1C(v10, qword_10008F0F8);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_1000046D4()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F110);
  sub_100003B1C(v0, qword_10008F110);
  return sub_1000651B0();
}

uint64_t sub_100004738()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F128);
  v1 = sub_100003B1C(v0, qword_10008F128);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000047F8()
{
  result = swift_getKeyPath();
  qword_10008F140 = result;
  return result;
}

uint64_t sub_100004820()
{
  type metadata accessor for SiriSuggestionsShowInAppEntity(0);
}

uint64_t sub_100004888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[5] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[6] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB10, &qword_100071500);
  v3[7] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008CB18, &qword_100071508);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100004AA4, 0, 0);
}

uint64_t sub_100004AA4()
{
  sub_100064D90();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_100008340(&qword_10008C958, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000710C4);
  *v1 = v0;
  v1[1] = sub_100004BA0;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_10000868C, 0, v5, v2);
}

uint64_t sub_100004BA0()
{

  return _swift_task_switch(sub_100004C9C, 0, 0);
}

uint64_t sub_100004C9C()
{
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C320 != -1)
  {
    swift_once();
  }

  v1 = qword_10008F140;
  *(v0 + 152) = qword_10008F140;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_1000084D8(&qword_10008CAF0, &qword_10008CA38, &qword_100071420, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_100004DEC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v1, &type metadata for Bool, v3);
}

uint64_t sub_100004DEC()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_10000840C(v2);

  if (v0)
  {
    v3 = sub_1000051E8;
  }

  else
  {
    v3 = sub_100004F40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004F40()
{
  v1 = v0[16];
  v2 = v0[15];
  v11 = v0[13];
  v12 = v0[17];
  v9 = v0[10];
  v10 = v0[14];
  v13 = v0[9];
  v14 = v0[8];
  v3 = v0[6];
  v4 = v0[5];
  sub_100064D90();
  v5 = sub_100065100();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_100065140();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_100004340();
  sub_100008340(&qword_10008C968, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000712B0);
  sub_100064CF0();
  (*(v2 + 16))(v1, v12, v10);
  sub_100064D10();
  sub_100064D40();
  (*(v13 + 8))(v9, v14);
  sub_10000840C(v11);
  (*(v2 + 8))(v12, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000051E8()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000052CC()
{
  v0 = sub_100003AD4(&qword_10008CB20, &qword_100071510);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10008C320 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  sub_100008340(&qword_10008C968, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000712B0);
  sub_1000084D8(&qword_10008CB28, &qword_10008CB20, &qword_100071510, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100005478(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void *sub_1000054F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100064D90();
  *a1 = v3;
  return result;
}

void (*sub_100005564(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_1000055D8()
{
  if (qword_10008C320 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000565C()
{
  result = qword_10008C930;
  if (!qword_10008C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C930);
  }

  return result;
}

unint64_t sub_1000056B4()
{
  result = qword_10008C938;
  if (!qword_10008C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C938);
  }

  return result;
}

uint64_t sub_1000057E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C318 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F128);

  return sub_100008568(v3, a1);
}

uint64_t sub_10000586C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_100004888(a1, v5, v4);
}

uint64_t sub_100005918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007D78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000595C()
{
  result = qword_10008C940;
  if (!qword_10008C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C940);
  }

  return result;
}

uint64_t sub_1000059B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000059D0, 0, 0);
}

uint64_t sub_1000059D0()
{
  if (qword_10008C300 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = qword_10008F0F0;
  type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  v3 = v2;
  v4 = sub_100065380();
  v5 = [v3 isShowSuggestionsEnabledInApp:v4];

  *v1 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100005AC0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100005AE8, 0, 0);
}

uint64_t sub_100005AE8()
{
  if (qword_10008C300 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = qword_10008F0F0;
  type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  v3 = v2;
  v4 = sub_100065380();
  [v3 setShowSuggestionsInApp:v4 enabled:v1];

  v5 = *(v0 + 8);

  return v5();
}

id sub_100005BE4(uint64_t a1, void *a2)
{
  result = [objc_opt_self() sharedController];
  *a2 = result;
  return result;
}

void *sub_100005C28(uint64_t a1)
{
  v3 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  __chkstk_darwin(v3 - 8);
  v56 = v43 - v4;
  v5 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v5 - 8);
  v55 = v43 - v6;
  v54 = sub_1000651D0();
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_100065490();
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v68 = _swiftEmptyArrayStorage;
  sub_100063A68(0, v12 & ~(v12 >> 63), 0);
  v13 = v68;
  if (v57)
  {
    result = sub_100065450();
  }

  else
  {
    result = sub_100065440();
    v15 = *(a1 + 36);
  }

  v65 = result;
  v66 = v15;
  v67 = v57 != 0;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v43[1] = v1;
    result = sub_100003AD4(&qword_10008C928, &qword_100070DB0);
    v48 = result;
    v16 = 0;
    v47 = (v7 + 56);
    v45 = a1 + 56;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v46 = v17;
    v44 = a1 + 64;
    v50 = a1;
    v49 = v12;
    v18 = v52;
    while (v16 < v12)
    {
      v20 = __OFADD__(v16, 1);
      v21 = v16 + 1;
      if (v20)
      {
        goto LABEL_38;
      }

      v62 = v65;
      v58 = v21;
      v59 = v66;
      v61 = v67;
      sub_100063DBC(v65, v66, v67, a1);
      v23 = v22;
      v24 = [v22 bundleId];
      v60 = sub_100065390();
      v63 = v13;
      v26 = v25;

      v27 = [v23 localizedName];
      sub_100065390();

      v28 = *(v18 + 24);
      sub_1000651B0();
      sub_1000084D8(&qword_10008CAF0, &qword_10008CA38, &qword_100071420, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      *&v11[v28] = sub_100065180();
      v29 = &v11[*(v18 + 20)];
      *v29 = v60;
      v29[1] = v26;
      v13 = v63;
      sub_1000651B0();
      (*v47)(v55, 1, 1, v54);
      v30 = sub_100064FA0();
      (*(*(v30 - 8) + 56))(v56, 1, 1, v30);
      sub_100064FC0();

      v68 = v13;
      v32 = v13[2];
      v31 = v13[3];
      if (v32 >= v31 >> 1)
      {
        sub_100063A68((v31 > 1), v32 + 1, 1);
        v13 = v68;
      }

      v13[2] = v32 + 1;
      sub_100008468(v11, v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32);
      if (v57)
      {
        a1 = v50;
        v12 = v49;
        result = v62;
        if (!v61)
        {
          goto LABEL_43;
        }

        if (sub_100065460())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_100003AD4(&qword_10008CAF8, &qword_1000714E0);
        v19 = sub_100065400();
        sub_1000654B0();
        result = v19(v64, 0);
      }

      else
      {
        a1 = v50;
        v12 = v49;
        result = v62;
        if (v61)
        {
          goto LABEL_44;
        }

        if ((v62 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v33 = 1 << *(v50 + 32);
        if (v62 >= v33)
        {
          goto LABEL_39;
        }

        v34 = v62 >> 6;
        v35 = *(v45 + 8 * (v62 >> 6));
        if (((v35 >> v62) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v50 + 36) != v59)
        {
          goto LABEL_41;
        }

        v36 = v35 & (-2 << (v62 & 0x3F));
        if (v36)
        {
          v33 = __clz(__rbit64(v36)) | v62 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v37 = v34 << 6;
          v38 = v34 + 1;
          v39 = (v44 + 8 * v34);
          while (v38 < (v33 + 63) >> 6)
          {
            v41 = *v39++;
            v40 = v41;
            v37 += 64;
            ++v38;
            if (v41)
            {
              result = sub_1000084CC(v62, v59, 0);
              v33 = __clz(__rbit64(v40)) + v37;
              goto LABEL_34;
            }
          }

          result = sub_1000084CC(v62, v59, 0);
        }

LABEL_34:
        v42 = *(a1 + 36);
        v65 = v33;
        v66 = v42;
        v67 = 0;
      }

      v16 = v58;
      if (v58 == v12)
      {
        sub_1000084CC(v65, v66, v67);
        return v13;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10000630C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000063D8, 0, 0);
}

uint64_t sub_1000063D8()
{
  v1 = [*(v0 + 40) siriSuggestionClients];
  sub_1000082F4();
  sub_100008340(&qword_10008CAE0, sub_1000082F4, &protocol conformance descriptor for NSObject);
  v2 = sub_1000653F0();

  v3 = sub_100005C28(v2);

  v21 = v3[2];
  if (v21)
  {
    v5 = 0;
    v6 = *(v0 + 56);
    v20 = *(v0 + 48);
    while (v5 < v3[2])
    {
      v7 = *(v0 + 72);
      v8 = *(v0 + 32);
      v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v10 = *(v6 + 72);
      sub_100008388(v3 + v9 + v10 * v5, v7);
      v11 = (v7 + *(v20 + 20));
      v13 = *v11;
      v12 = v11[1];
      *(v0 + 16) = v13;
      *(v0 + 24) = v12;
      v14 = swift_task_alloc();
      *(v14 + 16) = v0 + 16;
      LOBYTE(v8) = sub_100063D10(sub_1000083EC, v14, v8);

      v15 = *(v0 + 72);
      if (v8)
      {
        sub_100008468(v15, *(v0 + 64));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100063A68(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100063A68((v16 > 1), v17 + 1, 1);
        }

        v18 = *(v0 + 64);
        _swiftEmptyArrayStorage[2] = v17 + 1;
        result = sub_100008468(v18, _swiftEmptyArrayStorage + v9 + v17 * v10);
      }

      else
      {
        result = sub_10000840C(v15);
      }

      if (v21 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v19 = *(v0 + 8);

    return v19(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100006654(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100006678, 0, 0);
}

uint64_t sub_100006678()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) siriSuggestionClients];
  sub_1000082F4();
  sub_100008340(&qword_10008CAE0, sub_1000082F4, &protocol conformance descriptor for NSObject);
  v3 = sub_1000653F0();

  v4 = sub_100005C28(v3);

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_100006778()
{
  result = qword_10008C948;
  if (!qword_10008C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C948);
  }

  return result;
}

unint64_t sub_1000067D0()
{
  result = qword_10008C950;
  if (!qword_10008C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C950);
  }

  return result;
}

uint64_t sub_100006824(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return sub_10000630C(a1, v4);
}

uint64_t sub_1000068C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000082A0();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v6);
}

unint64_t sub_100006978()
{
  result = qword_10008C960;
  if (!qword_10008C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C960);
  }

  return result;
}

unint64_t sub_1000069D0()
{
  result = qword_10008C970;
  if (!qword_10008C970)
  {
    sub_100002BD0(&qword_10008C978, qword_100071008);
    sub_100008340(&qword_10008C968, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000712B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C970);
  }

  return result;
}

uint64_t sub_100006A84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000595C();
  *v5 = v2;
  v5[1] = sub_100003DB8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100006B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003DB8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

id sub_100006CC8@<X0>(void *a1@<X8>)
{
  if (qword_10008C328 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F148;
  *a1 = qword_10008F148;

  return v2;
}

uint64_t sub_100006D80()
{
  v0 = qword_10008C8E0;

  return v0;
}

uint64_t sub_100006E00(uint64_t a1)
{
  v1 = sub_100003AD4(&qword_10008CAC0, &qword_1000714B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100003AD4(&qword_10008CAC8, &qword_1000714B8);
  __chkstk_darwin(v5);
  sub_100008340(&qword_10008C958, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000710C4);
  sub_1000650A0();
  v8._object = 0x8000000100065CB0;
  v8._countAndFlagsBits = 0xD000000000000049;
  sub_100065090(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100065080();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100065090(v9);
  return sub_1000650B0();
}

uint64_t sub_100007114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100007128(uint64_t a1)
{
  sub_100008340(&qword_10008CAB8, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_10007114C);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000071FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003B1C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000072E8(uint64_t a1)
{
  v2 = sub_100008340(&qword_10008C958, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000710C4);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000073AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100002CCC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007470(uint64_t a1)
{
  v2 = sub_100008340(&qword_10008C9A8, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_100071310);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_1000074FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007508(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100007550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000075B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100007684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100007740(uint64_t a1)
{
  sub_100064FD0();
  if (v1 <= 0x3F)
  {
    sub_1000077CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000077CC(uint64_t a1)
{
  if (!qword_10008CA30)
  {
    type metadata accessor for SiriSuggestionsShowInAppEntity(255);
    sub_100002BD0(&qword_10008CA38, &qword_100071420);
    sub_100008340(&qword_10008C958, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000710C4);
    sub_1000084D8(&qword_10008CA40, &qword_10008CA38, &qword_100071420, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_1000078DC();
    v1 = sub_1000651A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10008CA30);
    }
  }
}

unint64_t sub_1000078DC()
{
  result = qword_10008CA48;
  if (!qword_10008CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA48);
  }

  return result;
}

uint64_t sub_1000079C8()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008CAA0, &unk_100071490);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008CAA8, &unk_1000714A0);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_100008340(&qword_10008C958, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000710C4);
  return sub_100064DC0();
}

uint64_t sub_100007D78()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v1;
  v37 = sub_1000650D0();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_100003AD4(&qword_10008CAA0, &unk_100071490);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v28 = &v27 - v15;
  v17 = sub_1000651D0();
  v34 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v32 = sub_100003AD4(&qword_10008CAA8, &unk_1000714A0);
  sub_1000651B0();
  v19 = *(v18 + 56);
  v33 = v18 + 56;
  v35 = v19;
  v19(v16, 1, 1, v17);
  v20 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = sub_100064D30();
  v22 = *(*(v21 - 8) + 56);
  v22(v10, 1, 1, v21);
  v22(v8, 1, 1, v21);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v2 + 104);
  v29 = v2 + 104;
  v30 = v23;
  v23(v4);
  sub_100008340(&qword_10008C958, type metadata accessor for SiriSuggestionsShowInAppEntity, &unk_1000710C4);
  v24 = v28;
  v32 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v35(v24, 1, 1, v34);
  v38 = 2;
  v25 = sub_1000653E0();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v10, 1, 1, v21);
  v30(v4, v31, v37);
  sub_100064DD0();
  return v32;
}

unint64_t sub_1000082A0()
{
  result = qword_10008CAD0;
  if (!qword_10008CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CAD0);
  }

  return result;
}

unint64_t sub_1000082F4()
{
  result = qword_10008CAD8;
  if (!qword_10008CAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008CAD8);
  }

  return result;
}

uint64_t sub_100008340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000840C(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsShowInAppEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000084CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000084D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002BD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SiriSuggestionsShowInAppEntity(0) + 24));
}

uint64_t sub_100008568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000085D8()
{
  result = qword_10008CB38;
  if (!qword_10008CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB38);
  }

  return result;
}

unint64_t sub_10000862C()
{
  result = qword_10008CB40;
  if (!qword_10008CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB40);
  }

  return result;
}

unint64_t sub_1000086B4()
{
  result = qword_10008CB48;
  if (!qword_10008CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB48);
  }

  return result;
}

uint64_t type metadata accessor for AlwaysPrintSiriResponseEntity(uint64_t a1)
{
  result = qword_10008CC78;
  if (!qword_10008CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008754()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F150);
  sub_100003B1C(v0, qword_10008F150);
  return sub_1000651B0();
}

uint64_t sub_1000087B8(uint64_t a1)
{
  v2 = type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10000B6A4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10000B600(a1);
}

void (*sub_100008848(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_1000088BC()
{
  result = qword_10008CB58;
  if (!qword_10008CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB58);
  }

  return result;
}

uint64_t sub_100008910(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B708();
  v5 = sub_10000A894(&qword_10008CBA0, &unk_100071898);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000899C()
{
  result = qword_10008CB60;
  if (!qword_10008CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB60);
  }

  return result;
}

unint64_t sub_1000089F4()
{
  result = qword_10008CB68;
  if (!qword_10008CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB68);
  }

  return result;
}

uint64_t sub_100008A98(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000B708();
  v6 = sub_10000B75C();
  v7 = sub_10000A894(&qword_10008CBA0, &unk_100071898);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100008B80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000AD58();
  *a1 = result;
  return result;
}

uint64_t sub_100008BA8(uint64_t a1)
{
  v2 = sub_1000088BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100008BE8()
{
  result = qword_10008CB70;
  if (!qword_10008CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB70);
  }

  return result;
}

id sub_100008C80()
{
  result = [objc_opt_self() sharedController];
  qword_10008F168 = result;
  return result;
}

uint64_t sub_100008CBC()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F170);
  sub_100003B1C(v10, qword_10008F170);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_100008FAC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F188);
  sub_100003B1C(v0, qword_10008F188);
  return sub_1000651B0();
}

uint64_t sub_100009010()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F1A0);
  v1 = sub_100003B1C(v0, qword_10008F1A0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000090D0()
{
  result = swift_getKeyPath();
  qword_10008F1B8 = result;
  return result;
}

uint64_t sub_1000090F8()
{
  type metadata accessor for AlwaysPrintSiriResponseEntity(0);
}

uint64_t sub_10000912C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AlwaysPrintSiriResponseEntity(0) + 20));
}

uint64_t sub_100009174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[5] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[6] = swift_task_alloc();
  sub_100003AD4(&qword_10008CD00, &qword_100071C70);
  v3[7] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008CD08, &qword_100071C78);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100009390, 0, 0);
}

uint64_t sub_100009390()
{
  sub_100064D90();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_10000A894(&qword_10008CBB0, &unk_100071908);
  *v1 = v0;
  v1[1] = sub_100009478;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_10000B7B0, 0, v5, v2);
}

uint64_t sub_100009478()
{

  return _swift_task_switch(sub_100009574, 0, 0);
}

uint64_t sub_100009574()
{
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C358 != -1)
  {
    swift_once();
  }

  v1 = qword_10008F1B8;
  *(v0 + 152) = qword_10008F1B8;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_1000084D8(&qword_10008CCF8, &qword_10008CC90, &qword_100071BE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_1000096C4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v1, &type metadata for Bool, v3);
}

uint64_t sub_1000096C4()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_10000B600(v2);

  if (v0)
  {
    v3 = sub_1000051E8;
  }

  else
  {
    v3 = sub_100009818;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009818()
{
  v12 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v10 = v0[16];
  v11 = v0[13];
  v3 = v0[10];
  v14 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v13 = v0[9];
  sub_100064D90();
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100008BE8();
  sub_10000A894(&qword_10008CBF8, &unk_100071AB8);
  sub_100064CF0();
  (*(v1 + 16))(v10, v12, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v13 + 8))(v3, v14);
  sub_10000B600(v11);
  (*(v1 + 8))(v12, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100009AA4()
{
  v0 = sub_100003AD4(&qword_10008CD10, &qword_100071C80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10008C358 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  sub_10000A894(&qword_10008CBF8, &unk_100071AB8);
  sub_1000084D8(&qword_10008CD18, &qword_10008CD10, &qword_100071C80, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100009C3C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_100009CB0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_100009D24()
{
  if (qword_10008C358 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100009DA0()
{
  result = qword_10008CB88;
  if (!qword_10008CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB88);
  }

  return result;
}

unint64_t sub_100009DF8()
{
  result = qword_10008CB90;
  if (!qword_10008CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CB90);
  }

  return result;
}

uint64_t sub_100009F24@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C350 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F1A0);

  return sub_100008568(v3, a1);
}

uint64_t sub_100009FA8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_100009174(a1, v5, v4);
}

uint64_t sub_10000A054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B0F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000A0B8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 siriResponseShouldAlwaysPrint];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000A15C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000651D0();
  __chkstk_darwin(v2 - 8);
  sub_100065270();
  v3 = sub_100065260();
  sub_100065240();

  sub_1000294B4(2, a1);
  v4 = *(type metadata accessor for AlwaysPrintSiriResponseEntity(0) + 20);
  sub_100003AD4(&qword_10008CB80, &qword_1000716E0);
  sub_1000651B0();
  sub_1000084D8(&qword_10008CCF8, &qword_10008CC90, &qword_100071BE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_100065180();
  *(a1 + v4) = result;
  return result;
}

uint64_t sub_10000A2B8(void *a1)
{
  a1[1] = sub_10000A894(&qword_10008CB98, &unk_1000718D0);
  a1[2] = sub_10000A894(&qword_10008CBA0, &unk_100071898);
  result = sub_10000A894(&qword_10008CBA8, &unk_100071960);
  a1[3] = result;
  return result;
}

uint64_t sub_10000A378(uint64_t a1)
{
  v2 = sub_10000A894(&qword_10008CBB0, &unk_100071908);

  return EntityURLRepresentation.init(_:)(0xD00000000000004CLL, 0x8000000100065F10, a1, v2);
}

uint64_t sub_10000A50C(uint64_t a1)
{
  v2 = sub_10000A894(&qword_10008CBA8, &unk_100071960);

  return _UniqueEntityProvider.init(_:)(&unk_10007C120, 0, a1, v2);
}

uint64_t sub_10000A5C8(uint64_t a1)
{
  sub_10000A894(&qword_10008CBA0, &unk_100071898);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000A720@<X0>(uint64_t *a2@<X8>)
{
  sub_10000A894(&qword_10008CBA8, &unk_100071960);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000A7F8(uint64_t a1)
{
  v2 = sub_10000A894(&qword_10008CBB0, &unk_100071908);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000A894(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlwaysPrintSiriResponseEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A8D8(uint64_t a1)
{
  v2 = sub_10000A894(&qword_10008CC00, &unk_100071B18);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000A964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000AA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10000AAEC(uint64_t a1)
{
  sub_100064FD0();
  if (v1 <= 0x3F)
  {
    sub_10000AB70(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000AB70(uint64_t a1)
{
  if (!qword_10008CC88)
  {
    type metadata accessor for AlwaysPrintSiriResponseEntity(255);
    sub_100002BD0(&qword_10008CC90, &qword_100071BE0);
    sub_10000A894(&qword_10008CBB0, &unk_100071908);
    sub_1000084D8(&qword_10008CC98, &qword_10008CC90, &qword_100071BE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_10000AC6C();
    v1 = sub_1000651A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10008CC88);
    }
  }
}

unint64_t sub_10000AC6C()
{
  result = qword_10008CCA0;
  if (!qword_10008CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CCA0);
  }

  return result;
}

uint64_t sub_10000AD58()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008CCE8, &unk_100071C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008CCF0, &unk_100071C50);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_10000A894(&qword_10008CBB0, &unk_100071908);
  return sub_100064DC0();
}

uint64_t sub_10000B0F4()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v34 = v26 - v1;
  v35 = sub_1000650D0();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_100003AD4(&qword_10008CCE8, &unk_100071C40);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  v26[1] = v26 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - v15;
  v27 = v26 - v15;
  v17 = sub_1000651D0();
  v33 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v31 = sub_100003AD4(&qword_10008CCF0, &unk_100071C50);
  sub_1000651B0();
  v32 = *(v18 + 56);
  v32(v16, 1, 1, v17);
  v19 = type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_100064D30();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  v30 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v28 = v2 + 104;
  v29 = v22;
  v22(v4);
  sub_10000A894(&qword_10008CBB0, &unk_100071908);
  v23 = v27;
  v31 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v32(v23, 1, 1, v33);
  v36 = 2;
  v24 = sub_1000653E0();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v21(v10, 1, 1, v20);
  v29(v4, v30, v35);
  sub_100064DD0();
  return v31;
}

uint64_t sub_10000B600(uint64_t a1)
{
  v2 = type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B65C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AlwaysPrintSiriResponseEntity(0) + 20));
}

uint64_t sub_10000B6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlwaysPrintSiriResponseEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B708()
{
  result = qword_10008CD20;
  if (!qword_10008CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD20);
  }

  return result;
}

unint64_t sub_10000B75C()
{
  result = qword_10008CD28;
  if (!qword_10008CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD28);
  }

  return result;
}

unint64_t sub_10000B7D0()
{
  result = qword_10008CD30;
  if (!qword_10008CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD30);
  }

  return result;
}

unint64_t sub_10000B824()
{
  result = qword_10008CD38;
  if (!qword_10008CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD38);
  }

  return result;
}

uint64_t sub_10000B878()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F1C0);
  sub_100003B1C(v0, qword_10008F1C0);
  return sub_1000651B0();
}

void (*sub_10000B900(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000019C8;
}

unint64_t sub_10000B974()
{
  result = qword_10008CD40;
  if (!qword_10008CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD40);
  }

  return result;
}

uint64_t sub_10000B9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D038();
  v5 = sub_10000CFE4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000BA38()
{
  result = qword_10008CD48;
  if (!qword_10008CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD48);
  }

  return result;
}

unint64_t sub_10000BA90()
{
  result = qword_10008CD50;
  if (!qword_10008CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD50);
  }

  return result;
}

uint64_t sub_10000BB6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000D038();
  v6 = sub_10000D08C();
  v7 = sub_10000CFE4();
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000BC38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CCE8();
  *a1 = result;
  return result;
}

uint64_t sub_10000BC60(uint64_t a1)
{
  v2 = sub_10000B974();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000BCA0()
{
  result = qword_10008CD58;
  if (!qword_10008CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD58);
  }

  return result;
}

unint64_t sub_10000BCF8()
{
  result = qword_10008CD60;
  if (!qword_10008CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD60);
  }

  return result;
}

uint64_t sub_10000BD4C()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F1D8);
  sub_100003B1C(v10, qword_10008F1D8);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

unint64_t sub_10000C070()
{
  result = qword_10008CD68;
  if (!qword_10008CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD68);
  }

  return result;
}

uint64_t sub_10000C0C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000C5D0();
  *v4 = v2;
  v4[1] = sub_100002540;

  return UniqueAppEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000C178()
{
  result = qword_10008CD70;
  if (!qword_10008CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD70);
  }

  return result;
}

unint64_t sub_10000C1D0()
{
  result = qword_10008CD78;
  if (!qword_10008CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD78);
  }

  return result;
}

unint64_t sub_10000C224()
{
  result = qword_10008CD80;
  if (!qword_10008CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD80);
  }

  return result;
}

uint64_t sub_10000C27C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000C5D0();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return UniqueAppEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000C330(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000C5D0();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return UniqueAppEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000C3E4()
{
  result = qword_10008CD88;
  if (!qword_10008CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD88);
  }

  return result;
}

unint64_t sub_10000C438()
{
  result = qword_10008CD90;
  if (!qword_10008CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD90);
  }

  return result;
}

unint64_t sub_10000C490()
{
  result = qword_10008CD98;
  if (!qword_10008CD98)
  {
    sub_100002BD0(&qword_10008CDA0, qword_100071F40);
    sub_10000C438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CD98);
  }

  return result;
}

uint64_t sub_10000C514(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000C070();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000C5D0()
{
  result = qword_10008CDA8;
  if (!qword_10008CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDA8);
  }

  return result;
}

unint64_t sub_10000C628()
{
  result = qword_10008CDB0;
  if (!qword_10008CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDB0);
  }

  return result;
}

uint64_t sub_10000C67C(uint64_t a1)
{
  v2 = sub_10000C224();

  return EntityURLRepresentation.init(_:)(0xD000000000000048, 0x80000001000660D0, a1, v2);
}

unint64_t sub_10000C6E8()
{
  result = qword_10008CDB8;
  if (!qword_10008CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDB8);
  }

  return result;
}

unint64_t sub_10000C740()
{
  result = qword_10008CDC0;
  if (!qword_10008CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDC0);
  }

  return result;
}

uint64_t sub_10000C798(uint64_t a1)
{
  sub_10000CFE4();
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000C808()
{
  result = qword_10008CDC8;
  if (!qword_10008CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDC8);
  }

  return result;
}

unint64_t sub_10000C860()
{
  result = qword_10008CDD0;
  if (!qword_10008CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDD0);
  }

  return result;
}

unint64_t sub_10000C8BC()
{
  result = qword_10008CDD8;
  if (!qword_10008CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDD8);
  }

  return result;
}

uint64_t sub_10000C910@<X0>(uint64_t *a2@<X8>)
{
  sub_10000BCF8();
  result = sub_100064BC0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10000C98C()
{
  result = qword_10008CDE0;
  if (!qword_10008CDE0)
  {
    sub_100002BD0(&qword_10008CDE8, &qword_1000721E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDE0);
  }

  return result;
}

uint64_t sub_10000C9F0(uint64_t a1)
{
  v2 = sub_10000C224();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000CA40()
{
  result = qword_10008CDF0;
  if (!qword_10008CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CDF0);
  }

  return result;
}

uint64_t sub_10000CA94()
{
  v0 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000651D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000651B0();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_100064FA0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_100064FC0();
}

uint64_t sub_10000CC6C(uint64_t a1)
{
  v2 = sub_10000C8BC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000CCE8()
{
  v17 = sub_1000650D0();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003AD4(&qword_10008CDF8, &qword_100072338);
  sub_1000651B0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_100064D30();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000C224();
  return sub_100064DC0();
}

unint64_t sub_10000CFE4()
{
  result = qword_10008CE00;
  if (!qword_10008CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE00);
  }

  return result;
}

unint64_t sub_10000D038()
{
  result = qword_10008CE08;
  if (!qword_10008CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE08);
  }

  return result;
}

unint64_t sub_10000D08C()
{
  result = qword_10008CE10;
  if (!qword_10008CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE10);
  }

  return result;
}

unint64_t sub_10000D0FC()
{
  result = qword_10008CE28;
  if (!qword_10008CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE28);
  }

  return result;
}

uint64_t type metadata accessor for SiriLanguageEntity(uint64_t a1)
{
  result = qword_10008CF48;
  if (!qword_10008CF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D19C()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F1F0);
  sub_100003B1C(v0, qword_10008F1F0);
  return sub_1000651B0();
}

uint64_t sub_10000D200(uint64_t a1)
{
  v2 = type metadata accessor for SiriLanguageEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10000EB4C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10000EC58(a1);
}

void (*sub_10000D290(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000019C8;
}

unint64_t sub_10000D304()
{
  result = qword_10008CE38;
  if (!qword_10008CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE38);
  }

  return result;
}

uint64_t sub_10000D358(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EBB0();
  v5 = sub_10000EB08(&qword_10008CF90, &unk_1000726CC);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000D3E4()
{
  result = qword_10008CE40;
  if (!qword_10008CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE40);
  }

  return result;
}

unint64_t sub_10000D43C()
{
  result = qword_10008CE48;
  if (!qword_10008CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE48);
  }

  return result;
}

uint64_t sub_10000D518(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000EBB0();
  v6 = sub_10000EC04();
  v7 = sub_10000EB08(&qword_10008CF90, &unk_1000726CC);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000D600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000E76C();
  *a1 = result;
  return result;
}

uint64_t sub_10000D628(uint64_t a1)
{
  v2 = sub_10000D304();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000D668()
{
  result = qword_10008CE50;
  if (!qword_10008CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE50);
  }

  return result;
}

uint64_t sub_10000D6F0()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F208);
  sub_100003B1C(v10, qword_10008F208);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10000D9D8()
{
  v0 = type metadata accessor for SiriLanguageEntity(0);
  sub_100003B54(v0, qword_10008F220);
  v1 = sub_100003B1C(v0, qword_10008F220);
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(1, v1);
}

id sub_10000DA4C()
{
  result = [objc_opt_self() sharedController];
  qword_10008F238 = result;
  return result;
}

uint64_t sub_10000DA88(uint64_t a1)
{
  if ([*v1 assistantIsEnabled])
  {
    if (qword_10008C380 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for SiriLanguageEntity(0);
    v5 = sub_100003B1C(v4, qword_10008F220);
    sub_10000EB4C(v5, a1);
    v6 = *(v2 + 8);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
    v6 = *(v2 + 8);
  }

  return v6();
}

unint64_t sub_10000DBA4()
{
  result = qword_10008CE60;
  if (!qword_10008CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE60);
  }

  return result;
}

uint64_t sub_10000DBF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000E0D8();
  *v4 = v2;
  v4[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000DCAC()
{
  result = qword_10008CE68;
  if (!qword_10008CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE68);
  }

  return result;
}

unint64_t sub_10000DD04()
{
  result = qword_10008CE70;
  if (!qword_10008CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE70);
  }

  return result;
}

uint64_t sub_10000DD8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000E0D8();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000DE40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000E0D8();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000DEF4()
{
  result = qword_10008CE80;
  if (!qword_10008CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE80);
  }

  return result;
}

unint64_t sub_10000DF80()
{
  result = qword_10008CE90;
  if (!qword_10008CE90)
  {
    sub_100002BD0(&qword_10008CE98, qword_1000725E0);
    sub_10000EB08(&qword_10008CE88, &unk_1000728B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CE90);
  }

  return result;
}

uint64_t sub_10000E020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000DBA4();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000E0D8()
{
  result = qword_10008CEA0;
  if (!qword_10008CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CEA0);
  }

  return result;
}

uint64_t sub_10000E160(uint64_t a1)
{
  v2 = sub_10000EB08(&qword_10008CE78, &unk_100072734);

  return EntityURLRepresentation.init(_:)(0xD000000000000039, 0x8000000100066190, a1, v2);
}

uint64_t sub_10000E1E0()
{
  v0 = qword_10008CE18;

  return v0;
}

id sub_10000E2B4@<X0>(void *a1@<X8>)
{
  if (qword_10008C388 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F238;
  *a1 = qword_10008F238;

  return v2;
}

uint64_t sub_10000E324(uint64_t a1)
{
  sub_10000EB08(&qword_10008CF90, &unk_1000726CC);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000E448@<X0>(uint64_t *a2@<X8>)
{
  sub_10000EB08(&qword_10008CE58, &unk_10007269C);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10000E4E0()
{
  result = qword_10008CED8;
  if (!qword_10008CED8)
  {
    sub_100002BD0(&qword_10008CEE0, &qword_1000728B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CED8);
  }

  return result;
}

uint64_t sub_10000E544(uint64_t a1)
{
  v2 = sub_10000EB08(&qword_10008CE78, &unk_100072734);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000E5E0(uint64_t a1)
{
  v2 = sub_10000EB08(&qword_10008CED0, &unk_100072918);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000E66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000E6EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000E76C()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008CF80, &unk_100072A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008CF88, &unk_100072A30);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for SiriLanguageEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_10000EB08(&qword_10008CE78, &unk_100072734);
  return sub_100064DC0();
}

uint64_t sub_10000EB08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriLanguageEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriLanguageEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000EBB0()
{
  result = qword_10008CF98;
  if (!qword_10008CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CF98);
  }

  return result;
}

unint64_t sub_10000EC04()
{
  result = qword_10008CFA0;
  if (!qword_10008CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFA0);
  }

  return result;
}

uint64_t sub_10000EC58(uint64_t a1)
{
  v2 = type metadata accessor for SiriLanguageEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000ECD0()
{
  result = qword_10008CFB8;
  if (!qword_10008CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFB8);
  }

  return result;
}

uint64_t type metadata accessor for SiriAndDictationHistoryEntity(uint64_t a1)
{
  result = qword_10008D0D8;
  if (!qword_10008D0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000ED70()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F240);
  sub_100003B1C(v0, qword_10008F240);
  return sub_1000651B0();
}

uint64_t sub_10000EDD4(uint64_t a1)
{
  v2 = type metadata accessor for SiriAndDictationHistoryEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100010728(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_100010834(a1);
}

void (*sub_10000EE64(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000019C8;
}

unint64_t sub_10000EED8()
{
  result = qword_10008CFC8;
  if (!qword_10008CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFC8);
  }

  return result;
}

uint64_t sub_10000EF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001078C();
  v5 = sub_1000106E4(&qword_10008D120, &unk_100072DBC);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000EFB8()
{
  result = qword_10008CFD0;
  if (!qword_10008CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFD0);
  }

  return result;
}

unint64_t sub_10000F010()
{
  result = qword_10008CFD8;
  if (!qword_10008CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFD8);
  }

  return result;
}

uint64_t sub_10000F0EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001078C();
  v6 = sub_1000107E0();
  v7 = sub_1000106E4(&qword_10008D120, &unk_100072DBC);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000F1D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100010348();
  *a1 = result;
  return result;
}

uint64_t sub_10000F1FC(uint64_t a1)
{
  v2 = sub_10000EED8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000F23C()
{
  result = qword_10008CFE0;
  if (!qword_10008CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFE0);
  }

  return result;
}

uint64_t sub_10000F2C4()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F258);
  sub_100003B1C(v10, qword_10008F258);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10000F5B4()
{
  v0 = type metadata accessor for SiriAndDictationHistoryEntity(0);
  sub_100003B54(v0, qword_10008F270);
  v1 = sub_100003B1C(v0, qword_10008F270);
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(11, v1);
}

id sub_10000F628()
{
  result = [objc_opt_self() sharedController];
  qword_10008F288 = result;
  return result;
}

uint64_t sub_10000F664(uint64_t a1)
{
  if ([*v1 assistantIsEnabled])
  {
    if (qword_10008C3A0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for SiriAndDictationHistoryEntity(0);
    v5 = sub_100003B1C(v4, qword_10008F270);
    sub_100010728(v5, a1);
    v6 = *(v2 + 8);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
    v6 = *(v2 + 8);
  }

  return v6();
}

unint64_t sub_10000F780()
{
  result = qword_10008CFF0;
  if (!qword_10008CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFF0);
  }

  return result;
}

uint64_t sub_10000F7D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000FCB4();
  *v4 = v2;
  v4[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000F888()
{
  result = qword_10008CFF8;
  if (!qword_10008CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CFF8);
  }

  return result;
}

unint64_t sub_10000F8E0()
{
  result = qword_10008D000;
  if (!qword_10008D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D000);
  }

  return result;
}

uint64_t sub_10000F968(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000FCB4();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000FA1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000FCB4();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000FAD0()
{
  result = qword_10008D010;
  if (!qword_10008D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D010);
  }

  return result;
}

unint64_t sub_10000FB5C()
{
  result = qword_10008D020;
  if (!qword_10008D020)
  {
    sub_100002BD0(&qword_10008D028, qword_100072CD0);
    sub_1000106E4(&qword_10008D018, &unk_100072FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D020);
  }

  return result;
}

uint64_t sub_10000FBFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F780();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000FCB4()
{
  result = qword_10008D030;
  if (!qword_10008D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D030);
  }

  return result;
}

uint64_t sub_10000FD3C(uint64_t a1)
{
  v2 = sub_1000106E4(&qword_10008D008, &unk_100072E24);

  return EntityURLRepresentation.init(_:)(0xD000000000000035, 0x8000000100066280, a1, v2);
}

uint64_t sub_10000FDBC()
{
  v0 = qword_10008CFA8;

  return v0;
}

id sub_10000FE90@<X0>(void *a1@<X8>)
{
  if (qword_10008C3A8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F288;
  *a1 = qword_10008F288;

  return v2;
}

uint64_t sub_10000FF00(uint64_t a1)
{
  sub_1000106E4(&qword_10008D120, &unk_100072DBC);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100010024@<X0>(uint64_t *a2@<X8>)
{
  sub_1000106E4(&qword_10008CFE8, &unk_100072D8C);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1000100BC()
{
  result = qword_10008D068;
  if (!qword_10008D068)
  {
    sub_100002BD0(&qword_10008D070, &qword_100072FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D068);
  }

  return result;
}

uint64_t sub_100010120(uint64_t a1)
{
  v2 = sub_1000106E4(&qword_10008D008, &unk_100072E24);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000101BC(uint64_t a1)
{
  v2 = sub_1000106E4(&qword_10008D060, &unk_100073008);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100010248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000102C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100010348()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008D110, &unk_100073130);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008D118, &unk_100073140);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for SiriAndDictationHistoryEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_1000106E4(&qword_10008D008, &unk_100072E24);
  return sub_100064DC0();
}

uint64_t sub_1000106E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAndDictationHistoryEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAndDictationHistoryEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001078C()
{
  result = qword_10008D128;
  if (!qword_10008D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D128);
  }

  return result;
}

unint64_t sub_1000107E0()
{
  result = qword_10008D130;
  if (!qword_10008D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D130);
  }

  return result;
}

uint64_t sub_100010834(uint64_t a1)
{
  v2 = type metadata accessor for SiriAndDictationHistoryEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000108AC()
{
  result = qword_10008D138;
  if (!qword_10008D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D138);
  }

  return result;
}

uint64_t type metadata accessor for AlwaysShowSpeechEntity(uint64_t a1)
{
  result = qword_10008D268;
  if (!qword_10008D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001094C()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F290);
  sub_100003B1C(v0, qword_10008F290);
  return sub_1000651B0();
}

uint64_t sub_1000109B0(uint64_t a1)
{
  v2 = type metadata accessor for AlwaysShowSpeechEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100013884(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_1000137E0(a1);
}

void (*sub_100010A40(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100010AB4()
{
  result = qword_10008D148;
  if (!qword_10008D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D148);
  }

  return result;
}

uint64_t sub_100010B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000138E8();
  v5 = sub_100012A74(&qword_10008D190, &unk_100073498);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100010B94()
{
  result = qword_10008D150;
  if (!qword_10008D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D150);
  }

  return result;
}

unint64_t sub_100010BEC()
{
  result = qword_10008D158;
  if (!qword_10008D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D158);
  }

  return result;
}

uint64_t sub_100010C90(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000138E8();
  v6 = sub_10001393C();
  v7 = sub_100012A74(&qword_10008D190, &unk_100073498);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100010D78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012F38();
  *a1 = result;
  return result;
}

uint64_t sub_100010DA0(uint64_t a1)
{
  v2 = sub_100010AB4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100010DE0()
{
  result = qword_10008D160;
  if (!qword_10008D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D160);
  }

  return result;
}

id sub_100010E78()
{
  result = [objc_opt_self() sharedController];
  qword_10008F2A8 = result;
  return result;
}

uint64_t sub_100010EB4()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F2B0);
  sub_100003B1C(v10, qword_10008F2B0);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_1000111A8()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F2C8);
  sub_100003B1C(v0, qword_10008F2C8);
  return sub_1000651B0();
}

uint64_t sub_10001120C()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F2E0);
  v1 = sub_100003B1C(v0, qword_10008F2E0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000112CC()
{
  result = swift_getKeyPath();
  qword_10008F2F8 = result;
  return result;
}

uint64_t sub_1000112F4()
{
  type metadata accessor for AlwaysShowSpeechEntity(0);
}

uint64_t sub_100011328@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AlwaysShowSpeechEntity(0) + 20));
}

uint64_t sub_100011370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[5] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[6] = swift_task_alloc();
  sub_100003AD4(&qword_10008D2F0, &qword_100073878);
  v3[7] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for AlwaysShowSpeechEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008D2F8, &qword_100073880);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10001158C, 0, 0);
}

uint64_t sub_10001158C()
{
  sub_100064D90();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_100012A74(&qword_10008D1A0, &unk_100073508);
  *v1 = v0;
  v1[1] = sub_100011674;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_100013990, 0, v5, v2);
}

uint64_t sub_100011674()
{

  return _swift_task_switch(sub_100011770, 0, 0);
}

uint64_t sub_100011770()
{
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_10008F2F8;
  *(v0 + 152) = qword_10008F2F8;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_1000084D8(&qword_10008D2E8, &qword_10008D280, &qword_1000737D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_1000118C0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v1, &type metadata for Bool, v3);
}

uint64_t sub_1000118C0()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_1000137E0(v2);

  if (v0)
  {
    v3 = sub_1000051E8;
  }

  else
  {
    v3 = sub_100011A14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100011A14()
{
  v12 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v10 = v0[16];
  v11 = v0[13];
  v3 = v0[10];
  v14 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v13 = v0[9];
  sub_100064D90();
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100010DE0();
  sub_100012A74(&qword_10008D1E8, &unk_1000736B8);
  sub_100064CF0();
  (*(v1 + 16))(v10, v12, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v13 + 8))(v3, v14);
  sub_1000137E0(v11);
  (*(v1 + 8))(v12, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100011CA0()
{
  v0 = sub_100003AD4(&qword_10008D300, &qword_100073888);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10008C3D8 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for AlwaysShowSpeechEntity(0);
  sub_100012A74(&qword_10008D1E8, &unk_1000736B8);
  sub_1000084D8(&qword_10008D308, &qword_10008D300, &qword_100073888, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100011E38(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_100011EAC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_100011F20()
{
  if (qword_10008C3D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100011F80()
{
  result = qword_10008D178;
  if (!qword_10008D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D178);
  }

  return result;
}

unint64_t sub_100011FD8()
{
  result = qword_10008D180;
  if (!qword_10008D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D180);
  }

  return result;
}

uint64_t sub_100012104@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C3D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F2E0);

  return sub_100008568(v3, a1);
}

uint64_t sub_100012188(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_100011370(a1, v5, v4);
}

uint64_t sub_100012234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000132D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012298()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 alwaysShowRecognizedSpeech];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001233C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000651D0();
  __chkstk_darwin(v2 - 8);
  sub_100065270();
  v3 = sub_100065260();
  sub_100065240();

  sub_1000294B4(4, a1);
  v4 = *(type metadata accessor for AlwaysShowSpeechEntity(0) + 20);
  sub_100003AD4(&qword_10008D170, &qword_1000732E0);
  sub_1000651B0();
  sub_1000084D8(&qword_10008D2E8, &qword_10008D280, &qword_1000737D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_100065180();
  *(a1 + v4) = result;
  return result;
}

uint64_t sub_100012498(void *a1)
{
  a1[1] = sub_100012A74(&qword_10008D188, &unk_1000734D0);
  a1[2] = sub_100012A74(&qword_10008D190, &unk_100073498);
  result = sub_100012A74(&qword_10008D198, &unk_100073560);
  a1[3] = result;
  return result;
}

uint64_t sub_100012558(uint64_t a1)
{
  v2 = sub_100012A74(&qword_10008D1A0, &unk_100073508);

  return EntityURLRepresentation.init(_:)(0xD000000000000054, 0x8000000100066400, a1, v2);
}

uint64_t sub_1000126EC(uint64_t a1)
{
  v2 = sub_100012A74(&qword_10008D198, &unk_100073560);

  return _UniqueEntityProvider.init(_:)(&unk_10007C100, 0, a1, v2);
}

uint64_t sub_1000127A8(uint64_t a1)
{
  sub_100012A74(&qword_10008D190, &unk_100073498);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100012900@<X0>(uint64_t *a2@<X8>)
{
  sub_100012A74(&qword_10008D198, &unk_100073560);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000129D8(uint64_t a1)
{
  v2 = sub_100012A74(&qword_10008D1A0, &unk_100073508);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100012A74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlwaysShowSpeechEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012AB8(uint64_t a1)
{
  v2 = sub_100012A74(&qword_10008D1F0, &unk_100073718);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100012B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100012C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100012CCC(uint64_t a1)
{
  sub_100064FD0();
  if (v1 <= 0x3F)
  {
    sub_100012D50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100012D50(uint64_t a1)
{
  if (!qword_10008D278)
  {
    type metadata accessor for AlwaysShowSpeechEntity(255);
    sub_100002BD0(&qword_10008D280, &qword_1000737D8);
    sub_100012A74(&qword_10008D1A0, &unk_100073508);
    sub_1000084D8(&qword_10008D288, &qword_10008D280, &qword_1000737D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_100012E4C();
    v1 = sub_1000651A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10008D278);
    }
  }
}

unint64_t sub_100012E4C()
{
  result = qword_10008D290;
  if (!qword_10008D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D290);
  }

  return result;
}

uint64_t sub_100012F38()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008D2D8, &unk_100073838);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008D2E0, &qword_100073848);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for AlwaysShowSpeechEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_100012A74(&qword_10008D1A0, &unk_100073508);
  return sub_100064DC0();
}

uint64_t sub_1000132D4()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v34 = v26 - v1;
  v35 = sub_1000650D0();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_100003AD4(&qword_10008D2D8, &unk_100073838);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  v26[1] = v26 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - v15;
  v27 = v26 - v15;
  v17 = sub_1000651D0();
  v33 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v31 = sub_100003AD4(&qword_10008D2E0, &qword_100073848);
  sub_1000651B0();
  v32 = *(v18 + 56);
  v32(v16, 1, 1, v17);
  v19 = type metadata accessor for AlwaysShowSpeechEntity(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_100064D30();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  v30 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v28 = v2 + 104;
  v29 = v22;
  v22(v4);
  sub_100012A74(&qword_10008D1A0, &unk_100073508);
  v23 = v27;
  v31 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v32(v23, 1, 1, v33);
  v36 = 2;
  v24 = sub_1000653E0();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v21(v10, 1, 1, v20);
  v29(v4, v30, v35);
  sub_100064DD0();
  return v31;
}

uint64_t sub_1000137E0(uint64_t a1)
{
  v2 = type metadata accessor for AlwaysShowSpeechEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001383C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AlwaysShowSpeechEntity(0) + 20));
}

uint64_t sub_100013884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlwaysShowSpeechEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000138E8()
{
  result = qword_10008D310;
  if (!qword_10008D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D310);
  }

  return result;
}

unint64_t sub_10001393C()
{
  result = qword_10008D318;
  if (!qword_10008D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D318);
  }

  return result;
}

uint64_t sub_1000139AC()
{
  v0 = sub_1000652A0();
  sub_100003B54(v0, qword_10008F300);
  sub_100003B1C(v0, qword_10008F300);
  return sub_100065290();
}

void sub_100013A1C(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v16 = a2;
  v17 = a3;
  if (!a5)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v10 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v15[0] = 32;
    v15[1] = 0xE100000000000000;

    v19._countAndFlagsBits = a4;
    v19._object = a5;
    sub_1000653C0(v19);
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    sub_1000653C0(v20);

    v6 = v16;
    v5 = v17;
  }

  else
  {
LABEL_6:
  }

  log = sub_100065280();
  if (os_log_type_enabled(log, a1))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315138;
    v13 = sub_100013BA4(v6, v5, v15);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, log, a1, "%s", v11, 0xCu);
    sub_10001414C(v12);
  }

  else
  {
  }
}

unint64_t sub_100013BA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100013C70(v11, 0, 0, 1, a1, a2);
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
    sub_100014198(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001414C(v11);
  return v7;
}

unint64_t sub_100013C70(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100013D7C(a5, a6);
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
    result = sub_1000654D0();
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

void *sub_100013D7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100013DC8(a1, a2);
  sub_100013EF8(&off_1000894D8);
  return v3;
}

void *sub_100013DC8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100013FE4(v5, 0);
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

  result = sub_1000654D0();
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
        v10 = sub_1000653D0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013FE4(v10, 0);
        result = sub_1000654C0();
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

uint64_t sub_100013EF8(uint64_t result)
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

  result = sub_100014058(result, v11, 1, v3);
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

void *sub_100013FE4(uint64_t a1, uint64_t a2)
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

  sub_100003AD4(&qword_10008D320, &unk_1000738D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014058(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003AD4(&qword_10008D320, &unk_1000738D0);
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

uint64_t sub_10001414C(void *a1)
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

uint64_t sub_100014198(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000141FC()
{
  result = qword_10008D340;
  if (!qword_10008D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D340);
  }

  return result;
}

uint64_t type metadata accessor for SpokenResponsesEntity(uint64_t a1)
{
  result = qword_10008D4E0;
  if (!qword_10008D4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001429C()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F318);
  sub_100003B1C(v0, qword_10008F318);
  return sub_1000651B0();
}

uint64_t sub_100014300(uint64_t a1)
{
  v2 = type metadata accessor for SpokenResponsesEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100018DDC(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_100018D38(a1);
}

void (*sub_100014390(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100014404()
{
  result = qword_10008D350;
  if (!qword_10008D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D350);
  }

  return result;
}

uint64_t sub_100014458(uint64_t a1, uint64_t a2)
{
  v4 = sub_100018E40();
  v5 = sub_100018CF0(&qword_10008D398, type metadata accessor for SpokenResponsesEntity, &unk_100073C38);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000144F8()
{
  result = qword_10008D358;
  if (!qword_10008D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D358);
  }

  return result;
}

unint64_t sub_100014550()
{
  result = qword_10008D360;
  if (!qword_10008D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D360);
  }

  return result;
}

uint64_t sub_100014608(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100018E40();
  v6 = sub_100018E94();
  v7 = sub_100018CF0(&qword_10008D398, type metadata accessor for SpokenResponsesEntity, &unk_100073C38);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100014704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018408();
  *a1 = result;
  return result;
}

uint64_t sub_10001472C(uint64_t a1)
{
  v2 = sub_100014404();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001476C()
{
  result = qword_10008D368;
  if (!qword_10008D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D368);
  }

  return result;
}

id sub_100014804()
{
  result = [objc_opt_self() sharedController];
  qword_10008F330 = result;
  return result;
}

uint64_t sub_100014840()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F338);
  sub_100003B1C(v10, qword_10008F338);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_100014B30()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F350);
  sub_100003B1C(v0, qword_10008F350);
  return sub_1000651B0();
}

uint64_t sub_100014B94()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F368);
  v1 = sub_100003B1C(v0, qword_10008F368);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100014C54()
{
  result = swift_getKeyPath();
  qword_10008F380 = result;
  return result;
}

uint64_t sub_100014C7C()
{
  type metadata accessor for SpokenResponsesEntity(0);
}

uint64_t sub_100014CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[5] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[6] = swift_task_alloc();
  sub_100003AD4(&qword_10008D588, &qword_100074318);
  v3[7] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for SpokenResponsesEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008D590, &qword_100074320);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100014ECC, 0, 0);
}

uint64_t sub_100014ECC()
{
  sub_100064D90();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_100018CF0(&qword_10008D3A8, type metadata accessor for SpokenResponsesEntity, &unk_100073C78);
  *v1 = v0;
  v1[1] = sub_100014FC8;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_100018EE8, 0, v5, v2);
}

uint64_t sub_100014FC8()
{

  return _swift_task_switch(sub_1000150C4, 0, 0);
}

uint64_t sub_1000150C4()
{
  sub_100064D90();
  sub_100064D90();
  if (qword_10008C410 != -1)
  {
    swift_once();
  }

  v1 = qword_10008F380;
  *(v0 + 152) = qword_10008F380;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_1000084D8(&qword_10008D578, &qword_10008D4F8, &qword_100074268, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_100015208;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 176, v1, &type metadata for SpokenResponsesMode, v3);
}

uint64_t sub_100015208()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_100018D38(v2);

  if (v0)
  {
    v3 = sub_1000051E8;
  }

  else
  {
    v3 = sub_10001535C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001535C()
{
  v1 = v0[16];
  v2 = v0[15];
  v11 = v0[13];
  v12 = v0[17];
  v9 = v0[10];
  v10 = v0[14];
  v13 = v0[9];
  v14 = v0[8];
  v3 = v0[6];
  v4 = v0[5];
  sub_100064D90();
  v5 = sub_100065100();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_100065140();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_10001476C();
  sub_100018CF0(&qword_10008D3F0, type metadata accessor for SpokenResponsesEntity, &unk_100073E58);
  sub_100064CF0();
  (*(v2 + 16))(v1, v12, v10);
  sub_100064D10();
  sub_100064D40();
  (*(v13 + 8))(v9, v14);
  sub_100018D38(v11);
  (*(v2 + 8))(v12, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100015608()
{
  v0 = sub_100003AD4(&qword_10008D598, &qword_100074328);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10008C410 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for SpokenResponsesEntity(0);
  sub_100018CF0(&qword_10008D3F0, type metadata accessor for SpokenResponsesEntity, &unk_100073E58);
  sub_1000084D8(&qword_10008D5A0, &qword_10008D598, &qword_100074328, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000157B4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_100015828(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10001589C()
{
  if (qword_10008C410 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000158FC()
{
  result = qword_10008D380;
  if (!qword_10008D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D380);
  }

  return result;
}

unint64_t sub_100015954()
{
  result = qword_10008D388;
  if (!qword_10008D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D388);
  }

  return result;
}

uint64_t sub_100015A40@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C408 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F368);

  return sub_100008568(v3, a1);
}

uint64_t sub_100015AC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_100014CB0(a1, v5, v4);
}

uint64_t sub_100015B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000187B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100015BB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100015C4C;

  return sub_100015E28();
}

uint64_t sub_100015C4C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100015D80()
{
  if (qword_10008C3F0 != -1)
  {
    swift_once();
  }

  [qword_10008F330 setUseDeviceSpeakerForTTS:*(v0 + 16) + 1];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015E44()
{
  if (qword_10008C3F0 != -1)
  {
    swift_once();
  }

  if ([qword_10008F330 useDeviceSpeakerForTTS] - 1 >= 3)
  {
    sub_100064BE0();
    sub_100018CF0(&qword_10008D580, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_100064BD0();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_100015F94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000651C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  __chkstk_darwin(v8 - 8);
  sub_100065270();
  v9 = sub_100065260();
  sub_100065240();

  sub_1000294B4(3, a1);
  v10 = *(type metadata accessor for SpokenResponsesEntity(0) + 20);
  sub_100003AD4(&qword_10008D378, &qword_100073A80);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000651F0();
  sub_1000084D8(&qword_10008D578, &qword_10008D4F8, &qword_100074268, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100017BC8();
  result = sub_100065170();
  *(a1 + v10) = result;
  return result;
}

uint64_t sub_100016280(void *a1)
{
  a1[1] = sub_100018CF0(&qword_10008D390, type metadata accessor for SpokenResponsesEntity, &unk_100073D00);
  a1[2] = sub_100018CF0(&qword_10008D398, type metadata accessor for SpokenResponsesEntity, &unk_100073C38);
  result = sub_100018CF0(&qword_10008D3A0, type metadata accessor for SpokenResponsesEntity, &unk_100073CD0);
  a1[3] = result;
  return result;
}

uint64_t sub_1000163BC(uint64_t a1)
{
  v2 = qword_10008D328;
  v3 = off_10008D330;
  v4 = sub_100018CF0(&qword_10008D3A8, type metadata accessor for SpokenResponsesEntity, &unk_100073C78);

  return EntityURLRepresentation.init(_:)(v2, v3, a1, v4);
}

uint64_t sub_10001657C(uint64_t a1)
{
  v2 = sub_100018CF0(&qword_10008D3A0, type metadata accessor for SpokenResponsesEntity, &unk_100073CD0);

  return _UniqueEntityProvider.init(_:)(&unk_10007C0F8, 0, a1, v2);
}

uint64_t sub_10001664C(uint64_t a1)
{
  sub_100018CF0(&qword_10008D398, type metadata accessor for SpokenResponsesEntity, &unk_100073C38);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100016808@<X0>(uint64_t *a2@<X8>)
{
  sub_100018CF0(&qword_10008D3A0, type metadata accessor for SpokenResponsesEntity, &unk_100073CD0);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000168F4(uint64_t a1)
{
  v2 = sub_100018CF0(&qword_10008D3A8, type metadata accessor for SpokenResponsesEntity, &unk_100073C78);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000169B8(uint64_t a1)
{
  v2 = sub_100018CF0(&qword_10008D3F8, type metadata accessor for SpokenResponsesEntity, &unk_100073EB8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100016A34()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F388);
  sub_100003B1C(v10, qword_10008F388);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_100016D20()
{
  v0 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  __chkstk_darwin(v0 - 8);
  v46 = v30 - v1;
  v2 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v2 - 8);
  v45 = v30 - v3;
  v44 = sub_1000651C0();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v32 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100065370();
  __chkstk_darwin(v9 - 8);
  v36 = sub_1000651D0();
  v47 = *(v36 - 8);
  __chkstk_darwin(v36);
  sub_100003AD4(&qword_10008D568, &qword_1000742E8);
  v10 = sub_100003AD4(&qword_10008D570, &qword_1000742F0);
  v35 = v10;
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v33 = 2 * v11;
  v13 = swift_allocObject();
  v34 = v13;
  *(v13 + 16) = xmmword_1000738E0;
  v14 = (v13 + v12);
  v31 = *(v10 + 48);
  *v14 = 0;
  sub_100065360();
  v43 = "ASSISTANT_LOCK_SCREEN_ACCESS";
  v30[1] = v8;
  sub_100065200();
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v4 + 104);
  v30[2] = v4 + 104;
  v39 = v15;
  v16 = v32;
  v15(v32);
  v17 = v16;
  sub_1000651F0();
  v18 = *(v47 + 56);
  v47 += 56;
  v19 = v36;
  v18(v45, 1, 1, v36);
  v20 = v18;
  v38 = sub_100064FA0();
  v21 = *(v38 - 8);
  v37 = *(v21 + 56);
  v40 = v21 + 56;
  v37(v46, 1, 1, v38);
  v41 = v14;
  sub_100064FC0();
  v22 = v35;
  v31 = *(v35 + 48);
  v14[v11] = 1;
  sub_100065360();
  sub_100065200();
  v39(v17, v42, v44);
  sub_1000651F0();
  v23 = v45;
  v24 = v19;
  v25 = v20;
  v20(v45, 1, 1, v24);
  v26 = v46;
  v37(v46, 1, 1, v38);
  sub_100064FC0();
  v27 = &v41[v33];
  v33 = *(v22 + 48);
  *v27 = 2;
  sub_100065360();
  sub_100065200();
  v39(v17, v42, v44);
  sub_1000651F0();
  v25(v23, 1, 1, v36);
  v37(v26, 1, 1, v38);
  sub_100064FC0();
  v28 = sub_1000539A4(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10008F3A0 = v28;
  return result;
}

uint64_t sub_1000173BC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x737961776C61;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x726576656ELL;
  if (v3 == 1)
  {
    v5 = 0x737961776C61;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000100065900;
  }

  v8 = 0xE600000000000000;
  if (*a2 != 1)
  {
    v2 = 0x726576656ELL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000100065900;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100065500();
  }

  return v11 & 1;
}

unint64_t sub_1000174B0()
{
  result = qword_10008D418;
  if (!qword_10008D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D418);
  }

  return result;
}

Swift::Int sub_100017504()
{
  sub_100065550();
  sub_1000653B0();

  return sub_100065560();
}

uint64_t sub_1000175A4(uint64_t a1)
{
  sub_1000653B0();
}

Swift::Int sub_100017630(uint64_t a1)
{
  sub_100065550();
  sub_1000653B0();

  return sub_100065560();
}

unint64_t sub_1000176CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018CA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000176FC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C61;
  if (v2 != 1)
  {
    v4 = 0x726576656ELL;
    v3 = 0xE500000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x8000000100065900;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_10001775C()
{
  result = qword_10008D420;
  if (!qword_10008D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D420);
  }

  return result;
}

unint64_t sub_1000177B4()
{
  result = qword_10008D428;
  if (!qword_10008D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D428);
  }

  return result;
}

unint64_t sub_10001780C()
{
  result = qword_10008D430;
  if (!qword_10008D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D430);
  }

  return result;
}

uint64_t sub_10001786C@<X0>(void *a1@<X8>)
{
  v3 = 0xE600000000000000;
  v4 = 0x737961776C61;
  if (*v1 != 1)
  {
    v4 = 0x726576656ELL;
    v3 = 0xE500000000000000;
  }

  if (*v1)
  {
    v5._countAndFlagsBits = v4;
  }

  else
  {
    v5._countAndFlagsBits = 0xD000000000000011;
  }

  if (*v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x8000000100065900;
  }

  v5._object = v6;
  sub_1000653C0(v5);

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_100017918()
{
  result = qword_10008D438;
  if (!qword_10008D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D438);
  }

  return result;
}

unint64_t sub_100017970()
{
  result = qword_10008D440;
  if (!qword_10008D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D440);
  }

  return result;
}

unint64_t sub_1000179C8()
{
  result = qword_10008D448;
  if (!qword_10008D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D448);
  }

  return result;
}

unint64_t sub_100017A20()
{
  result = qword_10008D450;
  if (!qword_10008D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D450);
  }

  return result;
}

uint64_t sub_100017AAC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003B1C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100017BC8()
{
  result = qword_10008D458;
  if (!qword_10008D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D458);
  }

  return result;
}

uint64_t sub_100017C1C(uint64_t a1)
{
  v2 = sub_100017BC8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100017C6C()
{
  result = qword_10008D460;
  if (!qword_10008D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D460);
  }

  return result;
}

unint64_t sub_100017CC4()
{
  result = qword_10008D468;
  if (!qword_10008D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D468);
  }

  return result;
}

unint64_t sub_100017D1C()
{
  result = qword_10008D470;
  if (!qword_10008D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D470);
  }

  return result;
}

uint64_t sub_100017D70()
{
  if (qword_10008C420 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100017DCC(uint64_t a1)
{
  v2 = sub_100017A20();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for SpokenResponsesMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpokenResponsesMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100018000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000180D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100018188(uint64_t a1)
{
  sub_100064FD0();
  if (v1 <= 0x3F)
  {
    sub_10001820C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001820C(uint64_t a1)
{
  if (!qword_10008D4F0)
  {
    type metadata accessor for SpokenResponsesEntity(255);
    sub_100002BD0(&qword_10008D4F8, &qword_100074268);
    sub_100018CF0(&qword_10008D3A8, type metadata accessor for SpokenResponsesEntity, &unk_100073C78);
    sub_1000084D8(&qword_10008D500, &qword_10008D4F8, &qword_100074268, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_10001831C();
    v1 = sub_1000651A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10008D4F0);
    }
  }
}

unint64_t sub_10001831C()
{
  result = qword_10008D508;
  if (!qword_10008D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D508);
  }

  return result;
}

uint64_t sub_100018408()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008D550, &unk_1000742C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008D558, &qword_1000742D0);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for SpokenResponsesEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_100018CF0(&qword_10008D3A8, type metadata accessor for SpokenResponsesEntity, &unk_100073C78);
  return sub_100064DC0();
}

uint64_t sub_1000187B8()
{
  v35 = sub_1000650D0();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v26 - v7;
  v9 = sub_100003AD4(&qword_10008D550, &unk_1000742C0);
  __chkstk_darwin(v9 - 8);
  v11 = v26 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  v29 = v26 - v13;
  v15 = sub_1000651D0();
  v33 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v30 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100003AD4(&qword_10008D558, &qword_1000742D0);
  sub_1000651B0();
  v18 = *(v16 + 56);
  v32 = v16 + 56;
  v34 = v18;
  v18(v14, 1, 1, v15);
  v19 = type metadata accessor for SpokenResponsesEntity(0);
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = sub_100064D30();
  v21 = *(*(v20 - 8) + 56);
  v22 = v8;
  v21(v8, 1, 1, v20);
  v21(v6, 1, 1, v20);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v0 + 104);
  v26[1] = v0 + 104;
  v27 = v23;
  v23(v2);
  sub_100018CF0(&qword_10008D3A8, type metadata accessor for SpokenResponsesEntity, &unk_100073C78);
  v24 = v29;
  v31 = sub_100064DC0();
  v26[0] = sub_100003AD4(&qword_10008D560, &unk_1000742D8);
  sub_1000651B0();
  v34(v24, 1, 1, v33);
  v36 = 3;
  v21(v22, 1, 1, v20);
  v21(v6, 1, 1, v20);
  v27(v2, v28, v35);
  sub_100017BC8();

  sub_100064DB0();
  return v31;
}

unint64_t sub_100018CA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100089528;
  v6._object = a2;
  v4 = sub_1000654F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100018CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018D38(uint64_t a1)
{
  v2 = type metadata accessor for SpokenResponsesEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018D94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SpokenResponsesEntity(0) + 20));
}

uint64_t sub_100018DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpokenResponsesEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100018E40()
{
  result = qword_10008D5A8;
  if (!qword_10008D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D5A8);
  }

  return result;
}

unint64_t sub_100018E94()
{
  result = qword_10008D5B0;
  if (!qword_10008D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D5B0);
  }

  return result;
}

uint64_t sub_100018F88@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10001B264();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_1000194CC()
{
  v0 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100019554@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10001B264();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_100019AD8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10001B264();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10001A044@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10001B264();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10001A5C0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10001B264();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10001AB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v4);
}

uint64_t sub_10001ABB0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10001B264();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10001B0F4()
{
  v0 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10001B154@<X0>(uint64_t a1@<X8>)
{
  sub_1000652D0();
  result = sub_100065320();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001B1CC@<X0>(uint64_t a2@<X8>)
{
  sub_1000652D0();
  result = sub_100065320();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_10001B264()
{
  result = qword_10008D5E0;
  if (!qword_10008D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D5E0);
  }

  return result;
}

uint64_t sub_10001B2CC()
{
  sub_100002BD0(&qword_10008D5D0, &qword_100074610);
  sub_100002BD0(&qword_10008D5C8, &unk_10007B560);
  sub_100002BD0(&qword_10008D5C0, &unk_100074600);
  sub_100002BD0(&qword_10008D5B8, &unk_10007B4F0);
  sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001B42C()
{
  result = qword_10008D608;
  if (!qword_10008D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D608);
  }

  return result;
}

unint64_t sub_10001B480()
{
  result = qword_10008D610;
  if (!qword_10008D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D610);
  }

  return result;
}

uint64_t sub_10001B4D4()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F3A8);
  sub_100003B1C(v0, qword_10008F3A8);
  return sub_1000651B0();
}

void *sub_10001B56C@<X0>(void *a1@<X8>)
{
  result = sub_100064D90();
  *a1 = v3;
  return result;
}

uint64_t sub_10001B5A8(uint64_t *a1)
{

  sub_100064DA0();
}

void (*sub_10001B5F0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10001B664()
{
  result = qword_10008D618;
  if (!qword_10008D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D618);
  }

  return result;
}

uint64_t sub_10001B6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D9F4();
  v5 = sub_10001D994();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001B728()
{
  result = qword_10008D620;
  if (!qword_10008D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D620);
  }

  return result;
}

unint64_t sub_10001B780()
{
  result = qword_10008D628;
  if (!qword_10008D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D628);
  }

  return result;
}

uint64_t sub_10001B824(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001D9F4();
  v6 = sub_10001DA48();
  v7 = sub_10001D994();
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10001B8F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D238();
  *a1 = result;
  return result;
}

uint64_t sub_10001B918(uint64_t a1)
{
  v2 = sub_10001B664();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001B958()
{
  result = qword_10008D630;
  if (!qword_10008D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D630);
  }

  return result;
}

uint64_t sub_10001B9F0()
{
  v0 = sub_1000651C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100065210();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100065370();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000651D0();
  __chkstk_darwin(v6 - 8);
  sub_100003AD4(&qword_10008D640, qword_1000748A0);
  sub_100065360();
  sub_100065200();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000651F0();
  sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_100065190();
  qword_10008F3C0 = result;
  return result;
}

uint64_t sub_10001BC78()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F3C8);
  sub_100003B1C(v10, qword_10008F3C8);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10001BF68()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F3E0);
  sub_100003B1C(v0, qword_10008F3E0);
  return sub_1000651B0();
}

uint64_t sub_10001BFCC()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F3F8);
  v1 = sub_100003B1C(v0, qword_10008F3F8);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001C08C()
{
  result = swift_getKeyPath();
  qword_10008F410 = result;
  return result;
}

void (*sub_10001C0B8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_10001C12C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10001C1A0()
{
  if (qword_10008C450 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001C200()
{
  result = qword_10008D648;
  if (!qword_10008D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D648);
  }

  return result;
}

unint64_t sub_10001C258()
{
  result = qword_10008D650;
  if (!qword_10008D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D650);
  }

  return result;
}

uint64_t sub_10001C384@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C448 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F3F8);

  return sub_100008568(v3, a1);
}

uint64_t sub_10001C408(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_100045A64(a1, v5, v4);
}

uint64_t sub_10001C4B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D530();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001C4FC()
{
  result = qword_10008D658;
  if (!qword_10008D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D658);
  }

  return result;
}

unint64_t sub_10001C554()
{
  result = qword_10008D660;
  if (!qword_10008D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D660);
  }

  return result;
}

uint64_t sub_10001C5C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 hardwareButtonAssistantIsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001C66C(void *a1)
{
  if (qword_10008C430 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10008F3C0;
  v4 = *(v1 + 8);

  return v4();
}

unint64_t sub_10001C724()
{
  result = qword_10008D668;
  if (!qword_10008D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D668);
  }

  return result;
}

uint64_t sub_10001C778(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001CD38();
  *v4 = v2;
  v4[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001C82C()
{
  result = qword_10008D670;
  if (!qword_10008D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D670);
  }

  return result;
}

unint64_t sub_10001C884()
{
  result = qword_10008D678;
  if (!qword_10008D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D678);
  }

  return result;
}

unint64_t sub_10001C8DC()
{
  result = qword_10008D680;
  if (!qword_10008D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D680);
  }

  return result;
}

uint64_t sub_10001C930(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001CD38();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001C9E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001CD38();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001CA98()
{
  result = qword_10008D688;
  if (!qword_10008D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D688);
  }

  return result;
}

unint64_t sub_10001CAF0()
{
  result = qword_10008D690;
  if (!qword_10008D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D690);
  }

  return result;
}

unint64_t sub_10001CB48()
{
  result = qword_10008D698;
  if (!qword_10008D698)
  {
    sub_100002BD0(&qword_10008D6A0, qword_100074B40);
    sub_10001CAF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D698);
  }

  return result;
}

uint64_t sub_10001CBCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001C724();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10001CC88()
{
  result = qword_10008D6A8;
  if (!qword_10008D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6A8);
  }

  return result;
}

unint64_t sub_10001CCE0()
{
  result = qword_10008D6B0;
  if (!qword_10008D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6B0);
  }

  return result;
}

unint64_t sub_10001CD38()
{
  result = qword_10008D6B8;
  if (!qword_10008D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6B8);
  }

  return result;
}

uint64_t sub_10001CD8C()
{
  v0 = qword_10008D5F8;

  return v0;
}

unint64_t sub_10001CDC8()
{
  result = qword_10008D6C0;
  if (!qword_10008D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6C0);
  }

  return result;
}

uint64_t sub_10001CE1C(uint64_t a1)
{
  v2 = sub_10001C8DC();

  return EntityURLRepresentation.init(_:)(0xD000000000000043, 0x8000000100066DF0, a1, v2);
}

unint64_t sub_10001CE84()
{
  result = qword_10008D6C8;
  if (!qword_10008D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6C8);
  }

  return result;
}

unint64_t sub_10001CEDC()
{
  result = qword_10008D6D0;
  if (!qword_10008D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6D0);
  }

  return result;
}

unint64_t sub_10001CF34()
{
  result = qword_10008D6D8;
  if (!qword_10008D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6D8);
  }

  return result;
}

uint64_t sub_10001CF88@<X0>(uint64_t *a2@<X8>)
{
  sub_10001C554();
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001CFC8(uint64_t a1)
{
  sub_10001D994();
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10001D0B0(uint64_t a1)
{
  v2 = sub_10001C8DC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001D100()
{
  result = qword_10008D6F0;
  if (!qword_10008D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D6F0);
  }

  return result;
}

uint64_t sub_10001D154@<X0>(uint64_t a1@<X8>)
{
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(5, a1);
}

uint64_t sub_10001D1AC(uint64_t a1)
{
  v2 = sub_10001CF34();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001D238()
{
  v17[0] = sub_1000650D0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003AD4(&qword_10008D6F8, &unk_100074FC0);
  sub_1000651B0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_100064D30();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_10001C8DC();
  return sub_100064DC0();
}

uint64_t sub_10001D530()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D6F8, &unk_100074FC0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_100064D30();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10001C8DC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

unint64_t sub_10001D994()
{
  result = qword_10008D700;
  if (!qword_10008D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D700);
  }

  return result;
}

unint64_t sub_10001D9F4()
{
  result = qword_10008D718;
  if (!qword_10008D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D718);
  }

  return result;
}

unint64_t sub_10001DA48()
{
  result = qword_10008D720;
  if (!qword_10008D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D720);
  }

  return result;
}

unint64_t sub_10001DABC()
{
  result = qword_10008D738;
  if (!qword_10008D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D738);
  }

  return result;
}

unint64_t sub_10001DB10()
{
  result = qword_10008D740;
  if (!qword_10008D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D740);
  }

  return result;
}

uint64_t sub_10001DB64()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F418);
  sub_100003B1C(v0, qword_10008F418);
  return sub_1000651B0();
}

void (*sub_10001DBC8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000019C8;
}

unint64_t sub_10001DC3C()
{
  result = qword_10008D748;
  if (!qword_10008D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D748);
  }

  return result;
}

uint64_t sub_10001DC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F42C();
  v5 = sub_10001F0DC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001DD00()
{
  result = qword_10008D750;
  if (!qword_10008D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D750);
  }

  return result;
}

unint64_t sub_10001DD58()
{
  result = qword_10008D758;
  if (!qword_10008D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D758);
  }

  return result;
}

uint64_t sub_10001DE34(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001F42C();
  v6 = sub_10001F480();
  v7 = sub_10001F0DC();
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10001DF00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F130();
  *a1 = result;
  return result;
}

uint64_t sub_10001DF28(uint64_t a1)
{
  v2 = sub_10001DC3C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001DF68()
{
  result = qword_10008D760;
  if (!qword_10008D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D760);
  }

  return result;
}

unint64_t sub_10001DFC0()
{
  result = qword_10008D768;
  if (!qword_10008D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D768);
  }

  return result;
}

uint64_t sub_10001E014()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F430);
  sub_100003B1C(v10, qword_10008F430);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10001E300@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v4 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = sub_1000651D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_100064FA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065270();
  v13 = sub_100065260();
  sub_100065240();

  v14 = sub_100065260();
  sub_100065250();

  sub_100064F90();
  sub_1000651B0();
  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v10 + 16))(v3, v12, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  sub_100064FC0();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10001E608()
{
  result = qword_10008D770;
  if (!qword_10008D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D770);
  }

  return result;
}

uint64_t sub_10001E65C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001EC1C();
  *v4 = v2;
  v4[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001E710()
{
  result = qword_10008D778;
  if (!qword_10008D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D778);
  }

  return result;
}

unint64_t sub_10001E768()
{
  result = qword_10008D780;
  if (!qword_10008D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D780);
  }

  return result;
}

unint64_t sub_10001E7C0()
{
  result = qword_10008D788;
  if (!qword_10008D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D788);
  }

  return result;
}

uint64_t sub_10001E814(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001EC1C();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001E8C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001EC1C();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001E97C()
{
  result = qword_10008D790;
  if (!qword_10008D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D790);
  }

  return result;
}

unint64_t sub_10001E9D4()
{
  result = qword_10008D798;
  if (!qword_10008D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D798);
  }

  return result;
}

unint64_t sub_10001EA2C()
{
  result = qword_10008D7A0;
  if (!qword_10008D7A0)
  {
    sub_100002BD0(&qword_10008D7A8, qword_1000752A0);
    sub_10001E9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7A0);
  }

  return result;
}

uint64_t sub_10001EAB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001E608();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10001EB6C()
{
  result = qword_10008D7B0;
  if (!qword_10008D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7B0);
  }

  return result;
}

unint64_t sub_10001EBC4()
{
  result = qword_10008D7B8;
  if (!qword_10008D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7B8);
  }

  return result;
}

unint64_t sub_10001EC1C()
{
  result = qword_10008D7C0;
  if (!qword_10008D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7C0);
  }

  return result;
}

uint64_t sub_10001EC70()
{
  v0 = qword_10008D728;

  return v0;
}

unint64_t sub_10001ECAC()
{
  result = qword_10008D7C8;
  if (!qword_10008D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7C8);
  }

  return result;
}

uint64_t sub_10001ED00(uint64_t a1)
{
  v2 = sub_10001E7C0();

  return EntityURLRepresentation.init(_:)(0xD00000000000002DLL, 0x8000000100065920, a1, v2);
}

unint64_t sub_10001ED68()
{
  result = qword_10008D7D0;
  if (!qword_10008D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7D0);
  }

  return result;
}

unint64_t sub_10001EDC0()
{
  result = qword_10008D7D8;
  if (!qword_10008D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7D8);
  }

  return result;
}

unint64_t sub_10001EE18()
{
  result = qword_10008D7E0;
  if (!qword_10008D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7E0);
  }

  return result;
}

uint64_t sub_10001EE6C@<X0>(uint64_t *a2@<X8>)
{
  sub_10001DFC0();
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001EEAC(uint64_t a1)
{
  sub_10001F0DC();
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10001EF54()
{
  result = qword_10008D7E8;
  if (!qword_10008D7E8)
  {
    sub_100002BD0(&qword_10008D7F0, &qword_100075570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7E8);
  }

  return result;
}

uint64_t sub_10001EFB8(uint64_t a1)
{
  v2 = sub_10001E7C0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001F008()
{
  result = qword_10008D7F8;
  if (!qword_10008D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D7F8);
  }

  return result;
}

uint64_t sub_10001F060(uint64_t a1)
{
  v2 = sub_10001EE18();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001F0DC()
{
  result = qword_10008D800;
  if (!qword_10008D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D800);
  }

  return result;
}

uint64_t sub_10001F130()
{
  v17 = sub_1000650D0();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003AD4(&qword_10008D808, &qword_1000756C8);
  sub_1000651B0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_100064D30();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10001E7C0();
  return sub_100064DC0();
}

unint64_t sub_10001F42C()
{
  result = qword_10008D810;
  if (!qword_10008D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D810);
  }

  return result;
}

unint64_t sub_10001F480()
{
  result = qword_10008D818;
  if (!qword_10008D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D818);
  }

  return result;
}

unint64_t sub_10001F4F0()
{
  result = qword_10008D830;
  if (!qword_10008D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D830);
  }

  return result;
}

unint64_t sub_10001F544()
{
  result = qword_10008D838;
  if (!qword_10008D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D838);
  }

  return result;
}

uint64_t sub_10001F610()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F448);
  sub_100003B1C(v0, qword_10008F448);
  return sub_1000651B0();
}

double sub_10001F674@<D0>(_OWORD *a1@<X8>)
{
  sub_100064D90();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_10001F6B8@<D0>(_OWORD *a1@<X8>)
{
  sub_100064D90();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10001F6FC(uint64_t *a1)
{

  sub_100064DA0();
}

void (*sub_10001F7BC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10001F830()
{
  result = qword_10008D840;
  if (!qword_10008D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D840);
  }

  return result;
}

uint64_t sub_10001F884(uint64_t a1, uint64_t a2)
{
  v4 = sub_100029364();
  v5 = sub_100026764();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001F8F4()
{
  result = qword_10008D848;
  if (!qword_10008D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D848);
  }

  return result;
}

unint64_t sub_10001F94C()
{
  result = qword_10008D850;
  if (!qword_10008D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D850);
  }

  return result;
}

uint64_t sub_10001F9F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100029364();
  v6 = sub_1000293B8();
  v7 = sub_100026764();
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10001FABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000271DC();
  *a1 = result;
  return result;
}

uint64_t sub_10001FAE4(uint64_t a1)
{
  v2 = sub_10001F830();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001FB24()
{
  result = qword_10008D858;
  if (!qword_10008D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D858);
  }

  return result;
}

id sub_10001FBBC()
{
  result = [objc_opt_self() sharedController];
  qword_10008F460 = result;
  return result;
}

uint64_t sub_10001FBF8()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F468);
  sub_100003B1C(v10, qword_10008F468);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10001FEE8()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F480);
  sub_100003B1C(v0, qword_10008F480);
  return sub_1000651B0();
}

uint64_t sub_10001FF4C()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F498);
  v1 = sub_100003B1C(v0, qword_10008F498);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002000C()
{
  result = swift_getKeyPath();
  qword_10008F4B0 = result;
  return result;
}

uint64_t sub_100020034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[41] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[42] = swift_task_alloc();
  sub_100003AD4(&qword_10008DA38, &qword_1000768A8);
  v3[43] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DA00, &qword_100076780);
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_100020214, 0, 0);
}

uint64_t sub_100020214()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  v4 = sub_1000267BC();
  *v3 = v0;
  v3[1] = sub_1000202F8;
  v5 = *(v0 + 400);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 64, sub_100029424, 0, &type metadata for AnnounceNotificationEntity, v4);
}

uint64_t sub_1000202F8()
{

  return _swift_task_switch(sub_1000203F4, 0, 0);
}

uint64_t sub_1000203F4()
{
  sub_100064D90();
  v1 = *(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 432) = v3;
  *(v0 + 440) = v4;
  v6 = *(v0 + 152);
  *(v0 + 448) = v5;
  *(v0 + 456) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_100064D90();
  *(v0 + 489) = *(v0 + 488);
  if (qword_10008C490 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F4B0;
  *(v0 + 464) = qword_10008F4B0;

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  v9 = sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v8 = v0;
  v8[1] = sub_100020570;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 489, v7, &type metadata for Bool, v9);
}

uint64_t sub_100020570()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100020A20;
  }

  else
  {
    v2 = sub_100020760;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020760()
{
  v10 = v0[49];
  v2 = v0[47];
  v1 = v0[48];
  v11 = v0[50];
  v12 = v0[46];
  v15 = v0[45];
  v17 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_100064D90();
  v13 = v0[27];
  v5 = v0[28];
  v14 = v0[29];
  v16 = v0[30];
  v18 = v0[31];
  v0[32] = v0[26];
  v0[33] = v13;
  v0[34] = v5;
  v0[35] = v14;
  v0[36] = v16;
  v0[37] = v18;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_10001FB24();
  sub_100026B94();
  sub_100064CF0();
  (*(v1 + 16))(v10, v11, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v15 + 8))(v12, v17);

  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100020A20()
{
  (*(v0[48] + 8))(v0[50], v0[47]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100020B08(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_100003AD4(&qword_10008DA08, &qword_100076788);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  sub_100026B94();
  sub_1000084D8(&qword_10008DA10, &qword_10008DA08, &qword_100076788, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v5 + 8))(v7, v4);
}

void (*sub_100020C80(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_100020CF4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100020D90()
{
  result = qword_10008D870;
  if (!qword_10008D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D870);
  }

  return result;
}

unint64_t sub_100020DE8()
{
  result = qword_10008D878;
  if (!qword_10008D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D878);
  }

  return result;
}

uint64_t sub_100020EE4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_100020034(a1, v5, v4);
}

uint64_t sub_100020F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000274DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100020FD8()
{
  result = qword_10008D880;
  if (!qword_10008D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D880);
  }

  return result;
}

uint64_t sub_100021090()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isAnnounceNotificationEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100021158()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setAnnounceNotificationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000211F0()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F4B8);
  sub_100003B1C(v0, qword_10008F4B8);
  return sub_1000651B0();
}

uint64_t sub_100021254()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F4D0);
  v1 = sub_100003B1C(v0, qword_10008F4D0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100021314()
{
  result = swift_getKeyPath();
  qword_10008F4E8 = result;
  return result;
}

uint64_t sub_10002133C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[41] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[42] = swift_task_alloc();
  sub_100003AD4(&qword_10008DA30, &qword_100076870);
  v3[43] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DA00, &qword_100076780);
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_10002151C, 0, 0);
}

uint64_t sub_10002151C()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  v4 = sub_1000267BC();
  *v3 = v0;
  v3[1] = sub_100021600;
  v5 = *(v0 + 400);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 64, sub_100029428, 0, &type metadata for AnnounceNotificationEntity, v4);
}

uint64_t sub_100021600()
{

  return _swift_task_switch(sub_1000216FC, 0, 0);
}

uint64_t sub_1000216FC()
{
  sub_100064D90();
  v1 = *(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 432) = v3;
  *(v0 + 440) = v4;
  v6 = *(v0 + 152);
  *(v0 + 448) = v5;
  *(v0 + 456) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_100064D90();
  *(v0 + 489) = *(v0 + 488);
  if (qword_10008C4A8 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F4E8;
  *(v0 + 464) = qword_10008F4E8;

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  v9 = sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v8 = v0;
  v8[1] = sub_100021878;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 489, v7, &type metadata for Bool, v9);
}

uint64_t sub_100021878()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100029420;
  }

  else
  {
    v2 = sub_100021A68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100021A68()
{
  v10 = v0[49];
  v2 = v0[47];
  v1 = v0[48];
  v11 = v0[50];
  v12 = v0[46];
  v15 = v0[45];
  v17 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_100064D90();
  v13 = v0[27];
  v5 = v0[28];
  v14 = v0[29];
  v16 = v0[30];
  v18 = v0[31];
  v0[32] = v0[26];
  v0[33] = v13;
  v0[34] = v5;
  v0[35] = v14;
  v0[36] = v16;
  v0[37] = v18;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100020FD8();
  sub_100026B94();
  sub_100064CF0();
  (*(v1 + 16))(v10, v11, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v15 + 8))(v12, v17);

  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

void (*sub_100021D4C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_100021DC0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100021E5C()
{
  result = qword_10008D898;
  if (!qword_10008D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D898);
  }

  return result;
}

unint64_t sub_100021EB4()
{
  result = qword_10008D8A0;
  if (!qword_10008D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8A0);
  }

  return result;
}

uint64_t sub_100021FB0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10002133C(a1, v5, v4);
}

uint64_t sub_10002205C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027948();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000220A4()
{
  result = qword_10008D8A8;
  if (!qword_10008D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8A8);
  }

  return result;
}

uint64_t sub_10002215C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isAnnounceNotificationEnabledForPlatform:1];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100022228()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setAnnounceNotificationEnabledForPlatform:1 annouceNotificationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000222C4()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F4F0);
  sub_100003B1C(v0, qword_10008F4F0);
  return sub_1000651B0();
}

uint64_t sub_100022328()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F508);
  v1 = sub_100003B1C(v0, qword_10008F508);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000223E8()
{
  result = swift_getKeyPath();
  qword_10008F520 = result;
  return result;
}

uint64_t sub_100022410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[41] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[42] = swift_task_alloc();
  sub_100003AD4(&qword_10008DA28, &qword_100076838);
  v3[43] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DA00, &qword_100076780);
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000225F0, 0, 0);
}

uint64_t sub_1000225F0()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  v4 = sub_1000267BC();
  *v3 = v0;
  v3[1] = sub_1000226D4;
  v5 = *(v0 + 400);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 64, sub_10002942C, 0, &type metadata for AnnounceNotificationEntity, v4);
}

uint64_t sub_1000226D4()
{

  return _swift_task_switch(sub_1000227D0, 0, 0);
}

uint64_t sub_1000227D0()
{
  sub_100064D90();
  v1 = *(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 432) = v3;
  *(v0 + 440) = v4;
  v6 = *(v0 + 152);
  *(v0 + 448) = v5;
  *(v0 + 456) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_100064D90();
  *(v0 + 489) = *(v0 + 488);
  if (qword_10008C4C0 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F520;
  *(v0 + 464) = qword_10008F520;

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  v9 = sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v8 = v0;
  v8[1] = sub_10002294C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 489, v7, &type metadata for Bool, v9);
}

uint64_t sub_10002294C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100029420;
  }

  else
  {
    v2 = sub_100022B3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100022B3C()
{
  v10 = v0[49];
  v2 = v0[47];
  v1 = v0[48];
  v11 = v0[50];
  v12 = v0[46];
  v15 = v0[45];
  v17 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_100064D90();
  v13 = v0[27];
  v5 = v0[28];
  v14 = v0[29];
  v16 = v0[30];
  v18 = v0[31];
  v0[32] = v0[26];
  v0[33] = v13;
  v0[34] = v5;
  v0[35] = v14;
  v0[36] = v16;
  v0[37] = v18;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_1000220A4();
  sub_100026B94();
  sub_100064CF0();
  (*(v1 + 16))(v10, v11, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v15 + 8))(v12, v17);

  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

void (*sub_100022E20(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_100022E94(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100022F30()
{
  result = qword_10008D8C0;
  if (!qword_10008D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8C0);
  }

  return result;
}

unint64_t sub_100022F88()
{
  result = qword_10008D8C8;
  if (!qword_10008D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8C8);
  }

  return result;
}