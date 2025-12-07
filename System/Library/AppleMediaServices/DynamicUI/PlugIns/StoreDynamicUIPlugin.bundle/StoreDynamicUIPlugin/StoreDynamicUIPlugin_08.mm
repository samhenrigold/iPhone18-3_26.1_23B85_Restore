uint64_t sub_CF3F8@<X0>(uint64_t *a1@<X8>)
{
  v5[3] = &type metadata for DefaultLayoutCollectionSpacingModel;
  v5[4] = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x58uLL);
  sub_CEF60(v5);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v5, 0x108uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_CF570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_CF3F8(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_CF61C()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_CF6AC()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

_BYTE *storeEnumTagSinglePayload for PFODSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0xCF860);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PFODSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xCF934);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_CF970()
{
  result = qword_19F688;
  if (!qword_19F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F688);
  }

  return result;
}

unint64_t sub_CF9C8()
{
  result = qword_19F690;
  if (!qword_19F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F690);
  }

  return result;
}

uint64_t sub_CFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_CFADC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlatterList(uint64_t a1)
{
  result = qword_19F6F0;
  if (!qword_19F6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_CFBB4(uint64_t a1)
{
  sub_CFCA0();
  if (v1 <= 0x3F)
  {
    sub_248F4(319, &qword_19CA30, &qword_19CA38, &unk_144318);
    if (v2 <= 0x3F)
    {
      sub_54D0(319);
      if (v3 <= 0x3F)
      {
        sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_CFCA0()
{
  if (!qword_19F700)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19F700);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlatterListLayout(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xCFDBCLL);
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

uint64_t sub_CFDF4(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184A48;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CFE48(char a1)
{
  if (a1)
  {
    return 0x64656B63617473;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_CFEA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CFDF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_CFED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_CFE48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_CFF08()
{
  result = qword_19F740;
  if (!qword_19F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F740);
  }

  return result;
}

void sub_CFFB0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_13B584();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v13);
  v47 = &v47 - v14;
  v15 = type metadata accessor for PlatterList(0);
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v59 = a1;
  v54 = a1;
  v19 = sub_9DB8(0x7372657474616C70, 0xE800000000000000, v15, sub_D0678, v53);
  if (v2)
  {

    v25 = 0;
  }

  else
  {
    v25 = v19;
  }

  *(v18 + 1) = v25;
  sub_730C(0x74756F79616CLL, 0xE600000000000000, v15, v20, v21, v22, v23, v24);
  *v18 = v26 & 1;
  *&v56 = sub_BB310();
  *(&v56 + 1) = v27;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_7738(v11, v59, v28);
  if (sub_52E0(v6, 1, v12) == 1)
  {
    sub_928C(v6, &qword_19A420, &unk_13F430);
LABEL_7:
    v29 = sub_13BAB4();
    sub_D0788();
    sub_D0680(v30, v31, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v32 = 0xD000000000000011;
    v32[1] = 0x800000000014E730;
    v32[2] = v15;
    (*(*(v29 - 8) + 104))(v32, enum case for JSONError.missingProperty(_:), v29);
    swift_willThrow();
    v33 = *(v51 + 8);
    v33(v11, v52);

    v34 = sub_13B7A4();
    v35 = v47;
    sub_53A8(v47, 1, 1, v34);
    goto LABEL_9;
  }

  v33 = *(v51 + 8);
  v33(v11, v52);
  v35 = v47;
  sub_92E4(v6, v47);
LABEL_9:
  sub_92E4(v35, &v18[*(v15 + 28)]);
  v36 = v48;
  sub_13B594();
  if (sub_13B564())
  {
    v38 = sub_13BAB4();
    sub_D0788();
    sub_D0680(v39, v40, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v41 = 0x6575676573;
    v41[1] = 0xE500000000000000;
    v41[2] = v15;
    (*(*(v38 - 8) + 104))(v41, enum case for JSONError.missingProperty(_:), v38);
    swift_willThrow();

    v42 = sub_D07A0();
    (v33)(v42);
    v33(v36, v38);

    v58 = 0;
    v56 = 0u;
    v57 = 0u;
  }

  else
  {
    v37 = inited;
    sub_139BC4();

    v46 = sub_D07A0();
    (v33)(v46);
    v33(v36, v37);
    sub_9414(&v55, &v56);
  }

  v43 = &v18[*(v15 + 32)];
  v44 = v57;
  *v43 = v56;
  *(v43 + 1) = v44;
  *(v43 + 4) = v58;
  sub_D06C8(v18, v49);
  sub_13B5A4();
  sub_9F94();
  (*(v45 + 8))(v59);
  sub_D072C(v18);
}

uint64_t sub_D0680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_D06C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D072C(uint64_t a1)
{
  v2 = type metadata accessor for PlatterList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_D07B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_4948(&qword_19F9F0, &qword_149910);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_objectGraph) = a3;
  swift_retain_n();

  sub_D0C40(a3);

  sub_4948(&qword_19F9F8, &qword_149918);
  sub_13B5F4();
  v9 = type metadata accessor for PlatterList(0);
  sub_53A8(v8, 0, 1, v9);
  sub_D0DF8(v8);

  return result;
}

uint64_t sub_D08F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PlatterListComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_D0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PlatterListComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_D09C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_D0A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_D0A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_D0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

double sub_D0B88()
{
  swift_getKeyPath();
  sub_D1C1C();
  v3 = sub_D1950(v1, v2, &unk_1498C8);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return result;
}

double sub_D0C40(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_D151C(KeyPath, sub_3DE24, &v5);

  return result;
}

uint64_t sub_D0CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_D1C1C();
  v6 = sub_D1950(v4, v5, &unk_1498C8);
  sub_101F0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_139874();

  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__platter;
  swift_beginAccess();
  return sub_D1B7C(v2 + v14, a1);
}

uint64_t sub_D0D64(uint64_t a1)
{
  v2 = sub_4948(&qword_19F9F0, &qword_149910);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_D1B7C(a1, &v6 - v3);
  return sub_D0DF8(v4);
}

uint64_t sub_D0DF8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_D151C(KeyPath, sub_D1AF0, &v5);

  return sub_D1998(a1);
}

uint64_t sub_D0E6C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__platter;
  swift_beginAccess();
  sub_D1B0C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_D0ED8()
{
  swift_getKeyPath();
  sub_D1C1C();
  v3 = sub_D1950(v1, v2, &unk_1498C8);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__selectedIndex);
}

double sub_D0F68(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__selectedIndex) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[2] = v1;
    v6[3] = a1;
    sub_D151C(v4, sub_D1AB4, v6);
  }

  return result;
}

unint64_t sub_D1014()
{
  v0 = type metadata accessor for CarouselCell(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  sub_9EC0();
  v4 = v3 - v2;
  v5 = type metadata accessor for PlatterList(0);
  sub_9F94();
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_4948(&qword_19F9F0, &qword_149910);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  sub_D0CB4(&v18 - v11);
  if (sub_52E0(v12, 1, v5))
  {
    sub_D1998(v12);
    return 0;
  }

  sub_D1C34();
  sub_D1A00(v12, v9, v14);
  sub_D1998(v12);
  v15 = *(v9 + 8);

  sub_D072C(v9);
  if (!v15)
  {
    return 0;
  }

  sub_D0B88();
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  result = sub_D0ED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v15 + 16))
  {
    sub_D1A00(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * result, v4, type metadata accessor for CarouselCell);

    type metadata accessor for AppleOneOfferPlatterModel(0);
    swift_allocObject();
    return sub_F2E4(v4, v17);
  }

  __break(1u);
  return result;
}

BOOL sub_D1224()
{
  v0 = type metadata accessor for PlatterList(0);
  sub_9F94();
  __chkstk_darwin(v1);
  sub_9EC0();
  v4 = v3 - v2;
  v5 = sub_4948(&qword_19F9F0, &qword_149910);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_D0CB4(&v12 - v6);
  if (sub_52E0(v7, 1, v0))
  {
    sub_D1998(v7);
    return 0;
  }

  sub_D1C34();
  sub_D1A00(v7, v4, v9);
  sub_D1998(v7);
  v10 = *(v4 + 8);

  sub_D072C(v4);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 16);

  return v11 == 1;
}

double sub_D1344()
{
  swift_getKeyPath();
  sub_D1C1C();
  v3 = sub_D1950(v1, v2, &unk_1498C8);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight);
}

void sub_D13D4(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) == a1)
  {
    *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v5[2] = v1;
    *&v5[3] = a1;
    sub_D151C(v4, sub_D1938, v5);
  }
}

double sub_D148C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_13BE04();
  v2 = sub_D1344();
  v3 = 70.0;
  if ((v0 & 1) == 0)
  {
    v3 = 25.0;
  }

  return v2 + v3;
}

uint64_t sub_D151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D1C1C();
  sub_D1950(v3, v4, &unk_1498C8);
  return sub_139864();
}

uint64_t sub_D15C4()
{

  sub_D1998(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__platter);
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___observationRegistrar;
  sub_1398B4();
  sub_9F94();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_D1634()
{
  sub_D15C4();

  return _swift_deallocClassInstance(v0);
}

uint64_t type metadata accessor for PlatterListComponentModel(uint64_t a1)
{
  result = qword_19F7A0;
  if (!qword_19F7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D16E0(uint64_t a1)
{
  sub_D17C8(319);
  if (v1 <= 0x3F)
  {
    sub_1398B4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_D17C8(uint64_t a1)
{
  if (!qword_19F7B0)
  {
    type metadata accessor for PlatterList(255);
    v1 = sub_13BF44();
    if (!v2)
    {
      atomic_store(v1, &qword_19F7B0);
    }
  }
}

uint64_t sub_D1868()
{
  *(v0 + 16) = 0;
  type metadata accessor for PlatterList(0);
  sub_D1C4C();
  sub_D1C4C();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__selectedIndex) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__totalWidth) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) = 0;
  sub_1398A4();
  return v0;
}

double sub_D1938()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) = result;
  return result;
}

uint64_t sub_D1950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_D1998(uint64_t a1)
{
  v2 = sub_4948(&qword_19F9F0, &qword_149910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D1A00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_D1A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D0ED8();
  *a1 = result;
  return result;
}

uint64_t sub_D1B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19F9F0, &qword_149910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19F9F0, &qword_149910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1C4C()
{

  return sub_53A8(v1 + v2, 1, 1, v0);
}

void sub_D1C6C(double a1, double a2, double a3, double a4)
{
  sub_13A914();
  sub_9E94();
  v68 = v10;
  v69 = v9;
  __chkstk_darwin(v9);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for PlatterListComponentView(0);
  v16 = (v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_objectGraph] = 0;
  type metadata accessor for PlatterListComponentModel(0);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_model] = sub_D1868();
  v19 = type metadata accessor for PlatterListComponent();
  v74.receiver = v4;
  v74.super_class = v19;
  v20 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_model];
  *v18 = swift_getKeyPath();
  sub_4948(&qword_19AC58, &qword_13FDB0);
  swift_storeEnumTagMultiPayload();
  *(v18 + v16[7]) = swift_getKeyPath();
  sub_4948(&qword_19AC60, &qword_144730);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGRect(0);
  v22 = v20;

  v23 = sub_13BB14();
  v70 = 0;
  v71 = 1;
  sub_4948(&qword_19FA40, &qword_149AF0);
  sub_D2E94();
  sub_13B224();
  sub_D2E78();
  v24 = (v18 + v16[9]);
  v70 = v21;
  sub_D2E94();
  sub_13B224();
  v25 = v73;
  *v24 = v72;
  v24[1] = v25;
  v70 = 0;
  v71 = 1;
  sub_D2E94();
  v26 = v22;
  sub_13B224();
  sub_D2E78();
  v27 = v18 + v16[11];
  LOBYTE(v70) = 0;
  sub_D2E94();
  sub_13B224();
  v28 = v73;
  *v27 = v72;
  *(v27 + 1) = v28;
  v29 = (v18 + v16[12]);
  v70 = v23;
  sub_D2E94();
  sub_13B224();
  v30 = v73;
  *v29 = v72;
  v29[1] = v30;
  sub_13A904();
  v31 = v68;
  v32 = v69;
  (*(v68 + 16))(v67, v14, v69);
  sub_13B224();
  (*(v31 + 8))(v14, v32);
  v33 = objc_allocWithZone(sub_4948(&qword_19FA48, &qword_149A60));
  v34 = sub_13AC14();
  v35 = sub_D2EA0();
  v36 = v34;
  v37 = [v36 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_10;
  }

  v38 = v37;
  [v35 addSubview:v37];

  v39 = sub_750A4();
  if (!v39)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = v39;
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = sub_750A4();
  if (!v41)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = sub_D2EA0();
  v45 = [v44 topAnchor];

  v46 = sub_3F140();
  sub_75088();

  v47 = sub_750A4();
  if (!v47)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = sub_D2EA0();
  v51 = [v50 bottomAnchor];

  v52 = sub_3F140();
  sub_75088();

  v53 = sub_750A4();
  if (!v53)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v54 = v53;
  v55 = [v53 leftAnchor];

  v56 = sub_D2EA0();
  v57 = [v56 leftAnchor];

  v58 = sub_3F140();
  sub_75088();

  v59 = sub_750A4();
  if (!v59)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v60 = v59;
  v61 = [v59 rightAnchor];

  v62 = sub_D2EA0();
  v63 = [v62 rightAnchor];

  v64 = [v61 constraintEqualToAnchor:v63];
  [v64 setActive:1];

  v65 = sub_750A4();
  if (v65)
  {
    v66 = [objc_opt_self() clearColor];
    [v65 setBackgroundColor:v66];

    sub_D2404();
    return;
  }

LABEL_15:
  __break(1u);
}

double sub_D2364(double a1)
{

  sub_D148C();

  return a1;
}

void sub_D2468(uint64_t *a2@<X8>)
{

  v3 = sub_D0ED8();

  *a2 = v3;
}

