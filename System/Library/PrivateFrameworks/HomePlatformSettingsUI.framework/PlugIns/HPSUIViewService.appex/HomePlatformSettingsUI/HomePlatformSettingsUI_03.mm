uint64_t sub_10004FFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v25 = a3;
  v24 = a1;
  v28 = a7;
  swift_getAssociatedTypeWitness();
  v10 = sub_10008739C();
  v23[2] = *(swift_getAssociatedConformanceWitness() + 24);
  v27 = v10;
  v30 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[1] = AssociatedTypeWitness;
  v32 = &type metadata for AnyView;
  WitnessTable = swift_getWitnessTable();
  v23[0] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_100086FBC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v23 - v16;
  v18 = *(a6 + 56);
  swift_unknownObjectRetain();
  v19 = v18(a5, a6);
  swift_unknownObjectRelease();
  if (!v19)
  {
    v19 = sub_10008732C();
  }

  v30 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = v24;
  *(v20 + 40) = a2;
  *(v20 + 48) = v25 & 1;
  *(v20 + 56) = v26;

  swift_unknownObjectRetain();
  sub_100086FAC();
  v29 = &protocol witness table for AnyView;
  swift_getWitnessTable();
  sub_10004EDD8();
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_10004EDD8();
  return (v21)(v17, v11);
}

void *sub_10005032C@<X0>(void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1000503D4(AssociatedTypeWitness, &v8, AssociatedConformanceWitness);
  *a4 = v8;
  return result;
}

uint64_t sub_1000503D4@<X0>(uint64_t a2@<X6>, uint64_t *a3@<X8>, uint64_t a4)
{
  v6 = (*(a4 + 88))(a2, a4);
  if (v6 && (v6 >> 62 ? (v7 = sub_10008793C()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 >= 1))
  {
    v8 = swift_unknownObjectRetain();
    sub_100004A04(v8, a2, a4);
    v10 = type metadata accessor for BetaSettingsMultiSeedingRowView(0, a2, a4, v9);
    WitnessTable = swift_getWitnessTable();
    v12 = sub_100059858(v10, WitnessTable);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_unknownObjectRetain();
    sub_10004EDF0(v14, 0, a2, a4);
    v16 = type metadata accessor for BetaSettingsSeedingRowView(0, a2, a4, v15);
    v17 = swift_getWitnessTable();
    v12 = sub_100059858(v16, v17);
    swift_unknownObjectRelease();
  }

  *a3 = v12;
  return result;
}

uint64_t sub_100050568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[1] = a7;
  v23[2] = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v23[3] = type metadata accessor for BetaProgramsEnrollmentSelectionView(255, a5, a6, v13);
  v23[4] = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  v23[5] = swift_getWitnessTable();
  v14 = sub_1000868DC();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v23 - v19;
  sub_10004F150(a1, a2, a3, a4, a5, a6, v18);
  swift_getWitnessTable();
  sub_10004EDD8();
  v21 = *(v15 + 8);
  v21(v18, v14);
  sub_10004EDD8();
  return (v21)(v20, v14);
}

uint64_t sub_10005077C(char a1, uint64_t a2)
{
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  return v3;
}

uint64_t sub_100050850@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100001EEC(&qword_1000AF5B0, &qword_10008C1A0);
  sub_100051528();
  sub_100086C6C();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  v13 = (a6 + *(sub_100001EEC(&qword_1000AF5D0, &unk_10008C1B0) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1000515E8;
  v13[3] = v12;

  return swift_unknownObjectRetain();
}

uint64_t sub_10005095C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001EEC(&qword_1000AF5C8, &qword_10008C1A8);
  sub_100006454(&qword_1000AF5C0, &qword_1000AF5C8, &qword_10008C1A8, &protocol conformance descriptor for TupleView<A>);
  return sub_100086FEC();
}

uint64_t sub_100050A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1;
  sub_100050AD8(a1, a2, a3, a4, a5, &v21);
  v13 = v21;
  v12 = v22;
  v14 = v23;
  v20 = v24;
  sub_100050C14(v10, a2, a3, a4, a5, &v21);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  *a6 = v13;
  *(a6 + 8) = v12;
  *(a6 + 16) = v14;
  *(a6 + 24) = v20;
  *(a6 + 40) = v15;
  *(a6 + 48) = v16;
  *(a6 + 56) = v17;
  *(a6 + 64) = v18;
}

uint64_t sub_100050AD8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 4605519;
  v21._object = 0xE300000000000000;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v13.super.isa = v12;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v14 = sub_100085FFC(v21, v22, v13, v23, 0, v19);
  v16 = v15;

  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = (v20 & 1) == 0;
  *(a6 + 24) = sub_100051650;
  *(a6 + 32) = v17;

  return swift_unknownObjectRetain();
}

uint64_t sub_100050C14@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v21._object = 0x800000010008F660;
  v21._countAndFlagsBits = 0xD000000000000015;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v13.super.isa = v12;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v14 = sub_100085FFC(v21, v22, v13, v23, 0, v19);
  v16 = v15;

  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v20;
  *(a6 + 24) = sub_100051608;
  *(a6 + 32) = v17;

  return swift_unknownObjectRetain();
}

void *sub_100050D54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10008672C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v26[-v14];
  v16 = a1 & 1;
  v30 = a1;
  v31 = a2;
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  if (v29 == 1)
  {
    (*(a5 + 72))(a4, a5);
    (*(v10 + 104))(v13, enum case for BetaEnrollment.State.enrolled(_:), v9);
    sub_100005AA0(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
    v27 = sub_10008713C();
    v28 = a1 & 1;
    v17 = a5;
    v18 = a4;
    v19 = v10;
    v20 = v10;
    v21 = a2;
    v22 = *(v19 + 8);
    v22(v13, v9);
    v22(v15, v9);
    a2 = v21;
    v10 = v20;
    a4 = v18;
    a5 = v17;
    v16 = v28;
    if ((v27 & 1) == 0)
    {
      (*(v17 + 96))(a4, v17);
    }
  }

  v30 = v16;
  v31 = a2;
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  result = sub_100086E8C();
  if ((v29 & 1) == 0)
  {
    (*(a5 + 72))(a4, a5);
    (*(v10 + 104))(v13, enum case for BetaEnrollment.State.notEnrolled(_:), v9);
    sub_100005AA0(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
    v24 = sub_10008713C();
    v25 = *(v10 + 8);
    v25(v13, v9);
    result = (v25)(v15, v9);
    if ((v24 & 1) == 0)
    {
      return (*(a5 + 112))(a4, a5);
    }
  }

  return result;
}

uint64_t sub_10005112C@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[5];
  *a2 = sub_100086B4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_10004F474(v6, v4, v5, a2 + 24);
}

