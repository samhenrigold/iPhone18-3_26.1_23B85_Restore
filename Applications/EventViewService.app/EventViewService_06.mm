uint64_t sub_1000C12A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000C13E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000C1544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C158C()
{
  result = qword_100225778;
  if (!qword_100225778)
  {
    sub_10000460C(&qword_100225770, &qword_1001BAE70);
    sub_1000C18AC(&qword_100225780, &qword_100225788, &qword_1001BAE78, sub_1000C1670);
    sub_10000BFFC(&qword_100225800, &qword_100225808, &qword_1001BAEC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225778);
  }

  return result;
}

unint64_t sub_1000C1670()
{
  result = qword_100225790;
  if (!qword_100225790)
  {
    sub_10000460C(&qword_100225798, &qword_1001BAE80);
    sub_1000C16FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225790);
  }

  return result;
}

unint64_t sub_1000C16FC()
{
  result = qword_1002257A0;
  if (!qword_1002257A0)
  {
    sub_10000460C(&qword_1002257A8, &qword_1001BAE88);
    sub_10000460C(&qword_1002257B0, &qword_1001BAE90);
    sub_10000460C(&qword_1002257B8, &qword_1001BAE98);
    sub_10000460C(&qword_1002257C0, &qword_1001BAEA0);
    sub_10000BFFC(&qword_1002257C8, &qword_1002257B0, &qword_1001BAE90, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000C18AC(&qword_1002257D0, &qword_1002257C0, &qword_1001BAEA0, sub_1000C1930);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002257A0);
  }

  return result;
}

uint64_t sub_1000C18AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    v9 = a4();
    sub_1000C1ACC(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C1930()
{
  result = qword_1002257D8;
  if (!qword_1002257D8)
  {
    sub_10000460C(&qword_1002257E0, &qword_1001BAEA8);
    sub_1000C19E8();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002257D8);
  }

  return result;
}

unint64_t sub_1000C19E8()
{
  result = qword_1002257E8;
  if (!qword_1002257E8)
  {
    sub_10000460C(&qword_1002257F0, &unk_1001BAEB0);
    sub_10000BFFC(&qword_1002257C8, &qword_1002257B0, &qword_1001BAE90, &protocol conformance descriptor for Button<A>);
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002257E8);
  }

  return result;
}

unint64_t sub_1000C1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002257F8;
  if (!qword_1002257F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002257F8);
  }

  return result;
}

void sub_1000C1B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  sub_1000BBE34(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, v8);
}

unint64_t sub_1000C1BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100225848;
  if (!qword_100225848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225848);
  }

  return result;
}

double sub_1000C1C2C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000BD670(a1, v9, v6, v7);
}

uint64_t sub_1000C1CD0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_1000C1DBC()
{
  result = qword_100225888;
  if (!qword_100225888)
  {
    v1 = sub_10000460C(&qword_100225890, &unk_1001BAF08);
    sub_10008B1A4(v1, v2, v3);
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225888);
  }

  return result;
}

unint64_t sub_1000C1E80()
{
  result = qword_1002258A0;
  if (!qword_1002258A0)
  {
    sub_10000460C(&qword_100225898, &qword_1001BAF18);
    sub_1000C2264(&qword_1002258A8, &qword_1002258B0, &qword_1001BAF20, sub_1000C1F64);
    sub_10000BFFC(&qword_1002258D8, &qword_1002258E0, &qword_1001BAF40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002258A0);
  }

  return result;
}

uint64_t sub_1000C1F94(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C2010()
{
  result = qword_1002258C8;
  if (!qword_1002258C8)
  {
    sub_10000460C(&qword_1002258D0, &unk_1001BAF30);
    sub_10005E368();
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002258C8);
  }

  return result;
}

uint64_t sub_1000C20C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C21B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  return sub_1000BC808(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6);
}

uint64_t sub_1000C2264(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C2318()
{
  result = qword_100225908;
  if (!qword_100225908)
  {
    sub_10000460C(&qword_100225910, &qword_1001BAFC0);
    sub_1000C2664(&qword_100223490, &qword_100223488, &unk_1001B73B0, &protocol witness table for _PaddingLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225908);
  }

  return result;
}

unint64_t sub_1000C23DC()
{
  result = qword_100225928;
  if (!qword_100225928)
  {
    sub_10000460C(&qword_100225738, &qword_1001BAE30);
    sub_1000C2460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225928);
  }

  return result;
}

unint64_t sub_1000C2460()
{
  result = qword_100225930;
  if (!qword_100225930)
  {
    sub_10000460C(&qword_1002223E8, &qword_1001B5AA0);
    sub_1000C1544(&qword_100225938, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225930);
  }

  return result;
}

unint64_t sub_1000C251C()
{
  result = qword_100225940;
  if (!qword_100225940)
  {
    sub_10000460C(&qword_100225758, &qword_1001BAE58);
    sub_10000BFFC(&qword_100225948, &qword_100225918, &unk_1001BAFC8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225940);
  }

  return result;
}

unint64_t sub_1000C25D8()
{
  result = qword_100225960;
  if (!qword_100225960)
  {
    sub_10000460C(&qword_100225958, &qword_1001BAFE8);
    sub_1000395F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225960);
  }

  return result;
}

uint64_t sub_1000C2664(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C26E0()
{
  result = qword_100225970;
  if (!qword_100225970)
  {
    sub_10000460C(&qword_100225950, &qword_1001BAFE0);
    sub_10000460C(&qword_100225978, &qword_1001BAFF8);
    sub_1000C27D8();
    swift_getOpaqueTypeConformance2();
    sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225970);
  }

  return result;
}

unint64_t sub_1000C27D8()
{
  result = qword_100225980;
  if (!qword_100225980)
  {
    sub_10000460C(&qword_100225978, &qword_1001BAFF8);
    sub_1000C2890();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225980);
  }

  return result;
}

unint64_t sub_1000C2890()
{
  result = qword_100225988;
  if (!qword_100225988)
  {
    sub_10000460C(&qword_100225990, &qword_1001BB000);
    sub_1000C2664(&qword_100223490, &qword_100223488, &unk_1001B73B0, &protocol witness table for _PaddingLayout);
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225988);
  }

  return result;
}

unint64_t sub_1000C2968()
{
  result = qword_100225998;
  if (!qword_100225998)
  {
    sub_10000460C(&qword_100225968, &qword_1001BAFF0);
    sub_10000BFFC(&qword_1002259A0, &qword_1002259A8, &qword_1001BB008, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225998);
  }

  return result;
}

unint64_t sub_1000C2A20()
{
  result = qword_1002259B8;
  if (!qword_1002259B8)
  {
    sub_10000460C(&qword_100225748, &qword_1001BAE40);
    sub_1000C2AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002259B8);
  }

  return result;
}

unint64_t sub_1000C2AAC()
{
  result = qword_1002259C0;
  if (!qword_1002259C0)
  {
    sub_10000460C(&qword_1002259C8, &qword_1001BB010);
    sub_1000C26E0();
    sub_1000C2968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002259C0);
  }

  return result;
}

uint64_t sub_1000C2B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)));
  sub_1000C1B48(*v6, v6[1]);
  v7 = *(v5 + 36);
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v5 + 40);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C2D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000B90C0(a1, v9, v6, v7, a3);
}

uint64_t sub_1000C2DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v16 = *(*(v5 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = v4 + v6;
  sub_1000C1B48(*(v4 + v6), *(v4 + v6 + 8));
  v11 = *(v5 + 36);
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = *(v5 + 40);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DismissAction();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  (*(v8 + 8))(v4 + ((v6 + v16 + v9) & ~v9), AssociatedTypeWitness);

  return swift_deallocObject();
}

void sub_1000C3004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  sub_1000B9914(v4 + v8, v11, v5, v6);
}

uint64_t sub_1000C3124@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

__n128 sub_1000C31B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000C3290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C32F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000C34D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000C3610(uint64_t a1)
{
  sub_1000C36FC(319, &qword_100225AD8, type metadata accessor for CompactDatePickerConfiguration, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1000C3760();
    if (v2 <= 0x3F)
    {
      sub_100036720(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000C36FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000C3760()
{
  if (!qword_100225AE0)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100225AE0);
    }
  }
}

uint64_t sub_1000C37B0(uint64_t *a1)
{
  type metadata accessor for NavigationPath();
  sub_10000460C(&qword_100225738, &qword_1001BAE30);
  sub_10000460C(&qword_100225740, &qword_1001BAE38);
  sub_10000460C(&qword_100225748, &qword_1001BAE40);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225758, &qword_1001BAE58);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225760, &qword_1001BAE60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000460C(&qword_100225768, &qword_1001BAE68);
  sub_10000460C(&qword_100225770, &qword_1001BAE70);
  type metadata accessor for GlassProminentButtonStyle();
  sub_1000C158C();
  sub_1000C1544(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CompactDatePickerConfiguration(255);
  swift_getOpaqueTypeConformance2();
  sub_1000C1544(&qword_100225630, type metadata accessor for CompactDatePickerConfiguration, &unk_1001BACA0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100225818, &qword_1001BAEC8);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100225820, &qword_100225818, &qword_1001BAEC8, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100225828, &qword_1001BAED0);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225830, &qword_1001BAED8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100225838, &qword_100225828, &qword_1001BAED0, &unk_1001C19E0);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100225840, &qword_100225830, &qword_1001BAED8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  return swift_getWitnessTable();
}

unint64_t sub_1000C4298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1BD8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C42C8()
{
  result = qword_100225BA0;
  if (!qword_100225BA0)
  {
    sub_10000460C(&qword_100225B98, &qword_1001BB338);
    sub_1000C4354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225BA0);
  }

  return result;
}

unint64_t sub_1000C4354()
{
  result = qword_100225BA8;
  if (!qword_100225BA8)
  {
    sub_10000460C(&qword_100225BB0, &qword_1001BB340);
    sub_10000BFFC(&qword_100225BB8, &qword_100225BC0, &qword_1001BB348, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225BA8);
  }

  return result;
}

unint64_t sub_1000C440C()
{
  result = qword_100225BD0;
  if (!qword_100225BD0)
  {
    sub_10000460C(&qword_100225B68, &qword_1001BB308);
    sub_10000BFFC(&qword_100225BC8, &qword_100225B60, &qword_1001BB300, &protocol conformance descriptor for DatePicker<A>);
    sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225BD0);
  }

  return result;
}

uint64_t sub_1000C44F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C455C(uint64_t *a1)
{
  v3 = *(type metadata accessor for CompactDatePicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000C0A90(a1, v4);
}

uint64_t sub_1000C45F0()
{
  v1 = (type metadata accessor for CompactDatePicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  v4 = v2 + *(v3 + 32);

  v5 = type metadata accessor for CompactDatePickerConfiguration(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v2 + v1[7];

  v10 = v9 + *(v3 + 32);

  v8(v10 + *(v5 + 20), v7);
  v11 = v2 + v1[8];

  v12 = v11 + *(v3 + 32);

  v8(v12 + *(v5 + 20), v7);

  v13 = v2 + v1[10];
  v8(v13, v7);
  v14 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  v8(v13 + *(v14 + 36), v7);

  return swift_deallocObject();
}

double sub_1000C4820()
{
  v1 = *(type metadata accessor for CompactDatePicker(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000BEBD0(v3, v2);
}

unint64_t sub_1000C4888()
{
  result = qword_100225C20;
  if (!qword_100225C20)
  {
    sub_10000460C(&qword_100224BD0, &qword_1001BB3B0);
    sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225C20);
  }

  return result;
}

uint64_t sub_1000C4984(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for CompactDatePickerConfiguration(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000C4A44(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CompactDatePickerConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C4AE4(uint64_t a1)
{
  result = type metadata accessor for CompactDatePickerConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000C4BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C4BD4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C4BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100225CE8;
  if (!qword_100225CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225CE8);
  }

  return result;
}

unint64_t sub_1000C4C48()
{
  result = qword_100225D28;
  if (!qword_100225D28)
  {
    sub_10000460C(&qword_100225D20, &unk_1001BB510);
    sub_1000C4D00();
    sub_10000BFFC(&qword_100225D68, &unk_100225D70, &qword_1001BB520, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D28);
  }

  return result;
}

unint64_t sub_1000C4D00()
{
  result = qword_100225D30;
  if (!qword_100225D30)
  {
    sub_10000460C(&qword_100225D18, &qword_1001BB508);
    sub_1000C4DB8();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D30);
  }

  return result;
}

unint64_t sub_1000C4DB8()
{
  result = qword_100225D38;
  if (!qword_100225D38)
  {
    sub_10000460C(&qword_100225D10, &qword_1001BB500);
    sub_1000C4E70();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D38);
  }

  return result;
}

unint64_t sub_1000C4E70()
{
  result = qword_100225D40;
  if (!qword_100225D40)
  {
    sub_10000460C(&qword_100225D08, &qword_1001BB4F8);
    sub_1000C4EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D40);
  }

  return result;
}

unint64_t sub_1000C4EFC()
{
  result = qword_100225D48;
  if (!qword_100225D48)
  {
    sub_10000460C(&qword_100225D00, &qword_1001BB4F0);
    sub_1000C4F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D48);
  }

  return result;
}

unint64_t sub_1000C4F88()
{
  result = qword_100225D50;
  if (!qword_100225D50)
  {
    sub_10000460C(&qword_100225CF8, &qword_1001BB4E8);
    sub_1000C5014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D50);
  }

  return result;
}

unint64_t sub_1000C5014()
{
  result = qword_100225D58;
  if (!qword_100225D58)
  {
    sub_10000460C(&qword_100225CF0, &qword_1001BB4E0);
    sub_1000C1544(&qword_100225D60, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_10000BFFC(&qword_1002238C0, &qword_1002238C8, &unk_1001BA4F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D58);
  }

  return result;
}

uint64_t sub_1000C5148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_1000C516C, 0, 0);
}

uint64_t sub_1000C516C()
{
  v1 = (*(v0[7] + 40))(v0[6]);
  v3 = v2;
  v0[8] = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000C5228;

  return sub_1000C5EA0(v1, v3);
}

uint64_t sub_1000C5228(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000C5380, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1000C5380()
{
  v1 = v0[7];
  v2 = v0[6];

  v3 = (*(v1 + 56))(v2, v1);
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000C5448;

  return sub_1000C62A4(v3);
}

uint64_t sub_1000C5448(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1000C55D4;
  }

  else
  {

    v4 = sub_1000C556C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C556C()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000C55D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000C5640(uint64_t a1, void *a2)
{
  v4 = sub_1000024C4(&qword_100225DC8, &qword_1001BB650);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1000C6FA0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C5C4C;
  aBlock[3] = &unk_100215C18;
  v10 = _Block_copy(aBlock);

  [a2 startWithCompletionHandler:v10];
  _Block_release(v10);
}

double sub_1000C57F0(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_100225DC8, &qword_1001BB650);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_10006054C(0, &qword_100225DD0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v15, a3, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1000C7128;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100185774;
  aBlock[3] = &unk_100215C68;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000C71C4();
  sub_1000024C4(qword_100225DE0, &qword_1001BC490);
  sub_1000604E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);

  return result;
}

void sub_1000C5B74(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    [v3 image];
    sub_1000024C4(&qword_100225DC8, &qword_1001BB650);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_1000C6744(0, a2, 0);
      swift_allocError();
      *v4 = 4;
    }

    swift_errorRetain();
    sub_1000024C4(&qword_100225DC8, &qword_1001BB650);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_1000C5C4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000C5CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10001BED0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000024C4(qword_1002220B8, &unk_1001B5710);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10006054C(0, &qword_100225D90, MKMapItem_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000C5DC8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10001BED0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000024C4(qword_1002220B8, &unk_1001B5710);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000C5EA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000C5EC0, 0, 0);
}

