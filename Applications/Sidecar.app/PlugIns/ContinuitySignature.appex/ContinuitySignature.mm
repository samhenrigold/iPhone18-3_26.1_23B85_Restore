id sub_100001518(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_100003BFC();

  v4 = [v2 initWithTitle:v3];

  return v4;
}

void sub_1000015A4()
{
  v105.receiver = v0;
  v105.super_class = type metadata accessor for SignatureViewController();
  super_class = v105.super_class;
  objc_msgSendSuper2(&v105, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR___SignatureViewController_signatureView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v4 labelColor];
    [v3 setStrokeColor:v6];

    [v2 insertSubview:v3 atIndex:0];
    v7 = [v3 leftAnchor];
    v8 = [v2 leftAnchor];
    v9 = sub_100003AE4();
    v11 = [v9 v10];

    sub_100003B0C();
    v12 = [v3 rightAnchor];
    v13 = sub_100003A64([v2 rightAnchor]);

    sub_100003B0C();
    v14 = [v3 topAnchor];
    v15 = sub_100003A64([v2 topAnchor]);

    sub_100003B0C();
    v16 = [v3 bottomAnchor];
    v17 = sub_100003A64([v2 bottomAnchor]);

    sub_100003B0C();
    v18 = *&v0[OBJC_IVAR___SignatureViewController_lineView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v4 clearColor];
    [v18 setBackgroundColor:v19];

    v101 = v3;
    [v2 insertSubview:v18 aboveSubview:v3];
    v20 = [v18 leftAnchor];
    v21 = sub_100003A64([v2 leftAnchor]);

    sub_100003B28();
    v22 = [v18 rightAnchor];
    v23 = sub_100003A64([v2 rightAnchor]);

    sub_100003B28();
    v24 = [v18 bottomAnchor];
    v25 = [v2 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-60.0];

    sub_100003B28();
    v27 = [v18 heightAnchor];
    v28 = [v27 constraintEqualToConstant:30.0];

    [v28 setActive:1];
    v29 = sub_100003A84(objc_allocWithZone(UILabel), "initWithFrame:");
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [objc_opt_self() systemFontOfSize:12.0];
    [v29 setFont:v30];

    [v29 setTextAlignment:1];
    v31 = [v4 secondaryLabelColor];
    [v29 setTextColor:v31];

    v32 = [v4 clearColor];
    [v29 setBackgroundColor:v32];

    v99 = objc_opt_self();
    v33 = [v99 mainBundle];
    v96._countAndFlagsBits = 0xE000000000000000;
    sub_100003B5C();
    v34 = sub_100003B9C(v108, v110, v106, v112, 0, v96);
    v36 = v35;

    sub_10000393C(v34, v36, v29);
    [v2 addSubview:v29];
    v37 = [v29 leftAnchor];
    v38 = [v2 leftAnchor];
    v39 = sub_100003AE4();
    v41 = [v39 v40];

    sub_100003AF0();
    v42 = [v29 rightAnchor];
    v43 = [v2 rightAnchor];
    v44 = sub_100003AE4();
    v46 = [v44 v45];

    sub_100003AF0();
    v47 = [v29 topAnchor];

    v48 = [v18 bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

    sub_100003B28();
    v50 = *&v0[OBJC_IVAR___SignatureViewController_navBar];
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addSubview:v50];
    v51 = [v50 leftAnchor];
    v52 = [v2 leftAnchor];
    v53 = sub_100003AE4();
    v55 = [v53 v54];

    sub_100003AF0();
    v56 = [v50 rightAnchor];
    v57 = [v2 rightAnchor];
    v58 = sub_100003AE4();
    v60 = [v58 v59];

    sub_100003AF0();
    v61 = [v50 topAnchor];
    v100 = v2;
    v62 = [v2 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:0.0];

    sub_100003AF0();
    v64 = sub_100003080(&qword_10000C638, &qword_100004288);
    v65 = sub_100003B44(v64);
    *(v65 + 16) = xmmword_1000041E0;
    v66 = *&v0[OBJC_IVAR___SignatureViewController_titleItem];
    *(v65 + 32) = v66;
    v98 = v66;
    sub_1000039A0(v65, v50, &qword_10000C670, UINavigationItem_ptr, &selRef_setItems_);
    *(&v104 + 1) = super_class;
    *&v103 = v0;
    v67 = objc_allocWithZone(UIBarButtonItem);
    v68 = v0;
    v69 = sub_100003100(1, &v103, "_cancelWithSender:");
    v70 = [v99 mainBundle];
    v97._countAndFlagsBits = 0xEC000000656C7469;
    sub_100003B5C();
    v72 = sub_100003B9C(v109, v111, v107, v113, v71, v97);
    v74 = v73;

    *(&v104 + 1) = super_class;
    *&v103 = v68;
    v75 = objc_allocWithZone(UIBarButtonItem);
    v76 = v68;
    v77 = sub_100003258(v72, v74, 0, &v103, "_clearWithSender:");
    *(&v104 + 1) = super_class;
    *&v103 = v76;
    v78 = objc_allocWithZone(UIBarButtonItem);
    v79 = v76;
    v80 = sub_100003100(0, &v103, "_doneWithSender:");
    v103 = 0u;
    v104 = 0u;
    v81 = objc_allocWithZone(UIBarButtonItem);
    v82 = sub_100003100(6, &v103, 0);
    [v82 setWidth:27.0];
    v83 = [v79 presentationController];
    if (v83 && (v84 = v83, v85 = [v83 presentationStyle], v84, v85 == 7))
    {
      v86 = sub_100003B44(v64);
      *(v86 + 16) = xmmword_1000041E0;
      *(v86 + 32) = v77;
      v87 = v77;
      v88 = v98;
      sub_1000039A0(v86, v98, &unk_10000C680, UIBarButtonItem_ptr, &selRef_setLeftBarButtonItems_);
      v89 = sub_100003B44(v64);
      *(v89 + 16) = xmmword_1000041E0;
      *(v89 + 32) = v80;
      v90 = v80;
    }

    else
    {
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1000041F0;
      *(v91 + 32) = v69;
      *(v91 + 40) = v82;
      v92 = v69;
      v90 = v82;
      v88 = v98;
      sub_1000039A0(v91, v98, &unk_10000C680, UIBarButtonItem_ptr, &selRef_setLeftBarButtonItems_);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100004200;
      *(v89 + 32) = v77;
      *(v89 + 40) = v90;
      *(v89 + 48) = v80;
      v93 = v77;
      v94 = v80;
    }

    v95 = v90;
    sub_1000039A0(v89, v88, &unk_10000C680, UIBarButtonItem_ptr, &selRef_setRightBarButtonItems_);
    [v101 setLiveDelegate:v79];
    [v79 sidecarServiceUpdateSupportedOrientations];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000021FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100003CBC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100003CAC();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      if ([v4 objectValue])
      {
        sub_100003C5C();
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = 0u;
        v8 = 0u;
      }

      v9[0] = v7;
      v9[1] = v8;
      if (*(&v8 + 1))
      {
        sub_100003080(&qword_10000C678, qword_1000042A0);
        if (swift_dynamicCast())
        {
          sub_1000023E0(v6);
        }

        else
        {
        }
      }

      else
      {

        sub_10000355C(v9);
      }
    }
  }
}

