uint64_t sub_10060B008()
{
  sub_10060A66C();
  swift_getKeyPath();
  sub_1001F1160(&qword_100ADF8F8, &unk_10081FB70);
  sub_100005920(&qword_100ADF900, &qword_100ADF8F8, &unk_10081FB70, &protocol conformance descriptor for [A]);
  return sub_10079E264();
}

uint64_t sub_10060B0F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_100796FD4();
  v3 = sub_10000E3E8(v9, v9[3]);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_10079E1B4();
  return sub_1000074E0(v9);
}

uint64_t sub_10060B1F4(uint64_t a1)
{
  sub_1001F1160(&qword_100ADF8E8, &qword_10081FB40);
  sub_1003A202C();
  return sub_10079DFC4();
}

uint64_t sub_10060B290@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MultipleGiftActionItem(0);
  sub_10060B824(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem, &unk_100835E38);
  sub_100797094();
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10060B33C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MultipleGiftActionItem(0);
  sub_10060B824(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem, &unk_100835E38);
  result = sub_100797084();
  if (result)
  {
    result = sub_10079DF04();
  }

  *a1 = result;
  return result;
}

uint64_t sub_10060B3C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100ADF890, &qword_10081FAE0);
  a1[3] = v3;
  a1[4] = sub_1003A1E4C();
  v4 = sub_1002256EC(a1);
  sub_1001F1160(&qword_100ADF8C0, &qword_10081FAF8);
  sub_1001F1160(&qword_100ADF8C8, &qword_10081FB00);
  sub_100005920(&qword_100ADF8D0, &qword_100ADF8C0, &qword_10081FAF8, &protocol conformance descriptor for Label<A, B>);
  sub_1003A1F30();
  sub_10079D534();
  KeyPath = swift_getKeyPath();
  sub_100009864(v1 + 128, v8);
  v6 = (v4 + *(v3 + 36));
  sub_1000077D8(v8, (v6 + 1), &qword_100ADF8E0, &qword_10081FB38);
  *v6 = KeyPath;
  return sub_100007840(v8, &qword_100ADF8E0, &qword_10081FB38);
}

uint64_t sub_10060B54C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100009864(a1, (a6 + 40));
  sub_100009864(a2, a6);
  sub_100009864(a4, (a6 + 88));
  *(a6 + 19) = sub_1007978D4();
  *(a6 + 20) = sub_10060B824(&qword_100ADF888, &type metadata accessor for ContextActionItemCoverProvider, &protocol conformance descriptor for ContextActionItemCoverProvider);
  sub_1002256EC(a6 + 16);
  sub_1007978C4();
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v12 = *(a5 + 36);
  v13 = enum case for ContextActionType.multipleGift(_:);
  v14 = sub_100797144();
  result = (*(*(v14 - 8) + 104))(&a6[v12], v13, v14);
  *(a6 + 10) = a3;
  return result;
}

uint64_t sub_10060B66C@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a6 + 36);
  v14 = enum case for ContextActionType.multipleGift(_:);
  v15 = sub_100797144();
  (*(*(v15 - 8) + 104))(a7 + v13, v14, v15);
  sub_1000077C0(a1, a7 + 40);
  sub_1000077C0(a2, a7);
  *(a7 + 80) = a3;
  sub_1000077C0(a4, a7 + 88);

  return sub_1000077C0(a5, a7 + 128);
}

uint64_t sub_10060B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GiftActionItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10060B7C8(uint64_t a1)
{
  v2 = type metadata accessor for GiftActionItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10060B824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10060B86C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007A1CA4();
  v10 = *(v29 - 8);
  v11 = __chkstk_darwin(v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v14 = [a1 image]) != 0 && (v15 = v14, v16 = objc_msgSend(v14, "CGImage"), v15, v16))
  {
    v17 = sub_1007A29A4();
    if (qword_100AD1370 != -1)
    {
      v27 = v17;
      swift_once();
      v17 = v27;
    }

    sub_10079AB44(v17, &_mh_execute_header, qword_100AD9008, "got cover image from BCCacheManager", 35, 2, _swiftEmptyArrayStorage);
    sub_100017E74();
    v18 = sub_1007A2D74();
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = v16;
    v34 = sub_10060BFB4;
    v35 = v19;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1003323D0;
    v33 = &unk_100A272D8;
    v20 = _Block_copy(&aBlock);

    v21 = v16;

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v20);
  }

  else
  {
    v22 = sub_1007A29B4();
    if (qword_100AD1370 != -1)
    {
      v26 = v22;
      swift_once();
      v22 = v26;
    }

    sub_10079AB44(v22, &_mh_execute_header, qword_100AD9008, "could not fetch cover image", 27, 2, _swiftEmptyArrayStorage);
    sub_100017E74();
    v18 = sub_1007A2D74();
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v34 = sub_10060BFAC;
    v35 = v23;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1003323D0;
    v33 = &unk_100A27288;
    v24 = _Block_copy(&aBlock);

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v24);
  }

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v29);
}

uint64_t sub_10060BD44(void (*a1)(uint64_t, uint64_t))
{
  sub_10060BFE8();
  v2 = swift_allocError();
  a1(v2, 1);
}

void sub_10060BDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v10 = objc_allocWithZone(BICDescribedImage);
  v11 = sub_1007A2214();
  v12 = [v10 initWithIdentifier:v11];

  [v12 setImageSize:{a5, a6}];
  [v12 setProcessingOptions:2];
  [v12 setPriority:5];
  [v12 setRequestOptions:2];
  v13 = [objc_opt_self() defaultCacheManager];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v16[4] = sub_10060BF9C;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100569BDC;
  v16[3] = &unk_100A27238;
  v15 = _Block_copy(v16);

  [v13 fetchCGImageFor:v12 forRequest:v12 completion:v15];
  _Block_release(v15);
}

unint64_t sub_10060BFE8()
{
  result = qword_100AEDB80;
  if (!qword_100AEDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB80);
  }

  return result;
}

unint64_t sub_10060C050()
{
  result = qword_100AEDB88;
  if (!qword_100AEDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB88);
  }

  return result;
}

uint64_t sub_10060C0A8()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B236B0);
  v21 = sub_100008B98(v3, qword_100B236B0);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

double sub_10060C44C@<D0>(_OWORD *a1@<X8>)
{
  sub_100795DF4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10060C498(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  v10 = a1[2];
  v11 = v1;
  v3 = a1[3];
  v4 = a1[5];
  v12 = a1[4];
  v13 = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v8[8] = v10;
  v8[9] = v3;
  v6 = a1[5];
  v8[10] = v12;
  v8[11] = v6;
  v8[6] = v9[0];
  v8[7] = v2;
  sub_1002A40C0(v9, v8);
  sub_100795E04();
  return sub_1002A411C(v9);
}

void (*sub_10060C510(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_1001FD958;
}

unint64_t sub_10060C584()
{
  result = qword_100AEDB90;
  if (!qword_100AEDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB90);
  }

  return result;
}

uint64_t sub_10060C5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10060D5B4();
  v5 = sub_100214E9C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10060C644()
{
  result = qword_100AEDB98;
  if (!qword_100AEDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB98);
  }

  return result;
}

unint64_t sub_10060C69C()
{
  result = qword_100AEDBA0;
  if (!qword_100AEDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBA0);
  }

  return result;
}

unint64_t sub_10060C6F4()
{
  result = qword_100AEDBA8;
  if (!qword_100AEDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBA8);
  }

  return result;
}

uint64_t sub_10060C764@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1940 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B236B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10060C80C(uint64_t a1)
{
  v2 = sub_10060D5B4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_10060C848(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AEDBD8, &qword_1008361A8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100AEDBE0, &qword_1008361B0);
  __chkstk_darwin(v3);
  sub_1007961D4();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_1007961C4(v5);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AEDBE8, &qword_1008361E0);
  sub_1007961B4();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1007961C4(v6);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_10060C9E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10060D5B4();
  v6 = sub_10060D608();
  v7 = sub_100214E9C();
  *v4 = v2;
  v4[1] = sub_10060CAB4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10060CAB4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10060CBBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10060CCEC();
  *a1 = result;
  return result;
}

uint64_t sub_10060CBE4(uint64_t a1)
{
  v2 = sub_10060C584();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10060CC24()
{
  result = qword_100AEDBB0;
  if (!qword_100AEDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBB0);
  }

  return result;
}

unint64_t sub_10060CC88()
{
  result = qword_100AEDBB8;
  if (!qword_100AEDBB8)
  {
    sub_1001F1234(&qword_100AEDBC0, &qword_100836198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBB8);
  }

  return result;
}

uint64_t sub_10060CCEC()
{
  v52 = sub_100796274();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v49 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = v39 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v5 - 8);
  v63 = v39 - v6;
  v62 = sub_1007967F4();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_100796CF4();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_1007A21D4();
  v53 = v15;
  v55 = *(v15 - 8);
  v16 = v55;
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v44 = sub_100796814();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v46 = v39 - v24;
  v47 = sub_1001F1160(&qword_100ADC580, &qword_1008361A0);
  sub_1007A2154();
  sub_100796C94();
  v25 = *(v16 + 16);
  v60 = v16 + 16;
  v61 = v25;
  v25(v18, v21, v15);
  v26 = *(v9 + 16);
  v56 = v9 + 16;
  v57 = v26;
  v54 = v11;
  v27 = v42;
  v26(v11, v14, v42);
  v59 = type metadata accessor for BundleFinder();
  *v8 = v59;
  v58 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v40 = *(v64 + 104);
  v64 += 104;
  v28 = v62;
  v40(v8);
  sub_100796834();
  v29 = *(v9 + 8);
  v39[1] = v9 + 8;
  v29(v14, v27);
  v41 = v29;
  v55 = *(v55 + 8);
  v30 = v53;
  (v55)(v21, v53);
  sub_1007A2154();
  sub_100796C94();
  v61(v18, v21, v30);
  v57(v54, v14, v27);
  *v8 = v59;
  v31 = v28;
  v32 = v40;
  (v40)(v8, v58, v31);
  v33 = v63;
  sub_100796834();
  v29(v14, v27);
  v34 = v53;
  (v55)(v21, v53);
  (*(v43 + 56))(v33, 0, 1, v44);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v61(v18, v21, v34);
  v57(v54, v14, v27);
  *v8 = v59;
  (v32)(v8, v58, v62);
  sub_100796834();
  v41(v14, v27);
  (v55)(v21, v34);
  v35 = v48;
  sub_100795CF4();
  v36 = sub_100795CE4();
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 0, 1, v36);
  v37(v49, 1, 1, v36);
  (*(v51 + 104))(v50, enum case for InputConnectionBehavior.default(_:), v52);
  sub_10020E834();
  return sub_100795E74();
}

unint64_t sub_10060D5B4()
{
  result = qword_100AEDBC8;
  if (!qword_100AEDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBC8);
  }

  return result;
}

unint64_t sub_10060D608()
{
  result = qword_100AEDBD0;
  if (!qword_100AEDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBD0);
  }

  return result;
}

id sub_10060D7D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___BKGoalPickerViewController_onFinalized;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_onFinalized] = 0;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_separatorView] = 0;
  v10 = sub_100798654();
  v11 = (v10 == 2) | v10 & 1;
  v4[OBJC_IVAR___BKGoalPickerViewController_goalType] = v11;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_eventHandler] = a3;
  swift_unknownObjectRetain();
  sub_10060FA64(v11, a2, v25);
  v12 = &v4[OBJC_IVAR___BKGoalPickerViewController_model];
  v13 = v25[1];
  *v12 = v25[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v26;
  v14 = *(&v26 + 1);
  *(v12 + 6) = v27;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_selectedRow] = v14;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel] = v15;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_sourceViewHorizontalSizeClass] = 0;
  v16 = *&v4[v9];
  *&v4[v9] = a4;
  v17 = a4;

  v18 = sub_1007A2214();
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v18, 0);

  v20 = v19;
  [v20 setTransitioningDelegate:v20];
  v21 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v20 action:"backgroundTapped:"];
  [v21 setDelegate:v20];
  result = [v20 view];
  if (result)
  {
    v23 = result;
    [result addGestureRecognizer:v21];

    sub_10000A7C4(0, &qword_100AE15B0, UITraitCollection_ptr);
    sub_1007A2E04();
    sub_1007A2C44();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10060DAAC(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v8 = type metadata accessor for GoalPickerViewController();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectRetain();
  v10 = sub_10060D7D4(a1, a2, a3, 0);
  v11 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080B690;
  *(v12 + 56) = v8;
  *(v12 + 32) = v10;
  v13 = v10;
  v19._countAndFlagsBits = 0x80000001008E17F0;
  v14.super.isa = a4;
  v18.value._rawValue = v12;
  v18.is_nil = 78;
  v19._object = 87;
  sub_1007A32F4(v14, v18, v19, v15);

  return result;
}

void sub_10060DCD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v86 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = &v77 - v6;
  v88 = sub_1007A21D4();
  v7 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v77 - v11;
  v90.receiver = v0;
  v90.super_class = ObjectType;
  objc_msgSendSuper2(&v90, "viewDidLoad", v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = Strong;
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  [v14 setBackgroundColor:v16];

  v17 = OBJC_IVAR___BKGoalPickerViewController_titleView;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v15 secondarySystemBackgroundColor];
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR___BKGoalPickerViewController_doneButton;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v15 labelColor];
  [v23 setTitleColor:v24 forState:0];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = v25;
  [v25 setDelegate:v0];

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v27;
  v84 = v3;
  [v27 setDataSource:v0];

  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  [v29 selectRow:*&v0[OBJC_IVAR___BKGoalPickerViewController_model + 40] inComponent:*&v0[OBJC_IVAR___BKGoalPickerViewController_model + 48] animated:0];

  sub_10061051C(v0[OBJC_IVAR___BKGoalPickerViewController_goalType]);
  v89 = v31;
  v32 = [objc_opt_self() defaultFontSpec];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v32 fontSpecWithDesign:UIFontDescriptorSystemDesignSerif];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;

  v36 = [v35 fontSpecWithPointSize:18.0];
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v83 = v2;

  v38 = [v37 fontSpecWithWeight:UIFontWeightSemibold];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = v38;

  v40 = v39;
  v41 = [v0 traitCollection];
  v42 = [v40 mappedSpecIfNeededWithTraitCollection:v41];

  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = [v42 font];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = v43;
  v80 = v42;
  v82 = v21;
  v81 = v17;
  v79 = v15;
  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = v45;
  sub_1001F1160(qword_100AEFD60, qword_100836260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
  *(inited + 40) = v44;
  v48 = NSFontAttributeName;
  v78 = v44;
  sub_1001ED420(inited);
  swift_setDeallocating();
  sub_10039FAF4(inited + 32);
  v49 = objc_allocWithZone(NSAttributedString);
  v50 = sub_1007A2214();
  type metadata accessor for Key(0);
  sub_100610874(&qword_100AEDDB0, type metadata accessor for Key, &unk_10080E428);
  isa = sub_1007A2024().super.isa;

  v52 = [v49 initWithString:v50 attributes:isa];

  [v46 setAttributedText:v52];
  v53 = v12;
  sub_1007A2154();
  v54 = v87;
  sub_100796C94();
  v55 = v85;
  v56 = v88;
  (*(v7 + 16))(v85, v53, v88);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v59 = v83;
  v60 = v84;
  v61 = v86;
  (*(v84 + 16))(v86, v54, v83);
  sub_1007A22D4(v55, 0, 0, v58, v61, "Title for done button", 21, 2);
  (*(v60 + 8))(v54, v59);
  (*(v7 + 8))(v53, v56);
  v62 = swift_unknownObjectWeakLoadStrong();
  if (!v62)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v63 = v62;
  v64 = sub_1007A2214();
  [v63 setTitle:v64 forState:0];

  v65 = swift_unknownObjectWeakLoadStrong();
  v66 = v80;
  if (!v65)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v67 = v65;
  [v65 frame];
  v69 = v68;
  v71 = v70;

  v72 = [objc_allocWithZone(UIView) init];
  [v72 setFrame:{0.0, v71 + -0.5, v69, 0.5}];
  v73 = [v79 separatorColor];
  [v72 setBackgroundColor:v73];

  [v72 setHidden:1];
  v74 = swift_unknownObjectWeakLoadStrong();
  if (v74)
  {
    v75 = v74;

    [v75 addSubview:v72];

    v76 = *&v0[OBJC_IVAR___BKGoalPickerViewController_separatorView];
    *&v0[OBJC_IVAR___BKGoalPickerViewController_separatorView] = v72;

    return;
  }

LABEL_33:
  __break(1u);
}