uint64_t sub_1000C5EC0()
{
  v1 = objc_allocWithZone(MKMapItemIdentifier);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithIdentifierString:v2];
  v0[21] = v3;

  if (v3)
  {
    v7 = [objc_allocWithZone(MKMapItemRequest) initWithMapItemIdentifier:v3];
    v0[22] = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000C60B0;
    v8 = swift_continuation_init();
    v0[17] = sub_1000024C4(&qword_100225DA0, &qword_1001BB558);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000C5DC8;
    v0[13] = &unk_100215B38;
    v0[14] = v8;
    [v7 getMapItemWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1000C6744(v4, v5, v6);
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000C60B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1000C622C;
  }

  else
  {
    v2 = sub_1000C61C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C61C0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C622C(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1000C62C4()
{
  v1 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[19]];
  v0[20] = v1;
  if (v1)
  {
    v4 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000C6474;
    v5 = swift_continuation_init();
    v0[17] = sub_1000024C4(&qword_100225D88, &unk_1001BB548);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000C5CD8;
    v0[13] = &unk_100215B10;
    v0[14] = v5;
    [v4 getMapItemsWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1000C6744(0, v2, v3);
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000C6474()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1000C66D4;
  }

  else
  {
    v2 = sub_1000C6584;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C6584()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[20];

    sub_1000C6744(v8, v9, v10);
    swift_allocError();
    *v11 = 3;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[20];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1000C66D4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1000C6744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100225D80;
  if (!qword_100225D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapKitRequester.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapKitRequester.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C6904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100225DA8;
  if (!qword_100225DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225DA8);
  }

  return result;
}

uint64_t sub_1000C6958(uint64_t a1, double a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  return _swift_task_switch(sub_1000C697C, 0, 0);
}

uint64_t sub_1000C697C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  if (v4 == 0.0 || (v5 = *(v3 + 40), v5 == 0.0))
  {
    sub_1000C6744(a1, a2, a3);
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = *(v3 + 8);

    return v26();
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = [v6 location];
    [v7 coordinate];
    v9 = v8;
    v11 = v10;

    v12 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    *(v3 + 48) = v12;
    [v12 setRegion:{v9, v11, 0.01, 0.01}];
    [v12 setSize:{v4, v5}];
    [v12 setMapType:0];
    v13 = [v6 location];
    [v13 coordinate];
    v15 = v14;
    v17 = v16;

    v18 = [objc_opt_self() cameraLookingAtCenterCoordinate:v15 fromDistance:v17 pitch:750.0 heading:{0.0, 0.0}];
    [v12 setCamera:v18];

    sub_1000024C4(&qword_100225DB0, &qword_1001B9FA0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001B9E80;
    *(v19 + 32) = [objc_opt_self() customFeatureAnnotationForMapItem:v6];
    sub_1000024C4(&qword_100225DB8, &qword_1001BB648);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 _setCustomFeatureAnnotations:isa];

    v21 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v12];
    *(v3 + 56) = v21;
    v22 = swift_task_alloc();
    *(v3 + 64) = v22;
    *(v22 + 16) = v21;
    v23 = swift_task_alloc();
    *(v3 + 72) = v23;
    v24 = sub_10006054C(0, &qword_100225DC0, UIImage_ptr);
    *v23 = v3;
    v23[1] = sub_1000C6D08;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001001C6D90, sub_1000C6F04, v22, v24);
  }
}

uint64_t sub_1000C6D08()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000C6E90;
  }

  else
  {

    v2 = sub_1000C6E24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C6E24()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C6E90()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C6F0C()
{
  v1 = sub_1000024C4(&qword_100225DC8, &qword_1001BB650);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_1000C6FA0(void *a1, uint64_t a2)
{
  v5 = *(sub_1000024C4(&qword_100225DC8, &qword_1001BB650) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C57F0(a1, a2, v6);
}

double sub_1000C702C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000C7044()
{
  v1 = sub_1000024C4(&qword_100225DC8, &qword_1001BB650);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1000C7128()
{
  v1 = *(sub_1000024C4(&qword_100225DC8, &qword_1001BB650) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000C5B74(v3, v0 + v2, v4);
}

unint64_t sub_1000C71C4()
{
  result = qword_1002265B0;
  if (!qword_1002265B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002265B0);
  }

  return result;
}

uint64_t sub_1000C722C()
{
  type metadata accessor for PinnedScrollableViews();
  sub_1000CBBA8(&qword_1002259D0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1000C72AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UpcomingViewModel(0, a4, a5, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for UpcomingModule(0, a4, a5, v13);
  v15 = (a6 + *(v14 + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1000CBBA8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v15 = result;
  v15[1] = v17;
  v18 = a6 + *(v14 + 40);
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  return result;
}

void sub_1000C73CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpcomingViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      sub_100029AB4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000C746C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v12 = ((((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-49 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v13 = (a2 - v8 + 255) >> 8;
  if (v12 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v12];
      if (!*&a1[v12])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v17 = *&a1[v12];
      if (!v17)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v16 || (v17 = a1[v12]) == 0)
  {
LABEL_36:
    if (v8 == 0x7FFFFFFF)
    {
      v21 = *(a1 + 1);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v22 = (*(v4 + 48))((v9 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = (v17 - 1) << (8 * v12);
  if (v12 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v8 + (v20 | v19) + 1;
}

void sub_1000C7654(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = ((((-2 - ((((-49 - v12) | v12) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v12) | v12) - v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 < a3)
  {
    v15 = (a3 - v11 + 255) >> 8;
    if (v14 <= 3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v14] = 0;
    }

    else if (v6)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if (v11 == 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }
    }

    else
    {
      v20 = *(v7 + 56);
      v21 = (v12 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v12 | 7) + 32) & ~(v12 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12;
      v22 = a2 + 1;

      v20(v21, v22);
    }

    return;
  }

  v18 = ~v11 + a2;
  bzero(a1, v14);
  if (v14 <= 3)
  {
    v19 = (v18 >> 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_29:
      if (v6 == 2)
      {
        *&a1[v14] = v19;
      }

      else
      {
        *&a1[v14] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v6 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v6)
  {
    a1[v14] = v19;
  }
}

double sub_1000C78E8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.85;
  if (v1 == 1)
  {
    return 0.45;
  }

  return result;
}

uint64_t sub_1000C7958(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + *(a1 + 36));
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 40);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000CBBA8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000C7BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  sub_10000460C(&qword_100225E68, &qword_1001BB6D0);
  v4 = *(a1 + 16);
  type metadata accessor for Array();
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225E70, &qword_1001BB6D8);
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v18 = sub_1000CB278();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v21 = WitnessTable;
  v22 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  static HorizontalAlignment.leading.getter();
  v16[4] = v4;
  v16[5] = v5;
  v17 = v2;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_1000EE87C();
  return (v14)(v13, v7);
}

uint64_t sub_1000C806C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v127 = a4;
  v126 = type metadata accessor for ContentMarginPlacement();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for ScrollIndicatorVisibility();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v8 - 8);
  v120 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v121 = *(v10 - 8);
  __chkstk_darwin(v10);
  v117 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_10000460C(&qword_100225E70, &qword_1001BB6D8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136 = v12;
  v137 = AssociatedTypeWitness;
  v138 = v14;
  v139 = WitnessTable;
  v140 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v135 = sub_1000CB278();
  swift_getWitnessTable();
  v17 = type metadata accessor for LazyHGrid();
  v18 = swift_getWitnessTable();
  v136 = v17;
  v137 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v136 = v17;
  v137 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = type metadata accessor for ScrollView();
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v95 = &v90 - v20;
  v21 = swift_getWitnessTable();
  v136 = v19;
  v137 = v10;
  v93 = v10;
  v138 = v21;
  v139 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v22 = v21;
  v94 = v21;
  v23 = swift_getOpaqueTypeMetadata2();
  v111 = *(v23 - 8);
  __chkstk_darwin(v23);
  v90 = &v90 - v24;
  v136 = v19;
  v137 = v10;
  v138 = v22;
  v139 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeConformance2();
  v136 = v23;
  v137 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v110 = *(v26 - 8);
  __chkstk_darwin(v26);
  v102 = &v90 - v27;
  v115 = v23;
  v136 = v23;
  v137 = v25;
  v104 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v136 = v26;
  v137 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v109 = *(v29 - 8);
  __chkstk_darwin(v29);
  v108 = &v90 - v30;
  v114 = v26;
  v136 = v26;
  v137 = v28;
  v103 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v113 = v29;
  v136 = v29;
  v137 = v31;
  v106 = v31;
  v101 = swift_getOpaqueTypeMetadata2();
  v112 = *(v101 - 8);
  v32 = __chkstk_darwin(v101);
  v119 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v105 = &v90 - v35;
  __chkstk_darwin(v34);
  v116 = &v90 - v36;
  v37 = sub_1000024C4(&qword_100225EA8, &qword_1001BB6F8);
  __chkstk_darwin(v37 - 8);
  v39 = &v90 - v38;
  v40 = sub_1000024C4(&qword_100225E68, &qword_1001BB6D0);
  v41 = __chkstk_darwin(v40);
  v107 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v90 - v44;
  __chkstk_darwin(v43);
  v47 = &v90 - v46;
  *v39 = static HorizontalAlignment.leading.getter();
  *(v39 + 1) = 0x4024000000000000;
  v39[16] = 0;
  v48 = sub_1000024C4(&qword_100225EB0, &unk_1001BB700);
  v49 = v99;
  sub_1000C8ED8(a1, a2, &v39[*(v48 + 44)]);
  LOBYTE(v26) = static Edge.Set.leading.getter();
  v91 = type metadata accessor for UpcomingModule(0, a2, v49, v50);
  sub_1000C7958(v91);
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v39;
  v60 = a1;
  v61 = v90;
  sub_10001AE00(v59, v45, &qword_100225EA8, &qword_1001BB6F8);
  v100 = v40;
  v62 = &v45[*(v40 + 36)];
  *v62 = v26;
  v63 = v118;
  *(v62 + 1) = v52;
  *(v62 + 2) = v54;
  *(v62 + 3) = v56;
  *(v62 + 4) = v58;
  v62[40] = 0;
  v92 = v47;
  sub_10001AE00(v45, v47, &qword_100225E68, &qword_1001BB6D0);
  v64 = static Axis.Set.horizontal.getter();
  v129 = a2;
  v130 = v49;
  v131 = v60;
  v65 = v95;
  sub_1000E7A24(v64, sub_1000CB4C0, v128, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v66 = v117;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v67 = v93;
  View.scrollTargetBehavior<A>(_:)();
  (*(v121 + 8))(v66, v67);
  (*(v98 + 8))(v65, v19);
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v19) = static Axis.Set.vertical.getter();
  *(inited + 32) = v19;
  v69 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v69;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v19)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v69)
  {
    Axis.Set.init(rawValue:)();
  }

  v70 = v102;
  v71 = v115;
  View.scrollIndicators(_:axes:)();
  (*(v122 + 8))(v63, v123);
  (*(v111 + 8))(v61, v71);
  static Edge.Set.leading.getter();
  v72 = v91;
  sub_1000C7958(v91);
  v73 = v124;
  static ContentMarginPlacement.scrollContent.getter();
  v74 = v108;
  v75 = v114;
  View.contentMargins(_:_:for:)();
  v76 = *(v125 + 8);
  v77 = v126;
  v76(v73, v126);
  (*(v110 + 8))(v70, v75);
  static Edge.Set.trailing.getter();
  sub_1000C7958(v72);
  static ContentMarginPlacement.scrollContent.getter();
  v78 = v105;
  v79 = v113;
  v80 = v106;
  View.contentMargins(_:_:for:)();
  v76(v73, v77);
  (*(v109 + 8))(v74, v79);
  v136 = v79;
  v137 = v80;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v116;
  v83 = v101;
  sub_1000EE87C();
  v84 = v112;
  v85 = *(v112 + 8);
  v85(v78, v83);
  v86 = v92;
  v87 = v107;
  sub_10000BEB8(v92, v107, &qword_100225E68, &qword_1001BB6D0);
  v136 = v87;
  v88 = v119;
  (*(v84 + 16))(v119, v82, v83);
  v137 = v88;
  v134[0] = v100;
  v134[1] = v83;
  v132 = sub_1000CB4CC();
  v133 = v81;
  sub_1000E76FC(&v136, 2uLL, v134);
  v85(v82, v83);
  sub_1000050C4(v86, &qword_100225E68, &qword_1001BB6D0);
  v85(v88, v83);
  return sub_1000050C4(v87, &qword_100225E68, &qword_1001BB6D0);
}

uint64_t sub_1000C8ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a2;
  v47 = a4;
  v45 = sub_1000024C4(&qword_100225EE8, &qword_1001BB728) - 8;
  v4 = __chkstk_darwin(v45);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v36 - v6;
  v7 = type metadata accessor for AccessibilityTraits();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100225EF0, &qword_1001BB730);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_1000024C4(&qword_100225EF8, &qword_1001BB738);
  v36 = *(v15 - 8);
  v37 = v15;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = sub_1000024C4(&qword_100225F00, &qword_1001BB740);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4000000000000000;
  v14[16] = 0;
  v24 = sub_1000024C4(&qword_100225F08, &qword_1001BB748);
  sub_1000C9400(v40, &v14[*(v24 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v25 = sub_10000BFFC(&qword_100225F10, &qword_100225EF0, &qword_1001BB730, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v11, v38);
  sub_1000050C4(v14, &qword_100225EF0, &qword_1001BB730);
  v26 = v39;
  static AccessibilityTraits.isHeader.getter();
  v48 = v12;
  v49 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  View.accessibilityAddTraits(_:)();
  (*(v42 + 8))(v26, v43);
  (*(v36 + 8))(v17, v27);
  v28 = v44;
  Divider.init()();
  v29 = static SafeAreaRegions.container.getter();
  v30 = static Edge.Set.horizontal.getter();
  v31 = v28 + *(v45 + 44);
  *v31 = v29;
  *(v31 + 8) = v30;
  sub_10000BEB8(v23, v21, &qword_100225F00, &qword_1001BB740);
  v32 = v46;
  sub_10000BEB8(v28, v46, &qword_100225EE8, &qword_1001BB728);
  v33 = v47;
  sub_10000BEB8(v21, v47, &qword_100225F00, &qword_1001BB740);
  v34 = sub_1000024C4(&qword_100225F18, &qword_1001BB750);
  sub_10000BEB8(v32, v33 + *(v34 + 48), &qword_100225EE8, &qword_1001BB728);
  sub_1000050C4(v28, &qword_100225EE8, &qword_1001BB728);
  sub_1000050C4(v23, &qword_100225F00, &qword_1001BB740);
  sub_1000050C4(v32, &qword_100225EE8, &qword_1001BB728);
  return sub_1000050C4(v21, &qword_100225F00, &qword_1001BB740);
}

uint64_t sub_1000C9400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1000024C4(&qword_100224BD8, &qword_1001B9DF0);
  v4 = __chkstk_darwin(v3 - 8);
  v61 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v54 - v6;
  v7 = sub_1000024C4(&qword_100224BD0, &qword_1001BB3B0);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = __chkstk_darwin(v7);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v54 - v11;
  v55 = a1;
  v13 = a1[1];
  v63 = *a1;
  v64 = v13;
  v16 = sub_10001877C(v10, v14, v15);

  v54 = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_100017398(v17, v19, v16 & 1);

  v63 = v21;
  v64 = v23;
  v65 = v25 & 1;
  v66 = v27;
  v58 = v12;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v21, v23, v25 & 1);

  v28 = v55[3];
  if (v28)
  {
    v63 = v55[2];
    v64 = v28;

    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    static Font.subheadline.getter();
    v34 = Text.font(_:)();
    v36 = v35;
    v38 = v37;

    sub_100017398(v29, v31, v33 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v63 = qword_1002390B8;

    v39 = Text.foregroundStyle<A>(_:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_100017398(v34, v36, v38 & 1);

    v63 = v39;
    v64 = v41;
    v65 = v43 & 1;
    v66 = v45;
    v46 = v59;
    View.accessibilityIdentifier(_:)();
    sub_100017398(v39, v41, v43 & 1);

    v47 = v60;
    sub_10001AE00(v46, v60, &qword_100224BD0, &qword_1001BB3B0);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v46 = v59;
    v47 = v60;
  }

  (*(v56 + 56))(v47, v48, 1, v57);
  v49 = v58;
  sub_10000BEB8(v58, v46, &qword_100224BD0, &qword_1001BB3B0);
  v50 = v61;
  sub_10000BEB8(v47, v61, &qword_100224BD8, &qword_1001B9DF0);
  v51 = v62;
  sub_10000BEB8(v46, v62, &qword_100224BD0, &qword_1001BB3B0);
  v52 = sub_1000024C4(&qword_100225F20, &qword_1001BB758);
  sub_10000BEB8(v50, v51 + *(v52 + 48), &qword_100224BD8, &qword_1001B9DF0);
  sub_1000050C4(v47, &qword_100224BD8, &qword_1001B9DF0);
  sub_1000050C4(v49, &qword_100224BD0, &qword_1001BB3B0);
  sub_1000050C4(v50, &qword_100224BD8, &qword_1001B9DF0);
  return sub_1000050C4(v46, &qword_100224BD0, &qword_1001BB3B0);
}

uint64_t sub_1000C991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v7 - 8);
  v34 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000460C(&qword_100225E70, &qword_1001BB6D8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v9;
  v41 = AssociatedTypeWitness;
  v42 = v11;
  v43 = WitnessTable;
  v44 = AssociatedConformanceWitness;
  v29[1] = type metadata accessor for ForEach();
  v39 = sub_1000CB278();
  v29[0] = swift_getWitnessTable();
  v14 = type metadata accessor for LazyHGrid();
  v33 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = swift_getWitnessTable();
  v40 = v14;
  v41 = v17;
  v30 = v17;
  v31 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v29 - v22;
  v25 = type metadata accessor for UpcomingViewModel(0, a2, a3, v24);
  sub_1000EFF48(v25);
  static VerticalAlignment.top.getter();
  v36 = a2;
  v37 = a3;
  v38 = a1;
  sub_1000C722C();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v26 = v30;
  View.scrollTargetLayout(isEnabled:)();
  (*(v33 + 8))(v16, v14);
  v40 = v14;
  v41 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v27 = *(v32 + 8);
  v27(v21, OpaqueTypeMetadata2);
  sub_1000EE87C();
  return (v27)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1000C9D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v36 = a3;
  v38 = type metadata accessor for UpcomingModule(0, a2, a3, a4);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v30 - v9;
  v10 = type metadata accessor for Array();
  v35 = v10;
  v30 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  v12 = sub_10000460C(&qword_100225E70, &qword_1001BB6D8);
  v33 = v12;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v10;
  v42 = AssociatedTypeWitness;
  v43 = v12;
  v44 = WitnessTable;
  v45 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ForEach();
  v37 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v41 = *(a1 + 40);
  v21 = v31;
  v22 = a1;
  v23 = v38;
  (*(v8 + 16))(v31, v22, v38);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 16) = a2;
  *(v25 + 24) = v26;
  (*(v8 + 32))(v25 + v24, v21, v23);
  v27 = sub_1000CB278();

  ForEach<>.init(_:content:)();
  v40 = v27;
  swift_getWitnessTable();
  sub_1000EE87C();
  v28 = *(v37 + 8);
  v28(v18, v15);
  sub_1000EE87C();
  return (v28)(v20, v15);
}

uint64_t sub_1000CA07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a2;
  v97 = a5;
  v98 = a1;
  v7 = type metadata accessor for PlainButtonStyle();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = __chkstk_darwin(v7);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a3 - 8);
  __chkstk_darwin(v8);
  v75 = v10;
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UpcomingModule(0, a3, a4, v11);
  v73 = *(v74 - 8);
  v71 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v70 - v12;
  v82 = sub_1000024C4(&qword_100225E98, &qword_1001BB6F0);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v70 - v13;
  v88 = sub_1000024C4(&qword_100225E90, &qword_1001BB6E8);
  v83 = *(v88 - 8);
  __chkstk_darwin(v88);
  v81 = &v70 - v14;
  v15 = sub_1000024C4(&qword_100225EC8, &qword_1001BB710);
  v86 = *(v15 - 8);
  v87 = v15;
  __chkstk_darwin(v15);
  v84 = &v70 - v16;
  v17 = sub_1000024C4(&qword_100225E88, &qword_1001BB6E0);
  v95 = *(v17 - 8);
  v96 = v17;
  __chkstk_darwin(v17);
  v80 = &v70 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v22 = &v70 - v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v25 = *(v92 - 8);
  __chkstk_darwin(v92);
  v27 = &v70 - v26;
  v28 = *(a4 + 176);
  v93 = a3;
  v91 = a4;
  v28(a3, a4);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v20 + 8))(v22, AssociatedTypeWitness);
  v29 = *(v24 - 8);
  if ((*(v29 + 48))(v27, 1, v24) == 1)
  {
    (*(v25 + 8))(v27, v92);
LABEL_5:
    v68 = 1;
    v67 = v97;
    return (*(v95 + 56))(v67, v68, 1, v96);
  }

  v30 = swift_getAssociatedConformanceWitness();
  v31 = (*(v30 + 24))(v24, v30);
  v33 = v32;
  (*(v29 + 8))(v27, v24);
  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = v73;
  v35 = v72;
  v36 = v74;
  (*(v73 + 16))(v72, v94, v74);
  v37 = v77;
  v38 = *(v77 + 16);
  v39 = v76;
  v92 = v33;
  v40 = v93;
  v38(v76, v98);
  v41 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v42 = *(v37 + 80);
  v43 = v71 + v42 + v41;
  v71 = v31;
  v44 = v43 & ~v42;
  v45 = swift_allocObject();
  v46 = v91;
  *(v45 + 16) = v40;
  *(v45 + 24) = v46;
  (*(v34 + 32))(v45 + v41, v35, v36);
  v47 = (*(v37 + 32))(v45 + v44, v39, v40);
  __chkstk_darwin(v47);
  *(&v70 - 6) = v40;
  *(&v70 - 5) = v46;
  v48 = v98;
  *(&v70 - 4) = v94;
  *(&v70 - 3) = v48;
  v49 = v92;
  *(&v70 - 2) = v71;
  *(&v70 - 1) = v49;
  sub_1000024C4(&qword_100225ED0, &unk_1001BB718);
  sub_1000CBAC0();
  v50 = v78;
  Button.init(action:label:)();

  v51 = v85;
  PlainButtonStyle.init()();
  v52 = sub_10000BFFC(&qword_100225EA0, &qword_100225E98, &qword_1001BB6F0, &protocol conformance descriptor for Button<A>);
  v53 = sub_1000CBBA8(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v54 = v81;
  v55 = v82;
  v56 = v90;
  View.buttonStyle<A>(_:)();
  (*(v89 + 8))(v51, v56);
  (*(v79 + 8))(v50, v55);
  LODWORD(v92) = static Axis.Set.horizontal.getter();
  static Alignment.leading.getter();
  v57 = swift_allocObject();
  v58 = v93;
  *(v57 + 16) = v93;
  *(v57 + 24) = v46;
  v99 = v55;
  v100 = v56;
  v101 = v52;
  v102 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v84;
  v61 = v88;
  View.containerRelativeFrame(_:alignment:_:)();

  (*(v83 + 8))(v54, v61);
  v63 = type metadata accessor for UpcomingViewModel(0, v58, v46, v62);
  sub_1000F0384(v98, v63);
  v99 = v61;
  v100 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v80;
  v65 = v87;
  View.accessibilitySortPriority(_:)();
  (*(v86 + 8))(v60, v65);
  v66 = v97;
  sub_10001AE00(v64, v97, &qword_100225E88, &qword_1001BB6E0);
  v67 = v66;
  v68 = 0;
  return (*(v95 + 56))(v67, v68, 1, v96);
}

void sub_1000CAB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *(a3 - 8);
  (*(v12 + 16))(&v17 - v10, a2, a3);
  (*(v12 + 56))(v11, 0, 1, a3);
  v14 = type metadata accessor for UpcomingViewModel(0, a3, a4, v13);
  sub_1000F069C(v11, v14);
  (*(v9 + 8))(v11, v8);
  if (*(a1 + *(type metadata accessor for UpcomingModule(0, a3, a4, v15) + 36)))
  {

    sub_1000F00A8(v16, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000CBBA8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000CAD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a2;
  v62 = a7;
  v12 = type metadata accessor for DateInterval();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = &v48 - v16;
  v64 = a5;
  v18 = swift_getAssociatedTypeWitness();
  v63 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v57 = type metadata accessor for UpcomingModuleItem(0);
  __chkstk_darwin(v57);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 32) == 1)
  {
    v23 = v64;
    v56 = (*(a6 + 136))(v64, a6);
    v61 = v24;
    v53 = *(a6 + 168);
    (v53)(v23, a6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = sub_100021B98(v18, AssociatedConformanceWitness);
    v54 = v26;
    v55 = v25;
    v27 = *(v63 + 8);
    v27(v20, v18);
    v28 = v23;
    v29 = v18;
    v30 = v53;
    (v53)(v28, a6);
    v31 = sub_100022020(v29, AssociatedConformanceWitness);
    v33 = v32;
    v27(v20, v29);
    v34 = v31;
  }

  else
  {
    AssociatedConformanceWitness = v18;
    v56 = a3;
    v51 = *(a6 + 176);
    v35 = v51;
    v61 = a4;

    v53 = v20;
    v50 = v15;
    v36 = v64;
    v35(v64, a6);
    v37 = swift_getAssociatedConformanceWitness();
    v49 = *(v37 + 48);
    v38 = v49(AssociatedTypeWitness, v37);
    v54 = v39;
    v55 = v38;
    v50 = *(v50 + 8);
    (v50)(v17, AssociatedTypeWitness);
    v40 = v36;
    v29 = AssociatedConformanceWitness;
    v51(v40, a6);
    v34 = v49(AssociatedTypeWitness, v37);
    v33 = v41;
    (v50)(v17, AssociatedTypeWitness);
    v20 = v53;
    v30 = *(a6 + 168);
  }

  (v30)(v64, a6);
  v42 = swift_getAssociatedConformanceWitness();
  v43 = v58;
  sub_1000224A8(v29, v42, v58);
  (*(v63 + 8))(v20, v29);
  DateInterval.start.getter();
  (*(v59 + 8))(v43, v60);
  v44 = v61;
  v45 = v62;
  *v22 = v56;
  v22[1] = v44;
  v46 = v54;
  v22[2] = v55;
  v22[3] = v46;
  v22[4] = v34;
  v22[5] = v33;
  sub_1000CC6B4(v22, v45);
  result = sub_1000024C4(&qword_100225ED0, &unk_1001BB718);
  *(v45 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1000CB278()
{
  result = qword_100225E78;
  if (!qword_100225E78)
  {
    sub_10000460C(&qword_100225E70, &qword_1001BB6D8);
    sub_1000CB2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225E78);
  }

  return result;
}

unint64_t sub_1000CB2FC()
{
  result = qword_100225E80;
  if (!qword_100225E80)
  {
    sub_10000460C(&qword_100225E88, &qword_1001BB6E0);
    sub_10000460C(&qword_100225E90, &qword_1001BB6E8);
    sub_10000460C(&qword_100225E98, &qword_1001BB6F0);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_100225EA0, &qword_100225E98, &qword_1001BB6F0, &protocol conformance descriptor for Button<A>);
    sub_1000CBBA8(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000CBBA8(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225E80);
  }

  return result;
}

unint64_t sub_1000CB4CC()
{
  result = qword_100225EB8;
  if (!qword_100225EB8)
  {
    sub_10000460C(&qword_100225E68, &qword_1001BB6D0);
    sub_10000BFFC(&qword_100225EC0, &qword_100225EA8, &qword_1001BB6F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225EB8);
  }

  return result;
}

uint64_t sub_1000CB590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for UpcomingModule(0, v5, v6, a4);
  v8 = v4 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));

  v10 = v8 + *(type metadata accessor for UpcomingViewModel(0, v5, v6, v9) + 48);

  type metadata accessor for Optional();
  v11 = *(type metadata accessor for Binding() + 32);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v10 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_10001BC5C(*(v8 + *(v7 + 40)), *(v8 + *(v7 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000CB734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for UpcomingModule(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000CA07C(a1, v9, v6, v7, a3);
}

uint64_t sub_1000CB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for UpcomingModule(0, v5, v6, a4);
  v8 = *(*(v7 - 8) + 80);
  v16 = *(*(v7 - 8) + 64);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);

  v13 = v4 + v9 + *(type metadata accessor for UpcomingViewModel(0, v5, v6, v12) + 48);

  type metadata accessor for Optional();
  v14 = *(type metadata accessor for Binding() + 32);
  if (!(*(v10 + 48))(v13 + v14, 1, v5))
  {
    (*(v10 + 8))(v13 + v14, v5);
  }

  sub_10001BC5C(*(v4 + v9 + *(v7 + 40)), *(v4 + v9 + *(v7 + 40) + 8));
  (*(v10 + 8))(v4 + ((v9 + v16 + v11) & ~v11), v5);

  return swift_deallocObject();
}

void sub_1000CB9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for UpcomingModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  sub_1000CAB40(v4 + v8, v9, v5, v6);
}

unint64_t sub_1000CBAC0()
{
  result = qword_100225ED8;
  if (!qword_100225ED8)
  {
    sub_10000460C(&qword_100225ED0, &unk_1001BB718);
    sub_1000CBBA8(&qword_100225EE0, type metadata accessor for UpcomingModuleItem, &unk_1001BB774);
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0, &unk_1001B6E00, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225ED8);
  }

  return result;
}

uint64_t sub_1000CBBA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for UpcomingModuleItem(uint64_t a1)
{
  result = qword_100225F80;
  if (!qword_100225F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100225FC8, &qword_1001BB7D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_1000024C4(&qword_100225FD0, &qword_1001BB7D8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_1000024C4(&qword_100225FD8, &qword_1001BB7E0);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = sub_1000024C4(&qword_100225FE0, &qword_1001BB7E8);
  v16 = __chkstk_darwin(v15 - 8);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = type metadata accessor for CalendarIcon(0);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v42 - v25;
  v27 = *(type metadata accessor for UpcomingModuleItem(0) + 28);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 16))(v26, a1 + v27, v28);
  v29 = *(v21 + 28);
  *&v26[v29] = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  swift_storeEnumTagMultiPayload();
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v30 = sub_1000024C4(&qword_100225FE8, &qword_1001BB828);
  sub_1000CC200(a1, &v7[*(v30 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v7, v10, &qword_100225FC8, &qword_1001BB7D0);
  v31 = &v10[*(v8 + 36)];
  v32 = v56;
  *(v31 + 4) = v55;
  *(v31 + 5) = v32;
  *(v31 + 6) = v57;
  v33 = v52;
  *v31 = v51;
  *(v31 + 1) = v33;
  v34 = v54;
  *(v31 + 2) = v53;
  *(v31 + 3) = v34;
  v35 = v42;
  static AccessibilityChildBehavior.combine.getter();
  v36 = sub_1000CCC88();
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v35, v47);
  sub_1000050C4(v10, &qword_100225FD0, &qword_1001BB7D8);
  v49 = v8;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v14, v37);
  sub_1000CCD40(v26, v24);
  v38 = v43;
  sub_10000BEB8(v19, v43, &qword_100225FE0, &qword_1001BB7E8);
  v39 = v48;
  sub_1000CCD40(v24, v48);
  v40 = sub_1000024C4(&qword_100226000, &unk_1001BB830);
  sub_10000BEB8(v38, v39 + *(v40 + 48), &qword_100225FE0, &qword_1001BB7E8);
  sub_1000050C4(v19, &qword_100225FE0, &qword_1001BB7E8);
  sub_1000CCDA4(v26);
  sub_1000050C4(v38, &qword_100225FE0, &qword_1001BB7E8);
  return sub_1000CCDA4(v24);
}

uint64_t sub_1000CC200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v47 = sub_1000024C4(&qword_100221B10, &qword_1001B4F50);
  v3 = __chkstk_darwin(v47);
  v51 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v50 = v46 - v6;
  v7 = __chkstk_darwin(v5);
  v49 = v46 - v8;
  __chkstk_darwin(v7);
  v10 = v46 - v9;

  static Font.body.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  KeyPath = swift_getKeyPath();
  v53 = v11;
  v54 = v13;
  v19 = v15 & 1;
  v55 = v15 & 1;
  v56 = v17;
  v57 = KeyPath;
  v58 = 1;
  v59 = 0;
  v20 = sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  v21 = sub_10001B3F8();
  v48 = v10;
  v46[0] = v21;
  v46[1] = v20;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v11, v13, v19);

  static Font.subheadline.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v53 = qword_1002390B8;

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100017398(v22, v24, v26 & 1);

  v34 = swift_getKeyPath();
  v53 = v27;
  v54 = v29;
  v31 &= 1u;
  v55 = v31;
  v56 = v33;
  v57 = v34;
  v58 = 1;
  v59 = 0;
  v35 = v50;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v27, v29, v31);

  v37 = a1[5];
  v53 = a1[4];
  v54 = v37;
  sub_10001877C(v36, v38, v39);
  v40 = v49;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000050C4(v35, &qword_100221B10, &qword_1001B4F50);
  v41 = v48;
  sub_10000BEB8(v48, v35, &qword_100221B10, &qword_1001B4F50);
  v42 = v51;
  sub_10000BEB8(v40, v51, &qword_100221B10, &qword_1001B4F50);
  v43 = v52;
  sub_10000BEB8(v35, v52, &qword_100221B10, &qword_1001B4F50);
  v44 = sub_1000024C4(&qword_100226008, &qword_1001BB870);
  sub_10000BEB8(v42, v43 + *(v44 + 48), &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v40, &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v41, &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v42, &qword_100221B10, &qword_1001B4F50);
  return sub_1000050C4(v35, &qword_100221B10, &qword_1001B4F50);
}

uint64_t sub_1000CC660@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_1000024C4(&qword_100225FC0, &qword_1001BB7C8);
  return sub_1000CBC80(v2, a2 + *(v4 + 44));
}

uint64_t sub_1000CC6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpcomingModuleItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CC72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CC7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CC890(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CC914(uint64_t *a1)
{
  sub_10000460C(&qword_100225E68, &qword_1001BB6D0);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225E70, &qword_1001BB6D8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_1000CB278();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

unint64_t sub_1000CCC88()
{
  result = qword_100225FF0;
  if (!qword_100225FF0)
  {
    sub_10000460C(&qword_100225FD0, &qword_1001BB7D8);
    sub_10000BFFC(&qword_100225FF8, &qword_100225FC8, &qword_1001BB7D0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225FF0);
  }

  return result;
}

uint64_t sub_1000CCD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CCDA4(uint64_t a1)
{
  v2 = type metadata accessor for CalendarIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CCE54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v1;
  type metadata accessor for PromotionalAssetsViewModel(255, &v12);
  v2 = type metadata accessor for State();
  if (v3 <= 0x3F)
  {
    *&v12 = v2;
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      *(&v12 + 1) = v4;
      sub_1000CD2D0(319, &qword_1002219B8, &type metadata accessor for DismissAction);
      if (v7 <= 0x3F)
      {
        *&v13 = v6;
        sub_1000CD2D0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
        if (v9 <= 0x3F)
        {
          *(&v13 + 1) = v8;
          sub_100039C10(319);
          if (v11 <= 0x3F)
          {
            v14 = v10;
            v15 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000CCF84(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = sub_1000024C4(&qword_1002228B8, &unk_1001B6510);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[16]];

  return v15(v16, a2, v14);
}

char *sub_1000CD128(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = sub_1000024C4(&qword_1002228B8, &unk_1001B6510);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[16]];

  return v15(v16, a2, a2, v14);
}

void sub_1000CD2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000CD368@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v14 = a1;
  State.init(wrappedValue:)();
  v4 = *(&v13[0] + 1);
  *a2 = *&v13[0];
  a2[1] = v4;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  a2[2] = EnvironmentObject.init()();
  a2[3] = v5;
  v6 = *(v3 + 96);
  v13[0] = *(v3 + 80);
  v13[1] = v6;
  v7 = type metadata accessor for PromotionalAssetsView(0, v13);
  v8 = v7[14];
  *(a2 + v8) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[15];
  *(a2 + v9) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  swift_storeEnumTagMultiPayload();
  v10 = v7[16];
  *(a2 + v10) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  swift_storeEnumTagMultiPayload();
  v11 = v7[17];
  *(a2 + v11) = swift_getKeyPath();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000CD514@<X0>(uint64_t a1@<X8>)
{
  result = sub_10000DB90();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000CD620(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for PromotionalAssetsViewModel(255, v5);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_1000CD67C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for PromotionalAssetsViewModel(255, v5);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v5[0];
}

uint64_t sub_1000CD6DC(uint64_t a1)
{
  if (static Solarium.isEnabled.getter())
  {
    v2 = 0;
  }

  else
  {
    sub_1000CD620(a1);
    sub_10000CC20();

    v2 = static Visibility.== infix(_:_:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1000CD73C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v197 = a2;
  v206 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  v3 = __chkstk_darwin(v206);
  v196 = (&v155 - v4);
  v213 = *(a1 - 1);
  v208 = *(v213 + 64);
  __chkstk_darwin(v3);
  v210 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoordinateSpace();
  v200 = *(v6 - 8);
  v201 = v6;
  __chkstk_darwin(v6);
  v199 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for NavigationPath();
  *&v211 = a1[4];
  *&v212 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  type metadata accessor for _ConditionalContent();
  v11 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1000D7F3C(WitnessTable, v13, v14);
  v246 = WitnessTable;
  v247 = v15;
  v245 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v233 = v11;
  v234 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8, &qword_1001BB9F8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0, &qword_1001BBA00);
  v233 = type metadata accessor for ModifiedContent();
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v17, v18, v19);
  sub_10000460C(&qword_1002260B8, &qword_1001BBA08);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0, &qword_1001BBA10);
  type metadata accessor for ModifiedContent();
  v234 = type metadata accessor for Optional();
  v209 = a1;
  v20 = a1[5];
  v195 = a1[3];
  v198 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v24 = type metadata accessor for SetlistView(255, v21, v22, v23);
  v25 = swift_getWitnessTable();
  v241 = v24;
  v242 = v25;
  swift_getOpaqueTypeMetadata2();
  v194 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8, &qword_1001BBA18);
  type metadata accessor for _ConditionalContent();
  v235 = type metadata accessor for Optional();
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v241 = AssociatedTypeWitness;
  v242 = v26;
  v243 = AssociatedConformanceWitness;
  v244 = v27;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, &v241);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v26, v27, v29);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v236 = type metadata accessor for Optional();
  v237 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v30 = type metadata accessor for ScrollView();
  v31 = swift_getWitnessTable();
  v233 = v30;
  v234 = v31;
  swift_getOpaqueTypeMetadata2();
  v32 = type metadata accessor for ModifiedContent();
  v233 = v30;
  v234 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v240 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v205 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v33 = swift_getWitnessTable();
  v233 = v32;
  v234 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v233 = v32;
  v234 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v38 = sub_10001877C(v35, v36, v37);
  v233 = OpaqueTypeMetadata2;
  v234 = &type metadata for String;
  v235 = v35;
  v236 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v40 = sub_10000460C(&qword_1002257B8, &qword_1001BAE98);
  v233 = OpaqueTypeMetadata2;
  v234 = &type metadata for String;
  v235 = v35;
  v236 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v233 = v39;
  v234 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v233 = &type metadata for Solarium;
  v234 = &protocol witness table for Solarium;
  v43 = swift_getOpaqueTypeConformance2();
  v233 = v39;
  v234 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v233 = v39;
  v234 = v40;
  v235 = v42;
  v236 = v41;
  v237 = v43;
  v238 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v233 = v39;
  v234 = v40;
  v235 = v42;
  v236 = v41;
  v237 = v43;
  v238 = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v49 = sub_100010E88(v46, v47, v48);
  v233 = v45;
  v234 = &type metadata for CGFloat;
  v235 = v46;
  v236 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v51 = sub_10000460C(&qword_1002260D0, &qword_1001BBA30);
  v233 = v45;
  v234 = &type metadata for CGFloat;
  v235 = v46;
  v236 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_10000BFFC(&qword_1002260D8, &qword_1002260D0, &qword_1001BBA30, &protocol conformance descriptor for TupleToolbarContent<A>);
  v233 = v50;
  v234 = v51;
  v235 = v52;
  v236 = v53;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260E0, &qword_1001BBA38);
  v54 = type metadata accessor for ModifiedContent();
  v233 = v50;
  v234 = v51;
  v235 = v52;
  v236 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_10000BFFC(&qword_1002260E8, &qword_1002260E0, &qword_1001BBA38, &protocol conformance descriptor for _AnimationModifier<A>);
  v231 = v55;
  v232 = v56;
  v183 = v54;
  v182 = swift_getWitnessTable();
  v57 = type metadata accessor for NavigationStack();
  v186 = *(v57 - 8);
  __chkstk_darwin(v57);
  v176 = &v155 - v58;
  sub_10000460C(&qword_1002260F0, &qword_1001BBA40);
  v59 = type metadata accessor for ModifiedContent();
  v189 = *(v59 - 8);
  __chkstk_darwin(v59);
  v175 = &v155 - v60;
  sub_10000460C(&qword_1002260F8, &qword_1001BBA48);
  v159 = v59;
  v61 = type metadata accessor for ModifiedContent();
  v187 = *(v61 - 8);
  __chkstk_darwin(v61);
  v185 = &v155 - v62;
  sub_10000460C(&qword_100226100, &qword_1001BBA50);
  v160 = v61;
  v63 = type metadata accessor for ModifiedContent();
  v190 = *(v63 - 8);
  __chkstk_darwin(v63);
  v184 = &v155 - v64;
  sub_10000460C(&qword_100226108, &unk_1001BBA58);
  v162 = v63;
  v65 = type metadata accessor for ModifiedContent();
  v191 = *(v65 - 8);
  __chkstk_darwin(v65);
  v204 = &v155 - v66;
  v166 = v65;
  v67 = type metadata accessor for ModifiedContent();
  v192 = *(v67 - 8);
  __chkstk_darwin(v67);
  v203 = &v155 - v68;
  v171 = v67;
  v69 = type metadata accessor for ModifiedContent();
  v193 = *(v69 - 8);
  __chkstk_darwin(v69);
  v188 = &v155 - v70;
  v71 = swift_getWitnessTable();
  v156 = v71;
  v72 = sub_10000BFFC(&qword_100226110, &qword_1002260F0, &qword_1001BBA40, &unk_1001BC740);
  v229 = v71;
  v230 = v72;
  v73 = swift_getWitnessTable();
  v157 = v73;
  v74 = sub_10000BFFC(&qword_100226118, &qword_1002260F8, &qword_1001BBA48, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v227 = v73;
  v228 = v74;
  v75 = swift_getWitnessTable();
  v158 = v75;
  v76 = sub_10000BFFC(&qword_100226120, &qword_100226100, &qword_1001BBA50, &unk_1001C19E0);
  v225 = v75;
  v226 = v76;
  v77 = swift_getWitnessTable();
  v161 = v77;
  v78 = sub_10000BFFC(&qword_100226128, &qword_100226108, &unk_1001BBA58, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v223 = v77;
  v224 = v78;
  v163 = swift_getWitnessTable();
  v221 = v163;
  v222 = &protocol witness table for _AppearanceActionModifier;
  v170 = swift_getWitnessTable();
  v219 = v170;
  v220 = &protocol witness table for _AppearanceActionModifier;
  v79 = swift_getWitnessTable();
  v80 = sub_100010CEC();
  v167 = v69;
  v168 = v79;
  v81 = v206;
  v233 = v69;
  v234 = v206;
  v235 = v79;
  v236 = v80;
  v82 = v80;
  v178 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v83 = swift_getOpaqueTypeMetadata2();
  v173 = v83;
  v181 = *(v83 - 8);
  __chkstk_darwin(v83);
  v202 = &v155 - v84;
  v233 = v69;
  v234 = v81;
  v235 = v79;
  v236 = v82;
  v164 = v82;
  v172 = swift_getOpaqueTypeConformance2();
  v233 = v83;
  v234 = v81;
  v235 = v172;
  v236 = v82;
  v174 = swift_getOpaqueTypeMetadata2();
  v179 = *(v174 - 8);
  __chkstk_darwin(v174);
  v165 = &v155 - v85;
  v180 = type metadata accessor for ModifiedContent();
  v194 = *(v180 - 8);
  v86 = __chkstk_darwin(v180);
  v169 = &v155 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v177 = &v155 - v88;
  *&v89 = v212;
  *(&v89 + 1) = v195;
  *&v90 = v211;
  *(&v90 + 1) = v198;
  v211 = v90;
  v212 = v89;
  v214 = v89;
  v215 = v90;
  v91 = v207;
  v216 = v207;
  v92 = v176;
  v93 = NavigationStack.init<>(root:)();
  v96 = sub_1000D7FA8(v93, v94, v95);
  v195 = v96;
  v98 = v199;
  v97 = v200;
  v99 = v201;
  v200[13](v199, enum case for CoordinateSpace.local(_:), v201);
  v100 = v175;
  sub_1000F5464(&type metadata for PromotionalAssetsViewSizePreferenceKey, v98, sub_1000DA230, 0, v57, &type metadata for PromotionalAssetsViewSizePreferenceKey, v156, v96, v175);
  (v97[1])(v98, v99);
  (*(v186 + 8))(v92, v57);
  v101 = v213;
  v102 = *(v213 + 16);
  v198 = v213 + 16;
  v199 = v102;
  v104 = v209;
  v103 = v210;
  (v102)(v210, v91, v209);
  v201 = *(v101 + 80);
  v105 = (v201 + 48) & ~v201;
  v106 = swift_allocObject();
  v107 = v211;
  *(v106 + 16) = v212;
  *(v106 + 32) = v107;
  v108 = *(v101 + 32);
  v213 = v101 + 32;
  v200 = v108;
  (v108)(v106 + v105, v103, v104);
  sub_1000D885C(&qword_100226138, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v109 = v185;
  v110 = v159;
  View.onPreferenceChange<A>(_:perform:)();

  v111 = (*(v189 + 8))(v100, v110);
  v195 = sub_1000D80AC(v111, v112, v113);
  v114 = v184;
  v115 = v160;
  v116 = sub_1000F53BC(&type metadata for PromotionalAssetsViewSafeAreaPreferenceKey, sub_1000BD664, 0, v160, &type metadata for PromotionalAssetsViewSafeAreaPreferenceKey, v158, v195);
  (*(v187 + 8))(v109, v115, v116);
  v117 = v210;
  v118 = v207;
  v119 = v199;
  (v199)(v210, v207, v104);
  v186 = v105;
  v120 = swift_allocObject();
  v121 = v211;
  *(v120 + 16) = v212;
  *(v120 + 32) = v121;
  v122 = (v200)(v120 + v105, v117, v104);
  sub_100010B88(v122, v123, v124);
  v125 = v162;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v190 + 8))(v114, v125);
  v126 = v210;
  (v119)(v210, v118, v104);
  v127 = v186;
  v128 = swift_allocObject();
  v129 = v211;
  *(v128 + 16) = v212;
  *(v128 + 32) = v129;
  v130 = v200;
  (v200)(v128 + v127, v126, v104);
  v131 = v204;
  v132 = v166;
  View.onAppear(perform:)();

  (*(v191 + 8))(v131, v132);
  v133 = v209;
  (v199)(v126, v118, v209);
  v134 = swift_allocObject();
  v135 = v211;
  *(v134 + 16) = v212;
  *(v134 + 32) = v135;
  v130(v134 + v127, v126, v133);
  v136 = v188;
  v137 = v171;
  v138 = v203;
  View.onDisappear(perform:)();

  (*(v192 + 8))(v138, v137);
  v139 = v196;
  sub_100039F08(v196);
  v140 = v167;
  v141 = v206;
  v142 = v164;
  View.onChange<A>(of:initial:_:)();
  sub_1000050C4(v139, &qword_100221730, qword_1001B6530);
  (*(v193 + 8))(v136, v140);
  sub_100039F08(v139);
  v143 = v165;
  v145 = v172;
  v144 = v173;
  v146 = v202;
  View.onChange<A>(of:initial:_:)();
  sub_1000050C4(v139, &qword_100221730, qword_1001B6530);
  (*(v181 + 8))(v146, v144);
  v233 = v144;
  v234 = v141;
  v235 = v145;
  v236 = v142;
  v147 = swift_getOpaqueTypeConformance2();
  v148 = v169;
  v149 = v174;
  View.accessibilityIdentifier(_:)();
  (*(v179 + 8))(v143, v149);
  v150 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v217 = v147;
  v218 = v150;
  v151 = v180;
  swift_getWitnessTable();
  v152 = v177;
  sub_1000EE87C();
  v153 = *(v194 + 8);
  v153(v148, v151);
  sub_1000EE87C();
  return (v153)(v152, v151);
}

uint64_t sub_1000CF024@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v198 = a3;
  v197 = a1;
  v191 = a6;
  v189 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  __chkstk_darwin(v189);
  v190 = (&v134 - v10);
  v200 = a2;
  v201 = a3;
  v202 = a4;
  v203 = a5;
  v193 = type metadata accessor for PromotionalAssetsView(0, &v200);
  v188 = *(v193 - 8);
  v186 = *(v188 + 64);
  __chkstk_darwin(v193);
  v187 = &v134 - v11;
  v192 = sub_1000024C4(&qword_1002257B8, &qword_1001BAE98);
  v185 = *(v192 - 8);
  __chkstk_darwin(v192);
  v184 = &v134 - v12;
  v13 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v182 = *(v13 - 8);
  v183 = v13;
  __chkstk_darwin(v13);
  v181 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrollIndicatorVisibility();
  v179 = *(v15 - 8);
  v180 = v15;
  __chkstk_darwin(v15);
  v137 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = a2;
  v195 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  type metadata accessor for _ConditionalContent();
  v20 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1000D7F3C(WitnessTable, v22, v23);
  v213 = WitnessTable;
  v214 = v24;
  v212 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v200 = v20;
  v201 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8, &qword_1001BB9F8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0, &qword_1001BBA00);
  v200 = type metadata accessor for ModifiedContent();
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v26, v27, v28);
  sub_10000460C(&qword_1002260B8, &qword_1001BBA08);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0, &qword_1001BBA10);
  type metadata accessor for ModifiedContent();
  v201 = type metadata accessor for Optional();
  v196 = a5;
  v29 = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for SetlistView(255, v29, v30, v31);
  v33 = swift_getWitnessTable();
  v208 = v32;
  v209 = v33;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8, &qword_1001BBA18);
  type metadata accessor for _ConditionalContent();
  v202 = type metadata accessor for Optional();
  v34 = swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v208 = AssociatedTypeWitness;
  v209 = v34;
  v210 = AssociatedConformanceWitness;
  v211 = v35;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, &v208);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v36);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v34, v35, v37);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v38 = v192;
  type metadata accessor for _ConditionalContent();
  v203 = type metadata accessor for Optional();
  v204 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  *&v136 = type metadata accessor for VStack();
  v135 = swift_getWitnessTable();
  v39 = type metadata accessor for ScrollView();
  v139 = *(v39 - 8);
  __chkstk_darwin(v39);
  v134 = &v134 - v40;
  v41 = swift_getWitnessTable();
  v200 = v39;
  v201 = v41;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v174 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v170 = &v134 - v43;
  v176 = v44;
  v45 = type metadata accessor for ModifiedContent();
  v177 = *(v45 - 8);
  __chkstk_darwin(v45);
  v173 = &v134 - v46;
  v140 = v39;
  v200 = v39;
  v201 = v41;
  v138 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v206 = OpaqueTypeConformance2;
  v207 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v47 = swift_getWitnessTable();
  v200 = v45;
  v201 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v169 = *(v48 - 8);
  __chkstk_darwin(v48);
  v166 = &v134 - v49;
  v146 = v45;
  v200 = v45;
  v201 = v47;
  v152 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v53 = sub_10001877C(v50, v51, v52);
  v200 = v48;
  v201 = &type metadata for String;
  v202 = v50;
  v203 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v175 = *(v54 - 8);
  __chkstk_darwin(v54);
  v171 = &v134 - v55;
  v172 = v48;
  v200 = v48;
  v201 = &type metadata for String;
  v157 = v50;
  v202 = v50;
  v203 = v53;
  v155 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v200 = v54;
  v201 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v200 = &type metadata for Solarium;
  v201 = &protocol witness table for Solarium;
  v58 = swift_getOpaqueTypeConformance2();
  v200 = v54;
  v201 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v200 = v54;
  v201 = v38;
  v202 = v57;
  v203 = v56;
  v204 = v58;
  v205 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v165 = *(v60 - 8);
  __chkstk_darwin(v60);
  v161 = v56;
  v162 = &v134 - v61;
  v178 = v54;
  v200 = v54;
  v201 = v38;
  v144 = v57;
  v145 = v58;
  v202 = v57;
  v203 = v56;
  v204 = v58;
  v205 = v59;
  v141 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v65 = sub_100010E88(v62, v63, v64);
  v200 = v60;
  v201 = &type metadata for CGFloat;
  v202 = v62;
  v203 = v65;
  v66 = swift_getOpaqueTypeMetadata2();
  v159 = *(v66 - 8);
  __chkstk_darwin(v66);
  v151 = &v134 - v67;
  v68 = sub_10000460C(&qword_1002260D0, &qword_1001BBA30);
  v168 = v60;
  v200 = v60;
  v201 = &type metadata for CGFloat;
  v147 = v62;
  v202 = v62;
  v203 = v65;
  v142 = v65;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_10000BFFC(&qword_1002260D8, &qword_1002260D0, &qword_1001BBA30, &protocol conformance descriptor for TupleToolbarContent<A>);
  v164 = v66;
  v200 = v66;
  v201 = v68;
  v154 = v68;
  v71 = v134;
  v149 = v69;
  v202 = v69;
  v203 = v70;
  v143 = v70;
  v72 = swift_getOpaqueTypeMetadata2();
  v156 = *(v72 - 8);
  __chkstk_darwin(v72);
  v148 = &v134 - v73;
  sub_10000460C(&qword_1002260E0, &qword_1001BBA38);
  v160 = v72;
  v167 = type metadata accessor for ModifiedContent();
  v163 = *(v167 - 8);
  v74 = __chkstk_darwin(v167);
  v153 = &v134 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v158 = &v134 - v76;
  v199[2] = v194;
  v199[3] = v198;
  v199[4] = v195;
  v199[5] = v196;
  v199[6] = v197;
  v77 = static Axis.Set.vertical.getter();
  sub_1000E7A24(v77, sub_1000D8210, v199, v136, v135);
  v78 = v137;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  v136 = xmmword_1001B3B50;
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v59) = static Axis.Set.vertical.getter();
  *(inited + 32) = v59;
  v80 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v80;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v59)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v80)
  {
    Axis.Set.init(rawValue:)();
  }

  v81 = v170;
  v82 = v140;
  View.scrollIndicators(_:axes:)();
  (*(v179 + 8))(v78, v180);
  (*(v139 + 8))(v71, v82);
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  v83 = swift_initStackObject();
  *(v83 + 16) = v136;
  v84 = static Edge.Set.top.getter();
  *(v83 + 32) = v84;
  v85 = static Edge.Set.bottom.getter();
  *(v83 + 33) = v85;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v84)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v85)
  {
    Edge.Set.init(rawValue:)();
  }

  static SafeAreaRegions.all.getter();
  v86 = v173;
  v87 = v176;
  View.ignoresSafeArea(_:edges:)();
  (*(v174 + 8))(v81, v87);
  v89 = v181;
  v88 = v182;
  v90 = v183;
  (*(v182 + 104))(v181, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v183);
  v91 = v166;
  v92 = v146;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v88 + 8))(v89, v90);
  (*(v177 + 8))(v86, v92);
  sub_1000CD620(v193);
  v93 = sub_100011140();
  v95 = v94;

  v200 = v93;
  v201 = v95;
  v97 = v171;
  v96 = v172;
  View.navigationTitle<A>(_:)();

  (*(v169 + 8))(v91, v96);
  Solarium.init()();
  v98 = v184;
  v99 = static ViewInputPredicate.! prefix(_:)();
  __chkstk_darwin(v99);
  v100 = v194;
  v101 = v198;
  *(&v134 - 6) = v194;
  *(&v134 - 5) = v101;
  v102 = v101;
  v103 = v196;
  *(&v134 - 4) = v195;
  *(&v134 - 3) = v103;
  swift_checkMetadataState();
  v133 = v141;
  v104 = v162;
  v105 = v178;
  v106 = v192;
  View.staticIf<A, B>(_:then:)();
  (*(v185 + 8))(v98, v106);
  (*(v175 + 8))(v97, v105);
  v108 = v187;
  v107 = v188;
  v109 = v197;
  v110 = v193;
  (*(v188 + 16))(v187, v197, v193);
  v111 = (*(v107 + 80) + 48) & ~*(v107 + 80);
  v112 = swift_allocObject();
  *(v112 + 2) = v100;
  *(v112 + 3) = v102;
  v114 = v195;
  v113 = v196;
  *(v112 + 4) = v195;
  *(v112 + 5) = v113;
  (*(v107 + 32))(&v112[v111], v108, v110);
  v133 = v142;
  v115 = v151;
  v116 = v168;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v117 = (*(v165 + 8))(v104, v116);
  __chkstk_darwin(v117);
  v118 = v198;
  *(&v134 - 6) = v194;
  *(&v134 - 5) = v118;
  *(&v134 - 4) = v114;
  *(&v134 - 3) = v113;
  v133 = v109;
  v120 = v148;
  v119 = v149;
  v121 = v164;
  v122 = v154;
  v123 = v143;
  View.toolbar<A>(content:)();
  (*(v159 + 8))(v115, v121);
  static Animation.easeInOut.getter();
  v124 = v190;
  sub_100039F08(v190);
  v200 = v121;
  v201 = v122;
  v202 = v119;
  v203 = v123;
  v125 = swift_getOpaqueTypeConformance2();
  sub_100010CEC();
  v126 = v153;
  v127 = v160;
  View.animation<A>(_:value:)();

  sub_1000050C4(v124, &qword_100221730, qword_1001B6530);
  (*(v156 + 8))(v120, v127);
  v128 = sub_10000BFFC(&qword_1002260E8, &qword_1002260E0, &qword_1001BBA38, &protocol conformance descriptor for _AnimationModifier<A>);
  v199[8] = v125;
  v199[9] = v128;
  v129 = v167;
  swift_getWitnessTable();
  v130 = v158;
  sub_1000EE87C();
  v131 = *(v163 + 8);
  v131(v126, v129);
  sub_1000EE87C();
  return (v131)(v130, v129);
}

