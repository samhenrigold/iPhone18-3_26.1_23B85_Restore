uint64_t sub_19724(double a1, double a2)
{
  if (qword_38FD0 != -1)
  {
    sub_19F24(&qword_38FD0);
  }

  v4 = [objc_msgSend(qword_3A0C8 "placeholderImageProvider")];
  swift_unknownObjectRelease();

  return sub_29804();
}

uint64_t sub_19804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_298F4();
  sub_7AA0();
  v27 = v9;
  __chkstk_darwin(v10);
  sub_16B7C();
  v13 = v12 - v11;
  v26 = sub_29914();
  sub_7AA0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_16B7C();
  v19 = v18 - v17;
  sub_62A0(0, &qword_39150, OS_dispatch_queue_ptr);
  v20 = sub_29DB4();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5140;
  aBlock[3] = a5;
  v22 = _Block_copy(aBlock);

  v23 = a1;

  sub_29904();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_18244(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_51E0(&unk_39160, &qword_2AD50);
  sub_12C8C(&qword_39D90, &unk_39160, &qword_2AD50);
  sub_29E54();
  sub_29DC4();
  _Block_release(v22);

  (*(v27 + 8))(v13, v8);
  return (*(v15 + 8))(v19, v26);
}

uint64_t sub_19AD0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    v5 = sub_29804();
    sub_1944C(v5);
  }

  return result;
}

uint64_t sub_19B34()
{
  v1 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader__image;
  sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_C3B0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_model;
  sub_28CD4();
  sub_C3B0();
  (*(v4 + 8))(v0 + v3);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_19BE0()
{
  sub_19B34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_19C40(uint64_t a1)
{
  sub_19D3C(319, qword_39BA0, &unk_39770, &qword_2B200, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_28CD4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_19D3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_558C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_19DA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_19E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_19E78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_19ED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18288();
  *a1 = result;
  return result;
}

uint64_t sub_19F24(uint64_t a1)
{

  return swift_once();
}

uint64_t MapsPlaceCardView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29044();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MapsPlaceCardView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29034();
  v4 = v3;
  result = sub_29024();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_1A094()
{
  v2 = sub_1A888();

  return sub_B89C(v1, v0, v2);
}

uint64_t sub_1A0E0()
{
  v2 = sub_1A888();

  return sub_53C4(v1, v0, v0, v2);
}

uint64_t type metadata accessor for MapsPlaceCardView(uint64_t a1)
{
  result = qword_3A2E0;
  if (!qword_3A2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A168(uint64_t a1)
{
  result = sub_29044();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1A1D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MUPlaceViewControllerConfiguration) init];
  [v7 setOptions:a4];
  v8 = type metadata accessor for MapView();
  v16.receiver = objc_allocWithZone(v8);
  v16.super_class = v8;
  v9 = objc_msgSendSuper2(&v16, "initWithConfiguration:", v7);
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];

    sub_1A82C();
    sub_DACC(a2, a3);
    v13 = sub_1A330(a2, a3);
    if (v13)
    {
      v14 = v13;
      v15 = v9;
      [v15 setMapItem:v14];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A330(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_28BD4().super.isa;
    sub_1A870(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemWithSerializedPlaceData:isa];

  return v5;
}

uint64_t sub_1A410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7D8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1A474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7D8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1A4D8(uint64_t a1)
{
  sub_1A7D8();
  sub_29654();
  __break(1u);
}

id sub_1A544()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  LODWORD(v1) = 1148846080;
  LODWORD(v2) = 1112014848;
  return objc_msgSendSuper2(&v4, "_systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", 0.0, 0.0, v1, v2);
}

unint64_t sub_1A698()
{
  result = qword_3A340;
  if (!qword_3A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A340);
  }

  return result;
}

uint64_t sub_1A6EC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1A708(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A71C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1A768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1A7D8()
{
  result = qword_3A348;
  if (!qword_3A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A348);
  }

  return result;
}

unint64_t sub_1A82C()
{
  result = qword_3A350;
  if (!qword_3A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3A350);
  }

  return result;
}

uint64_t sub_1A870(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_DB24(result, a2);
  }

  return result;
}

uint64_t sub_1A888()
{

  return sub_29044();
}

uint64_t sub_1A8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AA0C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1A928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AA0C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1A98C(uint64_t a1)
{
  sub_1AA0C();
  sub_29654();
  __break(1u);
}

unint64_t sub_1A9B8()
{
  result = qword_3A358;
  if (!qword_3A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A358);
  }

  return result;
}

unint64_t sub_1AA0C()
{
  result = qword_3A360;
  if (!qword_3A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A360);
  }

  return result;
}

uint64_t sub_1AAB8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for AppIconView(0);
  v8 = (a4 + v7[5]);
  sub_29A94();
  sub_1DE3C();
  sub_1DA60(v9, v10, &protocol conformance descriptor for Context);
  *v8 = sub_29404();
  v8[1] = v11;
  v12 = v7[6];
  *(a4 + v12) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v13 = a4 + v7[7];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v7[8];
  v15 = sub_51E0(&unk_39770, &qword_2B200);
  sub_1DEAC(v15, v16);
  *(a4 + v14) = v19;
  a2(0);
  sub_C3B0();
  (*(v17 + 32))(a4, a1);
  type metadata accessor for AppIconView.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t AppIconView.init(modelData:)@<X0>(uint64_t a3@<X8>)
{
  v43 = type metadata accessor for AppIconView.Model(0);
  sub_C3B0();
  __chkstk_darwin(v4);
  sub_16B7C();
  v37 = (v6 - v5);
  sub_51E0(&qword_3A368, &qword_2BE70);
  sub_1DEC8();
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_28D84();
  sub_7AA0();
  v38 = v11;
  __chkstk_darwin(v12);
  sub_16B7C();
  v15 = (v14 - v13);
  v16 = type metadata accessor for AppIconView(0);
  v17 = (a3 + v16[5]);
  sub_29A94();
  sub_1DE3C();
  sub_1DA60(v18, v19, &protocol conformance descriptor for Context);
  v41 = sub_29404();
  *v17 = v41;
  v17[1] = v20;
  v21 = v16[6];
  *(a3 + v21) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v22 = a3 + v16[7];
  KeyPath = swift_getKeyPath();
  *v22 = KeyPath;
  *(v22 + 8) = 0;
  v23 = (a3 + v16[8]);
  v46 = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_29854();
  v24 = v45;
  *v23 = v44;
  v23[1] = v24;
  v39 = v24;
  v25 = sub_1DED4();
  sub_DACC(v25, v26);
  sub_1DED4();
  v27 = v42;
  sub_28D64();
  if (v27)
  {

    sub_53C4(v9, 1, 1, v10);
    sub_1D958(v9, &qword_3A368, &qword_2BE70);
    sub_28BB4();
    swift_allocObject();
    sub_28BA4();
    sub_28B94();
    v28 = sub_1DED4();
    sub_DB24(v28, v29);

    v33 = v45;
    v34 = v37;
    *v37 = v44;
    v34[1] = v33;
    swift_storeEnumTagMultiPayload();
    return sub_1D608();
  }

  else
  {
    v30 = sub_1DED4();
    sub_DB24(v30, v31);
    sub_53C4(v9, 0, 1, v10);
    v32 = *(v38 + 32);
    v32(v15, v9, v10);
    v32(a3, v15, v10);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B034(uint64_t a1)
{
  sub_51E0(&unk_39950, &unk_2B4C0);
  sub_1DEC8();
  __chkstk_darwin(v1);
  sub_1DDE8();
  return sub_29494();
}

uint64_t property wrapper backing initializer of AppIconView.appIconImage()
{
  v0 = sub_51E0(&unk_39770, &qword_2B200);
  sub_1DEAC(v0, v1);
  return v3;
}

uint64_t AppIconView.init(applicationBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AppIconView(0);
  v7 = (a3 + v6[5]);
  sub_29A94();
  sub_1DE3C();
  sub_1DA60(v8, v9, &protocol conformance descriptor for Context);
  *v7 = sub_29404();
  v7[1] = v10;
  v11 = v6[6];
  *(a3 + v11) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v6[7];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v6[8];
  v14 = sub_51E0(&unk_39770, &qword_2B200);
  sub_1DEAC(v14, v15);
  *(a3 + v13) = v17;
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for AppIconView.Model(0);
  return swift_storeEnumTagMultiPayload();
}

void *AppIconView.body.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B344(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B344@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v25 = sub_51E0(&qword_3A4C0, &qword_2BEE8);
  __chkstk_darwin(v25);
  v23 = &v21 - v1;
  v24 = sub_28F24();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_28D84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_51E0(&qword_3A4C8, &qword_2BEF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AppIconView.Model(0);
  __chkstk_darwin(v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D3CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v13, v4);
      v15 = sub_28D74();
      sub_1B700(v15, v16, v10);

      sub_1D19C();
      v17 = sub_298A4();
      result = (*(v5 + 8))(v7, v4);
    }

    else
    {
      v19 = v22;
      v20 = v24;
      (*(v22 + 32))(v3, v13, v24);
      sub_28F14();
      swift_getOpaqueTypeConformance2();
      v17 = sub_298A4();
      result = (*(v19 + 8))(v3, v20);
    }
  }

  else
  {
    sub_1B700(*v13, v13[1], v10);

    sub_1D19C();
    result = sub_298A4();
    v17 = result;
  }

  *v26 = v17;
  return result;
}

uint64_t sub_1B700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v6 = type metadata accessor for AppIconView(0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_51E0(&qword_3A4E0, &qword_2BEF8);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_1B9D0();
  if (v12)
  {

    return sub_53C4(a3, 1, 1, v7);
  }

  else
  {
    v14 = v10;
    v26 = v11;
    *v9 = sub_295A4();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v15 = sub_51E0(&qword_3A508, &qword_2BF10);
    sub_1BBF0(v3, &v9[*(v15 + 44)]);
    sub_298E4();
    sub_29364();
    v16 = &v9[*(sub_51E0(&qword_3A4F0, &qword_2BF00) + 36)];
    v17 = v29;
    *v16 = v28;
    *(v16 + 1) = v17;
    *(v16 + 2) = v30;
    v25 = v7;
    sub_1D3CC();
    v18 = a3;
    v19 = v27;
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v19;
    v21 = v26;
    v20[4] = v14;
    v20[5] = v21;
    sub_1D608();
    v22 = v25;
    v23 = &v9[*(v25 + 36)];
    sub_29384();

    sub_29CF4();
    *v23 = &unk_2BF20;
    *(v23 + 1) = v20;
    sub_1DA0C();
    return sub_53C4(v18, 0, 1, v22);
  }
}

uint64_t sub_1B9D0()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_28D44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C798(v3);
  if (sub_B89C(v3, 1, v4) == 1)
  {
    sub_1D958(v3, &unk_39950, &unk_2B4C0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = *(v0 + *(type metadata accessor for AppIconView(0) + 20));
    if (v9)
    {
      v10 = v9;
      sub_28D24();
      v12 = v11;

      (*(v5 + 8))(v7, v4);
      return v12;
    }

    else
    {
      sub_29A94();
      sub_1DA60(&qword_3A0D0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      result = sub_293F4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BBF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + *(type metadata accessor for AppIconView(0) + 32));
  sub_51E0(&qword_3A518, &qword_2BF28);
  sub_29864();
  if (v20[1])
  {
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v8 = sub_29844();

    (*(v5 + 8))(v7, v4);
    sub_1BE3C();
    v10 = v9;
    v11 = sub_51E0(&qword_3A528, &unk_2BF30);
    v12 = a2 + *(v11 + 36);
    v13 = *(sub_293D4() + 20);
    v14 = enum case for RoundedCornerStyle.continuous(_:);
    v15 = sub_29594();
    (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
    *v12 = v10;
    *(v12 + 1) = v10;
    *&v12[*(sub_51E0(&qword_39A20, &qword_2B358) + 36)] = 256;
    *a2 = v8;
    v16 = a2;
    v17 = 0;
    v18 = v11;
  }

  else
  {
    v18 = sub_51E0(&qword_3A528, &unk_2BF30);
    v16 = a2;
    v17 = 1;
  }

  return sub_53C4(v16, v17, 1, v18);
}

uint64_t sub_1BE3C()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_28D44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C798(v3);
  if (sub_B89C(v3, 1, v4) == 1)
  {
    return sub_1D958(v3, &unk_39950, &unk_2B4C0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + *(type metadata accessor for AppIconView(0) + 20));
  if (v9)
  {
    v10 = v9;
    sub_28D14();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_29A94();
    sub_1DA60(&qword_3A0D0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C044(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 88) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_29574();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_29CE4();
  *(v5 + 128) = sub_29CD4();
  v8 = sub_29CC4();
  *(v5 + 136) = v8;
  *(v5 + 144) = v7;

  return _swift_task_switch(sub_1C144, v8, v7);
}

uint64_t sub_1C144()
{
  v1 = *(v0 + 88);
  *(v0 + 208) = sub_1C598() & 1;
  v2 = type metadata accessor for AppIconView(0);
  *(v0 + 152) = v2;
  v3 = v1 + *(v2 + 28);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    v5 = *v3;
  }

  else
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);

    sub_29DA4();
    v9 = sub_29684();
    sub_1DE54(v9, &dword_0, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, &_swiftEmptyArrayStorage);

    sub_29564();
    sub_1DEA0();
    swift_getAtKeyPath();
    sub_12CD8(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = *(v0 + 32);
  }

  *(v0 + 160) = v5;

  return _swift_task_switch(sub_1C270, 0, 0);
}

uint64_t sub_1C270()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 208);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_1D74C();

  v7 = sub_1D790(v6, v5);
  *(v0 + 168) = v7;
  v8 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v4 scale:{v3, v1}];
  v9 = v8;
  *(v0 + 176) = v8;
  if (v2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [v8 setShape:v10];
  *(v0 + 184) = [v7 prepareImageForDescriptor:v9];
  *(v0 + 192) = sub_29CD4();
  v12 = sub_29CC4();

  return _swift_task_switch(sub_1C3B4, v12, v11);
}

uint64_t sub_1C3B4()
{
  v1 = v0[23];
  v2 = *(v0 + 20);

  sub_1D804(v1, v0 + 5, v2);
  v0[25] = v0[5];

  return _swift_task_switch(sub_1C470, 0, 0);
}

uint64_t sub_1C470()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);

  return _swift_task_switch(sub_1C4E0, v3, v4);
}