void sub_10060E5C4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  if (v2 == 1)
  {
    v4 = [v3 blackColor];
    v9 = [v4 colorWithAlphaComponent:0.02];
  }

  else
  {
    v9 = [v3 secondarySystemBackgroundColor];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setBackgroundColor:v9];

    v7 = *&v0[OBJC_IVAR___BKGoalPickerViewController_separatorView];
    if (v7)
    {
      v8 = v7;
      [v8 setHidden:v2 != 1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10060E764(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  if (*&v1[OBJC_IVAR___BKGoalPickerViewController_sourceViewHorizontalSizeClass] == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setHidden:1];

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 setUserInteractionEnabled:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10060E874()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;

  v5 = [v0 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 frame];
  v8 = v7;

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = Strong;
  v13 = v4 * 0.5 + -37.5;
  if (v10 == 1)
  {
    v14 = v8 * 0.5 - v13;
  }

  else
  {
    v14 = v8 * 0.5;
  }

  [Strong frame];
  v16 = v15;

  v17 = OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel;
  [*&v0[OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel] setFrame:{v14 + 37.5, v16 * 0.5 + -12.0, v13, 24.0}];
  v18 = *&v0[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 boldSystemFontOfSize:15.0];
  [v20 setFont:v21];

  v22 = *&v0[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor:v25];

  [*&v0[v17] setTextAlignment:0];
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    [v26 addSubview:*&v0[v17]];

    sub_10060EAF4();
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_10060EAF4()
{
  v1 = &v0[OBJC_IVAR___BKGoalPickerViewController_model];
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10080B690;
  v3 = OBJC_IVAR___BKGoalPickerViewController_selectedRow;
  v4 = *&v0[OBJC_IVAR___BKGoalPickerViewController_selectedRow];
  v5 = *v1;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v4 >= *(v5 + 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v2 + 32) = *(v5 + 8 * v4 + 32);

  v6 = sub_1007A2224();
  v8 = v7;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v10 = *&v0[v3];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (v10 >= *(*v1 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = Strong;
  v35 = *(*v1 + 8 * v10 + 32);
  v12 = [Strong accessibilityElements];
  if (v12)
  {
    v34 = v11;
    v13 = v12;
    v14 = sub_1007A25E4();

    v15 = *(v14 + 16);
    if (v15)
    {
      v33 = v14;
      v16 = v14 + 32;
      do
      {
        sub_100007484(v16, aBlock);
        sub_10000A7C4(0, &unk_100AEDDA0, UIAccessibilityElement_ptr);
        if (swift_dynamicCast())
        {
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_10080B690;
          *(v17 + 56) = &type metadata for Int;
          *(v17 + 64) = &protocol witness table for Int;
          *(v17 + 32) = v35;

          sub_1007A2284();

          v18 = sub_1007A2214();

          [v36 setAccessibilityValue:v18];
        }

        v16 += 32;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  else
  {
  }

  v19 = OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel;
  v20 = [*&v0[OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel] text];
  if (!v20)
  {

    goto LABEL_23;
  }

  v21 = v20;
  v22 = sub_1007A2254();
  v24 = v23;

  if (v6 != v22 || v8 != v24)
  {
    v26 = sub_1007A3AB4();

    if (v26)
    {
      return;
    }

LABEL_23:
    v27 = objc_opt_self();
    v28 = *&v0[v19];
    v29 = swift_allocObject();
    *(v29 + 16) = v0;
    aBlock[4] = sub_10060FA54;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A273D8;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    v32 = v0;

    [v27 transitionWithView:v31 duration:5242880 options:v30 animations:0 completion:0.25];
    _Block_release(v30);

    return;
  }
}

void sub_10060F054(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v4 = Strong;
  v5 = [Strong selectedRowInComponent:0];

  if (*(v1 + OBJC_IVAR___BKGoalPickerViewController_goalType))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_model);
      if (v5 < *(v6 + 16))
      {
        v7 = *(v6 + 8 * v5 + 32);
        if ((v7 * 60) >> 64 == (60 * v7) >> 63)
        {
          [*(v1 + OBJC_IVAR___BKGoalPickerViewController_eventHandler) changeDailyGoal:(a1 & 1) == 0 :(60 * v7)];
          if ((a1 & 1) == 0)
          {
            return;
          }

          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_model);
  if (v5 >= *(v8 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [*(v1 + OBJC_IVAR___BKGoalPickerViewController_eventHandler) changeBooksPerYearGoal:*(v8 + 8 * v5 + 32) :(a1 & 1) == 0];
  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_model);
  if (v5 >= *(v9 + 16))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v10 = *(v1 + OBJC_IVAR___BKGoalPickerViewController_onFinalized);
  if (v10)
  {
    v11 = *(v9 + 8 * v5 + 32);
    v12 = objc_opt_self();
    v13 = v10;
    v14 = [v12 sharedInstance];
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10080B690;
    *(v15 + 56) = &type metadata for Int;
    *(v15 + 32) = v11;
    v20._countAndFlagsBits = 0x80000001008E17F0;
    v16.super.isa = v13;
    v19.value._rawValue = v15;
    v19.is_nil = 78;
    v20._object = 233;
    sub_1007A32F4(v16, v19, v20, v17);
  }
}

void sub_10060F280(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel);
  v3 = (a1 + OBJC_IVAR___BKGoalPickerViewController_model);
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10080B690;
  v5 = *(a1 + OBJC_IVAR___BKGoalPickerViewController_selectedRow);
  v6 = *v3;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v4 + 32) = *(v6 + 8 * v5 + 32);
  v7 = v2;

  sub_1007A2224();

  v8 = sub_1007A2214();

  [v7 setText:v8];
}

id sub_10060F758(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 traitCollection];
  v7 = [v6 horizontalSizeClass];

  *(v3 + OBJC_IVAR___BKGoalPickerViewController_sourceViewHorizontalSizeClass) = v7;
  if (v7 == 1)
  {
    return [objc_allocWithZone(type metadata accessor for GoalPickerModalPresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
  }

  v9 = [objc_allocWithZone(UIPopoverPresentationController) initWithPresentedViewController:a1 presentingViewController:a2];
  [v9 setDelegate:v3];
  return v9;
}

uint64_t sub_10060F9B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10060F9F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10060FA64@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v58 = sub_100796CF4();
  v5 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  sub_1001F1160(&unk_100AEDDC0, &qword_100812CC8);
  v56 = v5;
  v57 = v11;
  v54 = v7;
  if (a1)
  {
    v18 = swift_allocObject();
    result = j__malloc_size_1(v18);
    v20 = result - 32;
    if (result < 32)
    {
      v20 = result - 25;
    }

    v18[2] = 1440;
    v18[3] = 2 * (v20 >> 3);
    v21 = v18 + 4;
    v22 = 1;
    v23 = 4;
    while (1)
    {
      if (v22 == 1440)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }
      }

      v18[v23] = v22;
      if (v23 == 1443)
      {
LABEL_22:
        v30 = v12;
        v31 = v18[2];
        if (v31)
        {
          v32 = 0;
          while (v21[v32] != a2 / 60)
          {
            if (v31 == ++v32)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          v32 = 0;
        }

        goto LABEL_33;
      }

      ++v23;
      v25 = v22 == 1440;
      v22 = v24;
      if (v25)
      {
        __break(1u);
        break;
      }
    }
  }

  v18 = swift_allocObject();
  result = j__malloc_size_1(v18);
  v26 = result - 32;
  if (result < 32)
  {
    v26 = result - 25;
  }

  v18[2] = 365;
  v18[3] = 2 * (v26 >> 3);
  v21 = v18 + 4;
  v27 = 1;
  v28 = 4;
  while (1)
  {
    if (v27 == 365)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_35;
      }
    }

    v18[v28] = v27;
    if (v28 == 368)
    {
      break;
    }

    ++v28;
    v25 = v27 == 365;
    v27 = v29;
    if (v25)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v30 = v12;
  v33 = v18[2];
  if (v33)
  {
    v32 = 0;
    while (v21[v32] != a2)
    {
      if (v33 == ++v32)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v32 = 0;
  }

LABEL_33:
  v34 = v17;
  sub_1007A2154();
  sub_100796C94();
  v51 = *(v30 + 16);
  v51(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = ObjCClassFromMetadata;
  v49 = objc_opt_self();
  v36 = [v49 bundleForClass:ObjCClassFromMetadata];
  sub_100796C94();
  v37 = sub_1007A22B4();
  v52 = v38;
  v53 = v37;
  v56 = *(v56 + 8);
  v39 = v10;
  (v56)(v10, v58);
  v48 = *(v30 + 8);
  v40 = v57;
  v48(v34, v57);
  sub_1007A2154();
  sub_100796C94();
  v51(v14, v34, v40);
  v41 = [v49 bundleForClass:v50];
  sub_100796C94();
  v42 = sub_1007A22B4();
  v44 = v43;
  (v56)(v39, v58);
  result = (v48)(v34, v57);
  v45 = v55;
  v46 = v52;
  v47 = v53;
  *v55 = v18;
  v45[1] = v47;
  v45[2] = v46;
  v45[3] = v42;
  v45[4] = v44;
  v45[5] = v32;
  v45[6] = 0;
  return result;
}

uint64_t sub_100610164(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v7 = sub_1007A1C54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A1CA4();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v14 = sub_1007A2D74();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = a1;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_100610868;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A27428;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a4;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100610874(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

void sub_100610444()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___BKGoalPickerViewController_onFinalized) = 0;
  *(v0 + OBJC_IVAR___BKGoalPickerViewController_separatorView) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_10061051C(char a1)
{
  v24[0] = sub_100796CF4();
  v2 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  v15 = (v2 + 16);
  sub_1007A2154();
  sub_100796C94();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v18 = v24[0];
    (*v15)(v4, v7, v24[0]);
    v19 = sub_1007A22D4(v11, 0, 0, v17, v4, "Title for picker when changing Daily Reading goal", 49, 2, v24[0]);
  }

  else
  {
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:v20];
    v18 = v24[0];
    (*v15)(v4, v7, v24[0]);
    v19 = sub_1007A22D4(v11, 0, 0, v21, v4, "Title for picker when changing Books goal", 41, 2, v24[0]);
  }

  v22 = v19;
  (*(v2 + 8))(v7, v18);
  (*(v9 + 8))(v14, v8);
  return v22;
}

uint64_t sub_100610874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006108C4()
{
  v1 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s5StateOMa(0);
  __chkstk_darwin(v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100611CF0(v0, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 0x656C64692ELL;
      }

      v20 = _s5StateO9ResettingVMa;
      sub_100611D54(v18, v3, _s5StateO9ResettingVMa);
      v26 = 0x697474657365722ELL;
      v27 = 0xEB0000000028676ELL;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      sub_1007A3744(19);

      v25._countAndFlagsBits = 0xD000000000000010;
      v25._object = 0x80000001008E1BA0;
      v34._countAndFlagsBits = sub_100611608();
      sub_1007A23D4(v34);

      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      sub_1007A23D4(v35);
      sub_1007A23D4(v25);

      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      sub_1007A23D4(v36);
      v21 = v26;
      v22 = v3;
    }

    else
    {
      v20 = _s5StateO8DraggingVMa;
      if (EnumCaseMultiPayload == 4)
      {
        sub_100611D54(v18, v6, _s5StateO8DraggingVMa);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_1007A3744(27);

        v26 = 0xD000000000000018;
        v27 = 0x80000001008E1BC0;
      }

      else
      {
        sub_100611D54(v18, v6, _s5StateO8DraggingVMa);
        v26 = 0x6E6967676172642ELL;
        v27 = 0xEA00000000002867;
      }

      v40._countAndFlagsBits = sub_100611AC4();
      sub_1007A23D4(v40);

      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      sub_1007A23D4(v41);
      v21 = v26;
      v22 = v6;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v20 = _s5StateO21CapturingDragSnapshotVMa;
      sub_100611D54(v18, v9, _s5StateO21CapturingDragSnapshotVMa);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1007A3744(26);

      v26 = 0xD000000000000017;
      v27 = 0x80000001008E1BE0;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      sub_1007A3744(90);
      v42._countAndFlagsBits = 0xD000000000000038;
      v42._object = 0x80000001008E1C00;
      sub_1007A23D4(v42);
      v43._countAndFlagsBits = sub_1006110D4();
      sub_1007A23D4(v43);

      v44._countAndFlagsBits = 0x6C736E617274202CLL;
      v44._object = 0xEF203A6E6F697461;
      sub_1007A23D4(v44);
      sub_1007A27D4();
      v45._countAndFlagsBits = 0x69636F6C6576202CLL;
      v45._object = 0xEC000000203A7974;
      sub_1007A23D4(v45);
      sub_1007A27D4();
      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      sub_1007A23D4(v46);
      sub_1007A23D4(v25);

      v47._countAndFlagsBits = 41;
      v47._object = 0xE100000000000000;
      sub_1007A23D4(v47);
      v21 = v26;
      v22 = v9;
      goto LABEL_17;
    }

    sub_100611D54(v18, v12, _s5StateO7TurningVMa);
    v26 = 0x676E696E7275742ELL;
    v27 = 0xE900000000000028;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = _s5StateO21CapturingTurnSnapshotVMa;
      sub_100611D54(v18, v15, _s5StateO21CapturingTurnSnapshotVMa);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1007A3744(26);

      v26 = 0xD000000000000017;
      v27 = 0x80000001008E1C60;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      sub_1007A3744(73);
      v28._countAndFlagsBits = 0xD000000000000035;
      v28._object = 0x80000001008E1C80;
      sub_1007A23D4(v28);
      v29._countAndFlagsBits = sub_1007A03C4();
      sub_1007A23D4(v29);

      v30._countAndFlagsBits = 0x6E6974736564202CLL;
      v30._object = 0xEF203A6E6F697461;
      sub_1007A23D4(v30);
      sub_1007A0F74();
      sub_100611DBC();
      v31._countAndFlagsBits = sub_1007A3A74();
      sub_1007A23D4(v31);

      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      sub_1007A23D4(v32);
      sub_1007A23D4(v25);

      v33._countAndFlagsBits = 41;
      v33._object = 0xE100000000000000;
      sub_1007A23D4(v33);
      v21 = v26;
      v22 = v15;
LABEL_17:
      v23 = v20;
      goto LABEL_18;
    }

    sub_100611D54(v18, v12, _s5StateO7TurningVMa);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1007A3744(27);

    v26 = 0xD000000000000018;
    v27 = 0x80000001008E1C40;
  }

  v25._countAndFlagsBits = 0x727574286E727554;
  v25._object = 0xEB00000000203A6ELL;
  v37._countAndFlagsBits = sub_100611608();
  sub_1007A23D4(v37);

  v38._countAndFlagsBits = 41;
  v38._object = 0xE100000000000000;
  sub_1007A23D4(v38);
  sub_1007A23D4(v25);

  v39._countAndFlagsBits = 41;
  v39._object = 0xE100000000000000;
  sub_1007A23D4(v39);
  v21 = v26;
  v22 = v12;
  v23 = _s5StateO7TurningVMa;
LABEL_18:
  sub_100611E14(v22, v23);
  return v21;
}

uint64_t sub_1006110D4()
{
  v0 = 7104878;
  v1 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v17[0] = 91;
  v17[1] = 0xE100000000000000;
  sub_100287FB4(v17 - v5);
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    sub_1005C2B68(v6);
    v10 = 0xE300000000000000;
    v11._countAndFlagsBits = 7104878;
  }

  else
  {
    sub_100611DBC();
    v12 = sub_1007A3A74();
    v10 = v13;
    (*(v8 + 8))(v6, v7);
    v11._countAndFlagsBits = v12;
  }

  v11._object = v10;
  sub_1007A23D4(v11);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  sub_1007A23D4(v18);
  sub_10028845C(v3);
  if (v9(v3, 1, v7) == 1)
  {
    sub_1005C2B68(v3);
    v14 = 0xE300000000000000;
  }

  else
  {
    sub_100611DBC();
    v0 = sub_1007A3A74();
    v14 = v15;
    (*(v8 + 8))(v3, v7);
  }

  v19._countAndFlagsBits = v0;
  v19._object = v14;
  sub_1007A23D4(v19);

  v20._countAndFlagsBits = 93;
  v20._object = 0xE100000000000000;
  sub_1007A23D4(v20);
  return v17[0];
}

uint64_t sub_100611310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = *(a1 + 24);
  v6 = sub_1007A3454();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v29 = &v24 - v8;
  v9 = *(a1 + 16);
  v10 = sub_1007A3454();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v30 = 91;
  v31 = 0xE100000000000000;
  v28 = v3;
  sub_1002881F0(a1, &v24 - v12);
  v14 = *(v9 - 8);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v16 = sub_1007A3A74();
    v15 = v17;
    v11 = v14;
    v10 = v9;
  }

  (*(v11 + 8))(v13, v10);
  v32._countAndFlagsBits = v16;
  v32._object = v15;
  sub_1007A23D4(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  sub_1007A23D4(v33);
  v18 = v29;
  sub_100288698(a1, v29);
  v19 = *(v5 - 8);
  if ((*(v19 + 48))(v18, 1, v5) == 1)
  {
    v20 = 0xE300000000000000;
    v5 = v25;
    v19 = v26;
    v21 = 7104878;
  }

  else
  {
    v21 = sub_1007A3A74();
    v20 = v22;
  }

  (*(v19 + 8))(v18, v5);
  v34._countAndFlagsBits = v21;
  v34._object = v20;
  sub_1007A23D4(v34);

  v35._countAndFlagsBits = 93;
  v35._object = 0xE100000000000000;
  sub_1007A23D4(v35);
  return v30;
}

uint64_t sub_100611608()
{
  sub_1007A3744(119);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001008E1D10;
  sub_1007A23D4(v5);
  v1 = _s5StateO4TurnVMa(0);
  v6._countAndFlagsBits = sub_1007A03C4();
  sub_1007A23D4(v6);

  v7._object = 0x80000001008E1D40;
  v7._countAndFlagsBits = 0xD000000000000015;
  sub_1007A23D4(v7);
  sub_1007A0F74();
  sub_100611DBC();
  v8._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v8);

  v9._countAndFlagsBits = 0xD000000000000017;
  v9._object = 0x80000001008E1D60;
  sub_1007A23D4(v9);
  if (*(v0 + *(v1 + 32)))
  {
    v2._countAndFlagsBits = 0x3E776569763CLL;
  }

  else
  {
    v2._countAndFlagsBits = 7104878;
  }

  if (*(v0 + *(v1 + 32)))
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v2._object = v3;
  sub_1007A23D4(v2);

  v10._countAndFlagsBits = 0x69636F6C6576202CLL;
  v10._object = 0xEC000000203A7974;
  sub_1007A23D4(v10);
  v11._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v11);

  v12._countAndFlagsBits = 0x6572676F7270202CLL;
  v12._object = 0xEC000000203A7373;
  sub_1007A23D4(v12);
  v13._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  sub_1007A23D4(v14);
  return 0;
}

uint64_t sub_100611800()
{
  sub_1007A3744(73);
  v1._object = 0x80000001008E1C80;
  v1._countAndFlagsBits = 0xD000000000000035;
  sub_1007A23D4(v1);
  _s5StateO21CapturingTurnSnapshotVMa(0);
  v2._countAndFlagsBits = sub_1007A03C4();
  sub_1007A23D4(v2);

  v3._countAndFlagsBits = 0x6E6974736564202CLL;
  v3._object = 0xEF203A6E6F697461;
  sub_1007A23D4(v3);
  sub_1007A0F74();
  sub_100611DBC();
  v4._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1007A23D4(v5);
  return 0;
}

uint64_t sub_100611910()
{
  v1._countAndFlagsBits = sub_100611608();
  sub_1007A23D4(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1007A23D4(v2);
  return 0x727574286E727554;
}

uint64_t sub_100611980()
{
  sub_1007A3744(90);
  v1._object = 0x80000001008E1C00;
  v1._countAndFlagsBits = 0xD000000000000038;
  sub_1007A23D4(v1);
  _s5StateO21CapturingDragSnapshotVMa(0);
  v2._countAndFlagsBits = sub_1006110D4();
  sub_1007A23D4(v2);

  v3._countAndFlagsBits = 0x6C736E617274202CLL;
  v3._object = 0xEF203A6E6F697461;
  sub_1007A23D4(v3);
  sub_1007A27D4();
  v4._countAndFlagsBits = 0x69636F6C6576202CLL;
  v4._object = 0xEC000000203A7974;
  sub_1007A23D4(v4);
  sub_1007A27D4();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1007A23D4(v5);
  return 0;
}

uint64_t sub_100611AC4()
{
  sub_1007A3744(99);
  v1._object = 0x80000001008E1CC0;
  v1._countAndFlagsBits = 0xD000000000000017;
  sub_1007A23D4(v1);
  sub_1007A0F74();
  sub_100611DBC();
  v2._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v2);

  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001008E1CE0;
  sub_1007A23D4(v3);
  _s5StateO8DraggingVMa(0);
  v4._countAndFlagsBits = sub_1006110D4();
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 0x6C736E617274202CLL;
  v5._object = 0xEF203A6E6F697461;
  sub_1007A23D4(v5);
  sub_1007A27D4();
  v6._countAndFlagsBits = 0x69636F6C6576202CLL;
  v6._object = 0xEC000000203A7974;
  sub_1007A23D4(v6);
  sub_1007A27D4();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_1007A23D4(v7);
  return 0;
}

unint64_t sub_100611C60()
{
  sub_1007A3744(19);

  v1._countAndFlagsBits = sub_100611608();
  sub_1007A23D4(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1007A23D4(v2);
  return 0xD000000000000010;
}

uint64_t sub_100611CF0(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100611D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100611DBC()
{
  result = qword_100AE2830;
  if (!qword_100AE2830)
  {
    sub_1007A0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2830);
  }

  return result;
}

uint64_t sub_100611E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100611E74()
{
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  result = sub_1007A33B4();
  qword_100B236C8 = result;
  return result;
}

uint64_t sub_100611EF0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B236D0);
  sub_100008B98(v0, qword_100B236D0);
  if (qword_100AD1948 != -1)
  {
    swift_once();
  }

  v1 = qword_100B236C8;
  return sub_10079ACF4();
}

uint64_t sub_100611F7C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_1001F1160(&qword_100AEDE70, &qword_100835288);
  v2[40] = swift_task_alloc();
  sub_1001F1160(&qword_100AEDE78, &qword_100836460);
  v2[41] = swift_task_alloc();
  v3 = sub_10079A044();
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  v4 = sub_10079A1A4();
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_100612108, 0, 0);
}

