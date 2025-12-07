uint64_t sub_10000139C()
{
  v0 = sub_100001548(&qword_10000C148, qword_100004B30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_100001590();
  sub_10000470C();
  sub_1000015E4();
  sub_1000046FC();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000014C8();
  sub_1000046EC();
  return 0;
}

unint64_t sub_1000014C8()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

uint64_t sub_100001548(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001590()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_1000015E4()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    sub_100001648(&qword_10000C148, qword_100004B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

uint64_t sub_100001648(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001690()
{
  sub_100001648(&qword_10000C148, qword_100004B30);
  sub_1000015E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100001720@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v49 = sub_10000469C();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v40 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000046DC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000047BC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000046AC();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100001548(&qword_10000C170, &qword_100004BB8);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = v37 - v9;
  v11 = sub_100001548(&qword_10000C178, &qword_100004BC0);
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  __chkstk_darwin(v11);
  v53 = v37 - v13;
  v14 = sub_100001548(&qword_10000C180, &qword_100004BC8);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  __chkstk_darwin(v14);
  v42 = v37 - v16;
  v17 = sub_100001548(&qword_10000C188, &qword_100004BD0);
  v18 = *(v17 - 8);
  v50 = v17;
  v51 = v18;
  __chkstk_darwin(v17);
  v44 = v37 - v19;

  sub_100001548(&qword_10000C190, &qword_100004BD8);
  sub_100002110(&qword_10000C198, &qword_10000C190, &qword_100004BD8, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v20 = v10;
  sub_10000479C();
  sub_1000047AC();
  v37[0] = "ator.CalculatorWidget.control";
  sub_1000046CC();
  v39 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v1 + 104);
  v37[1] = v1 + 104;
  v38 = v21;
  v22 = v40;
  v23 = v49;
  v21(v40);
  sub_1000046BC();
  v24 = sub_100002110(&qword_10000C1A0, &qword_10000C170, &qword_100004BB8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v25 = v41;
  v26 = v20;
  sub_10000472C();
  v27 = *(v55 + 8);
  v55 += 8;
  v27(v8, v54);
  (*(v43 + 8))(v26, v25);
  sub_1000047AC();
  sub_1000046CC();
  v38(v22, v39, v23);
  sub_1000046BC();
  v56 = v25;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v42;
  v30 = v45;
  v31 = v53;
  sub_10000471C();
  v27(v8, v54);
  (*(v46 + 8))(v31, v30);
  v56 = v30;
  v57 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v44;
  v34 = v47;
  sub_10000474C();
  (*(v48 + 8))(v29, v34);
  v56 = v34;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  sub_10000473C();
  return (*(v51 + 8))(v33, v35);
}

uint64_t sub_100001E70()
{
  sub_100003D30();
  sub_100001548(&qword_10000C1A8, qword_100004BE0);
  sub_100002110(&qword_10000C1B0, &qword_10000C1A8, qword_100004BE0, &protocol conformance descriptor for Label<A, B>);
  sub_100002158();
  return sub_10000478C();
}

uint64_t sub_100001F84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000046DC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000047BC();
  __chkstk_darwin(v3 - 8);
  sub_1000047AC();
  sub_1000046CC();
  sub_1000047CC();
  sub_1000021AC();
  result = sub_10000475C();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1000020C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000476C();
  *a1 = result;
  return result;
}

uint64_t sub_100002110(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001648(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100002158()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

unint64_t sub_1000021AC()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100002200()
{
  sub_100001648(&qword_10000C188, &qword_100004BD0);
  sub_100001648(&qword_10000C180, &qword_100004BC8);
  sub_100001648(&qword_10000C178, &qword_100004BC0);
  sub_100001648(&qword_10000C170, &qword_100004BB8);
  sub_100002110(&qword_10000C1A0, &qword_10000C170, &qword_100004BB8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100002388()
{
  v0 = sub_100001548(&qword_10000C300, &qword_1000050A8);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10000469C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000046DC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000047BC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000046AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10000467C();
  sub_1000041AC(v10, static CalculatorAppView.typeDisplayRepresentation);
  sub_1000026D4(v10, static CalculatorAppView.typeDisplayRepresentation);
  sub_1000047AC();
  sub_1000046CC();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000046BC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10000466C();
}

uint64_t CalculatorAppView.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10000C120 != -1)
  {
    swift_once();
  }

  v0 = sub_10000467C();

  return sub_1000026D4(v0, static CalculatorAppView.typeDisplayRepresentation);
}

uint64_t sub_1000026D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static CalculatorAppView.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C120 != -1)
  {
    swift_once();
  }

  v2 = sub_10000467C();
  v3 = sub_1000026D4(v2, static CalculatorAppView.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000027B4()
{
  v0 = sub_100001548(&qword_10000C310, &qword_1000050B8);
  __chkstk_darwin(v0 - 8);
  v19 = &v17 - v1;
  v2 = sub_100001548(&qword_10000C300, &qword_1000050A8);
  __chkstk_darwin(v2 - 8);
  v18 = &v17 - v3;
  v17 = sub_10000469C();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000046DC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000047BC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000046AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_100001548(&qword_10000C318, &qword_1000050C0);
  v11 = *(sub_100001548(&qword_10000C320, &qword_1000050C8) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100004C10;
  sub_1000047AC();
  sub_1000046CC();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  sub_1000046BC();
  (*(v10 + 56))(v18, 1, 1, v9);
  v14 = sub_10000460C();
  (*(*(v14 - 8) + 56))(v19, 1, 1, v14);
  sub_10000461C();
  v15 = sub_10000429C(v13);
  swift_setDeallocating();
  sub_100004454(v13 + v12);
  result = swift_deallocClassInstance();
  static CalculatorAppView.caseDisplayRepresentations = v15;
  return result;
}

uint64_t *CalculatorAppView.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10000C128 != -1)
  {
    swift_once();
  }

  return &static CalculatorAppView.caseDisplayRepresentations;
}

uint64_t static CalculatorAppView.caseDisplayRepresentations.getter()
{
  if (qword_10000C128 != -1)
  {
    swift_once();
  }
}

BOOL CalculatorAppView.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008738;
  v6._object = a2;
  v4 = sub_1000047FC(v3, v6);

  return v4 != 0;
}

uint64_t sub_100002CF8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008798;
  v7._object = v3;
  v5 = sub_1000047FC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002D64()
{
  result = qword_10000C268;
  if (!qword_10000C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C268);
  }

  return result;
}

Swift::Int sub_100002DB8()
{
  sub_10000480C();
  sub_1000047DC();
  return sub_10000481C();
}

Swift::Int sub_100002E14(uint64_t a1)
{
  sub_10000480C();
  sub_1000047DC();
  return sub_10000481C();
}

unint64_t sub_100002E5C()
{
  result = qword_10000C270;
  if (!qword_10000C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C270);
  }

  return result;
}

unint64_t sub_100002EB4()
{
  result = qword_10000C278;
  if (!qword_10000C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C278);
  }

  return result;
}

unint64_t sub_100002F0C()
{
  result = qword_10000C280;
  if (!qword_10000C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C280);
  }

  return result;
}