uint64_t sub_1000511A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000511E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100051228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100051268(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003200(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsEnrollmentSelectionView(255, v1, v2, v3);
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  swift_getWitnessTable();
  sub_1000868DC();
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10008694C();
  sub_100086B9C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100051528()
{
  result = qword_1000AF5B8;
  if (!qword_1000AF5B8)
  {
    sub_100003200(&qword_1000AF5B0, &qword_10008C1A0);
    sub_100006454(&qword_1000AF5C0, &qword_1000AF5C8, &qword_10008C1A8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5B8);
  }

  return result;
}

uint64_t sub_100051610()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1000516B8()
{
  result = qword_1000AF5D8;
  if (!qword_1000AF5D8)
  {
    sub_100003200(&qword_1000AF5D0, &unk_10008C1B0);
    sub_100006454(&qword_1000AF5E0, qword_1000AF5E8, &unk_10008C1C0, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5D8);
  }

  return result;
}

uint64_t sub_10005177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v27 = a5;
  v25 = a9;
  v26 = a1;
  v23 = a4;
  v24 = a10;
  v31[0] = a11;
  v31[1] = a12;
  v31[2] = a13;
  v31[3] = a14;
  v31[4] = a15;
  v31[5] = a16;
  v31[6] = a17;
  v19 = type metadata accessor for DisclosureGroupPicker.Selection(0, v31);
  __chkstk_darwin(v19);
  v21 = (&v23 - v20);
  *v21 = a2;
  v21[1] = a3;
  v21[2] = v23;
  swift_storeEnumTagMultiPayload();
  return sub_100051908(v26, v21, v27, v28, v29, v30, v24, a11, v25, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1000518AC()
{
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086EAC();
  return v1;
}

uint64_t sub_100051908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v38 = 0;
  sub_100086E7C();
  v19 = v32;
  *(a9 + 16) = v31;
  *(a9 + 24) = v19;
  *a9 = a3;
  *(a9 + 8) = a1;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  v20 = type metadata accessor for DisclosureGroupPicker(0, &v31);
  v21 = (a9 + v20[22]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + v20[23]);
  *v22 = a6;
  v22[1] = a7;
  v23 = v20[21];
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  v24 = type metadata accessor for DisclosureGroupPicker.Selection(0, &v31);
  return (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
}

uint64_t sub_100051A54(uint64_t a1)
{
  sub_10008767C();
  result = sub_100086F8C();
  if (v2 <= 0x3F)
  {
    sub_10008756C();
    result = sub_100086F8C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100051AF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v6 = 24;
  if (v5 > 0x18)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 < 2)
    {
LABEL_28:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_28;
  }

LABEL_17:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_100051C50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  if (v7 <= 0x18)
  {
    v7 = 24;
  }

  v8 = v7 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_42:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v7] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_27;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_100051E58(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v8 = type metadata accessor for DisclosureGroupPicker.SelectAllConfig(319, &v18);
  if (v9 <= 0x3F)
  {
    v25 = 0;
    v30 = v8;
    v10 = sub_10008739C();
    if (v11 <= 0x3F)
    {
      v26 = 0;
      v31 = v10;
      sub_10005225C();
      if (v13 <= 0x3F)
      {
        v27 = 0;
        v32 = v12;
        v18 = v1;
        v19 = v2;
        v20 = v3;
        v21 = v4;
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v14 = type metadata accessor for DisclosureGroupPicker.Selection(319, &v18);
        if (v15 <= 0x3F)
        {
          v28 = 0;
          v33 = v14;
          v16 = sub_1000522AC();
          if (v17 <= 0x3F)
          {
            v29 = 0;
            v34 = v16;
            v35 = v16;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100051F78(unint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v5;
  }

  v6 = v5 + ((v4 + 16) & ~v4);
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v9 = ((((((v4 & 0xF8 ^ 0x1F8u) & (v4 + 32)) + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  v11 = a2 - 2147483646;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else if (v13 == 2)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
LABEL_7:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v7 >= 0xFFFFFFFF)
      {
        LODWORD(v7) = -1;
      }

      return (v7 + 1);
    }
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v15) ^ 0x80000000;
}

int *sub_1000520B4(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v6 = v5 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = ((((((*(v4 + 80) & 0xF8 ^ 0x1F8u) & (*(v4 + 80) + 32)) + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (((((((*(v4 + 80) & 0xF8 ^ 0x1F8) & (*(v4 + 80) + 32)) + v6 + 8) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v11 = a2 & 0x7FFFFFFF;
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    if (v7)
    {
      v13 = result;
      bzero(result, v7);
      result = v13;
      *v13 = v11;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v7) = v12;
      }

      else
      {
        *(result + v7) = v12;
      }
    }

    else if (v8)
    {
      *(result + v7) = v12;
    }

    return result;
  }

  v8 = 0;
  if (a2 < 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v8 <= 1)
  {
    if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (v8 == 2)
  {
    *(result + v7) = 0;
    goto LABEL_31;
  }

  *(result + v7) = 0;
  if (a2)
  {
LABEL_32:
    *((result & 0xFFFFFFFFFFFFFFF8) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10005225C()
{
  if (!qword_1000AF6F0)
  {
    v0 = sub_100086EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF6F0);
    }
  }
}

unint64_t sub_1000522AC()
{
  result = qword_1000AF6F8[0];
  if (!qword_1000AF6F8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1000AF6F8);
  }

  return result;
}

uint64_t sub_100052304(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100052394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100052460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = *(a1 - 8);
  *&v52 = *(v50 + 64);
  __chkstk_darwin(a1);
  v49 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100003200(&qword_1000AF780, &qword_10008C310);
  v51 = (a1 + 40);
  v56 = *(a1 + 16);
  v4 = a1;
  v46 = a1;
  v5 = sub_10008739C();
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  v53 = *(&v56 + 1);
  v6 = *(v4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(v4 + 32);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v70 = &protocol witness table for _FlexFrameLayout;
  v8 = swift_getWitnessTable();
  v9 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v67 = v8;
  v68 = v9;
  swift_getWitnessTable();
  v10 = sub_100086EFC();
  v11 = sub_10008697C();
  v12 = swift_getWitnessTable();
  v13 = sub_100056224();
  v62 = v10;
  v63 = v11;
  v64 = v12;
  v65 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = swift_getWitnessTable();
  v16 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v5;
  v63 = AssociatedTypeWitness;
  v64 = OpaqueTypeMetadata2;
  v65 = v15;
  v66 = AssociatedConformanceWitness;
  sub_100086FBC();
  swift_getTupleTypeMetadata3();
  v18 = sub_10008705C();
  v45 = v18;
  v19 = v46;
  v20 = *(v46 + 56);
  v44 = swift_getWitnessTable();
  v62 = *(&v56 + 1);
  v63 = v18;
  v64 = v20;
  v65 = v44;
  v21 = sub_10008694C();
  v47 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v41 - v25;
  v27 = v55;
  v43 = sub_1000518AC();
  v42 = v28;
  v41[3] = v29;
  v30 = v50;
  v31 = v49;
  v32 = v19;
  (*(v50 + 16))(v49, v27, v19);
  v33 = (*(v30 + 80) + 72) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *&v35 = v48;
  *(&v35 + 1) = *v51;
  v52 = v35;
  *(v34 + 16) = v56;
  *(v34 + 32) = v35;
  *(v34 + 48) = v16;
  *(v34 + 56) = v20;
  v36 = v32;
  v37 = *(v32 + 64);
  *(v34 + 64) = v37;
  (*(v30 + 32))(v34 + v33, v31, v36);
  *&v38 = v16;
  *(&v38 + 1) = v20;
  v59 = v38;
  v57 = v56;
  v58 = v52;
  v60 = v37;
  v61 = v55;
  sub_10008692C();
  swift_getWitnessTable();
  sub_10004EDD8();
  v39 = *(v47 + 8);
  v39(v24, v21);
  sub_10004EDD8();
  return (v39)(v26, v21);
}

uint64_t sub_100052AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7;
  v27 = a8;
  v24 = a3;
  v25 = a5;
  v23[0] = a4;
  v28 = a1;
  v29 = a9;
  sub_100003200(&qword_1000AF780, &qword_10008C310);
  v11 = sub_10008739C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  v23[1] = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v40 = &protocol witness table for _FlexFrameLayout;
  v37 = swift_getWitnessTable();
  v38 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  swift_getWitnessTable();
  sub_100086EFC();
  sub_10008697C();
  swift_getWitnessTable();
  sub_100056224();
  v30 = v11;
  v31 = AssociatedTypeWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getTupleTypeMetadata3();
  v13 = sub_10008705C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v23 - v18;
  v30 = a2;
  v31 = v24;
  OpaqueTypeMetadata2 = v23[0];
  v33 = v25;
  AssociatedConformanceWitness = a6;
  v35 = v26;
  v36 = v27;
  v20 = type metadata accessor for DisclosureGroupPicker(0, &v30);
  sub_100052F00(v20, v17);
  swift_getWitnessTable();
  sub_10004EDD8();
  v21 = *(v14 + 8);
  v21(v17, v13);
  sub_10004EDD8();
  return (v21)(v19, v13);
}

uint64_t sub_100052F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = a1;
  v2 = a1 - 8;
  v58 = *(a1 - 8);
  __chkstk_darwin(a1);
  v56 = v3;
  v57 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v2 + 24);
  v5 = sub_10008739C();
  v6 = *(v2 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(v2 + 40);
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  v54 = v8;
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v78 = &protocol witness table for _FlexFrameLayout;
  v9 = swift_getWitnessTable();
  v10 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v75 = v9;
  v76 = v10;
  swift_getWitnessTable();
  v11 = sub_100086EFC();
  v12 = sub_10008697C();
  v13 = swift_getWitnessTable();
  v14 = sub_100056224();
  v50 = v11;
  v70 = v11;
  v71 = v12;
  v49 = v12;
  v47 = v13;
  v72 = v13;
  v73 = v14;
  v45 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = swift_getWitnessTable();
  v60 = v6;
  v55 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = v5;
  v70 = v5;
  v71 = AssociatedTypeWitness;
  v18 = v53;
  v59 = AssociatedTypeWitness;
  v48 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeMetadata2;
  v73 = v16;
  v46 = v16;
  v74 = AssociatedConformanceWitness;
  v19 = sub_100086FBC();
  v51 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v41 - v23;
  v24 = 0;
  v25 = *v18;
  v26 = *(v2 + 32);
  v42 = *(v2 + 48);
  v43 = *(v2 + 64);
  v44 = v25;
  if ((v25 - 3) <= 1)
  {
    sub_1000537A4(v63, &v70);
  }

  v53 = v24;
  v67[0] = *(v18 + 1);
  v27 = v58;
  v28 = v57;
  v29 = v63;
  (*(v58 + 16))(v57, v18, v63);
  v30 = (*(v27 + 80) + 72) & ~*(v27 + 80);
  v31 = swift_allocObject();
  *&v32 = v55;
  *(&v32 + 1) = v26;
  *&v33 = v54;
  *(&v33 + 1) = v42;
  *(v31 + 16) = v32;
  *(v31 + 32) = v33;
  *(v31 + 48) = v60;
  *(v31 + 56) = v43;
  (*(v27 + 32))(v31 + v30, v28, v29);

  v70 = v50;
  v71 = v49;
  v72 = v47;
  v73 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100086FAC();
  v69[1] = OpaqueTypeConformance2;
  v35 = swift_getWitnessTable();
  v36 = v52;
  sub_10004EDD8();
  v37 = v51;
  v38 = *(v51 + 8);
  v38(v22, v19);
  if ((v44 - 1) > 1)
  {
    v39 = 0;
  }

  else
  {
    sub_1000537A4(v63, &v70);
    v39 = v70;
  }

  v69[0] = v53;
  v70 = v69;
  (*(v37 + 16))(v22, v36, v19);
  v68 = v39;
  v71 = v22;
  v72 = &v68;
  v67[0] = sub_100001EEC(&qword_1000AF780, &qword_10008C310);
  v67[1] = v19;
  v67[2] = v67[0];
  v64 = sub_100056440();
  v65 = v35;
  v66 = v64;
  sub_10004B528(&v70, 3uLL, v67);

  v38(v36, v19);

  v38(v22, v19);
}

uint64_t sub_100053630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22[-1] - v9;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v17;
  v18 = type metadata accessor for DisclosureGroupPicker(0, v22);
  (*(a1 + *(v18 + 88)))();
  sub_10004EDD8();
  v19 = *(v5 + 8);
  v19(v8, a3);
  sub_10004EDD8();
  return (v19)(v10, a3);
}

uint64_t sub_1000537A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = __chkstk_darwin(v3);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v49 - v6;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v66 = v8;
  v67 = v7;
  v60 = v9;
  v68 = v9;
  v69 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v13;
  v14 = type metadata accessor for DisclosureGroupPicker.Selection(0, &v66);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v49 - v16);
  v18 = *(a1 + 84);
  v19 = v61;
  (*(v15 + 16))(v17, &v61[v18], v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v15 + 8))(v17, v14);
    result = sub_100086F5C();
    *v62 = result;
    return result;
  }

  v20 = v19;
  v22 = v17[1];
  v21 = v17[2];
  v54 = *v17;
  v55 = v21;
  v23 = v8;
  v52 = v7;
  v24 = v7;
  v25 = v60;
  v26 = v10;
  v51 = v11;
  v27 = sub_1000548EC(v20, v8, v24, v60, v10, v11, v12, v13);
  v29 = v28;
  v30 = v25;
  v31 = v13;
  if (qword_1000ADB00 != -1)
  {
    swift_once();
    v30 = v25;
  }

  v66 = qword_1000B37F8;
  v67 = unk_1000B3800;
  LOBYTE(v68) = byte_1000B3808;
  v69 = qword_1000B3810;
  v32 = *v20;
  if (v32 <= 1)
  {
    if (!*v20)
    {

      v42 = sub_100086F5C();

      *v62 = v42;
      return result;
    }

    v53 = v22;
  }

  else
  {
    v33 = v20;
    v53 = v22;
    if (v32 != 3)
    {
      v34 = v30;
      v50 = v31;
      v60 = v12;
      v63 = v54;
      v64 = v22;
      v65 = v55;
      sub_10008756C();
      sub_100086F8C();

      sub_100086F6C();
      v35 = sub_10008750C();

      if (v35 == sub_10008736C())
      {

        v27 = sub_100054C70(v33, v23, v52, v34, v26, v51, v60, v50);
        v29 = v36;
        if (qword_1000ADB08 != -1)
        {
          swift_once();
        }

        v38 = qword_1000B3818;
        v37 = unk_1000B3820;
        v39 = byte_1000B3828;
        v40 = qword_1000B3830;

        v66 = v38;
        v67 = v37;
        LOBYTE(v68) = v39;
        v69 = v40;
      }

      goto LABEL_15;
    }
  }

LABEL_15:
  v43 = v62;
  v44 = swift_allocObject();
  *(v44 + 16) = v27;
  *(v44 + 24) = v29;
  __chkstk_darwin(v44);
  *(&v49 - 2) = &v66;

  v45 = v57;
  sub_100086ECC();
  v47 = v58;
  v46 = v59;
  (*(v58 + 16))(v56, v45, v59);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  v48 = sub_100086F5C();

  (*(v47 + 8))(v45, v46);
  *v43 = v48;
}

uint64_t sub_100053DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a7;
  v31 = a8;
  v28 = a4;
  v29 = a6;
  v32 = a1;
  v33 = a2;
  v34 = a9;
  v26 = a3;
  v27 = a10;
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v45 = &protocol witness table for _FlexFrameLayout;
  v42 = swift_getWitnessTable();
  v43 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  swift_getWitnessTable();
  v11 = sub_100086EFC();
  v12 = sub_10008697C();
  v13 = swift_getWitnessTable();
  v14 = sub_100056224();
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v25 - v20;
  v35 = v26;
  v36 = v28;
  v37 = a5;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v27;
  v22 = type metadata accessor for DisclosureGroupPicker(0, &v35);
  sub_100054114(v32, v22, v19);
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  swift_getOpaqueTypeConformance2();
  sub_10004EDD8();
  v23 = *(v16 + 8);
  v23(v19, OpaqueTypeMetadata2);
  sub_10004EDD8();
  return (v23)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_100054114@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v71 = a3;
  v4 = sub_10008697C();
  v53 = v4;
  v70 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v69 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = a2 + 3;
  *&v68 = a2 + 5;
  v64 = a2[2];
  v63 = *(v64 - 8);
  v65 = *(v63 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v9;
  v61 = *(a2 - 1);
  v10 = *(v61 + 64);
  __chkstk_darwin(v7);
  v46 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2[4];
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  v11 = sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v87 = &protocol witness table for _FlexFrameLayout;
  v12 = swift_getWitnessTable();
  v13 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v84 = v12;
  v85 = v13;
  v59 = v11;
  v58 = swift_getWitnessTable();
  v14 = sub_100086EFC();
  v54 = v14;
  v60 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = &v46 - v15;
  v16 = swift_getWitnessTable();
  v51 = v16;
  v50 = sub_100056224();
  v80 = v14;
  v81 = v4;
  v82 = v16;
  v83 = v50;
  v55 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v17 = __chkstk_darwin(OpaqueTypeMetadata2);
  v48 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v46 - v19;
  v20 = v61;
  (*(v61 + 16))(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v72, a2);
  v21 = v63;
  v22 = v9;
  v23 = v67;
  v24 = v64;
  (*(v63 + 16))(v22, v67, v64);
  v25 = v20;
  v26 = (*(v20 + 80) + 72) & ~*(v20 + 80);
  v27 = (v10 + v26 + *(v21 + 80)) & ~*(v21 + 80);
  v28 = swift_allocObject();
  *&v29 = v24;
  *(&v29 + 1) = *v66;
  v66 = v29;
  *&v30 = v62;
  *(&v30 + 1) = *v68;
  v68 = v30;
  *(v28 + 16) = v29;
  *(v28 + 32) = v30;
  v31 = a2;
  v32 = a2[6];
  v33 = v31[7];
  v34 = v31[8];
  *(v28 + 48) = v32;
  *(v28 + 56) = v33;
  *(v28 + 64) = v34;
  (*(v25 + 32))(v28 + v26, v46);
  (*(v21 + 32))(v28 + v27, v47, v24);
  v73 = v66;
  v74 = v68;
  v75 = v32;
  v76 = v33;
  v77 = v34;
  v78 = v72;
  v79 = v23;
  v35 = v52;
  sub_100086ECC();
  v36 = v69;
  sub_10008696C();
  v37 = v48;
  v38 = v54;
  v39 = v53;
  v40 = v51;
  v41 = v50;
  sub_100086D1C();
  (*(v70 + 8))(v36, v39);
  (*(v60 + 8))(v35, v38);
  v80 = v38;
  v81 = v39;
  v82 = v40;
  v83 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v49;
  v43 = OpaqueTypeMetadata2;
  sub_10004EDD8();
  v44 = *(v57 + 8);
  v44(v37, v43);
  sub_10004EDD8();
  return (v44)(v42, v43);
}

uint64_t (*sub_1000548EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v24 = a7;
  v25 = a8;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v26[6] = a8;
  v14 = type metadata accessor for DisclosureGroupPicker(0, v26);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  (*(v15 + 16))(&v23 - v16, a1, v14);
  v18 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v24;
  v20 = v25;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  (*(v15 + 32))(&v19[v18], v17, v14);
  return sub_10005673C;
}

uint64_t sub_100054A64(uint64_t a1)
{
  v3 = *(a1 + 32);
  v12 = *(a1 + 16);
  v15 = v12;
  v16 = v3;
  v13 = *(a1 + 40);
  v17 = v13;
  v18 = *(a1 + 56);
  v4 = type metadata accessor for DisclosureGroupPicker.Selection(0, &v15);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - v6);
  (*(v5 + 16))(&v12 - v6, v1 + *(a1 + 84), v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *&v15 = v8;
  *(&v15 + 1) = v9;
  v16 = v10;
  v14 = *(v1 + 8);
  sub_10008739C();

  swift_getWitnessTable();
  v14 = sub_10008757C();
  sub_10008756C();
  sub_100086F8C();
  sub_100086F7C();
  swift_bridgeObjectRelease_n();
}

uint64_t (*sub_100054C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v24 = a7;
  v25 = a8;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v26[6] = a8;
  v14 = type metadata accessor for DisclosureGroupPicker(0, v26);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  (*(v15 + 16))(&v23 - v16, a1, v14);
  v18 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v24;
  v20 = v25;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  (*(v15 + 32))(&v19[v18], v17, v14);
  return sub_100056524;
}

uint64_t sub_100054DE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v13 = *(a1 + 16);
  v19 = v13;
  v20 = v3;
  v12 = *(a1 + 40);
  v21 = v12;
  v22 = *(a1 + 56);
  v4 = type metadata accessor for DisclosureGroupPicker.Selection(0, &v19);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - v6);
  (*(v5 + 16))(&v12 - v6, v1 + *(a1 + 84), v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v20 = v10;
  sub_10008756C();
  sub_100086F8C();
  sub_100086F6C();
  sub_10008755C(0);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v14 = v18;
  sub_100086F7C();
}

uint64_t sub_100054FA4@<X0>(uint64_t a2@<X8>)
{

  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100055038@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  if (sub_100055138(a2, a3))
  {
    v4 = sub_100086E3C();
    sub_100086DFC();
    v6 = v4;
    KeyPath = swift_getKeyPath();
    sub_100001EEC(&qword_1000AF7B0, qword_10008C360);
    sub_100056CE4();
  }

  sub_100086F5C();
  result = sub_100086B8C();
  *a1 = v6;
  *(a1 + 8) = KeyPath;
  return result;
}

uint64_t sub_100055138(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v32 - v9;
  v10 = sub_10008767C();
  v32 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v39 = *(v5 - 8);
  __chkstk_darwin(v11);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100086F8C();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *(a2 + 40);
  v42 = v5;
  v43 = *(a2 + 24);
  v44 = v18;
  v45 = v4;
  v35 = v4;
  v46 = *(a2 + 56);
  v19 = type metadata accessor for DisclosureGroupPicker.Selection(0, &v42);
  __chkstk_darwin(v19);
  v21 = (&v32 - v20);
  (*(v22 + 16))(&v32 - v20, v2 + *(a2 + 84), v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v21[1];
    v24 = v21[2];
    v42 = *v21;
    *&v43 = v23;
    *(&v43 + 1) = v24;
    sub_10008756C();
    sub_100086F8C();
    sub_100086F6C();
    v25 = sub_10008754C();
  }

  else
  {
    (*(v40 + 32))(v17, v21, v15);
    sub_100086F6C();
    v26 = v39;
    if ((*(v39 + 48))(v13, 1, v5) == 1)
    {
      (*(v40 + 8))(v17, v15);
      (*(v32 + 8))(v13, v10);
      v25 = 0;
    }

    else
    {
      (*(v26 + 32))(v38, v13, v5);
      v27 = v33;
      sub_1000877EC();
      v28 = v34;
      sub_1000877EC();
      v29 = v37;
      swift_getAssociatedConformanceWitness();
      v25 = sub_10008713C();
      v30 = *(v36 + 8);
      v30(v28, v29);
      v30(v27, v29);
      (*(v26 + 8))(v38, v5);
      (*(v40 + 8))(v17, v15);
    }
  }

  return v25 & 1;
}

uint64_t sub_100055678(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_10008767C();
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100086F8C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v32 = v5;
  v13 = *(a2 + 24);
  v26 = *(a2 + 40);
  v33 = v13;
  v34 = v26;
  v35 = *(a2 + 56);
  v14 = type metadata accessor for DisclosureGroupPicker.Selection(0, &v32);
  __chkstk_darwin(v14);
  v16 = (&v26 - v15);
  (*(v17 + 16))(&v26 - v15, v2 + *(a2 + 84), v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v16[1];
    v20 = v16[2];
    v32 = *v16;
    v18 = v32;
    *&v33 = v19;
    *(&v33 + 1) = v20;
    v21 = sub_10008756C();
    sub_100086F8C();
    sub_100086F6C();
    sub_10003EF64(a1, v21);
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v27 = v31;
    sub_100086F7C();
  }

  else
  {
    (*(v10 + 32))(v12, v16, v9);
    v23 = sub_100055138(a1, a2);
    v24 = *(v5 - 8);
    v25 = v24;
    if (v23)
    {
      (*(v24 + 56))(v8, 1, 1, v5);
    }

    else
    {
      (*(v24 + 16))(v8, a1, v5);
      (*(v25 + 56))(v8, 0, 1, v5);
    }

    sub_100086F7C();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1000559B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v32 = a6;
  v30 = a4;
  v28 = a3;
  v33 = a2;
  v31 = a1;
  v39 = a9;
  v29 = a10;
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  v11 = sub_100086F1C();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10008695C();
  v37 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  v17 = sub_10008695C();
  v38 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v28 - v21;
  v40 = v28;
  v41 = v30;
  v42 = a5;
  v43 = v32;
  v44 = v34;
  v45 = v35;
  v46 = v29;
  v47 = v31;
  v48 = v33;
  sub_100086A9C();
  sub_100086F0C();
  sub_10008702C();
  WitnessTable = swift_getWitnessTable();
  sub_100086DCC();
  (*(v36 + 8))(v13, v11);
  v51 = WitnessTable;
  v52 = &protocol witness table for _FlexFrameLayout;
  v23 = swift_getWitnessTable();
  sub_100056C0C();
  sub_100086D3C();
  (*(v37 + 8))(v16, v14);
  v24 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v49 = v23;
  v50 = v24;
  swift_getWitnessTable();
  sub_10004EDD8();
  v25 = *(v38 + 8);
  v25(v20, v17);
  sub_10004EDD8();
  return (v25)(v22, v17);
}

uint64_t sub_100055E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5)
{
  v7 = a1;
  v24[1] = a4;
  v8 = *(a3 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = a5;
  v24[0] = a5;
  v20 = type metadata accessor for DisclosureGroupPicker(0, &v30);
  (*(v7 + *(v20 + 92)))(a2);
  sub_10004EDD8();
  v21 = *(v8 + 8);
  v21(v11, a3);
  sub_100055038(&v30, a2, v20);
  v22 = v30;
  LOBYTE(v7) = v31;
  (*(v8 + 16))(v11, v13, a3);
  v28 = 0;
  v29 = 1;
  v30 = v11;
  v31 = &v28;
  v26 = v22;
  v27 = v7;
  v32 = &v26;

  v25[0] = a3;
  v25[1] = &type metadata for Spacer;
  v25[2] = sub_100001EEC(&qword_1000AF788, &qword_10008C318);
  v24[2] = v24[0];
  v24[3] = &protocol witness table for Spacer;
  v24[4] = sub_100056C60();
  sub_10004B528(&v30, 3uLL, v25);

  v21(v13, a3);

  return (v21)(v11, a3);
}

Swift::Int sub_1000560F0(unsigned __int8 a1)
{
  sub_100087ADC();
  sub_100087AEC(a1);
  return sub_100087AFC();
}

Swift::Int sub_100056190(uint64_t a1)
{
  sub_100087ADC();
  sub_1000560C8(v3, *v1);
  return sub_100087AFC();
}

unint64_t sub_100056224()
{
  result = qword_1000AF790;
  if (!qword_1000AF790)
  {
    sub_10008697C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF790);
  }

  return result;
}

uint64_t sub_100056280@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = *(type metadata accessor for DisclosureGroupPicker(0, v13) - 8);
  v11 = v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80));

  return sub_100052AE8(v11, v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t sub_10005636C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v11;
  v12 = *(type metadata accessor for DisclosureGroupPicker(0, v14) - 8);
  return sub_100053DB8(a1, v2 + ((*(v12 + 80) + 72) & ~*(v12 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

unint64_t sub_100056440()
{
  result = qword_1000AF798;
  if (!qword_1000AF798)
  {
    sub_100003200(&qword_1000AF780, &qword_10008C310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF798);
  }

  return result;
}

uint64_t sub_1000564BC()
{

  return swift_deallocObject();
}

uint64_t sub_10005653C()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v4;
  v17 = v3;
  v18 = v6;
  v19 = v5;
  v20 = v7;
  v8 = type metadata accessor for DisclosureGroupPicker(0, &v14);
  v13 = *(*(v8 - 8) + 80);

  v9 = v0 + ((v13 + 72) & ~v13) + *(v8 + 84);
  v14 = v1;
  v15 = v2;
  v16 = v4;
  v17 = v3;
  v18 = v6;
  v19 = v5;
  v20 = v7;
  type metadata accessor for DisclosureGroupPicker.Selection(0, &v14);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();

  if (v2 == 1)
  {
  }

  else
  {
    sub_10008767C();
    v10 = *(sub_100086F8C() + 32);
    v11 = *(v1 - 8);
    if (!(*(v11 + 48))(v9 + v10, 1, v1))
    {
      (*(v11 + 8))(v9 + v10, v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100056754(uint64_t (*a1)(uint64_t))
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v12 = v1[2];
  v3 = v12;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  type metadata accessor for DisclosureGroupPicker(0, &v12);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = type metadata accessor for DisclosureGroupPicker(0, &v12);
  return a1(v10);
}

uint64_t sub_100056820()
{
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v6 = *(v0 + 6);
  v5 = *(v0 + 7);
  v13 = *(v0 + 8);
  v18 = *(v0 + 2);
  v1 = v18;
  v19 = v2;
  v20 = v4;
  v21 = v3;
  v22 = v6;
  v23 = v5;
  v24 = v13;
  v7 = type metadata accessor for DisclosureGroupPicker(0, &v18);
  v17 = *(*(v7 - 8) + 80);
  v15 = *(*(v7 - 8) + 64);
  v8 = *(v1 - 8);
  v14 = *(v8 + 80);
  v16 = (v17 + 72) & ~v17;

  v18 = v1;
  v9 = &v0[v16 + *(v7 + 84)];
  v19 = v2;
  v20 = v4;
  v21 = v3;
  v22 = v6;
  v23 = v5;
  v24 = v13;
  type metadata accessor for DisclosureGroupPicker.Selection(0, &v18);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();

  if (v2 == 1)
  {

    v10 = v1;
  }

  else
  {
    sub_10008767C();
    v11 = *(sub_100086F8C() + 32);
    v10 = v1;
    if (!(*(v8 + 48))(&v9[v11], 1, v1))
    {
      (*(v8 + 8))(&v9[v11], v1);
    }
  }

  (*(v8 + 8))(&v0[(v16 + v15 + v14) & ~v14], v10);
  return swift_deallocObject();
}

uint64_t sub_100056A84()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v15 = v0[2];
  v1 = v15;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v8 = *(type metadata accessor for DisclosureGroupPicker(0, &v15) - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(*(v1 - 8) + 80);
  v15 = v1;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v12 = (((v9 + 72) & ~v9) + v10 + v11) & ~v11;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v13 = type metadata accessor for DisclosureGroupPicker(0, &v15);
  return sub_100055678(v0 + v12, v13);
}

unint64_t sub_100056C0C()
{
  result = qword_1000AF7A0;
  if (!qword_1000AF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF7A0);
  }

  return result;
}

unint64_t sub_100056C60()
{
  result = qword_1000AF7A8;
  if (!qword_1000AF7A8)
  {
    sub_100003200(&qword_1000AF788, &qword_10008C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF7A8);
  }

  return result;
}

unint64_t sub_100056CE4()
{
  result = qword_1000AF7B8[0];
  if (!qword_1000AF7B8[0])
  {
    sub_100003200(&qword_1000AF7B0, qword_10008C360);
    sub_100006454(&qword_1000AEF20, &qword_1000AEF28, &qword_10008B360, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF7B8);
  }

  return result;
}

uint64_t sub_100056D9C(uint64_t *a1)
{
  sub_100003200(&qword_1000AF780, &qword_10008C310);
  sub_10008739C();
  swift_getAssociatedTypeWitness();
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
  swift_getWitnessTable();
  sub_100086EFC();
  sub_10008697C();
  swift_getWitnessTable();
  sub_100056224();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_10008694C();
  return swift_getWitnessTable();
}

void sub_1000570CC(uint64_t a1)
{
  sub_10003EA18(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100057154(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000572D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_100057584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003200(&qword_1000AF840, &qword_10008C3F0);
  v8 = sub_10008700C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  (*(v5 + 16))(v7, v2 + *(a1 + 36), v4);
  v15 = *(a1 + 24);
  v19[4] = v4;
  v19[5] = v15;
  v20 = v2;
  v16 = sub_1000578B8();
  sub_100086FCC();
  v21 = v15;
  v22 = v16;
  v23 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  sub_10004EDD8();
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_10004EDD8();
  return (v17)(v14, v8);
}

uint64_t sub_1000577F0(uint64_t *a1)
{

  sub_100001EEC(&qword_1000AF858, qword_10008C3F8);
  sub_100057990();
  sub_10005793C();
  sub_1000579F4();
  return sub_100086FAC();
}

unint64_t sub_1000578B8()
{
  result = qword_1000AF848;
  if (!qword_1000AF848)
  {
    sub_100003200(&qword_1000AF840, &qword_10008C3F0);
    sub_10005793C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF848);
  }

  return result;
}

unint64_t sub_10005793C()
{
  result = qword_1000AF850;
  if (!qword_1000AF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF850);
  }

  return result;
}

unint64_t sub_100057990()
{
  result = qword_1000AF860;
  if (!qword_1000AF860)
  {
    sub_100003200(&qword_1000AF858, qword_10008C3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF860);
  }

  return result;
}

unint64_t sub_1000579F4()
{
  result = qword_1000AF868[0];
  if (!qword_1000AF868[0])
  {
    type metadata accessor for ProfileViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF868);
  }

  return result;
}

uint64_t sub_100057A4C(uint64_t *a1)
{
  sub_100003200(&qword_1000AF840, &qword_10008C3F0);
  sub_10008700C();
  sub_1000578B8();
  return swift_getWitnessTable();
}

uint64_t sub_100057AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100057AFC, 0, 0);
}

uint64_t sub_100057AFC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  v4 = sub_10008798C();
  v0[6] = v4;
  if (v4)
  {
    v5 = v4;
    v11 = (*(v0[4] + 32) + **(v0[4] + 32));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100057CE0;
    v7 = v0[4];
    v8 = v0[3];

    return v11(v5, AssociatedTypeWitness, v8, v7);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100057CE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100057E00(uint64_t a1)
{
  result = &_swiftEmptyDictionarySingleton;
  v7 = &_swiftEmptyDictionarySingleton;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[4];
      sub_100001FB4(v4, v5);
      (*(v6 + 56))(&v7, v5, v6);
      v4 += 5;
      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

uint64_t sub_100057EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Loader.CacheEntry(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100057F58()
{
  v1 = *v0;
  sub_1000583E4(v0[14], v0[15]);
  v2 = *(*v0 + 104);
  v5 = type metadata accessor for Loader.CacheEntry(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100057FF4()
{
  sub_100057F58();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100058058(uint64_t a1)
{
  sub_100003200(&unk_1000AEDF0, &qword_10008A0E0);
  result = sub_10008745C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000580F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_100058210(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1000583E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10005844C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainHostViewController();
  sub_100001EEC(&qword_1000AE560, &qword_100089D48);
  sub_10008716C();
  v2 = objc_allocWithZone(CULogHandle);
  v3 = sub_10008714C();
  v4 = sub_10008714C();

  v5 = [v2 initWithSubsystem:v3 category:v4];

  v6 = sub_10008714C();
  [v5 ulog:40 message:v6];
}

BOOL sub_100058558(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1000864CC();
    ++v2;
    sub_10005968C();
  }

  while ((sub_10008713C() & 1) == 0);
  return v3 != v4;
}

void sub_100058630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &byte_1000A6368;
  v10 = 1;
  do
  {
    if (!v10)
    {
      sub_1000167FC(0xD000000000000066, 0x800000010008F740, &type metadata for BetaEnrollmentMetricsSession, &qword_1000AE518, &unk_10008C6B0);
      sub_100012B4C();
      swift_allocError();
      v24 = 3;
      goto LABEL_7;
    }

    v11 = *v9++;
    --v10;
  }

  while (v11);
  v25[0] = 0x20676E69646E6553;
  v25[1] = 0xE800000000000000;
  v12 = v8;
  v27._countAndFlagsBits = sub_100058B18();
  sub_1000871BC(v27);

  sub_100016548(0x20676E69646E6553, 0xE800000000000000);

  v13 = sub_10008714C();
  v14 = swift_allocObject();
  v15 = *(v12 + 208);
  v14[13] = *(v12 + 192);
  v14[14] = v15;
  v14[15] = *(v12 + 224);
  v16 = *(v12 + 144);
  v14[9] = *(v12 + 128);
  v14[10] = v16;
  v17 = *(v12 + 176);
  v14[11] = *(v12 + 160);
  v14[12] = v17;
  v18 = *(v12 + 80);
  v14[5] = *(v12 + 64);
  v14[6] = v18;
  v19 = *(v12 + 112);
  v14[7] = *(v12 + 96);
  v14[8] = v19;
  v20 = *(v12 + 16);
  v14[1] = *v12;
  v14[2] = v20;
  v21 = *(v12 + 48);
  v14[3] = *(v12 + 32);
  v14[4] = v21;
  aBlock[4] = sub_1000595C4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059010;
  aBlock[3] = &unk_1000A9270;
  v22 = _Block_copy(aBlock);
  sub_100059630(v12, v25);

  LOBYTE(v12) = AnalyticsSendEventLazy();
  _Block_release(v22);

  if (v12)
  {
    return;
  }

  sub_100012B4C();
  swift_allocError();
  v24 = 2;
LABEL_7:
  *v23 = 0;
  v23[1] = v24;
  swift_willThrow();
}

void sub_100058870()
{
  v1 = &byte_1000A6390;
  v2 = 1;
  do
  {
    if (!v2)
    {
      sub_1000877DC(50);

      v16 = 0xD000000000000010;
      v17 = 0x800000010008F6D0;
      v15 = qword_1000AF9F0;
      v14 = off_1000AF9F8;

      v20._countAndFlagsBits = v15;
      v20._object = v14;
      sub_1000871BC(v20);

      v21._countAndFlagsBits = 0xD000000000000020;
      v21._object = 0x800000010008F6F0;
      sub_1000871BC(v21);
      sub_1000167FC(0xD000000000000010, 0x800000010008F6D0, &type metadata for BetaEnrollmentDuration, &qword_1000AE520, &qword_100089C80);

      sub_100012B4C();
      swift_allocError();
      v13 = 3;
      goto LABEL_7;
    }

    v3 = *v1++;
    --v2;
  }

  while (v3);
  v16 = 0x20676E69646E6553;
  v17 = 0xE800000000000000;
  v4 = v0;
  v19._countAndFlagsBits = sub_100058BDC();
  sub_1000871BC(v19);

  sub_1000167E0(0x20676E69646E6553, 0xE800000000000000);

  v5 = sub_10008714C();

  v6 = swift_allocObject();
  v7 = *(v4 + 112);
  *(v6 + 112) = *(v4 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(v4 + 128);
  v8 = *(v4 + 48);
  *(v6 + 48) = *(v4 + 32);
  *(v6 + 64) = v8;
  v9 = *(v4 + 80);
  *(v6 + 80) = *(v4 + 64);
  *(v6 + 96) = v9;
  v10 = *(v4 + 16);
  *(v6 + 16) = *v4;
  *(v6 + 32) = v10;
  aBlock[4] = sub_1000592B0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059010;
  aBlock[3] = &unk_1000A91F8;
  v11 = _Block_copy(aBlock);
  sub_100059314(v4, &v16);

  LOBYTE(v4) = AnalyticsSendEventLazy();
  _Block_release(v11);

  if (v4)
  {
    return;
  }

  sub_100012B4C();
  swift_allocError();
  v13 = 2;
LABEL_7:
  *v12 = 0;
  v12[1] = v13;
  swift_willThrow();
}

unint64_t sub_100058B18()
{
  sub_1000877DC(20);

  sub_100007754();
  sub_10005934C();
  v0 = sub_1000870BC();
  v2 = v1;

  v4._countAndFlagsBits = v0;
  v4._object = v2;
  sub_1000871BC(v4);

  return 0xD000000000000046;
}

uint64_t sub_100058BDC()
{
  v1 = v0;
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1000877DC(20);

  v16 = 0x3D746E657645;
  v17 = 0xE600000000000000;
  v2 = qword_1000AF9F0;
  v3 = off_1000AF9F8;

  v24._countAndFlagsBits = v2;
  v24._object = v3;
  sub_1000871BC(v24);

  v25._countAndFlagsBits = 0x616F6C796170202CLL;
  v25._object = 0xEA00000000003D64;
  sub_1000871BC(v25);
  sub_100001EEC(&qword_1000ADFB8, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C690;
  *(v23 + 9) = *(v1 + 9);
  v23[0] = *v1;
  *(inited + 56) = &type metadata for AnalyticsInteger;
  *(inited + 64) = &off_1000AE268;
  v5 = swift_allocObject();
  *(inited + 32) = v5;
  *(v5 + 25) = *(v1 + 9);
  *(v5 + 16) = *v1;
  v22[0] = *(v1 + 32);
  v6 = v22[0];
  *(v22 + 13) = *(v1 + 45);
  v7 = *(v22 + 13);
  *(inited + 96) = &type metadata for AnalyticsFloat;
  *(inited + 104) = &off_1000AE228;
  *(inited + 72) = v6;
  *(inited + 85) = v7;
  v8 = *(v1 + 72);
  v21 = *(v1 + 56);
  v20 = v8;
  *(inited + 136) = &type metadata for AnalyticsErrorField;
  *(inited + 144) = sub_1000593D0();
  *(inited + 112) = *(v1 + 56);
  *(inited + 128) = v8;
  v18 = *(v1 + 80);
  v9 = v18;
  v19 = *(v1 + 96);
  v10 = v19;
  *(inited + 176) = &type metadata for AnalyticsBool;
  *(inited + 184) = &off_1000AE198;
  *(inited + 152) = v9;
  *(inited + 168) = v10;
  sub_100008354(v23, v15);
  sub_1000083B0(v22, v15);
  sub_100059424(&v21, v15);
  sub_100059480(&v20, v15);
  sub_1000594F0(&v18, v15);
  sub_100057E00(inited);
  swift_setDeallocating();
  sub_100001EEC(qword_1000ADFC0, &qword_100088D30);
  swift_arrayDestroy();
  sub_10005934C();
  v11 = sub_1000870BC();
  v13 = v12;

  v26._countAndFlagsBits = v11;
  v26._object = v13;
  sub_1000871BC(v26);

  return v16;
}

void *sub_100058E58(uint64_t a1)
{
  sub_100001EEC(&qword_1000ADFB8, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C690;
  *(v17 + 9) = *(a1 + 9);
  v17[0] = *a1;
  *(inited + 56) = &type metadata for AnalyticsInteger;
  *(inited + 64) = &off_1000AE268;
  v3 = swift_allocObject();
  *(inited + 32) = v3;
  *(v3 + 25) = *(a1 + 9);
  *(v3 + 16) = *a1;
  v16[0] = *(a1 + 32);
  v4 = v16[0];
  *(v16 + 13) = *(a1 + 45);
  v5 = *(v16 + 13);
  *(inited + 96) = &type metadata for AnalyticsFloat;
  *(inited + 104) = &off_1000AE228;
  *(inited + 72) = v4;
  *(inited + 85) = v5;
  v6 = *(a1 + 72);
  v15 = *(a1 + 56);
  v14 = v6;
  *(inited + 136) = &type metadata for AnalyticsErrorField;
  *(inited + 144) = sub_1000593D0();
  *(inited + 112) = *(a1 + 56);
  *(inited + 128) = v6;
  v12 = *(a1 + 80);
  v7 = v12;
  v13 = *(a1 + 96);
  v8 = v13;
  *(inited + 176) = &type metadata for AnalyticsBool;
  *(inited + 184) = &off_1000AE198;
  *(inited + 152) = v7;
  *(inited + 168) = v8;
  sub_100008354(v17, v11);
  sub_1000083B0(v16, v11);
  sub_100059424(&v15, v11);
  sub_100059480(&v14, v11);
  sub_1000594F0(&v12, v11);
  v9 = sub_100057E00(inited);
  swift_setDeallocating();
  sub_100001EEC(qword_1000ADFC0, &qword_100088D30);
  swift_arrayDestroy();
  return v9;
}

Class sub_100059010(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10005934C();
    v4.super.isa = sub_1000870AC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10005909C()
{
  if (*(v0 + 112) & 1) != 0 || (*(v0 + 128))
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
    *(v0 + 48) = 0;
    *(v0 + 52) = 1;
    *(v0 + 104) = 0;
    *(v0 + 112) = 1;
    v1 = (v0 + 128);
    *(v0 + 120) = 0;
LABEL_6:
    *v1 = 1;
    return;
  }

  if (*(v0 + 120) >= *(v0 + 104))
  {
    v1 = (v0 + 128);
    UpTicksToSecondsF();
    v3 = v2;
    v4._countAndFlagsBits = 0x6E6F697461727544;
    v4._object = 0xEA0000000000203ALL;
    sub_1000871BC(v4);
    sub_10008748C();
    v5._countAndFlagsBits = 115;
    v5._object = 0xE100000000000000;
    sub_1000871BC(v5);
    sub_1000167E0(0, 0xE000000000000000);

    *(v0 + 48) = v3;
    *(v0 + 52) = 0;
    sub_100058870();
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
    *(v0 + 48) = 0;
    *(v0 + 52) = 1;
    *(v0 + 104) = 0;
    *(v0 + 112) = 1;
    *(v0 + 120) = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100059258()
{

  return swift_deallocObject();
}

void *sub_1000592B0()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  return sub_100058E58(v6);
}

uint64_t sub_1000592FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005934C()
{
  result = qword_1000AFA00;
  if (!qword_1000AFA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AFA00);
  }

  return result;
}

uint64_t sub_100059398()
{

  return swift_deallocObject();
}

unint64_t sub_1000593D0()
{
  result = qword_1000AFA08;
  if (!qword_1000AFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA08);
  }

  return result;
}

uint64_t sub_100059480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AFA10, &qword_10008C6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005954C()
{

  return swift_deallocObject();
}

unint64_t sub_10005968C()
{
  result = qword_1000ADD58;
  if (!qword_1000ADD58)
  {
    sub_1000864CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADD58);
  }

  return result;
}

__n128 sub_1000596E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100059718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_100059760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000597D4(uint64_t a1)
{
  result = sub_1000597FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000597FC()
{
  result = qword_1000AFA20;
  if (!qword_1000AFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA20);
  }

  return result;
}

uint64_t sub_100059858(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_100086F5C();
}

unint64_t sub_100059958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Loader(0, *(a1 + 80), a3, a4);
  sub_10000F00C();
  return 0xD000000000000020;
}

id sub_100059984(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  swift_getMetatypeMetadata();
  sub_10008716C();
  v2 = objc_allocWithZone(CULogHandle);
  v3 = sub_10008714C();

  v4 = sub_10008714C();

  v5 = [v2 initWithSubsystem:v3 category:v4];

  return v5;
}

void sub_100059A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100059984(a4, a5);
  v7 = sub_10008714C();
  [v6 ulog:a1 message:v7];
}

void sub_100059AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100059984(a4, a5);
  v7 = sub_10008714C();
  [v6 ulog:a1 message:v7];
}

uint64_t sub_100059BE8()
{
  v1 = *(v0 + 40);
  sub_10001640C(0x6164696C61766E49, 0xEA00000000006574);
  swift_beginAccess();
  *(v1 + 368) = &_swiftEmptyDictionarySingleton;

  v2 = *(v1 + 352);
  *(v0 + 48) = v2;

  return _swift_task_switch(sub_100059CA4, v2, 0);
}

uint64_t sub_100059CA4()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 136);
  if (!v2)
  {
    v3 = *(v1 + 128);
    sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);

    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    sub_10008744C();
    sub_100064614(v3, 0);
    v2 = *(v1 + 136);
  }

  v4 = *(v1 + 128);
  *(v1 + 128) = 0;
  *(v1 + 136) = 2;
  sub_100064614(v4, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100059D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000E4A4(a3, v22 - v9, &qword_1000AEDC0, &qword_100088E40);
  v11 = sub_10008742C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000649C(v10, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000873DC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_10008717C() + 32;
      sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v20;
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

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10005A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000E4A4(a3, v22 - v9, &qword_1000AEDC0, &qword_100088E40);
  v11 = sub_10008742C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000649C(v10, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000873DC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10008717C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v20;
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

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_10005A31C(void *a1, void *a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v5 = __chkstk_darwin(v4 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v39 - v10;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1000877DC(28);

  v45 = 0xD000000000000012;
  v46 = 0x800000010008FC50;
  if (a1)
  {
    v11 = sub_100023B40(0, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v43 = v11;
    v44 = sub_100064240(&unk_1000AEE10, &qword_1000AEE08, COMessageSessionResponse_ptr, &protocol conformance descriptor for NSObject);
    v41 = a1;
    v12 = *sub_100001FB4(&v41, v11);
    v13 = a1;
    v14 = [v12 description];
    v15 = sub_10008715C();
    v17 = v16;

    sub_100001FF8(&v41);
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  v48._countAndFlagsBits = v15;
  v48._object = v17;
  sub_1000871BC(v48);

  v49._countAndFlagsBits = 0x206D6F726620;
  v49._object = 0xE600000000000000;
  sub_1000871BC(v49);
  if (!a2)
  {
    v51._countAndFlagsBits = 7104878;
    v51._object = 0xE300000000000000;
    sub_1000871BC(v51);

    sub_10001640C(v45, v46);

    goto LABEL_11;
  }

  v18 = sub_100023B40(0, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
  v43 = v18;
  v44 = sub_100064240(&qword_1000AEDD8, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr, &protocol conformance descriptor for NSObject);
  v41 = a2;
  v19 = *sub_100001FB4(&v41, v18);
  v20 = a2;
  v21 = [v19 description];
  v22 = sub_10008715C();
  v24 = v23;

  sub_100001FF8(&v41);
  v50._countAndFlagsBits = v22;
  v50._object = v24;
  sub_1000871BC(v50);

  sub_10001640C(v45, v46);

  v25 = [v20 member];
  if (!v25)
  {
LABEL_11:
    sub_100064304();
    swift_allocError();
    *v33 = 6;
    swift_willThrow();
    return;
  }

  v26 = v25;
  if (a1 && (sub_1000865AC(), (v27 = swift_dynamicCastClass()) != 0))
  {
    v28 = v27;
    v29 = a1;
    v30 = v26;
    sub_10005E698(v28, v30, v8);
    v31 = v47;
    if ((*(v47 + 48))(v8, 1, v9) == 1)
    {
      sub_10000649C(v8, &qword_1000AEDC8, &qword_10008C910);
      sub_100064304();
      swift_allocError();
      *v32 = 2;
      swift_willThrow();
    }

    else
    {
      v35 = v8;
      v36 = v39;
      sub_100064358(v35, v39);
      v41 = 0x20676E69726F7453;
      v42 = 0xE800000000000000;
      sub_1000871BC(*(v36 + *(v9 + 40) + 32));
      v52._countAndFlagsBits = 8238;
      v52._object = 0xE200000000000000;
      sub_1000871BC(v52);
      v53._countAndFlagsBits = sub_10005F060();
      sub_1000871BC(v53);

      sub_10001640C(v41, v42);

      v37 = v40;
      sub_10000E4A4(v36, v40, &qword_1000AEA70, &unk_10008D060);
      (*(v31 + 56))(v37, 0, 1, v9);
      swift_beginAccess();
      v38 = v30;
      sub_10006C1E4(v37, v38);
      swift_endAccess();
      sub_100063380();

      sub_10000649C(v36, &qword_1000AEA70, &unk_10008D060);
    }
  }

  else
  {
    sub_100064304();
    swift_allocError();
    *v34 = 3;
    swift_willThrow();
  }
}

uint64_t sub_10005A8E8()
{
  v1[20] = v0;
  v2 = sub_10008672C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_10005AA28, v0, 0);
}

uint64_t sub_10005AA28()
{
  v53 = v0;
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 368);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 200);
    v5 = sub_10006F2DC(*(v2 + 16), 0);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = v5;
    v8 = sub_100036BFC(&v51, v5 + v6, v3, v2);
    v9 = v51;

    result = sub_100023AA8(v9);
    if (v8 != v3)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = v7;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  *(v0 + 232) = v11;
  v41 = sub_100063E7C();
  *(v0 + 240) = v41;
  v12 = v11[2];
  *(v0 + 248) = v12;
  swift_beginAccess();
  v40 = v12;
  sub_1000079BC(v12);
  result = swift_endAccess();
  v13 = _swiftEmptyArrayStorage;
  v47 = v11[2];
  if (v47)
  {
    v14 = 0;
    v45 = *(v0 + 200);
    v15 = *(v0 + 176);
    v44 = enum case for BetaEnrollment.State.enrolled(_:);
    v42 = (v15 + 8);
    v43 = (v15 + 104);
    v46 = v11;
    while (v14 < v11[2])
    {
      v16 = *(v0 + 184);
      v17 = *(v0 + 168);
      v48 = *(v45 + 72);
      v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      sub_10000E4A4(v11 + v50 + v48 * v14, *(v0 + 224), &qword_1000AEA70, &unk_10008D060);
      (*v43)(v16, v44, v17);
      sub_100061F84(qword_1000ADD68, 255, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
      sub_10008729C();
      sub_10008729C();
      (*v42)(v16, v17);
      v18 = *(v0 + 224);
      if (*(v0 + 120) == *(v0 + 128))
      {
        sub_100064358(v18, *(v0 + 216));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10006F854(0, v13[2] + 1, 1);
          v13 = v51;
        }

        v11 = v46;
        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          sub_10006F854((v20 > 1), v21 + 1, 1);
          v13 = v51;
        }

        v22 = *(v0 + 216);
        v13[2] = v21 + 1;
        result = sub_100064358(v22, v13 + v50 + v21 * v48);
      }

      else
      {
        result = sub_10000649C(v18, &qword_1000AEA70, &unk_10008D060);
        v11 = v46;
      }

      if (v47 == ++v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  v23 = *(v0 + 160);
  v24 = v13[2];

  swift_beginAccess();
  *(v23 + 120) = v24;
  sub_100007AA0();
  swift_endAccess();
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1000877DC(37);

  v51 = 0x676E697461647055;
  v52 = 0xE900000000000020;
  *(v0 + 136) = *(v41 + 16);
  v55._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v55);

  v56._object = 0x800000010008FA20;
  v56._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v56);
  *(v0 + 144) = v40;
  v57._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v57);

  v58._countAndFlagsBits = 0x7365636976656420;
  v58._object = 0xE800000000000000;
  sub_1000871BC(v58);
  sub_10001640C(v51, v52);

  v25 = *(v41 + 16);
  *(v0 + 256) = v25;
  if (v25)
  {
    v26 = *(v0 + 200);
    *(v0 + 264) = 0;
    v27 = *(v0 + 240);
    if (!v27[2])
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v28 = *(v0 + 248);
    *(v0 + 272) = v27[4];
    v49 = v27[5];
    if (v28)
    {
      v29 = *(v0 + 232);
      *(v0 + 152) = _swiftEmptyArrayStorage;
      swift_unknownObjectRetain();
      sub_10006F7AC(0, v28, 0);
      v30 = 0;
      v31 = *(v0 + 152);
      v32 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v33 = *(v26 + 72);
      do
      {
        sub_10000E4A4(v32, *(v0 + 208), &qword_1000AEA70, &unk_10008D060);
        swift_dynamicCast();
        *(v0 + 152) = v31;
        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          sub_10006F7AC((v34 > 1), v35 + 1, 1);
          v31 = *(v0 + 152);
        }

        v36 = *(v0 + 248);
        ++v30;
        v31[2] = v35 + 1;
        sub_100036E80((v0 + 16), &v31[4 * v35 + 4]);
        v32 += v33;
      }

      while (v30 != v36);
    }

    else
    {
      swift_unknownObjectRetain();
      v31 = _swiftEmptyArrayStorage;
    }

    *(v0 + 280) = v31;
    ObjectType = swift_getObjectType();
    v39 = swift_task_alloc();
    *(v0 + 288) = v39;
    *v39 = v0;
    v39[1] = sub_10005B0CC;

    return sub_100057AD8(v31, ObjectType, v49);
  }

  else
  {

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_10005B0CC()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_10005B1F8, v1, 0);
}

uint64_t sub_10005B1F8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  result = swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 264) + 1;
    *(v0 + 264) = v5;
    v6 = *(v0 + 240);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v7 = *(v0 + 248);
      v8 = v6 + 16 * v5;
      *(v0 + 272) = *(v8 + 32);
      v20 = *(v8 + 40);
      if (v7)
      {
        v9 = *(v0 + 232);
        v10 = *(v0 + 200);
        *(v0 + 152) = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        sub_10006F7AC(0, v7, 0);
        v11 = 0;
        v12 = *(v0 + 152);
        v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v14 = *(v10 + 72);
        do
        {
          sub_10000E4A4(v13, *(v0 + 208), &qword_1000AEA70, &unk_10008D060);
          swift_dynamicCast();
          *(v0 + 152) = v12;
          v16 = v12[2];
          v15 = v12[3];
          if (v16 >= v15 >> 1)
          {
            sub_10006F7AC((v15 > 1), v16 + 1, 1);
            v12 = *(v0 + 152);
          }

          v17 = *(v0 + 248);
          ++v11;
          v12[2] = v16 + 1;
          sub_100036E80((v0 + 16), &v12[4 * v16 + 4]);
          v13 += v14;
        }

        while (v11 != v17);
      }

      else
      {
        swift_unknownObjectRetain();
        v12 = _swiftEmptyArrayStorage;
      }

      *(v0 + 280) = v12;
      ObjectType = swift_getObjectType();
      v19 = swift_task_alloc();
      *(v0 + 288) = v19;
      *v19 = v0;
      v19[1] = sub_10005B0CC;

      return sub_100057AD8(v12, ObjectType, v20);
    }
  }

  return result;
}

uint64_t sub_10005B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005B530, 0, 0);
}

uint64_t sub_10005B530()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_10008742C();
  v8 = *(v0 + 24);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v8;
  *(v5 + 48) = v4;
  *(v5 + 56) = v2;
  swift_unknownObjectRetain();
  sub_100016950(0, 0, v1, &unk_10008C9E8, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10005B690()
{
  v12 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 368);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10006F2DC(*(v2 + 16), 0);
    v5 = *(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8);
    v6 = sub_100036BFC(&v10, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
    v7 = v10;

    sub_100023AA8(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1000877DC(18);

  v10 = 0xD000000000000010;
  v11 = 0x800000010008F440;
  sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v14._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v14);

  sub_10001640C(v10, v11);

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_10005B860()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return _swift_task_switch(sub_10005B8D0, v0, 0);
}

uint64_t sub_10005B8D0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10001640C(0x6D726177657250, 0xE700000000000000);
  v0[4] = *(v1 + 352);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10005BA08;

  return sub_10005F7E8(&unk_10008C9C8, v4);
}

uint64_t sub_10005BA08(void *a1)
{
  v4 = *v2;
  v4[7] = v1;

  if (v1)
  {
    v5 = v4[2];

    return _swift_task_switch(sub_10005BB68, v5, 0);
  }

  else
  {

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_10005BB68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005BBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005BC74, 0, 0);
}

uint64_t sub_10005BC74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_10008742C();
  v8 = *(v0 + 24);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v8;
  *(v5 + 48) = v4;
  *(v5 + 56) = v2;
  swift_unknownObjectRetain();
  sub_100016950(0, 0, v1, &unk_10008C9A8, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10005BDB4(uint64_t a1, uint64_t a2)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[97] = a1;
  v3[100] = swift_getObjectType();
  v4 = sub_10008672C();
  v3[101] = v4;
  v3[102] = *(v4 - 8);
  v3[103] = swift_task_alloc();

  return _swift_task_switch(sub_10005BE88, v2, 0);
}

uint64_t sub_10005BE88()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  sub_1000877DC(30);
  *(v0 + 632) = 0;
  *(v0 + 640) = 0xE000000000000000;
  v16._countAndFlagsBits = 0x20676E6974746553;
  v16._object = 0xEE00206574617473;
  sub_1000871BC(v16);
  sub_1000878DC();
  v17._countAndFlagsBits = 0x67726174206E6F20;
  v17._object = 0xEC00000020737465;
  sub_1000871BC(v17);
  *(v0 + 832) = sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  v18._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v18);

  sub_10001640C(*(v0 + 632), *(v0 + 640));

  *(v0 + 212) = enum case for BetaEnrollment.State.enrolled(_:);
  v4 = *(v2 + 104);
  *(v0 + 840) = v4;
  *(v0 + 848) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v1);
  *(v0 + 856) = sub_100061F84(qword_1000ADD68, 255, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v5 = *(v2 + 8);
  *(v0 + 864) = v5;
  *(v0 + 872) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (*(v0 + 768) == *(v0 + 760) || (v6 = *(v0 + 824), v7 = *(v0 + 808), (v4)(v6, enum case for BetaEnrollment.State.notEnrolled(_:), v7), sub_10008729C(), sub_10008729C(), v5(v6, v7), *(v0 + 720) == *(v0 + 680)))
  {
    v8 = *(v0 + 800);
    *(v0 + 880) = *(*(v0 + 792) + 352);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v0 + 888) = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;

    v11 = swift_task_alloc();
    *(v0 + 896) = v11;
    *v11 = v0;
    v11[1] = sub_10005C278;

    return sub_10005F7E8(&unk_10008C990, v10);
  }

  else
  {
    sub_100064304();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10005C278(uint64_t a1)
{
  v3 = *v2;
  v3[113] = a1;
  v3[114] = v1;

  if (v1)
  {
    v4 = v3[99];
    v5 = sub_10005C78C;
  }

  else
  {
    v6 = v3[99];

    v5 = sub_10005C3B0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005C3B0()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 840);
  v3 = *(v0 + 212);
  v4 = *(v0 + 824);
  v5 = *(v0 + 808);
  (*(*(v0 + 816) + 16))(v4, *(v0 + 776), v5);
  v6 = objc_allocWithZone(sub_1000865CC());
  v18 = 1;
  v17 = sub_1000865BC();
  *(v0 + 920) = v17;
  v2(v4, v3, v5);
  sub_10008729C();
  sub_10008729C();
  v1(v4, v5);
  if (*(v0 + 672) != *(v0 + 664))
  {
    v7 = *(v0 + 864);
    v8 = *(v0 + 824);
    v9 = *(v0 + 808);
    (*(v0 + 840))(v8, enum case for BetaEnrollment.State.enrolling(_:), v9);
    sub_10008729C();
    sub_10008729C();
    v7(v8, v9);
    v18 = *(v0 + 656) == *(v0 + 648);
  }

  v10 = *(v0 + 784);
  if (v10 >> 62)
  {
    v11 = sub_10008793C();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(v0 + 904);
  *(v0 + 80) = 0x6F43656369766564;
  *(v0 + 88) = 0xEB00000000746E75;
  *(v0 + 96) = v11;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x6E6F697461727564;
  *(v0 + 120) = 0xEB00000000636553;
  *(v0 + 128) = 0;
  *(v0 + 132) = 1;
  *(v0 + 136) = 0x726F727265;
  *(v0 + 144) = 0xE500000000000000;
  *(v0 + 152) = xmmword_10008C7C0;
  *(v0 + 168) = 0xEB00000000676E69;
  *(v0 + 176) = v18;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  sub_1000167E0(0x7472617453, 0xE500000000000000);
  *(v0 + 184) = mach_absolute_time();
  *(v0 + 192) = 0;

  sub_100082FA0(v13);

  sub_100064240(&qword_1000AFAB0, &qword_1000ADC30, COClusterMember_ptr, &protocol conformance descriptor for NSObject);
  isa = sub_10008749C().super.isa;
  *(v0 + 928) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 616;
  *(v0 + 24) = sub_10005C804;
  v15 = swift_continuation_init();
  *(v0 + 544) = sub_100001EEC(&qword_1000AFAB8, &qword_10008C908);
  *(v0 + 520) = v15;
  *(v0 + 488) = _NSConcreteStackBlock;
  *(v0 + 496) = 1107296256;
  *(v0 + 504) = sub_100061030;
  *(v0 + 512) = &unk_1000A9510;
  [v12 sendRequest:v17 members:isa withCompletionHandler:v0 + 488];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10005C78C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C804()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 936) = v2;
  v3 = *(v1 + 792);
  if (v2)
  {
    v4 = sub_10005CE1C;
  }

  else
  {
    v4 = sub_10005C924;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005C924()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 840);
  v3 = *(v0 + 212);
  v4 = *(v0 + 824);
  v5 = *(v0 + 808);
  v36 = *(v0 + 616);
  v35 = *(v0 + 624);

  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v0 + 200) = mach_absolute_time();
  *(v0 + 208) = 0;
  sub_10005909C();
  v2(v4, v3, v5);
  sub_10008729C();
  sub_10008729C();
  v1(v4, v5);
  if (*(v0 + 728) == *(v0 + 736))
  {
    v6 = *(v0 + 784);
    swift_beginAccess();
    sub_100007B58(v6);
  }

  else
  {
    v7 = *(v0 + 864);
    v8 = *(v0 + 824);
    v9 = *(v0 + 808);
    (*(v0 + 840))(v8, enum case for BetaEnrollment.State.notEnrolled(_:), v9);
    sub_10008729C();
    sub_10008729C();
    v7(v8, v9);
    if (*(v0 + 744) != *(v0 + 752))
    {
      goto LABEL_6;
    }

    v10 = *(v0 + 784);
    swift_beginAccess();
    sub_100007D58(v10);
  }

  swift_endAccess();
LABEL_6:
  v11 = *(v0 + 912);
  v12 = v35;
  v13 = v36;
  sub_100061118(v35, v36);
  if (v11)
  {

    sub_1000877DC(28);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v38._object = 0x800000010008FB50;
    v38._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000871BC(v38);
    *(v0 + 688) = v11;
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    sub_1000878DC();
    *(v0 + 696) = type metadata accessor for BetaEnrollmentNetworkingSession();
    sub_100001EEC(&qword_1000AE538, &qword_100089C98);
    sub_10008716C();
    v14 = objc_allocWithZone(CULogHandle);
    v15 = sub_10008714C();
    v16 = sub_10008714C();

    v17 = [v14 initWithSubsystem:v15 category:v16];

    v18 = sub_10008714C();

    [v17 ulog:60 message:v18];

    swift_errorRetain();
    sub_1000167E0(1886352467, 0xE400000000000000);
    *(v0 + 200) = mach_absolute_time();
    *(v0 + 208) = 0;
    *(v0 + 704) = v11;
    swift_errorRetain();
    sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 712);

      *(v0 + 152) = v19;
    }

    v20 = *(v0 + 920);
    v21 = *(v0 + 904);
    sub_10005909C();

    swift_willThrow();

    v22 = *(v0 + 192);
    *(v0 + 448) = *(v0 + 176);
    *(v0 + 464) = v22;
    *(v0 + 480) = *(v0 + 208);
    v23 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v23;
    v24 = *(v0 + 160);
    *(v0 + 416) = *(v0 + 144);
    *(v0 + 432) = v24;
    v25 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v25;
    sub_1000642B0(v0 + 352);

    v26 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 176);
    v28 = *(v0 + 192);
    v29 = *(v0 + 144);
    *(v0 + 296) = *(v0 + 160);
    *(v0 + 312) = v27;
    *(v0 + 328) = v28;
    v30 = *(v0 + 80);
    *(v0 + 232) = *(v0 + 96);
    v31 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v31;
    *(v0 + 280) = v29;
    v32 = *(v0 + 920);
    v33 = *(v0 + 904);
    *(v0 + 344) = *(v0 + 208);
    *(v0 + 216) = v30;
    sub_1000642B0(v0 + 216);

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_10005CE1C(uint64_t a1)
{
  v2 = *(v1 + 928);
  swift_willThrow();

  v3 = *(v1 + 936);
  sub_1000877DC(28);
  *(v1 + 600) = 0;
  *(v1 + 608) = 0xE000000000000000;
  v19._object = 0x800000010008FB50;
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v19);
  *(v1 + 688) = v3;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  *(v1 + 696) = type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v4 = objc_allocWithZone(CULogHandle);
  v5 = sub_10008714C();
  v6 = sub_10008714C();

  v7 = [v4 initWithSubsystem:v5 category:v6];

  v8 = sub_10008714C();

  [v7 ulog:60 message:v8];

  swift_errorRetain();
  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v1 + 200) = mach_absolute_time();
  *(v1 + 208) = 0;
  *(v1 + 704) = v3;
  swift_errorRetain();
  sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 712);

    *(v1 + 152) = v9;
  }

  v10 = *(v1 + 920);
  v11 = *(v1 + 904);
  sub_10005909C();

  swift_willThrow();

  v12 = *(v1 + 192);
  *(v1 + 448) = *(v1 + 176);
  *(v1 + 464) = v12;
  *(v1 + 480) = *(v1 + 208);
  v13 = *(v1 + 128);
  *(v1 + 384) = *(v1 + 112);
  *(v1 + 400) = v13;
  v14 = *(v1 + 160);
  *(v1 + 416) = *(v1 + 144);
  *(v1 + 432) = v14;
  v15 = *(v1 + 96);
  *(v1 + 352) = *(v1 + 80);
  *(v1 + 368) = v15;
  sub_1000642B0(v1 + 352);

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_10005D0DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();

  return _swift_task_switch(sub_10005D150, v2, 0);
}