uint64_t sub_100612108()
{
  v1 = v0[38];
  v2 = v0[39];
  if (v1)
  {
    v3 = v0 + 10;
    sub_1005AAE74(v1);
    v4 = *(v2 + 16);
    isa = sub_1007A25D4().super.isa;
    v0[48] = isa;

    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_100612330;
    v6 = swift_continuation_init();
    v0[33] = sub_1001F1160(&unk_100AEDE80, &qword_100836468);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100613444;
    v0[29] = &unk_100A27478;
    v0[30] = v6;
    [v4 assetDetailsForAssetIDs:isa completion:v0 + 26];
  }

  else
  {
    v3 = v0 + 2;
    v7 = *(v2 + 16);
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100612B20;
    v8 = swift_continuation_init();
    v0[25] = sub_1001F1160(&unk_100AEDE80, &qword_100836468);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100613444;
    v0[21] = &unk_100A27450;
    v0[22] = v8;
    [v7 fetchAssetDetailsIncludingDeleted:0 completion:v0 + 18];
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_100612330()
{
  v1 = *(*v0 + 112);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_100613308;
  }

  else
  {
    v2 = sub_100612440;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100612440()
{
  v67 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  if (v1)
  {
    v3 = sub_1001EF820(_swiftEmptyArrayStorage);
    v64 = v3;
    v4 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
LABEL_103:
      v5 = sub_1007A38D4();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = *(v0 + 368);
        v8 = *(v0 + 344);
        v62 = (v1 + 32);
        v63 = v1 & 0xC000000000000001;
        v9 = (v8 + 48);
        v56 = (v8 + 32);
        v55 = enum case for StoreBookTaste.neutral(_:);
        v54 = (v8 + 104);
        v58 = (v7 + 56);
        v59 = (v7 + 16);
        v57 = (v7 + 8);
        v60 = v4;
        v61 = v5;
        while (1)
        {
          if (v63)
          {
            v10 = sub_1007A3784();
            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v6 >= v4[2])
            {
              goto LABEL_98;
            }

            v10 = *&v62[8 * v6];
            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }
          }

          v1 = v10;
          v3 = [v10 taste];
          v4 = v1;
          result = [v1 assetID];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          v14 = sub_1007A2254();
          v16 = v15;

          v17 = HIBYTE(v16) & 0xF;
          v18 = v14 & 0xFFFFFFFFFFFFLL;
          if ((v16 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v16) & 0xF;
          }

          else
          {
            v19 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v19)
          {

            goto LABEL_6;
          }

          if ((v16 & 0x1000000000000000) != 0)
          {
            v65 = 0;
            sub_10063E4AC(v14, v16, 10);
            v22 = v46;
            v48 = v47;

            if ((v48 & 1) == 0)
            {
LABEL_75:
              v37 = *(v0 + 328);
              v36 = *(v0 + 336);
              sub_10079A034();
              v1 = v9;
              v38 = *v9;
              v39 = (*v9)(v37, 1, v36);
              v40 = *(v0 + 352);
              v41 = *(v0 + 328);
              v42 = *(v0 + 336);
              if (v39 == 1)
              {
                (*v54)(v40, v55, *(v0 + 336));
                if (v38(v41, 1, v42) != 1)
                {
                  sub_1006135E8(*(v0 + 328));
                }
              }

              else
              {
                (*v56)(v40, *(v0 + 328), *(v0 + 336));
              }

              v43 = *(v0 + 376);
              v44 = *(v0 + 360);
              v45 = *(v0 + 320);
              sub_10079A194();
              (*v59)(v45, v43, v44);
              (*v58)(v45, 0, 1, v44);
              v3 = &v64;
              sub_1005E9D04(v45, v22);

              (*v57)(v43, v44);
              goto LABEL_6;
            }

            goto LABEL_5;
          }

          if ((v16 & 0x2000000000000000) != 0)
          {
            v66[0] = v14;
            v66[1] = v16 & 0xFFFFFFFFFFFFFFLL;
            if (v14 == 43)
            {
              if (!v17)
              {
                goto LABEL_99;
              }

              if (--v17)
              {
                v22 = 0;
                v30 = v66 + 1;
                while (1)
                {
                  v31 = *v30 - 48;
                  if (v31 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = __CFADD__(10 * v22, v31);
                  v22 = 10 * v22 + v31;
                  if (v25)
                  {
                    break;
                  }

                  ++v30;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v14 == 45)
            {
              if (!v17)
              {
                goto LABEL_102;
              }

              if (--v17)
              {
                v22 = 0;
                v26 = v66 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = 10 * v22 >= v27;
                  v22 = 10 * v22 - v27;
                  if (!v25)
                  {
                    break;
                  }

                  ++v26;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v17)
            {
              v22 = 0;
              v33 = v66;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v22, 0xAuLL))
                {
                  break;
                }

                v25 = __CFADD__(10 * v22, v34);
                v22 = 10 * v22 + v34;
                if (v25)
                {
                  break;
                }

                ++v33;
                if (!--v17)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if ((v14 & 0x1000000000000000) != 0)
            {
              v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v20 = sub_1007A37B4();
            }

            v21 = *v20;
            if (v21 == 43)
            {
              if (v18 < 1)
              {
                goto LABEL_100;
              }

              v17 = v18 - 1;
              if (v18 != 1)
              {
                v22 = 0;
                if (!v20)
                {
                  goto LABEL_65;
                }

                v28 = v20 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = __CFADD__(10 * v22, v29);
                  v22 = 10 * v22 + v29;
                  if (v25)
                  {
                    break;
                  }

                  ++v28;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v21 == 45)
            {
              if (v18 < 1)
              {
                goto LABEL_101;
              }

              v17 = v18 - 1;
              if (v18 != 1)
              {
                v22 = 0;
                if (!v20)
                {
                  goto LABEL_65;
                }

                v23 = v20 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v22, 0xAuLL))
                  {
                    break;
                  }

                  v25 = 10 * v22 >= v24;
                  v22 = 10 * v22 - v24;
                  if (!v25)
                  {
                    break;
                  }

                  ++v23;
                  if (!--v17)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v18)
            {
              v22 = 0;
              if (!v20)
              {
LABEL_65:
                LOBYTE(v17) = 0;
                goto LABEL_74;
              }

              while (1)
              {
                v32 = *v20 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v22, 0xAuLL))
                {
                  break;
                }

                v25 = __CFADD__(10 * v22, v32);
                v22 = 10 * v22 + v32;
                if (v25)
                {
                  break;
                }

                ++v20;
                if (!--v18)
                {
                  goto LABEL_65;
                }
              }
            }
          }

          v22 = 0;
          LOBYTE(v17) = 1;
LABEL_74:
          v65 = v17;
          v35 = v17;

          if ((v35 & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_5:

LABEL_6:
          v4 = v60;
          if (v6 == v61)
          {
            v3 = v64;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (qword_100AD1950 != -1)
    {
      swift_once();
    }

    v49 = sub_10079ACE4();
    sub_100008B98(v49, qword_100B236D0);
    v50 = sub_10079ACC4();
    v51 = sub_1007A29B4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Error retrieving reviews from manager", v52, 2u);
    }

    v3 = sub_1001EF820(_swiftEmptyArrayStorage);
  }

  v53 = *(v0 + 8);

  return v53(v3);
}

uint64_t sub_100612B20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_1006133A8;
  }

  else
  {
    v2 = sub_100612C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100612C30()
{
  v66 = v0;
  v1 = *(v0 + 272);

  if (v1)
  {
    v2 = sub_1001EF820(_swiftEmptyArrayStorage);
    v63 = v2;
    v3 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
LABEL_103:
      v4 = sub_1007A38D4();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = *(v0 + 368);
        v7 = *(v0 + 344);
        v61 = (v1 + 32);
        v62 = v1 & 0xC000000000000001;
        v8 = (v7 + 48);
        v55 = (v7 + 32);
        v54 = enum case for StoreBookTaste.neutral(_:);
        v53 = (v7 + 104);
        v57 = (v6 + 56);
        v58 = (v6 + 16);
        v56 = (v6 + 8);
        v59 = v3;
        v60 = v4;
        while (1)
        {
          if (v62)
          {
            v9 = sub_1007A3784();
            v10 = __OFADD__(v5++, 1);
            if (v10)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v5 >= v3[2])
            {
              goto LABEL_98;
            }

            v9 = *&v61[8 * v5];
            v10 = __OFADD__(v5++, 1);
            if (v10)
            {
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }
          }

          v1 = v9;
          v2 = [v9 taste];
          v3 = v1;
          result = [v1 assetID];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = result;
          v13 = sub_1007A2254();
          v15 = v14;

          v16 = HIBYTE(v15) & 0xF;
          v17 = v13 & 0xFFFFFFFFFFFFLL;
          if ((v15 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v15) & 0xF;
          }

          else
          {
            v18 = v13 & 0xFFFFFFFFFFFFLL;
          }

          if (!v18)
          {

            goto LABEL_6;
          }

          if ((v15 & 0x1000000000000000) != 0)
          {
            v64 = 0;
            sub_10063E4AC(v13, v15, 10);
            v21 = v45;
            v47 = v46;

            if ((v47 & 1) == 0)
            {
LABEL_75:
              v36 = *(v0 + 328);
              v35 = *(v0 + 336);
              sub_10079A034();
              v1 = v8;
              v37 = *v8;
              v38 = (*v8)(v36, 1, v35);
              v39 = *(v0 + 352);
              v40 = *(v0 + 328);
              v41 = *(v0 + 336);
              if (v38 == 1)
              {
                (*v53)(v39, v54, *(v0 + 336));
                if (v37(v40, 1, v41) != 1)
                {
                  sub_1006135E8(*(v0 + 328));
                }
              }

              else
              {
                (*v55)(v39, *(v0 + 328), *(v0 + 336));
              }

              v42 = *(v0 + 376);
              v43 = *(v0 + 360);
              v44 = *(v0 + 320);
              sub_10079A194();
              (*v58)(v44, v42, v43);
              (*v57)(v44, 0, 1, v43);
              v2 = &v63;
              sub_1005E9D04(v44, v21);

              (*v56)(v42, v43);
              goto LABEL_6;
            }

            goto LABEL_5;
          }

          if ((v15 & 0x2000000000000000) != 0)
          {
            v65[0] = v13;
            v65[1] = v15 & 0xFFFFFFFFFFFFFFLL;
            if (v13 == 43)
            {
              if (!v16)
              {
                goto LABEL_99;
              }

              if (--v16)
              {
                v21 = 0;
                v29 = v65 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = __CFADD__(10 * v21, v30);
                  v21 = 10 * v21 + v30;
                  if (v24)
                  {
                    break;
                  }

                  ++v29;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v13 == 45)
            {
              if (!v16)
              {
                goto LABEL_102;
              }

              if (--v16)
              {
                v21 = 0;
                v25 = v65 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = 10 * v21 >= v26;
                  v21 = 10 * v21 - v26;
                  if (!v24)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v16)
            {
              v21 = 0;
              v32 = v65;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  break;
                }

                v24 = __CFADD__(10 * v21, v33);
                v21 = 10 * v21 + v33;
                if (v24)
                {
                  break;
                }

                ++v32;
                if (!--v16)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if ((v13 & 0x1000000000000000) != 0)
            {
              v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v19 = sub_1007A37B4();
            }

            v20 = *v19;
            if (v20 == 43)
            {
              if (v17 < 1)
              {
                goto LABEL_100;
              }

              v16 = v17 - 1;
              if (v17 != 1)
              {
                v21 = 0;
                if (!v19)
                {
                  goto LABEL_65;
                }

                v27 = v19 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = __CFADD__(10 * v21, v28);
                  v21 = 10 * v21 + v28;
                  if (v24)
                  {
                    break;
                  }

                  ++v27;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v20 == 45)
            {
              if (v17 < 1)
              {
                goto LABEL_101;
              }

              v16 = v17 - 1;
              if (v17 != 1)
              {
                v21 = 0;
                if (!v19)
                {
                  goto LABEL_65;
                }

                v22 = v19 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v21, 0xAuLL))
                  {
                    break;
                  }

                  v24 = 10 * v21 >= v23;
                  v21 = 10 * v21 - v23;
                  if (!v24)
                  {
                    break;
                  }

                  ++v22;
                  if (!--v16)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v17)
            {
              v21 = 0;
              if (!v19)
              {
LABEL_65:
                LOBYTE(v16) = 0;
                goto LABEL_74;
              }

              while (1)
              {
                v31 = *v19 - 48;
                if (v31 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  break;
                }

                v24 = __CFADD__(10 * v21, v31);
                v21 = 10 * v21 + v31;
                if (v24)
                {
                  break;
                }

                ++v19;
                if (!--v17)
                {
                  goto LABEL_65;
                }
              }
            }
          }

          v21 = 0;
          LOBYTE(v16) = 1;
LABEL_74:
          v64 = v16;
          v34 = v16;

          if ((v34 & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_5:

LABEL_6:
          v3 = v59;
          if (v5 == v60)
          {
            v2 = v63;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (qword_100AD1950 != -1)
    {
      swift_once();
    }

    v48 = sub_10079ACE4();
    sub_100008B98(v48, qword_100B236D0);
    v49 = sub_10079ACC4();
    v50 = sub_1007A29B4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error retrieving reviews from manager", v51, 2u);
    }

    v2 = sub_1001EF820(_swiftEmptyArrayStorage);
  }

  v52 = *(v0 + 8);

  return v52(v2);
}

uint64_t sub_100613308(uint64_t a1)
{
  v2 = *(v1 + 384);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1006133A8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100613444(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      sub_10000A7C4(0, &unk_100AEDE90, BCMutableAssetDetail_ptr);
      v11 = sub_1007A25E4();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(v7 + 64) + 40);
    *v12 = v11;
    v12[1] = a3;
    v13 = a3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100613548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_100611F7C(a1);
}

uint64_t sub_1006135E8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEDE78, &qword_100836460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PPTStoreProductPageTest.startBooksUITest(rootBarCoordinator:)(void *a1)
{
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007A1CA4();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1007A1CC4();
  v42 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_10079ACE4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v41 = a1;
  v19 = [a1 selectedNavigationController];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 topViewController];

    if (v21)
    {
      sub_100797294();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v40 = v3;
        sub_100797264();
        sub_10079AC94();
        v24 = sub_10079ACC4();
        v25 = sub_1007A29D4();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v39 = v2;
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "waiting 10s for card stack to close", v26, 2u);
          v2 = v39;
        }

        (*(v12 + 8))(v18, v11);
        sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
        v27 = sub_1007A2D74();
        sub_1007A1CB4();
        sub_1007A1D24();
        v42 = *(v42 + 8);
        (v42)(v7, v48);
        v28 = swift_allocObject();
        v29 = v47;
        v28[2] = v41;
        v28[3] = v29;
        v28[4] = v23;
        aBlock[4] = sub_10061422C;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A274C8;
        v30 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v31 = v29;
        v32 = v21;

        v33 = v43;
        sub_1007A1C74();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100265BDC();
        sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
        sub_100234698();
        v34 = v45;
        sub_1007A3594();
        sub_1007A2D04();
        _Block_release(v30);

        (*(v40 + 8))(v34, v2);
        (*(v44 + 8))(v33, v46);
        return (v42)(v10, v48);
      }
    }
  }

  sub_10079AC94();
  v36 = sub_10079ACC4();
  v37 = sub_1007A29B4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Current VC is not a PageHostingController", v38, 2u);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100613C34(void *a1, void *a2, void *a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_1007A1C54();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007A1CA4();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_10079ACE4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 hostingViewController];
  sub_10000A7C4(0, &unk_100ADAF38, BCCardStackViewController_ptr);
  v20 = sub_1007A2C64();

  if (v20)
  {
    v51 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    v52 = 0;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1003323D0;
    v50 = &unk_100A27540;
    v21 = _Block_copy(&aBlock);
    v22 = v20;
    [v22 popAllCardsAnimated:0 completion:v21];
    _Block_release(v21);
  }

  v38 = v20;
  sub_10079AC94();
  v23 = sub_10079ACC4();
  v24 = sub_1007A29D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "waiting 2s for product page to open", v25, 2u);
  }

  (*(v15 + 8))(v18, v14);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v26 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v37 = *(v8 + 8);
  v37(v10, v7);
  v27 = swift_allocObject();
  v29 = v39;
  v28 = v40;
  *(v27 + 16) = v39;
  *(v27 + 24) = v28;
  v51 = sub_100614240;
  v52 = v27;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1003323D0;
  v50 = &unk_100A27518;
  v30 = _Block_copy(&aBlock);
  v31 = v29;
  v32 = v28;

  v33 = v41;
  sub_1007A1C74();
  aBlock = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  v34 = v43;
  v35 = v46;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v30);

  (*(v45 + 8))(v34, v35);
  (*(v42 + 8))(v33, v44);
  return (v37)(v13, v7);
}

void sub_100614240()
{
  v1 = *(v0 + 16);
  [v1 setStartPPTTestCalled:1];
  [v1 startPPTTest];
  sub_100797264();
}

void sub_1006142C0(uint64_t a1, double *a2, void *a3)
{
  v4 = [objc_opt_self() _preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout weight:*a2];
  if (v4)
  {
    v5 = v4;
    [v4 pointSize];
    if (v6 <= 29.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 29.0;
    }

    v8 = [objc_opt_self() fontWithDescriptor:v5 size:v7];
  }

  else
  {
    sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
    v8 = sub_1007A30B4();
  }

  *a3 = v8;
}

BOOL sub_1006143B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10061BF3C(v5, v7);
}

uint64_t sub_1006143FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v73 = sub_1001F1160(&qword_100AEDF00, &qword_100836608);
  __chkstk_darwin(v73);
  v72 = &v68 - v3;
  v75 = sub_1001F1160(&qword_100AEDF08, &qword_100836610);
  __chkstk_darwin(v75);
  v5 = &v68 - v4;
  v74 = sub_1001F1160(&qword_100AEDF10, &qword_100836618);
  __chkstk_darwin(v74);
  v7 = &v68 - v6;
  v76 = sub_1001F1160(&qword_100AEDF18, &qword_100836620);
  __chkstk_darwin(v76);
  v9 = &v68 - v8;
  v10 = sub_1001F1160(&qword_100AEDF20, &qword_100836628);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_1001F1160(&qword_100AEDF28, &qword_100836630);
  __chkstk_darwin(v13 - 8);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = sub_1001F1160(&qword_100AEDF30, &qword_100836638);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v77 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  sub_100614C64((&v68 - v22));
  v24 = sub_10079D284();
  sub_10079BBA4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v23[*(sub_1001F1160(&qword_100AEDF38, &qword_100836640) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_10079D2A4();
  sub_10079BBA4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v23[*(sub_1001F1160(&unk_100AEDF40, &unk_100836648) + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = sub_10079D2B4();
  sub_10079BBA4();
  v45 = &v23[*(v19 + 44)];
  *v45 = v44;
  *(v45 + 1) = v46;
  *(v45 + 2) = v47;
  *(v45 + 3) = v48;
  *(v45 + 4) = v49;
  v45[40] = 0;
  if (sub_1007A0264())
  {
    sub_100614FAC(v12);
    sub_1000077D8(v12, v7, &qword_100AEDF20, &qword_100836628);
    swift_storeEnumTagMultiPayload();
    sub_10061769C();
    sub_100617870();
    sub_10079CCA4();
    sub_1000077D8(v9, v5, &qword_100AEDF18, &qword_100836620);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD4988, &qword_100826A30);
    sub_100617610();
    sub_1001FA380();
    sub_10079CCA4();
    sub_100007840(v9, &qword_100AEDF18, &qword_100836620);
    sub_100007840(v12, &qword_100AEDF20, &qword_100836628);
  }

  else
  {
    v69 = a1;
    v70 = v10;
    v71 = v17;
    v50 = sub_1007A01C4();
    v52 = v51;

    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v53 || (v54 = sub_1007A01A4(), (v54 & 1) == 0))
    {
      sub_10079E474();
      sub_10079BE54();
      v59 = v83;
      v60 = v84;
      v61 = v85;
      v62 = v86;
      v82 = 1;
      v81 = v84;
      v80 = v86;
      *v5 = 0;
      v5[8] = 1;
      *(v5 + 2) = v59;
      v5[24] = v60;
      *(v5 + 4) = v61;
      v5[40] = v62;
      *(v5 + 3) = v87;
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AD4988, &qword_100826A30);
      sub_100617610();
      sub_1001FA380();
      v17 = v71;
      sub_10079CCA4();
    }

    else
    {
      v68 = &v68;
      __chkstk_darwin(v54);
      *(&v68 - 2) = v69;
      sub_10079D274();
      sub_1001F1160(&qword_100AEDFB8, &qword_100836688);
      sub_10061795C();
      v55 = v72;
      sub_10079BBD4();
      v56 = sub_10079DDC4();
      v57 = sub_10079D294();
      v58 = v55 + *(v73 + 36);
      *v58 = v56;
      *(v58 + 8) = v57;
      sub_1000077D8(v55, v7, &qword_100AEDF00, &qword_100836608);
      swift_storeEnumTagMultiPayload();
      sub_10061769C();
      sub_100617870();
      sub_10079CCA4();
      sub_1000077D8(v9, v5, &qword_100AEDF18, &qword_100836620);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AD4988, &qword_100826A30);
      sub_100617610();
      sub_1001FA380();
      v17 = v71;
      sub_10079CCA4();
      sub_100007840(v9, &qword_100AEDF18, &qword_100836620);
      sub_100007840(v55, &qword_100AEDF00, &qword_100836608);
    }
  }

  v63 = v77;
  sub_1000077D8(v23, v77, &qword_100AEDF30, &qword_100836638);
  v64 = v78;
  sub_1000077D8(v17, v78, &qword_100AEDF28, &qword_100836630);
  v65 = v79;
  sub_1000077D8(v63, v79, &qword_100AEDF30, &qword_100836638);
  v66 = sub_1001F1160(&qword_100AEDFB0, &qword_100836680);
  sub_1000077D8(v64, v65 + *(v66 + 48), &qword_100AEDF28, &qword_100836630);
  sub_100007840(v17, &qword_100AEDF28, &qword_100836630);
  sub_100007840(v23, &qword_100AEDF30, &qword_100836638);
  sub_100007840(v64, &qword_100AEDF28, &qword_100836630);
  return sub_100007840(v63, &qword_100AEDF30, &qword_100836638);
}

uint64_t sub_100614C64@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1007A0284();
  sub_10061B918(&qword_100AEE0F0, &type metadata accessor for SearchViewModel, &protocol conformance descriptor for SearchViewModel);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v4 = v34;
  v5 = v35;
  v6 = v36;
  v7 = v37;
  sub_1007A0254();
  if (qword_100AD18B0 != -1)
  {
    swift_once();
  }

  v9 = qword_100B23628;
  v8 = qword_100B23630;
  sub_1005A2C48(v1, &v27);
  v10 = swift_allocObject();
  v11 = v32;
  *(v10 + 80) = v31;
  *(v10 + 96) = v11;
  *(v10 + 112) = v33;
  v12 = v28;
  *(v10 + 16) = v27;
  *(v10 + 32) = v12;
  v13 = v30;
  *(v10 + 48) = v29;
  *(v10 + 64) = v13;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  sub_1007A1214();
  sub_10061B918(&qword_100AEFCF0, &type metadata accessor for SearchBarResponderState, &protocol conformance descriptor for SearchBarResponderState);

  a1[4] = sub_10079C024();
  a1[5] = v14;
  a1[6] = v9;
  a1[7] = v8;
  a1[8] = sub_10061BEB4;
  a1[9] = v10;
  v15 = *(type metadata accessor for PopoverSearchBar(0) + 32);
  *(a1 + v15) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  sub_1005A2C48(v2, &v27);
  v16 = swift_allocObject();
  v17 = v32;
  *(v16 + 80) = v31;
  *(v16 + 96) = v17;
  *(v16 + 112) = v33;
  v18 = v28;
  *(v16 + 16) = v27;
  *(v16 + 32) = v18;
  v19 = v30;
  *(v16 + 48) = v29;
  *(v16 + 64) = v19;
  v20 = (a1 + *(sub_1001F1160(&qword_100AEE0F8, &qword_1008367C8) + 36));
  *v20 = sub_10061BEDC;
  v20[1] = v16;
  v20[2] = 0;
  v20[3] = 0;
  sub_1005A2C48(v2, &v27);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 80) = v31;
  *(v21 + 96) = v22;
  *(v21 + 112) = v33;
  v23 = v28;
  *(v21 + 16) = v27;
  *(v21 + 32) = v23;
  v24 = v30;
  *(v21 + 48) = v29;
  *(v21 + 64) = v24;
  result = sub_1001F1160(&qword_100AEE100, &qword_1008367D0);
  v26 = (a1 + *(result + 36));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = sub_10061BF34;
  v26[3] = v21;
  return result;
}