uint64_t sub_1000023E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003BBC();
  sub_100003B68();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003BDC();
  sub_100003B68();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 1;
  sub_100003C9C();
  sub_1000026E4(a1, &v24, aBlock);
  sub_100003508(aBlock);
  if (!v25)
  {
    return sub_10000355C(&v24);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && v23 == 3)
  {
    sub_100003A24(0, &qword_10000C650, OS_dispatch_queue_ptr);
    v17 = sub_100003C3C();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    aBlock[4] = sub_1000035FC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002748;
    aBlock[3] = &unk_1000083C0;
    v19 = _Block_copy(aBlock);
    v20 = v2;

    sub_100003BCC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100003630();
    sub_100003080(&qword_10000C660, &qword_100004298);
    sub_100003688();
    sub_100003C6C();
    sub_100003C4C();
    _Block_release(v19);

    (*(v6 + 8))(v9, v4);
    return (*(v12 + 8))(v15, v10);
  }

  return result;
}

double sub_1000026E4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100003734(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100003778(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100002748(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10000278C()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___SignatureViewController_signatureView] copyStrokedInterpolatedPath];
  if (v2)
  {
    v3 = v2;
    sub_100003080(&qword_10000C628, &qword_100004278);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100004210;
    *(inited + 32) = xmmword_100004220;
    *(inited + 64) = &type metadata for Int;
    *(inited + 72) = 2;
    v5 = sub_1000030C8(v3);
    v6 = sub_100003BAC();
    v8 = v7;

    *(inited + 104) = &type metadata for Data;
    *(inited + 80) = v6;
    *(inited + 88) = v8;
    sub_100003BEC();
    sub_100003080(&qword_10000C630, &qword_100004280);
    v9 = objc_allocWithZone(SidecarItem);
    v10 = sub_100003B7C();
    v11 = [v1 request];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100003080(&qword_10000C638, &qword_100004288);
      v14 = sub_100003B44(v13);
      *(v14 + 16) = xmmword_1000041E0;
      *(v14 + 32) = v10;
      sub_100003A24(0, &qword_10000C640, SidecarItem_ptr);
      v10 = v10;
      isa = sub_100003C1C().super.isa;

      [v12 sendItems:isa complete:0];
    }
  }

  else
  {

    [v0 completeRequest:1];
  }
}