unint64_t sub_100002F70()
{
  result = qword_10000C288;
  if (!qword_10000C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C288);
  }

  return result;
}

unint64_t sub_100002FC8()
{
  result = qword_10000C290;
  if (!qword_10000C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C290);
  }

  return result;
}

unint64_t sub_100003020()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

unint64_t sub_100003078()
{
  result = qword_10000C2A0;
  if (!qword_10000C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A0);
  }

  return result;
}

unint64_t sub_100003134()
{
  result = qword_10000C2A8;
  if (!qword_10000C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A8);
  }

  return result;
}

uint64_t sub_100003188(uint64_t a1)
{
  v2 = sub_100003134();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031D8()
{
  result = qword_10000C2B0;
  if (!qword_10000C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B0);
  }

  return result;
}

unint64_t sub_100003230()
{
  result = qword_10000C2B8;
  if (!qword_10000C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B8);
  }

  return result;
}

unint64_t sub_100003288()
{
  result = qword_10000C2C0;
  if (!qword_10000C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C0);
  }

  return result;
}

uint64_t sub_1000032DC(uint64_t a1)
{
  v2 = sub_100003078();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000332C()
{
  result = qword_10000C2C8;
  if (!qword_10000C2C8)
  {
    sub_100001648(&qword_10000C2D0, &qword_100004E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C8);
  }

  return result;
}

unint64_t sub_1000033A4()
{
  result = qword_10000C2D8;
  if (!qword_10000C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D8);
  }

  return result;
}

uint64_t sub_1000033FC()
{
  v0 = sub_10000469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000046DC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000047BC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000046AC();
  sub_1000041AC(v6, qword_10000CD70);
  sub_1000026D4(v6, qword_10000CD70);
  sub_1000047AC();
  sub_1000046CC();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000046BC();
}

uint64_t sub_1000035E8()
{
  v0 = sub_10000468C();
  sub_1000041AC(v0, qword_10000CD88);
  v1 = sub_1000026D4(v0, qword_10000CD88);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t (*sub_1000036B8(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000045CC();
  return sub_10000372C;
}

void sub_10000372C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000377C()
{
  result = qword_10000C2E0;
  if (!qword_10000C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2E0);
  }

  return result;
}

unint64_t sub_1000037D4()
{
  result = qword_10000C2E8;
  if (!qword_10000C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2E8);
  }

  return result;
}

unint64_t sub_10000382C()
{
  result = qword_10000C2F0;
  if (!qword_10000C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2F0);
  }

  return result;
}

uint64_t sub_100003994@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_1000026D4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100003A48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002158();
  *v5 = v2;
  v5[1] = sub_100003AFC;

  return OpenIntent.perform()(a1, a2, v6);
}

uint64_t sub_100003AFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003D30();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorAppView(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CalculatorAppView(_WORD *result, int a2, int a3)
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

uint64_t sub_100003D30()
{
  v0 = sub_10000463C();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001548(&qword_10000C2F8, &qword_1000050A0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v5;
  v6 = sub_100001548(&qword_10000C300, &qword_1000050A8);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_10000469C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000046DC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000047BC();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000046AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_100001548(&qword_10000C308, &qword_1000050B0);
  sub_1000047AC();
  sub_1000046CC();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_1000046BC();
  (*(v16 + 56))(v8, 1, 1, v15);
  v26[0] = 0;
  v17 = sub_1000045BC();
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100003134();
  return sub_1000045FC();
}

uint64_t *sub_1000041AC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000423C()
{
  sub_10000480C();
  sub_1000047DC();
  v0 = sub_10000481C();

  return sub_100004210(v0);
}

unint64_t sub_10000429C(uint64_t a1)
{
  v2 = sub_100001548(&qword_10000C320, &qword_1000050C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001548(&qword_10000C328, qword_1000050D0);
    v7 = sub_1000047EC();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1000044BC(v8, v5);
      result = sub_10000423C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_10000462C();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100004454(uint64_t a1)
{
  v2 = sub_100001548(&qword_10000C320, &qword_1000050C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000044BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001548(&qword_10000C320, &qword_1000050C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}