uint64_t sub_1000D0674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v32 = a4;
  v33 = a1;
  v34 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1000D7F3C(WitnessTable, v11, v12);
  v41[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8, &qword_1001BB9F8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0, &qword_1001BBA00);
  v44 = type metadata accessor for ModifiedContent();
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v13, v14, v15);
  sub_10000460C(&qword_1002260B8, &qword_1001BBA08);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0, &qword_1001BBA10);
  type metadata accessor for ModifiedContent();
  v45 = type metadata accessor for Optional();
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView(255, v16, v17, v18);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8, &qword_1001BBA18);
  type metadata accessor for _ConditionalContent();
  v46 = type metadata accessor for Optional();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v41[0] = AssociatedTypeWitness;
  v41[1] = v19;
  v41[2] = AssociatedConformanceWitness;
  v41[3] = v20;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, v41);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v19, v20, v22);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v47 = type metadata accessor for Optional();
  v48 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v23 = type metadata accessor for VStack();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v32 - v28;
  static HorizontalAlignment.leading.getter();
  v36 = a2;
  v37 = a3;
  v38 = v32;
  v39 = v35;
  v40 = v33;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v30 = *(v24 + 8);
  v30(v27, v23);
  sub_1000EE87C();
  return (v30)(v29, v23);
}