uint64_t sub_100614FAC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_10079C074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AEDF70, &qword_100836660);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v31 = sub_1001F1160(&qword_100AEDFE8, &qword_1008366A0);
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v27 - v10;
  v28 = sub_1001F1160(&qword_100AEDF68, &qword_100836658);
  __chkstk_darwin(v28);
  v29 = &v27 - v12;
  v33 = v1;
  sub_1001F1160(&qword_100AEDFF0, &qword_1008366A8);
  sub_100005920(&qword_100AEDFF8, &qword_100AEDFF0, &qword_1008366A8, &protocol conformance descriptor for TupleView<A>);
  sub_10079D524();
  sub_10079C064();
  sub_100005920(&qword_100AEDF78, &qword_100AEDF70, &qword_100836660, &protocol conformance descriptor for List<A, B>);
  sub_10079DCA4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v13 = v27;
  sub_1006165F4();
  sub_10079E474();
  sub_10079C414();
  v14 = v29;
  (*(v30 + 32))(v29, v11, v31);
  v15 = &v14[*(v28 + 36)];
  v16 = v41;
  *(v15 + 4) = v40;
  *(v15 + 5) = v16;
  *(v15 + 6) = v42;
  v17 = v37;
  *v15 = v36;
  *(v15 + 1) = v17;
  v18 = v39;
  *(v15 + 2) = v38;
  *(v15 + 3) = v18;
  sub_1005A2C48(v13, v34);
  v19 = swift_allocObject();
  v20 = v34[5];
  *(v19 + 80) = v34[4];
  *(v19 + 96) = v20;
  *(v19 + 112) = v35;
  v21 = v34[1];
  *(v19 + 16) = v34[0];
  *(v19 + 32) = v21;
  v22 = v34[3];
  *(v19 + 48) = v34[2];
  *(v19 + 64) = v22;
  v23 = v14;
  v24 = v32;
  sub_10020B3C8(v23, v32, &qword_100AEDF68, &qword_100836658);
  result = sub_1001F1160(&qword_100AEDF20, &qword_100836628);
  v26 = (v24 + *(result + 36));
  *v26 = sub_100616B38;
  v26[1] = 0;
  v26[2] = sub_100617AA8;
  v26[3] = v19;
  return result;
}

double sub_1006154E0(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1007A0AD4();
  sub_1007A0254();
  sub_1007A11E4();

  return result;
}

double sub_10061554C()
{
  if (sub_1007A0184())
  {
    sub_1007A0254();
    sub_1007A11C4();
  }

  return result;
}

double sub_1006155A4(__n128 a1)
{
  sub_1007A0254();
  sub_1007A11E4();

  return result;
}

uint64_t sub_1006155E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v62 = sub_1001F1160(&qword_100AEE020, &qword_1008366C8);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v75 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v57 - v5;
  v59 = sub_1001F1160(&qword_100AEE028, &qword_1008366D0);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_1007A01B4();
  if (v13 == -1)
  {
    v73 = 0;
    v72 = 0;
    v69 = 0;
    v64 = 0;
    v71 = 0;
    v65 = 0;
    v67 = 0;
    v70 = 0;
    v76 = 0;
    v66 = 0;
  }

  else
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    sub_1005A2C48(a1, &v77);
    v18 = swift_allocObject();
    v19 = v82;
    *(v18 + 80) = v81;
    *(v18 + 96) = v19;
    v20 = v83;
    v21 = v78;
    *(v18 + 16) = v77;
    *(v18 + 32) = v21;
    v22 = v80;
    *(v18 + 48) = v79;
    *(v18 + 64) = v22;
    *(v18 + 112) = v20;
    *(v18 + 120) = v14;
    *(v18 + 128) = v15;
    *(v18 + 136) = v16;
    v17 &= 1u;
    v71 = v18;
    *(v18 + 144) = v17;
    sub_1005A2C48(a1, &v77);
    v23 = swift_allocObject();
    v24 = v82;
    *(v23 + 80) = v81;
    *(v23 + 96) = v24;
    *(v23 + 112) = v83;
    v25 = v78;
    *(v23 + 16) = v77;
    *(v23 + 32) = v25;
    v26 = v80;
    *(v23 + 48) = v79;
    *(v23 + 64) = v26;
    v70 = v23;
    LOBYTE(v85) = v17;
    v73 = v14;
    v72 = v15;
    v69 = v16;
    sub_10061BBBC(v14, v15, v16, v17);
    *&v77 = sub_10079DDC4();
    v76 = sub_10079E1B4();
    v66 = v85;
    v67 = sub_10061BBB4;
    v65 = sub_10061C8D4;
    v64 = sub_10061BB44;
  }

  *&v85 = sub_1007A0224();
  sub_1005A2C48(a1, &v77);
  v27 = swift_allocObject();
  v28 = v82;
  *(v27 + 80) = v81;
  *(v27 + 96) = v28;
  *(v27 + 112) = v83;
  v29 = v78;
  *(v27 + 16) = v77;
  *(v27 + 32) = v29;
  v30 = v80;
  *(v27 + 48) = v79;
  *(v27 + 64) = v30;
  sub_1001F1160(&qword_100AEE030, &qword_1008366D8);
  sub_100796C04();
  sub_1001F1160(&qword_100AEE038, &qword_1008366E0);
  sub_100005920(&qword_100AEE040, &qword_100AEE030, &qword_1008366D8, &protocol conformance descriptor for [A]);
  sub_10061B758();
  sub_10061B918(&qword_100AEE078, &type metadata accessor for SearchResultEntity, &protocol conformance descriptor for SearchResultEntity);
  v63 = v9;
  sub_10079E274();
  v31 = sub_1007A01F4();
  v32 = sub_1007A0214();
  v34 = v33;
  sub_100009864(a1, &v77);
  v35 = swift_allocObject();
  sub_1000077C0(&v77, v35 + 16);
  sub_1005A2C48(a1, &v77);
  v36 = swift_allocObject();
  v37 = v82;
  *(v36 + 80) = v81;
  *(v36 + 96) = v37;
  *(v36 + 112) = v83;
  v38 = v78;
  *(v36 + 16) = v77;
  *(v36 + 32) = v38;
  v39 = v80;
  *(v36 + 48) = v79;
  *(v36 + 64) = v39;
  v84 = v34 & 1;
  *&v77 = sub_10079DDC4();
  v40 = sub_10079E1B4();
  LOBYTE(v77) = v31;
  *(&v77 + 1) = v32;
  LOBYTE(v78) = v84;
  *(&v78 + 1) = sub_10061B960;
  *&v79 = v35;
  *(&v79 + 1) = sub_10061C8D4;
  *&v80 = 0;
  *(&v80 + 1) = sub_10061B978;
  *&v81 = v36;
  *(&v81 + 1) = v40;
  sub_10079BE14();
  sub_1001F1160(&qword_100AEE080, &qword_1008366F8);
  sub_10061B980();
  v41 = v74;
  sub_10079D864();

  v42 = v58;
  v57 = *(v58 + 16);
  v43 = v68;
  v44 = v59;
  v57(v68, v63, v59);
  v45 = v61;
  v46 = *(v61 + 16);
  v47 = v62;
  v46(v75, v41, v62);
  *&v85 = v73;
  *(&v85 + 1) = v72;
  *&v86 = v69;
  *(&v86 + 1) = v66;
  *&v87 = v64;
  *(&v87 + 1) = v71;
  v88 = v65;
  *&v89 = v67;
  *(&v89 + 1) = v70;
  v90 = v76;
  v48 = v60;
  *(v60 + 80) = v76;
  v49 = v88;
  *(v48 + 2) = v87;
  *(v48 + 3) = v49;
  *(v48 + 4) = v89;
  v50 = v86;
  *v48 = v85;
  *(v48 + 1) = v50;
  v51 = sub_1001F1160(&qword_100AEE0A8, &qword_100836708);
  v57(&v48[*(v51 + 48)], v43, v44);
  v52 = &v48[*(v51 + 64)];
  v53 = v75;
  v46(v52, v75, v47);
  sub_1000077D8(&v85, &v77, &qword_100AEE0B0, &qword_100836710);
  v54 = *(v45 + 8);
  v54(v74, v47);
  v55 = *(v42 + 8);
  v55(v63, v44);
  v54(v53, v47);
  v55(v68, v44);
  *&v77 = v73;
  *(&v77 + 1) = v72;
  *&v78 = v69;
  *(&v78 + 1) = v66;
  *&v79 = v64;
  *(&v79 + 1) = v71;
  v80 = v65;
  *&v81 = v67;
  *(&v81 + 1) = v70;
  *&v82 = v76;
  return sub_100007840(&v77, &qword_100AEE0B0, &qword_100836710);
}

void sub_100615ED4(double *a1, uint64_t a2)
{

  sub_1001F1160(&qword_100AEE018, &qword_1008366C0);
  sub_10079DFF4();
  sub_10079E004();
}

uint64_t sub_100615FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1007A0774();
  v7 = *(v6 - 8);
  v35 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AEE0B8, &qword_100836718);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v33 = a2;
  v36 = &v32 - v11;
  sub_1007A0244();
  v13 = *(v7 + 16);
  v37 = a3;
  v32 = a1;
  v13(a3, a1, v6);
  v34 = type metadata accessor for ResultListResultView(0);
  sub_1000077D8(v12, a3 + *(v34 + 20), &qword_100AEE0B8, &qword_100836718);
  sub_1005A2C48(a2, &v38);
  v14 = v9;
  v13(v9, a1, v6);
  v15 = (*(v7 + 80) + 120) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v43;
  *(v16 + 80) = v42;
  *(v16 + 96) = v17;
  *(v16 + 112) = v44;
  v18 = v39;
  *(v16 + 16) = v38;
  *(v16 + 32) = v18;
  v19 = v41;
  *(v16 + 48) = v40;
  *(v16 + 64) = v19;
  v20 = *(v7 + 32);
  v20(v16 + v15, v14, v6);
  v21 = v33;
  v22 = (v37 + *(v34 + 24));
  *v22 = sub_10061BBC8;
  v22[1] = v16;
  sub_1005A2C48(v21, &v38);
  v13(v14, v32, v6);
  v23 = swift_allocObject();
  v24 = v43;
  *(v23 + 80) = v42;
  *(v23 + 96) = v24;
  *(v23 + 112) = v44;
  v25 = v39;
  *(v23 + 16) = v38;
  *(v23 + 32) = v25;
  v26 = v41;
  *(v23 + 48) = v40;
  *(v23 + 64) = v26;
  v20(v23 + v15, v14, v6);
  v27 = sub_1001F1160(&qword_100AEE058, &qword_1008366E8);
  v28 = v37;
  v29 = (v37 + *(v27 + 36));
  *v29 = sub_10061C8D4;
  v29[1] = 0;
  v29[2] = sub_10061BD28;
  v29[3] = v23;
  *&v38 = sub_10079DDC4();
  v30 = sub_10079E1B4();
  sub_100007840(v36, &qword_100AEE0B8, &qword_100836718);
  result = sub_1001F1160(&qword_100AEE038, &qword_1008366E0);
  *(v28 + *(result + 36)) = v30;
  return result;
}

void sub_100616318(double *a1, uint64_t a2)
{
  v16[0] = sub_100796C04();
  v4 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1007A0744();
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;

  sub_1001F1160(&qword_100AEE018, &qword_1008366C0);
  sub_10079DFF4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v35;
  sub_1002F66AC(v6, isUniquelyReferenced_nonNull_native, v7 + 2.0);
  (*(v4 + 8))(v6, v16[0]);
  v15 = v21;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v16[1] = v33;
  v17 = v34;
  v18 = v15;
  v19 = v36;
  v20 = v37;
  sub_10079E004();
}

double sub_100616500(uint64_t *a1, uint64_t a2)
{

  sub_1001F1160(&qword_100AEE018, &qword_1008366C0);
  sub_10079DFF4();
  sub_10079E004();

  return result;
}

void sub_1006165F4()
{
  v45 = sub_100796C04();
  v1 = *(v45 - 8);
  __chkstk_darwin(v45);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A0774();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AEE010, &qword_1008366B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v41 - v10;
  v11 = sub_1007A01B4();
  v15 = 0.0;
  if (v14 != -1)
  {
    sub_10061B72C(v11, v12, v13, v14);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v57 = *(v0 + 56);
    v58 = v16;
    v59 = v17;
    v60 = v18;
    v61 = v19;
    v62 = v20;
    sub_1001F1160(&qword_100AEE018, &qword_1008366C0);
    sub_10079DFF4();
  }

  v21 = sub_1007A0224();
  v42 = v0;
  sub_1005A2C48(v0, &v57);
  v22 = v21;
  v23 = 0;
  v43 = v44 + 16;
  v24 = *(v22 + 16);
  v25 = (v44 + 56);
  v26 = (v44 + 48);
  v27 = (v44 + 32);
  v28 = (v1 + 8);
  v29 = (v44 + 8);
  v30 = v48;
  v47 = v22;
  for (i = v24; ; v24 = i)
  {
    if (v23 == v24)
    {
      v32 = 1;
      v23 = v24;
      goto LABEL_10;
    }

    if (v23 >= *(v22 + 16))
    {
      break;
    }

    (*(v44 + 16))(v30, v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v4);
    v32 = 0;
    ++v23;
LABEL_10:
    (*v25)(v30, v32, 1, v4);
    sub_100617AB0(v30, v8);
    if ((*v26)(v8, 1, v4) == 1)
    {

      sub_1005A2CA4(&v57);
      v36 = *(v42 + 64);
      v37 = *(v42 + 72);
      v38 = *(v42 + 80);
      v39 = *(v42 + 88);
      v40 = *(v42 + 96);
      v57 = *(v42 + 56);
      v58 = v36;
      v59 = v37;
      v60 = v38;
      v61 = v39;
      v62 = v40;
      sub_1001F1160(&qword_100AEE018, &qword_1008366C0);
      sub_10079DFF4();

      return;
    }

    (*v27)(v49, v8, v4);
    sub_1007A0744();
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    sub_1001F1160(&qword_100AEE018, &qword_1008366C0);
    sub_10079DFF4();
    v33 = v50;
    if (*(v50 + 16) && (v34 = sub_1002EC564(v3), (v35 & 1) != 0))
    {
      v31 = *(*(v33 + 56) + 8 * v34);
      (*v28)(v3, v45);
    }

    else
    {

      (*v28)(v3, v45);
      v31 = 3.0;
    }

    (*v29)(v49, v4);
    v15 = v15 + v31;
    v30 = v48;
    v22 = v47;
  }

  __break(1u);
}

uint64_t sub_100616B64(double *a1)
{
  v1 = sub_1001F1160(&unk_100AEE000, &qword_1008366B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  if (qword_100AD1958 != -1)
  {
    swift_once();
  }

  v4 = qword_100AD1960;
  v5 = qword_100AEDEA0;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100AEDEA8;
  sub_1007A1624();
  v7 = sub_1007A1634();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  return sub_1007A0274();
}

uint64_t sub_100616CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1001F1160(&qword_100AEE0C0, &qword_100836720);
  sub_100616DD0(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_10079D284();
  sub_10079BBA4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(sub_1001F1160(&qword_100AEDFD0, &qword_100836690) + 36);
  *v13 = a1;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(a1) = sub_10079D2B4();
  sub_10079BBA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_1001F1160(&qword_100AEDFB8, &qword_100836688);
  v23 = a2 + *(result + 36);
  *v23 = a1;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

double sub_100616DD0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = sub_1001F1160(&unk_100AEE0C8, &unk_100836728);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_1005A2C48(a1, &v27);
  v10 = swift_allocObject();
  v11 = v32;
  *(v10 + 80) = v31;
  *(v10 + 96) = v11;
  *(v10 + 112) = v33;
  v12 = v28;
  *(v10 + 16) = v27;
  *(v10 + 32) = v12;
  v13 = v30;
  *(v10 + 48) = v29;
  *(v10 + 64) = v13;
  v26 = sub_1007A0194();
  swift_getKeyPath();
  sub_1005A2C48(a1, &v27);
  v14 = swift_allocObject();
  v15 = v32;
  *(v14 + 80) = v31;
  *(v14 + 96) = v15;
  *(v14 + 112) = v33;
  v16 = v28;
  *(v14 + 16) = v27;
  *(v14 + 32) = v16;
  v17 = v30;
  *(v14 + 48) = v29;
  *(v14 + 64) = v17;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEE0D8, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  sub_10061BE08();
  sub_10079E264();
  v18 = *(v4 + 16);
  v18(v6, v9, v3);
  v19 = v25;
  *v25 = sub_10061BD9C;
  *(v19 + 1) = v10;
  v20 = v19;
  v21 = sub_1001F1160(&qword_100AEE0E8, &qword_100836758);
  v18(&v20[*(v21 + 48)], v6, v3);
  v22 = *(v4 + 8);

  v22(v9, v3);
  v22(v6, v3);

  return result;
}

uint64_t sub_1006170BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1005A2C48(a2, v12);
  v6 = swift_allocObject();
  v7 = v12[5];
  *(v6 + 80) = v12[4];
  *(v6 + 96) = v7;
  v8 = v13;
  v9 = v12[1];
  *(v6 + 16) = v12[0];
  *(v6 + 32) = v9;
  v10 = v12[3];
  *(v6 + 48) = v12[2];
  *(v6 + 64) = v10;
  *(v6 + 112) = v8;
  *(v6 + 120) = v5;
  *(v6 + 128) = v4;
  *a3 = v5;
  a3[1] = v4;
  a3[2] = sub_10061BE5C;
  a3[3] = v6;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_100617168@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10079CB24();
  v6 = sub_1001F1160(&qword_100AEDEE8, &qword_1008365C0);
  v7 = a2 + *(v6 + 36);
  *v7 = v5;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = sub_1001F1160(&unk_100AEDEF0, &qword_1008365C8);
  sub_1006143FC(v3, v7 + *(v8 + 44));
  v9 = enum case for ContentSizeCategory.large(_:);
  v10 = sub_10079CAE4();
  v11 = *(v10 - 8);
  (*(v11 + 104))(a2, v9, v10);
  (*(v11 + 56))(a2, 0, 1, v10);
  *(a2 + *(v6 + 40)) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006174A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1006174F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100617544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10061758C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100617610()
{
  result = qword_100AEDF50;
  if (!qword_100AEDF50)
  {
    sub_1001F1234(&qword_100AEDF18, &qword_100836620);
    sub_10061769C();
    sub_100617870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF50);
  }

  return result;
}

unint64_t sub_10061769C()
{
  result = qword_100AEDF58;
  if (!qword_100AEDF58)
  {
    sub_1001F1234(&qword_100AEDF20, &qword_100836628);
    sub_100617754();
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88, &qword_100836668, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF58);
  }

  return result;
}

unint64_t sub_100617754()
{
  result = qword_100AEDF60;
  if (!qword_100AEDF60)
  {
    sub_1001F1234(&qword_100AEDF68, &qword_100836658);
    sub_1001F1234(&qword_100AEDF70, &qword_100836660);
    sub_10079C074();
    sub_100005920(&qword_100AEDF78, &qword_100AEDF70, &qword_100836660, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF60);
  }

  return result;
}

unint64_t sub_100617870()
{
  result = qword_100AEDF90;
  if (!qword_100AEDF90)
  {
    sub_1001F1234(&qword_100AEDF00, &qword_100836608);
    sub_100005920(&qword_100AEDF98, &unk_100AEDFA0, &unk_100836670, &protocol conformance descriptor for ScrollView<A>);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDF90);
  }

  return result;
}

unint64_t sub_10061795C()
{
  result = qword_100AEDFC0;
  if (!qword_100AEDFC0)
  {
    sub_1001F1234(&qword_100AEDFB8, &qword_100836688);
    sub_1006179E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDFC0);
  }

  return result;
}

unint64_t sub_1006179E8()
{
  result = qword_100AEDFC8;
  if (!qword_100AEDFC8)
  {
    sub_1001F1234(&qword_100AEDFD0, &qword_100836690);
    sub_100005920(&qword_100AEDFD8, &qword_100AEDFE0, &qword_100836698, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDFC8);
  }

  return result;
}

