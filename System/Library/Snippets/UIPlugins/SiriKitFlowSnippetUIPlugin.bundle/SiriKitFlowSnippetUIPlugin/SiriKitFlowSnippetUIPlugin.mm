char *sub_13D8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_5164();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_5044();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_14D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5164();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_5044();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_16D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_184C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5044();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5044();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for AppLaunchButton(uint64_t a1)
{
  result = qword_C108;
  if (!qword_C108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A98(uint64_t a1)
{
  result = sub_5164();
  if (v2 <= 0x3F)
  {
    result = sub_5044();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7C()
{
  v0 = sub_5194();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAAppsLaunchApp) init];
  type metadata accessor for AppLaunchButton(0);
  sub_5024();
  if (v5)
  {
    v6 = sub_51A4();
  }

  else
  {
    v6 = 0;
  }

  [v4 setLaunchId:v6];

  sub_5144();
  v7 = v4;
  sub_5174();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CD4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppLaunchButton(0);
  sub_5034();
  sub_2398();
  result = sub_5094();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v19[1] = a2;
  v19[0] = sub_5104();
  v5 = *(v19[0] - 8);
  v6 = __chkstk_darwin(v19[0]);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v11 = sub_2008(&qword_C140, &unk_5450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  sub_2050(v2, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_21CC(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v19[4] = v4;
  sub_50F4();
  sub_5084();
  sub_2294();
  sub_2340();
  v17 = v19[0];
  sub_50D4();
  (*(v5 + 8))(v8, v17);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2008(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B4()
{
  v1 = (type metadata accessor for AppLaunchButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_5164();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_5044();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2294()
{
  result = qword_C148;
  if (!qword_C148)
  {
    sub_22F8(&qword_C140, &unk_5450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C148);
  }

  return result;
}

uint64_t sub_22F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2340()
{
  result = qword_C150;
  if (!qword_C150)
  {
    sub_5104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C150);
  }

  return result;
}

unint64_t sub_2398()
{
  result = qword_C158;
  if (!qword_C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C158);
  }

  return result;
}

uint64_t sub_23EC()
{
  sub_22F8(&qword_C140, &unk_5450);
  sub_5104();
  sub_2294();
  sub_2340();
  return swift_getOpaqueTypeConformance2();
}

char *sub_2470(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_5164();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_5054();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_256C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5164();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_5054();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_2610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_26C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_2770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_2820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_28E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5054();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5054();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for ConfirmationView(uint64_t a1)
{
  result = qword_C1B8;
  if (!qword_C1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B30(uint64_t a1)
{
  result = sub_5164();
  if (v2 <= 0x3F)
  {
    result = sub_5054();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2C14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for ConfirmationView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3114(a1, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_32B4(v9, v12 + v10);
  *(v12 + v11) = a2;
  v13 = a2;
  v26 = a1;
  v22 = sub_2008(&qword_C140, &unk_5450);
  v28[3] = v22;
  v14 = sub_36D4(&qword_C1F8, &qword_C140, &unk_5450, &protocol conformance descriptor for Button<A>);
  v28[4] = v14;
  sub_344C(v28);
  v15 = v13;
  sub_50F4();
  sub_3114(a1, v9);
  v16 = swift_allocObject();
  sub_32B4(v9, v16 + v10);
  v17 = v22;
  v18 = v23;
  *(v16 + v11) = v23;
  v25 = a1;
  v27[3] = v17;
  v27[4] = v14;
  sub_344C(v27);
  v19 = v18;
  sub_50F4();
  return sub_5124();
}

uint64_t sub_2E7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_5194();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5144();
  sub_5184();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2F58@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmationView(0);
  a1();
  sub_2398();
  result = sub_5094();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_2FD4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5074();
  v7 = v6;
  sub_3114(v1, v4);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_32B4(v4, v10 + v8);
  *(v10 + v9) = v5;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_5134();
  sub_33C0();
  return sub_5114();
}

uint64_t sub_3114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3178()
{
  v1 = (type metadata accessor for ConfirmationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_5164();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = sub_5054();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_32B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3318@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2C14(v1 + v4, v6, v7, a1);
}

unint64_t sub_33C0()
{
  result = qword_C1F0;
  if (!qword_C1F0)
  {
    sub_5134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F0);
  }

  return result;
}

uint64_t *sub_344C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_34B0()
{
  v1 = (type metadata accessor for ConfirmationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_5164();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_5054();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_35E0()
{
  v1 = *(type metadata accessor for ConfirmationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_2E7C(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_36D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_3724(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_5164();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_5014();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_3820(uint64_t a1, uint64_t a2)
{
  v4 = sub_5164();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_5014();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_38C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5014();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_3C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5014();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PunchOutButton(uint64_t a1)
{
  result = qword_C268;
  if (!qword_C268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DE4(uint64_t a1)
{
  result = sub_5164();
  if (v2 <= 0x3F)
  {
    result = sub_5014();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_3EC8()
{
  v1 = sub_5194();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_4FE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2008(&qword_C2A0, qword_5548);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_4FB4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(SAUIAppPunchOut) init];
  type metadata accessor for PunchOutButton(0);
  v24 = v0;
  sub_4FF4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    return sub_4784(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = v15;
    sub_4FD4();
    sub_4FC4();
    (*(v5 + 8))(v7, v4);
    v18 = sub_51A4();

    [v17 setAceId:v18];

    sub_4FA4(v19);
    v21 = v20;
    [v17 setPunchOutUri:v20];

    sub_5144();
    v22 = v17;
    sub_5174();

    (*(v25 + 8))(v3, v26);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_4230@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PunchOutButton(0);
  sub_5004();
  sub_2398();
  result = sub_5094();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_42A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v19[1] = a2;
  v19[0] = sub_5104();
  v5 = *(v19[0] - 8);
  v6 = __chkstk_darwin(v19[0]);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v11 = sub_2008(&qword_C140, &unk_5450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  sub_4540(v2, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_46BC(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v19[4] = v4;
  sub_50F4();
  sub_5084();
  sub_2294();
  sub_2340();
  v17 = v19[0];
  sub_50D4();
  (*(v5 + 8))(v8, v17);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_4540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchOutButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_45A4()
{
  v1 = (type metadata accessor for PunchOutButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_5164();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_5014();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_46BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchOutButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4784(uint64_t a1)
{
  v2 = sub_2008(&qword_C2A0, qword_5548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4868@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_48B4(uint64_t a1)
{
  v36 = a1;
  v35 = type metadata accessor for ConfirmationView(0);
  __chkstk_darwin(v35);
  v33 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_5054();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PunchOutButton(0);
  __chkstk_darwin(v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5014();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppLaunchButton(0);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5044();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5064();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v36, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for SiriKitSnippets.appLaunchButton(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    (*(v11 + 16))(&v9[*(v7 + 20)], v13, v10);
    sub_5154();
    sub_4EFC(&qword_C358, type metadata accessor for AppLaunchButton, &unk_53FC);
    v19 = sub_50A4();
    sub_4F44(v9, type metadata accessor for AppLaunchButton);
    (*(v11 + 8))(v13, v10);
    return v19;
  }

  if (v18 == enum case for SiriKitSnippets.punchOutButton(_:))
  {
    (*(v15 + 96))(v17, v14);
    v21 = v27;
    v20 = v28;
    v22 = v29;
    (*(v28 + 32))(v27, v17, v29);
    (*(v20 + 16))(&v4[*(v30 + 20)], v21, v22);
    sub_5154();
    sub_4EFC(&qword_C350, type metadata accessor for PunchOutButton, &unk_54EC);
    v19 = sub_50A4();
    v23 = type metadata accessor for PunchOutButton;
    v24 = v4;
LABEL_7:
    sub_4F44(v24, v23);
    (*(v20 + 8))(v21, v22);
    return v19;
  }

  if (v18 == enum case for SiriKitSnippets.confirmationSnippet(_:))
  {
    (*(v15 + 96))(v17, v14);
    v21 = v31;
    v20 = v32;
    v22 = v34;
    (*(v32 + 32))(v31, v17, v34);
    v25 = v33;
    (*(v20 + 16))(&v33[*(v35 + 20)], v21, v22);
    sub_5154();
    sub_4EFC(&qword_C348, type metadata accessor for ConfirmationView, "=.");
    v19 = sub_50A4();
    v23 = type metadata accessor for ConfirmationView;
    v24 = v25;
    goto LABEL_7;
  }

  result = sub_51B4();
  __break(1u);
  return result;
}

uint64_t sub_4EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}