uint64_t sub_10005D150()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1000877DC(28);

  sub_10008609C();
  sub_100061F84(&qword_1000AE420, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v7);

  v8._countAndFlagsBits = 0x6669746E65646920;
  v8._object = 0xED00002073726569;
  sub_1000871BC(v8);
  sub_100061F84(&qword_1000AE428, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9._countAndFlagsBits = sub_1000874CC();
  sub_1000871BC(v9);

  sub_10001640C(0x656D6F6820746553, 0xEB00000000204449);

  v2[50] = sub_10008605C();
  v2[51] = v3;

  v2[54] = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10005D360;

  return sub_100059BC8();
}

uint64_t sub_10005D360()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10005D470, v1, 0);
}

uint64_t sub_10005D470()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_10001640C(0x6D726177657250, 0xE700000000000000);
  v0[7] = *(v1 + 352);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_10005D5A8;

  return sub_10005F7E8(&unk_10008CA10, v4);
}

uint64_t sub_10005D5A8(void *a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {
    v5 = v4[4];

    return _swift_task_switch(sub_10005D708, v5, 0);
  }

  else
  {

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_10005D708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005D774(uint64_t a1, uint64_t a2)
{
  v3[83] = v2;
  v3[82] = a2;
  v3[81] = a1;
  v3[84] = swift_getObjectType();
  v4 = sub_10008672C();
  v3[85] = v4;
  v3[86] = *(v4 - 8);
  v3[87] = swift_task_alloc();

  return _swift_task_switch(sub_10005D848, v2, 0);
}

uint64_t sub_10005D848()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[81];
  sub_1000877DC(45);

  v0[76] = v3;
  v9._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v9);

  v10._countAndFlagsBits = 0x67726174206E6F20;
  v10._object = 0xEC00000020737465;
  sub_1000871BC(v10);
  v0[88] = sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  v11._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v11);

  sub_10001640C(0xD00000000000001DLL, 0x800000010008F090);

  v0[89] = *(v2 + 352);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v0[90] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;

  v6 = swift_task_alloc();
  v0[91] = v6;
  *v6 = v0;
  v6[1] = sub_10005DA54;

  return sub_10005F7E8(&unk_10008C8F8, v5);
}