uint64_t sub_100617AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEE010, &qword_1008366B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100617B20(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1007A1C54();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1007A1CA4();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PopoverSearchBar(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AEE3E8, &qword_100836DD8);
  sub_10079D0C4();
  v10 = aBlock;
  sub_10061C588(v1, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = v11 + v8;
  v13 = swift_allocObject();
  sub_10061C5EC(v9, v13 + v11);
  v14 = &v10[OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_textDidChange];
  *v14 = sub_10061C650;
  v14[1] = v13;

  v15 = v33;
  sub_10079D0C4();
  v16 = aBlock;
  v17 = *(v2 + 72);
  v18 = (aBlock + OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_searchButtonClicked);
  *v18 = *(v2 + 64);
  v18[1] = v17;

  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  aBlock = *v2;
  v41 = v19;
  v42 = v20;
  sub_1001F1160(&qword_100AEE3F0, &unk_100836DE0);
  sub_10079E1C4();
  v21 = sub_1007A2214();

  [v15 setText:v21];

  v22 = [v15 searchTextField];
  v23 = sub_1007A2214();
  [v22 setPlaceholder:v23];

  if (sub_1007A11B4())
  {
    [v15 becomeFirstResponder];
  }

  if (sub_1007A11D4())
  {
    [v15 resignFirstResponder];
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v24 = sub_1007A2D74();
  sub_10061C588(v2, v9);
  v25 = swift_allocObject();
  sub_10061C5EC(v9, v25 + v11);
  *(v25 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v43 = sub_10061C6D0;
  v44 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v41 = sub_1003323D0;
  v42 = &unk_100A27B00;
  v26 = _Block_copy(&aBlock);
  v27 = v15;

  v28 = v34;
  sub_1007A1C74();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_10061B918(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  v29 = v36;
  v30 = v39;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v26);

  (*(v38 + 8))(v29, v30);
  return (*(v35 + 8))(v28, v37);
}

uint64_t sub_10061806C(uint64_t a1, uint64_t a2, __int128 *a3)
{

  sub_1001F1160(&qword_100AEE3F0, &unk_100836DE0);
  return sub_10079E1D4();
}

uint64_t sub_1006180D0(uint64_t a1, void *a2)
{
  if (sub_1007A11B4())
  {
    sub_1007A11C4();
  }

  if (sub_1007A11D4())
  {
    sub_1007A11E4();
  }

  v3 = [a2 isFirstResponder];
  result = sub_1007A11F4();
  if (v3 != (result & 1))
  {
    [a2 isFirstResponder];
    return sub_1007A1204();
  }

  return result;
}

id sub_100618150()
{
  v0 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1001F1160(&qword_100AEE3E8, &qword_100836DD8);
  sub_10079D0C4();
  [v0 setDelegate:v2];

  [v0 setSearchBarStyle:2];
  return v0;
}

id sub_1006181F8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PopoverSearchBar.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100618234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10061B918(&qword_100AEE3F8, type metadata accessor for PopoverSearchBar, &unk_1008369A0);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1006182C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10061B918(&qword_100AEE3F8, type metadata accessor for PopoverSearchBar, &unk_1008369A0);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10061835C(uint64_t a1)
{
  sub_10061B918(&qword_100AEE3F8, type metadata accessor for PopoverSearchBar, &unk_1008369A0);
  sub_10079CC64();
  __break(1u);
}

double sub_1006183B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a2;
  v55 = sub_10079C394();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v42[-v6];
  v7 = sub_1001F1160(&unk_100AEE390, &qword_100836D68);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v54 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v58 = &v42[-v10];
  if (qword_100AD1890 != -1)
  {
    swift_once();
  }

  v59 = xmmword_100B235E8;
  v11 = sub_100206ECC();

  v44 = v11;
  v12 = sub_10079D5D4();
  v14 = v13;
  v16 = v15;
  sub_10079D374();
  v17 = sub_10079D5A4();
  v19 = v18;
  v21 = v20;

  sub_10020B430(v12, v14, v16 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v22 = sub_10079D564();
  v24 = v23;
  v43 = v25;
  v46 = v26;

  sub_10020B430(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  if (qword_100AD1898 != -1)
  {
    swift_once();
  }

  v59 = xmmword_100B235F8;

  v27 = v49;
  sub_10079E084();
  v28 = v52;
  sub_10079C384();
  sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
  sub_10061B918(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v29 = v58;
  v30 = v51;
  v31 = v55;
  sub_10079D6A4();
  (*(v53 + 8))(v28, v31);
  (*(v50 + 8))(v27, v30);
  v33 = v56;
  v32 = v57;
  v34 = *(v56 + 16);
  v35 = v54;
  v34(v54, v29, v57);
  *a3 = v22;
  *(a3 + 8) = v24;
  v36 = v43 & 1;
  *(a3 + 16) = v43 & 1;
  v55 = v24;
  v37 = KeyPath;
  *(a3 + 24) = v46;
  *(a3 + 32) = v37;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0x4020000000000000;
  *(a3 + 64) = 0;
  v38 = sub_1001F1160(&qword_100AEE3A0, &qword_100836D70);
  v34((a3 + *(v38 + 64)), v35, v32);
  v39 = v55;
  sub_1001F1894(v22, v55, v36);
  v40 = *(v33 + 8);

  v40(v58, v32);
  v40(v35, v32);
  sub_10020B430(v22, v39, v36);

  return result;
}

uint64_t sub_10061890C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_10079C8C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_1001F1160(&qword_100AEE380, &qword_100836D58);
  sub_1006183B4(v4, v3, a1 + *(v5 + 44));
  LOBYTE(v3) = sub_10079D2F4();
  sub_10079BBA4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_1001F1160(&qword_100AEE388, &qword_100836D60);
  v15 = a1 + *(result + 36);
  *v15 = v3;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

void sub_1006189C8(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = xmmword_100836470;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;

  sub_10079DFE4();
  *(a5 + 32) = v8;
  *(a5 + 40) = *(&v8 + 1);
  type metadata accessor for CGRect(0);
  sub_10079DFE4();
  *(a5 + 48) = v8;
  *(a5 + 64) = v9;
  *(a5 + 80) = v10;
  v6 = sub_1001F1160(&qword_100AEE368, &qword_100836CE0);
  v7 = *(v6 + 52);
  *(a5 + v7) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  sub_100618AF4(a5 + *(v6 + 56));
}

void sub_100618AF4(uint64_t a5@<X8>)
{
  v6 = sub_10079C8C4();
  v33 = 0;
  sub_100618CF0(&v20);
  v44 = v30;
  v45[0] = v31[0];
  *(v45 + 9) = *(v31 + 9);
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v34 = v20;
  v35 = v21;
  v46[10] = v30;
  v47[0] = v31[0];
  *(v47 + 9) = *(v31 + 9);
  v46[6] = v26;
  v46[7] = v27;
  v46[8] = v28;
  v46[9] = v29;
  v46[2] = v22;
  v46[3] = v23;
  v46[4] = v24;
  v46[5] = v25;
  v46[0] = v20;
  v46[1] = v21;
  sub_1000077D8(&v34, &v19, &qword_100AEE370, &qword_100836CE8);
  sub_100007840(v46, &qword_100AEE370, &qword_100836CE8);
  *&v32[151] = v43;
  *&v32[167] = v44;
  *&v32[183] = v45[0];
  *&v32[192] = *(v45 + 9);
  *&v32[87] = v39;
  *&v32[103] = v40;
  *&v32[119] = v41;
  *&v32[135] = v42;
  *&v32[23] = v35;
  *&v32[39] = v36;
  *&v32[55] = v37;
  *&v32[71] = v38;
  *&v32[7] = v34;
  v7 = v33;
  v8 = sub_10079D2F4();
  sub_10079BBA4();
  v9 = *&v32[128];
  *(a5 + 161) = *&v32[144];
  v10 = *&v32[176];
  *(a5 + 177) = *&v32[160];
  *(a5 + 193) = v10;
  *(a5 + 209) = *&v32[192];
  v11 = *&v32[64];
  *(a5 + 97) = *&v32[80];
  v12 = *&v32[112];
  *(a5 + 113) = *&v32[96];
  *(a5 + 129) = v12;
  *(a5 + 145) = v9;
  v13 = *v32;
  *(a5 + 33) = *&v32[16];
  v14 = *&v32[48];
  *(a5 + 49) = *&v32[32];
  *(a5 + 65) = v14;
  *(a5 + 81) = v11;
  *a5 = v6;
  *(a5 + 8) = 0;
  *(a5 + 16) = v7;
  *(a5 + 17) = v13;
  *(a5 + 232) = v8;
  *(a5 + 240) = v15;
  *(a5 + 248) = v16;
  *(a5 + 256) = v17;
  *(a5 + 264) = v18;
  *(a5 + 272) = 0;
}

uint64_t sub_100618CF0@<X0>(uint64_t a3@<X8>)
{
  v38 = sub_10079DF24();
  v37 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  KeyPath = swift_getKeyPath();
  sub_10079D494();
  sub_10079D3D4();
  v35 = sub_10079D464();

  v40 = swift_getKeyPath();
  sub_10079E474();
  sub_10079BE54();
  v39 = sub_10079D2E4();
  sub_10079BBA4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_100206ECC();

  v12 = sub_10079D5D4();
  v14 = v13;
  v16 = v15;
  sub_10079D374();
  sub_10079D3D4();
  sub_10079D464();

  v17 = sub_10079D5A4();
  v19 = v18;
  v21 = v20;

  sub_10020B430(v12, v14, v16 & 1);

  sub_10079DE34();
  v22 = sub_10079D564();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;

  sub_10020B430(v17, v19, v21 & 1);

  v28 = swift_getKeyPath();
  *&v45 = v38;
  *(&v45 + 1) = KeyPath;
  *&v46 = v37;
  *(&v46 + 1) = v40;
  *v47 = v35;
  *&v47[8] = v42;
  *&v47[24] = v43;
  *&v47[40] = v44;
  v47[56] = v39;
  *&v47[60] = *&v41[3];
  *&v47[57] = *v41;
  *&v48 = v5;
  *(&v48 + 1) = v7;
  *&v49 = v9;
  *(&v49 + 1) = v11;
  v50 = 0;
  LOBYTE(v59) = 0;
  v57 = v48;
  v58 = v49;
  v55 = *&v47[32];
  v56 = *&v47[48];
  v53 = *v47;
  v54 = *&v47[16];
  v51 = v45;
  v52 = v46;
  v29 = v49;
  *(a3 + 96) = v48;
  *(a3 + 112) = v29;
  v30 = v59;
  v31 = v54;
  *(a3 + 32) = v53;
  *(a3 + 48) = v31;
  v32 = v56;
  *(a3 + 64) = v55;
  *(a3 + 80) = v32;
  v33 = v52;
  *a3 = v51;
  *(a3 + 16) = v33;
  *(a3 + 128) = v30;
  *(a3 + 136) = v22;
  *(a3 + 144) = v24;
  *(a3 + 152) = v14 & 1;
  *(a3 + 160) = v27;
  *(a3 + 168) = v28;
  *(a3 + 176) = 1;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 1;
  sub_1000077D8(&v45, v60, &qword_100AEE378, &qword_100836D50);
  sub_1001F1894(v22, v24, v14 & 1);

  sub_10020B430(v22, v24, v14 & 1);

  v61 = v42;
  v60[0] = v38;
  v60[1] = KeyPath;
  v60[2] = v37;
  v60[3] = v40;
  v60[4] = v35;
  v62 = v43;
  v63 = v44;
  v64 = v39;
  *v65 = *v41;
  *&v65[3] = *&v41[3];
  v66 = v5;
  v67 = v7;
  v68 = v9;
  v69 = v11;
  v70 = 0;
  return sub_100007840(v60, &qword_100AEE378, &qword_100836D50);
}

uint64_t sub_1006190C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  *&v94 = sub_1001F1160(&qword_100AEE3B8, &unk_100836D88);
  __chkstk_darwin(v94);
  v96 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v87 - v5;
  sub_10079DF24();
  v6 = sub_10079D5E4();
  v8 = v7;
  v10 = v9;
  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v11 = sub_10079D564();
  v13 = v12;
  v15 = v14;

  sub_10020B430(v6, v8, v10 & 1);

  v92 = sub_10079D584();
  v91 = v16;
  v18 = v17;
  sub_10020B430(v11, v13, v15 & 1);

  v19 = *a1;
  v20 = *(a1 + 8);
  LODWORD(v93) = *(a1 + 24);
  v88 = v19;
  if (v93 == 1)
  {
    v20 = sub_1005A35C4(v19, v20);
    v22 = v21;
    goto LABEL_7;
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    *&v102 = v20;
    *(&v102 + 1) = v22;
    sub_1002060B4();

    if (sub_1007A28A4())
    {
      goto LABEL_7;
    }

    sub_10061B744(v19, v20, v22, 0);
  }

  *&v102 = v19;
  v23 = sub_1007A3A74();
  v20 = sub_1005A35C4(v23, v24);
  v22 = v25;

LABEL_7:
  *&v102 = v20;
  *(&v102 + 1) = v22;
  v87 = sub_100206ECC();
  v26 = sub_10079D5D4();
  v28 = v27;
  v30 = v29;
  v31 = v92;
  v32 = v18;
  v33 = v91;
  v34 = sub_10079D584();
  v90 = v35;
  v37 = v36;
  v89 = v38;
  sub_10020B430(v26, v28, v30 & 1);

  sub_10020B430(v31, v33, v32 & 1);

  sub_10079D4C4();
  v39 = v90;
  v40 = sub_10079D5A4();
  v42 = v41;
  LOBYTE(v33) = v43;

  sub_10020B430(v34, v39, v37 & 1);

  sub_10079DE34();
  v44 = sub_10079D564();
  v46 = v45;
  v48 = v47;
  v50 = v49;

  sub_10020B430(v40, v42, v33 & 1);

  KeyPath = swift_getKeyPath();
  v52 = v97;
  v53 = (v97 + *(v94 + 36));
  v54 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v55 = enum case for Image.Scale.small(_:);
  v56 = sub_10079DF84();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = swift_getKeyPath();
  *v52 = v44;
  *(v52 + 8) = v46;
  *(v52 + 16) = v48 & 1;
  *(v52 + 24) = v50;
  *(v52 + 32) = KeyPath;
  *(v52 + 40) = 2;
  *(v52 + 48) = 0;
  if (v93)
  {
    v98 = xmmword_1008254B0;
    v99 = 0u;
    v100 = 0u;
    v101 = 1;
    sub_1001F1160(&qword_100AEE3C8, &qword_100836DC8);
    sub_100005920(&qword_100AEE3D0, &qword_100AEE3C8, &qword_100836DC8, &protocol conformance descriptor for TupleView<A>);
    sub_10079CCA4();
  }

  else
  {
    *&v102 = v88;
    *&v102 = sub_1007A3A74();
    *(&v102 + 1) = v57;
    v58 = sub_10079D5D4();
    v60 = v59;
    v62 = v61;
    sub_10079D374();
    v63 = sub_10079D5A4();
    v65 = v64;
    v67 = v66;

    sub_10020B430(v58, v60, v62 & 1);

    _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v68 = sub_10079D564();
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_10020B430(v63, v65, v67 & 1);

    sub_1001F1894(v68, v70, v72 & 1);

    sub_1001F1894(v68, v70, v72 & 1);

    sub_10020B430(v68, v70, v72 & 1);

    v98 = xmmword_100836480;
    *&v99 = v68;
    *(&v99 + 1) = v70;
    *&v100 = v72 & 1;
    *(&v100 + 1) = v74;
    v101 = 0;
    sub_1001F1160(&qword_100AEE3C8, &qword_100836DC8);
    sub_100005920(&qword_100AEE3D0, &qword_100AEE3C8, &qword_100836DC8, &protocol conformance descriptor for TupleView<A>);
    sub_10079CCA4();
    sub_10020B430(v68, v70, v72 & 1);
  }

  v94 = v103;
  v93 = v102;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v78 = v97;
  v79 = v96;
  sub_1000077D8(v97, v96, &qword_100AEE3B8, &unk_100836D88);
  v80 = v95;
  sub_1000077D8(v79, v95, &qword_100AEE3B8, &unk_100836D88);
  v81 = v80 + *(sub_1001F1160(&unk_100AEE3D8, &qword_100836DD0) + 48);
  v82 = v94;
  v83 = v93;
  *v81 = v93;
  *(v81 + 16) = v82;
  *(v81 + 32) = v75;
  *(v81 + 40) = v76;
  *(v81 + 48) = v77;
  v84 = v83;
  v85 = v82;
  sub_10061C4F0(v83, *(&v83 + 1), v82, *(&v82 + 1), v75, v76, v77);
  sub_100007840(v78, &qword_100AEE3B8, &unk_100836D88);
  sub_10061C53C(v84, *(&v84 + 1), v85, *(&v85 + 1), v75, v76, v77);
  return sub_100007840(v79, &qword_100AEE3B8, &unk_100836D88);
}

uint64_t sub_1006198C8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v6[1] = v1[1];
  v6[2] = v2;
  v6[0] = *v1;
  *a1 = v2;
  v3 = a1 + *(sub_1001F1160(&qword_100AEE3A8, &qword_100836D78) + 36);

  *v3 = sub_10079C8C4();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_1001F1160(&qword_100AEE3B0, &qword_100836D80);
  return sub_1006190C4(v6, &v3[*(v4 + 44)]);
}

uint64_t sub_10061995C@<X0>(void *a2@<X8>)
{
  v48 = a2;
  v2 = sub_1001F1160(&qword_100AEE288, &qword_100836BC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v41[-v3];
  v5 = sub_1007966F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v47 = &v41[-v9];
  v50 = sub_10079C8C4();
  LOBYTE(v61[0]) = 0;
  sub_100619EF0(&v63);
  v72 = v64[5];
  v73 = v64[6];
  v68 = v64[1];
  v69 = v64[2];
  v70 = v64[3];
  v71 = v64[4];
  v66 = v63;
  v67 = v64[0];
  v75[6] = v64[5];
  v75[7] = v64[6];
  v75[2] = v64[1];
  v75[3] = v64[2];
  v75[4] = v64[3];
  v75[5] = v64[4];
  v74 = *&v64[7];
  v76 = *&v64[7];
  v75[0] = v63;
  v75[1] = v64[0];
  sub_1000077D8(&v66, v52, &qword_100AEE290, &qword_100836BD0);
  sub_100007840(v75, &qword_100AEE290, &qword_100836BD0);
  *(&v65[5] + 7) = v71;
  *(&v65[6] + 7) = v72;
  *(&v65[7] + 7) = v73;
  *(&v65[1] + 7) = v67;
  *(&v65[2] + 7) = v68;
  *(&v65[3] + 7) = v69;
  *(&v65[4] + 7) = v70;
  *(&v65[8] + 7) = v74;
  *(v65 + 7) = v66;
  LODWORD(v10) = LOBYTE(v61[0]);
  sub_10061A1E4(v4);
  v11 = v6;
  v12 = *(v6 + 48);
  v13 = v5;
  v14 = v12(v4, 1, v5);
  v49 = v10;
  if (v14 == 1)
  {
    sub_100007840(v4, &qword_100AEE288, &qword_100836BC8);
    v45 = 0;
    v46 = 0;
    KeyPath = 0;
    v44 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v47;
    (*(v11 + 32))(v47, v4, v13);
    (*(v11 + 16))(v46, v22, v13);
    v23 = sub_10079D5C4();
    v10 = v24;
    LOBYTE(v22) = v25;
    sub_10079DE34();
    v26 = sub_10079D564();
    v45 = v27;
    v46 = v26;
    v42 = v28;
    v44 = v29;

    v30 = v10;
    LOBYTE(v10) = v49;
    sub_10020B430(v23, v30, v22 & 1);

    KeyPath = swift_getKeyPath();
    v31 = sub_10079D2A4();
    sub_10079BBA4();
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    (*(v11 + 8))(v47, v13);
    LOBYTE(v63) = v42 & 1;
    LOBYTE(v52[0]) = 0;
    LOBYTE(v61[0]) = 0;
    v17 = v42 & 1;
    v16 = v31;
    v15 = 2;
  }

  *(&v53[6] + 1) = v65[6];
  *(&v53[5] + 1) = v65[5];
  *(&v53[2] + 1) = v65[2];
  *(&v53[1] + 1) = v65[1];
  *(&v53[7] + 1) = v65[7];
  v53[8] = *(&v65[7] + 15);
  *(&v53[3] + 1) = v65[3];
  v52[0] = v50;
  v52[1] = 0;
  LOBYTE(v53[0]) = v10;
  *(&v53[4] + 1) = v65[4];
  *(v53 + 1) = v65[0];
  v51[6] = v53[5];
  v51[7] = v53[6];
  v51[8] = v53[7];
  v51[9] = *(&v65[7] + 15);
  v51[2] = v53[1];
  v51[3] = v53[2];
  v51[4] = v53[3];
  v51[5] = v53[4];
  v51[0] = v50;
  v51[1] = v53[0];
  v36 = v45;
  v37 = v46;
  *&v54 = v46;
  *(&v54 + 1) = v45;
  *&v55 = v17;
  v39 = KeyPath;
  v38 = v44;
  *(&v55 + 1) = v44;
  *&v56 = KeyPath;
  *(&v56 + 1) = v15;
  *&v57 = 0;
  *(&v57 + 1) = v16;
  *&v58 = v18;
  *(&v58 + 1) = v19;
  *&v59 = v20;
  *(&v59 + 1) = v21;
  v60 = 0;
  LOBYTE(v51[16]) = 0;
  v51[14] = v58;
  v51[15] = v59;
  v51[10] = v54;
  v51[11] = v55;
  v51[12] = v56;
  v51[13] = v57;
  memcpy(v48, v51, 0x101uLL);
  v61[0] = v37;
  v61[1] = v36;
  v61[2] = v17;
  v61[3] = v38;
  v61[4] = v39;
  v61[5] = v15;
  v61[6] = 0;
  v61[7] = v16;
  v61[8] = v18;
  v61[9] = v19;
  v61[10] = v20;
  v61[11] = v21;
  v62 = 0;
  sub_1000077D8(v52, &v63, &qword_100AEE298, &qword_100836BD8);
  sub_1000077D8(&v54, &v63, &unk_100AEE2A0, &qword_100836BE0);
  sub_100007840(v61, &unk_100AEE2A0, &qword_100836BE0);
  *(&v64[5] + 1) = v65[5];
  *(&v64[6] + 1) = v65[6];
  *(&v64[7] + 1) = v65[7];
  v64[8] = *(&v65[7] + 15);
  *(&v64[1] + 1) = v65[1];
  *(&v64[2] + 1) = v65[2];
  *(&v64[3] + 1) = v65[3];
  *(&v64[4] + 1) = v65[4];
  v63 = v50;
  LOBYTE(v64[0]) = v49;
  *(v64 + 1) = v65[0];
  return sub_100007840(&v63, &qword_100AEE298, &qword_100836BD8);
}

double sub_100619EF0@<D0>(uint64_t a1@<X8>)
{
  sub_1007A0754();
  sub_100206ECC();
  v2 = sub_10079D5D4();
  v4 = v3;
  v6 = v5;
  sub_10079D4C4();
  v7 = sub_10079D5A4();
  v9 = v8;
  v11 = v10;

  sub_10020B430(v2, v4, v6 & 1);

  sub_10079DE34();
  v12 = sub_10079D564();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v38 = v15;

  sub_10020B430(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  sub_1007A0764();
  v16 = sub_10079D5D4();
  v18 = v17;
  v20 = v19;
  sub_10079D374();
  v21 = sub_10079D5A4();
  v23 = v22;
  v25 = v24;

  sub_10020B430(v16, v18, v20 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v26 = sub_10079D564();
  v28 = v27;
  LOBYTE(v16) = v29;
  v33 = v30;

  sub_10020B430(v21, v23, v25 & 1);

  v31 = swift_getKeyPath();
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x4020000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = v26;
  *(a1 + 80) = v28;
  *(a1 + 88) = v16 & 1;
  *(a1 + 96) = v33;
  *(a1 + 104) = v31;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x3FF0000000000000;
  sub_1001F1894(v37, v36, v35 & 1);

  sub_1001F1894(v26, v28, v16 & 1);

  sub_10020B430(v26, v28, v16 & 1);

  sub_10020B430(v37, v36, v35 & 1);

  return result;
}

uint64_t sub_10061A1E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AEE0B8, &qword_100836718);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_10079FF64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResultListResultView(0);
  sub_1000077D8(v1 + *(v10 + 20), v5, &qword_100AEE0B8, &qword_100836718);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007840(v5, &qword_100AEE0B8, &qword_100836718);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (qword_100AD1958 != -1)
    {
      swift_once();
    }

    v12.super.isa = qword_100AEDEA0;
    if (qword_100AD1960 != -1)
    {
      v16 = qword_100AEDEA0;
      swift_once();
      v12.super.isa = v16;
    }

    v13.super.isa = qword_100AEDEA8;
    sub_10079FF34(v12, v13);
    sub_100796704();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  v14 = sub_1007966F4();
  return (*(*(v14 - 8) + 56))(a1, v11, 1, v14);
}

void *sub_10061A45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_10079CB34();
  v13 = 0;
  sub_10061995C(__src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v15, __src, 0x101uLL);
  sub_1000077D8(__dst, &v10, &qword_100AEE280, &qword_100836BC0);
  sub_100007840(v15, &qword_100AEE280, &qword_100836BC0);
  memcpy(&v12[7], __dst, 0x101uLL);
  v8 = v13;
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  return memcpy((a2 + 33), v12, 0x108uLL);
}

uint64_t sub_10061A550()
{
  v1 = sub_1001F1160(&qword_100AEE2B0, &qword_100836C18);
  __chkstk_darwin(v1);
  v3 = &v13[-v2];
  v4 = sub_1001F1160(&qword_100AEE2B8, &qword_100836C20);
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  if (sub_1007A01E4())
  {
    sub_10079E474();
    sub_10079BE54();
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v13[24] = 1;
    v13[16] = v15;
    v13[8] = v17;
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 2) = v7;
    v6[24] = v8;
    *(v6 + 4) = v9;
    v6[40] = v10;
    *(v6 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD4988, &qword_100826A30);
    sub_1001FA380();
    sub_100005920(&qword_100AEE2C8, &qword_100AEE2B0, &qword_100836C18, &unk_100832E68);
    return sub_10079CCA4();
  }

  else
  {
    *v3 = sub_10079C8F4();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v12 = sub_1001F1160(&qword_100AEE2C0, &qword_100836C28);
    sub_10061A808(v0, &v3[*(v12 + 44)]);
    sub_1000077D8(v3, v6, &qword_100AEE2B0, &qword_100836C18);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD4988, &qword_100826A30);
    sub_1001FA380();
    sub_100005920(&qword_100AEE2C8, &qword_100AEE2B0, &qword_100836C18, &unk_100832E68);
    sub_10079CCA4();
    return sub_100007840(v3, &qword_100AEE2B0, &qword_100836C18);
  }
}

uint64_t sub_10061A808@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v32 = sub_1001F1160(&qword_100AEE2D0, &qword_100836C30);
  __chkstk_darwin(v32);
  v4 = v29 - v3;
  v31 = sub_1001F1160(&qword_100AEE2D8, &qword_100836C38);
  __chkstk_darwin(v31);
  v6 = v29 - v5;
  v7 = sub_1001F1160(&qword_100AEE2E0, &qword_100836C40);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_1001F1160(&qword_100AEE2E8, &qword_100836C48);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = sub_1001F1160(&qword_100AEE2F0, &qword_100836C50);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = sub_1001F1160(&qword_100AEE2F8, &qword_100836C58);
  __chkstk_darwin(v16 - 8);
  v30 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  v21 = *a1;
  if ((v21 - 2) < 2)
  {
    *v4 = sub_10079CB24();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v22 = sub_1001F1160(&qword_100AEE300, &qword_100836C60);
    sub_10061B074(a1, &v4[*(v22 + 44)]);
    sub_1000077D8(v4, v6, &qword_100AEE2D0, &qword_100836C30);
    swift_storeEnumTagMultiPayload();
    sub_10061C438();
    sub_100005920(&qword_100AEE318, &qword_100AEE2D0, &qword_100836C30, &protocol conformance descriptor for VStack<A>);
    sub_10079CCA4();
    sub_100007840(v4, &qword_100AEE2D0, &qword_100836C30);
LABEL_5:
    v24 = v30;
    sub_1000077D8(v20, v30, &qword_100AEE2F8, &qword_100836C58);
    v25 = v33;
    *v33 = 0;
    *(v25 + 8) = 1;
    v26 = sub_1001F1160(&qword_100AEE320, &qword_100836C68);
    sub_1000077D8(v24, v25 + *(v26 + 48), &qword_100AEE2F8, &qword_100836C58);
    v27 = v25 + *(v26 + 64);
    *v27 = 0;
    v27[8] = 1;
    sub_100007840(v20, &qword_100AEE2F8, &qword_100836C58);
    return sub_100007840(v24, &qword_100AEE2F8, &qword_100836C58);
  }

  v29[1] = v10;
  if (v21 == 1)
  {
    *v15 = sub_10079C8F4();
    *(v15 + 1) = 0x4010000000000000;
    v15[16] = 0;
    v23 = sub_1001F1160(&qword_100AEE328, &unk_100836C70);
    sub_10061ADA0(&v15[*(v23 + 44)]);
    sub_1000077D8(v15, v9, &qword_100AEE2F0, &qword_100836C50);
    swift_storeEnumTagMultiPayload();
    sub_100005920(&qword_100AEE310, &qword_100AEE2F0, &qword_100836C50, &protocol conformance descriptor for HStack<A>);
    sub_10079CCA4();
    sub_1000077D8(v12, v6, &qword_100AEE2E8, &qword_100836C48);
    swift_storeEnumTagMultiPayload();
    sub_10061C438();
    sub_100005920(&qword_100AEE318, &qword_100AEE2D0, &qword_100836C30, &protocol conformance descriptor for VStack<A>);
    sub_10079CCA4();
    sub_100007840(v12, &qword_100AEE2E8, &qword_100836C48);
    sub_100007840(v15, &qword_100AEE2F0, &qword_100836C50);
    goto LABEL_5;
  }

  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10061ADA0@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v36 = sub_1001F1160(&qword_100AEE330, &unk_10083E850);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v31[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v4 = &v31[-v3];
  sub_10079BDC4();
  if (qword_100AD18A0 != -1)
  {
    swift_once();
  }

  v37 = qword_100B23608;
  v38 = unk_100B23610;
  sub_100206ECC();

  v5 = sub_10079D5D4();
  v7 = v6;
  v9 = v8;
  sub_10079D354();
  v10 = sub_10079D5A4();
  v12 = v11;
  v14 = v13;

  sub_10020B430(v5, v7, v9 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v15 = sub_10079D564();
  v17 = v16;
  v32 = v18;
  v20 = v19;

  sub_10020B430(v10, v12, v14 & 1);

  v21 = v33;
  v22 = *(v33 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v4, v36);
  v25 = v34;
  v22(v34, v24, v23);
  v26 = v25 + *(sub_1001F1160(&unk_100AEE338, &unk_100836C80) + 48);
  *v26 = v15;
  *(v26 + 8) = v17;
  v27 = v32;
  v28 = v32 & 1;
  *(v26 + 16) = v32 & 1;
  *(v26 + 24) = v20;
  sub_1001F1894(v15, v17, v27 & 1);
  v29 = *(v21 + 8);

  v29(v4, v23);
  sub_10020B430(v15, v17, v28);

  return (v29)(v24, v23);
}

double sub_10061B074@<D0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = sub_10079CDF4();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v50[-v5];
  v6 = sub_1001F1160(&qword_100AEE348, &qword_100836C90);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  __chkstk_darwin(v6);
  v54 = &v50[-v8];
  v9 = sub_1001F1160(&qword_100AEE350, &qword_100836C98);
  __chkstk_darwin(v9 - 8);
  v62 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v59 = &v50[-v12];
  if (a1[16])
  {
    v13 = *(a1 + 1) > 1uLL;
  }

  else
  {
    v13 = *(a1 + 1);
  }

  v64 = sub_1005A32AC(v13);
  v65 = v14;
  sub_100206ECC();
  v15 = sub_10079D5D4();
  v17 = v16;
  v19 = v18;
  sub_10079D354();
  v20 = sub_10079D5A4();
  v22 = v21;
  v24 = v23;

  sub_10020B430(v15, v17, v19 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v25 = sub_10079D564();
  v27 = v26;
  LODWORD(v29) = v28;
  v31 = v30;

  sub_10020B430(v20, v22, v24 & 1);

  if (sub_1007A01E4())
  {

    v51 = v29;
    v29 = v52;
    sub_10079E054();
    v32 = v56;
    sub_10079CDE4();
    sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
    sub_10061B918(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v34 = v54;
    v33 = v55;
    v35 = v58;
    sub_10079D6A4();
    (*(v57 + 8))(v32, v35);
    v36 = v29;
    LOBYTE(v29) = v51;
    (*(v53 + 8))(v36, v33);
    v37 = v60;
    v38 = &v34[*(v60 + 36)];
    v39 = *(sub_1001F1160(&unk_100ADB9A0, &qword_100825AC0) + 28);
    v40 = enum case for ControlSize.small(_:);
    v41 = sub_10079BC54();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    v42 = v34;
    v43 = v59;
    sub_10020B3C8(v42, v59, &qword_100AEE348, &qword_100836C90);
    v44 = 0;
    v45 = v37;
  }

  else
  {
    v44 = 1;
    v43 = v59;
    v45 = v60;
  }

  (*(v61 + 56))(v43, v44, 1, v45);
  v46 = v62;
  sub_1000077D8(v43, v62, &qword_100AEE350, &qword_100836C98);
  v47 = v63;
  *v63 = v25;
  v47[1] = v27;
  *(v47 + 16) = v29 & 1;
  v47[3] = v31;
  v48 = sub_1001F1160(&qword_100AEE358, &unk_100836CA0);
  sub_1000077D8(v46, v47 + *(v48 + 48), &qword_100AEE350, &qword_100836C98);
  sub_1001F1894(v25, v27, v29 & 1);

  sub_100007840(v43, &qword_100AEE350, &qword_100836C98);
  sub_100007840(v46, &qword_100AEE350, &qword_100836C98);
  sub_10020B430(v25, v27, v29 & 1);

  return result;
}

uint64_t sub_10061B64C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD18A8 != -1)
  {
    swift_once();
  }

  sub_100206ECC();

  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_10061B72C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10061B744(result, a2, a3, a4 & 1);
  }

  return v4;
}