double (*sub_D24B8(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_D2D3C;
}

double sub_D251C(void *a1)
{
  v2 = sub_13B4A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13B4E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7389C();
  v10 = sub_13BD84();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_D2D44;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  aBlock[3] = &unk_18C478;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_13B4C4();
  v15[1] = _swiftEmptyArrayStorage;
  sub_CB68();
  sub_4948(&unk_19EBB0, &qword_145B40);
  sub_74FC4();
  sub_13BF64();
  sub_13BD94();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

void *sub_D279C(uint64_t a1)
{
  v2 = sub_139E74();
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_13B834();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CarouselCell(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_D1014();

  if (v12)
  {
    sub_EE08(v11);
    sub_64264(&v11[*(v9 + 72)], &v17);
    sub_75028(v11, type metadata accessor for CarouselCell);
    if (*(&v18 + 1))
    {
      sub_9414(&v17, v20);
      v13 = *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_objectGraph);
      if (v13)
      {
        sub_139E84();
        sub_13B6B4();

        sub_13B9A4();
        v14 = v17;
        sub_13B9A4();
        (*(v6 + 16))(v4, v8, v5);
        v15 = sub_4948(&unk_19B7E0, &unk_141F10);
        sub_53A8(v4, 0, 1, v15);
        v17 = 0u;
        v18 = 0u;
        v19 = -1;
        (*(*v14 + 216))(v20, v4, v13, &v17);

        sub_184DC(&v17, &unk_19E330, &qword_144CD0);
        sub_75028(v4, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
        (*(v6 + 8))(v8, v5);
        sub_3C04(v20);
      }

      else
      {
        sub_3C04(v20);
      }
    }

    else
    {

      sub_184DC(&v17, &unk_19E320, &unk_140950);
    }
  }

  return sub_D2404();
}

id sub_D2B48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlatterListComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_D2BEC(void *a1)
{
  v2 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [v2 absoluteDimension:v4];
  v6 = [v2 estimatedDimension:1500.0];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

uint64_t sub_D2D04()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_D2D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_D2DAC(uint64_t a1)
{
  sub_13A734();
  sub_9E94();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_13A9E4();
}

void sub_D2E78()
{
  v2 = *(v1 - 144);
  v3 = *(v1 - 136);
  *v0 = *(v1 - 152);
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

id sub_D2EA0()
{
  v3 = *(v0 + 3456);

  return [v1 v3];
}

uint64_t sub_D2EB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_13AB24();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AC60, &qword_144730);
  sub_9F94();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PlatterListComponentView(0);
  sub_16C24(v1 + *(v12 + 20), v11, &qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    sub_13BD54();
    v15 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_D30A4()
{
  v0 = sub_13ACF4();
  sub_7E5D8(v0, qword_19FA50);
  sub_4910(v0, qword_19FA50);
  return sub_13AD84();
}

uint64_t sub_D3130()
{
  v1 = v0;
  v2 = type metadata accessor for PlatterList(0);
  sub_9F94();
  __chkstk_darwin(v3);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_4948(&qword_19F9F0, &qword_149910);
  v7 = sub_8AD98(v6);
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for PlatterListComponentView(0);
  v11 = (v0 + *(v10 + 28));
  v13 = *v11;
  v12 = v11[1];
  v21 = v13;
  v22 = v12;
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  sub_D0CB4(v9);

  if (sub_52E0(v9, 1, v2))
  {
    sub_DB9AC(v9, &qword_19F9F0);
LABEL_4:
    v15 = (v1 + *(v10 + 36));
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v21) = v16;
    v22 = v17;
    sub_4948(&qword_19AAA8, &unk_13FC40);
    sub_13B234();
    return v20[8];
  }

  sub_DB524(v9, v5, type metadata accessor for PlatterList);
  sub_DB9AC(v9, &qword_19F9F0);
  v14 = *v5;
  sub_DB580();
  if (v14 == 2)
  {
    goto LABEL_4;
  }

  if (v14)
  {
  }

  else
  {
    v19 = sub_13C144();

    if ((v19 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

void sub_D3370(__n128 a1)
{
  v1 = a1.n128_u64[0];
  *&v2 = COERCE_DOUBLE(type metadata accessor for PlatterListComponentView(0));
  sub_DC9FC();
  v94 = v3;
  HIDWORD(v91) = v4;
  v88 = v5;
  v6 = sub_4948(&qword_19FBD0, &qword_149C28);
  sub_DCAA8(v6, v7, v8, v9, v10, v11, v12, v13, v88, v91, v94, v97, v100, v103, v105, v107);
  sub_DC9FC();
  HIDWORD(v101) = v14;
  v117 = 0;
  sub_DCAA8(v15, v16, v17, v18, v19, v20, v21, v22, v89, v92, v95, v98, v101, v24, v23, v108);
  sub_4948(&qword_19FBD8, &qword_149C30);
  sub_DC9C4();
  sub_13B234();
  v109 = v1;
  v25 = 0;
  v26 = 0x100000;
  v27 = (32 * __clz(__rbit64(0x180000uLL)));
  v28 = *v27;
  v29 = v27[1];
  v31 = v27[2];
  v30 = v27[3];

  v32 = sub_DCAF0();
  do
  {
    v113 = v31;
    v115 = v30;
    v111 = v28;
    v112 = v29;
    v36 = v25;
LABEL_7:
    v37 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v38 = ((v36 << 11) | (32 * v37));
    v39 = *v38;
    v40 = v38[1];
    v41 = v38[2];
    v42 = v38[3];
    v43 = v32;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    Width = CGRectGetWidth(*&v32);
    v118.origin.x = v39;
    v118.origin.y = v40;
    v118.size.width = v41;
    v118.size.height = v42;
    v47 = CGRectGetWidth(v118);
    v35 = v46;
    v34 = v45;
    v33 = v44;
    v28 = v111;
    v48 = Width < v47;
    v32 = v43;
    if (v48)
    {
      v28 = v39;
    }

    v29 = v112;
    v31 = v113;
    if (v48)
    {
      v29 = v40;
      v31 = v41;
    }

    v30 = v115;
    if (v48)
    {
      v30 = v42;
      v32 = v39;
      v33 = v40;
      v34 = v41;
      v35 = v42;
    }
  }

  while (v26);
  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v36 >= 0x80000)
    {
      break;
    }

    v26 = *(&stru_20.vmsize + v36);
    ++v25;
    if (v26)
    {
      v113 = v31;
      v115 = v30;
      v111 = v28;
      v112 = v29;
      v25 = v36;
      goto LABEL_7;
    }
  }

  v119.origin.x = sub_DCAF0();
  v49 = *&v109;
  LOBYTE(v117) = *&v109 * 0.65 <= CGRectGetWidth(v119);
  sub_4948(&qword_19AAA8, &unk_13FC40);
  sub_13B244();
  sub_DC9C4();
  sub_13B234();
  v50 = *(v117 + 16);
  if (!v50)
  {
LABEL_35:

    v69 = _swiftEmptyArrayStorage[2];
    if (v69)
    {
      v70 = &_swiftEmptyArrayStorage[4];
      v71 = 0.0;
      do
      {
        v72 = *v70++;
        v71 = v71 + v72;
        --v69;
      }

      while (v69);
    }

    else
    {
      v71 = 0.0;
    }

    v73.n128_f64[0] = v49;
    sub_D3A64(v73);
    v75 = v74 + v74;
    sub_DC9C4();
    sub_13B234();
    v76 = *(v117 + 16);

    v77 = (v76 - 1) * 12.0;
    if (v71 + v75 + v77 <= v49)
    {
      sub_DC9C4();
      sub_13B234();
      v78 = *(v117 + 16);

      sub_DC9C4();
      sub_13B234();
      sub_DA194(v117, (v49 - v75 - v77) / v78);

      sub_DCAA8(v79, v80, v81, v82, v83, v84, v85, v86, v90, v93, v96, v99, v102, v104, v106, v109);
    }

    sub_4948(&qword_19FB50, &qword_149BD8);
    sub_DC9C4();
    sub_13B234();
    v87 = sub_D0ED8();
    sub_D0F68(v87);

    return;
  }

  v99 = v6;
  v109 = v2;
  sub_4D00C(0, v50, 0);
  v52 = sub_DA6E4(v117);
  v54 = v53;
  v55 = 0;
  v116 = v117 + 64;
  if ((v52 & 0x8000000000000000) == 0)
  {
    while (v52 < 1 << *(v117 + 32))
    {
      v56 = v52 >> 6;
      if ((*(v116 + 8 * (v52 >> 6)) & (1 << v52)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v117 + 36) != v54)
      {
        goto LABEL_46;
      }

      v114 = v51;
      v57 = v50;
      v58 = CGRectGetWidth(*(*(v117 + 56) + 32 * v52));
      v60 = _swiftEmptyArrayStorage[2];
      v59 = _swiftEmptyArrayStorage[3];
      if (v60 >= v59 >> 1)
      {
        sub_4D00C((v59 > 1), v60 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v60 + 1;
      *&_swiftEmptyArrayStorage[v60 + 4] = v58;
      v61 = 1 << *(v117 + 32);
      if (v52 >= v61)
      {
        goto LABEL_47;
      }

      v62 = *(v116 + 8 * v56);
      if ((v62 & (1 << v52)) == 0)
      {
        goto LABEL_48;
      }

      if (*(v117 + 36) != v54)
      {
        goto LABEL_49;
      }

      v63 = v62 & (-2 << (v52 & 0x3F));
      if (v63)
      {
        v61 = __clz(__rbit64(v63)) | v52 & 0x7FFFFFFFFFFFFFC0;
        v50 = v57;
      }

      else
      {
        v64 = v56 << 6;
        v65 = v56 + 1;
        v66 = (v117 + 72 + 8 * v56);
        v50 = v57;
        while (v65 < (v61 + 63) >> 6)
        {
          v68 = *v66++;
          v67 = v68;
          v64 += 64;
          ++v65;
          if (v68)
          {
            sub_7E270(v52, v54, v114 & 1);
            v61 = __clz(__rbit64(v67)) + v64;
            goto LABEL_32;
          }
        }

        sub_7E270(v52, v54, v114 & 1);
      }

LABEL_32:
      if (++v55 == v50)
      {
        goto LABEL_35;
      }

      v51 = 0;
      v54 = *(v117 + 36);
      v52 = v61;
      if (v61 < 0)
      {
        break;
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void *sub_D3A64(__n128 a1)
{
  type metadata accessor for PlatterListComponentView(0);
  sub_DC9FC();
  sub_4948(&qword_19FBD0, &qword_149C28);
  result = sub_13B234();
  if (v2 == 1)
  {
    return sub_B84DC();
  }

  return result;
}

uint64_t sub_D3AF0@<X0>(uint64_t (**a1)()@<X8>)
{
  v4 = type metadata accessor for PlatterListComponentView(0);
  v5 = sub_CCF4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_DB524(v2, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterListComponentView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  result = sub_DB9FC(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PlatterListComponentView);
  *a1 = sub_DAD38;
  a1[1] = v11;
  return result;
}

uint64_t sub_D3C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a1;
  v107 = a3;
  v98 = sub_13ABC4();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_13A864();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v102 = v5;
  v103 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlatterListComponentView(0);
  v7 = v6 - 8;
  v92 = *(v6 - 8);
  v8 = *(v92 + 64);
  __chkstk_darwin(v6);
  v93 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4948(&qword_19FB38, &qword_149BB8);
  __chkstk_darwin(v9 - 8);
  v100 = (v86 - v10);
  v101 = sub_4948(&qword_19FB40, &qword_149BC0);
  __chkstk_darwin(v101);
  v105 = v86 - v11;
  v106 = sub_4948(&qword_19FB48, &unk_149BC8);
  v94 = *(v106 - 8);
  __chkstk_darwin(v106);
  v13 = v86 - v12;
  v14 = type metadata accessor for PlatterList(0);
  __chkstk_darwin(v14);
  v16 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4948(&qword_19F9F0, &qword_149910);
  __chkstk_darwin(v17 - 8);
  v19 = v86 - v18;
  v20 = a2;
  v21 = (a2 + *(v7 + 36));
  v22 = *v21;
  v23 = v21[1];
  v108 = *v21;
  v109 = v23;
  v24 = sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  sub_D0CB4(v19);

  if (sub_52E0(v19, 1, v14))
  {
    sub_DB9AC(v19, &qword_19F9F0);
LABEL_3:
    v25 = 1;
    v26 = v106;
    v27 = v107;
    return sub_53A8(v27, v25, 1, v26);
  }

  v89 = v24;
  v90 = v23;
  v91 = v22;
  v87 = v8;
  v88 = v13;
  v29 = v105;
  sub_DB524(v19, v16, type metadata accessor for PlatterList);
  sub_DB9AC(v19, &qword_19F9F0);
  v30 = *(v16 + 1);

  sub_DB580();
  if (!v30)
  {
    goto LABEL_3;
  }

  v108 = v91;
  v109 = v90;
  sub_13B234();
  sub_D0B88();
  v32 = v31;

  if (!v32)
  {

    goto LABEL_3;
  }

  v33 = v29;
  *v29 = sub_13ABD4();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v34 = sub_13ABD4();
  v35 = v100;
  *v100 = v34;
  v35[1] = 0;
  *(v35 + 16) = 0;
  v36 = v35 + *(sub_4948(&qword_19FB58, &unk_149BE0) + 44);
  v37 = v20;
  v86[1] = v32;
  v38 = v32;
  v39 = v104;
  sub_D46C8(v20, v30, v38, v104, v36);
  sub_4948(&qword_19AAA0, &qword_1427B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v41 = sub_13AEE4();
  *(inited + 32) = v41;
  v42 = sub_13AF04();
  *(inited + 33) = v42;
  v43 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v41)
  {
    v43 = sub_13AEF4();
  }

  sub_13AEF4();
  v44 = sub_13AEF4();
  v45 = v93;
  if (v44 != v42)
  {
    v43 = sub_13AEF4();
  }

  v46 = sub_D3130();
  v47 = v95;
  if ((v46 & 1) != 0 || (v108 = v91, v109 = v90, sub_13B234(), v48 = sub_D1224(), , v48))
  {
    sub_13A844();
    sub_D3A64(v49);
  }

  v50 = &v33[*(sub_4948(&qword_19FB60, &qword_149BF0) + 44)];
  sub_13A6E4();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_16038(v100, v50, &qword_19FB38, &qword_149BB8);

  v59 = v50 + *(sub_4948(&qword_19FB68, &qword_149BF8) + 36);
  *v59 = v43;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54;
  *(v59 + 24) = v56;
  *(v59 + 32) = v58;
  *(v59 + 40) = 0;
  sub_DB524(v37, v45, type metadata accessor for PlatterListComponentView);
  v60 = v47[2];
  v91 = (v47 + 2);
  v100 = v60;
  v61 = v103;
  v62 = v99;
  (v60)(v103, v39, v99);
  v63 = *(v92 + 80);
  v64 = (v63 + 16) & ~v63;
  v86[0] = v64;
  v89 = v63 | 7;
  v92 = *(v47 + 80);
  v65 = (v87 + v64 + v92) & ~v92;
  v90 = v65;
  v66 = swift_allocObject();
  v87 = type metadata accessor for PlatterListComponentView;
  sub_DB9FC(v45, v66 + v64, type metadata accessor for PlatterListComponentView);
  v95 = v47[4];
  (v95)(v66 + v65, v61, v62);
  v67 = sub_4948(&qword_19FB70, &qword_149C00);
  v68 = v105;
  v69 = &v105[*(v67 + 36)];
  *v69 = sub_DADA4;
  v69[1] = v66;
  v69[2] = 0;
  v69[3] = 0;
  v70 = sub_13B3C4();
  v72 = v71;
  v73 = &v68[*(sub_4948(&qword_19FB78, &qword_149C08) + 36)];
  *v73 = sub_42104;
  v73[1] = 0;
  v73[2] = v70;
  v73[3] = v72;
  sub_DB524(v37, v45, type metadata accessor for PlatterListComponentView);
  v74 = swift_allocObject();
  v75 = v86[0];
  v76 = v87;
  sub_DB9FC(v45, v74 + v86[0], v87);
  v77 = &v68[*(v101 + 36)];
  *v77 = sub_DADBC;
  v77[1] = v74;
  v78 = v96;
  sub_D2EB8(v96);
  sub_DB524(v37, v45, type metadata accessor for PlatterListComponentView);
  v79 = v103;
  v80 = v99;
  (v100)(v103, v104, v99);
  v81 = v90;
  v82 = swift_allocObject();
  sub_DB9FC(v45, v82 + v75, v76);
  (v95)(v82 + v81, v79, v80);
  sub_DB164();
  sub_DB4CC(&qword_19FBC8, &type metadata accessor for ContentSizeCategory, &protocol conformance descriptor for ContentSizeCategory);
  v83 = v88;
  v84 = v98;
  v85 = v105;
  sub_13B134();

  (*(v97 + 8))(v78, v84);
  sub_DB9AC(v85, &qword_19FB40);
  v26 = v106;
  v27 = v107;
  (*(v94 + 32))(v107, v83, v106);
  v25 = 0;
  return sub_53A8(v27, v25, 1, v26);
}

uint64_t sub_D46C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v215 = a4;
  v200 = a3;
  v201 = a2;
  v214 = a5;
  v6 = sub_4948(&qword_19FBE0, &qword_149C38);
  __chkstk_darwin(v6 - 8);
  v210 = (&v170 - v7);
  v212 = sub_4948(&qword_19FBE8, &qword_149C40);
  __chkstk_darwin(v212);
  v195 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v194 = &v170 - v10;
  v11 = sub_4948(&qword_19FBF0, &qword_149C48);
  __chkstk_darwin(v11 - 8);
  v213 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v211 = &v170 - v14;
  v209 = sub_4948(&qword_19FBF8, &qword_149C50);
  __chkstk_darwin(v209);
  v193 = &v170 - v15;
  v16 = sub_4948(&qword_19FC00, &qword_149C58);
  __chkstk_darwin(v16 - 8);
  v187 = (&v170 - v17);
  v185 = sub_4948(&qword_19FC08, &qword_149C60);
  __chkstk_darwin(v185);
  v188 = &v170 - v18;
  v186 = sub_4948(&qword_19FC10, &qword_149C68);
  __chkstk_darwin(v186);
  v190 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v184 = &v170 - v21;
  __chkstk_darwin(v22);
  v192 = &v170 - v23;
  v24 = sub_4948(&qword_19FC18, &qword_149C70);
  __chkstk_darwin(v24 - 8);
  v26 = &v170 - v25;
  v179 = sub_4948(&qword_19FC20, &qword_149C78);
  __chkstk_darwin(v179);
  v181 = &v170 - v27;
  v180 = sub_4948(&qword_19FC28, &qword_149C80);
  __chkstk_darwin(v180);
  v183 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v178 = &v170 - v30;
  __chkstk_darwin(v31);
  v199 = &v170 - v32;
  v206 = sub_4948(&qword_19FC30, &qword_149C88);
  __chkstk_darwin(v206);
  v207 = &v170 - v33;
  v198 = sub_13ABC4();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_139A34();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AppleOneOfferPlatterView(0);
  __chkstk_darwin(v36);
  v38 = (&v170 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v173 = &v170 - v40;
  __chkstk_darwin(v41);
  v174 = &v170 - v42;
  __chkstk_darwin(v43);
  v177 = &v170 - v44;
  v191 = sub_4948(&qword_19FC38, &qword_149C90);
  __chkstk_darwin(v191);
  v176 = &v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v175 = &v170 - v47;
  v48 = sub_4948(&qword_19FC40, &qword_149C98);
  __chkstk_darwin(v48 - 8);
  v50 = &v170 - v49;
  v51 = type metadata accessor for CarouselCell(0);
  __chkstk_darwin(v51);
  v53 = &v170 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v182 = &v170 - v55;
  v205 = sub_4948(&qword_19FC48, &qword_149CA0);
  __chkstk_darwin(v205);
  v189 = &v170 - v56;
  v57 = sub_4948(&qword_19FC50, &qword_149CA8);
  __chkstk_darwin(v57 - 8);
  v208 = &v170 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v170 - v60;
  v62 = a1;
  v63 = (a1 + *(type metadata accessor for PlatterListComponentView(0) + 28));
  v65 = *v63;
  v64 = v63[1];
  v204 = v65;
  *&v221 = v65;
  *(&v221 + 1) = v64;
  v203 = v64;
  v202 = sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  LOBYTE(a1) = sub_D1224();

  if (a1)
  {
    v66 = v200;
    v199 = v61;
    sub_A3EC8(v201, v50);
    if (sub_52E0(v50, 1, v51) == 1)
    {
      sub_DB9AC(v50, &qword_19FC40);
      v67 = 1;
      v68 = v211;
      v69 = v199;
      v70 = v207;
      v71 = v191;
      v72 = v189;
    }

    else
    {
      v99 = v50;
      v100 = v182;
      sub_DB9FC(v99, v182, type metadata accessor for CarouselCell);
      sub_DB524(v100, v53, type metadata accessor for CarouselCell);
      type metadata accessor for AppleOneOfferPlatterModel(0);
      swift_allocObject();

      v101 = sub_F2E4(v53, v66);
      *v38 = swift_getKeyPath();
      sub_4948(&qword_19AC58, &qword_13FDB0);
      swift_storeEnumTagMultiPayload();
      v102 = v38 + v36[5];
      LOBYTE(v218) = 0;
      sub_13B224();
      v103 = *(&v221 + 1);
      *v102 = v221;
      *(v102 + 1) = v103;
      v104 = v36[6];
      *(v38 + v104) = swift_getKeyPath();
      sub_4948(&qword_19AC60, &qword_144730);
      swift_storeEnumTagMultiPayload();
      v105 = v36[9];
      v106 = objc_opt_self();
      v107 = [v106 ams_secondaryBackground];
      *(v38 + v105) = sub_13B1E4();
      v108 = v36[10];
      v109 = [v106 ams_primarySystemFillColor];
      *(v38 + v108) = sub_13B1E4();
      *(v38 + v36[11]) = 0;
      *(v38 + v36[12]) = 1;
      *(v38 + v36[13]) = 0;
      *(v38 + v36[8]) = 1;
      *(v38 + v36[7]) = v101;
      if (_UISolariumEnabled() && (v110 = v171, v111 = v170, v112 = v172, (*(v171 + 104))(v170, enum case for FlagKeys.Solarium(_:), v172), v113 = sub_139A24(), (*(v110 + 8))(v111, v112), (v113 & 1) != 0))
      {
        v114 = v177;
        if (qword_199D98 != -1)
        {
          swift_once();
        }

        v115 = &qword_1B28C0;
        v69 = v199;
        v70 = v207;
      }

      else
      {
        v115 = (v100 + 40);
        v69 = v199;
        v70 = v207;
        v114 = v177;
      }

      v116 = *v115;

      v117 = v38;
      v118 = v173;
      sub_DB9FC(v117, v173, type metadata accessor for AppleOneOfferPlatterView);
      v119 = v36[9];

      *(v118 + v119) = v116;
      v120 = v174;
      sub_DB524(v118, v174, type metadata accessor for AppleOneOfferPlatterView);
      *(v120 + v36[12]) = 0;
      sub_DB580();
      v121 = v196;
      sub_D2EB8(v196);
      LOBYTE(v116) = sub_750BC();
      (*(v197 + 8))(v121, v198);
      sub_DB9FC(v120, v114, type metadata accessor for AppleOneOfferPlatterView);
      *(v114 + v36[13]) = v116 & 1;
      sub_4948(&qword_19AAA0, &qword_1427B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_13E650;
      v123 = sub_13AEC4();
      *(inited + 32) = v123;
      v124 = sub_13AED4();
      *(inited + 33) = v124;
      v125 = sub_13AEF4();
      sub_13AEF4();
      if (sub_13AEF4() != v123)
      {
        v125 = sub_13AEF4();
      }

      sub_13AEF4();
      v126 = sub_13AEF4();
      v68 = v211;
      if (v126 != v124)
      {
        v125 = sub_13AEF4();
      }

      sub_13A6E4();
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      sub_DB580();
      v135 = v114;
      v136 = v176;
      sub_DB9FC(v135, v176, type metadata accessor for AppleOneOfferPlatterView);
      v71 = v191;
      v137 = v136 + *(v191 + 36);
      *v137 = v125;
      *(v137 + 8) = v128;
      *(v137 + 16) = v130;
      *(v137 + 24) = v132;
      *(v137 + 32) = v134;
      *(v137 + 40) = 0;
      v138 = v136;
      v139 = v175;
      sub_16038(v138, v175, &qword_19FC38, &qword_149C90);
      v140 = v139;
      v72 = v189;
      sub_16038(v140, v189, &qword_19FC38, &qword_149C90);
      v67 = 0;
    }

    sub_53A8(v72, v67, 1, v71);
    sub_16C24(v72, v70, &qword_19FC48, &qword_149CA0);
    swift_storeEnumTagMultiPayload();
    sub_DB38C();
    sub_7FAA8(&qword_19FC80, &qword_19FBF8, &qword_149C50, &protocol conformance descriptor for TupleView<A>);
    sub_13ACD4();
    sub_DB9AC(v72, &qword_19FC48);
    v98 = v212;
  }

  else
  {
    *v26 = sub_13ABD4();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v73 = sub_4948(&qword_19FC58, &qword_149CB0);
    v74 = v201;
    v75 = v200;
    sub_D5DE4(v201, v200, v62, v215, &v26[*(v73 + 44)]);
    sub_D3130();
    sub_13B3C4();
    sub_13A834();
    v76 = v181;
    sub_16038(v26, v181, &qword_19FC18, &qword_149C70);
    v77 = (v76 + *(v179 + 36));
    v78 = v219;
    *v77 = v218;
    v77[1] = v78;
    v77[2] = v220;
    v79 = 1.0;
    if (sub_D3130())
    {
      v80 = 0.0;
    }

    else
    {
      v80 = 1.0;
    }

    v81 = v76;
    v82 = v178;
    sub_16038(v81, v178, &qword_19FC20, &qword_149C78);
    *(v82 + *(v180 + 36)) = v80;
    v83 = v199;
    sub_16038(v82, v199, &qword_19FC28, &qword_149C80);
    v84 = sub_13ABD4();
    v85 = v187;
    *v187 = v84;
    *(v85 + 8) = 0x402C000000000000;
    *(v85 + 16) = 0;
    sub_4948(&qword_19FC60, &qword_149CB8);
    sub_D75D8(v74, v75, v62, v86);
    sub_D3130();
    sub_13B3C4();
    sub_13A834();
    v87 = v188;
    sub_16038(v85, v188, &qword_19FC00, &qword_149C58);
    v88 = (v87 + *(v185 + 36));
    v89 = v222;
    *v88 = v221;
    v88[1] = v89;
    v88[2] = v223;
    if ((sub_D3130() & 1) == 0)
    {
      v79 = 0.0;
    }

    v90 = v184;
    sub_16038(v87, v184, &qword_19FC08, &qword_149C60);
    *(v90 + *(v186 + 36)) = v79;
    v91 = v90;
    v92 = v192;
    sub_16038(v91, v192, &qword_19FC10, &qword_149C68);
    v93 = v83;
    v94 = v183;
    sub_16C24(v93, v183, &qword_19FC28, &qword_149C80);
    v95 = v190;
    sub_16C24(v92, v190, &qword_19FC10, &qword_149C68);
    v96 = v193;
    sub_16C24(v94, v193, &qword_19FC28, &qword_149C80);
    v97 = sub_4948(&qword_19FC68, &qword_149CC0);
    sub_16C24(v95, v96 + *(v97 + 48), &qword_19FC10, &qword_149C68);
    sub_DB9AC(v95, &qword_19FC10);
    sub_DB9AC(v94, &qword_19FC28);
    sub_16C24(v96, v207, &qword_19FBF8, &qword_149C50);
    swift_storeEnumTagMultiPayload();
    sub_DB38C();
    sub_7FAA8(&qword_19FC80, &qword_19FBF8, &qword_149C50, &protocol conformance descriptor for TupleView<A>);
    sub_13ACD4();
    sub_DB9AC(v96, &qword_19FBF8);
    sub_DB9AC(v92, &qword_19FC10);
    sub_DB9AC(v199, &qword_19FC28);
    v98 = v212;
    v68 = v211;
    v69 = v61;
  }

  v216 = v204;
  v217 = v203;
  sub_13B234();
  v141 = sub_D1224();

  if (v141)
  {
    v142 = 1;
  }

  else
  {
    v143 = v196;
    sub_D2EB8(v196);
    v144 = sub_750BC();
    (*(v197 + 8))(v143, v198);
    if (v144)
    {
      v145 = sub_13ABE4();
    }

    else
    {
      v145 = sub_13ABD4();
    }

    v146 = v210;
    *v210 = v145;
    v146[1] = 0x4024000000000000;
    *(v146 + 16) = 0;
    v147 = sub_4948(&qword_19FC88, &qword_149CC8);
    sub_D811C(v62, v146 + *(v147 + 44));
    sub_4948(&qword_19AAA0, &qword_1427B0);
    v148 = swift_initStackObject();
    *(v148 + 16) = xmmword_13E650;
    v149 = sub_13AEE4();
    *(v148 + 32) = v149;
    v150 = sub_13AF04();
    *(v148 + 33) = v150;
    v151 = sub_13AEF4();
    sub_13AEF4();
    if (sub_13AEF4() != v149)
    {
      v151 = sub_13AEF4();
    }

    sub_13AEF4();
    if (sub_13AEF4() != v150)
    {
      v151 = sub_13AEF4();
    }

    if ((sub_D3130() & 1) == 0)
    {
      sub_13A844();
      sub_D3A64(v152);
    }

    sub_13A6E4();
    v154 = v153;
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v161 = v195;
    sub_16038(v210, v195, &qword_19FBE0, &qword_149C38);
    v162 = v161 + *(v98 + 36);
    *v162 = v151;
    *(v162 + 8) = v154;
    *(v162 + 16) = v156;
    *(v162 + 24) = v158;
    *(v162 + 32) = v160;
    *(v162 + 40) = 0;
    v163 = v161;
    v164 = v194;
    sub_16038(v163, v194, &qword_19FBE8, &qword_149C40);
    sub_16038(v164, v68, &qword_19FBE8, &qword_149C40);
    v142 = 0;
  }

  sub_53A8(v68, v142, 1, v98);
  v165 = v208;
  sub_16C24(v69, v208, &qword_19FC50, &qword_149CA8);
  v166 = v213;
  sub_16C24(v68, v213, &qword_19FBF0, &qword_149C48);
  v167 = v214;
  sub_16C24(v165, v214, &qword_19FC50, &qword_149CA8);
  v168 = sub_4948(&qword_19FC90, &qword_149CD0);
  sub_16C24(v166, v167 + *(v168 + 48), &qword_19FBF0, &qword_149C48);
  sub_DB9AC(v68, &qword_19FBF0);
  sub_DB9AC(v69, &qword_19FC50);
  sub_DB9AC(v166, &qword_19FBF0);
  return sub_DB9AC(v165, &qword_19FC50);
}

uint64_t sub_D5DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v48 = a5;
  v8 = sub_4948(&qword_19FD58, &qword_149EC8);
  __chkstk_darwin(v8 - 8);
  v47 = &v39 - v9;
  v41 = sub_13ADB4();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_4948(&qword_19FD60, &qword_149ED0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v43 = sub_4948(&qword_19FD68, &qword_149ED8);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v17 = &v39 - v16;
  v45 = sub_4948(&qword_19FD70, &qword_149EE0);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v19 = &v39 - v18;
  sub_13AE74();
  v49 = a1;
  v50 = a2;
  v46 = a3;
  v51 = a3;
  v52 = v39;
  sub_4948(&qword_19FD78, &qword_149EE8);
  sub_DBCE4();
  sub_13A704();
  sub_13ADA4();
  sub_4948(&qword_19D7D8, &qword_1452A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v21 = sub_13AE94();
  *(inited + 32) = v21;
  v22 = sub_13AE74();
  *(inited + 33) = v22;
  sub_13AE84();
  sub_13AE84();
  if (sub_13AE84() != v21)
  {
    sub_13AE84();
  }

  sub_13AE84();
  if (sub_13AE84() != v22)
  {
    sub_13AE84();
  }

  v23 = sub_7FAA8(&qword_19FDB8, &qword_19FD60, &qword_149ED0, &protocol conformance descriptor for ScrollView<A>);
  sub_13B0D4();
  (*(v40 + 8))(v11, v41);
  (*(v13 + 8))(v15, v12);
  v24 = type metadata accessor for PlatterListComponentView(0);
  v25 = v46;
  v26 = v46 + *(v24 + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v54 = v27;
  LOBYTE(v55) = v28;
  v56 = v29;
  sub_4948(&qword_19FBD0, &qword_149C28);
  sub_13B234();
  if (v53 == 1)
  {
    v30 = v25 + *(v24 + 32);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    v54 = v31;
    LOBYTE(v55) = v32;
    v56 = v33;
    sub_13B234();
  }

  v54 = v12;
  v55 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_13B084();
  (*(v42 + 8))(v17, v35);
  sub_4948(&qword_19FA68, &unk_149AC0);
  v36 = v47;
  sub_13B254();
  v54 = v35;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v45;
  sub_13B0A4();
  sub_DB9AC(v36, &qword_19FD58);
  return (*(v44 + 8))(v19, v37);
}

uint64_t sub_D63E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v53 = a2;
  v50 = a1;
  v8 = sub_13A864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for PlatterListComponentView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  *a5 = sub_13AB44();
  *(a5 + 8) = 0x4028000000000000;
  *(a5 + 16) = 0;
  v14 = *(sub_4948(&qword_19FDC0, &qword_149F10) + 44);
  v57 = a5;
  v51 = a5 + v14;
  v15 = *(a1 + 16);
  v60 = 0;
  v61 = v15;
  KeyPath = swift_getKeyPath();
  v59 = a3;
  sub_DB524(a3, &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterListComponentView);
  v16 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v16, v58, v8);
  v17 = *(v12 + 80);
  v55 = ~v17;
  v18 = (v17 + 32) & ~v17;
  v19 = *(v9 + 80);
  v58 = v13;
  v20 = (v13 + v19 + v18) & ~v19;
  v56 = v17 | 7;
  v21 = swift_allocObject();
  v22 = v53;
  *(v21 + 16) = v50;
  *(v21 + 24) = v22;
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DB9FC(v54, v21 + v18, type metadata accessor for PlatterListComponentView);
  (*(v9 + 32))(v21 + v20, v16, v8);

  sub_4948(&qword_19AC80, &qword_13FE20);
  sub_4948(&qword_19FDC8, &qword_149F18);
  sub_16618();
  sub_DC1A8();
  v23 = v51;
  sub_13B314();
  v24 = sub_13AEC4();
  if (qword_199DE0 != -1)
  {
    swift_once();
  }

  sub_13A6E4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23 + *(sub_4948(&qword_19FE18, &unk_149F40) + 36);
  *v33 = v24;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  v34 = v54;
  sub_DB524(v59, v54, type metadata accessor for PlatterListComponentView);
  v35 = (v17 + 16) & v55;
  v36 = swift_allocObject();
  sub_DB9FC(v34, v36 + v35, type metadata accessor for PlatterListComponentView);
  v37 = sub_4948(&qword_19FD90, &qword_149EF0);
  v38 = v57;
  v39 = (v57 + *(v37 + 36));
  *v39 = sub_DC600;
  v39[1] = v36;
  LOBYTE(v36) = sub_13AED4();
  sub_13A6E4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  result = sub_4948(&qword_19FD78, &qword_149EE8);
  v49 = v38 + *(result + 36);
  *v49 = v36;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  return result;
}

uint64_t sub_D6874@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a5;
  v127 = a4;
  v128 = a6;
  v115 = type metadata accessor for PlatterListComponentView(0);
  v122 = *(v115 - 8);
  __chkstk_darwin(v115);
  v123 = v10;
  v124 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_139A34();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CarouselCell(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppleOneOfferPlatterView(0);
  __chkstk_darwin(v17);
  v19 = (&v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  __chkstk_darwin(v23);
  v25 = &v107 - v24;
  __chkstk_darwin(v26);
  v114 = &v107 - v27;
  __chkstk_darwin(v28);
  v113 = &v107 - v29;
  v121 = sub_4948(&qword_19FD50, &qword_149EC0);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v107 - v30;
  v116 = sub_4948(&qword_19FE00, &qword_149F30);
  __chkstk_darwin(v116);
  v120 = &v107 - v31;
  v118 = sub_4948(&qword_19FDF0, &qword_149F28);
  __chkstk_darwin(v118);
  v125 = &v107 - v32;
  v33 = sub_4948(&qword_19FDE0, &qword_149F20);
  __chkstk_darwin(v33);
  v126 = &v107 - v35;
  v36 = *a1;
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v36 >= *(a2 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  v111 = *(a2 + 16);
  v112 = v34;
  v37 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36;
  sub_DB524(v37, v16, type metadata accessor for CarouselCell);
  type metadata accessor for AppleOneOfferPlatterModel(0);
  swift_allocObject();

  v38 = sub_F2E4(v16, a3);
  *v19 = swift_getKeyPath();
  sub_4948(&qword_19AC58, &qword_13FDB0);
  swift_storeEnumTagMultiPayload();
  v39 = v19 + v17[5];
  LOBYTE(v129) = 0;
  sub_13B224();
  v40 = __src[1];
  *v39 = __src[0];
  *(v39 + 1) = v40;
  v41 = v17[6];
  *(v19 + v41) = swift_getKeyPath();
  sub_4948(&qword_19AC60, &qword_144730);
  swift_storeEnumTagMultiPayload();
  v42 = v17[9];
  v43 = objc_opt_self();
  v44 = [v43 ams_secondaryBackground];
  *(v19 + v42) = sub_13B1E4();
  v45 = v17[10];
  v46 = [v43 ams_primarySystemFillColor];
  *(v19 + v45) = sub_13B1E4();
  *(v19 + v17[11]) = 0;
  *(v19 + v17[12]) = 1;
  *(v19 + v17[13]) = 0;
  *(v19 + v17[8]) = 0;
  *(v19 + v17[7]) = v38;
  if (_UISolariumEnabled() && (v47 = v108, v48 = v12, v49 = v109, (*(v108 + 104))(v12, enum case for FlagKeys.Solarium(_:), v109), v50 = sub_139A24(), (*(v47 + 8))(v48, v49), (v50 & 1) != 0))
  {
    if (qword_199D98 != -1)
    {
      swift_once();
    }

    v51 = &qword_1B28C0;
  }

  else
  {
    v51 = (v37 + 40);
  }

  v52 = *v51;

  sub_DB9FC(v19, v22, type metadata accessor for AppleOneOfferPlatterView);
  v53 = v17[9];

  *&v22[v53] = v52;
  if (qword_199D90 != -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  v54 = qword_1B28B8;
  sub_DB524(v22, v25, type metadata accessor for AppleOneOfferPlatterView);
  v55 = v17[10];

  *&v25[v55] = v54;
  sub_DB580();
  v56 = v115;
  v57 = v127;
  v58 = (v127 + *(v115 + 28));
  v60 = *v58;
  v59 = v58[1];
  __src[0] = v60;
  __src[1] = v59;
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  v61 = sub_D0ED8();

  v62 = v36 == v61;
  v63 = v114;
  sub_DB524(v25, v114, type metadata accessor for AppleOneOfferPlatterView);
  *(v63 + v17[11]) = v62;
  sub_DB580();
  v64 = v57 + *(v56 + 36);
  v65 = *v64;
  v66 = *(v64 + 8);
  LOBYTE(__src[0]) = v65;
  __src[1] = v66;
  sub_4948(&qword_19AAA8, &unk_13FC40);
  sub_13B234();
  v67 = v129;
  v68 = v113;
  sub_DB9FC(v63, v113, type metadata accessor for AppleOneOfferPlatterView);
  *(v68 + v17[13]) = v67;
  v69 = v124;
  sub_DB524(v57, v124, type metadata accessor for PlatterListComponentView);
  v70 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v71 = (v123 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  sub_DB9FC(v69, v72 + v70, type metadata accessor for PlatterListComponentView);
  *(v72 + v71) = v36;
  __src[0] = sub_DC854;
  __src[1] = v72;
  sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView, &unk_13FB90);
  sub_7DA88();
  v73 = v117;
  sub_13B124();

  sub_DB580();
  sub_13B3C4();
  sub_13A9B4();
  v74 = v120;
  (*(v119 + 32))(v120, v73, v121);
  memcpy(&v74[*(v116 + 36)], __src, 0x70uLL);
  v75 = sub_13B3C4();
  v77 = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = v36;
  v79 = v74;
  v80 = v125;
  sub_16038(v79, v125, &qword_19FE00, &qword_149F30);
  v81 = (v80 + *(v118 + 36));
  *v81 = sub_DC900;
  v81[1] = v78;
  v81[2] = v75;
  v81[3] = v77;
  v82 = sub_13AEE4();
  if (!v36)
  {
    sub_13A844();
    sub_D3A64(v83);
  }

  sub_13A6E4();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v126;
  sub_16038(v80, v126, &qword_19FDF0, &qword_149F28);
  v93 = v92 + *(v112 + 36);
  *v93 = v82;
  *(v93 + 8) = v85;
  *(v93 + 16) = v87;
  *(v93 + 24) = v89;
  *(v93 + 32) = v91;
  *(v93 + 40) = 0;
  v94 = sub_13AF04();
  if (v36 == v111 - 1)
  {
    sub_13A844();
    sub_D3A64(v95);
  }

  sub_13A6E4();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v128;
  sub_16038(v92, v128, &qword_19FDE0, &qword_149F20);
  result = sub_4948(&qword_19FDC8, &qword_149F18);
  v106 = v104 + *(result + 36);
  *v106 = v94;
  *(v106 + 8) = v97;
  *(v106 + 16) = v99;
  *(v106 + 24) = v101;
  *(v106 + 32) = v103;
  *(v106 + 40) = 0;
  return result;
}

uint64_t sub_D7464@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_13B1A4();
  sub_4948(&qword_19D860, &qword_145320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 32) = a1;
  if (qword_19A080 != -1)
  {
    swift_once();
  }

  v6 = sub_13ACF4();
  sub_4910(v6, qword_19FA50);
  sub_13A854();
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  type metadata accessor for CGRect(0);
  result = sub_13BB14();
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_D7564(uint64_t *a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for PlatterListComponentView(0);

  sub_4948(&qword_19FBD8, &qword_149C30);
  return sub_13B244();
}

uint64_t sub_D75D8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for PlatterListComponentView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = *(a1 + 16);
  v17[4] = 0;
  v17[5] = v10;
  swift_getKeyPath();
  sub_DB524(a3, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterListComponentView);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_DB9FC(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlatterListComponentView);

  sub_4948(&qword_19AC80, &qword_13FE20);
  sub_4948(&qword_19FD50, &qword_149EC0);
  sub_16618();
  v13 = type metadata accessor for AppleOneOfferPlatterView(255);
  v14 = sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView, &unk_13FB90);
  v15 = sub_7DA88();
  v17[0] = v13;
  v17[1] = &unk_18C708;
  v17[2] = v14;
  v17[3] = v15;
  swift_getOpaqueTypeConformance2();
  return sub_13B314();
}

uint64_t sub_D7818@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a4;
  v79 = a5;
  v71 = type metadata accessor for PlatterListComponentView(0);
  v75 = *(v71 - 8);
  __chkstk_darwin(v71);
  v76 = v9;
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13ABC4();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_139A34();
  v67 = *(v12 - 8);
  v68 = v12;
  __chkstk_darwin(v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CarouselCell(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppleOneOfferPlatterView(0);
  __chkstk_darwin(v19);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  __chkstk_darwin(v25);
  v27 = &v67 - v26;
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v32 = *a1;
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v32 >= *(a2 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  v69 = &v67 - v30;
  v70 = v31;
  v33 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v32;
  sub_DB524(v33, v18, type metadata accessor for CarouselCell);
  type metadata accessor for AppleOneOfferPlatterModel(0);
  swift_allocObject();

  v34 = sub_F2E4(v18, a3);
  *v21 = swift_getKeyPath();
  sub_4948(&qword_19AC58, &qword_13FDB0);
  swift_storeEnumTagMultiPayload();
  v35 = v21 + v19[5];
  LOBYTE(v80) = 0;
  sub_13B224();
  v36 = v82;
  *v35 = v81;
  *(v35 + 1) = v36;
  v37 = v19[6];
  *(v21 + v37) = swift_getKeyPath();
  sub_4948(&qword_19AC60, &qword_144730);
  swift_storeEnumTagMultiPayload();
  v38 = v19[9];
  v39 = objc_opt_self();
  v40 = [v39 ams_secondaryBackground];
  *(v21 + v38) = sub_13B1E4();
  v41 = v19[10];
  v42 = [v39 ams_primarySystemFillColor];
  *(v21 + v41) = sub_13B1E4();
  *(v21 + v19[11]) = 0;
  *(v21 + v19[12]) = 1;
  *(v21 + v19[13]) = 0;
  *(v21 + v19[8]) = 2;
  *(v21 + v19[7]) = v34;
  if (_UISolariumEnabled() && (v44 = v67, v43 = v68, v45 = v14, (*(v67 + 104))(v14, enum case for FlagKeys.Solarium(_:), v68), v46 = sub_139A24(), (*(v44 + 8))(v45, v43), (v46 & 1) != 0))
  {
    if (qword_199D98 != -1)
    {
      swift_once();
    }

    v47 = &qword_1B28C0;
  }

  else
  {
    v47 = (v33 + 40);
  }

  v48 = *v47;

  sub_DB9FC(v21, v24, type metadata accessor for AppleOneOfferPlatterView);
  v49 = v19[9];

  *&v24[v49] = v48;
  if (qword_199D90 != -1)
  {
    goto LABEL_13;
  }

LABEL_10:
  v50 = qword_1B28B8;
  sub_DB524(v24, v27, type metadata accessor for AppleOneOfferPlatterView);
  v51 = v19[10];

  *&v27[v51] = v50;
  sub_DB580();
  v52 = v77;
  v53 = (v77 + *(v71 + 28));
  v55 = *v53;
  v54 = v53[1];
  v81 = v55;
  v82 = v54;
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  v56 = sub_D0ED8();

  v57 = v70;
  sub_DB524(v27, v70, type metadata accessor for AppleOneOfferPlatterView);
  *(v57 + v19[11]) = v32 == v56;
  sub_DB580();
  v58 = v72;
  sub_D2EB8(v72);
  LOBYTE(v56) = sub_750BC();
  (*(v73 + 8))(v58, v74);
  v59 = v57;
  v60 = v69;
  sub_DB9FC(v59, v69, type metadata accessor for AppleOneOfferPlatterView);
  *(v60 + v19[13]) = v56 & 1;
  v61 = v52;
  v62 = v78;
  sub_DB524(v61, v78, type metadata accessor for PlatterListComponentView);
  v63 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v64 = (v76 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  sub_DB9FC(v62, v65 + v63, type metadata accessor for PlatterListComponentView);
  *(v65 + v64) = v32;
  v81 = sub_DBCC0;
  v82 = v65;
  sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView, &unk_13FB90);
  sub_7DA88();
  sub_13B124();

  return sub_DB580();
}

double sub_D8020(uint64_t a1)
{
  sub_13B3F4();
  sub_13A8E4();

  return result;
}

double sub_D8094(__n128 a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlatterListComponentView(0);
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  sub_D0F68(a3);

  return result;
}

uint64_t sub_D811C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v4 = type metadata accessor for PlatterListComponentView(0);
  v5 = v4 - 8;
  v172 = *(v4 - 8);
  __chkstk_darwin(v4);
  v173 = v6;
  v174 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4948(&qword_19FC98, &qword_149D38);
  v165 = *(v7 - 8);
  v166 = v7;
  __chkstk_darwin(v7);
  v164 = &v161 - v8;
  v163 = sub_4948(&qword_19FCA0, &qword_149D40);
  __chkstk_darwin(v163);
  v168 = &v161 - v9;
  v171 = sub_4948(&qword_19FCA8, &qword_149D48);
  __chkstk_darwin(v171);
  v170 = &v161 - v10;
  v186 = sub_4948(&qword_19FCB0, &qword_149D50);
  v169 = *(v186 - 8);
  __chkstk_darwin(v186);
  v167 = &v161 - v11;
  v12 = sub_4948(&qword_19FCB8, &qword_149D58);
  __chkstk_darwin(v12 - 8);
  v188 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v192 = &v161 - v15;
  v184 = sub_4948(&qword_19FCC0, &qword_149D60);
  __chkstk_darwin(v184);
  v176 = (&v161 - v16);
  v17 = sub_4948(&qword_19FCC8, &unk_149D68);
  __chkstk_darwin(v17 - 8);
  v187 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v195 = &v161 - v20;
  v194 = sub_13ABC4();
  v196 = *(v194 - 8);
  __chkstk_darwin(v194);
  v193 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CarouselCell(0);
  __chkstk_darwin(v22 - 8);
  v162 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v175 = &v161 - v25;
  __chkstk_darwin(v26);
  v28 = &v161 - v27;
  v29 = sub_139D44();
  __chkstk_darwin(v29 - 8);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v178 = &v161 - v33;
  v177 = sub_4948(&qword_19ABE8, &qword_13FD00);
  __chkstk_darwin(v177);
  v182 = &v161 - v34;
  v180 = sub_4948(&qword_19FCD0, &qword_149D78);
  __chkstk_darwin(v180);
  v183 = &v161 - v35;
  v181 = sub_4948(&qword_19FCD8, &qword_149D80);
  __chkstk_darwin(v181);
  v185 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v179 = &v161 - v38;
  __chkstk_darwin(v39);
  v197 = &v161 - v40;
  v41 = *(v5 + 36);
  v191 = a1;
  v42 = (a1 + v41);
  v44 = *v42;
  v43 = v42[1];
  v45 = v44;
  v201[0] = v44;
  v201[1] = v43;
  v199 = v43;
  v198 = sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  v46 = sub_D1014();

  if (v46)
  {
    sub_EE08(v28);

    sub_4B14((v28 + 272), v201);
    sub_DB580();
  }

  else
  {
    memset(v201, 0, 40);
  }

  v47 = v199;
  v200[0] = v45;
  v200[1] = v199;
  sub_13B234();
  sub_D0B88();

  sub_139D24();
  v48 = v193;
  sub_D2EB8(v193);
  sub_750BC();
  v49 = *(v196 + 8);
  v196 += 8;
  v190 = v49;
  v49(v48, v194);
  sub_139D34();
  v50 = v45;
  sub_DB580();
  sub_139D14();
  sub_DB580();
  v51 = v178;
  sub_139D04();
  sub_DB580();
  v52 = objc_opt_self();
  v53 = [v52 ams_primaryText];
  v54 = sub_13B1E4();
  KeyPath = swift_getKeyPath();
  v56 = v51;
  v57 = v182;
  sub_DB9FC(v56, v182, &type metadata accessor for DynamicLabelText);
  v58 = (v57 + *(v177 + 36));
  *v58 = KeyPath;
  v58[1] = v54;
  v201[0] = v50;
  v201[1] = v47;
  sub_13B234();
  v59 = sub_D1014();

  if (v59)
  {
    sub_EE08(v28);

    sub_4B14((v28 + 272), v201);
    sub_DB580();
    v60 = v201[3];
    v61 = v201[4];
    sub_162F0(v201, v201[3]);
    v59 = (*(v61 + 72))(v60, v61);
    v63 = v62;
    sub_3C04(v201);
  }

  else
  {
    v63 = 0;
  }

  v64 = v183;
  sub_16038(v57, v183, &qword_19ABE8, &qword_13FD00);
  v65 = (v64 + *(v180 + 52));
  *v65 = v59;
  v65[1] = v63;
  v66 = sub_13AEC4();
  sub_13A6E4();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v179;
  sub_16038(v64, v179, &qword_19FCD0, &qword_149D78);
  v76 = v75 + *(v181 + 36);
  *v76 = v66;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = v72;
  *(v76 + 32) = v74;
  *(v76 + 40) = 0;
  sub_16038(v75, v197, &qword_19FCD8, &qword_149D80);
  v77 = v199;
  v201[0] = v50;
  v201[1] = v199;
  sub_13B234();
  sub_D0B88();
  v79 = v78;

  v201[0] = v50;
  v201[1] = v77;
  sub_13B234();
  v80 = sub_D1014();

  if (v80)
  {
    sub_EE08(v28);

    v80 = *(v28 + 23);

    sub_DB580();
  }

  v81 = v191;
  v82 = v195;
  sub_11DCB8(v79, v80, &v205);
  v83 = v193;
  sub_D2EB8(v193);
  v84 = sub_750BC();
  v190(v83, v194);
  if (v84)
  {
    v85 = sub_13B3D4();
  }

  else
  {
    v85 = sub_13B3C4();
  }

  v196 = v85;
  v191 = v86;
  v201[0] = v50;
  v201[1] = v199;
  sub_13B234();
  v87 = sub_D1014();

  if (v87)
  {
    sub_EE08(v28);

    sub_4B14((v28 + 272), v201);
    sub_DB580();
    v88 = v201[3];
    v89 = v201[4];
    sub_162F0(v201, v201[3]);
    v180 = (*(v89 + 72))(v88, v89);
    v183 = v90;
    sub_3C04(v201);
  }

  else
  {
    v180 = 0;
    v183 = 0;
  }

  v91 = v192;
  v181 = v208;
  v182 = v207;
  LODWORD(v179) = v206;
  v201[0] = v50;
  v201[1] = v199;
  sub_13B234();
  sub_D0B88();
  v93 = v92;

  v94 = 1;
  if (v93)
  {
    v95 = sub_13ABD4();
    v96 = v176;
    *v176 = v95;
    *(v96 + 8) = 0;
    *(v96 + 16) = 1;
    v97 = sub_4948(&qword_19FD38, &qword_149E78);
    sub_D9540(v81, v93, v96 + *(v97 + 44));

    sub_16038(v96, v82, &qword_19FCC0, &qword_149D60);
    v94 = 0;
  }

  sub_53A8(v82, v94, 1, v184);
  v200[0] = v50;
  v200[1] = v199;
  sub_13B234();
  v98 = sub_D1014();

  if (!v98)
  {
    goto LABEL_23;
  }

  v99 = v175;
  sub_EE08(v175);

  sub_16C24(v99, v201, &qword_19E960, &qword_13FD30);
  sub_DB580();
  v100 = v201[3];
  if (!v201[3])
  {
    sub_DB9AC(v201, &qword_19E960);
LABEL_23:
    v118 = v91;
    v119 = 1;
    v120 = v186;
    goto LABEL_31;
  }

  v101 = v201[4];
  sub_162F0(v201, v201[3]);
  v102 = (*(v101 + 72))(v100, v101);
  v104 = v103;
  sub_3C04(v201);
  v201[0] = v102;
  v201[1] = v104;
  sub_1628C();
  v184 = sub_13B004();
  v177 = v106;
  v178 = v105;
  LOBYTE(v104) = v107;
  v108 = v193;
  sub_D2EB8(v193);
  LODWORD(v175) = sub_750BC();
  v190(v108, v194);
  v194 = swift_getKeyPath();
  v193 = sub_13AF34();
  v190 = swift_getKeyPath();
  v109 = v104 & 1;
  v202 = v104 & 1;
  v110 = [v52 ams_primaryText];
  v176 = sub_13B1E4();
  v200[0] = v50;
  v200[1] = v199;
  sub_13B234();
  v111 = sub_D1014();

  if (!v111)
  {
LABEL_25:
    v115 = 0;
    v117 = 0xE000000000000000;
    goto LABEL_26;
  }

  v112 = v162;
  sub_EE08(v162);

  sub_16C24(v112, v201, &qword_19E960, &qword_13FD30);
  sub_DB580();
  v113 = v201[3];
  if (!v201[3])
  {
    sub_DB9AC(v201, &qword_19E960);
    goto LABEL_25;
  }

  v114 = v201[4];
  sub_162F0(v201, v201[3]);
  v115 = (*(v114 + 72))(v113, v114);
  v117 = v116;
  sub_3C04(v201);
LABEL_26:
  sub_4948(&qword_19AAA0, &qword_1427B0);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_13E650;
  v122 = sub_13AEE4();
  *(v121 + 32) = v122;
  v123 = sub_13AF04();
  *(v121 + 33) = v123;
  v124 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v122)
  {
    v124 = sub_13AEF4();
  }

  v125 = (v175 & 1) == 0;

  sub_13AEF4();
  if (sub_13AEF4() != v123)
  {
    v124 = sub_13AEF4();
  }

  v82 = v195;
  sub_13A6E4();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v203 = 0;
  v134 = sub_13AED4();
  sub_13A6E4();
  LOBYTE(v204) = 0;
  v200[0] = v184;
  v200[1] = v178;
  LOBYTE(v200[2]) = v109;
  v200[3] = v177;
  v200[4] = v194;
  LOBYTE(v200[5]) = v125;
  v200[6] = v190;
  v200[7] = v193;
  v200[8] = v176;
  v200[9] = v115;
  v200[10] = v117;
  LOBYTE(v200[11]) = v124;
  v200[12] = v127;
  v200[13] = v129;
  v200[14] = v131;
  v200[15] = v133;
  LOBYTE(v200[16]) = 0;
  LOBYTE(v200[17]) = v134;
  v200[18] = v135;
  v200[19] = v136;
  v200[20] = v137;
  v200[21] = v138;
  LOBYTE(v200[22]) = 0;
  sub_4948(&qword_19FCE8, &qword_149E28);
  sub_DB610(&qword_19FCF0, &qword_19FCE8, &qword_149E28, sub_DB690);
  v139 = v164;
  sub_13B154();
  memcpy(v201, v200, 0xB1uLL);
  sub_DB9AC(v201, &qword_19FCE8);
  v140 = swift_getKeyPath();
  v141 = v168;
  (*(v165 + 32))(v168, v139, v166);
  v142 = &v141[*(v163 + 36)];
  *v142 = v140;
  v142[1] = 0x3FE0000000000000;
  v143 = v174;
  sub_DB524(v81, v174, type metadata accessor for PlatterListComponentView);
  v144 = (*(v172 + 80) + 16) & ~*(v172 + 80);
  v145 = swift_allocObject();
  sub_DB9FC(v143, v145 + v144, type metadata accessor for PlatterListComponentView);
  v146 = v141;
  v147 = v170;
  sub_16038(v146, v170, &qword_19FCA0, &qword_149D40);
  v148 = (v147 + *(v171 + 36));
  *v148 = sub_DB79C;
  v148[1] = v145;
  sub_DB7F8();
  v148[2] = 0;
  v148[3] = 0;
  v149 = v167;
  sub_13B064();
  sub_DB9AC(v147, &qword_19FCA8);
  v150 = v186;
  (*(v169 + 32))(v91, v149, v186);
  v118 = v91;
  v119 = 0;
  v120 = v150;
LABEL_31:
  sub_53A8(v118, v119, 1, v120);
  v151 = v185;
  sub_16C24(v197, v185, &qword_19FCD8, &qword_149D80);
  v152 = v187;
  sub_16C24(v82, v187, &qword_19FCC8, &unk_149D68);
  v153 = v188;
  sub_16C24(v91, v188, &qword_19FCB8, &qword_149D58);
  v154 = v189;
  sub_16C24(v151, v189, &qword_19FCD8, &qword_149D80);
  v155 = sub_4948(&qword_19FCE0, &unk_149DB8);
  v156 = v154 + v155[12];
  v157 = v191;
  *v156 = v196;
  *(v156 + 8) = v157;
  *(v156 + 16) = v179;
  v158 = v181;
  *(v156 + 24) = v182;
  *(v156 + 32) = v158;
  v159 = v183;
  *(v156 + 40) = v180;
  *(v156 + 48) = v159;
  sub_16C24(v152, v154 + v155[16], &qword_19FCC8, &unk_149D68);
  sub_16C24(v153, v154 + v155[20], &qword_19FCB8, &qword_149D58);

  sub_DB9AC(v192, &qword_19FCB8);
  sub_DB9AC(v195, &qword_19FCC8);
  sub_DB9AC(v197, &qword_19FCD8);
  sub_DB9AC(v153, &qword_19FCB8);
  sub_DB9AC(v152, &qword_19FCC8);

  return sub_DB9AC(v151, &qword_19FCD8);
}

uint64_t sub_D9540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = type metadata accessor for OfferBadge(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CarouselCell(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19ABA0, &qword_149E80);
  __chkstk_darwin(v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v19 = sub_4948(&qword_19FD40, &qword_149E88);
  __chkstk_darwin(v19 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v42 - v23;
  if (sub_D3130())
  {
    v25 = 1;
    goto LABEL_9;
  }

  v44 = a3;
  v26 = *(type metadata accessor for PlatterListComponentView(0) + 28);
  v43 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  v47 = v29;
  v48 = v28;
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  v30 = sub_D1014();

  if (!v30)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_7;
  }

  sub_EE08(v10);

  sub_16C24((v10 + 144), &v49, &qword_19E960, &qword_13FD30);
  sub_DB580();
  if (!*(&v50 + 1))
  {
LABEL_7:
    sub_DB9AC(&v49, &qword_19E960);
    sub_53A8(v18, 1, 1, v5);
    goto LABEL_8;
  }

  sub_9414(&v49, v52);
  sub_4B14(v52, v7 + v5[9]);
  *v7 = swift_getKeyPath();
  sub_4948(&qword_19AC58, &qword_13FDB0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[5]) = swift_getKeyPath();
  sub_4948(&qword_19AC60, &qword_144730);
  swift_storeEnumTagMultiPayload();
  v31 = v7 + v5[6];
  type metadata accessor for CGSize(0);
  v47 = 0;
  v48 = 0;
  sub_13B224();
  sub_3C04(v52);
  v32 = v50;
  *v31 = v49;
  *(v31 + 2) = v32;
  *(v7 + v5[7]) = 0;
  *(v7 + v5[8]) = v45;
  sub_DB9FC(v7, v18, type metadata accessor for OfferBadge);
  sub_53A8(v18, 0, 1, v5);

LABEL_8:
  a3 = v44;
  sub_16038(v18, v24, &qword_19ABA0, &qword_149E80);
  v25 = 0;
  a1 = v43;
LABEL_9:
  sub_53A8(v24, v25, 1, v11);
  v33 = (a1 + *(type metadata accessor for PlatterListComponentView(0) + 28));
  v35 = *v33;
  v34 = v33[1];
  v47 = v35;
  v48 = v34;
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  v36 = sub_D1014();

  if (!v36)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_13;
  }

  sub_EE08(v10);

  sub_16C24((v10 + 192), &v49, &qword_19E960, &qword_13FD30);
  sub_DB580();
  if (!*(&v50 + 1))
  {
LABEL_13:
    sub_DB9AC(&v49, &qword_19E960);
    sub_53A8(v15, 1, 1, v5);
    goto LABEL_14;
  }

  sub_9414(&v49, v52);
  sub_4B14(v52, v7 + v5[9]);
  *v7 = swift_getKeyPath();
  sub_4948(&qword_19AC58, &qword_13FDB0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[5]) = swift_getKeyPath();
  sub_4948(&qword_19AC60, &qword_144730);
  swift_storeEnumTagMultiPayload();
  v37 = v7 + v5[6];
  type metadata accessor for CGSize(0);
  v47 = 0;
  v48 = 0;
  sub_13B224();
  sub_3C04(v52);
  v38 = v50;
  *v37 = v49;
  *(v37 + 2) = v38;
  *(v7 + v5[7]) = 0;
  *(v7 + v5[8]) = v45;
  sub_DB9FC(v7, v15, type metadata accessor for OfferBadge);
  sub_53A8(v15, 0, 1, v5);

LABEL_14:
  sub_16C24(v24, v21, &qword_19FD40, &qword_149E88);
  v39 = v46;
  sub_16C24(v15, v46, &qword_19ABA0, &qword_149E80);
  sub_16C24(v21, a3, &qword_19FD40, &qword_149E88);
  v40 = sub_4948(&qword_19FD48, &unk_149E90);
  sub_16C24(v39, a3 + *(v40 + 48), &qword_19ABA0, &qword_149E80);
  sub_DB9AC(v15, &qword_19ABA0);
  sub_DB9AC(v24, &qword_19FD40);
  sub_DB9AC(v39, &qword_19ABA0);
  return sub_DB9AC(v21, &qword_19FD40);
}

double sub_D9C30(uint64_t a1, __n128 a2)
{
  type metadata accessor for PlatterListComponentView(0);
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  v2 = sub_D0ED8();
  sub_D0F68(v2);

  return result;
}

void sub_D9CD4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 8);
  type metadata accessor for PlatterListComponentView(0);
  sub_4948(&qword_19FB50, &qword_149BD8);
  sub_13B234();
  sub_D13D4(v3);
}

void *sub_D9D54(double *a1, void *(*a2)(double *__return_ptr))
{
  v4 = a1[1];
  result = a2(&v8);
  if (v9 >= v4 && (v6 = *a1, result = (a2)(&v8, result, v9), v8 >= v6))
  {
    result = (a2)(&v8, result, v8);
    v7 = v8;
    v4 = v9;
  }

  else
  {
    v7 = *a1;
  }

  *a1 = v7;
  a1[1] = v4;
  return result;
}

uint64_t sub_D9E5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13AA34();
  *a1 = result;
  return result;
}

void sub_D9EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a4;
  sub_D9F28(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v9);
  *a4 = v9;
}

void sub_D9F28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  sub_7FB50(v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v31 = v41[5];
  v32 = v41[0];
  v9 = (v41[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = *(*(v32 + 48) + 8 * v12);
      v14 = (*(v32 + 56) + 32 * v12);
      v38 = v13;
      v15 = v14[1];
      v39 = *v14;
      v40 = v15;
      v31(&v35, &v38);
      v16 = v35;
      v33 = v36;
      v34 = v37;
      v17 = *v42;
      v19 = sub_7C4E8(v35);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      v22 = v18;
      if (v17[3] >= v20 + v21)
      {
        if ((a4 & 1) == 0)
        {
          sub_4948(&qword_19D520, &qword_144D88);
          sub_13C084();
        }
      }

      else
      {
        sub_7CB7C();
        v23 = sub_7C4E8(v16);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_23;
        }

        v19 = v23;
      }

      v8 &= v8 - 1;
      v25 = *v42;
      if (v22)
      {
        v26 = (v25[7] + 32 * v19);
        *v26 = v33;
        v26[1] = v34;
      }

      else
      {
        v25[(v19 >> 6) + 8] |= 1 << v19;
        *(v25[6] + 8 * v19) = v16;
        v27 = (v25[7] + 32 * v19);
        *v27 = v33;
        v27[1] = v34;
        v28 = v25[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_22;
        }

        v25[2] = v30;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_7D220();

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_13C174();
  __break(1u);
}

unint64_t *sub_DA194(uint64_t a1, CGFloat a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      v4 = sub_DA450(v10, v6, v4, a2);

      return v4;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_7D0F0(0, v6, v7);
  sub_DA30C(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return v4;
}

void sub_DA30C(unint64_t *a1, uint64_t a2, uint64_t a3, CGFloat a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    if (CGRectGetWidth(*(*(a3 + 56) + 32 * v18)) > a4)
    {
      *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_15:
        sub_DA4D8(a1, a2, v8, a3);
        return;
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_15;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_DA450(unint64_t *result, uint64_t a2, uint64_t a3, CGFloat a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_DA30C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_DA4D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_4948(&qword_19D528, &qword_144D90);
  result = sub_13C0E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 32 * v16);
    v29 = v18[1];
    v30 = *v18;
    result = sub_13C204();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    v27 = (*(v9 + 56) + 32 * v22);
    *v27 = v30;
    v27[1] = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_DA738(uint64_t a1, uint64_t a2, int *a3)
{
  sub_4948(&qword_19A968, &unk_13FAF0);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970, &unk_142620);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_4948(&qword_19FA68, &unk_149AC0);
    v12 = a3[11];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_DA87C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_4948(&qword_19A968, &unk_13FAF0);
  sub_17250();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4948(&qword_19A970, &unk_142620);
    sub_17250();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = sub_4948(&qword_19FA68, &unk_149AC0);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  sub_53A8(v11, a2, a2, v10);
}

uint64_t type metadata accessor for PlatterListComponentView(uint64_t a1)
{
  result = qword_19FAC8;
  if (!qword_19FAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DA9F4(uint64_t a1)
{
  sub_DACA8(319, &qword_19A9E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_DACA8(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_DABF8(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_DACA8(319, &qword_19FAE0, type metadata accessor for PlatterListComponentModel, &type metadata accessor for State);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_DAC5C(319, &qword_19A9E8, &type metadata for Bool);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_DAC5C(319, &qword_19FAE8, &type metadata for PlatterFramesPreferenceKey);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_DACA8(319, &unk_19FAF0, &type metadata accessor for ScrollPosition, &type metadata accessor for State);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_DABF8(uint64_t a1)
{
  if (!qword_19FAD8)
  {
    sub_558C(&qword_19FA40, &qword_149AF0);
    v1 = sub_13B264();
    if (!v2)
    {
      atomic_store(v1, &qword_19FAD8);
    }
  }
}

void sub_DAC5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_13B264();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_DACA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_DCB04();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_DAD38()
{
  v2 = sub_DCA1C();
  sub_8AD98(v2);
  sub_DCA0C();

  return sub_D3C04(v0, v3, v1);
}

void sub_DADBC()
{
  v1 = sub_9A0C4();
  v2 = type metadata accessor for PlatterListComponentView(v1);
  sub_8AD98(v2);
  sub_DCA0C();

  sub_D9CD4(v0, v3, v4);
}

uint64_t sub_DAE1C()
{
  v1 = type metadata accessor for PlatterListComponentView(0);
  sub_DC9B0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_13A864();
  sub_9E94();
  v6 = v5;
  v7 = v0 + v3;
  sub_4948(&qword_19AC58, &qword_13FDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v8 + 8))(v0 + v3);
  }

  else
  {
  }

  v9 = v1[5];
  sub_4948(&qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  sub_DC9D0();
  sub_DCAE4(v1[7]);

  sub_DCAE4(v1[10]);

  v11 = v7 + v1[11];
  sub_13A914();
  sub_5224();
  (*(v12 + 8))(v11);
  sub_4948(&qword_19FA68, &unk_149AC0);

  (*(v6 + 8))(v0 + v3, v4);
  v13 = sub_DCAC4();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_DB090(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for PlatterListComponentView(0);
  sub_CCF4(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_13A864();
  sub_8AD98(v7);
  v9 = v1 + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v1 + v4, v9);
}

unint64_t sub_DB164()
{
  result = qword_19FB80;
  if (!qword_19FB80)
  {
    sub_558C(&qword_19FB40, &qword_149BC0);
    sub_DB21C();
    sub_7FAA8(&qword_19FBB8, &unk_19FBC0, &unk_149C20, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FB80);
  }

  return result;
}

unint64_t sub_DB21C()
{
  result = qword_19FB88;
  if (!qword_19FB88)
  {
    sub_558C(&qword_19FB78, &qword_149C08);
    sub_DB2D4();
    sub_7FAA8(&qword_19FBA8, &unk_19FBB0, &unk_149C18, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FB88);
  }

  return result;
}

unint64_t sub_DB2D4()
{
  result = qword_19FB90;
  if (!qword_19FB90)
  {
    sub_558C(&qword_19FB70, &qword_149C00);
    sub_7FAA8(&qword_19FB98, &unk_19FBA0, &unk_149C10, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FB90);
  }

  return result;
}

unint64_t sub_DB38C()
{
  result = qword_19FC70;
  if (!qword_19FC70)
  {
    sub_558C(&qword_19FC48, &qword_149CA0);
    sub_DB410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FC70);
  }

  return result;
}

unint64_t sub_DB410()
{
  result = qword_19FC78;
  if (!qword_19FC78)
  {
    sub_558C(&qword_19FC38, &qword_149C90);
    sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView, &unk_13FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FC78);
  }

  return result;
}

uint64_t sub_DB4CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_DB524(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_DB580()
{
  v1 = sub_9A0C4();
  v2(v1);
  sub_5224();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_DB5D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13AA34();
  *a1 = result;
  return result;
}

uint64_t sub_DB610(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_7FD80(0, a2);
    sub_558C(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_DB690()
{
  result = qword_19FCF8;
  if (!qword_19FCF8)
  {
    sub_558C(&qword_19FD00, &qword_149E30);
    sub_7FAA8(&qword_19FD08, &unk_19FD10, &unk_149E38, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FCF8);
  }

  return result;
}

double sub_DB79C()
{
  v1 = type metadata accessor for PlatterListComponentView(0);
  sub_8AD98(v1);
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_D9C30(v4, v2);
}

unint64_t sub_DB7F8()
{
  result = qword_19FD18;
  if (!qword_19FD18)
  {
    sub_558C(&qword_19FCA8, &qword_149D48);
    sub_DB884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD18);
  }

  return result;
}

unint64_t sub_DB884()
{
  result = qword_19FD20;
  if (!qword_19FD20)
  {
    sub_558C(&qword_19FCA0, &qword_149D40);
    sub_558C(&qword_19FCE8, &qword_149E28);
    sub_DB610(&qword_19FCF0, &qword_19FCE8, &qword_149E28, sub_DB690);
    swift_getOpaqueTypeConformance2();
    sub_7FAA8(&qword_19FD28, &unk_19FD30, &unk_149E70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD20);
  }

  return result;
}

uint64_t sub_DB9AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7FD80(a1, a2);
  sub_4948(v3, v4);
  sub_5224();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_DB9FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_DBA58()
{
  v1 = type metadata accessor for PlatterListComponentView(0);
  sub_DC9B0();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  sub_4948(&qword_19AC58, &qword_13FDB0);
  sub_DCB04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  v8 = v1[5];
  sub_4948(&qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v9 + 8))(v0 + v4 + v8);
  }

  else
  {
  }

  sub_DCA8C();
  sub_DCAD8(v1[7]);

  sub_DCA70();
  sub_DCA54();
  sub_DCAD8(v1[10]);

  sub_DCA38();
  sub_5224();
  (*(v10 + 8))(v1);
  sub_4948(&qword_19FA68, &unk_149AC0);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_DBC48()
{
  v3 = sub_DCA1C();
  sub_8AD98(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_D7818(v0, v5, v6, v7, v2);
}

unint64_t sub_DBCE4()
{
  result = qword_19FD80;
  if (!qword_19FD80)
  {
    sub_558C(&qword_19FD78, &qword_149EE8);
    sub_DBD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD80);
  }

  return result;
}

unint64_t sub_DBD70()
{
  result = qword_19FD88;
  if (!qword_19FD88)
  {
    sub_558C(&qword_19FD90, &qword_149EF0);
    sub_7FAA8(&qword_19FD98, &unk_19FDA0, &unk_149EF8, &protocol conformance descriptor for HStack<A>);
    sub_7FAA8(&qword_19FDA8, &unk_19FDB0, &unk_149F00, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD88);
  }

  return result;
}

uint64_t sub_DBE54()
{
  v1 = type metadata accessor for PlatterListComponentView(0);
  sub_DC9B0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = sub_13A864();
  sub_9E94();
  v6 = v5;

  v7 = v0 + v3;
  sub_4948(&qword_19AC58, &qword_13FDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v8 + 8))(v0 + v3);
  }

  else
  {
  }

  v9 = v1[5];
  sub_4948(&qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  sub_DC9D0();
  sub_DCAE4(v1[7]);

  sub_DCAE4(v1[10]);

  v11 = v7 + v1[11];
  sub_13A914();
  sub_5224();
  (*(v12 + 8))(v11);
  sub_4948(&qword_19FA68, &unk_149AC0);

  (*(v6 + 8))(v0 + v3, v4);
  v13 = sub_DCAC4();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_DC0D8()
{
  v3 = sub_DCA1C();
  sub_CCF4(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_13A864();
  sub_8AD98(v8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_D6874(v0, v10, v11, v1 + v5, v12, v2);
}

unint64_t sub_DC1A8()
{
  result = qword_19FDD0;
  if (!qword_19FDD0)
  {
    sub_558C(&qword_19FDC8, &qword_149F18);
    sub_DB610(&qword_19FDD8, &qword_19FDE0, &qword_149F20, sub_DC260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FDD0);
  }

  return result;
}

unint64_t sub_DC260()
{
  result = qword_19FDE8;
  if (!qword_19FDE8)
  {
    sub_558C(&qword_19FDF0, &qword_149F28);
    sub_DC318();
    sub_7FAA8(&qword_19FE08, &unk_19FE10, &unk_149F38, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FDE8);
  }

  return result;
}

unint64_t sub_DC318()
{
  result = qword_19FDF8;
  if (!qword_19FDF8)
  {
    sub_558C(&qword_19FE00, &qword_149F30);
    type metadata accessor for AppleOneOfferPlatterView(255);
    sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView, &unk_13FB90);
    sub_7DA88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FDF8);
  }

  return result;
}

uint64_t sub_DC420()
{
  v1 = type metadata accessor for PlatterListComponentView(0);
  sub_DC9B0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_4948(&qword_19AC58, &qword_13FDB0);
  sub_DCB04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  v8 = v1[5];
  sub_4948(&qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v9 + 8))(v0 + v4 + v8);
  }

  else
  {
  }

  sub_DCA8C();
  sub_DCAD8(v1[7]);

  sub_DCA70();
  sub_DCA54();
  sub_DCAD8(v1[10]);

  sub_DCA38();
  sub_5224();
  (*(v10 + 8))(v1);
  sub_4948(&qword_19FA68, &unk_149AC0);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_DC600()
{
  v1 = sub_9A0C4();
  v2 = type metadata accessor for PlatterListComponentView(v1);
  sub_8AD98(v2);
  sub_DCA0C();

  return sub_D7564(v0, v3, v4);
}

uint64_t sub_DC660()
{
  v1 = type metadata accessor for PlatterListComponentView(0);
  sub_DC9B0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_4948(&qword_19AC58, &qword_13FDB0);
  sub_DCB04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  v8 = *(v1 + 20);
  sub_4948(&qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v9 + 8))(v0 + v4 + v8);
  }

  else
  {
  }

  sub_DCA8C();

  sub_DCA70();
  sub_DCA54();

  sub_DCA38();
  sub_5224();
  (*(v10 + 8))(v1);
  sub_4948(&qword_19FA68, &unk_149AC0);

  return _swift_deallocObject(v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

double sub_DC86C()
{
  v1 = sub_9A0C4();
  v2 = type metadata accessor for PlatterListComponentView(v1);
  sub_CCF4(v2);
  return sub_D8020(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

double sub_DC9D0()
{

  return result;
}

uint64_t sub_DCA1C()
{

  return type metadata accessor for PlatterListComponentView(0);
}

uint64_t sub_DCA38()
{

  return sub_13A914();
}

double sub_DCA54()
{

  return result;
}

double sub_DCA70()
{

  return result;
}

double sub_DCA8C()
{

  return result;
}

uint64_t sub_DCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return sub_13B244();
}

uint64_t sub_DCB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v36 = a2;
  v43 = a6;
  v44 = a1;
  v9 = sub_13ACE4();
  __chkstk_darwin(v9);
  v10 = sub_13A754();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19FE98, &qword_14A188);
  sub_9E94();
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_4948(&qword_19FEA0, &qword_14A190);
  sub_9E94();
  v41 = v20;
  v42 = v21;
  __chkstk_darwin(v20);
  v23 = &v35 - v22;
  sub_13AD74();
  sub_13A744();
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v25 = v38;
  v24[4] = a4;
  v24[5] = v25;
  sub_DD5D0(&qword_19FEA8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_DD5D0(&qword_19FEB0, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);

  sub_13B344();

  (*(v12 + 8))(v15, v10);
  v26 = swift_allocObject();
  v27 = v37;
  v26[2] = v36;
  v26[3] = a3;
  v26[4] = v27;
  v26[5] = v25;
  sub_CBC0(&qword_19FEB8, &qword_19FE98, &qword_14A188, &protocol conformance descriptor for _ChangedGesture<A>);

  v28 = v39;
  sub_13B334();

  (*(v40 + 8))(v19, v28);
  sub_13A774();
  sub_4948(&qword_19FEC0, &qword_14A198);
  sub_DD76C();
  sub_CBC0(v29, &qword_19FEC0, &qword_14A198, v30);
  sub_DD754();
  sub_CBC0(v31, &qword_19FEA0, &qword_14A190, v32);
  v33 = v41;
  sub_13B104();
  return (*(v42 + 8))(v23, v33);
}

id sub_DCFA8()
{
  v0 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  [v0 setMinimumPressDuration:0.0];
  [v0 setAllowableMovement:INFINITY];
  v1 = v0;
  sub_4948(&qword_19FE90, &qword_14A0F8);
  sub_13AE54();
  [v1 setDelegate:v3];

  return v1;
}

uint64_t sub_DD05C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ([a1 state] != &dword_0 + 1)
  {
    [a1 state];
  }

  sub_4948(&qword_19D9D0, &qword_145900);
  return sub_13B2D4();
}

id sub_DD114()
{
  v0 = objc_allocWithZone(type metadata accessor for PressGesture.Coordinator());

  return [v0 init];
}

id sub_DD1C8@<X0>(void *a1@<X8>)
{
  result = sub_DD114();
  *a1 = result;
  return result;
}

id sub_DD20C()
{
  v0 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v0 setNumberOfTouchesRequired:1];
  [v0 setNumberOfTapsRequired:1];
  v1 = v0;
  sub_4948(&unk_19FE80, &qword_14A090);
  sub_13AE54();
  [v1 setDelegate:v3];

  return v1;
}

char *sub_DD2BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = [a1 state];
  if (result == &dword_0 + 3)
  {
    return a3();
  }

  return result;
}

id sub_DD2FC()
{
  v0 = objc_allocWithZone(type metadata accessor for TapGesture.Coordinator());

  return [v0 init];
}

id sub_DD338(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_DD3C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_DD428@<X0>(void *a1@<X8>)
{
  result = sub_DD2FC();
  *a1 = result;
  return result;
}

__n128 sub_DD45C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_DD470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_DD4B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_DD4FC(uint64_t *a1, int a2)
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

uint64_t sub_DD53C(uint64_t result, int a2, int a3)
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

uint64_t sub_DD5D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_DD618()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DD680()
{
  sub_558C(&qword_19FEC0, &qword_14A198);
  sub_558C(&qword_19FEA0, &qword_14A190);
  sub_DD76C();
  sub_CBC0(v0, &qword_19FEC0, &qword_14A198, v1);
  sub_DD754();
  sub_CBC0(v2, &qword_19FEA0, &qword_14A190, v3);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_DD784(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_DD7A4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_DD784(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_DD7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_DD794(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_DD80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_DD880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v74 = a3;
  v4 = sub_4948(&qword_19DDA8, &unk_1459F0);
  __chkstk_darwin(v4 - 8);
  v77 = v71 - v5;
  sub_13B584();
  sub_9E94();
  v80 = v6;
  v81 = v7;
  __chkstk_darwin(v6);
  v73 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = v71 - v10;
  __chkstk_darwin(v11);
  v13 = v71 - v12;
  v14 = sub_13B644();
  sub_9E94();
  v78 = v15;
  __chkstk_darwin(v16);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PromptLocationAction(0);
  sub_2B538();
  __chkstk_darwin(v20);
  v79 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = a1;
  sub_13B594();
  v24 = v14;
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v75 = v23;
  v71[1] = inited;
  v25 = v81;
  v26 = v77;
  sub_DE1DC(v13, v86, v77);
  if (sub_52E0(v26, 1, v14) == 1)
  {
    sub_184DC(v26, &qword_19DDA8, &unk_1459F0);
    v23 = v75;
LABEL_4:
    sub_13BAB4();
    sub_DE88C();
    sub_DE844(v27, v28, &protocol conformance descriptor for JSONError);
    swift_allocError();
    strcpy(v29, "actionMetrics");
    *(v29 + 7) = -4864;
    *(v29 + 2) = v19;
    sub_2B538();
    (*(v30 + 104))();
    swift_willThrow();

    v31 = v80;
    v32 = *(v81 + 8);
    v32(v23, v80);
    v32(v13, v31);
    v33 = 0;
    v34 = v79;
    goto LABEL_11;
  }

  v37 = *(v25 + 8);
  v36 = v25 + 8;
  v35 = v37;
  v37(v13, v80);
  v38 = *(v78 + 32);
  v38(v18, v26, v14);
  v39 = *(v19 + 28);
  v40 = v75;
  v41 = v19;
  v42 = v79;
  v77 = v14;
  v38(&v79[v39], v18, v14);
  v43 = v76;
  v44 = sub_BB598(0xD000000000000011, 0x80000000001516D0, v41);
  if (v43)
  {
    v35(v40, v80);

    v33 = 1;
    v34 = v42;
    v19 = v41;
    v24 = v77;
LABEL_11:
    sub_13B5A4();
    sub_5224();
    result = (*(v48 + 8))(v86);
    if (v33)
    {
      return (*(v78 + 8))(&v34[*(v19 + 28)], v24);
    }

    return result;
  }

  v45 = v35;
  v46 = v36;
  if (v44 >= 3)
  {
    v47 = 1;
  }

  else
  {
    v47 = v44;
  }

  *v42 = v47;
  *(v42 + 1) = sub_BB310();
  *(v42 + 2) = v50;
  sub_BB458();
  v78 = v41;
  sub_DE8D0();
  v42[24] = v51 & 1;
  v52 = v72;
  sub_13B594();
  v53 = sub_13B564();
  v81 = v46;
  if (v53)
  {
    v71[0] = v35;
    sub_13BAB4();
    sub_DE88C();
    v56 = sub_DE844(v54, v55, &protocol conformance descriptor for JSONError);
    sub_9F18(v56);
    *v57 = 0x416572756C696166;
    v57[1] = v41;
    v69 = v78;
    v57[2] = v78;
    sub_2B538();
    (*(v58 + 104))();
    swift_willThrow();
    (v71[0])(v52, v80);

    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();
    v35(v52, v80);
    sub_9414(&v82, &v83);
    v41 = 0xED00006E6F697463;
    v69 = v78;
  }

  sub_DE8BC();
  sub_8DBA0(&v79[*(v69 + 32)]);
  v59 = v73;
  v60 = v75;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_DE88C();
    v63 = sub_DE844(v61, v62, &protocol conformance descriptor for JSONError);
    sub_9F18(v63);
    *v64 = 0x416572756C696166;
    v64[1] = v41;
    v64[2] = v69;
    sub_2B538();
    (*(v65 + 104))();
    swift_willThrow();

    v66 = v80;
    v45(v60, v80);
    v45(v59, v66);

    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();

    v70 = v80;
    v45(v75, v80);
    v45(v59, v70);
    sub_9414(&v82, &v83);
    v69 = v78;
  }

  v67 = v79;
  sub_8DBA0(&v79[*(v69 + 36)]);
  sub_DE3F4(v67, v74);
  sub_13B5A4();
  sub_5224();
  (*(v68 + 8))(v86);
  return sub_DE458(v67);
}

uint64_t sub_DE1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for PromptLocationAction(uint64_t a1)
{
  result = qword_19FF38;
  if (!qword_19FF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DE3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptLocationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DE458(uint64_t a1)
{
  v2 = type metadata accessor for PromptLocationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DE4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_DE564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_DE5E4(uint64_t a1)
{
  sub_13B644();
  if (v1 <= 0x3F)
  {
    sub_5528(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PromptLocationAction.AuthorizationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0xDE75CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_DE798()
{
  result = qword_19FF80;
  if (!qword_19FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FF80);
  }

  return result;
}

uint64_t sub_DE7EC(uint64_t a1)
{
  result = sub_DE844(&qword_19F158, type metadata accessor for PromptLocationAction, &unk_14A1A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_DE844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_DE8E4(char *a1)
{
  if (qword_19A018 != -1)
  {
    sub_CCD4(&qword_19A018);
  }

  v3 = sub_139A14();
  sub_4910(v3, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v4 = sub_1399C4();
  sub_CCF4(v4);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v26 = type metadata accessor for PromptLocationActionImplementation();
  v28 = v26;
  v27[0] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v27);
  sub_139974();
  sub_1399F4();

  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue];
  objc_allocWithZone(CLLocationManager);
  v11 = v5;

  v12 = v10;
  v14 = sub_DF97C(v8, v9, v5, v10, v13);
  v15 = *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_manager];
  *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_manager] = v14;
  v16 = v14;

  if (v14)
  {
    v17 = [v16 authorizationStatus];
    v18 = &v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus];
    *v18 = v17;
    v18[4] = 0;
    [v16 *off_18C9B0[*a1]];
    if (a1[24] == 1)
    {
      sub_DFC5C();
      sub_E0C88(1, v19);

      sub_CC68(v27, &qword_1A0060, &qword_146300);
    }

    else
    {
    }
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_13E660;
    v28 = v26;
    v27[0] = v11;
    v11;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v27);
    sub_139974();
    v28 = &type metadata for PromptLocationActionImplementation.PerformError;
    sub_139984();
    sub_CC68(v27, &unk_1A06F0, &unk_13EF80);
    sub_1399E4();

    sub_DFA08();
    swift_allocError();
    sub_DFC5C();
    sub_E0B50(v22, v23);
    sub_CC68(v27, &qword_1A0060, &qword_146300);
  }

  v28 = sub_13B7C4();
  v29 = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v27);
  sub_13B7B4();
  v24 = sub_13B9C4();
  sub_3C04(v27);
  return v24;
}

id sub_DED38()
{
  v1 = sub_13BD64();
  __chkstk_darwin(v1);
  sub_9EC0();
  v2 = sub_13BD74();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = sub_13B4E4();
  __chkstk_darwin(v9 - 8);
  sub_9EC0();
  *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_manager] = 0;
  v10 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus];
  *v10 = 0;
  v10[4] = 1;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_promise;
  sub_4948(&unk_1A0070, &qword_1462F8);
  *&v0[v11] = sub_13BA24();
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue;
  sub_7389C();
  sub_13B4D4();
  (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v15 = _swiftEmptyArrayStorage;
  sub_DFA5C(&qword_1A0080, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_4948(&qword_1A0088, &qword_14A350);
  sub_DFAA4();
  sub_13BF64();
  *&v0[v13] = sub_13BDA4();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PromptLocationActionImplementation();
  return objc_msgSendSuper2(&v14, "init");
}

id sub_DEFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptLocationActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_DF0C0(void *a1)
{
  sub_13B4F4();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue];
  *(v6 - v5) = v7;
  v8 = sub_DFC34();
  v9(v8);
  v10 = v7;
  sub_13B504();
  v11 = sub_DFC48();
  v12(v11);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    sub_CCD4(&qword_19A018);
    goto LABEL_9;
  }

  v13 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus];
  v14 = v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus + 4];
  v2 = &selRef_clearColor;
  v15 = [a1 authorizationStatus];
  if ((v14 & 1) == 0 && v13 == v15)
  {
    if (qword_19A018 != -1)
    {
      sub_CCD4(&qword_19A018);
    }

    v16 = sub_139A14();
    sub_4910(v16, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    v17 = sub_1399C4();
    sub_CCF4(v17);
    *(swift_allocObject() + 16) = xmmword_13E660;
    *(&v27 + 1) = type metadata accessor for PromptLocationActionImplementation();
    *&v26 = v1;
    v18 = v1;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v26);
    sub_139974();
    sub_DFC70([a1 authorizationStatus], &type metadata for Int32);
    sub_CC68(&v26, &unk_1A06F0, &unk_13EF80);
    sub_1399F4();

    return result;
  }

  if (qword_19A018 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v21 = sub_139A14();
  sub_4910(v21, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v22 = sub_1399C4();
  sub_CCF4(v22);
  *(swift_allocObject() + 16) = xmmword_13E660;
  *(&v27 + 1) = type metadata accessor for PromptLocationActionImplementation();
  *&v26 = v1;
  v1;
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v26);
  sub_139974();
  sub_DFC70([a1 v2[160]], &type metadata for Int32);
  sub_CC68(&v26, &unk_1A06F0, &unk_13EF80);
  sub_1399F4();

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_E0C88(1, &v26);
  sub_CC68(&v26, &qword_1A0060, &qword_146300);
  return result;
}

uint64_t sub_DF5B4(uint64_t a1, uint64_t a2)
{
  sub_13B4F4();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue];
  *(v6 - v5) = v7;
  v8 = sub_DFC34();
  v9(v8);
  v10 = v7;
  sub_13B504();
  v11 = sub_DFC48();
  v12(v11);
  if (v7)
  {
    if (qword_19A018 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_CCD4(&qword_19A018);
LABEL_3:
  v13 = sub_139A14();
  sub_4910(v13, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v14 = sub_1399C4();
  sub_CCF4(v14);
  *(swift_allocObject() + 16) = xmmword_13E660;
  *(&v22 + 1) = type metadata accessor for PromptLocationActionImplementation();
  *&v21 = v2;
  v2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v21);
  sub_139974();
  swift_getErrorValue();
  v17 = v24;
  v18 = v25;
  *(&v22 + 1) = v25;
  v19 = sub_CC08(&v21);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_139984();
  sub_CC68(&v21, &unk_1A06F0, &unk_13EF80);
  sub_1399E4();

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_E0B50(a2, &v21);
  return sub_CC68(&v21, &qword_1A0060, &qword_146300);
}

id sub_DF97C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = sub_13BB54();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithEffectiveBundleIdentifier:v9 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v10;
}

unint64_t sub_DFA08()
{
  result = qword_1A0068;
  if (!qword_1A0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0068);
  }

  return result;
}

uint64_t sub_DFA5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_DFAA4()
{
  result = qword_1A0090;
  if (!qword_1A0090)
  {
    sub_558C(&qword_1A0088, &qword_14A350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptLocationActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xDFBA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_DFBE0()
{
  result = qword_1A0098;
  if (!qword_1A0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0098);
  }

  return result;
}

uint64_t sub_DFC70@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a2;
  *(v2 - 128) = a1;

  return sub_139984();
}

uint64_t sub_DFC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v73 = a3;
  v4 = sub_4948(&qword_19DDA8, &unk_1459F0);
  __chkstk_darwin(v4 - 8);
  v76 = v70 - v5;
  sub_13B584();
  sub_9E94();
  v79 = v6;
  v80 = v7;
  __chkstk_darwin(v6);
  v72 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = v70 - v10;
  __chkstk_darwin(v11);
  v13 = v70 - v12;
  v14 = sub_13B644();
  sub_9E94();
  v77 = v15;
  __chkstk_darwin(v16);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PromptNotificationAction(0);
  sub_2B538();
  __chkstk_darwin(v20);
  v78 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = a1;
  sub_13B594();
  v24 = v14;
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v74 = v23;
  v70[1] = inited;
  v25 = v80;
  v26 = v76;
  sub_E05E4(v13, v85, v76);
  if (sub_52E0(v26, 1, v14) == 1)
  {
    sub_184DC(v26, &qword_19DDA8, &unk_1459F0);
    v23 = v74;
LABEL_4:
    sub_13BAB4();
    sub_E0B38();
    sub_E0AF0(v27, v28, &protocol conformance descriptor for JSONError);
    swift_allocError();
    strcpy(v29, "actionMetrics");
    *(v29 + 7) = -4864;
    *(v29 + 2) = v19;
    sub_2B538();
    (*(v30 + 104))();
    swift_willThrow();

    v31 = v79;
    v32 = *(v80 + 8);
    v32(v23, v79);
    v32(v13, v31);
    v33 = 0;
    v34 = v78;
    goto LABEL_8;
  }

  v37 = *(v25 + 8);
  v36 = v25 + 8;
  v35 = v37;
  v37(v13, v79);
  v38 = *(v77 + 32);
  v38(v18, v26, v14);
  v39 = *(v19 + 28);
  v40 = v74;
  v41 = v19;
  v42 = v78;
  v76 = v14;
  v38(&v78[v39], v18, v14);
  v43 = v75;
  v44 = sub_BBA24(0xD000000000000014, 0x80000000001518B0, v41);
  if (v43)
  {
    v35(v40, v79);

    v33 = 1;
    v34 = v42;
    v19 = v41;
    v24 = v76;
LABEL_8:
    sub_13B5A4();
    sub_5224();
    result = (*(v47 + 8))(v85);
    if (v33)
    {
      return (*(v77 + 8))(&v34[*(v19 + 28)], v24);
    }

    return result;
  }

  v45 = v35;
  v46 = v36;
  *v42 = v44;
  *(v42 + 1) = sub_BB310();
  *(v42 + 2) = v49;
  sub_BB458();
  v77 = v41;
  sub_DE8D0();
  v42[24] = v50 & 1;
  v51 = v71;
  sub_13B594();
  v52 = sub_13B564();
  v80 = v46;
  if (v52)
  {
    v70[0] = v35;
    sub_13BAB4();
    sub_E0B38();
    v55 = sub_E0AF0(v53, v54, &protocol conformance descriptor for JSONError);
    sub_9F18(v55);
    *v56 = 0x416572756C696166;
    v56[1] = v41;
    v68 = v77;
    v56[2] = v77;
    sub_2B538();
    (*(v57 + 104))();
    swift_willThrow();
    (v70[0])(v51, v79);

    v84 = 0;
    v82 = 0u;
    v83 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();
    v35(v51, v79);
    sub_9414(&v81, &v82);
    v41 = 0xED00006E6F697463;
    v68 = v77;
  }

  sub_DE8BC();
  sub_8DBA0(&v78[*(v68 + 32)]);
  v58 = v72;
  v59 = v74;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_E0B38();
    v62 = sub_E0AF0(v60, v61, &protocol conformance descriptor for JSONError);
    sub_9F18(v62);
    *v63 = 0x416572756C696166;
    v63[1] = v41;
    v63[2] = v68;
    sub_2B538();
    (*(v64 + 104))();
    swift_willThrow();

    v65 = v79;
    v45(v59, v79);
    v45(v58, v65);

    v84 = 0;
    v82 = 0u;
    v83 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();

    v69 = v79;
    v45(v74, v79);
    v45(v58, v69);
    sub_9414(&v81, &v82);
    v68 = v77;
  }

  v66 = v78;
  sub_8DBA0(&v78[*(v68 + 36)]);
  sub_E07FC(v66, v73);
  sub_13B5A4();
  sub_5224();
  (*(v67 + 8))(v85);
  return sub_E0860(v66);
}

uint64_t sub_E05E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for PromptNotificationAction(uint64_t a1)
{
  result = qword_1A00F8;
  if (!qword_1A00F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E07FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptNotificationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E0860(uint64_t a1)
{
  v2 = type metadata accessor for PromptNotificationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E08D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_E096C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_E09EC(uint64_t a1)
{
  sub_13B644();
  if (v1 <= 0x3F)
  {
    sub_5528(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E0A98(uint64_t a1)
{
  result = sub_E0AF0(&qword_19F168, type metadata accessor for PromptNotificationAction, &unk_14A410);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_E0AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_E0B50(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  sub_E16CC(a2, &v7);
  if (v8)
  {
    sub_9414(&v7, v9);
    sub_162F0(v9, v9[3]);
    swift_errorRetain();
    sub_13B654();

    sub_3C04(v9);
  }

  else
  {
    swift_errorRetain();

    sub_CC68(&v7, &qword_1A0060, &qword_146300);
    sub_E0DAC(v4, a1);
  }

  return result;
}

double sub_E0C88(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  sub_E16CC(a2, &v7);
  if (v8)
  {
    sub_9414(&v7, v9);
    sub_162F0(v9, v9[3]);
    sub_13B654();

    sub_3C04(v9);
  }

  else
  {

    sub_CC68(&v7, &qword_1A0060, &qword_146300);
    sub_E0E14(v4, a1 & 1);
  }

  return result;
}

double sub_E0DAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((sub_13B9B4() & 1) == 0)
    {
      sub_13BA04();
    }
  }

  return result;
}

double sub_E0E14(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((sub_13B9B4() & 1) == 0)
    {
      sub_13BA14();
    }
  }

  return result;
}

uint64_t sub_E0E7C(uint64_t *a1)
{
  v2 = v1;
  sub_4948(&unk_1A0070, &qword_1462F8);
  v4 = sub_13BA24();
  sub_E15A8();
  v5 = a1[1];
  v6 = a1[2];

  v7 = sub_E1028(v5, v6);
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v4;
  v15 = sub_E1604;
  v16 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_E148C;
  v14 = &unk_18CA10;
  v10 = _Block_copy(v13);

  [v7 requestAuthorizationWithOptions:v8 completionHandler:v10];
  _Block_release(v10);
  v14 = sub_13B7C4();
  v15 = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v13);
  sub_13B7B4();
  v11 = sub_13B9C4();

  sub_3C04(v13);
  return v11;
}

id sub_E1028(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_13BB54();

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

uint64_t sub_E109C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v5 = sub_139A14();
    sub_4910(v5, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    *(&v16 + 1) = type metadata accessor for PromptNotificationActionImplementation();
    *&v15 = a3;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v15);
    sub_139974();
    swift_getErrorValue();
    v12 = sub_13C1A4();
    *(&v16 + 1) = &type metadata for String;
    *&v15 = v12;
    *(&v15 + 1) = v13;
    sub_139984();
    sub_CC68(&v15, &unk_1A06F0, &unk_13EF80);
    sub_1399E4();

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_E0B50(a2, &v15);
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v16 + 1) = type metadata accessor for PromptNotificationActionImplementation();
    *&v15 = a3;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v15);
    sub_139974();
    sub_1399F4();

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_E0C88(a1 & 1, &v15);
  }

  return sub_CC68(&v15, &qword_1A0060, &qword_146300);
}

void sub_E148C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_E152C()
{
  result = qword_19F168;
  if (!qword_19F168)
  {
    type metadata accessor for PromptNotificationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F168);
  }

  return result;
}

unint64_t sub_E15A8()
{
  result = qword_1A0200;
  if (!qword_1A0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A0200);
  }

  return result;
}

double sub_E160C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_E1624()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E1674(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_E16CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_1A0060, &qword_146300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1744()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_E1788@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v72 = a3;
  v4 = sub_4948(&qword_19DDA8, &unk_1459F0);
  __chkstk_darwin(v4 - 8);
  v75 = &v65 - v5;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  v14 = sub_13B644();
  sub_9E94();
  v73 = v15;
  __chkstk_darwin(v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PurchaseIntentAction(0);
  __chkstk_darwin(v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = v76;
  v24 = sub_BB310();
  if (v23)
  {
    (*(v8 + 8))(a1, v6);
    sub_13B5A4();
    sub_5224();
    (*(v26 + 8))(v82);
    return result;
  }

  v70 = v18;
  v71 = v13;
  v76 = inited;
  *v21 = v24;
  *(v21 + 1) = v25;
  *(v21 + 2) = sub_BB310();
  *(v21 + 3) = v28;
  v69 = 0;
  v29 = v8;
  v30 = v6;
  *(v21 + 4) = sub_BB310();
  *(v21 + 5) = v31;
  v32 = sub_BB310();
  v33 = v76;
  *(v21 + 6) = v32;
  *(v21 + 7) = v34;
  v21[64] = sub_BB458() & 1;
  v68 = a1;
  sub_BB310();
  v67 = 0;
  sub_E2434();
  *(v21 + 9) = v35;
  *(v21 + 10) = v36;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  v40 = v75;
  v33 = v71;
  sub_83C8(v71, v82, v37, v38, v39);
  if (sub_52E0(v40, 1, v14) != 1)
  {
    v48 = *(v29 + 8);
    v66 = v30;
    v71 = v48;
    v48(v33, v30);
    v49 = v40;
    v50 = *(v73 + 32);
    v51 = v70;
    v50(v70, v49, v14);
    v50(&v21[*(v19 + 40)], v51, v14);
    v52 = v74;
    v53 = v68;
    sub_13B594();
    if ((sub_13B564() & 1) == 0)
    {
      v54 = v71;
      v55 = v67;
      sub_139BC4();
      if (!v55)
      {

        v54(v68, v30);
        v54(v52, v30);
        sub_9414(v77, &v79);
        goto LABEL_13;
      }

      v78 = 0;
      memset(v77, 0, sizeof(v77));
      sub_184DC(v77, &unk_19E320, &unk_140950);
      v53 = v68;
    }

    v56 = sub_13BAB4();
    sub_E240C();
    sub_E23C4(v57, v58, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v59 = 0x697463417478656ELL;
    v59[1] = 0xEA00000000006E6FLL;
    v59[2] = v19;
    (*(*(v56 - 8) + 104))(v59, enum case for JSONError.missingProperty(_:), v56);
    swift_willThrow();

    v60 = v66;
    v61 = v71;
    v71(v53, v66);
    v61(v52, v60);

    v81 = 0;
    v79 = 0u;
    v80 = 0u;
LABEL_13:
    v62 = &v21[*(v19 + 44)];
    v63 = v80;
    *v62 = v79;
    *(v62 + 1) = v63;
    *(v62 + 4) = v81;
    sub_E20BC(v21, v72);
    sub_13B5A4();
    sub_5224();
    (*(v64 + 8))(v82);
    sub_E2120(v21);
    return result;
  }

  sub_184DC(v40, &qword_19DDA8, &unk_1459F0);
  sub_E2434();
LABEL_6:
  v41 = sub_13BAB4();
  sub_E240C();
  sub_E23C4(v42, v43, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v44 = v33;
  v44[1] = 0xED00007363697274;
  v44[2] = v19;
  (*(*(v41 - 8) + 104))(v44, enum case for JSONError.missingProperty(_:), v41);
  swift_willThrow();

  v45 = *(v29 + 8);
  v45(v68, v30);
  v45(v71, v30);
  v46 = v69;
  sub_13B5A4();
  sub_5224();
  (*(v47 + 8))(v82);

  if (!v46)
  {
  }

  return result;
}

uint64_t type metadata accessor for PurchaseIntentAction(uint64_t a1)
{
  result = qword_1A0260;
  if (!qword_1A0260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E20BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E2120(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseIntentAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E2190(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_E222C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_E22AC(uint64_t a1)
{
  sub_24850();
  if (v1 <= 0x3F)
  {
    sub_13B644();
    if (v2 <= 0x3F)
    {
      sub_5528(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_E236C(uint64_t a1)
{
  result = sub_E23C4(&qword_19F188, type metadata accessor for PurchaseIntentAction, &unk_14A510);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_E23C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_E2448(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_E248C(uint64_t a1)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v3 = sub_139A14();
  sub_4910(v3, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v25 = type metadata accessor for PurchaseIntentActionImplementation();
  aBlock[0] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(aBlock);
  sub_139974();
  v25 = type metadata accessor for PurchaseIntentAction(0);
  v6 = sub_CC08(aBlock);
  sub_E20BC(a1, v6);
  sub_139984();
  sub_49C8(aBlock);
  sub_1399F4();

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_4948(&qword_19E698, &unk_14A5F0);

  v21 = sub_13BA24();
  if (*(a1 + 64) == 1)
  {
    sub_E29F4(v7, v8);
  }

  v23 = v1;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = objc_allocWithZone(SKPurchaseIntent);

  v16 = sub_E2ED0(v7, v8, v9, v10, v11, v12, v14, v13);
  if (*(a1 + 80))
  {
    v17 = sub_13BB54();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAdditionalBuyParams:{v17, v21}];

  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 24) = v22;
  v26 = sub_E3180;
  v27 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  v25 = &unk_18CB18;
  v19 = _Block_copy(aBlock);

  [v16 send:v19];
  _Block_release(v19);

  return v22;
}

uint64_t sub_E2824(uint64_t a1)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v2 = sub_139A14();
  sub_4910(v2, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  *(&v7 + 1) = type metadata accessor for PurchaseIntentActionImplementation();
  *&v6 = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v6);
  sub_139974();
  sub_1399F4();

  v6 = 0u;
  v7 = 0u;
  sub_13BA14();
  return sub_99BB4(&v6);
}

void sub_E29F4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);

  v6 = sub_E2FD0(a1, a2, 1, sub_E2EC8, v2);
  [v6 start];
}

double sub_E2A98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v3 = sub_139A14();
    sub_4910(v3, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v13 = type metadata accessor for PurchaseIntentActionImplementation();
    v12[0] = a2;

    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v12);
    sub_139974();
    swift_getErrorValue();
    v9 = sub_13C1A4();
    v13 = &type metadata for String;
    v12[0] = v9;
    v12[1] = v10;
    sub_139984();
    sub_49C8(v12);
    sub_1399E4();
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v6 = sub_139A14();
    sub_4910(v6, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v13 = type metadata accessor for PurchaseIntentActionImplementation();
    v12[0] = a2;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v12);
    sub_139974();
    sub_1399F4();
  }

  return result;
}

unint64_t sub_E2E4C()
{
  result = qword_19F188;
  if (!qword_19F188)
  {
    type metadata accessor for PurchaseIntentAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F188);
  }

  return result;
}

id sub_E2ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_13BB54();

  v12 = sub_13BB54();

  if (!a6)
  {
    v13 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_13BB54();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_13BB54();

LABEL_6:
  v15 = [v8 initWithBundleId:v11 productIdentifier:v12 appName:v13 productName:v14];

  return v15;
}

id sub_E2FD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_13BB54();

  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_E30BC;
    v13[3] = &unk_18CAC8;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithAppBundleId:v9 isInstallSheetOpen:a3 & 1 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

void sub_E30BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_E3128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_E3140()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for RecessedPlatter(uint64_t a1)
{
  result = qword_1A03D8;
  if (!qword_1A03D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E3224(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v79 = a3;
  v5 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v5 - 8);
  v7 = &v78 - v6;
  v8 = sub_13B584();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  sub_18B60();
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v14 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  v18 = type metadata accessor for RecessedPlatter(0);
  sub_9F94();
  __chkstk_darwin(v19);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v86 = swift_initStackObject();
  sub_2B570();
  v22 = sub_BB310();
  if (v3)
  {

    v22 = 0;
    v23 = 0;
  }

  *v21 = v22;
  *(v21 + 1) = v23;
  v84 = v23;
  __chkstk_darwin(v22);
  sub_5BD04();
  sub_2B570();
  v83 = sub_9DB8(v24, v25, v26, v27, v28);
  *(v21 + 2) = v83;
  sub_2B570();
  v29 = sub_BB310();
  v78 = 0;
  *&v90 = v29;
  *(&v90 + 1) = v30;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738(v13, v93, v31);
  if (sub_52E0(v7, 1, v14) == 1)
  {
    sub_928C(v7, &qword_19A420, &unk_13F430);
LABEL_6:
    sub_13BAB4();
    sub_E4104();
    v34 = sub_E3CDC(v32, v33, &protocol conformance descriptor for JSONError);
    sub_9F18(v34);
    *v35 = 0xD000000000000011;
    v35[1] = 0x800000000014E730;
    v35[2] = v18;
    sub_2B538();
    (*(v36 + 104))();
    swift_willThrow();
    v37 = sub_5BCD4();
    v38(v37);

    v39 = sub_13B7A4();
    sub_53A8(v17, 1, 1, v39);
    v40 = 0;
    goto LABEL_8;
  }

  v41 = sub_5BCD4();
  v42(v41);
  sub_92E4(v7, v17);
  v40 = v78;
LABEL_8:
  sub_92E4(v17, &v21[*(v18 + 40)]);
  v43 = v80;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    sub_13BAB4();
    sub_E4104();
    sub_E3CDC(v44, v45, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v46 = 0x6575676573;
    v46[1] = 0xE500000000000000;
    v46[2] = v18;
    sub_2B538();
    (*(v47 + 104))();
    swift_willThrow();
    v82(v43, v88);

    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    goto LABEL_12;
  }

  sub_139BC4();
  if (v40)
  {

    sub_18BAC();
    sub_928C(v89, &unk_19E320, &unk_140950);
    goto LABEL_11;
  }

  v82(v43, v88);
  v48 = sub_9414(v89, &v90);
LABEL_12:
  v49 = &v21[*(v18 + 44)];
  v50 = v91;
  *v49 = v90;
  *(v49 + 1) = v50;
  *(v49 + 4) = v92;
  __chkstk_darwin(v48);
  sub_5BD04();
  sub_2B570();
  *(v21 + 3) = sub_9DB8(v51, v52, v53, v54, v55);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_E4104();
    v58 = sub_E3CDC(v56, v57, &protocol conformance descriptor for JSONError);
    sub_9F18(v58);
    *v59 = 0x656C746974627573;
    v59[1] = 0xE800000000000000;
    v59[2] = v18;
    sub_2B538();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = sub_5BCEC();
    v62(v61);

    v92 = 0;
    v90 = 0u;
    v91 = 0u;
  }

  else
  {
    sub_139DB4();
    v74 = sub_5BCEC();
    v75(v74);
    sub_9414(v89, &v90);
  }

  v63 = v91;
  *(v21 + 2) = v90;
  *(v21 + 3) = v63;
  *(v21 + 8) = v92;
  v64 = v81;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_E4104();
    v68 = sub_E3CDC(v66, v67, &protocol conformance descriptor for JSONError);
    sub_9F18(v68);
    *v69 = 0x656C746974;
    v69[1] = 0xE500000000000000;
    v69[2] = v18;
    sub_2B538();
    (*(v70 + 104))();
    swift_willThrow();

    v71 = sub_5BCB4();
    MEMORY[0x656C746974](v71);
    MEMORY[0x656C746974](v64, a1);
    v72 = v78;
    sub_13B5A4();
    sub_9F94();
    (*(v73 + 8))(v93);

    if (!v72)
    {

      sub_928C((v21 + 32), &qword_19E960, &qword_13FD30);
      sub_9238((v21 + 112));
      sub_928C(&v21[*(v18 + 40)], &qword_19A350, &unk_13F2C0);
      sub_928C(&v21[*(v18 + 44)], &unk_19E320, &unk_140950);
    }
  }

  else
  {
    v65 = v93;
    sub_139DB4();
    v76 = sub_5BCB4();
    MEMORY[0x656C746974](v76);
    MEMORY[0x656C746974](v64, a1);
    sub_9414(v89, &v90);
    sub_9414(&v90, (v21 + 72));
    sub_E3D24(v21, v79);
    sub_13B5A4();
    sub_9F94();
    (*(v77 + 8))(v65);
    sub_E3D88(v21);
  }
}

uint64_t sub_E3CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E3D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecessedPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3D88(uint64_t a1)
{
  v2 = type metadata accessor for RecessedPlatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E3DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_E3EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_E3F2C(uint64_t a1)
{
  sub_24850();
  if (v1 <= 0x3F)
  {
    sub_E40B0(319, &qword_19B6D8, sub_30DD4);
    if (v2 <= 0x3F)
    {
      sub_248F4(319, &qword_19C0A8, &unk_19C0B0, &qword_142DF0);
      if (v3 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
        if (v4 <= 0x3F)
        {
          sub_18A28();
          if (v5 <= 0x3F)
          {
            sub_E40B0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
            if (v6 <= 0x3F)
            {
              sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_E40B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_E411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_1A0470, &qword_14A708);
  sub_13B5E4();

  if (v34)
  {
    sub_9414(&v33, v35);
    (*(&stru_158.size + (swift_isaMask & **&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel])))(v35, a3);
    sub_3C04(v35);
  }

  else
  {
    sub_2519C(&v33);
  }

  KeyPath = swift_getKeyPath();
  sub_5C2E0(KeyPath, v6, v7, v8, v9, v10);

  if (v35[0])
  {
    sub_E5220(v35[0], a3);
  }

  v11 = swift_getKeyPath();
  sub_5C2E0(v11, v12, v13, v14, v15, v16);

  if (v35[0])
  {
    v17 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor];
    *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor] = v35[0];
  }

  v18 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel];
  v19 = swift_getKeyPath();
  sub_5C2E0(v19, v20, v21, v22, v23, v24);

  (*(&stru_158.size + (swift_isaMask & *v18)))(v35, a3);
  sub_3C04(v35);
  v25 = [v3 contentView];
  v26 = swift_getKeyPath();
  sub_5C2E0(v26, v27, v28, v29, v30, v31);

  if (v35[1])
  {
    v32 = sub_13BB54();
  }

  else
  {
    v32 = 0;
  }

  [v25 setAccessibilityLabel:v32];
}

uint64_t sub_E43A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for RecessedPlatterComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_E440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for RecessedPlatterComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_E4474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_E44C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_E4544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_E45C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_E46CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_E4714(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_139A34();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  if (_UISolariumEnabled() && ((*(v12 + 104))(v16, enum case for FlagKeys.Solarium(_:), v10), v17 = sub_139A24(), (*(v12 + 8))(v16, v10), (v17 & 1) != 0))
  {
    v18 = [objc_opt_self() ams_quaternarySystemFillColor];
  }

  else
  {
    v19 = objc_opt_self();
    v20 = [v19 secondarySystemBackgroundColor];
    v21 = [v20 colorWithAlphaComponent:0.5];

    v22 = [v19 tertiarySystemBackgroundColor];
    v23 = [v22 colorWithAlphaComponent:0.5];

    v18 = [v19 ams_dynamicColorWithLightColor:v21 darkColor:v23];
  }

  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor] = v18;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel;
  sub_139BB4();
  v25 = objc_opt_self();
  v26 = [v25 ams_secondaryText];
  v27 = sub_13A2A4();
  *(&v53 + 1) = v27;
  v54 = &protocol witness table for FontSource;
  *sub_CC08(&v52) = UIFontTextStyleSubheadline;
  v28 = *(*(v27 - 8) + 104);
  v28();
  v29 = UIFontTextStyleSubheadline;
  *&v5[v24] = sub_139BA4();
  v30 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel;
  v31 = [v25 ams_primaryText];
  *(&v53 + 1) = v27;
  v54 = &protocol witness table for FontSource;
  *sub_CC08(&v52) = UIFontTextStyleBody;
  v28();
  v32 = UIFontTextStyleBody;
  *&v5[v30] = sub_139BA4();
  v33 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v34 = type metadata accessor for ServicesGridView();
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v35 = objc_allocWithZone(v34);
  v49[3] = &type metadata for CGFloat;
  v49[4] = &protocol witness table for CGFloat;
  v48[4] = &protocol witness table for CGFloat;
  v49[0] = 0x4020000000000000;
  v48[3] = &type metadata for CGFloat;
  v48[0] = 0x4020000000000000;
  *&v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns] = 1;
  v36 = &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView];
  *v36 = 0;
  v36[1] = 0;
  *&v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews] = _swiftEmptyArrayStorage;
  v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState] = 0;
  sub_4B14(v48, &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_rowSpacing]);
  __asm { FMOV            V0.2D, #20.0 }

  *&v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize] = _Q0;
  v42 = &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics];
  sub_4B14(v49, &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics]);
  sub_4F14C(&v52, (v42 + 48));
  sub_4F1A8(v50, (v42 + 88));
  sub_4B14(v48, (v42 + 128));
  v42[40] = 1;
  v42[168] = 1;
  *(v42 + 22) = 1;
  v42[184] = 0;
  v47.receiver = v35;
  v47.super_class = v34;
  v43 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4F204(v50);
  sub_4F258(&v52);
  sub_3C04(v48);
  sub_3C04(v49);
  *&v5[v33] = v43;
  v46.receiver = v5;
  v46.super_class = type metadata accessor for RecessedPlatterComponent();
  v44 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  sub_E5A50();

  return v44;
}

uint64_t sub_E4C38()
{
  v1 = sub_13A314();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for RecessedPlatterComponent();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v8 = [v0 contentView];
  [v8 bounds];
  sub_2D744();

  sub_E6670();
  sub_13BE34();
  sub_2D744();
  sub_E5290(v11);
  sub_162F0(v11, v11[3]);
  v9 = [v0 contentView];
  sub_13A544();

  (*(v3 + 8))(v7, v1);
  return sub_3C04(v11);
}

double sub_E4E20(double a1, double a2, float a3)
{
  sub_E6670();
  sub_13BE64();
  sub_E5290(v10);
  sub_162F0(v10, v10[3]);
  v6 = [v3 contentView];
  sub_13A394();

  sub_E6670();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  sub_3C04(v10);
  return v8;
}

double sub_E4FB0(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RecessedPlatterComponent();
  v2 = objc_msgSendSuper2(&v5, "prepareForReuse");
  v3 = (*(&stru_158.offset + (swift_isaMask & **&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel])))(v2);
  (*(&stru_158.offset + (swift_isaMask & **&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel])))(v3);
  return sub_117FB4();
}

void sub_E50F0(uint64_t a1)
{
  v4 = v1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RecessedPlatterComponent();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView];
  v7 = [v4 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_E5FAC();
  sub_2D744();

  v9 = (v6 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize);
  *v9 = v2;
  v9[1] = v3;
  sub_118970();
}

double sub_E5220(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = sub_4C488(a1);
    sub_1180F8(v3, a2);
  }

  return result;
}

uint64_t sub_E5290@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v82 = sub_13A4C4();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v61 = v7 - v6;
  v81 = sub_13A454();
  sub_9E94();
  v83 = v8;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13A4B4();
  v72 = *(v13 - 8);
  v15 = v72;
  v14 = v72;
  __chkstk_darwin(v13);
  v71 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v56 - v18;
  v69 = sub_4948(&qword_19AFE8, &unk_140260);
  v19 = *(v14 + 72);
  v68 = *(v15 + 80);
  v67 = (v68 + 32) & ~v68;
  v20 = swift_allocObject();
  v80 = xmmword_13E660;
  *(v20 + 16) = xmmword_13E660;
  sub_13A4A4();
  v66 = v19;
  sub_13A494();
  sub_13A484();
  v90 = v20;
  v64 = sub_20068();
  v63 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v65 = sub_1D268();
  v62 = v13;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v21 = *(sub_13A4F4() - 8);
  v60 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v70 = v23;
  *(v23 + 16) = v80;
  v57 = v23 + v22;
  v24 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel);
  v25 = sub_139BB4();
  v91 = v25;
  v92 = protocol witness table for UIView;
  v90 = v24;
  v88 = &type metadata for Double;
  v89 = &protocol witness table for Double;
  v86 = &protocol witness table for Double;
  v87 = 0;
  v85[3] = &type metadata for Double;
  v85[0] = 0;
  v75 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v26 = v83;
  v27 = *(v83 + 104);
  v74 = v83 + 104;
  v78 = v27;
  v28 = v81;
  v27(v12);
  v77 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v29 = v4;
  v76 = *(v4 + 104);
  v30 = v61;
  v31 = v82;
  v76(v61);
  v32 = v24;
  sub_2A268();
  sub_13A4E4();
  v33 = *(v29 + 8);
  *&v80 = v29 + 8;
  v33(v30, v31);
  v34 = v33;
  v59 = v33;
  v56 = *(v26 + 8);
  v83 = v26 + 8;
  v56(v12, v28);
  sub_1D2CC(v85);
  sub_3C04(&v87);
  sub_3C04(&v90);
  v35 = v58;
  v36 = *(v58 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel);
  v91 = v25;
  v92 = protocol witness table for UIView;
  v90 = v36;
  v88 = &type metadata for CGFloat;
  v89 = &protocol witness table for CGFloat;
  v86 = 0;
  v87 = 0;
  v37 = sub_E6644();
  v38(v37);
  v39 = v82;
  (v76)(v30, v77, v82);
  v40 = v36;
  v41 = v60;
  v42 = v57;
  sub_2A268();
  sub_13A4E4();
  v34(v30, v39);
  v43 = v56;
  v56(v12, v28);
  sub_1D2CC(v85);
  sub_3C04(&v87);
  sub_3C04(&v90);
  v60 = v42 + 2 * v41;
  v44 = *(v35 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView);
  v91 = type metadata accessor for ServicesGridView();
  v92 = protocol witness table for UIView;
  v90 = v44;
  v89 = &protocol witness table for CGFloat;
  v88 = &type metadata for CGFloat;
  v86 = 0;
  v87 = 0x4020000000000000;
  v45 = sub_E6644();
  v46(v45);
  v47 = v39;
  (v76)(v30, v77, v39);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_140280;
  v49 = v44;
  sub_13A484();
  v84 = v48;
  v50 = v71;
  v51 = v62;
  sub_13BF64();
  sub_2A268();
  sub_13A4E4();
  v52 = *(v72 + 8);
  v52(v50, v51);
  v59(v30, v47);
  v43(v12, v81);
  sub_1D2CC(v85);
  sub_3C04(&v87);
  sub_3C04(&v90);
  v53 = sub_13A514();
  v54 = v73;
  v73[3] = v53;
  v54[4] = &protocol witness table for VerticalFlowLayout;
  v54[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v54);
  sub_13A4D4();
  return (v52)(v79, v51);
}

void sub_E5A50()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  [v9 setBackgroundColor:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor]];

  v10 = sub_3F15C();
  if (qword_19A088 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1A0478);

  v11 = sub_3F15C();
  v12 = [v11 layer];

  if (_UISolariumEnabled() && ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v13 = sub_139A24(), (*(v4 + 8))(v8, v2), (v13 & 1) != 0))
  {
    v14 = [objc_opt_self() systemGrayColor];
    v15 = [v14 colorWithAlphaComponent:0.25];
  }

  else
  {
    v15 = [objc_opt_self() ams_tertiaryText];
  }

  v16 = [v15 CGColor];

  [v12 setBorderColor:v16];
  v17 = sub_3F15C();
  v18 = [v17 layer];

  [v18 setBorderWidth:1.0];
  v19 = sub_3F15C();
  [v19 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel]];

  v20 = sub_3F15C();
  [v20 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel]];

  v21 = sub_3F15C();
  [v21 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView]];

  sub_E5DB8();
  v22 = sub_3F15C();
  [v22 setIsAccessibilityElement:1];

  v23 = sub_3F15C();
  [v23 setAccessibilityTraits:UIAccessibilityTraitNone];
}

uint64_t sub_E5DB8()
{
  v3 = v0;
  v4 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView];
  v5 = [v3 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  sub_E5FAC();
  sub_2D744();

  v7 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize);
  *v7 = v1;
  v7[1] = v2;
  sub_118970();
  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  sub_117A18(v8);
  v9 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  v10 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  v11 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView + 8);
  *v9 = sub_E5EA0;
  v9[1] = 0;

  return sub_C9FC(v10, v11);
}

