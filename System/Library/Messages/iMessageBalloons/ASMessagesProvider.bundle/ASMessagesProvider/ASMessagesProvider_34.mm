double sub_3DD084(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_offerLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_769240();
  v11 = v10;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_76A950();

    if (v13)
    {
      return result;
    }

LABEL_10:
    a2 = sub_769210();
LABEL_12:
    [v5 setText:a2];

    v14 = [v5 text];
    if (v14)
    {
      v15 = v14;
      sub_769240();
    }

    v16 = sub_7692D0();

    [v5 setHidden:v16 & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_3DD250(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_767510();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_27A378(a7, v12);
  sub_7674D0();
  (*(v10 + 8))(v12, v9);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_27BC08(a7, v13, a2);
  v14 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = [v14 absoluteDimension:?];
  v16 = sub_75F970();

  return v16;
}

uint64_t sub_3DD470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_3DD4B8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v8 = sub_76A920();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_767510();
  v15 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_27A378(a5, v17);
  sub_75F9B0();
  sub_3DD470(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v18 = sub_76A520();
  v19 = (*(v12 + 8))(v14, v11);
  v19.n128_f64[0] = a1;
  v20 = sub_27BC08(a5, v19, a2);
  if (v18)
  {
    v21 = v20;
    sub_7674A0();
    v22 = v31;
    sub_B170(v30, v31);
    sub_33964(v22);
    sub_766700();
    (*(v26 + 8))(v10, v27);
    (*(v15 + 8))(v17, v29);
    sub_BEB8(v30);
  }

  else
  {
    sub_769DD0();
    v21 = v23;
    (*(v15 + 8))(v17, v29);
  }

  return v21;
}

id sub_3DD7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v45 = a2;
  v47 = a1;
  v46 = sub_75E550();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v55._countAndFlagsBits = 0xD000000000000014;
  v55._object = 0x80000000007DFB80;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_75B750(v55, v64);
  v15 = sub_769210();

  [v14 setTitle:v15];

  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x80000000007DFBA0;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_75B750(v56, v65);
  v16 = sub_769210();

  [v14 setBackTitle:v16];

  v57._object = 0x80000000007DFBC0;
  v57._countAndFlagsBits = 0xD000000000000015;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_75B750(v57, v66);
  v17 = sub_769210();

  [v14 setCancelTitle:v17];

  v58._object = 0x80000000007DFBE0;
  v58._countAndFlagsBits = 0xD000000000000015;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_75B750(v58, v67);
  v18 = sub_769210();

  [v14 setSubmitTitle:v18];

  if (a5)
  {
    v59._countAndFlagsBits = 0xD00000000000002ALL;
    v59._object = 0x80000000007DFCA0;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_75B750(v59, v68);
    v19 = sub_769210();

    [v14 setSelectReasonTitle:v19];

    if (a3)
    {
      v20 = sub_769210();
    }

    else
    {
      v20 = 0;
    }

    v26 = v47;
    [v14 setReportConcernExplanation:v20];

    v63._countAndFlagsBits = 0xD000000000000025;
    v63._object = 0x80000000007DFCD0;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_75B750(v63, v72);
    v27 = sub_769210();

    [v14 setPrivacyNote:v27];

    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a6;
    v53 = sub_3DF2F0;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_3DEACC;
    v52 = &unk_8905D0;
    v25 = _Block_copy(&aBlock);
  }

  else
  {

    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000000007DFC00;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_75B750(v60, v69);
    v21 = sub_769210();

    [v14 setSelectReasonTitle:v21];

    v61._countAndFlagsBits = 0xD00000000000001ELL;
    v61._object = 0x80000000007DFC20;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_75B750(v61, v70);
    v22 = sub_769210();

    [v14 setSelectReasonSubtitle:v22];

    v62._countAndFlagsBits = 0xD000000000000016;
    v62._object = 0x80000000007DFC40;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_75B750(v62, v71);
    v23 = sub_769210();

    [v14 setPrivacyNote:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a6;
    v53 = sub_3DF284;
    v54 = v24;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_3DEACC;
    v52 = &unk_890580;
    v25 = _Block_copy(&aBlock);

    v26 = v47;
  }

  [v14 setCompletion:v25];
  _Block_release(v25);
  v29 = *(v26 + 16);
  if (v29)
  {
    v42 = v14;
    v43 = v7;
    v44 = a4;
    v45 = a6;
    aBlock = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v30 = v48 + 16;
    v48 = *(v48 + 16);
    v31 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v32 = *(v30 + 56);
    v33 = v46;
    do
    {
      (v48)(v13, v31, v33);
      v34 = [objc_allocWithZone(ASReportAConcernReason) init];
      sub_75E530();
      v35 = sub_769210();

      [v34 setReasonID:v35];

      sub_75E540();
      v36 = sub_769210();

      [v34 setName:v36];

      sub_75E520();
      v37 = sub_769210();

      [v34 setUppercaseName:v37];

      (*(v30 - 8))(v13, v33);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v31 += v32;
      --v29;
    }

    while (v29);

    v14 = v42;
  }

  else
  {
  }

  sub_3DF2A4();
  isa = sub_769450().super.isa;

  [v14 setReasons:isa];

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v39 setModalPresentationStyle:2];

  return v39;
}

double sub_3DDF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = sub_7687B0();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_769290();
  __chkstk_darwin(v13 - 8);
  v14 = sub_7614C0();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v17 = v16;
  sub_7614B0();
  v57 = a6;
  v18 = sub_75D5B0();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_3DE9F8(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_BD88(&qword_9535F8, &qword_79B538);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_77B6D0;
        sub_BD88(&unk_9562A0, &qword_79B540);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_77E280;
        *(inited + 32) = 1684957547;
        v23 = v52;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v23;
        *(inited + 56) = v53;
        *(inited + 64) = 0x746E656D6D6F63;
        v24 = v51;
        *(inited + 72) = 0xE700000000000000;
        *(inited + 80) = v24;
        *(inited + 88) = a5;

        v25 = sub_10DD04(inited);
        swift_setDeallocating();
        sub_BD88(&qword_95DC30, qword_79F060);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_BD88(&qword_953600, &qword_79B548);
        v60[0] = v21;
        sub_452258(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_3DE9F8(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_BD88(&qword_9535F8, &qword_79B538);
      v28 = swift_allocObject();
      v51 = xmmword_77B6D0;
      *(v28 + 16) = xmmword_77B6D0;
      sub_BD88(&unk_9562A0, &qword_79B540);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_10DD04(v29);
      swift_setDeallocating();
      sub_10A2C(v29 + 32, &qword_95DC30, qword_79F060);
      *(v28 + 32) = v31;
      v61 = sub_BD88(&qword_953600, &qword_79B548);
      v60[0] = v28;
      sub_452258(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_BD88(&qword_953608, &qword_79B550);
  v33 = sub_76A470();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = sub_7570C0();
    v38 = v37;

    sub_769280();
    sub_769260();
    if (v39)
    {
      v40 = v54;
      sub_768790();
      v44 = sub_75D580();
      (*(v55 + 8))(v40, v56);

      v45 = sub_BD88(&unk_93F630, &unk_77E230);
      v46 = v49;
      v47 = v50;
      sub_768860();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_30CC30(v36, v38);

        sub_10A2C(v47, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32AE1C(v44, 1, v46, v47);

        sub_30CC30(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }

      goto LABEL_18;
    }

    sub_30CC30(v36, v38);
  }

  else
  {
    v41 = v35;
    sub_756F70();

    swift_willThrow();
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v42 = sub_768FF0();
  sub_BE38(v42, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  (*(v58 + 8))(v17, v59);
LABEL_18:

  return result;
}

uint64_t (*sub_3DE9F8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_3DF428(v6, a2, a3);
  return sub_3DEA80;
}

void sub_3DEA80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

double sub_3DEACC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  sub_769240();
  if (a4)
  {
    sub_769240();
  }

  v7 = a2;
  v6();

  return result;
}

uint64_t sub_3DEB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = sub_7687B0();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75F450();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7614C0();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v52 = v19;
  sub_7614B0();
  v44 = a6;
  v20 = sub_75D5A0();
  v21 = *(v20 + 16);
  if (v21)
  {
    v40 = a7;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v22 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v39 = v20;
    v26 = v20 + v25;
    v27 = *(v23 + 56);
    v24(v16, v20 + v25, v13);
    while (sub_75F410() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = sub_76A950();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (sub_75F410() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = sub_76A950();

        if (v31)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      (*(v23 - 8))(v16, v13);
      v26 += v27;
      if (!--v21)
      {

        a7 = v40;
        goto LABEL_17;
      }

      v22(v16, v26, v13);
    }

LABEL_4:
    sub_7614A0();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  sub_768790();
  v33 = sub_75D580();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10A2C(v34, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32AE1C(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

double sub_3DF28C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_3DF2A4()
{
  result = qword_9535F0;
  if (!qword_9535F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_9535F0);
  }

  return result;
}

unint64_t sub_3DF2F8(uint64_t a1, uint64_t a2)
{
  sub_76AA30();
  sub_769330();
  v4 = sub_76AA80();

  return sub_3DF370(a1, a2, v4);
}

unint64_t sub_3DF370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_76A950())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_3DF428(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_3DF740(v7);
  v7[9] = sub_3DF534(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_3DF4D4;
}

void sub_3DF4D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_3DF534(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_3DF2F8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_45C960();
      v13 = v21;
      goto LABEL_11;
    }

    sub_456F8C(v18, a4 & 1);
    v13 = sub_3DF2F8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_76A9B0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_3DF68C;
}

void sub_3DF68C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_45AB80(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_B2FFC(*(v7 + 48) + 16 * v6);
    sub_4587D8(v6, v7, v8);
  }

  free(v1);
}

uint64_t (*sub_3DF740(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_3DF768;
}

unint64_t sub_3DF774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_955910, &qword_7851F0);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_3DF884(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_3DF2F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_13310(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3DF884(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_9453B0, &unk_7851F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_3DF900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  sub_320474(a1, a3, a4, a5, a6);
  sub_757B90();
  v8 = sub_764EF0();
  v10 = v9;

  if (v10)
  {
    v26._countAndFlagsBits = 0x465F4E4F5F444441;
    v26._object = 0xEE005050415F524FLL;
    v27._object = 0x80000000007CF0F0;
    v27._countAndFlagsBits = 0xD000000000000031;
    sub_75B750(v26, v27);
    sub_BD88(&unk_944E30, &unk_784930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77B6D0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_FA4CC();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;

    sub_769270();

    v12 = objc_allocWithZone(NSMutableAttributedString);
    v13 = sub_769210();
    v14 = [v12 initWithString:v13];

    v15 = objc_allocWithZone(NSString);
    v16 = sub_769210();

    v17 = [v15 initWithString:v16];

    v18 = sub_769210();

    v19 = [v17 rangeOfString:v18 options:4];
    v21 = v20;

    v25 = [v7 tintColor];
    sub_BD88(&unk_944E40, qword_7A1360);
    v22 = sub_76A470();

    [v14 addAttribute:NSForegroundColorAttributeName value:v22 range:{v19, v21}];
    swift_unknownObjectRelease();
    v23 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel);
    if (v23)
    {
      v24 = v23;
      [v24 setAttributedText:v14];
    }
  }
}

double sub_3DFC64(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_76A920();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_767510();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75FA00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9B0();
  sub_3E02CC(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = sub_76A520();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_321BC4(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1F1030(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    sub_7674A0();
    v22 = v28;
    sub_B170(v27, v28);
    sub_33964(v22);
    sub_766700();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    sub_BEB8(v27);
  }

  else
  {
    sub_769DD0();
    v21 = v23;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_3DFFB0(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = sub_767510();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_764A60();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1F1030(a5, v17, a3);
  sub_764A30();
  sub_3E02CC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_76A520();
  (*(v13 + 8))(v15, v12);
  sub_321BC4(a5, v11);
  sub_7674D0();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = sub_7699E0();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = sub_75F970();

  return v26;
}

uint64_t sub_3E02CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_3E0384(uint64_t a1, uint64_t a2, __n128 a3)
{
  v95 = a2;
  v94 = sub_75EE00();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_766690();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_7643C0();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_764A60();
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v88 - v10;
  v11 = sub_759270();
  v104 = *(v11 - 8);
  v105 = v11;
  __chkstk_darwin(v11);
  v103 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75DAB0();
  v107 = *(v13 - 8);
  v108 = v13;
  __chkstk_darwin(v13);
  v106 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75D6B0();
  v110 = *(v15 - 8);
  v111 = v15;
  __chkstk_darwin(v15);
  v109 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7656C0();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  __chkstk_darwin(v17);
  v112 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v20 - 8);
  v22 = &v88 - v21;
  v23 = sub_BD88(&unk_94F1F0, &qword_782290);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v88 - v25;
  v27 = sub_764930();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v88 - v32;
  swift_getKeyPath();
  v115 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v34 = v26;
  v35 = v28;
  (*(v24 + 8))(v34, v23);
  if ((*(v28 + 48))(v22, 1, v27) != 1)
  {
    (*(v28 + 32))(v33, v22, v27);
    (*(v28 + 16))(v30, v33, v27);
    v37 = (*(v28 + 88))(v30, v27);
    v38 = v33;
    if (v37 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v39 = v112;
      sub_75C7B0();

      sub_765630();
      (*(v114 + 8))(v39, v113);
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v40 = sub_75CF00();
      sub_BE38(v40, qword_99B898);
      sub_527DE4();
      sub_75CF20();
      v41 = &unk_953660;
      v42 = &type metadata accessor for SmallLockupLayout;
      v43 = &protocol conformance descriptor for SmallLockupLayout;
LABEL_8:
      sub_3E15B0(v41, v42, v43);
      sub_766ED0();
      v36 = v44;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v35 + 8))(v38, v27);
      return v36;
    }

    if (v37 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v45 = v112;
      sub_75C7B0();

      sub_765630();
      (*(v114 + 8))(v45, v113);
      type metadata accessor for MediumLockupCollectionViewCell(0);
      swift_getKeyPath();
      sub_75C7B0();

      v46 = v116;
      v47 = v109;
      sub_278FB0(v109);

      sub_527DE4();
      sub_75D6D0();
      sub_3E15B0(&qword_94C3F8, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
      sub_766ED0();
      v36 = v48;
      swift_unknownObjectRelease();
      (*(v110 + 8))(v47, v111);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v49 = v112;
      sub_75C7B0();

      sub_765630();
      (*(v114 + 8))(v49, v113);
      if (qword_93C8B0 != -1)
      {
        swift_once();
      }

      v50 = sub_75C8F0();
      sub_BE38(v50, qword_99C5C0);
      sub_527DE4();
      sub_75C910();
      v41 = &unk_94CF70;
      v42 = &type metadata accessor for LargeLockupLayout;
      v43 = &protocol conformance descriptor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v37 == enum case for Shelf.ContentType.ribbonBar(_:) || v37 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v60 = v106;
      sub_75C720();
      v36 = sub_273AA8(v60);
      (*(v107 + 8))(v60, v108);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v51 = v112;
      sub_75C7B0();

      sub_765630();
      v53 = v52;
      v55 = v54;
      (*(v114 + 8))(v51, v113);
      if (qword_93E0E0 != -1)
      {
        swift_once();
      }

      v56 = sub_527DE4();
      ObjectType = swift_getObjectType();
      v58 = type metadata accessor for VideoCardView(0);
      sub_6B2178(v53, v55, &qword_9A07C0, v56, v58, ObjectType);
      v36 = v59;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v62 = v99;
      sub_75C7B0();

      v63 = v100;
      sub_764A20();
      sub_3E15B0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v64 = v102;
      v65 = sub_76A520();
      v66 = *(v101 + 8);
      v66(v63, v64);
      v66(v62, v64);
      if (v65)
      {
        if (qword_93CD68 != -1)
        {
          swift_once();
        }

        v67 = qword_99D350;
      }

      else
      {
        if (qword_93CD70 != -1)
        {
          swift_once();
        }

        v67 = qword_99D368;
      }

      v71 = v105;
      v72 = sub_BE38(v105, v67);
      v74 = v103;
      v73 = v104;
      (*(v104 + 16))(v103, v72, v71);
      swift_getKeyPath();
      v75 = v112;
      sub_75C7B0();

      sub_765630();
      (*(v114 + 8))(v75, v113);
      sub_527DE4();
      sub_759290();
      sub_3E15B0(&qword_94AD50, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
      sub_766ED0();
      v36 = v76;
      swift_unknownObjectRelease();
      (*(v73 + 8))(v74, v71);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v68 = v112;
      sub_75C7B0();

      sub_765630();
      (*(v114 + 8))(v68, v113);
      v69 = v96;
      sub_761260();
      sub_527DE4();
      sub_7643E0();
      sub_3E15B0(&qword_953658, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout, &protocol conformance descriptor for ChartOrCategoryBrickCollectionViewCellLayout);
      sub_766ED0();
      v36 = v70;
      swift_unknownObjectRelease();
      (*(v97 + 8))(v69, v98);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell(0);
      v77 = sub_2822A4(v115, v95);
      goto LABEL_37;
    }

    if (v37 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell(0);
    }

    else
    {
      if (v37 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v37 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v79 = v112;
          sub_75C7B0();

          sub_765630();
          (*(v114 + 8))(v79, v113);
          swift_getKeyPath();
          sub_75C7B0();

          v80 = v116;
          v81 = v92;
          sub_593770(v116, v92);
          sub_75EDD0();
          v36 = v82;

          (*(v93 + 8))(v81, v94);
          goto LABEL_22;
        }

        if (v37 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v83 = v106;
          sub_75C720();
          v84 = v89;
          sub_75D870();
          v85 = v112;
          sub_75DA20();
          sub_765640();
          (*(v114 + 8))(v85, v113);
          sub_766660();
          v36 = v86;
          (*(v90 + 8))(v84, v91);
          (*(v107 + 8))(v83, v108);
          goto LABEL_22;
        }

        if (v37 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v37 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v87 = *(v28 + 8);
            v87(v33, v27);
            v87(v30, v27);
            return 0.0;
          }

          goto LABEL_30;
        }

        v77 = sub_4D3760(v115, 1);
LABEL_37:
        v36 = v77;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
    }

    v78 = v106;
    sub_75C720();
    v36 = sub_73459C(v78);
    (*(v107 + 8))(v78, v108);
    goto LABEL_22;
  }

  sub_3E153C(v22);
  return 0.0;
}

uint64_t sub_3E153C(uint64_t a1)
{
  v2 = sub_BD88(&qword_951BE0, &unk_782280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3E15B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_3E1630(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_76A920();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_767510();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75FA00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9B0();
  sub_3E02CC(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = sub_76A520();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_321BC4(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1F1030(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    sub_7674A0();
    v22 = v28;
    sub_B170(v27, v28);
    sub_33964(v22);
    sub_766700();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    sub_BEB8(v27);
  }

  else
  {
    sub_769DD0();
    v21 = v23;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_3E197C(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = sub_767510();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_764A60();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1F1030(a5, v17, a3);
  sub_764A30();
  sub_3E02CC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_76A520();
  (*(v13 + 8))(v15, v12);
  sub_321BC4(a5, v11);
  sub_7674D0();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = sub_7699E0();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = sub_75F970();

  return v26;
}

uint64_t sub_3E1C98()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v5 = swift_allocObject();
  v28 = xmmword_77D9F0;
  *(v5 + 16) = xmmword_77D9F0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000000007DFD60;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_3E265C;
  *(v7 + 112) = v6;
  v8 = v0;

  sub_7572D0();
  v9 = sub_7572B0();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  sub_76A6E0();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_5BEF20(0xD000000000000018, 0x80000000007DFD80, 0, 0, sub_3E1FEC, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77B6C0;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  sub_7572D0();
  v17 = sub_7572B0();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  sub_7572D0();
  v22 = sub_7572B0();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000000007DFDA0;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_3E1FEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        sub_6A8C20(a2, a3, 10);
        v9 = v37;
        v39 = v38;

        if (v39)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v40 = a2;
        v41 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v40 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v40;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v40 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_76A790();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v42 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = sub_7690F0();
          }

          else
          {
            v30 = sub_10DD04(_swiftEmptyArrayStorage);
          }

          v40 = 0x62734435625378;
          v41 = 0xE700000000000000;
          sub_BD88(&unk_944E30, &unk_784930);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_77B6D0;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v43._countAndFlagsBits = sub_769270();
          sub_769370(v43);

          v32 = v40;
          v33 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v30;
          sub_4595D4(v32, v33, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = sub_7690E0().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_3E244C(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_763780();
  sub_BD88(&unk_9498B0, qword_794670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  sub_763790();
  sub_76A6E0();
  v5 = sub_764CF0();
  *(inited + 96) = v5;
  v6 = sub_B1B4((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_10E1F8(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, &qword_940758, &unk_7851D0);
  isa = sub_7690E0().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_3E25CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3E2624()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_3E2680()
{
  v0 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_764CF0();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController(0);
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  sub_762950();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10A2C(v2, &unk_940200, &unk_7AEB70);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_3E2BD0;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_890718;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

uint64_t sub_3E2B48()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_3E2BD0()
{
  v1 = *(sub_764CF0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_3E244C(v2);
}

double sub_3E2C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3E2C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_764930();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_3E153C(v5);
    v17 = sub_75D400();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell(0);
    sub_225E74(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell(0);
    sub_305B20(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = sub_75D400();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

double sub_3E304C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8);
  *v3 = a1;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_76A950() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_3E31BC();
LABEL_11:

  return result;
}

void sub_3E30CC(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  a1 = a1;
  v4 = v7;
  v5 = sub_76A1C0();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_3E31BC();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

id sub_3E31BC()
{
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_3E33FC();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = sub_769210();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = sub_769210();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}

id sub_3E33FC()
{
  v1 = sub_76A920();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_56E958(0xD000000000000014, 0x80000000007DFEC0, 0);
  if (qword_93CFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  sub_BE38(v7, qword_9536D8);
  sub_766470();
  sub_766700();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  sub_BE38(v11, qword_99E6F8);
  v12 = [v0 traitCollection];
  v13 = sub_769E10();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_BE70(0, &qword_958080, NSMutableAttributedString_ptr);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_93CFB8 != -1)
  {
    swift_once();
  }

  sub_BE38(v7, qword_9536F0);
  sub_766470();
  sub_766700();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_3E3874(char a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_93D4F0 != -1)
    {
      swift_once();
    }

    v16 = sub_7666D0();
    v17 = sub_BE38(v16, qword_99E6E0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_75BB20());
    v20 = sub_75BB10();
    v2 = v15;
    sub_3E3034(v20);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_3E3B34()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99E7D0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  v15 = sub_75BB10();
  sub_3E3040(v15);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_75BAD0();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v18 = v17;
      v19 = sub_769FE0();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t sub_3E3DFC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99E6F8);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

void sub_3E3FD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_7581E0();
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) = v3 & 1;
    if ((v3 & 1) != v4)
    {
      sub_3E31BC();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    swift_unknownObjectRetain();

    sub_7581F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) = 0;
    if (v7 == 1)
    {

      sub_3E31BC();
    }
  }
}

void sub_3E416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    v7 = sub_7581E0();
    v8 = v6[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp];
    v6[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp] = v7 & 1;
    if ((v7 & 1) != v8)
    {
      sub_3E31BC();
    }
  }
}

char *sub_3E4200(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v74 = sub_768C60();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_760AD0();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  sub_759210();
  *&v4[v17] = sub_759020();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel;
  if (qword_93D558 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99E818);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v79 = *(v21 + 16);
  v79(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v75 = v11 + 104;
  v76 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = sub_75BB20();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = sub_75BB10();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v19, qword_99E6F8);
  v79(v16, v29, v19);
  v77(v16, 0, 1, v19);
  (v25)(v13, v76, v78);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = sub_75BB10();
  v70 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
  v31 = v13;
  v71 = v25;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v69 = sub_BE38(v19, qword_99E758);
  v79(v16, v69, v19);
  v32 = v77;
  v77(v16, 0, 1, v19);
  v33 = v76;
  v67[1] = v23;
  v34 = v78;
  v67[0] = v22;
  v35 = v71;
  (v71)(v31, v76, v78);
  v36 = objc_allocWithZone(v26);
  v68 = v26;
  *&v4[v70] = sub_75BB10();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  v79(v16, v69, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v68);
  *&v5[v38] = sub_75BB10();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_1DD00C(0);
  v42 = &v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter];
  *v42 = 0u;
  v42[1] = 0u;
  v43 = &v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor;
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  *&v5[v44] = sub_769FD0();
  v45 = &v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine];
  *v45 = 0;
  v45[1] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp] = 0;
  v46 = type metadata accessor for BaseLockupView();
  v82.receiver = v5;
  v82.super_class = v46;
  v47 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v51 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  [v51 addSubview:*&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView]];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel;
  v54 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel];
  sub_75BAD0();

  [v51 addSubview:*&v51[v53]];
  v55 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel;
  v56 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  sub_75BAD0();

  [v51 addSubview:*&v51[v55]];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  v59 = sub_769FF0();
  [v58 setTextColor:v59];

  v60 = *&v51[v57];
  sub_75BAD0();

  [v51 addSubview:*&v51[v57]];
  v61 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v62 = *&v51[v61];
  sub_75BAD0();

  [*&v51[v61] setText:0];
  [*&v51[v61] setHidden:1];
  [v51 addSubview:*&v51[v61]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton]];
  v63 = *&v51[v52];
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v72;
  sub_768C10();
  sub_BDD0(v80);
  sub_BDD0(v81);
  sub_769E70();

  (*(v73 + 8))(v65, v74);
  return v51;
}

id sub_3E4AF0(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v1;
    sub_758210();

    swift_unknownObjectRelease();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_3E4CA4(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) == 1)
    {
      sub_3E31BC();
    }

    return result;
  }

  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {

    return result;
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_3E4EEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E4F24()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_3E4F70()
{
  v49 = sub_760AD0();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  sub_759210();
  *(v0 + v7) = sub_759020();
  v8 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel;
  if (qword_93D558 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99E818);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v50 = *(v11 + 16);
  v50(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v45 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1 + 104;
  v44 = v16;
  (v16)(v3);
  v48 = sub_75BB20();
  v17 = objc_allocWithZone(v48);
  *(v0 + v8) = sub_75BB10();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v9, qword_99E6F8);
  v20 = v12;
  v50(v6, v19, v9);
  v46 = v13;
  v42 = v14;
  v14(v6, 0, 1, v9);
  v44(v3, v45, v49);
  v21 = objc_allocWithZone(v48);
  v22 = v3;
  v23 = sub_75BB10();
  v43 = v0;
  *(v0 + v18) = v23;
  v41 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v40[0] = sub_BE38(v9, qword_99E758);
  v40[1] = v20;
  v50(v6, v40[0], v9);
  v24 = v42;
  v42(v6, 0, 1, v9);
  v25 = v45;
  v26 = v49;
  v27 = v44;
  v44(v22, v45, v49);
  v28 = objc_allocWithZone(v48);
  v29 = sub_75BB10();
  v30 = v43;
  *(v43 + v41) = v29;
  *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  v50(v6, v40[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v48);
  *(v30 + v32) = sub_75BB10();
  v34 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_1DD00C(0);
  v36 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor;
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  *(v30 + v38) = sub_769FD0();
  v39 = (v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine);
  *v39 = 0;
  v39[1] = 0;
  *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_isBetaApp) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_3E5520(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93D9D8 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F580);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_3E56FC()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_9537D0);
  sub_BE38(v0, qword_9537D0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_3E5798(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsLayout];
  }
}

char *sub_3E5840(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760AD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_sizeCategory] = 7;
  if (qword_93D9D8 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F580);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_75BB20());
  v25 = sub_75BB10();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v27 = v25;
  sub_768C10();
  sub_BDD0(v36);
  sub_BDD0(v37);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  v28 = *&v5[v26];
  sub_396E8();
  v29 = v28;
  v30 = sub_769FF0();
  [v29 setTextColor:v30];

  type metadata accessor for Accessory(0);
  swift_storeEnumTagMultiPayload();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label]];
  return v31;
}

double sub_3E5CE0(double a1)
{
  swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D650();
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView);
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 sizeThatFits:{v9, v10}];
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v17 = v16;
    v7 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  Width = CGRectGetWidth(*&v7);
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label);
  [v19 sizeThatFits:{Width + -16.0 - v17, 1.79769313e308}];
  if (qword_93CFC0 != -1)
  {
    swift_once();
  }

  v20 = sub_766CA0();
  sub_BE38(v20, qword_9537A0);
  sub_766470();
  sub_766700();
  v21 = *(v4 + 8);
  v21(v6, v3);
  [v19 firstBaselineFromTop];
  if (qword_93CFC8 != -1)
  {
    swift_once();
  }

  sub_BE38(v20, qword_9537B8);
  sub_766470();
  sub_766700();
  v21(v6, v3);
  [v19 lastBaselineFromBottom];
  return a1;
}

id sub_3E5FD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v5);
  sub_75D650();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = v9;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits:{v8, v9}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  v22 = CGRectGetMaxX(v33) - v19;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v35.origin.y = CGRectGetMidY(v34) + v21 * -0.5;
  v35.origin.x = v22;
  v31 = v19;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectIntegral(v35);
  v23 = *&v1[v16];
  if (v23)
  {
    v24 = v23;
    sub_769D20();
    [v24 setFrame:?];
  }

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v14;
  v36.size.height = v15;
  v25 = CGRectGetWidth(v36) + -16.0 - v31;
  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  Height = CGRectGetHeight(v37);
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label];
  [v27 sizeThatFits:{v25, Height}];
  if (qword_93CFC0 != -1)
  {
    swift_once();
  }

  v28 = sub_766CA0();
  sub_BE38(v28, qword_9537A0);
  sub_766470();
  sub_766700();
  (*(v4 + 8))(v7, v3);
  [v27 firstBaselineFromTop];
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  CGRectGetMinY(v39);
  sub_769D20();
  return [v27 setFrame:?];
}

id sub_3E6374(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93CFD0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_9537D0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

uint64_t type metadata accessor for TodayCardActionOverlayView(uint64_t a1)
{
  result = qword_953828;
  if (!qword_953828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3E65C4(uint64_t a1)
{
  result = type metadata accessor for Accessory(319);
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

unint64_t sub_3E66A8()
{
  result = qword_953838;
  if (!qword_953838)
  {
    sub_7600A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953838);
  }

  return result;
}

void sub_3E6700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a5;
  v5[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_sizeCategory] = a5;
  [v5 setNeedsLayout];
  sub_4E0248(a2);
  sub_3E5798(v9);
  v10 = sub_765AE0();
  [v6 setBackgroundColor:v10];

  v11 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v11 layoutDirection];
  sub_769BB0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v6 setLayoutMargins:{v13, v15, v17, 15.0}];
  v18 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label];
  sub_760090();
  sub_764C60();
  v20 = v19;

  if (v20)
  {
    v21 = sub_769210();
  }

  else
  {
    v21 = 0;
  }

  [v18 setText:v21];
}

uint64_t type metadata accessor for ArcadeSeeAllGamesButton(uint64_t a1)
{
  result = qword_9538F8;
  if (!qword_9538F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_3E6980(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_9538F0];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v1[qword_9538E8] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  [v11 setTintColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 whiteColor];
  [v14 setBackgroundColor:v15];

  [v14 addTarget:v14 action:"navigateToSeeAllGames" forControlEvents:64];
  v16 = sub_769210();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v14 setImage:v17 forState:0];
  if (qword_93D468 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99E548);
  v20 = [v14 traitCollection];
  (*(*(v18 - 8) + 16))(v7, v19, v18);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v30[3] = v4;
  v30[4] = &protocol witness table for FontSource;
  v21 = sub_B1B4(v30);
  (*(v5 + 16))(v21, v7, v4);
  sub_765C10();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  sub_BEB8(v30);
  v24 = floor(v23);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v24 = v24 + -5.0;
  }

  v26 = [objc_opt_self() configurationWithPointSize:v24];
  [v14 setPreferredSymbolConfiguration:v26 forImageInState:0];

  sub_75D600();
  sub_BD88(&qword_9477F0, qword_780200);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_77B6D0;
  *(v27 + 32) = sub_767B80();
  *(v27 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F20();

  swift_unknownObjectRelease();

  return v14;
}

void sub_3E6DFC()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 bounds];
  Height = CGRectGetHeight(v10);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }
}

