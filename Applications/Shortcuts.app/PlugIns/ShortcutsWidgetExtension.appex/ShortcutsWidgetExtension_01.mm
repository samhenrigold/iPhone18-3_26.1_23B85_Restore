uint64_t sub_10001C1E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001C1F0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_10002A30C() & 1;
  }
}

uint64_t sub_10001C258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C2C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001C330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000026A4(a2, a3);
  sub_10001C6C4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001C384(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_10001C3A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001C3B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_10001C3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10001C454()
{
  result = qword_10003D6D8;
  if (!qword_10003D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6D8);
  }

  return result;
}

uint64_t sub_10001C4A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10001C530(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001C5FCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001C640()
{
  result = qword_10003D6E0;
  if (!qword_10003D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6E0);
  }

  return result;
}

uint64_t sub_10001C7D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    v9 = a1 + *(a3 + 20);

    return sub_100002984(v9, a2, v8);
  }
}

void *sub_10001C87C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    v8 = v5 + *(a4 + 20);

    return sub_1000026EC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RunShortcutComplicationView(uint64_t a1)
{
  result = qword_10003D740;
  if (!qword_10003D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001C954(uint64_t a1)
{
  sub_100002AD0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10001CA10(uint64_t a1)
{
  sub_10002997C();
  sub_1000028EC();
  __chkstk_darwin(v3);
  sub_10000ECC8();
  (*(v4 + 16))(v1, a1);
  return sub_100029A1C();
}

uint64_t sub_10001CABC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  sub_1000028EC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000ECC8();
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  sub_10000350C();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for RunShortcutComplicationView(0);
  sub_1000033E4(v1 + *(v11 + 20), v10, &qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F4C();
    sub_10000350C();
    return (*(v12 + 32))(a1, v10);
  }

  else
  {
    sub_10002A1FC();
    v14 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v2, v4);
  }
}

uint64_t sub_10001CC98()
{
  sub_1000026A4(&qword_10003D778, &qword_10002F4F0);
  sub_10000350C();
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_10001CD94(v0, &v5 - v2);
  sub_10002933C();
  sub_10001DA84();
  sub_100005F34();
  sub_100029D5C();

  return sub_10000338C(v3, &qword_10003D778, &qword_10002F4F0);
}

uint64_t sub_10001CD94@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43 = sub_1000026A4(&qword_10003D7C8, &qword_10002F510);
  __chkstk_darwin(v43);
  v4 = (&v36 - v3);
  v37 = sub_1000026A4(&qword_10003D7B0, &qword_10002F508);
  __chkstk_darwin(v37);
  v6 = (&v36 - v5);
  v40 = sub_1000026A4(&qword_10003D7D0, &qword_10002F518);
  __chkstk_darwin(v40);
  v39 = &v36 - v7;
  v38 = sub_1000026A4(&qword_10003D7D8, &qword_10002F520);
  __chkstk_darwin(v38);
  v9 = &v36 - v8;
  v42 = sub_1000026A4(&qword_10003D7A0, &qword_10002F500);
  __chkstk_darwin(v42);
  v11 = &v36 - v10;
  v12 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  __chkstk_darwin(v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100029F4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CABC(v18);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for WidgetFamily.accessoryCorner(_:))
  {
    v20 = a1[1];
    v46 = *a1;
    v47 = v20;
    v48 = a1[2];
    v49 = *(a1 + 6);
    v21 = sub_100010144();
    KeyPath = swift_getKeyPath();
    v23 = type metadata accessor for ComplicationWorkflowIcon(0);
    *(v6 + *(v23 + 20)) = KeyPath;
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v23 + 24)) = swift_getKeyPath();
    sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
    swift_storeEnumTagMultiPayload();
    *v6 = v21;
    v24 = *(v37 + 36);
    *(v6 + v24) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_1000033E4(v6, v9, &qword_10003D7B0, &qword_10002F508);
    swift_storeEnumTagMultiPayload();
    sub_10001DF80(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView, &unk_10002DD84);
    sub_10001DC7C();
    sub_100029B6C();
    sub_1000033E4(v11, v39, &qword_10003D7A0, &qword_10002F500);
    swift_storeEnumTagMultiPayload();
    sub_10001DBC0();
    sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510, &protocol conformance descriptor for ZStack<A>);
    sub_100029B6C();
    sub_10000338C(v11, &qword_10003D7A0, &qword_10002F500);
    return sub_10000338C(v6, &qword_10003D7B0, &qword_10002F508);
  }

  else
  {
    v36 = v11;
    v26 = v39;
    if (v19 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v27 = a1[1];
      v46 = *a1;
      v47 = v27;
      v48 = a1[2];
      v49 = *(a1 + 6);
      v28 = sub_100010144();
      sub_10002933C();
      v29 = v44;
      v30 = v45;
      v31 = *(v12 + 28);
      *(v14 + v31) = swift_getKeyPath();
      sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
      swift_storeEnumTagMultiPayload();
      v32 = v14 + *(v12 + 32);
      *v32 = swift_getKeyPath();
      v32[8] = 0;
      *v14 = v28;
      v14[1] = v29;
      v14[2] = v30;
      v14[3] = 0;
      sub_10000C2C8(v14, v9);
      swift_storeEnumTagMultiPayload();
      sub_10001DF80(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView, &unk_10002DD84);
      sub_10001DC7C();
      v33 = v36;
      sub_100029B6C();
      sub_1000033E4(v33, v26, &qword_10003D7A0, &qword_10002F500);
      swift_storeEnumTagMultiPayload();
      sub_10001DBC0();
      sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510, &protocol conformance descriptor for ZStack<A>);
      sub_100029B6C();
      sub_10000338C(v33, &qword_10003D7A0, &qword_10002F500);
      return sub_10001DE08(v14);
    }

    else
    {
      *v4 = sub_100029E4C();
      v4[1] = v34;
      v35 = sub_1000026A4(&qword_10003D7E0, &qword_10002F528);
      sub_10001D524(a1, v4 + *(v35 + 44));
      sub_10001DD68(v4, v26);
      swift_storeEnumTagMultiPayload();
      sub_10001DBC0();
      sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510, &protocol conformance descriptor for ZStack<A>);
      sub_100029B6C();
      sub_10000338C(v4, &qword_10003D7C8, &qword_10002F510);
      return (*(v16 + 8))(v18, v15);
    }
  }
}

uint64_t sub_10001D524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000026A4(&qword_10003D7E8, &qword_10002F600);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v38 = sub_1000026A4(&qword_10003D7F0, &qword_10002F608);
  v36 = *(v38 - 8);
  v7 = __chkstk_darwin(v38);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_100029ECC();
  v35 = *(v11 - 8);
  v12 = v35;
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v34 = &v32 - v16;
  sub_100029EBC();
  v18 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v18;
  v42[2] = *(a1 + 32);
  v43 = *(a1 + 48);
  sub_10000AFDC(v42, v41);
  v41[0] = sub_100023BB4(v42);
  v41[1] = v19;
  v40 = a1;
  sub_1000026A4(&qword_10003D7B0, &qword_10002F508);
  sub_10001DC7C();
  sub_1000135A4();
  sub_100029E3C();
  sub_100005EEC(&qword_10003D7F8, &qword_10003D7E8, &qword_10002F600, &protocol conformance descriptor for Button<A>);
  sub_10001DE6C();
  v32 = v10;
  sub_100029D2C();
  (*(v4 + 8))(v6, v3);
  v20 = *(v12 + 16);
  v33 = v15;
  v21 = v17;
  v22 = v11;
  v20(v15, v21, v11);
  v24 = v36;
  v23 = v37;
  v25 = *(v36 + 16);
  v26 = v38;
  v25(v37, v10, v38);
  v27 = v39;
  v20(v39, v15, v22);
  v28 = sub_1000026A4(&qword_10003D808, &qword_10002F610);
  v25(&v27[*(v28 + 48)], v23, v26);
  v29 = *(v24 + 8);
  v29(v32, v26);
  v30 = *(v35 + 8);
  v30(v34, v22);
  v29(v23, v26);
  return (v30)(v33, v22);
}

uint64_t sub_10001D958@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100010144();
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for ComplicationWorkflowIcon(0);
  *(a1 + *(v4 + 20)) = KeyPath;
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  swift_storeEnumTagMultiPayload();
  *(a1 + *(v4 + 24)) = swift_getKeyPath();
  sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  swift_storeEnumTagMultiPayload();
  *a1 = v2;
  v5 = *(sub_1000026A4(&qword_10003D7B0, &qword_10002F508) + 36);
  *(a1 + v5) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10001DA84()
{
  result = qword_10003D780;
  if (!qword_10003D780)
  {
    sub_1000028A4(&qword_10003D778, &qword_10002F4F0);
    sub_10001DB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D780);
  }

  return result;
}

unint64_t sub_10001DB08()
{
  result = qword_10003D788;
  if (!qword_10003D788)
  {
    sub_1000028A4(&qword_10003D790, &qword_10002F4F8);
    sub_10001DBC0();
    sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D788);
  }

  return result;
}