uint64_t sub_10005DA54(uint64_t a1)
{
  v3 = *v2;
  v3[92] = a1;
  v3[93] = v1;

  if (v1)
  {
    v4 = v3[83];
    v5 = sub_10005DF98;
  }

  else
  {
    v6 = v3[83];

    v5 = sub_10005DB8C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005DB8C()
{
  v1 = *(v0 + 656);
  (*(*(v0 + 688) + 104))(*(v0 + 696), enum case for BetaEnrollment.State.enrolled(_:), *(v0 + 680));
  v2 = objc_allocWithZone(sub_1000865CC());
  v3 = sub_1000865BC();
  *(v0 + 752) = v3;
  if (v1 >> 62)
  {
    v4 = sub_10008793C();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 736);
  BYTE4(v10) = 1;
  LOBYTE(v11) = 1;
  LOBYTE(v10) = 0;
  *(v0 + 80) = 0x6F43656369766564;
  *(v0 + 88) = 0xEB00000000746E75;
  *(v0 + 96) = v4;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x6E6F697461727564;
  *(v0 + 120) = 0xEB00000000636553;
  *(v0 + 128) = 0;
  *(v0 + 132) = 1;
  *(v0 + 136) = 0x726F727265;
  *(v0 + 144) = 0xE500000000000000;
  *(v0 + 152) = xmmword_10008C7C0;
  *(v0 + 168) = 0xEB00000000676E69;
  *(v0 + 176) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  sub_1000167E0(0x7472617453, 0xE500000000000000);
  *(v0 + 184) = mach_absolute_time();
  *(v0 + 192) = 0;

  sub_100082FA0(v6);

  sub_100064240(&qword_1000AFAB0, &qword_1000ADC30, COClusterMember_ptr, &protocol conformance descriptor for NSObject);
  isa = sub_10008749C().super.isa;
  *(v0 + 760) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 576;
  *(v0 + 24) = sub_10005DE78;
  v8 = swift_continuation_init();
  *(v0 + 544) = sub_100001EEC(&qword_1000AFAB8, &qword_10008C908);
  *(v0 + 520) = v8;
  *(v0 + 488) = _NSConcreteStackBlock;
  *(v0 + 496) = 1107296256;
  *(v0 + 504) = sub_100061030;
  *(v0 + 512) = &unk_1000A93D0;
  [v5 sendRequest:v3 members:isa withCompletionHandler:{v0 + 488, v10, v11}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10005DE78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 768) = v2;
  v3 = *(v1 + 664);
  if (v2)
  {
    v4 = sub_10005E3D0;
  }

  else
  {
    v4 = sub_10005E010;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005DF98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005E010()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 656);
  v3 = *(v0 + 576);
  v4 = *(v0 + 584);

  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v0 + 200) = mach_absolute_time();
  *(v0 + 208) = 0;
  sub_10005909C();
  swift_beginAccess();
  sub_100007B58(v2);
  swift_endAccess();
  v5 = v4;
  v6 = v3;
  sub_100061118(v4, v3);
  if (v1)
  {

    sub_1000877DC(34);
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    v29._object = 0x800000010008F940;
    v29._countAndFlagsBits = 0xD000000000000020;
    sub_1000871BC(v29);
    *(v0 + 616) = v1;
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    sub_1000878DC();
    *(v0 + 624) = type metadata accessor for BetaEnrollmentNetworkingSession();
    sub_100001EEC(&qword_1000AE538, &qword_100089C98);
    sub_10008716C();
    v7 = objc_allocWithZone(CULogHandle);
    v8 = sub_10008714C();
    v9 = sub_10008714C();

    v10 = [v7 initWithSubsystem:v8 category:v9];

    v11 = sub_10008714C();

    [v10 ulog:60 message:v11];

    swift_errorRetain();
    sub_1000167E0(1886352467, 0xE400000000000000);
    *(v0 + 200) = mach_absolute_time();
    *(v0 + 208) = 0;
    *(v0 + 632) = v1;
    swift_errorRetain();
    sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 640);

      *(v0 + 152) = v12;
    }

    v13 = *(v0 + 752);
    v14 = *(v0 + 736);
    sub_10005909C();

    swift_willThrow();

    v15 = *(v0 + 176);
    v16 = *(v0 + 192);
    v17 = *(v0 + 144);
    *(v0 + 296) = *(v0 + 160);
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    v18 = *(v0 + 80);
    *(v0 + 232) = *(v0 + 96);
    v19 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v19;
    *(v0 + 280) = v17;
    *(v0 + 344) = *(v0 + 208);
    *(v0 + 216) = v18;
    sub_1000642B0(v0 + 216);

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 752);
    v22 = *(v0 + 736);
    v23 = *(v0 + 192);
    *(v0 + 448) = *(v0 + 176);
    *(v0 + 464) = v23;
    *(v0 + 480) = *(v0 + 208);
    v24 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v24;
    v25 = *(v0 + 160);
    *(v0 + 416) = *(v0 + 144);
    *(v0 + 432) = v25;
    v26 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v26;
    sub_1000642B0(v0 + 352);

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_10005E3D0(uint64_t a1)
{
  v2 = *(v1 + 760);
  swift_willThrow();

  v3 = *(v1 + 768);
  sub_1000877DC(34);
  *(v1 + 592) = 0;
  *(v1 + 600) = 0xE000000000000000;
  v20._object = 0x800000010008F940;
  v20._countAndFlagsBits = 0xD000000000000020;
  sub_1000871BC(v20);
  *(v1 + 616) = v3;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  *(v1 + 624) = type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v4 = objc_allocWithZone(CULogHandle);
  v5 = sub_10008714C();
  v6 = sub_10008714C();

  v7 = [v4 initWithSubsystem:v5 category:v6];

  v8 = sub_10008714C();

  [v7 ulog:60 message:v8];

  swift_errorRetain();
  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v1 + 200) = mach_absolute_time();
  *(v1 + 208) = 0;
  *(v1 + 632) = v3;
  swift_errorRetain();
  sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 640);

    *(v1 + 152) = v9;
  }

  v10 = *(v1 + 752);
  v11 = *(v1 + 736);
  sub_10005909C();

  swift_willThrow();

  v12 = *(v1 + 176);
  v13 = *(v1 + 192);
  v14 = *(v1 + 144);
  *(v1 + 296) = *(v1 + 160);
  *(v1 + 312) = v12;
  *(v1 + 328) = v13;
  v15 = *(v1 + 80);
  *(v1 + 232) = *(v1 + 96);
  v16 = *(v1 + 128);
  *(v1 + 248) = *(v1 + 112);
  *(v1 + 264) = v16;
  *(v1 + 280) = v14;
  *(v1 + 344) = *(v1 + 208);
  *(v1 + 216) = v15;
  sub_1000642B0(v1 + 216);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_10005E698@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v61 = sub_10008672C();
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v14 = *(v63 - 8);
  __chkstk_darwin(v63);
  v16 = &v54 - v15;
  v17 = sub_1000864CC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = sub_10008652C();
  if (v19)
  {
    v20 = v19;
    v59 = v18;
    v60 = a3;
    v21 = sub_10008651C();
    if (!v22)
    {

      goto LABEL_7;
    }

    v23 = v22;
    v58 = v21;
    sub_10008653C();
    v24 = v61;
    if ((*(v12 + 48))(v11, 1, v61) == 1)
    {

      sub_10000649C(v11, &qword_1000AE970, &unk_10008A740);
LABEL_7:
      a3 = v60;
      goto LABEL_8;
    }

    v57 = v14;
    v26 = v63;
    v27 = *(v63 + 52);
    v55 = &v16[*(v63 + 48)];
    v56 = v27;
    (*(v12 + 32))(v62, v11, v24);
    sub_1000864EC();
    sub_100064E44(v8, v16);
    *&v16[v26[11]] = a2;
    v28 = &v16[v26[10]];
    *v28 = 0u;
    *(v28 + 1) = 0u;
    v29 = v59;
    *(v28 + 4) = v58;
    *(v28 + 5) = v23;
    *(v28 + 6) = v29;
    *(v28 + 7) = v20;
    *(v28 + 4) = 0u;
    *(v28 + 5) = 0u;
    *(v28 + 6) = 0u;
    *(v28 + 7) = 0u;
    (*(v12 + 16))(&v16[v26[9]], v62, v24);
    v30 = sub_10008650C();
    v31 = v55;
    *v55 = v30;
    *(v31 + 8) = v32 & 1;
    *&v16[v56] = sub_1000864FC();
    v33 = sub_10008656C();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      v37 = sub_10008659C();
      if (v38)
      {
        *v28 = v35;
        *(v28 + 1) = v36;
        *(v28 + 2) = v37;
        *(v28 + 3) = v38;
      }

      else
      {
      }
    }

    v39 = sub_10008654C();
    v41 = v57;
    if (v40)
    {
      v42 = v39;
      v43 = v40;
      v44 = sub_10008657C();
      if (!v45)
      {

        v46 = sub_10008655C();
        if (v47)
        {
LABEL_18:
          v48 = v46;
          v49 = v47;
          v50 = sub_10008658C();
          v52 = v51;

          (*(v12 + 8))(v62, v24);
          if (v52)
          {
            *(v28 + 12) = v48;
            *(v28 + 13) = v49;
            *(v28 + 14) = v50;
            *(v28 + 15) = v52;
          }

          else
          {
          }

          goto LABEL_23;
        }

LABEL_21:
        (*(v12 + 8))(v62, v24);

LABEL_23:
        v53 = v60;
        sub_10000E4A4(v16, v60, &qword_1000AEA70, &unk_10008D060);
        (*(v41 + 56))(v53, 0, 1, v63);
        return sub_10000649C(v16, &qword_1000AEA70, &unk_10008D060);
      }

      *(v28 + 8) = v42;
      *(v28 + 9) = v43;
      *(v28 + 10) = v44;
      *(v28 + 11) = v45;
    }

    v46 = sub_10008655C();
    if (v47)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_8:
  sub_10000649C(v16, &qword_1000AE9C0, &qword_10008A810);
  return (*(v14 + 56))(a3, 1, 1, v63);
}