void sub_3E6EF8(void *a1)
{
  v1 = a1;
  sub_3E6DFC();
}

void sub_3E6F40(char *a1)
{
  v1 = &a1[qword_9538F0];
  if (a1[qword_9538F0 + 16])
  {
    v2 = qword_93D468;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_7666D0();
    v5 = sub_BE38(v4, qword_99E548);
    v6 = [v3 traitCollection];
    sub_1A37FC(v5, v6, 32.0);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_3E7024(char *a1)
{
  v1 = &a1[qword_9538F0];
  if (a1[qword_9538F0 + 16])
  {
    v2 = qword_93D468;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_7666D0();
    v5 = sub_BE38(v4, qword_99E548);
    v6 = [v3 traitCollection];
    sub_1A37FC(v5, v6, 32.0);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

id sub_3E7108()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[qword_9538F0];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  if (qword_93D468 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99E548);
  v9 = [v0 traitCollection];
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v19[3] = v2;
  v19[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v19);
  (*(v3 + 16))(v10, v5, v2);
  sub_765C10();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_BEB8(v19);
  v13 = floor(v12);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v13 = v13 + -5.0;
  }

  v15 = [objc_opt_self() configurationWithPointSize:v13];
  [v0 setPreferredSymbolConfiguration:v15 forImageInState:0];

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "invalidateIntrinsicContentSize");
}

void sub_3E7388(void *a1)
{
  v1 = a1;
  sub_3E7108();
}

uint64_t sub_3E73D0()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v49 = v37 - v2;
  v3 = sub_758B40();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F340();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760280();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7687B0();
  __chkstk_darwin(v9 - 8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = sub_765490();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  v26 = *(v0 + qword_9538E8);
  sub_75A920();
  v37[0] = v26;
  sub_768880();
  v37[1] = v52;
  sub_75A710();
  v27 = sub_7570A0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    sub_757090();
    if (v29(v22, 1, v27) != 1)
    {
      sub_10A2C(v22, &unk_93FD30, qword_77F240);
    }
  }

  else
  {
    (*(v28 + 32))(v25, v22, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.arcadeSeeAllGames(_:), v13);
  sub_50690(v25, v19);
  v30 = sub_759E30();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v50 = 0u;
  v51 = 0u;
  sub_768790();
  (*(v38 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v42 + 104))(v45, enum case for FlowAnimationBehavior.infer(_:), v43);
  (*(v46 + 104))(v48, enum case for FlowOrigin.inapp(_:), v47);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v31 = sub_758AD0();
  v32 = sub_BD88(&unk_93F630, &unk_77E230);
  v33 = v49;
  v34 = v37[0];
  sub_768860();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v33, 1, v32) == 1)
  {
    sub_10A2C(v25, &unk_93FD30, qword_77F240);

    return sub_10A2C(v33, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32AC14(v31, 1, v34, v33);

    sub_10A2C(v25, &unk_93FD30, qword_77F240);
    return (*(v35 + 8))(v33, v32);
  }
}