void sub_E5EA0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment) = 1;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView;
  v3 = [*(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView) layer];
  v4 = [objc_opt_self() ams_clear];
  v5 = [v4 CGColor];

  [v3 setBorderColor:v5];
  v6 = [*(a1 + v2) layer];
  [v6 setBorderWidth:0.0];
}

double sub_E5FAC()
{
  sub_13BB84();
  sub_E661C();
  sub_E6638();
  v4 = v4 && v0 == v3;
  if (v4)
  {
    goto LABEL_67;
  }

  sub_E65F8(v2);
  sub_E6684();

  if ((v1 & 1) == 0)
  {
    sub_13BB84();
    sub_E661C();
    sub_E6638();
    if (!v4 || v0 != v7)
    {
      sub_E65F8(v6);
      sub_E6684();

      if (v1)
      {
        return 40.0;
      }

      sub_13BB84();
      sub_E661C();
      sub_E6638();
      if (!v4 || v0 != v10)
      {
        sub_E65F8(v9);
        sub_E6684();

        if (v1)
        {
          return 40.0;
        }

        sub_13BB84();
        sub_E661C();
        sub_E6638();
        if (!v4 || v0 != v13)
        {
          sub_E65F8(v12);
          sub_E6684();

          if (v1)
          {
            return 40.0;
          }

          sub_13BB84();
          v15 = sub_E661C();
          v5 = 30.0;
          if (v1 != v15 || v0 != v16)
          {
            sub_E65F8(v15);
            sub_E6684();

            if (v1)
            {
              return v5;
            }

            sub_13BB84();
            v18 = sub_E661C();
            v5 = 20.0;
            if (v1 != v18 || v0 != v19)
            {
              sub_E65F8(v18);
              sub_E6684();

              if (v1)
              {
                return v5;
              }

              sub_13BB84();
              sub_E661C();
              sub_E6638();
              if (!v4 || v0 != v22)
              {
                sub_E65F8(v21);
                sub_E6684();

                if (v1)
                {
                  return v5;
                }

                sub_13BB84();
                sub_E661C();
                sub_E6638();
                if (!v4 || v0 != v25)
                {
                  sub_E65F8(v24);
                  sub_E6684();

                  if (v1)
                  {
                    return v5;
                  }

                  sub_13BB84();
                  sub_E661C();
                  sub_E6638();
                  if (!v4 || v0 != v28)
                  {
                    sub_E65F8(v27);
                    sub_E6684();

                    if (v1)
                    {
                      return v5;
                    }

                    sub_13BB84();
                    sub_E661C();
                    sub_E6638();
                    if (!v4 || v0 != v31)
                    {
                      sub_E65F8(v30);
                      sub_E6684();

                      if (v1)
                      {
                        return v5;
                      }

                      sub_13BB84();
                      sub_E661C();
                      sub_E6638();
                      if (!v4 || v0 != v34)
                      {
                        sub_E65F8(v33);
                        sub_E6684();

                        if (v1)
                        {
                          return v5;
                        }

                        sub_13BB84();
                        sub_E661C();
                        sub_E6638();
                        if (!v4 || v0 != v37)
                        {
                          sub_E65F8(v36);
                          sub_E6684();

                          if (v1)
                          {
                            return v5;
                          }

                          sub_13BB84();
                          sub_E661C();
                          sub_E6638();
                          if (!v4 || v0 != v40)
                          {
                            sub_E65F8(v39);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_68:

          return v5;
        }
      }
    }

LABEL_67:
    v5 = 40.0;
    goto LABEL_68;
  }

  return 40.0;
}

id sub_E62F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecessedPlatterComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_E63B4(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  sub_BBC90();
  v4 = v3;
  swift_unknownObjectRelease();
  [objc_msgSend(a1 "container")];
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:{fmin(v6 - (v4 + v4), 360.0)}];
  v9 = [v7 estimatedDimension:200.0];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  return v10;
}

uint64_t sub_E64F4()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 12.0;
  }

  qword_1A0478 = *&v6;
  return result;
}

uint64_t sub_E65F8(uint64_t a1)
{

  return sub_13C144();
}

uint64_t sub_E661C()
{

  return sub_13BB84();
}

uint64_t sub_E6644()
{
  *(v1 - 208) = 0u;
  *(v1 - 192) = 0u;
  return v0;
}

double sub_E6684()
{

  return result;
}

char *sub_E669C(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjectType());
  v9 = sub_116760(0, a1, v8, a2, a3, a4, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_E674C()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_13C094();
  __break(1u);
}

id sub_E67FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView];
  v9 = sub_E689C(a1, a2, a3);
  [v8 setImage:v9];

  return [v4 setNeedsLayout];
}

uint64_t sub_E689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_139C84();
  swift_allocObject();
  v4 = sub_139C74();
  v5 = sub_11D760(v3);
  v7 = v6;
  v8 = objc_opt_self();

  v9 = [v8 _defaultConfiguration];
  v10 = (*(*v4 + 120))(v5, v7, v9);

  return v10;
}

id sub_E6984()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  sub_1D3D0();
  [v0 layoutMargins];
  sub_13BE34();
  sub_1D3D0();
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView];
  v2 = [v1 image];
  v3 = sub_35BE8();
  sub_E6AA4(v3, v6, v7, v8, v4, v5);

  sub_35BE8();
  sub_13BE44();
  return [v1 setFrame:?];
}

double sub_E6AA4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, void *a5, char a6)
{
  v11 = sub_E6C2C(a5);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  if (a6)
  {
    if (a6 == 1)
    {
      MinX = CGRectGetMidX(*&v12) + v11 * -0.5;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v12) - v11;
    }
  }

  else
  {
    MinX = CGRectGetMinX(*&v12);
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinY(v18);
  return MinX;
}