unint64_t sub_10061B758()
{
  result = qword_100AEE048;
  if (!qword_100AEE048)
  {
    sub_1001F1234(&qword_100AEE038, &qword_1008366E0);
    sub_10061B810();
    sub_100005920(&qword_100ADAAE8, &qword_100AEE070, &qword_1008366F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE048);
  }

  return result;
}

unint64_t sub_10061B810()
{
  result = qword_100AEE050;
  if (!qword_100AEE050)
  {
    sub_1001F1234(&qword_100AEE058, &qword_1008366E8);
    sub_10061B918(&unk_100AEE060, type metadata accessor for ResultListResultView, &unk_100836B70);
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88, &qword_100836668, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE050);
  }

  return result;
}

uint64_t sub_10061B918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10061B980()
{
  result = qword_100AEE088;
  if (!qword_100AEE088)
  {
    sub_1001F1234(&qword_100AEE080, &qword_1008366F8);
    sub_10061BA38();
    sub_100005920(&qword_100ADAAE8, &qword_100AEE070, &qword_1008366F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE088);
  }

  return result;
}

unint64_t sub_10061BA38()
{
  result = qword_100AEE090;
  if (!qword_100AEE090)
  {
    sub_1001F1234(&qword_100AEE098, &qword_100836700);
    sub_10061BAF0();
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88, &qword_100836668, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE090);
  }

  return result;
}

unint64_t sub_10061BAF0()
{
  result = qword_100AEE0A0;
  if (!qword_100AEE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE0A0);
  }

  return result;
}

uint64_t sub_10061BBC8()
{
  sub_1007A0774();
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  return sub_1007A0B14();
}

uint64_t sub_10061BC4C()
{
  v1 = sub_1007A0774();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);
  sub_1000074E0((v0 + 16));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10061BD28(double *a1)
{
  sub_1007A0774();

  sub_100616318(a1, v1 + 16);
}

uint64_t sub_10061BDB4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  sub_10000E3E8(v1 + 2, v3);
  return a1(v3, v4);
}

unint64_t sub_10061BE08()
{
  result = qword_100AEE0E0;
  if (!qword_100AEE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE0E0);
  }

  return result;
}

uint64_t sub_10061BEE4()
{
  sub_1000074E0((v0 + 16));

  return swift_deallocObject();
}

BOOL sub_10061BF3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  sub_100750B9C(*(a1 + 16), *(a2 + 16));
  if (v5)
  {
    v6 = *(a2 + 32);
    if ((*(a1 + 32) & 1) == 0)
    {
      if (*(a1 + 24) != *(a2 + 24))
      {
        v6 = 1;
      }

      return (v6 & 1) == 0;
    }

    if (*(a2 + 32))
    {
      return 1;
    }
  }

  return 0;
}

void sub_10061C020(uint64_t a1)
{
  sub_1007A0774();
  if (v1 <= 0x3F)
  {
    sub_10061C300(319, qword_100AEE170, &type metadata accessor for SearchPassage, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100247D20();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10061C130(uint64_t a1)
{
  sub_10061C21C();
  if (v1 <= 0x3F)
  {
    sub_10061C26C(319);
    if (v2 <= 0x3F)
    {
      sub_100247D20();
      if (v3 <= 0x3F)
      {
        sub_10061C300(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10061C21C()
{
  if (!qword_100AEE220)
  {
    v0 = sub_10079E224();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE220);
    }
  }
}

void sub_10061C26C(uint64_t a1)
{
  if (!qword_100AEE228)
  {
    sub_1007A1214();
    sub_10061B918(&qword_100AEFCF0, &type metadata accessor for SearchBarResponderState, &protocol conformance descriptor for SearchBarResponderState);
    v1 = sub_10079C054();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEE228);
    }
  }
}

void sub_10061C300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10061C438()
{
  result = qword_100AEE308;
  if (!qword_100AEE308)
  {
    sub_1001F1234(&qword_100AEE2E8, &qword_100836C48);
    sub_100005920(&qword_100AEE310, &qword_100AEE2F0, &qword_100836C50, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE308);
  }

  return result;
}

double sub_10061C4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1001F1894(a3, a4, a5 & 1);
  }

  return result;
}

double sub_10061C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_10020B430(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_10061C588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSearchBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061C5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSearchBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061C650(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PopoverSearchBar(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10061806C(a1, a2, v6);
}

uint64_t sub_10061C6D0()
{
  v1 = *(type metadata accessor for PopoverSearchBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006180D0(v0 + v2, v3);
}

unint64_t sub_10061C764()
{
  result = qword_100AEE410;
  if (!qword_100AEE410)
  {
    sub_1001F1234(&qword_100AEE418, &qword_100836DF8);
    sub_1001FA380();
    sub_100005920(&qword_100AEE2C8, &qword_100AEE2B0, &qword_100836C18, &unk_100832E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE410);
  }

  return result;
}

unint64_t sub_10061C81C()
{
  result = qword_100AEE428;
  if (!qword_100AEE428)
  {
    sub_1001F1234(&qword_100AEE388, &qword_100836D60);
    sub_100005920(&qword_100AEE430, &qword_100AEE438, &unk_100836E00, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE428);
  }

  return result;
}

uint64_t sub_10061C8D8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B236E8);
  sub_100008B98(v0, qword_100B236E8);
  return sub_10079ACD4();
}

id sub_10061C958()
{
  sub_1001F1160(&qword_100AE0A28, &qword_100821348);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100813170;
  v1 = BFMCatalogRequestRelationshipAuthors;
  v2 = BFMCatalogRequestRelationshipGenres;
  *(v0 + 32) = BFMCatalogRequestRelationshipAuthors;
  *(v0 + 40) = v2;
  v3 = BFMCatalogRequestRelationshipMappedBooks;
  v4 = BFMCatalogRequestRelationshipMappedAudiobooks;
  *(v0 + 48) = BFMCatalogRequestRelationshipMappedBooks;
  *(v0 + 56) = v4;
  v5 = BFMCatalogRequestRelationshipBookSeries;
  v6 = BFMCatalogRequestRelationshipAudiobookSeries;
  v13 = BFMCatalogRequestRelationshipAudiobookSeries;
  *(v0 + 64) = BFMCatalogRequestRelationshipBookSeries;
  *(v0 + 72) = v6;
  qword_100B23700 = v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return v13;
}

uint64_t sub_10061CA4C()
{
  sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x80000001008E1FB0;
  *(inited + 48) = sub_1007A2254();
  *(inited + 56) = v1;
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x80000001008E1FE0;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v2;
  *(inited + 96) = 0xD000000000000023;
  *(inited + 104) = 0x80000001008E2000;
  *(inited + 112) = 0x6E49736569726573;
  *(inited + 120) = 0xEA00000000006F66;
  v3 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920, &unk_100817F60);
  result = swift_arrayDestroy();
  qword_100B23710 = v3;
  return result;
}

uint64_t sub_10061CB8C(uint64_t a1)
{
  v2[105] = v1;
  v2[99] = a1;
  v4 = sub_1007990E4();
  v2[111] = v4;
  v2[117] = *(v4 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v5 = sub_10079A734();
  v2[120] = v5;
  v2[121] = *(v5 - 8);
  v2[122] = swift_task_alloc();
  v2[123] = sub_1001F1160(&qword_100AEE518, &qword_100836EA0);
  v2[124] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[125] = v6;
  *v6 = v2;
  v6[1] = sub_10061CD30;

  return sub_10061EA1C(a1);
}

uint64_t sub_10061CD30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1008) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10061CE9C, 0, 0);
  }
}

uint64_t sub_10061CE9C()
{
  v72 = v1;
  v70 = v1 + 93;
  v3 = v1[126];
  v64 = v1[123];
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v63 = v1[121];
  v62 = enum case for Book.MediaType.ebook(_:);
  v59 = enum case for Book.MediaType.audiobook(_:);
  v65 = v1[126];

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v69 = v1;
  v60 = v8;
  v61 = v4;
  while (1)
  {
    v1[128] = v11;
    v1[127] = v10;
    if (!v7)
    {
      break;
    }

    v67 = v11;
    v68 = v10;
LABEL_12:
    v15 = v69[124];
    v16 = v69[122];
    v17 = v69[120];
    v18 = __clz(__rbit64(v7)) | (v9 << 6);
    v19 = *(*(v65 + 48) + 8 * v18);
    v20 = *(v64 + 48);
    v21 = *(v63 + 16);
    v21(&v15[v20], *(v65 + 56) + *(v63 + 72) * v18, v17);
    v66 = v19;
    *v15 = v19;
    v21(v16, &v15[v20], v17);
    v22 = (*(v63 + 88))(v16, v17);
    if (v22 == v62)
    {
      v11 = v67;
      v10 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10066C34C(0, *(v67 + 2) + 1, 1, v67);
      }

      v1 = v69;
      v8 = v60;
      v4 = v61;
      v2 = v66;
      v0 = *(v11 + 2);
      v23 = *(v11 + 3);
      v24 = v0 + 1;
      if (v0 < v23 >> 1)
      {
        v12 = v11;
      }

      else
      {
        v12 = sub_10066C34C((v23 > 1), v0 + 1, 1, v11);
        v11 = v12;
      }
    }

    else
    {
      v11 = v67;
      v10 = v68;
      if (v22 != v59)
      {
        return sub_1007A38A4();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10066C34C(0, *(v68 + 2) + 1, 1, v68);
      }

      v1 = v69;
      v8 = v60;
      v4 = v61;
      v2 = v66;
      v0 = *(v10 + 2);
      v25 = *(v10 + 3);
      v24 = v0 + 1;
      if (v0 >= v25 >> 1)
      {
        v12 = sub_10066C34C((v25 > 1), v0 + 1, 1, v10);
        v10 = v12;
      }

      else
      {
        v12 = v10;
      }
    }

    v7 &= v7 - 1;
    v13 = v1[124];
    *(v12 + 2) = v24;
    *&v12[8 * v0 + 32] = v2;
    sub_100007840(v13, &qword_100AEE518, &qword_100836EA0);
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v67 = v11;
      v68 = v10;
      v9 = v14;
      goto LABEL_12;
    }
  }

  v27 = sub_10040E40C(v26);

  v29 = sub_10040E40C(v28);
  v0 = v11;

  v31 = sub_10040E40C(v30);

  v32 = sub_10061F0F4(v31, v29);
  v2 = v32;
  if (*(v32 + 16) <= v27[2] >> 3)
  {
    goto LABEL_27;
  }

  v33 = sub_100625BDC(v32, v27);

  v27 = v33[2];
  if (v27)
  {
    while (1)
    {
      v2 = sub_1005D6748(v27, 0);
      v34 = sub_1005D73B0(v71, v2 + 4, v27, v33);
      sub_10004DC54(v71[0]);
      if (v34 == v27)
      {
        break;
      }

      __break(1u);
LABEL_27:
      v71[0] = v27;
      sub_100625560(v2);

      v33 = v71[0];
      v27 = *(v71[0] + 16);
      if (!v27)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:

    v2 = _swiftEmptyArrayStorage;
  }

  v35 = *(v0 + 16);
  v36 = *(v10 + 2);
  v9 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    goto LABEL_53;
  }

  if (qword_100AD1968 == -1)
  {
    goto LABEL_31;
  }