unint64_t sub_10001DBC0()
{
  result = qword_10003D798;
  if (!qword_10003D798)
  {
    sub_1000028A4(&qword_10003D7A0, &qword_10002F500);
    sub_10001DF80(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView, &unk_10002DD84);
    sub_10001DC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D798);
  }

  return result;
}

unint64_t sub_10001DC7C()
{
  result = qword_10003D7A8;
  if (!qword_10003D7A8)
  {
    sub_1000028A4(&qword_10003D7B0, &qword_10002F508);
    sub_10001DF80(&qword_10003D7B8, type metadata accessor for ComplicationWorkflowIcon, &unk_10002F7FC);
    sub_10001DF80(&qword_10003D180, type metadata accessor for ComplicationPaddingModifier, "ͽ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D7A8);
  }

  return result;
}

uint64_t sub_10001DD68(uint64_t a1, uint64_t a2)
{
  sub_1000026A4(&qword_10003D7C8, &qword_10002F510);
  sub_10000350C();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001DE08(uint64_t a1)
{
  v2 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001DE6C()
{
  result = qword_10003D800;
  if (!qword_10003D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D800);
  }

  return result;
}

unint64_t sub_10001DEC4()
{
  result = qword_10003D810;
  if (!qword_10003D810)
  {
    sub_1000028A4(&qword_10003D818, &qword_10002F618);
    sub_10001DA84();
    sub_10001DF80(&qword_10003D820, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D810);
  }

  return result;
}

uint64_t sub_10001DF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001DFC8()
{
  result = qword_10003D838;
  if (!qword_10003D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D838);
  }

  return result;
}

uint64_t sub_10001E020()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002988C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002A0CC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000297AC();
  sub_10000FBA4(v6, qword_100041558);
  sub_10000FB6C(v6, qword_100041558);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_10001E208()
{
  sub_1000295AC();
  sub_1000028EC();
  v30 = v1;
  v31 = v0;
  __chkstk_darwin(v0);
  sub_100002900();
  v29 = v3 - v2;
  v4 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v5 = sub_100002910(v4);
  v6 = __chkstk_darwin(v5);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v11 = sub_100002910(v10);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10002978C();
  sub_1000028EC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100002900();
  v20 = v19 - v18;
  v21 = sub_10002988C();
  v22 = sub_100002910(v21);
  __chkstk_darwin(v22);
  sub_100002900();
  v23 = sub_10002A0CC();
  v24 = sub_100002910(v23);
  __chkstk_darwin(v24);
  sub_100002900();
  v25 = sub_1000297AC();
  __chkstk_darwin(v25);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002A05C();
  sub_10002987C();
  (*(v16 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_1000297BC();
  sub_10000FC08(v13);
  sub_10002931C();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  sub_10000FC08(v9);
  sub_10000FC08(v28);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10000FA50();
  v26 = sub_1000293EC();
  sub_1000026A4(&qword_10003D278, &qword_10002F7C0);
  sub_10002924C();
  v32 = 0u;
  v33 = 0u;
  *&v34 = 0;
  sub_10002923C();
  sub_1000291FC();
  return v26;
}

uint64_t sub_10001E608()
{
  v0 = qword_10003D828;

  return v0;
}

unint64_t sub_10001E644()
{
  result = qword_10003D840;
  if (!qword_10003D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D840);
  }

  return result;
}

unint64_t sub_10001E69C()
{
  result = qword_10003D848;
  if (!qword_10003D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D848);
  }

  return result;
}

uint64_t sub_10001E740@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C920 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_100041558);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001E7E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001E95C();
  *v4 = v2;
  v4[1] = sub_10000F858;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10001E894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E208();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001E8BC(uint64_t a1)
{
  v2 = sub_10001E908();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001E908()
{
  result = qword_10003D850;
  if (!qword_10003D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D850);
  }

  return result;
}

unint64_t sub_10001E95C()
{
  result = qword_10003D858;
  if (!qword_10003D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D858);
  }

  return result;
}

uint64_t sub_10001E9C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1000026A4(&qword_10003D068, &qword_10002DE58);
      v10 = *(a3 + 24);
    }

    return sub_100002984(a1 + v10, a2, v9);
  }
}