uint64_t sub_10005EB7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v61 = sub_10008672C();
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v14 = *(v63 - 8);
  __chkstk_darwin(v63);
  v16 = &v54 - v15;
  v17 = sub_1000864CC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = sub_10008666C();
  if (v19)
  {
    v20 = v19;
    v59 = v18;
    v60 = a3;
    v21 = sub_10008665C();
    if (!v22)
    {

      goto LABEL_7;
    }

    v23 = v22;
    v58 = v21;
    sub_10008667C();
    v24 = v61;
    if ((*(v12 + 48))(v11, 1, v61) == 1)
    {

      sub_10000649C(v11, &qword_1000AE970, &unk_10008A740);
LABEL_7:
      a3 = v60;
      goto LABEL_8;
    }

    v57 = v14;
    v26 = v63;
    v27 = *(v63 + 52);
    v55 = &v16[*(v63 + 48)];
    v56 = v27;
    (*(v12 + 32))(v62, v11, v24);
    sub_10008662C();
    sub_100064E44(v8, v16);
    *&v16[v26[11]] = a2;
    v28 = &v16[v26[10]];
    *v28 = 0u;
    *(v28 + 1) = 0u;
    v29 = v59;
    *(v28 + 4) = v58;
    *(v28 + 5) = v23;
    *(v28 + 6) = v29;
    *(v28 + 7) = v20;
    *(v28 + 4) = 0u;
    *(v28 + 5) = 0u;
    *(v28 + 6) = 0u;
    *(v28 + 7) = 0u;
    (*(v12 + 16))(&v16[v26[9]], v62, v24);
    v30 = sub_10008664C();
    v31 = v55;
    *v55 = v30;
    *(v31 + 8) = v32 & 1;
    *&v16[v56] = sub_10008663C();
    v33 = sub_1000866AC();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      v37 = sub_1000866DC();
      if (v38)
      {
        *v28 = v35;
        *(v28 + 1) = v36;
        *(v28 + 2) = v37;
        *(v28 + 3) = v38;
      }

      else
      {
      }
    }

    v39 = sub_10008668C();
    v41 = v57;
    if (v40)
    {
      v42 = v39;
      v43 = v40;
      v44 = sub_1000866BC();
      if (!v45)
      {

        v46 = sub_10008669C();
        if (v47)
        {
LABEL_18:
          v48 = v46;
          v49 = v47;
          v50 = sub_1000866CC();
          v52 = v51;

          (*(v12 + 8))(v62, v24);
          if (v52)
          {
            *(v28 + 12) = v48;
            *(v28 + 13) = v49;
            *(v28 + 14) = v50;
            *(v28 + 15) = v52;
          }

          else
          {
          }

          goto LABEL_23;
        }

LABEL_21:
        (*(v12 + 8))(v62, v24);

LABEL_23:
        v53 = v60;
        sub_10000E4A4(v16, v60, &qword_1000AEA70, &unk_10008D060);
        (*(v41 + 56))(v53, 0, 1, v63);
        return sub_10000649C(v16, &qword_1000AEA70, &unk_10008D060);
      }

      *(v28 + 8) = v42;
      *(v28 + 9) = v43;
      *(v28 + 10) = v44;
      *(v28 + 11) = v45;
    }

    v46 = sub_10008669C();
    if (v47)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_8:
  sub_10000649C(v16, &qword_1000AE9C0, &qword_10008A810);
  return (*(v14 + 56))(a3, 1, 1, v63);
}

