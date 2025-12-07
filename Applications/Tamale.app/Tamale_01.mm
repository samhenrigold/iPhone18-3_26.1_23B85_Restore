uint64_t sub_100021B78()
{

  return swift_deallocObject();
}

uint64_t sub_100021BE4(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D4610, &qword_1001713B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  v7 = sub_100006AAC(a1, a1[3]);
  v8 = v7;
  sub_100021D58(v7, v9, v10);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100006B44(a1);
  return v8 & 1;
}

unint64_t sub_100021D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4618;
  if (!qword_1001D4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4618);
  }

  return result;
}

uint64_t sub_100021DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100021E04(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100021E58()
{
  result = qword_1001D4628;
  if (!qword_1001D4628)
  {
    type metadata accessor for ConfigToggle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4628);
  }

  return result;
}

unint64_t sub_100021EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4630;
  if (!qword_1001D4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4630);
  }

  return result;
}

unint64_t sub_100021F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4638;
  if (!qword_1001D4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4638);
  }

  return result;
}

unint64_t sub_100021F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4640;
  if (!qword_1001D4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriRequestStateResponder.SiriRequestState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriRequestStateResponder.SiriRequestState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100022110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4648;
  if (!qword_1001D4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4648);
  }

  return result;
}

__n128 sub_100022164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100022188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000221D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100022250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v66 = sub_1000033A8(&qword_1001D4678, &qword_1001716B0);
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v4 = &v59 - v3;
  v67 = sub_1000033A8(&qword_1001D4680, &qword_1001716B8);
  v74 = *(v67 - 8);
  __chkstk_darwin(v67);
  v6 = &v59 - v5;
  v7 = sub_1000033A8(&qword_1001D4688, &qword_1001716C0);
  v8 = __chkstk_darwin(v7 - 8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v70 = &v59 - v11;
  v12 = __chkstk_darwin(v10);
  v69 = &v59 - v13;
  __chkstk_darwin(v12);
  v65 = &v59 - v14;
  v15 = sub_1000033A8(&qword_1001D4690, &qword_1001716C8);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v68 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v59 - v20;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v75 = *a1;
  v76 = v22;
  v77 = v23;
  v78 = *(a1 + 24);
  v79 = v24;
  v80 = v25;
  sub_100022C48(v19, v26, v27);

  v64 = v21;
  View.accessibilityIdentifier(_:)();

  LOBYTE(v22) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v28 = &v21[*(v16 + 44)];
  *v28 = v22;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = swift_allocObject();
  v34 = *(a1 + 48);
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(a1 + 64);
  *(v33 + 96) = *(a1 + 80);
  v35 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v35;
  sub_100022CC8(a1, &v75);
  v63 = sub_1000033A8(&qword_1001D46A0, &unk_1001716D0);
  v62 = sub_100022D00();
  v60 = v4;
  Button.init(action:label:)();
  v36 = sub_100013608(&qword_1001D46E0, &qword_1001D4678, &qword_1001716B0, &protocol conformance descriptor for Button<A>);
  v39 = sub_100022E70(v36, v37, v38);
  v40 = v6;
  v41 = v66;
  View.buttonStyle<A>(_:)();
  v42 = *(v73 + 8);
  v73 += 8;
  v61 = v42;
  v42(v4, v41);
  v75 = v41;
  v76 = &type metadata for ReplayControlButtonStyle;
  v77 = v36;
  *&v78 = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v65;
  v44 = v67;
  View.accessibilityIdentifier(_:)();
  v45 = *(v74 + 8);
  v74 += 8;
  v45(v40, v44);
  v46 = swift_allocObject();
  v47 = *(a1 + 48);
  *(v46 + 48) = *(a1 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(a1 + 64);
  *(v46 + 96) = *(a1 + 80);
  v48 = *(a1 + 16);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v48;
  sub_100022CC8(a1, &v75);
  v49 = v60;
  Button.init(action:label:)();
  View.buttonStyle<A>(_:)();
  v61(v49, v41);
  v50 = v69;
  View.accessibilityIdentifier(_:)();
  v45(v40, v44);
  v51 = v64;
  v52 = v68;
  sub_1000138BC(v64, v68, &qword_1001D4690, &qword_1001716C8);
  v53 = v43;
  v54 = v70;
  sub_100022F44(v43, v70);
  v55 = v71;
  sub_100022F44(v50, v71);
  v56 = v72;
  sub_1000138BC(v52, v72, &qword_1001D4690, &qword_1001716C8);
  v57 = sub_1000033A8(&qword_1001D46F0, &qword_1001716F0);
  sub_100022F44(v54, v56 + *(v57 + 48));
  sub_100022F44(v55, v56 + *(v57 + 64));
  sub_100022FB4(v50);
  sub_100022FB4(v53);
  sub_10001370C(v51, &qword_1001D4690, &qword_1001716C8);
  sub_100022FB4(v55);
  sub_100022FB4(v54);
  return sub_10001370C(v52, &qword_1001D4690, &qword_1001716C8);
}

uint64_t sub_100022980@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  v3 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v5 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_100022A08@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  v3 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v5 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

double sub_100022A90@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v24[2] = *(v2 + 32);
  v24[3] = v4;
  v24[4] = *(v2 + 64);
  v25 = *(v2 + 80);
  v5 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v5;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v6 = sub_1000033A8(&qword_1001D4650, &qword_100171688);
  sub_100022250(v24, a2 + *(v6 + 44));
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(sub_1000033A8(&qword_1001D4658, &qword_100171690) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = a2 + *(sub_1000033A8(&qword_1001D4660, &qword_100171698) + 36);
  static Material.thin.getter();
  v18 = sub_1000033A8(&qword_1001D4668, &qword_1001716A0);
  v19 = *(v18 + 52);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(v17 + v19, v20, v21);
  *(v17 + *(v18 + 56)) = 256;
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  v22 = a2 + *(sub_1000033A8(&qword_1001D4670, &qword_1001716A8) + 36);
  *v22 = v17;
  result = 0.0;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 1;
  return result;
}

unint64_t sub_100022C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4698;
  if (!qword_1001D4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4698);
  }

  return result;
}

unint64_t sub_100022D00()
{
  result = qword_1001D46A8;
  if (!qword_1001D46A8)
  {
    sub_10001276C(&qword_1001D46A0, &unk_1001716D0);
    sub_100022DB8();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8, &unk_10017B710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D46A8);
  }

  return result;
}

unint64_t sub_100022DB8()
{
  result = qword_1001D46B0;
  if (!qword_1001D46B0)
  {
    sub_10001276C(&qword_1001D46B8, &unk_100172820);
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8, &unk_1001716E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D46B0);
  }

  return result;
}

unint64_t sub_100022E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D46E8;
  if (!qword_1001D46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D46E8);
  }

  return result;
}

uint64_t sub_100022EC4()
{

  return swift_deallocObject();
}

uint64_t sub_100022F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4688, &qword_1001716C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022FB4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4688, &qword_1001716C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002301C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1000033A8(&qword_1001D4728, &qword_1001717C0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v43[-v3 - 8];
  v5 = sub_1000033A8(&qword_1001D4730, &qword_1001717C8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v43[-v7 - 8];
  v9 = sub_1000033A8(&qword_1001D4738, &qword_1001717D0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v43[-v11 - 8];
  ButtonStyleConfiguration.label.getter();
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = &v4[*(v2 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  static Color.black.getter();
  ButtonStyleConfiguration.isPressed.getter();
  v19 = Color.opacity(_:)();

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 1.3;
  }

  else
  {
    v20 = 0.6;
  }

  static UnitPoint.center.getter();
  v22 = v21;
  v24 = v23;
  v25 = static Alignment.center.getter();
  v27 = v26;
  *&v44 = v19;
  WORD4(v44) = 256;
  *&v45 = v20;
  *(&v45 + 1) = v20;
  *&v46 = v22;
  *(&v46 + 1) = v24;
  *&v47 = v25;
  *(&v47 + 1) = v26;
  sub_10002091C(v4, v8, &qword_1001D4728, &qword_1001717C0);
  v28 = &v8[*(v6 + 44)];
  v29 = v45;
  *v28 = v44;
  *(v28 + 1) = v29;
  v30 = v47;
  *(v28 + 2) = v46;
  *(v28 + 3) = v30;
  v48 = v19;
  v49 = 256;
  v50 = v20;
  v51 = v20;
  v52 = v22;
  v53 = v24;
  v54 = v25;
  v55 = v27;
  sub_1000138BC(&v44, v43, &qword_1001D4740, &qword_1001717D8);
  sub_10001370C(&v48, &qword_1001D4740, &qword_1001717D8);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v31 = 0.8;
  }

  else
  {
    v31 = 1.0;
  }

  static UnitPoint.center.getter();
  v33 = v32;
  v35 = v34;
  sub_10002091C(v8, v12, &qword_1001D4730, &qword_1001717C8);
  v36 = &v12[*(v10 + 44)];
  *v36 = v31;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v35;
  v37 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v38 = ButtonStyleConfiguration.isPressed.getter();
  v39 = v42;
  sub_10002091C(v12, v42, &qword_1001D4738, &qword_1001717D0);
  result = sub_1000033A8(&qword_1001D4748, &qword_1001717E0);
  v41 = v39 + *(result + 36);
  *v41 = v37;
  *(v41 + 8) = v38 & 1;
  return result;
}

unint64_t sub_1000233DC()
{
  result = qword_1001D4700;
  if (!qword_1001D4700)
  {
    sub_10001276C(&qword_1001D4660, &qword_100171698);
    sub_100023494();
    sub_100013608(&qword_1001D4720, &qword_1001D4668, &qword_1001716A0, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4700);
  }

  return result;
}

unint64_t sub_100023494()
{
  result = qword_1001D4708;
  if (!qword_1001D4708)
  {
    sub_10001276C(&qword_1001D4658, &qword_100171690);
    sub_100013608(&qword_1001D4710, &qword_1001D4718, &qword_100171780, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4708);
  }

  return result;
}

unint64_t sub_10002356C()
{
  result = qword_1001D4750;
  if (!qword_1001D4750)
  {
    sub_10001276C(&qword_1001D4748, &qword_1001717E0);
    sub_100023624();
    sub_100013608(&qword_1001D4780, &qword_1001D4788, &unk_100178470, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4750);
  }

  return result;
}

unint64_t sub_100023624()
{
  result = qword_1001D4758;
  if (!qword_1001D4758)
  {
    sub_10001276C(&qword_1001D4738, &qword_1001717D0);
    sub_1000236B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4758);
  }

  return result;
}

unint64_t sub_1000236B0()
{
  result = qword_1001D4760;
  if (!qword_1001D4760)
  {
    sub_10001276C(&qword_1001D4730, &qword_1001717C8);
    sub_100023794(&qword_1001D4768, &qword_1001D4728, &qword_1001717C0, sub_100023818);
    sub_100013608(&qword_1001D4778, &qword_1001D4740, &qword_1001717D8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4760);
  }

  return result;
}

uint64_t sub_100023794(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023818()
{
  result = qword_1001D4770;
  if (!qword_1001D4770)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4770);
  }

  return result;
}

uint64_t sub_100023888(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000033A8(&qword_1001D4790, &unk_100171820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100023958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001D4790, &unk_100171820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SwipeToDismissModifier(uint64_t a1)
{
  result = qword_1001D47F0;
  if (!qword_1001D47F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023A54(uint64_t a1)
{
  sub_10001B610();
  if (v1 <= 0x3F)
  {
    sub_100023B6C(319, &qword_1001D4800, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      sub_100023B6C(319, &qword_1001D44A0, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_100023B6C(319, &qword_1001D4808, &type metadata for Double);
        if (v4 <= 0x3F)
        {
          sub_100023BB8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100023B6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100023BB8(uint64_t a1)
{
  if (!qword_1001D4810)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D4810);
    }
  }
}

uint64_t sub_100023C2C()
{
  if (*v0)
  {
    return 1853321060;
  }

  else
  {
    return 28789;
  }
}

uint64_t sub_100023C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v57 = a2;
  v45 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v45);
  v44[1] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DragGesture();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D4860, &qword_100171898);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v44 - v7;
  v56 = sub_1000033A8(&qword_1001D4868, &qword_1001718A0);
  __chkstk_darwin(v56);
  v55 = v44 - v8;
  v9 = type metadata accessor for SwipeToDismissModifier(0);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v11 = sub_1000033A8(&qword_1001D4870, &qword_1001718A8);
  __chkstk_darwin(v11);
  v13 = v44 - v12;
  v54 = sub_1000033A8(&qword_1001D4878, &qword_1001718B0);
  __chkstk_darwin(v54);
  v15 = v44 - v14;
  v58 = sub_1000033A8(&qword_1001D4880, &qword_1001718B8);
  __chkstk_darwin(v58);
  v17 = v44 - v16;
  v18 = *(v2 + 32);
  v61 = *(v2 + 24);
  v62 = v18;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  State.wrappedValue.getter();
  v19 = v60;
  v20 = sub_1000033A8(&qword_1001D4890, &qword_1001718C8);
  (*(*(v20 - 8) + 16))(v13, v52, v20);
  v21 = &v13[*(sub_1000033A8(&qword_1001D4898, &qword_1001718D0) + 36)];
  *v21 = 0;
  *(v21 + 1) = v19;
  sub_1000033A8(&qword_1001D48A0, &qword_1001718D8);
  sub_1000033A8(&qword_1001D4790, &unk_100171820);
  State.wrappedValue.getter();
  v22 = *(v2 + 96);
  v61 = *(v2 + 88);
  v62 = v22;
  State.wrappedValue.getter();
  v23 = &v13[*(v11 + 36)];
  *v23 = v60;
  v23[8] = 0;
  v59 = v2;
  sub_1000033A8(&qword_1001D48A8, &qword_1001718E0);
  sub_100025748();
  sub_100025800();
  View.ifCondition<A>(_:transform:)();
  sub_10001370C(v13, &qword_1001D4870, &qword_1001718A8);
  sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v25 = swift_allocObject();
  sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = &v15[*(sub_1000033A8(&qword_1001D48C8, &qword_1001718E8) + 36)];
  *v26 = sub_100025958;
  *(v26 + 1) = v25;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v24);
  v28 = &v15[*(v54 + 36)];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = sub_100026288;
  *(v28 + 3) = v27;
  LOBYTE(v61) = *v2;
  v29 = v61;
  sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v24);
  sub_1000259D0();
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v15, &qword_1001D4878, &qword_1001718B0);
  v31 = *(v2 + 64);
  v61 = *(v2 + 56);
  v62 = v31;
  sub_1000033A8(&qword_1001D48E0, &qword_1001718F0);
  State.wrappedValue.getter();
  v32 = *(v58 + 36);
  v54 = v17;
  *&v17[v32] = v60;
  if (v29 == 1)
  {
    static CoordinateSpaceProtocol<>.local.getter();
    v33 = v46;
    DragGesture.init<A>(minimumDistance:coordinateSpace:)();
    sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = swift_allocObject();
    sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v24);
    sub_100025FF0(&qword_1001D4908, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
    sub_100025FF0(&qword_1001D4910, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
    v35 = v48;
    v36 = v49;
    Gesture<>.onChanged(_:)();

    (*(v47 + 8))(v33, v35);
    sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = swift_allocObject();
    sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v24);
    sub_100013608(&qword_1001D4918, &qword_1001D4860, &qword_100171898, &protocol conformance descriptor for _ChangedGesture<A>);
    v38 = v55;
    v39 = v51;
    Gesture.onEnded(_:)();

    (*(v50 + 8))(v36, v39);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v38 = v55;
  }

  v41 = sub_1000033A8(&qword_1001D48E8, &qword_1001718F8);
  (*(*(v41 - 8) + 56))(v38, v40, 1, v41);
  static GestureMask.all.getter();
  sub_100025B50();
  sub_100025C2C();
  v42 = v54;
  View.gesture<A>(_:including:)();
  sub_10001370C(v38, &qword_1001D4868, &qword_1001718A0);
  return sub_10001370C(v42, &qword_1001D4880, &qword_1001718B8);
}

uint64_t sub_1000245B0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1000033A8(&qword_1001D48E0, &qword_1001718F0);
  State.wrappedValue.getter();
  static UnitPoint.center.getter();
  v6 = v5;
  v8 = v7;
  sub_100026080(a1, a3);
  result = sub_1000033A8(&qword_1001D48A8, &qword_1001718E0);
  v10 = (a3 + *(result + 36));
  *v10 = v11;
  v10[1] = v11;
  v10[2] = v6;
  v10[3] = v8;
  return result;
}

uint64_t sub_100024664()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = *(v0 + 32);
  v16 = *(v0 + 24);
  v17 = v8;
  v15 = 0;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  State.wrappedValue.setter();
  v9 = *(v0 + 64);
  v16 = *(v0 + 56);
  v17 = v9;
  v15 = 0x3FF0000000000000;
  sub_1000033A8(&qword_1001D48E0, &qword_1001718F0);
  State.wrappedValue.setter();
  v10 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = v10;
  v15 = 0x3FF0000000000000;
  State.wrappedValue.setter();
  v11 = *(v0 + 96);
  v16 = *(v0 + 88);
  v17 = v11;
  v15 = 0;
  State.wrappedValue.setter();
  v12 = *(v0 + 48);
  LOBYTE(v16) = *(v0 + 40);
  v17 = v12;
  LOBYTE(v15) = 0;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  result = State.wrappedValue.setter();
  if (*(v0 + 1) == 1)
  {
    UUID.init()();
    type metadata accessor for SwipeToDismissModifier(0);
    (*(v2 + 16))(v5, v7, v1);
    sub_1000033A8(&qword_1001D4790, &unk_100171820);
    State.wrappedValue.setter();
    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

_BYTE *sub_1000248AC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10002494C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  LOBYTE(v23) = v7;
  v24 = v8;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (LOBYTE(v22))
  {
    static Log.ui.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Ignoring card swipe change because the card is animating away", v11, 2u);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    DragGesture.Value.translation.getter();
    v14 = v13 * 0.9;
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    v22 = v13 * 0.9;
    v23 = v15;
    v24 = v16;
    sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
    State.wrappedValue.setter();
    result = DragGesture.Value.translation.getter();
    v17 = fabs(v14);
    if (v18 <= 0.0)
    {
      if (v17 <= 60.0)
      {
        return result;
      }

      LOBYTE(v23) = v7;
      v24 = v8;
      LOBYTE(v22) = 1;
      State.wrappedValue.setter();
      v20 = static Animation.spring(response:dampingFraction:blendDuration:)();
      __chkstk_darwin(v20);
      *(&v21 - 16) = 0;
      *(&v21 - 1) = a2;
    }

    else
    {
      if (v17 <= 85.0)
      {
        return result;
      }

      LOBYTE(v23) = v7;
      v24 = v8;
      LOBYTE(v22) = 1;
      State.wrappedValue.setter();
      v19 = static Animation.spring(response:dampingFraction:blendDuration:)();
      __chkstk_darwin(v19);
      *(&v21 - 16) = 1;
      *(&v21 - 1) = a2;
    }

    withAnimation<A>(_:_:)();
  }
}