uint64_t sub_1000D0CD0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v569 = a5;
  v572 = a1;
  v536 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v539 = swift_getAssociatedConformanceWitness();
  v540 = v9;
  type metadata accessor for TourPhotosView(255, v9, v539, v10);
  type metadata accessor for _ConditionalContent();
  v11 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v639 = sub_1000D7F3C(WitnessTable, v12, v13);
  v637 = swift_getWitnessTable();
  v553 = swift_getWitnessTable();
  *&v619 = v11;
  *(&v619 + 1) = v553;
  v557 = &opaque type descriptor for <<opaque return type of View.onScrollVisibilityChange(threshold:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8, &qword_1001BB9F8);
  v554 = OpaqueTypeMetadata2;
  v15 = type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0, &qword_1001BBA00);
  v559 = v15;
  v567 = type metadata accessor for ModifiedContent();
  v556 = *(v567 - 8);
  v16 = __chkstk_darwin(v567);
  v566 = v513 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v535 = v17;
  v18 = __chkstk_darwin(v16);
  v560 = v513 - v19;
  v562 = *(v15 - 8);
  v20 = __chkstk_darwin(v18);
  v565 = v513 - v21;
  v555 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(v20);
  v564 = v513 - v22;
  v23 = swift_checkMetadataState();
  v552 = *(v23 - 8);
  __chkstk_darwin(v23);
  v551 = v513 - v24;
  v573 = a2;
  v571 = a3;
  v574 = a3;
  v575 = a4;
  v25 = v569;
  v576 = v569;
  v26 = v572;
  v577 = v572;
  swift_checkMetadataState();
  Group<A>.init(content:)();
  *&v619 = a2;
  v568 = a2;
  *(&v619 + 1) = a3;
  v620 = a4;
  v558 = a4;
  v621 = v25;
  v27 = type metadata accessor for PromotionalAssetsView(0, &v619);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v563 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v513 - v563;
  v31 = *(v28 + 16);
  v547 = (v28 + 16);
  v548 = v29;
  v546 = v31;
  v32 = v26;
  v34 = v33;
  (v31)(v513 - v563, v32);
  v561 = *(v28 + 80);
  v544 = &v29[(v561 + 48) & ~v561];
  v545 = ((v561 + 48) & ~v561);
  v35 = v545;
  v36 = swift_allocObject();
  v37 = v571;
  *(v36 + 16) = a2;
  *(v36 + 24) = v37;
  *(v36 + 32) = a4;
  *(v36 + 40) = v25;
  v38 = *(v28 + 32);
  v39 = v34;
  v38(&v35[v36], v30, v34);
  v40 = v23;
  v41 = v553;
  v42 = v551;
  View.onScrollVisibilityChange(threshold:_:)();

  v43 = v42;
  v44 = v40;
  (*(v552 + 8))(v43, v40);
  v45 = type metadata accessor for CoordinateSpace();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v551 = v47;
  v531 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = (v513 - v531);
  *&v619 = v44;
  *(&v619 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_1000D8670(OpaqueTypeConformance2, v50, v51);
  v557 = v52;
  v53 = *(v46 + 104);
  LODWORD(v529) = enum case for CoordinateSpace.local(_:);
  v530 = v46 + 104;
  v528 = v53;
  v53(v48);
  v54 = v554;
  v55 = v52;
  v56 = v564;
  sub_1000F5464(&type metadata for TourPhotosViewSizePreferenceKey, v48, sub_1000DA230, 0, v554, &type metadata for TourPhotosViewSizePreferenceKey, OpaqueTypeConformance2, v55, v565);
  v57 = *(v46 + 8);
  v552 = v46 + 8;
  v553 = v45;
  v527 = v57;
  (v57)(v48, v45);
  v58 = (*(v555 + 1))(v56, v54);
  __chkstk_darwin(v58);
  v59 = v513 - v563;
  v546(v513 - v563, v572, v39);
  v60 = swift_allocObject();
  v61 = v571;
  *(v60 + 16) = v568;
  *(v60 + 24) = v61;
  v62 = v569;
  *(v60 + 32) = v558;
  *(v60 + 40) = v62;
  v537 = v38;
  v538 = (v28 + 32);
  v38(&v545[v60], v59, v39);
  v63 = sub_10000BFFC(&qword_100226178, &qword_1002260A8, &qword_1001BB9F8, &unk_1001BC740);
  v635 = OpaqueTypeConformance2;
  v636 = v63;
  v64 = v559;
  v65 = swift_getWitnessTable();
  v66 = sub_1000D885C(&qword_100226138, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v67 = v560;
  v557 = v66;
  v68 = v565;
  View.onPreferenceChange<A>(_:perform:)();
  v69 = v39;

  (*(v562 + 8))(v68, v64);
  v70 = sub_10000BFFC(&qword_100226180, &qword_1002260B0, &qword_1001BBA00, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v633 = v65;
  v634 = v70;
  v71 = v567;
  v532 = swift_getWitnessTable();
  sub_1000EE87C();
  v533 = v556[1];
  v534 = v556 + 1;
  v533(v67, v71);
  v72 = swift_getAssociatedTypeWitness();
  v73 = swift_getAssociatedConformanceWitness();
  v75 = type metadata accessor for FeaturedVideosView(255, v72, v73, v74);
  sub_10000460C(&qword_1002260B8, &qword_1001BBA08);
  v559 = v75;
  v76 = type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0, &qword_1001BBA10);
  v77 = type metadata accessor for ModifiedContent();
  v78 = type metadata accessor for Optional();
  v565 = *(v78 - 8);
  v555 = *(v565 + 64);
  __chkstk_darwin(v78);
  v564 = v79;
  v80 = (v513 - v79);
  v570 = v69;
  sub_1000CD620(v69);
  LOBYTE(v67) = sub_10000E7F4();

  v560 = v80;
  v542 = v77;
  v543 = v78;
  v541 = v76;
  if (v67)
  {
    v554 = v513;
    v526 = *(v77 - 8);
    v525 = v526[8];
    v82 = __chkstk_darwin(v81);
    v522 = (v513 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    v523 = v513;
    v524 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
    v84 = __chkstk_darwin(v82);
    v519 = v513 - v85;
    v521 = v513;
    v520 = *(v76 - 8);
    v86 = __chkstk_darwin(v84);
    v562 = v513 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    v518 = v513;
    v517 = *(v559 - 8);
    __chkstk_darwin(v86);
    v516 = v513 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for FeaturedVideosViewModel(0, v72, v73, v89);
    v90 = v570;
    sub_1000CD620(v570);
    v91 = sub_10000E294();
    v93 = v92;

    sub_1000CD620(v90);
    v94 = sub_10000E814();

    sub_1000CD620(v90);
    v95 = sub_10000E258();

    v515 = sub_10006A0FC(v91, v93, v94, v95);
    v96 = sub_1000CD67C(v90);
    v513[3] = v97;
    v513[4] = v96;
    v98 = v97;
    v100 = v99;
    v513[2] = v99;
    __chkstk_darwin(v96);
    v101 = v568;
    v102 = v569;
    v103 = v571;
    v513[-4] = v568;
    v513[-3] = v103;
    v104 = v558;
    v513[-2] = v558;
    v513[-1] = v102;
    v513[1] = swift_getKeyPath();
    v614 = v96;
    v615 = v98;
    v616 = v100;
    type metadata accessor for Optional();
    v105 = type metadata accessor for Binding();
    v514 = v513;
    __chkstk_darwin(v105 - 8);
    v107 = v513 - v106;
    *&v619 = v101;
    *(&v619 + 1) = v103;
    v620 = v104;
    v621 = v102;
    type metadata accessor for PromotionalAssetsViewModel(255, &v619);
    type metadata accessor for Binding();
    Binding.subscript.getter();

    __chkstk_darwin(v108);
    v110 = v513 - v109;
    (*(*(v72 - 8) + 56))(v513 - v109, 1, 1, v72);
    v111 = v516;
    v112 = sub_10012C554(v515, v107, v110, v516);
    __chkstk_darwin(v112);
    v113 = (v513 - v531);
    v114 = v559;
    v115 = swift_getWitnessTable();
    v118 = sub_1000D8BD8(v115, v116, v117);
    v119 = v553;
    (v528)(v113, v529, v553);
    sub_1000F5464(&type metadata for FeaturedVideosViewSizePreferenceKey, v113, sub_1000DA230, 0, v114, &type metadata for FeaturedVideosViewSizePreferenceKey, v115, v118, v562);
    (v527)(v113, v119);
    v120 = v517[1](v111, v114);
    __chkstk_darwin(v120);
    v121 = v513 - v563;
    v122 = v570;
    v546(v513 - v563, v572, v570);
    v123 = swift_allocObject();
    v124 = v571;
    *(v123 + 16) = v568;
    *(v123 + 24) = v124;
    *(v123 + 32) = v558;
    *(v123 + 40) = v102;
    v537(&v545[v123], v121, v122);
    v125 = sub_10000BFFC(&qword_100226188, &qword_1002260B8, &qword_1001BBA08, &unk_1001BC740);
    v580 = v115;
    v127 = v541;
    v126 = v542;
    v581 = v125;
    v128 = swift_getWitnessTable();
    v129 = v519;
    v130 = v562;
    View.onPreferenceChange<A>(_:perform:)();

    (*(v520 + 8))(v130, v127);
    v131 = sub_10000BFFC(&qword_100226190, &qword_1002260C0, &qword_1001BBA10, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    v578 = v128;
    v579 = v131;
    swift_getWitnessTable();
    v132 = v522;
    sub_1000EE87C();
    v133 = v526;
    v134 = v526[1];
    v135 = v134(v129, v126);
    __chkstk_darwin(v135);
    v136 = v513 - v524;
    sub_1000EE87C();
    v137 = v134(v132, v126);
    __chkstk_darwin(v137);
    v138 = (v513 - v564);
    (*(v133 + 32))(v513 - v564, v136, v126);
    (*(v133 + 56))(v138, 0, 1, v126);
    sub_1000E7690(v138, v560);
    (*(v565 + 8))(v138, v543);
  }

  else
  {
    __chkstk_darwin(v81);
    v139 = (v513 - v564);
    (*(*(v77 - 8) + 56))(v513 - v564, 1, 1, v77);
    v140 = swift_getWitnessTable();
    v141 = sub_10000BFFC(&qword_100226188, &qword_1002260B8, &qword_1001BBA08, &unk_1001BC740);
    v631 = v140;
    v632 = v141;
    v142 = swift_getWitnessTable();
    v143 = sub_10000BFFC(&qword_100226190, &qword_1002260C0, &qword_1001BBA10, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    v629 = v142;
    v630 = v143;
    swift_getWitnessTable();
    sub_1000E7690(v139, v80);
    (*(v565 + 8))(v139, v78);
  }

  v144 = v570;
  v145 = v571;
  v146 = v568;
  v147 = swift_getAssociatedTypeWitness();
  v528 = swift_getAssociatedConformanceWitness();
  v149 = type metadata accessor for SetlistView(255, v147, v528, v148);
  v552 = swift_getWitnessTable();
  v553 = v149;
  *&v619 = v149;
  *(&v619 + 1) = v552;
  v150 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v151 = type metadata accessor for ModifiedContent();
  v152 = sub_10000460C(&qword_1002260C8, &qword_1001BBA18);
  v557 = v151;
  v530 = v152;
  v554 = type metadata accessor for _ConditionalContent();
  v153 = type metadata accessor for Optional();
  v531 = v513;
  v563 = *(v153 - 8);
  v564 = v153;
  v551 = *(v563 + 64);
  __chkstk_darwin(v153);
  v562 = v513 - v154;
  sub_1000CD620(v144);
  v155 = sub_10000F1DC();

  if (v155)
  {
    v527 = v150;
    v156 = swift_checkMetadataState();
    v529 = v513;
    v157 = *(v156 - 8);
    v523 = *(v157 + 64);
    __chkstk_darwin(v156);
    v524 = v158;
    v159 = v513 - v158;
    sub_1000CD620(v144);
    v160 = type metadata accessor for Optional();
    v161 = *(v160 - 8);
    __chkstk_darwin(v160);
    v163 = v513 - v162;
    sub_10000F168(v513 - v162);

    if ((*(v157 + 48))(v163, 1, v156) != 1)
    {
      v525 = v157;
      v526 = v159;
      v209 = (*(v157 + 32))(v159, v163, v156);
      v571 = v513;
      v569 = *(v557 - 1);
      v568 = *(v569 + 8);
      v210 = __chkstk_darwin(v209);
      v561 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
      v548 = v513 - v561;
      v558 = v513;
      v212 = __chkstk_darwin(v210);
      v545 = v513 - v213;
      v547 = v513;
      v546 = *(v527 - 1);
      __chkstk_darwin(v212);
      v537 = (v513 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0));
      v521 = swift_checkMetadataState();
      v544 = v513;
      v538 = *(v521 - 1);
      __chkstk_darwin(v521);
      v216 = (v513 - v215);
      v522 = v156;
      v528 = type metadata accessor for SetlistViewModel(0, v156, v528, v217);
      v218 = v570;
      sub_1000CD620(v570);
      v219 = sub_10000E294();
      v519 = v220;
      v520 = v219;

      sub_1000CD620(v218);
      v221 = sub_10000EBA0();
      v223 = v222;

      __chkstk_darwin(v224);
      v225 = v513 - v524;
      (*(v525 + 16))(v513 - v524, v526, v156);
      sub_1000CD620(v218);
      v226 = sub_10000F4AC();

      v227 = sub_1000254D8(v520, v519, v221, v223, v225, v226 & 1);
      sub_1000515BC(v227, v216);
      v228 = type metadata accessor for AccessibilityChildBehavior();
      v229 = *(v228 - 8);
      __chkstk_darwin(v228);
      v231 = v513 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
      static AccessibilityChildBehavior.contain.getter();
      v232 = v537;
      v233 = v521;
      v234 = v552;
      View.accessibilityElement(children:)();
      (*(v229 + 8))(v231, v228);
      (v538[1])(v216, v233);
      *&v619 = v233;
      *(&v619 + 1) = v234;
      v235 = swift_getOpaqueTypeConformance2();
      v236 = v545;
      v237 = v527;
      View.accessibilityIdentifier(_:)();
      (*(v546 + 1))(v232, v237);
      v238 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
      v584 = v235;
      v585 = v238;
      v239 = v557;
      v240 = swift_getWitnessTable();
      v241 = v548;
      sub_1000EE87C();
      v242 = *(v569 + 1);
      v243 = v242(v236, v239);
      v569 = v513;
      __chkstk_darwin(v243);
      v244 = v513 - v561;
      v245 = sub_1000EE87C();
      v246 = __chkstk_darwin(v245);
      v248 = v513 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
      v251 = sub_1000D878C(v246, v249, v250);
      *&v619 = &type metadata for SetlistLoadingView;
      *(&v619 + 1) = v251;
      v252 = swift_getOpaqueTypeConformance2();
      sub_10017387C(v244, v239, v530, v240, v252);
      v242(v244, v239);
      v242(v241, v239);
      (*(v525 + 8))(v526, v522);
      (*(*(v554 - 1) + 56))(v248, 0, 1, v554);
      v582 = v240;
      v583 = v252;
      swift_getWitnessTable();
      sub_1000E7690(v248, v562);
      (*(v563 + 8))(v248, v564);
      goto LABEL_15;
    }

    (*(v161 + 8))(v163, v160);
    v144 = v570;
    v145 = v571;
    v146 = v568;
  }

  v164 = v572;
  sub_1000CD620(v144);
  if (!v164[2])
  {
LABEL_36:
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v166 = sub_10000FFC8(v165);

  if ((v166 & 1) == 0)
  {
    __chkstk_darwin(v167);
    v199 = v513 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(*(v554 - 1) + 56))(v199, 1, 1, v554);
    *&v619 = v553;
    *(&v619 + 1) = v552;
    v200 = swift_getOpaqueTypeConformance2();
    v201 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v627 = v200;
    v628 = v201;
    v202 = swift_getWitnessTable();
    v205 = sub_1000D878C(v202, v203, v204);
    *&v619 = &type metadata for SetlistLoadingView;
    *(&v619 + 1) = v205;
    v206 = swift_getOpaqueTypeConformance2();
    v625 = v202;
    v626 = v206;
    swift_getWitnessTable();
    sub_1000E7690(v199, v562);
    (*(v563 + 8))(v199, v564);
    v208 = v539;
    v207 = v540;
    goto LABEL_16;
  }

  v529 = v513;
  v523 = ~v561;
  v528 = *(v530 - 8);
  v168 = __chkstk_darwin(v167);
  v527 = v513 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = v513;
  __chkstk_darwin(v168);
  v525 = v513 - v170;
  v171 = v572;
  sub_1000CD620(v144);
  LODWORD(v524) = sub_10000F1A0();

  v522 = v513;
  v173 = v548;
  __chkstk_darwin(v172);
  v174 = (v173 + 15) & 0xFFFFFFFFFFFFFFF0;
  v175 = v546;
  v546(v513 - v174, v171, v144);
  v176 = swift_allocObject();
  *(v176 + 16) = v146;
  *(v176 + 24) = v145;
  v177 = v558;
  v178 = v569;
  *(v176 + 32) = v558;
  *(v176 + 40) = v178;
  v544 = v176;
  v179 = (v537)(&v545[v176], v513 - v174, v144);
  v545 = v513;
  __chkstk_darwin(v179);
  v180 = v513 - v174;
  v175(v513 - v174, v171, v144);
  type metadata accessor for MainActor();
  v181 = static MainActor.shared.getter();
  v182 = (v561 + 64) & v523;
  v183 = swift_allocObject();
  *(v183 + 2) = v181;
  *(v183 + 3) = &protocol witness table for MainActor;
  v184 = v571;
  *(v183 + 4) = v568;
  *(v183 + 5) = v184;
  v185 = v569;
  *(v183 + 6) = v177;
  *(v183 + 7) = v185;
  v537(&v183[v182], v180, v144);
  v186 = type metadata accessor for TaskPriority();
  v187 = *(v186 - 8);
  v188 = *(v187 + 64);
  __chkstk_darwin(v186);
  v189 = (v188 + 15) & 0xFFFFFFFFFFFFFFF0;
  v190 = v513 - v189;
  static TaskPriority.userInitiated.getter();
  if (sub_1001AD108(2, 26, 4, 0))
  {
    v568 = type metadata accessor for _TaskModifier2();
    v569 = v513;
    v571 = v513;
    v561 = *(v568 - 1);
    __chkstk_darwin(v568);
    v192 = v513 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v619 = 0;
    *(&v619 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v619 = 0xD000000000000039;
    *(&v619 + 1) = 0x80000001001C6EF0;
    v614 = 109;
    v193._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v193);

    v558 = v513;
    __chkstk_darwin(v194);
    (*(v187 + 16))(v513 - v189, v513 - v189, v186);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v187 + 8))(v513 - v189, v186);
    v195 = sub_1000024C4(&qword_100220CD0, &qword_1001B2E50);
    v196 = v525;
    (*(v561 + 32))(v525 + *(v195 + 36), v192, v568);
  }

  else
  {
    v253 = sub_1000024C4(&qword_100220CD8, &qword_1001B2E58);
    v196 = v525;
    v254 = (v525 + *(v253 + 36));
    v255 = type metadata accessor for _TaskModifier();
    (*(v187 + 32))(&v254[*(v255 + 20)], v190, v186);
    *v254 = &unk_1001BBB18;
    *(v254 + 1) = v183;
  }

  *v196 = v524 & 1;
  v197 = v544;
  *(v196 + 8) = sub_1000D88A4;
  *(v196 + 16) = v197;
  v257 = v527;
  v256 = v528;
  v258 = v530;
  v259 = (*(v528 + 4))(v527, v196, v530);
  __chkstk_darwin(v259);
  v261 = v513 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v619 = v553;
  *(&v619 + 1) = v552;
  v262 = swift_getOpaqueTypeConformance2();
  v263 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v588 = v262;
  v589 = v263;
  v264 = v557;
  v265 = swift_getWitnessTable();
  v268 = sub_1000D878C(v265, v266, v267);
  *&v619 = &type metadata for SetlistLoadingView;
  *(&v619 + 1) = v268;
  v269 = swift_getOpaqueTypeConformance2();
  sub_100173974(v257, v264, v258, v265, v269);
  (*(v256 + 8))(v257, v258);
  (*(*(v554 - 1) + 56))(v261, 0, 1, v554);
  v586 = v265;
  v587 = v269;
  swift_getWitnessTable();
  sub_1000E7690(v261, v562);
  (*(v563 + 8))(v261, v564);
LABEL_15:
  v208 = v539;
  v207 = v540;
LABEL_16:
  v270 = swift_getAssociatedTypeWitness();
  v271 = swift_getAssociatedConformanceWitness();
  *&v619 = v207;
  *(&v619 + 1) = v270;
  v620 = v208;
  v621 = v271;
  v272 = type metadata accessor for PhoneWallpapersWatchFacesView(255, &v619);
  v538 = type metadata accessor for PhoneWallpaperView(255, v207, v208, v273);
  v274 = type metadata accessor for Optional();
  v537 = v271;
  v546 = type metadata accessor for WatchFacesView(255, v270, v271, v275);
  v544 = type metadata accessor for Optional();
  v545 = v274;
  swift_getTupleTypeMetadata2();
  v276 = type metadata accessor for TupleView();
  v561 = v272;
  v277 = type metadata accessor for _ConditionalContent();
  v278 = type metadata accessor for Optional();
  v547 = v513;
  v569 = v278;
  v571 = *(v278 - 8);
  v279 = v571[8];
  v280 = (v279 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v278);
  v568 = v513 - v280;
  v281 = v570;
  sub_1000CD620(v570);
  v282 = [objc_opt_self() currentDevice];
  v283 = [v282 userInterfaceIdiom];

  AssociatedConformanceWitness = v276;
  AssociatedTypeWitness = v277;
  v548 = v279;
  if (v283)
  {
    v558 = v513;
    __chkstk_darwin(v284);
    (*(*(v277 - 8) + 56))(v513 - v280, 1, 1, v277);
    v285 = swift_getWitnessTable();
    v286 = swift_getWitnessTable();
    v623 = v285;
    v624 = v286;
    swift_getWitnessTable();
    sub_1000E7690(v513 - v280, v568);
    (v571[1])(v513 - v280, v569);
  }

  else
  {
    v526 = v270;
    v287 = v545;
    v558 = v513;
    v530 = *(v277 - 8);
    __chkstk_darwin(v284);
    v528 = v288;
    v289 = v513 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000CD620(v281);
    v290 = sub_10000F878();

    v292 = v281;
    v529 = v289;
    if (v290)
    {
      v527 = v513;
      v293 = v561;
      v546 = *(v561 - 8);
      v545 = *(v546 + 8);
      v294 = __chkstk_darwin(v291);
      v544 = ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
      v525 = v513 - v544;
      v538 = v513;
      __chkstk_darwin(v294);
      v524 = v513 - v296;
      sub_1000CD620(v281);
      v297 = sub_10000E294();
      v522 = v298;
      v523 = v297;

      sub_1000CD620(v281);
      v299 = sub_10000EBA0();
      v520 = v300;
      v521 = v299;

      type metadata accessor for PhoneWallpaperViewModel(0, v540, v539, v301);
      sub_1000CD620(v281);
      v302 = sub_10000E294();
      v304 = v303;

      sub_1000CD620(v281);
      v305 = sub_10000FAE8();

      sub_1000CD620(v281);
      sub_10000E5B8();
      v307 = v306;

      sub_1000CD620(v281);
      v308 = sub_10000CE08();

      sub_1000CD620(v281);
      v309 = sub_10000F940();

      v540 = sub_1001AAD60(v302, v304, v305, v309, v307, v308);
      type metadata accessor for WatchFacesViewModel(0, v526, v537, v310);
      sub_1000CD620(v281);
      v311 = sub_10000E294();
      v313 = v312;

      sub_1000CD620(v281);
      v314 = sub_10000F960();

      sub_1000CD620(v281);
      sub_10000E5B8();
      v316 = v315;

      sub_1000CD620(v281);
      v317 = sub_10000CE08();

      sub_1000CD620(v281);
      v318 = sub_10000F940();

      v319 = sub_100060C54(v311, v313, v314, v318, v316, v317);
      v320 = v524;
      sub_10013ABB8(v523, v522, v521, v520, v540, v319, v524);
      v321 = swift_getWitnessTable();
      v322 = v525;
      sub_1000EE87C();
      v323 = *(v546 + 1);
      v324 = v323(v320, v293);
      __chkstk_darwin(v324);
      v325 = (v513 - v544);
      sub_1000EE87C();
      v326 = AssociatedConformanceWitness;
      v327 = swift_getWitnessTable();
      v328 = v529;
      sub_10017387C(v325, v293, v326, v321, v327);
      v323(v325, v293);
      v329 = v323(v322, v293);
      v330 = v328;
    }

    else
    {
      v331 = *(v287 - 1);
      v332 = *(v331 + 64);
      __chkstk_darwin(v291);
      v333 = (v332 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_1000CD620(v292);
      v334 = sub_10000F58C();

      v527 = v513;
      v524 = v331;
      v525 = v513 - v333;
      v523 = v332;
      if (v334)
      {
        v522 = v513;
        v336 = v538;
        v521 = *(v538 - 1);
        v520 = v521[8];
        v337 = __chkstk_darwin(v335);
        v517 = (v513 - ((v338 + 15) & 0xFFFFFFFFFFFFFFF0));
        v518 = v513;
        v519 = (v338 + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v337);
        v340 = v513 - v339;
        v341 = v292;
        v342 = v540;
        v516 = type metadata accessor for PhoneWallpaperViewModel(0, v540, v539, v343);
        sub_1000CD620(v341);
        v344 = sub_10000E294();
        v514 = v345;
        v515 = v344;

        sub_1000CD620(v341);
        v346 = sub_10000FAE8();

        sub_1000CD620(v341);
        sub_10000E5B8();
        v348 = v347;

        sub_1000CD620(v341);
        v349 = sub_10000CE08();

        sub_1000CD620(v341);
        v350 = sub_10000F940();
        v539 = v333;
        v351 = v350;

        v352 = sub_1001AAD60(v515, v514, v346, v351, v348, v349);
        v353 = type metadata accessor for Optional();
        __chkstk_darwin(v353 - 8);
        v355 = v513 - v354;
        (*(*(v342 - 1) + 56))(v513 - v354, 1, 1, v342);
        v356 = v340;
        sub_10019F288(v352, v355, v340);
        swift_getWitnessTable();
        v357 = v517;
        v358 = v356;
        sub_1000EE87C();
        v359 = v521;
        v360 = v521[1];
        v361 = v360(v358, v336);
        v540 = v513;
        __chkstk_darwin(v361);
        v362 = v513 - v519;
        sub_1000EE87C();
        v363 = v360(v357, v336);
        __chkstk_darwin(v363);
        v364 = (v513 - v539);
        (*(v359 + 32))(v513 - v539, v362, v336);
        (*(v359 + 56))(v364, 0, 1, v336);
        sub_1000E7690(v364, v525);
        v365 = (*(v524 + 8))(v364, v287);
        v292 = v341;
      }

      else
      {
        __chkstk_darwin(v335);
        (*(*(v538 - 1) + 56))(v513 - v333, 1, 1, v538);
        swift_getWitnessTable();
        sub_1000E7690(v513 - v333, v513 - v333);
        v365 = (*(v331 + 8))(v513 - v333, v287);
      }

      v366 = v544;
      v367 = v546;
      v368 = v526;
      v526 = v513;
      v539 = *(v544 - 1);
      v369 = *(v539 + 8);
      __chkstk_darwin(v365);
      v370 = (v369 + 15) & 0xFFFFFFFFFFFFFFF0;
      v540 = (v513 - v370);
      sub_1000CD620(v292);
      v371 = sub_10000F5AC();

      if (v371)
      {
        v521 = v513;
        v522 = *(v367 - 1);
        v520 = v522[8];
        v373 = __chkstk_darwin(v372);
        v375 = v513 - ((v374 + 15) & 0xFFFFFFFFFFFFFFF0);
        v518 = v513;
        v519 = (v374 + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v373);
        v376 = v292;
        v378 = v513 - v377;
        v517 = type metadata accessor for WatchFacesViewModel(0, v368, v379, v380);
        v537 = ((v369 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1000CD620(v376);
        v381 = sub_10000E294();
        v515 = v382;
        v516 = v381;

        sub_1000CD620(v376);
        v383 = sub_10000F960();

        sub_1000CD620(v376);
        sub_10000E5B8();
        v385 = v384;

        sub_1000CD620(v376);
        v386 = sub_10000CE08();

        sub_1000CD620(v376);
        LOBYTE(v376) = sub_10000F940();

        v387 = sub_100060C54(v516, v515, v383, v376 & 1, v385, v386);
        v388 = type metadata accessor for Optional();
        __chkstk_darwin(v388 - 8);
        v390 = v513 - v389;
        (*(*(v368 - 8) + 56))(v513 - v389, 1, 1, v368);
        sub_100041B30(v387, v390, v378);
        swift_getWitnessTable();
        v391 = v375;
        sub_1000EE87C();
        v392 = v522;
        v393 = v522[1];
        v394 = v393(v378, v546);
        __chkstk_darwin(v394);
        v395 = v513 - v519;
        sub_1000EE87C();
        v396 = v393(v391, v546);
        v397 = v546;
        __chkstk_darwin(v396);
        v398 = (v513 - v537);
        (*(v392 + 32))(v513 - v537, v395, v397);
        v399 = v392;
        v287 = v545;
        (*(v399 + 56))(v398, 0, 1, v397);
        sub_1000E7690(v398, v540);
        v400 = *(v539 + 1);
        v522 = ((v539 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v537 = v400;
        v401 = (v400)(v398, v366);
      }

      else
      {
        __chkstk_darwin(v372);
        (*(*(v367 - 1) + 56))(v513 - v370, 1, 1, v367);
        swift_getWitnessTable();
        sub_1000E7690(v513 - v370, v540);
        v402 = *(v539 + 1);
        v522 = ((v539 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v537 = v402;
        v401 = (v402)(v513 - v370, v366);
      }

      v403 = v366;
      v546 = v513;
      v404 = AssociatedConformanceWitness;
      v520 = *(AssociatedConformanceWitness - 8);
      v405 = __chkstk_darwin(v401);
      v407 = v513 - ((v406 + 15) & 0xFFFFFFFFFFFFFFF0);
      v521 = v513;
      __chkstk_darwin(v405);
      v409 = v513 - ((v408 + 15) & 0xFFFFFFFFFFFFFFF0);
      v410 = v524;
      v411 = (*(v524 + 16))(v409, v525, v287);
      v523 = v513;
      *&v619 = v409;
      __chkstk_darwin(v411);
      v412 = v369 + 15;
      v413 = v404;
      v414 = v513 - (v412 & 0xFFFFFFFFFFFFFFF0);
      (*(v539 + 2))(v414, v540, v403);
      *(&v619 + 1) = v414;
      v614 = v287;
      v615 = v403;
      v593 = swift_getWitnessTable();
      v609 = swift_getWitnessTable();
      v592 = swift_getWitnessTable();
      v610 = swift_getWitnessTable();
      sub_1000E76FC(&v619, 2uLL, &v614);
      v415 = v403;
      v416 = v537;
      (v537)(v414, v415);
      v417 = *(v410 + 8);
      v417(v409, v287);
      v418 = v561;
      v419 = swift_getWitnessTable();
      v420 = swift_getWitnessTable();
      v330 = v529;
      sub_100173974(v407, v418, v413, v419, v420);
      (*(v520 + 8))(v407, v413);
      v416(v540, v544);
      v329 = (v417)(v525, v545);
    }

    __chkstk_darwin(v329);
    v422 = v513 - ((v421 + 15) & 0xFFFFFFFFFFFFFFF0);
    v423 = swift_getWitnessTable();
    v424 = swift_getWitnessTable();
    v590 = v423;
    v591 = v424;
    v425 = AssociatedTypeWitness;
    swift_getWitnessTable();
    sub_1000EE87C();
    v426 = v530;
    v427 = (*(v530 + 8))(v330, v425);
    v428 = v548;
    __chkstk_darwin(v427);
    (*(v426 + 32))(v513 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0), v422, v425);
    (*(v426 + 56))(v513 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v425);
    sub_1000E7690(v513 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0), v568);
    (v571[1])(v513 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0), v569);
  }

  v429 = sub_1000024C4(&qword_1002245B8, &unk_1001BBA20);
  v544 = *(*(v429 - 8) + 64);
  __chkstk_darwin(v429);
  v558 = (v513 - v430);
  v431 = v570;
  v432 = v572;
  sub_1000CD620(v570);
  if (!v432[2])
  {
    goto LABEL_36;
  }

  v545 = v429;
  v546 = v513;

  v434 = sub_100011730(v433);
  v436 = v435;

  if (!v436)
  {
    goto LABEL_33;
  }

  v437 = HIBYTE(v436) & 0xF;
  if ((v436 & 0x2000000000000000) == 0)
  {
    v437 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (!v437)
  {
    v471 = type metadata accessor for AppModule(0);
    v469 = v558;
    v470 = (*(*(v471 - 8) + 56))(v558, 1, 1, v471);
  }

  else
  {
LABEL_33:
    v438 = type metadata accessor for AppModule(0);
    v540 = v513;
    v439 = *(v438 - 8);
    __chkstk_darwin(v438);
    v441 = v513 - ((v440 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000CD620(v431);
    v442 = sub_10000E294();
    v537 = v443;
    v538 = v442;

    sub_1000CD620(v431);
    v444 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
    v539 = v513;
    __chkstk_darwin(v444 - 8);
    v445 = v431;
    v447 = v513 - v446;
    sub_10000E30C();

    sub_1000CD620(v445);

    v449 = sub_100011730(v448);
    v451 = v450;

    type metadata accessor for AppViewModel(0);
    v452 = swift_allocObject();
    v453 = v452 + OBJC_IVAR____TtC16EventViewService12AppViewModel_subheaderTitle;
    *v453 = LocalizedStringKey.init(stringLiteral:)();
    *(v453 + 8) = v454;
    *(v453 + 16) = v455 & 1;
    *(v453 + 24) = v456;
    v457 = v452 + OBJC_IVAR____TtC16EventViewService12AppViewModel_descriptionTitle;
    *v457 = LocalizedStringKey.init(stringLiteral:)();
    *(v457 + 8) = v458;
    *(v457 + 16) = v459 & 1;
    *(v457 + 24) = v460;
    ObservationRegistrar.init()();
    *(v452 + 16) = 0;
    v461 = v537;
    *(v452 + 24) = v538;
    *(v452 + 32) = v461;
    sub_100073EA0(v447, v452 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL);
    v462 = (v452 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
    *v462 = v449;
    v462[1] = v451;
    *(v452 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail) = 1;
    *(v452 + OBJC_IVAR____TtC16EventViewService12AppViewModel_analyticsPageNameType) = 13;
    KeyPath = swift_getKeyPath();
    *v441 = v452;
    v615 = 0;
    v614 = 0;
    sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
    State.init(wrappedValue:)();
    v464 = v620;
    *(v441 + 8) = v619;
    *(v441 + 3) = v464;
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    *(v441 + 4) = EnvironmentObject.init()();
    *(v441 + 5) = v465;
    v466 = *(v438 + 28);
    *&v441[v466] = swift_getKeyPath();
    sub_1000024C4(qword_100221928, &unk_1001B65E0);
    swift_storeEnumTagMultiPayload();
    v467 = &v441[*(v438 + 32)];
    *v467 = KeyPath;
    v467[8] = 0;
    v468 = v441;
    v469 = v558;
    sub_10002C260(v468, v558);
    v470 = (*(v439 + 56))(v469, 0, 1, v438);
  }

  v572 = v513;
  __chkstk_darwin(v470);
  v473 = (v513 - ((v472 + 15) & 0xFFFFFFFFFFFFFFF0));
  v540 = v473;
  v474 = v567;
  v475 = (v556[2])(v473, v566);
  v570 = v513;
  *&v619 = v473;
  __chkstk_darwin(v475);
  v477 = v513 - ((v476 + 15) & 0xFFFFFFFFFFFFFFF0);
  v555 = v477;
  v478 = v543;
  v479 = (*(v565 + 16))(v477, v560);
  v556 = v513;
  *(&v619 + 1) = v477;
  __chkstk_darwin(v479);
  v481 = v513 - ((v480 + 15) & 0xFFFFFFFFFFFFFFF0);
  v539 = v481;
  v482 = v564;
  v483 = (*(v563 + 16))(v481, v562, v564);
  v551 = v513;
  v620 = v481;
  __chkstk_darwin(v483);
  v485 = v513 - ((v484 + 15) & 0xFFFFFFFFFFFFFFF0);
  v538 = v485;
  v486 = v571;
  v488 = v568;
  v487 = v569;
  v489 = (v571[2])(v485, v568, v569);
  v548 = v513;
  v621 = v485;
  __chkstk_darwin(v489);
  v491 = v513 - ((v490 + 15) & 0xFFFFFFFFFFFFFFF0);
  v544 = v491;
  sub_1000D87EC(v469, v491);
  v622 = v491;
  v614 = v474;
  v615 = v478;
  v492 = v478;
  v616 = v482;
  v617 = v487;
  v618 = v545;
  v609 = v532;
  v493 = swift_getWitnessTable();
  v494 = sub_10000BFFC(&qword_100226188, &qword_1002260B8, &qword_1001BBA08, &unk_1001BC740);
  v607 = v493;
  v608 = v494;
  v495 = swift_getWitnessTable();
  v496 = sub_10000BFFC(&qword_100226190, &qword_1002260C0, &qword_1001BBA10, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v605 = v495;
  v606 = v496;
  v604 = swift_getWitnessTable();
  v610 = swift_getWitnessTable();
  v602 = v553;
  v603 = v552;
  v497 = swift_getOpaqueTypeConformance2();
  v498 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v600 = v497;
  v601 = v498;
  v499 = swift_getWitnessTable();
  v502 = sub_1000D878C(v499, v500, v501);
  v602 = &type metadata for SetlistLoadingView;
  v603 = v502;
  v503 = swift_getOpaqueTypeConformance2();
  v598 = v499;
  v599 = v503;
  v597 = swift_getWitnessTable();
  v611 = swift_getWitnessTable();
  v504 = swift_getWitnessTable();
  v505 = swift_getWitnessTable();
  v595 = v504;
  v596 = v505;
  v594 = swift_getWitnessTable();
  v612 = swift_getWitnessTable();
  v613 = sub_10008B7C8();
  sub_1000E76FC(&v619, 5uLL, &v614);
  sub_1000050C4(v558, &qword_1002245B8, &unk_1001BBA20);
  v506 = v486[1];
  v571 = v486 + 1;
  v506(v488, v487);
  v507 = *(v563 + 8);
  v507(v562, v482);
  v508 = *(v565 + 8);
  v509 = v492;
  v508(v560, v492);
  v510 = v567;
  v511 = v533;
  v533(v566, v567);
  sub_1000050C4(v544, &qword_1002245B8, &unk_1001BBA20);
  v506(v538, v569);
  v507(v539, v564);
  v508(v555, v509);
  return v511(v540, v510);
}

uint64_t sub_1000D5374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TourPhotosView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v92 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v89 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = v84 - v17;
  v96 = v18;
  v99 = type metadata accessor for _ConditionalContent();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = v84 - v19;
  v90 = a2;
  *&v112 = a2;
  *(&v112 + 1) = a3;
  v93 = a3;
  v94 = a4;
  *&v113 = a4;
  *(&v113 + 1) = a5;
  v20 = a5;
  v21 = type metadata accessor for PromotionalAssetsView(0, &v112);
  sub_1000CD620(v21);
  LOBYTE(a5) = sub_10000F56C();

  if (a5)
  {
    type metadata accessor for TourPhotosViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
    sub_1000CD620(v21);
    v23 = sub_10000E294();
    v88 = v24;

    sub_1000CD620(v21);
    v25 = sub_10000F6F0();

    sub_1000CD620(v21);
    v26 = sub_10000EBA0();
    v28 = v27;

    sub_1000CD620(v21);
    v29 = sub_10000CE08();

    sub_1000CD620(v21);
    sub_10000E380();
    v31 = v30;

    sub_1000CD620(v21);
    v32 = sub_10000FC70();

    v88 = sub_1001572E4(v23, v88, v25, v26, v28, v32 & 1, v29, v31);
    v33 = sub_1000CD67C(v21);
    v35 = v34;
    v37 = v36;
    __chkstk_darwin(v33);
    v38 = v90;
    v39 = v93;
    v84[-4] = v90;
    v84[-3] = v39;
    v40 = v94;
    v84[-2] = v94;
    v84[-1] = v20;
    v84[2] = a1;
    v41 = v40;
    swift_getKeyPath();
    *&v108 = v33;
    *(&v108 + 1) = v35;
    *&v109 = v37;
    *&v112 = v38;
    *(&v112 + 1) = v39;
    *&v113 = v41;
    *(&v113 + 1) = v20;
    type metadata accessor for PromotionalAssetsViewModel(255, &v112);
    v84[1] = type metadata accessor for Binding();
    Binding.subscript.getter();

    v87 = *(&v112 + 1);
    v42 = v112;
    v86 = v113;
    v85 = BYTE8(v113);

    v43 = sub_1000CD67C(v21);
    v45 = v44;
    v47 = v46;
    __chkstk_darwin(v43);
    v84[-4] = v38;
    v84[-3] = v39;
    v84[-2] = v41;
    v84[-1] = v20;
    swift_getKeyPath();
    v103 = v43;
    v104 = v45;
    v105 = v47;
    Binding.subscript.getter();

    v48 = v100;
    v49 = v101;
    v50 = v102;

    v51 = v89;
    sub_1001192AC(v88, v42, v87, v86, v85, v48, v49, v89, v50);
    v52 = v96;
    WitnessTable = swift_getWitnessTable();
    v54 = v91;
    sub_1000EE87C();
    v55 = *(v92 + 8);
    v55(v51, v52);
    v56 = sub_1000EE87C();
    v59 = sub_1000D7F3C(v56, v57, v58);
    v60 = v97;
    sub_10017387C(v51, v52, &type metadata for TourPhotosDefaultView, WitnessTable, v59);
    v55(v51, v52);
    v55(v54, v52);
  }

  else
  {
    sub_1000CD620(v21);
    v61 = sub_10000EBA0();
    v63 = v62;

    sub_1000CD620(v21);
    v64 = sub_10000EDCC();

    sub_1000CD620(v21);
    v65 = sub_10000FC70();

    sub_1000CD620(v21);
    v66 = sub_10000D1E0();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    *&v108 = v61;
    *(&v108 + 1) = v63;
    *&v109 = v64;
    BYTE8(v109) = v65 & 1;
    *&v110 = v66;
    *(&v110 + 1) = v68;
    *&v111 = v70;
    *(&v111 + 1) = v72;
    v73 = v96;
    v74 = swift_getWitnessTable();
    v77 = sub_1000D7F3C(v74, v75, v76);
    v60 = v97;
    sub_100173974(&v108, v73, &type metadata for TourPhotosDefaultView, v74, v77);
    v112 = v108;
    v113 = v109;
    v114 = v110;
    v115 = v111;
    sub_1000D93C4(&v112);
  }

  v78 = swift_getWitnessTable();
  v81 = sub_1000D7F3C(v78, v79, v80);
  v106 = v78;
  v107 = v81;
  v82 = v99;
  swift_getWitnessTable();
  sub_1000EE87C();
  return (*(v98 + 8))(v60, v82);
}

double sub_1000D5BA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v7 = type metadata accessor for PromotionalAssetsView(0, v9);
  sub_1000CD620(v7);
  sub_1000100F0((a1 & 1) == 0);

  return result;
}

void sub_1000D5C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(double))
{
  v8 = *(a1 + 8);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v9 = type metadata accessor for PromotionalAssetsView(0, v10);
  sub_1000CD620(v9);
  a7(v8);
}

double sub_1000D5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v9 = type metadata accessor for PromotionalAssetsView(0, v24);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  v20 = v23;
  *(v19 + 6) = a4;
  *(v19 + 7) = v20;
  (*(v10 + 32))(&v19[v18], v12, v9);
  sub_1001904E0(0, 0, v15, &unk_1001BBB68, v19);

  return result;
}

uint64_t sub_1000D5E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[12] = v10;
  v8[13] = v9;

  return _swift_task_switch(sub_1000D5F30, v10, v9);
}

uint64_t sub_1000D5F30()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView(0, v0 + 16);
  *(v0 + 112) = sub_1000CD620(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D5FE8;

  return sub_10000FD68();
}

uint64_t sub_1000D5FE8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000DA234, v3, v2);
}

uint64_t sub_1000D612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[12] = v9;
  v7[13] = v8;

  return _swift_task_switch(sub_1000D61CC, v9, v8);
}

uint64_t sub_1000D61CC()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView(0, v0 + 16);
  *(v0 + 112) = sub_1000CD620(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D6284;

  return sub_10000FD68();
}

uint64_t sub_1000D6284()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000D63C8, v3, v2);
}