uint64_t sub_1000029C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_100003C5C();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_1000034BC(v9);
}

id sub_100002A34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___SignatureViewController_navBar;
  *&v4[v7] = sub_100003A84(objc_allocWithZone(UINavigationBar), "initWithFrame:");
  v8 = OBJC_IVAR___SignatureViewController_titleItem;
  sub_100003A24(0, &qword_10000C670, UINavigationItem_ptr);
  v9 = [objc_opt_self() mainBundle];
  sub_100003AA4();
  sub_100003B5C();
  v11 = sub_100003B9C(v22, v23, v21, v24, v10, v19);
  v13 = v12;

  *&v4[v8] = sub_100001518(v11, v13);
  v14 = OBJC_IVAR___SignatureViewController_signatureView;
  *&v4[v14] = sub_100003A84(objc_allocWithZone(AKSignatureView), "initWithFrame:");
  v15 = OBJC_IVAR___SignatureViewController_lineView;
  *&v4[v15] = sub_1000038F4();
  if (a2)
  {
    v16 = sub_100003BFC();
  }

  else
  {
    v16 = 0;
  }

  v20.receiver = v4;
  v20.super_class = type metadata accessor for SignatureViewController();
  v17 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_100002C0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SignatureViewController_navBar;
  *&v2[v4] = sub_100003A84(objc_allocWithZone(UINavigationBar), "initWithFrame:");
  v5 = OBJC_IVAR___SignatureViewController_titleItem;
  sub_100003A24(0, &qword_10000C670, UINavigationItem_ptr);
  v6 = [objc_opt_self() mainBundle];
  sub_100003AA4();
  sub_100003B5C();
  v8 = sub_100003B9C(v18, v19, v17, v20, v7, v15);
  v10 = v9;

  *&v2[v5] = sub_100001518(v8, v10);
  v11 = OBJC_IVAR___SignatureViewController_signatureView;
  *&v2[v11] = sub_100003A84(objc_allocWithZone(AKSignatureView), "initWithFrame:");
  v12 = OBJC_IVAR___SignatureViewController_lineView;
  *&v2[v12] = sub_1000038F4();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SignatureViewController();
  v13 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_100002D80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SignatureViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100002E44()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___SignatureViewController_signatureView] copyStrokedInterpolatedPath];
  if (v2)
  {
    v3 = v2;
    sub_100003080(&qword_10000C628, &qword_100004278);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100004210;
    *(inited + 32) = vdupq_n_s64(1uLL);
    *(inited + 64) = &type metadata for Int;
    *(inited + 72) = 2;
    v5 = sub_1000030C8(v3);
    v6 = sub_100003BAC();
    v8 = v7;

    *(inited + 104) = &type metadata for Data;
    *(inited + 80) = v6;
    *(inited + 88) = v8;
    sub_100003BEC();
    sub_100003080(&qword_10000C630, &qword_100004280);
    v9 = objc_allocWithZone(SidecarItem);
    v10 = sub_100003B7C();
    v11 = [v1 request];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100003080(&qword_10000C638, &qword_100004288);
      v14 = sub_100003B44(v13);
      *(v14 + 16) = xmmword_1000041E0;
      *(v14 + 32) = v10;
      sub_100003A24(0, &qword_10000C640, SidecarItem_ptr);
      v15 = v10;
      isa = sub_100003C1C().super.isa;

      [v12 sendItems:isa complete:0];
    }
  }
}