void *sub_100024CE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + 1) != 1 || (v7 = *(a2 + 48), v13[8] = *(a2 + 40), v14 = v7, sub_1000033A8(&qword_1001D3E88, &unk_100171900), result = State.wrappedValue.getter(), (v13[7] & 1) == 0))
  {
    static Log.ui.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not restoring card position after swipe because card is animating away", v11, 2u);
    }

    (*(v4 + 8))(v6, v3);
    v12 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v12);
    *&v13[-16] = a2;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100024EF4(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SwipeToDismissModifier(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchTime();
  v11 = *(v43 - 8);
  v12 = __chkstk_darwin(v43);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - v16;
  __chkstk_darwin(v15);
  v36 = &v32 - v18;
  v19 = *(a2 + 32);
  aBlock = *(a2 + 24);
  v45 = v19;
  v50 = 0;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  State.wrappedValue.setter();
  if (*(a2 + 1) == 1)
  {
    v20 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v20);
    *(&v32 - 2) = a2;
    withAnimation<A>(_:_:)();
  }

  (*(a2 + 8))(a1 & 1);
  sub_100014FBC();
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v11 + 8);
  v22 = v43;
  v21(v14, v43);
  v34 = v21;
  v23 = v36;
  + infix(_:_:)();
  v21(v17, v22);
  sub_10002588C(a2, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = swift_allocObject();
  sub_1000258F4(v10, v25 + v24);
  v48 = sub_100025F4C;
  v49 = v25;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1000B5F04;
  v47 = &unk_1001C02E0;
  v26 = _Block_copy(&aBlock);
  v27 = v37;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_100025FF0(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v28 = v40;
  v29 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v33;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v39);
  v34(v23, v43);
}

uint64_t sub_1000254B4(void *a1)
{
  sub_1000033A8(&qword_1001D48E0, &qword_1001718F0);
  State.wrappedValue.setter();
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  return State.wrappedValue.setter();
}

uint64_t sub_100025594(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = *(a1 + 48);
  v11[16] = *(a1 + 40);
  v12 = v9;
  v11[15] = 0;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  result = State.wrappedValue.setter();
  if (*(a1 + 1) == 1)
  {
    UUID.init()();
    type metadata accessor for SwipeToDismissModifier(0);
    (*(v3 + 16))(v6, v8, v2);
    sub_1000033A8(&qword_1001D4790, &unk_100171820);
    State.wrappedValue.setter();
    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

unint64_t sub_100025748()
{
  result = qword_1001D48B0;
  if (!qword_1001D48B0)
  {
    sub_10001276C(&qword_1001D4870, &qword_1001718A8);
    sub_100013608(&qword_1001D48B8, &qword_1001D48A0, &qword_1001718D8, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48B0);
  }

  return result;
}

unint64_t sub_100025800()
{
  result = qword_1001D48C0;
  if (!qword_1001D48C0)
  {
    sub_10001276C(&qword_1001D48A8, &qword_1001718E0);
    sub_100025748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48C0);
  }

  return result;
}

uint64_t sub_10002588C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeToDismissModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000258F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeToDismissModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000259D0()
{
  result = qword_1001D48D0;
  if (!qword_1001D48D0)
  {
    sub_10001276C(&qword_1001D4878, &qword_1001718B0);
    sub_100025A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48D0);
  }

  return result;
}

unint64_t sub_100025A5C()
{
  result = qword_1001D48D8;
  if (!qword_1001D48D8)
  {
    sub_10001276C(&qword_1001D48C8, &qword_1001718E8);
    sub_10001276C(&qword_1001D4870, &qword_1001718A8);
    sub_10001276C(&qword_1001D48A8, &qword_1001718E0);
    sub_100025748();
    sub_100025800();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48D8);
  }

  return result;
}

unint64_t sub_100025B50()
{
  result = qword_1001D48F0;
  if (!qword_1001D48F0)
  {
    sub_10001276C(&qword_1001D4880, &qword_1001718B8);
    sub_10001276C(&qword_1001D4878, &qword_1001718B0);
    sub_1000259D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48F0);
  }

  return result;
}

unint64_t sub_100025C2C()
{
  result = qword_1001D48F8;
  if (!qword_1001D48F8)
  {
    sub_10001276C(&qword_1001D4868, &qword_1001718A0);
    sub_100013608(&qword_1001D4900, &qword_1001D48E8, &qword_1001718F8, &protocol conformance descriptor for _EndedGesture<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48F8);
  }

  return result;
}

uint64_t sub_100025D0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SwipeToDismissModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100025E18()
{
  v1 = (type metadata accessor for SwipeToDismissModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[14];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1000033A8(&qword_1001D4790, &unk_100171820);

  return swift_deallocObject();
}

uint64_t sub_100025F64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SwipeToDismissModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100025FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100026080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4870, &qword_1001718A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SwipeToDismissDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002619C()
{
  sub_10001276C(&qword_1001D4880, &qword_1001718B8);
  sub_10001276C(&qword_1001D4868, &qword_1001718A0);
  sub_100025B50();
  sub_100025C2C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100026230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4920;
  if (!qword_1001D4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoggingConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for LoggingConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100026424(void *a1, unsigned int a2)
{
  v4 = sub_1000033A8(&qword_1001D4980, &qword_100171BF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  v8 = sub_100006AAC(a1, a1[3]);
  sub_100027918(v8, v9, v10);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1000265A4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1000265E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000016 && 0x800000010016B930 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010016B950 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000266D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100027918(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100027918(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100026748@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1001D31C0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1001EB600;
  a1[1] = 0;
  return result;
}

uint64_t sub_1000267B0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100027738(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1000267E8(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100026424(a1, v2 | *v1);
}

unint64_t sub_100026844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4928;
  if (!qword_1001D4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4928);
  }

  return result;
}

unint64_t sub_10002689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4930;
  if (!qword_1001D4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4930);
  }

  return result;
}

unint64_t sub_1000268F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4938;
  if (!qword_1001D4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4938);
  }

  return result;
}

uint64_t sub_100026948()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_1000276D4(v6, qword_1001EB508);
  sub_10002769C(v6, qword_1001EB508);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100026B3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for ConfigToggle();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = __chkstk_darwin(v3);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v44 = sub_1000033A8(&qword_1001D4948, &qword_100171B80);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v41 - v9;
  v11 = sub_1000033A8(&qword_1001D4950, &qword_100171B88);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = __chkstk_darwin(v11);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v41 - v14;
  v62 = *v1;
  v63 = *(v1 + 16);
  v55 = *v1;
  LOWORD(v56) = *(v1 + 16);
  sub_1000033A8(&qword_1001D4958, &qword_100171B90);
  Binding.projectedValue.getter();
  v15 = v58;
  v16 = v59;
  v17 = v60;
  swift_getKeyPath();
  v55 = v15;
  LOBYTE(v56) = v16;
  BYTE1(v56) = v17;
  Binding.subscript.getter();

  v61 = *(v2 + 19);
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v55 = v62;
  LOWORD(v56) = v63;
  Binding.wrappedValue.getter();
  v18 = swift_allocObject();
  v19 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v2 + 32);
  sub_100027664(v2, &v55);
  v20 = sub_100021E58();
  v21 = v10;
  v22 = v53;
  v51 = v8;
  View.onChange<A>(of:initial:_:)();

  v42 = *(v54 + 8);
  v43 = v54 + 8;
  v42(v8, v22);
  v58 = *(v2 + 24);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.projectedValue.getter();
  *&v55 = v22;
  *(&v55 + 1) = &type metadata for Bool;
  v56 = v20;
  v57 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v23 = v52;
  v24 = v44;
  View.alert(isPresented:content:)();

  (*(v45 + 8))(v21, v24);
  v55 = v62;
  LOWORD(v56) = v63;
  Binding.projectedValue.getter();
  v25 = v58;
  v26 = v59;
  v27 = v60;
  swift_getKeyPath();
  v55 = v25;
  LOBYTE(v56) = v26;
  BYTE1(v56) = v27;
  Binding.subscript.getter();

  v28 = v51;
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v30 = v47;
  v29 = v48;
  v31 = *(v47 + 16);
  v32 = v46;
  v31(v46, v23, v48);
  v33 = v53;
  v34 = *(v54 + 16);
  v35 = v49;
  v34(v49, v28, v53);
  v36 = v50;
  v31(v50, v32, v29);
  v37 = sub_1000033A8(&qword_1001D4960, &qword_100171BE0);
  v34(&v36[*(v37 + 48)], v35, v33);
  v38 = v42;
  v42(v51, v33);
  v39 = *(v30 + 8);
  v39(v52, v29);
  v38(v35, v33);
  return (v39)(v32, v29);
}

void sub_1000271A8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    sub_1000033A8(&qword_1001D3E88, &unk_100171900);
    State.wrappedValue.setter();
  }
}

uint64_t sub_10002720C@<X0>(uint64_t a1@<X8>)
{
  v19[3] = a1;
  v1 = sub_1000033A8(&qword_1001D4968, &qword_100171BE8);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v19[1] = v9;
  v19[2] = v8;
  v19[0] = v10;
  if (qword_1001D3148 != -1)
  {
    swift_once();
  }

  v11 = sub_10002769C(v4, qword_1001EB508);
  (*(v5 + 16))(v7, v11, v4);
  Text.init(_:)();
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Alert.Button.default(_:action:)();
  sub_100020D44(v12, v14, v16 & 1);

  v17 = type metadata accessor for Alert.Button();
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  return Alert.init(title:message:dismissButton:)();
}

void *sub_1000274CC@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *a2;
  v9 = a2[1];
  result = State.init(wrappedValue:)();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 17) = v7;
  *(a3 + 18) = v8;
  *(a3 + 19) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  return result;
}

unint64_t sub_1000275C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4940;
  if (!qword_1001D4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4940);
  }

  return result;
}

uint64_t sub_100027614()
{

  return swift_deallocObject();
}

uint64_t sub_10002769C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000276D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100027738(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D4970, &qword_100171BF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  if (qword_1001D31C0 != -1)
  {
    swift_once();
  }

  v7 = sub_100006AAC(a1, a1[3]);
  sub_100027918(v7, v8, v9);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006B44(a1);
  }

  v14[15] = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[14] = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006B44(a1);
  if (v11)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v10 & 1;
}

unint64_t sub_100027918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4978;
  if (!qword_1001D4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4978);
  }

  return result;
}

__n128 sub_10002797C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100027990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000279D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100027A34()
{
  result = qword_1001D4988;
  if (!qword_1001D4988)
  {
    sub_10001276C(&qword_1001D4990, &qword_100171C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4988);
  }

  return result;
}

unint64_t sub_100027A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4998;
  if (!qword_1001D4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4998);
  }

  return result;
}

unint64_t sub_100027AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D49A0;
  if (!qword_1001D49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49A0);
  }

  return result;
}

unint64_t sub_100027B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D49A8;
  if (!qword_1001D49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49A8);
  }

  return result;
}

uint64_t sub_100027BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100027BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_100027C08()
{
  v0 = type metadata accessor for Material.Layer.Glass();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Material.Context.environment.getter();
  EnvironmentValues.colorScheme.getter();
  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v7, enum case for ColorScheme.dark(_:), v3);
  static ColorScheme.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v9, v3);
  Material.Layer.Glass.init()();
  Material.Layer.Glass.thickness.setter();
  Material.Layer.Glass.lightAngle.setter();
  Material.Layer.Glass.strength.setter();
  sub_1000033A8(&qword_1001D49C0, &qword_100171EA8);
  type metadata accessor for Material.Layer.Filter();
  *(swift_allocObject() + 16) = xmmword_100171D90;
  static Material.Layer.Filter.brightness(amount:)();
  __asm { FMOV            V0.4S, #0.25 }

  static Material.Layer.Filter.luminanceCurve(_:amount:)();
  static Material.Layer.Filter.saturation(amount:)();
  static Material.Layer.Filter.gaussianBlur(radius:isOpaque:isDithered:)();
  Material.Layer.Glass.filters.setter();
  sub_1000033A8(&qword_1001D49C8, &qword_100171EB0);
  type metadata accessor for Material.Layer();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100171DA0;
  static Material.Layer.glass(_:)();
  (*(v22 + 8))(v2, v23);
  return v20;
}

void sub_100028044()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
}

Swift::Int sub_100028124()
{
  Hasher.init(_seed:)();
  sub_100028044();
  return Hasher._finalize()();
}

Swift::Int sub_1000281B4()
{
  Hasher.init(_seed:)();
  sub_100028044();
  return Hasher._finalize()();
}

unint64_t sub_100028248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D49B0;
  if (!qword_1001D49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49B0);
  }

  return result;
}

unint64_t sub_1000282A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D49B8;
  if (!qword_1001D49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49B8);
  }

  return result;
}

id sub_1000282F4(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 areaMinMaxRedFilter];
    v7 = v5;
    [v6 setInputImage:v7];
    [v7 extent];
    [v6 setExtent:?];
    v8 = [v6 outputImage];
    if (!v8)
    {

      goto LABEL_6;
    }

    v9 = v8;
    v10 = swift_slowAlloc();
    [a2 render:v9 toBitmap:v10 rowBytes:16 bounds:kCIFormatRGBAf format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
    v11 = *v10;
    v12 = v10[1];

    v13 = v12 - v11;
    if (v13 < 0.0039216)
    {

LABEL_6:
      return 0;
    }

    v14 = [v4 colorMatrixFilter];
    [v14 setInputImage:v7];

    v15 = 1.0 / v13;
    v16 = [objc_allocWithZone(CIVector) initWithX:v15 Y:0.0 Z:0.0 W:0.0];
    [v14 setRVector:v16];

    v17 = [objc_allocWithZone(CIVector) initWithX:v15 Y:0.0 Z:0.0 W:0.0];
    [v14 setGVector:v17];

    v18 = [objc_allocWithZone(CIVector) initWithX:v15 Y:0.0 Z:0.0 W:0.0];
    [v14 setBVector:v18];

    v19 = [objc_allocWithZone(CIVector) initWithX:-(v11 / v13) Y:-(v11 / v13) Z:-(v11 / v13) W:0.0];
    [v14 setBiasVector:v19];

    v20 = [v14 outputImage];
    return v20;
  }

  return result;
}

uint64_t sub_1000285D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScanwaveImageConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (*(a1 + 16) && v10 != 1)
  {
    if (v8 > 1)
    {
      if (v8 ^ 2 | v9)
      {
        if (qword_1001D3168 != -1)
        {
          swift_once();
        }

        v11 = qword_1001EB538;
      }

      else
      {
        if (qword_1001D3160 != -1)
        {
          swift_once();
        }

        v11 = qword_1001EB530;
      }
    }

    else if (v8 | v9)
    {
      if (qword_1001D3158 != -1)
      {
        swift_once();
      }

      v11 = qword_1001EB528;
    }

    else
    {
      if (qword_1001D3150 != -1)
      {
        swift_once();
      }

      v11 = qword_1001EB520;
    }
  }

  else
  {
    v11 = *a1;
  }

  v12 = v11;
  v13 = sub_100029F54(v8, v9, v10);
  ScanwaveImageConfiguration.init(image:depthImage:)();
  (*(v5 + 16))(a2, v7, v4);
  v36 = *(a1 + 72);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.projectedValue.getter();
  v30 = *(&v34 + 1);
  v31 = v34;
  v14 = v35;
  v34 = *(a1 + 24);
  v35 = *(a1 + 40);
  sub_1000033A8(&qword_1001D4A78, &qword_1001720A8);
  Binding.projectedValue.getter();
  v32 = v7;
  v33 = v4;
  v15 = v36;
  v16 = v37;
  v34 = *(a1 + 48);
  v35 = *(a1 + 64);
  sub_1000033A8(&qword_1001D3E78, &qword_1001720B0);
  Binding.projectedValue.getter();
  v17 = v36;
  v18 = v5;
  v19 = v37;
  v20 = type metadata accessor for ScanwaveViewControllerWrapper(0);
  v21 = a2 + v20[5];
  v22 = v30;
  *v21 = v31;
  *(v21 + 8) = v22;
  *(v21 + 16) = v14;
  v23 = a2 + v20[6];
  *v23 = v15;
  *(v23 + 16) = v16;
  v24 = a2 + v20[7];
  *v24 = v17;
  *(v24 + 16) = v19;
  static LoggingSignposter.ui.getter();
  v25 = swift_allocObject();
  v26 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = *(a1 + 80);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  v28 = (a2 + *(sub_1000033A8(&qword_1001D4A80, &qword_1001720C8) + 36));
  type metadata accessor for _TaskModifier();
  sub_10002A38C(a1, &v34);
  static TaskPriority.userInitiated.getter();
  result = (*(v18 + 8))(v32, v33);
  *v28 = &unk_1001720C0;
  v28[1] = v25;
  return result;
}

uint64_t sub_1000289A4(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100028A98, v4, v3);
}

uint64_t sub_100028A98()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100028B64;

  return sub_1000A9BE0(10000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100028B64()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_100028DE4;
  }

  else
  {
    v8 = sub_100028CFC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100028CFC()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 56);
    v2 = *(v1 + 40);
    *(v0 + 16) = *(v1 + 24);
    *(v0 + 32) = v2;
    sub_1000033A8(&qword_1001D4A78, &qword_1001720A8);
    Binding.wrappedValue.getter();
    if (*(v0 + 33) == 2)
    {
      *(v0 + 40) = *(*(v0 + 56) + 72);
      *(v0 + 34) = 1;
      sub_1000033A8(&qword_1001D3E88, &unk_100171900);
      State.wrappedValue.setter();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100028DE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028E58@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v4;
  v9[4] = *(v2 + 64);
  v10 = *(v2 + 80);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_1000033A8(&qword_1001D4A70, &unk_100172098);
  return sub_1000285D8(v9, a2 + *(v7 + 44));
}