void sub_3E7B40(void *a1)
{
  v1 = a1;
  sub_3E73D0();
}

unint64_t sub_3E7BF4()
{
  result = qword_953948;
  if (!qword_953948)
  {
    sub_75E990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953948);
  }

  return result;
}

uint64_t sub_3E7C4C(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_7687C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7685A0();
  __chkstk_darwin(v7 - 8);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v8 = sub_768FF0();
  sub_BE38(v8, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v14._object = 0x80000000007E0050;
  v14._countAndFlagsBits = 0xD000000000000018;
  sub_768580(v14);
  v9 = sub_75AD70();
  v13[3] = v9;
  v10 = sub_B1B4(v13);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_768560();
  sub_BDD0(v13);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_768580(v15);
  sub_7685B0();
  sub_768E80();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3E7F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_7685A0();
  __chkstk_darwin(v5 - 8);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v6 = sub_768FF0();
  sub_BE38(v6, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v11._object = 0x80000000007E0030;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  sub_768580(v11);
  swift_getErrorValue();
  v10[3] = v9;
  v7 = sub_B1B4(v10);
  (*(*(v9 - 8) + 16))(v7);
  sub_768560();
  sub_BDD0(v10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_768580(v12);
  sub_7685B0();
  sub_768EA0();

  swift_getObjectType();
  sub_758360();
  return sub_768F50();
}

uint64_t sub_3E8198(uint64_t a1, uint64_t a2)
{
  v2 = sub_764CF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v9 = sub_768F90();
  sub_75E970();
  sub_75E980();
  sub_765460();
  sub_768900();
  sub_768ED0();
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768ED0();
  v16 = v17;
  sub_765440();
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v16;
  (*(v3 + 32))(v12 + v10, v5, v2);
  *(v12 + v11) = v9;
  v13 = sub_12EA98();
  swift_retain_n();
  swift_unknownObjectRetain();
  v14 = sub_769970();
  v18 = v13;
  v19 = &protocol witness table for OS_dispatch_queue;
  *&v17 = v14;
  sub_768F10();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v8, v2);
  sub_BEB8(&v17);
  return v9;
}

uint64_t sub_3E8470()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_3E8548(uint64_t a1)
{
  v3 = *(sub_764CF0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_3E7F34(a1, v6, v7, v1 + v4, v5);
}

double sub_3E8634()
{
  v0 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = sub_76A920();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766690();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656A0();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  sub_75A2D0();
  sub_3E95E4(&qword_953960, &type metadata accessor for FramedArtwork, &protocol conformance descriptor for FramedMedia);
  sub_75C750();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = sub_759430();
  swift_getKeyPath();
  sub_75C7B0();

  v20 = (v13 + 8);
  if (v19)
  {
    sub_765630();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_765580();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v25 + 8))(v11, v7);
    sub_765630();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_75A2C0();
  v29 = v89;
  if (v28)
  {
    sub_765260();
    v30 = v86;
    sub_7666A0();
    sub_766660();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = sub_759430();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_759450();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  sub_769DA0();
  sub_759460();
  v38 = &qword_93E000;
  if (v39)
  {
    if (qword_93DA18 != -1)
    {
      swift_once();
    }

    v40 = sub_7666D0();
    sub_BE38(v40, qword_99F640);
    swift_getKeyPath();
    sub_75C7B0();

    v41 = sub_7653B0();
    v92 = v41;
    v93 = sub_3E95E4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v42 = sub_B1B4(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    sub_765C30();
    sub_BEB8(aBlock);
    sub_762CB0();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_93E250 != -1)
    {
      swift_once();
    }

    v44 = sub_766CA0();
    sub_BE38(v44, qword_9A09B8);
    swift_getKeyPath();
    sub_75C7B0();

    sub_766470();
    sub_766700();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_93E260 != -1)
    {
      swift_once();
    }

    sub_BE38(v44, qword_9A09E8);
    swift_getKeyPath();
    sub_75C7B0();

    sub_766470();
    sub_766700();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_93E258 != -1)
    {
      swift_once();
    }

    sub_BE38(v44, qword_9A09D0);
    swift_getKeyPath();
    sub_75C7B0();

    sub_766470();
    sub_766700();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &qword_93E000;
  }

  v53 = sub_759450();

  swift_getKeyPath();
  sub_75C7B0();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_119AC;
  v58[3] = v57;
  v93 = sub_2636C;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v92 = &unk_8908C0;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_93DA10;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = sub_7666D0();
  v64 = sub_BE38(v63, qword_99F628);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  sub_75C7B0();

  v67 = sub_7653B0();
  v92 = v67;
  v93 = sub_3E95E4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v68 = sub_B1B4(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_765C30();
  sub_BEB8(aBlock);
  sub_762CA0();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_11A38(v66);
  if (qword_93E250 != -1)
  {
    swift_once();
  }

  v71 = sub_766CA0();
  sub_BE38(v71, qword_9A09B8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_766720();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[75] != -1)
  {
    swift_once();
  }

  sub_BE38(v71, qword_9A09D0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_7666F0();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_3E9570()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_3E95C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3E95E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3E9694(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = sub_7664A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93CFF8 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_953A10);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = sub_766CA0();
  *a4 = &protocol witness table for StaticDimension;
  sub_B1B4(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_B1B4(v17);
  (*(v9 + 16))(v14, v11, v8);
  sub_766CB0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_3E9880()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_953A10);
  v1 = sub_BE38(v0, qword_953A10);
  if (qword_93DAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99F838);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_3E99B0()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  sub_762270();
  if (v4)
  {
    v5 = sub_769210();
  }

  else
  {
    v5 = 0;
  }

  [v3 setTitle:v5];

  sub_3EECE0(&qword_953B08, v6, type metadata accessor for GenericAccountPageViewController, &unk_79BB30);
  swift_unknownObjectRetain();
  sub_762250();
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v1 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [result setAlwaysBounceVertical:1];

  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_BE70(0, &unk_953B10, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    sub_769240();
    v12 = sub_769210();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  type metadata accessor for LinkableFooterView();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    sub_769240();
    v15 = sub_769210();
  }

  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v16 = result;
  _s18ASMessagesProvider10HeaderViewCMa_0();
  v17 = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(v17);
  if (!v18)
  {
    sub_769240();
    v18 = sub_769210();
  }

  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  result = [v1 tableView];
  if (result)
  {
    v19 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return sub_75A160();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_3E9F30(uint64_t a1, uint64_t a2)
{
  v17.receiver = v2;
  v17.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v2 view];
      if (v7)
      {
        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        [v6 setFrame:{v10, v12, v14, v16}];
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

void sub_3EA0D8(void *a1, uint64_t a2)
{
  v3 = v2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = sub_7699F0();

  if (!a1 || ((sub_7699F0() ^ v6) & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [v3 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  v11 = [a1 preferredContentSizeCategory];
  v12 = sub_769240();
  v14 = v13;
  if (v12 == sub_769240() && v14 == v15)
  {

    return;
  }

  v16 = sub_76A950();

  if ((v16 & 1) == 0)
  {
LABEL_3:
    v7 = [v3 tableView];
    if (v7)
    {
      v8 = v7;
      [v7 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_3EA384(void *a1, uint64_t a2)
{
  v4 = sub_75D130();
  v119 = *(v4 - 8);
  v120 = v4;
  __chkstk_darwin(v4);
  v117 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = v114 - v7;
  v8 = sub_75D160();
  v122 = *(v8 - 1);
  v123 = v8;
  __chkstk_darwin(v8);
  v121 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_76A920();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v11 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_953AF0, qword_79BB68);
  __chkstk_darwin(v12 - 8);
  v14 = v114 - v13;
  v15 = sub_75A990();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v114 - v20;
  v114[1] = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_presenter];
  sub_7621F0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_74;
  }

  v124 = v16;
  v125 = v15;
  v22.n128_f64[0] = (*(v16 + 32))(v21, v14, v15);
  v129 = v21;
  v23 = sub_3EB724(v21, v22);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93CFF8 != -1)
  {
    swift_once();
  }

  v126 = v2;
  v24 = sub_7666D0();
  sub_BE38(v24, qword_953A10);
  v127 = a1;
  v25 = [a1 traitCollection];
  v26 = sub_769E10();

  v27 = [v23 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setFont:v26];
  }

  v128 = v26;
  v29 = [v23 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setNumberOfLines:0];
  }

  v31 = [v23 textLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setLineBreakMode:0];
  }

  v33 = [v23 textLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() labelColor];
    [v34 setTextColor:v35];
  }

  v36 = [v23 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setFont:v128];
  }

  v38 = [v23 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setNumberOfLines:0];
  }

  v40 = [v23 detailTextLabel];
  if (v40)
  {
    v41 = v40;
    [v40 setLineBreakMode:0];
  }

  v42 = [v23 detailTextLabel];
  v43 = v126;
  if (v42)
  {
    v44 = v42;
    v45 = [objc_opt_self() labelColor];
    [v44 setTextColor:v45];
  }

  [v23 setAccessoryType:0];
  [v23 setAccessoryView:0];
  v14 = v23;
  [v14 setUserInteractionEnabled:0];
  if (qword_93CFE0 != -1)
  {
    swift_once();
  }

  v46 = qword_9539B0;
  sub_B170(qword_953998, qword_9539B0);
  sub_33964(v46);
  sub_766700();
  v48 = v47;
  (*(v115 + 8))(v11, v116);
  v49 = v127;
  [v127 layoutMargins];
  v51 = v50;
  [v49 layoutMargins];
  [v14 setLayoutMargins:{v48, v51, v48}];
  v53 = v124;
  v52 = v125;
  (*(v124 + 16))(v18, v129, v125);
  v54 = (*(v53 + 88))(v18, v52);
  if (v54 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v53 + 96))(v18, v52);
    (*(v122 + 32))(v121, v18, v123);
    v55 = [v14 textLabel];
    if (v55)
    {
      v56 = v55;
      sub_75D150();
      v57 = sub_769210();

      [v56 setText:v57];
    }

    sub_75D140();
    (*(v119 + 104))(v117, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v120);
    sub_3EECE0(&qword_953AF8, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    sub_769430();
    sub_769430();
    v58 = &selRef_setTextAlignment_;
    if (aBlock == v136 && v131 == v137)
    {
      v59 = v120;
      v60 = *(v119 + 8);
      v60(v117, v120);
      v60(v118, v59);
    }

    else
    {
      v71 = sub_76A950();
      v72 = *(v119 + 8);
      v73 = v52;
      v74 = v43;
      v75 = v120;
      v72(v117, v120);
      v76 = v75;
      v43 = v74;
      v52 = v73;
      v58 = &selRef_setTextAlignment_;
      v72(v118, v76);

      if ((v71 & 1) == 0)
      {
        v91 = [v14 textLabel];
        v77 = &selRef_setTextAlignment_;
        if (v91)
        {
          v92 = v91;
          v93 = [v127 tintColor];
          [v92 setTextColor:v93];
        }

        goto LABEL_37;
      }
    }

    [v14 setAccessoryType:1];
    v77 = &selRef_setTextAlignment_;
LABEL_37:
    [v14 v77[6]];

    (*(v122 + 8))(v121, v123);
LABEL_60:
    v67 = &selRef_setInterGroupSpacing_;
    goto LABEL_61;
  }

  if (v54 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v54 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v54 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v53 + 96))(v18, v52);
        v94 = *(v18 + 1);
        v95 = v18[16];
        sub_BE70(0, &qword_955FA0, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = sub_76A1F0();
        v97 = [objc_allocWithZone(UISwitch) initWithFrame:v96 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v98 = sub_762230();
        if (v98 == 2)
        {
          v99 = v95;
        }

        else
        {
          v99 = v98;
        }

        [v97 setOn:v99 & 1];
        [v14 setAccessoryView:v97];
        v100 = [v14 textLabel];
        if (v100)
        {
          v101 = v100;
          v58 = &selRef_setTextAlignment_;
          if (v94)
          {
            v102 = sub_769210();
          }

          else
          {
            v102 = 0;
          }

          [v101 setText:v102];
        }

        else
        {

          v58 = &selRef_setTextAlignment_;
        }

        [v14 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v53 + 8))(v18, v52);
      goto LABEL_55;
    }

    (*(v53 + 96))(v18, v52);
    v78 = [v14 textLabel];
    v67 = &selRef_setInterGroupSpacing_;
    if (v78)
    {
      v79 = v78;
      v80 = [objc_opt_self() secondaryLabelColor];
      [v79 setTextColor:v80];
    }

    v81 = [v14 textLabel];
    v58 = &selRef_setTextAlignment_;
    if (!v81)
    {
      goto LABEL_44;
    }

    v123 = v81;
    sub_75D170();
    v82 = sub_7658D0();

    v83 = [v127 traitCollection];
    v84 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v82];
    v127 = [v82 length];
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = v83;
    *(v85 + 32) = v84;
    *(v85 + 40) = 1;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_119AC;
    *(v86 + 24) = v85;
    v134 = sub_2636C;
    v135 = v86;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_10C1C;
    v133 = &unk_890960;
    v87 = _Block_copy(&aBlock);
    v88 = v83;
    v89 = v84;

    [v82 enumerateAttributesInRange:0 options:v127 usingBlock:{0x100000, v87}];

    _Block_release(v87);
    LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

    if ((v87 & 1) == 0)
    {
      v90 = v123;
      [v123 setAttributedText:v89];

      v52 = v125;
      v43 = v126;
      v53 = v124;
LABEL_55:
      v58 = &selRef_setTextAlignment_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10A2C(v14, &qword_953AF0, qword_79BB68);
    result = sub_76A840();
    __break(1u);
    return result;
  }

  (*(v53 + 96))(v18, v52);
  v61 = [v14 textLabel];
  if (v61)
  {
    v62 = v61;
    sub_761950();
    v63 = sub_769210();

    [v62 setText:v63];
  }

  v64 = [v14 textLabel];
  v58 = &selRef_setTextAlignment_;
  if (v64)
  {
    v65 = v64;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v66 = sub_769FF0();
    [v65 setTextColor:v66];
  }

  v67 = &selRef_setInterGroupSpacing_;
  v68 = [v14 detailTextLabel];
  if (v68)
  {
    v69 = v68;
    sub_761960();
    v70 = sub_769210();

    [v69 setText:v70];

    v67 = &selRef_setInterGroupSpacing_;
  }

LABEL_44:

LABEL_61:
  v103 = [v14 textLabel];
  if (v103)
  {
    v104 = v103;
    v105 = [v43 v58[23]];
    v106 = sub_7699F0();

    if (v106)
    {
      v107 = 2;
    }

    else
    {
      v107 = 0;
    }

    [v104 setTextAlignment:v107];
  }

  v108 = [v14 v67[155]];
  if (v108)
  {
    v109 = v108;
    v110 = [v43 v58[23]];
    v111 = sub_7699F0();

    if (v111)
    {
      v112 = 2;
    }

    else
    {
      v112 = 0;
    }

    [v109 setTextAlignment:v112];

    (*(v53 + 8))(v129, v52);
  }

  else
  {
    (*(v53 + 8))(v129, v52);
  }

  return v14;
}