void sub_E6BB4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView) image];
  sub_E6C2C(v1);
}

double sub_E6C2C(void *a1)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A3C4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  [a1 size];
  sub_13A3D4();
  sub_4B14(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_referenceLineHeight, v18);
  v12 = v19;
  v13 = v20;
  sub_162F0(v18, v19);
  sub_20038(v12, v13);
  sub_13A404();
  (*(v4 + 8))(v6, v3);
  sub_3C04(v18);
  sub_13A3B4();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  return v15;
}

id sub_E6E8C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (a1 == 4)
    {
      v4 = [v1 traitCollection];
      v5 = sub_13BDD4();

      if (v5)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }
    }

    else if (a1 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_alignment] = v3;

  return [v2 setNeedsLayout];
}

_BYTE *storeEnumTagSinglePayload for ServiceBadgeView.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0xE7074);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_E70B0()
{
  result = qword_1A0508;
  if (!qword_1A0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0508);
  }

  return result;
}

double ServiceDetailLayout.init(metrics:artworkView:titleLabelView:detailLabelView:)@<D0>(void *__src@<X0>, __int128 *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  memcpy((a4 + 160), __src, 0x89uLL);
  v7 = sub_9B5D8();
  sub_9414(v7, v8);
  sub_9414(a2, a4 + 40);
  sub_9414(a3, a4 + 80);
  result = 0.0;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  return result;
}