uint64_t sub_1000D63C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D6428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a3;
  v48 = a5;
  v49 = a2;
  v50 = a1;
  v51 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1000D7F3C(WitnessTable, v12, v13);
  v54[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8, &qword_1001BB9F8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0, &qword_1001BBA00);
  v57 = type metadata accessor for ModifiedContent();
  v14 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v14, v15, v16);
  sub_10000460C(&qword_1002260B8, &qword_1001BBA08);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0, &qword_1001BBA10);
  type metadata accessor for ModifiedContent();
  v58 = type metadata accessor for Optional();
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView(255, v17, v18, v19);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8, &qword_1001BBA18);
  type metadata accessor for _ConditionalContent();
  v59 = type metadata accessor for Optional();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v54[0] = AssociatedTypeWitness;
  v54[1] = v20;
  v54[2] = AssociatedConformanceWitness;
  v54[3] = v21;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, v54);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v20, v21, v23);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v60 = type metadata accessor for Optional();
  v61 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v24 = type metadata accessor for ScrollView();
  v25 = swift_getWitnessTable();
  v57 = v24;
  v58 = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for ModifiedContent();
  v57 = v24;
  v58 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v27 = swift_getWitnessTable();
  v57 = v26;
  v58 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = v26;
  v58 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v32 = sub_10001877C(v29, v30, v31);
  v57 = OpaqueTypeMetadata2;
  v58 = &type metadata for String;
  v59 = v29;
  v60 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v57 = OpaqueTypeMetadata2;
  v58 = &type metadata for String;
  v59 = v29;
  v60 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v57 = v33;
  v58 = v34;
  v46[1] = &opaque type descriptor for <<opaque return type of View.toolbarBackgroundVisibility(_:for:)>>;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = v46 - v40;
  v57 = v47;
  v58 = a4;
  v59 = v48;
  v60 = a6;
  v42 = type metadata accessor for PromotionalAssetsView(0, &v57);
  sub_1000CD620(v42);
  sub_10000CC20();

  sub_1000024C4(&qword_1002245D8, &unk_1001B90A0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001B49B0;
  static ToolbarPlacement.navigationBar.getter();
  v43 = swift_checkMetadataState();
  View.toolbarBackgroundVisibility(_:for:)();

  v57 = v43;
  v58 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v44 = *(v36 + 8);
  v44(v39, v35);
  sub_1000EE87C();
  return (v44)(v41, v35);
}