LABEL_54:
  swift_once();
LABEL_31:
  v37 = sub_10079ACE4();
  v1[129] = sub_100008B98(v37, qword_100B236E8);

  v38 = sub_10079ACC4();
  v39 = sub_1007A29D4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = v2[2];

    *(v40 + 12) = 2048;
    *(v40 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v38, v39, "fetchMetadata(untyped): routing: untyped: %ld typed: %ld", v40, 0x16u);
  }

  else
  {
  }

  v41 = v1[105];
  v42 = swift_allocObject();
  v1[130] = v42;
  v42[2] = v9;
  v42[3] = v41;
  v42[4] = v0;
  v42[5] = v10;

  sub_1001F1160(&qword_100AEE520, &unk_100836EC0);
  swift_asyncLet_begin();
  v43 = v2[2];
  if (v43)
  {
    v44 = _swiftEmptyArrayStorage;
    v45 = 4;
    v46 = v2;
    do
    {
      *v70 = v2[v45];
      v47 = sub_1007A3A74();
      v49 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_10000B3D8(0, *(v44 + 2) + 1, 1, v44);
      }

      v51 = *(v44 + 2);
      v50 = *(v44 + 3);
      if (v51 >= v50 >> 1)
      {
        v44 = sub_10000B3D8((v50 > 1), v51 + 1, 1, v44);
      }

      v1[137] = v44;
      *(v44 + 2) = v51 + 1;
      v52 = &v44[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v49;
      ++v45;
      --v43;
      v2 = v46;
    }

    while (v43);

    v1[131] = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
    if (qword_100AD1970 != -1)
    {
      swift_once();
    }

    v53 = qword_100B23700;
    v1[132] = qword_100B23700;
    if (qword_100AD1980 != -1)
    {
      swift_once();
    }

    v54 = qword_100B23710;
    v1[133] = qword_100B23710;
    sub_1007990F4();
    v55 = swift_task_alloc();
    v1[134] = v55;
    *v55 = v1;
    v55[1] = sub_10061D6E8;
    v56 = v1[119];

    return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v44, v53, 0, v54, 150, v56);
  }

  else
  {

    v1[147] = _swiftEmptyDictionarySingleton;

    return _swift_asyncLet_get_throwing(v1 + 2, v57);
  }
}

uint64_t sub_10061D6E8(uint64_t a1)
{
  v3 = *v2;
  v3[135] = a1;
  v3[136] = v1;

  if (v1)
  {
    (*(v3[117] + 8))(v3[119], v3[111]);

    v4 = sub_10061E72C;
  }

  else
  {
    v5 = v3[119];
    v6 = v3[117];
    v7 = v3[111];
    v8 = *(v6 + 8);
    v3[138] = v8;
    v3[139] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v4 = sub_10061D854;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10061D854()
{
  v41 = v0;
  v1 = v0[135];
  v2 = v1[2];
  v3 = *(v0[137] + 16);
  v0[140] = v3;
  if (v2 == v3)
  {
    v4 = v0[136];

    v5 = sub_10079ACC4();
    v6 = sub_1007A29D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[137];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134218496;
      v10 = *(v8 + 16);
      *(v9 + 4) = v10;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v1[2];
      *(v9 + 22) = 2048;
      *(v9 + 24) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "fetchMetadata(untyped): requested: %ld fetched: %ld of %ld", v9, 0x20u);

      goto LABEL_9;
    }

LABEL_8:

LABEL_9:

    if (v1[2] != v0[140])
    {
      v15 = sub_10040E374(v0[137]);

      v16 = sub_10040F850();
      if (*(v16 + 16) <= v15[2] >> 3)
      {
        v40 = v15;
        sub_100625434(v16);
      }

      else
      {
        sub_10062566C(v16, v15);
      }

      v28 = sub_10079ACC4();
      v29 = sub_1007A29B4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v40 = v31;
        *v30 = 136315138;
        v32 = sub_1007A2844();
        v34 = v33;

        v35 = sub_1000070F4(v32, v34, &v40);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "fetchMetadata(untyped): Failed to get some metadata. missingIDs: %s", v30, 0xCu);
        sub_1000074E0(v31);

        goto LABEL_29;
      }
    }

LABEL_29:

    sub_100626E00(v36);
    v38 = v37;
    v0[146] = v4;
    swift_bridgeObjectRelease_n();
    if (v4)
    {

      _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10061E408, v0 + 94);
    }

    else
    {
      v0[147] = v38;

      _swift_asyncLet_get_throwing(v0 + 2, v39);
    }

    return;
  }

  v12 = sub_10040E374(v11);

  v13 = sub_10040F850();
  if (*(v13 + 16) > v12[2] >> 3)
  {
    v14 = sub_10062566C(v13, v12);

    v5 = v14[2];
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_13:

    v1 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v40 = v12;
  sub_100625434(v13);

  v14 = v12;
  v5 = v12[2];
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  v1 = sub_1005D6574(v5, 0);
  v4 = sub_1005D6C1C(&v40, v1 + 4, v5, v14);
  sub_10004DC54(v40);
  if (v4 != v5)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_14:
  v0[141] = v1;

  v17 = sub_10079ACC4();
  v18 = sub_1007A29D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v1[2];

    _os_log_impl(&_mh_execute_header, v17, v18, "fetchMetadata(untyped): retrying: %ld", v19, 0xCu);
  }

  else
  {
  }

  v20 = v0[136];
  v21 = v0[133];

  v22 = sub_1001ED994(&off_100A0D5A0);
  sub_100007840(&unk_100A0D5C0, &unk_100AE0920, &unk_100817F60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v21;
  sub_100627B0C(v22, sub_100626CAC, 0, isUniquelyReferenced_nonNull_native, &v40);

  v24 = v40;
  v0[142] = v40;
  if (v20)
  {
  }

  else
  {
    v25 = v0[132];
    sub_1007990F4();
    v26 = swift_task_alloc();
    v0[143] = v26;
    *v26 = v0;
    v26[1] = sub_10061DE94;
    v27 = v0[118];

    MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v1, v25, 0, v24, 150, v27);
  }
}

uint64_t sub_10061DE94(uint64_t a1)
{
  v4 = *v2;
  v4[144] = v1;

  v5 = v4[138];
  if (v1)
  {
    v5(v4[118], v4[111]);

    v6 = sub_10061E818;
  }

  else
  {
    v7 = v4[118];
    v8 = v4[111];
    v4[145] = a1;
    v5(v7, v8);

    v6 = sub_10061E05C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10061E05C()
{
  v28 = v0;
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[135];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v3;
  sub_100627E64(v1, sub_1006282EC, 0, isUniquelyReferenced_nonNull_native, v27, sub_1003D6DE0, sub_1002F2A68);

  v5 = v27[0];

  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[137];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    v11 = *(v9 + 16);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v5 + 16);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v11;

    _os_log_impl(&_mh_execute_header, v6, v7, "fetchMetadata(untyped): requested: %ld fetched: %ld of %ld", v10, 0x20u);
  }

  else
  {
  }

  if (*(v5 + 16) != v0[140])
  {
    v12 = sub_10040E374(v0[137]);

    v13 = sub_10040F850();
    if (*(v13 + 16) <= v12[2] >> 3)
    {
      v27[0] = v12;
      sub_100625434(v13);
    }

    else
    {
      sub_10062566C(v13, v12);
    }

    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315138;
      v18 = sub_1007A2844();
      v20 = v19;

      v21 = sub_1000070F4(v18, v20, v27);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "fetchMetadata(untyped): Failed to get some metadata. missingIDs: %s", v16, 0xCu);
      sub_1000074E0(v17);

      goto LABEL_12;
    }
  }

LABEL_12:

  sub_100626E00(v22);
  v24 = v23;
  v0[146] = v2;
  swift_bridgeObjectRelease_n();
  if (v2)
  {

    return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10061E408, v0 + 94);
  }

  else
  {
    v0[147] = v24;

    return _swift_asyncLet_get_throwing(v0 + 2, v25);
  }
}

uint64_t sub_10061E424()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061E4D4()
{
  *(v1 + 1184) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 16, v1 + 696, sub_10061E950, v1 + 848);
  }

  else
  {

    return _swift_task_switch(sub_10061E580, 0, 0);
  }
}

uint64_t sub_10061E580()
{
  v7 = v0;
  v1 = v0[87];
  if (v1)
  {
    v2 = v0[147];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2;
    sub_1006275C8(v1, sub_10062683C, 0, isUniquelyReferenced_nonNull_native, &v6);

    v4 = v6;
  }

  else
  {
    v4 = v0[147];
  }

  v0[149] = v4;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10061E650, v0 + 112);
}

uint64_t sub_10061E66C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1192);

  return v1(v2);
}

uint64_t sub_10061E768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061E818()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_10061E884, v0 + 704);
}

uint64_t sub_10061E8A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061E96C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061EA1C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1007A2744();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10061EADC, 0, 0);
}

uint64_t sub_10061EADC(uint64_t a1)
{
  v2 = v1[4];
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1003BD0CC(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      v1[2] = v6;
      v7 = sub_1007A3A74();
      v17 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_1003BD0CC((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v4 = v17;
      }

      v4[2] = v10 + 1;
      v11 = &v4[2 * v10];
      v11[4] = v7;
      v11[5] = v8;
      --v3;
    }

    while (v3);
  }

  v1[9] = v4;
  sub_1007A2704();
  v14 = swift_task_alloc();
  v1[10] = v14;
  *v14 = v1;
  v14[1] = sub_10061EC7C;
  v15 = v1[8];

  return sub_100367BF8(v15);
}

uint64_t sub_10061EC7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    (*(v4[7] + 8))(v4[8], v4[6]);

    v5 = sub_10061F090;
  }

  else
  {
    v7 = v4[7];
    v6 = v4[8];
    v8 = v4[6];
    v4[12] = a1;
    (*(v7 + 8))(v6, v8);
    v5 = sub_10061EDD8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10061EDD8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_1001F1160(&qword_100AEE580, &qword_100836F08);
  *v4 = v0;
  v4[1] = sub_10061EEE4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000014, 0x80000001008E2030, sub_100627DD4, v3, v5);
}

uint64_t sub_10061EEE4()
{

  return _swift_task_switch(sub_10061F018, 0, 0);
}

uint64_t sub_10061F018()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10061F090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061F0F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1006E6F30(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10061F1D4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v15 = a2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1006E6140(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10061F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10061F300, 0, 0);
}

uint64_t sub_10061F300()
{
  if (*(v0 + 24) < 1)
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_10061F3E0;
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);

    return sub_10061F550(v3, v2);
  }
}

uint64_t sub_10061F3E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_10061F52C, 0, 0);
  }
}

uint64_t sub_10061F550(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1007990E4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10061F620, 0, 0);
}