uint64_t sub_100028ECC(uint64_t a1)
{
  v3 = type metadata accessor for ScanwaveViewControllerWrapper(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  sub_1000033A8(&qword_1001D4B50, &qword_1001721A8);
  UIViewControllerRepresentableContext.coordinator.getter();
  v10 = v23[0];
  if (*(v23[0] + 16))
  {
  }

  v11 = v1 + *(v3 + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v11) = *(v11 + 16);
  v23[0] = v12;
  v23[1] = v13;
  v24 = v11;
  sub_1000033A8(&qword_1001D3E78, &qword_1001720B0);
  Binding.wrappedValue.getter();
  if (LOBYTE(v22[0]) != 1)
  {
  }

  v20 = a1;
  static LoggingSignposter.scanwavePlayback.getter();
  v21 = v4;
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  *(v10 + 16) = 1;
  dispatch thunk of ScanwaveViewController.activate()();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_10002A7FC(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002A860(v23, v22);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_10002AA40(v6, v18 + v16);
  sub_10002AAA4(v22, v18 + v17);
  sub_1000154EC(0, 0, v9, &unk_1001721B8, v18);

  return sub_100006B44(v23);
}

uint64_t sub_1000291B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v8;
  v5[21] = v7;

  return _swift_task_switch(sub_1000292AC, v8, v7);
}

uint64_t sub_1000292AC()
{
  v1 = static Duration.milliseconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_10002938C;

  return sub_1000A9BE0(v1, v3, 0, 0, 1);
}

uint64_t sub_10002938C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[20];
    v8 = v3[21];
    v9 = sub_10002AC20;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[20];
    v8 = v3[21];
    v9 = sub_100029520;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100029520()
{
  v1 = *(v0 + 112);

  v2 = type metadata accessor for ScanwaveViewControllerWrapper(0);
  v3 = (v1 + v2[6]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  sub_1000033A8(&qword_1001D4A78, &qword_1001720A8);
  Binding.wrappedValue.getter();
  if (*(v0 + 33) == 2)
  {
    *(v0 + 36) = 3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    Binding.wrappedValue.setter();
  }

  v7 = *(v0 + 112);
  sub_100006AAC(*(v0 + 120), *(*(v0 + 120) + 24));
  dispatch thunk of LoggingSignposter.Interval.end()();
  v8 = (v7 + v2[5]);
  v9 = *v8;
  v10 = v8[1];
  LOBYTE(v8) = *(v8 + 16);
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;
  *(v0 + 56) = v8;
  *(v0 + 34) = 0;
  sub_1000033A8(&qword_1001D3E78, &qword_1001720B0);
  Binding.wrappedValue.setter();
  v11 = (v7 + v2[7]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(v11 + 16);
  *(v0 + 64) = v12;
  *(v0 + 72) = v13;
  *(v0 + 80) = v11;
  *(v0 + 35) = 1;
  Binding.wrappedValue.setter();

  v14 = *(v0 + 8);

  return v14();
}

id sub_1000296C8()
{
  v1 = sub_1000033A8(&qword_1001D4B58, &unk_1001721C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  type metadata accessor for ScanwaveViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = type metadata accessor for ScanwaveImageConfiguration();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v0, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  dispatch thunk of ScanwaveViewController.imageConfiguration.setter();
  return v4;
}

uint64_t sub_1000297F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScanwaveViewControllerWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100029868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002ABD8(&qword_1001D4B60, &unk_100172128);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000298E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002ABD8(&qword_1001D4B60, &unk_100172128);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100029968(uint64_t a1)
{
  sub_10002ABD8(&qword_1001D4B60, &unk_100172128);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_1000299AC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB520 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029A2C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB528 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029AA4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB530 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029B1C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB538 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029B94()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB540 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029C0C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB548 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029C84()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB550 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029CFC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB558 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029DA8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100029DC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100029DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100029E20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100029E64(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100029E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100029ED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100029F54(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (qword_1001D3168 != -1)
          {
            swift_once();
          }

          return qword_1001EB538;
        }

        else
        {
          if (qword_1001D3160 != -1)
          {
            swift_once();
          }

          return qword_1001EB530;
        }
      }

      else if (a1 | a2)
      {
        if (qword_1001D3178 != -1)
        {
          swift_once();
        }

        return qword_1001EB548;
      }

      else
      {
        if (qword_1001D3170 != -1)
        {
          swift_once();
        }

        return qword_1001EB540;
      }
    }

    return a2;
  }

  [a1 size];
  v5 = v4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [a1 size];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v5 / v6;
  if (v7 <= 1.0)
  {
    if (v7 >= 0.642857143)
    {
LABEL_16:
      if (qword_1001D3180 == -1)
      {
        return qword_1001EB550;
      }

LABEL_39:
      swift_once();
      return qword_1001EB550;
    }
  }

  else if (v7 <= 1.55555556)
  {
    goto LABEL_16;
  }

  if (qword_1001D3188 != -1)
  {
    swift_once();
  }

  return qword_1001EB558;
}

uint64_t type metadata accessor for ScanwaveViewControllerWrapper(uint64_t a1)
{
  result = qword_1001D4AE0;
  if (!qword_1001D4AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A248()
{
  sub_10002A2AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

void sub_10002A2AC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_10002A2F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100019340;

  return sub_1000289A4(v0 + 16);
}

uint64_t sub_10002A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScanwaveImageConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for LoggingSignposter();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002A514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScanwaveImageConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for LoggingSignposter();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10002A63C(uint64_t a1)
{
  type metadata accessor for ScanwaveImageConfiguration();
  if (v1 <= 0x3F)
  {
    sub_10002A714(319, &qword_1001D4AF0, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10002A714(319, &unk_1001D4AF8, &type metadata for CaptureEffectsState);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LoggingSignposter();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002A714(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10002A764()
{
  result = qword_1001D4B38;
  if (!qword_1001D4B38)
  {
    sub_10001276C(&qword_1001D4B40, &qword_1001720D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4B38);
  }

  return result;
}

uint64_t sub_10002A7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanwaveViewControllerWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002A8C4()
{
  v1 = (type metadata accessor for ScanwaveViewControllerWrapper(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = type metadata accessor for ScanwaveImageConfiguration();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v1[10];
  v7 = type metadata accessor for LoggingSignposter();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_100006B44((v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_10002AA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanwaveViewControllerWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AAA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002AABC(uint64_t a1)
{
  v4 = *(type metadata accessor for ScanwaveViewControllerWrapper(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_1000291B8(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_10002ABD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScanwaveViewControllerWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002AC24@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL sub_10002AC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002AD0C()
{
  type metadata accessor for DebugToaster(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  v2 = type metadata accessor for Toast(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  result = ObservationRegistrar.init()();
  qword_1001EB560 = v0;
  return result;
}

uint64_t sub_10002ADA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster, &unk_100172310);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  return sub_1000138BC(v5 + v3, a1, &qword_1001D4D58, &qword_100172250);
}

uint64_t sub_10002AE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster, &unk_100172310);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  return sub_1000138BC(v3 + v4, a2, &qword_1001D4D58, &qword_100172250);
}

uint64_t sub_10002AF50(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000138BC(a1, &v6 - v3, &qword_1001D4D58, &qword_100172250);
  return sub_10002AFFC(v4);
}

uint64_t sub_10002AFFC(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  sub_1000138BC(v1 + v6, v5, &qword_1001D4D58, &qword_100172250);
  v7 = sub_10002DFEC(v5, a1);
  sub_10001370C(v5, &qword_1001D4D58, &qword_100172250);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster, &unk_100172310);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_10002E8D0(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_10001370C(a1, &qword_1001D4D58, &qword_100172250);
}

uint64_t sub_10002B1E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  sub_10002E8D0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10002B254()
{
  sub_10001370C(v0 + OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast, &qword_1001D4D58, &qword_100172250);
  v1 = OBJC_IVAR____TtC6Tamale12DebugToaster___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10002B338(uint64_t a1)
{
  sub_10002BA88(319, &unk_1001D4BB0, type metadata accessor for Toast, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10002B468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_10002B53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10002B5F8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0, &qword_100172230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4CD8, &qword_100172238);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002B7E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0, &qword_100172230);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4CD8, &qword_100172238);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10002B93C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B974(uint64_t a1)
{
  sub_10002BA88(319, &qword_1001D4D48, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DebugToaster(319);
    if (v2 <= 0x3F)
    {
      sub_10002BAEC(319, &qword_1001D4D50, &qword_1001D4D58, &qword_100172250);
      if (v3 <= 0x3F)
      {
        sub_10002BAEC(319, &qword_1001D4D60, &unk_1001D4D68, qword_100172258);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002BA88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10002BAEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10001276C(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_10002BB5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1000033A8(&qword_1001D4F10, &qword_1001725F8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100170800;
  v5 = *(v1 + 4);
  v21 = v5;
  v20 = *v1;
  v18[0] = *v1;
  sub_1000033A8(&qword_1001D4F18, &unk_100172600);
  result = State.wrappedValue.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(v5 + 16);
  if (v19 >= v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5 + 32;
  *(v4 + 32) = *(v8 + 16 * v19);
  v18[0] = v20;

  result = State.wrappedValue.getter();
  if (v19 < v7)
  {
    *(v4 + 40) = *(v8 + 16 * v19 + 8);

    Gradient.init(colors:)();
    v19 = v1[1];
    sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
    State.wrappedValue.getter();
    cos(*&__x);
    State.wrappedValue.getter();
    sin(*&__x);
    State.wrappedValue.getter();
    cos(*&__x);
    v18[0] = v19;
    State.wrappedValue.getter();
    sin(*&__x);
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v9 = static Animation.easeInOut(duration:)();
    State.wrappedValue.getter();
    v10 = v19;
    static Animation.linear(duration:)();
    v11 = Animation.repeatForever(autoreverses:)();

    __x = v19;
    State.wrappedValue.getter();
    v12 = swift_allocObject();
    v13 = v2[1];
    *(v12 + 16) = *v2;
    *(v12 + 32) = v13;
    *(v12 + 48) = *(v2 + 4);
    sub_1000138BC(&v20, &__x, &qword_1001D4F18, &unk_100172600);
    sub_1000138BC(&v19, &__x, &qword_1001D4888, &qword_1001718C0);
    sub_1000138BC(&v21, &__x, &qword_1001D4F20, &qword_100172610);
    v14 = static SafeAreaRegions.all.getter();
    result = static Edge.Set.all.getter();
    *a1 = v10;
    v15 = *(v18 + 8);
    *(a1 + 24) = *(&v18[1] + 8);
    *(a1 + 8) = v15;
    *(a1 + 40) = v9;
    *(a1 + 48) = v16;
    *(a1 + 56) = v11;
    *(a1 + 64) = v16;
    *(a1 + 72) = sub_10002EF4C;
    *(a1 + 80) = v12;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = v14;
    *(a1 + 112) = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10002BEA4(__int128 *a1)
{
  v2 = objc_opt_self();
  v3 = a1[1];
  v17 = *a1;
  v16 = v3;
  v15 = *(a1 + 4);
  v4 = swift_allocObject();
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 4);
  v13 = sub_10002EF9C;
  v14 = v4;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v11 = sub_10002C13C;
  v12 = &unk_1001C08A0;
  v6 = _Block_copy(&aBlock);
  sub_1000138BC(&v17, v9, &qword_1001D4F18, &unk_100172600);
  sub_1000138BC(&v16, v9, &qword_1001D4888, &qword_1001718C0);
  sub_1000138BC(&v15, v9, &qword_1001D4F20, &qword_100172610);

  v7 = [v2 scheduledTimerWithTimeInterval:1 repeats:v6 block:4.0];
  _Block_release(v6);

  aBlock = v16;
  v9[0] = 0x401921FB54442D18;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  return State.wrappedValue.setter();
}

void *sub_10002C05C(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_1000138BC(&v8, &v5, &qword_1001D4F28, &qword_100172618);
  sub_1000033A8(&qword_1001D4F18, &unk_100172600);
  result = State.wrappedValue.getter();
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(*(a2 + 4) + 16);
    if (v4)
    {
      v6 = v7;
      v5 = (v5 + 1) % v4;
      State.wrappedValue.setter();
      return sub_10001370C(&v7, &qword_1001D4F18, &unk_100172600);
    }
  }

  __break(1u);
  return result;
}

void sub_10002C13C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002C1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for ToastView(0);
  v4 = v3 - 8;
  v18 = *(v3 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v3);
  v19 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  v8 = sub_1000033A8(&qword_1001D4DA8, &qword_100172338);
  __chkstk_darwin(v8);
  v10 = (&v18 - v9);
  *v10 = static Alignment.center.getter();
  v10[1] = v11;
  v12 = sub_1000033A8(&qword_1001D4DB0, &qword_100172340);
  sub_10002C4C4(v2, v10 + *(v12 + 44));
  *(v10 + *(v8 + 36)) = 0;
  v13 = *(v2 + *(v4 + 28));
  swift_getKeyPath();
  v21 = v13;
  sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster, &unk_100172310);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  sub_1000138BC(v13 + v14, v7, &qword_1001D4D58, &qword_100172250);
  sub_10002EA20(v2, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToastView);
  v15 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v16 = swift_allocObject();
  sub_10002E9B8(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ToastView);
  sub_10002E4B0();
  sub_10002E568();
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v7, &qword_1001D4D58, &qword_100172250);
  return sub_10001370C(v10, &qword_1001D4DA8, &qword_100172338);
}

uint64_t sub_10002C4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v102 = a2;
  v94 = type metadata accessor for BlurReplaceTransition.Configuration();
  v92 = *(v94 - 8);
  v2 = __chkstk_darwin(v94);
  v87 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v86 = &v82 - v4;
  v99 = type metadata accessor for BlurReplaceTransition();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OpacityTransition();
  v91 = *(v96 - 8);
  __chkstk_darwin(v96);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1000033A8(&qword_1001D4E00, &qword_100172390);
  v95 = *(v98 - 8);
  v7 = __chkstk_darwin(v98);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v82 - v9;
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v82 - v15;
  v84 = sub_1000033A8(&qword_1001D4E08, &qword_100172398);
  __chkstk_darwin(v84);
  v18 = &v82 - v17;
  v101 = sub_1000033A8(&qword_1001D4E10, &qword_1001723A0);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v85 = &v82 - v19;
  v20 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v20 - 8);
  v22 = &v82 - v21;
  v23 = type metadata accessor for Toast(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToastView(0);
  sub_1000033A8(&qword_1001D4CD8, &qword_100172238);
  State.wrappedValue.getter();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_10001370C(v22, &qword_1001D4D58, &qword_100172250);
    return (*(v100 + 56))(v102, 1, 1, v101);
  }

  else
  {
    v83 = type metadata accessor for Toast;
    sub_10002E9B8(v22, v26, type metadata accessor for Toast);
    *v18 = static HorizontalAlignment.leading.getter();
    *(v18 + 1) = 0x4010000000000000;
    v18[16] = 0;
    v28 = sub_1000033A8(&qword_1001D4E18, &qword_1001723A8);
    sub_10002D120(v26, &v18[*(v28 + 44)]);
    v29 = static Edge.Set.all.getter();
    v30 = &v18[*(sub_1000033A8(&qword_1001D4E20, &qword_1001723B0) + 36)];
    *v30 = v29;
    *(v30 + 8) = xmmword_1001721D0;
    *(v30 + 24) = xmmword_1001721D0;
    v30[40] = 0;
    v31 = static Alignment.center.getter();
    v33 = v32;
    sub_100054010(v16);
    (*(v11 + 104))(v14, enum case for ColorScheme.light(_:), v10);
    v34 = static ColorScheme.== infix(_:_:)();
    v35 = *(v11 + 8);
    v35(v14, v10);
    v35(v16, v10);
    if (v34)
    {
      v36 = 0.8;
    }

    else
    {
      v36 = 0.3;
    }

    v37 = &v18[*(sub_1000033A8(&qword_1001D4E28, &qword_1001723B8) + 36)];
    *v37 = &off_1001BEB78;
    *(v37 + 1) = 0x403C000000000000;
    *(v37 + 2) = v36;
    *(v37 + 3) = 0x3FE3333333333333;
    *(v37 + 4) = v31;
    *(v37 + 5) = v33;
    v38 = &v18[*(sub_1000033A8(&qword_1001D4E30, &unk_1001723C0) + 36)];
    static Material.thin.getter();
    v39 = static Edge.Set.all.getter();
    v38[*(sub_1000033A8(&qword_1001D3CA0, &qword_100170918) + 36)] = v39;
    sub_10002E2E4(v110);
    v40 = v110[0];
    v41 = v110[1];
    v42 = v110[2];
    v43 = v110[3];
    v44 = v110[4];
    v45 = static Alignment.center.getter();
    v47 = v46;
    *&v105 = v40;
    *(&v105 + 1) = v41;
    *&v106 = v42;
    *(&v106 + 1) = v43;
    *&v107 = v44;
    *(&v107 + 1) = 0x3FE6666666666666;
    *&v108 = v45;
    *(&v108 + 1) = v46;
    v48 = &v18[*(sub_1000033A8(&qword_1001D4E38, &qword_1001723D0) + 36)];
    v49 = v106;
    *v48 = v105;
    *(v48 + 1) = v49;
    v50 = v108;
    *(v48 + 2) = v107;
    *(v48 + 3) = v50;
    v109[0] = v40;
    v109[1] = v41;
    v109[2] = v42;
    v109[3] = v43;
    v109[4] = v44;
    v109[5] = 0x3FE6666666666666;
    v109[6] = v45;
    v109[7] = v47;
    sub_1000138BC(&v105, v104, &qword_1001D4E40, &qword_1001723D8);
    sub_10001370C(v109, &qword_1001D4E40, &qword_1001723D8);
    v51 = &v18[*(sub_1000033A8(&qword_1001D4E48, &qword_1001723E0) + 36)];
    v52 = *(type metadata accessor for RoundedRectangle() + 20);
    v53 = enum case for RoundedCornerStyle.continuous(_:);
    v54 = type metadata accessor for RoundedCornerStyle();
    (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
    __asm { FMOV            V0.2D, #28.0 }

    *v51 = _Q0;
    *&v51[*(sub_1000033A8(&qword_1001D4E50, &qword_1001723E8) + 36)] = 256;
    static Color.black.getter();
    v60 = Color.opacity(_:)();

    v61 = &v18[*(sub_1000033A8(&qword_1001D4E58, &qword_1001723F0) + 36)];
    *v61 = v60;
    *(v61 + 8) = xmmword_1001721E0;
    *(v61 + 3) = 0x4010000000000000;
    LOBYTE(v53) = static Edge.Set.all.getter();
    v62 = &v18[*(sub_1000033A8(&qword_1001D4E60, &qword_1001723F8) + 36)];
    *v62 = v53;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    v62[40] = 1;
    v63 = static Animation.easeInOut(duration:)();
    v64 = &v18[*(v84 + 36)];
    v65 = sub_1000033A8(&qword_1001D4E68, &qword_100172400);
    sub_10002EA20(v26, v64 + *(v65 + 36), v83);
    *v64 = v63;
    v66 = v88;
    OpacityTransition.init()();
    v67 = v86;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v68 = v92;
    v69 = v94;
    (*(v92 + 16))(v87, v67, v94);
    v70 = v93;
    BlurReplaceTransition.init(configuration:)();
    (*(v68 + 8))(v67, v69);
    v71 = sub_10002E3E4(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v72 = sub_10002E3E4(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
    v73 = v90;
    v74 = v96;
    v75 = v99;
    Transition.combined<A>(with:)();
    (*(v97 + 8))(v70, v75);
    (*(v91 + 8))(v66, v74);
    v76 = v95;
    v77 = v98;
    (*(v95 + 16))(v89, v73, v98);
    v104[0] = v74;
    v104[1] = v75;
    v104[2] = v71;
    v104[3] = v72;
    swift_getOpaqueTypeConformance2();
    v78 = AnyTransition.init<A>(_:)();
    (*(v76 + 8))(v73, v77);
    v79 = v85;
    sub_1000138BC(v18, v85, &qword_1001D4E08, &qword_100172398);
    v80 = v101;
    *(v79 + *(v101 + 36)) = v78;
    sub_10001370C(v18, &qword_1001D4E08, &qword_100172398);
    v81 = v102;
    sub_10002EA88(v79, v102);
    (*(v100 + 56))(v81, 0, 1, v80);
    return sub_10002E95C(v26);
  }
}

uint64_t sub_10002D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v71 = a2;
  v69 = sub_1000033A8(&qword_1001D4E80, &qword_100172408) - 8;
  v2 = __chkstk_darwin(v69);
  v70 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v67 = &v60 - v4;
  v5 = sub_1000033A8(&qword_1001D4E88, &qword_100172410);
  __chkstk_darwin(v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_1000033A8(&qword_1001D4E90, &qword_100172418);
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  v11 = sub_1000033A8(&qword_1001D4E98, &qword_100172420);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v17 = &v10[*(v8 + 36)];
  v18 = *(sub_1000033A8(&qword_1001D4EA0, &qword_100172428) + 28);
  v19 = enum case for Text.Case.uppercase(_:);
  v20 = type metadata accessor for Text.Case();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  (*(v21 + 56))(v17 + v18, 0, 1, v20);
  *v17 = swift_getKeyPath();
  *v10 = xmmword_1001721F0;
  v10[16] = 0;
  *(v10 + 3) = _swiftEmptyArrayStorage;
  v22 = enum case for Font.Design.rounded(_:);
  v64 = enum case for Font.Design.rounded(_:);
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  v63 = *(v24 + 104);
  v63(v7, v22, v23);
  v62 = *(v24 + 56);
  v62(v7, 0, 1, v23);
  sub_10002EB20();
  View.fontDesign(_:)();
  sub_10001370C(v7, &qword_1001D4E88, &qword_100172410);
  sub_10001370C(v10, &qword_1001D4E90, &qword_100172418);
  v65 = objc_opt_self();
  v25 = [v65 secondaryLabelColor];
  v26 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v28 = &v16[*(sub_1000033A8(&qword_1001D4EB8, &qword_100172490) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v29 = Font.weight(_:)();

  v30 = swift_getKeyPath();
  v31 = *(sub_1000033A8(&qword_1001D4EC0, &qword_1001724C8) + 36);
  v61 = v16;
  v32 = &v16[v31];
  *v32 = v30;
  v32[1] = v29;
  v33 = swift_getKeyPath();
  v34 = &v16[*(v12 + 44)];
  *v34 = v33;
  *(v34 + 1) = 1;
  v34[16] = 0;
  v35 = type metadata accessor for Toast(0);
  v36 = (v66 + *(v35 + 20));
  v37 = v36[1];
  v72 = *v36;
  v73 = v37;
  sub_10002EC9C(v35, v38, v39);

  v40 = Text.init<A>(_:)();
  v42 = v41;
  LOBYTE(v37) = v43;
  v45 = v44;
  v46 = swift_getKeyPath();
  v72 = v40;
  v73 = v42;
  v74 = v37 & 1;
  v75 = v45;
  v76 = v46;
  v77 = 0;
  v63(v7, v64, v23);
  v62(v7, 0, 1, v23);
  sub_1000033A8(&qword_1001D4ED0, &unk_100172530);
  sub_10002ED44();
  v47 = v67;
  View.fontDesign(_:)();
  sub_10001370C(v7, &qword_1001D4E88, &qword_100172410);
  sub_100020D44(v40, v42, v37 & 1);

  v48 = [v65 labelColor];
  v49 = Color.init(uiColor:)();
  v50 = swift_getKeyPath();
  v51 = (v47 + *(sub_1000033A8(&qword_1001D4EF0, &qword_100172540) + 36));
  *v51 = v50;
  v51[1] = v49;
  v52 = swift_getKeyPath();
  v53 = v47 + *(sub_1000033A8(&qword_1001D4EF8, &qword_100172548) + 36);
  *v53 = v52;
  *(v53 + 8) = 5;
  *(v53 + 16) = 0;
  v54 = v68;
  *(v47 + *(v69 + 44)) = 256;
  v55 = v61;
  sub_1000138BC(v61, v54, &qword_1001D4E98, &qword_100172420);
  v56 = v70;
  sub_1000138BC(v47, v70, &qword_1001D4E80, &qword_100172408);
  v57 = v71;
  sub_1000138BC(v54, v71, &qword_1001D4E98, &qword_100172420);
  v58 = sub_1000033A8(&qword_1001D4F00, &qword_100172550);
  sub_1000138BC(v56, v57 + *(v58 + 48), &qword_1001D4E80, &qword_100172408);
  sub_10001370C(v47, &qword_1001D4E80, &qword_100172408);
  sub_10001370C(v55, &qword_1001D4E98, &qword_100172420);
  sub_10001370C(v56, &qword_1001D4E80, &qword_100172408);
  return sub_10001370C(v54, &qword_1001D4E98, &qword_100172420);
}

uint64_t sub_10002D800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ToastView(0);
  v6 = v5 - 8;
  v24 = *(v5 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v25 = a3;
  v26 = a2;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v11 = (a3 + *(v6 + 36));
  v12 = *v11;
  v13 = v11[1];
  aBlock = *v11;
  v28 = v13;
  sub_1000033A8(&qword_1001D4DF0, &qword_100172380);
  State.wrappedValue.getter();
  v14 = v33;
  [v33 invalidate];

  sub_1000033A8(&qword_1001D4CD8, &qword_100172238);
  State.wrappedValue.getter();
  v15 = type metadata accessor for Toast(0);
  v16 = 1.0;
  if (!(*(*(v15 - 8) + 48))(v10, 1, v15))
  {
    v16 = *&v10[*(v15 + 24)];
  }

  v17 = objc_opt_self();
  sub_10001370C(v10, &qword_1001D4D58, &qword_100172250);
  sub_10002EA20(a3, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToastView);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_10002E9B8(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ToastView);
  v31 = sub_10002E82C;
  v32 = v19;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10002C13C;
  v30 = &unk_1001C07A0;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 scheduledTimerWithTimeInterval:0 repeats:v20 block:v16];
  _Block_release(v20);
  aBlock = v12;
  v28 = v13;
  v33 = v21;
  return State.wrappedValue.setter();
}

uint64_t sub_10002DB4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  type metadata accessor for ToastView(0);
  sub_1000138BC(a2, v5, &qword_1001D4D58, &qword_100172250);
  sub_1000033A8(&qword_1001D4CD8, &qword_100172238);
  return State.wrappedValue.setter();
}

uint64_t sub_10002DC2C(uint64_t a1, uint64_t a2)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10002DC98()
{
  v0 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v8 - v4;
  v6 = type metadata accessor for Toast(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for ToastView(0);
  sub_1000138BC(v5, v3, &qword_1001D4D58, &qword_100172250);
  sub_1000033A8(&qword_1001D4CD8, &qword_100172238);
  State.wrappedValue.setter();
  return sub_10001370C(v5, &qword_1001D4D58, &qword_100172250);
}

uint64_t sub_10002DE34@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DE88@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DEE0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4F08, &qword_100172558);
  __chkstk_darwin(v2 - 8);
  sub_1000138BC(a1, &v5 - v3, &qword_1001D4F08, &qword_100172558);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10002DF88@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

BOOL sub_10002DFEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Toast(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1000033A8(&qword_1001D4DF8, &qword_100172388);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = *(v12 + 56);
  sub_1000138BC(a1, &v24 - v13, &qword_1001D4D58, &qword_100172250);
  sub_1000138BC(a2, &v14[v15], &qword_1001D4D58, &qword_100172250);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_10001370C(v14, &qword_1001D4D58, &qword_100172250);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1000138BC(v14, v10, &qword_1001D4D58, &qword_100172250);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_10002E95C(v10);
LABEL_6:
    sub_10001370C(v14, &qword_1001D4DF8, &qword_100172388);
    return 1;
  }

  sub_10002E9B8(&v14[v15], v7, type metadata accessor for Toast);
  v23 = (static UUID.== infix(_:_:)() & 1) == 0 || ((v18 = *(v4 + 20), v19 = *&v10[v18], v20 = *&v10[v18 + 8], v21 = &v7[v18], v19 == *v21) ? (v22 = v20 == *(v21 + 1)) : (v22 = 0), !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) || *&v10[*(v4 + 24)] != *&v7[*(v4 + 24)];
  sub_10002E95C(v7);
  sub_10002E95C(v10);
  sub_10001370C(v14, &qword_1001D4D58, &qword_100172250);
  return v23;
}

uint64_t sub_10002E2E4@<X0>(void *a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_1000033A8(&qword_1001D4DA0, &qword_100172330);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100171D90;
  *(v2 + 32) = static Color.red.getter();
  *(v2 + 40) = static Color.indigo.getter();
  *(v2 + 48) = static Color.purple.getter();
  *(v2 + 56) = static Color.orange.getter();
  *(v2 + 64) = static Color.red.getter();
  *(v2 + 72) = static Color.purple.getter();
  *(v2 + 80) = static Color.purple.getter();
  result = static Color.red.getter();
  *(v2 + 88) = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v2;
  return result;
}

uint64_t sub_10002E3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002E430(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ToastView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002D800(a1, a2, v6);
}

unint64_t sub_10002E4B0()
{
  result = qword_1001D4DC8;
  if (!qword_1001D4DC8)
  {
    sub_10001276C(&qword_1001D4DA8, &qword_100172338);
    sub_100013608(&qword_1001D4DD0, &qword_1001D4DD8, &qword_100172378, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4DC8);
  }

  return result;
}

unint64_t sub_10002E568()
{
  result = qword_1001D4DE0;
  if (!qword_1001D4DE0)
  {
    sub_10001276C(&qword_1001D4D58, &qword_100172250);
    sub_10002E3E4(&qword_1001D4DE8, type metadata accessor for Toast, &unk_1001722B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4DE0);
  }

  return result;
}

uint64_t sub_10002E638()
{
  v1 = type metadata accessor for ToastView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1000033A8(&qword_1001D4DC0, &qword_100172370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 24);
  v6 = type metadata accessor for Toast(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  sub_1000033A8(&qword_1001D4CD8, &qword_100172238);

  return swift_deallocObject();
}

uint64_t sub_10002E82C(uint64_t a1)
{
  v3 = *(type metadata accessor for ToastView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10002DC2C(a1, v4);
}

uint64_t sub_10002E89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E95C(uint64_t a1)
{
  v2 = type metadata accessor for Toast(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4E10, &qword_1001723A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002EB20()
{
  result = qword_1001D4EA8;
  if (!qword_1001D4EA8)
  {
    sub_10001276C(&qword_1001D4E90, &qword_100172418);
    sub_100013608(&qword_1001D4EB0, &qword_1001D4EA0, &qword_100172428, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4EA8);
  }

  return result;
}

uint64_t sub_10002EBD8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002EC38@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10002EC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D4EC8;
  if (!qword_1001D4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4EC8);
  }

  return result;
}

uint64_t sub_10002ECF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10002ED44()
{
  result = qword_1001D4ED8;
  if (!qword_1001D4ED8)
  {
    sub_10001276C(&qword_1001D4ED0, &unk_100172530);
    sub_100013608(&qword_1001D4EE0, &qword_1001D4EE8, &unk_1001768B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4ED8);
  }

  return result;
}

uint64_t sub_10002EDFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002EE44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002EE9C()
{
  sub_10001276C(&qword_1001D4DA8, &qword_100172338);
  sub_10001276C(&qword_1001D4D58, &qword_100172250);
  sub_10002E4B0();
  sub_10002E568();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002EF54()
{

  return swift_deallocObject();
}

unint64_t sub_10002EFA8()
{
  result = qword_1001D4F30;
  if (!qword_1001D4F30)
  {
    sub_10001276C(&qword_1001D4F38, &qword_100172620);
    sub_10002F034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F30);
  }

  return result;
}

unint64_t sub_10002F034()
{
  result = qword_1001D4F40;
  if (!qword_1001D4F40)
  {
    sub_10001276C(&qword_1001D4F48, &qword_100172628);
    sub_10002F0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F40);
  }

  return result;
}

unint64_t sub_10002F0C0()
{
  result = qword_1001D4F50;
  if (!qword_1001D4F50)
  {
    sub_10001276C(&qword_1001D4F58, &qword_100172630);
    sub_10002F178();
    sub_100013608(&qword_1001D4F80, &qword_1001D4F88, &qword_100172648, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F50);
  }

  return result;
}

unint64_t sub_10002F178()
{
  result = qword_1001D4F60;
  if (!qword_1001D4F60)
  {
    v1 = sub_10001276C(&qword_1001D4F68, &qword_100172638);
    sub_100013DE8(v1, v2, v3);
    sub_100013608(&qword_1001D4F70, &qword_1001D4F78, &qword_100172640, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F60);
  }

  return result;
}

uint64_t sub_10002F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4F90, &qword_100172650);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4F98, qword_100172658);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002F3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4F90, &qword_100172650);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4F98, qword_100172658);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for MissingIntelligenceView(uint64_t a1)
{
  result = qword_1001D4FF8;
  if (!qword_1001D4FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F530(uint64_t a1)
{
  sub_10002F690(319, &qword_1001D5008, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10002F62C(319);
    if (v2 <= 0x3F)
    {
      sub_10002F690(319, &unk_1001D5020, &type metadata accessor for GenerativeModelsAvailability.Availability, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002F62C(uint64_t a1)
{
  if (!qword_1001D5010)
  {
    sub_10001276C(&qword_1001D5018, &qword_100172688);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D5010);
    }
  }
}

void sub_10002F690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002F710@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for ScrollBounceBehavior();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000033A8(&qword_1001D5058, &qword_1001726E0);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v36 - v5;
  v46 = sub_1000033A8(&qword_1001D5060, &qword_1001726E8);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v40 = &v36 - v7;
  v39 = sub_1000033A8(&qword_1001D5068, &qword_1001726F0);
  __chkstk_darwin(v39);
  v9 = &v36 - v8;
  v43 = sub_1000033A8(&qword_1001D5070, &qword_1001726F8);
  __chkstk_darwin(v43);
  v11 = &v36 - v10;
  v42 = sub_1000033A8(&qword_1001D5078, &qword_100172700);
  __chkstk_darwin(v42);
  v37 = &v36 - v12;
  v38 = sub_1000033A8(&qword_1001D5080, &qword_100172708);
  __chkstk_darwin(v38);
  v14 = &v36 - v13;
  v50 = v1;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001D5088, &unk_100172710);
  sub_100013608(&qword_1001D5090, &qword_1001D5088, &unk_100172710, &protocol conformance descriptor for ZStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001D5098, &qword_1001D5058, &qword_1001726E0, &protocol conformance descriptor for ScrollView<A>);
  v16 = v40;
  v17 = v44;
  View.scrollBounceBehavior(_:axes:)();
  (*(v47 + 8))(v4, v48);
  (*(v41 + 8))(v6, v17);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v45 + 32))(v9, v16, v46);
  v18 = &v9[*(v39 + 36)];
  v19 = v56;
  *(v18 + 4) = v55;
  *(v18 + 5) = v19;
  *(v18 + 6) = v57;
  v20 = v52;
  *v18 = v51;
  *(v18 + 1) = v20;
  v21 = v54;
  *(v18 + 2) = v53;
  *(v18 + 3) = v21;
  v22 = static Color.black.getter();
  v23 = static Edge.Set.all.getter();
  sub_10002091C(v9, v11, &qword_1001D5068, &qword_1001726F0);
  v24 = &v11[*(v43 + 36)];
  *v24 = v22;
  v24[8] = v23;
  v25 = static SafeAreaRegions.all.getter();
  v26 = static Edge.Set.all.getter();
  v27 = v37;
  sub_10002091C(v11, v37, &qword_1001D5070, &qword_1001726F8);
  v28 = v27 + *(v42 + 36);
  *v28 = v25;
  *(v28 + 8) = v26;
  v29 = &v14[*(v38 + 36)];
  v30 = *(sub_1000033A8(&qword_1001D45B8, &qword_1001765E0) + 28);
  v31 = enum case for ColorScheme.dark(_:);
  v32 = type metadata accessor for ColorScheme();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  sub_10002091C(v27, v14, &qword_1001D5078, &qword_100172700);
  v33 = v49;
  sub_10002091C(v14, v49, &qword_1001D5080, &qword_100172708);
  result = sub_1000033A8(&qword_1001D50A0, &qword_100172750);
  v35 = (v33 + *(result + 36));
  *v35 = sub_1000302F8;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = 0;
  return result;
}

uint64_t sub_10002FDD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MissingIntelligenceView(0);
  v48 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v49 = v5;
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000033A8(&qword_1001D50A8, &qword_100172758);
  v6 = __chkstk_darwin(v47);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v46 = sub_1000033A8(&qword_1001D50B0, &unk_100172760);
  v45 = *(v46 - 8);
  v10 = __chkstk_darwin(v46);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  *a2 = static Alignment.center.getter();
  a2[1] = v14;
  *&v53 = 0;
  BYTE8(v53) = 1;
  sub_1000033A8(&qword_1001D50B8, &qword_100179550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(inited + 33) = v17;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  v18 = a2 + *(sub_1000033A8(&qword_1001D50C0, &qword_100172770) + 44);
  static Alignment.center.getter();
  v44 = v13;
  View.containerRelativeFrame(_:alignment:)();
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = sub_1000033A8(&qword_1001D50C8, &qword_100172778);
  sub_1000303D8(a1, &v9[*(v19 + 44)]);
  v20 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v9[*(sub_1000033A8(&qword_1001D50D0, &qword_100172780) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  static Edge.Set.vertical.getter();
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_1000033A8(&qword_1001D50D8, &qword_100172788);
  SafeAreaPaddingModifier.init(edges:insets:)();
  v30 = a1;
  v31 = v51;
  sub_100035750(v30, v51);
  v32 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v33 = swift_allocObject();
  sub_1000357C4(v31, v33 + v32);
  v34 = &v9[*(v47 + 36)];
  *v34 = sub_100035828;
  v34[1] = v33;
  v34[2] = 0;
  v34[3] = 0;
  v35 = v45;
  v36 = *(v45 + 16);
  v37 = v50;
  v38 = v13;
  v39 = v46;
  v36(v50, v38, v46);
  v40 = v52;
  sub_1000138BC(v9, v52, &qword_1001D50A8, &qword_100172758);
  v36(v18, v37, v39);
  v41 = sub_1000033A8(&qword_1001D50E8, &qword_100172798);
  sub_1000138BC(v40, &v18[*(v41 + 48)], &qword_1001D50A8, &qword_100172758);
  sub_10001370C(v9, &qword_1001D50A8, &qword_100172758);
  v42 = *(v35 + 8);
  v42(v44, v39);
  sub_10001370C(v40, &qword_1001D50A8, &qword_100172758);
  return (v42)(v37, v39);
}

uint64_t sub_1000302F8()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000303D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v114 = a2;
  v2 = type metadata accessor for MissingIntelligenceView(0);
  v103 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v104 = v3;
  v105 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1000033A8(&qword_1001D50F8, &qword_1001727A8);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = &v86 - v4;
  v108 = sub_1000033A8(&qword_1001D5100, &qword_1001727B0);
  __chkstk_darwin(v108);
  v107 = &v86 - v5;
  v6 = sub_1000033A8(&qword_1001D5108, &qword_1001727B8);
  v7 = __chkstk_darwin(v6 - 8);
  v113 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v86 - v9;
  v10 = sub_1000033A8(&qword_1001D5110, &qword_1001727C0);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = (&v86 - v13);
  v100 = sub_1000033A8(&qword_1001D5118, &qword_1001727C8);
  __chkstk_darwin(v100);
  v101 = &v86 - v14;
  v93 = type metadata accessor for SymbolEffectOptions.RepeatBehavior();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for SymbolEffectOptions();
  v90 = *(v97 - 8);
  v16 = __chkstk_darwin(v97);
  v87 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v86 - v18;
  v95 = type metadata accessor for PulseSymbolEffect();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v89 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000033A8(&qword_1001D5120, &qword_1001727D0);
  __chkstk_darwin(v115);
  v96 = &v86 - v20;
  v21 = sub_1000033A8(&qword_1001D5128, &qword_1001727D8);
  v22 = __chkstk_darwin(v21 - 8);
  v102 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v86 - v24;
  v25 = type metadata accessor for DynamicTypeSize();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1000033A8(&qword_1001D5130, &qword_1001727E0);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v30 = &v86 - v29;
  v116 = sub_1000033A8(&qword_1001D5138, &qword_1001727E8);
  __chkstk_darwin(v116);
  v120 = &v86 - v31;
  sub_100031518();
  v32 = Image.init(_internalSystemName:)();
  v33 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v133 = v32;
  v134 = KeyPath;
  v135 = v33;
  (*(v26 + 104))(v28, enum case for DynamicTypeSize.large(_:), v25);
  v35 = sub_1000033A8(&qword_1001D46B8, &unk_100172820);
  v36 = sub_100022DB8();
  View.dynamicTypeSize(_:)();
  (*(v26 + 8))(v28, v25);

  static Font.Weight.medium.getter();
  v133 = v35;
  v134 = v36;
  v37 = v120;
  swift_getOpaqueTypeConformance2();
  v38 = v98;
  View.fontWeight(_:)();
  (*(v99 + 8))(v30, v38);
  v39 = (v37 + *(sub_1000033A8(&qword_1001D5140, &unk_100172830) + 36));
  v40 = *(sub_1000033A8(&qword_1001D5148, &qword_10017A7D0) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v41 = type metadata accessor for SymbolRenderingMode();
  (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
  *v39 = swift_getKeyPath();
  *(v37 + *(v116 + 36)) = static HierarchicalShapeStyle.primary.getter();
  v43 = sub_100031518();
  v44 = v42;
  if (v43 == 0xD00000000000001ALL && 0x800000010016BAF0 == v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v43 == 0xD000000000000012 && 0x800000010016BB10 == v44)
  {
  }

  else
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v85 & 1) == 0)
    {
      sub_1000138BC(v37, v101, &qword_1001D5138, &qword_1001727E8);
      swift_storeEnumTagMultiPayload();
      sub_100035850();
      sub_10003590C();
      v56 = v118;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_8;
    }
  }

  v45 = v89;
  PulseSymbolEffect.init()();
  v46 = v87;
  static SymbolEffectOptions.speed(_:)();
  v47 = v88;
  static SymbolEffectOptions.RepeatBehavior.periodic.getter();
  v48 = v94;
  SymbolEffectOptions.repeat(_:)();
  (*(v91 + 8))(v47, v93);
  v49 = v90;
  v50 = *(v90 + 8);
  v51 = v97;
  v50(v46, v97);
  v52 = v96;
  v53 = &v96[*(v115 + 36)];
  v54 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  (*(v49 + 16))(&v53[*(v54 + 20)], v48, v51);
  sub_1000360D4(&qword_1001D51D0, &type metadata accessor for PulseSymbolEffect, &protocol conformance descriptor for PulseSymbolEffect);
  v55 = v95;
  dispatch thunk of SymbolEffect.configuration.getter();
  v50(v48, v51);
  (*(v92 + 8))(v45, v55);
  v53[*(v54 + 24)] = 1;
  sub_1000138BC(v120, v52, &qword_1001D5138, &qword_1001727E8);
  sub_1000138BC(v52, v101, &qword_1001D5120, &qword_1001727D0);
  swift_storeEnumTagMultiPayload();
  sub_100035850();
  sub_10003590C();
  v56 = v118;
  _ConditionalContent<>.init(storage:)();
  sub_10001370C(v52, &qword_1001D5120, &qword_1001727D0);
LABEL_8:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v116 = v127;
  v115 = v129;
  v101 = v131;
  v100 = v132;
  v123 = 1;
  v122 = v128;
  v121 = v130;
  v57 = static HorizontalAlignment.center.getter();
  v58 = v119;
  *v119 = v57;
  v58[1] = 0x4018000000000000;
  *(v58 + 16) = 0;
  v59 = sub_1000033A8(&qword_1001D5188, &qword_100172878);
  v60 = v117;
  sub_100032398(v117, v58 + *(v59 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v99 = v133;
  v98 = v135;
  v97 = v137;
  v96 = v138;
  v126 = 1;
  v125 = v134;
  v124 = v136;
  v61 = v105;
  sub_100035750(v60, v105);
  v62 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v63 = swift_allocObject();
  sub_1000357C4(v61, v63 + v62);
  sub_1000033A8(&qword_1001D5190, &unk_100172880);
  sub_100035D10();
  v64 = v106;
  Button.init(action:label:)();
  v65 = sub_100013608(&qword_1001D51B0, &qword_1001D50F8, &qword_1001727A8, &protocol conformance descriptor for Button<A>);
  sub_100035DC8(v65, v66, v67);
  v68 = v107;
  v69 = v110;
  View.buttonStyle<A>(_:)();
  (*(v109 + 8))(v64, v69);
  *(v68 + *(v108 + 36)) = static HierarchicalShapeStyle.primary.getter();
  sub_100035E1C();
  v70 = v111;
  View.accessibilityIdentifier(_:)();
  sub_10001370C(v68, &qword_1001D5100, &qword_1001727B0);
  v71 = v102;
  sub_1000138BC(v56, v102, &qword_1001D5128, &qword_1001727D8);
  v72 = v123;
  v73 = v122;
  v74 = v121;
  v75 = v58;
  v76 = v112;
  sub_1000138BC(v75, v112, &qword_1001D5110, &qword_1001727C0);
  LODWORD(v109) = v126;
  LODWORD(v110) = v125;
  LODWORD(v117) = v124;
  v77 = v113;
  sub_1000138BC(v70, v113, &qword_1001D5108, &qword_1001727B8);
  v78 = v114;
  sub_1000138BC(v71, v114, &qword_1001D5128, &qword_1001727D8);
  v79 = sub_1000033A8(&qword_1001D51C8, &qword_100172890);
  v80 = v78 + v79[12];
  *v80 = 0;
  *(v80 + 8) = v72;
  *(v80 + 16) = v116;
  *(v80 + 24) = v73;
  *(v80 + 32) = v115;
  *(v80 + 40) = v74;
  v81 = v100;
  *(v80 + 48) = v101;
  *(v80 + 56) = v81;
  sub_1000138BC(v76, v78 + v79[16], &qword_1001D5110, &qword_1001727C0);
  v82 = v78 + v79[20];
  *v82 = 0;
  *(v82 + 8) = v109;
  *(v82 + 16) = v99;
  *(v82 + 24) = v110;
  *(v82 + 32) = v98;
  *(v82 + 40) = v117;
  v83 = v96;
  *(v82 + 48) = v97;
  *(v82 + 56) = v83;
  sub_1000138BC(v77, v78 + v79[24], &qword_1001D5108, &qword_1001727B8);
  sub_10001370C(v70, &qword_1001D5108, &qword_1001727B8);
  sub_10001370C(v119, &qword_1001D5110, &qword_1001727C0);
  sub_10001370C(v118, &qword_1001D5128, &qword_1001727D8);
  sub_10001370C(v120, &qword_1001D5138, &qword_1001727E8);
  sub_10001370C(v77, &qword_1001D5108, &qword_1001727B8);
  sub_10001370C(v76, &qword_1001D5110, &qword_1001727C0);
  return sub_10001370C(v71, &qword_1001D5128, &qword_1001727D8);
}

uint64_t sub_100031518()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v55 - v4;
  v5 = sub_1000033A8(&qword_1001D5230, &qword_100172948);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v55 - v9;
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v64 = *(v62 - 8);
  v13 = __chkstk_darwin(v62);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = &v55 - v15;
  v16 = sub_1000033A8(&qword_1001D5238, &unk_100172950);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v61 = &v55 - v20;
  v21 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v66 = *(v21 - 8);
  v67 = v21;
  __chkstk_darwin(v21);
  v65 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static GreymatterAvailability.isGreymatterEligible()() & 1) == 0)
  {
    return 0;
  }

  v55 = v1;
  type metadata accessor for MissingIntelligenceView(0);
  sub_1000033A8(&qword_1001D4F98, qword_100172658);
  State.wrappedValue.getter();
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v66 + 32))(v65, v26, v67);
    v28 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = sub_1000355C4(*(v28 + 16), 0, &qword_1001D5240, &unk_100175320, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v32 = sub_100037988(&v68, &v31[(*(v64 + 80) + 32) & ~*(v64 + 80)], v30, v29, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v33 = v68;

      sub_100037980(v33);
      if (v32 == v30)
      {

LABEL_13:
        v39 = v64;
        v40 = v61;
        v68 = v31;
        sub_100036124(&v68, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, sub_1000C3720, sub_1000363A0);
        if (*(v68 + 2))
        {
          v41 = v62;
          (*(v39 + 16))(v40, &v68[(*(v39 + 80) + 32) & ~*(v39 + 80)], v62);
          v42 = 0;
        }

        else
        {
          v42 = 1;
          v41 = v62;
        }

        (*(v39 + 56))(v40, v42, 1, v41);
        sub_1000138BC(v40, v19, &qword_1001D5238, &unk_100172950);
        if ((*(v39 + 48))(v19, 1, v41) == 1)
        {
          sub_10001370C(v40, &qword_1001D5238, &unk_100172950);
          (*(v66 + 8))(v65, v67);
          sub_10001370C(v19, &qword_1001D5238, &unk_100172950);
          return 0;
        }

        v43 = v60;
        (*(v39 + 32))(v60, v19, v41);
        v44 = v58;
        (*(v39 + 16))(v58, v43, v41);
        v45 = (*(v39 + 88))(v44, v41);
        if (v45 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) && v45 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:))
        {
          if (v45 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:))
          {
            v53 = *(v39 + 8);
            v53(v60, v41);
            sub_10001370C(v40, &qword_1001D5238, &unk_100172950);
            (*(v66 + 8))(v65, v67);
            v53(v44, v41);
            return 0;
          }

          (*(v39 + 8))(v60, v41);
          sub_10001370C(v40, &qword_1001D5238, &unk_100172950);
          (*(v66 + 8))(v65, v67);
          return 0xD000000000000012;
        }

        (*(v39 + 8))(v60, v41);
        sub_10001370C(v40, &qword_1001D5238, &unk_100172950);
        (*(v66 + 8))(v65, v67);
        return 0xD00000000000001ALL;
      }

      __break(1u);
LABEL_55:
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_12:

    v31 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  if (v27 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v11 + 32))(v63, v26, v10);
    v34 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v35 = *(v34 + 16);
    if (v35)
    {
      v65 = v0;
      v66 = v11;
      v67 = v10;
      v36 = sub_1000355C4(v35, 0, &qword_1001D63C0, &qword_100172960, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v37 = sub_100037988(&v68, &v36[(*(v55 + 80) + 32) & ~*(v55 + 80)], v35, v34, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v38 = v68;

      sub_100037980(v38);
      if (v37 != v35)
      {
        goto LABEL_55;
      }

      v11 = v66;
      v10 = v67;
      v0 = v65;
    }

    else
    {

      v36 = _swiftEmptyArrayStorage;
    }

    v47 = v55;
    v68 = v36;
    sub_100036124(&v68, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, sub_1000C370C, sub_1000361E8);
    v48 = v59;
    if (*(v68 + 2))
    {
      (*(v47 + 16))(v59, &v68[(*(v47 + 80) + 32) & ~*(v47 + 80)], v0);
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    (*(v47 + 56))(v48, v49, 1, v0);
    sub_1000138BC(v48, v8, &qword_1001D5230, &qword_100172948);
    if ((*(v47 + 48))(v8, 1, v0) == 1)
    {
      sub_10001370C(v48, &qword_1001D5230, &qword_100172948);
      (*(v11 + 8))(v63, v10);
      sub_10001370C(v8, &qword_1001D5230, &qword_100172948);
      return 0;
    }

    v50 = v56;
    (*(v47 + 32))(v56, v8, v0);
    v51 = v57;
    (*(v47 + 16))(v57, v50, v0);
    v52 = (*(v47 + 88))(v51, v0);
    if (v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.localeIneligible(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.countryLocationIneligible(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.mdmAndParentalControl(_:))
    {
      if (v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.inWaitList(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.accessNotGranted(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.unableToFetchAvailability(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:))
      {
        if (v52 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:) || v52 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:))
        {
          (*(v47 + 8))(v50, v0);
          sub_10001370C(v48, &qword_1001D5230, &qword_100172948);
          (*(v11 + 8))(v63, v10);
          return 0xD00000000000001ALL;
        }

        if (v52 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.shortOfStorage(_:))
        {
          (*(v47 + 8))(v50, v0);
          sub_10001370C(v48, &qword_1001D5230, &qword_100172948);
          (*(v11 + 8))(v63, v10);
          return 0xD000000000000012;
        }

        if (v52 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDisabled(_:))
        {
          goto LABEL_47;
        }

        if (v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForDeviceEligibility(_:) && v52 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForBaseUnavailableReasons(_:))
        {
          v54 = *(v47 + 8);
          v54(v50, v0);
          sub_10001370C(v48, &qword_1001D5230, &qword_100172948);
          (*(v11 + 8))(v63, v10);
          v54(v51, v0);
          return 0;
        }
      }

      (*(v47 + 8))(v50, v0);
      sub_10001370C(v48, &qword_1001D5230, &qword_100172948);
      (*(v11 + 8))(v63, v10);
      return 0;
    }

LABEL_47:
    (*(v47 + 8))(v50, v0);
    sub_10001370C(v48, &qword_1001D5230, &qword_100172948);
    (*(v11 + 8))(v63, v10);
    return 0x6E6769736F6ELL;
  }

  if (v27 != enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_100032398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v50 = a2;
  v48 = sub_1000033A8(&qword_1001D51E0, &qword_1001728D8) - 8;
  v2 = __chkstk_darwin(v48);
  v49 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v46 - v4;
  v6 = sub_1000033A8(&qword_1001D51E8, &qword_1001728E0);
  __chkstk_darwin(v6);
  v8 = v46 - v7;
  v9 = sub_1000033A8(&qword_1001D51F0, &qword_1001728E8);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v47 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v51 = sub_100032880();
  v52 = v15;
  v46[0] = sub_10002EC9C(v51, v15, v16);
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v51 = v17;
  v52 = v18;
  v21 = v20 & 1;
  v53 = v20 & 1;
  v54 = v22;
  View.accessibilityIdentifier(_:)();
  sub_100020D44(v17, v19, v21);

  v23 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v25 = &v8[*(v6 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  static Font.Weight.medium.getter();
  sub_100035F60();
  View.fontWeight(_:)();
  sub_10001370C(v8, &qword_1001D51E8, &qword_1001728E0);
  v26 = swift_getKeyPath();
  v27 = &v14[*(sub_1000033A8(&qword_1001D5210, &qword_100172928) + 36)];
  *v27 = v26;
  v27[8] = 1;
  *&v14[*(v10 + 44)] = static HierarchicalShapeStyle.primary.getter();
  v51 = sub_1000337BC();
  v52 = v28;
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v51 = v29;
  v52 = v30;
  v33 = v32 & 1;
  v53 = v32 & 1;
  v54 = v34;
  View.accessibilityIdentifier(_:)();
  sub_100020D44(v29, v31, v33);

  v35 = static Font.headline.getter();
  v36 = swift_getKeyPath();
  v37 = &v8[*(v6 + 36)];
  *v37 = v36;
  v37[1] = v35;
  static Font.Weight.regular.getter();
  View.fontWeight(_:)();
  sub_10001370C(v8, &qword_1001D51E8, &qword_1001728E0);
  LODWORD(v35) = static HierarchicalShapeStyle.secondary.getter();
  *&v5[*(sub_1000033A8(&qword_1001D5218, &qword_100172930) + 36)] = v35;
  v38 = swift_getKeyPath();
  v39 = &v5[*(sub_1000033A8(&qword_1001D5220, &qword_100172938) + 36)];
  *v39 = v38;
  v39[8] = 1;
  v40 = static Color.white.getter();
  v41 = v47;
  *&v5[*(v48 + 44)] = v40;
  sub_1000138BC(v14, v41, &qword_1001D51F0, &qword_1001728E8);
  v42 = v49;
  sub_1000138BC(v5, v49, &qword_1001D51E0, &qword_1001728D8);
  v43 = v50;
  sub_1000138BC(v41, v50, &qword_1001D51F0, &qword_1001728E8);
  v44 = sub_1000033A8(&qword_1001D5228, &qword_100172940);
  sub_1000138BC(v42, v43 + *(v44 + 48), &qword_1001D51E0, &qword_1001728D8);
  sub_10001370C(v5, &qword_1001D51E0, &qword_1001728D8);
  sub_10001370C(v14, &qword_1001D51F0, &qword_1001728E8);
  sub_10001370C(v42, &qword_1001D51E0, &qword_1001728D8);
  return sub_10001370C(v41, &qword_1001D51F0, &qword_1001728E8);
}

uint64_t sub_100032880()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v74 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v68 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v69 = &v63 - v3;
  v4 = sub_1000033A8(&qword_1001D5230, &qword_100172948);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v63 - v8;
  v9 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v78 = *(v9 - 8);
  v79 = v9;
  __chkstk_darwin(v9);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v80 = *(v76 - 8);
  v11 = __chkstk_darwin(v76);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v63 - v13;
  v14 = sub_1000033A8(&qword_1001D5238, &unk_100172950);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v75 = &v63 - v18;
  v19 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v82 = *(v19 - 8);
  v83 = v19;
  __chkstk_darwin(v19);
  v81 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Locale();
  __chkstk_darwin(v25 - 8);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v28 - 8);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v73 = v30;
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  if ((static GreymatterAvailability.isGreymatterEligible()() & 1) == 0)
  {
    return v31;
  }

  v64 = v0;
  type metadata accessor for MissingIntelligenceView(0);
  sub_1000033A8(&qword_1001D4F98, qword_100172658);
  State.wrappedValue.getter();
  v34 = (*(v22 + 88))(v24, v21);
  if (v34 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v65 = v27;
    v66 = v31;
    v67 = v33;
    (*(v22 + 96))(v24, v21);
    (*(v82 + 32))(v81, v24, v83);
    v35 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
    v36 = v35;
    v37 = *(v35 + 16);
    if (!v37)
    {

      v38 = _swiftEmptyArrayStorage;
      goto LABEL_13;
    }

    v38 = sub_1000355C4(*(v35 + 16), 0, &qword_1001D5240, &unk_100175320, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
    v39 = sub_100037988(&v84, &v38[(*(v80 + 80) + 32) & ~*(v80 + 80)], v37, v36, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
    v40 = v84;

    sub_100037980(v40);
    if (v39 == v37)
    {

LABEL_13:
      v47 = v75;
      v46 = v76;
      v48 = v80;
      v84 = v38;
      sub_100036124(&v84, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, sub_1000C3720, sub_1000363A0);
      v31 = v66;
      if (*(v84 + 2))
      {
        (*(v48 + 16))(v47, &v84[(*(v48 + 80) + 32) & ~*(v48 + 80)], v46);
        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      (*(v48 + 56))(v47, v49, 1, v46);
      sub_1000138BC(v47, v17, &qword_1001D5238, &unk_100172950);
      if ((*(v48 + 48))(v17, 1, v46) == 1)
      {
        sub_10001370C(v47, &qword_1001D5238, &unk_100172950);
        (*(v82 + 8))(v81, v83);
        sub_10001370C(v17, &qword_1001D5238, &unk_100172950);
      }

      else
      {
        v50 = v71;
        (*(v48 + 32))(v71, v17, v46);
        v51 = v70;
        (*(v48 + 16))(v70, v50, v46);
        v52 = (*(v48 + 88))(v51, v46);
        if (v52 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) || v52 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:) || v52 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:))
        {

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v31 = String.init(localized:table:bundle:locale:comment:)();
          (*(v48 + 8))(v50, v46);
          sub_10001370C(v47, &qword_1001D5238, &unk_100172950);
          (*(v82 + 8))(v81, v83);
        }

        else
        {
          v60 = *(v48 + 8);
          v60(v50, v46);
          sub_10001370C(v47, &qword_1001D5238, &unk_100172950);
          (*(v82 + 8))(v81, v83);
          v60(v51, v46);
        }
      }

      return v31;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v34 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v67 = v33;
    (*(v22 + 96))(v24, v21);
    (*(v78 + 32))(v77, v24, v79);
    v41 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v42 = *(v41 + 16);
    if (v42)
    {
      v65 = v27;
      v66 = v31;
      v43 = sub_1000355C4(v42, 0, &qword_1001D63C0, &qword_100172960, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v44 = sub_100037988(&v84, &v43[(*(v74 + 80) + 32) & ~*(v74 + 80)], v42, v41, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v45 = v84;

      sub_100037980(v45);
      if (v44 != v42)
      {
LABEL_41:
        __break(1u);

        __break(1u);
        goto LABEL_42;
      }

      v31 = v66;
    }

    else
    {

      v43 = _swiftEmptyArrayStorage;
    }

    v53 = v64;
    v54 = v72;
    v84 = v43;
    sub_100036124(&v84, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, sub_1000C370C, sub_1000361E8);
    v55 = v74;
    if (*(v84 + 2))
    {
      (*(v74 + 16))(v54, &v84[(*(v74 + 80) + 32) & ~*(v74 + 80)], v53);
      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    (*(v55 + 56))(v54, v56, 1, v53);
    sub_1000138BC(v54, v7, &qword_1001D5230, &qword_100172948);
    if ((*(v55 + 48))(v7, 1, v53) == 1)
    {
      sub_10001370C(v54, &qword_1001D5230, &qword_100172948);
      (*(v78 + 8))(v77, v79);
      sub_10001370C(v7, &qword_1001D5230, &qword_100172948);
    }

    else
    {
      v57 = v69;
      (*(v55 + 32))(v69, v7, v53);
      v58 = v68;
      (*(v55 + 16))(v68, v57, v53);
      v59 = (*(v55 + 88))(v58, v53);
      if (v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.inWaitList(_:) || v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.accessNotGranted(_:) || v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.unableToFetchAvailability(_:) || v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:) || v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:) || v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:) || v59 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.shortOfStorage(_:))
      {

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v31 = String.init(localized:table:bundle:locale:comment:)();
        (*(v55 + 8))(v57, v53);
        sub_10001370C(v54, &qword_1001D5230, &qword_100172948);
        (*(v78 + 8))(v77, v79);
      }

      else
      {
        v62 = *(v55 + 8);
        v62(v57, v53);
        sub_10001370C(v54, &qword_1001D5230, &qword_100172948);
        (*(v78 + 8))(v77, v79);
        v62(v58, v53);
      }
    }

    return v31;
  }

  if (v34 == enum case for GenerativeModelsAvailability.Availability.available(_:))
  {

    return 0;
  }

LABEL_42:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000337BC()
{
  v121 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v124 = *(v121 - 8);
  v0 = __chkstk_darwin(v121);
  v114 = v111 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v119 = v111 - v3;
  v4 = __chkstk_darwin(v2);
  v6 = v111 - v5;
  __chkstk_darwin(v4);
  v134 = v111 - v7;
  v8 = sub_1000033A8(&qword_1001D5230, &qword_100172948);
  v9 = __chkstk_darwin(v8 - 8);
  v122 = v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v120 = v111 - v11;
  v12 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v125 = *(v12 - 8);
  __chkstk_darwin(v12);
  v129 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v117 = v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v15 - 8);
  v118 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v18 = *(v17 - 8);
  v130 = v17;
  v131 = v18;
  v19 = __chkstk_darwin(v17);
  v123 = v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v127 = v111 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v111 - v24;
  __chkstk_darwin(v23);
  v135 = v111 - v26;
  v27 = sub_1000033A8(&qword_1001D5238, &unk_100172950);
  v28 = __chkstk_darwin(v27 - 8);
  v126 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v128 = v111 - v30;
  v31 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v132 = *(v31 - 8);
  __chkstk_darwin(v31);
  v133 = v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Locale();
  __chkstk_darwin(v37 - 8);
  v39 = v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v40 - 8);
  v42 = v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static GreymatterAvailability.isGreymatterEligible()())
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v111[1] = v42;
    v111[2] = v39;
    v112 = String.init(localized:table:bundle:locale:comment:)();
    v113 = v43;
    if ((static GreymatterAvailability.isGreymatterEligible()() & 1) == 0)
    {
      return v112;
    }

    v111[0] = v12;
    type metadata accessor for MissingIntelligenceView(0);
    sub_1000033A8(&qword_1001D4F98, qword_100172658);
    State.wrappedValue.getter();
    v44 = (*(v34 + 88))(v36, v33);
    if (v44 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
    {
      (*(v34 + 96))(v36, v33);
      (*(v132 + 32))(v133, v36, v31);
      v45 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      v46 = v45;
      v47 = v45 + 56;
      v48 = 1 << *(v45 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v45 + 56);
      v121 = v31;
      if (v50)
      {
        v51 = 0;
        v52 = __clz(__rbit64(v50));
        v53 = (v50 - 1) & v50;
        v54 = (v48 + 63) >> 6;
        v55 = v130;
        v56 = v131;
        v57 = v135;
LABEL_22:
        v68 = *(v46 + 6);
        v59 = v56 + 16;
        v69 = *(v56 + 16);
        v125 = *(v56 + 72);
        v129 = v69;
        (v69)(v57, v68 + v125 * v52, v55);
        v124 = (v56 + 8);
        v122 = (v56 + 32);
        v134 = v46;

        while (v53)
        {
          v70 = v51;
LABEL_30:
          v71 = __clz(__rbit64(v53));
          v53 &= v53 - 1;
          (v129)(v25, *(v134 + 6) + (v71 | (v70 << 6)) * v125, v55);
          v56 = v25;
          v72 = v135;
          v73 = v55;
          v74 = GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter();
          v75 = GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter();
          v76 = *v124;
          if (v74 >= v75)
          {
            v76(v56, v73);
          }

          else
          {
            v76(v72, v73);
            (*v122)(v72, v56, v73);
          }

          v51 = v70;
          v55 = v73;
          v25 = v56;
        }

        while (1)
        {
          v70 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v70 >= v54)
          {

            v77 = v128;
            (*v122)(v128, v135, v55);
            v78 = 0;
            v56 = v131;
            goto LABEL_33;
          }

          v53 = *(v47 + 8 * v70);
          ++v51;
          if (v53)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_89:
        __break(1u);
LABEL_95:

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*(v115 + 104))(v117, enum case for LocalizedStringResource.BundleDescription.main(_:), v116);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        v88 = String.init(localized:)();
        (*(v54 + 8))(v53, v55);
        goto LABEL_76;
      }

      v66 = 0;
      v54 = (v48 + 63) >> 6;
      v55 = v130;
      v56 = v131;
      v57 = v135;
      while (v54 - 1 != v50)
      {
        v51 = v50 + 1;
        v67 = *&v46[8 * v50 + 64];
        v66 -= 64;
        ++v50;
        if (v67)
        {
          v53 = (v67 - 1) & v67;
          v52 = __clz(__rbit64(v67)) - v66;
          goto LABEL_22;
        }
      }

      v78 = 1;
      v77 = v128;
LABEL_33:
      (*(v56 + 56))(v77, v78, 1, v55);

      v79 = v126;
      sub_1000138BC(v77, v126, &qword_1001D5238, &unk_100172950);
      v80 = (*(v56 + 48))(v79, 1, v55);
      v81 = v127;
      if (v80 != 1)
      {

        (*(v56 + 32))(v81, v79, v55);
        v85 = v123;
        (*(v56 + 16))(v123, v81, v55);
        v86 = (*(v56 + 88))(v85, v55);
        if (v86 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) || v86 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          (*(v115 + 104))(v117, enum case for LocalizedStringResource.BundleDescription.main(_:), v116);
          LocalizedStringResource.init(_:table:locale:bundle:comment:)();
          v88 = String.init(localized:)();
          (*(v56 + 8))(v81, v55);
          sub_10001370C(v77, &qword_1001D5238, &unk_100172950);
          (*(v132 + 8))(v133, v121);
        }

        else
        {
          v89 = (v56 + 8);
          v90 = (v132 + 8);
          if (v86 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:))
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v88 = String.init(localized:table:bundle:locale:comment:)();
            (*v89)(v81, v130);
            sub_10001370C(v77, &qword_1001D5238, &unk_100172950);
            (*v90)(v133, v121);
          }

          else
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v88 = String.init(localized:table:bundle:locale:comment:)();
            v106 = *v89;
            v107 = v81;
            v108 = v130;
            (*v89)(v107, v130);
            sub_10001370C(v77, &qword_1001D5238, &unk_100172950);
            (*v90)(v133, v121);
            v106(v123, v108);
          }
        }

        return v88;
      }

      v82 = &qword_1001D5238;
      v83 = &unk_100172950;
      sub_10001370C(v77, &qword_1001D5238, &unk_100172950);
      (*(v132 + 8))(v133, v121);
      v84 = v79;
      goto LABEL_62;
    }

    if (v44 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v34 + 96))(v36, v33);
      v56 = v125;
      v59 = v111[0];
      (*(v125 + 32))(v129, v36, v111[0]);
      v60 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v61 = v60 + 56;
      v62 = 1 << *(v60 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & *(v60 + 56);
      v135 = v60;
      if (v64)
      {
        v53 = 0;
        v65 = __clz(__rbit64(v64));
        v56 = (v64 - 1) & v64;
        v25 = ((v62 + 63) >> 6);
        v54 = v124;
        v55 = v121;
LABEL_48:
        v94 = *(v135 + 6);
        v95 = *(v54 + 16);
        v54 += 16;
        v132 = *(v54 + 56);
        v133 = v95;
        (v95)(v134, v94 + v132 * v65, v55);
        v130 = (v54 + 16);
        v131 = (v54 - 8);

        while (v56)
        {
          v96 = v53;
          v97 = v134;
LABEL_57:
          v98 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
          (v133)(v6, *(v135 + 6) + (v98 | (v96 << 6)) * v132, v55);
          v59 = v55;
          v99 = GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter();
          v100 = GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter();
          v101 = *v131;
          if (v99 >= v100)
          {
            v101(v6, v59);
          }

          else
          {
            v101(v97, v59);
            (*v130)(v97, v6, v59);
          }

          v53 = v96;
          v55 = v59;
        }

        v97 = v134;
        while (1)
        {
          v96 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_89;
          }

          if (v96 >= v25)
          {

            v25 = v120;
            (*v130)(v120, v97, v55);
            v102 = 0;
            v54 = v124;
            v56 = v125;
            v59 = v111[0];
            v92 = v122;
            goto LABEL_60;
          }

          v56 = *(v61 + 8 * v96);
          ++v53;
          if (v56)
          {
            goto LABEL_57;
          }
        }
      }

      v91 = 0;
      v25 = ((v62 + 63) >> 6);
      v54 = v124;
      v55 = v121;
      v92 = v122;
      while (v25 - 1 != v64)
      {
        v53 = v64 + 1;
        v93 = *(v60 + 64 + 8 * v64);
        v91 -= 64;
        ++v64;
        if (v93)
        {
          v56 = (v93 - 1) & v93;
          v65 = __clz(__rbit64(v93)) - v91;
          goto LABEL_48;
        }
      }

      v102 = 1;
      v25 = v120;
LABEL_60:
      (*(v54 + 56))(v25, v102, 1, v55);

      sub_1000138BC(v25, v92, &qword_1001D5230, &qword_100172948);
      v103 = (*(v54 + 48))(v92, 1, v55);
      v53 = v119;
      if (v103 == 1)
      {
        v82 = &qword_1001D5230;
        v83 = &qword_100172948;
        sub_10001370C(v25, &qword_1001D5230, &qword_100172948);
        (*(v56 + 8))(v129, v59);
        v84 = v92;
LABEL_62:
        sub_10001370C(v84, v82, v83);
        return v112;
      }

      (*(v54 + 32))(v119, v92, v55);
      v104 = v114;
      (*(v54 + 16))(v114, v53, v55);
      v105 = (*(v54 + 88))(v104, v55);
      if (v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:) || (v105 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:) ? (v109 = v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.localeIneligible(_:)) : (v109 = 1), v109 || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.countryLocationIneligible(_:)))
      {
LABEL_75:

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v88 = String.init(localized:table:bundle:locale:comment:)();
        (*(v54 + 8))(v53, v55);
LABEL_76:
        sub_10001370C(v25, &qword_1001D5230, &qword_100172948);
        (*(v56 + 8))(v129, v59);
        return v88;
      }

      if (v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.mdmAndParentalControl(_:))
      {
        goto LABEL_79;
      }

      if (v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.inWaitList(_:) || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.accessNotGranted(_:) || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.unableToFetchAvailability(_:) || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:) || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:) || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:))
      {
        goto LABEL_95;
      }

      if (v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.shortOfStorage(_:))
      {
        goto LABEL_75;
      }

      if (v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDisabled(_:))
      {
LABEL_79:
        (*(v54 + 8))(v53, v55);
        sub_10001370C(v25, &qword_1001D5230, &qword_100172948);
        (*(v56 + 8))(v129, v59);
        return v112;
      }

      if (v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForDeviceEligibility(_:) || v105 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForBaseUnavailableReasons(_:))
      {
        goto LABEL_95;
      }

      v110 = *(v54 + 8);
      v110(v53, v55);
      sub_10001370C(v25, &qword_1001D5230, &qword_100172948);
      (*(v56 + 8))(v129, v59);
      v110(v114, v55);
      return v112;
    }

    if (v44 == enum case for GenerativeModelsAvailability.Availability.available(_:))
    {

      return 0;
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  else if (static SystemVariantSupport.isInternalBuild.getter())
  {
    return 0x1000000000000056;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

uint64_t sub_100034D04(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D51D8, &qword_1001728C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10001370C(v11, &qword_1001D8020, &qword_1001728D0);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = a1 + *(type metadata accessor for MissingIntelligenceView(0) + 20);
  v19 = *v17;
  v18 = *(v17 + 8);
  if (*(v17 + 16) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = v5;
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000357B8(v19, v18, 0);
    (*(v6 + 8))(v8, v23);
    v19 = v24;
  }

  OpenSensitiveURLOptions.init(promptForUnlock:)();
  v21 = type metadata accessor for OpenSensitiveURLOptions();
  (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
  v19(v15, v4);

  sub_10001370C(v4, &qword_1001D51D8, &qword_1001728C8);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000350B0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100020D44(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100020D44(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_10003520C(uint64_t a1)
{
  v27 = a1;
  v1 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GreymatterAvailability.UseCaseIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for GreymatterAvailability();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D50F0, &qword_1001727A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v23 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v14 = *(v23 - 8);
  v15 = __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  static GreymatterAvailability.shared.getter();
  (*(v5 + 104))(v7, enum case for GreymatterAvailability.UseCaseIdentifier.settings(_:), v4);
  default argument 1 of GreymatterAvailability.availability(_:languageOption:)();
  GreymatterAvailability.availability(_:languageOption:)();
  (*(v25 + 8))(v3, v26);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v24);
  sub_10001370C(v13, &qword_1001D50F0, &qword_1001727A0);
  type metadata accessor for MissingIntelligenceView(0);
  v20 = v23;
  (*(v14 + 16))(v17, v19, v23);
  sub_1000033A8(&qword_1001D4F98, qword_100172658);
  State.wrappedValue.setter();
  return (*(v14 + 8))(v19, v20);
}

char *sub_1000355C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000033A8(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000356C0(uint64_t a1, uint64_t a2)
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

  sub_1000033A8(&qword_1001D5248, &qword_100172968);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100035750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissingIntelligenceView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000357C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissingIntelligenceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035850()
{
  result = qword_1001D5150;
  if (!qword_1001D5150)
  {
    sub_10001276C(&qword_1001D5120, &qword_1001727D0);
    sub_10003590C();
    sub_1000360D4(&qword_1001D5180, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5150);
  }

  return result;
}

unint64_t sub_10003590C()
{
  result = qword_1001D5158;
  if (!qword_1001D5158)
  {
    sub_10001276C(&qword_1001D5138, &qword_1001727E8);
    sub_1000359C4();
    sub_100013608(&qword_1001D5170, &qword_1001D5178, &qword_100172870, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5158);
  }

  return result;
}

unint64_t sub_1000359C4()
{
  result = qword_1001D5160;
  if (!qword_1001D5160)
  {
    sub_10001276C(&qword_1001D5140, &unk_100172830);
    sub_10001276C(&qword_1001D5130, &qword_1001727E0);
    sub_10001276C(&qword_1001D46B8, &unk_100172820);
    sub_100022DB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D5168, &qword_1001D5148, &qword_10017A7D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5160);
  }

  return result;
}

uint64_t sub_100035AFC()
{
  v1 = type metadata accessor for MissingIntelligenceView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1000033A8(&qword_1001D50E0, &qword_100172790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000357B8(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8), *(v3 + *(v1 + 20) + 16));
  v5 = v3 + *(v1 + 24);
  v6 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000033A8(&qword_1001D4F98, qword_100172658);

  return swift_deallocObject();
}

uint64_t sub_100035C9C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MissingIntelligenceView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100035D10()
{
  result = qword_1001D5198;
  if (!qword_1001D5198)
  {
    sub_10001276C(&qword_1001D5190, &unk_100172880);
    sub_100013608(&qword_1001D51A0, &qword_1001D51A8, &qword_1001795F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5198);
  }

  return result;
}

unint64_t sub_100035DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D51B8;
  if (!qword_1001D51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D51B8);
  }

  return result;
}

unint64_t sub_100035E1C()
{
  result = qword_1001D51C0;
  if (!qword_1001D51C0)
  {
    sub_10001276C(&qword_1001D5100, &qword_1001727B0);
    sub_10001276C(&qword_1001D50F8, &qword_1001727A8);
    v3 = sub_100013608(&qword_1001D51B0, &qword_1001D50F8, &qword_1001727A8, &protocol conformance descriptor for Button<A>);
    sub_100035DC8(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D5170, &qword_1001D5178, &qword_100172870, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D51C0);
  }

  return result;
}

unint64_t sub_100035F60()
{
  result = qword_1001D51F8;
  if (!qword_1001D51F8)
  {
    sub_10001276C(&qword_1001D51E8, &qword_1001728E0);
    sub_100036018();
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8, &unk_1001716E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D51F8);
  }

  return result;
}

unint64_t sub_100036018()
{
  result = qword_1001D5200;
  if (!qword_1001D5200)
  {
    sub_10001276C(&qword_1001D5208, &qword_1001728F0);
    sub_1000360D4(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5200);
  }

  return result;
}

uint64_t sub_1000360D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100036124(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

Swift::Int sub_1000361E8(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100036810(v8, v9, a1, v4, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
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
    return sub_100036558(0, v2, 1, a1, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter);
  }

  return result;
}

Swift::Int sub_1000363A0(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100036810(v8, v9, a1, v4, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
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
    return sub_100036558(0, v2, 1, a1, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter);
  }

  return result;
}

uint64_t sub_100036558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v52 = a6;
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v36 - v14;
  result = __chkstk_darwin(v13);
  v50 = &v36 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v22 = v18 + v21 * (a3 - 1);
    v43 = -v21;
    v44 = (v19 + 16);
    v23 = a1 - a3;
    v45 = v18;
    v37 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v53 = v23;
    while (1)
    {
      v25 = v50;
      v26 = v48;
      v48(v50, v24, v10);
      v27 = v51;
      v28 = v26(v51, v22, v10);
      v29 = v52;
      v30 = (v52)(v28);
      v31 = v29();
      v32 = *v47;
      (*v47)(v27, v10);
      result = v32(v25, v10);
      if (v31 >= v30)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v22, v34, v10);
      v22 += v43;
      v24 += v43;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100036810(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  v144 = a7;
  v156 = a6;
  v11 = v9;
  v133 = a1;
  v143 = a9;
  v14 = (a5)(0, a2);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v136 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v130 - v19;
  v20 = __chkstk_darwin(v18);
  v155 = &v130 - v21;
  result = __chkstk_darwin(v20);
  v157 = &v130 - v23;
  v146 = a3;
  if (a3[1] < 1)
  {
    v26 = _swiftEmptyArrayStorage;
LABEL_98:
    v14 = *v133;
    if (!*v133)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1000BD6CC(v26);
      v26 = result;
    }

    v159 = v26;
    v126 = *(v26 + 2);
    if (v126 >= 2)
    {
      while (*v146)
      {
        v127 = *&v26[16 * v126];
        v128 = *&v26[16 * v126 + 24];
        sub_1000372B0(&(*v146)[v15[9] * v127], &(*v146)[v15[9] * *&v26[16 * v126 + 16]], &(*v146)[v15[9] * v128], v14, v144, a8, v143);
        if (v11)
        {
        }

        if (v128 < v127)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1000BD6CC(v26);
        }

        if (v126 - 2 >= *(v26 + 2))
        {
          goto LABEL_124;
        }

        v129 = &v26[16 * v126];
        *v129 = v127;
        *(v129 + 1) = v128;
        v159 = v26;
        result = sub_1000BD640(v126 - 1);
        v26 = v159;
        v126 = *(v159 + 2);
        if (v126 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v24 = a3[1];
  v131 = a4;
  v25 = 0;
  v153 = (v15 + 1);
  v154 = v15 + 2;
  v152 = (v15 + 4);
  v26 = _swiftEmptyArrayStorage;
  v140 = v15;
  v141 = a8;
  v158 = v14;
  while (1)
  {
    v27 = v25;
    v145 = v26;
    if (v25 + 1 >= v24)
    {
      v40 = (v25 + 1);
    }

    else
    {
      v147 = v24;
      v132 = v11;
      v28 = *v146;
      v151 = v28;
      v29 = v15[9];
      v30 = v25;
      v134 = v25;
      v31 = &v28[v29 * (v25 + 1)];
      v32 = v15[2];
      (v32)(v157, v31, v14);
      v33 = &v28[v29 * v30];
      v34 = v155;
      v139 = v32;
      v35 = (v32)(v155, v33, v14);
      v36 = v156;
      v37 = v157;
      v148 = (v156)(v35);
      v142 = v36();
      v38 = v15[1];
      v38(v34, v14);
      v138 = v38;
      result = (v38)(v37, v14);
      a8 = (v134 + 2);
      v149 = v29;
      v39 = &v151[v29 * (v134 + 2)];
      while (1)
      {
        v40 = v147;
        if (v147 == a8)
        {
          break;
        }

        LODWORD(v151) = v142 < v148;
        v42 = v157;
        v41 = v158;
        v43 = v139;
        (v139)(v157, v39, v158);
        v44 = v155;
        v45 = (v43)(v155, v31, v41);
        v46 = v156;
        v47 = (v156)(v45);
        v48 = v46();
        v49 = v44;
        v50 = v138;
        (v138)(v49, v41);
        result = v50(v42, v41);
        v51 = v48 < v47;
        v15 = v140;
        v52 = !v51;
        v26 = v145;
        a8 = (a8 + 1);
        v39 = &v149[v39];
        v31 = &v149[v31];
        if (((v151 ^ v52) & 1) == 0)
        {
          v40 = a8 - 1;
          break;
        }
      }

      v11 = v132;
      v14 = v158;
      v27 = v134;
      if (v142 < v148)
      {
        if (v40 < v134)
        {
          goto LABEL_127;
        }

        if (v134 < v40)
        {
          v53 = v149 * (v40 - 1);
          v54 = v40 * v149;
          v147 = v40;
          v55 = v40;
          v56 = v134;
          v57 = v134 * v149;
          do
          {
            if (v56 != --v55)
            {
              a8 = *v146;
              if (!*v146)
              {
                goto LABEL_133;
              }

              v58 = *v152;
              (*v152)(v136, a8 + v57, v14);
              if (v57 < v53 || a8 + v57 >= a8 + v54)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v53)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v58)(a8 + v53, v136, v14);
              v26 = v145;
            }

            ++v56;
            v53 -= v149;
            v54 -= v149;
            v57 += v149;
          }

          while (v56 < v55);
          v11 = v132;
          v15 = v140;
          v27 = v134;
          v40 = v147;
        }
      }
    }

    v59 = v146[1];
    if (v40 < v59)
    {
      if (__OFSUB__(v40, v27))
      {
        goto LABEL_126;
      }

      if (&v40[-v27] < v131)
      {
        if (__OFADD__(v27, v131))
        {
          goto LABEL_128;
        }

        if (v27 + v131 >= v59)
        {
          v60 = v146[1];
        }

        else
        {
          v60 = (v27 + v131);
        }

        if (v60 < v27)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v40 != v60)
        {
          break;
        }
      }
    }

    v61 = v40;
    if (v40 < v27)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100094DE4(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v63 = *(v26 + 2);
    v62 = *(v26 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_100094DE4((v62 > 1), v63 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v64;
    v65 = &v26[16 * v63];
    *(v65 + 4) = v27;
    *(v65 + 5) = v61;
    v66 = *v133;
    if (!*v133)
    {
      goto LABEL_135;
    }

    v137 = v61;
    if (v63)
    {
      a8 = v66;
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v26 + 4);
          v69 = *(v26 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_56:
          if (v71)
          {
            goto LABEL_114;
          }

          v84 = &v26[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_117;
          }

          v90 = &v26[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_121;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v94 = &v26[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_70:
        if (v89)
        {
          goto LABEL_116;
        }

        v97 = &v26[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_119;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_77:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_129;
        }

        if (!*v146)
        {
          goto LABEL_132;
        }

        v106 = *&v26[16 * v105 + 32];
        v107 = *&v26[16 * v67 + 40];
        sub_1000372B0(&(*v146)[v15[9] * v106], &(*v146)[v15[9] * *&v26[16 * v67 + 32]], &(*v146)[v15[9] * v107], a8, v144, v141, v143);
        if (v11)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1000BD6CC(v26);
        }

        if (v105 >= *(v26 + 2))
        {
          goto LABEL_111;
        }

        v108 = &v26[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v159 = v26;
        result = sub_1000BD640(v67);
        v26 = v159;
        v64 = *(v159 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v26[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_112;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_113;
      }

      v79 = &v26[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_115;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_118;
      }

      if (v83 >= v75)
      {
        v101 = &v26[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_122;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v24 = v146[1];
    v25 = v137;
    a8 = v141;
    if (v137 >= v24)
    {
      goto LABEL_98;
    }
  }

  v132 = v11;
  v109 = *v146;
  v110 = v15[9];
  v151 = v15[2];
  v111 = &v109[v110 * (v40 - 1)];
  v148 = -v110;
  v134 = v27;
  a8 = (v27 - v40);
  v149 = v109;
  v135 = v110;
  v112 = &v109[v40 * v110];
  v137 = v60;
LABEL_89:
  v147 = v40;
  v138 = v112;
  v139 = a8;
  v142 = v111;
  v113 = v111;
  while (1)
  {
    v114 = v157;
    v115 = v151;
    (v151)(v157, v112, v14);
    v116 = v155;
    v117 = (v115)(v155, v113, v158);
    v118 = v156;
    v119 = (v156)(v117);
    v120 = v118();
    v121 = *v153;
    v122 = v116;
    v14 = v158;
    (*v153)(v122, v158);
    result = v121(v114, v14);
    if (v120 >= v119)
    {
LABEL_88:
      v40 = v147 + 1;
      v111 = v142 + v135;
      a8 = (v139 - 1);
      v112 = &v138[v135];
      v61 = v137;
      if (v147 + 1 != v137)
      {
        goto LABEL_89;
      }

      v11 = v132;
      v15 = v140;
      v26 = v145;
      v27 = v134;
      if (v137 < v134)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v149)
    {
      break;
    }

    v123 = *v152;
    v124 = v150;
    (*v152)(v150, v112, v14);
    swift_arrayInitWithTakeFrontToBack();
    v123(v113, v124, v14);
    v113 += v148;
    v112 += v148;
    v125 = __CFADD__(a8, 1);
    a8 = (a8 + 1);
    if (v125)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1000372B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v68 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v66 = &v56 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v57 = a7;
  v21 = (a2 - a1) / v19;
  v73 = a1;
  v72 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v23 < 1)
    {
      v42 = a4 + v23;
    }

    else
    {
      v40 = -v19;
      v60 = a4;
      v61 = (v13 + 16);
      v59 = (v13 + 8);
      v41 = a4 + v23;
      v42 = a4 + v23;
      v70 = a1;
      v62 = -v19;
      do
      {
        v56 = v42;
        v43 = a2 + v40;
        v63 = a2;
        v64 = a2 + v40;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v71 = v56;
            goto LABEL_59;
          }

          v45 = a3;
          v58 = v42;
          v46 = v12;
          v69 = a3 + v40;
          v47 = v43;
          v48 = v41 + v40;
          v49 = *v61;
          v50 = v66;
          (*v61)(v66, v41 + v40, v46);
          v51 = v67;
          v52 = (v49)(v67, v47, v46);
          v53 = v68;
          v65 = (v68)(v52);
          v54 = v53();
          v55 = *v59;
          (*v59)(v51, v46);
          v55(v50, v46);
          if (v54 < v65)
          {
            break;
          }

          v42 = v48;
          a3 = v69;
          if (v45 < v41 || v69 >= v41)
          {
            v12 = v46;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v70;
          }

          else
          {
            v12 = v46;
            a1 = v70;
            if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v48;
          v44 = v48 > v60;
          a2 = v63;
          v43 = v64;
          v40 = v62;
          if (!v44)
          {
            goto LABEL_57;
          }
        }

        a3 = v69;
        if (v45 < v63 || v69 >= v63)
        {
          a2 = v64;
          v12 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v70;
          v42 = v58;
        }

        else
        {
          a2 = v64;
          v12 = v46;
          a1 = v70;
          v42 = v58;
          if (v45 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v62;
      }

      while (v41 > v60);
    }

LABEL_57:
    v73 = a2;
    v71 = v42;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v22;
    v71 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v13 + 16);
      v63 = v19;
      v64 = v13 + 16;
      v61 = (v13 + 8);
      v62 = v25;
      v69 = a3;
      do
      {
        v70 = a1;
        v26 = v66;
        v27 = v62;
        (v62)(v66, a2, v12);
        v28 = v12;
        v29 = v67;
        v30 = v27(v67, a4, v28);
        v31 = a4;
        v32 = v68;
        v33 = a2;
        v34 = (v68)(v30);
        v35 = v32();
        v36 = *v61;
        v37 = v29;
        v12 = v28;
        (*v61)(v37, v28);
        v36(v26, v28);
        if (v35 >= v34)
        {
          a2 = v33;
          v38 = v63;
          a4 = v31 + v63;
          v39 = v70;
          if (v70 < v31 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v72 = a4;
        }

        else
        {
          v38 = v63;
          a2 = v33 + v63;
          v39 = v70;
          a4 = v31;
          if (v70 < v33 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v39 + v38;
        v73 = a1;
      }

      while (a4 < v65 && a2 < v69);
    }
  }

LABEL_59:
  sub_100037898(&v73, &v72, &v71, v57);
  return 1;
}

uint64_t sub_100037898(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100037988(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_100037C38()
{
  result = qword_1001D5250;
  if (!qword_1001D5250)
  {
    sub_10001276C(&qword_1001D50A0, &qword_100172750);
    sub_100037CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5250);
  }

  return result;
}

unint64_t sub_100037CC4()
{
  result = qword_1001D5258;
  if (!qword_1001D5258)
  {
    sub_10001276C(&qword_1001D5080, &qword_100172708);
    sub_100037D7C();
    sub_100013608(&qword_1001D45B0, &qword_1001D45B8, &qword_1001765E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5258);
  }

  return result;
}

unint64_t sub_100037D7C()
{
  result = qword_1001D5260;
  if (!qword_1001D5260)
  {
    sub_10001276C(&qword_1001D5078, &qword_100172700);
    sub_100037E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5260);
  }

  return result;
}

unint64_t sub_100037E08()
{
  result = qword_1001D5268;
  if (!qword_1001D5268)
  {
    sub_10001276C(&qword_1001D5070, &qword_1001726F8);
    sub_100037EC0();
    sub_100013608(&qword_1001D5278, &qword_1001D5280, &unk_100172970, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5268);
  }

  return result;
}

unint64_t sub_100037EC0()
{
  result = qword_1001D5270;
  if (!qword_1001D5270)
  {
    sub_10001276C(&qword_1001D5068, &qword_1001726F0);
    sub_10001276C(&qword_1001D5058, &qword_1001726E0);
    sub_100013608(&qword_1001D5098, &qword_1001D5058, &qword_1001726E0, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5270);
  }

  return result;
}

uint64_t sub_100037FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for ConfigToggle();
  v22 = *(*(v5 - 8) + 16);
  (v22)((v5 - 8), a2, v4, v5);
  v6 = sub_1000033A8(&qword_1001D5730, &qword_100173650);
  v7 = v6[12];
  v8 = a1[1];
  v9 = sub_1000033A8(&qword_1001D5530, &qword_100173358);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  sub_1000138BC(a1[2], a2 + v6[16], &qword_1001D5528, &qword_100173350);
  v22(a2 + v6[20], a1[3], v5);
  v10 = v6[24];
  v11 = a1[4];
  v12 = sub_1000033A8(&qword_1001D5520, &qword_100173348);
  (*(*(v12 - 8) + 16))(a2 + v10, v11, v12);
  v22(a2 + v6[28], a1[5], v5);
  v13 = v6[32];
  v14 = a1[6];
  v15 = sub_1000033A8(&qword_1001D5518, &qword_100173340);
  (*(*(v15 - 8) + 16))(a2 + v13, v14, v15);
  v16 = v6[36];
  v17 = a1[7];
  v18 = sub_1000033A8(&qword_1001D5510, &qword_100173338);
  (*(*(v18 - 8) + 16))(a2 + v16, v17, v18);
  v22(a2 + v6[40], a1[8], v5);
  v22(a2 + v6[44], a1[9], v5);
  v19 = a1[10];
  v20 = a2 + v6[48];

  return (v22)(v20, v19, v5);
}

uint64_t sub_10003826C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = **a1;
  v6 = *(*a1 + 9);
  v7 = (*a1)[2];
  v8 = *(*a1 + 24);
  *(a2 + 8) = *(*a1 + 8);
  *a2 = v5;
  *(a2 + 9) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v9 = *v4;
  v10 = v4[1];
  LOBYTE(v4) = v4[2];
  *(a2 + 25) = v9;
  *(a2 + 26) = v10;
  *(a2 + 27) = v4;
  v11 = sub_1000033A8(&qword_1001D5FA8, &qword_100174CD0);
  sub_1000138BC(a1[2], a2 + v11[16], &qword_1001D5FB0, &qword_100174CD8);
  sub_1000138BC(a1[3], a2 + v11[20], &qword_1001D5FB8, &qword_100174CE0);
  sub_1000138BC(a1[4], a2 + v11[24], &qword_1001D5FC0, &qword_100174CE8);
  v12 = v11[28];
  v13 = a1[5];
  v14 = sub_1000033A8(&qword_1001D5FC8, &qword_100174CF0);
  (*(*(v14 - 8) + 16))(a2 + v12, v13, v14);
  sub_1000138BC(a1[6], a2 + v11[32], &qword_1001D5FD0, &qword_100174CF8);
  sub_1000138BC(a1[7], a2 + v11[36], &qword_1001D5FD8, &qword_100174D00);
  sub_1000138BC(a1[8], a2 + v11[40], &qword_1001D5FE0, &qword_100174D08);
  sub_1000138BC(a1[9], a2 + v11[44], &qword_1001D5FE8, &qword_100174D10);
  sub_1000138BC(a1[10], a2 + v11[48], &qword_1001D5FF0, &qword_100174D18);
}

uint64_t sub_100038468@<X0>(uint64_t a1@<X8>)
{
  sub_10003B080(a1);
  if (AVGestaltGetBoolAnswer() && AVGestaltGetBoolAnswer())
  {
    if (AVGestaltGetBoolAnswer())
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for CameraControllerConfiguration(0);
  *(a1 + v3[5]) = v2;
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 1;
  *(a1 + v3[8]) = 0;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 1;
  *(a1 + v3[11]) = 1;
  v4 = v3[12];
  if (qword_1001D3198 != -1)
  {
    swift_once();
  }

  v5 = a1 + v4;
  v6 = byte_1001EB570;
  *v5 = qword_1001EB568;
  *(v5 + 8) = v6;
  v7 = v3[13];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v8, v9, 0);

  *(a1 + v7) = AppBooleanValue != 0;
  v11 = v3[14];
  v12 = type metadata accessor for URL();
  v15 = *(*(v12 - 8) + 56);
  (v15)((v12 - 8), a1 + v11, 1, 1, v12);
  *(a1 + v3[15]) = 4;
  *(a1 + v3[16]) = 0;
  v15(a1 + v3[17], 1, 1, v12);
  *(a1 + v3[18]) = 1;
  *(a1 + v3[19]) = 0;
  *(a1 + v3[20]) = 1;
  v13 = a1 + v3[21];

  return (v15)(v13, 1, 1, v12);
}

uint64_t sub_1000386D0(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_1000033A8(&qword_1001D5838, &qword_100173778);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v24 - v4;
  v5 = sub_1000033A8(&qword_1001D5840, &qword_100173780);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1000033A8(&qword_1001D5848, &qword_100173788);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1000033A8(&qword_1001D5850, &qword_100173790);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_100006AAC(a1, a1[3]);
  sub_10004F588(v15, v16, v17);
  v18 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = (v12 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = 1;
      sub_10004F630(v18, v19, v20);
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      v34 = 2;
      sub_10004F5DC(v18, v19, v20);
      v22 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v22, v30);
    }
  }

  else
  {
    v32 = 0;
    sub_10004F684(v18, v19, v20);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v10, v8);
  }

  return (*v21)(v14, v11);
}

uint64_t sub_100038A5C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100038A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F684(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100038AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F684(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100038B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F630(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100038B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F630(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100038B84()
{
  v1 = 0x7275747061437661;
  if (*v0 != 1)
  {
    v1 = 0x6F74616C756D6973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B7261;
  }
}

uint64_t sub_100038BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004BB58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100038C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F588(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100038C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F588(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100038C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F5DC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100038CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F5DC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100038D08@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004BC78(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100038D50()
{
  v1 = 0x7275747061435641;
  if (*v0 != 1)
  {
    v1 = 0x6F74616C756D6953;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B5241;
  }
}

uint64_t sub_100038DAC(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_1000033A8(&qword_1001D5A98, &qword_1001738B0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v24 - v4;
  v5 = sub_1000033A8(&qword_1001D5AA0, &qword_1001738B8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1000033A8(&qword_1001D5AA8, &qword_1001738C0);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1000033A8(&qword_1001D5AB0, &qword_1001738C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_100006AAC(a1, a1[3]);
  sub_100050008(v15, v16, v17);
  v18 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = (v12 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = 1;
      sub_1000500B0(v18, v19, v20);
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      v34 = 2;
      sub_10005005C(v18, v19, v20);
      v22 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v22, v30);
    }
  }

  else
  {
    v32 = 0;
    sub_100050104(v18, v19, v20);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v10, v8);
  }

  return (*v21)(v14, v11);
}

uint64_t sub_10003912C()
{
  v1 = 0x656469576C617564;
  if (*v0 != 1)
  {
    v1 = 0x656C70697274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701079415;
  }
}

uint64_t sub_10003917C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004C208(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000391B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100050008(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000391EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100050008(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000500B0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100039264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000500B0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000392A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005005C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000392DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005005C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100050104(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100039354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100050104(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039390@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004C31C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000393D8()
{
  v1 = 0x646957206C617544;
  if (*v0 != 1)
  {
    v1 = 0x656C70697254;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701079383;
  }
}

uint64_t sub_10003943C(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_1000033A8(&qword_1001D59F0, &qword_100173840);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v24 - v4;
  v5 = sub_1000033A8(&qword_1001D59F8, &qword_100173848);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1000033A8(&qword_1001D5A00, &qword_100173850);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1000033A8(&qword_1001D5A08, &qword_100173858);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_100006AAC(a1, a1[3]);
  sub_10004FDBC(v15, v16, v17);
  v18 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = (v12 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = 1;
      sub_10004FE64(v18, v19, v20);
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      v34 = 2;
      sub_10004FE10(v18, v19, v20);
      v22 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v22, v30);
    }
  }

  else
  {
    v32 = 0;
    sub_10004FEB8(v18, v19, v20);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v10, v8);
  }

  return (*v21)(v14, v11);
}

uint64_t sub_1000397BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FEB8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000397F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FEB8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039834()
{
  v1 = 0x6F73655268676968;
  if (*v0 != 1)
  {
    v1 = 0x4B72756F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t sub_100039890@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004C8AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000398B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FDBC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000398F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FDBC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FE10(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FE10(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000399A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FE64(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000399E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FE64(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039A20@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004C9C8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100039A68()
{
  v1 = 0x7365522068676948;
  if (*v0 != 1)
  {
    v1 = 19252;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869903169;
  }
}

uint64_t sub_100039ACC(void *a1, int a2)
{
  v24 = a2;
  v3 = sub_1000033A8(&qword_1001D5A40, &qword_100173878);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = sub_1000033A8(&qword_1001D5A48, &qword_100173880);
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - v7;
  v9 = sub_1000033A8(&qword_1001D5A50, &qword_100173888);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_100006AAC(a1, a1[3]);
  sub_10004FF0C(v13, v14, v15);
  v16 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v10 + 8);
  if (v24)
  {
    v26 = 1;
    sub_10004FF60(v16, v17, v18);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v5, v23);
  }

  else
  {
    v25 = 0;
    sub_10004FFB4(v16, v17, v18);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v21);
  }

  return (*v19)(v12, v9);
}

uint64_t sub_100039D88()
{
  if (*v0)
  {
    return 0x74736568676968;
  }

  else
  {
    return 0x6465657073;
  }
}

uint64_t sub_100039DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736568676968 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100039E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FF0C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100039ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FF0C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FF60(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100039F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FF60(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100039F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FFB4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100039FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FFB4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003A000@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004CF58(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_10003A04C()
{
  if (*v0)
  {
    return 0x74736568676948;
  }

  else
  {
    return 0x6465657053;
  }
}

uint64_t sub_10003A094(void *a1, int a2)
{
  v24 = a2;
  v3 = sub_1000033A8(&qword_1001D5998, &qword_100173808);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = sub_1000033A8(&qword_1001D59A0, &qword_100173810);
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - v7;
  v9 = sub_1000033A8(&qword_1001D59A8, &qword_100173818);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_100006AAC(a1, a1[3]);
  sub_10004FCC0(v13, v14, v15);
  v16 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v10 + 8);
  if (v24)
  {
    v26 = 1;
    sub_10004FD14(v16, v17, v18);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v5, v23);
  }

  else
  {
    v25 = 0;
    sub_10004FD68(v16, v17, v18);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v21);
  }

  return (*v19)(v12, v9);
}

uint64_t sub_10003A350()
{
  if (*v0)
  {
    return 0x7974786973;
  }

  else
  {
    return 0x797472696874;
  }
}

uint64_t sub_10003A384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797472696874 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974786973 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003A458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FCC0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003A494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FCC0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003A4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FD14(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003A50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FD14(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003A548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FD68(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003A584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004FD68(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003A5C0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004D394(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_10003A60C()
{
  if (*v0)
  {
    return 0x535046203036;
  }

  else
  {
    return 0x535046203033;
  }
}

void sub_10003A640()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    mainScreenWidth = MobileGestalt_get_mainScreenWidth();

    v3 = MobileGestalt_get_current_device();
    if (v3)
    {
      v4 = v3;
      v5 = mainScreenWidth;
      mainScreenHeight = MobileGestalt_get_mainScreenHeight();

      *&qword_1001EB568 = v5 / mainScreenHeight;
      byte_1001EB570 = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10003A6C8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 1701736270;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v7, "Aspect Crop (");
  sub_1000033A8(&qword_1001D58A0, &qword_1001771C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100171DA0;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v7[0];
}

uint64_t sub_10003A7C8(void *a1, uint64_t a2, int a3)
{
  v27 = a3;
  v24 = a2;
  v4 = sub_1000033A8(&qword_1001D5888, &qword_1001737B0);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v23 = sub_1000033A8(&qword_1001D5890, &qword_1001737B8);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v22 - v8;
  v10 = sub_1000033A8(&qword_1001D5898, &unk_1001737C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_100006AAC(a1, a1[3]);
  sub_10004F6D8(v14, v15, v16);
  v17 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v27)
  {
    v28 = 0;
    sub_10004F780(v17, v18, v19);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v9, v23);
  }

  else
  {
    v29 = 1;
    sub_10004F72C(v17, v18, v19);
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v26;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v25 + 8))(v6, v21);
  }

  return (*(v11 + 8))(v13, v10);
}

Swift::Int sub_10003AACC(Swift::UInt64 a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_10003AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
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

uint64_t sub_10003ABE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F72C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003AC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F72C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003AC60()
{
  if (*v0)
  {
    return 0x7243746365707361;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10003AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7243746365707361 && a2 == 0xEA0000000000706FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003AD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F6D8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003ADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F6D8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003ADF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F780(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003AE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F780(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

BOOL sub_10003AE6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void sub_10003AEB4()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }
}

Swift::Int sub_10003AF04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

void *sub_10003AF70@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10004D7D0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10003AFD0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000033A8(&qword_1001D58A8, &qword_1001737D0);
  result = swift_allocObject();
  *(result + 16) = xmmword_100170800;
  *(result + 32) = 0;
  *(result + 40) = 1;
  if (qword_1001D3198 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v3 = byte_1001EB570;
  *(result + 48) = qword_1001EB568;
  *(result + 56) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10003B080@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v54 = type metadata accessor for EntryPoint();
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v63 = v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ActionPredictor.Configuration();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = __chkstk_darwin(v2);
  v53 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = v42 - v5;
  v60 = type metadata accessor for BundleSelector.Configuration();
  v6 = *(v60 - 8);
  v7 = __chkstk_darwin(v60);
  v52 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v42 - v10;
  __chkstk_darwin(v9);
  v13 = v42 - v12;
  v62 = type metadata accessor for BundleManager.Configuration();
  v50 = *(v62 - 8);
  v14 = __chkstk_darwin(v62);
  v49 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v42 - v16;
  v61 = type metadata accessor for TrackManager.Configuration();
  v47 = *(v61 - 8);
  v18 = __chkstk_darwin(v61);
  v46 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v42 - v20;
  v22 = type metadata accessor for CVCoordinator.Configuration();
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = __chkstk_darwin(v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v42 - v26;
  static CVCoordinator.Configuration.cameraSettings.getter();
  v28 = v21;
  static TrackManager.Configuration.factorySettings.getter();
  v29 = v17;
  static BundleManager.Configuration.cameraSettings.getter();
  static BundleSelector.Configuration.factorySettings.getter();
  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  LOBYTE(v21) = dispatch thunk of RellenoGlobalSettings.isRelleno.getter();

  if ((v21 & 1) == 0)
  {
    BundleSelector.Configuration.pinPresentableUIArea.setter();
  }

  v30 = *(v6 + 32);
  v42[0] = v13;
  v31 = v11;
  v32 = v60;
  v30(v13, v31, v60);
  v33 = v48;
  static ActionPredictor.Configuration.factorySettings.getter();
  (*(v51 + 104))(v63, enum case for EntryPoint.viewfinder(_:), v54);
  v34 = *(v58 + 16);
  v42[1] = v25;
  v45 = v27;
  v34(v25, v27, v59);
  v35 = v47;
  v36 = *(v47 + 16);
  v44 = v28;
  v36(v46, v28, v61);
  v37 = v50;
  v38 = *(v50 + 16);
  v43 = v29;
  v38(v49, v29, v62);
  (*(v6 + 16))(v52, v13, v32);
  v40 = v55;
  v39 = v56;
  (*(v55 + 16))(v53, v33, v56);
  SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)();
  (*(v40 + 8))(v33, v39);
  (*(v6 + 8))(v42[0], v60);
  (*(v37 + 8))(v43, v62);
  (*(v35 + 8))(v44, v61);
  return (*(v58 + 8))(v45, v59);
}

unint64_t sub_10003B6B4(char a1)
{
  result = 0x6172656D6163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x7954656372756F73;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6175516F746F6870;
      break;
    case 7:
    case 16:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x6172466C6C697473;
      break;
    case 12:
      result = 0x6172466F65646976;
      break;
    case 13:
      result = 0x7065526F65646976;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x4F764373746E6177;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_10003B920(void *a1)
{
  v3 = v1;
  v5 = sub_1000033A8(&qword_1001D5908, &qword_1001737E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_100006AAC(a1, a1[3]);
  sub_10004F7D4(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v38) = 0;
  type metadata accessor for SaliencyStreamConfiguration();
  sub_10003E86C(&qword_1001D5910, &type metadata accessor for SaliencyStreamConfiguration, &protocol conformance descriptor for SaliencyStreamConfiguration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = type metadata accessor for CameraControllerConfiguration(0);
  LOBYTE(v38) = *(v3 + v12[5]);
  v40 = 1;
  sub_10004FA74(v12, v13, v14);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v38) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v38) = 3;
  v15 = KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v38) = *(v3 + v12[8]);
  v40 = 4;
  sub_10004FAC8(v15, v16, v17);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v38) = 5;
  v18 = KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v38) = *(v3 + v12[10]);
  v40 = 6;
  sub_10004FB1C(v18, v19, v20);
  v21 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v38) = *(v3 + v12[11]);
  v40 = 7;
  sub_10004FB70(v21, v22, v23);
  v24 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  v25 = (v3 + v12[12]);
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  v38 = v26;
  v39 = v25;
  v40 = 8;
  sub_10004FBC4(v24, v27, v28);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v38) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  v37 = v6;
  LOBYTE(v38) = 10;
  type metadata accessor for URL();
  sub_10003E86C(&qword_1001D5940, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v29 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v38) = *(v3 + v12[15]);
  v40 = 11;
  sub_10004FC18(v29, v30, v31);
  v32 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v38) = *(v3 + v12[16]);
  v40 = 12;
  sub_10004FC6C(v32, v33, v34);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v38) = 13;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v38) = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v38) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v38) = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v38) = 17;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v37 + 8))(v8, v5);
}