void *sub_10001EAC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1000026A4(&qword_10003D068, &qword_10002DE58);
      v10 = *(a4 + 24);
    }

    return sub_1000026EC(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ComplicationWorkflowIcon(uint64_t a1)
{
  result = qword_10003D8B8;
  if (!qword_10003D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001EBEC(uint64_t a1)
{
  sub_10000B480();
  if (v1 <= 0x3F)
  {
    sub_10000CD6C(319, &qword_10003CA08, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_10000CD6C(319, &unk_10003D0D8, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001ECDC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  sub_1000028EC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000ECC8();
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  sub_10000350C();
  __chkstk_darwin(v8);
  v9 = sub_100020AE0();
  sub_100020B00(*(v9 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F4C();
    sub_10000350C();
    return (*(v10 + 32))(a1, v2);
  }

  else
  {
    sub_10002A1FC();
    v12 = sub_100029C3C();
    sub_100020AC0(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v14, v15, _swiftEmptyArrayStorage);

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v1, v4);
  }
}

uint64_t sub_10001EE88@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  sub_1000028EC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000ECC8();
  sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  sub_10000350C();
  __chkstk_darwin(v8);
  v9 = sub_100020AE0();
  sub_100020B00(*(v9 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F0C();
    sub_10000350C();
    return (*(v10 + 32))(a1, v2);
  }

  else
  {
    sub_10002A1FC();
    v12 = sub_100029C3C();
    sub_100020AC0(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v14, v15, _swiftEmptyArrayStorage);

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v1, v4);
  }
}

uint64_t sub_10001F034()
{
  v1 = type metadata accessor for ComplicationWorkflowIcon(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = sub_1000026A4(&qword_10003D8F8, &qword_10002F850);
  sub_1000028EC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = [*v0 backgroundColor];
  v11 = [v10 paletteGradient];

  sub_100020958(v0, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComplicationWorkflowIcon);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_100020458(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1000026A4(&qword_10003D900, &qword_10002F858);
  sub_10002053C();
  sub_1000298BC();
  sub_100020AA8();
  sub_100005EEC(v14, &qword_10003D8F8, &qword_10002F850, v15);
  sub_100029CDC();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_10001F280@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001F2F4(a2, a1, a3);
  v5 = a1;
  v6 = sub_100029D9C();
  KeyPath = swift_getKeyPath();
  result = sub_1000026A4(&qword_10003D900, &qword_10002F858);
  v9 = (a3 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_10001F2F4@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v109 = a3;
  v86 = sub_100029E6C();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1000026A4(&qword_10003D190, &qword_10002F8B0);
  v88 = *(v108 - 8);
  __chkstk_darwin(v108);
  v87 = &v78 - v5;
  v81 = sub_100029D7C();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for WidgetSStackView(0);
  v7 = __chkstk_darwin(v110);
  v82 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v78 - v9;
  v91 = sub_100029F0C();
  v90 = *(v91 - 8);
  v10 = __chkstk_darwin(v91);
  v89 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v78 - v12;
  v105 = sub_1000026A4(&qword_10003D958, &qword_10002F8B8);
  __chkstk_darwin(v105);
  v107 = &v78 - v13;
  v100 = sub_1000026A4(&qword_10003D960, qword_10002F8C0);
  __chkstk_darwin(v100);
  v102 = &v78 - v14;
  v106 = sub_1000026A4(&qword_10003D938, &qword_10002F870);
  __chkstk_darwin(v106);
  v104 = &v78 - v15;
  v16 = sub_1000298DC();
  v96 = *(v16 - 8);
  v97 = v16;
  __chkstk_darwin(v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000298CC();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_1000298EC();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100029F4C();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v78 - v26;
  v111 = a1;
  sub_10001ECDC(&v78 - v26);
  v28 = *(v22 + 104);
  v28(v25, enum case for WidgetFamily.accessoryInline(_:), v21);
  sub_1000208B4(&qword_10003D1A0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10002A14C();
  sub_10002A14C();
  v29 = *(v22 + 8);
  v29(v25, v21);
  v29(v27, v21);
  if (v112 == v114 || (sub_10001ECDC(v27), v28(v25, enum case for WidgetFamily.accessoryRectangular(_:), v21), sub_10002A14C(), sub_10002A14C(), v29(v25, v21), v29(v27, v21), v112 == v114))
  {
    v30 = [*v111 icon];
    v31 = v94;
    v32 = v95;
    *v95 = 0x403E000000000000;
    (*(v93 + 104))(v32, enum case for IconSize.customHeight(_:), v31);
    v33 = v103;
    *v18 = v103;
    v18[8] = 0;
    (*(v96 + 104))(v18, enum case for IconView.DisplayMode.customColor(_:), v97);
    v34 = v33;
    v35 = v98;
    sub_1000298FC();
    v36 = v99;
    v37 = v101;
    (*(v99 + 16))(v102, v35, v101);
    swift_storeEnumTagMultiPayload();
    sub_1000208B4(&qword_10003D058, &type metadata accessor for IconView, &protocol conformance descriptor for IconView);
    v38 = sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
    v39 = v104;
    v40 = v110;
    sub_100029B6C();
    sub_1000033E4(v39, v107, &qword_10003D938, &qword_10002F870);
    swift_storeEnumTagMultiPayload();
    sub_10002076C();
    v112 = v40;
    v113 = v38;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    sub_1000209B8(v39);
    return (*(v36 + 8))(v35, v37);
  }

  else
  {
    v42 = v92;
    sub_10001EE88(v92);
    v43 = v89;
    sub_100029EEC();
    v44 = sub_100029EDC();
    v45 = *(v90 + 8);
    v46 = v91;
    v45(v43, v91);
    v45(v42, v46);
    if (v44)
    {
      v47 = [objc_opt_self() whiteColor];
      v48 = sub_1000201EC(v47);

      v49 = [objc_allocWithZone(WFColor) initWithWhite:0.2 alpha:1.0];
      v50 = v110;
      v51 = *(v110 + 20);
      (*(v80 + 104))(v79, enum case for Color.RGBColorSpace.sRGB(_:), v81);
      v52 = sub_100029DDC();
      v53 = v83;
      *&v83[v51] = v52;
      v54 = enum case for SStackFill.color(_:);
      v55 = sub_10002989C();
      (*(*(v55 - 8) + 104))(&v53[v51], v54, v55);
      *v53 = v48;
      *(v53 + 1) = v49;
      type metadata accessor for WidgetSStackView.Content(0);
      swift_storeEnumTagMultiPayload();
      sub_100020958(v53, v102, type metadata accessor for WidgetSStackView);
      swift_storeEnumTagMultiPayload();
      sub_1000208B4(&qword_10003D058, &type metadata accessor for IconView, &protocol conformance descriptor for IconView);
      v56 = sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
      v57 = v104;
      sub_100029B6C();
      sub_1000033E4(v57, v107, &qword_10003D938, &qword_10002F870);
      swift_storeEnumTagMultiPayload();
      sub_10002076C();
      v112 = v50;
      v113 = v56;
      swift_getOpaqueTypeConformance2();
      sub_100029B6C();
      sub_1000209B8(v57);
      return sub_1000208FC(v53);
    }

    else
    {
      v58 = v103;
      v59 = sub_1000201EC(v103);
      v60 = [objc_opt_self() whiteColor];
      v61 = *(v110 + 20);
      v62 = v58;
      sub_100029D9C();
      v63 = sub_100029DBC();

      v64 = v82;
      *&v82[v61] = v63;
      v65 = enum case for SStackFill.color(_:);
      v66 = sub_10002989C();
      (*(*(v66 - 8) + 104))(&v64[v61], v65, v66);
      *v64 = v59;
      *(v64 + 1) = v60;
      type metadata accessor for WidgetSStackView.Content(0);
      swift_storeEnumTagMultiPayload();
      v67 = v92;
      sub_10001EE88(v92);
      sub_100029EFC();
      v68 = v67;
      LOBYTE(v67) = sub_100029EDC();
      v45(v43, v46);
      v45(v68, v46);
      v69 = v85;
      v70 = &enum case for BlendMode.destinationOut(_:);
      if ((v67 & 1) == 0)
      {
        v70 = &enum case for BlendMode.normal(_:);
      }

      v71 = v84;
      v72 = v86;
      (*(v85 + 104))(v84, *v70, v86);
      v73 = sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
      v74 = v87;
      v75 = v110;
      sub_100029CBC();
      (*(v69 + 8))(v71, v72);
      sub_1000208FC(v64);
      v76 = v88;
      v77 = v108;
      (*(v88 + 16))(v107, v74, v108);
      swift_storeEnumTagMultiPayload();
      sub_10002076C();
      v112 = v75;
      v113 = v73;
      swift_getOpaqueTypeConformance2();
      sub_100029B6C();
      return (*(v76 + 8))(v74, v77);
    }
  }
}

id sub_1000201EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(WFIconColorBackground) initWithColor:a1];
  [v1 glyphCharacter];
  v3 = WFSystemImageNameForGlyphCharacter();
  if (v3)
  {
    v4 = v3;
    v5 = sub_10002A0EC();
    v7 = v6;

    v8 = objc_allocWithZone(WFSymbolIcon);
    return sub_100012A5C(v5, v7, v2);
  }

  else
  {
    v10 = [objc_allocWithZone(WFWorkflowGlyphIcon) initWithGlyph:objc_msgSend(v1 background:{"glyphCharacter"), v2}];

    return v10;
  }
}

uint64_t sub_1000202D0()
{
  v1 = type metadata accessor for ComplicationWorkflowIcon(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F4C();
    sub_10000350C();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F0C();
    sub_10000350C();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100020458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationWorkflowIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000204BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComplicationWorkflowIcon(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10001F280(a1, v6, a2);
}

unint64_t sub_10002053C()
{
  result = qword_10003D908;
  if (!qword_10003D908)
  {
    sub_1000028A4(&qword_10003D900, &qword_10002F858);
    sub_1000205F4();
    sub_100005EEC(&qword_10003D940, &qword_10003D948, &qword_10002F878, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D908);
  }

  return result;
}

unint64_t sub_1000205F4()
{
  result = qword_10003D910;
  if (!qword_10003D910)
  {
    sub_1000028A4(&qword_10003D918, &qword_10002F860);
    sub_100020678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D910);
  }

  return result;
}

unint64_t sub_100020678()
{
  result = qword_10003D920;
  if (!qword_10003D920)
  {
    sub_1000028A4(&qword_10003D928, &qword_10002F868);
    sub_10002076C();
    type metadata accessor for WidgetSStackView(255);
    sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D920);
  }

  return result;
}

unint64_t sub_10002076C()
{
  result = qword_10003D930;
  if (!qword_10003D930)
  {
    sub_1000028A4(&qword_10003D938, &qword_10002F870);
    sub_1000208B4(&qword_10003D058, &type metadata accessor for IconView, &protocol conformance descriptor for IconView);
    sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D930);
  }

  return result;
}

uint64_t sub_100020858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100029A4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000208B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000208FC(uint64_t a1)
{
  v2 = type metadata accessor for WidgetSStackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000350C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000209B8(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003D938, &qword_10002F870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020A20()
{
  sub_1000028A4(&qword_10003D8F8, &qword_10002F850);
  sub_100020AA8();
  sub_100005EEC(v0, &qword_10003D8F8, &qword_10002F850, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100020AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_10002993C();
}

uint64_t sub_100020AE0()
{

  return type metadata accessor for ComplicationWorkflowIcon(0);
}

uint64_t sub_100020B00@<X0>(uint64_t a1@<X8>)
{

  return sub_1000033E4(v1 + a1, v2, v3, v4);
}

unint64_t sub_100020B24()
{
  result = qword_10003D978;
  if (!qword_10003D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D978);
  }

  return result;
}

unint64_t sub_100020B7C()
{
  result = qword_10003D980;
  if (!qword_10003D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D980);
  }

  return result;
}

uint64_t sub_100020BEC()
{
  if (qword_10003C918 != -1)
  {
    sub_100023A08(&qword_10003C918);
  }

  v0 = xmmword_100041540;
  v1 = qword_100041550;
  sub_100006100();
  v4 = v2;

  return v4(v0, *(&v0 + 1), v1);
}

uint64_t sub_100020CA4()
{
  v0 = sub_10002980C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_10002A0DC();
  v8 = sub_10002A0DC();
  v9 = sub_100028FF4(v7);

  v10 = sub_10002A0EC();
  v12 = v11;

  v13 = sub_100019B00();
  v15 = v14;
  v17 = v16;

  sub_100019D64(1, 0, 0, v6);
  (*(v1 + 16))(v4, v6, v0);
  sub_10002934C();
  (*(v1 + 8))(v6, v0);
  v19 = v10;
  v20 = v12;
  sub_10002934C();
  v19 = 0;
  LOBYTE(v20) = 1;
  sub_10002934C();

  qword_100041570 = v13;
  *algn_100041578 = v15;
  qword_100041580 = v17;
  return result;
}

uint64_t sub_100020EB8()
{
  sub_100006164();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v3);
  v0[4] = swift_task_alloc();
  v4 = sub_10002980C();
  v0[5] = v4;
  sub_10000B194(v4);
  v0[6] = v5;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_100020FAC);
}

void sub_100020FAC()
{
  v1 = 0;
  v2 = v0[6];
  v3 = v0[2];
  v4 = *(v3 + 16);
  v51 = (v2 + 16);
  v49 = (v2 + 32);
  v50 = (v2 + 8);
  v5 = v3 + 40;
  v53 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = v5;
  v7 = v5 + 16 * v1;
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_37;
    }

    v10 = v0[4];
    v9 = v0[5];

    sub_1000297FC();
    if (sub_100002984(v10, 1, v9) != 1)
    {
      v12 = v0[7];
      v13 = v0[8];
      v14 = v0[5];
      (*v49)(v13, v0[4], v14);
      (*v51)(v12, v13, v14);
      sub_100018CB0(v12);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      (*v50)(v13, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100023A28();
        v53 = sub_100023730(0, v24 + 1, 1, v25, &unk_10003DA60, qword_10002FD00, &unk_10003A4F8, v26);
      }

      v5 = v6;
      v22 = v53[2];
      v21 = v53[3];
      if (v22 >= v21 >> 1)
      {
        v53 = sub_100023730((v21 > 1), v22 + 1, 1, v53, &unk_10003DA60, qword_10002FD00, &unk_10003A4F8, sub_100012BBC);
      }

      v53[2] = v22 + 1;
      v23 = &v53[3 * v22];
      v23[4] = v16;
      v23[5] = v18;
      *(v23 + 48) = v20 & 1;
      v1 = v8;
      goto LABEL_2;
    }

    v11 = v0[4];

    sub_100023998(v11);
    ++v1;
    v7 += 16;
  }

  v27 = 0;
  v28 = v53 + 6;
  v52 = _swiftEmptyArrayStorage;
  v29 = -v53[2];
LABEL_14:
  v30 = v27 + 1;
  v31 = &v28[3 * v27];
  while (v29 + v30 != 1)
  {
    v27 = v30;
    if ((v30 - 1) >= v53[2])
    {
      goto LABEL_38;
    }

    v32 = *(v31 - 2);
    if ((*v31 & 1) == 0)
    {
      if (v32)
      {
        if (qword_10003C928 != -1)
        {
          swift_once();
        }

        v41 = &qword_100041570;
      }

      else
      {
        if (qword_10003C918 != -1)
        {
          swift_once();
        }

        v41 = &xmmword_100041540;
      }

      v36 = *v41;
      v38 = v41[1];
      v40 = v41[2];

LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100023A40();
        v52 = sub_100023730(0, v45 + 1, 1, v46, &qword_10003D338, &unk_10002E670, &unk_10003A430, v47);
      }

      v43 = v52[2];
      v42 = v52[3];
      if (v43 >= v42 >> 1)
      {
        v52 = sub_100023730((v42 > 1), v43 + 1, 1, v52, &qword_10003D338, &unk_10002E670, &unk_10003A430, sub_100012B98);
      }

      v28 = v53 + 6;
      v52[2] = v43 + 1;
      v44 = &v52[3 * v43];
      v44[4] = v36;
      v44[5] = v38;
      v44[6] = v40;
      goto LABEL_14;
    }

    ++v30;
    v33 = v31 + 24;
    v34 = *(v31 - 1);

    sub_10001AD10(v32, v34);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_10001C384(v32, v34, 1);
    v31 = v33;
    if (v36)
    {
      goto LABEL_28;
    }
  }

  sub_100013594();

  v48(v52);
}

uint64_t sub_10002145C()
{
  sub_100006164();
  v0[15] = v1;
  v0[16] = v2;
  v3 = sub_1000026A4(&qword_10003D330, &qword_10002FCD0);
  v0[17] = v3;
  sub_10000B194(v3);
  v0[18] = v4;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v5 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  sub_100002910(v5);
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_10002155C);
}

uint64_t sub_10002155C()
{
  sub_1000297AC();
  sub_10000B1A4();
  sub_1000026EC(v1, v2, v3, v4);
  sub_1000026A4(&qword_10003DA50, &qword_10002FCD8);
  v5 = sub_1000026A4(&qword_10003DA58, &unk_10002FCE0);
  sub_10000B194(v5);
  *(swift_allocObject() + 16) = xmmword_10002EE30;
  sub_1000026A4(&qword_10003D338, &unk_10002E670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002D840;
  if (qword_10003C918 != -1)
  {
    sub_100023A08(&qword_10003C918);
  }

  v7 = *(&xmmword_100041540 + 1);
  v8 = qword_100041550;
  *(inited + 32) = xmmword_100041540;
  *(inited + 40) = v7;
  *(inited + 48) = v8;

  v9 = sub_10001B2FC();
  sub_100023840(v9);
  v10 = *(inited + 16);
  if (v10)
  {
    v11 = v0[18];
    sub_100012D4C(0, v10, 0);
    sub_10001B798();
    v12 = (inited + 48);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v0[9] = *(v12 - 2);
      v0[10] = v13;
      v0[11] = v14;

      sub_1000292EC();
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100012D4C((v15 > 1), v16 + 1, 1);
      }

      v17 = v0[20];
      v18 = v0[17];
      _swiftEmptyArrayStorage[2] = v16 + 1;
      (*(v11 + 32))(_swiftEmptyArrayStorage + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16, v17, v18);
      v12 += 3;
      --v10;
    }

    while (v10);
  }

  sub_10001B798();
  sub_10002943C();
  if (qword_10003C928 != -1)
  {
    swift_once();
  }

  v19 = qword_100041570;
  v20 = *algn_100041578;
  v21 = qword_100041580;

  sub_100012D4C(0, 1, 0);
  v0[12] = v19;
  v0[13] = v20;
  v0[14] = v21;
  sub_1000292EC();
  v23 = _swiftEmptyArrayStorage[2];
  v22 = _swiftEmptyArrayStorage[3];
  if (v23 >= v22 >> 1)
  {
    sub_100012D4C((v22 > 1), v23 + 1, 1);
  }

  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  _swiftEmptyArrayStorage[2] = v23 + 1;
  (*(v24 + 32))(_swiftEmptyArrayStorage + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v25, v26);
  sub_10002943C();
  sub_10002947C();

  sub_100006100();

  return v27();
}

uint64_t sub_1000219B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000134D8;

  return sub_100020EB8();
}