double sub_1000D6CC0@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  result = v3 + v4;
  *a1 = v3 + v4;
  return result;
}

void sub_1000D6D00(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v8 = type metadata accessor for PromotionalAssetsView(0, v15);
  v9 = sub_1000CD620(v8);
  sub_10000C794(v7, v9, v10, v11);

  sub_1000CD620(v8);
  if (v7 > 0.0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  sub_10000CCA8(v14, v12, v13);
}

uint64_t sub_1000D6D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v63 = a1;
  v67 = a6;
  v71 = sub_1000024C4(&qword_100226148, &qword_1001BBA68);
  __chkstk_darwin(v71);
  v70 = &v56 - v9;
  v10 = sub_1000024C4(&qword_1002245F0, &qword_1001BBA70);
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v66 = &v56 - v11;
  v64 = sub_1000024C4(&qword_100226150, &qword_1001BBA78);
  v12 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v56 - v13;
  v14 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v14 - 8);
  v72 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_100226158, &unk_1001BBA80);
  v61 = *(v16 - 8);
  __chkstk_darwin(v16);
  v60 = &v56 - v17;
  v18 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v18 - 8);
  v20 = &v56 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000024C4(&qword_100226160, &unk_1001BBA90);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v65 = &v56 - v29;
  v73 = a2;
  v74 = a3;
  v77 = a2;
  v78 = a3;
  v75 = a4;
  v79 = a4;
  v30 = v63;
  v80 = v76;
  v31 = type metadata accessor for PromotionalAssetsView(0, &v77);
  sub_1000CD620(v31);
  sub_10000E30C();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000050C4(v20, &qword_1002214F8, &qword_1001B3D20);
    (*(v12 + 56))(v28, 1, 1, v64);
    v32 = sub_10000BFFC(&qword_100226168, &qword_100226158, &unk_1001BBA80, &protocol conformance descriptor for ToolbarItem<A, B>);
    v77 = v16;
    v78 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v65;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D830C(v28);
  }

  else
  {
    v34 = *(v22 + 32);
    v58 = v24;
    v59 = v21;
    v34(v24, v20, v21);
    v57 = v16;
    v35 = v64;
    v36 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v36);
    v37 = v74;
    *(&v56 - 6) = v73;
    *(&v56 - 5) = v37;
    v38 = v76;
    *(&v56 - 4) = v75;
    *(&v56 - 3) = v38;
    *(&v56 - 2) = v24;
    *(&v56 - 1) = v30;
    type metadata accessor for ShareButton(0);
    sub_1000D885C(&qword_100224640, type metadata accessor for ShareButton, &unk_1001B5530);
    v39 = v60;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000BFFC(&qword_100226168, &qword_100226158, &unk_1001BBA80, &protocol conformance descriptor for ToolbarItem<A, B>);
    v41 = v62;
    v42 = v57;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v12 + 16))(v28, v41, v35);
    (*(v12 + 56))(v28, 0, 1, v35);
    v77 = v42;
    v78 = v40;
    swift_getOpaqueTypeConformance2();
    v33 = v65;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D830C(v28);
    (*(v12 + 8))(v41, v35);
    (*(v61 + 8))(v39, v42);
    (*(v22 + 8))(v58, v59);
  }

  v43 = static ToolbarItemPlacement.topBarTrailing.getter();
  v44 = __chkstk_darwin(v43);
  v45 = v74;
  *(&v56 - 6) = v73;
  *(&v56 - 5) = v45;
  v46 = v76;
  *(&v56 - 4) = v75;
  *(&v56 - 3) = v46;
  *(&v56 - 2) = v30;
  sub_10008B1A4(v44, v47, v48);
  v49 = v66;
  ToolbarItem<>.init(placement:content:)();
  v50 = v70;
  v51 = *(v71 + 48);
  sub_1000D8384(v33, v70);
  v52 = v68;
  v53 = v50 + v51;
  v54 = v69;
  (*(v68 + 16))(v53, v49, v69);
  TupleToolbarContent.init(_:)();
  (*(v52 + 8))(v49, v54);
  return sub_1000D830C(v33);
}

uint64_t sub_1000D7598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a6;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v12 = type metadata accessor for PromotionalAssetsView(0, v24);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(a7, a1, v16);
  (*(v13 + 16))(v15, v22, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v23;
  *(v18 + 4) = a5;
  *(v18 + 5) = v19;
  (*(v13 + 32))(&v18[v17], v15, v12);
  result = type metadata accessor for ShareButton(0);
  v21 = (a7 + *(result + 20));
  *v21 = sub_1000D8404;
  v21[1] = v18;
  return result;
}

uint64_t sub_1000D7744@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a4;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = v22;
  v16 = type metadata accessor for PromotionalAssetsView(0, v23);
  LOBYTE(a1) = sub_1000CD6DC(v16);
  sub_100039CB8(v15);
  v17 = *(v10 + 32);
  v17(v13, v15, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  result = v17(v19 + v18, v13, v9);
  *a5 = 0;
  *(a5 + 1) = a1 & 1;
  *(a5 + 8) = sub_1000172FC;
  *(a5 + 16) = v19;
  return result;
}

void sub_1000D78E8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  __chkstk_darwin(v11 - 8);
  v13 = (v23 - v12);
  v14 = *a1;
  v15 = a1[1];
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v16 = type metadata accessor for PromotionalAssetsView(0, v23);
  v17 = sub_1000CD620(v16);
  sub_10000CE90(v14, v17, v18, v19);

  v20 = sub_1000CD620(v16);
  sub_10000D07C(v15, v20, v21, v22);

  sub_1000CD620(v16);
  sub_100039F08(v13);
  sub_10000D540(v13);
}

void sub_1000D7A1C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v10 = type metadata accessor for PromotionalAssetsView(0, v14);
  v11 = sub_1000CD620(v10);
  sub_10000D270(v6, v7, v8, v9, v11, v12, v13);
}

