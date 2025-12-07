uint64_t sub_10003DD08(uint64_t a1)
{
  result = type metadata accessor for LocationViewerActiveLocationState(319);
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

uint64_t sub_10003DDB8(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  sub_1002E4EC0();
  sub_10003DE74();
  *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v6) = a2;
  *(v6 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState) = a3 & 1;
  *(v6 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger) = a4;
  *(v6 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle) = a5;
  *(v6 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState) = a6;
  return v6;
}

uint64_t sub_10003DE74()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_10003DEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10003DF24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10003DF84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 sub_10003E038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_1002E56CC();
  *(v35 + 16) = v36;
  *(v35 + 24) = v37;
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4EC0();
  sub_10003DE74();
  v38 = v35 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  *v38 = a29;
  *(v38 + 16) = a30;
  *(v38 + 24) = a31;
  v39 = v35 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  *v39 = a32;
  *(v39 + 8) = a33;
  *(v39 + 16) = a34;
  *(v35 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners) = a35;
  sub_1002E56B0();
  return result;
}

uint64_t sub_10003E258@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AutomationReducer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C65D38;
  *a1 = result;
  return result;
}

void *sub_10003E2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for LocationAuthorizationReducer();
  v48[3] = v9;
  v48[4] = &off_100C542F0;
  v48[0] = a1;
  v10 = type metadata accessor for NetworkReducer();
  v46 = v10;
  v47 = &off_100C6EF48;
  v45[0] = a2;
  v11 = type metadata accessor for ActivityActionReducer();
  v43 = v11;
  v44 = &off_100C69B28;
  v42[0] = a3;
  v40 = v8;
  v41 = &off_100C4EFD8;
  v39[0] = a4;
  type metadata accessor for EnvironmentReducer();
  v12 = swift_allocObject();
  v13 = sub_10002D7F8(v48, v9);
  v14 = __chkstk_darwin(v13);
  v16 = (&v39[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = sub_10002D7F8(v45, v46);
  v19 = __chkstk_darwin(v18);
  v21 = (&v39[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = sub_10002D7F8(v42, v43);
  v24 = __chkstk_darwin(v23);
  v26 = (&v39[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = sub_10002D7F8(v39, v40);
  v29 = __chkstk_darwin(v28);
  v31 = (&v39[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = *v16;
  v34 = *v21;
  v35 = *v26;
  v36 = *v31;
  v12[5] = v9;
  v12[6] = &off_100C542F0;
  v12[2] = v33;
  v12[10] = v10;
  v12[11] = &off_100C6EF48;
  v12[7] = v34;
  v12[15] = v11;
  v12[16] = &off_100C69B28;
  v12[12] = v35;
  v12[20] = v8;
  v12[21] = &off_100C4EFD8;
  v12[17] = v36;
  sub_100006F14(v39);
  sub_100006F14(v42);
  sub_100006F14(v45);
  sub_100006F14(v48);
  return v12;
}

uint64_t sub_10003E6E8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_10003E780@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_10003E7F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for NotificationSettingsViewModelFactory();
  v36[3] = v7;
  v36[4] = &off_100C7ADD0;
  v36[0] = a1;
  v8 = type metadata accessor for NotificationsOptInViewModelFactory();
  v34 = v8;
  v35 = &off_100C69B18;
  v33[0] = a2;
  v31 = v6;
  v32 = &off_100C69CE0;
  v30[0] = a3;
  type metadata accessor for ListViewStateReducer();
  v9 = swift_allocObject();
  v10 = sub_10002D7F8(v36, v7);
  v11 = __chkstk_darwin(v10);
  v13 = (&v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = sub_10002D7F8(v33, v34);
  v16 = __chkstk_darwin(v15);
  v18 = (&v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_10002D7F8(v30, v31);
  v21 = __chkstk_darwin(v20);
  v23 = (&v30[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v13;
  v26 = *v18;
  v27 = *v23;
  v9[5] = v7;
  v9[6] = &off_100C7ADD0;
  v9[7] = v26;
  v9[2] = v25;
  v9[10] = v8;
  v9[11] = &off_100C69B18;
  v9[15] = v6;
  v9[16] = &off_100C69CE0;
  v9[12] = v27;
  sub_100006F14(v30);
  sub_100006F14(v33);
  sub_100006F14(v36);
  return v9;
}

uint64_t sub_10003EAD8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

unint64_t sub_10003EB4C()
{
  result = qword_100CC4178;
  if (!qword_100CC4178)
  {
    v3 = sub_10022E824(&qword_100CC4170, &qword_100A5D758);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CC4178);
  }

  return result;
}

void *sub_10003EBB0(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for NotificationsOptInViewModelFactory();
  v35[3] = v6;
  v35[4] = &off_100C69B18;
  v35[0] = a1;
  v7 = type metadata accessor for LocationViewDescriptor();
  v33 = v7;
  v34 = &off_100C76318;
  v32[0] = a2;
  v30 = &type metadata for MapOverlayKindProvider;
  v31 = &off_100C5C7B0;
  v29[0] = swift_allocObject();
  memcpy((v29[0] + 16), a3, 0x50uLL);
  type metadata accessor for LocationViewerViewStateReducer();
  v8 = swift_allocObject();
  v9 = sub_10002D7F8(v35, v6);
  v10 = __chkstk_darwin(v9);
  v12 = (&v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10002D7F8(v32, v33);
  v15 = __chkstk_darwin(v14);
  v17 = (&v29[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10002D7F8(v29, v30);
  v20 = __chkstk_darwin(v19);
  v22 = &v29[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = *v12;
  v25 = *v17;
  v8[5] = v6;
  v8[6] = &off_100C69B18;
  v8[2] = v24;
  v8[10] = v7;
  v8[11] = &off_100C76318;
  v8[7] = v25;
  v8[15] = &type metadata for MapOverlayKindProvider;
  v8[16] = &off_100C5C7B0;
  v26 = swift_allocObject();
  v8[12] = v26;
  memcpy((v26 + 16), v22, 0x50uLL);
  sub_100006F14(v29);
  sub_100006F14(v32);
  sub_100006F14(v35);
  return v8;
}

uint64_t sub_10003EEC8()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));

  return swift_deallocObject();
}

void *sub_10003EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for ListViewStateReducer();
  v48[3] = v9;
  v48[4] = &off_100C75AB8;
  v48[0] = a1;
  v10 = type metadata accessor for LocationViewerViewStateReducer();
  v46 = v10;
  v47 = &off_100C63770;
  v45[0] = a2;
  v11 = type metadata accessor for VFXTestViewStateReducer();
  v43 = v11;
  v44 = &off_100C55FE0;
  v42[0] = a3;
  v40 = v8;
  v41 = &off_100C6CC70;
  v39[0] = a4;
  type metadata accessor for ViewStateReducer();
  v12 = swift_allocObject();
  v13 = sub_10002D7F8(v48, v9);
  v14 = __chkstk_darwin(v13);
  v16 = (&v39[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = sub_10002D7F8(v45, v46);
  v19 = __chkstk_darwin(v18);
  v21 = (&v39[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = sub_10002D7F8(v42, v43);
  v24 = __chkstk_darwin(v23);
  v26 = (&v39[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = sub_10002D7F8(v39, v40);
  v29 = __chkstk_darwin(v28);
  v31 = (&v39[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = *v16;
  v34 = *v21;
  v35 = *v26;
  v36 = *v31;
  v12[5] = v9;
  v12[6] = &off_100C75AB8;
  v12[2] = v33;
  v12[10] = v10;
  v12[11] = &off_100C63770;
  v12[7] = v34;
  v12[15] = v11;
  v12[16] = &off_100C55FE0;
  v12[12] = v35;
  v12[20] = v8;
  v12[21] = &off_100C6CC70;
  v12[17] = v36;
  sub_100006F14(v39);
  sub_100006F14(v42);
  sub_100006F14(v45);
  sub_100006F14(v48);
  return v12;
}

void *sub_10003F36C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730, &unk_100A4FE30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for LocationPreviewViewStateReducer();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C71920;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F45C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_10003F4F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9788, &unk_100A4E230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9790, &unk_100A9F1C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E8, &unk_100A67990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1440, &qword_100A419B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v5 = sub_10002D7F8(v33, v34);
    v6 = __chkstk_darwin(v5);
    v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v31, v32);
    v11 = __chkstk_darwin(v10);
    v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v29, v30);
    v16 = __chkstk_darwin(v15);
    v18 = (&v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v27, v28);
    v21 = __chkstk_darwin(v20);
    v23 = (&v27[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = sub_10003F92C(*v8, v13, *v18, *v23);
    sub_100006F14(v27);
    sub_100006F14(v29);
    sub_100006F14(v31);
    sub_100006F14(v33);
    result = type metadata accessor for LocationViewStateReducer();
    a2[3] = result;
    a2[4] = &off_100C4A0C8;
    *a2 = v25;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_10003F92C(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for LocationViewDescriptor();
  v47[3] = v9;
  v47[4] = &off_100C76318;
  v47[0] = a1;
  v45 = &type metadata for MapOverlayKindProvider;
  v46 = &off_100C5C7B0;
  v44[0] = swift_allocObject();
  memcpy((v44[0] + 16), a2, 0x50uLL);
  v10 = type metadata accessor for NotificationsOptInViewModelFactory();
  v42 = v10;
  v43 = &off_100C69B18;
  v41[0] = a3;
  v39 = v8;
  v40 = &off_100C69CE0;
  v38[0] = a4;
  type metadata accessor for LocationViewStateReducer();
  v11 = swift_allocObject();
  v12 = sub_10002D7F8(v47, v9);
  v13 = __chkstk_darwin(v12);
  v15 = (&v38[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = sub_10002D7F8(v44, v45);
  v18 = __chkstk_darwin(v17);
  v20 = &v38[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_10002D7F8(v41, v42);
  v23 = __chkstk_darwin(v22);
  v25 = (&v38[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = sub_10002D7F8(v38, v39);
  v28 = __chkstk_darwin(v27);
  v30 = (&v38[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v32 = *v15;
  v33 = *v25;
  v34 = *v30;
  v11[5] = v9;
  v11[6] = &off_100C76318;
  v11[2] = v32;
  v11[10] = &type metadata for MapOverlayKindProvider;
  v11[11] = &off_100C5C7B0;
  v35 = swift_allocObject();
  v11[7] = v35;
  memcpy((v35 + 16), v20, 0x50uLL);
  v11[15] = v10;
  v11[16] = &off_100C69B18;
  v11[17] = v34;
  v11[12] = v33;
  v11[20] = v8;
  v11[21] = &off_100C69CE0;
  sub_100006F14(v38);
  sub_100006F14(v41);
  sub_100006F14(v44);
  sub_100006F14(v47);
  return v11;
}

uint64_t sub_10003FD3C()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_10003FDA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A24(a1, a2);
  sub_10022C350(v3, v4);
  sub_1000037E8();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10003FDF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10022C350(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_10003FE78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208, &unk_100A55900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for PerformanceTestReducer();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C69CF0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003FF6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ConditionDetailViewStateReducer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C77CF0;
  *a1 = result;
  return result;
}

uint64_t sub_10003FFB4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_10004004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_100040088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v3[4] = OS_os_log.init(subsystem:category:)();
  v3[5] = _swiftEmptyArrayStorage;
  v9 = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v12[0] = "Store processed event: ";
  v12[1] = v9;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10006CD24(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100006F64(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v3[6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  v17 = v14;
  Published.init(initialValue:)();
  swift_endAccess();
  v10 = v16;
  v3[2] = v15;
  v3[3] = v10;
  return v3;
}

uint64_t sub_1000403B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000403F4(uint64_t a1)
{
  v2 = v1;
  sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
  sub_100006F64(&qword_100CD19C8, &qword_100CBF860, &unk_100A61BF0, aG_1);
  ObservableObject<>.objectWillChange.getter();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for ObservableObjectPublisher();

  v6 = Publisher<>.sink(receiveValue:)();

  *(v2 + 16) = v6;
}

uint64_t sub_10004053C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1000405D8()
{
  result = qword_100CA34E8;
  if (!qword_100CA34E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA34E8);
  }

  return result;
}

void *sub_10004061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_100040664(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

unint64_t sub_100040690()
{
  result = qword_100CB4670;
  if (!qword_100CB4670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB4670);
  }

  return result;
}

uint64_t sub_1000406D4(__int128 *a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = &off_100C4F5F8;
  v12[0] = a2;
  type metadata accessor for AppStoreReviewManager();
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12[-1] - v6);
  (*(v8 + 16))(&v12[-1] - v6, v5);
  v9 = sub_100040828(a1, *v7, v3);
  sub_100006F14(v12);
  return v9;
}

uint64_t sub_100040828(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for AppStoreReviewPrivacySampler();
  v9 = &off_100C4F5F8;
  *&v7 = a2;
  if (qword_100CA2980 != -1)
  {
    swift_once();
  }

  sub_10022C350(&qword_100CDEF90, &qword_100A8E880);
  swift_allocObject();

  *(a3 + 96) = SettingProperty.init(_:)();
  sub_100013188(a1, a3 + 16);
  sub_100013188(&v7, a3 + 56);
  return a3;
}

__n128 initializeWithCopy for ForegroundEffectViewMask(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100040910(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100040920@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppBackgroundTaskManager();
  swift_allocObject();
  v3 = AppBackgroundTaskManager.init()();
  a1[3] = v2;
  result = sub_10004306C(&qword_100CBE218, &type metadata accessor for AppBackgroundTaskManager, &protocol conformance descriptor for AppBackgroundTaskManager);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1000409D0()
{

  sub_100040C90();
  sub_100040B64();
  sub_100040E90();
  sub_100040B64();
  sub_1000FFC1C();
  sub_100040B64();
  sub_100040FDC();
  sub_100040B64();
  sub_1000453BC();
  sub_100040B64();
  sub_1000E139C();
  sub_100040B64();
  sub_1002E4B48();
  sub_100040B64();
  sub_100192384();
  sub_100040B64();

  return v0;
}

uint64_t sub_100040AF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_100040B64()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100040BE8()
{

  return type metadata accessor for WeatherDataModel();
}

uint64_t sub_100040C24()
{

  return sub_1000A0944();
}

uint64_t sub_100040C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 264);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_100040C60()
{

  return sub_1001AAF0C(v0);
}

uint64_t sub_100040C78()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_100040CF8()
{

  return sub_1000A0944();
}

id sub_100040D24()
{
  v2 = *(v0 - 320);

  return v2;
}

uint64_t sub_100040D48(uint64_t result)
{
  v4 = (v2 + *(result + 20));
  *v4 = v3;
  v4[1] = v1;
  return result;
}

uint64_t sub_100040D5C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100040D78()
{

  return swift_storeEnumTagMultiPayload();
}

double sub_100040DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = *(v35 - 256);

  *&result = sub_10003E038(a1, a2, a3, a4, a5, a6, a7, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35).n128_u64[0];
  return result;
}

uint64_t sub_100040FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100041000(uint64_t a1)
{

  return sub_1000AF474();
}

uint64_t sub_100041044()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t sub_1000410A0()
{
  sub_100043908();

  return swift_deallocClassInstance();
}

uint64_t sub_1000410D4()
{
  sub_1000A7B9C();
  sub_100040B64();
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_100041150@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v7 = a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000411F4(uint64_t a1)
{
  sub_1000454A8(319, &qword_100CB4360, type metadata accessor for WeatherData);
  if (v1 <= 0x3F)
  {
    sub_1000454A8(319, &qword_100CA7568, type metadata accessor for NewsDataModel);
    if (v2 <= 0x3F)
    {
      sub_1000454A8(319, &unk_100CDFBD0, type metadata accessor for LocationViewModel);
      if (v3 <= 0x3F)
      {
        sub_1000454A8(319, &qword_100CCB230, &type metadata accessor for UUID);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for VisibleLocationWeatherLoadMonitor(uint64_t a1)
{
  result = qword_100CD89D0;
  if (!qword_100CD89D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004143C(uint64_t a1)
{
  sub_1000414F8(319);
  if (v1 <= 0x3F)
  {
    sub_100035064();
    if (v2 <= 0x3F)
    {
      type metadata accessor for VisibleLocationWeatherLoadStatusLog(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000414F8(uint64_t a1)
{
  if (!qword_100CADC30)
  {
    type metadata accessor for Location.Identifier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CADC30);
    }
  }
}

void sub_100041550(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10002908C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100041600(uint64_t a1)
{
  ProxyContainer.public.getter();
  v1 = sub_10022C350(&qword_100CBA6E8, &qword_100A4FDE0);
  sub_10001BAD0(v1);

  ProxyContainer.public.getter();
  v2 = sub_10022C350(&qword_100CBA6F0, &qword_100A4FDE8);
  sub_10001BAD0(v2);

  ProxyContainer.public.getter();
  v3 = sub_10022C350(&qword_100CBA6F8, &qword_100A4FDF0);
  sub_10001BAD0(v3);

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_100041734()
{
  v1 = v0;
  type metadata accessor for ContainerScope();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100005888();
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___container;
  if (*(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___container))
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___container);
  }

  else
  {
    sub_100015EDC();
    v5 = sub_1000194B4();
    v6(v5);
    v4 = ContainerManager.container(for:)();

    v7 = sub_100003984();
    v8(v7);
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t sub_100041860(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_100041884(uint64_t a1)
{
  sub_10001B350(a1, 1, 1, v1[262]);
  sub_10001B350(v1[216], 1, 1, v1[265]);
  v2 = v1[203];
  v3 = v1[266];

  return sub_10001B350(v2, 1, 1, v3);
}

uint64_t sub_1000418EC()
{
}

uint64_t sub_100041920()
{

  return sub_1001AAF0C(v0);
}

uint64_t sub_100041A2C()
{

  return type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
}

uint64_t sub_100041A4C()
{
  result = v0;
  *(v2 - 256) = v1;
  return result;
}

uint64_t sub_100041A60()
{

  return sub_10053347C(v0, v1 + v4, v2, v3);
}

uint64_t sub_100041A98@<X0>(uint64_t a1@<X8>)
{
  result = v1[11];
  v3 = (v1[9] + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v1[15] = a1;
  v1[16] = v3;
  return result;
}

uint64_t sub_100041B80(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100041C00(uint64_t a1, uint64_t a2)
{

  return sub_10001B350(v3, a2, 1, v2);
}

uint64_t sub_100041C64()
{

  return sub_100109620(v1, v0);
}

uint64_t sub_100041CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7Weather31AppIntentsDependencyStartupTask_executionPhase;
  v5 = type metadata accessor for StartupTaskExecutionPhase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100041D24(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SessionEventsAndDataCoordinator(0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t sub_100041D84(uint64_t *a1, int a2)
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

void *sub_100041DC4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD17E8, &qword_100A76BE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(v7, v8);
    v3 = sub_10002D88C();
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1850, &qword_100A76C48);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v6;
      sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
      swift_allocObject();
      v5 = sub_100040088(v3, sub_100051880, v4);
      sub_100006F14(v7);
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100041F10()
{

  return swift_deallocObject();
}

uint64_t sub_100041F48(void *a1)
{
  v9[6] = "\b";
  v1 = swift_checkMetadataState();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v9[7] = *(v1 - 8) + 64;
    v4 = swift_checkMetadataState();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v9[8] = *(v4 - 8) + 64;
      v9[9] = &value witness table for () + 64;
      v9[10] = &value witness table for Builtin.Int64 + 64;
      v9[11] = &unk_100A48980;
      v9[12] = &value witness table for Builtin.UnknownObject + 64;
      v9[0] = swift_getAssociatedTypeWitness();
      v9[1] = swift_getAssociatedTypeWitness();
      v9[2] = swift_getAssociatedConformanceWitness();
      v9[3] = swift_getAssociatedConformanceWitness();
      v9[4] = swift_getAssociatedConformanceWitness();
      v9[5] = swift_getAssociatedConformanceWitness();
      type metadata accessor for StatePersistenceData(255, v9);
      v6 = type metadata accessor for Optional();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v9[13] = *(v6 - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return v2;
}

uint64_t sub_100042260@<X0>(unsigned int a1@<W8>)
{
  if (a1 > 1)
  {
    return (a1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100042298(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;
  *(v5 + 4) = 1752392040;
  *(v5 + 12) = 2081;

  return sub_100078694(v4, v3, va);
}

uint64_t sub_1000422CC()
{
}

void sub_1000422F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_100030930(v5, a2, a3, a4, v4);
}

uint64_t sub_10004230C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100042348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return ShortDescription.init(name:_:)();
}

uint64_t sub_100042364()
{
}

uint64_t sub_100042380(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100042398(uint64_t a1, unint64_t *a2)
{

  return sub_10000C70C(0, a2, v2);
}

uint64_t sub_1000423B0(uint64_t a1)
{

  return sub_10011A168(v2, a1 + v1);
}

void *sub_1000423E0@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD19F0, &qword_100A76DE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(v6, v7);
    sub_1000365D0(v5);
    v4 = v5[3] != 0;
    sub_100042CB8(v5);
    result = sub_100006F14(v6);
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042488@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = _s5DemosO10Winter2024CMa(0);
    swift_allocObject();
    result = sub_100036B30();
    v5 = &off_100C64C58;
  }

  else
  {
    v3 = _s5DemosO8Fall2024CMa(0);
    swift_allocObject();
    result = sub_10002CEC4();
    v5 = &off_100C64C88;
  }

  a2[3] = v3;
  a2[4] = v5;
  *a2 = result;
  return result;
}

uint64_t sub_100042524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000425D8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_10065F6C4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000425E8()
{

  sub_100018608(OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___currentLocation);
  sub_100018608(OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___egilsstadirLocation);
  sub_100018608(OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___akureyriLocation);
  sub_10002C4AC(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___locations, &qword_100CCF250, &qword_100A704C8);
  sub_10002C4AC(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___timeState, &qword_100CCF248, &qword_100A704C0);
  sub_1000425D8(*(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___weatherDataState), *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___weatherDataState + 8));
  sub_10002CD5C(*(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___preset));
  return v0;
}

uint64_t sub_1000426F4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10004271C()
{

  return sub_100018144(v0, v1, v2);
}

void sub_1000427B0(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *(v2 + 12) = 2081;
}

uint64_t sub_1000427C4()
{
}

void sub_1000427DC(uint64_t a1)
{
  sub_10002C0CC(319, &qword_100CCF058, &qword_100CA6630, &unk_100A32630);
  if (v1 <= 0x3F)
  {
    sub_10002C0CC(319, &unk_100CCF060, &qword_100CA6618, &unk_100A31440);
    if (v2 <= 0x3F)
    {
      sub_10002C0CC(319, &unk_100CCFDD8, &qword_100CB1B20, &unk_100A42150);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_100042948()
{
  v0 = type metadata accessor for URL();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = objc_opt_self();
  sub_100044004();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v2 + 8))(v6, v0);
  v11 = sub_100042A88(7496033, 0xE300000000000000, 0, v10, v7);

  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = v11;

  sub_100674F68(&v13);

  return v13;
}

uint64_t sub_100042A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [a5 URLsForResourcesWithExtension:v8 subdirectory:a3 inBundleWithURL:a4];

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for URL();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_100042B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationsState(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100042C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationsState(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100042CB8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE0C58, &unk_100AA4CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042D60()
{

  return swift_slowAlloc();
}

uint64_t sub_100042D88()
{

  return type metadata accessor for WeatherDataOverrides(0);
}

uint64_t sub_100042DA8(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  *(v14 + 16) = a1;
  *(v14 + 24) = a2 & 1;
  *(v14 + 25) = a3;
  *(v14 + 26) = a4;
  *(v14 + 27) = a5;
  *(v14 + 32) = a6;
  *(v14 + 40) = a7;
  *(v14 + 48) = a8;
  *(v14 + 56) = a9;
  *(v14 + 64) = a10;
  *(v14 + 72) = a11;
  *(v14 + 80) = a12;
  *(v14 + 88) = a13 & 1;
  *(v14 + 89) = a14;
  return v14;
}

uint64_t sub_100042E88@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

unint64_t sub_100042F54()
{
  result = qword_100CA34F8;
  if (!qword_100CA34F8)
  {
    v3 = sub_1000405D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for NSRunLoop, v3, v0, v1);
    atomic_store(result, &qword_100CA34F8);
  }

  return result;
}

uint64_t *sub_100042FB0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *sub_100043010(uint64_t *a1)
{
  sub_100003928();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_10004306C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000430B4(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  sub_100040690();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for Debouncer();
  swift_allocObject();
  v4[22] = sub_100088400(v9);
  static OS_dispatch_queue.main.getter();
  sub_1000FD138();
  v4[23] = sub_100088400(v10);
  static OS_dispatch_queue.main.getter();
  sub_1000FD138();
  v4[24] = sub_100088400(v11);
  static Settings.LocationIntelligence.Debug.Notifications.debugSendPredictedLocationNotificationAfterTogglingFeature.getter();
  sub_10022C350(&qword_100CC84C0, &unk_100A65F50);
  swift_allocObject();
  v4[25] = SettingProperty.init(_:)();
  sub_100013188(a1, (v4 + 2));
  sub_100013188(a2, (v4 + 7));
  sub_100013188(a3, (v4 + 12));
  sub_100013188(a4, (v4 + 17));
  return v4;
}

void *sub_1000431CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CDEF58, &qword_100A8E858);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v12)
    {
      v5 = sub_10002D7F8(v11, v12);
      v6 = __chkstk_darwin(v5);
      v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = sub_1000406D4(&v13, *v8);
      sub_100006F14(v11);
      result = type metadata accessor for AppStoreReviewManager();
      a2[3] = result;
      a2[4] = &off_100C5A380;
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100043360@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB1450, &qword_100A419C0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      v5 = type metadata accessor for AppStoreReviewPrivacySampler();
      v6 = swift_allocObject();
      sub_100013188(&v9, v6 + 16);
      result = sub_100013188(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_100C4F5F8;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10004346C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD17E8, &qword_100A76BE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    sub_1000161C0(v15, v16);
    v12 = sub_10002D88C();
    sub_10004363C(v12 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v10);

    (*(v5 + 32))(v7, v10, v4);
    type metadata accessor for TimeManager();
    swift_allocObject();
    v13 = sub_100043B9C(v7);
    result = sub_100006F14(v15);
    *a2 = v13;
    a2[1] = &off_100C4AC68;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004363C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043718(uint64_t a1)
{

  return sub_10003FDA0(a1, v1);
}

void sub_100043730()
{
  v0[562] = v1[16];
  v0[560] = v1[17];
  v0[558] = v1[18];
  v0[556] = v1[19];
  v0[554] = v1[20];
}

uint64_t sub_10004375C@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{
  v4 = *(a1 - 256);
  v5 = *(v2 - 192);

  return sub_100073030(v4, v5, a2);
}

void *sub_1000437A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 40);

  return sub_1000161C0((a1 + 16), v2);
}

uint64_t sub_1000437F4(uint64_t a1)
{
  sub_100024D10(a1, 1, v1);
}

uint64_t sub_100043840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 264);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_100043874(uint64_t a1)
{

  return ShortDescription.init(name:_:)();
}

uint64_t sub_1000438AC(uint64_t a1, uint64_t a2)
{

  return AirQualityScaleCategory.init(description:number:color:recommendation:range:glyph:)();
}

void *sub_100043908()
{

  return v0;
}

uint64_t sub_100043938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10004399C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1000439B4()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000439D8()
{
  result = v0;
  *(v2 - 144) = v1;
  return result;
}

unint64_t sub_1000439FC(uint64_t a1)
{

  return sub_1005F6F6C(a1);
}

__n128 sub_100043A30@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  v3 = *(v1 + 112);
  *(a1 + 64) = *(v1 + 128);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void sub_100043A54()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100043A6C()
{

  return swift_beginAccess();
}

uint64_t sub_100043AF0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_100043B28(uint64_t a1, uint64_t a2)
{

  return Forecast.init(_:metadata:)();
}

uint64_t sub_100043B58()
{
  v3 = *(v1 - 344);

  return sub_10093F8A8(v0, v3);
}

uint64_t sub_100043B9C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *(v6 + 16);
  v14(&v18 - v12, a1, v4, v11);
  swift_beginAccess();
  (v14)(v9, v13, v4);
  sub_10022C350(qword_100CA70F8, &qword_100A32128);
  swift_allocObject();
  v15 = Atomic.init(wrappedValue:)();
  v16 = *(v6 + 8);
  v16(v13, v4);
  *(v2 + 16) = v15;
  swift_endAccess();
  v16(a1, v4);
  return v2;
}

uint64_t type metadata accessor for LocationViewModelFactory(uint64_t a1)
{
  result = qword_100CDFBC0;
  if (!qword_100CDFBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100043D74(uint64_t a1)
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CE1350, &qword_100A8CF10);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_100043E6C()
{
  type metadata accessor for Client();
  v0 = [objc_opt_self() mainBundle];
  return Client.__allocating_init(bundle:)();
}

uint64_t type metadata accessor for LocationViewerStoreObserver(uint64_t a1)
{
  result = qword_100CDAEB8;
  if (!qword_100CDAEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100043F4C(uint64_t a1)
{
  if (!qword_100CC36D0)
  {
    type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC36D0);
    }
  }
}

uint64_t sub_100044004()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = WDWeatherLibraryDirectory();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [objc_opt_self() mainBundle];
  sub_1000380CC(v8);
  v9 = enum case for URL.DirectoryHint.isDirectory(_:);
  v11 = *(v2 + 104);
  if (v10)
  {
    v11(v6, enum case for URL.DirectoryHint.isDirectory(_:), v0);
    sub_10002D5A4();
    URL.append<A>(path:directoryHint:)();
    (*(v2 + 8))(v6, v0);
  }

  v11(v6, v9, v0);
  sub_10002D5A4();
  URL.append<A>(path:directoryHint:)();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_1000441DC(uint64_t a1)
{
  result = type metadata accessor for VFXTestViewState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004426C()
{
  result = qword_100CA3A00;
  if (!qword_100CA3A00)
  {
    v3 = type metadata accessor for Location();
    result = swift_getWitnessTable(&protocol conformance descriptor for Location, v3, v0, v1);
    atomic_store(result, &qword_100CA3A00);
  }

  return result;
}

uint64_t sub_100044308@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_100044358@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AveragesDetailViewStateReducer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C709B8;
  *a1 = result;
  return result;
}

uint64_t sub_1000443B8(uint64_t result, int a2, int a3)
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

double *sub_1000443F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v7[2] = 0.0;
  v22 = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  v29 = _swiftEmptyArrayStorage;
  sub_10006CD24(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100006F64(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v7 + 10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = *(*v7 + 184);
  v17 = sub_10022C350(&qword_100CD1998, &qword_100A76D68);
  sub_10001B350(v8 + v16, 1, 1, v17);
  v8[7] = a7;
  v18 = v24;
  *(v8 + 3) = v23;
  *(v8 + 4) = v18;
  v19 = v26;
  *(v8 + 5) = v25;
  *(v8 + 6) = v19;
  v20 = v28;
  *(v8 + 8) = v27;
  *(v8 + 9) = v20;
  return v8;
}

uint64_t sub_1000446E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (a1)
    {
      v16 = a1;
    }

    else
    {
      v16 = *(v5 + 48);
    }

    v17 = sub_10022C350(&qword_100CD19B8, &qword_100A76DD0);
    swift_allocObject();
    v18 = sub_10004061C(a2, a3, v16);
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v19 = a1;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100042FAC(*((*(v5 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    a4[3] = v17;
    result = sub_100006F64(&qword_100CD19C0, &qword_100CD19B8, &qword_100A76DD0, byte_100AA7C4C);
    a4[4] = result;
    *a4 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10004492C(void *a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CBE1E0, &unk_100A558B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    sub_100013188(&v11, v13);
    sub_1000161C0(a2, a2[3]);
    sub_10022C350(&qword_100CBE1C0, &unk_100A55888);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v9)
    {
      sub_100013188(&v8, &v11);
      sub_100035B30(v13, &v8);
      sub_100035B30(&v11, &v7);
      v5 = type metadata accessor for GeocodeTelemetry();
      swift_allocObject();
      v6 = GeocodeTelemetry.init(backend:clock:)();
      sub_1000161C0(a1, a1[3]);
      v9 = v5;
      v10 = sub_10004306C(&qword_100CBE1E8, &type metadata accessor for GeocodeTelemetry, &protocol conformance descriptor for GeocodeTelemetry);
      *&v8 = v6;
      dispatch thunk of GeocodeManagerType.register(callbacks:)();
      sub_100006F14(&v11);
      sub_100006F14(v13);
      return sub_100006F14(&v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100044AD4()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionManager();
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  (*(v1 + 104))(v3, enum case for Scope.containerSingleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  sub_10022C350(&qword_100CB1448, &qword_100A419B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1450, &qword_100A419C0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100044CD0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SystemClock();
  a1[4] = &protocol witness table for SystemClock;
  sub_100042FB0(a1);
  return SystemClock.init()();
}

char *sub_100044D44(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v3 = v1;
  v3[1] = v2;
  return v3 + v4;
}

uint64_t sub_100044D8C(uint64_t a1, uint64_t a2)
{

  return sub_100095588();
}

uint64_t sub_100044DB8()
{

  return sub_1000D2BC8();
}

uint64_t sub_100044DD0(uint64_t a1)
{

  return sub_100024D10(v2 + v1, 1, a1);
}

uint64_t sub_100044E94()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_100044ED4()
{

  return WeatherMetadata.init(date:expirationDate:attribution:)();
}

uint64_t sub_100044EF4()
{
  sub_10022C350(&qword_100CDEF70, &qword_100A8E868);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1448, &qword_100A419B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1450, &qword_100A419C0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100045004()
{
  v2 = type metadata accessor for Access();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = sub_100006738();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000101A4();
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  sub_1000037D8();
  static Date.distantPast.getter();
  (*(v8 + 104))(v1, enum case for Domain.standard(_:), v6);
  (*(v4 + 104))(v0, enum case for Access.public(_:), v2);
  v11 = sub_10022C350(&qword_100CE2AF8, &unk_100A959B0);
  sub_100003B6C(v11);
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D91238 = result;
  return result;
}

uint64_t sub_1000451C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, char a7)
{
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  sub_100013188(a5, v7 + 48);
  sub_100013188(a6, v7 + 96);
  *(v7 + 88) = a7;
  return v7;
}

uint64_t sub_100045230()
{

  return type metadata accessor for WeatherDataRelevancy(0);
}

uint64_t sub_10004526C()
{

  return sub_1007441CC();
}

uint64_t sub_1000452B0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000452E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SearchViewState.ViewState(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
      v10 = *(a3 + 28);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1000453F8()
{
  *(v2 - 176) = *(v0 + *(v1 + 24));

  return sub_1000B010C();
}

uint64_t sub_10004546C()
{

  return sub_10018EC2C(v0, v1);
}

void sub_1000454A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for LocationViewModel(uint64_t a1)
{
  result = qword_100CD8B18;
  if (!qword_100CD8B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045548(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for LocationFooterViewModel(uint64_t a1)
{
  result = qword_100CB9DE8;
  if (!qword_100CB9DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000455E4(uint64_t a1)
{
  if (!qword_100CB5AC8)
  {
    sub_10022E824(&qword_100CB5AD0, qword_100A492E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB5AC8);
    }
  }
}

uint64_t type metadata accessor for LearnMoreAttributorViewModel(uint64_t a1)
{
  result = qword_100CD0698;
  if (!qword_100CD0698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000456F8(uint64_t a1)
{
  sub_100045694(319, &qword_100CD06A8, &type metadata accessor for WeatherProviderAttribution, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100045694(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10004580C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004580C(uint64_t a1)
{
  if (!qword_100CD06B0)
  {
    sub_10022E824(&qword_100CC4180, &unk_100A5D760);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD06B0);
    }
  }
}

uint64_t type metadata accessor for HomeAndWorkRefinementRowViewModel(uint64_t a1)
{
  result = qword_100CBC148;
  if (!qword_100CBC148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000458BC()
{
  if (!qword_100CD8B40)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD8B40);
    }
  }
}

uint64_t type metadata accessor for LocationInput(uint64_t a1)
{
  result = qword_100CDD930;
  if (!qword_100CDD930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045968(uint64_t a1)
{
  sub_10002DA74();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = type metadata accessor for Date();
    if (v4 <= 0x3F)
    {
      sub_10002C1D0(319, &qword_100CBC8D8, &type metadata accessor for CurrentLocation, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for UIUserInterfaceSizeClass(319);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_10000D054();
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_100062FB8(319);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          v2 = type metadata accessor for AppConfiguration();
          if (v11 <= 0x3F)
          {
            sub_100063020();
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_10002C1D0(319, &qword_100CB8F20, type metadata accessor for PreviewLocation, &type metadata accessor for Optional);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_10002C1D0(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest, &type metadata accessor for Array);
                v2 = v16;
                if (v17 <= 0x3F)
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
  }

  return v2;
}

uint64_t sub_100045CFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v5 = type metadata accessor for ListViewModelFactory(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ListViewModelFactory(uint64_t a1)
{
  result = qword_100CC4040;
  if (!qword_100CC4040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045DC4(uint64_t a1)
{
  sub_100045F70(319, &qword_100CC36D0, &type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind);
  if (v1 <= 0x3F)
  {
    sub_100045F70(319, &qword_100CC4050, type metadata accessor for ActualListInput);
    if (v2 <= 0x3F)
    {
      sub_100045F70(319, &unk_100CC4058, type metadata accessor for ListViewModel);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100045F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100045FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ContentStatusBanner(uint64_t a1)
{
  result = qword_100CD2B98;
  if (!qword_100CD2B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100046084(uint64_t a1)
{
  sub_10000BB3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for ListViewModel(uint64_t a1)
{
  result = qword_100CD15B8;
  if (!qword_100CD15B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100046154(uint64_t a1)
{
  sub_10009AFB8(319, &qword_100CD15C8, type metadata accessor for ListLocationViewModel, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10009AFB8(319, &qword_100CD15D0, type metadata accessor for ListLocationViewModel, &type metadata accessor for Array);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_100007760();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v8 = type metadata accessor for LearnMoreAttributorViewModel(319);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_1000465B4();
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_10009AFB8(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_10004635C(uint64_t a1)
{
  type metadata accessor for LocationModel();
  if (v1 <= 0x3F)
  {
    sub_10013CAE0(319, &qword_100CAEAA0, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ListLocationRowPrimaryText(319);
      if (v3 <= 0x3F)
      {
        sub_10001DF1C(319, &qword_100CA3940, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          sub_10001DF1C(319, &unk_100CEA850, &type metadata accessor for TimeZone);
          if (v5 <= 0x3F)
          {
            sub_10013CAE0(319, &qword_100CA45C0, &type metadata for String);
            if (v6 <= 0x3F)
            {
              type metadata accessor for WeatherConditionBackgroundModel();
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

void sub_10004652C(uint64_t a1)
{
  sub_10001DF1C(319, &qword_100CA3940, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1000465B4()
{
  if (!qword_100CD15D8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD15D8);
    }
  }
}

void *sub_100046630(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA738, &qword_100A4FE40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v45)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740, &qword_100A4FE48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v43)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC308, &qword_100A6BCF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v41)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v39)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC310, &qword_100A6BCF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D8, &qword_100A74D90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E0, &unk_100A67980);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v33)
  {
    v3 = sub_10002D7F8(v42, v43);
    v4 = __chkstk_darwin(v3);
    v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = *v6;
    v9 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
    v31[3] = v9;
    v31[4] = &off_100C58978;
    v31[0] = v8;
    type metadata accessor for ListViewModelFactory(0);
    v10 = swift_allocObject();
    v11 = sub_10002D7F8(v31, v9);
    v12 = __chkstk_darwin(v11);
    v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = *v14;
    v17 = (v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundTimeDataFactory);
    v17[3] = v9;
    v17[4] = &off_100C58978;
    *v17 = v16;
    v18 = OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___listAnimationKind;
    v19 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
    sub_10001B350(v10 + v18, 1, 1, v19);
    *(v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___allListVfxBackgroundsEnabled) = 2;
    v20 = v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___listVfxCellsEnabled;
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedInput;
    v22 = type metadata accessor for ActualListInput(0);
    sub_10001B350(v10 + v21, 1, 1, v22);
    v23 = OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedModel;
    v24 = type metadata accessor for ListViewModel(0);
    sub_10001B350(v10 + v23, 1, 1, v24);
    *(v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedToPreprocess) = 0;
    *(v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedByCachedModel) = 0;
    v25 = (v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_myLocationString);
    v26 = [objc_opt_self() mainBundle];
    v46._object = 0x8000000100AD7E90;
    v27._countAndFlagsBits = 0x7461636F4C20794DLL;
    v27._object = 0xEB000000006E6F69;
    v46._countAndFlagsBits = 0xD000000000000039;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v46);

    *v25 = v29;
    v30 = OBJC_IVAR____TtC7Weather20ListViewModelFactory_logger;
    sub_100046E64();
    *(v10 + v30) = OS_os_log.init(subsystem:category:)();
    sub_100013188(&v44, v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundModelFactory);
    sub_100013188(&v40, v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherEventDescriptionStringBuilder);
    sub_100013188(&v38, v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_appConfigurationManager);
    sub_100013188(&v36, v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_listViewTipManager);
    sub_100013188(&v34, v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_notificationsOptInStatusFactory);
    *(v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_forceDisplayHomeAndWorkUI) = 0;
    sub_100013188(&v32, v10 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherProviderAttributionCacheManager);
    sub_100006F14(v31);
    sub_100006F14(v42);
    return v10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_100046C24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4458, &qword_100A96990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(a1, a1[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
    if (v6 != 2)
    {
      v5 = type metadata accessor for WeatherConditionBackgroundModelFactory();
      swift_allocObject();
      result = WeatherConditionBackgroundModelFactory.init(gradientManager:automationEnabled:isDemoPresetActive:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for WeatherConditionBackgroundModelFactory;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100046D6C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_100046E1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubListViewTipManager();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C463A8;
  *a1 = result;
  return result;
}

unint64_t sub_100046E64()
{
  result = qword_100CA2E40;
  if (!qword_100CA2E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA2E40);
  }

  return result;
}

uint64_t sub_100046EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v5 = type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for WeatherConditionBackgroundModelInputFactory(uint64_t a1)
{
  result = qword_100CE2B48;
  if (!qword_100CE2B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100046F64(uint64_t a1)
{
  sub_100045FC4(319, &qword_100CC36D0, &type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind);
  if (v1 <= 0x3F)
  {
    sub_100045FC4(319, &unk_100CE2B58, &type metadata accessor for BackgroundAnimationKind);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for LocationViewerViewModel(uint64_t a1)
{
  result = qword_100CDCB78;
  if (!qword_100CDCB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000470E4(uint64_t a1)
{
  sub_100063928(319, &qword_100CB7230, &type metadata accessor for WeatherCondition, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100063928(319, &unk_100CB7238, type metadata accessor for ConditionPickerMenuViewModel.Row, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000471D8(uint64_t a1)
{
  sub_100063928(319, &qword_100CB7230, &type metadata accessor for WeatherCondition, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

Swift::String *sub_1000472A8()
{
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x8000000100AC20A0;
  v2._countAndFlagsBits = 1937204558;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000021;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  v0[1] = v4;
  return v0;
}

void *sub_10004734C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6420, &qword_100A61DD0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    HourPrecipitationChartViewModelFactory = type metadata accessor for NextHourPrecipitationChartViewModelFactory();
    swift_allocObject();
    result = NextHourPrecipitationChartViewModelFactory.init(leadingPrecipitationValueRule:)();
    a2[3] = HourPrecipitationChartViewModelFactory;
    a2[4] = &protocol witness table for NextHourPrecipitationChartViewModelFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004743C()
{
  sub_10022C350(&qword_100CC9568, &qword_100A677D8);
  swift_allocObject();
  return StringBuilder.init(_:)();
}

uint64_t sub_100047498()
{
  v0 = type metadata accessor for SunriseSunsetNightRule();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SunriseSunsetDayRule();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SunriseSunsetMorningRule();
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SunriseSunsetPolarRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  SunriseSunsetPolarRule.init()();
  SunriseSunsetMorningRule.init()();
  SunriseSunsetDayRule.init()();
  SunriseSunsetNightRule.init()();
  type metadata accessor for Date();
  type metadata accessor for SunriseSunsetDescriptionContext();
  v13 = static RuleBuilder.buildBlock<A, B, C, D>(_:_:_:_:)();
  (*(v18 + 8))(v2, v0);
  (*(v17 + 8))(v5, v3);
  (*(v16 + 8))(v8, v6);
  (*(v10 + 8))(v12, v9);
  return v13;
}

void *sub_1000477BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9558, &qword_100A677C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D0, &unk_100A67970);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for LocationViewConfigurationFactory();
    swift_allocObject();
    result = sub_100047974(&v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_100C59168;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100047974(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_100013188(a1, v3 + 16);
  sub_100013188(a2, v3 + 56);
  sub_100013188(a3, v3 + 96);
  return v3;
}

uint64_t sub_1000479D8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      type metadata accessor for WeatherDataModel();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        type metadata accessor for WeatherData.CachingState(0);
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[7];
        }

        else
        {
          type metadata accessor for WeatherData.WeatherStatisticsState(0);
          sub_100003928();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[8];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
            v11 = a4[9];
          }
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

double *sub_100047BE0(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = type metadata accessor for WeatherDataConfiguration();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v14 - 8);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  v29 = v19;
  sub_100066840(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
  sub_100047F1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v20 = UnfairLock.init(options:)();
  v6[6] = &_swiftEmptyDictionarySingleton;
  v6[2] = v20;
  v6[3] = a5;
  v6[4] = a6;

  a1(&v29, v21);
  sub_100047FA4(v29 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v17);

  AppConfiguration.weatherData.getter();
  v22 = type metadata accessor for AppConfiguration();
  (*(*(v22 - 8) + 8))(v17, v22);
  WeatherDataConfiguration.extendedRefreshHintInterval.getter();
  v24 = v23;

  (*(v9 + 8))(v13, v28);
  v6[5] = v24;
  return v6;
}

unint64_t sub_100047F1C()
{
  result = qword_100CA2D58;
  if (!qword_100CA2D58)
  {
    v3 = sub_10022E824(&qword_100CA2D50, &qword_100A2C490);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CA2D58);
  }

  return result;
}

uint64_t sub_100047FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfigurationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004802C()
{
  result = qword_100CDEF80;
  if (!qword_100CDEF80)
  {
    v3 = type metadata accessor for NetworkActivityManager();
    result = swift_getWitnessTable(asc_100A4A748, v3, v0, v1);
    atomic_store(result, &qword_100CDEF80);
  }

  return result;
}

uint64_t sub_100048084(void (*a1)(uint64_t *__return_ptr, double))
{
  v2 = v1;
  v4 = type metadata accessor for WidgetConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppConfigurationState(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(&v22, v9);
  sub_100066BF8(v22 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v11, type metadata accessor for AppConfigurationState);

  AppConfiguration.widget.getter();
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v12 + 8))(v11);
  WidgetConfiguration.timelineReloadDebouncingInterval.getter();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  if (qword_100CA2738 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000703C(v15, qword_100D90C00);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "Debounced widget timeline reload requests will debounce in intervals of %fs", v18, 0xCu);
  }

  sub_10022C350(&qword_100CBCF90, &unk_100A53DE0);
  swift_allocObject();
  v19 = Debounce.init(delay:block:)();

  *(v2 + 16) = v19;
  return v2;
}

uint64_t sub_100048364()
{
  *(v0 + 48) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  ObservationRegistrar.init()();
  return v0;
}

void *sub_10004839C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for AppContinuationBridge(0);
      swift_allocObject();
      result = sub_100048758(v8, v9, v10, v11, v6, v7);
      a2[3] = v5;
      a2[4] = &off_100C50230;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppContinuationBridge(uint64_t a1)
{
  result = qword_100CAFDD0;
  if (!qword_100CAFDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048518(uint64_t a1)
{
  if (!qword_100CAFDE0)
  {
    type metadata accessor for OpenL2Descriptor(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CAFDE0);
    }
  }
}

void sub_100048570(uint64_t a1)
{
  sub_100066DA4(319, &qword_100CAEE10, &type metadata accessor for Location, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100066DA4(319, &unk_100CDBBC0, type metadata accessor for CLLocationCoordinate2D, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10013CAE0(319, &qword_100CA45C0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100066DA4(319, &qword_100CA3940, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000486F4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000486F4(uint64_t a1)
{
  if (!qword_100CE5820)
  {
    sub_100066E08();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE5820);
    }
  }
}

void *sub_100048758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
  v14 = type metadata accessor for OpenL2Descriptor(0);
  sub_10001B350(v6 + v13, 1, 1, v14);
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  return v6;
}

void sub_1000487EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(v5 + a4[10]) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[9];
  }

  sub_10001B350(v5 + v11, v4, v4, v10);
}

void sub_1000488E8(uint64_t a1)
{
  sub_1000414F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000489C4()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE3A78, &unk_100A969B0);
  RegistrationContainer.register<A>(_:name:factory:)();
  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  return (*(v1 + 8))(v3, v0);
}

void *sub_100048AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a6;
  v27 = a9;
  sub_100042FB0(v25);
  sub_100003B20();
  (*(v15 + 32))();
  v16 = swift_allocObject();
  sub_10002D7F8(v25, v26);
  sub_100007FD0();
  v18 = __chkstk_darwin(v17);
  v20 = (&v25[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = sub_100048C74(a1, a2, *v20, v16, a5, a7, a8, a10);
  sub_100006F14(v25);
  return v22;
}

void *sub_100048C74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
  v20 = &off_100C58978;
  *&v18 = a3;
  v14 = OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___locationAnimationKind;
  v15 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_10001B350(a4 + v14, 1, 1, v15);
  sub_10001B350(a4 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___listAnimationKind, 1, 1, v15);
  v16 = OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_logger;
  sub_100046E64();
  *(a4 + v16) = OS_os_log.init(subsystem:category:)();
  *(a4 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_hasPrewarmDone) = 0;
  a4[2] = a1;
  a4[3] = a7;
  a4[4] = a2;
  a4[5] = a8;
  sub_100013188(&v18, a4 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_weatherConditionBackgroundTimeDataFactory);
  return a4;
}

void *sub_100048D98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1D8, &qword_100A558A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_100013188(&v17, v19);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1C0, &unk_100A55888);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100013188(&v15, &v17);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1C8, &qword_100A55898);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    sub_100013188(&v13, &v15);
    sub_100035B30(v19, &v13);
    sub_100035B30(&v17, v12);
    sub_100035B30(&v15, v11);
    v5 = sub_10002D7F8(v11, v11[3]);
    v6 = __chkstk_darwin(v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8, v6);
    v10 = sub_100048FE0(&v13, v12, v8);
    sub_100006F14(v11);
    a2[3] = type metadata accessor for WeatherDataVisibleLocationLoadingTelemetry(0);
    a2[4] = &off_100C7C2F8;
    *a2 = v10;
    sub_100006F14(&v15);
    sub_100006F14(&v17);
    return sub_100006F14(v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100048FE0(void *a1, void *a2, uint64_t a3)
{
  v17 = type metadata accessor for GCDSerialDispatchQueueFactory(0);
  v18 = &off_100C6A930;
  v6 = sub_100042FB0(v16);
  sub_10004911C(a3, v6);
  type metadata accessor for WeatherDataVisibleLocationLoadingTelemetry(0);
  v7 = swift_allocObject();
  v8 = sub_10002D7F8(v16, v17);
  v9 = __chkstk_darwin(v8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_1000679D0(a1, a2, v11, v7);
  sub_100006F14(v16);
  return v13;
}

uint64_t sub_10004911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCDSerialDispatchQueueFactory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049180()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D38);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000491E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v11 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_100040690();
  (*(v13 + 16))(v17, a3, v11);
  sub_100049418();
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100067CC8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(v13 + 8))(a3, v11);
  return v18;
}

unint64_t sub_100049418()
{
  result = qword_100CA2E50;
  if (!qword_100CA2E50)
  {
    v3 = type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_queue.Attributes, v3, v0, v1);
    atomic_store(result, &qword_100CA2E50);
  }

  return result;
}

void sub_100049478()
{
  v1 = [objc_opt_self() currentDevice];
  [v1 beginGeneratingDeviceOrientationNotifications];

  sub_100068580();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:"pushOrientationData" name:UIDeviceOrientationDidChangeNotification object:0];
}

uint64_t sub_100049534(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100049540()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  *(v0 - 160) = *(v0 - 120);
  *(v0 - 152) = *(v0 - 112);
  *(v0 - 136) = v2;
  *(v0 - 128) = v3;

  return type metadata accessor for IntentDialog();
}

uint64_t sub_1000495A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000495D0(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t sub_1000495EC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 544);

  return sub_1000833D8(a1, a2, v4);
}

uint64_t sub_100049660()
{
  v2 = *(v0 - 264);

  return sub_1002B773C(v2, type metadata accessor for LocationWeatherDataState);
}

id sub_1000496E8()
{
  v3 = *(v1 + 3776);

  return [v0 v3];
}

void sub_100049700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 24) = &a9;

  sub_10055C7F8(v20 - 120, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10004971C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006F64(a1, a2, a3, &protocol conformance descriptor for ShortDescription<A>);
}

uint64_t sub_1000497EC()
{
  v2 = *(v0 + *(v1 + 20));
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100049818()
{

  return sub_10047E5A8(v0, type metadata accessor for ListInput);
}

uint64_t sub_1000498B0(uint64_t a1)
{

  return swift_once();
}

void sub_1000498FC()
{
  *(v0 - 432) = 0;
  *(v0 - 648) = 0;
  *(v0 - 656) = 0;
  *(v0 - 864) = 0;
  *(v0 - 704) = 0;
}

uint64_t sub_10004993C()
{
  sub_10001B350(v1, 0, 1, v0);
  v3 = *(v2 - 88);

  return sub_100549714(v1, v3);
}

uint64_t sub_1000499B8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000499D8(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2082;
}

uint64_t sub_100049A54@<X0>(uint64_t a1@<X8>)
{

  return sub_100035B30(a1, v1 - 256);
}

uint64_t sub_100049AD4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100049AF4()
{

  return Definition.inScope(_:)();
}

id sub_100049B94()
{
  v3 = *(v0 + 3744);

  return [v1 v3];
}

uint64_t sub_100049C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a15 = v17;
  a16 = 0;

  return sub_10004F1B0(&a10, v16);
}

void sub_100049C74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100049CC4()
{

  return sub_10000703C(v0, v1);
}

uint64_t sub_100049D00()
{
  sub_10001B350(*(v0 - 288), 1, 1, *(v0 - 208));
  sub_10001B350(*(v0 - 280), 1, 1, *(v0 - 176));
  sub_10001B350(*(v0 - 272), 1, 1, *(v0 - 192));
  return *(v0 - 264);
}

uint64_t sub_100049DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100049E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_100049E6C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100049F28()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100049F50(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100049FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100983AE4(a1, a2, a3, sub_1008A56F0);
}

uint64_t sub_100049FC4()
{

  return swift_beginAccess();
}

uint64_t sub_10004A074@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = &enum case for InterfaceOrientation.unknown(_:);
  if ((a2 & 1) == 0 && a1 <= 4)
  {
    v4 = *(&off_100C7AB78 + a1);
  }

  v5 = *v4;
  v6 = type metadata accessor for InterfaceOrientation();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t sub_10004A100()
{
  v1 = v0;
  v106 = type metadata accessor for AppConfiguration();
  v108 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LocationAccessData();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v124 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v4;
  __chkstk_darwin(v5);
  v126 = &v90 - v6;
  v116 = type metadata accessor for CellularRadioAccessTechnology();
  v125 = *(v116 - 8);
  __chkstk_darwin(v116);
  v121 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v7;
  __chkstk_darwin(v8);
  v129 = &v90 - v9;
  started = type metadata accessor for StartMethod();
  v122 = *(started - 8);
  v123 = started;
  __chkstk_darwin(started);
  v119 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v11;
  __chkstk_darwin(v12);
  v120 = &v90 - v13;
  v14 = sub_10022C350(&qword_100CB5498, &qword_100A78340);
  __chkstk_darwin(v14 - 8);
  v112 = &v90 - v15;
  v16 = type metadata accessor for Locale.Language();
  v17 = *(v16 - 8);
  v117 = v16;
  v118 = v17;
  __chkstk_darwin(v16);
  v113 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = &v90 - v20;
  v111 = type metadata accessor for Locale();
  v114 = *(v111 - 1);
  __chkstk_darwin(v111);
  v110 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v90 - v23;
  v25 = sub_10022C350(&qword_100CA3DD8, &qword_100A2DEB0);
  __chkstk_darwin(v25 - 8);
  v27 = &v90 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TimeZone();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TimeZone.current.getter();
  Date.init()();
  v36 = TimeZone.secondsFromGMT(for:)();
  (*(v29 + 8))(v31, v28);
  result = (*(v33 + 8))(v35, v32);
  if (v36 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v36 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v115 = v36;
  static Locale.current.getter();
  v38 = v109;
  Locale.language.getter();
  v39 = *(v114 + 8);
  v40 = v111;
  v39(v24, v111);
  Locale.Language.languageCode.getter();
  v41 = *(v118 + 8);
  v42 = v38;
  v43 = v117;
  v41(v42, v117);
  v44 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v27, 1, v44) == 1)
  {
    sub_1000180EC(v27, &qword_100CA3DD8, &qword_100A2DEB0);
    v118 = 0xE100000000000000;
    v114 = 45;
  }

  else
  {
    v114 = Locale.LanguageCode.identifier.getter();
    v118 = v45;
    (*(*(v44 - 8) + 8))(v27, v44);
  }

  v46 = v110;
  static Locale.current.getter();
  v47 = v113;
  Locale.language.getter();
  v39(v46, v40);
  v48 = v112;
  Locale.Language.region.getter();
  v41(v47, v43);
  v49 = type metadata accessor for Locale.Region();
  if (sub_100024D10(v48, 1, v49) == 1)
  {
    sub_1000180EC(v48, &qword_100CB5498, &qword_100A78340);
    v117 = 0xE100000000000000;
    v113 = 45;
  }

  else
  {
    v113 = Locale.Region.identifier.getter();
    v117 = v50;
    (*(*(v49 - 8) + 8))(v48, v49);
  }

  v112 = 0x8000000100ABB700;
  v51 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  swift_beginAccess();
  v52 = *(v122 + 16);
  v110 = (v122 + 16);
  v111 = v52;
  v53 = v120;
  (v52)(v120, v1 + v51, v123);
  sub_1000161C0(v1 + 16, v1[19]);
  dispatch thunk of CellularRadioAccessTechnologyProviderType.cellularRadioAccessTechnology.getter();
  sub_1000161C0(v1 + 21, v1[24]);
  v54 = v126;
  dispatch thunk of LocationAccessDataProviderType.locationAccessData.getter();
  sub_1000161C0(v1 + 31, v1[34]);
  v55 = v104;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v109 = AppConfiguration.treatmentIDs.getter();
  v56 = *(v108 + 8);
  v57 = v106;
  v56(v55, v106);
  sub_1000161C0(v1 + 31, v1[34]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v108 = AppConfiguration.segmentSetIDs.getter();
  v56(v55, v57);
  v106 = v1[4];
  v99 = SessionManager.tracker.getter();
  v58 = v123;
  (v111)(v119, v53, v123);
  v59 = v127;
  v60 = *(v127 + 16);
  v102 = v127 + 16;
  v104 = v60;
  (v60)(v124, v54, v128);
  v61 = v125;
  v62 = *(v125 + 16);
  v100 = v125 + 16;
  v101 = v62;
  v62(v121, v129, v116);
  v63 = v122;
  v64 = *(v122 + 80);
  v65 = (v64 + 56) & ~v64;
  v97 = v65;
  v66 = (v103 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = *(v59 + 80);
  v98 = v66;
  v68 = (v67 + v66 + 16) & ~v67;
  v69 = *(v61 + 80);
  v95 = v68;
  v70 = (v107 + v69 + v68) & ~v69;
  v103 = v64 | v67 | v69;
  v93 = v70;
  v107 = (v105 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v114;
  *(v71 + 16) = v115;
  v73 = v117;
  v74 = v118;
  *(v71 + 24) = v72;
  *(v71 + 32) = v74;
  v117 = v73;
  v118 = v74;
  *(v71 + 40) = v113;
  *(v71 + 48) = v73;
  v75 = *(v63 + 32);
  v96 = v63 + 32;
  v105 = v75;
  v75(v71 + v65, v119, v58);
  v76 = (v71 + v66);
  *v76 = 0xD000000000000011;
  v76[1] = v112;
  v94 = *(v127 + 32);
  v77 = v124;
  v94(v71 + v68, v124, v128);
  v92 = *(v125 + 32);
  v78 = v116;
  v92(v71 + v70, v121, v116);
  *(v71 + v107) = v109;
  v79 = v91;
  *(v71 + v91) = v108;

  Tracker.transaction(block:)();

  v80 = v119;
  v81 = v123;
  (v111)(v119, v120, v123);
  v82 = v77;
  v83 = v128;
  (v104)(v82, v126, v128);
  v84 = v121;
  v101(v121, v129, v78);
  v85 = swift_allocObject();
  v86 = v114;
  *(v85 + 16) = v115;
  v87 = v118;
  *(v85 + 24) = v86;
  *(v85 + 32) = v87;
  v88 = v117;
  *(v85 + 40) = v113;
  *(v85 + 48) = v88;
  v105(v85 + v97, v80, v81);
  v89 = (v85 + v98);
  *v89 = 0xD000000000000011;
  v89[1] = v112;
  v94(v85 + v95, v124, v83);
  v92(v85 + v93, v84, v78);
  *(v85 + v107) = v109;
  *(v85 + v79) = v108;
  SessionManager.transaction(_:)();

  (*(v127 + 8))(v126, v83);
  (*(v125 + 8))(v129, v78);
  return (*(v122 + 8))(v120, v81);
}

uint64_t sub_10004AEF0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentState(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 16))(v14, v4);
  v7 = v14[0];
  v8 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_1000690C8(v7 + v8, v6);

  v9 = v6[3];
  sub_10006912C(v6);
  v10 = **(&off_100C5C560 + v9);
  v11 = type metadata accessor for CellularRadioAccessTechnology();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

void sub_10004B028()
{
  v1 = v0;
  v2 = type metadata accessor for TemperatureScaleData();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v26 = UnitManager.temperature.getter();

  v9 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_lastPushedTemperatureUnit;
  v10 = *(v0 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_lastPushedTemperatureUnit);
  if (v10 && (sub_10000C70C(0, &qword_100CA52E0, NSObject_ptr), v11 = v10, v12 = static NSObject.== infix(_:_:)(), v11, (v12 & 1) != 0))
  {
    v13 = v26;
  }

  else
  {
    v14 = v26;
    TemperatureScaleData.init(_:)();
    v24 = *(v1 + 32);
    SessionManager.tracker.getter();
    v25 = v9;
    v22 = *(v3 + 16);
    v22(v5, v8, v2);
    v15 = *(v3 + 80);
    v23 = v1;
    v16 = (v15 + 16) & ~v15;
    v17 = swift_allocObject();
    v20[1] = v4;
    v21 = *(v3 + 32);
    v21(v17 + v16, v5, v2);
    Tracker.transaction(block:)();

    v22(v5, v8, v2);
    v18 = swift_allocObject();
    v21(v18 + v16, v5, v2);
    SessionManager.transaction(_:)();

    (*(v3 + 8))(v8, v2);
    v19 = *(v23 + v25);
    *(v23 + v25) = v26;
  }
}

void sub_10004B33C()
{
  sub_10004B028();
  v1 = [objc_opt_self() defaultCenter];
  updated = static UnitManager.Notification.didUpdateUnits.getter();
  [v1 addObserver:v0 selector:"pushTemperatureScaleData" name:updated object:0];
}

void sub_10004B3D8()
{
  v1 = type metadata accessor for UserData();
  v71 = *(v1 - 8);
  v2 = *(v71 + 64);
  __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v58 - v4;
  v6 = type metadata accessor for Calendar.Identifier();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v8 - 8);
  v78 = &v58 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v81 = type metadata accessor for UserIdentity();
  v17 = *(v81 - 1);
  __chkstk_darwin(v81);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Calendar();
  v73 = *(v20 - 8);
  v74 = v20;
  __chkstk_darwin(v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DateComponents();
  __chkstk_darwin(v23);
  v82 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_purpose))
  {
    v68 = v26;
    v69 = v24;
    v70 = v13;
    v66 = v2;
    v67 = v5;
    v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = v1;
    v72 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    static Calendar.current.getter();
    sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
    v27 = type metadata accessor for Calendar.Component();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100A2D320;
    v32 = v31 + v30;
    v33 = *(v28 + 104);
    v33(v32, enum case for Calendar.Component.year(_:), v27);
    v33(v32 + v29, enum case for Calendar.Component.month(_:), v27);
    sub_10004BCB0(v31);
    sub_1000161C0(v82 + 6, v82[9]);
    dispatch thunk of IdentityServiceType.identity.getter();
    UserIdentity.startDate.getter();
    v34 = *(v17 + 8);
    v62 = v19;
    v63 = v17 + 8;
    v59 = v34;
    v34(v19, v81);
    v35 = v72;
    Calendar.dateComponents(_:from:)();

    v36 = v79;
    v37 = *(v80 + 8);
    v61 = v80 + 8;
    v60 = v37;
    v37(v16, v79);
    v38 = v74;
    v39 = *(v73 + 8);
    v39(v22, v74);
    DateComponents.day.setter();
    v41 = v75;
    v40 = v76;
    v42 = v77;
    (*(v76 + 104))(v75, enum case for Calendar.Identifier.gregorian(_:), v77);
    Calendar.init(identifier:)();
    (*(v40 + 8))(v41, v42);
    v43 = v78;
    Calendar.date(from:)();
    v39(v22, v38);
    v44 = sub_100024D10(v43, 1, v36);
    v45 = v81;
    v46 = v82;
    if (v44 == 1)
    {
      (*(v68 + 8))(v35, v69);
      sub_1000180EC(v43, &unk_100CB2CF0, &unk_100A2D7F0);
      return;
    }

    (*(v80 + 32))(v70, v43, v36);
    Date.timeIntervalSince1970.getter();
    v48 = v47 * 1000.0;
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v48 > -9.22337204e18)
    {
      if (v48 < 9.22337204e18)
      {
        sub_1000161C0(v46 + 6, v46[9]);
        v49 = v62;
        dispatch thunk of IdentityServiceType.identity.getter();
        UserIdentity.identifier.getter();
        v59(v49, v45);
        v50 = v67;
        UserData.init(userID:userStartDate:)();
        v82 = v46[4];
        SessionManager.tracker.getter();
        v51 = v71;
        v81 = *(v71 + 16);
        v53 = v64;
        v52 = v65;
        (v81)(v64, v50, v65);
        v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
        v55 = swift_allocObject();
        v80 = *(v51 + 32);
        (v80)(v55 + v54, v53, v52);
        Tracker.transaction(block:)();

        v56 = v67;
        (v81)(v53, v67, v52);
        v57 = swift_allocObject();
        (v80)(v57 + v54, v53, v52);
        SessionManager.transaction(_:)();

        (*(v51 + 8))(v56, v52);
        v60(v70, v79);
        (*(v68 + 8))(v72, v69);
        return;
      }

LABEL_11:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10004BCB0(uint64_t a1)
{
  v4 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_100003C38();
  __chkstk_darwin(v6);
  sub_1000496C0(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v1 && (sub_10022C350(&qword_100CACD08, &qword_100A3C120), v15 = sub_100028228(), *(a1 + 16)))
  {
    sub_10001BD7C();
    while (v16 < *(a1 + 16))
    {
      v17 = sub_10000FC30(v16);
      (a1)(v17);
      v18 = *(v15 + 40);
      sub_100008170();
      v20 = sub_1000667B0(&qword_100CACD10, v19, &protocol conformance descriptor for Calendar.Component);
      sub_10002460C(v20);
      sub_10003C348();
      while (1)
      {
        sub_1000193D8();
        if (v22)
        {
          break;
        }

        v23 = sub_1000228F8();
        (a1)(v23);
        sub_100008170();
        v25 = sub_1000667B0(&qword_100CACD18, v24, &protocol conformance descriptor for Calendar.Component);
        sub_1000694A0(v25);
        v26 = sub_100017720();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v2;
          goto LABEL_12;
        }

        v15 = v2;
      }

      v27 = sub_100003E74(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      sub_100013668();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void *sub_10004BEB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE210, &unk_100A55910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    sub_1000161C0(a1, a1[3]);
    type metadata accessor for SessionManager();
    result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
    if (result)
    {
      v5 = result;
      active = type metadata accessor for ActiveUserAnalyticsManager();
      v7 = swift_allocObject();
      result = sub_100013188(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = active;
      a2[4] = &off_100C67820;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10004BFC4()
{
  result = qword_100CB14E0;
  if (!qword_100CB14E0)
  {
    v3 = sub_10022E824(&qword_100CB14D8, &unk_100A558F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CB14E0);
  }

  return result;
}

void *sub_10004C028(void *a1, uint64_t a2)
{
  v54 = a1;
  sub_10022C350(&qword_100CA34C8, &qword_100A2D518);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v53 - v5;
  sub_10022C350(&qword_100CBE6B8, &qword_100A55F00);
  sub_1000037C4();
  v58 = v7;
  v59 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v55 = v10;
  sub_10022C350(&qword_100CBE6C0, &qword_100A55F08);
  sub_1000037C4();
  v61 = v11;
  v62 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v56 = v14;
  v65 = sub_10022C350(&qword_100CBE6C8, &qword_100A55F10);
  sub_1000037C4();
  v67 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v57 = v17;
  sub_10022C350(&qword_100CBE6D0, &qword_100A55F18);
  sub_1000037C4();
  v68 = v18;
  v69 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v60 = v21;
  sub_10022C350(&qword_100CBE6D8, &qword_100A55F20);
  sub_1000037C4();
  v70 = v22;
  v71 = v23;
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v64 = v25;
  v26 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CBE6E0, &qword_100A55F28);
  swift_allocObject();
  v2[4] = PassthroughSubject.init()();
  v2[5] = &_swiftEmptySetSingleton;
  v66 = v2 + 5;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  *(v2 + OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_resetAccumulator) = 0;
  v32 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_logger;
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v33 = OS_os_log.init(subsystem:category:)();
  *(v2 + v32) = v33;
  v2[2] = v54;
  v2[3] = a2;
  v63 = a2;
  v34 = v33;

  OSSignpostID.init(log:)();
  (*(v28 + 32))(v2 + OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_signpostID, v31, v26);
  v72 = v2[4];
  v35 = objc_opt_self();
  v54 = v35;

  v36 = [v35 mainRunLoop];
  v73[0] = v36;
  v53 = type metadata accessor for NSRunLoop.SchedulerOptions();
  sub_10001B350(v6, 1, 1, v53);
  sub_10000C70C(0, &qword_100CA34E8, NSRunLoop_ptr);
  sub_100006F64(&qword_100CBE6E8, &qword_100CBE6E0, &qword_100A55F28, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100042F54();
  v37 = v55;
  Publisher.receive<A>(on:options:)();
  sub_100018144(v6, &qword_100CA34C8, &qword_100A2D518);

  v72 = _swiftEmptyArrayStorage;
  sub_100007E8C();
  v38 = swift_allocObject();
  sub_10001994C(v38);

  sub_10022C350(&qword_100CBE6F0, &qword_100A55F30);
  sub_100006F64(&qword_100CBE6F8, &qword_100CBE6B8, &qword_100A55F00, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v39 = v56;
  v40 = v58;
  Publisher.scan<A>(_:_:)();

  (*(v59 + 8))(v37, v40);
  sub_100007E8C();
  v41 = swift_allocObject();
  sub_10001994C(v41);
  sub_100006F64(&qword_100CBE700, &qword_100CBE6C0, &qword_100A55F08, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v42 = v61;
  v43 = v57;
  sub_100004354();
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v62 + 8))(v39, v42);
  v44 = [v54 mainRunLoop];
  v72 = v44;
  sub_10001B350(v6, 1, 1, v53);
  sub_100006F64(&qword_100CBE708, &qword_100CBE6C8, &qword_100A55F10, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v45 = v60;
  v46 = v65;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100018144(v6, &qword_100CA34C8, &qword_100A2D518);

  (*(v67 + 8))(v43, v46);
  sub_100007E8C();
  v47 = swift_allocObject();
  sub_10001994C(v47);
  sub_100006F64(&qword_100CBE710, &qword_100CBE6D0, &qword_100A55F18, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v48 = v68;
  v49 = v64;
  sub_100004354();
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v69 + 8))(v45, v48);
  sub_100007E8C();
  v50 = swift_allocObject();
  sub_10001994C(v50);

  sub_100006F64(&qword_100CBE718, &qword_100CBE6D8, &qword_100A55F20, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v51 = v70;
  Publisher<>.sink(receiveValue:)();

  (*(v71 + 8))(v49, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10004C960()
{
  swift_weakDestroy();
  sub_100007E8C();

  return swift_deallocObject();
}

uint64_t sub_10004C9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004CA28()
{
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependencyManager.addWeatherDependencies(from:)();

  sub_10006AC84(v0 + 16);
  sub_10022C350(&qword_100CB2FD0, &qword_100A45748);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10004CAC4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_10004CB4C(uint64_t a1)
{
  v63 = sub_10022C350(&qword_100CB5438, &qword_100A48D60);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v48 - v2;
  v3 = type metadata accessor for OsInstallVariant();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceData();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v48 - v8;
  v9 = sub_10022C350(&qword_100CB5440, &qword_100A48D68);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for DevicePlatform();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v65 = &v48 - v23;
  v24 = type metadata accessor for DeviceInfo();
  v55 = *(v24 - 8);
  v56 = v24;
  __chkstk_darwin(v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DeviceInfo.current.getter();
  v62 = a1;
  v27 = AccessSessionManager.isDiagnosticSubmissionAllowed.getter();
  v64 = v26;
  v28 = DeviceInfo.marketingProductName.getter();
  v30 = v28;
  v31 = v29;
  if (v27)
  {
    DevicePlatform.init(rawValue:)();
    if (sub_100024D10(v11, 1, v12) == 1)
    {
      (v13)[13](v21, enum case for DevicePlatform.unknown(_:), v12);
      if (sub_100024D10(v11, 1, v12) != 1)
      {
        sub_1000180EC(v11, &qword_100CB5440, &qword_100A48D68);
      }
    }

    else
    {
      (v13)[4](v21, v11, v12);
    }
  }

  else
  {
    v32 = v28 == 5459817 && v29 == 0xE300000000000000;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v33 = &enum case for DevicePlatform.iOS(_:);
    }

    else if (v30 == 0x534F63616DLL && v31 == 0xE500000000000000)
    {

      v33 = &enum case for DevicePlatform.macOS(_:);
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v33 = &enum case for DevicePlatform.unknown(_:);
      if (v47)
      {
        v33 = &enum case for DevicePlatform.macOS(_:);
      }
    }

    (v13)[13](v18, *v33, v12);
    (v13)[4](v21, v18, v12);
  }

  v34 = v65;
  (v13)[4](v65, v21, v12);
  v49 = v12;
  v50 = v13;
  bzero(&v66, 0x500uLL);
  uname(&v66);
  String.init(cString:)();
  (v13)[2](v15, v34, v12);
  type metadata accessor for Capabilities();
  v35 = static Capabilities.isInternalBuild()();
  v36 = &enum case for OsInstallVariant.internal(_:);
  if ((v35 & 1) == 0)
  {
    v36 = &enum case for OsInstallVariant.external(_:);
  }

  (*(v51 + 104))(v53, *v36, v52);
  DeviceInfo.productVersion.getter();
  DeviceInfo.buildVersion.getter();
  v37 = v57;
  DeviceData.init(deviceModel:devicePlatform:osInstallVariant:osVersion:osBundleVersion:)();
  v38 = v58;
  v39 = v59;
  (*(v58 + 16))(v54, v37, v59);
  sub_100068374(&qword_100CB5448, &type metadata accessor for DeviceData, &protocol conformance descriptor for DeviceData);
  v40 = v60;
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v41 = type metadata accessor for DataEventTrait();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100A2C3F0;
  (*(v42 + 104))(v44 + v43, enum case for DataEventTrait.unique(_:), v41);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  (*(v61 + 8))(v40, v63);
  (*(v38 + 8))(v37, v39);
  (v50[1])(v65, v49);
  return (*(v55 + 8))(v64, v56);
}

uint64_t type metadata accessor for LocaleMonitor(uint64_t a1)
{
  result = qword_100CBE758;
  if (!qword_100CBE758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004D45C(uint64_t a1)
{
  sub_10000B99C(319, &unk_100CBE768, &type metadata accessor for Locale);
  if (v1 <= 0x3F)
  {
    sub_10000B99C(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_10004D6B0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(a2, a3);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    a4(0);
    result = swift_allocObject();
    result[2] = v8;
    result[3] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D750(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10004D84C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB68, &qword_100A6B420);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730, &unk_100A4FE30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208, &unk_100A55900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1820, &qword_100A76C18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD19F8, &unk_100A9F4F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDEF78, &qword_100A8E870);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6[3])
  {
    type metadata accessor for LocationsOfInterestUpdater();
    swift_allocObject();
    result = sub_10004DB18(v12, v13, v11, v10, v5, v9, v8, v7, v6);
    *a2 = result;
    a2[1] = &off_100C5F928;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10004DB18(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  swift_defaultActor_initialize();
  *(v10 + 208) = 0;
  *(v10 + 112) = a1;
  *(v10 + 120) = a2;
  sub_100035B30(a3, v10 + 128);
  sub_100035B30(a4, v10 + 168);
  *(v10 + 216) = a5;
  sub_100035B30(a6, v10 + 224);
  sub_100035B30(a7, v10 + 264);
  sub_100035B30(a8, v10 + 304);
  sub_100035B30(a9, v10 + 344);
  sub_1000161C0(a6, a6[3]);
  sub_10006CADC(&qword_100CC75C0, v19, type metadata accessor for LocationsOfInterestUpdater, byte_100A63F3C);

  dispatch thunk of SavedLocationsManagerType.addObserver(_:)();

  sub_100006F14(a9);
  sub_100006F14(a8);
  sub_100006F14(a7);
  sub_100006F14(a4);
  sub_100006F14(a3);
  sub_100006F14(a6);
  return v10;
}

uint64_t sub_10004DCA8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 72) = 4;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_10003E2A0(a3, v3 + 32);
  return v3;
}

void sub_10004DCD8()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  v0[2] = v16;
  v0[3] = v14;
  v0[4] = v12;
  v0[5] = v10;
  v0[6] = v8;
  v0[7] = v6;
  sub_100035B30(v4, (v0 + 8));
  v0[13] = v2;
  v21 = type metadata accessor for TaskPriority();
  sub_10001B350(v20, 1, 1, v21);
  sub_100007E8C();
  v22 = swift_allocObject();
  swift_weakInit();
  sub_100035B30(v4, v25);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  sub_10003E2A0(v25, (v23 + 5));

  sub_10000EB8C();
  sub_1006C0138();

  sub_100006F14(v4);
  sub_10000536C();
}

uint64_t sub_10004DE78()
{
  swift_weakDestroy();
  sub_100016D4C();

  return swift_deallocObject();
}

uint64_t sub_10004DEA8()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 40));

  return swift_deallocObject();
}

void *sub_10004DEF0(uint64_t a1, uint64_t a2)
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_1000037D8();
  sub_100040690();
  v2[4] = 0;
  v2[5] = 0;
  static DispatchQoS.unspecified.getter();
  sub_10006CD6C(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100067638(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v2[6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_10004E134()
{
  sub_100013494();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100007F54(v3);
  *v4 = v5;
  v4[1] = sub_10006D190;

  return v7(v1);
}

uint64_t sub_10004E220(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100007F54(v6);
  *v7 = v8;
  v7[1] = sub_10006D0B0;

  return sub_10004E2D8(a1, v3, v4, v5, (v1 + 5));
}

uint64_t sub_10004E2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10006CDB4, 0, 0);
}

uint64_t sub_10004E3CC()
{

  return sub_1002B773C(v0, type metadata accessor for MoonDetailInput);
}

__n128 *sub_10004E468(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957547;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_10004E484()
{

  return sub_10003BCD8();
}

uint64_t sub_10004E4E0(uint64_t a1)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v1;
}

uint64_t sub_10004E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _NativeDictionary._delete(at:)();
}

void sub_10004E584(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 32) = a1;
  *(v2 - 24) = &a2;

  sub_10055DC38();
}

uint64_t sub_10004E5A0(uint64_t a1)
{

  return sub_100024D10(v2 + v1, 1, a1);
}

uint64_t sub_10004E5F0()
{

  return type metadata accessor for DailyForecastComponentViewModel(0);
}

uint64_t sub_10004E634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Section<>.init(header:content:)();
}

uint64_t sub_10004E6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004E738@<X0>(uint64_t a1@<X8>)
{

  return sub_10031694C(v1 + a1, v3, v2);
}

uint64_t sub_10004E764(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10004E798@<X0>(uint64_t a1@<X8>)
{

  return sub_1006A76B8(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_10004E7B8(uint64_t result)
{
  *(v2 - 136) = *(v1 + 16);
  *(v2 - 128) = result;
  return result;
}

uint64_t sub_10004E818(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10004E840()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004E85C()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_10004E884(unint64_t a1@<X8>)
{
  *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v3 + 48) + 16 * a1);
  *v5 = v4;
  v5[1] = v1;
}

void sub_10004E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;

  sub_1005653F4();
}

id sub_10004E8F0(uint64_t a1)
{

  return [v1 stringFromDate:a1];
}

uint64_t sub_10004E928(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TransitionContext(0, a2);

  return sub_100024D10(v2, 1, v3);
}

uint64_t sub_10004E960(uint64_t result)
{
  *(v2 - 328) = v1;
  *(v2 - 320) = result;
  return result;
}

void sub_10004E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;

  sub_100561CF4();
}

uint64_t sub_10004E9D0()
{
}

void sub_10004EA7C(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 32) = a1;
  *(v2 - 24) = &a2;

  sub_1005627A8();
}

uint64_t sub_10004EAE8()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004EB1C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004EBC4(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10004EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;

  sub_100564940();
}

uint64_t sub_10004EC3C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_10004EC84()
{

  return sub_10001B350(v1, 0, 1, v0);
}

uint64_t sub_10004ECB0()
{

  return sub_1001920DC(v0, type metadata accessor for LocationComponentViewModel);
}

uint64_t sub_10004ED04()
{

  return dispatch thunk of Collection.subscript.read();
}

void sub_10004ED28()
{
  v2 = *(v1 - 656);
  *v0 = *(v1 - 648);
  v0[1] = v2;
}

uint64_t sub_10004ED70()
{
}

void sub_10004ED88(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 32) = a1;
  *(v2 - 24) = &a2;

  sub_10055F1CC();
}

uint64_t sub_10004EDA4()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  return sub_10041429C(v4, v5, v6, v7, v8);
}

uint64_t sub_10004EE48()
{

  return swift_beginAccess();
}

void sub_10004EE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;

  sub_10055BD44();
}

uint64_t sub_10004EF00(uint64_t a1, uint64_t a2)
{
  result = sub_10006D318(&qword_100CB2440, a2, type metadata accessor for StubTimeMonitor, aU_24);
  *(a1 + 8) = result;
  return result;
}

Swift::Void __swiftcall AppStateMonitor.applicationDidFinishLaunching(withOptions:)(Swift::OpaquePointer_optional withOptions)
{
  type metadata accessor for MainAction(0);
  sub_100003D98();
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v4, v7, v6, v5);
  sub_100018144(v8, &unk_100CD81B0, &unk_100A3B000);
  sub_1000547B8(v4);
}

uint64_t sub_10004F034(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v7 = *(type metadata accessor for MainAction(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2C3F0;
  sub_10004F14C(a1, v9 + v8);
  sub_10006D53C(a2, v11);
  v12 = v9;
  v13 = 0;
  sub_10004F1B0(v11, a3);
  return sub_100018144(v11, &qword_100CA3510, &unk_100A2D540);
}

uint64_t sub_10004F14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F1B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  sub_100040690();
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v4);
  if (v11)
  {
    return a2(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F2D0(uint64_t a1)
{
  sub_1000955E0(a1, v11, &qword_100CA3510, &unk_100A2D540);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);

  v5 = 0;
  for (i = v2 + 40; ; i += 16)
  {
    if (v3 == v5)
    {

      sub_1000511C0(v11);
      return sub_1000180EC(v11, &qword_100CA3510, &unk_100A2D540);
    }

    if (v5 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(i - 8);

    v7(v8, v11);

    if (*(&v9 + 1))
    {
      if (*(&v9 + 1) == 1)
      {
        sub_1000180EC(v11, &qword_100CA3510, &unk_100A2D540);
      }

      result = sub_1000180EC(v11, &qword_100CA3510, &unk_100A2D540);
      v11[0] = v8[0];
      v11[1] = v8[1];
      v11[2] = v9;
      v12 = v10;
    }

    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004F4C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F518(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F570(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004F624(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F67C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F6D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F72C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F784(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F7D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F830(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F888(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004F940(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F998()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003D98();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10004F9E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FA40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FA98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FAF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FB48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FBA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FBF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FC50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FCA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FD00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FD58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FDB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004FE68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FEC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004FF18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10004FF70()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CA3508, &unk_100A2D530);
  v8 = sub_100011748();
  type metadata accessor for MainAction(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for MainAction, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_100050048(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000500A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100050108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050170(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000501CC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

double sub_100050224@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_10004F14C(v10, v7);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1000547B8(v7);
      }

      else if (*v7 == 2)
      {
        sub_1008DA33C();
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

void sub_100050384(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_10022C350(qword_100CB61A0, &qword_100A64160);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v74 = v5;
  v6 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v73 = v8;
  v9 = sub_10022C350(&qword_100CB6190, &unk_100A8B0B0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v75 = v11;
  v12 = sub_10022C350(&qword_100CB6188, &unk_100A49BB0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v76 = v14;
  v15 = sub_10022C350(&qword_100CB6180, &unk_100A8B0A0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v78 = v17;
  v18 = type metadata accessor for ConfiguredUnitsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  v83 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v69[-v22];
  type metadata accessor for MainAction(0);
  sub_1000037C4();
  v85 = v24;
  v86 = v25;
  __chkstk_darwin(v24);
  v27 = &v69[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = type metadata accessor for EnvironmentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v28);
  v30 = &v69[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v33 = &v69[-v32];
  v34 = *(a1 + 40);
  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_27:
    v68 = v79;
    *(v79 + 48) = 0;
    v68[1] = 0u;
    v68[2] = 0u;
    *v68 = 0u;
    return;
  }

  v36 = 0;
  v37 = v34 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v80 = enum case for ConfiguredUnit.distance(_:);
  v77 = enum case for ConfiguredUnit.precipitation(_:);
  v71 = enum case for ConfiguredUnit.temperature(_:);
  v72 = enum case for ConfiguredUnit.pressure(_:);
  v70 = enum case for ConfiguredUnit.windSpeed(_:);
  v81 = v18;
  v82 = v23;
  while (v36 < *(v34 + 16))
  {
    sub_1000510A8(v37 + *(v86 + 72) * v36, v27, type metadata accessor for MainAction);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v44 = type metadata accessor for MainAction;
      v43 = v27;
      goto LABEL_12;
    }

    sub_100079D8C(v27, v33, type metadata accessor for EnvironmentAction);
    sub_1000510A8(v33, v30, type metadata accessor for EnvironmentAction);
    if (swift_getEnumCaseMultiPayload() != 12)
    {
      v40 = type metadata accessor for EnvironmentAction;
      sub_10004FD58(v33, type metadata accessor for EnvironmentAction);
      v43 = v30;
LABEL_11:
      v44 = v40;
      goto LABEL_12;
    }

    sub_100079D8C(v30, v23, type metadata accessor for ConfiguredUnitsAction);
    v38 = v23;
    v23 = v83;
    sub_1000510A8(v38, v83, type metadata accessor for ConfiguredUnitsAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = type metadata accessor for ConfiguredUnitsAction;
        v23 = v82;
        sub_10004FD58(v82, type metadata accessor for ConfiguredUnitsAction);
        v41 = sub_10001FED4();
        sub_10004FD58(v41, v42);
        v43 = v83;
        goto LABEL_11;
      }

      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      UnitManager.resetPreferredUnits()();

      sub_100006D44();
      v43 = sub_10001FED4();
LABEL_12:
      sub_10004FD58(v43, v44);
      goto LABEL_13;
    }

    v45 = type metadata accessor for ConfiguredUnit();
    sub_1000037C4();
    v47 = v46;
    v49 = (*(v48 + 88))(v23, v45);
    if (v49 == v80)
    {
      (*(v47 + 96))(v23, v45);
      v50 = v23;
      v23 = &qword_100CB6180;
      sub_1002AB08C(v50, v78, &qword_100CB6180, &unk_100A8B0A0);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100023660();
      UnitManager.setPreferredDistanceUnit(_:)();

      v51 = sub_100003984();
      v53 = &unk_100A8B0A0;
    }

    else if (v49 == v77)
    {
      v54 = sub_1000111E4();
      v55(v54);
      v56 = v23;
      v23 = &qword_100CB6188;
      sub_1002AB08C(v56, v76, &qword_100CB6188, &unk_100A49BB0);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100023660();
      UnitManager.setPreferredPrecipitationUnit(_:)();

      v51 = sub_100003984();
      v53 = &unk_100A49BB0;
    }

    else if (v49 == v72)
    {
      v57 = sub_1000111E4();
      v58(v57);
      v59 = v23;
      v23 = &qword_100CB6190;
      sub_1002AB08C(v59, v75, &qword_100CB6190, &unk_100A8B0B0);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100023660();
      UnitManager.setPreferredPressureUnit(_:)();

      v51 = sub_100003984();
      v53 = &unk_100A8B0B0;
    }

    else if (v49 == v71)
    {
      v60 = sub_1000111E4();
      v61(v60);
      v62 = v23;
      v23 = &qword_100CB6198;
      sub_1002AB08C(v62, v73, &qword_100CB6198, &unk_100A49BC0);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100023660();
      UnitManager.setPreferredTemperatureUnit(_:)();

      v51 = sub_100003984();
      v53 = &unk_100A49BC0;
    }

    else
    {
      if (v49 != v70)
      {
        goto LABEL_29;
      }

      v63 = sub_1000111E4();
      v64(v63);
      v65 = v23;
      v23 = qword_100CB61A0;
      sub_1002AB08C(v65, v74, qword_100CB61A0, &qword_100A64160);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100023660();
      UnitManager.setPreferredWindSpeedUnit(_:)();

      v51 = sub_100003984();
      v53 = &qword_100A64160;
    }

    sub_1000180EC(v51, v52, v53);
    sub_100006D44();
    v66 = sub_10001FED4();
    sub_10004FD58(v66, v67);
LABEL_13:
    if (v35 == ++v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100050B70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050BD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050C30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050C90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050CF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050D50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100050DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100050E70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050ED0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050F30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050F90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050FF0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100051048(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000510A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100051108(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100051168()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000511C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MainAction(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v41 = v7;
    v36 = v4;
    __chkstk_darwin(result);
    *(&v35 - 4) = &type metadata for MainState;
    *(&v35 - 3) = v6;
    v16 = v2;
    v17 = sub_100007908();
    *(&v35 - 2) = v17;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v35 - 4) = &type metadata for MainState;
    *(&v35 - 3) = v6;
    *(&v35 - 2) = v17;
    swift_getKeyPath();
    static Published.subscript.getter();

    __chkstk_darwin(v19);
    *(&v35 - 4) = &type metadata for MainState;
    *(&v35 - 3) = v6;
    *(&v35 - 2) = v17;
    v20 = swift_getKeyPath();
    __chkstk_darwin(v20);
    *(&v35 - 4) = &type metadata for MainState;
    *(&v35 - 3) = v6;
    v38 = v6;
    v35 = v17;
    *(&v35 - 2) = v17;
    swift_getKeyPath();
    static Published.subscript.getter();

    v37 = a1;
    v21 = *(a1 + 40);
    v22 = *(v21 + 16);
    v23 = v44;
    if (v22)
    {
      v24 = *(v16 + 16);
      v25 = v21 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v26 = *(v41 + 72);

      do
      {
        sub_100050E14(v25, v9);
        v43 = v23;
        v24(v42, &v43, v9);
        sub_10004FA40(v9, type metadata accessor for MainAction);

        v23 = v42[0];
        v25 += v26;
        --v22;
      }

      while (v22);

      v44 = v23;
    }

    v27 = v45;
    if (v45 != v23)
    {
      type metadata accessor for MainState._Storage(0);
      sub_100073248();
      if ((v28 & 1) == 0)
      {
        __chkstk_darwin(v28);
        v29 = v38;
        *(&v35 - 4) = &type metadata for MainState;
        *(&v35 - 3) = v29;
        v30 = v35;
        *(&v35 - 2) = v35;
        v31 = swift_getKeyPath();
        __chkstk_darwin(v31);
        *(&v35 - 4) = &type metadata for MainState;
        *(&v35 - 3) = v29;
        *(&v35 - 2) = v30;
        swift_getKeyPath();
        v42[0] = v23;

        static Published.subscript.setter();
        static os_signpost_type_t.event.getter();
        v32 = v39;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        (*(v40 + 8))(v32, v36);
        v33 = sub_1000955E0(v37, v42, &qword_100CA3510, &unk_100A2D540);
        __chkstk_darwin(v33);
        *(&v35 - 4) = &type metadata for MainState;
        *(&v35 - 3) = v29;
        *(&v35 - 2) = v30;
        v34 = swift_getKeyPath();
        __chkstk_darwin(v34);
        *(&v35 - 4) = &type metadata for MainState;
        *(&v35 - 3) = v29;
        *(&v35 - 2) = v30;
        swift_getKeyPath();

        static Published.subscript.getter();

        v42[7] = v27;
        v42[8] = v43;
        sub_1000533A4(v42);
        sub_1000180EC(v42, &qword_100CA48E0, &qword_100A5C570);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_10005186C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100051888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10006DAC8(*a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_1000518B8@<X0>(uint64_t *a1@<X0>, void (**a2)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10006DC00(*a1, *a2, a2[1], a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_100051930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000519FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSBundle a5, uint64_t a6, uint64_t a7)
{
  v8 = 0xD000000000000024;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&a3, a5, *&a6, *&v8)._countAndFlagsBits;
}

uint64_t sub_100051A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_1000D2C20(a1, a2, a3, v23, v22, v21, v20, v19, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100051A68(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_100051B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_100051B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10022C350(a3, a4);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100051BBC()
{
  sub_100003A00();
  sub_10022C350(v1, v2);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_100051C14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100051C74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100051CD4()
{

  return sub_100A162A0(2, 26, 4, 0);
}

uint64_t sub_100051D1C()
{

  return swift_slowAlloc();
}

uint64_t sub_100051D38()
{
  *(v0 - 83) = 2;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100051D7C()
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * v0;
  return v2 + 32;
}

uint64_t sub_100051DD8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100051E10()
{

  return sub_1000180EC(v0, v1, v2);
}

uint64_t sub_100051E2C()
{

  return type metadata accessor for Tips.MaxDisplayCount();
}

uint64_t sub_100051E9C()
{

  return type metadata accessor for PredictedLocationNotificationsDebugView(0);
}

uint64_t sub_100051F14()
{
}

uint64_t sub_100051F5C()
{

  return sub_1000180EC(v2, v0, v1);
}

uint64_t sub_100051F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
}

void sub_10005200C(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_100032194(v2 + a2, v4, v3 + a2, a1);
}

__n128 *sub_100052068(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x726F727265;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_100052084()
{

  return sub_1000D394C();
}

uint64_t sub_10005210C()
{

  return swift_slowAlloc();
}

uint64_t sub_100052188(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000521E8@<X0>(uint64_t a1@<X8>)
{

  return sub_10012A6F0(v3, v2 + a1, v1);
}

uint64_t sub_100052210()
{

  return sub_1000302D8(v1 + v4, v0, v2, v3);
}

uint64_t sub_10005227C(uint64_t a1)
{

  return sub_100024D10(v2 + v1, 1, a1);
}

uint64_t sub_10005229C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100052320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1000302D8(a1, v5, v2, v3);
}

uint64_t sub_100052340()
{
}

uint64_t sub_10005235C()
{

  return type metadata accessor for AttributedString();
}

uint64_t sub_100052420()
{

  return sub_100051BBC();
}

uint64_t sub_100052444()
{

  return Optional<A>.write(to:)();
}

__n128 sub_1000524DC(__n128 *a1)
{
  result = v1[34];
  a1[1] = result;
  return result;
}

uint64_t sub_1000524EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = *(v5 - 424);

  return sub_1009B8AB4(v3 + v4, v7, a3);
}

uint64_t sub_100052530(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1000525CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 44);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1000526BC()
{
  result = v0;
  *(v2 - 288) = v1;
  return result;
}

uint64_t sub_1000526D4(uint64_t a1)
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t sub_100052710(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100052778(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100052794(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_1000527B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 264);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_1000527E0(__n128 a1)
{

  return ApparentPrecipitationIntensity.init(value:category:)();
}

uint64_t sub_1000527FC()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10005284C(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_100072D38(v2);
  *v1 = result;
  return result;
}

void sub_100052874(uint64_t a1)
{
  if (!qword_100CE0188)
  {
    type metadata accessor for ContentStatusBanner(255);
    sub_100072E1C();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE0188);
    }
  }
}

uint64_t sub_1000528E0()
{
  v0 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v0 - 8);
  v63 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for LocationsAction(0);
  __chkstk_darwin(v68);
  v69 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v59 - v4;
  v5 = type metadata accessor for LocationViewAction(0);
  __chkstk_darwin(v5 - 8);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for LocationViewerViewAction(0);
  __chkstk_darwin(v60);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v59 - v9;
  v64 = type metadata accessor for ViewAction(0);
  __chkstk_darwin(v64);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v59 - v12;
  v13 = type metadata accessor for ModalViewAction(0);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for WeatherDataAction(0);
  __chkstk_darwin(v19);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v65 = &v59 - v23;
  v24 = type metadata accessor for EnvironmentAction(0);
  __chkstk_darwin(v24);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v59 - v28;
  v30 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v30);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050FF0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      sub_100073140();
      sub_100050FF0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100181C20();
        sub_1000B7E38();
        sub_1001831D8();
        v33 = type metadata accessor for EnvironmentAction;
        v34 = v29;
        goto LABEL_34;
      }

      v45 = type metadata accessor for EnvironmentAction;
      sub_100053318(v29, type metadata accessor for EnvironmentAction);
      v34 = v26;
      goto LABEL_21;
    case 3u:
      v43 = v71;
      sub_100073140();
      v44 = v69;
      sub_100050FF0();
      if (swift_getEnumCaseMultiPayload())
      {
        v45 = type metadata accessor for LocationsAction;
        sub_100053318(v43, type metadata accessor for LocationsAction);
        v34 = v44;
        goto LABEL_21;
      }

      v52 = v63;
      sub_100073140();
      sub_10087F478();
      sub_100053318(v52, &type metadata accessor for CurrentLocation);
      v51 = type metadata accessor for LocationsAction;
      goto LABEL_26;
    case 6u:
      v43 = v70;
      sub_100073140();
      v46 = v67;
      sub_100050FF0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 8) < 2)
      {
        sub_1001831D8();
      }

      else
      {
        if (EnumCaseMultiPayload != 1)
        {
          if (EnumCaseMultiPayload == 5)
          {
            sub_1000B7E38();
          }

          v48 = type metadata accessor for ViewAction;
          v49 = v43;
          goto LABEL_32;
        }

        v57 = v61;
        sub_100073140();
        v46 = v62;
        sub_100050FF0();
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          v48 = type metadata accessor for LocationViewerViewAction;
          sub_100053318(v57, type metadata accessor for LocationViewerViewAction);
          v49 = v43;
LABEL_32:
          sub_100053318(v49, type metadata accessor for ViewAction);
          v34 = v46;
          goto LABEL_33;
        }

        sub_1001831D8();
        sub_100053318(v57, type metadata accessor for LocationViewerViewAction);
      }

      v51 = type metadata accessor for ViewAction;
LABEL_26:
      v33 = v51;
      v34 = v43;
LABEL_34:
      sub_100053318(v34, v33);
LABEL_35:
      type metadata accessor for BannerStateComputer(0);

    case 7u:
      sub_100073140();
      sub_100050FF0();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1001831D8();
        v33 = type metadata accessor for ModalViewAction;
        v34 = v18;
      }

      else
      {
        v45 = type metadata accessor for ModalViewAction;
        sub_100053318(v18, type metadata accessor for ModalViewAction);
        v34 = v15;
LABEL_21:
        v33 = v45;
      }

      goto LABEL_34;
    case 8u:
      v50 = v66;
      sub_100073140();
      sub_10087B7CC();
      v33 = type metadata accessor for LocationViewAction;
      v34 = v50;
      goto LABEL_34;
    case 9u:
      v35 = v65;
      sub_100073140();
      sub_100050FF0();
      v36 = swift_getEnumCaseMultiPayload();
      if (v36 == 2)
      {
        v53 = *v21;
        v54 = v21[1];
        v55 = v21[2];
        v56 = v21[3];

        sub_10031EF8C(v55, v56);
        sub_10087CFF4(v53, v54, v35);

        v33 = type metadata accessor for WeatherDataAction;
        v34 = v35;
      }

      else if (v36 == 4)
      {
        v37 = *v21;
        v38 = v21[1];
        v39 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
        v40 = v39[12];
        v41 = v39[16];
        v42 = v39[20];
        sub_10087C244(v37, v38, v35);

        sub_100053318(v35, type metadata accessor for WeatherDataAction);
        sub_100053318(v21 + v42, type metadata accessor for NewsDataModel);
        sub_100053318(v21 + v41, type metadata accessor for PreprocessedWeatherData);
        v33 = type metadata accessor for WeatherData;
        v34 = v21 + v40;
      }

      else
      {
        v48 = type metadata accessor for WeatherDataAction;
        sub_100053318(v35, type metadata accessor for WeatherDataAction);
        v34 = v21;
LABEL_33:
        v33 = v48;
      }

      goto LABEL_34;
    case 0x10u:
      sub_10087BB70(*v32, *(v32 + 1));

      goto LABEL_35;
    default:
      v33 = type metadata accessor for MainAction;
      v34 = v32;
      goto LABEL_34;
  }
}

uint64_t sub_100053318(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000533A4(uint64_t a1)
{
  v41 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v1 + 40);
  __src[0] = _swiftEmptyArrayStorage;
  v6 = sub_100073CDC(v5);

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  *(v1 + 40) = __src[0];

  v9 = *(v1 + 40);
  result = sub_100073CDC(v9);
  if (!result)
  {
    return result;
  }

  v10 = result;
  result = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  if (v10 < 1)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = v9 & 0xC000000000000001;
  v33 = v44;
  v32 = v40 + 1;
  v31 = (v3 + 8);

  v13 = 0;
  v34 = v11;
  do
  {
    if (v12)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v9 + 8 * v13 + 32);
    }

    v15 = *(v14 + 40);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      v18 = *(v14 + 16);

      v18(v41);
    }

    else
    {
      v19 = *(v14 + 40);
      sub_1000955E0(v41, __src, &qword_100CA48E0, &qword_100A5C570);
      v20 = swift_allocObject();
      *(v20 + 16) = v14;
      memcpy((v20 + 24), __src, 0x48uLL);
      v44[2] = sub_100093768;
      v44[3] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v44[0] = sub_1000742F0;
      v44[1] = &unk_100C664F8;
      v40 = _Block_copy(aBlock);
      v39 = v19;

      v21 = v35;
      static DispatchQoS.unspecified.getter();
      v42 = _swiftEmptyArrayStorage;
      sub_10006CD24(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
      v22 = v12;
      v23 = v37;
      v24 = v10;
      v25 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v40;
      v27 = v39;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      v28 = v23;
      v12 = v22;
      v29 = v25;
      v10 = v24;
      (*v32)(v28, v29);
      (*v31)(v21, v36);
    }

    ++v13;
  }

  while (v10 != v13);
}

uint64_t sub_100053960()
{

  if (*(v0 + 48))
  {
    sub_100006F14((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_1000539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Event(319, *(a1 + 24), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100053A64(uint64_t a1)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_100007FD0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v6);
  sub_100003908();
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  __chkstk_darwin(v13);
  sub_100003908();
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  v17 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v17 - 8);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v18);
  v74 = &v63 - v19;
  v20 = type metadata accessor for MainAction(0);
  sub_100007FD0();
  v83 = v21;
  __chkstk_darwin(v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v84 = *(a1 + 40);
  v82 = *(v84 + 16);
  if (v82)
  {
    v25 = 0;
    v81 = v84 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v71 = OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_hasPrewarmDone;
    v78 = (v4 + 104);
    v77 = (v4 + 8);
    v76 = enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:);
    v67 = v9;
    v66 = v12;
    v79 = v20;
    v72 = v16;
    do
    {
      if (v25 >= *(v84 + 16))
      {
        __break(1u);
        return;
      }

      sub_100050CF0(v81 + *(v83 + 72) * v25, v24, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10004F830(v24, type metadata accessor for MainAction);
      }

      else if (*v24)
      {
        if (*v24 == 1)
        {
          sub_100006018();
          sub_10051B020(&OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___locationAnimationKind, v26, v16);
          v73 = *v78;
          v73(v75, v76, v2);
          sub_1000102A0();
          sub_10051B37C(&qword_100CBDFA0, v27, &protocol conformance descriptor for Settings.VFX.AnimatedBackgrounds.AnimationKind);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (__src[0] == v90 && __src[1] == v91)
          {
            v29 = 1;
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v35 = *v77;
          (*v77)(v75, v2);
          v36 = v16;
          v16 = v2;
          v35(v36, v2);

          if (v29)
          {
            if (qword_100CA26E8 != -1)
            {
              sub_100008814();
              swift_once();
            }

            v37 = type metadata accessor for Logger();
            sub_10000703C(v37, qword_100D90B20);
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v38, v39, "Requesting default background manager to execute pending requests because app will enter foreground", v40, 2u);
            }

            swift_getObjectType();
            dispatch thunk of WeatherConditionBackgroundManagerType.executeRequests(forcePrepare:)();
          }

          v2 = v66;
          sub_10051B020(&OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___listAnimationKind, &Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter, v66);
          v41 = v67;
          sub_100074B48();
          v42();
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (__src[0] == v90 && __src[1] == v91)
          {
            v35(v41, v16);
            v35(v2, v16);

            sub_1000498E8();
LABEL_32:
            v45 = v80[2];
            v46 = v80[4];
            v68 = v80[5];
            swift_getObjectType();
            if (v45 != v46 || (sub_100006018(), v47 = v64, sub_10051B020(&OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___locationAnimationKind, v48, v64), v49 = v65, sub_100074B48(), v50(), sub_1000102A0(), sub_10051B37C(&qword_100CC3780, v51, &protocol conformance descriptor for Settings.VFX.AnimatedBackgrounds.AnimationKind), v52 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v49, v2), v35(v47, v2), (v52 & 1) == 0))
            {
              if (qword_100CA26E8 != -1)
              {
                sub_100008814();
                swift_once();
              }

              v53 = type metadata accessor for Logger();
              sub_10000703C(v53, qword_100D90B20);
              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                *v56 = 0;
                _os_log_impl(&_mh_execute_header, v54, v55, "Requesting list background manager to execute pending requests because app will enter foreground", v56, 2u);
              }

              dispatch thunk of WeatherConditionBackgroundManagerType.executeRequests(forcePrepare:)();
            }

            goto LABEL_6;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v35(v41, v16);
          v35(v2, v16);

          sub_1000498E8();
          if (v44)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (*(v80 + v71))
        {
          return;
        }

        v30 = v80;
        *(v80 + v71) = 1;
        v31 = v74;
        static TaskPriority.userInitiated.getter();
        v32 = type metadata accessor for TaskPriority();
        sub_10001B350(v31, 0, 1, v32);
        sub_100035AD0(v70, __src, &qword_100CA48E0, &qword_100A5C570);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v33[4] = v30;
        memcpy(v33 + 5, __src, 0x48uLL);
        v34 = v69;
        sub_100035AD0(v31, v69, &qword_100CA3538, &qword_100A2D560);
        LODWORD(v31) = sub_100024D10(v34, 1, v32);

        if (v31 == 1)
        {
          sub_1000180EC(v34, &qword_100CA3538, &qword_100A2D560);
        }

        else
        {
          TaskPriority.rawValue.getter();
          sub_100003B20();
          (*(v57 + 8))(v34, v32);
        }

        v58 = v33[2];
        swift_unknownObjectRetain();

        if (v58)
        {
          swift_getObjectType();
          v59 = dispatch thunk of Actor.unownedExecutor.getter();
          v61 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v62 = swift_allocObject();
        *(v62 + 16) = &unk_100A5C578;
        *(v62 + 24) = v33;
        if (v61 | v59)
        {
          v85 = 0;
          v86 = 0;
          v87 = v59;
          v88 = v61;
        }

        swift_task_create();
        sub_1000180EC(v74, &qword_100CA3538, &qword_100A2D560);

        v16 = v72;
      }

LABEL_6:
      ++v25;
    }

    while (v82 != v25);
  }
}

uint64_t sub_1000544CC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100006F14((v0 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_100054534()
{

  return swift_deallocObject();
}

void sub_10005456C(uint64_t a1)
{
  v17 = type metadata accessor for Date();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 40);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = a1;
    v15 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_100050DAC(v15, v11, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        sub_100050DAC(*(v14 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v7, type metadata accessor for TimeState);
        (*(v2 + 32))(v4, v7, v17);
        sub_1002B0C88(v4);
      }

      sub_1000547B8(v11);
      v15 += v16;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1000547B8(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v15 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v16 = *(v8 - 8);
  v17 = v8;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CEF348, &unk_100AA7E08) - 8;
  __chkstk_darwin(v11);
  sub_100095588();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  *(v12 + 24) = a3;
  sub_100051BBC();
  aBlock[4] = sub_1000D80DC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C7C330;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000675F0(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v18 + 8))(v7, v5);
  (*(v16 + 8))(v10, v17);
}

uint64_t sub_100054BA8()
{
  v1 = sub_10022C350(&qword_100CEF348, &unk_100AA7E08);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  if (*(v0 + v2 + 32))
  {
    sub_100006F14((v3 + 8));
  }

  v4 = *(v1 + 64);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v5 + 8))(v3 + v4);

  return swift_deallocObject();
}

void sub_100054CC8(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v52 = type metadata accessor for Location();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v54 = type metadata accessor for LocationViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 40);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v55 = *(v19 + 72);
    v47 = (v3 + 8);
    v48 = (v3 + 32);
    v49 = v18;
    v50 = v11;
    do
    {
      sub_100050C30(v24, v21, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_1003B42E4(v21, v17, type metadata accessor for LocationViewAction);
        sub_100050C30(v17, v14, type metadata accessor for LocationViewAction);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1003B42E4(v14, v11, type metadata accessor for LocationComponentAction);
          sub_100050C30(v11, v8, type metadata accessor for LocationComponentAction);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v25 = &v8[*(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48)];
            v26 = v8;
            v27 = v51;
            v28 = v17;
            v29 = v5;
            v30 = v52;
            (*v48)(v51, v25, v52);
            sub_1008A5BA8(v27, 0, v31, v32, v33, v34, v35, v36, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
            v37 = v27;
            v8 = v26;
            v38 = v30;
            v5 = v29;
            v17 = v28;
            v11 = v50;
            (*v47)(v37, v38);
            sub_10004F67C(v11, type metadata accessor for LocationComponentAction);
            v39 = sub_10001C064();
          }

          else
          {
            sub_10004F67C(v11, type metadata accessor for LocationComponentAction);
            v43 = sub_10001C064();
            sub_10004F67C(v43, v44);
            v39 = v8;
            v40 = type metadata accessor for LocationComponentAction;
          }

          sub_10004F67C(v39, v40);
          v45 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
          sub_1001AEDF4(&v14[*(v45 + 64)]);
          goto LABEL_12;
        }

        sub_10004F67C(v17, type metadata accessor for LocationViewAction);
        v42 = v14;
        v41 = type metadata accessor for LocationViewAction;
      }

      else
      {
        v41 = type metadata accessor for MainAction;
        v42 = v21;
      }

      sub_10004F67C(v42, v41);
LABEL_12:
      v24 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10005513C@<X0>(uint64_t *a1@<X8>)
{
  v166 = a1;
  v159 = type metadata accessor for AveragesDetailViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000038E4();
  v161 = v2;
  v3 = sub_1000038CC();
  v157 = type metadata accessor for MoonDetailViewAction(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v160 = v5;
  v6 = sub_1000038CC();
  v155 = type metadata accessor for ConditionDetailViewAction(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v158 = v8;
  v9 = sub_1000038CC();
  v153 = type metadata accessor for DebugAction(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v156 = v11;
  v12 = sub_1000038CC();
  v151 = type metadata accessor for PerformanceTestAction(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v154 = v14;
  v15 = sub_1000038CC();
  v149 = type metadata accessor for WeatherDataAction(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v152 = v17;
  v18 = sub_1000038CC();
  v147 = type metadata accessor for LocationViewAction(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v150 = v20;
  v21 = sub_1000038CC();
  v145 = type metadata accessor for ModalViewAction(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v148 = v23;
  v24 = sub_1000038CC();
  v143 = type metadata accessor for ViewAction(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  v146 = v26;
  v27 = sub_1000038CC();
  v141 = type metadata accessor for NotificationsOptInAction(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  v144 = v29;
  v30 = sub_1000038CC();
  v31 = type metadata accessor for NotificationsAction(v30);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  v142 = v33;
  v34 = sub_1000038CC();
  v35 = type metadata accessor for LocationsAction(v34);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  v40 = type metadata accessor for EnvironmentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  v45 = type metadata accessor for AppConfigurationAction(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  v50 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  v55 = sub_10022C350(&qword_100CBCED8, &unk_100A63660);
  v164 = *(v55 - 8);
  v165 = v55;
  __chkstk_darwin(v55);
  v162 = (&v140 - v56);
  sub_100050C90(v163, v54, type metadata accessor for MainAction);
  v163 = v50;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100051C14(v54, v49, type metadata accessor for AppConfigurationAction);
      v102 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v103 = sub_100028560(v102);
      v104 = sub_100005CB0(v103, xmmword_100A2C3F0);
      v104[4].n128_u64[1] = v45;
      v105 = sub_100042FB0(&v104[3]);
      sub_100050C90(v49, v105, type metadata accessor for AppConfigurationAction);
      Dictionary.init(dictionaryLiteral:)();
      v45 = v162;
      ShortDescription.init(name:_:)();
      v90 = v49;
      v106 = type metadata accessor for AppConfigurationAction;
      goto LABEL_25;
    case 2u:
      v65 = type metadata accessor for EnvironmentAction;
      sub_100051C14(v54, v44, type metadata accessor for EnvironmentAction);
      v86 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v87 = sub_100028560(v86);
      v88 = sub_100005CB0(v87, xmmword_100A2C3F0);
      v88[4].n128_u64[1] = v40;
      v89 = sub_100042FB0(&v88[3]);
      sub_100050C90(v44, v89, type metadata accessor for EnvironmentAction);
      sub_1000042E4();
      v45 = v162;
      ShortDescription.init(name:_:)();
      v90 = v44;
      goto LABEL_24;
    case 3u:
      v65 = type metadata accessor for LocationsAction;
      sub_100051C14(v54, v39, type metadata accessor for LocationsAction);
      v94 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v95 = sub_100028560(v94);
      v96 = sub_100005CB0(v95, xmmword_100A2C3F0);
      v96[4].n128_u64[1] = v35;
      v97 = sub_100042FB0(&v96[3]);
      sub_100050C90(v39, v97, type metadata accessor for LocationsAction);
      sub_1000042E4();
      sub_100037FD4();
      v45 = v162;
      ShortDescription.init(name:_:)();
      v90 = v39;
      goto LABEL_24;
    case 4u:
      v65 = type metadata accessor for NotificationsAction;
      v75 = v54;
      v67 = v142;
      sub_100051C14(v75, v142, type metadata accessor for NotificationsAction);
      v76 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v45 = sub_100028560(v76);
      v77 = sub_100005CB0(v45, xmmword_100A2C3F0);
      v77[4].n128_u64[1] = v31;
      v78 = sub_100042FB0(&v77[3]);
      sub_1000198B8(v78, v78);
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_22;
    case 5u:
      v65 = type metadata accessor for NotificationsOptInAction;
      v111 = v54;
      v67 = v144;
      sub_100051C14(v111, v144, type metadata accessor for NotificationsOptInAction);
      v45 = "ilyForecast";
      v112 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v113 = sub_100028560(v112);
      v114 = sub_100005CB0(v113, xmmword_100A2C3F0);
      v115 = sub_100022C48(v114, v141);
      sub_1000198B8(v115, v115);
      sub_1000042E4();
      sub_100014748();
      goto LABEL_23;
    case 6u:
      v65 = type metadata accessor for ViewAction;
      v120 = v54;
      v67 = v146;
      sub_100051C14(v120, v146, type metadata accessor for ViewAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      v122 = sub_100005CB0(inited, xmmword_100A2C3F0);
      v123 = sub_100022C48(v122, v143);
      sub_1000198B8(v123, v123);
      sub_1000042E4();
      sub_100014748();
      goto LABEL_23;
    case 7u:
      v65 = type metadata accessor for ModalViewAction;
      v98 = v54;
      v67 = v148;
      sub_100051C14(v98, v148, type metadata accessor for ModalViewAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v99 = swift_initStackObject();
      v100 = sub_100005CB0(v99, xmmword_100A2C3F0);
      v101 = sub_100022C48(v100, v145);
      sub_1000198B8(v101, v101);
      sub_1000042E4();
      goto LABEL_22;
    case 8u:
      v65 = type metadata accessor for LocationViewAction;
      v130 = v54;
      v67 = v150;
      sub_100051C14(v130, v150, type metadata accessor for LocationViewAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v131 = swift_initStackObject();
      v132 = sub_100005CB0(v131, xmmword_100A2C3F0);
      v133 = sub_100022C48(v132, v147);
      sub_1000198B8(v133, v133);
      sub_1000042E4();
      sub_100037FD4();
      goto LABEL_22;
    case 9u:
      v65 = type metadata accessor for WeatherDataAction;
      v82 = v54;
      v67 = v152;
      sub_100051C14(v82, v152, type metadata accessor for WeatherDataAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v83 = swift_initStackObject();
      v84 = sub_100005CB0(v83, xmmword_100A2C3F0);
      v85 = sub_100022C48(v84, v149);
      sub_1000198B8(v85, v85);
      sub_1000042E4();
      goto LABEL_22;
    case 0xAu:
      v65 = type metadata accessor for DebugAction;
      v126 = v54;
      v67 = v156;
      sub_100051C14(v126, v156, type metadata accessor for DebugAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v127 = swift_initStackObject();
      v128 = sub_100005CB0(v127, xmmword_100A2C3F0);
      v129 = sub_100022C48(v128, v153);
      sub_1000198B8(v129, v129);
      sub_1000042E4();
      sub_100014748();
      goto LABEL_23;
    case 0xBu:
      v65 = type metadata accessor for ConditionDetailViewAction;
      v71 = v54;
      v67 = v158;
      sub_100051C14(v71, v158, type metadata accessor for ConditionDetailViewAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v72 = swift_initStackObject();
      v73 = sub_100005CB0(v72, xmmword_100A2C3F0);
      v74 = sub_100022C48(v73, v155);
      sub_1000198B8(v74, v74);
      sub_1000042E4();
      goto LABEL_22;
    case 0xCu:
      v79 = *v54;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v80 = swift_initStackObject();
      v81 = sub_100005CB0(v80, xmmword_100A2C3F0);
      v81[4].n128_u64[1] = &type metadata for SunriseSunsetDetailViewAction;
      v81[3].n128_u8[0] = v79;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_19;
    case 0xDu:
      v65 = type metadata accessor for MoonDetailViewAction;
      v116 = v54;
      v67 = v160;
      sub_100051C14(v116, v160, type metadata accessor for MoonDetailViewAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v117 = swift_initStackObject();
      v118 = sub_100005CB0(v117, xmmword_100A2C3F0);
      v119 = sub_100022C48(v118, v157);
      sub_1000198B8(v119, v119);
      sub_1000042E4();
      goto LABEL_22;
    case 0xEu:
      v65 = type metadata accessor for AveragesDetailViewAction;
      v66 = v54;
      v67 = v161;
      sub_100051C14(v66, v161, type metadata accessor for AveragesDetailViewAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v68 = swift_initStackObject();
      v69 = sub_100005CB0(v68, xmmword_100A2C3F0);
      v70 = sub_100022C48(v69, v159);
      sub_1000198B8(v70, v70);
      sub_1000042E4();
      goto LABEL_22;
    case 0xFu:
      v91 = *v54;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v92 = swift_initStackObject();
      v93 = sub_100005CB0(v92, xmmword_100A2C3F0);
      v93[4].n128_u64[1] = &type metadata for UnitsConfigurationViewAction;
      v93[3].n128_u8[0] = v91;
      Dictionary.init(dictionaryLiteral:)();
      sub_100014748();
      goto LABEL_27;
    case 0x10u:
      v61 = *v54;
      v62 = *(v54 + 8);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v63 = swift_initStackObject();
      v64 = sub_100005CB0(v63, xmmword_100A2C3F0);
      v64[4].n128_u64[1] = &type metadata for MonitoringAction;
      v64[3].n128_u64[0] = v61;
      v64[3].n128_u64[1] = v62;
      Dictionary.init(dictionaryLiteral:)();
      sub_100014748();
      goto LABEL_27;
    case 0x11u:
      v65 = type metadata accessor for PerformanceTestAction;
      v107 = v54;
      v67 = v154;
      sub_100051C14(v107, v154, type metadata accessor for PerformanceTestAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v108 = swift_initStackObject();
      v109 = sub_100005CB0(v108, xmmword_100A2C3F0);
      v110 = sub_100022C48(v109, v151);
      sub_1000198B8(v110, v110);
      sub_1000042E4();
LABEL_22:
      sub_100014748();
LABEL_23:
      ShortDescription.init(name:_:)();
      v90 = v67;
LABEL_24:
      v106 = v65;
LABEL_25:
      sub_1000D6094(v90, v106);
      goto LABEL_28;
    case 0x12u:
      v124 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v125 = sub_100028560(v124);
      sub_100005CB0(v125, xmmword_100A2C3F0)[4].n128_u64[1] = &type metadata for AutomationAction;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_19;
    case 0x13u:
      v134 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v135 = sub_100028560(v134);
      sub_100005CB0(v135, xmmword_100A2C3F0)[4].n128_u64[1] = &type metadata for TimeAction;
      Dictionary.init(dictionaryLiteral:)();
      sub_100014748();
      goto LABEL_27;
    default:
      v57 = *v54;
      v58 = sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v59 = sub_100028560(v58);
      v60 = sub_100005CB0(v59, xmmword_100A2C3F0);
      v60[4].n128_u64[1] = &type metadata for AppLifecycleAction;
      v60[3].n128_u8[0] = v57;
      Dictionary.init(dictionaryLiteral:)();
LABEL_19:
      sub_100014748();
LABEL_27:
      ShortDescription.init(name:_:)();
LABEL_28:
      v137 = v165;
      v136 = v166;
      v166[3] = v165;
      v136[4] = sub_100056774();
      v138 = sub_100042FB0(v136);
      return (*(v164 + 32))(v138, v45, v137);
  }
}

Swift::Void __swiftcall AppLaunchCountMonitor.applicationDidFinishLaunching(withOptions:)(Swift::OpaquePointer_optional withOptions)
{
  v33 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v36 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v34 = v7;
  v35 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchTimeInterval();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = (v16 - v15);
  v18 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v32 - v25;
  sub_100040690();
  v32 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v17 = 500;
  (*(v13 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), v11);
  + infix(_:_:)();
  (*(v13 + 8))(v17, v11);
  v27 = *(v20 + 8);
  v27(v23, v18);
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003B3FB4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C52C68;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v30 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v32;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v29);

  (*(v36 + 8))(v5, v30);
  (*(v34 + 8))(v10, v35);
  v27(v26, v18);
}

uint64_t sub_10005673C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100056774()
{
  result = qword_100CBCEE0;
  if (!qword_100CBCEE0)
  {
    v3 = sub_10022E824(&qword_100CBCED8, &unk_100A63660);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBCEE0);
  }

  return result;
}

unint64_t sub_1000567D8(uint64_t a1, uint64_t a2)
{
  result = qword_100CE9750;
  if (!qword_100CE9750)
  {
    v5 = type metadata accessor for CountryCodeConfigurationMonitor();
    result = swift_getWitnessTable(byte_100A9E678, v5, v2, v3);
    atomic_store(result, &qword_100CE9750);
  }

  return result;
}

uint64_t sub_10005682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v5[9] = swift_task_alloc();
  sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v5[10] = swift_task_alloc();
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v5[11] = swift_task_alloc();
  type metadata accessor for WeatherConditionBackgroundTimeData(0);
  v5[12] = swift_task_alloc();
  type metadata accessor for TimeState(0);
  v5[13] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_100056A48, 0, 0);
}

uint64_t sub_100056A48()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  *(v6 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_logger);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = *(v7 + 64);
  sub_100050CF0(v8 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v4, type metadata accessor for TimeState);
  (*(v2 + 32))(v1, v4, v3);
  v9 = v8 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v10 = *(v9 + *(type metadata accessor for LocationsState(0) + 20));
  v11 = swift_task_alloc();
  *(v11 + 16) = v6;
  *(v11 + 24) = v1;

  sub_10051AD40(sub_100075694, v11, v10);

  sub_100035B30(v6 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_weatherConditionBackgroundTimeDataFactory, (v0 + 2));
  sub_1000161C0(v0 + 2, v0[5]);
  sub_100035AD0(v9, v5, &unk_100CE49F0, &unk_100A3AFA0);
  v12 = type metadata accessor for CurrentLocation();
  v13 = sub_100024D10(v5, 1, v12);
  v15 = v0[10];
  v14 = v0[11];
  if (v13 == 1)
  {
    sub_1000180EC(v0[10], &unk_100CE49F0, &unk_100A3AFA0);
    v16 = type metadata accessor for Location();
    sub_10001B350(v14, 1, 1, v16);
  }

  else
  {
    CurrentLocation.location.getter();
    sub_10004F830(v15, &type metadata accessor for CurrentLocation);
  }

  v17 = v0[18];
  v18 = v0[19];
  v20 = v0[16];
  v19 = v0[17];
  v21 = v0[15];
  v28 = v0[14];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[9];
  v25 = type metadata accessor for WeatherData(0);
  sub_10001B350(v24, 1, 1, v25);
  sub_1000756B0(v23, v24, v20, v22);
  sub_1000180EC(v24, &qword_100CA3898, &qword_100A314D0);
  sub_1000180EC(v23, &qword_100CA65D8, &unk_100A3D9D0);
  sub_10004F830(v22, type metadata accessor for WeatherConditionBackgroundTimeData);
  sub_100006F14(v0 + 2);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v17 + 8))(v18, v19);
  (*(v21 + 8))(v20, v28);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100056DD4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v2 - 8);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v4 - 8);
  v67 = &v62 - v5;
  v66 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v66);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v62 - v8;
  v9 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v9);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  __chkstk_darwin(v18);
  v68 = &v62 - v19;
  v20 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v62 - v24;
  v26 = *(a1 + 64);
  v27 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_100050B70(v26 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &v62 - v24, type metadata accessor for ViewState);
  v28 = *&v25[v20[9] + 8];
  result = sub_10004F4C0(v25, type metadata accessor for ViewState);
  if (v28 == 1)
  {
    return result;
  }

  v30 = v26 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  result = type metadata accessor for NotificationsOptInState(0);
  if (*(v30 + *(result + 56)))
  {
    return result;
  }

  sub_100050B70(v26 + v27, v22, type metadata accessor for ViewState);
  sub_100050B70(&v22[v20[5]], v11, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004F4C0(v22, type metadata accessor for ViewState);
    v31 = type metadata accessor for ViewState.SecondaryViewState;
    v32 = v11;
    return sub_10004F4C0(v32, v31);
  }

  v33 = *v11;
  if (*&v22[v20[9] + 8] == 1)
  {
    v34 = [objc_opt_self() currentDevice];
    [v34 userInterfaceIdiom];

    LOBYTE(v34) = v22[v20[7]];
    sub_10004F4C0(v22, type metadata accessor for ViewState);
    if ((v34 & 1) == 0)
    {
    }
  }

  else
  {
    sub_10004F4C0(v22, type metadata accessor for ViewState);
  }

  sub_100050B70(v33 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v17, type metadata accessor for LocationViewerActiveLocationState);

  v35 = v68;
  sub_100050048(v17, v68, type metadata accessor for LocationViewerActiveLocationState);
  v36 = type metadata accessor for Location.Identifier();
  sub_10001B350(v14, 1, 1, v36);
  v37 = sub_1000BAF7C(v35, v14);
  sub_10004F4C0(v14, type metadata accessor for LocationViewerActiveLocationState);
  if (v37)
  {
    v31 = type metadata accessor for LocationViewerActiveLocationState;
    v32 = v35;
    return sub_10004F4C0(v32, v31);
  }

  v38 = *(v26 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v39 = sub_1000E0924();
  v40 = v67;
  sub_1000864C0(v39, v41, v38);

  if (sub_100024D10(v40, 1, v66) == 1)
  {
    sub_10004F4C0(v35, type metadata accessor for LocationViewerActiveLocationState);
    return sub_1000180EC(v40, &qword_100CA37B0, &unk_100A2D740);
  }

  v42 = v40;
  v43 = v65;
  sub_100050048(v42, v65, type metadata accessor for LocationWeatherDataState);
  v44 = v64;
  sub_100050B70(v43, v64, type metadata accessor for LocationWeatherDataState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10004F4C0(v43, type metadata accessor for LocationWeatherDataState);
    sub_10004F4C0(v35, type metadata accessor for LocationViewerActiveLocationState);
    v32 = v44;
    v31 = type metadata accessor for LocationWeatherDataState;
    return sub_10004F4C0(v32, v31);
  }

  v45 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v46 = *(v45 + 48);
  v47 = *(v45 + 64);
  v48 = v62;
  sub_100050048(v44, v62, type metadata accessor for WeatherData);
  sub_10004F4C0(v44 + v47, type metadata accessor for NewsDataModel);
  sub_10004F4C0(v44 + v46, type metadata accessor for PreprocessedWeatherData);
  v49 = v26 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  LODWORD(v49) = *(v49 + 3) == 4;
  v50 = v63;
  sub_1000161C0((v63 + 32), *(v63 + 56));
  v52 = sub_100922C64(v48, v49, v51);
  v53 = v52;
  if (*(v54 + 16))
  {

    v55 = 2;
    goto LABEL_33;
  }

  if (!*(v52 + 2))
  {

    v55 = 1;
    goto LABEL_33;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v56 = Hasher._finalize()();
  v57 = -1 << v53[32];
  v58 = v56 & ~v57;
  if (((*&v53[((v58 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v58) & 1) == 0)
  {

    v55 = 1;
    goto LABEL_32;
  }

  v59 = ~v57;
  while (2)
  {
    switch(*(*(v53 + 6) + v58))
    {
      case 1:

        goto LABEL_30;
      default:
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          v58 = (v58 + 1) & v59;
          if (((*&v53[((v58 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v58) & 1) == 0)
          {

            v55 = 1;
            goto LABEL_31;
          }

          continue;
        }

LABEL_30:

        v55 = 2;
LABEL_31:
        v48 = v62;
        v50 = v63;
LABEL_32:
        v43 = v65;
LABEL_33:
        v61 = swift_allocObject();
        *(v61 + 16) = v50;
        *(v61 + 24) = v55;

        asyncMain(block:)();

        sub_10004F4C0(v48, type metadata accessor for WeatherData);
        sub_10004F4C0(v43, type metadata accessor for LocationWeatherDataState);
        v31 = type metadata accessor for LocationViewerActiveLocationState;
        v32 = v68;
        return sub_10004F4C0(v32, v31);
    }
  }
}

uint64_t sub_100057760()
{

  return swift_deallocObject();
}

uint64_t sub_100057798()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.geocode.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Prewarming GeoServices", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  sub_100040690();
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.background(_:), v5);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  aBlock[4] = sub_100078758;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C7A1D8;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v18 = v23;
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v18, v19);
  return (*(v21 + 8))(v4, v22);
}

void sub_100057BB8(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = (v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v38 = v34 - v7;
  v37 = type metadata accessor for LocationsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  v14 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = a1;
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    v35 = v5;
    v36 = v10;
    while (2)
    {
      sub_100051108(v20, v17, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          v22 = type metadata accessor for MainAction;
          v23 = v17;
          goto LABEL_5;
        case 2u:
          v24 = v38;
          sub_100079DEC(v17, v38, type metadata accessor for EnvironmentAction);
          sub_100051108(v24, v5, type metadata accessor for EnvironmentAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v10 = v36;
          switch(EnumCaseMultiPayload)
          {
            case 2:
              if ((*(v5 + 1) & 1) == 0 && *v5 != 4)
              {
                sub_1000784D4(0);
              }

              break;
            case 3:
            case 4:
            case 10:
            case 12:
              sub_100011210();
              sub_10004FE68(v38, v26);
              v23 = v35;
              goto LABEL_25;
            case 5:
              sub_100011210();
              sub_10004FE68(v35, v33);
              sub_1000784D4(1);
              v23 = v38;
              goto LABEL_25;
            default:
              break;
          }

          v22 = type metadata accessor for EnvironmentAction;
          v23 = v38;
LABEL_5:
          sub_10004FE68(v23, v22);
          goto LABEL_6;
        case 3u:
          sub_100079DEC(v17, v13, type metadata accessor for LocationsAction);
          sub_100051108(v13, v10, type metadata accessor for LocationsAction);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_1000784D4(0);
              sub_10001FF30();
              sub_10004FE68(v13, v31);
              type metadata accessor for Location();
              sub_1000037E8();
              (*(v32 + 8))(v10);
              break;
            case 2u:
              v34[0] = v2;
              sub_10001FF30();
              sub_10004FE68(v10, v27);
              type metadata accessor for LocationsState(0);

              v28 = static SavedLocation.areListsEqual(_:_:)();

              if ((v28 & 1) == 0)
              {
                sub_1000784D4(0);
              }

              sub_10001FF30();
              sub_10004FE68(v13, v29);
              v2 = v34[0];
              v5 = v35;
              v10 = v36;
              break;
            case 3u:
            case 4u:
              sub_10001FF30();
              v23 = v13;
              goto LABEL_5;
            case 5u:
            case 6u:
              v5 = type metadata accessor for LocationsAction;
              sub_10004FE68(v13, type metadata accessor for LocationsAction);
              v23 = v10;
LABEL_25:
              v22 = v5;
              v5 = v35;
              goto LABEL_5;
            default:
              sub_10001FF30();
              sub_10004FE68(v13, v30);
              v22 = &type metadata accessor for CurrentLocation;
              v23 = v10;
              goto LABEL_5;
          }

          goto LABEL_6;
        case 0xCu:
        case 0xFu:
        case 0x12u:
          goto LABEL_6;
        case 0x13u:
          goto LABEL_16;
        default:
          if (*v17)
          {
            if (*v17 != 1)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_100057798();
          }

LABEL_16:
          sub_1000784D4(0);
LABEL_6:
          v20 += v21;
          if (!--v19)
          {
            return;
          }

          continue;
      }
    }
  }
}

uint64_t sub_10005815C(uint64_t a1)
{
  v399 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v423 = v2;
  __chkstk_darwin(v3);
  sub_1000038E4();
  v5 = sub_100003918(v4);
  v6 = type metadata accessor for PreviewLocation(v5);
  v7 = sub_10001BA94(v6, &v440);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v9 = sub_100003918(v8);
  v10 = type metadata accessor for ModalViewState(v9);
  v11 = sub_10001BA94(v10, v439);
  __chkstk_darwin(v11);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  v15 = sub_100003918(v14);
  v16 = type metadata accessor for LocationPreviewViewState(v15);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000038E4();
  v403 = v18;
  v19 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = sub_100003918(&v384 - v21);
  v23 = type metadata accessor for ActivityAction(v22);
  v24 = sub_10001BA94(v23, &v427);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v27 = sub_100003918(v26);
  v28 = type metadata accessor for EnvironmentAction(v27);
  v29 = sub_10001BA94(v28, v453);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003918(v31);
  v32 = type metadata accessor for SavedLocation();
  v33 = sub_100003AE8(v32);
  v409 = v34;
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v451[0] = v36;
  v407 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v438 = v37;
  __chkstk_darwin(v38);
  sub_1000038E4();
  sub_100003918(v39);
  v446 = type metadata accessor for Location();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  v449 = v45;
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  sub_100003918(v48);
  v49 = type metadata accessor for CurrentLocation();
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_1000038E4();
  v52 = sub_100003918(v51);
  v53 = type metadata accessor for LocationsAction(v52);
  v54 = sub_10001BA94(v53, &v452);
  __chkstk_darwin(v54);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v57 = sub_100003918(v56);
  v58 = type metadata accessor for TimeState(v57);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_1000038E4();
  v61 = sub_100003918(v60);
  v62 = type metadata accessor for ViewState.SecondaryViewState(v61);
  v63 = sub_10001BA94(v62, v451);
  __chkstk_darwin(v63);
  sub_1000038E4();
  v65 = sub_100003918(v64);
  v66 = type metadata accessor for ViewState(v65);
  v67 = sub_10001BA94(v66, &v449);
  __chkstk_darwin(v67);
  v69 = &v384 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v411 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v431 = v70;
  __chkstk_darwin(v71);
  sub_1000038E4();
  v410 = v72;
  v73 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v74 = sub_100003AE8(v73);
  v451[1] = v75;
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  v450 = v81;
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  v87 = sub_100003918(v86);
  v425 = type metadata accessor for MainAction(v87);
  sub_1000037C4();
  v89 = v88;
  __chkstk_darwin(v90);
  sub_1000038E4();
  v447 = v91;
  v92 = *(a1 + 64);
  v93 = *(v92 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v436 = *(v92 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v94 = *(v92 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v95 = *(v92 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v96 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  result = type metadata accessor for LocationsState(0);
  v98 = *(a1 + 40);
  if (*(v98 + 16))
  {
    v393 = a1;
    v392 = result;
    v99 = *(v92 + v96 + *(result + 32));
    v452 = v98 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v417 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    v100 = v92 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    v416 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_time;
    v442 = v93;

    v434 = v99;

    v391 = v100;
    swift_beginAccess();
    v101 = 0;
    v395 = 0;
    v418 = v69;
    v394 = v69 + 8;
    v448 = (v41 + 32);
    v396 = v41 + 8;
    v390 = (v438 + 8);
    v424 = v41;
    v385 = v41 + 16;
    v387 = v423 + 4;
    v386 = v423 + 1;
    v423 = v431 + 1;
    *&v102 = 141558275;
    v388 = v102;
    v103 = v440;
    v104 = v443;
    v431 = v89;
    v441 = v94;
    v437 = v92;
    v444 = v95;
    v105 = v98;
    v106 = v433;
    sub_10003A4AC();
    v107 = v447;
    while (1)
    {
      if (v101 >= *(v105 + 16))
      {
        __break(1u);
LABEL_119:
        __break(1u);
        JUMPOUT(0x10005A3ACLL);
      }

      v108 = v101++;
      sub_100051048(v452 + v89[9] * v108, v107, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          v109 = type metadata accessor for MainAction;
          v110 = v107;
LABEL_6:
          sub_10004FD00(v110, v109);
          goto LABEL_7;
        case 2u:
          v123 = v104;
          sub_1000113EC();
          sub_100079D2C(v124, v125, v126);
          sub_1000113EC();
          sub_100051048(v127, v128, v129);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              if ((v428[1] & 1) == 0 && *v428 != 4)
              {
                v271 = *(v393 + 56) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
                swift_beginAccess();
                v272 = *(v271 + 3);
                v104 = v123;
                if (v272 == 4)
                {
                  v89 = v106;
                  v273 = sub_100018090();
                  sub_10005A470(v273, v274);
                  sub_100011194();
                  sub_100031954(&v107[v275], v276, v277);
                  sub_1000373E8();
                  v384 = v105;
                  v93 = v442;
                  sub_10003CAAC();
                  sub_10005AE98(v278, v279, v280, v281, v282, v283, v284, v285);
                  sub_10001D458();
                  sub_10004FD00(v103, v286);
                  v107 = v447;
                  sub_100030728();
                  sub_1000180EC(v287, &qword_100CA65D8, &unk_100A3D9D0);
                  sub_1000373E8();
                  sub_10003A4AC();
                  v105 = v384;
                  sub_1001919F8();
                  v104 = v123;
                }
              }

              goto LABEL_19;
            case 3u:
            case 0xCu:
              sub_10004FD00(v428, type metadata accessor for EnvironmentAction);
              v89 = *(v445 + 16);
              sub_1008A5EC4(0, 0);
              sub_1000171E8();
              v186 = sub_1000254CC(v185);
              v103 = v413;
              sub_100051048(v186, v413, v187);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload == 4)
              {
                sub_1000171E8();
                sub_1000113EC();
                sub_100051048(v320, v321, v322);
                v323 = type metadata accessor for ModalViewState.MapViewModal(0);
                sub_1000038B4(v89, 1, v323);
                v106 = v446;
                v189 = v415;
                if (v121)
                {
                  sub_1000180EC(v404, &qword_100CA65E0, &unk_100A31400);
LABEL_98:
                  sub_10003BC84(v189, 1);
                  sub_100032070();
                  goto LABEL_100;
                }
              }

              else
              {
                v106 = v446;
                v189 = v415;
                if (EnumCaseMultiPayload)
                {
                  goto LABEL_98;
                }

                sub_1000171E8();
                sub_1000113EC();
                sub_100051048(v190, v191, v192);
              }

              sub_1000113EC();
              sub_100079D2C(v324, v325, v326);
              sub_100032070();
              sub_10005224C();
              sub_100051048(v89, v189, v327);
              sub_10004FD00(v89, type metadata accessor for LocationPreviewViewState);
              sub_10003BC84(v189, 0);
LABEL_100:
              sub_1000038B4(v189, 1, v89);
              if (v121)
              {
                v328 = sub_10001FEB4();
                sub_10004FD00(v328, v329);
                sub_1000180EC(v189, &qword_100CA65C8, &unk_100A31670);
                v330 = v412;
                sub_10001B350(v412, 1, 1, v106);
              }

              else
              {
                sub_10005224C();
                v103 = v414;
                sub_100051048(v189, v414, v331);
                v332 = swift_getEnumCaseMultiPayload();
                switch(v332)
                {
                  case 2:
                    sub_100018398();
                    v343 = v398;
                    v103 = v399;
                    v344(v398, v414, v399);
                    v330 = v412;
                    LocationOfInterest.location.getter();
                    sub_100018398();
                    v345(v343, v103);
                    goto LABEL_111;
                  case 3:
                  case 4:
                    sub_100037F04();
                    sub_10004FD00(v414, v336);
                    v337 = 1;
                    v330 = v412;
                    break;
                  default:
                    sub_1000212A0();
                    v330 = v412;
                    v333(v412, v414, v106);
LABEL_111:
                    v337 = 0;
                    break;
                }

                sub_10001B350(v330, v337, 1, v106);
                sub_100037F04();
                sub_10004FD00(v189, v346);
                sub_1000038B4(v330, 1, v106);
                if (!v121)
                {
                  sub_1000212A0();
                  v103 = v401;
                  v349(v401, v330, v106);
                  sub_100090A8C(v103, 0, v350, v351, v352, v353, v354, v355, v384, v385, v386, v387, v388, *(&v388 + 1), v389, v390, v391, v392, v393, v394);
                  sub_100024CD0();
                  v356(v103, v106);
                  v357 = sub_10001FEB4();
                  sub_10004FD00(v357, v358);
                  sub_100013FB4();
                  sub_100021804();
                  sub_100030728();
                  v107 = v447;
                  goto LABEL_59;
                }

                v347 = sub_10001FEB4();
                sub_10004FD00(v347, v348);
              }

              v104 = v123;
              sub_1000180EC(v330, &qword_100CA65D8, &unk_100A3D9D0);
              sub_100013FB4();
              sub_100021804();
              sub_100030728();
              v107 = v447;
              goto LABEL_7;
            case 4u:
              sub_100079D2C(v428, v106, type metadata accessor for ActivityAction);
              sub_100051048(v106, v103, type metadata accessor for ActivityAction);
              if (!swift_getEnumCaseMultiPayload())
              {
                sub_100079D2C(v103, v104, &type metadata accessor for SavedLocation);
                v338 = v400;
                SavedLocation.location.getter();
                v339 = v446;
                sub_1000038B4(v338, 1, v446);
                if (v121)
                {
                  sub_10004EE9C();
                  sub_1000165CC();
                  sub_10004FD00(v104, v340);
                  sub_100011958();
                  v341 = sub_10001FEB4();
                  sub_10004FD00(v341, v342);
                  sub_1000180EC(v338, &qword_100CA65D8, &unk_100A3D9D0);
                }

                else
                {
                  sub_1000212A0();
                  v359 = v106;
                  v360 = v397;
                  v361(v397, v338, v339);
                  sub_100018398();
                  v362 = v426;
                  v363(v426, v360, v339);
                  sub_10001B350(v362, 0, 1, v339);
                  sub_100011194();
                  v365 = sub_1000254CC(v364);
                  v93 = v105;
                  v366 = v435;
                  sub_100051048(v365, v435, v367);
                  sub_1000373E8();
                  sub_100015240();
                  v104 = v445;
                  sub_10005AE98(v368, v369, v370, v371, v372, v373, v366, 0);
                  sub_10001D458();
                  v105 = v93;
                  sub_10003A4AC();
                  sub_10004FD00(v374, v375);
                  sub_100021804();
                  sub_1000180EC(v376, &qword_100CA65D8, &unk_100A3D9D0);
                  sub_100024CD0();
                  v377 = v360;
                  v106 = v359;
                  v107 = v447;
                  v89 = v431;
                  v378(v377, v339);
                  sub_10004EE9C();
                  sub_1000165CC();
                  sub_10004FD00(v104, v379);
                  sub_100011958();
                  v380 = sub_10001FEB4();
                  sub_10004FD00(v380, v381);
                }

                goto LABEL_116;
              }

              v184 = type metadata accessor for ActivityAction;
              sub_10004FD00(v106, type metadata accessor for ActivityAction);
              v288 = sub_10001FEB4();
              sub_10004FD00(v288, v289);
              v110 = v103;
LABEL_74:
              v109 = v184;
              v104 = v123;
              goto LABEL_6;
            case 5u:
            case 0xAu:
              v184 = type metadata accessor for EnvironmentAction;
              sub_10004FD00(v439[0], type metadata accessor for EnvironmentAction);
              v110 = v428;
              goto LABEL_74;
            case 0xDu:
              v106 = v445;
              v246 = *(v445 + 112);
              os_unfair_lock_lock((v246 + 20));
              v103 = *(v246 + 16);
              *(v246 + 16) = 2;
              os_unfair_lock_unlock((v246 + 20));
              if (v103 == 1)
              {
                v384 = v105;
                v247 = v402;
                v89 = v437;
                v248 = sub_10005A470(v437, v402);
                __chkstk_darwin(v248);
                v383 = v247;
                v249 = v434;

                v103 = v395;
                v250 = sub_1008EF8DC(sub_1009AA888, (&v384 - 4), v249);
                v395 = v103;
                if ((v251 & 1) == 0)
                {
                  v252 = v250;
                  v253 = v434;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1000373E8();
                    sub_1008FBD4C();
                    v253 = v382;
                  }

                  v254 = *(v253 + 16);
                  if (v252 >= v254)
                  {
                    goto LABEL_119;
                  }

                  v106 = v254 - 1;
                  sub_10000C7B8();
                  v93 = *(v256 + 72);
                  v103 = v253 + v255 + v93 * v252;
                  (*(v256 + 8))(v103, v446);
                  sub_1006A06CC(v103 + v93, v106 - v252, v103);
                  *(v253 + 16) = v106;
                  v89 = v437;
                  sub_10003A4AC();
                }

                sub_10003C04C();
                sub_100011194();
                sub_100031954(v89 + v257, v258, v259);
                sub_10003CAAC();
                sub_10005AE98(v260, v261, v262, v263, v264, v265, v266, v267);

                sub_10001D458();
                sub_10004FD00(v103, v268);
                v104 = &qword_100CA65D8;
                sub_1000180EC(v106, &qword_100CA65D8, &unk_100A3D9D0);
                v269 = sub_10001FEB4();
                sub_10004FD00(v269, v270);
                sub_1000180EC(v402, &qword_100CA65D8, &unk_100A3D9D0);
                sub_1000165CC();
                sub_100030728();
                v105 = v384;
LABEL_67:
                v107 = v447;
                sub_100013FB4();
              }

              else
              {
                v334 = sub_10001FEB4();
                sub_10004FD00(v334, v335);
LABEL_58:
                sub_100013FB4();
LABEL_59:
                v104 = v123;
              }

              break;
            default:
LABEL_19:
              v110 = sub_10001FEB4();
              goto LABEL_6;
          }

          goto LABEL_7;
        case 3u:
          sub_1000113EC();
          sub_100079D2C(v130, v131, v132);
          sub_1000113EC();
          sub_100051048(v133, v134, v135);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_1000212A0();
              v172 = v420;
              v173(v420, v432, v446);
              v104 = *(v445 + 16);
              sub_100011194();
              v175 = sub_1000254CC(v174);
              v176 = v103;
              v177 = v105;
              v178 = v435;
              sub_100051048(v175, v435, v179);
              v93 = v442;
              sub_100079E4C(v172, v436, v442, v441, v444, v178, 0, 0, 0, 0, v384, v385, v386, v387, v388, *(&v388 + 1), v389, v390, v391, v392, v393, v394);
              sub_10001D458();
              v180 = v178;
              v105 = v177;
              v103 = v176;
              sub_10004FD00(v180, v181);
              sub_10003A4AC();
              sub_1008A6458();
              sub_100024CD0();
              v182 = v172;
              v106 = v433;
              v107 = v447;
              v89 = v431;
              v183(v182, v446);
              goto LABEL_33;
            case 2u:
              v384 = v105;
              sub_100006D14();
              v152 = sub_10004FD00(v432, v151);
              __chkstk_darwin(v152);
              v383 = v393;

              v153 = v395;
              sub_1008EE4A0();
              v155 = v154;
              v395 = v153;
              v156 = *(v154 + 16);
              if (v156)
              {
                v453[0] = _swiftEmptyArrayStorage;
                sub_1006A7C24();
                v157 = v453[0];
                sub_10000C7B8();
                v159 = v155 + v158;
                v161 = *(v160 + 72);
                v162 = v408;
                do
                {
                  v163 = v451[0];
                  sub_100051048(v159, v451[0], &type metadata accessor for SavedLocation);
                  SavedLocation.location.getter();
                  sub_10004EE9C();
                  sub_10004FD00(v163, v164);
                  v453[0] = v157;
                  v165 = v157[2];
                  if (v165 >= v157[3] >> 1)
                  {
                    sub_1006A7C24();
                    v157 = v453[0];
                  }

                  v157[2] = v165 + 1;
                  sub_10000C7B8();
                  sub_1003541A8(v162, v157 + v166 + *(v167 + 72) * v165);
                  v159 += v161;
                  --v156;
                }

                while (v156);

                v106 = v445;
                sub_100021804();
              }

              else
              {
                v106 = v445;

                v157 = _swiftEmptyArrayStorage;
              }

              v103 = v157[2];
              v290 = v446;
              v291 = v430;
              if (v103)
              {
                sub_10000C7B8();
                v293 = v157 + v292;
                v438 = *(v294 + 72);
                v89 = _swiftEmptyArrayStorage;
                do
                {
                  v295 = v450;
                  sub_100035AD0(v293, v450, &qword_100CA65D8, &unk_100A3D9D0);
                  sub_1003541A8(v295, v291);
                  sub_1000038B4(v291, 1, v290);
                  if (v121)
                  {
                    sub_1000180EC(v291, &qword_100CA65D8, &unk_100A3D9D0);
                  }

                  else
                  {
                    v296 = *v448;
                    (*v448)(v449, v291, v290);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_10003C154();
                      v89 = v302;
                    }

                    v298 = v89[2];
                    if (v298 >= v89[3] >> 1)
                    {
                      sub_10003C154();
                      v89 = v303;
                    }

                    v89[2] = v298 + 1;
                    sub_10000C7B8();
                    v301 = v89 + v299 + *(v300 + 72) * v298;
                    v290 = v446;
                    v296(v301, v449, v446);
                    v291 = v430;
                  }

                  v293 += v438;
                  --v103;
                }

                while (v103);

                v106 = v445;
                sub_100021804();
              }

              else
              {

                v89 = _swiftEmptyArrayStorage;
              }

              if (qword_100CA2730 != -1)
              {
                sub_10000EFB0();
                swift_once();
              }

              v304 = type metadata accessor for Logger();
              sub_10000703C(v304, qword_100D90BE8);

              v305 = Logger.logObject.getter();
              v306 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v305, v306))
              {
                v307 = swift_slowAlloc();
                v438 = swift_slowAlloc();
                v453[0] = v438;
                *v307 = v388;
                *(v307 + 4) = 1752392040;
                *(v307 + 12) = 2081;
                v308 = Array.description.getter();
                v310 = sub_100078694(v308, v309, v453);

                *(v307 + 14) = v310;
                sub_100021804();
                v311 = v106;
                _os_log_impl(&_mh_execute_header, v305, v306, "Fetching weather for new locations found in saved location sync, newLocations=%{private,mask.hash}s", v307, 0x16u);
                v103 = v438;
                sub_100006F14(v438);
              }

              else
              {

                v311 = v106;
              }

              v312 = sub_100018090();
              sub_10005A470(v312, v313);
              sub_100011194();
              sub_100031954(v305 + v314, v315, v316);
              v93 = v441;
              sub_10005AE98(v89, v106, v436, v442, v441, v444, v103, 0);
              sub_10001D458();
              sub_10004FD00(v103, v317);
              sub_1000180EC(v106, &qword_100CA65D8, &unk_100A3D9D0);
              v104 = *(v311 + 16);
              sub_1001919F8();

              sub_100006D14();
              v318 = sub_10006989C();
              sub_10004FD00(v318, v319);
              sub_100013FB4();
              sub_100030728();
              v105 = v384;
              sub_10003A4AC();
              v107 = v447;
              goto LABEL_35;
            case 3u:
            case 4u:
LABEL_33:
              sub_100006D14();
              v136 = sub_10006989C();
              goto LABEL_34;
            case 5u:
            case 6u:
              v104 = type metadata accessor for LocationsAction;
              sub_10004FD00(v439[1], type metadata accessor for LocationsAction);
              v136 = v432;
              v137 = type metadata accessor for LocationsAction;
LABEL_34:
              sub_10004FD00(v136, v137);
              goto LABEL_35;
            default:
              v168 = v421;
              sub_100079D2C(v432, v421, &type metadata accessor for CurrentLocation);
              v103 = v419;
              v104 = v168;
              CurrentLocation.location.getter();
              v106 = v446;
              sub_1000038B4(v103, 1, v446);
              if (!v121)
              {
                sub_1000212A0();
                v232 = v405;
                v233(v405, v103, v106);
                static os_signpost_type_t.event.getter();
                v234 = v445;
                v103 = v406;
                static OSSignpostID.exclusive.getter();
                v235 = v444;
                os_signpost(_:dso:log:name:signpostID:)();
                sub_100018398();
                v236(v103, v407);
                v104 = *(v234 + 16);
                sub_100011194();
                v238 = sub_1000254CC(v237);
                sub_100031954(v238, v239, v240);
                v93 = v105;
                v89 = v442;
                sub_100079E4C(v232, v436, v442, v441, v235, v103, 1, 0, 0, 0, v384, v385, v386, v387, v388, *(&v388 + 1), v389, v390, v391, v392, v393, v394);
                sub_10001D458();
                sub_10004FD00(v103, v241);
                sub_10003A4AC();
                sub_1008A6458();
                sub_1000165CC();
                sub_100024CD0();
                v242(v232, v106);
                sub_10002CC64();
                sub_10004FD00(v421, v243);
                sub_100006D14();
                v244 = sub_10006989C();
                sub_10004FD00(v244, v245);
                sub_100030728();
                goto LABEL_67;
              }

              sub_10002CC64();
              sub_10004FD00(v168, v169);
              sub_100006D14();
              v170 = sub_10006989C();
              sub_10004FD00(v170, v171);
              sub_1000180EC(v103, &qword_100CA65D8, &unk_100A3D9D0);
              sub_100030728();
              v107 = v447;
              sub_100013FB4();
LABEL_35:
              sub_1000165CC();
              break;
          }

          goto LABEL_7;
        case 0xCu:
        case 0xFu:
        case 0x12u:
          goto LABEL_7;
        case 0x13u:
          v89 = v106;
          v138 = sub_100018090();
          sub_10005A470(v138, v139);
          sub_100011194();
          sub_100031954(&v107[v140], v141, v142);
          sub_1000373E8();
          sub_100015240();
          sub_10005AE98(v143, v144, v145, v146, v147, v148, v103, 0);
          sub_10001D458();
          sub_10004FD00(v103, v149);
          v107 = v447;
          sub_100030728();
          sub_1000180EC(v150, &qword_100CA65D8, &unk_100A3D9D0);
          goto LABEL_7;
        default:
          v103 = *v107;
          if (v103 <= 1)
          {
            if (qword_100CA2730 != -1)
            {
              sub_10000EFB0();
              swift_once();
            }

            v111 = type metadata accessor for Logger();
            sub_10000703C(v111, qword_100D90BE8);
            v112 = Logger.logObject.getter();
            v113 = static os_log_type_t.default.getter();
            v114 = os_log_type_enabled(v112, v113);
            v115 = v445;
            v89 = v437;
            if (v114)
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&_mh_execute_header, v112, v113, "WeatherDataStoreObserver: Calling fetchWeatherForAllUserLocations for .didFinishLaunch .willEnterForeground event", v93, 2u);
              sub_10003A4AC();
            }

            v116 = v115;
            sub_10005A470(v89, v427);
            if (!v103)
            {
              sub_100035B30(v115 + 24, v453);
              v117 = sub_1000161C0(v453, v453[3]);
              sub_1000113EC();
              sub_100035AD0(v118, v119, &qword_100CA65D8, &unk_100A3D9D0);
              v120 = v446;
              sub_1000038B4(v115, 1, v446);
              if (v121)
              {
                sub_1000180EC(v115, &qword_100CA65D8, &unk_100A3D9D0);
                static Location.currentLocationID.getter();
                v93 = v122;
              }

              else
              {
                v193 = v89;
                v194 = v105;
                v195 = v410;
                Location.identifier.getter();
                sub_100024CD0();
                v196(v115, v120);
                Location.Identifier.id.getter();
                v93 = v197;
                sub_100018398();
                v198 = v195;
                v105 = v194;
                v89 = v193;
                v199(v198, v411);
              }

              v116 = *v117;
              sub_1000795F8();

              sub_100006F14(v453);
              sub_100021804();
              sub_10003A4AC();
            }

            v200 = v418;
            sub_100051048(v89 + v417, v418, type metadata accessor for ViewState);
            v106 = v422;
            sub_1000113EC();
            sub_100051048(v201, v202, v203);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_10004A00C();
              sub_10004FD00(v200, v204);
              sub_10004FD00(v116, type metadata accessor for ViewState.SecondaryViewState);
              v123 = v443;
              goto LABEL_56;
            }

            if (*&v394[*(v106 + 36)] == 1)
            {
              v205 = v200;
              v206 = [objc_opt_self() currentDevice];
              [v206 userInterfaceIdiom];

              v106 = *(v205 + *(v106 + 28));
              sub_10004A00C();
              v207 = v205;
              v89 = v437;
              sub_10004FD00(v207, v208);

              v123 = v443;
              if ((v106 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            else
            {
              sub_10004A00C();
              sub_10004FD00(v200, v209);

              v123 = v443;
            }

            sub_1000038B4(v427, 1, v446);
            if (v121)
            {
              v210 = *(v391 + *(type metadata accessor for EnvironmentState(0) + 56));
              if (v103)
              {
                v211 = 0;
              }

              else
              {
                v211 = v210 <= 0;
              }

              v212 = !v211;
              sub_10003C04C();
              sub_100011194();
              sub_100031954(v89 + v416, v213, v214);
              sub_1000373E8();
              sub_100015240();
              sub_10005AE98(v215, v216, v217, v218, v219, v220, v103, v212);
              sub_10001D458();
              sub_10004FD00(v103, v221);
              sub_1000180EC(v106, &qword_100CA65D8, &unk_100A3D9D0);
              v222 = v427;
            }

            else
            {
LABEL_56:
              sub_100011194();
              sub_100031954(v89 + v416, v223, v224);
              sub_1000373E8();
              v106 = v427;
              sub_100015240();
              sub_10005AE98(v225, v226, v227, v228, v229, v230, v103, 0);
              sub_10001D458();
              sub_10004FD00(v103, v231);
              v222 = v106;
            }

            sub_1000180EC(v222, &qword_100CA65D8, &unk_100A3D9D0);
            sub_100030728();
            v107 = v447;
            goto LABEL_58;
          }

LABEL_116:
          v103 = v440;
LABEL_7:
          if (v101 == v93)
          {
            sub_1000373E8();
          }

          break;
      }
    }
  }

  return result;
}

uint64_t sub_10005A470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_100078800(a1, v3, &v19 - v14);
  sub_100035AD0(v15, v12, &qword_100CA65D8, &unk_100A3D9D0);
  v16 = type metadata accessor for Location();
  if (sub_100024D10(v12, 1, v16) == 1)
  {
    sub_1000180EC(v12, &qword_100CA65D8, &unk_100A3D9D0);
    static os_signpost_type_t.event.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v17 = 1;
  }

  else
  {
    (*(*(v16 - 8) + 32))(a2, v12, v16);
    static os_signpost_type_t.event.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v17 = 0;
  }

  (*(v7 + 8))(v9, v6);
  sub_1000180EC(v15, &qword_100CA65D8, &unk_100A3D9D0);
  return sub_10001B350(a2, v17, 1, v16);
}

void sub_10005A708()
{
  sub_10000C778();
  v35 = v0;
  type metadata accessor for NetworkActivityCompletion(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v36 = v3 - v2;
  v4 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for WeatherNetworkActivity();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = v26 - v25;
  (*(v16 + 104))(v20, enum case for WeatherNetworkActivity.Domain.weather(_:), v14);
  (*(v9 + 16))(v13, v35 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_label, v7);
  v28 = type metadata accessor for UUID();
  sub_100003934();
  sub_10001B350(v29, v30, v31, v28);
  sub_100003934();
  sub_10001B350(v32, v33, v34, v28);
  WeatherNetworkActivity.init(domain:label:token:parentToken:)();
  WeatherNetworkActivity.createNWActivity()();
  (*(v23 + 8))(v27, v21);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_10005ABDC();

  sub_10005AE3C(v36);
  sub_10000536C();
}