uint64_t sub_100021A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B928;

  return sub_10002145C();
}

unint64_t sub_100021AF8()
{
  result = qword_10003D988;
  if (!qword_10003D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D988);
  }

  return result;
}

uint64_t sub_100021B90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100023450();
  *v5 = v2;
  v5[1] = sub_100023A00;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100021C44(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001BA98;

  return sub_100020BD0();
}

unint64_t sub_100021CD4()
{
  result = qword_10003D9A0;
  if (!qword_10003D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9A0);
  }

  return result;
}

uint64_t sub_100021D2C()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002988C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002A0CC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000297AC();
  sub_10000FBA4(v6, qword_100041588);
  sub_10000FB6C(v6, qword_100041588);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_100021F60()
{
  v0 = sub_10002962C();
  sub_1000028EC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002900();
  v6 = v5 - v4;
  swift_getKeyPath();
  (*(v2 + 104))(v6, enum case for EquatableComparisonOperator.equalTo(_:), v0);
  sub_1000026A4(&qword_10003DA18, &qword_10002FC70);
  sub_100021CD4();
  sub_100005EEC(&qword_10003DA20, &qword_10003DA18, &qword_10002FC70, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100005EEC(&qword_10003DA28, &qword_10003D9D0, &qword_10002FC10, &protocol conformance descriptor for IntentParameter<A>);
  sub_10001B590();
  return sub_10002965C();
}

uint64_t sub_100022130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021F18();
  *a1 = result;
  return result;
}

uint64_t sub_10002215C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1000026A4(&qword_10003DA30, &qword_10002FC78);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000026A4(&qword_10003DA38, &qword_10002FC80);
  __chkstk_darwin(v2);
  v3 = sub_1000026A4(&qword_10003DA18, &qword_10002FC70);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100021CD4();
  sub_10002956C();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10002955C(v13);
  swift_getKeyPath();
  sub_1000026A4(&qword_10003DA40, &qword_10002FC88);
  sub_10002954C();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_10002955C(v14);
  swift_getKeyPath();
  sub_1000026A4(&qword_10003DA48, &qword_10002FCB8);
  sub_10002954C();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10002955C(v15);
  sub_10002957C();
  sub_10002953C();
  sub_100005EEC(&qword_10003DA20, &qword_10003DA18, &qword_10002FC70, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_1000295CC();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_1000295BC();
  return (v10)(v9, v3);
}

uint64_t sub_100022488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021F3C();
  *a1 = result;
  return result;
}

uint64_t sub_1000224B4@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1000026A4(&qword_10003DA30, &qword_10002FC78);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000026A4(&qword_10003DA38, &qword_10002FC80);
  __chkstk_darwin(v2);
  v3 = sub_1000026A4(&qword_10003DA18, &qword_10002FC70);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100021CD4();
  sub_10002956C();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10002955C(v13);
  swift_getKeyPath();
  sub_1000026A4(&qword_10003DA40, &qword_10002FC88);
  sub_10002954C();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_10002955C(v14);
  sub_10002957C();
  sub_10002953C();
  sub_100005EEC(&qword_10003DA20, &qword_10003DA18, &qword_10002FC70, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_1000295CC();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_1000295BC();
  return (v10)(v9, v3);
}