unint64_t sub_10005F060()
{
  v1 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  __chkstk_darwin(v1 - 8);
  v3 = &v68 - v2;
  v4 = sub_1000864CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006EC0C(0, 1, 1, _swiftEmptyArrayStorage);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_10006EC0C((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = 0xD000000000000015;
  *(v8 + 2) = v10 + 1;
  v12 = &v8[16 * v10];
  *(v12 + 4) = 0xD000000000000019;
  *(v12 + 5) = 0x800000010008F480;
  v13 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v14 = (v0 + v13[10]);
  v15 = v14[5];
  v76 = v14[4];
  v77 = v15;
  v16 = v14[7];
  v78 = v14[6];
  v79 = v16;
  v17 = v14[1];
  v72 = *v14;
  v73 = v17;
  v18 = v14[3];
  v74 = v14[2];
  v75 = v18;
  v19 = sub_100012C94();
  v22 = *(v8 + 2);
  v21 = *(v8 + 3);
  if (v22 >= v21 >> 1)
  {
    v68 = v19;
    v65 = v8;
    v66 = v20;
    v67 = sub_10006EC0C((v21 > 1), v22 + 1, 1, v65);
    v20 = v66;
    v8 = v67;
    v19 = v68;
  }

  *(v8 + 2) = v22 + 1;
  v23 = &v8[16 * v22];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  sub_10000E4A4(v0, v3, &qword_1000AE9C0, &qword_10008A810);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000649C(v3, &qword_1000AE9C0, &qword_10008A810);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1000877DC(16);
    v80._countAndFlagsBits = 0x6962616C69617641;
    v80._object = 0xEE00203A7974696CLL;
    sub_1000871BC(v80);
    sub_1000878DC();
    v24 = v70;
    v25 = v71;
    v26 = v8;
    v27 = *(v8 + 2);
    v28 = v26;
    v29 = *(v26 + 3);
    if (v27 >= v29 >> 1)
    {
      v28 = sub_10006EC0C((v29 > 1), v27 + 1, 1, v28);
    }

    (*(v5 + 8))(v7, v4);
    *(v28 + 2) = v27 + 1;
    v30 = &v28[16 * v27];
    v8 = v28;
    *(v30 + 4) = v24;
    *(v30 + 5) = v25;
    v11 = 0xD000000000000015;
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  v81._countAndFlagsBits = 0x203A6574617453;
  v81._object = 0xE700000000000000;
  sub_1000871BC(v81);
  sub_10008672C();
  sub_1000878DC();
  v31 = v70;
  v32 = v71;
  v34 = *(v8 + 2);
  v33 = *(v8 + 3);
  if (v34 >= v33 >> 1)
  {
    v8 = sub_10006EC0C((v33 > 1), v34 + 1, 1, v8);
  }

  *(v8 + 2) = v34 + 1;
  v35 = &v8[16 * v34];
  *(v35 + 4) = v31;
  *(v35 + 5) = v32;
  v36 = v0 + v13[12];
  if ((*(v36 + 8) & 1) == 0)
  {
    v37 = *v36;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1000877DC(23);

    v70 = 0xD000000000000015;
    v71 = 0x800000010008F4C0;
    v69 = v37;
    v82._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v82);

    v31 = v70;
    v38 = v71;
    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    if (v40 >= v39 >> 1)
    {
      v8 = sub_10006EC0C((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v40 + 1;
    v41 = &v8[16 * v40];
    *(v41 + 4) = v31;
    *(v41 + 5) = v38;
  }

  v42 = *(v0 + v13[13]);
  if (v42)
  {
    if (v42 >> 62)
    {
      if (!sub_10008793C())
      {
        goto LABEL_30;
      }

      v43 = sub_10008793C();
      if (!v43)
      {
        v47 = _swiftEmptyArrayStorage;
        goto LABEL_28;
      }

LABEL_19:
      v70 = _swiftEmptyArrayStorage;
      v44 = &v70;
      sub_10006F608(0, v43 & ~(v43 >> 63), 0);
      if (v43 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v68 = v8;
      v46 = 0;
      v47 = v70;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v48 = sub_10008781C();
        }

        else
        {
          v48 = *(v42 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = [v48 description];
        v51 = sub_10008715C();
        v53 = v52;

        v70 = v47;
        v55 = v47[2];
        v54 = v47[3];
        if (v55 >= v54 >> 1)
        {
          sub_10006F608((v54 > 1), v55 + 1, 1);
          v47 = v70;
        }

        ++v46;
        v47[2] = v55 + 1;
        v56 = &v47[2 * v55];
        v56[4] = v51;
        v56[5] = v53;
      }

      while (v43 != v46);
      v8 = v68;
LABEL_28:
      v70 = v47;
      sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
      sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800, &protocol conformance descriptor for [A]);
      v57 = sub_10008712C();
      v59 = v58;

      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1000877DC(24);

      v70 = 0xD000000000000015;
      v71 = 0x800000010008F4A0;
      v83._countAndFlagsBits = v57;
      v83._object = v59;
      sub_1000871BC(v83);

      v84._countAndFlagsBits = 93;
      v84._object = 0xE100000000000000;
      sub_1000871BC(v84);
      v31 = v70;
      v42 = v71;
      v11 = *(v8 + 2);
      v45 = *(v8 + 3);
      v44 = (v11 + 1);
      if (v11 < v45 >> 1)
      {
LABEL_29:
        *(v8 + 2) = v44;
        v60 = &v8[16 * v11];
        *(v60 + 4) = v31;
        *(v60 + 5) = v42;
        goto LABEL_30;
      }

LABEL_35:
      v8 = sub_10006EC0C((v45 > 1), v44, 1, v8);
      goto LABEL_29;
    }

    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v70 = 60;
  v71 = 0xE100000000000000;
  v69 = v8;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800, &protocol conformance descriptor for [A]);
  v61 = sub_10008712C();
  v63 = v62;

  v85._countAndFlagsBits = v61;
  v85._object = v63;
  sub_1000871BC(v85);

  v86._countAndFlagsBits = 62;
  v86._object = 0xE100000000000000;
  sub_1000871BC(v86);
  return v70;
}

uint64_t sub_10005F7E8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005F8B0, v2, 0);
}

uint64_t sub_10005F8B0()
{
  v1 = v0[4];
  sub_100016564(0x656C652064616F4CLL, 0xEC000000746E656DLL);
  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[6];
  }

  else
  {
    v4 = v0[6];
    v3 = *(v4 + 112);
    if (!v3)
    {
      sub_100001EEC(&qword_1000AFAD8, &qword_10008C938);
      sub_100006454(&qword_1000AFAE0, &qword_1000AFAD8, &qword_10008C938, &unk_10008C648);
      swift_allocError();
      swift_willThrow();

      v20 = v0[1];

      return v20();
    }

    v2 = *(v4 + 120);
  }

  v0[9] = v2;
  v5 = *(v4 + 128);
  v0[10] = v5;
  if (*(v4 + 136))
  {
    if (*(v4 + 136) == 1)
    {
      sub_1000645E8(v0[4], v0[5]);
      sub_1000645F8(v5, 1);

      v6 = v0[1];

      return v6(v5);
    }

    v14 = v0[7];
    v13 = v0[8];
    sub_1000645E8(v0[4], v0[5]);
    sub_100016564(0x676E697472617453, 0xED00006B73617420);
    v15 = sub_10008742C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v3;
    v16[5] = v2;
    v16[6] = v14;

    v17 = sub_100059D98(0, 0, v13, &unk_10008C948, v16);
    v0[11] = v17;
    v18 = *(v4 + 128);
    *(v4 + 128) = v17;
    LOBYTE(v16) = *(v4 + 136);
    *(v4 + 136) = 0;

    sub_100064614(v18, v16);
    v19 = swift_task_alloc();
    v0[12] = v19;
    v9 = sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
    v10 = sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    *v19 = v0;
    v19[1] = sub_10005FCB4;
    v11 = v0 + 3;
    v12 = v17;
  }

  else
  {
    sub_1000645E8(v0[4], v0[5]);
    sub_1000645F8(v5, 0);
    v8 = swift_task_alloc();
    v0[14] = v8;
    v9 = sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
    v10 = sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    *v8 = v0;
    v8[1] = sub_10005FDE0;
    v11 = v0 + 2;
    v12 = v5;
  }

  return Task.value.getter(v11, v12, v9, v10, &protocol self-conformance witness table for Error);
}

uint64_t sub_10005FCB4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10005FFC0;
  }

  else
  {
    v4 = sub_10005FF0C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005FDE0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1000600E8;
  }

  else
  {
    v4 = sub_100060068;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005FF0C()
{
  v1 = v0[6];

  v2 = v0[3];
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
  v4 = *(v1 + 136);
  *(v1 + 136) = 1;
  v5 = v2;
  sub_100064614(v3, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10005FFC0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
  v3 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_100064614(v2, v3);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100060068()
{
  v1 = v0[10];

  sub_100064614(v1, 0);
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1000600E8()
{
  v1 = *(v0 + 80);

  sub_100064614(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100060160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000653AC;

  return sub_10006474C(a3, a4, a5);
}

id sub_10006020C()
{
  swift_defaultActor_initialize();
  v13 = 1;
  v12 = 1;
  v11 = 1;
  v10 = 1;
  v9 = 1;
  v8 = 1;
  v7 = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xD000000000000011;
  *(v0 + 144) = 0x800000010008FB70;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = 0xD000000000000016;
  *(v0 + 184) = 0x800000010008FB90;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0xD000000000000018;
  *(v0 + 216) = 0x800000010008FBB0;
  *(v0 + 224) = 0;
  *(v0 + 228) = 1;
  *(v0 + 232) = 0xD000000000000018;
  *(v0 + 240) = 0x800000010008FBD0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0xD00000000000001ALL;
  *(v0 + 272) = 0x800000010008FBF0;
  *(v0 + 280) = 0;
  *(v0 + 284) = 1;
  *(v0 + 288) = 0xD000000000000014;
  *(v0 + 296) = 0x800000010008FC10;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 320) = 0xD000000000000016;
  *(v0 + 328) = 0x800000010008FC30;
  *(v0 + 336) = 0;
  *(v0 + 340) = 1;
  *(v0 + 344) = _swiftEmptyArrayStorage;
  sub_100001EEC(&qword_1000AE528, &qword_100089C88);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 136) = 2;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  *(v0 + 352) = v1;
  *(v0 + 360) = &_swiftEmptyDictionarySingleton;
  *(v0 + 368) = &_swiftEmptyDictionarySingleton;
  *(v0 + 376) = &_swiftEmptyDictionarySingleton;
  if (qword_1000ADBF0 != -1)
  {
    swift_once();
  }

  v2 = unk_1000B3BE0;
  *(v0 + 384) = qword_1000B3BD8;
  *(v0 + 392) = v2;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  v3 = qword_1000ADBF8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = unk_1000B3BF0;
  *(v0 + 416) = qword_1000B3BE8;
  *(v0 + 424) = v4;
  *(v0 + 432) = &_swiftEmptySetSingleton;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BetaEnrollmentNetworkingSession();

  return objc_msgSendSuper2(&v6, "init");
}

_OWORD *sub_100060484()
{
  v1 = v0[20];
  v9[12] = v0[19];
  v9[13] = v1;
  v9[14] = v0[21];
  v2 = v0[16];
  v9[8] = v0[15];
  v9[9] = v2;
  v3 = v0[18];
  v9[10] = v0[17];
  v9[11] = v3;
  v4 = v0[12];
  v9[4] = v0[11];
  v9[5] = v4;
  v5 = v0[14];
  v9[6] = v0[13];
  v9[7] = v5;
  v6 = v0[8];
  v9[0] = v0[7];
  v9[1] = v6;
  v7 = v0[10];
  v9[2] = v0[9];
  v9[3] = v7;
  sub_1000650A8(v9);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10006053C()
{
  sub_100060484();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000605D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_1000605F8, 0, 0);
}

uint64_t sub_1000605F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000606F8;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_100060838(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000606F8()
{

  return _swift_task_switch(sub_100060810, 0, 0);
}

uint64_t sub_100060838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a2;
  v4[14] = v3;
  v4[12] = a1;
  v4[15] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[16] = AssociatedTypeWitness;
  v4[17] = *(AssociatedTypeWitness - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10006091C, v3, 0);
}

uint64_t sub_10006091C()
{
  v10 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = 0;
  v4 = *(v0 + 96);
  v9 = 0xE000000000000000;
  sub_1000877DC(18);
  v12._object = 0x800000010008F460;
  v12._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v12);
  *(v0 + 80) = v4;
  sub_1000879EC();
  sub_10001640C(v8, v9);

  *(v0 + 88) = v4;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 72) = 0;
  swift_beginAccess();
  sub_10006C118(v0 + 64, &v8);
  swift_endAccess();
  swift_beginAccess();
  if ((*(v7 + 128) & 1) == 0)
  {
    sub_100016548(0x676E697472617453, 0xE800000000000000);
    *(v7 + 128) = 1;
  }

  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100060B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_100060B48, 0, 0);
}

uint64_t sub_100060B48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100060C48;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_100060D60(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100060C48()
{

  return _swift_task_switch(sub_1000653A8, 0, 0);
}

uint64_t sub_100060D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a2;
  v4[19] = v3;
  v4[17] = a1;
  v4[20] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[21] = AssociatedTypeWitness;
  v4[22] = *(AssociatedTypeWitness - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100060E44, v3, 0);
}