void sub_3EB4E0(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_BE70(0, &qword_953B00, UISwitch_ptr);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;

        [v4 isOn];
        sub_762240();
      }
    }
  }

  else
  {
    sub_10A2C(v7, &unk_93FBD0, &qword_77DFA0);
  }
}

id sub_3EB724(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_75A990();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  if ((*(v6 + 88))(v9, v5) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v6 + 8))(v9, v5);
    result = [v3 tableView];
    if (result)
    {
      v11 = result;
      v12 = sub_769210();
      v13 = [v11 dequeueReusableCellWithIdentifier:v12];

      if (!v13)
      {
        v14 = objc_allocWithZone(UITableViewCell);
        v15 = sub_769210();
        v13 = [v14 initWithStyle:1 reuseIdentifier:v15];
      }

      return v13;
    }

    __break(1u);
  }

  else
  {
    result = [v3 tableView];
    if (result)
    {
      v16 = result;
      v17 = sub_769210();
      v13 = [v16 dequeueReusableCellWithIdentifier:v17];

      if (!v13)
      {
        v18 = objc_allocWithZone(UITableViewCell);
        v19 = sub_769210();
        v13 = [v18 initWithStyle:0 reuseIdentifier:v19];
      }

      (*(v6 + 8))(v9, v5);
      return v13;
    }
  }

  __break(1u);
  return result;
}

id sub_3EB9E4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_769240();
    v10 = sub_769210();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_3EBAA4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_762260();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_93CFF0 != -1)
      {
        swift_once();
      }

      v14 = qword_953A00;
      sub_B170(qword_9539E8, qword_953A00);
      sub_33964(v14);
      sub_766700();
      v16 = v15;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v18 = v17;
      [a1 layoutMargins];
      v20 = v19;
      v21 = [v3 tableView];
      if (v21)
      {
        v22 = v21;
        [v21 layoutMargins];
        v24 = v23;

        v25 = [v3 tableView];
        if (v25)
        {
          v26 = v25;
          v27 = v18 + v24;
          [v25 layoutMargins];
          v29 = v28;

          [a1 frame];
          Width = CGRectGetWidth(v32);
          sub_3EE524(v12, v13, a1, Width, 1.79769313e308, 0.0, v27, v16, v20 + v29);

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
}

void sub_3EBD68(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18ASMessagesProvider10HeaderViewCMa_0();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v34 = a2;
    v12 = sub_762260();
    if (v13)
    {
      v32[1] = v12;
      v33 = v3;
      v14 = qword_93CFF0;
      v15 = v34;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = qword_953A00;
      sub_B170(qword_9539E8, qword_953A00);
      sub_33964(v16);
      sub_766700();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v20 = v19;
      [a1 layoutMargins];
      [v11 setLayoutMargins:{0.0, v20, v18}];

      v21 = v15;
      v22 = [v11 textLabel];
      if (v22)
      {
        v23 = v22;
        v24 = sub_769210();

        [v23 setText:v24];
      }

      else
      {
      }

      v28 = [v11 textLabel];

      if (v28)
      {
        v29 = [v33 traitCollection];
        v30 = sub_7699F0();

        if (v30)
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        [v28 setTextAlignment:v31];
      }
    }

    else
    {
      v25 = [v11 textLabel];
      if (v25)
      {
        v26 = v25;
        [v25 setText:0];
      }

      v27 = v34;
    }
  }
}

uint64_t sub_3EC124(void *a1, uint64_t a2)
{
  v5 = sub_75D130();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = sub_75D160();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_953AF0, qword_79BB68);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = sub_75A990();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = sub_768430();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_presenter);
  result = sub_762280();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = sub_757550().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      *v28 = sub_769970();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = sub_768460();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_94DD18;
      v92 = xmmword_94DD28;
      v93 = xmmword_94DD38;
      v89 = xmmword_94DCF8;
      v90 = xmmword_94DD08;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_94DCF8;
      v101[1] = xmmword_94DD08;
      v101[3] = xmmword_94DD28;
      v101[4] = xmmword_94DD38;
      v94 = qword_94DD48;
      v100 = v88;
      v102 = qword_94DD48;
      v101[2] = xmmword_94DD18;
      sub_1781E4(&v89, v81);
      xmmword_94DD18 = v97;
      xmmword_94DD28 = v98;
      xmmword_94DD38 = v99;
      qword_94DD48 = v100;
      xmmword_94DCF8 = v95;
      xmmword_94DD08 = v96;
      sub_10A2C(v101, &unk_93FEF0, &unk_7834B0);
      v45 = *(v77 + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_objectGraph);
      v46 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_45C2C(&v83, v81);
      sub_768860();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10A2C(v24, &unk_93F980, &qword_77EDA0);
      }

      else
      {

        sub_32A6C0(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_94DD18;
      v81[3] = xmmword_94DD28;
      v81[4] = xmmword_94DD38;
      v82 = qword_94DD48;
      v81[0] = xmmword_94DCF8;
      v81[1] = xmmword_94DD08;
      xmmword_94DCF8 = v89;
      xmmword_94DD08 = v90;
      xmmword_94DD18 = v91;
      xmmword_94DD28 = v92;
      xmmword_94DD38 = v93;
      qword_94DD48 = v94;
      sub_10A2C(v81, &unk_93FEF0, &unk_7834B0);
      sub_45C88(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_objectGraph);
      v49 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10A2C(v21, &unk_93F980, &qword_77EDA0);
      }

      else
      {

        sub_32A6C0(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    sub_7621F0();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10A2C(v13, &qword_953AF0, qword_79BB68);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    sub_75D140();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_3EECE0(&qword_953AF8, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    sub_769430();
    sub_769430();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = sub_76A950();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = sub_757550().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

void sub_3ECC98(void *a1, uint64_t a2)
{
  v4 = sub_3ED0C4(a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v2 tableView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [v11 layoutMargins];
  v14 = v13;

  v15 = [v2 tableView];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 layoutMargins];
  v18 = v17;

  if (sub_762290())
  {
    v19 = v6 + v14;
    [a1 frame];
    Width = CGRectGetWidth(v23);
    v21 = sub_759CD0();
    sub_3EE848(v21, v22, a1, Width, 1.79769313e308, v4, v19, v8, v10 + v18);
  }
}

void sub_3ECE40(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (sub_762290())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_3ED0C4(a1, a3)}];

      v11 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
      v13 = sub_759CF0();
      sub_22A974(v13, sub_30AE4);
      v15 = v14;

      v16 = sub_759CE0();
      sub_4ED3B8(v16, 0, v15);

      v19 = *&v8[v11];
      v17 = [v3 traitCollection];
      LOBYTE(v15) = sub_7699F0();

      if (v15)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      [v19 setTextAlignment:v18];
    }

    else
    {
      v19 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
      sub_4ED68C();
    }
  }
}

double sub_3ED0C4(void *a1, uint64_t a2)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762220();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v15[1] = 0x4041800000000000;
    sub_766470();
  }

  else
  {
    if (qword_93CFD8 != -1)
    {
      swift_once();
    }

    v10 = qword_953988;
    sub_B170(qword_953970, qword_953988);
    sub_33964(v10);
  }

  sub_766700();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_93CFE8 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v11 = qword_9539D8;
  sub_B170(qword_9539C0, qword_9539D8);
  sub_33964(v11);
  sub_766700();
  v13 = v12;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v13;
}

void sub_3ED33C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_762270();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_3ED418()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  if (sub_762220())
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
    sub_761930();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_761920();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_767130();
    v8 = objc_allocWithZone(sub_767160());
    v9 = sub_767150();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
    sub_761930();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_761920();
      return;
    }
  }

  __break(1u);
}

id sub_3ED610()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController];
  sub_761930();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_761920();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3ED7DC()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_953A28);
  sub_BE38(v0, qword_953A28);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

char *sub_3ED878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v5, qword_99F790);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v3[v9] = sub_4ECF40(v8, 0, 0, 0);
  if (a2)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
  v17 = qword_93D000;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_BE38(v20, qword_953A28);
  v28[0] = v18;
  v21 = v18;
  sub_7592B0();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_3EDD00()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_769D80();
  (*(v3 + 8))(v5, v2);
  sub_75D650();
  v13 = [v1 contentView];
  sub_75D650();

  sub_769D20();
  return [v7 setFrame:?];
}

uint64_t sub_3EDF98(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1 || (result = sub_7699F0(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel];
    if (qword_93D000 != -1)
    {
      swift_once();
    }

    v8 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v8, qword_953A28);
    v10 = v2;
    v9 = v2;
    sub_7592B0();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_3EE188()
{
  v5.receiver = v0;
  v5.super_class = _s18ASMessagesProvider10HeaderViewCMa_0();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    sub_75D650();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();

    sub_769D20();
    [v3 setFrame:?];
  }
}