void sub_1000D7A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v6 = type metadata accessor for PromotionalAssetsView(0, v11);
  sub_1000CD620(v6);
  v7 = sub_10000E294();
  v9 = v8;

  v10 = *(a1 + 16);
  if (v10)
  {

    sub_10015B530(v7, v9, 13, v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1000D7B8C(uint64_t a1, void **a2, uint64_t a3, Class (*a4)(uint64_t a1), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  aBlock = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v12 = type metadata accessor for PromotionalAssetsView(0, &aBlock);
  sub_1000CD620(v12);
  v13 = sub_10000E294();
  v15 = v14;

  v16 = *(a1 + 16);
  if (v16)
  {
    sub_1000024C4(&qword_100221508, &qword_1001B5C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v13;
    *(inited + 48) = v15;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 0;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
    *(inited + 152) = a9;
    *(inited + 168) = 3;
    if (*(v16 + 72))
    {
      v18 = *(v16 + 64);
      v19 = *(v16 + 72);
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    v28 = v18;
    v29 = v19;

    v20 = sub_1001894F4(1, 5, 1, inited);
    v25 = v20;
    sub_100006C98(&aBlock, v26);
    sub_100118768(4, v26, &v25, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    v22[2] = 0xD00000000000001ELL;
    v22[3] = 0x80000001001C4640;
    v22[4] = v20;
    v31 = a7;
    v32 = v22;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10015B4A4;
    v30 = a8;
    v23 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_1000D7EB4(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

unint64_t sub_1000D7F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002260A0;
  if (!qword_1002260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002260A0);
  }

  return result;
}

unint64_t sub_1000D7FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226130;
  if (!qword_100226130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226130);
  }

  return result;
}

void sub_1000D8000(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for PromotionalAssetsView(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_1000D78E8(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1000D80AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226140;
  if (!qword_100226140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226140);
  }

  return result;
}

void sub_1000D8100(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for PromotionalAssetsView(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_1000D7A1C(a1, v8, v3, v4, v5, v6);
}

double sub_1000D81F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000D8238(uint64_t a1, double *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for PromotionalAssetsView(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1000D6D00(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1000D830C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100226160, &unk_1001BBA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D8384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100226160, &unk_1001BBA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D8434(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v14[0] = v4[2];
  v8 = v14[0];
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v12 = *(type metadata accessor for PromotionalAssetsView(0, v14) - 8);
  sub_1000D7B8C(v4 + ((*(v12 + 80) + 48) & ~*(v12 + 80)), v8, v9, v10, v11, a1, a2, a3, a4);
}

uint64_t sub_1000D84F4()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_1000D85C4(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for PromotionalAssetsView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1000D5BA4(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1000D8670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226170;
  if (!qword_100226170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226170);
  }

  return result;
}

void sub_1000D86DC(uint64_t a1, void (*a2)(double))
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v9 = *(type metadata accessor for PromotionalAssetsView(0, v10) - 8);
  sub_1000D5C08(a1, v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)), v5, v6, v7, v8, a2);
}

unint64_t sub_1000D878C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226198;
  if (!qword_100226198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226198);
  }

  return result;
}

uint64_t sub_1000D87EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002245B8, &unk_1001BBA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D885C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D88BC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for PromotionalAssetsView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1000D8970()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for PromotionalAssetsView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000D8A84;

  return sub_1000D612C(v8, v9, v0 + v7, v3, v2, v4, v5);
}

uint64_t sub_1000D8A84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 sub_1000D8BCC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000D8BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002261A0[0];
  if (!qword_1002261A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002261A0);
  }

  return result;
}

uint64_t sub_1000D8C2C()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for PromotionalAssetsView(0, v15);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  v4 = v2[14];
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v2[15];
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v2[16];
  sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v2[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D8F6C()
{
  v1 = *(v0 + 48);
  v16[0] = *(v0 + 32);
  v16[1] = v1;
  v2 = type metadata accessor for PromotionalAssetsView(0, v16);
  v3 = (*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v2[14];
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v2[15];
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v2[16];
  sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v4 + v9, 1, v10))
    {
      (*(v11 + 8))(v4 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v2[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v4 + v12, 1, v13))
    {
      (*(v14 + 8))(v4 + v12, v13);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D929C(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for PromotionalAssetsView(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_1000DA220;

  return sub_1000D5E90(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_1000D9418@<X0>(uint64_t a1@<X8>)
{
  result = sub_10000DB90();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000D952C(uint64_t *a1)
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1000D7F3C(WitnessTable, v4, v5);
  v23[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8, &qword_1001BB9F8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0, &qword_1001BBA00);
  type metadata accessor for ModifiedContent();
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v6, v7, v8);
  sub_10000460C(&qword_1002260B8, &qword_1001BBA08);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0, &qword_1001BBA10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView(255, v9, v10, v11);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8, &qword_1001BBA18);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v23[0] = AssociatedTypeWitness;
  v23[1] = v12;
  v23[2] = AssociatedConformanceWitness;
  v23[3] = v13;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, v23);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v12, v13, v15);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001877C(OpaqueTypeConformance2, v17, v18);
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002257B8, &qword_1001BAE98);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v19 = swift_getOpaqueTypeConformance2();
  sub_100010E88(v19, v20, v21);
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260D0, &qword_1001BBA30);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002260D8, &qword_1002260D0, &qword_1001BBA30, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260E0, &qword_1001BBA38);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002260E8, &qword_1002260E0, &qword_1001BBA38, &protocol conformance descriptor for _AnimationModifier<A>);
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  sub_10000460C(&qword_1002260F0, &qword_1001BBA40);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260F8, &qword_1001BBA48);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100226100, &qword_1001BBA50);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100226108, &unk_1001BBA58);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221730, qword_1001B6530);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226110, &qword_1002260F0, &qword_1001BBA40, &unk_1001BC740);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226118, &qword_1002260F8, &qword_1001BBA48, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226120, &qword_100226100, &qword_1001BBA50, &unk_1001C19E0);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226128, &qword_100226108, &unk_1001BBA58, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100010CEC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

unint64_t sub_1000DA14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D8670(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D8BD8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D7FA8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D80AC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v8 = type metadata accessor for VenueEventListHeader(0, a2, a4, v7);
  v9 = (a3 + v8[9]);
  *v9 = sub_1000DA330(0);
  v9[1] = v10;
  v11 = v8[10];
  *(a3 + v11) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v8[11];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_1000DA330(uint64_t a1)
{
  sub_1000024C4(&qword_1002248C0, &qword_1001B9A38);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t sub_1000DA378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v12 = sub_1000024C4(&qword_100226238, &qword_1001BBF18);
  sub_1000DA510(v3, v10, v11, a2 + *(v12 + 44));
  (*(v6 + 16))(v9, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  (*(v6 + 32))(v14 + v13, v9, a1);
  v15 = (a2 + *(sub_1000024C4(&qword_100226240, &qword_1001BBF30) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v15 = &unk_1001BBF28;
  v15[1] = v14;
  return result;
}

uint64_t sub_1000DA510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v5 = a2;
  v91 = a2;
  v90 = a1;
  v107 = a4;
  v7 = type metadata accessor for AccessibilityTraits();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for AccessibilityChildBehavior();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1000024C4(&qword_100222158, &unk_1001B57E0);
  __chkstk_darwin(v98);
  v11 = &v82 - v10;
  v100 = sub_1000024C4(&qword_100222160, &unk_1001BBF50);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v82 - v12;
  v13 = sub_1000024C4(&qword_100222168, &unk_1001B57F0);
  v14 = __chkstk_darwin(v13 - 8);
  v99 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v96 = &v82 - v16;
  v17 = type metadata accessor for RoundedRectangle();
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000024C4(&qword_100226250, &qword_1001BBF60);
  __chkstk_darwin(v89);
  v22 = &v82 - v21;
  v93 = sub_1000024C4(&qword_100226258, &qword_1001BBF68);
  __chkstk_darwin(v93);
  v24 = &v82 - v23;
  v25 = sub_1000024C4(&qword_100226260, &qword_1001BBF70);
  v26 = __chkstk_darwin(v25 - 8);
  v94 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v82 - v28;
  sub_1000DAF98(a1, v5, a3, &v113);
  v29 = v115;
  v30 = type metadata accessor for RoundedCornerStyle();
  v83 = v113;
  v82 = v114;
  v31 = *(v18 + 28);
  v86 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = *(v30 - 8);
  v85 = *(v32 + 104);
  v87 = v32 + 104;
  v85(&v20[v31]);
  __asm { FMOV            V0.2D, #10.0 }

  v84 = _Q0;
  *v20 = _Q0;
  LODWORD(v5) = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v38 = &v22[*(sub_1000024C4(&qword_100226268, &unk_1001BBF78) + 36)];
  sub_100039704(v20, v38);
  v39 = v38 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
  v40 = v111;
  *v39 = v110;
  *(v39 + 16) = v40;
  *(v39 + 32) = v112;
  v41 = sub_1000024C4(&qword_100226270, &qword_1001BBF88);
  v42 = (v38 + *(v41 + 52));
  *v42 = v5;
  v42[1] = 1036831949;
  *(v38 + *(v41 + 56)) = 256;
  v43 = static Alignment.center.getter();
  v45 = v44;
  sub_100039768(v20);
  v46 = (v38 + *(sub_1000024C4(&qword_100226278, &qword_1001BBF90) + 36));
  *v46 = v43;
  v46[1] = v45;
  v47 = static Alignment.center.getter();
  v49 = v48;
  v50 = (v38 + *(sub_1000024C4(&qword_100226280, &qword_1001BBF98) + 36));
  *v50 = v47;
  v50[1] = v49;
  v51 = v82;
  *v22 = v83;
  *(v22 + 1) = v51;
  v22[32] = v29;
  KeyPath = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = 1;
  v54 = &v22[*(sub_1000024C4(&qword_100226288, &qword_1001BBFD0) + 36)];
  *v54 = KeyPath;
  v54[1] = sub_1000DD234;
  v54[2] = v53;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = &v22[*(sub_1000024C4(&qword_100226290, &qword_1001BBFD8) + 36)];
  *v63 = KeyPath;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v64 = &v22[*(sub_1000024C4(&qword_100226298, &qword_1001BBFE0) + 36)];
  v65 = v114;
  *v64 = v113;
  *(v64 + 1) = v65;
  *(v64 + 2) = v115;
  *&v22[*(sub_1000024C4(&qword_1002262A0, &unk_1001BBFE8) + 36)] = 0;
  v66 = &v22[*(v89 + 36)];
  (v85)(&v66[*(v18 + 28)], v86, v30);
  *v66 = v84;
  *&v66[*(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)] = 256;
  sub_1000DD24C();
  View.accessibility(hidden:)();
  sub_1000050C4(v22, &qword_100226250, &qword_1001BBF60);
  v24[*(v93 + 36)] = 1;
  sub_1000DD80C();
  v67 = v88;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v24, &qword_100226258, &qword_1001BBF68);
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v68 = sub_1000024C4(&qword_100222200, &qword_1001B5858);
  sub_1000DB348(v90, v91, v92, &v11[*(v68 + 44)]);
  v69 = v97;
  static AccessibilityChildBehavior.combine.getter();
  v70 = sub_10000BFFC(&qword_100222208, &qword_100222158, &unk_1001B57E0, &protocol conformance descriptor for VStack<A>);
  v71 = v95;
  v72 = v98;
  View.accessibilityElement(children:)();
  (*(v102 + 8))(v69, v103);
  sub_1000050C4(v11, &qword_100222158, &unk_1001B57E0);
  v73 = v104;
  static AccessibilityTraits.isHeader.getter();
  v108 = v72;
  v109 = v70;
  swift_getOpaqueTypeConformance2();
  v74 = v96;
  v75 = v100;
  View.accessibility(addTraits:)();
  (*(v105 + 8))(v73, v106);
  (*(v101 + 8))(v71, v75);
  v76 = v94;
  sub_10000BEB8(v67, v94, &qword_100226260, &qword_1001BBF70);
  v77 = v99;
  sub_1000292C0(v74, v99);
  v78 = v107;
  sub_10000BEB8(v76, v107, &qword_100226260, &qword_1001BBF70);
  v79 = sub_1000024C4(&qword_100226348, &unk_1001BC040);
  sub_1000292C0(v77, v78 + *(v79 + 48));
  v80 = v78 + *(v79 + 64);
  *v80 = 0;
  *(v80 + 8) = 1;
  sub_100029330(v74);
  sub_1000050C4(v67, &qword_100226260, &qword_1001BBF70);
  sub_100029330(v77);
  return sub_1000050C4(v76, &qword_100226260, &qword_1001BBF70);
}

double sub_1000DAF98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for OpacityTransition();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Image.ResizingMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + *(type metadata accessor for VenueEventListHeader(0, a2, a3, v18) + 36));
  sub_1000024C4(&qword_100226248, &unk_1001BBF40);
  State.wrappedValue.getter();
  if (v28)
  {
    v19 = v28;
    Image.init(uiImage:)();
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v15 + 8))(v17, v14);
    OpacityTransition.init()();
    (*(v8 + 16))(v11, v13, v7);
    sub_1000DDA58(&qword_100226350, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v21 = AnyTransition.init<A>(_:)();
    (*(v8 + 8))(v13, v7);
    v28 = v20;
    v29 = xmmword_1001BBE20;
    v30 = v21;
    v31 = 0;

    sub_1000024C4(&qword_100226300, &unk_1001BC008);
    sub_1000DD754();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v22 = [objc_opt_self() systemGray5Color];
    v28 = Color.init(uiColor:)();
    v29 = 0uLL;
    v30 = 0;
    v31 = 1;
    sub_1000024C4(&qword_100226300, &unk_1001BC008);
    sub_1000DD754();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v32;
  v24 = v33;
  v25 = v34;
  v26 = v27;
  *v27 = v32;
  v26[1] = v24;
  *(v26 + 32) = v25;
  return result;
}

uint64_t sub_1000DB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v78 = a3;
  v81 = a2;
  v77 = a1;
  v91 = a4;
  v6 = sub_1000024C4(&qword_100222218, &qword_1001B5868);
  v7 = __chkstk_darwin(v6 - 8);
  v90 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v89 = &v68[-v9];
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v68[-v15];
  v17 = sub_1000024C4(&qword_100222230, &unk_1001B58B0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v68[-v19];
  v85 = sub_1000024C4(&qword_100222238, &unk_1001B5920) - 8;
  __chkstk_darwin(v85);
  v83 = &v68[-v21];
  v87 = sub_1000024C4(&qword_100222220, &qword_1001B5870);
  __chkstk_darwin(v87);
  v86 = &v68[-v22];
  v23 = sub_1000024C4(&qword_100222228, &qword_1001B5878);
  v24 = __chkstk_darwin(v23 - 8);
  v88 = &v68[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v84 = &v68[-v26];
  LocalizedStringKey.init(stringLiteral:)();
  v71 = Text.init(_:tableName:bundle:comment:)();
  v70 = v27;
  v69 = v28;
  v72 = v29;
  v82 = *(type metadata accessor for VenueEventListHeader(0, a2, v4, v29) + 40);
  sub_10003A100(v16);
  v80 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v79 = *(v11 + 104);
  v30 = v14;
  v74 = v10;
  v79(v14);
  v73 = v16;
  v75 = v14;
  LOBYTE(v4) = sub_100172140(v16, v14);
  v31 = *(v11 + 8);
  v76 = v11 + 8;
  v31(v30, v10);
  v31(v16, v10);
  if (v4)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  KeyPath = swift_getKeyPath();
  v34 = &v20[*(v18 + 44)];
  v35 = *(sub_1000024C4(&qword_100221B70, &qword_1001B7140) + 28);
  v36 = enum case for Text.Case.uppercase(_:);
  v37 = type metadata accessor for Text.Case();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  v39 = v70;
  *v20 = v71;
  *(v20 + 1) = v39;
  v20[16] = v69 & 1;
  *(v20 + 3) = v72;
  *(v20 + 4) = KeyPath;
  *(v20 + 5) = v32;
  v20[48] = 0;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v40 = Font.weight(_:)();

  v41 = swift_getKeyPath();
  v42 = v83;
  sub_10001AE00(v20, v83, &qword_100222230, &unk_1001B58B0);
  v43 = &v42[*(v85 + 44)];
  *v43 = v41;
  v43[1] = v40;
  v44 = [objc_opt_self() secondaryLabelColor];
  v45 = Color.init(uiColor:)();
  v46 = v42;
  v47 = v86;
  sub_10001AE00(v46, v86, &qword_100222238, &unk_1001B5920);
  *&v47[*(v87 + 36)] = v45;
  sub_1000293B0();
  v48 = v84;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v47, &qword_100222220, &qword_1001B5870);
  v49 = (*(v78 + 48))(v81);
  v51 = v50;
  v52 = v73;
  sub_10003A100(v73);
  v53 = v75;
  v54 = v74;
  (v79)(v75, v80, v74);
  v55 = v53;
  LOBYTE(v53) = sub_100172140(v52, v53);
  v31(v55, v54);
  v31(v52, v54);
  if (v53)
  {
    v56 = 3;
  }

  else
  {
    v56 = 2;
  }

  v57 = swift_getKeyPath();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v58 = Font.weight(_:)();

  v59 = swift_getKeyPath();
  v100 = 0;
  v99 = 0;
  *&v92 = v49;
  *(&v92 + 1) = v51;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = _swiftEmptyArrayStorage;
  *&v94 = v57;
  *(&v94 + 1) = v56;
  LOBYTE(v95) = 0;
  *(&v95 + 1) = v59;
  v96 = v58;
  sub_1000024C4(&qword_100222270, &unk_1001B5940);
  sub_1000295D8();
  v60 = v89;
  View.accessibilityIdentifier(_:)();
  v97[2] = v94;
  v97[3] = v95;
  v98 = v96;
  v97[0] = v92;
  v97[1] = v93;
  sub_1000050C4(v97, &qword_100222270, &unk_1001B5940);
  v61 = v48;
  v62 = v48;
  v63 = v88;
  sub_10000BEB8(v62, v88, &qword_100222228, &qword_1001B5878);
  v64 = v90;
  sub_10000BEB8(v60, v90, &qword_100222218, &qword_1001B5868);
  v65 = v91;
  sub_10000BEB8(v63, v91, &qword_100222228, &qword_1001B5878);
  v66 = sub_1000024C4(&qword_100222280, &qword_1001BC0F0);
  sub_10000BEB8(v64, v65 + *(v66 + 48), &qword_100222218, &qword_1001B5868);
  sub_1000050C4(v60, &qword_100222218, &qword_1001B5868);
  sub_1000050C4(v61, &qword_100222228, &qword_1001B5878);
  sub_1000050C4(v64, &qword_100222218, &qword_1001B5868);
  return sub_1000050C4(v63, &qword_100222228, &qword_1001B5878);
}

uint64_t sub_1000DBC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v3[4] = v6;
  v8 = type metadata accessor for VenueEventListHeader(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_1000DBD14;

  return sub_1000DBE98(v8);
}

uint64_t sub_1000DBD14()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_10000C1D8;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_100009824;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1000DBE98(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[11] = v5;
  v6 = *(a1 + 16);
  v2[12] = v6;
  v7 = *(a1 + 24);
  v2[13] = v7;
  *v5 = v2;
  v5[1] = sub_1000DBFC0;

  return sub_1000C5148(v1, v6, v7);
}

uint64_t sub_1000DBFC0(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_1000DC6BC;
  }

  else
  {
    v3[16] = v4;
    v3[17] = v5;
    v6 = sub_1000DC12C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000DC12C()
{
  v1 = *(v0 + 40) + *(*(v0 + 32) + 44);
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = *v1;
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(*&v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = *(v0 + 16);

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(*&v2, 0);
    v9(v5, v7);
    v3 = *(v0 + 24);
  }

  v11 = v3 * 60.0;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1000DC350;
  v13 = *(v0 + 112);

  return sub_1000C6958(v13, v4 * 60.0, v11);
}

uint64_t sub_1000DC350(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[16];
    v5 = v3[17];
    v6 = sub_1000DC5BC;
  }

  else
  {
    v6 = sub_1000DC46C;
    v4 = 0;
    v5 = 0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000DC46C()
{
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DC4F8, v2, v1);
}

uint64_t sub_1000DC4F8()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[5];

  sub_1000DC728(v5, v2, v4, v3);
  if (v1)
  {
  }

  else
  {
    v7 = v0[16];
    v8 = v0[17];

    return _swift_task_switch(sub_1000DC630, v7, v8);
  }
}

uint64_t sub_1000DC5BC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DC630()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DC6BC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1000DC728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_1000DC7AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VenueEventListHeader(0, a3, a4, a4);
  v5 = a2;
  sub_1000024C4(&qword_100226248, &unk_1001BBF40);
  return State.wrappedValue.setter();
}

void sub_1000DC840(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000DCDD0(319);
    if (v2 <= 0x3F)
    {
      sub_1000DCE34(319);
      if (v3 <= 0x3F)
      {
        sub_10001B850();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000DC8F8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ContentSizeCategory() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *&a1[v13];
        if (!*&a1[v13])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (!v17)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_33;
      }

      v17 = a1[v13];
      if (!a1[v13])
      {
        goto LABEL_33;
      }
    }

    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }

    v23 = v8 + (v24 | v20);
    return (v23 + 1);
  }

LABEL_33:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 - 1;
    if (v23 < 0)
    {
      v23 = -1;
    }

    return (v23 + 1);
  }

  v21 = *(v6 + 48);

  return v21(a1, v7, v5);
}

void sub_1000DCB40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFE)
      {
        v22 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v22 = (a2 - 0x7FFFFFFF);
          v22[1] = 0;
        }

        else
        {
          *v22 = a2;
        }
      }

      else
      {
        v21 = *(v23 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_1000DCDD0(uint64_t a1)
{
  if (!qword_100226228)
  {
    sub_10000460C(&qword_1002248C0, &qword_1001B9A38);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100226228);
    }
  }
}

void sub_1000DCE34(uint64_t a1)
{
  if (!qword_100226230)
  {
    type metadata accessor for ContentSizeCategory();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100226230);
    }
  }
}

uint64_t sub_1000DCED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for VenueEventListHeader(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  v8 = v6[10];
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + v6[11]), *(v7 + v6[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_1000DD058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for VenueEventListHeader(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000BD00;

  return sub_1000DBC44(v4 + v9, v6, v7);
}

uint64_t sub_1000DD140@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000DD1CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000DD24C()
{
  result = qword_1002262A8;
  if (!qword_1002262A8)
  {
    sub_10000460C(&qword_100226250, &qword_1001BBF60);
    sub_1000DD304();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262A8);
  }

  return result;
}

unint64_t sub_1000DD304()
{
  result = qword_1002262B0;
  if (!qword_1002262B0)
  {
    sub_10000460C(&qword_1002262A0, &unk_1001BBFE8);
    sub_1000DD3BC();
    sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262B0);
  }

  return result;
}

unint64_t sub_1000DD3BC()
{
  result = qword_1002262B8;
  if (!qword_1002262B8)
  {
    sub_10000460C(&qword_100226298, &qword_1001BBFE0);
    sub_1000DD448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262B8);
  }

  return result;
}

unint64_t sub_1000DD448()
{
  result = qword_1002262C0;
  if (!qword_1002262C0)
  {
    sub_10000460C(&qword_100226290, &qword_1001BBFD8);
    sub_1000DD4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262C0);
  }

  return result;
}

unint64_t sub_1000DD4D4()
{
  result = qword_1002262C8;
  if (!qword_1002262C8)
  {
    sub_10000460C(&qword_100226288, &qword_1001BBFD0);
    sub_1000DD58C();
    sub_10000BFFC(&qword_1002258D8, &qword_1002258E0, &qword_1001BAF40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262C8);
  }

  return result;
}