uint64_t sub_100003080(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_1000030C8(uint64_t a1)
{
  v1 = [NSData encodeCGPath:a1];

  return v1;
}

id sub_100003100(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = sub_100003478(a2, a2[3]);
    v9 = *(v6 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_100003CCC();
    (*(v9 + 8))(v11, v6);
    sub_1000034BC(a2);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 initWithBarButtonSystemItem:a1 target:v12 action:a3];
  swift_unknownObjectRelease();
  return v13;
}

id sub_100003258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_100003BFC();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = sub_100003478(a4, a4[3]);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_100003CCC();
    (*(v13 + 8))(v15, v11);
    sub_1000034BC(a4);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v6 initWithTitle:v10 style:a3 target:v16 action:a5];

  swift_unknownObjectRelease();
  return v17;
}

id sub_1000033DC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003478(a1, a1[3]);
  v5 = sub_100003CCC();
  v6 = sub_100003BFC();

  v7 = [v3 initWithObject:v5 type:v6];
  swift_unknownObjectRelease();

  sub_1000034BC(a1);
  return v7;
}

void *sub_100003478(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000034BC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000355C(uint64_t a1)
{
  v2 = sub_100003080(&qword_10000C648, &qword_100004290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100003630()
{
  result = qword_10000C658;
  if (!qword_10000C658)
  {
    sub_100003BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C658);
  }

  return result;
}

unint64_t sub_100003688()
{
  result = qword_10000C668;
  if (!qword_10000C668)
  {
    sub_1000036EC(&qword_10000C660, &qword_100004298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C668);
  }

  return result;
}

uint64_t sub_1000036EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003734(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003C7C(*(v2 + 40));

  return sub_1000037D4(a1, v4);
}

uint64_t sub_100003778(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000037D4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100003898(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100003C8C();
    sub_100003508(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

id sub_1000038F4()
{
  v0 = [objc_alloc(NSClassFromString(@"AKSignatureBaselineView")) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v0;
}

void sub_10000393C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100003BFC();

  [a3 setText:v4];
}

void sub_1000039A0(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_100003A24(0, a3, a4);
  isa = sub_100003C1C().super.isa;

  [a2 *a5];
}

uint64_t sub_100003A24(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100003A64(uint64_t a1)
{
  v4 = *(v2 + 688);

  return [v1 v4];
}

id sub_100003A84(id a1, SEL a2)
{

  return [a1 a2];
}

id sub_100003AF0()
{
  v3 = *(v0 + 696);

  return [v1 v3];
}

id sub_100003B0C()
{
  v3 = *(v0 + 696);

  return [v1 v3];
}

id sub_100003B28()
{
  v3 = *(v0 + 696);

  return [v1 v3];
}

uint64_t sub_100003B44(uint64_t a1)
{

  return swift_allocObject();
}

id sub_100003B7C()
{

  return sub_1000033DC((v0 - 96), 0, 0xE000000000000000);
}