uint64_t sub_100060E44()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v7 = v0[19];
  v4 = v0[17];
  sub_1000877DC(20);
  v9._object = 0x800000010008F420;
  v9._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v9);
  v0[15] = v4;
  sub_1000879EC();
  sub_10001640C(0, 0xE000000000000000);

  v0[16] = v4;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  sub_10006C438(v0 + 13, (v0 + 2));
  sub_100036E90((v0 + 2));
  sub_10000649C((v0 + 13), &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();
  if (!*(*(v7 + 360) + 16))
  {
    swift_beginAccess();
    sub_100007F5C();
    swift_endAccess();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100061030(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_100001FB4((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (!a4)
  {
    if (a2)
    {
      if (a3)
      {
        v12 = *(v8[8] + 40);
        *v12 = a2;
        v12[1] = a3;
        v13 = a2;
        v14 = a3;
        v7 = v8;

        return _swift_continuation_throwingResume(v7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_continuation_throwingResume(v7);
  }

  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  v9 = swift_allocError();
  *v10 = a4;
  v11 = a4;

  return _swift_continuation_throwingResumeWithError(v8, v9);
}

void sub_100061118(void *a1, void *a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  __chkstk_darwin(v4 - 8);
  v84 = &v76 - v5;
  v6 = sub_10008672C();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v76 - v12;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1000877DC(31);

  v88 = 0xD000000000000015;
  v89 = 0x800000010008F970;
  if (a1)
  {
    v13 = sub_100023B40(0, &qword_1000AFAC0, COMessageChannelResponse_ptr);
    v92 = v13;
    v93 = sub_100064240(&qword_1000AFAC8, &qword_1000AFAC0, COMessageChannelResponse_ptr, &protocol conformance descriptor for NSObject);
    v90 = a1;
    v14 = *sub_100001FB4(&v90, v13);
    v15 = a1;
    v16 = [v14 description];
    v17 = sub_10008715C();
    v19 = v18;

    sub_100001FF8(&v90);
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  v95._countAndFlagsBits = v17;
  v95._object = v19;
  sub_1000871BC(v95);

  v96._countAndFlagsBits = 0x206D6F726620;
  v96._object = 0xE600000000000000;
  sub_1000871BC(v96);
  if (!a2)
  {
    v98._countAndFlagsBits = 7104878;
    v98._object = 0xE300000000000000;
    sub_1000871BC(v98);

    sub_10001640C(v88, v89);

    goto LABEL_11;
  }

  v20 = sub_100023B40(0, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
  v92 = v20;
  v93 = sub_100064240(&qword_1000AEDD8, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr, &protocol conformance descriptor for NSObject);
  v90 = a2;
  v21 = *sub_100001FB4(&v90, v20);
  v22 = a2;
  v23 = [v21 description];
  v24 = sub_10008715C();
  v26 = v25;

  sub_100001FF8(&v90);
  v97._countAndFlagsBits = v24;
  v97._object = v26;
  sub_1000871BC(v97);

  sub_10001640C(v88, v89);

  v27 = [v22 member];
  if (!v27)
  {
LABEL_11:
    sub_100064304();
    swift_allocError();
    *v32 = 6;
    swift_willThrow();
    return;
  }

  v28 = v27;
  if (!a1 || (sub_10008661C(), (v29 = swift_dynamicCastClass()) == 0))
  {
    sub_100064304();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();

    return;
  }

  v30 = v29;
  v79 = a1;
  v31 = sub_1000865EC();
  if (v31)
  {
  }

  else if (sub_10008660C())
  {
    goto LABEL_24;
  }

  v34 = sub_1000865EC();
  v80 = v30;
  if (v34)
  {
    v35 = v34;
    v36 = sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
    v92 = v36;
    v93 = sub_100064240(&qword_1000AE1D8, &qword_1000AE1E0, NSError_ptr, &protocol conformance descriptor for NSObject);
    v90 = v35;
    v37 = *sub_100001FB4(&v90, v36);
    v38 = v35;
    v39 = [v37 description];
    v40 = sub_10008715C();
    v42 = v41;

    sub_100001FF8(&v90);
  }

  else
  {
    v42 = 0xE300000000000000;
    v40 = 7104878;
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1000877DC(64);
  v99._countAndFlagsBits = 0xD000000000000032;
  v99._object = 0x800000010008F990;
  sub_1000871BC(v99);
  v100._countAndFlagsBits = v40;
  v100._object = v42;
  sub_1000871BC(v100);

  v101._countAndFlagsBits = 0x736563637573202CLL;
  v101._object = 0xEA00000000002073;
  sub_1000871BC(v101);
  v43 = sub_10008660C();
  v44 = (v43 & 1) == 0;
  if (v43)
  {
    v45._countAndFlagsBits = 1702195828;
  }

  else
  {
    v45._countAndFlagsBits = 0x65736C6166;
  }

  if (v44)
  {
    v46 = 0xE500000000000000;
  }

  else
  {
    v46 = 0xE400000000000000;
  }

  v45._object = v46;
  sub_1000871BC(v45);

  v78 = v90;
  v90 = type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v47 = objc_allocWithZone(CULogHandle);
  v48 = sub_10008714C();
  v49 = sub_10008714C();

  v50 = [v47 initWithSubsystem:v48 category:v49];

  v51 = sub_10008714C();

  [v50 ulog:60 message:v51];

  v30 = v80;
LABEL_24:
  v52 = v94;
  swift_beginAccess();
  v53 = *(v52 + 368);
  if (*(v53 + 16))
  {

    v54 = sub_10006E748(v28);
    if (v55)
    {
      sub_10000E4A4(*(v53 + 56) + *(v86 + 72) * v54, v11, &qword_1000AEA70, &unk_10008D060);

      v56 = v11;
      v78 = v28;
      v57 = v85;
      sub_100064358(v56, v85);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1000877DC(44);
      v102._countAndFlagsBits = 0x676E697461647055;
      v102._object = 0xEA00000000006020;
      sub_1000871BC(v102);
      v58 = v87;
      sub_1000871BC(*(v57 + *(v87 + 40) + 32));
      v103._countAndFlagsBits = 0x2E65746174732060;
      v103._object = 0xE900000000000020;
      sub_1000871BC(v103);
      v77 = *(v58 + 36);
      v59 = v83;
      sub_1000878DC();
      v104._countAndFlagsBits = 540945696;
      v104._object = 0xE400000000000000;
      sub_1000871BC(v104);
      v60 = v30;
      v61 = v81;
      sub_1000865FC();
      sub_1000878DC();
      v62 = v82;
      (*(v82 + 8))(v61, v59);
      v105._countAndFlagsBits = 0x6E6F70736572202ELL;
      v105._object = 0xED00000A203A6573;
      sub_1000871BC(v105);
      v63 = [v60 description];
      v64 = sub_10008715C();
      v66 = v65;

      v106._countAndFlagsBits = v64;
      v106._object = v66;
      sub_1000871BC(v106);

      sub_10001640C(v88, v89);

      sub_1000865FC();
      v67 = v85;
      (*(v62 + 40))(v85 + v77, v61, v59);
      v68 = sub_1000865DC();
      v69 = v87;
      v70 = v67;
      v71 = v67 + *(v87 + 48);
      *v71 = v68;
      *(v71 + 8) = v72 & 1;
      v73 = v84;
      sub_10000E4A4(v67, v84, &qword_1000AEA70, &unk_10008D060);
      (*(v86 + 56))(v73, 0, 1, v69);
      swift_beginAccess();
      v74 = v78;
      sub_10006C1E4(v73, v74);
      swift_endAccess();
      sub_100063380();

      sub_10000649C(v70, &qword_1000AEA70, &unk_10008D060);
      return;
    }
  }

  sub_100064304();
  swift_allocError();
  *v75 = 8;
  swift_willThrow();
}

uint64_t sub_100061B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_10005B490(a1, a2, a3);
}

uint64_t sub_100061C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004265C;

  return sub_10005B670();
}

uint64_t sub_100061CAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_10005B860();
}

uint64_t sub_100061D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_10005BBD4(a1, a2, a3);
}

uint64_t sub_100061DE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_10005BDB4(a1, a2);
}

uint64_t sub_100061E88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_10005D774(a1, a2);
}

uint64_t sub_100061F2C(uint64_t a1, uint64_t a2)
{
  result = sub_100061F84(&qword_1000AFAA8, a2, type metadata accessor for BetaEnrollmentNetworkingSession, &unk_10008C8BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100061F84(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100061FCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100062004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return _swift_task_switch(sub_100062028, 0, 0);
}

uint64_t sub_100062028()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[25] = objc_opt_self();

    return _swift_task_switch(sub_100062130, v2, 0);
  }

  else
  {
    sub_10000EEA4();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100062130()
{
  v1 = v0[24];
  v0[26] = *(v1 + 384);
  v0[27] = *(v1 + 392);

  return _swift_task_switch(sub_1000621AC, 0, 0);
}

uint64_t sub_1000621AC()
{
  v1 = *(v0 + 192);
  *(v0 + 224) = sub_10008714C();

  return _swift_task_switch(sub_100062228, v1, 0);
}

uint64_t sub_100062228()
{
  v1 = v0[24];
  v0[29] = *(v1 + 400);
  v0[30] = *(v1 + 408);

  return _swift_task_switch(sub_1000622A4, 0, 0);
}

uint64_t sub_1000622A4()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v0[10] = v0[29];
  v0[11] = v1;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  v5 = sub_10008766C();

  v0[31] = [v3 messageChannelWithTopic:v2 cluster:v5 manualGrouping:1];
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100062384, v4, 0);
}

uint64_t sub_100062384()
{
  *(v0 + 256) = *(*(v0 + 192) + 432);

  return _swift_task_switch(sub_1000623F8, 0, 0);
}

uint64_t sub_1000623F8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  sub_10008609C();
  sub_100061F84(&qword_1000AE428, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  isa = sub_10008749C().super.isa;

  [v1 addGroupedHomeKitIdentifiers:isa];

  return _swift_task_switch(sub_1000624E0, v2, 0);
}

uint64_t sub_1000624E0()
{
  sub_100062938(*(v0 + 248));

  return _swift_task_switch(sub_10006254C, 0, 0);
}

uint64_t sub_10006254C()
{
  v1 = v0[31];
  sub_100059920(0xD000000000000016, 0x800000010008FA60, v0[23], &off_1000A9370);
  v0[2] = v0;
  v0[3] = sub_10006268C;
  v2 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000AE430, &qword_100089B08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001BF1C;
  v0[13] = &unk_1000A9448;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006268C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_10006280C;
  }

  else
  {
    v2 = sub_10006279C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006279C()
{
  v1 = v0[31];
  v2 = v0[21];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10006280C(uint64_t a1)
{
  v2 = *(v1 + 248);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10006288C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000324C;

  return sub_100062004(a1, v5, v4);
}

void sub_100062938(void *a1)
{
  v2 = v1;
  v4 = sub_10008707C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100064AFC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006323C;
  aBlock[3] = &unk_1000A9470;
  v9 = _Block_copy(aBlock);

  sub_1000866EC();
  [a1 registerHandler:v9 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v9);

  v10 = sub_10008714C();

  sub_100023B40(0, &qword_1000AFAF0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v11 = sub_10008761C();
  (*(v5 + 8))(v7, v4);
  [a1 addSessionProducerWithSubTopic:v10 delegate:v2 dispatchQueue:v11];
}

void sub_100062B60(void *a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = sub_100062C74(a1, a2);
    a3(v10, 0);
  }

  else
  {
    sub_10000EEA4();
    v8 = swift_allocError();
    *v9 = 3;
    swift_willThrow();
    swift_errorRetain();
    a3(0, v8);
  }
}

unsigned __int8 *sub_100062C74(void *a1, void *a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v4 - 8);
  v41 = &v39 - v5;
  v6 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v42 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v45 = *(v42 - 8);
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v42);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v39 - v11;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1000877DC(31);

  v43 = 0xD000000000000015;
  v44 = 0x800000010008FAF0;
  v12 = [a1 description];
  v13 = sub_10008715C();
  v15 = v14;

  v46._countAndFlagsBits = v13;
  v46._object = v15;
  sub_1000871BC(v46);

  v47._countAndFlagsBits = 0x206D6F726620;
  v47._object = 0xE600000000000000;
  sub_1000871BC(v47);
  v16 = [a2 member];
  v17 = [v16 description];
  v18 = sub_10008715C();
  v20 = v19;

  v48._countAndFlagsBits = v18;
  v48._object = v20;
  sub_1000871BC(v48);

  sub_10001640C(v43, v44);

  sub_1000866EC();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = a1;
    sub_10005EB7C(v22, [a2 member], v8);
    v24 = v45;
    if ((*(v45 + 48))(v8, 1, v42) == 1)
    {
      sub_10000649C(v8, &qword_1000AEDC8, &qword_10008C910);
      sub_100064304();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }

    else
    {
      v31 = v40;
      sub_100064358(v8, v40);
      v32 = sub_10008742C();
      v33 = v41;
      (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = v39;
      sub_10000E4A4(v31, v39, &qword_1000AEA70, &unk_10008D060);
      v36 = (v24[80] + 40) & ~v24[80];
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v34;
      sub_100064358(v35, v37 + v36);
      sub_100016C64(0, 0, v33, &unk_10008C978, v37);

      v24 = [objc_allocWithZone(sub_10008670C()) init];

      sub_10000649C(v31, &qword_1000AEA70, &unk_10008D060);
    }
  }

  else
  {
    v43 = type metadata accessor for BetaEnrollmentNetworkingSession();
    sub_100001EEC(&qword_1000AE538, &qword_100089C98);
    sub_10008716C();
    v26 = objc_allocWithZone(CULogHandle);
    v27 = sub_10008714C();
    v28 = sub_10008714C();

    v24 = [v26 initWithSubsystem:v27 category:v28];

    v29 = sub_10008714C();
    [v24 ulog:60 message:v29];

    sub_10000EEA4();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();
  }

  return v24;
}

void sub_10006323C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100064B54, v8);
}

void sub_100063310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10008600C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100063380()
{
  ObjectType = swift_getObjectType();
  v0 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_10008609C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  sub_10008608C();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1000877DC(29);

  v18 = 0xD00000000000001BLL;
  v19 = 0x800000010008F9D0;
  sub_100061F84(&qword_1000AE420, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v20);

  sub_10001640C(v18, v19);

  v10 = sub_10008742C();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v12, v7, v3);
  *(v14 + v13) = v11;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  sub_100016C64(0, 0, v2, &unk_10008C920, v14);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100063698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_1000636B8, 0, 0);
}

uint64_t sub_1000636B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100063770, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100063770()
{
  v1 = *(v0 + 48);
  sub_1000877DC(23);

  v5._countAndFlagsBits = sub_10005F060();
  sub_1000871BC(v5);

  sub_10001640C(0xD000000000000015, 0x800000010008FB10);

  sub_1000639E4(v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100063888;

  return sub_10005A8E8();
}

uint64_t sub_100063888()
{

  return _swift_task_switch(sub_100063984, 0, 0);
}

uint64_t sub_100063984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000639E4(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1000877DC(21);

  v9 = 0xD000000000000013;
  v10 = 0x800000010008FB30;
  v11._countAndFlagsBits = sub_10005F060();
  sub_1000871BC(v11);

  sub_10001640C(v9, v10);

  v5 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v6 = *(a1 + *(v5 + 44));
  sub_10000E4A4(a1, v4, &qword_1000AEA70, &unk_10008D060);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  swift_beginAccess();
  sub_10006C1E4(v4, v6);
  return swift_endAccess();
}

uint64_t sub_100063B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_100063BA4, 0, 0);
}