__n128 ServiceDetailLayout.init(metrics:artworkView:titleLabelView:detailLabelView:lockupView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy((a6 + 160), __src, 0x89uLL);
  sub_9414(a2, a6);
  sub_9414(a3, a6 + 40);
  sub_9414(a4, a6 + 80);
  result = *a5;
  v12 = *(a5 + 16);
  *(a6 + 120) = *a5;
  *(a6 + 136) = v12;
  *(a6 + 152) = *(a5 + 32);
  return result;
}

Swift::Int sub_E726C()
{
  v1 = *v0;
  sub_13C214();
  ServiceDetailLayout.Metrics.ContentAlignment.hash(into:)(v3, v1);
  return sub_13C234();
}

uint64_t ServiceDetailLayout.Metrics.init(artworkSize:detailLabelTopSpace:horizontalSpace:contentAlignment:lockupSize:isLockupFocused:contentMaxWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = a8;
  *(a7 + 8) = a9;
  sub_9414(a1, a7 + 16);
  result = sub_9414(a2, a7 + 56);
  *(a7 + 96) = a3 & 1;
  *(a7 + 104) = a10;
  *(a7 + 112) = a11;
  *(a7 + 120) = a4;
  *(a7 + 128) = a5;
  *(a7 + 136) = a6 & 1;
  return result;
}