unint64_t sub_1000DD58C()
{
  result = qword_1002262D0;
  if (!qword_1002262D0)
  {
    sub_10000460C(&qword_100226268, &unk_1001BBF78);
    sub_1000DD644();
    sub_10000BFFC(&qword_100226318, &qword_100226280, &qword_1001BBF98, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262D0);
  }

  return result;
}

unint64_t sub_1000DD644()
{
  result = qword_1002262D8;
  if (!qword_1002262D8)
  {
    sub_10000460C(&qword_1002262E0, &qword_1001BBFF8);
    sub_1000DD6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262D8);
  }

  return result;
}

unint64_t sub_1000DD6C8()
{
  result = qword_1002262E8;
  if (!qword_1002262E8)
  {
    sub_10000460C(&qword_1002262F0, &qword_1001BC000);
    sub_1000DD754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262E8);
  }

  return result;
}

unint64_t sub_1000DD754()
{
  result = qword_1002262F8;
  if (!qword_1002262F8)
  {
    sub_10000460C(&qword_100226300, &unk_1001BC008);
    sub_100069870();
    sub_10000BFFC(&qword_100226308, &qword_100226310, &unk_1001BC018, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262F8);
  }

  return result;
}

unint64_t sub_1000DD80C()
{
  result = qword_100226330;
  if (!qword_100226330)
  {
    sub_10000460C(&qword_100226258, &qword_1001BBF68);
    v3 = sub_1000DD898();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226330);
  }

  return result;
}

unint64_t sub_1000DD898()
{
  result = qword_100226338;
  if (!qword_100226338)
  {
    sub_10000460C(&qword_100226340, &unk_1001BC030);
    sub_1000DD24C();
    sub_1000DDA58(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226338);
  }

  return result;
}

unint64_t sub_1000DD970()
{
  result = qword_100226358;
  if (!qword_100226358)
  {
    sub_10000460C(&qword_100226240, &qword_1001BBF30);
    sub_10000BFFC(&qword_100226360, &qword_100226368, &qword_1001BC0F8, &protocol conformance descriptor for HStack<A>);
    sub_1000DDA58(&qword_100220CB0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226358);
  }

  return result;
}

uint64_t sub_1000DDA58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DDAA0(uint64_t a1)
{
  result = sub_1000DE618(&qword_100226370, &type metadata accessor for Art, &unk_1001BC130);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DDAFC()
{
  result = qword_100226378;
  if (!qword_100226378)
  {
    sub_10000460C(&qword_100226380, &qword_1001BC120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226378);
  }

  return result;
}

uint64_t sub_1000DDCC8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_1002253A0, &qword_1001BC170);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100226480, &qword_1001BC178);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDEB4, 0, 0);
}

uint64_t sub_1000DDEB4()
{
  if (qword_100220BF8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10000BE10(v4, qword_100239108);
  Art.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Art();
  sub_1000DE618(&qword_1002253A8, &type metadata accessor for Art, &protocol conformance descriptor for Art);
  static EventService.RequestType.art.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000DE06C;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000DE06C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_1000DE330;
  }

  else
  {
    v3 = sub_1000DE1F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DE1F0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_100188234(sub_1000DE660, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000DE330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DE3C4@<X0>(uint64_t *a1@<X8>)
{
  result = Art.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000DE408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000DDCC8();
}

uint64_t sub_1000DE494(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000DE594(uint64_t a1)
{
  *(a1 + 8) = sub_1000DE618(&qword_100226470, &type metadata accessor for Art, &protocol conformance descriptor for Art);
  result = sub_1000DE618(&qword_100226478, &type metadata accessor for Art, &protocol conformance descriptor for Art);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000DE618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DE680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000DE6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DE740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E0BF8(&qword_1002211C8, type metadata accessor for VenueController, &unk_1001B3860);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService15VenueController__result;
  swift_beginAccess();
  return sub_1000047E4(v3 + v4, a2);
}

uint64_t sub_1000DE808(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000047E4(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000E0BF8(&qword_1002211C8, type metadata accessor for VenueController, &unk_1001B3860);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000046B8(v6);
}

_BYTE *sub_1000DE930(uint64_t a1, uint64_t a2)
{
  v168 = a1;
  v140 = *v2;
  v4 = v140;
  v155 = sub_1000024C4(&qword_1002264D0, &unk_1001BC308);
  __chkstk_darwin(v155);
  v154 = &v128 - v5;
  v6 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  __chkstk_darwin(v6 - 8);
  v166 = &v128 - v7;
  v162 = type metadata accessor for DateInterval();
  v165 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Time();
  v164 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Music();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v174 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v128 - v15;
  __chkstk_darwin(v14);
  v171 = &v128 - v17;
  v18 = sub_1000024C4(&qword_100225640, &unk_1001BACC8);
  v19 = __chkstk_darwin(v18 - 8);
  v157 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v172 = &v128 - v21;
  v22 = type metadata accessor for Date();
  v167 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v152 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v151 = &v128 - v26;
  v27 = __chkstk_darwin(v25);
  v169 = &v128 - v28;
  __chkstk_darwin(v27);
  v170 = &v128 - v29;
  v30 = type metadata accessor for Locale();
  __chkstk_darwin(v30 - 8);
  v31 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v31 - 8);
  v2[16] = 0;
  v32 = *(v4 + 120);
  v173 = v11;
  v33 = *(v11 + 56);
  v138 = v32;
  v159 = v10;
  v33(&v2[v32], 1, 1, v10);
  v34 = &v2[*(*v2 + 128)];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v137 = v34;
  v2[*(*v2 + 136)] = 0;
  v35 = &v2[*(*v2 + 152)];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v135 = v35;
  v36 = &v2[*(*v2 + 184)];
  *v36 = LocalizedStringKey.init(stringLiteral:)();
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v139 = v36;
  *(v36 + 3) = v39;
  v40 = &v2[*(*v2 + 192)];
  *v40 = LocalizedStringKey.init(stringLiteral:)();
  *(v40 + 1) = v41;
  v40[16] = v42 & 1;
  v136 = v40;
  *(v40 + 3) = v43;
  v44 = &v2[*(*v2 + 200)];
  *v44 = LocalizedStringKey.init(stringLiteral:)();
  *(v44 + 1) = v45;
  v44[16] = v46 & 1;
  v134 = v44;
  *(v44 + 3) = v47;
  v48 = &v2[*(*v2 + 208)];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v48 = String.init(localized:table:bundle:locale:comment:)();
  v48[1] = v49;
  v133 = v48;
  v131 = *(*v2 + 216);
  LocalizedStringResource.init(stringLiteral:)();
  v132 = *(*v2 + 224);
  ObservationRegistrar.init()();
  v50 = *(*v2 + 168);
  v51 = type metadata accessor for Venue();
  v52 = *(v51 - 8);
  v53 = *(v52 + 16);
  v130 = v50;
  v53(&v2[v50], v168, v51);
  v129 = *(*v2 + 176);
  *&v2[v129] = a2;
  v54 = *(*v2 + 160);
  v156 = v2;
  v128 = v54;
  *&v2[v54] = a2;
  v55 = *(a2 + 16);
  v163 = a2;
  v153 = v22;
  v150 = v51;
  v149 = v52;
  if (v55)
  {
    v147 = v16;
    v56 = v173;
    v57 = a2 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = *(v173 + 16);
    v59 = v171;
    v60 = v159;
    v146 = v173 + 16;
    v148 = v58;
    v58(v171, v57, v159);
    swift_bridgeObjectRetain_n();
    v61 = v22;
    v62 = v158;
    Music.time.getter();
    v63 = v56 + 8;
    v64 = v164;
    v65 = v60;
    v66 = *(v56 + 8);
    v66(v59, v65);
    v67 = v161;
    sub_1001875A0(v161);
    v68 = *(v64 + 8);
    v69 = v62;
    v70 = v61;
    v164 = v64 + 8;
    v145 = v68;
    v68(v69, v160);
    v71 = v172;
    DateInterval.start.getter();
    v72 = *(v165 + 8);
    v165 += 8;
    v143 = v72;
    v72(v67, v162);
    v73 = v167;
    v74 = v167 + 56;
    v144 = *(v167 + 56);
    v144(v71, 0, 1, v70);
    v142 = *(v73 + 32);
    v142(v170, v71, v70);
    if (v55 > *(v163 + 16))
    {
      goto LABEL_31;
    }

    v75 = v70;
    v171 = *(v173 + 72);
    v76 = v147;
    v141 = v74;
    v77 = v159;
    v78 = v146;
    v148(v147, v57 + v171 * (v55 - 1), v159);
    v79 = v158;
    Music.time.getter();
    v172 = v66;
    v173 = v63;
    v66(v76, v77);
    v80 = v161;
    sub_1001875A0(v161);
    v145(v79, v160);
    v81 = v157;
    DateInterval.start.getter();
    v143(v80, v162);
    v144(v81, 0, 1, v75);
    v82 = v169;
    v142(v169, v81, v75);
    sub_1000AFEEC(v170, v82, v166);
    v83 = _swiftEmptyArrayStorage;
    v84 = v77;
    v85 = v78;
    v86 = v148;
    while (1)
    {
      v87 = v174;
      v88 = v85;
      v89 = v86;
      v86(v174, v57, v84);
      v90 = Music.genres.getter();
      v91 = v84;
      (v172)(v87, v84);
      v92 = *(v90 + 16);
      v93 = v83[2];
      v94 = v93 + v92;
      if (__OFADD__(v93, v92))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);

        v125 = v156;
        sub_1000050C4(&v156[v138], &qword_100221710, &unk_1001B4470);

        (*(v149 + 8))(&v125[v130], v150);

        v126 = type metadata accessor for LocalizedStringResource();
        (*(*(v126 - 8) + 8))(&v125[v131], v126);
        v127 = type metadata accessor for ObservationRegistrar();
        (*(*(v127 - 8) + 8))(&v125[v132], v127);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v94 <= v83[3] >> 1)
      {
        if (*(v90 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v93 <= v94)
        {
          v96 = v93 + v92;
        }

        else
        {
          v96 = v93;
        }

        v83 = sub_100189980(isUniquelyReferenced_nonNull_native, v96, 1, v83);
        if (*(v90 + 16))
        {
LABEL_15:
          v97 = (v83[3] >> 1) - v83[2];
          type metadata accessor for Music.Genre();
          if (v97 < v92)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v84 = v91;
          v85 = v88;
          v86 = v89;
          if (v92)
          {
            v98 = v83[2];
            v99 = __OFADD__(v98, v92);
            v100 = v98 + v92;
            if (v99)
            {
              goto LABEL_30;
            }

            v83[2] = v100;
          }

          goto LABEL_5;
        }
      }

      v84 = v91;
      v85 = v88;
      v86 = v89;
      if (v92)
      {
        goto LABEL_28;
      }

LABEL_5:
      v57 += v171;
      if (!--v55)
      {
        goto LABEL_24;
      }
    }
  }

  v101 = v167;
  v102 = *(v167 + 56);
  v103 = v172;
  v102(v172, 1, 1, v22);
  swift_bridgeObjectRetain_n();
  v104 = v170;
  Date.init()();
  v105 = *(v101 + 48);
  if (v105(v103, 1, v22) != 1)
  {
    sub_1000050C4(v103, &qword_100225640, &unk_1001BACC8);
  }

  v106 = v157;
  v102(v157, 1, 1, v22);
  Date.init()();
  if (v105(v106, 1, v22) != 1)
  {
    sub_1000050C4(v106, &qword_100225640, &unk_1001BACC8);
  }

  sub_1000AFEEC(v104, v169, v166);
  v83 = _swiftEmptyArrayStorage;
LABEL_24:
  v107 = sub_10004924C(v83);

  v108 = *(v107 + 16);
  v109 = _swiftEmptyArrayStorage;
  if (v108)
  {
    v109 = sub_100189DA0(*(v107 + 16), 0);
    v110 = *(type metadata accessor for Music.Genre() - 8);
    v111 = sub_1000E27B8(&v175, &v109[(*(v110 + 80) + 32) & ~*(v110 + 80)], v108, v107);
    v112 = v175;

    sub_1000605FC(v112);
    if (v111 != v108)
    {
      goto LABEL_32;
    }
  }

  v176 = v109;
  sub_1000E0CA0(&v176);
  v113 = v153;

  v174 = v176;
  v114 = v167;
  v115 = *(v167 + 16);
  v116 = v170;
  v115(v151, v170, v113);
  v117 = v169;
  v115(v152, v169, v113);
  v118 = v155;
  v119 = v154;
  DateInterval.init(start:end:)();
  v120 = v166;
  sub_10000BEB8(v166, v119 + v118[12], &qword_100222680, &qword_1001B5EC0);
  (*(v149 + 8))(v168, v150);
  sub_1000050C4(v120, &qword_100222680, &qword_1001B5EC0);
  v121 = *(v114 + 8);
  v121(v117, v113);
  v121(v116, v113);
  v122 = v163;
  *v119 = 0;
  v119[1] = v122;
  v119[2] = _swiftEmptyArrayStorage;
  *(v119 + v118[13]) = v174;
  *(v119 + v118[14]) = &_swiftEmptySetSingleton;
  v123 = v156;
  sub_1000E2A84(v119, &v156[*(*v156 + 144)]);
  return v123;
}

uint64_t sub_1000DFAA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v75 = sub_1000024C4(&qword_100221688, &qword_1001B5380);
  __chkstk_darwin(v75);
  v60 = (&v58 - v3);
  v70 = sub_1000024C4(&qword_100221668, &qword_1001B5360);
  __chkstk_darwin(v70);
  v61 = (&v58 - v4);
  v72 = sub_1000024C4(&qword_100226488, &qword_1001BC228);
  __chkstk_darwin(v72);
  v73 = &v58 - v5;
  v67 = sub_1000024C4(&qword_100226490, &qword_1001BC230);
  __chkstk_darwin(v67);
  v68 = &v58 - v6;
  v71 = sub_1000024C4(&qword_100226498, &qword_1001BC238);
  __chkstk_darwin(v71);
  v69 = &v58 - v7;
  v59 = type metadata accessor for Date();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000024C4(&qword_1002264A0, &qword_1001BC240);
  __chkstk_darwin(v66);
  v11 = (&v58 - v10);
  v65 = type metadata accessor for Venue();
  v64 = *(v65 - 8);
  v12 = __chkstk_darwin(v65);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v58 - v15;
  v16 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 24);
  v62 = *(v1 + 16);
  v77 = v62;
  v78 = v19;
  sub_1000024C4(&qword_1002264A8, &qword_1001BC248);
  State.wrappedValue.getter();
  v20 = v80;
  swift_getKeyPath();
  v77 = v20;
  sub_1000E0BF8(&qword_1002211C8, type metadata accessor for VenueController, &unk_1001B3860);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC16EventViewService15VenueController__result;
  swift_beginAccess();
  sub_1000047E4(v20 + v21, v18);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000046B8(v18);
      KeyPath = swift_getKeyPath();
      v24 = v61;
      *v61 = KeyPath;
      sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for ErrorView(0);
      v26 = *(v25 + 20);
      *(v24 + v26) = swift_getKeyPath();
      sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
      swift_storeEnumTagMultiPayload();
      v27 = (v24 + *(v25 + 24));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      *v27 = EnvironmentObject.init()();
      v27[1] = v28;
      v29 = *v2;
      v81[0] = v19;
      v79 = v2[2];
      v80 = v29;
      v30 = swift_allocObject();
      v31 = v2[1];
      *(v30 + 1) = *v2;
      *(v30 + 2) = v31;
      *(v30 + 3) = v2[2];
      v32 = (v24 + *(v70 + 36));
      *v32 = sub_1000E0C98;
      v32[1] = v30;
      v32[2] = 0;
      v32[3] = 0;
      v33 = &qword_100221668;
      v34 = &qword_1001B5360;
      sub_10000BEB8(v24, v68, &qword_100221668, &qword_1001B5360);
      swift_storeEnumTagMultiPayload();
      sub_100020764(&v80, v76);

      sub_10000BEB8(v81, v76, &qword_1002264B0, &unk_1001BC2C0);
      sub_10000BEB8(&v79, v76, &qword_100221708, &qword_1001B4448);
      sub_1000E0B94();
      sub_10000BB18();
      v35 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_10000BEB8(v35, v73, &qword_100226498, &qword_1001BC238);
      swift_storeEnumTagMultiPayload();
      sub_1000E0B08();
      sub_10000BA2C();
      _ConditionalContent<>.init(storage:)();
      sub_1000050C4(v35, &qword_100226498, &qword_1001BC238);
      v36 = v24;
    }

    else
    {
      v50 = swift_getKeyPath();
      v51 = v60;
      *v60 = v50;
      sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
      swift_storeEnumTagMultiPayload();
      v52 = (v51 + *(type metadata accessor for LoadingView(0) + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      *v52 = EnvironmentObject.init()();
      v52[1] = v53;
      v54 = *v2;
      v81[0] = v19;
      v79 = v2[2];
      v80 = v54;
      v55 = swift_allocObject();
      v56 = v2[1];
      v55[1] = *v2;
      v55[2] = v56;
      v55[3] = v2[2];
      v57 = (v51 + *(v75 + 36));
      type metadata accessor for _TaskModifier();
      sub_100020764(&v80, v76);

      sub_10000BEB8(v81, v76, &qword_1002264B0, &unk_1001BC2C0);
      sub_10000BEB8(&v79, v76, &qword_100221708, &qword_1001B4448);
      static TaskPriority.userInitiated.getter();
      *v57 = &unk_1001BC2B8;
      v57[1] = v55;
      v33 = &qword_100221688;
      v34 = &qword_1001B5380;
      sub_10000BEB8(v51, v73, &qword_100221688, &qword_1001B5380);
      swift_storeEnumTagMultiPayload();
      sub_1000E0B08();
      sub_10000BA2C();
      _ConditionalContent<>.init(storage:)();
      v36 = v51;
    }

    return sub_1000050C4(v36, v33, v34);
  }

  else
  {
    v37 = *&v18[*(sub_1000024C4(&qword_1002211E0, &unk_1001B38C0) + 48)];
    v38 = v64;
    v39 = v63;
    v40 = v65;
    (*(v64 + 32))(v63, v18, v65);
    (*(v38 + 16))(v14, v39, v40);
    v41 = static Date.now.getter();
    __chkstk_darwin(v41);
    *(&v58 - 2) = v9;
    v42 = sub_1001881F4(sub_100047854, (&v58 - 4), v37);
    (*(v58 + 8))(v9, v59);
    sub_1000024C4(&qword_1002264C8, &qword_1001BC300);
    swift_allocObject();
    *&v79 = sub_1000DE930(v14, v42);
    State.init(wrappedValue:)();
    v43 = *(&v80 + 1);
    *v11 = v80;
    v11[1] = v43;
    v44 = v66;
    v45 = *(v66 + 52);
    *(v11 + v45) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
    swift_storeEnumTagMultiPayload();
    v46 = (v11 + *(v44 + 56));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    *v46 = EnvironmentObject.init()();
    v46[1] = v47;
    sub_10000BEB8(v11, v68, &qword_1002264A0, &qword_1001BC240);
    swift_storeEnumTagMultiPayload();
    sub_1000E0B94();
    sub_10000BB18();
    v48 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v48, v73, &qword_100226498, &qword_1001BC238);
    swift_storeEnumTagMultiPayload();
    sub_1000E0B08();
    sub_10000BA2C();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v48, &qword_100226498, &qword_1001BC238);
    sub_1000050C4(v11, &qword_1002264A0, &qword_1001BC240);
    return (*(v64 + 8))(v63, v65);
  }
}

void sub_1000E0664(uint64_t *a1)
{
  sub_1000024C4(&qword_1002264A8, &qword_1001BC248);
  State.wrappedValue.getter();

  v2 = a1[4];
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];

    sub_10015B530(v4, v3, 10, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000E0750(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1000E07E8, v3, v2);
}

uint64_t sub_1000E07E8()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v1 + 16);
  sub_1000024C4(&qword_1002264A8, &qword_1001BC248);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000E08BC;

  return sub_100003A20(v2, v3);
}

uint64_t sub_1000E08BC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1000E0A00, v3, v2);
}

uint64_t sub_1000E0A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E0A74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000BD00;

  return sub_1000E0750(v0 + 16);
}

unint64_t sub_1000E0B08()
{
  result = qword_1002264B8;
  if (!qword_1002264B8)
  {
    sub_10000460C(&qword_100226498, &qword_1001BC238);
    sub_1000E0B94();
    sub_10000BB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002264B8);
  }

  return result;
}

unint64_t sub_1000E0B94()
{
  result = qword_1002264C0;
  if (!qword_1002264C0)
  {
    sub_10000460C(&qword_1002264A0, &qword_1001BC240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002264C0);
  }

  return result;
}

uint64_t sub_1000E0BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E0C48()
{

  return swift_deallocObject();
}

Swift::Int sub_1000E0CA0(uint64_t *a1)
{
  v2 = *(type metadata accessor for Music.Genre() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000E2A70(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000E0D48(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000E0D48(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Music.Genre();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Music.Genre() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000E1180(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000E0E74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Music.Genre();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = Music.Genre.name.getter();
      v27 = v26;
      if (v25 == Music.Genre.name.getter() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E1180(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for Music.Genre();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_1000E1D3C(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1000E2464(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_1000E23D8(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1000E2464(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = _swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = Music.Genre.name.getter();
      v37 = v36;
      v38 = Music.Genre.name.getter();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = Music.Genre.name.getter();
        v52 = v51;
        if (v50 == Music.Genre.name.getter() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10018987C(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_10018987C((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1000E1D3C(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1000E2464(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_1000E23D8(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = Music.Genre.name.getter();
    v69 = v68;
    if (v5 == Music.Genre.name.getter() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}