uint64_t sub_1C4E0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);

  *(v0 + 16) = *(v3 + *(v2 + 32));
  *(v0 + 48) = v1;
  sub_51E0(&qword_3A518, &qword_2BF28);
  sub_29874();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C598()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_28D44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C798(v3);
  if (sub_B89C(v3, 1, v4) == 1)
  {
    sub_1D958(v3, &unk_39950, &unk_2B4C0);
    v8 = 0;
    return v8 & 1;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + *(type metadata accessor for AppIconView(0) + 20));
  if (v9)
  {
    v10 = v9;
    v8 = sub_28D04();

    (*(v5 + 8))(v7, v4);
    return v8 & 1;
  }

  sub_29A94();
  sub_1DA60(&qword_3A0D0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  result = sub_293F4();
  __break(1u);
  return result;
}

uint64_t sub_1C798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v36 = sub_29574();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_51E0(&qword_38FE0, &qword_2AB60);
  __chkstk_darwin(v35);
  v4 = sub_51E0(&unk_39950, &unk_2B4C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v40 = sub_28D44();
  v38 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = sub_28D84();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppIconView.Model(0);
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  sub_1D3CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_53C4(v39, 1, 1, v40);
      return sub_1D9B0(v18);
    }

    v20 = v13;
    (*(v13 + 32))(v15, v18, v12);
    sub_28D54();
    v21 = v38;
    v22 = v40;
    (*(v38 + 104))(v9, enum case for ImageElement.ImageStyle.default(_:), v40);
    sub_1DA60(&qword_3A520, &type metadata accessor for ImageElement.ImageStyle, &protocol conformance descriptor for ImageElement.ImageStyle);
    v23 = sub_29AF4();
    v24 = *(v21 + 8);
    v24(v9, v22);
    v24(v11, v22);
    if (v23)
    {
      type metadata accessor for AppIconView(0);
      sub_1DAA8();
      return (*(v20 + 8))(v15, v12);
    }

    v31 = v39;
    sub_28D54();
    (*(v20 + 8))(v15, v12);
  }

  else
  {
    v27 = v33;
    v26 = v34;
    v28 = v6;
    v29 = v36;
    sub_1D9B0(v18);
    type metadata accessor for AppIconView(0);
    sub_1DDE8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v28;
      sub_1DA0C();
    }

    else
    {
      sub_29DA4();
      v32 = sub_29684();
      sub_29244();

      sub_29564();
      v30 = v28;
      swift_getAtKeyPath();

      (*(v26 + 8))(v27, v29);
    }

    v31 = v39;
    v22 = v40;
    if (sub_B89C(v30, 1, v40) == 1)
    {
      (*(v38 + 104))(v31, enum case for ImageElement.ImageStyle.appIcon2(_:), v22);
      if (sub_B89C(v30, 1, v22) != 1)
      {
        sub_1D958(v30, &unk_39950, &unk_2B4C0);
      }
    }

    else
    {
      (*(v38 + 32))(v31, v30, v22);
    }
  }

  return sub_53C4(v31, 0, 1, v22);
}