char *sub_100022794()
{
  v65 = sub_1000295AC();
  sub_1000028EC();
  v61 = v1;
  __chkstk_darwin(v2);
  sub_100002900();
  v66 = v4 - v3;
  v5 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v6 = sub_100002910(v5);
  v7 = __chkstk_darwin(v6);
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = v56 - v9;
  v10 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v11 = sub_100002910(v10);
  __chkstk_darwin(v11);
  v13 = v56 - v12;
  v14 = sub_10002978C();
  sub_1000028EC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100002900();
  v20 = v19 - v18;
  v21 = sub_10002988C();
  v22 = sub_100002910(v21);
  __chkstk_darwin(v22);
  sub_100002900();
  v23 = sub_10002A0CC();
  v24 = sub_100002910(v23);
  __chkstk_darwin(v24);
  sub_100002900();
  v27 = v26 - v25;
  sub_1000297AC();
  sub_100023A84();
  __chkstk_darwin(v28);
  sub_100002900();
  v31 = v30 - v29;
  v56[1] = sub_1000026A4(&qword_10003D9D0, &qword_10002FC10);
  sub_10002A05C();
  sub_10002987C();
  v32 = *(v16 + 104);
  v58 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v60 = v14;
  v57 = v32;
  v32(v20);
  v63 = v31;
  sub_100023A58(v27, 0x6E65746E49707041);
  v64 = v13;
  sub_10000B1A4();
  sub_1000026EC(v33, v34, v35, v0);
  if (qword_10003C918 != -1)
  {
    sub_100023A08(&qword_10003C918);
  }

  v68 = xmmword_100041540;
  *&v69 = qword_100041550;
  v36 = sub_10002931C();
  sub_10000B1A4();
  sub_1000026EC(v37, v38, v39, v36);
  sub_10000B1A4();
  sub_1000026EC(v40, v41, v42, v36);
  v43 = qword_10003C940;

  if (v43 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }

  v71[0] = qword_1000415B8;
  v59 = enum case for InputConnectionBehavior.default(_:);
  v61 = *(v61 + 104);
  (v61)(v66);
  sub_100023450();

  v67 = sub_1000293DC();
  v62 = sub_1000026A4(&qword_10003D9E0, &qword_10002FC18);
  sub_10002A05C();
  sub_10002987C();
  v57(v20, v58, v60);
  sub_100023A58(v27, 0x6E65746E49707041);
  sub_10000B1A4();
  sub_1000026EC(v44, v45, v46, v0);
  *&v68 = _swiftEmptyArrayStorage;
  sub_1000026A4(&qword_10003D9E8, &qword_10002FC20);
  v47 = *(sub_1000026A4(&qword_10003D9F0, &qword_10002FC28) - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10002D850;
  v51 = v50 + v49;
  v52 = enum case for IntentWidgetFamily.systemSmall(_:);
  sub_10002944C();
  sub_100023A84();
  v54 = *(v53 + 104);
  v54(v51, v52, v0);
  sub_10002945C();
  v54(v51 + v48, enum case for IntentWidgetFamily.systemMedium(_:), v0);
  sub_10002945C();
  v54(v51 + 2 * v48, enum case for IntentWidgetFamily.systemLarge(_:), v0);
  sub_10002945C();
  v54(v51 + 3 * v48, enum case for IntentWidgetFamily.systemExtraLarge(_:), v0);
  sub_10002945C();
  sub_10002946C();
  sub_1000234A4();
  sub_10002A02C();
  (v61)(v66, v59, v65);
  sub_100005EEC(&qword_10003DA00, &qword_10003DAC0, qword_10002E280, &protocol conformance descriptor for [A]);
  sub_10000FA50();
  sub_10002940C();
  sub_1000026A4(&qword_10003D278, &qword_10002F7C0);
  sub_10002924C();
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  sub_10002923C();
  sub_1000291FC();
  sub_1000026A4(&qword_10003DA08, &qword_10002FC38);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  sub_10002923C();
  sub_1000291FC();
  return v67;
}

uint64_t sub_100022F54()
{
  v0 = qword_10003D968;

  return v0;
}

unint64_t sub_100022F90()
{
  result = qword_10003D9A8;
  if (!qword_10003D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9A8);
  }

  return result;
}

unint64_t sub_100022FE8()
{
  result = qword_10003D9B0;
  if (!qword_10003D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9B0);
  }

  return result;
}