id sub_3EE438(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_3EE524(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = sub_762D10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DAC8 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  sub_BE38(v14, qword_99F850);
  v15 = [a3 traitCollection];
  sub_769E10();

  v16 = sub_7653B0();
  v22[3] = v16;
  v22[4] = sub_3EECE0(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v17 = sub_B1B4(v22);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_765C30();
  sub_BEB8(v22);

  sub_762D00();
  sub_769DA0();
  sub_3EECE0(&unk_94E600, 255, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  sub_7665A0();
  sub_769DC0();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  return v19;
}

double sub_3EE848(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v25[1] = a1;
  v25[2] = a2;
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_762D10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_769DA0();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  sub_BE38(v18, qword_99F790);
  v19 = [a3 traitCollection];
  sub_769E10();

  v20 = sub_7653B0();
  v27 = v20;
  v28 = sub_3EECE0(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_B1B4(v26);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_765C30();
  sub_BEB8(v26);

  sub_762D00();
  sub_762CE0();
  (*(v15 + 8))(v17, v14);
  sub_B170(v26, v27);
  sub_7665B0();
  sub_769DC0();
  (*(v11 + 104))(v13, enum case for FloatingPointRoundingRule.up(_:), v10);
  sub_769D80();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  sub_BEB8(v26);
  return v23;
}

uint64_t sub_3EEC30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3EEC70()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_3EECC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3EECE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_3EED28()
{
  v0 = sub_BD88(&qword_953BC0, &unk_79BBD8);
  sub_161DC(v0, qword_953B20);
  sub_BE38(v0, qword_953B20);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for ContentMode(0);
  return sub_7592C0();
}

uint64_t sub_3EEDCC()
{
  v0 = sub_BD88(&qword_953BB8, &qword_79BBD0);
  sub_161DC(v0, qword_953B38);
  sub_BE38(v0, qword_953B38);
  swift_getKeyPath();
  sub_56E958(0xD00000000000001ELL, 0x80000000007E0350, 0);
  sub_56E958(0xD000000000000017, 0x80000000007E0370, 0);
  sub_BE70(0, &qword_947630, UIImage_ptr);
  return sub_759300();
}

uint64_t sub_3EEEE0()
{
  v0 = sub_BD88(&qword_953BB0, &qword_79BBC8);
  sub_161DC(v0, qword_953B50);
  sub_BE38(v0, qword_953B50);
  swift_getKeyPath();
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v1 = sub_76A0B0();
  v2.super.isa = sub_76A0B0();
  v3.super.isa = v1;
  sub_76A0C0(v3, v2);
  v4 = sub_76A0B0();
  v5.super.isa = sub_76A0B0();
  v6.super.isa = v4;
  sub_76A0C0(v6, v5);
  return sub_759300();
}

char *sub_3EF010(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer;
  *&v4[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = qword_93D018;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_BD88(&qword_953BB0, &qword_79BBC8);
  sub_BE38(v17, qword_953B50);
  v18 = v16;
  sub_7592B0();

  [v18 setBackgroundColor:v54];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView;
  v20 = qword_93D010;
  v21 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  if (v20 != -1)
  {
    swift_once();
  }

  v53 = ObjectType;
  v22 = sub_BD88(&qword_953BB8, &qword_79BBD0);
  sub_BE38(v22, qword_953B38);
  v23 = v18;
  sub_7592B0();

  [v21 setImage:v54];
  v24 = qword_93D008;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_BD88(&qword_953BC0, &unk_79BBD8);
  sub_BE38(v26, qword_953B20);
  sub_7592B0();

  [v25 setContentMode:v54];
  [v23 addSubview:*&v18[v19]];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer;
  v28 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  v32 = [v31 CGColor];

  [v30 setBackgroundColor:v32];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer;
  v34 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer];
  sub_BD88(&qword_941C10, &qword_781230);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77E280;
  v36 = v34;
  v37 = [v29 blackColor];
  v38 = [v37 CGColor];

  type metadata accessor for CGColor(0);
  v40 = v39;
  *(v35 + 56) = v39;
  *(v35 + 32) = v38;
  v41 = [v29 clearColor];
  v42 = [v41 CGColor];

  *(v35 + 88) = v40;
  *(v35 + 64) = v42;
  isa = sub_769450().super.isa;

  [v36 setColors:isa];

  v44 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer;
  [*&v23[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer] addSublayer:*&v23[v27]];
  [*&v23[v44] addSublayer:*&v23[v33]];
  sub_BD88(&qword_9477F0, qword_780200);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_77B6D0;
  *(v45 + 32) = sub_7677B0();
  *(v45 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(swift_allocObject() + 16) = v53;
  sub_769F40();
  swift_unknownObjectRelease();

  v46 = [v23 traitCollection];

  LOBYTE(v45) = sub_7699D0();
  if (v45 & 1) != 0 || (v47 = [v23 traitCollection], v48 = sub_769A00(), v47, (v48))
  {
    v49 = [*&v18[v19] layer];
    [v49 setMask:*&v23[v44]];
  }

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_77E280;
  *(v50 + 32) = sub_767890();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v50 + 48) = sub_767B80();
  *(v50 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_77B6D0;
  *(v51 + 32) = sub_7676E0();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(swift_allocObject() + 16) = v53;
  sub_769F40();

  swift_unknownObjectRelease();

  return v23;
}

void sub_3EF724(char *a1)
{
  if (qword_93D018 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&qword_953BB0, &qword_79BBC8);
  sub_BE38(v2, qword_953B50);
  v7 = a1;
  v3 = a1;
  sub_7592B0();

  [v3 setBackgroundColor:{v9, v7}];
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  if (qword_93D010 != -1)
  {
    swift_once();
  }

  v5 = sub_BD88(&qword_953BB8, &qword_79BBD0);
  sub_BE38(v5, qword_953B38);
  v8 = v3;
  v6 = v3;
  sub_7592B0();

  [v4 setImage:{v9, v8}];
}

id sub_3EF890(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  if (qword_93D008 != -1)
  {
    swift_once();
  }

  v3 = sub_BD88(&qword_953BC0, &unk_79BBD8);
  sub_BE38(v3, qword_953B20);
  v4 = a1;
  sub_7592B0();

  return [v2 setContentMode:{v6, a1}];
}

void sub_3EF9B0()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 traitCollection];
  v4 = sub_7699F0();

  v5 = [v1 traitCollection];
  v6 = sub_7699E0();

  v7 = 100.0;
  if ((v6 & 1) == 0)
  {
    v7 = 20.0;
  }

  if (v4)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [v2 frame];
  [v2 setFrame:v8 + v9];
  v10 = [v1 traitCollection];
  v11 = sub_7699D0();

  if (v11 & 1) != 0 || (v12 = [v1 traitCollection], v13 = sub_769A00(), v12, (v13))
  {
    [v2 setClipsToBounds:1];
    if (v4)
    {
      v14 = -100.0;
    }

    else
    {
      v14 = 100.0;
    }

    [v2 frame];
    [v2 setFrame:v14 + v15];
    v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer];
    [v1 bounds];
    [v16 setFrame:{0.0, 0.0, CGRectGetWidth(v20), 68.0}];
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer];
    [v16 frame];
    MaxY = CGRectGetMaxY(v21);
    [v1 bounds];
    [v17 setFrame:{0.0, MaxY, CGRectGetWidth(v22), 110.0}];
  }
}

void sub_3EFCD8(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_7699D0();

  if (v3 & 1) != 0 || (v4 = [a1 traitCollection], v5 = sub_769A00(), v4, (v5))
  {
    v6 = [*&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:*&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer]];
  }

  else
  {
    v6 = [*&a1[OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:0];
  }
}

void sub_3EFDDC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_topOpaqueLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27EditorsChoiceBackgroundView_compositeMaskLayer;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  sub_76A840();
  __break(1u);
}

id sub_3EFEEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

char *sub_3EFF28@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 userInterfaceLevel];
  *a2 = result == &dword_0 + 1;
  return result;
}

uint64_t sub_3EFFC8@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_7601D0();
  v2 = sub_7601F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_3F0090()
{
  v1 = v0;
  v2 = sub_BD88(&unk_9535C0, &qword_786C50);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = sub_764F30();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v15 = sub_769FD0();
      sub_29E314(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = sub_769210();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_titleLabel];
  sub_764EF0();
  if (v21)
  {
    v22 = sub_769210();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  sub_764DD0();
  if (v23)
  {
    sub_29E5C4();
    v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = sub_769210();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_subtitleLabel];
  sub_764F70();
  if (v31)
  {
    v32 = sub_769210();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = sub_764E60();
  if (!v42)
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v42 = sub_769FF0();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &selRef_absoluteDimension_;
  v45 = [v30 layer];
  sub_764E70();
  v46 = sub_75F760();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_3F06F8(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  sub_75F750();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_B170(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = sub_76A930();
  (*(v51 + 8))(v54, v49);
  v44 = &selRef_absoluteDimension_;
  sub_BEB8(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[1]];

  v58 = v62;
  sub_764E70();
  v59 = v48(v58, 1, v46) == 1;
  sub_3F06F8(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_3F06F8(uint64_t a1)
{
  v2 = sub_BD88(&unk_9535C0, &qword_786C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_3F0760(double a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v6 = v5;
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_29EC80(a3, (v6 - v7) * 0.5, a1);
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 absoluteDimension:v9];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = [v16 widthDimension];
  v19 = [v16 heightDimension];
  v20 = [v15 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77D9F0;
  *(v22 + 32) = v17;
  sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
  v23 = v17;
  isa = sub_769450().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v20 subitems:isa];

  return v25;
}

double sub_3F09F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A270();
  sub_3F0C30(&qword_953C10, &type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
  sub_75C750();
  v6 = v16;
  if (!v16)
  {
    return 0.0;
  }

  sub_BD88(&unk_943590, &unk_784940);
  sub_768900();
  sub_768ED0();
  v15[1] = v6;
  sub_758C30();

  v7 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v8 = v17;
  }

  else
  {

    v8 = 0;
    v7 = v6;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = sub_527DE4();
  sub_440B18(v7, v8, v12, v11);
  v9 = v13;
  swift_unknownObjectRelease();

  sub_B3204(v7, v8);
  return v9;
}

uint64_t sub_3F0C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3F0CD0(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93D020 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_953C18);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_3F0ED8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_953C78);
  sub_BE38(v4, qword_953C78);
  if (qword_93D038 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_953C60);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_3F10AC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_953C90);
  sub_BE38(v4, qword_953C90);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_3F1244(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_3F129C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_3F130C(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_3F13D8(a5);
}

id sub_3F130C(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v5 = sub_76A050();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_3F13D8(SEL *a1)
{
  v2 = v1;
  v3 = [v1 *a1];
  v4 = [v2 contentView];
  if (v3)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v5 = sub_76A050();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_3F14B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory(0);
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93D020 != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  v29 = sub_BE38(v28, qword_953C18);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v94 = v29;
  v96 = v31;
  v32 = v30 + 16;
  (v31)(v14);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v93 = v34;
  v34(v14, 0, 1, v28);
  v35 = *(v98 + 13);
  v36 = enum case for DirectionalTextAlignment.none(_:);
  v98 = (v98 + 104);
  v92 = v35;
  (v35)(v97);
  v37 = sub_75BB20();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D038 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v28, qword_953C60);
  v91 = v32;
  v96(v14, v39, v28);
  v40 = v93;
  v93(v14, 0, 1, v28);
  v41 = v97;
  v42 = v10;
  v89 = v33;
  v90 = v10;
  v43 = v92;
  v92(v97, v36, v42);
  v44 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] = sub_75BB10();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] = sub_75BB10();
  v46 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_3F4218();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  v50 = sub_76A050();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageView];
  sub_769FC0();
  sub_75CD00();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  sub_767500();

  sub_75CD10();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  sub_759070();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = sub_769FF0();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel];
  v66 = sub_769FF0();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = sub_76A0A0();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_BD88(&qword_9477F0, qword_780200);
  v85 = swift_allocObject();
  v97 = xmmword_77B6D0;
  *(v85 + 16) = xmmword_77B6D0;
  *(v85 + 32) = sub_767B80();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = sub_7676F0();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();
  swift_unknownObjectRelease();

  return v86;
}

void sub_3F2128()
{
  v1 = v0;
  v180 = type metadata accessor for Accessory(0);
  v2 = *(v180 - 8);
  __chkstk_darwin(v180);
  v170 = (&v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = sub_BD88(&qword_947FE8, &unk_789580);
  __chkstk_darwin(v171);
  *&v172 = &v167 - v4;
  v5 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v5 - 8);
  *&v173 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v167 - v8;
  __chkstk_darwin(v10);
  v12 = &v167 - v11;
  *&v13 = COERCE_DOUBLE(sub_76A920());
  v187 = *(v13 - 8);
  v188 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v189.receiver = v0;
  v189.super_class = v16;
  objc_msgSendSuper2(&v189, "layoutSubviews");
  sub_75D650();
  Width = CGRectGetWidth(v190);
  v18 = [v0 traitCollection];
  LODWORD(v19) = sub_769A00();

  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v183) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v183) = 0;
  }

  v174 = *&v12;
  v22 = sub_759180();
  v23 = v22;
  if (v22)
  {
  }

  v181 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v181 text];
  v26 = v24;
  if (v24)
  {
  }

  v182 = v26;
  v27 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight + 8];
  v185 = v19;
  v186 = v23;
  if (v27)
  {
    v28 = 8.0;
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_16:
    v31 = 0.0;
    goto LABEL_17;
  }

  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v29 = COERCE_DOUBLE(sub_3F4418(v25));
  v31 = 0.0;
  if (v32)
  {
LABEL_17:
    v41 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_18;
  }

  v33 = v29;
  v34 = v30;
  if (v19)
  {
    if (qword_93D028 != -1)
    {
      swift_once();
    }

    v35 = sub_766CA0();
    sub_BE38(v35, qword_953C30);
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    sub_766470();
    v36 = [v19 traitCollection];
    sub_766C70();
    v38 = v37;

    [v19 firstBaselineFromTop];
    v40 = v39;
    (*(*&v187 + 8))(v15, COERCE_DOUBLE(*&v188));
    v41 = v38 - v40;
    LOBYTE(v19) = v185;
  }

  else
  {
    sub_75D650();
    v41 = CGRectGetMidY(v192) + v34 * -0.5;
  }

  sub_75D650();
  MinX = CGRectGetMinX(v193);
  v31 = MinX;
  if ((v19 & 1) == 0)
  {
    v78 = v41;
    v79 = v33;
    v80 = v34;
    Width = Width - (v28 + CGRectGetWidth(*&MinX));
  }

LABEL_18:
  sub_75D650();
  sub_769D20();
  sub_759170();
  v178 = v33;
  v176 = v41;
  v175 = v31;
  if (v19)
  {
    sub_759160();
    MaxY = CGRectGetMaxY(v191);
    if (qword_93D028 != -1)
    {
      swift_once();
    }

    v43 = sub_766CA0();
    sub_BE38(v43, qword_953C30);
    v44 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    sub_766470();
    v45 = [v44 traitCollection];
    sub_766C70();
    v47 = v46;

    [v44 firstBaselineFromTop];
    v49 = v48;
    v50 = *(*&v187 + 8);
    v50(v15, *&v188);
    v51 = MaxY + v47 - v49;
  }

  else
  {
    if (qword_93D028 != -1)
    {
      swift_once();
    }

    v52 = sub_766CA0();
    sub_BE38(v52, qword_953C30);
    v44 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    sub_766470();
    v53 = [v44 traitCollection];
    sub_766C70();
    v55 = v54;

    [v44 firstBaselineFromTop];
    v57 = v56;
    v50 = *(*&v187 + 8);
    v50(v15, *&v188);
    v51 = v55 - v57;
  }

  v184 = v51;
  v58 = &selRef_setTextAlignment_;
  v59 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
  v177 = v34;
  if (v59)
  {
    v60 = 16.0;
    if (LOBYTE(v183))
    {
      goto LABEL_30;
    }

    v183 = 16.0;
LABEL_35:
    LODWORD(v180) = 1;
    v76 = 0.0;
    v173 = 0.0;
    v172 = 0.0;
    v68 = 0.0;
    v75 = v181;
    goto LABEL_60;
  }

  v60 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v183))
  {
    v183 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
    goto LABEL_35;
  }