uint64_t sub_E7358(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_2B538();
  (*v3)(a2);
  return a2;
}

uint64_t ServiceDetailLayout.Metrics.contentMaxWidth.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

double ServiceDetailLayout.measurements(fitting:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_E759C(0, a1, v3, 0.0, 0.0, a2, a3);
}

uint64_t ServiceDetailLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  sub_E759C(1, a1, v5, a2, a3, a4, a5);
  sub_5AA10();

  return sub_13A2E4();
}

double sub_E759C(int a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v156 = a7;
  LODWORD(v155) = a1;
  v143 = sub_13A314();
  sub_9E94();
  v142 = v12;
  __chkstk_darwin(v13);
  sub_21548();
  sub_2159C(v14);
  v15 = sub_13A514();
  sub_9E94();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_21548();
  sub_2159C(v19);
  v148 = sub_13A4B4();
  sub_9E94();
  v147 = v20;
  __chkstk_darwin(v21);
  sub_21548();
  sub_2159C(v22);
  *&v154 = COERCE_DOUBLE(sub_13A4C4());
  sub_9E94();
  v146 = v23;
  __chkstk_darwin(v24);
  sub_21548();
  sub_2159C(v25);
  *&v153 = COERCE_DOUBLE(sub_13A454());
  sub_9E94();
  v152 = v26;
  __chkstk_darwin(v27);
  sub_21548();
  sub_2159C(v28);
  v150 = sub_13A4F4();
  sub_9E94();
  v149 = v29;
  __chkstk_darwin(v30);
  v139 = v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  sub_2159C(v134 - v33);
  v34 = sub_13C114();
  sub_9E94();
  v36 = v35;
  __chkstk_darwin(v37);
  v39 = v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a3 + 40), *(a3 + 64));
  sub_E8B18();
  if (sub_13A364())
  {
    v40 = 0;
  }

  else
  {
    sub_162F0((a3 + 40), *(a3 + 64));
    sub_E8B18();
    v40 = sub_13A324();
  }

  sub_162F0((a3 + 80), *(a3 + 104));
  sub_E8B18();
  if (sub_13A364())
  {
    v41 = 0;
  }

  else
  {
    sub_162F0((a3 + 80), *(a3 + 104));
    sub_E8B18();
    v41 = sub_13A324();
  }

  sub_E8B90();
  v42 = v164;
  sub_6BDB4(&v163, &unk_1A0730, &qword_140F10);
  if ((v40 | v41))
  {
    v136 = v41;
    v137 = v17;
    v138 = v15;
    v43 = *(a3 + 160);
    v44 = *(a3 + 240);
    v45 = *(a3 + 248);
    sub_162F0((a3 + 216), v44);
    sub_20038(v44, v45);
    sub_E8A58();
    sub_13A404();
    v47 = v46;
    v48 = v42;
    v49 = *(v36 + 8);
    (v49)(v39, v34);
    *&v134[1] = v43;
    v58 = v43 + v47;
    v140 = v48;
    if (v48)
    {
      v59 = *(a3 + 264);
      sub_162F0((a3 + 216), *(a3 + 240));
      sub_E8B30();
      sub_E8A58();
      sub_13A404();
      v61 = v60;
      (v49)(v39, v34);
      v53.n128_f64[0] = v59 + v61;
    }

    else
    {
      v53.n128_u64[0] = 0;
    }

    v50.n128_u64[0] = 0;
    v52.n128_u64[0] = 0;
    v51.n128_f64[0] = v58;
    v135 = v53.n128_u64[0];
    sub_E8A78(v50, v51, v52, v53, v54, v55, v56, v57);
    sub_5AA10();
    sub_E8968();
    sub_13BE44();
    sub_162F0((a3 + 176), *(a3 + 200));
    sub_E8B30();
    v144 = a2;
    sub_E8A58();
    sub_13A404();
    v64 = v63;
    (v49)(v39, v34);
    if (v40)
    {
      v65 = *(a3 + 72);
      sub_162F0((a3 + 40), *(a3 + 64));
      sub_E8B50();
      sub_2B538();
      (*(v66 + 16))();
      v161 = &type metadata for Double;
      v162 = &protocol witness table for Double;
      v159 = 0;
      v160 = 0;
      sub_E8A2C();
      v67 = sub_E8AB8();
      v69 = *(v68 - 256);
      v70(v67);
      sub_E8A10();
      v72 = *(v71 - 256);
      v73 = v154;
      v74(v72);
      sub_4948(&qword_19AFE8, &unk_140260);
      v75 = v147;
      v76 = sub_E8B70();
      *(v76 + 16) = xmmword_140280;
      sub_13A484();
      v157 = v76;
      sub_20068();
      v77 = sub_4948(&qword_19AFF0, &unk_1402B0);
      sub_1D268();
      sub_E89BC();
      sub_13BF64();
      sub_13A4E4();
      (*(v75 + 8))(v65, v77);
      (*(v49 + 8))(v72, v73);
      (*(*&v152 + 8))(v39, v69);
      sub_6BDB4(v158, &qword_19AFF8, &unk_140270);
      sub_3C04(&v160);
      sub_3C04(&v163);
      sub_58ABC(0, 1, 1, _swiftEmptyArrayStorage);
      v79 = v78;
      v81 = v78[2];
      v80 = v78[3];
      v82 = v140;
      if (v81 >= v80 >> 1)
      {
        sub_E8AF4(v80);
        v79 = v131;
      }

      v79[2] = v81 + 1;
      (*(*&v149 + 32))(v79 + ((*(*&v149 + 80) + 32) & ~*(*&v149 + 80)) + *(*&v149 + 72) * v81, v145, v150);
    }

    else
    {
      v79 = _swiftEmptyArrayStorage;
      v82 = v140;
    }

    if (v136)
    {
      v83 = *(a3 + 112);
      sub_162F0((a3 + 80), *(a3 + 104));
      sub_E8B50();
      sub_2B538();
      (*(v84 + 16))();
      v161 = &type metadata for CGFloat;
      v162 = &protocol witness table for CGFloat;
      v160 = v64;
      v159 = 0;
      sub_E8A2C();
      v86 = *(v85 - 256);
      v87 = sub_E8AB8();
      v88(v87);
      sub_E8A10();
      v90 = *(v89 - 256);
      v91(v90);
      sub_4948(&qword_19AFE8, &unk_140260);
      v92 = v147;
      v93 = sub_E8B70();
      *(v93 + 16) = xmmword_140280;
      sub_13A484();
      v157 = v93;
      sub_20068();
      v94 = sub_4948(&qword_19AFF0, &unk_1402B0);
      sub_1D268();
      sub_E89BC();
      sub_13BF64();
      v95 = v139;
      sub_13A4E4();
      (*(v92 + 8))(v83, v94);
      (*(v49 + 8))(v90, v154);
      (*(v86 + 8))(v39, v153);
      sub_6BDB4(v158, &qword_19AFF8, &unk_140270);
      sub_3C04(&v160);
      sub_3C04(&v163);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58ABC(0, v79[2] + 1, 1, v79);
        v79 = v132;
      }

      v97 = v79[2];
      v96 = v79[3];
      v98 = v138;
      v99 = v137;
      v100 = v151;
      v82 = v140;
      if (v97 >= v96 >> 1)
      {
        sub_E8AF4(v96);
        v79 = v133;
      }

      v79[2] = v97 + 1;
      (*(*&v149 + 32))(v79 + ((*(*&v149 + 80) + 32) & ~*(*&v149 + 80)) + *(*&v149 + 72) * v97, v95, v150);
      v101 = v144;
    }

    else
    {
      v101 = v144;
      v98 = v138;
      v99 = v137;
      v100 = v151;
    }

    sub_13A4D4();
    sub_13A464();
    v104 = v102;
    v105 = v103;
    if ((LOBYTE(v155) & 1) == 0)
    {
      goto LABEL_47;
    }

    v106 = *(a3 + 256);
    v107 = *(a3 + 168);
    v155 = v58;
    *&v154 = v103;
    if (v106)
    {
      if (v103 >= v107)
      {
        v108 = *(a3 + 272);
        if (v103 >= v108)
        {
          v153 = *(a3 + 272);
          sub_E8998();
          sub_E897C();
          sub_E8A68();
          CGRectGetMinX(v176);
          v177.origin.x = sub_E8968();
          CGRectGetMinY(v177);
          sub_E8968();
          sub_E89E4(v117);
          sub_9B5D8();
          sub_13A354();
          v126 = 0.0;
          if (v82)
          {
            sub_E8B90();
            if (v164)
            {
              sub_E8AD0();
              sub_E897C();
              sub_E8A68();
              v58 = CGRectGetMaxX(v178) - *(a3 + 264);
              v179.origin.x = sub_E8968();
              CGRectGetMinY(v179);
              sub_E8968();
              sub_E8B24();
              sub_13BE44();
              sub_9B5D8();
              sub_13A354();
              sub_3C04(&v163);
            }

            else
            {
              sub_6BDB4(&v163, &unk_1A0730, &qword_140F10);
            }
          }

          v105 = *&v154;
          goto LABEL_46;
        }

        sub_E8AA0(&v165);
      }

      else
      {
        sub_E8AA0(&v165);
        v108 = *(a3 + 272);
      }

      sub_103E90(_swiftEmptyArrayStorage, v107, v108, *&v154);
      v152 = v113;
      sub_E8A04(v113 - v107);
      sub_E8998();
      v172.origin.x = a4;
      v172.origin.y = v58;
      v172.size.width = v105;
      v172.size.height = a5;
      CGRectGetMinX(v172);
      v173.origin.x = a4;
      v173.origin.y = v58;
      v173.size.width = v105;
      v173.size.height = a5;
      CGRectGetMinY(v173);
      sub_E8A48();
      sub_E89E4(v114);
      sub_9B5D8();
      sub_13A354();
      sub_E8B24();
      if (v82)
      {
        sub_E8B90();
        if (v164)
        {
          v115 = sub_E8A04(v152 - v108);
          v116 = v156;
          v152 = round(v115);
          sub_E8AD0();
          v174.origin.x = a4;
          v174.origin.y = v58;
          v174.size.width = v105;
          v174.size.height = v116;
          CGRectGetMaxX(v174);
          v175.origin.x = a4;
          v175.origin.y = v58;
          v175.size.width = v105;
          v175.size.height = v116;
          CGRectGetMinY(v175);
          sub_E8B24();
          sub_E8A48();
          sub_E898C();
          sub_13BE44();
          sub_9B5D8();
          sub_13A354();
          sub_3C04(&v163);
        }

        else
        {
          sub_6BDB4(&v163, &unk_1A0730, &qword_140F10);
        }
      }

      v105 = *&v154;
      sub_103E90(_swiftEmptyArrayStorage, v107, v108, *&v154);
      v126 = round(sub_E8A04(v128 - v105));
    }

    else
    {
      *&v153 = v102;
      v58 = *(a3 + 272);
      sub_103E90(_swiftEmptyArrayStorage, v107, v58, v103);
      v149 = v109;
      sub_E8A04(v109 - v107);
      v110 = a4;
      v111 = v156;
      sub_E8998();
      sub_E898C();
      v168.size.height = v111;
      CGRectGetMinX(v168);
      sub_E898C();
      v169.size.height = v111;
      CGRectGetMinY(v169);
      v150 = *&v110;
      v151 = a5;
      v152 = a6;
      v112 = v58;
      sub_E89E4(v101);
      sub_9B5D8();
      sub_13A354();
      if (v82)
      {
        sub_E8B90();
        if (v164)
        {
          sub_E8A04(v149 - v58);
          sub_E8AD0();
          *&v170.origin.x = v150;
          v170.origin.y = v151;
          v149 = v58;
          v170.size.width = v152;
          v170.size.height = v111;
          v58 = CGRectGetMaxX(v170) - *(a3 + 264);
          sub_E898C();
          v171.size.height = v111;
          CGRectGetMinY(v171);
          sub_E8A48();
          sub_E898C();
          v112 = v149;
          sub_13BE44();
          sub_9B5D8();
          sub_13A354();
          sub_3C04(&v163);
        }

        else
        {
          sub_6BDB4(&v163, &unk_1A0730, &qword_140F10);
        }
      }

      v105 = *&v154;
      sub_103E90(_swiftEmptyArrayStorage, v107, v112, *&v154);
      v126 = round(sub_E8A04(v127 - v105));
      sub_E8B24();
    }

    v104 = *&v153;