uint64_t sub_100023058@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C930 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_100041588);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023104(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100023674();
  *v4 = v2;
  v4[1] = sub_1000231B0;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000231B0()
{
  sub_100006164();
  sub_100013588();
  v2 = *v1;
  sub_1000134EC();
  *v3 = v2;

  if (v0)
  {
    sub_100006100();

    return v5();
  }

  return result;
}

char *sub_1000232A4@<X0>(char **a1@<X8>)
{
  result = sub_100022794();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000232D0(uint64_t a1)
{
  v2 = sub_1000233FC();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10002330C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023318(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000233FC()
{
  result = qword_10003D9C8;
  if (!qword_10003D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9C8);
  }

  return result;
}

unint64_t sub_100023450()
{
  result = qword_10003D9D8;
  if (!qword_10003D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9D8);
  }

  return result;
}

unint64_t sub_1000234A4()
{
  result = qword_10003D9F8;
  if (!qword_10003D9F8)
  {
    sub_10002944C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9F8);
  }

  return result;
}

uint64_t sub_10002351C()
{
  if (qword_10003C940 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }

  **(v0 + 16) = qword_1000415B8;
  sub_100013594();
  v3 = v1;

  return v3();
}

uint64_t sub_1000235D0()
{
  if (qword_10003C8C0 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_100041488;
  sub_100013594();
  v3 = v1;

  return v3();
}

unint64_t sub_100023674()
{
  result = qword_10003DA10;
  if (!qword_10003DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA10);
  }

  return result;
}

void *sub_100023730(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, int64_t, void *))
{
  v10 = result;
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    goto LABEL_8;
  }

  v11 = *(a4 + 24);
  v12 = v11 >> 1;
  if ((v11 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v12 + 0x4000000000000000 >= 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v12 = a2;
    }

LABEL_8:
    v13 = *(a4 + 16);
    if (v12 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1000026A4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 24);
      if (v10)
      {
LABEL_13:
        a8(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v15;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100023840(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100023904(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_100023904(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_100023730(result, v7, a2 & 1, v5, &qword_10003D338, &unk_10002E670, &unk_10003A430, sub_100012B98);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100023998(uint64_t a1)
{
  v2 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023A08(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100023A58(uint64_t a1, uint64_t a2)
{

  return sub_1000297BC();
}

unint64_t sub_100023A9C()
{
  result = qword_10003DA70;
  if (!qword_10003DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA70);
  }

  return result;
}

unint64_t sub_100023AF4()
{
  result = qword_10003DA78;
  if (!qword_10003DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA78);
  }

  return result;
}

uint64_t sub_100023BB4(__int128 *a1)
{
  v30 = a1[1];
  v31 = *a1;
  v29 = a1[2];
  v28 = *(a1 + 6);
  v2 = sub_1000295AC();
  sub_1000028EC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002900();
  v8 = v7 - v6;
  v9 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v10 = sub_100002910(v9);
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v12 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v13 = sub_100002910(v12);
  __chkstk_darwin(v13);
  v14 = sub_1000297AC();
  __chkstk_darwin(v14);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002846C();
  sub_10002977C();
  sub_10000B1A4();
  sub_1000026EC(v15, v16, v17, v14);
  v18 = sub_10002931C();
  *&v19 = sub_100028460();
  v35 = v19;
  v36 = 0;
  sub_10000B1A4();
  sub_1000026EC(v20, v21, v22, v18);
  sub_10000B1A4();
  sub_1000026EC(v23, v24, v25, v18);
  if (qword_10003C940 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }

  v32[0] = qword_1000415B8;
  (*(v4 + 104))(v8, enum case for InputConnectionBehavior.default(_:), v2);
  sub_100026E64();

  v26 = sub_1000293DC();
  sub_1000026A4(&qword_10003DA08, &qword_10002FC38);
  sub_10002924C();
  sub_100028460();

  sub_10002923C();
  sub_1000283D0();
  sub_1000291FC();
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v36 = v28;

  sub_10000AFDC(a1, v32);
  sub_1000293AC();
  sub_1000282D8(a1);

  return v26;
}

uint64_t sub_100023F1C()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002988C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002A0CC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000297AC();
  sub_10000FBA4(v6, qword_1000415A0);
  sub_10000FB6C(v6, qword_1000415A0);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_10002410C()
{
  v0 = sub_1000295AC();
  sub_1000028EC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002900();
  v6 = v5 - v4;
  v7 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v8 = sub_100002910(v7);
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v11 = sub_100002910(v10);
  __chkstk_darwin(v11);
  v12 = sub_1000297AC();
  __chkstk_darwin(v12);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002846C();
  sub_10002977C();
  sub_10000B1A4();
  sub_1000026EC(v13, v14, v15, v12);
  v16 = sub_10002931C();
  sub_100028460();
  sub_10000B1A4();
  sub_1000026EC(v17, v18, v19, v16);
  sub_10000B1A4();
  sub_1000026EC(v20, v21, v22, v16);
  if (qword_10003C940 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }

  (*(v2 + 104))(v6, enum case for InputConnectionBehavior.default(_:), v0);
  sub_100026E64();

  v23 = sub_1000293DC();
  sub_1000026A4(&qword_10003DA08, &qword_10002FC38);
  sub_10002924C();
  sub_100028460();
  sub_10002923C();
  sub_1000283D0();
  sub_1000291FC();
  return v23;
}

uint64_t sub_1000243F8()
{
  sub_100006164();
  v0[72] = v1;
  v0[71] = v2;
  v0[70] = v3;
  v4 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v4);
  v0[73] = swift_task_alloc();
  v5 = sub_1000283C0();

  return _swift_task_switch(v5);
}

uint64_t sub_10002448C(uint64_t a1)
{
  v2 = (v1 + 568);
  sub_10002939C();
  if (*(v1 + 400))
  {
    v4 = *(v1 + 440);
    v3 = *(v1 + 448);
    sub_10002933C();
    if (!*(v1 + 520))
    {
      v7 = sub_100028370();
      v12 = v4;
      goto LABEL_6;
    }

    v52 = v4;
    sub_100028454();
    v51 = sub_10002981C();
    v6 = v5;

    if (v6 >> 60 == 15)
    {
      v7 = sub_100028370();
      v12 = v52;
LABEL_6:
      sub_10000AD20(v7, v8, v9, v10, v11, v12, v3);
      goto LABEL_8;
    }

    sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr);
    sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr);
    v13 = sub_10002A20C();
    *(v1 + 592) = v13;
    v37 = v13;
    v38 = sub_100028370();
    sub_10000AD20(v38, v39, v40, v41, v42, v52, v3);
    sub_10000ADEC(v51, v6);
    v2 = (v1 + 568);
    if (v37)
    {
      v43 = [objc_allocWithZone(WFSystemActionRunnerClient) initWithSystemAction:v37];
      *(v1 + 600) = v43;
      if (!v43)
      {
        sub_10002932C();

        sub_1000283A0();
        sub_100028480();

        __asm { BRAA            X1, X16 }
      }

      v44 = v43;
      *(v1 + 552) = 0;
      v45 = swift_task_alloc();
      *(v1 + 608) = v45;
      v46 = *(v1 + 568);
      *(v45 + 16) = v1 + 552;
      *(v45 + 24) = v46;
      *(v45 + 40) = v44;
      *(v45 + 48) = v37;
      v47 = swift_task_alloc();
      *(v1 + 616) = v47;
      *v47 = v1;
      v47[1] = sub_1000249A4;
      sub_1000283F4();
      goto LABEL_10;
    }
  }

LABEL_8:
  sub_10002939C();
  v14 = *(v1 + 456);
  *(v1 + 632) = v14;
  v15 = *(v1 + 480);
  *(v1 + 640) = *(v1 + 464);
  *(v1 + 656) = v15;
  *(v1 + 672) = *(v1 + 496);
  if (v14)
  {
    v53 = *v2;
    sub_10002933C();
    v16 = *(v1 + 528);
    v17 = *(v1 + 536);
    *(v1 + 688) = v17;
    sub_10000ADAC(0, &qword_10003DBD8, WFWidgetWorkflowRunnerClient_ptr);

    v18 = sub_100025BA8(v16, v17, 1);
    *(v1 + 696) = v18;
    *(v1 + 544) = 0;
    v19 = swift_task_alloc();
    *(v1 + 704) = v19;
    *(v19 + 16) = v1 + 544;
    *(v19 + 24) = v53;
    *(v19 + 40) = v18;
    *(v19 + 48) = v16;
    *(v19 + 56) = v17;
    v20 = swift_task_alloc();
    *(v1 + 712) = v20;
    *v20 = v1;
    v20[1] = sub_100024B2C;
    sub_1000283F4();
LABEL_10:
    sub_100028480();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  v22 = *(v1 + 584);
  v23 = sub_10002A0EC();
  v25 = v24;
  v26 = sub_10002A02C();
  sub_10002980C();
  sub_10000B1A4();
  sub_1000026EC(v27, v28, v29, v30);
  v31 = objc_allocWithZone(WFAppLaunchRequest);
  v32 = sub_100005830(v23, v25, v26, v22, 0, 0);
  *(v1 + 728) = v32;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 768;
  *(v1 + 24) = sub_100024D10;
  v33 = swift_continuation_init();
  v34 = sub_1000026A4(&qword_10003CAB0, &unk_10002D520);
  *(v1 + 736) = v34;
  *(v1 + 264) = v34;
  *(v1 + 208) = _NSConcreteStackBlock;
  *(v1 + 216) = 1107296256;
  *(v1 + 224) = sub_1000053E8;
  *(v1 + 232) = &unk_10003A838;
  *(v1 + 240) = v33;
  [v32 performWithCompletionHandler:v1 + 208];
  sub_100028480();

  return _swift_continuation_await(v35);
}

uint64_t sub_1000249A4()
{
  sub_100006164();
  sub_100013588();
  v3 = v2;
  sub_100006178();
  *v4 = v3;
  v5 = *v1;
  sub_1000134EC();
  *v6 = v5;
  *(v3 + 624) = v0;

  if (!v0)
  {
  }

  sub_100006198();

  return _swift_task_switch(v7);
}

uint64_t sub_100024AA8()
{
  sub_100006158();
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);

  sub_10002932C();

  sub_1000283A0();

  return v3();
}

uint64_t sub_100024B2C()
{
  sub_100006164();
  sub_100013588();
  v3 = v2;
  sub_100006178();
  *v4 = v3;
  v5 = *v1;
  sub_1000134EC();
  *v6 = v5;
  *(v3 + 720) = v0;

  if (!v0)
  {
  }

  sub_100006198();

  return _swift_task_switch(v7);
}

uint64_t sub_100024C3C()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);

  sub_10002932C();
  sub_10000AD20(v8, v7, v6, v5, v4, v3, v2);

  sub_1000283A0();

  return v9();
}

uint64_t sub_100024D10()
{
  sub_100006164();
  sub_100013588();
  sub_100006178();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 744) = *(v3 + 48);
  sub_100006198();

  return _swift_task_switch(v4);
}