uint64_t sub_100063BA4()
{
  v1 = v0[7];
  sub_1000877DC(38);

  sub_10008609C();
  sub_100061F84(&qword_1000AE420, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v7);

  sub_100059920(0xD000000000000024, 0x800000010008F9F0, v1, &off_1000A9370);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_100063D6C;

    return sub_10005A8E8();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100063D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100063E7C()
{
  swift_beginAccess();
  v1 = *(v0 + 360);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (v4)
  {
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_10000E4A4(*(v1 + 56) + ((v7 << 9) | (8 * v10)), v19, &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C(v19, &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12)
      {
        v18 = v12;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F100(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v14 = v8[2];
        v13 = v8[3];
        v15 = v14 + 1;
        v16 = v18;
        if (v14 >= v13 >> 1)
        {
          result = sub_10006F100((v13 > 1), v14 + 1, 1, v8);
          v15 = v14 + 1;
          v16 = v18;
          v8 = result;
        }

        v8[2] = v15;
        v17 = &v8[2 * v14];
        v17[4] = Strong;
        v17[5] = v16;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100064068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_100064130;

  return sub_100060160(a2, a3, a4, a5, a6);
}

uint64_t sub_100064130(uint64_t a1)
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

uint64_t sub_100064240(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100023B40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100064304()
{
  result = qword_1000AFAD0;
  if (!qword_1000AFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAD0);
  }

  return result;
}

uint64_t sub_100064358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000643C8()
{
  v1 = sub_10008609C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000644B0(uint64_t a1)
{
  v4 = *(sub_10008609C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_100063B80(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1000645E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1000645F8(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_100064614(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_100064630()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100064670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000324C;

  return sub_100064068(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10006474C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100064770, 0, 0);
}

uint64_t sub_100064770()
{
  sub_10008746C();
  v3 = (*(v0 + 48) + **(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000648B0;

  return v3(v0 + 32);
}

uint64_t sub_1000648B0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100064AE4;
  }

  else
  {
    v2 = sub_1000649C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000649C4()
{
  v1 = v0[8];
  sub_1000877DC(28);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v6._object = 0x800000010008FA40;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v6);
  v2 = v0[4];
  v0[5] = v2;
  sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
  sub_1000878DC();
  sub_100059920(v0[2], v0[3], v1, &off_1000A9150);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100064B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100064B1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100064B5C()
{
  v1 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = sub_1000864CC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[9];
  v7 = sub_10008672C();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = (v3 + v1[10]);
  if (v8[1])
  {
  }

  if (v8[9])
  {
  }

  if (v8[13])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100064D40(uint64_t a1)
{
  v4 = *(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002740;

  return sub_100063698(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100064E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064EB8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_100060B20(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_100064F8C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100064FD4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_1000605D0(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1000650FC()
{

  return swift_deallocObject();
}

uint64_t sub_100065134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002740;

  return sub_100062004(a1, v5, v4);
}

uint64_t getEnumTagSinglePayload for BetaEnrollmentNetworkingSession.SessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BetaEnrollmentNetworkingSession.SessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100065334()
{
  result = qword_1000AFAF8[0];
  if (!qword_1000AFAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFAF8);
  }

  return result;
}

uint64_t sub_1000653B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100065448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v62 = a4;
  v61 = a3;
  v55 = a1;
  v64 = a7;
  v50 = sub_100001EEC(&qword_1000AFBB0, &unk_10008CBE0);
  v10 = __chkstk_darwin(v50);
  v47 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = v46 - v12;
  v60 = sub_1000864CC();
  v58 = *(v60 - 8);
  v13 = __chkstk_darwin(v60);
  v57 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = v46 - v15;
  v16 = sub_10008672C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v46 - v21;
  v23 = *(a6 + 72);
  swift_unknownObjectRetain();
  v63 = a5;
  v65 = a6;
  v46[1] = a6 + 72;
  v46[0] = v23;
  v23(a5, a6);
  v48 = *(v17 + 104);
  v49 = v17 + 104;
  v48(v20, enum case for BetaEnrollment.State.multiple(_:), v16);
  sub_10006741C(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  v24 = sub_10008713C();
  v52 = v17;
  v25 = *(v17 + 8);
  v54 = v20;
  v25(v20, v16);
  v53 = v22;
  v51 = v25;
  v25(v22, v16);
  if (v24 & 1) != 0 || (v26 = v56, (*(v65 + 48))(v63), v28 = v57, v27 = v58, v29 = v60, (*(v58 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v60), sub_10006741C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability), v30 = sub_10008713C(), v31 = *(v27 + 8), v31(v28, v29), v31(v26, v29), v32 = v59, v33 = v62, v34 = v61, v35 = v65, (v30))
  {
    swift_unknownObjectRelease();
    result = sub_100086F5C();
  }

  else
  {
    v37 = v53;
    v38 = v63;
    (v46[0])(v63, v65);
    swift_unknownObjectRelease();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v35;
    *(v39 + 32) = v55;
    *(v39 + 40) = a2;
    *(v39 + 48) = v34 & 1;
    *(v39 + 56) = v33;
    v40 = type metadata accessor for EnrollToggle(0);
    (*(v52 + 16))(v32 + *(v40 + 20), v37, v16);
    v41 = (v32 + *(v40 + 24));
    *v41 = sub_100067284;
    v41[1] = v39;
    v42 = v54;
    v48(v54, enum case for BetaEnrollment.State.enrolled(_:), v16);
    sub_10006741C(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
    swift_unknownObjectRetain();

    sub_10008729C();
    sub_10008729C();
    v43 = v51;
    v51(v42, v16);
    v43(v37, v16);
    *v32 = v67 == v66;
    *(v32 + 8) = 0;
    v44 = v32 + *(v50 + 36);
    *v44 = 0;
    *(v44 + 8) = 1;
    sub_1000672F0(v32, v47);
    sub_100067360();
    v45 = sub_100086F5C();
    sub_10000649C(v32, &qword_1000AFBB0, &unk_10008CBE0);
    result = v45;
  }

  *v64 = result;
  return result;
}

uint64_t sub_100065A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  *a7 = sub_100086A9C();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  sub_100065B60(a1, a2, v10, a4, a5, a6, a7 + 24);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = v10;
  *(v14 + 56) = a4;
  *(a7 + 144) = v16;
  *(a7 + 152) = sub_100067088;
  *(a7 + 160) = v14;

  return swift_unknownObjectRetain();
}

uint64_t sub_100065B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[0] = a2;
  v11 = *(a6 + 16);
  v12 = *(v11 + 8);
  swift_unknownObjectRetain();
  v13 = v12(a5, v11);
  v15 = v14;
  v16 = (*(a6 + 64))(a5, a6);
  v18 = v17;
  v27[12] = a2;
  v19 = (*(v11 + 16))(a5, v11);
  v21 = v20;
  swift_unknownObjectRelease();
  v28[0] = v19;
  v28[1] = v21;
  v29 = 1;
  v30 = v16;
  v31 = v18;
  v32 = v13;
  v33 = v15;
  v34 = 0;
  v35 = 0;
  sub_100065448(a1, a2, a3, a4, a5, a6, v27);
  v22 = v27[0];
  sub_1000671D4(v28, v27);
  sub_1000671D4(v27, a7);
  *(a7 + 96) = 0;
  *(a7 + 104) = 1;
  *(a7 + 112) = v22;

  sub_100067230(v28);

  return sub_100067230(v27);
}

uint64_t sub_100065CD0(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  result = __chkstk_darwin(v14 - 8);
  v17 = &v21 - v16;
  if ((*a1 & 1) == 0)
  {
    v18 = sub_10008742C();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_1000873FC();

    swift_unknownObjectRetain();
    v19 = sub_1000873EC();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = a6;
    *(v20 + 40) = a7;
    *(v20 + 48) = a2;
    *(v20 + 56) = a3;
    *(v20 + 64) = a4 & 1;
    *(v20 + 72) = a5;
    sub_100016C64(0, 0, v17, &unk_10008CBD0, v20);
  }

  return result;
}

uint64_t sub_100065E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_100065EE0, v10, v9);
}

uint64_t sub_100065EE0()
{
  v1 = *(v0[4] + 104);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100065FF8;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_100065FF8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v3, v2);
}

uint64_t sub_10006613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a5;
  v69 = a4;
  v67 = a3;
  v62 = a2;
  v68 = a1;
  v72 = a7;
  v8 = sub_100003200(&qword_1000AFB80, &qword_10008CBA8);
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = &protocol witness table for AnyView;
  v76[0] = v8;
  v56 = sub_100086FBC();
  v76[1] = v56;
  v70 = sub_100066F64();
  v76[2] = v70;
  WitnessTable = swift_getWitnessTable();
  v53[1] = WitnessTable;
  v9 = sub_10008694C();
  v57 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = v53 - v12;
  v61 = sub_1000864CC();
  v60 = *(v61 - 8);
  v13 = __chkstk_darwin(v61);
  v59 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = v53 - v15;
  v16 = sub_10008672C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v53 - v21;
  v66 = v9;
  v71 = v8;
  v23 = v62;
  v65 = sub_100086B9C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = v53 - v24;
  v25 = *(a6 + 72);
  swift_unknownObjectRetain();
  v25(v73, a6);
  (*(v17 + 104))(v20, enum case for BetaEnrollment.State.multiple(_:), v16);
  sub_10006741C(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v26 = *(v17 + 8);
  v26(v20, v16);
  v26(v22, v16);
  if (v76[0] != v79)
  {
    swift_unknownObjectRelease();
    v34 = a6;
    v35 = v73;
    goto LABEL_5;
  }

  v27 = v58;
  v28 = v73;
  (*(a6 + 48))(v73, a6);
  swift_unknownObjectRelease();
  v29 = v60;
  v30 = v59;
  v31 = v61;
  (*(v60 + 104))(v59, enum case for BetaEnrollment.Availability.unavailable(_:), v61);
  sub_10006741C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  v32 = sub_10008713C();
  v33 = *(v29 + 8);
  v33(v30, v31);
  v33(v27, v31);
  v34 = a6;
  v35 = v28;
  if (v32)
  {
LABEL_5:
    sub_100065A60(v68, v23, v67 & 1, v69, v35, v34, v76);
    v49 = v66;
    v50 = swift_getWitnessTable();
    v48 = v63;
    v43 = v70;
    sub_10004B430(v76, v49, v71, v50, v70);
    sub_10000649C(v76, &qword_1000AFB80, &qword_10008CBA8);
    goto LABEL_6;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = a6;
  *(v36 + 32) = v68;
  *(v36 + 40) = v23;
  *(v36 + 48) = v67 & 1;
  v37 = v69;
  *(v36 + 56) = v69;
  v38 = __chkstk_darwin(v37);
  v53[-6] = v28;
  v53[-5] = a6;
  v53[-4] = v39;
  v53[-3] = v23;
  LOBYTE(v53[-2]) = v40;
  v53[-1] = v38;

  swift_unknownObjectRetain();
  v41 = v55;
  v42 = v71;
  v43 = v70;
  sub_10008693C();
  v44 = v66;
  v45 = swift_getWitnessTable();
  v46 = v54;
  sub_10004EDD8();
  v47 = *(v57 + 8);
  v47(v41, v44);
  sub_10004EDD8();
  v48 = v63;
  sub_10004B338(v41, v44, v42, v45, v43);
  v47(v41, v44);
  v47(v46, v44);
LABEL_6:
  v74 = swift_getWitnessTable();
  v75 = v43;
  v51 = v65;
  swift_getWitnessTable();
  sub_10004EDD8();
  return (*(v64 + 8))(v48, v51);
}

uint64_t sub_100066AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v25 = a3;
  v24 = a1;
  v28 = a7;
  swift_getAssociatedTypeWitness();
  v10 = sub_10008739C();
  v23[2] = *(swift_getAssociatedConformanceWitness() + 24);
  v27 = v10;
  v30 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[1] = AssociatedTypeWitness;
  v32 = &type metadata for AnyView;
  WitnessTable = swift_getWitnessTable();
  v23[0] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_100086FBC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v23 - v16;
  v18 = *(a6 + 56);
  swift_unknownObjectRetain();
  v19 = v18(a5, a6);
  swift_unknownObjectRelease();
  if (!v19)
  {
    v19 = sub_10008732C();
  }

  v30 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = v24;
  *(v20 + 40) = a2;
  *(v20 + 48) = v25 & 1;
  *(v20 + 56) = v26;

  swift_unknownObjectRetain();
  sub_100086FAC();
  v29 = &protocol witness table for AnyView;
  swift_getWitnessTable();
  sub_10004EDD8();
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_10004EDD8();
  return (v21)(v17, v11);
}

void *sub_100066DE0@<X0>(void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_100066E88(AssociatedTypeWitness, &v8, AssociatedConformanceWitness);
  *a4 = v8;
  return result;
}

uint64_t sub_100066E88@<X0>(uint64_t a2@<X6>, uint64_t *a3@<X8>, uint64_t a4)
{
  v6 = swift_unknownObjectRetain();
  sub_10004EDF0(v6, 0, a2, a4);
  v8 = type metadata accessor for BetaSettingsToggleRowView(0, a2, a4, v7);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_100059858(v8, WitnessTable);
  swift_unknownObjectRelease();

  *a3 = v10;
  return result;
}

unint64_t sub_100066F64()
{
  result = qword_1000AFB88;
  if (!qword_1000AFB88)
  {
    sub_100003200(&qword_1000AFB80, &qword_10008CBA8);
    sub_100006454(&qword_1000AFB90, &qword_1000AFB98, &qword_10008CBB0, &protocol conformance descriptor for HStack<A>);
    sub_100006454(&qword_1000AFBA0, &qword_1000AFBA8, &unk_10008CBB8, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFB88);
  }

  return result;
}

uint64_t sub_10006709C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000670E4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002740;

  return sub_100065E3C(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_100067284()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 120);
  swift_unknownObjectRetain();
  v3(v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000672F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AFBB0, &unk_10008CBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100067360()
{
  result = qword_1000AFBB8;
  if (!qword_1000AFBB8)
  {
    sub_100003200(&qword_1000AFBB0, &unk_10008CBE0);
    sub_10006741C(&qword_1000AFBC0, type metadata accessor for EnrollToggle, &unk_10008D340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBB8);
  }

  return result;
}

uint64_t sub_10006741C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100067464(uint64_t *a1)
{
  sub_100003200(&qword_1000AFB80, &qword_10008CBA8);
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_100066F64();
  swift_getWitnessTable();
  sub_10008694C();
  sub_100086B9C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

char *sub_100067688@<X0>(char **a1@<X8>)
{
  result = sub_100067808();
  *a1 = result;
  return result;
}

uint64_t sub_1000676B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010008FC70 == a2 || (sub_100087A1C() & 1) != 0 || a1 == 0xD000000000000011 && 0x800000010008FC90 == a2 || (sub_100087A1C() & 1) != 0 || a1 == 0xD000000000000011 && 0x800000010008FCB0 == a2 || (sub_100087A1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008FCD0 == a2)
  {

    return 0;
  }

  else
  {
    v5 = sub_100087A1C();

    if (v5)
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }
}

char *sub_100067808()
{
  v0 = sub_10006F00C(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 0x80;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 3, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v0[v5 + 32] = 1;
  if (v3 < (v2 + 4))
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v2 + 4;
  v0[v6 + 32] = -127;
  return v0;
}

uint64_t getEnumTagSinglePayload for DeviceModel.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DeviceModel.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100067B30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003200(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067B88()
{
  result = qword_1000AFBE8;
  if (!qword_1000AFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBE8);
  }

  return result;
}

double sub_100067C08@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *(a2 + 24) = &type metadata for ProfileIcon;
  *(a2 + 32) = sub_100067D3C();
  *a2 = vdupq_n_s64(0x4045000000000000uLL);
  *(a2 + 40) = 2;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = v4;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = sub_100086BFC();
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 1;
  return result;
}

unint64_t sub_100067D3C()
{
  result = qword_1000AFBF0;
  if (!qword_1000AFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBF0);
  }

  return result;
}

unint64_t sub_100067D94()
{
  result = qword_1000AFBF8;
  if (!qword_1000AFBF8)
  {
    sub_100003200(&qword_1000AFC00, qword_10008CE30);
    sub_10004E5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBF8);
  }

  return result;
}

uint64_t sub_100067E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100067EC0, 0, 0);
}

uint64_t sub_100067EC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_10008742C();
  v8 = *(v0 + 24);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v8;
  *(v5 + 48) = v4;
  *(v5 + 56) = v2;
  swift_unknownObjectRetain();
  sub_100016950(0, 0, v1, &unk_10008D008, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100068000(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_10008623C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_10008622C();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  sub_100001EEC(&qword_1000AFE78, &qword_10008CFD0);
  v2[22] = swift_task_alloc();
  v5 = sub_10008603C();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000681B0, v1, 0);
}

uint64_t sub_1000681B0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  sub_1000877DC(25);

  v0[26] = sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  v20._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v20);

  sub_1000163E0(0xD000000000000017, 0x800000010008FDB0);

  sub_10008602C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000649C(v0[22], &qword_1000AFE78, &qword_10008CFD0);
    sub_10000EEA4();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
LABEL_8:

    v17 = v0[1];

    return v17();
  }

  v5 = v0[15];
  (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
  v6 = *(v5 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken + 8);
  if (!v6)
  {
    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[23];
    sub_10000EEA4();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_8;
  }

  v7 = *(v5 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);

  sub_1000163E0(0xD00000000000001FLL, 0x800000010008FE00);
  sub_1000863BC();
  swift_allocObject();

  v0[27] = sub_1000863AC();
  sub_100001EEC(&qword_1000AFE80, &qword_10008CFD8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x65696B6F6F43;
  *(inited + 16) = xmmword_100089AB0;
  *(inited + 40) = 0xE600000000000000;
  v21._countAndFlagsBits = v7;
  v21._object = v6;
  sub_1000871BC(v21);

  *(inited + 48) = 0x3D6B63616361;
  *(inited + 56) = 0xE600000000000000;
  v9 = sub_100074AC0(inited);
  v0[28] = v9;
  swift_setDeallocating();
  sub_10000649C(inited + 32, &qword_1000AFE88, &unk_10008CFE0);
  v18 = &async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getData(forURL:useACToken:additionalHeaders:) + async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getData(forURL:useACToken:additionalHeaders:);
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_10006857C;
  v11 = v0[25];

  return (v18)(v11, 0, v9);
}

uint64_t sub_10006857C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = v4[15];
    v6 = sub_100068B34;
  }

  else
  {
    v7 = v4[15];

    v6 = sub_1000686A8;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000686A8()
{
  v1 = v0[15];
  sub_1000877DC(30);

  v14._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v14);

  sub_1000163E0(0xD00000000000001CLL, 0x800000010008FE50);

  v2 = *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client);
  v0[33] = v2;
  if (v2)
  {
    (*(v0[17] + 104))(v0[18], enum case for CarrySettings.ProfileVariant.vpn(_:), v0[16]);

    sub_10008621C();
    v3 = swift_task_alloc();
    v0[34] = v3;
    *v3 = v0;
    v3[1] = sub_1000688CC;
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[21];
    v7 = v0[14];

    return CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)(v5, v4, v6, v7);
  }

  else
  {
    v9 = v0[24];
    v8 = v0[25];
    v10 = v0[23];
    sub_100074900(v0[30], v0[31]);

    (*(v9 + 8))(v8, v10);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000688CC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = v2[21];
  v4 = v2[20];
  v5 = v2[19];
  v6 = v2[15];
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = sub_100068D78;
  }

  else
  {
    v7 = sub_100068A64;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100068A64()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_100074900(v0[30], v0[31]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100068B34()
{

  v1 = v0[32];
  v2 = v0[24];
  v10 = v0[23];
  v11 = v0[25];
  sub_1000877DC(34);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v13._object = 0x800000010008FE20;
  v13._countAndFlagsBits = 0xD000000000000020;
  sub_1000871BC(v13);
  v0[12] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v0[13] = type metadata accessor for CarrySettingsNetworkingSession(0);
  sub_100001EEC(&qword_1000AE508, &qword_100089C50);
  sub_10008716C();
  v3 = objc_allocWithZone(CULogHandle);
  v4 = sub_10008714C();
  v5 = sub_10008714C();

  v6 = [v3 initWithSubsystem:v4 category:v5];

  v7 = sub_10008714C();

  [v6 ulog:90 message:v7];

  swift_willThrow();

  (*(v2 + 8))(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100068D78()
{
  sub_100074900(v0[30], v0[31]);
  v1 = v0[35];
  v2 = v0[24];
  v10 = v0[23];
  v11 = v0[25];
  sub_1000877DC(34);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v13._object = 0x800000010008FE20;
  v13._countAndFlagsBits = 0xD000000000000020;
  sub_1000871BC(v13);
  v0[12] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v0[13] = type metadata accessor for CarrySettingsNetworkingSession(0);
  sub_100001EEC(&qword_1000AE508, &qword_100089C50);
  sub_10008716C();
  v3 = objc_allocWithZone(CULogHandle);
  v4 = sub_10008714C();
  v5 = sub_10008714C();

  v6 = [v3 initWithSubsystem:v4 category:v5];

  v7 = sub_10008714C();

  [v6 ulog:90 message:v7];

  swift_willThrow();

  (*(v2 + 8))(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100068FBC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v3[19] = swift_task_alloc();
  v4 = sub_10008642C();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000690B8, v2, 0);
}

uint64_t sub_1000690B8()
{
  v1 = v0[17];
  v2 = (v0[18] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);
  *v2 = v0[16];
  v2[1] = v1;

  sub_1000863BC();
  swift_allocObject();

  v0[23] = sub_1000863AC();
  sub_1000163E0(0xD000000000000020, 0x800000010008FE70);
  v6 = (&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getAllSoftwareUpdateAudiences() + async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getAllSoftwareUpdateAudiences());
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1000691E8;
  v4 = v0[22];

  return v6(v4);
}

uint64_t sub_1000691E8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_1000696B0;
  }

  else
  {
    v4 = sub_100069314;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100069314()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  sub_1000163E0(0xD00000000000002ALL, 0x800000010008FED0);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedAudiences;
  swift_beginAccess();
  sub_100074CA8(v4, v5 + v6, &qword_1000AE3E0, &unk_100089E60);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates;
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v12 = (63 - v10) >> 6;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (v11)
  {
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_10000E4A4(*(v8 + 56) + ((v14 << 9) | (8 * v16)), (v0 + 15), &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C((v0 + 15), &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        v19 = v18;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F124(0, v31[2] + 1, 1, v31, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v31 = result;
        }

        v21 = v31[2];
        v20 = v31[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v29 = v31[2];
          v30 = v21 + 1;
          result = sub_10006F124((v20 > 1), v21 + 1, 1, v31, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v21 = v29;
          v22 = v30;
          v31 = result;
        }

        v31[2] = v22;
        v23 = &v31[2 * v21];
        v23[4] = Strong;
        v23[5] = v19;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v24 = v0[22];
  v26 = v0[20];
  v25 = v0[21];

  v27 = swift_task_alloc();
  *(v27 + 16) = v24;
  sub_10006C3A0(sub_100074D10, v27, v31);

  (*(v25 + 8))(v24, v26);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000696B0()
{
  v1 = v0[25];
  v2 = v0[18];
  sub_1000877DC(42);
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  v35._object = 0x800000010008FEA0;
  v35._countAndFlagsBits = 0xD000000000000028;
  sub_1000871BC(v35);
  v0[13] = v1;
  v3 = v0 + 13;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v33 = v0;
  sub_1000163E0(v0[11], v0[12]);

  v4 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = -1;
  v7 = -1 << *(v5 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v5 + 64);
  v9 = (63 - v7) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v8)
  {
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_10000E4A4(*(v5 + 56) + ((v11 << 9) | (8 * v14)), (v3 + 1), &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C((v3 + 1), &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F124(0, v12[2] + 1, 1, v12, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v12 = result;
        }

        v19 = v12[2];
        v18 = v12[3];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v32 = v19 + 1;
          v22 = v12;
          v23 = v12[2];
          result = sub_10006F124((v18 > 1), v19 + 1, 1, v22, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v20 = v32;
          v19 = v23;
          v12 = result;
        }

        v12[2] = v20;
        v21 = &v12[2 * v19];
        v21[4] = Strong;
        v21[5] = v17;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  v24 = v12[2];
  if (v24)
  {
    v25 = 0;
    v26 = v12 + 5;
    while (v25 < v12[2])
    {
      v27 = v33[25];
      ++v25;
      v28 = *v26;
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 40);
      swift_unknownObjectRetain();
      v30(v27, ObjectType, v28);
      result = swift_unknownObjectRelease();
      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:

  v31 = v33[1];

  return v31();
}