LABEL_46:
    v120.n128_u64[0] = 0;
    v118.n128_f64[0] = v126;
    v119.n128_f64[0] = v58;
    v121.n128_u64[0] = v135;
    sub_E8A78(v118, v119, v120, v121, v122, v123, v124, v125);
    sub_5AA10();
    sub_E8968();
    sub_13BE44();
    v129 = v141;
    sub_13A474();
    (*(v142 + 8))(v129, v143);
LABEL_47:
    sub_103E90(_swiftEmptyArrayStorage, *(a3 + 168), *(a3 + 272), v105);
    if (v82)
    {
      v180.origin.x = sub_E897C();
      v180.size.height = v156;
      Width = CGRectGetWidth(v180);
      (*(v99 + 8))(COERCE_CGFLOAT(*&v100), v98);
    }

    else
    {
      (*(v99 + 8))(COERCE_CGFLOAT(*&v100), v98);
      return v58 + v104;
    }

    return Width;
  }

  if (LOBYTE(v155))
  {
    sub_E8998();
    sub_E897C();
    sub_E8A68();
    CGRectGetMinX(v166);
    v167.origin.x = sub_E8968();
    CGRectGetMinY(v167);
    sub_E8968();
    sub_13BE44();
    sub_9B5D8();
    sub_13A354();
  }

  return *(a3 + 160);
}