uint64_t sub_100024E10()
{
  sub_100006158();
  if ((*(v0 + 768) & 1) != 0 || !VCIsDeviceLocked())
  {
    v3 = *(v0 + 728);
    sub_10002932C();

    sub_1000283A0();

    return v4();
  }

  else
  {
    v1 = [objc_allocWithZone(WFCompactUnlockService) init];
    *(v0 + 752) = v1;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 769;
    *(v0 + 88) = sub_100024F98;
    v2 = swift_continuation_init();
    *(v0 + 328) = sub_1000026A4(&qword_10003DBD0, &qword_100030090);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1000054E0;
    *(v0 + 296) = &unk_10003A860;
    *(v0 + 304) = v2;
    [v1 requestUnlockIfNeeded:v0 + 272];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100024F98()
{
  sub_100006164();
  v1 = *v0;
  sub_1000134EC();
  *v2 = v1;
  sub_100006198();

  return _swift_task_switch(v3);
}

uint64_t sub_100025068()
{
  sub_100006158();
  if (*(v0 + 769) == 1)
  {
    v1 = *(v0 + 736);
    v2 = *(v0 + 728);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 770;
    *(v0 + 152) = sub_1000251C4;
    v3 = swift_continuation_init();
    *(v0 + 392) = v1;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1000053E8;
    *(v0 + 360) = &unk_10003A888;
    *(v0 + 368) = v3;
    [v2 performWithCompletionHandler:v0 + 336];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    v4 = *(v0 + 728);
    sub_10002932C();

    sub_1000283A0();

    return v5();
  }
}

uint64_t sub_1000251C4()
{
  sub_100006164();
  sub_100013588();
  sub_100006178();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 760) = *(v3 + 176);
  sub_100006198();

  return _swift_task_switch(v4);
}

uint64_t sub_1000252C4()
{
  sub_100006164();

  v1 = *(v0 + 728);
  sub_10002932C();

  sub_1000283A0();

  return v2();
}

uint64_t sub_100025334()
{
  sub_100006164();
  v1 = *(v0 + 592);

  sub_100006100();

  return v2();
}

uint64_t sub_1000253B4()
{
  sub_100006158();
  v1 = *(v0 + 696);
  sub_10000AD20(*(v0 + 632), *(v0 + 640), *(v0 + 648), *(v0 + 656), *(v0 + 664), *(v0 + 672), *(v0 + 680));

  sub_100006100();

  return v2();
}

uint64_t sub_100025460()
{
  sub_100006158();
  v1 = *(v0 + 728);
  swift_willThrow();

  sub_100006100();

  return v2();
}

uint64_t sub_1000254D4()
{
  sub_100006158();
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  swift_willThrow();

  sub_100006100();

  return v3();
}

uint64_t sub_100025550(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  v15 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  (*(v18 + 16))(v29 - v16, a1);
  sub_1000291EC();
  v19 = v29[1];
  v20 = objc_allocWithZone(type metadata accessor for RunShortcutIntent.RunnerClientDelegate(0));
  v21 = sub_100025FA8(v17, v19);
  v22 = *a2;
  *a2 = v21;
  v23 = v21;

  [a5 setDelegate:v23];
  v24 = sub_10002A1CC();
  sub_1000026EC(v14, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a6;
  v25[7] = a5;

  v26 = a6;
  v27 = a5;
  sub_100025904(0, 0, v14, &unk_1000300A0, v25);
}

uint64_t sub_100025768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  return _swift_task_switch(sub_10002578C);
}

uint64_t sub_10002578C()
{
  sub_100006158();
  v1 = v0[4];
  sub_1000291EC();
  v0[6] = v0[2];
  v2 = [v1 identifier];
  v3 = sub_10002A0EC();
  v5 = v4;

  v0[7] = v3;
  v0[8] = v5;
  sub_100028454();

  return _swift_task_switch(v6);
}

uint64_t sub_100025830()
{
  sub_100006164();
  sub_100006490(*(v0 + 56), *(v0 + 64));

  v1 = sub_1000283C0();

  return _swift_task_switch(v1);
}

uint64_t sub_1000258A4()
{
  sub_100006164();
  [*(v0 + 40) start];
  sub_100006100();

  return v1();
}

uint64_t sub_100025904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100027A5C(a3, v24 - v10);
  v12 = sub_10002A1CC();
  v13 = sub_100002984(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100027ACC(v11);
  }

  else
  {
    sub_10002A1BC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10002A17C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10002A0FC() + 32;
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

      sub_100027ACC(a3);

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

  sub_100027ACC(a3);
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

id sub_100025BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_10002A0DC();

  v6 = [v4 initWithWorkflowIdentifier:v5 location:a3];

  return v6;
}

uint64_t sub_100025C24(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v17 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  __chkstk_darwin(v17);
  v19 = v30 - v18;
  (*(v20 + 16))(v30 - v18, a1);
  sub_1000291EC();
  v21 = v30[1];
  v22 = objc_allocWithZone(type metadata accessor for RunShortcutIntent.RunnerClientDelegate(0));
  v23 = sub_100025FA8(v19, v21);
  v24 = *a2;
  *a2 = v23;
  v25 = v23;

  [a5 setDelegate:v25];
  v26 = sub_10002A1CC();
  sub_1000026EC(v16, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a3;
  v27[5] = a4;
  v27[6] = a6;
  v27[7] = a7;
  v27[8] = a5;

  v28 = a5;
  sub_100025904(0, 0, v16, &unk_1000300B0, v27);
}

uint64_t sub_100025E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  return _swift_task_switch(sub_100025E74);
}

uint64_t sub_100025E74()
{
  sub_100006164();
  sub_1000291EC();
  *(v0 + 56) = *(v0 + 16);

  return _swift_task_switch(sub_100025EE0);
}

uint64_t sub_100025EE0()
{
  sub_100006164();
  sub_100006490(*(v0 + 32), *(v0 + 40));

  v1 = sub_1000283C0();

  return _swift_task_switch(v1);
}

uint64_t sub_100025F48()
{
  sub_100006164();
  [*(v0 + 48) start];
  sub_100006100();

  return v1();
}

id sub_100025FA8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_continuation;
  v6 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RunShortcutIntent.RunnerClientDelegate(0);
  v8 = objc_msgSendSuper2(&v10, "init");
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t sub_100026094(void *a1, void *a2)
{
  v5 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_10002A1CC();
  sub_1000026EC(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;
  v10 = a2;
  v11 = v2;
  v12 = a1;
  sub_100025904(0, 0, v7, &unk_100030060, v9);
}

uint64_t sub_100026190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000261B4);
}

uint64_t sub_1000261B4()
{
  sub_100006158();
  v1 = objc_opt_self();
  v2 = sub_10002849C(v1);
  v3 = *(v0 + 24);
  if (v2)
  {
    if (v3)
    {
      v4 = v2;
      v5 = *(v0 + 16);
      v6 = v3;
      v7 = sub_100027F30([v4 context]);
      *(v0 + 40) = v8;
      if (v8)
      {
        v9 = *(v0 + 32);
        *(v0 + 48) = v7;
        *(v0 + 56) = *(v9 + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);

LABEL_8:
        sub_100028454();

        return _swift_task_switch(v22);
      }
    }
  }

  else
  {
    v10 = objc_opt_self();
    v11 = sub_10002849C(v10);
    if (v11 && v3)
    {
      v12 = v11;
      v13 = *(v0 + 24);
      v14 = *(v0 + 16);
      *(v0 + 64) = *(*(v0 + 32) + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);
      v15 = v14;
      v16 = v13;

      v17 = [v12 action];
      v18 = [v17 identifier];

      v19 = sub_10002A0EC();
      v21 = v20;

      *(v0 + 72) = v19;
      *(v0 + 80) = v21;
      goto LABEL_8;
    }
  }

  sub_100006100();

  return v23();
}

uint64_t sub_100026378()
{
  sub_100006164();
  sub_100006708(*(v0 + 24), *(v0 + 48), *(v0 + 40));

  v1 = sub_1000283C0();

  return _swift_task_switch(v1);
}

uint64_t sub_1000263F0()
{
  sub_100006164();
  v1 = *(v0 + 24);

  sub_100006100();

  return v2();
}

uint64_t sub_10002644C()
{
  sub_100006164();
  sub_100006708(*(v0 + 24), *(v0 + 72), *(v0 + 80));

  v1 = sub_1000283C0();

  return _swift_task_switch(v1);
}

uint64_t sub_100026540(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10002A1CC();
  sub_1000026EC(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = v3;
  v11 = a1;
  swift_errorRetain();
  v12 = v3;
  sub_100025904(0, 0, v8, &unk_100030030, v10);
}

uint64_t sub_100026640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100026710);
}

uint64_t sub_100026710()
{
  v1 = objc_opt_self();
  v2 = sub_10002849C(v1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 32);
    *(v0 + 80) = sub_100027F30([v3 context]);
    *(v0 + 88) = v5;
    if (v5)
    {
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v8 = *(v0 + 56);
      v9 = *(v0 + 40);
      v10 = sub_100028388();
      v11(v10);
      if (v9)
      {
        *(v0 + 24) = v9;
        swift_errorRetain();
        sub_10002A18C();
      }

      else
      {
        sub_10002A19C();
      }

      (*(v7 + 8))(v6, v8);
      *(v0 + 96) = *(*(v0 + 48) + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);
LABEL_16:

      sub_100028454();

      return _swift_task_switch(v32);
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = sub_10002849C(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 40);
      v16 = *(v0 + 32);
      v17 = [v14 action];
      v18 = [v17 identifier];

      v19 = sub_10002A0EC();
      v21 = v20;

      *(v0 + 104) = v19;
      *(v0 + 112) = v21;
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      v24 = *(v0 + 56);
      if (v15)
      {
        v25 = *(v0 + 40);
        v26 = sub_100028388();
        v27(v26);
        *(v0 + 16) = v25;
        swift_errorRetain();
        sub_10002A18C();
      }

      else
      {
        v30 = sub_100028388();
        v31(v30);
        sub_10002A19C();
      }

      (*(v23 + 8))(v22, v24);
      *(v0 + 120) = *(*(v0 + 48) + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);
      goto LABEL_16;
    }
  }

  sub_100006100();

  return v28();
}

uint64_t sub_1000269B0()
{
  sub_100006164();
  sub_100006A98(*(v0 + 80), *(v0 + 88));

  v1 = sub_1000283C0();

  return _swift_task_switch(v1);
}

uint64_t sub_100026A24()
{
  sub_100006164();

  sub_100006100();

  return v1();
}

uint64_t sub_100026A84()
{
  sub_100006164();
  sub_100006A98(*(v0 + 104), *(v0 + 112));

  v1 = sub_1000283C0();

  return _swift_task_switch(v1);
}

id sub_100026BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunShortcutIntent.RunnerClientDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100026CA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C938 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_1000415A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100026D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100023A00;

  return sub_1000243F8();
}

uint64_t sub_100026DFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002410C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100026E24(uint64_t a1)
{
  v2 = sub_1000135A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100026E64()
{
  result = qword_10003DA88;
  if (!qword_10003DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA88);
  }

  return result;
}

uint64_t sub_100026EB8()
{
  sub_100006164();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_10002834C;

  return sub_10001142C(v2);
}

uint64_t sub_100026F4C()
{
  sub_100006158();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10002834C;

  return sub_10001160C(v4, v2);
}

uint64_t sub_100026FF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1000283C0();
  return _swift_task_switch(v2);
}