uint64_t sub_1CDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppIconView.Model(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_B89C(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1CEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppIconView.Model(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v10 = a1 + *(a4 + 24);
  }

  return sub_53C4(v10, a2, a2, v9);
}

void sub_1CF88(uint64_t a1)
{
  type metadata accessor for AppIconView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_BABC(319);
    if (v2 <= 0x3F)
    {
      sub_1D0AC(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_114FC();
        if (v4 <= 0x3F)
        {
          sub_1D0AC(319, &unk_3A3D8, &unk_39770, &qword_2B200, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D0AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_558C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D11C(uint64_t a1)
{
  result = sub_28D84();
  if (v2 <= 0x3F)
  {
    result = sub_28F24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D19C()
{
  result = qword_3A4D0;
  if (!qword_3A4D0)
  {
    sub_558C(&qword_3A4C8, &qword_2BEF0);
    sub_1D220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4D0);
  }

  return result;
}

unint64_t sub_1D220()
{
  result = qword_3A4D8;
  if (!qword_3A4D8)
  {
    sub_558C(&qword_3A4E0, &qword_2BEF8);
    sub_1D2DC();
    sub_1DA60(&unk_39B40, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4D8);
  }

  return result;
}

unint64_t sub_1D2DC()
{
  result = qword_3A4E8;
  if (!qword_3A4E8)
  {
    sub_558C(&qword_3A4F0, &qword_2BF00);
    sub_1D368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4E8);
  }

  return result;
}

unint64_t sub_1D368()
{
  result = qword_3A4F8;
  if (!qword_3A4F8)
  {
    sub_558C(&qword_3A500, &qword_2BF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4F8);
  }

  return result;
}

uint64_t sub_1D3CC()
{
  sub_C3F0();
  v1(0);
  sub_C3B0();
  v2 = sub_1DEA0();
  v3(v2);
  return v0;
}

uint64_t sub_1D420()
{
  v1 = type metadata accessor for AppIconView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  type metadata accessor for AppIconView.Model(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_28F24();
      goto LABEL_7;
    case 1:
      sub_28D84();
LABEL_7:
      sub_C3B0();
      (*(v7 + 8))(v0 + v3);
      break;
    case 0:

      break;
  }

  v8 = v1[6];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_28D44();
    if (!sub_B89C(v5 + v8, 1, v9))
    {
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_12CD8(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D608()
{
  sub_C3F0();
  v1(0);
  sub_C3B0();
  v2 = sub_1DEA0();
  v3(v2);
  return v0;
}

uint64_t sub_1D65C()
{
  v2 = *(type metadata accessor for AppIconView(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_A57C;

  return sub_1C044(v4, v5, v0 + v3, v6, v7);
}

unint64_t sub_1D74C()
{
  result = qword_3A510;
  if (!qword_3A510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3A510);
  }

  return result;
}

id sub_1D790(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_29B04();

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

void sub_1D804(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  if (a1 && (v5 = [a1 CGImage]) != 0)
  {
    v6 = v5;
    [objc_allocWithZone(UIImage) initWithCGImage:v5 scale:0 orientation:a3];
    v7 = sub_29804();
  }

  else
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v8 = sub_29264();
    sub_5BB4(v8, qword_3C140);
    v9 = sub_29254();
    v10 = sub_29D94();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Unable to convert ISIcon to a cgImage", v11, 2u);
    }

    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_1D958(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_51E0(a2, a3);
  sub_C3B0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D9B0(uint64_t a1)
{
  v2 = type metadata accessor for AppIconView.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA0C()
{
  sub_C3F0();
  sub_51E0(v1, v2);
  sub_C3B0();
  v3 = sub_1DEA0();
  v4(v3);
  return v0;
}

uint64_t sub_1DA60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA8()
{
  v1 = sub_29574();
  sub_7AA0();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_16B7C();
  v7 = v6 - v5;
  sub_51E0(&qword_38FE0, &qword_2AB60);
  sub_C3B0();
  sub_1DEC8();
  __chkstk_darwin(v8);
  sub_1DE74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DA0C();
  }

  sub_29DA4();
  v10 = sub_29684();
  sub_1DE54(v10, &dword_0, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, &_swiftEmptyArrayStorage);

  sub_29564();
  swift_getAtKeyPath();

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_1DC3C@<X0>(void *a1@<X8>)
{
  v3 = sub_29574();
  sub_7AA0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_16B7C();
  v9 = v8 - v7;
  sub_51E0(&qword_39A08, &qword_2B550);
  sub_C3B0();
  sub_1DEC8();
  __chkstk_darwin(v10);
  sub_1DE74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_293C4();
    sub_C3B0();
    return (*(v11 + 32))(a1, v1);
  }

  else
  {
    sub_29DA4();
    v13 = sub_29684();
    sub_1DE54(v13, &dword_0, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v15, v16, &_swiftEmptyArrayStorage);

    sub_29564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1DDE8()
{
  sub_C3F0();
  sub_51E0(v1, v2);
  sub_C3B0();
  v3 = sub_1DEA0();
  v4(v3);
  return v0;
}

uint64_t sub_1DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_29244();
}

uint64_t sub_1DE74()
{

  return sub_1DDE8();
}

uint64_t sub_1DEAC(uint64_t a1, uint64_t a2, ...)
{

  return sub_29854();
}

uint64_t CoreChartPluginView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_291B4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DF7C()
{
  v2 = sub_1E0C8();

  return sub_B89C(v1, v0, v2);
}

uint64_t sub_1DFC8()
{
  v2 = sub_1E0C8();

  return sub_53C4(v1, v0, v0, v2);
}

uint64_t type metadata accessor for CoreChartPluginView(uint64_t a1)
{
  result = qword_3A588;
  if (!qword_3A588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E050(uint64_t a1)
{
  result = sub_291B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E0C8()
{

  return sub_291B4();
}

uint64_t ContactPickerButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactPickerButtonView(0);
  v5 = (a2 + *(v4 + 20));
  sub_29A94();
  sub_1E208();
  *v5 = sub_29404();
  v5[1] = v6;
  v7 = a2 + *(v4 + 24);
  sub_29854();
  *v7 = v10;
  *(v7 + 8) = v11;
  sub_290C4();
  sub_C3B0();
  return (*(v8 + 32))(a2, a1);
}

uint64_t type metadata accessor for ContactPickerButtonView(uint64_t a1)
{
  result = qword_3A628;
  if (!qword_3A628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E208()
{
  result = qword_3A0D0;
  if (!qword_3A0D0)
  {
    sub_29A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A0D0);
  }

  return result;
}

uint64_t ContactPickerButtonView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_298E4();
  a1[1] = v4;
  v5 = sub_51E0(&qword_3A5C8, &qword_2BFC0);
  return sub_1E2E8(v2, a1 + *(v5 + 44));
}

uint64_t sub_1E2E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v60 = sub_28C54();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29104();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_28EC4();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29124();
  __chkstk_darwin(v8 - 8);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29934();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_51E0(&qword_3A738, &qword_2C1A0);
  v12 = __chkstk_darwin(v61);
  v66 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v65 = &v50 - v17;
  v18 = type metadata accessor for ContactPickerButtonView(0);
  v68 = *(v18 - 8);
  v19 = *(v68 + 64);
  v20 = (a1 + *(__chkstk_darwin(v18) + 24));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(__src[0]) = *v20;
  __src[1] = v22;
  sub_51E0(&qword_3A740, &qword_2C1A8);
  sub_29864();
  v72 = 0;
  v73 = 0;
  v23 = 0;
  v69 = 0;
  v70 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v71 = 0;
  if (v83 == 1)
  {
    LOBYTE(v83) = v21;
    v84 = v22;
    sub_29884();
    v72 = __src[1];
    v73 = __src[0];
    v71 = LOBYTE(__src[2]);
    sub_1FCB4(a1, &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v70 = swift_allocObject();
    sub_1FD1C(&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v70 + v31);
    sub_29A94();
    sub_1E208();
    v24 = sub_29404();
    v69 = v32;
    sub_298E4();
    sub_29364();
    v25 = v96;
    v26 = v97;
    v27 = v98;
    v28 = v99;
    v29 = v100;
    v30 = v101;
    v23 = sub_1FFA0;
  }

  v74 = v23;
  v75 = v30;
  v76 = v29;
  v77 = v28;
  v78 = v27;
  v79 = v26;
  v80 = v25;
  v81 = v24;
  v33 = sub_29134();
  __src[3] = v33;
  __src[4] = &protocol witness table for Command;
  v34 = sub_BF4C(__src);
  (*(*(v33 - 8) + 104))(v34, enum case for Command.noOp(_:), v33);
  v86 = sub_28EB4();
  v87 = &protocol witness table for TextProperty;
  sub_BF4C(&v83);
  sub_290B4();
  memset(v82, 0, 40);
  (*(v51 + 104))(v53, enum case for _ProtoButton.FormAction.none(_:), v52);
  (*(v55 + 104))(v57, enum case for Button.LabelStyle.automatic(_:), v56);
  (*(v58 + 104))(v59, enum case for ButtonRole.standard(_:), v60);
  sub_29114();
  sub_1FCB4(a1, &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v36 = swift_allocObject();
  sub_1FD1C(&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
  v37 = v62;
  sub_29924();
  v38 = *(a1 + *(v18 + 20));
  if (v38)
  {
    v39 = v38;
    sub_29A34();

    sub_298E4();
    sub_293E4();
    (*(v63 + 32))(v16, v37, v64);
    memcpy(&v16[*(v61 + 36)], __src, 0x70uLL);
    v40 = v65;
    sub_1FDE0(v16, v65);
    v41 = v66;
    sub_1FE50(v40, v66, &qword_3A738, &qword_2C1A0);
    v43 = v72;
    v42 = v73;
    v82[0] = v73;
    v82[1] = v72;
    v44 = v70;
    v45 = v71;
    v82[2] = v71;
    v82[3] = v74;
    v82[4] = v70;
    v82[5] = v81;
    v46 = v69;
    v82[6] = v69;
    v82[7] = v80;
    v82[8] = v79;
    v82[9] = v78;
    v82[10] = v77;
    v82[11] = v76;
    v82[12] = v75;
    v47 = v67;
    memcpy(v67, v82, 0x68uLL);
    v48 = sub_51E0(&qword_3A748, &qword_2C1B0);
    sub_1FE50(v41, v47 + *(v48 + 48), &qword_3A738, &qword_2C1A0);
    sub_1FE50(v82, &v83, &qword_3A750, &qword_2C1B8);
    sub_1D958(v40, &qword_3A738, &qword_2C1A0);
    sub_1D958(v41, &qword_3A738, &qword_2C1A0);
    v83 = v42;
    v84 = v43;
    v85 = v45;
    v86 = v74;
    v87 = v44;
    v88 = v81;
    v89 = v46;
    v90 = v80;
    v91 = v79;
    v92 = v78;
    v93 = v77;
    v94 = v76;
    v95 = v75;
    return sub_1D958(&v83, &qword_3A750, &qword_2C1B8);
  }

  else
  {
    sub_29A94();
    sub_1E208();
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1EBF0(void *a1)
{
  v2 = v1;
  v4 = sub_29094();
  v5 = sub_29084();
  v7 = v6;
  v8 = [a1 identifier];
  v9 = sub_29B14();
  v11 = v10;

  v20 = &type metadata for String;
  *&v19 = v9;
  *(&v19 + 1) = v11;
  sub_20004(&v19, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20398(v18, v5, v7, isUniquelyReferenced_nonNull_native);

  v13 = v4;
  v14 = *(v2 + *(type metadata accessor for ContactPickerButtonView(0) + 20));
  if (v14)
  {
    v15 = v14;
    sub_290A4();
    sub_1EDBC(v13);

    sub_29A84();
  }

  else
  {
    sub_29A94();
    v17 = sub_1E208();
    result = sub_20890(v17);
    __break(1u);
  }

  return result;
}

uint64_t sub_1ED48(uint64_t a1)
{
  type metadata accessor for ContactPickerButtonView(0);
  sub_51E0(&qword_3A740, &qword_2C1A8);
  return sub_29874();
}

uint64_t sub_1EDBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_51E0(&qword_3A758, &qword_2C1C0);
    v2 = sub_29FF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_DF18(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_20004(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20004(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20004(v31, v32);
    result = sub_29EC4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_20004(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_290C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_B89C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1F164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_290C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_53C4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1F20C(uint64_t a1)
{
  sub_290C4();
  if (v1 <= 0x3F)
  {
    sub_BABC(319);
    if (v2 <= 0x3F)
    {
      sub_1F2A8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1F2A8()
{
  if (!qword_3A640)
  {
    v0 = sub_29894();
    if (!v1)
    {
      atomic_store(v0, &qword_3A640);
    }
  }
}

id sub_1F2F8()
{
  objc_allocWithZone(type metadata accessor for SystemContactPicker.SystemContactPickerViewController());
  v4 = *v0;
  v3 = *(v0 + 40);
  sub_1FC04(&v4, v2);

  sub_1FE50(&v3, v2, &qword_3A720, &qword_2C190);
  return sub_1F388(v0);
}

id sub_1F388(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1F3F8()
{
  if (qword_38FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_29264();
  sub_5BB4(v0, qword_3C140);
  v1 = sub_29254();
  v2 = sub_29DA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_DA08(0xD000000000000025, 0x800000000002E5C0, &v6);
    _os_log_impl(&dword_0, v1, v2, "%{public}s", v3, 0xCu);
    sub_5FD0(v4);
  }

  result = sub_29FD4();
  __break(1u);
  return result;
}

void sub_1F570()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v2 setDelegate:v0];
  v3 = *&v0[OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 40];
  if (v3)
  {
    v4 = v3;
    sub_29A54();

    [v1 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    sub_29A94();
    v5 = sub_1E208();
    sub_20890(v5);
    __break(1u);
  }
}

void sub_1F690()
{
  v1 = v0 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container;
  sub_51E0(&qword_3A730, &qword_2C198);
  sub_298B4();
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v2;
    sub_29A44();
  }

  else
  {
    sub_29A94();
    v4 = sub_1E208();
    sub_20890(v4);
    __break(1u);
  }
}

uint64_t sub_1F78C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container;
  sub_51E0(&qword_3A730, &qword_2C198);
  sub_298B4();
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = v5;
    sub_29A44();

    return (*(v4 + 24))(a2);
  }

  else
  {
    sub_29A94();
    v8 = sub_1E208();
    result = sub_20890(v8);
    __break(1u);
  }

  return result;
}

unint64_t sub_1F99C()
{
  result = qword_3A708;
  if (!qword_3A708)
  {
    sub_558C(&qword_3A710, &qword_2C068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A708);
  }

  return result;
}

__n128 sub_1FA00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1FA1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1FA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1FC60();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1FC60();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1FB84(uint64_t a1)
{
  sub_1FC60();
  sub_29654();
  __break(1u);
}

unint64_t sub_1FBB0()
{
  result = qword_3A718;
  if (!qword_3A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A718);
  }

  return result;
}

unint64_t sub_1FC60()
{
  result = qword_3A728;
  if (!qword_3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A728);
  }

  return result;
}

uint64_t sub_1FCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FD80()
{
  v1 = *(type metadata accessor for ContactPickerButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1ED48(v2);
}

uint64_t sub_1FDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A738, &qword_2C1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FE50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_51E0(a3, a4);
  sub_C3B0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1FEB0()
{
  v1 = (type metadata accessor for ContactPickerButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_290C4();
  sub_C3B0();
  (*(v5 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

_OWORD *sub_20004(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_20014(uint64_t a1)
{
  sub_2A0B4();
  sub_20590(__src, a1);
  v2 = sub_2A0D4();

  return sub_200F8(a1, v2);
}

unint64_t sub_20080(uint64_t a1, uint64_t a2)
{
  sub_2A0B4();
  sub_29BA4();
  v4 = sub_2A0D4();

  return sub_201AC(a1, a2, v4);
}

unint64_t sub_200F8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {

    v7 = sub_206E4(v6, a1);

    if (v7)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_201AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2A034() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_20260(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20014(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_51E0(&qword_39B10, &qword_2C1D0);
  if (!sub_29FB4(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_20014(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_51E0(&unk_3A770, &qword_2B320);
    result = sub_2A054();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    sub_204E0(v14, a2, a1, v18);
  }
}

_OWORD *sub_20398(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20080(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_51E0(&unk_3A760, &qword_2C1C8);
  if (!sub_29FB4(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_20080(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_2A054();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_5FD0(v21);

    return sub_20004(a1, v21);
  }

  else
  {
    sub_20524(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_204E0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_20524(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20004(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_20590(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2A0D4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_2A0C4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_2A0B4();

        sub_29BA4();
        v10 = sub_2A0D4();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_206E4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_2A0B4();

      sub_29BA4();
      v15 = sub_2A0D4();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_2A034();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20890(uint64_t a1)
{

  return sub_293F4();
}

uint64_t IntentsUIStandardView.init(modelData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29014();
  sub_7AA0();
  v32 = v7;
  v9 = __chkstk_darwin(v8);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for IntentsUIStandardView(0);
  v14 = (a3 + v13[5]);
  sub_29A94();
  sub_20D60(&qword_3A0D0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  v15 = sub_29404();
  *v14 = v15;
  v14[1] = v16;
  v17 = v13[6];
  *(a3 + v17) = swift_getKeyPath();
  sub_51E0(&qword_38FE8, &unk_2C210);
  swift_storeEnumTagMultiPayload();
  v18 = v13[7];
  _s12SystemPlugin16SashStandardViewV14_actionHandler33_289897A7AC71DBD41716A1019D2705CFLL9SnippetUI06ActionG0Vvpfi_0();
  sub_DACC(a1, a2);
  sub_20D60(&qword_396B0, &type metadata accessor for IntentsUIStandard, &protocol conformance descriptor for IntentsUIStandard);
  v35 = a1;
  v19 = v34;
  sub_28FA4();
  if (v19)
  {
    sub_DB24(v35, a2);

    sub_236D8(a3 + v17, &qword_396B8, &qword_2B0E0);
    sub_29994();
    sub_7B1C();
    return (*(v20 + 8))(a3 + v18);
  }

  else
  {
    v22 = v32;
    (*(v32 + 32))(a3, v12, v6);
    v23 = v33;
    (*(v22 + 16))(v33, a3, v6);
    v24 = objc_allocWithZone(type metadata accessor for IntentsUIStandardViewModel(0));
    sub_1F30(v23, 0, 0);
    v25 = (a3 + v13[8]);
    sub_237EC();
    sub_20D60(v26, v27, &unk_2AD08);
    v28 = sub_29394();
    v30 = v29;
    result = sub_DB24(v35, a2);
    *v25 = v28;
    v25[1] = v30;
  }

  return result;
}

uint64_t type metadata accessor for IntentsUIStandardView(uint64_t a1)
{
  result = qword_3A7F8;
  if (!qword_3A7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntentsUIStandardView.model.getter()
{
  sub_29014();
  sub_C3B0();
  v0 = sub_1DEA0();

  return v1(v0);
}

uint64_t sub_20CB8(uint64_t a1)
{
  v2 = sub_51E0(&qword_3A810, &unk_2C2B8);
  v3 = sub_23804(v2);
  __chkstk_darwin(v3);
  sub_2379C(a1, &v6 - v4, &qword_3A810, &unk_2C2B8);
  return sub_294B4();
}

uint64_t sub_20D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t property wrapper backing initializer of IntentsUIStandardView.viewModel(uint64_t a1)
{
  swift_getObjectType();
  sub_237EC();
  sub_20D60(v1, v2, &unk_2AD08);
  sub_1DEA0();

  return sub_29394();
}

uint64_t IntentsUIStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntentsUIStandardView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_51E0(&qword_3A780, &qword_2C220);
  v7 = sub_23804(v6);
  __chkstk_darwin(v7);
  v9 = __src - v8;
  v10 = sub_51E0(&qword_3A788, &qword_2C228);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = __src - v12;
  *v9 = sub_295A4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_51E0(&qword_3A790, &qword_2C230);
  sub_21094(v1);
  sub_298E4();
  sub_293E4();
  sub_225F4(v9, v13, &qword_3A780, &qword_2C220);
  memcpy(&v13[*(v11 + 44)], __src, 0x70uLL);
  sub_22510(v1, __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_22578(__src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_225F4(v13, a1, &qword_3A788, &qword_2C228);
  result = sub_51E0(&qword_3A798, &qword_2C238);
  v17 = (a1 + *(result + 36));
  *v17 = sub_225DC;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_21094(uint64_t a1)
{
  v2 = type metadata accessor for IntentsUIStandardView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(sub_1CC0() + 16);

  v9[0] = 0;
  v9[1] = v5;
  swift_getKeyPath();
  sub_22510(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_22578(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_51E0(&qword_3A870, &qword_2C2E0);
  sub_51E0(&qword_3A878, &qword_2C2E8);
  sub_22C80();
  sub_22D60();
  return sub_298D4();
}

uint64_t sub_21228@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = type metadata accessor for IntentsUIStandardView(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = v6;
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29194();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_51E0(&qword_3A8E8, &qword_2C318);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v48 = sub_51E0(&qword_3A8F0, &unk_2C320);
  __chkstk_darwin(v48);
  v15 = (&v43 - v14);
  v16 = sub_51E0(&qword_39550, &qword_2AF20);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v49 = sub_51E0(&qword_3A8F8, &qword_2C330);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v43 - v19;
  v20 = *a1;
  result = sub_1CC0();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 >= *(result + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_230B8(result + 48 * v20 + 32, v57);

  if (v58)
  {
    sub_23114(v57, &v51);
    sub_21FF4(v10);
    sub_29954();
    (*(v8 + 8))(v10, v7);
    v22 = sub_29964();
    if (sub_B89C(v13, 1, v22) == 1)
    {
      sub_236D8(v13, &qword_3A8E8, &qword_2C318);
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v23 = sub_29944();
      (*(*(v22 - 8) + 8))(v13, v22);
      v36 = v45;
      sub_22510(a2, v45);
      v37 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v25 = swift_allocObject();
      sub_22578(v36, v25 + v37);
      v24 = sub_232CC;
    }

    *v15 = v23;
    v15[1] = v24;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = v25;
    swift_storeEnumTagMultiPayload();
    sub_51E0(&qword_3A8D0, &qword_2C308);
    v38 = sub_558C(&qword_3A898, &qword_2C2F0);
    v39 = sub_28EE4();
    v40 = sub_558C(&qword_3A8A0, &qword_2C2F8);
    v41 = sub_22E6C();
    v42 = sub_22EF8();
    v59 = v38;
    v60 = v39;
    v61 = v40;
    v62 = v41;
    *&v63 = v42;
    swift_getOpaqueTypeConformance2();
    sub_22FB0();
    sub_295D4();
    return sub_5FD0(&v51);
  }

  else
  {
    v26 = *&v57[0];
    v45 = v26;
    [v26 preferredContentSize];
    sub_298E4();
    sub_29364();
    v51 = v26;
    v52 = v59;
    LOBYTE(v53) = v60;
    v54 = v61;
    LOBYTE(v55) = v62;
    v56 = v63;
    v27 = sub_29004();
    v44 = &v43;
    __chkstk_darwin(v27);
    *(&v43 - 2) = a2;
    v43 = sub_51E0(&qword_3A898, &qword_2C2F0);
    v28 = v15;
    v29 = sub_28EE4();
    v30 = sub_51E0(&qword_3A8A0, &qword_2C2F8);
    v31 = sub_22E6C();
    v32 = sub_22EF8();
    v33 = v46;
    sub_29754();
    sub_236D8(v18, &qword_39550, &qword_2AF20);

    v34 = v47;
    v35 = v49;
    (*(v47 + 16))(v28, v33, v49);
    swift_storeEnumTagMultiPayload();
    sub_51E0(&qword_3A8D0, &qword_2C308);
    v51 = v43;
    v52 = v29;
    v53 = v30;
    v54 = v31;
    v55 = v32;
    swift_getOpaqueTypeConformance2();
    sub_22FB0();
    sub_295D4();

    return (*(v34 + 8))(v33, v35);
  }
}

id sub_219A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v20 = *(a1 + 40);
  v18 = *a1;
  v19 = *(a1 + 48);
  v12 = sub_298E4();
  v14 = v13;
  v15 = a4 + *(sub_51E0(&qword_3A8A0, &qword_2C2F8) + 36);
  sub_21A90(a3, a2, v15);
  v16 = (v15 + *(sub_51E0(&qword_3A8C0, &qword_2C300) + 36));
  *v16 = v12;
  v16[1] = v14;
  *a4 = v18;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v20;
  *(a4 + 48) = v19;

  return v18;
}

uint64_t sub_21A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = sub_28EE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for IntentsUIStandardView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_297C4();
  v11 = sub_297E4();

  sub_298E4();
  sub_293E4();
  __src[0] = v11;
  sub_22510(a1, v10);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v4);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_22578(v10, v14 + v12);
  (*(v5 + 32))(v14 + v13, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_51E0(&qword_3A900, &qword_2C338);
  sub_23654();
  sub_29784();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_236D8(__dst, &qword_3A900, &qword_2C338);
}

uint64_t sub_21D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_51E0(&qword_39548, &qword_2C340);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_51E0(&qword_39550, &qword_2AF20);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_51E0(&qword_39558, &qword_2AF28);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  type metadata accessor for IntentsUIStandardView(0);
  sub_29974();
  v12 = sub_29A14();
  if (sub_B89C(v11, 1, v12) == 1)
  {
    return sub_236D8(v11, &qword_39558, &qword_2AF28);
  }

  v14 = sub_28EE4();
  (*(*(v14 - 8) + 16))(v8, a2, v14);
  sub_53C4(v8, 0, 1, v14);
  v15 = enum case for InteractionType.componentTapped(_:);
  v16 = sub_299A4();
  (*(*(v16 - 8) + 104))(v5, v15, v16);
  sub_53C4(v5, 0, 1, v16);
  sub_29A04();
  sub_236D8(v5, &qword_39548, &qword_2C340);
  sub_236D8(v8, &qword_39550, &qword_2AF20);
  return (*(*(v12 - 8) + 8))(v11, v12);
}

uint64_t sub_21FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29574();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_51E0(&qword_38FE8, &unk_2C210);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_51E0(&qword_3A810, &unk_2C2B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for IntentsUIStandardView(0);
  sub_2379C(v1 + *(v13 + 24), v9, &qword_38FE8, &unk_2C210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2372C(v9, v12);
  }

  else
  {
    sub_29DA4();
    v14 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v15 = sub_29194();
  if (sub_B89C(v12, 1, v15) != 1)
  {
    return (*(*(v15 - 8) + 32))(a1, v12, v15);
  }

  sub_236D8(v12, &qword_3A810, &unk_2C2B8);
  if (qword_38FB0 != -1)
  {
    swift_once();
  }

  v17 = sub_29264();
  sub_5BB4(v17, qword_3C140);
  v18 = sub_29254();
  v19 = sub_29DA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_DA08(0xD00000000000003BLL, 0x800000000002E650, &v23);
    _os_log_impl(&dword_0, v18, v19, "%{public}s", v20, 0xCu);
    sub_5FD0(v21);
  }

  result = sub_29FD4();
  __break(1u);
  return result;
}

void sub_223DC(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for IntentsUIStandardView(0) + 20));
  if (v1)
  {
    v2 = v1;
    v3 = sub_29A64();

    if (v3)
    {
      if ([v3 respondsToSelector:"informHostOfViewResize:"])
      {
        [v3 informHostOfViewResize:{0.0, 0.0}];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_29A94();
    sub_20D60(&qword_3A0D0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_293F4();
    __break(1u);
  }
}

uint64_t sub_22510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsUIStandardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsUIStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_23828(a1, a2, a3, a4);
  sub_C3B0();
  v5 = sub_1DEA0();
  v6(v5);
  return v4;
}

uint64_t sub_22670(uint64_t a1, uint64_t a2, int *a3)
{
  sub_29014();
  sub_C40C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_B89C(v9, a2, v8);
  }

  sub_51E0(&qword_396B8, &qword_2B0E0);
  sub_C40C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_29994();
  sub_C40C();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_227C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_29014();
  sub_C40C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_51E0(&qword_396B8, &qword_2B0E0);
    sub_C40C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_29994();
      sub_C40C();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_53C4(v11, a2, a2, v10);
}

void sub_228F8(uint64_t a1)
{
  sub_29014();
  if (v1 <= 0x3F)
  {
    sub_BABC(319);
    if (v2 <= 0x3F)
    {
      sub_229C4(319);
      if (v3 <= 0x3F)
      {
        sub_29994();
        if (v4 <= 0x3F)
        {
          sub_22A28(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_229C4(uint64_t a1)
{
  if (!qword_3A808)
  {
    sub_558C(&qword_3A810, &unk_2C2B8);
    v1 = sub_29334();
    if (!v2)
    {
      atomic_store(v1, &qword_3A808);
    }
  }
}

void sub_22A28(uint64_t a1)
{
  if (!qword_3A818)
  {
    type metadata accessor for IntentsUIStandardViewModel(255);
    sub_20D60(&qword_396C0, type metadata accessor for IntentsUIStandardViewModel, &unk_2AD08);
    v1 = sub_293A4();
    if (!v2)
    {
      atomic_store(v1, &qword_3A818);
    }
  }
}

unint64_t sub_22AC0()
{
  result = qword_3A858;
  if (!qword_3A858)
  {
    sub_558C(&qword_3A798, &qword_2C238);
    sub_22B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A858);
  }

  return result;
}

unint64_t sub_22B4C()
{
  result = qword_3A860;
  if (!qword_3A860)
  {
    sub_558C(&qword_3A788, &qword_2C228);
    sub_156A4(&qword_3A868, &qword_3A780, &qword_2C220, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A860);
  }

  return result;
}

uint64_t sub_22C04@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IntentsUIStandardView(0);
  sub_23804(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_21228(a1, v7, a2);
}

unint64_t sub_22C80()
{
  result = qword_3A880;
  if (!qword_3A880)
  {
    sub_558C(&qword_3A870, &qword_2C2E0);
    sub_22D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A880);
  }

  return result;
}

unint64_t sub_22D0C()
{
  result = qword_3A888;
  if (!qword_3A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A888);
  }

  return result;
}

unint64_t sub_22D60()
{
  result = qword_3A890;
  if (!qword_3A890)
  {
    sub_558C(&qword_3A878, &qword_2C2E8);
    sub_558C(&qword_3A898, &qword_2C2F0);
    sub_28EE4();
    sub_558C(&qword_3A8A0, &qword_2C2F8);
    sub_22E6C();
    sub_22EF8();
    swift_getOpaqueTypeConformance2();
    sub_22FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A890);
  }

  return result;
}

unint64_t sub_22E6C()
{
  result = qword_3A8A8;
  if (!qword_3A8A8)
  {
    sub_558C(&qword_3A898, &qword_2C2F0);
    sub_1A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8A8);
  }

  return result;
}

unint64_t sub_22EF8()
{
  result = qword_3A8B0;
  if (!qword_3A8B0)
  {
    sub_558C(&qword_3A8A0, &qword_2C2F8);
    sub_22E6C();
    sub_156A4(&qword_3A8B8, &qword_3A8C0, &qword_2C300, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8B0);
  }

  return result;
}

unint64_t sub_22FB0()
{
  result = qword_3A8C8;
  if (!qword_3A8C8)
  {
    sub_558C(&qword_3A8D0, &qword_2C308);
    sub_23034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8C8);
  }

  return result;
}

unint64_t sub_23034()
{
  result = qword_3A8D8;
  if (!qword_3A8D8)
  {
    sub_558C(&qword_3A8E0, &qword_2C310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8D8);
  }

  return result;
}

uint64_t sub_23114(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2312C()
{
  type metadata accessor for IntentsUIStandardView(0);
  sub_23810();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  sub_29014();
  sub_7B1C();
  (*(v8 + 8))(v1 + v4);

  v9 = v0[6];
  sub_51E0(&qword_38FE8, &unk_2C210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_29194();
    if (!sub_B89C(v7 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }
  }

  else
  {
  }

  v11 = v0[7];
  sub_29994();
  sub_7B1C();
  (*(v12 + 8))(v7 + v11);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_232E4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for IntentsUIStandardView(0);
  sub_23804(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_2335C()
{
  type metadata accessor for IntentsUIStandardView(0);
  sub_23810();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v20 = *(v5 + 64);
  v6 = sub_28EE4();
  sub_7AA0();
  v8 = v7;
  v9 = *(v7 + 80);
  v21 = *(v10 + 64);
  v11 = v1 + v4;
  sub_29014();
  sub_7B1C();
  (*(v12 + 8))(v1 + v4);

  v13 = v0[6];
  sub_51E0(&qword_38FE8, &unk_2C210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_29194();
    if (!sub_B89C(v11 + v13, 1, v14))
    {
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }
  }

  else
  {
  }

  v15 = v3 | v9;
  v16 = (v4 + v20 + v9) & ~v9;
  v17 = v0[7];
  sub_29994();
  sub_7B1C();
  (*(v18 + 8))(v11 + v17);

  (*(v8 + 8))(v1 + v16, v6);

  return _swift_deallocObject(v1, v16 + v21, v15 | 7);
}

uint64_t sub_2358C()
{
  v1 = *(type metadata accessor for IntentsUIStandardView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_28EE4();
  sub_23804(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_21D5C(v0 + v2, v6);
}

unint64_t sub_23654()
{
  result = qword_3A908;
  if (!qword_3A908)
  {
    sub_558C(&qword_3A900, &qword_2C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A908);
  }

  return result;
}

uint64_t sub_236D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_51E0(a2, a3);
  sub_7B1C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2372C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A810, &unk_2C2B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_23828(a1, a2, a3, a4);
  sub_C3B0();
  v5 = sub_1DEA0();
  v6(v5);
  return v4;
}

uint64_t sub_23828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_51E0(a3, a4);
}

uint64_t CircleImageView.init(model:)(uint64_t a1)
{
  v2 = sub_28CD4();
  sub_7AA0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_16B7C();
  v8 = v7 - v6;
  sub_29A94();
  sub_2455C();
  sub_24050(v9, v10, &protocol conformance descriptor for Context);
  v11 = sub_29404();
  (*(v4 + 16))(v8, a1, v2);
  if ((*(v4 + 88))(v8, v2) == enum case for ContactImage.visual(_:))
  {
    (*(v4 + 8))(a1, v2);
    (*(v4 + 96))(v8, v2);
    return *v8;
  }

  else
  {
    v13 = *(v4 + 8);
    v13(v8, v2);
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v14 = sub_29264();
    sub_5BB4(v14, qword_3C140);
    v15 = sub_29254();
    v16 = sub_29D94();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Provided model is not a visual model.", v17, 2u);
    }

    sub_23AD8();
    swift_allocError();
    swift_willThrow();

    return v13(a1, v2);
  }
}

unint64_t sub_23AD8()
{
  result = qword_3A910;
  if (!qword_3A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A910);
  }

  return result;
}

uint64_t CircleImageView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v55 = a1;
  v58 = a4;
  sub_28D44();
  sub_7AA0();
  v56 = v6;
  v57 = v5;
  __chkstk_darwin(v5);
  sub_16B7C();
  v51 = v8 - v7;
  v50 = sub_28CA4();
  sub_7AA0();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_16B7C();
  v14 = v13 - v12;
  sub_51E0(&qword_39568, &qword_2AF38);
  sub_1DEC8();
  __chkstk_darwin(v15);
  v16 = sub_299E4();
  sub_7AA0();
  v52 = v17;
  __chkstk_darwin(v18);
  sub_16B7C();
  v21 = v20 - v19;
  sub_51E0(&qword_3A918, &qword_2C348);
  sub_7AA0();
  v53 = v23;
  v54 = v22;
  sub_1DEC8();
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  sub_51E0(&qword_3A920, &qword_2C350);
  sub_7AA0();
  v48 = v28;
  v49 = v27;
  sub_1DEC8();
  __chkstk_darwin(v29);
  v31 = &v47 - v30;
  v47 = sub_51E0(&qword_3A928, &qword_2C358);
  sub_1DEC8();
  __chkstk_darwin(v32);
  v34 = &v47 - v33;
  if (a2)
  {
    v35 = a2;
    sub_29A24();

    sub_29E14();
    sub_28ED4();
    sub_29C94();
    (*(v10 + 8))(v14, v50);
    sub_299D4();
    v37 = v56;
    v36 = v57;
    v38 = v51;
    (*(v56 + 104))(v51, enum case for ImageElement.ImageStyle.contactImage5(_:), v57);
    v39 = sub_24050(&qword_3A930, &type metadata accessor for VisualElementView, &protocol conformance descriptor for VisualElementView);
    sub_29714();
    (*(v37 + 8))(v38, v36);
    (*(v52 + 8))(v21, v16);
    v59 = v16;
    v60 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = v54;
    sub_29734();
    (*(v53 + 8))(v26, v40);
    (*(v48 + 32))(v34, v31, v49);
    *&v34[*(v47 + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v42 = v58;
    sub_240F0(v34, v58);
    result = sub_51E0(&qword_3A938, &qword_2C390);
    v44 = v42 + *(result + 36);
    *v44 = KeyPath;
    *(v44 + 8) = 1;
  }

  else
  {
    sub_29A94();
    sub_2455C();
    sub_24050(v45, v46, &protocol conformance descriptor for Context);
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_24050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_240F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A928, &qword_2C358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24188(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_241C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2421C()
{
  result = qword_3A940;
  if (!qword_3A940)
  {
    sub_558C(&qword_3A938, &qword_2C390);
    sub_242D4();
    sub_156A4(&qword_3A960, &qword_3A968, &qword_2C438, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A940);
  }

  return result;
}

unint64_t sub_242D4()
{
  result = qword_3A948;
  if (!qword_3A948)
  {
    sub_558C(&qword_3A928, &qword_2C358);
    sub_558C(&qword_3A918, &qword_2C348);
    sub_299E4();
    sub_24050(&qword_3A930, &type metadata accessor for VisualElementView, &protocol conformance descriptor for VisualElementView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_156A4(&qword_3A950, &qword_3A958, &qword_2C430, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A948);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CircleImageView.Error(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x244CCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24508()
{
  result = qword_3A970;
  if (!qword_3A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A970);
  }

  return result;
}

uint64_t sub_24574(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_245B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_2461C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_295A4();
  v11 = 1;
  sub_24740(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_24A24(__dst, v9);
  sub_24AA4(v13, &qword_3A978, &qword_2C578);
  memcpy(&v10[7], __dst, 0x48uLL);
  LOBYTE(a2) = v11;
  sub_298E4();
  sub_293E4();
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  memcpy((a3 + 17), v10, 0x4FuLL);
  return memcpy((a3 + 96), __src, 0x70uLL);
}

uint64_t sub_24740@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_51E0(&qword_3A980, &qword_2C580);
  __chkstk_darwin(v6 - 8);
  v8 = v28 - v7;
  v9 = sub_51E0(&qword_3A988, &qword_2C588);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v28[0] = a1;
    v28[1] = a2;
    sub_179D0();

    v13 = sub_29704();
    v15 = v14;
    v17 = v16;
    v19 = v18 & 1;
    sub_24A94(v13, v14, v18 & 1);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v17 = 0;
  }

  sub_29814();
  sub_295B4();
  v20 = sub_295C4();
  sub_53C4(v11, 0, 1, v20);
  v21 = sub_29834();

  sub_24AA4(v11, &qword_3A988, &qword_2C588);
  v22 = sub_297A4();
  v23 = sub_297D4();
  v24 = sub_296E4();
  sub_53C4(v8, 1, 1, v24);
  v25 = sub_296F4();
  sub_24AA4(v8, &qword_3A980, &qword_2C580);
  KeyPath = swift_getKeyPath();
  sub_24B60(v13, v15, v19, v17);

  sub_24BA4(v13, v15, v19, v17);
  *a3 = v13;
  a3[1] = v15;
  a3[2] = v19;
  a3[3] = v17;
  a3[4] = v21;
  a3[5] = v22;
  a3[6] = v23;
  a3[7] = KeyPath;
  a3[8] = v25;

  return sub_24BA4(v13, v15, v19, v17);
}

uint64_t sub_24A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A978, &qword_2C578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24A94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24AA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_51E0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29524();
  *a1 = result;
  return result;
}

uint64_t sub_24B60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24A94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24BA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24BE8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24BE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24BFC()
{
  result = qword_3A990;
  if (!qword_3A990)
  {
    sub_558C(&qword_3A998, &qword_2C5C0);
    sub_24C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A990);
  }

  return result;
}

unint64_t sub_24C88()
{
  result = qword_3A9A0;
  if (!qword_3A9A0)
  {
    sub_558C(&qword_3A9A8, &qword_2C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A9A0);
  }

  return result;
}

uint64_t MapsOverlayView.init(model:)(uint64_t a1)
{
  v3 = sub_28B1C();
  v4 = type metadata accessor for MapsOverlayView(v3);
  v5 = (v1 + *(v4 + 24));
  sub_29A94();
  sub_27B74();
  *v5 = sub_29404();
  v5[1] = v6;
  v7 = sub_28F84();
  sub_C40C();
  v9 = v8;
  (*(v8 + 16))(v1, a1, v7);
  sub_28F64();
  v11 = v10;
  sub_28F74();
  v13 = v12;
  v14 = COERCE_DOUBLE(sub_28F34());
  if (v15)
  {
    v16 = 0.01;
  }

  else
  {
    v16 = v14;
  }

  v17 = sub_28F44();
  v19 = v18;
  result = (*(v9 + 8))(a1, v7);
  v21 = *&v17;
  if (v19)
  {
    v21 = 0.01;
  }

  v22 = v1 + *(v4 + 20);
  *v22 = v11;
  *(v22 + 8) = v13;
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  *(v22 + 32) = 0;
  return result;
}

double property wrapper backing initializer of MapsOverlayView.region@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MKCoordinateRegion(0);
  sub_29854();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t MapsOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24F88(v1, a1);
  v3 = a1 + *(sub_51E0(&qword_3A9B0, &qword_2C5D0) + 36);
  *v3 = 0x3FF0000000000000;
  *(v3 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  result = sub_51E0(&qword_3A9B8, &qword_2C608);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_27908;
  v7[2] = v5;
  return result;
}

uint64_t sub_24F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = sub_51E0(&qword_3ACC0, &qword_2C8C0);
  __chkstk_darwin(v64);
  v62 = v60 - v3;
  v4 = sub_29204();
  __chkstk_darwin(v4 - 8);
  v60[1] = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_51E0(&qword_3AC60, &qword_2C888);
  __chkstk_darwin(v6 - 8);
  v8 = v60 - v7;
  v9 = sub_51E0(&qword_3AC48, &qword_2C718);
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v60 - v10;
  v12 = sub_51E0(&qword_3ACC8, &qword_2C8C8);
  __chkstk_darwin(v12 - 8);
  v14 = v60 - v13;
  v15 = sub_29184();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28F54();
  v19 = v15;
  if (sub_B89C(v14, 1, v15) == 1)
  {
    sub_288A0();
    v20 = a1 + *(type metadata accessor for MapsOverlayView(0) + 20);
    v21 = *(v20 + 32);
    v22 = *(v20 + 16);
    *v72 = *v20;
    *&v72[16] = v22;
    *&v72[32] = v21;
    sub_51E0(&qword_3ACD0, &qword_2C8D0);
    sub_29884();
    v23 = sub_51E0(&qword_3AC70, &qword_2C898);
    sub_53C4(v8, 1, 1, v23);
    sub_291F4();
    sub_291D4();
    v24 = v61;
    (*(v61 + 16))(v62, v11, v9);
    swift_storeEnumTagMultiPayload();
    sub_51E0(&qword_3AC00, &qword_2C700);
    sub_2841C();
    sub_C26C();
    sub_295D4();
    return (*(v24 + 8))(v11, v9);
  }

  v26 = a1;
  v27 = *(v16 + 32);
  v61 = v19;
  v27(v18, v14, v19);
  MapItems.mapAnnotation.getter();
  v60[0] = v18;
  if (!v28)
  {
    MapItems.mapMarker.getter();
    if (v43)
    {
      v44 = v43;
      v45 = type metadata accessor for MapsOverlayView(0);
      v46 = *(a1 + *(v45 + 24));
      v42 = v62;
      if (!v46)
      {
        goto LABEL_16;
      }

      v47 = v26 + *(v45 + 20);
      v48 = *(v47 + 32);
      v49 = *(v47 + 16);
      *v72 = *v47;
      *&v72[16] = v49;
      *&v72[32] = v48;
      v50 = v46;
      sub_51E0(&qword_3ACD0, &qword_2C8D0);
      sub_29884();
      *&v66 = v44;
      *(&v66 + 1) = v50;
      v67 = v74;
      v68 = v75;
      v69 = v76;
      v74 = v66;
      v75 = v67;
      v51 = v76;
      v76 = v68;
      v77 = v51;
      v70 = 1;
      LOBYTE(v78) = 1;
      sub_288F4(&v66, v72);
      sub_285B8();
      sub_2860C();
      sub_295D4();
      memcpy(v72, v65, sizeof(v72));
      v71 = 0;
      v73 = 0;
      sub_51E0(&qword_3AC20, &qword_2C710);
      sub_2852C();
      sub_28660();
      sub_295D4();
      sub_2892C(&v66);
    }

    else
    {
      MapItems.mapPin.getter();
      v42 = v62;
      if (!v52)
      {
        v37 = 0uLL;
        v41 = -256;
        v38 = 0uLL;
        v40 = 0uLL;
        v39 = 0uLL;
        goto LABEL_13;
      }

      v53 = v52;
      v54 = type metadata accessor for MapsOverlayView(0);
      v55 = *(v26 + *(v54 + 24));
      if (!v55)
      {
LABEL_16:
        sub_29A94();
        sub_27B74();
        result = sub_293F4();
        __break(1u);
        return result;
      }

      v56 = v26 + *(v54 + 20);
      v57 = *(v56 + 32);
      v58 = *(v56 + 16);
      *v72 = *v56;
      *&v72[16] = v58;
      *&v72[32] = v57;
      v59 = v55;
      sub_51E0(&qword_3ACD0, &qword_2C8D0);
      sub_29884();
      v65[0] = 1;
      *v72 = v53;
      *&v72[8] = v59;
      *&v72[16] = v74;
      *&v72[32] = v75;
      *&v72[48] = v76;
      v73 = 1;
      sub_51E0(&qword_3AC20, &qword_2C710);
      sub_2852C();
      sub_28660();
      sub_295D4();
    }

    v37 = v74;
    v38 = v75;
    v40 = v76;
    v39 = v77;
    v41 = v78;
    goto LABEL_13;
  }

  v29 = v28;
  v30 = type metadata accessor for MapsOverlayView(0);
  v31 = *(a1 + *(v30 + 24));
  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = a1 + *(v30 + 20);
  v33 = *(v32 + 32);
  v34 = *(v32 + 16);
  *v72 = *v32;
  *&v72[16] = v34;
  *&v72[32] = v33;
  v35 = v31;
  sub_51E0(&qword_3ACD0, &qword_2C8D0);
  sub_29884();
  *&v66 = v29;
  *(&v66 + 1) = v35;
  v67 = v74;
  v68 = v75;
  v69 = v76;
  v74 = v66;
  v75 = v67;
  v36 = v76;
  v76 = v68;
  v77 = v36;
  v70 = 0;
  LOBYTE(v78) = 0;
  sub_2895C(&v66, v72);
  sub_285B8();
  sub_2860C();
  sub_295D4();
  memcpy(v72, v65, sizeof(v72));
  v71 = 0;
  v73 = 0;
  sub_51E0(&qword_3AC20, &qword_2C710);
  sub_2852C();
  sub_28660();
  sub_295D4();
  sub_28994(&v66);
  v37 = v74;
  v38 = v75;
  v40 = v76;
  v39 = v77;
  v41 = v78;
  v42 = v62;
LABEL_13:
  *v42 = v37;
  *(v42 + 1) = v38;
  *(v42 + 2) = v40;
  *(v42 + 3) = v39;
  *(v42 + 32) = v41;
  swift_storeEnumTagMultiPayload();
  sub_51E0(&qword_3AC00, &qword_2C700);
  sub_2841C();
  sub_C26C();
  sub_295D4();
  return (*(v16 + 8))(v60[0], v61);
}

void MapItems.mapAnnotation.getter()
{
  sub_28B5C();
  v1 = type metadata accessor for MapIdentifiablePlace.ViewType(0);
  sub_C3B0();
  __chkstk_darwin(v2);
  sub_28A18();
  v84 = (v3 - v4);
  __chkstk_darwin(v5);
  sub_28AE0();
  sub_E4E0(v6);
  v98 = sub_28C44();
  sub_7AA0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_16B7C();
  v97 = v11 - v10;
  v12 = sub_51E0(&qword_3A9C0, &qword_2C610);
  v13 = sub_23804(v12);
  __chkstk_darwin(v13);
  sub_28A18();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_28AE0();
  v96 = v18;
  v95 = sub_29174();
  sub_7AA0();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_16B7C();
  v94 = v23 - v22;
  type metadata accessor for MapIdentifiablePlace(0);
  sub_7AA0();
  v92 = v25;
  v93 = v24;
  __chkstk_darwin(v24);
  sub_28A18();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v82 - v30;
  v32 = sub_29184();
  sub_7AA0();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_16B7C();
  v38 = (v37 - v36);
  (*(v34 + 16))(v37 - v36, v0, v32);
  if ((*(v34 + 88))(v38, v32) == enum case for MapItems.mapAnnotationItem(_:))
  {
    v100 = v8;
    (*(v34 + 96))(v38, v32);
    v39 = *v38;
    v40 = *(*v38 + 16);
    if (v40)
    {
      v101 = v28;
      v102 = &_swiftEmptyArrayStorage;
      sub_276CC(0, v40, 0);
      v41 = v102;
      v43 = *(v20 + 16);
      v42 = v20 + 16;
      v88 = v43;
      v44 = (*(v42 + 64) + 32) & ~*(v42 + 64);
      v82 = v39;
      v45 = v39 + v44;
      v86 = (v100 + 32);
      v87 = (v42 - 8);
      v90 = v31;
      v91 = v42;
      v85 = *(v42 + 56);
      v99 = v1;
      v89 = v16;
      do
      {
        v100 = v41;
        v47 = v94;
        v46 = v95;
        v88(v94, v45, v95);
        sub_29154();
        v49 = v48;
        sub_29164();
        v51 = v50;
        v52 = v96;
        sub_29144();
        swift_storeEnumTagMultiPayload();
        sub_28AB8();
        sub_53C4(v53, v54, v55, v1);
        v56 = v97;
        sub_28C34();
        (*v87)(v47, v46);
        v57 = v1;
        v58 = v93;
        v59 = *(v93 + 24);
        v60 = v101;
        *(v101 + v59) = 0;
        v61 = *(v58 + 28);
        v62 = sub_28CF4();
        sub_28A8C();
        sub_53C4(v63, v64, v65, v62);
        v66 = v56;
        v67 = v89;
        (*v86)(v60, v66, v98);
        v68 = (v60 + *(v58 + 20));
        *v68 = v49;
        v68[1] = v51;
        sub_27960(v52, v67);
        if (sub_B89C(v67, 1, v57) == 1)
        {
          sub_288A0();
          v69 = v101;
        }

        else
        {
          v70 = v67;
          v71 = v83;
          sub_279D0(v70, v83, type metadata accessor for MapIdentifiablePlace.ViewType);
          v72 = v84;
          sub_279D0(v71, v84, type metadata accessor for MapIdentifiablePlace.ViewType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v69 = v101;
            sub_288A0();
            sub_28A80();
            (*(v73 + 32))(v69 + v61, v72, v62);
            sub_28AB8();
            sub_53C4(v74, v75, v76, v62);
          }

          else
          {
            v69 = v101;
            *(v101 + v59) = *v72;
          }
        }

        v77 = v90;
        sub_279D0(v69, v90, type metadata accessor for MapIdentifiablePlace);
        v41 = v100;
        v102 = v100;
        v79 = *(v100 + 2);
        v78 = *(v100 + 3);
        if (v79 >= v78 >> 1)
        {
          sub_276CC((v78 > 1), v79 + 1, 1);
          v41 = v102;
        }

        *(v41 + 2) = v79 + 1;
        sub_28AEC();
        sub_28A50();
        sub_279D0(v77, v80, v81);
        v45 += v85;
        --v40;
        v1 = v99;
      }

      while (v40);
    }
  }

  else
  {
    (*(v34 + 8))(v38, v32);
  }

  sub_28B78();
}

void sub_25F68(uint64_t a1)
{
  sub_28B5C();
  v151 = v2;
  v152 = v3;
  v150 = v4;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for MapIdentifiablePlace.ViewType(0);
  sub_C3B0();
  __chkstk_darwin(v10);
  sub_28A18();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v15);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v16);
  sub_28AE0();
  sub_E4E0(v17);
  v149 = sub_28C44();
  sub_7AA0();
  v155 = v18;
  __chkstk_darwin(v19);
  sub_28A18();
  sub_28A28();
  __chkstk_darwin(v20);
  sub_28AE0();
  v134 = v21;
  v22 = sub_51E0(&qword_3A9C0, &qword_2C610);
  v23 = sub_23804(v22);
  __chkstk_darwin(v23);
  sub_28A18();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v28);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v29);
  sub_28AE0();
  sub_E4E0(v30);
  v148 = sub_290F4();
  sub_7AA0();
  v154 = v31;
  __chkstk_darwin(v32);
  sub_16B7C();
  v147 = v34 - v33;
  v146 = v8(0);
  sub_7AA0();
  v36 = v35;
  __chkstk_darwin(v37);
  v39 = v124 - v38;
  type metadata accessor for MapIdentifiablePlace(0);
  sub_7AA0();
  v144 = v41;
  v145 = v40;
  __chkstk_darwin(v40);
  sub_28A18();
  sub_28A28();
  __chkstk_darwin(v42);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v43);
  sub_28AE0();
  sub_E4E0(v44);
  v45 = sub_29184();
  sub_7AA0();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_16B7C();
  v51 = (v50 - v49);
  (*(v47 + 16))(v50 - v49, v1, v45);
  if ((*(v47 + 88))(v51, v45) == *v6)
  {
    (*(v47 + 96))(v51, v45);
    v52 = *v51;
    v53 = *(*v51 + 16);
    if (v53)
    {
      v125 = v13;
      v153 = v9;
      v156 = &_swiftEmptyArrayStorage;
      sub_276CC(0, v53, 0);
      v55 = *(v36 + 16);
      v54 = v36 + 16;
      v141 = v55;
      v56 = (*(v54 + 64) + 32) & ~*(v54 + 64);
      v124[1] = v52;
      v57 = v52 + v56;
      v139 = v54 - 8;
      v140 = (v154 + 8);
      v58 = v156;
      v138 = v155 + 4;
      v143 = v54;
      v137 = *(v54 + 56);
      v59 = v131;
      v142 = v39;
      v60 = v136;
      v127 = v26;
      while (1)
      {
        v154 = v53;
        v155 = v58;
        v61 = v141(v39, v57, v146);
        v62 = v147;
        v150(v61);
        v63 = sub_290E4();
        v64 = (*v140)(v62, v148);
        if (!v63)
        {
          break;
        }

        v65 = v151(v64);
        v66 = v152();
        v67 = v133;
        *v133 = v63;
        v68 = v153;
        swift_storeEnumTagMultiPayload();
        sub_28AB8();
        sub_53C4(v69, v70, v71, v68);
        sub_28C34();
        v72 = sub_28B48();
        v73(v72);
        v74 = v145;
        v75 = *(v145 + 24);
        v76 = v132;
        *(v132 + v75) = 0;
        v77 = *(v74 + 28);
        v78 = sub_28CF4();
        sub_28A8C();
        sub_53C4(v79, v80, v81, v78);
        v82 = sub_28B04();
        v83(v82);
        v84 = (v76 + *(v74 + 20));
        *v84 = v65;
        v84[1] = v66;
        sub_27960(v67, v59);
        if (sub_B89C(v59, 1, v68) != 1)
        {
          v107 = v128;
          sub_279D0(v59, v128, type metadata accessor for MapIdentifiablePlace.ViewType);
          sub_279D0(v107, v135, type metadata accessor for MapIdentifiablePlace.ViewType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v60 = v136;
          if (EnumCaseMultiPayload == 1)
          {
            sub_288A0();
            sub_28A80();
            (*(v109 + 32))(v76 + v77, v135, v78);
            sub_28AB8();
            sub_53C4(v110, v111, v112, v78);
          }

          else
          {
            *(v76 + v75) = *v135;
          }

          v85 = v76;
LABEL_17:
          v39 = v142;
          goto LABEL_18;
        }

        sub_288A0();
        v85 = v76;
        v39 = v142;
        v60 = v136;
LABEL_18:
        sub_279D0(v85, v60, type metadata accessor for MapIdentifiablePlace);
        v58 = v155;
        v156 = v155;
        v121 = v155[2];
        v120 = v155[3];
        if (v121 >= v120 >> 1)
        {
          sub_276CC((v120 > 1), v121 + 1, 1);
          v58 = v156;
        }

        v58[2] = v121 + 1;
        sub_28AEC();
        sub_28A50();
        sub_279D0(v60, v122, v123);
        v57 += v137;
        v53 = v154 - 1;
        if (v154 == 1)
        {
          goto LABEL_23;
        }
      }

      v86 = v151(v64);
      v87 = v152();
      v88 = v130;
      sub_28A8C();
      v89 = v153;
      sub_53C4(v90, v91, v92, v153);
      sub_28C34();
      v93 = sub_28B48();
      v94(v93);
      v95 = v145;
      v96 = *(v145 + 24);
      v97 = v129;
      *(v129 + v96) = 0;
      v98 = *(v95 + 28);
      v99 = sub_28CF4();
      sub_28A8C();
      sub_53C4(v100, v101, v102, v99);
      v103 = sub_28B04();
      v104(v103);
      v105 = (v97 + *(v95 + 20));
      *v105 = v86;
      v105[1] = v87;
      v106 = v127;
      sub_27960(v88, v127);
      if (sub_B89C(v106, 1, v89) == 1)
      {
        sub_288A0();
      }

      else
      {
        v113 = v106;
        v114 = v126;
        sub_279D0(v113, v126, type metadata accessor for MapIdentifiablePlace.ViewType);
        v115 = v125;
        sub_279D0(v114, v125, type metadata accessor for MapIdentifiablePlace.ViewType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_288A0();
          sub_28A80();
          (*(v116 + 32))(v97 + v98, v115, v99);
          sub_28AB8();
          sub_53C4(v117, v118, v119, v99);
        }

        else
        {
          *(v97 + v96) = *v115;
        }
      }

      v85 = v97;
      v59 = v131;
      goto LABEL_17;
    }

LABEL_23:
  }

  else
  {
    (*(v47 + 8))(v51, v45);
  }

  sub_28B78();
}

uint64_t sub_26918()
{
  sub_28B1C();
  v0 = sub_29204();
  v1 = sub_23804(v0);
  __chkstk_darwin(v1);
  sub_16B7C();
  v2 = sub_51E0(&qword_3AC60, &qword_2C888);
  v3 = sub_23804(v2);
  __chkstk_darwin(v3);
  sub_28B34();
  sub_51E0(&qword_3AC68, &qword_2C890);
  sub_298C4();
  sub_51E0(&qword_3AC70, &qword_2C898);
  sub_28A8C();
  sub_53C4(v4, v5, v6, v7);

  sub_291F4();
  sub_51E0(&qword_3AC78, &qword_2C8A0);
  sub_51E0(&qword_3AC80, &qword_2C8A8);
  sub_28A68();
  sub_C26C();
  sub_C26C();
  sub_28A38();
  sub_27B74();
  return sub_291C4();
}

uint64_t sub_26B30(uint64_t a1)
{
  type metadata accessor for MapIdentifiablePlace(0);
  sub_51E0(&qword_3ACA0, &qword_2C8B0);
  sub_287EC();
  return sub_291E4();
}

uint64_t sub_26BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_299C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_51E0(&qword_3A9C8, &qword_2C618);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_28CF4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v18 = type metadata accessor for MapIdentifiablePlace(0);
  sub_27A30(a1 + *(v18 + 28), v10);
  if (sub_B89C(v10, 1, v11) == 1)
  {
    sub_288A0();
    v19 = 1;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    sub_299B4();
    (*(v12 + 8))(v17, v11);
    (*(v5 + 32))(a2, v7, v4);
    v19 = 0;
  }

  return sub_53C4(a2, v19, 1, v4);
}

uint64_t sub_26EBC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = sub_29204();
  v5 = sub_23804(v4);
  __chkstk_darwin(v5);
  sub_16B7C();
  v6 = sub_51E0(&qword_3AC60, &qword_2C888);
  v7 = sub_23804(v6);
  __chkstk_darwin(v7);
  sub_28B34();
  sub_51E0(&qword_3AC68, &qword_2C890);
  sub_298C4();
  sub_51E0(&qword_3AC70, &qword_2C898);
  sub_28A8C();
  sub_53C4(v8, v9, v10, v11);

  sub_291F4();
  sub_51E0(&qword_3AC78, &qword_2C8A0);
  a1(0);
  sub_28A68();
  sub_C26C();
  sub_28A38();
  sub_27B74();
  return sub_291C4();
}

uint64_t sub_270B0(uint64_t a1, uint64_t (*a2)(uint64_t, __n128, __n128))
{
  v2 = (a1 + *(type metadata accessor for MapIdentifiablePlace(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  v6.n128_u64[0] = v3;
  v7.n128_u64[0] = v4;

  return a2(v5, v6, v7);
}

void MapIdentifiablePlace.init(id:lat:lon:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_28B5C();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_28B1C();
  v34 = type metadata accessor for MapIdentifiablePlace.ViewType(v33);
  sub_C3B0();
  __chkstk_darwin(v35);
  sub_28A18();
  v38 = (v36 - v37);
  __chkstk_darwin(v39);
  v41 = &a9 - v40;
  v42 = type metadata accessor for MapIdentifiablePlace(0);
  v43 = v42[6];
  *(v22 + v43) = 0;
  v44 = v42[7];
  v45 = sub_28CF4();
  sub_28A8C();
  sub_53C4(v46, v47, v48, v45);
  sub_28C44();
  sub_C3B0();
  (*(v49 + 32))(v22, v32);
  v50 = (v22 + v42[5]);
  *v50 = v30;
  v50[1] = v28;
  if (sub_B89C(v26, 1, v34) == 1)
  {
    sub_288A0();
  }

  else
  {
    sub_279D0(v26, v41, type metadata accessor for MapIdentifiablePlace.ViewType);
    sub_279D0(v41, v38, type metadata accessor for MapIdentifiablePlace.ViewType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_288A0();
      sub_28A80();
      (*(v51 + 32))(v22 + v44, v38, v45);
      sub_28AB8();
      sub_53C4(v52, v53, v54, v45);
    }

    else
    {
      *(v22 + v43) = *v38;
    }
  }

  sub_28B78();
}

uint64_t MapIdentifiablePlace.id.getter()
{
  sub_28B1C();
  sub_28C44();
  sub_C3B0();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

double MapIdentifiablePlace.tint.getter()
{
  type metadata accessor for MapIdentifiablePlace(0);

  return result;
}

uint64_t MapIdentifiablePlace.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapIdentifiablePlace(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

void (*MapIdentifiablePlace.tint.modify())()
{
  sub_C400();
  type metadata accessor for MapIdentifiablePlace(0);
  return CoreChartPluginView.body.getter;
}

uint64_t MapIdentifiablePlace.canvas.getter()
{
  v2 = sub_28B1C();
  v3 = v1 + *(type metadata accessor for MapIdentifiablePlace(v2) + 28);

  return sub_27A30(v3, v0);
}

uint64_t MapIdentifiablePlace.canvas.setter()
{
  sub_C400();
  v2 = v1 + *(type metadata accessor for MapIdentifiablePlace(0) + 28);

  return sub_27AA0(v0, v2);
}

void (*MapIdentifiablePlace.canvas.modify())()
{
  sub_C400();
  type metadata accessor for MapIdentifiablePlace(0);
  return CoreChartPluginView.body.getter;
}

uint64_t sub_27560@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_28C44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

char *sub_275C8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[48 * a2] <= __dst)
  {
    return memmove(__dst, __src, 48 * a2);
  }

  return __src;
}

uint64_t sub_275F8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for MapIdentifiablePlace(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for MapIdentifiablePlace(0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

void *sub_276CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_276EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_276EC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_51E0(&qword_3ACB8, &qword_2C8B8);
  v10 = *(type metadata accessor for MapIdentifiablePlace(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MapIdentifiablePlace(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_275F8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_278A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29544();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27960(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A9C0, &qword_2C610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_279D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_C3B0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_27A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A9C8, &qword_2C618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A9C8, &qword_2C618);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_27B74()
{
  sub_C400();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_27BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_28F84();
  sub_C40C();
  if (*(v7 + 84) != a2)
  {
    return sub_28A98(*(a1 + *(a3 + 20) + 32));
  }

  return sub_B89C(a1, a2, v6);
}

void sub_27C80()
{
  sub_28AC4();
  sub_28F84();
  sub_C40C();
  if (*(v5 + 84) == v3)
  {

    sub_53C4(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 32) = v0;
  }
}

void sub_27D14(uint64_t a1)
{
  sub_28F84();
  if (v1 <= 0x3F)
  {
    sub_280C8(319, &unk_3AA40, type metadata accessor for MKCoordinateRegion, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_BABC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_28C44();
  sub_C40C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_28A98(*(a1 + *(a3 + 24)));
    }

    v8 = sub_51E0(&qword_3A9C8, &qword_2C618);
    v9 = a1 + *(a3 + 28);
  }

  return sub_B89C(v9, a2, v8);
}

void sub_27ED4()
{
  sub_28AC4();
  sub_28C44();
  sub_C40C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 24)) = v0;
      return;
    }

    v6 = sub_51E0(&qword_3A9C8, &qword_2C618);
    v7 = v1 + *(v2 + 28);
  }

  sub_53C4(v7, v0, v0, v6);
}

void sub_27F94(uint64_t a1)
{
  sub_28C44();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLLocationCoordinate2D(319);
    if (v2 <= 0x3F)
    {
      sub_28078();
      if (v3 <= 0x3F)
      {
        sub_280C8(319, &unk_3AAE8, &type metadata accessor for CustomCanvas, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_28078()
{
  if (!qword_3AAE0)
  {
    v0 = sub_29E34();
    if (!v1)
    {
      atomic_store(v0, &qword_3AAE0);
    }
  }
}

void sub_280C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2812C(uint64_t a1)
{
  result = sub_28CF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2819C()
{
  result = qword_3ABC8;
  if (!qword_3ABC8)
  {
    sub_558C(&qword_3A9B8, &qword_2C608);
    sub_28254();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABC8);
  }

  return result;
}

unint64_t sub_28254()
{
  result = qword_3ABD0;
  if (!qword_3ABD0)
  {
    sub_558C(&qword_3A9B0, &qword_2C5D0);
    sub_282E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABD0);
  }

  return result;
}

unint64_t sub_282E0()
{
  result = qword_3ABD8;
  if (!qword_3ABD8)
  {
    sub_558C(&qword_3ABE0, &qword_2C6F0);
    sub_28364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABD8);
  }

  return result;
}

unint64_t sub_28364()
{
  result = qword_3ABE8;
  if (!qword_3ABE8)
  {
    sub_558C(&qword_3ABF0, &qword_2C6F8);
    sub_2841C();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABE8);
  }

  return result;
}

unint64_t sub_2841C()
{
  result = qword_3ABF8;
  if (!qword_3ABF8)
  {
    sub_558C(&qword_3AC00, &qword_2C700);
    sub_284A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABF8);
  }

  return result;
}

unint64_t sub_284A0()
{
  result = qword_3AC08;
  if (!qword_3AC08)
  {
    sub_558C(&qword_3AC10, &qword_2C708);
    sub_2852C();
    sub_28660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC08);
  }

  return result;
}

unint64_t sub_2852C()
{
  result = qword_3AC18;
  if (!qword_3AC18)
  {
    sub_558C(&qword_3AC20, &qword_2C710);
    sub_285B8();
    sub_2860C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC18);
  }

  return result;
}

unint64_t sub_285B8()
{
  result = qword_3AC28;
  if (!qword_3AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC28);
  }

  return result;
}

unint64_t sub_2860C()
{
  result = qword_3AC30;
  if (!qword_3AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC30);
  }

  return result;
}

unint64_t sub_28660()
{
  result = qword_3AC38;
  if (!qword_3AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC38);
  }

  return result;
}

__n128 sub_286B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_286F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_28730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_287EC()
{
  result = qword_3ACA8;
  if (!qword_3ACA8)
  {
    sub_558C(&qword_3ACA0, &qword_2C8B0);
    sub_27B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ACA8);
  }

  return result;
}

uint64_t sub_288A0()
{
  sub_C400();
  sub_51E0(v1, v2);
  sub_C3B0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_28A98@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

__n128 sub_28B34()
{
  v2 = *(v0 + 32);
  *(v1 - 176) = *(v0 + 16);
  *(v1 - 160) = v2;
  result = *(v0 + 48);
  *(v1 - 144) = result;
  return result;
}