unint64_t sub_E8620()
{
  result = qword_1A0510;
  if (!qword_1A0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0510);
  }

  return result;
}

unint64_t sub_E8678()
{
  result = qword_1A0518;
  if (!qword_1A0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0518);
  }

  return result;
}

uint64_t sub_E86D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 297))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_E8714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E87B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_E87F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ServiceDetailLayout.Metrics.ContentAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE8934);
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

double sub_E89E4(uint64_t a1)
{

  sub_13BE44();
  return result;
}

double sub_E8A2C()
{
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return result;
}

double sub_E8A78(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{

  sub_13BE34();
  return result;
}

void sub_E8AF4(unint64_t a1@<X8>)
{

  sub_58ABC(a1 > 1, v1, 1, v2);
}

uint64_t sub_E8B30()
{

  return sub_20038(v0, v1);
}

uint64_t *sub_E8B50()
{
  *(v2 - 168) = v0;
  *(v2 - 160) = *(v1 + 8);

  return sub_CC08((v2 - 192));
}

uint64_t sub_E8B70()
{

  return swift_allocObject();
}

uint64_t sub_E8B90()
{

  return sub_2DAFC(v0 + 120, v1 - 192);
}

char *sub_E8BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v34 = a3;
  v33 = a2;
  v9 = sub_13A2A4();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_9EC0();
  v15 = (v14 - v13);
  v16 = sub_13A434();
  sub_9E94();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  *v15 = UIFontTextStyleBody;
  (*(v11 + 104))(v15, enum case for FontSource.textStyle(_:), v9);
  v38[3] = v9;
  v38[4] = &protocol witness table for FontSource;
  v25 = sub_CC08(v38);
  (*(v11 + 16))(v25, v15, v9);
  v26 = UIFontTextStyleBody;
  sub_13A444();
  (*(v11 + 8))(v15, v9);
  v27 = 48.0;
  if (!(a1 | v33))
  {
    v27 = 24.0;
  }

  if (v34)
  {
    v28 = v27;
  }

  else
  {
    v28 = *&a1;
  }

  if (v34)
  {
    v29 = v27;
  }

  else
  {
    v29 = *&v33;
  }

  v30 = objc_allocWithZone(type metadata accessor for ServiceDetailView());
  (*(v18 + 16))(v21, v24, v16);
  v31 = sub_EB410(v21, v35, v36, v37, v30, v28, v29);
  (*(v18 + 8))(v24, v16);
  return v31;
}

void sub_E8E40()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_additionalMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment) = 0;
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel;
  sub_139BB4();
  v2 = objc_opt_self();
  v3 = [v2 ams_primaryText];
  v4 = sub_13A2A4();
  v17 = v4;
  v18 = &protocol witness table for FontSource;
  *sub_CC08(v16) = UIFontTextStyleSubheadline;
  v5 = *(*(v4 - 8) + 104);
  v5();
  v6 = UIFontTextStyleSubheadline;
  *(v0 + v1) = sub_139BA4();
  v7 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId) = 0;
  v8 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork) = 0;
  v10 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel;
  v12 = [v2 ams_primaryText];
  v17 = v4;
  v18 = &protocol witness table for FontSource;
  *sub_CC08(v16) = UIFontTextStyleHeadline;
  v5();
  v13 = UIFontTextStyleHeadline;
  *(v0 + v11) = sub_139BA4();
  v14 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_isLockupFocused) = 0;
  v15 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize);
  *v15 = 0;
  v15[1] = 0;
  sub_13C094();
  __break(1u);
}