uint64_t sub_100027018()
{
  sub_100006164();
  v1 = sub_1000117BC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100027078(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100027128;

  return sub_100026F4C();
}

uint64_t sub_100027128()
{
  sub_100006158();
  v3 = v2;
  sub_100013588();
  v5 = v4;
  sub_100006178();
  *v6 = v5;
  v7 = *v1;
  sub_1000134EC();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_100027228()
{
  result = qword_10003DA90;
  if (!qword_10003DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA90);
  }

  return result;
}

unint64_t sub_100027280()
{
  result = qword_10003DA98;
  if (!qword_10003DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA98);
  }

  return result;
}

uint64_t sub_1000272D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002834C;

  return sub_100026EB8();
}

uint64_t sub_100027370(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100028348;

  return sub_100026FF0(v3);
}

uint64_t sub_100027408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000274C8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000274C8()
{
  sub_100006164();
  v3 = v2;
  sub_100013588();
  v4 = *v1;
  sub_1000134EC();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_1000275BC()
{
  result = qword_10003DAA8;
  if (!qword_10003DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DAA8);
  }

  return result;
}

uint64_t sub_100027614(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100026E64();
  *v5 = v2;
  v5[1] = sub_10001B928;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000276C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001B928;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t type metadata accessor for RunShortcutIntent.RunnerClientDelegate(uint64_t a1)
{
  result = qword_10003DB60;
  if (!qword_10003DB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000277D0(uint64_t a1)
{
  sub_10002786C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002786C(uint64_t a1)
{
  if (!qword_10003DB70)
  {
    sub_1000028A4(&qword_10003CAE0, &qword_10002D798);
    v1 = sub_10002A1AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10003DB70);
    }
  }
}

unint64_t sub_100027908()
{
  result = qword_10003DB80;
  if (!qword_10003DB80)
  {
    sub_1000028A4(&qword_10003CAD0, &qword_10002D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB80);
  }

  return result;
}

uint64_t sub_10002796C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000279BC()
{
  sub_100028424();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1000283B0(v2);
  *v3 = v4;
  v5 = sub_100028350(v3);

  return sub_100026640(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_100027A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027ACC(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027B54()
{
  sub_100006158();
  if (qword_10003C8C0 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_100041488;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027BF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027CF0;

  return v6(a1);
}

uint64_t sub_100027CF0()
{
  sub_100006164();
  sub_100013588();
  v1 = *v0;
  sub_1000134EC();
  *v2 = v1;

  sub_1000283A0();

  return v3();
}

uint64_t sub_100027DD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027E08()
{
  sub_100006158();
  v0 = swift_task_alloc();
  v1 = sub_1000283B0(v0);
  *v1 = v2;
  v3 = sub_100028434(v1);

  return v4(v3);
}

uint64_t sub_100027E9C()
{
  sub_100006158();
  v0 = swift_task_alloc();
  v1 = sub_1000283B0(v0);
  *v1 = v2;
  v3 = sub_100028434(v1);

  return v4(v3);
}

uint64_t sub_100027F30(void *a1)
{
  v2 = [a1 workflowIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_100027FA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027FF0()
{
  sub_100028424();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1000283B0(v2);
  *v3 = v4;
  v5 = sub_100028350(v3);

  return sub_100026190(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1000280C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100028120()
{
  sub_100028424();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_1000283B0(v3);
  *v4 = v5;
  v6 = sub_100028350(v4);

  return sub_100025768(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_1000281CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100028224()
{
  sub_100028424();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_1000283B0(v4);
  *v5 = v6;
  v7 = sub_100028350(v5);

  return sub_100025E50(v7, v8, v9, v10, v11, v1, v2, v3);
}

double sub_100028460()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_10002849C(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_1000284B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  isa = sub_10002A15C().super.isa;
  LOWORD(v9) = 0;
  v4 = [v2 visibleReferencesForWorkflowIDs:isa sortBy:0 nameContaining:0 nameEqualing:0 hasAssociatedAppBundleIdentifier:0 associatedAppBundleIdentifier:0 isRecentlyModified:v9 isRecentlyRun:0 limitTo:?];

  v5 = [v4 descriptors];
  v6 = sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v7 = sub_100028FB8(v6);

  return v7;
}

uint64_t sub_100028574(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x726F68732D6C6C61;
  }

  if (v2)
  {
    v4 = 0xED00007374756374;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x726F68732D6C6C61;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED00007374756374;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002A31C();
  }

  return v8 & 1;
}

uint64_t sub_10002861C(unsigned __int8 a1, char a2)
{
  v2 = 1953460082;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6465636E61766461;
    }

    else
    {
      v4 = 0x746F4E6C6167656CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEC00000073656369;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1953460082;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6465636E61766461;
    }

    else
    {
      v2 = 0x746F4E6C6167656CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC00000073656369;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002A31C();
  }

  return v8 & 1;
}

id sub_100028724()
{
  v1 = [objc_allocWithZone(WFWorkflowQuery) initWithLocation:0];
  [v1 setResultsLimit:1];
  v2 = [*(v0 + 16) sortedWorkflowsWithQuery:v1];
  v3 = [v2 descriptors];

  sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v4 = sub_10002A16C();

  if (sub_1000134BC(v4))
  {
    sub_100012CC8(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_10002A26C();
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_100028844()
{
  v1 = [*(v0 + 16) sortedVisibleWorkflowsByNameWithLimit:300];
  v2 = [v1 descriptors];
  v3 = sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v4 = sub_100028FB8(v3);

  return v4;
}

uint64_t sub_1000288CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_10002A0DC();
  LOWORD(v10) = 0;
  v5 = [v3 visibleReferencesForWorkflowIDs:0 sortBy:0 nameContaining:v4 nameEqualing:0 hasAssociatedAppBundleIdentifier:0 associatedAppBundleIdentifier:0 isRecentlyModified:v10 isRecentlyRun:300 limitTo:?];

  v6 = [v5 descriptors];
  v7 = sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v8 = sub_100028FB8(v7);

  return v8;
}

uint64_t sub_100028988()
{
  v1 = [*(v0 + 16) sortedVisibleFolders];
  v2 = [v1 descriptors];

  v3 = sub_10000ADAC(0, &qword_10003DD10, WFWorkflowCollection_ptr);
  v4 = sub_100028FB8(v3);

  return v4;
}

uint64_t sub_100028A04()
{
  type metadata accessor for ShortcutsWidgetDataSource();
  v0 = swift_allocObject();
  result = sub_100028A40();
  qword_1000415B8 = v0;
  return result;
}

uint64_t sub_100028A40()
{
  v1 = v0;
  v2 = sub_10002995C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  *(v0 + 24) = 300;
  v9 = [objc_opt_self() currentProcess];
  sub_1000026A4(&qword_10003DCF8, &unk_100030100);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000300C0;
  sub_10000ADAC(0, &qword_10003DD00, RBSDomainAttribute_ptr);
  *(v10 + 32) = sub_100028E20(0xD000000000000013, 0x800000010002B050, 0xD000000000000011, 0x800000010002B3D0);
  v11 = objc_allocWithZone(RBSAssertion);
  v12 = sub_100028F10(0xD000000000000013, 0x800000010002B3B0, v9, v10);
  v23 = 0;
  if ([v12 acquireWithError:&v23])
  {
    v13 = v23;
  }

  else
  {
    v14 = v23;
    sub_10002976C();

    swift_willThrow();
    sub_10002992C();
    v15 = sub_10002994C();
    v16 = sub_10002A1DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to acquire database initialization assertion", v17, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  if ([objc_opt_self() initializeProcessWithDatabase:1])
  {
    sub_10002992C();
    v18 = sub_10002994C();
    v19 = sub_10002A1EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to initialize database", v20, 2u);
    }

    (*(v3 + 8))(v8, v2);
  }

  *(v1 + 16) = [objc_opt_self() defaultDatabase];
  WFWorkflowIconDrawerGloballyCacheDrawerContext();
  [v12 invalidate];

  return v1;
}

id sub_100028E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10002A0DC();

  v5 = sub_10002A0DC();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

uint64_t sub_100028EB4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_100028F10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10002A0DC();

  sub_10000ADAC(0, &qword_10003DD08, RBSAttribute_ptr);
  isa = sub_10002A15C().super.isa;

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:isa];

  return v8;
}

uint64_t sub_100028FB8(uint64_t a1)
{

  return sub_10002A16C();
}

id sub_100028FF4(void *a1)
{
  v1 = a1;
  v2 = sub_100029060();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id sub_100029060()
{
  if (qword_100041478 != -1)
  {
    dispatch_once(&qword_100041478, &stru_10003A920);
  }

  v1 = qword_100041470;

  return v1;
}

void sub_1000290B4(id a1)
{
  memset(&v5, 0, sizeof(v5));
  if (dladdr(sub_100029060, &v5) && v5.dli_fname)
  {
    v1 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v2 = _CFBundleCopyBundleURLForExecutableURL();
    v3 = [NSBundle bundleWithURL:v2];
    v4 = qword_100041470;
    qword_100041470 = v3;
  }

  else
  {
    v1 = getWFGeneralLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}