uint64_t sub_10061F620()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v3++;
      v0[2] = v5;
      v6 = sub_1007A3A74();
      v8 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10000B3D8(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_10000B3D8((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[12] = v4;
  v12 = v0[5];
  v13 = *(v12 + 16);
  v0[13] = v13;
  if (v13)
  {
    v14 = (v12 + 32);
    v15 = _swiftEmptyArrayStorage;
    do
    {
      v16 = *v14++;
      v0[3] = v16;
      v17 = sub_1007A3A74();
      v19 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10000B3D8(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_10000B3D8((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      v22 = &v15[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v23 = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
  v0[14] = v15;
  v0[15] = v23;
  v24 = qword_100AD1970;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_100B23700;
  v0[16] = qword_100B23700;
  if (qword_100AD1980 != -1)
  {
    swift_once();
  }

  v26 = qword_100B23710;
  v0[17] = qword_100B23710;
  sub_1007990F4();
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_10061F93C;
  v28 = v0[10];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v4, v15, v25, 0, v26, 150, v28);
}

uint64_t sub_10061F93C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v5 = v3[10];
  v6 = v3[8];
  v7 = v3[7];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v11 = sub_100620BE0;
  }

  else
  {
    v4[21] = v9;
    v4[22] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v11 = sub_10061FB1C;
  }

  return _swift_task_switch(v11, 0, 0);
}

void sub_10061FB1C()
{
  v67 = v2;
  v4 = *(v2[12] + 16);
  v5 = *(v2[14] + 16);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_4:
    v8 = sub_10079ACE4();
    v3 = sub_100008B98(v8, qword_100B236E8);

    v9 = sub_10079ACC4();
    v10 = sub_1007A29D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v2[13];
      v12 = v2[11];
      v13 = swift_slowAlloc();
      *v13 = 134218752;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v11;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v0[2];
      *(v13 + 32) = 2048;
      if (__OFADD__(v12, v11))
      {
        __break(1u);
LABEL_56:
        MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v13, v14, v15, v16, v17, v18, v19);
        return;
      }

      *(v13 + 34) = v12 + v11;
      v20 = v13;

      _os_log_impl(&_mh_execute_header, v9, v10, "fetchMetadata(typed): requested books: %ld audiobooks: %ld fetched: %ld of %ld", v20, 0x2Au);

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:

    v24 = v2[13];
    v25 = v2[11];
    v6 = __OFADD__(v25, v24);
    v26 = v25 + v24;
    if (!v6)
    {
      if (v0[2] == v26)
      {
      }

      else
      {
        v41 = sub_10040E374(v2[12]);

        v42 = sub_10040F850();
        if (*(v42 + 16) <= v41[2] >> 3)
        {
          v66 = v41;
          sub_100625434(v42);
        }

        else
        {
          sub_10062566C(v42, v41);
        }

        v45 = sub_10040E374(v2[14]);

        v46 = sub_10040F850();
        if (*(v46 + 16) <= v45[2] >> 3)
        {
          v66 = v45;
          sub_100625434(v46);
        }

        else
        {
          sub_10062566C(v46, v45);
        }

        v47 = sub_10079ACC4();
        v48 = sub_1007A29B4();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v65 = v1;
          v66 = swift_slowAlloc();
          *v49 = 136315394;
          v50 = sub_1007A2844();
          v52 = v51;

          v53 = sub_1000070F4(v50, v52, &v66);

          *(v49 + 4) = v53;
          *(v49 + 12) = 2080;
          v54 = sub_1007A2844();
          v56 = v55;

          v57 = sub_1000070F4(v54, v56, &v66);

          *(v49 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v47, v48, "fetchMetadata(typed): Failed to get genre info. missingBookIDs: %s missingAudiobookIDs: %s", v49, 0x16u);
          swift_arrayDestroy();
          v1 = v65;

          goto LABEL_44;
        }
      }

LABEL_44:

      sub_1005822BC(v58);
      v60 = v59;

      sub_100626E00(v60);
      if (v1)
      {

        v62 = v2[1];

        v62();
      }

      else
      {
        v63 = v61;

        v64 = v2[1];

        v64(v63);
      }

      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  v0 = v2[19];
  if (v0[2] == v7)
  {
    v1 = v2[20];
    if (qword_100AD1968 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_52;
  }

  v22 = sub_10040E374(v21);

  v23 = sub_10040F850();
  if (*(v23 + 16) > v22[2] >> 3)
  {
    v22 = sub_10062566C(v23, v22);

    v9 = v22[2];
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_16:

    v0 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v66 = v22;
  sub_100625434(v23);

  v9 = v22[2];
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_9:
  v0 = sub_1005D6574(v9, 0);
  v1 = sub_1005D6C1C(&v66, v0 + 4, v9, v22);
  sub_10004DC54(v66);
  if (v1 != v9)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  v2[23] = v0;

  v28 = sub_10040E374(v27);

  v29 = sub_10040F850();
  if (*(v29 + 16) <= v28[2] >> 3)
  {
    goto LABEL_21;
  }

  v30 = sub_10062566C(v29, v28);

  v28 = v30[2];
  if (v28)
  {
    while (1)
    {
      v3 = sub_1005D6574(v28, 0);
      v31 = sub_1005D6C1C(&v66, v3 + 4, v28, v30);
      v29 = sub_10004DC54(v66);
      if (v31 == v28)
      {
        break;
      }

      __break(1u);
LABEL_21:
      v66 = v28;
      sub_100625434(v29);

      v30 = v66;
      v28 = v66[2];
      if (!v28)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    v3 = _swiftEmptyArrayStorage;
  }

  v2[24] = v3;
  if (qword_100AD1968 != -1)
  {
LABEL_54:
    swift_once();
  }

  v32 = sub_10079ACE4();
  sub_100008B98(v32, qword_100B236E8);

  v33 = sub_10079ACC4();
  v34 = sub_1007A29D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134218240;
    *(v35 + 4) = v0[2];

    *(v35 + 12) = 2048;
    *(v35 + 14) = v3[2];

    _os_log_impl(&_mh_execute_header, v33, v34, "fetchMetadata(typed): retrying: books: %ld audiobooks: %ld", v35, 0x16u);
  }

  else
  {
  }

  v36 = v2[20];
  v37 = v2[17];

  v38 = sub_1001ED994(&off_100A0D5E0);
  sub_100007840(&unk_100A0D600, &unk_100AE0920, &unk_100817F60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v37;
  sub_100627B0C(v38, sub_100626CAC, 0, isUniquelyReferenced_nonNull_native, &v66);

  v40 = v66;
  v2[25] = v66;
  if (!v36)
  {
    v43 = v2[16];
    sub_1007990F4();
    v44 = swift_task_alloc();
    v2[26] = v44;
    *v44 = v2;
    v44[1] = sub_100620478;
    v19 = v2[9];
    v13 = v0;
    v14 = v3;
    v15 = v43;
    v16 = 0;
    v17 = v40;
    v18 = 150;

    goto LABEL_56;
  }
}

uint64_t sub_100620478(uint64_t a1)
{
  v4 = *v2;
  v4[27] = v1;

  v5 = v4[21];
  if (v1)
  {
    v5(v4[9], v4[7]);

    v6 = sub_100620C4C;
  }

  else
  {
    v7 = v4[9];
    v8 = v4[7];
    v4[28] = a1;
    v5(v7, v8);

    v6 = sub_100620670;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100620670()
{
  v41 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v3;
  sub_100627E64(v1, sub_1006282EC, 0, isUniquelyReferenced_nonNull_native, v40, sub_1003D6DF4, sub_1002F2A7C);

  v5 = v40[0];
  if (qword_100AD1968 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B236E8);

  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    *v11 = 134218752;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v9;
    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v5 + 16);
    *(v11 + 32) = 2048;
    if (__OFADD__(v10, v9))
    {
LABEL_28:
      __break(1u);
      return;
    }

    *(v11 + 34) = v10 + v9;
    v12 = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "fetchMetadata(typed): requested books: %ld audiobooks: %ld fetched: %ld of %ld", v12, 0x2Au);
  }

  else
  {
  }

  v13 = v0[13];
  v14 = v0[11];
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (*(v5 + 16) == v16)
  {
  }

  else
  {
    v17 = sub_10040E374(v0[12]);

    v18 = sub_10040F850();
    if (*(v18 + 16) <= v17[2] >> 3)
    {
      v40[0] = v17;
      sub_100625434(v18);
    }

    else
    {
      sub_10062566C(v18, v17);
    }

    v19 = sub_10040E374(v0[14]);

    v20 = sub_10040F850();
    if (*(v20 + 16) <= v19[2] >> 3)
    {
      v40[0] = v19;
      sub_100625434(v20);
    }

    else
    {
      sub_10062566C(v20, v19);
    }

    v21 = sub_10079ACC4();
    v22 = sub_1007A29B4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39 = v2;
      v40[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = sub_1007A2844();
      v26 = v25;

      v27 = sub_1000070F4(v24, v26, v40);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_1007A2844();
      v30 = v29;

      v31 = sub_1000070F4(v28, v30, v40);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "fetchMetadata(typed): Failed to get genre info. missingBookIDs: %s missingAudiobookIDs: %s", v23, 0x16u);
      swift_arrayDestroy();
      v2 = v39;

      goto LABEL_20;
    }
  }

LABEL_20:

  sub_1005822BC(v32);
  v34 = v33;

  sub_100626E00(v34);
  if (v2)
  {

    v36 = v0[1];

    v36();
  }

  else
  {
    v37 = v35;

    v38 = v0[1];

    v38(v37);
  }
}

uint64_t sub_100620BE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100620C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100620CC0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1007990E4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100620D80, 0, 0);
}

uint64_t sub_100620D80()
{
  v2 = v1[9];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v1[9] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v32 = v1[9];

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      do
      {
LABEL_8:
        v1[7] = *(*(v32 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
        v13 = sub_1007A3A74();
        v15 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10000B3D8(0, *(v11 + 2) + 1, 1, v11);
        }

        v0 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v0 >= v16 >> 1)
        {
          v11 = sub_10000B3D8((v16 > 1), v0 + 1, 1, v11);
        }

        v8 &= v8 - 1;
        *(v11 + 2) = v0 + 1;
        v17 = &v11[16 * v0];
        *(v17 + 4) = v13;
        *(v17 + 5) = v15;
      }

      while (v8);
    }
  }

  v18 = sub_10040E374(v11);

  v1[14] = OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService;
  v19 = *(v18 + 16);
  if (v19)
  {
    v1[15] = _swiftEmptyDictionarySingleton;
    v0 = sub_1005D6574(v19, 0);
    v1[16] = v0;
    v20 = sub_1005D6C1C(v1 + 2, (v0 + 32), v19, v18);
    sub_10004DC54(v1[2]);
    if (v20 == v19)
    {
      if (qword_100AD1978 == -1)
      {
LABEL_17:
        v21 = qword_100B23708;
        if (qword_100AD1988 != -1)
        {
          swift_once();
        }

        v22 = qword_100B23718;
        sub_1007990F4();
        v23 = swift_task_alloc();
        v1[17] = v23;
        *v23 = v1;
        v23[1] = sub_10062125C;
        v24 = v1[13];

        return MCatalogService.fetch(genreIDs:relationships:views:additionalParameters:batchSize:metadata:)(v0, v21, 0, v22, 150, v24);
      }

LABEL_31:
      swift_once();
      goto LABEL_17;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = _swiftEmptyDictionarySingleton[2];
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = sub_1005D889C();
  v27 = sub_1005D8870();

  sub_10004DC54(v33);
  if (v27 != v25)
  {
    __break(1u);
LABEL_25:
    v26 = _swiftEmptyArrayStorage;
  }

  v28 = sub_1006219CC(v26);

  v1[8] = v28;
  sub_1001F1160(&qword_100AEE590, &qword_100836F28);
  sub_100628114();
  v29 = sub_1007A24E4();

  v30 = v1[1];

  return v30(v29);
}

uint64_t sub_10062125C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  (*(v3[12] + 8))(v3[13], v3[11]);

  if (v1)
  {
    v5 = sub_100621960;
  }

  else
  {
    v5 = sub_1006213E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006213E8()
{
  v42 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v3;
  sub_100627E64(v2, sub_1006282EC, 0, isUniquelyReferenced_nonNull_native, &v41, sub_1003D6E08, sub_1002F2A90);
  v38 = v1;

  v40 = v41;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 64);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v39 = _swiftEmptyArrayStorage;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v2 + 56) + ((v9 << 9) | (8 * v11)));
      v13 = sub_100799454();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = v13;
      v16 = v14;
      if (*(v40 + 16) && (sub_10000E53C(v13, v14), (v17 & 1) != 0))
      {

LABEL_6:

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10000B3D8(0, *(v39 + 2) + 1, 1, v39);
        }

        v19 = *(v39 + 2);
        v18 = *(v39 + 3);
        if (v19 >= v18 >> 1)
        {
          v39 = sub_10000B3D8((v18 > 1), v19 + 1, 1, v39);
        }

        *(v39 + 2) = v19 + 1;
        v20 = &v39[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v16;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v21 = sub_10040E374(v39);

  v22 = *(v21 + 16);
  if (v22)
  {
    v0[15] = v40;
    v7 = sub_1005D6574(v22, 0);
    v0[16] = v7;
    v23 = sub_1005D6C1C(v0 + 2, (v7 + 32), v22, v21);
    sub_10004DC54(v0[2]);
    if (v23 == v22)
    {
      if (qword_100AD1978 == -1)
      {
LABEL_23:
        v24 = qword_100B23708;
        if (qword_100AD1988 != -1)
        {
          swift_once();
        }

        v25 = qword_100B23718;
        sub_1007990F4();
        v26 = swift_task_alloc();
        v0[17] = v26;
        *v26 = v0;
        v26[1] = sub_10062125C;
        v27 = v0[13];

        return MCatalogService.fetch(genreIDs:relationships:views:additionalParameters:batchSize:metadata:)(v7, v24, 0, v25, 150, v27);
      }

LABEL_41:
      swift_once();
      goto LABEL_23;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v28 = *(v40 + 16);
  if (v28)
  {
    v29 = sub_1005D889C();
    v30 = sub_1005D8870();
    v31 = v41;

    sub_10004DC54(v31);
    if (v30 == v28)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_32:
  v32 = sub_1006219CC(v29);
  if (v38)
  {

    v33 = v0[1];

    return v33();
  }

  else
  {
    v34 = v32;

    v0[8] = v34;
    sub_1001F1160(&qword_100AEE590, &qword_100836F28);
    sub_100628114();
    v35 = sub_1007A24E4();

    v36 = v0[1];

    return v36(v35);
  }
}

uint64_t sub_100621960()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1006219CC(unint64_t a1)
{
  v3 = v1;
  v115 = sub_10079A624();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = &v106 - v7;
  __chkstk_darwin(v8);
  v109 = &v106 - v9;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_106:
    v11 = sub_1007A38D4();
    v107 = v3;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_107:
    v13 = _swiftEmptyDictionarySingleton;
LABEL_108:
    v65 = v13 + 8;
    v66 = 1 << *(v13 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & v13[8];
    v69 = (v66 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v70 = 0;
    v71 = _swiftEmptyArrayStorage;
    if (v68)
    {
      goto LABEL_115;
    }

    while (1)
    {
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        __break(1u);
        goto LABEL_154;
      }

      if (v72 >= v69)
      {
        break;
      }

      v68 = v65[v72];
      ++v70;
      if (v68)
      {
        v70 = v72;
        do
        {
LABEL_115:
          v73 = *(v13[7] + ((v70 << 9) | (8 * __clz(__rbit64(v68)))));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_10066C34C(0, *(v71 + 2) + 1, 1, v71);
          }

          v75 = *(v71 + 2);
          v74 = *(v71 + 3);
          if (v75 >= v74 >> 1)
          {
            v71 = sub_10066C34C((v74 > 1), v75 + 1, 1, v71);
          }

          v68 &= v68 - 1;
          *(v71 + 2) = v75 + 1;
          *&v71[8 * v75 + 32] = v73;
        }

        while (v68);
      }
    }

    v76 = sub_10040E40C(v71);

    v77 = 1 << *(v13 + 32);
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    else
    {
      v78 = -1;
    }

    v79 = v78 & v13[8];
    v80 = (v77 + 63) >> 6;
    v81 = v76 + 56;
    v113 = (v111 + 32);

    v82 = 0;
    v116 = _swiftEmptyArrayStorage;
    v117 = v13;
    v112 = v80;
    v108 = v76;
    if (!v79)
    {
      goto LABEL_126;
    }

    do
    {
      while (1)
      {
        v83 = v82;
LABEL_129:
        v84 = __clz(__rbit64(v79));
        v79 &= v79 - 1;
        v85 = *(v13[6] + ((v83 << 9) | (8 * v84)));
        if (!*(v76 + 16))
        {
          break;
        }

        v86 = sub_1007A3BF4();
        v87 = -1 << *(v76 + 32);
        v88 = v86 & ~v87;
        if (((*(v81 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
        {
          break;
        }

        v89 = ~v87;
        while (*(*(v76 + 48) + 8 * v88) != v85)
        {
          v88 = (v88 + 1) & v89;
          if (((*(v81 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
          {
            goto LABEL_134;
          }
        }

        v82 = v83;
        v80 = v112;
        if (!v79)
        {
          goto LABEL_126;
        }
      }

LABEL_134:
      if (v13[2])
      {
        v90 = _swiftEmptyArrayStorage;
        v91 = v85;
        do
        {
          v92 = sub_1002F9CDC(v91);
          if ((v93 & 1) == 0)
          {
            break;
          }

          v91 = *(v13[7] + 8 * v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_10066C34C(0, *(v90 + 2) + 1, 1, v90);
          }

          v95 = *(v90 + 2);
          v94 = *(v90 + 3);
          if (v95 >= v94 >> 1)
          {
            v90 = sub_10066C34C((v94 > 1), v95 + 1, 1, v90);
          }

          *(v90 + 2) = v95 + 1;
          *&v90[8 * v95 + 32] = v91;
          v13 = v117;
        }

        while (*(v117 + 16));
      }

      v96 = v110;
      sub_10079A604();
      v97 = *v113;
      v98 = v109;
      v99 = v96;
      v100 = v115;
      (*v113)(v109, v99, v115);
      v97(v114, v98, v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_10066C5C8(0, *(v116 + 2) + 1, 1, v116);
      }

      v76 = v108;
      v102 = *(v116 + 2);
      v101 = *(v116 + 3);
      if (v102 >= v101 >> 1)
      {
        v116 = sub_10066C5C8((v101 > 1), v102 + 1, 1, v116);
      }

      v103 = v115;
      v104 = v116;
      *(v116 + 2) = v102 + 1;
      v97(&v104[((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v102], v114, v103);
      v82 = v83;
      v80 = v112;
    }

    while (v79);
LABEL_126:
    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v80)
      {

        return v116;
      }

      v79 = v65[v83];
      ++v82;
      if (v79)
      {
        goto LABEL_129;
      }
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v107 = v1;
  if (!v11)
  {
    goto LABEL_107;
  }

LABEL_3:
  v12 = 0;
  v116 = (a1 + 32);
  v117 = a1 & 0xC000000000000001;
  v112 = a1;
  v113 = v118 + 1;
  v13 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v117)
    {
      v14 = sub_1007A3784();
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_100;
      }

      v14 = *&v116[8 * v12];
    }

    v2 = v14;
    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      break;
    }

    a1 = v14;
    v16 = sub_100799574();
    v18 = HIBYTE(v17) & 0xF;
    v19 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v20 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_101;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v119 = 0;
      v3 = v17;
      sub_10063E4AC(v16, v17, 10);
      v23 = v58;
      v60 = v59;

      if (v60)
      {
        goto LABEL_98;
      }

      goto LABEL_72;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      v118[0] = v16;
      v118[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (!v18)
        {
          goto LABEL_103;
        }

        v19 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          v31 = v113;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = __CFADD__(10 * v23, v32);
            v23 = 10 * v23 + v32;
            if (v26)
            {
              break;
            }

            ++v31;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v16 == 45)
      {
        if (!v18)
        {
          goto LABEL_105;
        }

        v19 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          v27 = v113;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = 10 * v23 >= v28;
            v23 = 10 * v23 - v28;
            if (!v26)
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v18)
      {
        v23 = 0;
        v34 = v118;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          if (!is_mul_ok(v23, 0xAuLL))
          {
            break;
          }

          v26 = __CFADD__(10 * v23, v35);
          v23 = 10 * v23 + v35;
          if (v26)
          {
            break;
          }

          ++v34;
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        v21 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v3 = v17;
        v21 = sub_1007A37B4();
        v19 = v61;
      }

      v22 = *v21;
      if (v22 == 43)
      {
        if (v19 < 1)
        {
          goto LABEL_104;
        }

        if (--v19)
        {
          v23 = 0;
          if (!v21)
          {
            goto LABEL_69;
          }

          v29 = v21 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = __CFADD__(10 * v23, v30);
            v23 = 10 * v23 + v30;
            if (v26)
            {
              break;
            }

            ++v29;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v22 == 45)
      {
        if (v19 < 1)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (--v19)
        {
          v23 = 0;
          if (!v21)
          {
            goto LABEL_69;
          }

          v24 = v21 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              break;
            }

            v26 = 10 * v23 >= v25;
            v23 = 10 * v23 - v25;
            if (!v26)
            {
              break;
            }

            ++v24;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v19)
      {
        v23 = 0;
        if (!v21)
        {
LABEL_69:
          LOBYTE(v19) = 0;
          goto LABEL_71;
        }

        while (1)
        {
          v33 = *v21 - 48;
          if (v33 > 9)
          {
            break;
          }

          if (!is_mul_ok(v23, 0xAuLL))
          {
            break;
          }

          v26 = __CFADD__(10 * v23, v33);
          v23 = 10 * v23 + v33;
          if (v26)
          {
            break;
          }

          ++v21;
          if (!--v19)
          {
            goto LABEL_71;
          }
        }
      }
    }

    v23 = 0;
    LOBYTE(v19) = 1;
LABEL_71:
    v119 = v19;
    v3 = v19;

    if (v3)
    {
      goto LABEL_98;
    }

LABEL_72:
    v36 = sub_100799454();
    if (v37 && (v39 = sub_10063D7E8(v36, v37, v38), (v40 & 1) == 0))
    {
      v45 = v39;
      v108 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118[0] = v13;
      v48 = sub_1002F9CDC(v23);
      v49 = v13;
      v50 = v13[2];
      v51 = (v47 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_155;
      }

      v53 = v47;
      if (v49[3] >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v118[0];
          if ((v47 & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          sub_1002F28F4();
          v3 = v118[0];
          if ((v53 & 1) == 0)
          {
            goto LABEL_84;
          }
        }
      }

      else
      {
        sub_1003D6B54(v52, isUniquelyReferenced_nonNull_native);
        v54 = sub_1002F9CDC(v23);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_157;
        }

        v48 = v54;
        v3 = v118[0];
        if ((v53 & 1) == 0)
        {
LABEL_84:
          *(v3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          *(*(v3 + 48) + 8 * v48) = v23;
          *(*(v3 + 56) + 8 * v48) = v45;

          v56 = *(v3 + 16);
          v15 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v15)
          {
            goto LABEL_156;
          }

          v13 = v3;
          *(v3 + 16) = v57;
          goto LABEL_89;
        }
      }

      *(*(v3 + 56) + 8 * v48) = v45;

      v13 = v3;
LABEL_89:
      v10 = v108;
      v44 = v11;
LABEL_90:
      if (v12 == v44)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v41 = sub_1002F9CDC(v23);
      if (v42)
      {
        v3 = v41;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v118[0] = v13;
        v44 = v11;
        if (!v43)
        {
          sub_1002F28F4();
          v13 = v118[0];
        }

        sub_1002EFCDC(v3, v13);

        goto LABEL_90;
      }

      if (v12 == v11)
      {
        goto LABEL_108;
      }
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:

LABEL_98:

  sub_100627AAC(0, v62, v63, v64);
  sub_100628298(&qword_100AEE578, sub_100627AAC, &unk_100837080);
  swift_allocError();
  swift_willThrow();

  return v116;
}

uint64_t sub_10062246C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079A614();
  *a1 = result;
  return result;
}

void sub_100622498(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AEE588, &unk_100836F10);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100627DDC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A27B78;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  [v14 performBackgroundReadOnlyBlock:v13];
  _Block_release(v13);
}

uint64_t sub_100622664(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F1160(&qword_100AE3180, &unk_100825550);
  __chkstk_darwin(v7 - 8);
  v70 = v67 - v8;
  isUniquelyReferenced_nonNull_native = sub_10079A734();
  v75 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = v67 - v13;
  v84 = _swiftEmptyDictionarySingleton;
  isa = sub_1007A25D4().super.isa;
  v15 = [a2 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_1002BACBC();
  v16 = sub_1007A25E4();

  if (v16 >> 62)
  {
LABEL_104:
    v17 = sub_1007A38D4();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      v67[1] = a4;
      v18 = 0;
      a4 = v16 & 0xC000000000000001;
      v19 = v16 & 0xFFFFFFFFFFFFFF8;
      v80 = v16 + 32;
      v76 = v82 + 1;
      v69 = enum case for Book.MediaType.audiobook(_:);
      v79 = (v75 + 104);
      v68 = (v75 + 56);
      v73 = enum case for Book.MediaType.ebook(_:);
      v77 = v17;
      v78 = (v75 + 32);
      v67[2] = v75 + 40;
      v71 = v16 & 0xFFFFFFFFFFFFFF8;
      v72 = v16 & 0xC000000000000001;
      while (1)
      {
        if (a4)
        {
          v20 = sub_1007A3784();
        }

        else
        {
          if (v18 >= *(v19 + 16))
          {
            goto LABEL_97;
          }

          v20 = *(v80 + 8 * v18);
        }

        v21 = v20;
        v22 = __OFADD__(v18++, 1);
        if (v22)
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v23 = [v20 assetID];
        if (!v23)
        {
          goto LABEL_4;
        }

        v81 = v21;
        v24 = v23;
        v25 = sub_1007A2254();
        v27 = v26;

        v28 = HIBYTE(v27) & 0xF;
        v29 = v25 & 0xFFFFFFFFFFFFLL;
        if ((v27 & 0x2000000000000000) != 0)
        {
          v30 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v30 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (!v30)
        {

LABEL_77:

          goto LABEL_5;
        }

        if ((v27 & 0x1000000000000000) == 0)
        {
          break;
        }

        v83 = 0;
        sub_10063E4AC(v25, v27, 10);
        v33 = v63;
        v46 = v64;
LABEL_76:

        if (v46)
        {
          goto LABEL_77;
        }

        v21 = v81;
        if (![v81 isBook])
        {
          if ([v21 isAudiobook])
          {
            v59 = v70;
            (*v79)(v70, v69, isUniquelyReferenced_nonNull_native);
            (*v68)(v59, 0, 1, isUniquelyReferenced_nonNull_native);
            sub_1005EA1A4(v59, v33);

            v17 = v77;
            goto LABEL_5;
          }

LABEL_4:

          goto LABEL_5;
        }

        v47 = v16;
        v48 = v74;
        (*v79)(v74, v73, isUniquelyReferenced_nonNull_native);
        v16 = *v78;
        v49 = v11;
        a4 = isUniquelyReferenced_nonNull_native;
        (*v78)(v11, v48, isUniquelyReferenced_nonNull_native);
        v50 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82[0] = v50;
        v52 = sub_1002F9CDC(v33);
        v53 = v50[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_98;
        }

        v56 = v51;
        if (v50[3] >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002F2C00();
          }
        }

        else
        {
          sub_1003D70B8(v55, isUniquelyReferenced_nonNull_native);
          v57 = sub_1002F9CDC(v33);
          if ((v56 & 1) != (v58 & 1))
          {
            result = sub_1007A3B24();
            __break(1u);
            return result;
          }

          v52 = v57;
        }

        isUniquelyReferenced_nonNull_native = a4;
        v60 = v82[0];
        if (v56)
        {
          v11 = v49;
          (*(v75 + 40))(*(v82[0] + 56) + *(v75 + 72) * v52, v49, a4);
        }

        else
        {
          *(v82[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
          *(v60[6] + 8 * v52) = v33;
          v11 = v49;
          (v16)(v60[7] + *(v75 + 72) * v52, v49, a4);
          v61 = v60[2];
          v22 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v22)
          {
            goto LABEL_103;
          }

          v60[2] = v62;
        }

        v84 = v60;
        v16 = v47;
        v17 = v77;
        v19 = v71;
        a4 = v72;
LABEL_5:
        if (v18 == v17)
        {

          v65 = v84;
          goto LABEL_106;
        }
      }

      if ((v27 & 0x2000000000000000) != 0)
      {
        v82[0] = v25;
        v82[1] = v27 & 0xFFFFFFFFFFFFFFLL;
        if (v25 == 43)
        {
          if (!v28)
          {
            goto LABEL_100;
          }

          if (--v28)
          {
            v33 = 0;
            v41 = v76;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              if (!is_mul_ok(v33, 0xAuLL))
              {
                break;
              }

              v36 = __CFADD__(10 * v33, v42);
              v33 = 10 * v33 + v42;
              if (v36)
              {
                break;
              }

              ++v41;
              if (!--v28)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v25 == 45)
        {
          if (!v28)
          {
            goto LABEL_99;
          }

          if (--v28)
          {
            v33 = 0;
            v37 = v76;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v33, 0xAuLL))
              {
                break;
              }

              v36 = 10 * v33 >= v38;
              v33 = 10 * v33 - v38;
              if (!v36)
              {
                break;
              }

              ++v37;
              if (!--v28)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v28)
        {
          v33 = 0;
          v44 = v82;
          while (1)
          {
            v45 = *v44 - 48;
            if (v45 > 9)
            {
              break;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              break;
            }

            v36 = __CFADD__(10 * v33, v45);
            v33 = 10 * v33 + v45;
            if (v36)
            {
              break;
            }

            ++v44;
            if (!--v28)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v25 & 0x1000000000000000) != 0)
      {
        v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v31 = sub_1007A37B4();
      }

      v32 = *v31;
      if (v32 == 43)
      {
        if (v29 < 1)
        {
          goto LABEL_101;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_74;
        }

        v33 = 0;
        if (v31)
        {
          v39 = v31 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              goto LABEL_74;
            }

            v36 = __CFADD__(10 * v33, v40);
            v33 = 10 * v33 + v40;
            if (v36)
            {
              goto LABEL_74;
            }

            ++v39;
            if (!--v28)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v32 == 45)
      {
        if (v29 < 1)
        {
          goto LABEL_102;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_74;
        }

        v33 = 0;
        if (v31)
        {
          v34 = v31 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              goto LABEL_74;
            }

            v36 = 10 * v33 >= v35;
            v33 = 10 * v33 - v35;
            if (!v36)
            {
              goto LABEL_74;
            }

            ++v34;
            if (!--v28)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else
      {
        if (!v29)
        {
LABEL_74:
          v33 = 0;
          LOBYTE(v28) = 1;
          goto LABEL_75;
        }

        v33 = 0;
        if (v31)
        {
          do
          {
            v43 = *v31 - 48;
            if (v43 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              goto LABEL_74;
            }

            v36 = __CFADD__(10 * v33, v43);
            v33 = 10 * v33 + v43;
            if (v36)
            {
              goto LABEL_74;
            }

            ++v31;
          }

          while (--v29);
        }
      }

      LOBYTE(v28) = 0;
LABEL_75:
      v83 = v28;
      v46 = v28;
      goto LABEL_76;
    }
  }

  v65 = _swiftEmptyDictionarySingleton;
LABEL_106:
  v82[0] = v65;
  sub_1001F1160(&qword_100AEE588, &unk_100836F10);
  return sub_1007A26B4();
}