LABEL_30:
  v169 = v44;
  v61 = *&v1[v20];
  v183 = v60;
  if (!v61)
  {
    LODWORD(v180) = 1;
    v76 = 0.0;
    v173 = 0.0;
    v172 = 0.0;
    v68 = 0.0;
    v44 = v169;
    v75 = v181;
    goto LABEL_60;
  }

  v167 = v50;
  v62 = v61;
  sub_75D650();
  v168 = v62;
  [v62 sizeThatFits:{v63, v64}];
  v66 = v65;
  v68 = v67;
  v69 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v70 = *&v174;
  v71 = v180;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v70, 0, 1, v71);
  v72 = *(v171 + 48);
  v171 = v69;
  v73 = *&v172;
  sub_3F552C(&v1[v69], *&v172);
  sub_3F552C(v70, v73 + v72);
  v74 = *(v2 + 48);
  if (v74(v73, 1, v71) == 1)
  {
    sub_10A2C(v70, &qword_93FF90, qword_77ECE0);
    if (v74(v73 + v72, 1, v71) == 1)
    {
      sub_10A2C(v73, &qword_93FF90, qword_77ECE0);
      v44 = v169;
      v75 = v181;
LABEL_44:
      v84 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_769D60();
      v66 = v85;
      v68 = v86;
      goto LABEL_45;
    }

LABEL_42:
    sub_10A2C(v73, &qword_947FE8, &unk_789580);
    v81 = &selRef_setSpeed_;
    v44 = v169;
    v75 = v181;
    goto LABEL_46;
  }

  sub_3F552C(v73, v9);
  if (v74(v73 + v72, 1, v71) == 1)
  {
    sub_10A2C(*&v174, &qword_93FF90, qword_77ECE0);
    sub_30984(v9);
    goto LABEL_42;
  }

  v82 = v170;
  sub_30920(v73 + v72, v170);
  v83 = sub_4E32FC(v9, v82);
  sub_30984(v82);
  sub_10A2C(*&v174, &qword_93FF90, qword_77ECE0);
  sub_30984(v9);
  sub_10A2C(v73, &qword_93FF90, qword_77ECE0);
  v44 = v169;
  v75 = v181;
  if (v83)
  {
    goto LABEL_44;
  }

LABEL_45:
  v81 = &selRef_setSpeed_;
LABEL_46:
  sub_75D650();
  v76 = CGRectGetMaxX(v194) - v66;
  v87 = *&v173;
  sub_3F552C(&v1[v171], *&v173);
  v88 = v74(v87, 1, v180);
  v181 = v66;
  if (v88 == 1)
  {
    sub_10A2C(v87, &qword_93FF90, qword_77ECE0);
    v50 = v167;
LABEL_50:
    [v1 v81[366]];
    x = v196.origin.x;
    y = v196.origin.y;
    v93 = v196.size.width;
    v94 = v28;
    v95 = v76;
    v96 = Width;
    height = v196.size.height;
    CGRectGetMidX(v196);
    v197.origin.x = x;
    v197.origin.y = y;
    v60 = v183;
    v197.size.width = v93;
    v197.size.height = height;
    Width = v96;
    v76 = v95;
    v28 = v94;
    v90 = round(CGRectGetMidY(v197) + v68 * -0.5);
    goto LABEL_51;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_30984(v87);
  v50 = v167;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  sub_75D650();
  v90 = v184 + CGRectGetMinY(v195);
LABEL_51:
  sub_75D650();
  v98 = CGRectGetWidth(v198);
  if (v181 >= v98)
  {
    v99 = v98;
  }

  else
  {
    v99 = v181;
  }

  sub_75D650();
  sub_769D20();
  v100 = v168;
  [v168 setFrame:?];
  v199.origin.x = v76;
  v199.origin.y = v90;
  v199.size.width = v99;
  v199.size.height = v68;
  Width = Width - (v60 + CGRectGetWidth(v199));
  v101 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v101)
  {
    v102 = v101;
    sub_75D650();
    [v102 sizeThatFits:{v103, v104}];
    v106 = v105;
    v108 = v107;
    v200.origin.x = v76;
    v200.origin.y = v90;
    v200.size.width = v99;
    v200.size.height = v68;
    v181 = CGRectGetMinX(v200);
    [v1 v81[366]];
    v109 = v201.origin.x;
    v110 = v28;
    v111 = Width;
    v112 = v201.origin.y;
    v113 = v201.size.width;
    v114 = v201.size.height;
    CGRectGetMidX(v201);
    v202.origin.x = v109;
    v202.origin.y = v112;
    v115 = v111;
    v28 = v110;
    v202.size.width = v113;
    v202.size.height = v114;
    v116 = round(CGRectGetMidY(v202) + v108 * -0.5);
    sub_75D650();
    v117 = CGRectGetWidth(v203);
    if (v106 >= v117)
    {
      v118 = v117;
    }

    else
    {
      v118 = v106;
    }

    v119 = v183;
    v76 = v181 - v106 - v183;
    sub_75D650();
    sub_769D20();
    v58 = &selRef_setTextAlignment_;
    [v102 setFrame:?];
    v204.origin.x = v76;
    v173 = v116;
    v204.origin.y = v116;
    v172 = v118;
    v204.size.width = v118;
    v204.size.height = v108;
    v120 = CGRectGetWidth(v204);

    LODWORD(v180) = 0;
    Width = v115 - (v119 + v120);
    v68 = v108;
  }

  else
  {
    v172 = v99;
    v173 = v90;

    LODWORD(v180) = 0;
    v58 = &selRef_setTextAlignment_;
  }

LABEL_60:
  v174 = v76;
  v181 = v68;
  sub_75D650();
  [v44 v58[10]];
  v122 = v121;
  v124 = v123;
  v125 = v58;
  if (qword_93D040 != -1)
  {
    swift_once();
  }

  v126 = v186 == 0;
  v127 = sub_766CA0();
  sub_BE38(v127, qword_953C78);
  sub_766470();
  v128 = [*&v75 traitCollection];
  sub_766C70();
  v130 = v129;

  [*&v75 firstBaselineFromTop];
  v132 = v131;
  v50(v15, *&v188);
  v133 = v130 - v132;
  sub_75D650();
  [*&v75 v125[10]];
  v136 = v135;
  v137 = v134;
  v187 = v133;
  v138 = v182;
  if (v182)
  {
    v139 = v124 + v133 + v134;
  }

  else
  {
    v139 = v124;
  }

  sub_75D650();
  v140 = (CGRectGetHeight(v207) - v139) * 0.5;
  v141 = v185;
  if (v185 & 1 | (v140 <= v184))
  {
    v142 = v184;
  }

  else
  {
    v142 = v140;
  }

  if (Width >= v122)
  {
    v143 = v122;
  }

  else
  {
    v143 = Width;
  }

  v188 = Width;
  v179 = v28;
  if ((v126 | v185))
  {
    sub_75D650();
    v144 = CGRectGetMinX(v208);
  }

  else
  {
    v209.origin.x = v175;
    v209.origin.y = v176;
    v209.size.width = v178;
    v209.size.height = v177;
    v144 = v28 + CGRectGetMaxX(v209);
  }

  sub_75D650();
  MinY = CGRectGetMinY(v210);
  v184 = v142;
  v146 = v142 + MinY;
  sub_75D650();
  sub_769D20();
  [v44 setFrame:?];
  if (v138)
  {
    [*&v75 setHidden:0];
    if (v188 < v136)
    {
      v136 = v188;
    }

    v211.origin.x = v144;
    v211.origin.y = v146;
    v147 = v143;
    v211.size.width = v143;
    v211.size.height = v124;
    v148 = CGRectGetMinX(v211);
    [v44 lastBaselineMaxY];
    v150 = v187 + v149;
  }

  else
  {
    v147 = v143;
    [*&v75 setHidden:1];
    v148 = 0.0;
    v150 = 0.0;
    v136 = 0.0;
    v137 = 0.0;
  }

  sub_75D650();
  sub_769D20();
  [*&v75 setFrame:?];
  if (v141)
  {
    v151 = v147;
  }

  else
  {
    v212.origin.x = v148;
    v212.origin.y = v150;
    v212.size.width = v136;
    v212.size.height = v137;
    v152 = CGRectGetWidth(v212);
    v213.origin.x = v144;
    v213.origin.y = v146;
    v151 = v147;
    v213.size.width = v147;
    v213.size.height = v124;
    v153 = CGRectGetWidth(v213);
    if (v152 > v153)
    {
      v153 = v152;
    }

    if (v186)
    {
      v153 = v179 + v153;
    }

    v188 = v188 - v153;
  }

  v154 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel];
  v155 = [v154 text];
  if (v155)
  {
    v156 = v155;
    v157 = sub_769240();
    v159 = v158;

    v160 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v160 = v157 & 0xFFFFFFFFFFFFLL;
    }

    if (v160)
    {
      if (v141)
      {
        v161 = v188;
      }

      else
      {
        v161 = v188 - v183;
      }

      sub_75D650();
      [v154 measurementsWithFitting:v1 in:{v161, CGRectGetHeight(v214)}];
      if (v141)
      {
        v215.origin.x = v144;
        v215.origin.y = v146;
        v215.size.width = v151;
        v215.size.height = v124;
        CGRectGetMinX(v215);
        [v44 lastBaselineMaxY];
      }

      else
      {
        if (v180)
        {
          sub_75D650();
          CGRectGetMaxX(v216);
        }

        else
        {
          v217.origin.x = v174;
          v217.origin.y = v173;
          v217.size.width = v172;
          v217.size.height = v181;
          CGRectGetMinX(v217);
        }

        sub_75D650();
        CGRectGetMinY(v218);
      }

      sub_75D650();
      sub_769D20();
      [v154 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    sub_75D650();
    CGRectGetMinX(v219);
    [v1 bounds];
    CGRectGetMinY(v220);
    sub_75D650();
    CGRectGetWidth(v221);
    v162 = [v1 traitCollection];
    sub_767500();

    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v163 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView];
    sub_75D650();
    sub_769D20();
    [v163 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    sub_75D650();
    CGRectGetMinX(v222);
    [v1 bounds];
    CGRectGetMaxY(v223);
    v164 = [v1 traitCollection];
    sub_767500();

    sub_75D650();
    CGRectGetWidth(v224);
    v165 = [v1 traitCollection];
    sub_767500();

    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v166 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView];
    sub_75D650();
    sub_769D20();
    [v166 setFrame:?];
  }
}

double sub_3F34E8(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v60 - v8);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = sub_759180();
  v22 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    sub_7591E0();
  }

  v23 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = sub_769240();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = sub_769240();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = sub_769240();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_3F552C(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_3F552C(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = sub_769A00();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_3F552C(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_30920(v17, v12);
    sub_4E1514(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_4E32FC(v12, v9);
    sub_30984(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_3F552C(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_30920(v42, v60);
      sub_4E1514(v37);
      sub_30984(v43);
      sub_30984(v12);
      goto LABEL_23;
    }

    sub_30984(v12);
    v39 = v41;
  }

  sub_10A2C(v39, &qword_93FF90, qword_77ECE0);
LABEL_23:
  if ((v65 & 1) == 0 && (sub_769A00() & 1) == 0)
  {
    sub_76A460();
  }

  v65 = v37;
  if (qword_93D020 != -1)
  {
    swift_once();
  }

  v44 = sub_7666D0();
  v45 = sub_BE38(v44, qword_953C18);
  v46 = sub_7653B0();
  v78 = v46;
  v47 = sub_9BA34();
  v79 = v47;
  v48 = sub_B1B4(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  sub_765C30();
  sub_BEB8(v77);
  v63 = v45;
  sub_762CB0();
  if (qword_93D028 != -1)
  {
    swift_once();
  }

  v51 = sub_766CA0();
  sub_BE38(v51, qword_953C30);
  sub_766720();
  if (v75)
  {
    if (qword_93D038 != -1)
    {
      swift_once();
    }

    sub_BE38(v44, qword_953C60);
    v78 = v46;
    v79 = v47;
    v52 = sub_B1B4(v77);
    v50(v52, v49, v46);
    sub_765C30();
    sub_BEB8(v77);
    sub_762CB0();
    if (qword_93D040 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C78);
    sub_766720();
    v53 = v68;
    if (qword_93D048 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C90);
    sub_7666F0();
  }

  else
  {
    if (qword_93D030 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C48);
    sub_7666F0();
    v53 = v68;
  }

  if ((v73 & (v53 != 0)) != 1)
  {
    goto LABEL_50;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v78 = v46;
    v79 = v47;
    v55 = sub_B1B4(v77);
    v50(v55, v49, v46);
    sub_765C30();
    sub_BEB8(v77);
    sub_762CB0();
    if (qword_93D040 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C78);
    sub_766720();
    v56 = v65;
    if (qword_93D048 != -1)
    {
      swift_once();
    }

    sub_BE38(v51, qword_953C90);
    sub_7666F0();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    sub_767500();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    sub_767500();
  }

  else
  {
  }

  sub_10A2C(v74, &qword_93FF90, qword_77ECE0);
  sub_10A2C(v76, &qword_93FF90, qword_77ECE0);
  return v70;
}

BOOL sub_3F4218()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A00();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    sub_769240();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (sub_769A00())
  {

    v13 = 3;
  }

  else
  {
    v14 = sub_76A460();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
  v16 = [v15 numberOfLines];
  v5 = v13 != v16;
  if (v13 != v16)
  {
    [v15 setNumberOfLines:v13];
  }

  if ([v8 numberOfLines] != &dword_0 + 1)
  {
    [v8 setNumberOfLines:1];
    v6 = 1;
    v5 = 1;
    goto LABEL_16;
  }

  return v5;
}

void *sub_3F4418(__n128 a1)
{
  result = sub_759180();
  v3 = result;
  if (result)
  {
    [result size];
    v5 = v4;

    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_7591E0();
      [v6 scaledValueForValue:?];
      v8 = v7;

      v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_7591E0();
      [v9 scaledValueForValue:v10];

      if (v8 <= 56.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 56.0;
      }

      return *&v11;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void sub_3F45F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_BD88(&qword_947FE8, &unk_789580);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_3F552C(a1, v19);
  sub_3F552C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10A2C(v19, &qword_93FF90, qword_77ECE0);
      return;
    }
  }

  else
  {
    sub_3F552C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_30920(v30, v35);
      v32 = sub_4E32FC(v15, v31);
      sub_30984(v31);
      sub_30984(v15);
      sub_10A2C(v19, &qword_93FF90, qword_77ECE0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_30984(v15);
  }

  sub_10A2C(v19, &qword_947FE8, &unk_789580);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_3F552C(v38, v37);
  swift_beginAccess();
  sub_19CD50(v24, &v3[v20]);
  swift_endAccess();
  sub_3F552C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10A2C(v10, &qword_93FF90, qword_77ECE0);
    v25 = 0;
  }

  else
  {
    sub_4E0248(v36);
    v25 = v26;
    sub_30984(v10);
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  if (*&v3[v27])
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      [v34 addTarget:v3 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  [v3 setNeedsLayout];
}

void sub_3F4A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_BD88(&qword_947FE8, &unk_789580);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_3F552C(a1, v19);
  sub_3F552C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10A2C(v19, &qword_93FF90, qword_77ECE0);
      return;
    }
  }

  else
  {
    sub_3F552C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_30920(v30, v34);
      v32 = sub_4E32FC(v15, v31);
      sub_30984(v31);
      sub_30984(v15);
      sub_10A2C(v19, &qword_93FF90, qword_77ECE0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_30984(v15);
  }

  sub_10A2C(v19, &qword_947FE8, &unk_789580);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_3F552C(v37, v36);
  swift_beginAccess();
  sub_19CD50(v24, &v3[v20]);
  swift_endAccess();
  sub_3F552C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10A2C(v10, &qword_93FF90, qword_77ECE0);
    v25 = 0;
  }

  else
  {
    sub_4E0248(v35);
    v25 = v26;
    sub_30984(v10);
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  [v3 setNeedsLayout];
}

double sub_3F4EE0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v22.receiver = v0;
  v22.super_class = v5;
  objc_msgSendSuper2(&v22, "prepareForReuse");
  sub_759190();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_3F4218())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_19CD50(v4, &v1[v11]);
  swift_endAccess();
  sub_3F559C(0);
  v12 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction];
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction + 8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_F704(v14, v15);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v16 = sub_769FD0();
  [v7 setTextColor:v16];

  v17 = sub_769FF0();
  [v9 setTextColor:v17];

  v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  return result;
}

id sub_3F5264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell(uint64_t a1)
{
  result = qword_953D38;
  if (!qword_953D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3F542C(uint64_t a1)
{
  sub_341D08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_3F552C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FF90, qword_77ECE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_3F559C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }

  if (*&v1[v3])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_3F5680()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory(0);
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView(0);
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_7570A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_953D48, &qword_79BD88);
  v9 = sub_768F90();
  sub_75A260();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_3F5C44(v4);
    sub_3F5CAC();
    swift_allocError();
    *v10 = 0;
    sub_768F50();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_75A250() & 1) == 0)
  {
    sub_3F5CAC();
    swift_allocError();
    *v19 = 1;
    sub_768F50();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  sub_757040(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_3F60BC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151A34;
  aBlock[3] = &unk_890AA0;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_3F5C44(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FD30, qword_77F240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3F5CAC()
{
  result = qword_953D50;
  if (!qword_953D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953D50);
  }

  return result;
}

uint64_t sub_3F5D00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3F5D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_768380();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7683C0();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_768F50();
  }

  else
  {
    v26 = v15;
    sub_12EA98();
    v25 = v11;
    v24 = sub_769970();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_3F641C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_890C10;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_3F6428(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350, &unk_77F850);
    sub_4C874();
    sub_76A5A0();
    v22 = v24;
    sub_769980();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

uint64_t sub_3F6074()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_3F60C8(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_3F6470(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  sub_768F60();
  sub_B3204(v7, v4);
  sub_B3204(v7, v4);
}

double sub_3F61A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3F6260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_3F62BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_3F6378()
{
  result = qword_953E10;
  if (!qword_953E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E10);
  }

  return result;
}

uint64_t sub_3F63CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3F6428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3F6470(uint64_t a1, void *a2)
{
  v3 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_7570A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A260();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_3F5C44(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((sub_75A250() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  sub_757040(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_87F018, v23), vceqq_s64(unk_87F028, v23)), vuzp1q_s32(vceqq_s64(xmmword_87F038, v23), vceqq_s64(unk_87F048, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_87F058, v23), vceqq_s64(unk_87F068, v23)), vuzp1q_s32(vceqq_s64(xmmword_87F078, v23), vceqq_s64(unk_87F088, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      sub_757060();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_50774(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_3F5C44(v8);
  return v29;
}

void *CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_757CA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757AA0();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v77 - v11;
  v12 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v12 - 8);
  v90 = &v77 - v13;
  v89 = sub_7623A0();
  v84 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9457F0, qword_783FD0);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v17 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = sub_BD88(&unk_95F4E0, &unk_790C40);
  __chkstk_darwin(v19 - 8);
  v82 = &v77 - v20;
  v21 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v27 - 8);
  v29 = &v77 - v28;
  sub_757D20();
  sub_3FAA54(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  if (*&v95[0])
  {
    v78 = v8;
    v79 = v7;
    v80 = v5;
    v81 = v4;
    v31 = sub_757D10();

    v32 = sub_757B60();
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "inAppDescription";
    if (v32)
    {
      v34 = "ultType.Heading.InAppPurchase";
      v35._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v35._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v35._object = (v34 | 0x8000000000000000);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_75B750(v35, v98);
    v36 = sub_769210();

    [v33 setText:v36];

    v37 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel];

    sub_764EF0();
    if (v38)
    {
      v39 = sub_769210();
    }

    else
    {
      v39 = 0;
    }

    [v37 setText:v39];

    v40 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel];
    sub_757B70();
    if (v41)
    {
      v42 = sub_769210();
    }

    else
    {
      v42 = 0;
    }

    [v40 setText:v42];

    v43 = v3;
    sub_10777C();
    if (sub_764EC0())
    {
      v44 = enum case for OfferStyle.white(_:);
      v45 = sub_758C70();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v29, v44, v45);
      (*(v46 + 56))(v29, 0, 1, v45);
      v43 = v3;
      v47 = sub_75BD30();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
      v48 = sub_765870();
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v49 = sub_75B490();
      v50 = v82;
      (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
      memset(v95, 0, 32);
      v51 = sub_75FE10();

      sub_10A2C(v95, &unk_93FBD0, &qword_77DFA0);
      sub_10A2C(v50, &unk_95F4E0, &unk_790C40);
      sub_10A2C(v23, &unk_9457D0, &unk_785630);
      sub_10A2C(v26, &unk_9457E0, &qword_785640);
      sub_10A2C(v29, &unk_94A780, &unk_788DC0);
    }

    else
    {
      v51 = 0;
    }

    v82 = v51;
    v77 = v43;
    v52 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton];
    v53 = sub_764DB0();

    v54 = sub_BD88(&unk_948740, &unk_784920);
    v55 = v83;
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    v56 = v84;
    v57 = v89;
    (*(v84 + 104))(v85, enum case for OfferButtonSubtitlePosition.right(_:), v89);
    (*(v56 + 56))(v90, 1, 1, v57);
    sub_3FAA54(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v58 = v86;
    sub_760940();
    sub_1DFEBC(v51, v53, 0, v55, v58, v91, 0, 0);

    (*(v87 + 8))(v58, v88);
    sub_10A2C(v55, &unk_948730, &qword_788DD0);
    [v52 setHidden:0];
    sub_75A110();
    sub_768900();
    sub_768ED0();
    v59 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v60 = *&v95[0];
    v96.value.super.isa = 0;
    v96.is_nil = 0;
    sub_7591D0(v96, v61);
    v97.value.super.isa = 0;
    v97.is_nil = 0;
    sub_7591D0(v97, v62);
    sub_759210();
    sub_3FAA54(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A0C0();
    v91 = v60;
    sub_75A0C0();
    if (qword_93C360 != -1)
    {
      swift_once();
    }

    v90 = qword_99AF48;
    v63 = v93;
    sub_757B80();
    v64 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    v65 = v94;
    v66 = v78;
    (*(v94 + 24))(&v59[v64], v63, v78);
    swift_endAccess();
    v89 = *(v65 + 16);
    v67 = v92;
    (v89)(v92, &v59[v64], v66);
    sub_244454(v67);
    v68 = *(v65 + 8);
    v68(v67, v66);
    v68(v63, v66);
    [v59 setBackgroundColor:v90];
    sub_6A9BFC(93.0, 93.0, v31, v59, v91);
    (v89)(v63, &v59[v64], v66);
    sub_244454(v63);
    v68(v63, v66);
    [v59 setNeedsLayout];
    [v59 setHidden:0];
    v69 = v80;
    v70 = &v59[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_metrics];
    v71 = v79;
    v72 = v81;
    (*(v80 + 16))(v79, v70, v81);
    sub_757C50();
    v74 = v73;
    sub_757C90();
    v76 = v77;
    *&v77[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_tileOffset] = v74 + v75;
    [v76 setNeedsLayout];

    return (*(v69 + 8))(v71, v72);
  }

  return result;
}

double CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_134D8(a1, v6);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_757D20();
  if (swift_dynamicCast())
  {
    v5 = sub_757D10();

    sub_6A9BFC(93.0, 93.0, v5, *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_7591D0(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v3);
  sub_759210();
  sub_3FAA54(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
  return sub_75A0C0();
}

double static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  sub_757D20();
  sub_3FAA54(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (v3)
  {
    sub_757D10();
    v1 = sub_6AA1DC(93.0, 93.0);

    v2._rawValue = v1;
    sub_75A070(v2);
  }

  return result;
}

double sub_3F787C(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v139 = a3;
  v154 = a1;
  v138 = sub_766E60();
  v158 = *(v138 - 8);
  __chkstk_darwin(v138);
  v124 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_766E50();
  v157 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_766E00();
  v156 = *(v137 - 8);
  __chkstk_darwin(v137);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_766EA0();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v125 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75D850();
  v132 = *(v11 - 8);
  v133 = v11;
  __chkstk_darwin(v11);
  v140 = (&v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v131 = &v112 - v14;
  v153 = sub_762D10();
  v155 = *(v153 - 8);
  __chkstk_darwin(v153);
  v146 = (&v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_7664A0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_757CA0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  sub_757C60();
  (*(v21 + 8))(v23, v20);
  v136 = sub_7670D0();
  swift_allocObject();
  v130 = sub_7670B0();
  v159 = a2;
  sub_7578F0();
  LODWORD(v152) = enum case for FontSource.useCase(_:);
  v24 = *(v17 + 104);
  v150 = v17 + 104;
  v151 = v24;
  v142 = v16;
  v24(v19);
  v25 = v139;
  v26.super.isa = v139;
  v27.super.isa = sub_766490(v26).super.isa;
  v28 = *(v17 + 8);
  v148 = v17 + 8;
  v149 = v28;
  v28(v19, v16);
  v29 = sub_757B60();
  v30 = "inAppDescription";
  if (v29)
  {
    v30 = "ultType.Heading.InAppPurchase";
    v31._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v31._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v31._object = (v30 | 0x8000000000000000);
  v179._countAndFlagsBits = 0;
  v179._object = 0xE000000000000000;
  sub_75B750(v31, v179);
  v141 = v32;
  v33 = v27.super.isa;
  sub_757970();
  v34 = sub_7653B0();
  v177 = v34;
  v147 = sub_3FAA54(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v178 = v147;
  v35 = sub_B1B4(v176);
  LODWORD(v144) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = *(v34 - 8);
  v143 = *(v36 + 104);
  v145 = (v36 + 104);
  v143(v35);
  sub_765C30();
  sub_BEB8(v176);
  v37 = v146;
  v120 = v33;
  sub_762D00();
  sub_762CE0();
  v141 = *(v155 + 8);
  v155 += 8;
  v38 = v37;
  v39 = v153;
  (v141)(v38, v153);
  sub_7579D0();
  v40 = v142;
  v151(v19, v152, v142);
  v41.super.isa = v25;
  isa = sub_766490(v41).super.isa;
  v149(v19, v40);
  sub_764EF0();
  v43 = isa;
  sub_757960();
  v174 = v34;
  v175 = v147;
  v44 = sub_B1B4(v173);
  (v143)(v44, v144, v34);
  sub_765C30();
  sub_BEB8(v173);
  v45 = v146;
  v119 = v43;
  sub_762D00();
  sub_762CE0();
  (v141)(v45, v39);
  sub_757910();
  v46 = v142;
  v151(v19, v152, v142);
  v47 = v139;
  v48.super.isa = v139;
  v49 = sub_766490(v48).super.isa;
  v149(v19, v46);
  sub_757B70();
  v50 = v49;
  v51.super.isa = v47;
  sub_7579C0(v51);
  v171 = v34;
  v172 = v147;
  v52 = sub_B1B4(v170);
  (v143)(v52, v144, v34);
  sub_765C30();
  sub_BEB8(v170);
  v118 = v50;
  sub_762D00();
  sub_762CE0();
  (v141)(v45, v153);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v53 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v53 = qword_946938;
  }

  v54 = v133;
  v55 = sub_BE38(v133, v53);
  v56 = v132;
  v57 = v140;
  (*(v132 + 16))(v140, v55, v54);
  (*(v56 + 32))(v131, v57, v54);
  sub_75D800();
  sub_75D830();
  v58 = v136;
  swift_allocObject();
  v59 = sub_7670B0();
  v169[4] = &protocol witness table for LayoutViewPlaceholder;
  v169[3] = v58;
  v169[0] = v130;
  v168[4] = &protocol witness table for LayoutViewPlaceholder;
  v168[3] = v58;
  v168[0] = v59;
  v117 = v59;
  sub_BD88(&qword_93F458, &unk_77E270);
  v60 = *(sub_766E90() - 8);
  v129 = *(v60 + 72);
  v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v115 = 4 * v129;
  v62 = swift_allocObject();
  v116 = v62;
  *(v62 + 16) = xmmword_784250;
  v63 = v62 + v61;

  sub_7578E0();
  v166 = &type metadata for CGFloat;
  v167 = &protocol witness table for CGFloat;
  v165[0] = v64;
  sub_7579A0();
  v114 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v65 = v156;
  v66 = *(v156 + 104);
  v136 = v156 + 104;
  v140 = v66;
  v67 = v121;
  v66();
  v68 = sub_BD88(&unk_960ED0, &qword_784ED0);
  v69 = *(v157 + 72);
  v141 = *(v157 + 80);
  v142 = v68;
  v70 = v157;
  v134 = (v141 + 32) & ~v141;
  v154 = 2 * v69;
  v155 = 3 * v69;
  v153 = v69;
  v71 = swift_allocObject();
  v152 = xmmword_77DC20;
  *(v71 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v161 = v71;
  v150 = sub_3FAA54(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v149 = sub_BD88(&unk_960EE0, &unk_77E260);
  v151 = sub_1EDC8();
  v73 = v122;
  v72 = v123;
  sub_76A5A0();
  LODWORD(v148) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v158;
  v146 = *(v158 + 104);
  v147 = v158 + 104;
  v75 = v124;
  v76 = v138;
  v146(v124);
  v135 = v63;
  sub_766E80();
  v77 = *(v74 + 8);
  v158 = v74 + 8;
  v145 = v77;
  v77(v75, v76);
  v78 = *(v70 + 8);
  v157 = v70 + 8;
  v144 = v78;
  v78(v73, v72);
  v79 = *(v65 + 8);
  v156 = v65 + 8;
  v143 = v79;
  (v79)(v67, v137);
  sub_10A2C(v164, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v165);
  v80 = v177;
  v81 = v178;
  v82 = sub_B170(v176, v177);
  v166 = v80;
  v167 = *(v81 + 8);
  v83 = sub_B1B4(v165);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_757940();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v128 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v140)(v67);
  v84 = swift_allocObject();
  *(v84 + 16) = v152;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v160 = v84;
  sub_76A5A0();
  v85 = v138;
  (v146)(v75, v148, v138);
  v86 = v129;
  sub_766E80();
  v87 = v85;
  v145(v75, v85);
  v144(v73, v72);
  v88 = v137;
  (v143)(v67, v137);
  sub_10A2C(&v161, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v164);
  sub_BEB8(v165);
  v113 = 2 * v86;
  v89 = v174;
  v90 = v175;
  v91 = sub_B170(v173, v174);
  v166 = v89;
  v167 = *(v90 + 8);
  v92 = sub_B1B4(v165);
  (*(*(v89 - 8) + 16))(v92, v91, v89);
  sub_757930();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  (v140)(v67, v128, v88);
  v93 = swift_allocObject();
  *(v93 + 16) = v152;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v160 = v93;
  sub_76A5A0();
  (v146)(v75, v148, v87);
  v94 = v113;
  sub_766E80();
  v145(v75, v87);
  v144(v73, v72);
  v95 = v88;
  (v143)(v67, v88);
  sub_10A2C(&v161, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v164);
  sub_BEB8(v165);
  v129 += v94;
  v96 = v171;
  v97 = v172;
  v98 = sub_B170(v170, v171);
  v166 = v96;
  v167 = *(v97 + 8);
  v99 = sub_B1B4(v165);
  (*(*(v96 - 8) + 16))(v99, v98, v96);
  sub_757950();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  (v140)(v67, v128, v88);
  v100 = swift_allocObject();
  *(v100 + 16) = v152;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v160 = v100;
  sub_76A5A0();
  v101 = v138;
  (v146)(v75, v148, v138);
  sub_766E80();
  v145(v75, v101);
  v144(v73, v72);
  (v143)(v67, v95);
  sub_10A2C(&v161, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v164);
  sub_BEB8(v165);
  sub_7579A0();
  memset(v164, 0, sizeof(v164));
  (v140)(v67, v114, v95);
  v102 = swift_allocObject();
  *(v102 + 16) = v152;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v161 = v102;
  sub_76A5A0();
  (v146)(v75, v148, v101);
  sub_766E80();
  v145(v75, v101);
  v144(v73, v72);
  (v143)(v67, v95);
  sub_10A2C(v164, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v165);
  v103 = v125;
  sub_766E70();
  sub_BEB8(v168);
  sub_BEB8(v169);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_77D9F0;
  v105 = v139;
  *(v104 + 32) = v139;
  v106 = v105;
  v107 = sub_7671E0();
  v108 = v127;
  sub_7665A0();
  v110 = v109;

  (*(v126 + 8))(v103, v108);
  (*(v132 + 8))(v131, v133);
  sub_BEB8(v170);
  sub_BEB8(v173);
  sub_BEB8(v176);
  return v110;
}

double sub_3F8DA4(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v172 = a3;
  v176 = a1;
  v148 = sub_7670F0();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v128 - v9;
  v145 = sub_766EA0();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v160 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_766E60();
  v183 = *(v181 - 8);
  __chkstk_darwin(v181);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_766E50();
  v184 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_766E00();
  v182 = *(v178 - 8);
  __chkstk_darwin(v178);
  v135 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_767120();
  v141 = *(v14 - 8);
  v142 = v14;
  __chkstk_darwin(v14);
  v140 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75D850();
  v158 = *(v16 - 8);
  v159 = v16;
  __chkstk_darwin(v16);
  v163 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v157 = &v128 - v19;
  v177 = sub_762D10();
  *&v180 = *(v177 - 8);
  __chkstk_darwin(v177);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7664A0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_757CA0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  sub_757C60();
  (*(v27 + 8))(v29, v26);
  v155 = sub_7670D0();
  swift_allocObject();
  v156 = sub_7670B0();
  sub_7578F0();
  LODWORD(v175) = enum case for FontSource.useCase(_:);
  v30 = *(v23 + 104);
  v173 = v23 + 104;
  *&v174 = v30;
  v164 = v22;
  v30(v25);
  v31.super.isa = a3;
  v32.super.isa = sub_766490(v31).super.isa;
  v33 = *(v23 + 8);
  v170 = v23 + 8;
  v171 = v33;
  v33(v25, v22);
  v34 = sub_757B60();
  v35 = "inAppDescription";
  if (v34)
  {
    v35 = "ultType.Heading.InAppPurchase";
    v36._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v36._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v36._object = (v35 | 0x8000000000000000);
  v211._countAndFlagsBits = 0;
  v211._object = 0xE000000000000000;
  v165 = sub_75B750(v36, v211);
  v37 = v32.super.isa;
  sub_757970();
  v38 = sub_7653B0();
  v209 = v38;
  v169 = sub_3FAA54(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v210 = v169;
  v39 = sub_B1B4(v208);
  LODWORD(v167) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v40 = *(v38 - 8);
  v166 = *(v40 + 104);
  v168 = v40 + 104;
  v166(v39);
  sub_765C30();
  sub_BEB8(v208);
  v162 = v21;
  v139 = v37;
  sub_762D00();
  sub_762CE0();
  v41 = *(v180 + 8);
  *&v180 = v180 + 8;
  v165 = v41;
  v42 = v21;
  v43 = v177;
  v41(v42, v177);
  v179 = a2;
  sub_7579D0();
  v44 = v164;
  (v174)(v25, v175, v164);
  v45.super.isa = v172;
  isa = sub_766490(v45).super.isa;
  v171(v25, v44);
  sub_764EF0();
  v47 = isa;
  sub_757960();
  v206 = v38;
  v207 = v169;
  v48 = sub_B1B4(v205);
  (v166)(v48, v167, v38);
  sub_765C30();
  sub_BEB8(v205);
  v49 = v162;
  v134 = v47;
  sub_762D00();
  sub_762CE0();
  v165(v49, v43);
  sub_757910();
  v50 = v164;
  (v174)(v25, v175, v164);
  v51 = v172;
  v52.super.isa = v172;
  v53 = sub_766490(v52).super.isa;
  v171(v25, v50);
  sub_757B70();
  v54 = v53;
  v55.super.isa = v51;
  sub_7579C0(v55);
  v203 = v38;
  v204 = v169;
  v56 = sub_B1B4(v202);
  (v166)(v56, v167, v38);
  sub_765C30();
  sub_BEB8(v202);
  v133 = v54;
  sub_762D00();
  sub_762CE0();
  v165(v49, v177);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v57 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v57 = qword_946938;
  }

  v58 = v159;
  v59 = sub_BE38(v159, v57);
  v60 = v158;
  v61 = v163;
  (*(v158 + 16))(v163, v59, v58);
  (*(v60 + 32))(v157, v61, v58);
  sub_75D800();
  sub_75D830();
  v62 = v155;
  swift_allocObject();
  v132 = sub_7670B0();
  v201[5] = v156;
  v201[4] = &protocol witness table for LayoutViewPlaceholder;
  v201[3] = v62;
  v201[0] = v132;

  sub_757920();
  sub_B170(v198, v199);
  sub_766710();
  sub_7578E0();
  v153 = sub_7671D0();
  v154 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v63 = swift_allocObject();
  v180 = xmmword_77D9F0;
  *(v63 + 16) = xmmword_77D9F0;
  *(v63 + 32) = v51;
  v131 = v51;
  v64 = sub_7671E0();
  sub_765C20();

  sub_BEB8(v198);
  sub_BD88(&qword_93F458, &unk_77E270);
  v65 = *(sub_766E90() - 8);
  v151 = *(v65 + 72);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  v130 = v67;
  *(v67 + 16) = xmmword_782440;
  v166 = (v67 + v66);
  sub_B170(v208, v209);
  sub_766560();
  sub_757940();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  LODWORD(v152) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v68 = v182;
  v69 = *(v182 + 104);
  v150 = v182 + 104;
  v161 = v69;
  v70 = v135;
  v69(v135);
  v71 = sub_BD88(&unk_960ED0, &qword_784ED0);
  v72 = *(v184 + 72);
  v162 = *(v184 + 80);
  v163 = v71;
  v149 = (v162 + 32) & ~v162;
  v176 = 2 * v72;
  v177 = 3 * v72;
  v175 = v72;
  v73 = swift_allocObject();
  v174 = xmmword_77DC20;
  *(v73 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v189 = v73;
  v172 = sub_3FAA54(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v171 = sub_BD88(&unk_960EE0, &unk_77E260);
  v173 = sub_1EDC8();
  v74 = v136;
  v75 = v137;
  sub_76A5A0();
  LODWORD(v170) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v76 = v183;
  v77 = *(v183 + 104);
  v168 = v183 + 104;
  v169 = v77;
  v78 = v138;
  v79 = v181;
  v77(v138);
  sub_766E80();
  v80 = *(v76 + 8);
  v183 = v76 + 8;
  v167 = v80;
  v80(v78, v79);
  v81 = *(v184 + 8);
  v184 += 8;
  v165 = v81;
  v81(v74, v75);
  v82 = *(v68 + 8);
  v182 = v68 + 8;
  v164 = v82;
  v83 = v178;
  v82(v70, v178);
  sub_10A2C(&v192, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v195);
  sub_BEB8(v198);
  v84 = v206;
  v85 = v207;
  v86 = sub_B170(v205, v206);
  v199 = v84;
  v200 = v85[1];
  v87 = sub_B1B4(v198);
  (*(*(v84 - 8) + 16))(v87, v86, v84);
  sub_757930();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v161(v70, v152, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v174;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v189 = v88;
  sub_76A5A0();
  v89 = v181;
  v169(v78, v170, v181);
  v90 = v151;
  sub_766E80();
  v167(v78, v89);
  v165(v74, v75);
  v91 = v70;
  v164(v70, v83);
  sub_10A2C(&v192, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v195);
  sub_BEB8(v198);
  v129 = 2 * v90;
  v92 = v203;
  v93 = v204;
  v94 = sub_B170(v202, v203);
  v199 = v92;
  v200 = v93[1];
  v95 = sub_B1B4(v198);
  (*(*(v92 - 8) + 16))(v95, v94, v92);
  sub_757950();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v161(v70, v152, v83);
  v96 = swift_allocObject();
  *(v96 + 16) = v174;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v189 = v96;
  sub_76A5A0();
  v97 = v181;
  v169(v78, v170, v181);
  v98 = v129;
  sub_766E80();
  v167(v78, v97);
  v165(v74, v75);
  v99 = v178;
  v164(v91, v178);
  sub_10A2C(&v192, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v195);
  sub_BEB8(v198);
  v152 = v98 + v151;
  sub_757980();
  sub_7578E0();
  v196 = &type metadata for CGFloat;
  v197 = &protocol witness table for CGFloat;
  v195[0] = v100;
  v161(v91, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v99);
  v101 = swift_allocObject();
  *(v101 + 16) = v174;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v192 = v101;
  sub_76A5A0();
  v102 = v181;
  v169(v78, v170, v181);
  sub_766E80();
  v167(v78, v102);
  v165(v74, v75);
  v164(v91, v99);
  sub_BEB8(v198);
  sub_10A2C(v195, &unk_93F9C0, &qword_77EDB0);
  v103 = v160;
  sub_766E70();
  sub_7578E0();
  v104 = swift_allocObject();
  *(v104 + 16) = v180;
  v105 = v131;
  *(v104 + 32) = v131;
  v106 = v105;
  v107 = sub_7671E0();
  sub_765C20();

  sub_7578E0();
  v108 = swift_allocObject();
  *(v108 + 16) = v180;
  *(v108 + 32) = v106;
  v109 = v106;
  v110 = sub_7671E0();
  sub_765C20();

  sub_7578E0();
  v111 = swift_allocObject();
  *(v111 + 16) = v180;
  *(v111 + 32) = v109;
  v112 = v109;
  v113 = sub_7671E0();
  sub_765C20();

  sub_7579B0();
  sub_B170(v198, v199);
  sub_766710();
  sub_BEB8(v198);
  sub_766560();
  v114 = v145;
  v196 = v145;
  v197 = &protocol witness table for VerticalFlowLayout;
  v115 = sub_B1B4(v195);
  v116 = v143;
  (*(v143 + 16))(v115, v103, v114);
  sub_134D8(v198, &v192);
  v191 = &protocol witness table for Double;
  v190 = &type metadata for Double;
  v189 = 0;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v117 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v118 = *(v146 + 104);
  v119 = v148;
  v118(v144, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v148);
  v185[3] = sub_766970();
  v185[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v185);
  sub_766960();
  v118(v147, v117, v119);
  v120 = v140;
  sub_767110();
  sub_BEB8(v198);
  (*(v116 + 8))(v160, v114);

  sub_BEB8(v201);
  v121 = swift_allocObject();
  *(v121 + 16) = v180;
  *(v121 + 32) = v112;
  v122 = v112;
  v123 = sub_7671E0();
  sub_3FAA54(&qword_953E18, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
  v124 = v142;
  sub_7665A0();
  v126 = v125;

  (*(v141 + 8))(v120, v124);
  (*(v158 + 8))(v157, v159);
  sub_BEB8(v202);
  sub_BEB8(v205);
  sub_BEB8(v208);
  return v126;
}

double _s18ASMessagesProvider33CondensedInAppPurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0E8StoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_757CA0();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7579E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_75DAB0();
  __chkstk_darwin(v10 - 8);
  v28 = sub_7656C0();
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757D20();
  sub_3FAA54(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v3;
  v14 = sub_757D10();

  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  _s18ASMessagesProvider33CondensedInAppPurchaseContentViewC7metrics0E8StoreKit0c6SearchdeF10CardLayoutV7MetricsVvpfi_0();
  swift_getKeyPath();
  sub_75C7B0();

  v15 = v29;
  sub_765630();
  v17 = v16;
  v19 = v18;
  if (sub_769A00())
  {
    sub_757C20();
    sub_757C50();
    sub_757C90();
    sub_757990();
    v20 = sub_3F787C(v14, v6, v15, v17, v19);

    v21 = *(v4 + 8);
    v22 = v25;
    v21(v6, v25);
    (*(v26 + 8))(v2, v27);
    v21(v9, v22);
  }

  else
  {
    v20 = sub_3F8DA4(v14, v9, v15, v17, v19);

    (*(v4 + 8))(v9, v25);
  }

  (*(v11 + 8))(v13, v28);
  return v20;
}

uint64_t sub_3FAA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_3FAA9C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = 0;

  sub_4DA5B8();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v3);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_4DA5B8();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell(uint64_t a1)
{
  result = qword_953E50;
  if (!qword_953E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3FAE4C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}