id sub_1000721D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTimeslotsContainerView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IMBTimeslotsContainerView(uint64_t a1)
{
  result = qword_1000F1FD0;
  if (!qword_1000F1FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000722FC(uint64_t a1)
{
  sub_1000723C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000723C0(uint64_t a1)
{
  if (!qword_1000F1FE0)
  {
    sub_1000AB91C();
    v1 = sub_1000AC42C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000F1FE0);
    }
  }
}

uint64_t sub_100072418(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000724A8()
{
  v1 = v0 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100072520()
{
  v1 = v0 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_100072598()
{
  result = qword_1000F0F30;
  if (!qword_1000F0F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0F30);
  }

  return result;
}

uint64_t sub_1000725E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072654(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000726BC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar;
  *&v2[v3] = [objc_allocWithZone(type metadata accessor for IMBWebNavigationToolbar()) init];
  v4 = OBJC_IVAR____TtC8Business20IMBWebViewController_URLView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for IMBWebURLView(0)) init];
  v5 = OBJC_IVAR____TtC8Business20IMBWebViewController_titleView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for IMBWebTitleView()) init];
  *&v2[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] = 0;
  v6 = sub_1000AC02C();

  v9.receiver = v2;
  v9.super_class = type metadata accessor for IMBWebViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCallbackURI:", v6);

  return v7;
}

id sub_100072924()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = [v0 webkitView];
  v6 = [v5 hasOnlySecureContent];

  result = *&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleView];
  v8 = "setHidden:";
  if (!v6)
  {
LABEL_5:
    [result v8];
    [*&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] setActive:1];
    result = [v1 view];
    if (result)
    {
      v10 = result;
      [result setNeedsLayout];

      result = [v1 view];
      if (result)
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result setHidden:0];
  [*&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] setActive:0];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  [result setNeedsLayout];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  v11 = result;
  [result layoutIfNeeded];

  v12 = [v1 webkitView];
  v13 = [v12 URL];

  if (v13)
  {
    sub_1000AB6AC();

    v14 = sub_1000AB6EC();
    (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  }

  else
  {
    v15 = sub_1000AB6EC();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  }

  sub_10007DB4C(v4, v6);
  return sub_10004B9C0(v4);
}

void sub_100072BC4(uint64_t a1)
{
  v2 = v1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for IMBWebViewController();
  objc_msgSendSuper2(&v18, "setupSubviews");
  v3 = *&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar];
  *(v3 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar_actionDelegate + 8) = &off_1000DD630;
  swift_unknownObjectWeakAssign();
  v4 = sub_100017CEC();
  [v4 setEnabled:0];

  v5 = sub_100017E70();
  [v5 setEnabled:0];

  if (sub_10002CE60() == 2)
  {
    v6 = [v2 webkitView];
    v7 = [v6 layer];

    [v7 setBorderWidth:1.0];
    v8 = [v2 webkitView];
    v9 = [v8 layer];

    v10 = [objc_opt_self() systemGray3Color];
    v11 = [v10 CGColor];

    [v9 setBorderColor:v11];
  }

  v12 = [v2 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = v12;
  [v12 addSubview:*&v2[OBJC_IVAR____TtC8Business20IMBWebViewController_titleView]];

  v14 = [v2 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  [v14 addSubview:v3];

  v16 = [v2 view];
  if (v16)
  {
    v17 = v16;
    [v16 addSubview:*&v2[OBJC_IVAR____TtC8Business20IMBWebViewController_URLView]];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100072E54()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 webkitView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_URLView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 heightAnchor];
  v6 = [v5 constraintEqualToConstant:0.0];

  v7 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint];
  v108 = OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint;
  *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] = v6;

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000B04B0;
  v9 = [v1 topAnchor];
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 safeAreaLayoutGuide];

  v13 = [v12 topAnchor];
  v14 = [v9 constraintEqualToAnchor:v13];

  *(v8 + 32) = v14;
  v15 = [v1 leftAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v110 = v3;
  v18 = [v16 leftAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v8 + 40) = v19;
  v20 = [v1 rightAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 rightAnchor];

  v25 = [v20 constraintEqualToAnchor:v24];
  *(v8 + 48) = v25;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v23 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000B04B0;
  v28 = [v4 topAnchor];
  v29 = [v1 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [v4 leftAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v32;
  v34 = [v32 leftAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v27 + 40) = v35;
  v36 = [v4 rightAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v38 = v37;
  v39 = [v37 rightAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v27 + 48) = v40;
  v41 = sub_1000AC18C().super.isa;

  [v23 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000B04B0;
  v43 = [v0 webkitView];
  v44 = [v43 topAnchor];

  v45 = [v4 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v42 + 32) = v46;
  v47 = [v0 webkitView];
  v48 = [v47 leftAnchor];

  v49 = [v0 view];
  if (!v49)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50 = v49;
  v51 = [v49 leftAnchor];

  v52 = [v48 constraintEqualToAnchor:v51];
  *(v42 + 40) = v52;
  v53 = [v0 webkitView];
  v54 = [v53 rightAnchor];

  v55 = [v0 view];
  if (!v55)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v56 = v55;
  v57 = [v55 rightAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v42 + 48) = v58;
  v59 = sub_1000AC18C().super.isa;

  [v23 activateConstraints:v59];

  if (sub_10002CE60() == 2)
  {
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1000B08E0;
    v61 = [v110 topAnchor];
    v62 = [v0 webkitView];
    v63 = [v62 bottomAnchor];

    v64 = [v61 constraintEqualToAnchor:v63];
    *(v60 + 32) = v64;
    v65 = [v110 leftAnchor];
    v66 = [v0 view];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 leftAnchor];

      v69 = [v65 constraintEqualToAnchor:v68 constant:-19.0];
      *(v60 + 40) = v69;
      v70 = [v110 rightAnchor];
      v71 = [v0 view];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 rightAnchor];

        v74 = [v70 constraintEqualToAnchor:v73 constant:26.0];
        *(v60 + 48) = v74;
        v75 = [v110 bottomAnchor];
        v76 = [v0 view];
        if (v76)
        {
          v77 = v76;
          v78 = [v76 safeAreaLayoutGuide];

          v79 = [v78 bottomAnchor];
          v80 = [v75 constraintEqualToAnchor:v79];

          *(v60 + 56) = v80;
          v81 = [v110 heightAnchor];
          v82 = sub_10002CE60();
          v83 = 60.0;
          if ((v82 & 0xFE) == 0)
          {
            v83 = 44.0;
          }

          v84 = [v81 constraintEqualToConstant:{v83, v108}];

          *(v60 + 64) = v84;
          v85 = sub_1000AC18C().super.isa;

          [v23 activateConstraints:v85];

          v86 = *&v0[v109];
          if (v86)
          {

            [v86 setActive:1];
          }

          return;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1000B04D0;
  v88 = [v110 topAnchor];
  v89 = [v0 webkitView];
  v90 = [v89 bottomAnchor];

  v91 = [v88 constraintEqualToAnchor:v90];
  *(v87 + 32) = v91;
  v92 = [v110 leftAnchor];
  v93 = [v0 view];
  if (!v93)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v94 = v93;
  v95 = [v93 leftAnchor];

  v96 = [v92 constraintEqualToAnchor:v95];
  *(v87 + 40) = v96;
  v97 = [v110 rightAnchor];
  v98 = [v0 view];
  if (!v98)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v99 = v98;
  v100 = [v98 rightAnchor];

  v101 = [v97 constraintEqualToAnchor:v100];
  *(v87 + 48) = v101;
  v102 = [v110 bottomAnchor];
  v103 = [v0 view];
  if (!v103)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v104 = v103;
  v105 = [v103 safeAreaLayoutGuide];

  v106 = [v105 bottomAnchor];
  v107 = [v102 constraintEqualToAnchor:v106];

  *(v87 + 56) = v107;
  v111 = sub_1000AC18C().super.isa;

  [v23 activateConstraints:v111];
}

void sub_100073B40()
{
  v1 = sub_100017CEC();
  v2 = [v0 webkitView];
  v3 = [v2 canGoBack];

  [v1 setEnabled:v3];
  v6 = sub_100017E70();
  v4 = [v0 webkitView];
  v5 = [v4 canGoForward];

  [v6 setEnabled:v5];
}

id sub_100073CA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBWebViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100073DE0()
{
  v1 = OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for IMBWebNavigationToolbar()) init];
  v2 = OBJC_IVAR____TtC8Business20IMBWebViewController_URLView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for IMBWebURLView(0)) init];
  v3 = OBJC_IVAR____TtC8Business20IMBWebViewController_titleView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for IMBWebTitleView()) init];
  *(v0 + OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint) = 0;
  sub_1000AC63C();
  __break(1u);
}

id sub_100073EB4(void *a1)
{
  v2 = v1;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  result = [a1 URL];
  if (result)
  {
    v12 = result;
    sub_1000AB6AC();

    (*(v5 + 32))(v10, v8, v4);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v13 = qword_1000FC008;
    v14 = sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000AF0E0;
    v16 = sub_1000AB64C();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10000587C();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1000ABA5C("IMBWebViewController: didFinishNavigation to: %@", 48, 2, &_mh_execute_header, v13, v14, v15);

    [v2 updateNavigationBar];
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

id sub_10007412C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *(v0 + qword_1000F2048);
  v4 = v0;

  v5 = sub_1000AC02C();

  [v3 removeObserver:v4 forKeyPath:v5];

  v8 = type metadata accessor for KVObserver(0, *((v2 & v1) + 0x50), v6, v7);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_100074240(uint64_t a1)
{

  v2 = *(a1 + qword_1000F2048);
}

uint64_t sub_1000742A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_1000AC06C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_1000AC47C();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10007467C();
    sub_1000ABFBC();
  }

LABEL_7:
  sub_1000744DC(v13);

  return sub_1000172E0(v13);
}

uint64_t sub_100074420()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100074478()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000744DC(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  result = __chkstk_darwin(a1);
  v7 = v12 - v6;
  if (v5)
  {
    v8 = *(v1 + qword_1000F2038);
    if (*(v5 + 16) && (v9 = v5, v10 = sub_10004F380(NSKeyValueChangeNewKey), (v11 & 1) != 0))
    {
      sub_1000068B4(*(v9 + 56) + 32 * v10, v12);
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
    swift_dynamicCast();
    v8(v7);
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

unint64_t sub_10007467C()
{
  result = qword_1000EF168;
  if (!qword_1000EF168)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF168);
  }

  return result;
}

uint64_t Date.init(fromUTCString:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_1000AB7EC();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = __chkstk_darwin(v5);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v37 - v8;
  v9 = sub_1000AB84C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000AB8BC();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v44 = sub_1000AB91C();
  v19 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = HIBYTE(a2) & 0xF;
  v40 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_9;
  }

  sub_1000AB8DC();
  result = (*(v19 + 48))(v18, 1, v44);
  if (result != 1)
  {
    (*(v19 + 32))(v21, v18, v44);
    v24 = [objc_allocWithZone(NSDateFormatter) init];
    (*(v10 + 104))(v12, enum case for Calendar.Identifier.gregorian(_:), v9);
    sub_1000AB85C();
    (*(v10 + 8))(v12, v9);
    isa = sub_1000AB86C().super.isa;
    (*(v13 + 8))(v15, v39);
    [v24 setCalendar:isa];

    v26 = sub_1000AC02C();
    [v24 setDateFormat:v26];

    v27 = sub_1000AB8EC().super.isa;
    [v24 setTimeZone:v27];

    v28 = sub_1000AC02C();

    v29 = [v24 dateFromString:v28];

    if (v29)
    {
      v30 = v37;
      sub_1000AB7BC();

      v31 = v41;
      v32 = v38;
      v33 = v30;
      v34 = v42;
      (*(v41 + 32))(v38, v33, v42);
      sub_1000AB7AC();
      v35 = v43;
      sub_1000AB79C();

      (*(v31 + 8))(v32, v34);
      (*(v19 + 8))(v21, v44);
      v36 = 0;
      return (*(v31 + 56))(v35, v36, 1, v34);
    }

    (*(v19 + 8))(v21, v44);

LABEL_9:
    v36 = 1;
    v34 = v42;
    v35 = v43;
    v31 = v41;
    return (*(v31 + 56))(v35, v36, 1, v34);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Date.toUTCString()()
{
  v0 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v19 - v4;
  sub_1000AB8CC();
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  v7 = sub_1000AC02C();
  [v6 setDateFormat:v7];

  sub_100012680(v5, v3);
  v8 = sub_1000AB91C();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v3, 1, v8) != 1)
  {
    isa = sub_1000AB8EC().super.isa;
    (*(v9 + 8))(v3, v8);
  }

  [v6 setTimeZone:isa];

  v11 = sub_1000AB77C().super.isa;
  v12 = [v6 stringFromDate:v11];

  v13 = sub_1000AC06C();
  v15 = v14;

  sub_100072654(v5);
  v16 = v13;
  v17 = v15;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

void sub_100074E74()
{
  sub_10000E6D4(v0 + OBJC_IVAR____TtC8Business23BIABubbleViewController_context, v17);
  v1 = sub_1000315C0(v17, v17[3]);
  __chkstk_darwin(v1);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v15 = type metadata accessor for PluginBubbleContext();
  v16 = &off_1000DAEB0;
  v14[0] = v5;
  v6 = objc_allocWithZone(type metadata accessor for BIABubbleView(0));
  v7 = sub_1000315C0(v14, v15);
  __chkstk_darwin(v7);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = v0;
  v13 = sub_100075604(v12, v11, v6);

  sub_10000E738(v14);
  sub_10000E738(v17);
  [v12 setView:v13];
}

id sub_1000750D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BIABubbleViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100075138(uint64_t a1, char *a2)
{
  v4 = sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v16[3] = type metadata accessor for PluginBubbleContext();
  v16[4] = &off_1000DAEB0;
  v16[0] = a1;
  v8 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  v9 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController__shouldBeVisible;
  v15 = 0;
  sub_1000ABC0C();
  (*(v5 + 32))(&a2[v10], v7, v4);
  sub_10000E6D4(v16, &a2[OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context]);
  v11 = type metadata accessor for BIABubbleOptionsViewController(0);
  v14.receiver = a2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  sub_10000E738(v16);
  return v12;
}

id sub_1000752F8(uint64_t a1, char *a2)
{
  v11[3] = type metadata accessor for PluginBubbleContext();
  v11[4] = &off_1000DAEB0;
  v11[0] = a1;
  *&a2[OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel] = 0;
  *&a2[OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer] = 0;
  sub_10000E6D4(v11, v10);
  v4 = sub_1000315C0(v10, v10[3]);
  __chkstk_darwin(v4);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = sub_100075138(*v6, a2);
  sub_10000E738(v11);
  sub_10000E738(v10);
  return v8;
}

id sub_100075424(void *a1)
{
  v2 = type metadata accessor for PluginBubbleContext();
  v22[3] = v2;
  v22[4] = &off_1000DAEB0;
  v22[0] = a1;
  sub_10000E6D4(v22, v21);
  v3 = sub_1000315C0(v21, v21[3]);
  __chkstk_darwin(v3);
  v5 = (&v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v19 = v2;
  v20 = &off_1000DAEB0;
  v18[0] = v7;
  v8 = objc_allocWithZone(type metadata accessor for BIABubbleOptionsiOSViewController(0));
  v9 = sub_1000315C0(v18, v19);
  __chkstk_darwin(v9);
  v11 = (&v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = a1;
  v15 = sub_1000752F8(v13, v8);
  sub_10000E738(v18);
  sub_10000E738(v21);
  sub_10000E738(v22);
  return v15;
}

char *sub_100075604(void *a1, uint64_t a2, _BYTE *a3)
{
  v82 = a1;
  v85 = sub_10000413C(&qword_1000F2248, &qword_1000B4308);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v81 - v5;
  v100 = type metadata accessor for PluginBubbleContext();
  v101 = &off_1000DAEB0;
  v99 = a2;
  v6 = &a3[OBJC_IVAR____TtC8Business13BIABubbleView_delegate];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  v8 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint;
  *&a3[v9] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints] = 0;
  a3[OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested] = 0;
  sub_10000E6D4(&v99, &a3[OBJC_IVAR____TtC8Business13BIABubbleView_context]);
  v10 = [objc_allocWithZone(UIView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_contentView] = v10;
  v11 = [objc_allocWithZone(UIImageView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_imageView] = v11;
  v12 = [objc_allocWithZone(UIView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView] = v12;
  v13 = [objc_allocWithZone(UIView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView] = v13;
  v14 = [objc_allocWithZone(UIImageView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_iconView] = v14;
  v15 = [objc_allocWithZone(UILabel) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel] = v15;
  v16 = [objc_allocWithZone(UILabel) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel] = v16;
  v17 = sub_1000058D0(&v99, v100);
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController] = sub_100075424(*v17);
  type metadata accessor for BIABubbleBinaryChoiceView();
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_subscriptions] = _swiftEmptyArrayStorage;
  v18 = type metadata accessor for BIABubbleView(0);
  v98.receiver = a3;
  v98.super_class = v18;
  v19 = objc_msgSendSuper2(&v98, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B3CB0;
  v94 = OBJC_IVAR____TtC8Business13BIABubbleView_contentView;
  v92 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_contentView);
  *(inited + 32) = v92;
  v87 = inited + 32;
  v89 = OBJC_IVAR____TtC8Business13BIABubbleView_imageView;
  v21 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_imageView);
  *(inited + 40) = v21;
  v95 = OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView;
  v22 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView);
  *(inited + 48) = v22;
  v88 = OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView;
  v23 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView);
  *(inited + 56) = v23;
  v96 = OBJC_IVAR____TtC8Business13BIABubbleView_iconView;
  v24 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_iconView);
  *(inited + 64) = v24;
  v93 = OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView;
  v25 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView);
  *(inited + 72) = v25;
  v90 = OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel;
  v26 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel);
  *(inited + 80) = v26;
  v97 = OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel;
  v91 = *(v19 + OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel);
  *(inited + 88) = v91;
  v27 = (inited & 0xC000000000000001);
  v28 = inited & 0xFFFFFFFFFFFFFF8;
  v86 = v19;
  v29 = v92;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v91;
  v37 = 0;
  do
  {
    if (v27)
    {
      v38 = sub_1000AC5AC();
    }

    else
    {
      if (v37 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        swift_once();
        goto LABEL_10;
      }

      v38 = *(inited + 8 * v37 + 32);
    }

    v22 = v38;
    ++v37;
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v39) = 1144750080;
    [v22 setContentHuggingPriority:1 forAxis:v39];
  }

  while (v37 != 8);
  swift_setDeallocating();
  swift_arrayDestroy();
  v40 = v94;
  v41 = *(v19 + v94);
  inited = v86;
  [inited addSubview:v41];
  v22 = v89;
  [*(v19 + v40) addSubview:*(v19 + v89)];
  v42 = *(v19 + v40);
  v43 = v95;
  [v42 addSubview:*(v19 + v95)];
  v44 = v88;
  [*(v19 + v43) addSubview:*(v19 + v88)];
  [*(v19 + v44) addSubview:*(v19 + v96)];
  v28 = v90;
  [*(v19 + v44) addSubview:*(v19 + v90)];
  [*(v19 + v44) addSubview:*(v19 + v97)];
  v27 = OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController;
  v45 = *(inited + OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController);
  v46 = *(v19 + v43);
  result = [v45 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v48 = result;
  [v46 addSubview:result];

  [*(v19 + v43) addSubview:*(v19 + v93)];
  v49 = v82;
  [v82 addChildViewController:*&v27[inited]];
  [*&v27[inited] didMoveToParentViewController:v49];
  if (qword_1000EEDD0 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v92 = v27;
  v50 = qword_1000FBF00;
  [inited setBackgroundColor:qword_1000FBF00];

  [*(v19 + v94) setBackgroundColor:v50];
  v51 = qword_1000EEDE0;
  v52 = *&v22[v19];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = qword_1000FBF10;
  [v52 setTintColor:qword_1000FBF10];

  [*&v22[v19] setContentMode:1];
  v54 = *&v22[v19];
  v55 = qword_1000EEDC8;
  v56 = v54;
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setBackgroundColor:qword_1000FBEF8];

  [*(v19 + v95) setBackgroundColor:v50];
  v57 = v96;
  [*(v19 + v96) setContentMode:2];
  [*(v19 + v57) setClipsToBounds:1];
  v58 = [*(v19 + v57) layer];
  [v58 setCornerRadius:13.0];

  v59 = qword_1000EEDD8;
  v60 = *(v19 + v28);
  if (v59 != -1)
  {
    swift_once();
  }

  v61 = qword_1000FBF08;
  [v60 setTextColor:v53];
  [v60 setFont:v61];
  [v60 setLineBreakMode:0];
  [v60 setNumberOfLines:0];
  LODWORD(v62) = 1148846080;
  [v60 setContentCompressionResistancePriority:1 forAxis:v62];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

  v63 = qword_1000EEDE8;
  v64 = *(v19 + v97);
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = qword_1000FBF18;
  if (qword_1000EEDF0 != -1)
  {
    swift_once();
  }

  [v64 setTextColor:qword_1000FBF20];
  [v64 setFont:v65];
  [v64 setLineBreakMode:0];
  [v64 setNumberOfLines:0];
  LODWORD(v66) = 1148846080;
  [v64 setContentCompressionResistancePriority:1 forAxis:v66];
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];

  v67 = v92;
  v68 = *&v92[inited];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v70 = swift_unknownObjectWeakLoadStrong();
  v71 = *((swift_isaMask & *v68) + 0xE8);
  v72 = inited;
  v73 = v68;
  v71(Strong, v70);

  v74 = (*(v19 + v93) + OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_delegate);
  *v74 = inited;
  v74[1] = &off_1000DCEE0;
  v75 = v72;
  swift_unknownObjectRelease();
  v76 = *&v67[inited];
  swift_beginAccess();
  v77 = v76;
  sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  v78 = v83;
  sub_1000ABC1C();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10007620C();
  v79 = v85;
  sub_1000ABC5C();

  (*(v84 + 8))(v78, v79);
  v80 = OBJC_IVAR____TtC8Business13BIABubbleView_subscriptions;
  swift_beginAccess();
  sub_1000AC17C();
  if (*((*(v75 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v75 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  swift_endAccess();

  sub_10000E738(&v99);
  return v75;
}

uint64_t sub_1000761CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10007620C()
{
  result = qword_1000F2258;
  if (!qword_1000F2258)
  {
    sub_1000041E8(&qword_1000F2248, &qword_1000B4308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F2258);
  }

  return result;
}

void sub_100076270(void *a1, uint64_t a2)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FC008;
  v5 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AF0F0;
  v7 = type metadata accessor for IMBMessagesAppViewController();
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_100079030(&qword_1000F2380, v8, type metadata accessor for IMBMessagesAppViewController);
  *(v6 + 32) = v2;
  *(v6 + 96) = sub_100005A24(0, &qword_1000F0730, MSConversation_ptr);
  *(v6 + 104) = sub_100078FE0(&unk_1000F2400, &qword_1000F0730, MSConversation_ptr);
  *(v6 + 72) = a1;
  v9 = v2;
  v10 = a1;
  sub_1000ABA5C("%{public}@: willBecomeActive with conversation: %@", 50, 2, &_mh_execute_header, v4, v5, v6);

  v11.receiver = v9;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "willBecomeActiveWithConversation:", v10);
  sub_1000769FC(v10, [v9 presentationStyle]);
}

void sub_100076470(id a1, uint64_t a2)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FC008;
  v5 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000B0620;
  v7 = type metadata accessor for IMBMessagesAppViewController();
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_100079030(&qword_1000F2380, v8, type metadata accessor for IMBMessagesAppViewController);
  *(v6 + 32) = v2;
  if (a1)
  {
    if (a1 == 2)
    {
      v9 = 0xEA00000000007470;
      v10 = 0x697263736E617274;
    }

    else if (a1 == 1)
    {
      v9 = 0xE800000000000000;
      v10 = 0x6465646E61707865;
    }

    else
    {
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x746361706D6F63;
  }

  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = sub_10000587C();
  *(v6 + 72) = v10;
  *(v6 + 80) = v9;
  v11 = v2;
  v12 = [v11 activeConversation];
  if (v12)
  {
    v13 = v12;
    *(v6 + 136) = sub_100005A24(0, &qword_1000F0730, MSConversation_ptr);
    *(v6 + 144) = sub_100078FE0(&unk_1000F2400, &qword_1000F0730, MSConversation_ptr);
    *(v6 + 112) = v13;
    sub_1000ABA5C("%{public}@: willTransitionTo presentationStyle: %{public}@ with conversation %@", 79, 2, &_mh_execute_header, v4, v5, v6);

    v16.receiver = v11;
    v16.super_class = v7;
    objc_msgSendSuper2(&v16, "willTransitionToPresentationStyle:", a1);
    v14 = [v11 activeConversation];
    if (v14)
    {
      v15 = v14;
      if ([v11 presentationStyle] != a1)
      {
        sub_1000769FC(v15, a1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000767E0()
{
  v1 = *&v0[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v2 willMoveToParentViewController:v0];
  [v0 addChildViewController:v2];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v2 didMoveToParentViewController:v0];
  v17 = [v2 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = [v0 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v17 setFrame:{v10, v12, v14, v16}];
}

uint64_t sub_100076970()
{
  v1 = OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator;
  if (*(v0 + OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator))
  {
    v2 = *(v0 + OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator);
  }

  else
  {
    type metadata accessor for IMBMessagesAppViewControllerDismissalDelegator();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000769FC(void *a1, uint64_t a2)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v5 = qword_1000FC008;
  v6 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000AF0F0;
  *(v7 + 56) = type metadata accessor for IMBMessagesAppViewController();
  *(v7 + 64) = sub_100079030(&qword_1000F2380, v8, type metadata accessor for IMBMessagesAppViewController);
  *(v7 + 32) = v2;
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = 0xEA00000000007470;
      v10 = 0x697263736E617274;
    }

    else if (a2 == 1)
    {
      v9 = 0xE800000000000000;
      v10 = 0x6465646E61707865;
    }

    else
    {
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x746361706D6F63;
  }

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = sub_10000587C();
  *(v7 + 72) = v10;
  *(v7 + 80) = v9;
  v11 = v2;
  sub_1000ABA5C("%{public}@: presenting view controller with style: %{public}@", 61, 2, &_mh_execute_header, v5, v6, v7);

  if (a2 == 2)
  {
    sub_100077E94(a1);
  }

  else
  {
    sub_100076BC0(a1, a2 == 1);
  }
}

void sub_100076BC0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for URLHelper(0);
  __chkstk_darwin(v6);
  v8 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 selectedMessage];
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for IMBMessage();
    v151 = v10;
    v12 = sub_1000866E4(v151);
    if (v12)
    {
      v13 = v12;
      v14 = [v13 rootKey];
      if (!v14)
      {
        sub_1000AC06C();
        v14 = sub_1000AC02C();
      }

      v15 = sub_1000AC06C();
      v17 = v16;
      v19 = v15 == sub_1000AC06C() && v17 == v18;
      v148 = v14;
      if (v19)
      {
        v36 = v14;
      }

      else
      {
        v20 = sub_1000AC7AC();
        v21 = v14;
        v22 = v20;
        v23 = v21;

        if ((v22 & 1) == 0)
        {
          v24 = sub_1000AC06C();
          v26 = v25;
          if (v24 == sub_1000AC06C() && v26 == v27)
          {
          }

          else
          {
            v44 = sub_1000AC7AC();

            if ((v44 & 1) == 0)
            {
              v77 = sub_1000AC06C();
              v79 = v78;
              if (v77 == sub_1000AC06C() && v79 == v80)
              {
              }

              else
              {
                v81 = sub_1000AC7AC();

                if ((v81 & 1) == 0)
                {
                  v94 = sub_1000AC06C();
                  v96 = v95;
                  if (v94 == sub_1000AC06C() && v96 == v97)
                  {
                  }

                  else
                  {
LABEL_61:
                    v98 = sub_1000AC7AC();

                    if ((v98 & 1) == 0)
                    {
                      v105 = sub_1000AC06C();
                      v107 = v106;
                      if (v105 == sub_1000AC06C() && v107 == v108)
                      {

                        v54 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
                      }

                      else
                      {
                        v109 = sub_1000AC7AC();

                        v54 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
                        if ((v109 & 1) == 0)
                        {

                          if (qword_1000EEE80 == -1)
                          {
LABEL_69:
                            v112 = v54[1];
                            v113 = sub_1000AC2AC();
                            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
                            v114 = swift_allocObject();
                            *(v114 + 16) = xmmword_1000AF0F0;
                            *(v114 + 56) = type metadata accessor for IMBMessagesAppViewController();
                            *(v114 + 64) = sub_100079030(&qword_1000F2380, v115, type metadata accessor for IMBMessagesAppViewController);
                            *(v114 + 32) = v3;
                            v116 = sub_1000AC06C();
                            v118 = v117;
                            v119 = v3;

                            *(v114 + 96) = &type metadata for String;
                            *(v114 + 104) = sub_10000587C();
                            *(v114 + 72) = v116;
                            *(v114 + 80) = v118;
                            sub_1000ABA5C("%{public}@: Couldn't pick the right presentDetailedViewController for rootKey %@, not doing anything", 100, 2, &_mh_execute_header, v112, v113, v114);

                            v120 = v151;

                            return;
                          }

LABEL_90:
                          swift_once();
                          goto LABEL_69;
                        }
                      }

                      v110 = [v13 isFromMe];
                      v111 = objc_allocWithZone(type metadata accessor for IMBJITAppKitViewController());
                      v42 = sub_100067310(a1, v13, v110 ^ 1u);
LABEL_33:
                      v55 = v42;
                      sub_100076970();
                      *&v55[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate + 8] = &off_1000DD7F0;
                      swift_unknownObjectWeakAssign();

                      v56 = v55;
                      if (sub_10002CE60() != 2)
                      {
                        v56 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v55];
                        [v56 setNavigationBarHidden:1 animated:0];
                      }

                      v146 = v55;
                      v57 = qword_1000EEE80;
                      v147 = v56;
                      v58 = v148;
                      if (v57 != -1)
                      {
                        swift_once();
                      }

                      v59 = v54[1];
                      v23 = sub_1000AC2BC();
                      v154 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
                      a1 = swift_allocObject();
                      *(a1 + 16) = xmmword_1000B3CA0;
                      v153 = type metadata accessor for IMBMessagesAppViewController();
                      *(a1 + 56) = v153;
                      v152 = sub_100079030(&qword_1000F2380, v60, type metadata accessor for IMBMessagesAppViewController);
                      *(a1 + 64) = v152;
                      *(a1 + 32) = v3;
                      *(a1 + 96) = sub_100005A24(0, &qword_1000F07C8, MSMessage_ptr);
                      *(a1 + 104) = sub_100078FE0(&qword_1000F23B0, &qword_1000F07C8, MSMessage_ptr);
                      *(a1 + 72) = v151;
                      *(a1 + 136) = v11;
                      *(a1 + 144) = sub_100079030(&qword_1000F23B8, 255, type metadata accessor for IMBMessage);
                      *(a1 + 112) = v13;
                      v157 = sub_100005A24(0, &qword_1000F23C0, NSString_ptr);
                      v158 = sub_100078FE0(&qword_1000F23C8, &qword_1000F23C0, NSString_ptr);
                      *&v156 = v58;
                      sub_10001A72C(&v156, a1 + 152);
                      v61 = v151;
                      v145 = v13;
                      v3 = v3;
                      v144 = v61;
                      v62 = [v61 _data];
                      if (!v62)
                      {
LABEL_85:
                        __break(1u);
                        goto LABEL_86;
                      }

                      v63 = v62;
                      v64 = sub_1000AB73C();
                      v66 = v65;

                      isa = sub_1000AB72C().super.isa;
                      sub_10000E964(v64, v66);
                      v13 = &qword_1000F23D0;
                      v11 = NSData_ptr;
                      *(a1 + 216) = sub_100005A24(0, &qword_1000F23D0, NSData_ptr);
                      *(a1 + 224) = sub_100078FE0(&qword_1000F23D8, &qword_1000F23D0, NSData_ptr);
                      *(a1 + 192) = isa;
                      sub_1000ABA5C("%@: presentDetailedViewController selectedMessage %@ imbMessage %@ rootKey %@ _data %@", 86, 2, &_mh_execute_header, v59, v23, a1);

                      v68 = [v3 childViewControllers];
                      v151 = sub_100005A24(0, &qword_1000F1DE0, UIViewController_ptr);
                      v23 = sub_1000AC19C();

                      v155 = v59;
                      if (v23 >> 62)
                      {
                        v54 = sub_1000AC65C();
                        p_attr = &stru_1000E5FF8.attr;
                        if (v54)
                        {
LABEL_40:
                          v8 = 0;
                          v150 = v23 & 0xC000000000000001;
                          v6 = v23 & 0xFFFFFFFFFFFFFF8;
                          v149 = xmmword_1000AF0F0;
                          while (1)
                          {
                            if (v150)
                            {
                              v70 = sub_1000AC5AC();
                            }

                            else
                            {
                              if (v8 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_60;
                              }

                              v70 = *(v23 + 8 * v8 + 32);
                            }

                            v13 = v70;
                            v11 = (v8 + 1);
                            if (__OFADD__(v8, 1))
                            {
                              __break(1u);
LABEL_60:
                              __break(1u);
                              goto LABEL_61;
                            }

                            v71 = sub_1000AC2AC();
                            a1 = p_attr;
                            v72 = swift_allocObject();
                            *(v72 + 16) = v149;
                            v73 = v152;
                            *(v72 + 56) = v153;
                            *(v72 + 64) = v73;
                            *(v72 + 32) = v3;
                            *(v72 + 96) = v151;
                            *(v72 + 104) = sub_100078FE0(&unk_1000F23E0, &qword_1000F1DE0, UIViewController_ptr);
                            *(v72 + 72) = v13;
                            v74 = v3;
                            v13 = v13;
                            sub_1000ABA5C("%{public}@: Removing child view controller: %@", 46, 2, &_mh_execute_header, v155, v71, v72);
                            p_attr = a1;

                            [v13 willMoveToParentViewController:0];
                            [v13 removeFromParentViewController];
                            v75 = [v13 *(a1 + 2416)];
                            if (!v75)
                            {
                              break;
                            }

                            v76 = v75;
                            [v75 removeFromSuperview];

                            [v13 didMoveToParentViewController:0];
                            ++v8;
                            if (v11 == v54)
                            {
                              goto LABEL_73;
                            }
                          }

                          __break(1u);
                          goto LABEL_85;
                        }
                      }

                      else
                      {
                        v54 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        p_attr = &stru_1000E5FF8.attr;
                        if (v54)
                        {
                          goto LABEL_40;
                        }
                      }

LABEL_73:

                      v23 = sub_1000AC2AC();
                      v13 = swift_allocObject();
                      *(v13 + 1) = xmmword_1000AF0F0;
                      v121 = v152;
                      v13[7] = v153;
                      v13[8] = v121;
                      v13[4] = v3;
                      v13[12] = v151;
                      v13[13] = sub_100078FE0(&unk_1000F23E0, &qword_1000F1DE0, UIViewController_ptr);
                      v122 = v147;
                      v13[9] = v147;
                      v3 = v3;
                      v123 = v122;
                      sub_1000ABA5C("%{public}@: Adding child view controller: %@", 44, 2, &_mh_execute_header, v155, v23, v13);

                      [v123 willMoveToParentViewController:v3];
                      [v3 addChildViewController:v123];
                      v124 = [v3 p_attr[302]];
                      if (v124)
                      {
                        v23 = v124;
                        v125 = [v123 p_attr[302]];
                        v126 = v148;
                        v127 = v146;
                        if (v125)
                        {
                          v13 = v125;
                          [v23 addSubview:v125];

                          [v123 didMoveToParentViewController:v3];
                          v23 = [v123 p_attr[302]];

                          if (v23)
                          {
                            v128 = [v3 p_attr[302]];
                            if (v128)
                            {
                              v129 = v128;
                              [v128 bounds];
                              v131 = v130;
                              v133 = v132;
                              v135 = v134;
                              v137 = v136;

                              [v23 setFrame:{v131, v133, v135, v137}];
                              v138 = v145;
                              v139 = [v145 rootObject];

                              if (v139)
                              {
                                objc_opt_self();
                                if (!swift_dynamicCastObjCClass())
                                {

                                  swift_unknownObjectRelease();
                                  return;
                                }

                                swift_unknownObjectRelease();
                                v140 = [v3 p_attr[302]];
                                if (!v140)
                                {
                                  __break(1u);
                                  return;
                                }

                                v141 = v140;
                                v142 = [objc_opt_self() clearColor];
                                [v141 setBackgroundColor:v142];
                              }

                              else
                              {
                              }

                              return;
                            }

                            goto LABEL_89;
                          }

LABEL_88:
                          __break(1u);
LABEL_89:
                          __break(1u);
                          goto LABEL_90;
                        }

LABEL_87:
                        __break(1u);
                        goto LABEL_88;
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }
                  }

                  sub_10004EA70(v8);
                  v157 = v6;
                  v158 = &off_1000DCB20;
                  v99 = sub_100030970(&v156);
                  sub_10001E764(v8, v99);
                  v100 = objc_allocWithZone(type metadata accessor for IMBAuthenticationViewController());
                  v101 = sub_1000315C0(&v156, v157);
                  __chkstk_darwin(v101);
                  v103 = &v143 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v104 + 16))(v103);
                  v51 = v13;
                  v52 = a1;
                  v53 = sub_1000796E8(v52, v51, v103, v100);
                  goto LABEL_31;
                }
              }

              v82 = [v13 isFromMe];
              sub_10004EA70(v8);
              v157 = v6;
              v158 = &off_1000DCB20;
              v83 = sub_100030970(&v156);
              sub_10001E764(v8, v83);
              if (v82)
              {
                v84 = objc_allocWithZone(type metadata accessor for IMBTimeSelectedViewController());
                v85 = sub_1000315C0(&v156, v157);
                __chkstk_darwin(v85);
                v87 = &v143 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v88 + 16))(v87);
                v51 = v13;
                v52 = a1;
                v53 = sub_10007930C(v52, v51, v87, v84);
              }

              else
              {
                v89 = objc_allocWithZone(type metadata accessor for IMBTimeSelectionTableViewController());
                v90 = sub_1000315C0(&v156, v157);
                __chkstk_darwin(v90);
                v92 = &v143 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v93 + 16))(v92);
                v51 = v13;
                v52 = a1;
                v53 = sub_10007951C(v52, v51, v92, v89);
              }

LABEL_31:
              v42 = v53;

              sub_10001E7C8(v8);
              sub_10000E738(&v156);
LABEL_32:
              v54 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
              goto LABEL_33;
            }
          }

          sub_10004EA70(v8);
          v157 = v6;
          v158 = &off_1000DCB20;
          v45 = sub_100030970(&v156);
          sub_10001E764(v8, v45);
          v46 = objc_allocWithZone(type metadata accessor for IMBHTMLContentViewController());
          v47 = sub_1000315C0(&v156, v157);
          __chkstk_darwin(v47);
          v49 = &v143 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v50 + 16))(v49);
          v51 = v13;
          v52 = a1;
          v53 = sub_100079084(v52, v51, v49, v46);
          goto LABEL_31;
        }
      }

      v37 = sub_10002CE60();
      v38 = [v13 isFromMe];
      if (v37 == 2)
      {
        v39 = objc_allocWithZone(type metadata accessor for MacListPickerTableViewController());
        v40 = v13;
        v41 = a1;
        v42 = sub_1000A4BA8(v41, v40, v38 ^ 1u);
      }

      else
      {
        v43 = objc_allocWithZone(type metadata accessor for IMBListPickerTableViewController());
        v42 = sub_10001B8D0(a1, v13, v38 ^ 1u);
      }

      goto LABEL_32;
    }
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v28 = qword_1000FC008;
  v29 = sub_1000AC2AC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000AF0F0;
  *(v30 + 56) = type metadata accessor for IMBMessagesAppViewController();
  *(v30 + 64) = sub_100079030(&qword_1000F2380, v31, type metadata accessor for IMBMessagesAppViewController);
  *(v30 + 32) = v3;
  v32 = (a2 & 1) == 0;
  if (a2)
  {
    v33 = 0x6465646E61707865;
  }

  else
  {
    v33 = 0x746361706D6F63;
  }

  if (v32)
  {
    v34 = 0xE700000000000000;
  }

  else
  {
    v34 = 0xE800000000000000;
  }

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = sub_10000587C();
  *(v30 + 72) = v33;
  *(v30 + 80) = v34;
  v35 = v3;
  sub_1000ABA5C("%{public}@: No message specified for %{public}@ style presentation, not doing anything", 86, 2, &_mh_execute_header, v28, v29, v30);
}

void sub_100077E94(void *a1)
{
  v3 = type metadata accessor for URLHelper(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v41[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  if (*&v1[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController])
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v8 = qword_1000FC008;
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000B0620;
    *(v9 + 56) = type metadata accessor for IMBMessagesAppViewController();
    *(v9 + 64) = sub_100079030(&qword_1000F2380, v10, type metadata accessor for IMBMessagesAppViewController);
    *(v9 + 32) = v1;
    v11 = v1;
    v44[0] = [a1 selectedMessage];
    sub_10000413C(&qword_1000F2388, &qword_1000B43D0);
    v12 = sub_1000AC0CC();
    v14 = v13;
    *(v9 + 96) = &type metadata for String;
    v15 = sub_10000587C();
    *(v9 + 104) = v15;
    *(v9 + 72) = v12;
    *(v9 + 80) = v14;
    *v44 = *v7;
    v16 = v44[0];
    sub_10000413C(&unk_1000F2390, &qword_1000B43D8);
    v17 = sub_1000AC0CC();
    *(v9 + 136) = &type metadata for String;
    *(v9 + 144) = v15;
    *(v9 + 112) = v17;
    *(v9 + 120) = v18;
    v19 = sub_1000AC2BC();
    sub_1000ABA5C("%{public}@: being asked to present a transcriptVC for message: %@ when I'm alreadying presenting: %@", 100, 2, &_mh_execute_header, v8, v19, v9);

    return;
  }

  v20 = v4;
  objc_allocWithZone(type metadata accessor for PluginBubbleContext());
  v21 = v1;
  v22 = a1;
  v23 = sub_1000163BC(v21, v22);
  if (v23)
  {
    v24 = v23;
    sub_10000E6D4(&v21[OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter], v44);
    sub_10004EA70(v6);
    v42 = v20;
    v43 = &off_1000DCB20;
    v25 = sub_100030970(v41);
    sub_10001E764(v6, v25);
    v26 = objc_allocWithZone(type metadata accessor for IMBTranscriptMessageViewController());
    v27 = sub_1000315C0(v41, v42);
    __chkstk_darwin(v27);
    v29 = &v41[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    v31 = sub_100078D04(v24, v44, v29, v26);
    sub_10001E7C8(v6);
    sub_10000E738(v41);
    *&v31[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_messagesAppProxy + 8] = &off_1000DD808;
    swift_unknownObjectWeakAssign();
    if (!*v7)
    {
      *v7 = v31;
      *(v7 + 1) = &off_1000DBE98;
      v32 = v31;
      sub_1000767E0();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v33 = qword_1000FC008;
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000AF0E0;
  *(v34 + 56) = type metadata accessor for IMBMessagesAppViewController();
  *(v34 + 64) = sub_100079030(&qword_1000F2380, v35, type metadata accessor for IMBMessagesAppViewController);
  *(v34 + 32) = v21;
  v21;
  v36 = sub_1000AC2BC();
  sub_1000ABA5C("%{public}@: No message specified for transcript style presentation, using empty bubble", 86, 2, &_mh_execute_header, v33, v36, v34);

  v37 = objc_allocWithZone(type metadata accessor for IMBTranscriptEmptyMessageViewController());
  v38 = sub_100030A78(v22);
  *&v38[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_messagesAppProxy + 8] = &off_1000DD808;
  swift_unknownObjectWeakAssign();
  if (*v7)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *v7 = v38;
  *(v7 + 1) = &off_1000DB8F8;
  v40 = v38;
  sub_1000767E0();
  v39 = v40;
}

id sub_1000783AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter];
  v7 = [objc_allocWithZone(BCFeatureFlag) init];
  *(v6 + 3) = sub_100005A24(0, &unk_1000F23F0, BCFeatureFlag_ptr);
  *(v6 + 4) = &off_1000DB3C8;
  *v6 = v7;
  v8 = &v3[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator] = 0;
  if (a2)
  {
    v9 = sub_1000AC02C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IMBMessagesAppViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100078514(void *a1)
{
  v3 = &v1[OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter];
  v4 = [objc_allocWithZone(BCFeatureFlag) init];
  *(v3 + 3) = sub_100005A24(0, &unk_1000F23F0, BCFeatureFlag_ptr);
  *(v3 + 4) = &off_1000DB3C8;
  *v3 = v4;
  v5 = &v1[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for IMBMessagesAppViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000786DC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBMessagesAppViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100078790()
{
  v1 = sub_1000AC8EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&qword_1000F0728, &unk_1000B1A10);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v22 = v0;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_1000AF0F0;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x80000001000BB9C0;
  v10 = *&v0[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  if (v10)
  {
    ObjectType = swift_getObjectType();
    *&v20 = v10;
    sub_100006910(&v20, (v9 + 48));
  }

  else
  {
    *(v8 + 72) = &type metadata for String;
    *(v8 + 48) = 7104878;
    *(v8 + 56) = 0xE300000000000000;
  }

  *(v9 + 80) = 0x65746E6573657270;
  *(v9 + 88) = 0xEB00000000435664;
  v11 = v0;
  v12 = v10;
  v13 = [v11 presentedViewController];
  if (v13)
  {
    v14 = v13;
    ObjectType = sub_100005A24(0, &qword_1000F1DE0, UIViewController_ptr);
    *&v20 = v14;
    sub_100006910(&v20, (v9 + 96));
  }

  else
  {
    *(v9 + 120) = &type metadata for String;
    *(v9 + 96) = 7104878;
    *(v9 + 104) = 0xE300000000000000;
  }

  v15 = enum case for Mirror.DisplayStyle.class(_:);
  v16 = sub_1000AC8DC();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  (*(v2 + 104))(v4, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  type metadata accessor for IMBMessagesAppViewController();
  return sub_1000AC8FC();
}

void sub_100078AD0(uint64_t a1, uint64_t a2)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FC008;
  v3 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000AF0F0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong description];

    v8 = sub_1000AC06C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v4 + 56) = &type metadata for String;
  v11 = sub_10000587C();
  *(v4 + 64) = v11;
  v12 = 0x80000001000BB9E0;
  v13 = 0xD000000000000024;
  if (v10)
  {
    v13 = v8;
    v12 = v10;
  }

  *(v4 + 32) = v13;
  *(v4 + 40) = v12;
  swift_getWitnessTable();
  v14 = sub_1000AC78C();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v11;
  *(v4 + 72) = v14;
  *(v4 + 80) = v15;
  sub_1000ABA5C("%{public}@: viewControllerDidFinish: %@", 39, 2, &_mh_execute_header, v2, v3, v4);

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    [v16 dismiss];
  }
}

uint64_t sub_100078CA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

char *sub_100078D04(void *a1, void *a2, uint64_t a3, char *a4)
{
  v26[3] = type metadata accessor for URLHelper(0);
  v26[4] = &off_1000DCB20;
  v8 = sub_100030970(v26);
  sub_100078F7C(a3, v8);
  *&a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_messagesAppProxy + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc] = 0;
  *&a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext] = a1;
  sub_10000E6D4(a2, &a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_featureFlagArbiter]);
  sub_10000E6D4(v26, &a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_urlHelper]);
  v25.receiver = a4;
  v25.super_class = type metadata accessor for IMBTranscriptMessageViewController();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v12 = qword_1000EEE80;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1000FC008;
  v15 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AF0F0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(ObjCClassFromMetadata);
  v19 = sub_1000AC06C();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000587C();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  v22 = *(*&v13[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext] + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage);
  *(v16 + 96) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
  *(v16 + 104) = sub_100078FE0(&qword_1000F23A0, &qword_1000EF020, BCMessage_ptr);
  *(v16 + 72) = v22;
  v23 = v22;
  sub_1000ABA5C("Created a %@ for message: %@", 28, 2, &_mh_execute_header, v14, v15, v16);

  sub_10000E738(a2);
  sub_10000E738(v26);
  return v13;
}

uint64_t sub_100078F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHelper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078FE0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005A24(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100079030(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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

id sub_100079084(void *a1, void *a2, uint64_t a3, char *a4)
{
  v23[3] = type metadata accessor for URLHelper(0);
  v23[4] = &off_1000DCB20;
  v8 = sub_100030970(v23);
  sub_100078F7C(a3, v8);
  v9 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_scrollview;
  *&a4[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar;
  *&a4[v10] = [objc_allocWithZone(UIToolbar) init];
  v11 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder;
  *&a4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem;
  v13 = type metadata accessor for IMBHTMLContentViewController();
  v14 = objc_allocWithZone(UIBarButtonItem);
  sub_10000413C(&unk_1000F06C0, &qword_1000B43E0);
  v15 = [v14 initWithBarButtonSystemItem:9 target:sub_1000AC7CC() action:{"shareButtonTapped:", v13}];
  swift_unknownObjectRelease();
  *&a4[v12] = v15;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webviewHeightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content] = 0;
  sub_10000E6D4(v23, v22);
  v16 = sub_1000315C0(v22, v22[3]);
  __chkstk_darwin(v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_1000A47C0(a1, a2, v18, a4);
  sub_10000E738(v23);
  sub_10000E738(v22);
  return v20;
}

id sub_10007930C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v21[3] = type metadata accessor for URLHelper(0);
  v21[4] = &off_1000DCB20;
  v8 = sub_100030970(v21);
  sub_100078F7C(a3, v8);
  v9 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dayLabel;
  *&a4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dateLabel;
  *&a4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_timeLabel;
  *&a4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_warningLabel;
  *&a4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_containerView;
  *&a4[v13] = [objc_allocWithZone(UIView) init];
  *&a4[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent] = 0;
  sub_10000E6D4(v21, v20);
  v14 = sub_1000315C0(v20, v20[3]);
  __chkstk_darwin(v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_1000A49E0(a1, a2, v16, a4);
  sub_10000E738(v21);
  sub_10000E738(v20);
  return v18;
}

id sub_10007951C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v16[3] = type metadata accessor for URLHelper(0);
  v16[4] = &off_1000DCB20;
  v8 = sub_100030970(v16);
  sub_100078F7C(a3, v8);
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary] = _swiftEmptyDictionarySingleton;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_conflictedEvents] = _swiftEmptyDictionarySingleton;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo] = 0;
  sub_10000E6D4(v16, v15);
  v9 = sub_1000315C0(v15, v15[3]);
  __chkstk_darwin(v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_1000A49E0(a1, a2, v11, a4);
  sub_10000E738(v16);
  sub_10000E738(v15);
  return v13;
}

id sub_1000796E8(void *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for URLHelper(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v21 - v12;
  sub_10001E7C8(a3);
  v14 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager;
  *&a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager] = 0;
  v15 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  *&a4[v15] = [objc_allocWithZone(type metadata accessor for IMBWebViewController()) initWithCallbackURI:BCOAuthRedirectURI];
  *&a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session] = 0;
  a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_didShowAuth] = 0;
  *&a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow] = 0;
  if ([a2 rootObject])
  {
    v21[1] = &OBJC_PROTOCOL___BCOAuth2RequestProtocol;
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (v16)
    {
      v17 = [objc_allocWithZone(BCAuthenticationManager) initWithAuthenticationRequest:v16];
      swift_unknownObjectRelease();
      v18 = *&a4[v14];
      *&a4[v14] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_10004EA70(v13);
  sub_10001E764(v13, v11);
  v19 = sub_1000A47C0(a1, a2, v11, a4);
  sub_10001E7C8(v13);
  return v19;
}

id sub_1000798CC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint] = 0;
  v3 = OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 0;
  *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IMBTimeslotView();

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100079D3C();
  sub_100079F40();

  return v4;
}

void sub_100079ACC(void *a1)
{
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
    v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 0;
    v6 = *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
    if (sub_10002CE60() > 1u)
    {
      v9 = [objc_opt_self() labelColor];
    }

    else
    {
      v7 = sub_10002CE60();
      v8 = sub_1000AC02C();
      v9 = [objc_opt_self() colorNamed:v8];

      if (v7 >= 2)
      {
        if (!v9)
        {
          __break(1u);
          return;
        }
      }

      else if (!v9)
      {
        __break(1u);
LABEL_11:
        v4 = 1;
        goto LABEL_12;
      }
    }

    [v6 setTextColor:v9];

    v19 = [v1 layer];
    sub_10007A630();
    v21 = v20;
    [v19 setBorderColor:v20];

    sub_10007A730(v1[v5]);
    v23 = v22;
    [v1 setBackgroundColor:?];
    goto LABEL_16;
  }

  v2 = *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot];
  if (a1[2] == *(v2 + 16) && a1[3] == *(v2 + 24))
  {
    goto LABEL_11;
  }

  v4 = sub_1000AC7AC();
LABEL_12:
  v10 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  v11 = v4 & 1;
  v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = v4 & 1;
  v12 = *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];

  sub_10007A518(v11);
  v14 = v13;
  [v12 setTextColor:v13];

  v15 = [v1 layer];
  sub_10007A630();
  v17 = v16;
  [v15 setBorderColor:v16];

  sub_10007A730(v1[v10]);
  v23 = v18;
  [v1 setBackgroundColor:?];

LABEL_16:
}

void sub_100079D3C()
{
  v1 = [v0 layer];
  v2 = sub_10002CE60();
  v3 = 8.0;
  if (v2 == 2)
  {
    v3 = 4.0;
  }

  [v1 setCornerRadius:v3];

  v4 = [v0 layer];
  [v4 setBorderWidth:1.0];

  v5 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  if (qword_1000EEE78 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_1000F2410];
  [v5 setTextAlignment:1];
  [v0 addSubview:v5];
  v6 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  sub_10007A518(v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected]);
  v8 = v7;
  [v5 setTextColor:v7];

  v9 = [v0 layer];
  sub_10007A630();
  v11 = v10;
  [v9 setBorderColor:v10];

  sub_10007A730(v0[v6]);
  v13 = v12;
  [v0 setBackgroundColor:v12];

  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"timeViewTappedWithGestureRecognizer:"];
  [v0 addGestureRecognizer:v14];
}

void sub_100079F40()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = sub_10002CE60();
  v5 = 12.0;
  if (v4 == 2)
  {
    v5 = 8.0;
  }

  v6 = [v2 constraintEqualToAnchor:v3 constant:v5];

  [v6 setActive:1];
  v7 = [v1 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = sub_10002CE60();
  v10 = -11.0;
  if (v9 == 2)
  {
    v10 = -8.0;
  }

  v11 = [v7 constraintEqualToAnchor:v8 constant:v10];

  [v11 setActive:1];
  v12 = [v1 centerXAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  [v14 setActive:1];
  LODWORD(v15) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = [v0 widthAnchor];
  v17 = [v16 constraintEqualToConstant:0.0];

  v18 = OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint;
  v19 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint];
  *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint] = v17;
  v20 = v17;

  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];

  v22 = *&v0[v18];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v22 setActive:1];
}

id sub_10007A230(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = 0.25;
  }

  else
  {
    v3 = 0.55;
  }

  v4 = &selRef_blackColor;
  if (v1 != 2)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

void sub_10007A2D0()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v1 = [objc_opt_self() systemFontOfSize:13.0];
    v2 = [v0 scaledFontForFont:v1];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  qword_1000F2410 = v2;
}

id sub_10007A3EC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBTimeslotView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10007A4B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_10007A518(char a1)
{
  if (sub_10002CE60() > 1u)
  {
    v2 = objc_opt_self();
    v3 = &selRef_labelColor;
    if (a1)
    {
      v3 = &selRef_whiteColor;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
LABEL_6:
    v4 = [v2 *v3];

    v5 = v4;
    return;
  }

  v6 = sub_10002CE60();
  v7 = sub_1000AC02C();
  v8 = [objc_opt_self() colorNamed:v7];

  if (v6 < 2)
  {
    if (v8)
    {
      return;
    }

    __break(1u);
  }

  if (!v8)
  {
    __break(1u);
  }
}

void sub_10007A630()
{
  if (sub_10002CE60() > 1u)
  {
    goto LABEL_5;
  }

  v0 = sub_10002CE60();
  v1 = sub_1000AC02C();
  v2 = [objc_opt_self() colorNamed:v1];

  if (v0 < 2)
  {
    if (!v2)
    {
      __break(1u);
LABEL_5:
      v2 = [objc_opt_self() clearColor];
      v3 = [v2 CGColor];
LABEL_8:
      v3;

      return;
    }

LABEL_7:
    v3 = [v2 CGColor];
    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10007A730(char a1)
{
  LOBYTE(v1) = a1;
  if (sub_10002CE60() <= 1u)
  {
    if ((v1 & 1) == 0)
    {
LABEL_10:
      v6 = [objc_opt_self() clearColor];

      v7 = v6;
      return;
    }

    v2 = sub_10002CE60();
    v3 = sub_1000AC02C();
    v1 = [objc_opt_self() colorNamed:v3];

    if (v2 >= 2)
    {
      if (v1)
      {
        return;
      }

      __break(1u);
      goto LABEL_16;
    }

    if (v1)
    {
      return;
    }

    __break(1u);
  }

  if ((v1 & 1) == 0)
  {
    v8 = objc_allocWithZone(UIColor);
    v10[4] = sub_10007A230;
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10007A4B0;
    v10[3] = &unk_1000DD840;
    v9 = _Block_copy(v10);
    [v8 initWithDynamicProvider:v9];
    _Block_release(v9);

    return;
  }

  v4 = sub_10002CE60();
  v5 = sub_1000AC02C();
  v1 = [objc_opt_self() colorNamed:v5];

  if (v4 < 2)
  {
    if (v1)
    {
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_16:
  if (!v1)
  {
    __break(1u);
  }
}

double sub_10007A93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10007A954()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  v2 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  sub_10007A518(v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected]);
  v4 = v3;
  [v1 setTextColor:v3];

  v5 = [v0 layer];
  sub_10007A630();
  v7 = v6;
  [v5 setBorderColor:v6];

  sub_10007A730(v0[v2]);
  v9 = v8;
  [v0 setBackgroundColor:v8];
}

void sub_10007AA2C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(*&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot], ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 1;
  v6 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  sub_10002CE60();
  v7 = [objc_opt_self() whiteColor];
  [v6 setTextColor:v7];

  v8 = [v1 layer];
  sub_10007A630();
  v10 = v9;
  [v8 setBorderColor:v9];

  sub_10007A730(*(v1 + v5));
  v12 = v11;
  [v1 setBackgroundColor:v11];
}

uint64_t sub_10007AC4C()
{

  return swift_deallocClassInstance();
}

void *sub_10007ACA8(void *a1, void *a2, char a3)
{
  v65._object = a2;
  *&v3[OBJC_IVAR____TtC8Business26QuickReplyFromMeBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v71.receiver = v3;
  v71.super_class = type metadata accessor for QuickReplyFromMeBubbleView();
  v5 = objc_msgSendSuper2(&v71, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = qword_1000EEDA8;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  [v7 setBackgroundColor:qword_1000FBED8];
  v8 = [objc_allocWithZone(UILabel) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v66 = objc_opt_self();
  v9 = [v66 labelColor];
  [v8 setTextColor:v9];

  [v8 setMinimumScaleFactor:0.4];
  [v8 setAdjustsFontSizeToFitWidth:1];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v12 = [v11 fontDescriptorWithSymbolicTraits:0x8000];
  v68 = a1;
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1000AF0E0;
  *(v15 + 32) = UIFontWeightTrait;
  *(v15 + 40) = UIFontWeightSemibold;
  v16 = UIFontDescriptorTraitsAttribute;
  v17 = UIFontWeightTrait;
  v18 = sub_10004FA58(v15);
  swift_setDeallocating();
  sub_10000E784(v15 + 32, &qword_1000EF8C0, &qword_1000B0608);
  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v18;
  sub_10004FB48(inited);
  swift_setDeallocating();
  sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
  type metadata accessor for AttributeName(0);
  sub_10007BCD0(&qword_1000EF1A0, type metadata accessor for AttributeName, &unk_1000B0350);
  isa = sub_1000ABFAC().super.isa;

  v20 = [v11 fontDescriptorByAddingAttributes:isa];

  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v20 size:0.0];

  [v8 setFont:v22];
  [v8 setNumberOfLines:0];
  type metadata accessor for UILayoutPriority(0);
  sub_10007BCD0(&qword_1000F2558, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  sub_1000ABA9C();
  LODWORD(v23) = v70;
  [v8 setContentCompressionResistancePriority:0 forAxis:v23];
  sub_1000ABA9C();
  LODWORD(v24) = v70;
  [v8 setContentCompressionResistancePriority:1 forAxis:v24];
  sub_1000ABAAC();
  LODWORD(v25) = v70;
  [v8 setContentHuggingPriority:0 forAxis:v25];
  sub_1000ABAAC();
  LODWORD(v26) = v70;
  [v8 setContentHuggingPriority:1 forAxis:v26];
  if ((a3 & 1) != 0 || (v65._object & 0x8000000000000000) != 0 || v68[2] <= v65._object)
  {
  }

  else
  {

    v27 = sub_1000AC02C();

    [v8 setText:v27];
  }

  v28 = [objc_allocWithZone(UILabel) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v66 secondaryLabelColor];
  [v28 setTextColor:v29];

  [v28 setMinimumScaleFactor:0.4];
  [v28 setAdjustsFontSizeToFitWidth:1];
  v30 = [v10 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v31 = [v30 fontDescriptorWithSymbolicTraits:0x8000];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  v33 = [v21 fontWithDescriptor:v30 size:0.0];

  [v28 setFont:v33];
  v34 = [objc_opt_self() mainBundle];
  v65._countAndFlagsBits = 0xE000000000000000;
  v72._countAndFlagsBits = 0x44455443454C4553;
  v72._object = 0xEF4E4F4954504F5FLL;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v35.super.isa = v34;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_1000AB61C(v72, v73, v35, v74, 0, v65);

  v36 = sub_1000AC02C();

  [v28 setText:v36];

  [v28 setNumberOfLines:0];
  sub_1000ABAAC();
  LODWORD(v37) = v70;
  [v28 setContentCompressionResistancePriority:0 forAxis:v37];
  sub_1000ABAAC();
  LODWORD(v38) = v70;
  [v28 setContentCompressionResistancePriority:1 forAxis:v38];
  sub_1000ABAAC();
  LODWORD(v39) = v70;
  [v28 setContentHuggingPriority:0 forAxis:v39];
  sub_1000ABAAC();
  LODWORD(v40) = v70;
  [v28 setContentHuggingPriority:1 forAxis:v40];
  [v7 addSubview:v8];
  [v7 addSubview:v28];
  v69 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000B08F0;
  v42 = [v8 topAnchor];
  v43 = [v7 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:10.0];

  *(v41 + 32) = v44;
  v45 = [v8 leadingAnchor];
  v46 = [v7 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:16.0];

  *(v41 + 40) = v47;
  v48 = [v8 trailingAnchor];
  v49 = [v7 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-16.0];

  *(v41 + 48) = v50;
  v51 = [v28 topAnchor];
  v52 = [v8 bottomAnchor];

  v53 = [v51 constraintEqualToAnchor:v52 constant:2.0];
  *(v41 + 56) = v53;
  v54 = [v28 leadingAnchor];
  v55 = [v7 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:16.0];

  *(v41 + 64) = v56;
  v57 = [v28 bottomAnchor];
  v58 = [v7 bottomAnchor];
  if (qword_1000EEDB8 != -1)
  {
    swift_once();
  }

  v59 = [v57 constraintEqualToAnchor:v58 constant:-10.0 - *&qword_1000FBEE8];

  *(v41 + 72) = v59;
  v60 = [v28 trailingAnchor];

  v61 = [v7 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-16.0];

  *(v41 + 80) = v62;
  sub_10000F840();
  v63 = sub_1000AC18C().super.isa;

  [v69 activateConstraints:v63];

  sub_10007B874();
  return v7;
}

void sub_10007B874()
{
  v1 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  v2 = [objc_allocWithZone(UIPanGestureRecognizer) init];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v3 setNumberOfTapsRequired:2];
  v4 = v3;
  [v4 setCancelsTouchesInView:0];
  [v4 setDelaysTouchesEnded:0];

  v5 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v5 requireGestureRecognizerToFail:v1];
  [v5 requireGestureRecognizerToFail:v2];
  [v5 requireGestureRecognizerToFail:v4];
  [v5 setCancelsTouchesInView:0];
  [v5 setDelaysTouchesEnded:0];
  [v0 addGestureRecognizer:v1];
  [v0 addGestureRecognizer:v2];
  [v0 addGestureRecognizer:v4];
  [v0 addGestureRecognizer:v5];
}

double sub_10007BA78(double a1, double a2, double a3, double a4)
{
  [v4 systemLayoutSizeFittingSize:fmin(a1 withHorizontalFittingPriority:263.0) verticalFittingPriority:?];
  v6 = v5;
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v7 = qword_1000FC008;
  v8 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  v10 = sub_1000AC36C();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000587C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1000AC36C();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_1000ABA5C("QuickReplyFromMeBubbleView.contentSizeThatFits: size %@ preferredSize: %@", 73, 2, &_mh_execute_header, v7, v8, v9);

  return v6;
}

id sub_10007BC18(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QuickReplyFromMeBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10007BC80(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business26QuickReplyFromMeBubbleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10007BCD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10007BE00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SeparatorView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10007BE34()
{
  v1 = [*v0 leadingAnchor];

  return v1;
}

id sub_10007BE6C()
{
  v1 = [*v0 trailingAnchor];

  return v1;
}

id sub_10007BEA4()
{
  v1 = [*v0 topAnchor];

  return v1;
}

void *sub_10007BF40(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_10004F0CC(0x6C6562616CLL, 0xE500000000000000), (v5 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v4, v19), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16))
    {
      v6 = sub_10004F0CC(0x746E756F6D61, 0xE600000000000000);
      if (v7)
      {
        sub_1000068B4(*(a1 + 56) + 32 * v6, v19);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16) && (v8 = sub_10004F0CC(1701869940, 0xE400000000000000), (v9 & 1) != 0))
          {
            sub_1000068B4(*(a1 + 56) + 32 * v8, v19);

            if (swift_dynamicCast())
            {
              if (v17 == 0x676E69646E6570 && v18 == 0xE700000000000000)
              {

                v10 = 1;
LABEL_23:
                v2[5] = v18;
                v2[6] = v10;
                v2[2] = v17;
                v2[3] = v18;
                v2[4] = v17;
                return v2;
              }

              v16 = sub_1000AC7AC();

              if (v16)
              {
                v10 = 1;
                goto LABEL_23;
              }
            }
          }

          else
          {
          }

          v10 = 0;
          goto LABEL_23;
        }
      }
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v14 = qword_1000FC008;
    v15 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create proposed line item: AmountDictionaryKey is missing", 67, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
  }

  else
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v11 = qword_1000FC008;
    v12 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create proposed line item: LabelDictionaryKey is missing", 66, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);
  }

  type metadata accessor for IMBLineItem();
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_10007C280()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v14 = &type metadata for String;
  *&v13 = v2;
  *(&v13 + 1) = v3;
  sub_100006910(&v13, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 0x6C6562616CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v5 = v1[4];
  v6 = v1[5];
  v14 = &type metadata for String;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  sub_100006910(&v13, v12);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 0x746E756F6D61, 0xE600000000000000, v7);
  v8 = v1[6];
  type metadata accessor for PKPaymentSummaryItemType(0);
  v14 = v9;
  *&v13 = v8;
  sub_100006910(&v13, v12);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 1701869940, 0xE400000000000000, v10);
  return _swiftEmptyDictionarySingleton;
}

id sub_10007C3AC()
{
  v1 = objc_allocWithZone(NSDecimalNumber);
  v2 = sub_1000AC02C();
  v3 = [v1 initWithString:v2];

  v4 = sub_1000AC02C();
  v5 = [objc_opt_self() summaryItemWithLabel:v4 amount:v3];

  [v5 setType:*(v0 + 48)];
  return v5;
}

uint64_t sub_10007C478()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10007C670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

id sub_10007C770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleOptionsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BIABubbleOptionsViewController(uint64_t a1)
{
  result = qword_1000F2720;
  if (!qword_1000F2720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007C8A4(uint64_t a1)
{
  sub_10005C128(319);
  if (v1 <= 0x3F)
  {
    sub_10007C984();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007C984()
{
  if (!qword_1000F2730)
  {
    v0 = sub_1000ABC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F2730);
    }
  }
}

uint64_t sub_10007C9DC(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10007CA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45.receiver = v3;
  v45.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v4 = [objc_allocWithZone(type metadata accessor for RetryView()) init];
  v5 = &v3[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  *&v4[OBJC_IVAR____TtC8Business9RetryView_delegate + 8] = *(v5 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v6 = v4;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v3 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 addSubview:v6];

  v9 = [v6 topAnchor];
  v10 = [v3 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 layoutMarginsGuide];

  v13 = [v12 topAnchor];
  v14 = [v9 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];

  LODWORD(v15) = 1132068864;
  [v14 setPriority:v15];
  v16 = [v6 bottomAnchor];
  v17 = [v3 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 layoutMarginsGuide];

  v20 = [v19 bottomAnchor];
  v21 = [v16 constraintGreaterThanOrEqualToAnchor:v20];

  LODWORD(v22) = 1132068864;
  [v21 setPriority:v22];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000B08E0;
  v24 = [v6 centerYAnchor];
  v25 = [v3 view];
  if (!v25)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = v25;
  v27 = [v25 centerYAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v23 + 32) = v28;
  v29 = [v6 leadingAnchor];
  v30 = [v3 view];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31 = v30;
  v32 = [v30 layoutMarginsGuide];

  v33 = [v32 leadingAnchor];
  v34 = [v29 constraintEqualToAnchor:v33];

  *(v23 + 40) = v34;
  v35 = [v6 trailingAnchor];

  v36 = [v3 view];
  if (v36)
  {
    v37 = v36;
    v38 = objc_opt_self();
    v39 = [v37 layoutMarginsGuide];

    v40 = [v39 trailingAnchor];
    v41 = [v35 constraintEqualToAnchor:v40];

    *(v23 + 48) = v41;
    *(v23 + 56) = v14;
    *(v23 + 64) = v21;
    sub_10000F840();
    v42 = v14;
    v43 = v21;
    isa = sub_1000AC18C().super.isa;

    [v38 activateConstraints:isa];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10007D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10007D128()
{

  return swift_deallocClassInstance();
}

id sub_10007D194()
{
  v1 = OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC8Business13IMBWebURLView_separator;
  *&v0[v2] = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  v4 = sub_1000AB6EC();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IMBWebURLView(0);
  v5 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10007D49C();
  sub_10007D648();
  if (sub_10002CE60() == 2)
  {
    v6 = objc_allocWithZone(UIContextMenuInteraction);
    v7 = v5;
    v8 = [v6 initWithDelegate:v7];
    [v7 addInteraction:v8];
    v9 = [objc_allocWithZone(UIToolTipInteraction) init];
    [v9 setDelegate:v7];

    [v7 addInteraction:v9];
  }

  else
  {
    v9 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v5 action:"handleLongPress"];
    [v9 setDelegate:v5];
    [v5 addGestureRecognizer:v9];
  }

  return v5;
}

id sub_10007D49C()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel];
  [v1 setNumberOfLines:1];
  v2 = [objc_opt_self() defaultMetrics];
  v3 = objc_opt_self();
  [v3 labelFontSize];
  v4 = [v3 boldSystemFontOfSize:?];
  v5 = [v2 scaledFontForFont:v4];

  [v1 setFont:v5];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v1 setTextColor:v7];

  [v1 setTextAlignment:1];
  v8 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_separator];
  v9 = [v6 systemGray2Color];
  [v8 setBackgroundColor:v9];

  [v0 addSubview:v1];

  return [v0 addSubview:v8];
}

void sub_10007D648()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_separator];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B04B0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 8.0;
  }

  v38 = objc_opt_self();
  v8 = [v5 constraintEqualToAnchor:v6 constant:v7];

  *(v4 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v1 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v4 + 48) = v16;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v38 activateConstraints:isa];

  v18 = [v3 bottomAnchor];
  v19 = [v1 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000B08E0;
  v23 = [v3 topAnchor];
  v24 = [v2 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:8.0];

  *(v22 + 32) = v25;
  v26 = [v3 leftAnchor];
  v27 = [v1 leftAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v3 rightAnchor];
  v30 = [v1 rightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = [v3 heightAnchor];
  v33 = [objc_opt_self() mainScreen];
  [v33 scale];
  v35 = v34;

  v36 = [v32 constraintEqualToConstant:1.0 / v35];
  *(v22 + 56) = v36;
  *(v22 + 64) = v20;
  v37 = v20;
  v39 = sub_1000AC18C().super.isa;

  [v38 activateConstraints:v39];
}

uint64_t sub_10007DB4C(uint64_t a1, int a2)
{
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v21[-v9];
  v11 = sub_1000AB6EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003C3C8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000E784(v10, &unk_1000F06A0, &unk_1000B0450);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = *(v12 + 16);
  v16(v8, v14, v11);
  v22 = a2;
  v17 = *(v12 + 56);
  v17(v8, 0, 1, v11);
  v18 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  swift_beginAccess();
  sub_10007F374(v8, v2 + v18);
  swift_endAccess();
  v19 = *(v2 + OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel);
  v16(v8, v14, v11);
  v17(v8, 0, 1, v11);
  v20 = sub_10007DE04(v8, v22 & 1);
  sub_10000E784(v8, &unk_1000F06A0, &unk_1000B0450);
  [v19 setAttributedText:v20];

  return (*(v12 + 8))(v14, v11);
}

id sub_10007DE04(uint64_t a1, char a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v4 - 8);
  v6 = v56 - v5;
  v7 = [objc_allocWithZone(NSMutableAttributedString) init];
  v8 = [objc_allocWithZone(NSMutableAttributedString) init];
  sub_10003C3C8(a1, v6);
  v9 = sub_1000AB6EC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {

    sub_10000E784(v6, &unk_1000F06A0, &unk_1000B0450);
  }

  else
  {
    v58 = v8;
    v56[1] = URL.displayDomainString.getter();
    v56[2] = v11;
    (*(v10 + 8))(v6, v9);
    v57 = v7;
    if (a2)
    {
      v12 = [objc_allocWithZone(NSTextAttachment) init];
      v13 = objc_opt_self();
      v14 = sub_1000AC02C();
      v15 = [v13 __systemImageNamedSwift:v14];

      if (v15)
      {
        v16 = [v15 imageWithRenderingMode:2];
      }

      else
      {
        v16 = 0;
      }

      v31 = [objc_opt_self() defaultMetrics];
      v32 = objc_opt_self();
      [v32 labelFontSize];
      v33 = [v32 boldSystemFontOfSize:?];
      v34 = [v31 scaledFontForFont:v33];

      [v34 capHeight];
      v36 = v35;

      v37 = [objc_opt_self() configurationWithPointSize:7 weight:v36];
      v38 = [v16 imageByApplyingSymbolConfiguration:v37];
      [v12 setImage:v38];

      v39 = [objc_opt_self() attributedStringWithAttachment:v12];
      v40 = v58;
      [v58 appendAttributedString:v39];
      v41 = [objc_opt_self() labelColor];
      v42 = [v39 length];
      v56[0] = NSForegroundColorAttributeName;
      [v40 addAttribute:NSForegroundColorAttributeName value:v41 range:{0, v42}];

      isa = sub_1000AC1EC().super.super.isa;
      [v40 addAttribute:NSBaselineOffsetAttributeName value:isa range:{0, objc_msgSend(v39, "length")}];
    }

    else
    {
      v17 = [objc_opt_self() mainBundle];
      v55._countAndFlagsBits = 0xE000000000000000;
      v60._countAndFlagsBits = 0x554345535F544F4ELL;
      v60._object = 0xEA00000000004552;
      v61.value._countAndFlagsBits = 0;
      v61.value._object = 0;
      v18.super.isa = v17;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      sub_1000AB61C(v60, v61, v18, v62, 0, v55);

      v19 = objc_allocWithZone(NSMutableAttributedString);
      v20 = sub_1000AC02C();

      v21 = [v19 initWithString:v20];

      v22 = v58;
      [v58 appendAttributedString:v21];

      v23 = [objc_opt_self() secondaryLabelColor];
      v24 = v22;
      v25 = [v24 length];
      v56[0] = NSForegroundColorAttributeName;
      [v24 addAttribute:NSForegroundColorAttributeName value:v23 range:{0, v25}];

      v26 = [objc_opt_self() defaultMetrics];
      v27 = objc_opt_self();
      [v27 labelFontSize];
      v28 = [v27 systemFontOfSize:?];
      isa = [v26 scaledFontForFont:v28];

      v30 = [v24 length];
      [v24 addAttribute:NSFontAttributeName value:isa range:{0, v30}];
    }

    v43 = objc_allocWithZone(NSMutableAttributedString);
    v44 = sub_1000AC02C();

    v45 = [v43 initWithString:v44];

    v46 = objc_allocWithZone(NSMutableAttributedString);
    v47 = sub_1000AC02C();

    v48 = [v46 initWithString:v47];

    v49 = [v59 effectiveUserInterfaceLayoutDirection];
    v50 = [objc_opt_self() secondaryLabelColor];
    v51 = [v48 length];
    [v48 addAttribute:v56[0] value:v50 range:{0, v51}];

    v7 = v57;
    if (v49 == 1)
    {
      [v57 appendAttributedString:v45];
      [v7 appendAttributedString:v48];
      v52 = v58;
      [v7 appendAttributedString:v58];
    }

    else
    {
      v53 = v58;
      [v57 appendAttributedString:v58];
      [v7 appendAttributedString:v48];
      [v7 appendAttributedString:v45];
    }
  }

  return v7;
}

void sub_10007E664()
{
  v1 = sub_1000AB6EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = [objc_opt_self() generalPasteboard];
  v9 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  swift_beginAccess();
  sub_10003C3C8(v0 + v9, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000E784(v7, &unk_1000F06A0, &unk_1000B0450);
    v10 = 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10000E784(v7, &unk_1000F06A0, &unk_1000B0450);
    sub_1000AB64C();
    (*(v2 + 8))(v4, v1);
    v10 = sub_1000AC02C();
  }

  [v8 setString:v10];
}

id sub_10007E934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBWebURLView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IMBWebURLView(uint64_t a1)
{
  result = qword_1000F28B0;
  if (!qword_1000F28B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007EA20(uint64_t a1)
{
  sub_10007EAC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10007EAC0(uint64_t a1)
{
  if (!qword_1000F28C0)
  {
    sub_1000AB6EC();
    v1 = sub_1000AC42C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000F28C0);
    }
  }
}

Class sub_10007EBEC(uint64_t a1, void *a2)
{
  sub_100005A24(0, &qword_1000F2A00, UIAction_ptr);
  v3 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v13._object = 0x80000001000BC390;
  v13._countAndFlagsBits = 0xD000000000000014;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v4.super.isa = v3;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000AB61C(v13, v15, v4, v17, 0, v10);

  *(swift_allocObject() + 16) = a2;
  v5 = a2;
  v6 = sub_1000AC3EC();
  sub_100005A24(0, &qword_1000F2A08, UIMenu_ptr);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000B04C0;
  *(v7 + 32) = v6;
  v11 = v7;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  v8.value = 0;
  return sub_1000AC37C(v14, v16, v12, v8, 0xFFFFFFFFFFFFFFFFLL, v11, 0).super.super.isa;
}

id sub_10007ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10007F01C;
  v17 = &unk_1000DD978;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10007F06C;
  v17 = &unk_1000DD950;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_100026FE0(a4, a5);
  sub_100026FE0(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

id sub_10007F01C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10007F06C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100005A24(0, &qword_1000F29F8, UIMenuElement_ptr);
  v3 = sub_1000AC19C();

  v4 = v2(v3);

  return v4;
}

id sub_10007F0FC()
{
  v1 = sub_1000AB6EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  swift_beginAccess();
  sub_10003C3C8(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000E784(v7, &unk_1000F06A0, &unk_1000B0450);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10000E784(v7, &unk_1000F06A0, &unk_1000B0450);
    sub_1000AB64C();
    (*(v2 + 8))(v4, v1);
    v10 = sub_1000AC02C();

    v11 = [objc_opt_self() configurationWithToolTip:v10];

    return v11;
  }
}

uint64_t sub_10007F308()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10007F348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10007F374(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10007F3F0()
{
  sub_1000A8790();
  v1 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
  v2 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0xE000000000000000;
  v10._countAndFlagsBits = 0x4E495F4E474953;
  v10._object = 0xE700000000000000;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v3.super.isa = v2;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000AB61C(v10, v11, v3, v12, 0, v8);

  v4 = sub_1000AC02C();

  [v1 setText:v4];

  if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowButton) ^ 1;
  }

  [v1 setHidden:v5 & 1];
  v6 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);

  return [v6 addSubview:v1];
}

void sub_10007F534()
{
  sub_1000A8C28();
  [*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator) setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = objc_opt_self();
  v36 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);

  isa = sub_1000AC18C().super.isa;

  [v1 deactivateConstraints:isa];

  v3 = sub_1000AC18C().super.isa;

  [v1 deactivateConstraints:v3];

  v35 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);

  v4 = sub_1000AC18C().super.isa;

  v34 = v1;
  [v1 deactivateConstraints:v4];

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000B04B0;
  v6 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
  v7 = [v6 topAnchor];
  v8 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v9 = [v8 topAnchor];
  v10 = [v7 constraintGreaterThanOrEqualToAnchor:v9 constant:10.0];

  *(v5 + 32) = v10;
  v11 = [v6 bottomAnchor];
  v12 = [v8 bottomAnchor];
  v13 = [v11 constraintLessThanOrEqualToAnchor:v12 constant:-10.0];

  *(v5 + 40) = v13;
  v14 = [v6 centerYAnchor];
  v15 = [v8 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v5 + 48) = v16;
  *v35 = v5;

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000B04B0;
  v18 = [v6 topAnchor];
  v19 = [v8 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:10.0];

  *(v17 + 32) = v20;
  v21 = [v6 bottomAnchor];
  v22 = [v8 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-10.0];

  *(v17 + 40) = v23;
  v24 = [v6 leadingAnchor];
  v25 = [v8 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 48) = v26;
  *v36 = v17;

  if (UIApp)
  {
    v27 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      LODWORD(v29) = 1144750080;
      [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel) setContentCompressionResistancePriority:1 forAxis:v29];
    }

    v30 = sub_1000AC06C();
    v32 = v31;
    if (v30 == sub_1000AC06C() && v32 == v33)
    {
    }

    else
    {
      sub_1000AC7AC();
    }

    sub_1000802BC();
    sub_10007FBD0();
    v37 = sub_1000AC18C().super.isa;

    [v34 activateConstraints:v37];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007FACC()
{
  v1 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor];
  [v0 setBackgroundColor:v2];
  [*&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground] setBackgroundColor:v2];
  v3 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator] layer];
  v4 = v3;
  if (qword_1000EED80 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 setBackgroundColor:qword_1000FBE88];
}

id sub_10007FBD0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage) == 1)
  {
    v2 = sub_1000AC06C();
    v4 = v3;
    if (v2 == sub_1000AC06C() && v4 == v5)
    {
    }

    else
    {
      v7 = sub_1000AC7AC();

      if ((v7 & 1) == 0)
      {
        v9 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImageLeft);
        sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000B04D0;
        v11 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
        if (v9 == 1)
        {
          v12 = [v11 leadingAnchor];
          v13 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
          v14 = [v13 leadingAnchor];
          v15 = [v12 constraintEqualToAnchor:v14];

          *(inited + 32) = v15;
          v16 = [v11 centerYAnchor];
          v17 = [v13 centerYAnchor];
          v18 = [v16 constraintEqualToAnchor:v17];

          *(inited + 40) = v18;
          v19 = [v11 trailingAnchor];
          v20 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
          v21 = [v20 leadingAnchor];
          v22 = [v19 constraintEqualToAnchor:v21 constant:-10.0];

          *(inited + 48) = v22;
          v23 = [v20 trailingAnchor];
          v24 = [v13 trailingAnchor];
          v25 = [v23 constraintLessThanOrEqualToAnchor:v24 constant:-10.0];
        }

        else
        {
          v42 = [v11 trailingAnchor];
          v43 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
          v44 = [v43 trailingAnchor];
          v45 = [v42 constraintEqualToAnchor:v44];

          *(inited + 32) = v45;
          v46 = [v11 centerYAnchor];
          v47 = [v43 centerYAnchor];
          v48 = [v46 constraintEqualToAnchor:v47];

          *(inited + 40) = v48;
          v49 = [v11 leadingAnchor];
          v50 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
          v51 = [v50 trailingAnchor];
          v52 = [v49 constraintEqualToAnchor:v51 constant:10.0];

          *(inited + 48) = v52;
          v23 = [v50 leadingAnchor];
          v24 = [v43 leadingAnchor];
          v25 = [v23 constraintEqualToAnchor:v24];
        }

        *(inited + 56) = v25;
        return sub_1000A50CC(inited);
      }
    }
  }

  else
  {
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1000B04D0;
    v27 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
    v28 = [v27 trailingAnchor];
    v29 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
    v30 = [v29 trailingAnchor];
    v31 = [v28 constraintLessThanOrEqualToAnchor:v30 constant:-10.0];

    *(v26 + 32) = v31;
    v32 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
    v33 = [v32 leadingAnchor];
    v34 = [v29 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v26 + 40) = v35;
    v36 = [v32 trailingAnchor];
    v37 = [v27 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v26 + 48) = v38;
    v39 = [v27 leadingAnchor];
    v40 = [v29 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v26 + 56) = v41;
    sub_1000A50CC(v26);
    result = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint);
    if (result)
    {
      return [result setConstant:0.0];
    }
  }

  return result;
}

uint64_t sub_1000802BC()
{
  if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImageLeft) == 1)
  {
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B04B0;
    v2 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
    v3 = [v2 leadingAnchor];
    v52 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
    v4 = [v52 trailingAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:10.0];

    *(inited + 32) = v5;
    v6 = [v2 trailingAnchor];
    v7 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
    v8 = [v7 trailingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];

    *(inited + 40) = v9;
    v10 = [v2 centerYAnchor];
    v11 = [v7 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(inited + 48) = v12;
    sub_1000A50CC(inited);
    if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowButton) == 1)
    {
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1000B3780;
      v14 = [v2 widthAnchor];
      v15 = [v14 constraintGreaterThanOrEqualToConstant:65.0];

      *(v13 + 32) = v15;
      v16 = [v2 heightAnchor];
      v17 = [v16 constraintGreaterThanOrEqualToConstant:30.0];

      *(v13 + 40) = v17;
      sub_1000A50CC(v13);
      LODWORD(v18) = 1148846080;
      [v2 setContentHuggingPriority:1 forAxis:v18];
      LODWORD(v19) = 1148846080;
      [v2 setContentHuggingPriority:0 forAxis:v19];
      v20 = sub_1000AC06C();
      v22 = v21;
      if (v20 == sub_1000AC06C() && v22 == v23)
      {
      }

      else
      {
        v41 = sub_1000AC7AC();

        if ((v41 & 1) == 0)
        {
          return result;
        }
      }

      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_1000B04B0;
      v43 = [v2 leadingAnchor];
      v44 = [v52 trailingAnchor];
      v45 = [v43 constraintEqualToAnchor:v44 constant:10.0];

      *(v42 + 32) = v45;
      v46 = [v2 trailingAnchor];
      v47 = [v7 trailingAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];

      *(v42 + 40) = v48;
      v49 = [v2 centerYAnchor];
      v50 = [v7 centerYAnchor];
      v51 = [v49 constraintEqualToAnchor:v50];

      v36 = v42;
      *(v42 + 48) = v51;
    }

    else
    {
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1000B3780;
      v32 = [v2 widthAnchor];
      v33 = [v32 constraintEqualToConstant:0.0];

      *(v31 + 32) = v33;
      v34 = [v2 heightAnchor];
      v35 = [v34 constraintEqualToConstant:0.0];

      v36 = v31;
      *(v31 + 40) = v35;
    }

    return sub_1000A50CC(v36);
  }

  v24 = sub_1000AC06C();
  v26 = v25;
  if (v24 == sub_1000AC06C() && v26 == v27)
  {

    goto LABEL_14;
  }

  v29 = sub_1000AC7AC();

  if (v29)
  {
LABEL_14:
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1000B04C0;
    v38 = [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer) trailingAnchor];
    v39 = [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView) trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    v36 = v37;
    *(v37 + 32) = v40;
    return sub_1000A50CC(v36);
  }

  return result;
}

void sub_100080B0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
}

id sub_100080B4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBActionBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100080BF0()
{
  result = qword_1000F2A70;
  if (!qword_1000F2A70)
  {
    sub_100005A24(255, &qword_1000F2A68, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F2A70);
  }

  return result;
}

void *sub_100080C58(int a1, void *a2, void *a3)
{
  v34 = a1;
  v6 = type metadata accessor for URLHelper(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v33[-v10];
  v12 = OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator;
  *&v3[v12] = [objc_allocWithZone(type metadata accessor for IMBAuthenticationTapIndicator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] = a3;
  v13 = a3;
  v14 = [v13 rootKey];
  v15 = sub_1000AC06C();
  v17 = v16;

  if (v15 == sub_1000AC06C() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_1000AC7AC();

    if ((v20 & 1) == 0 && [v13 rootObject])
    {
      swift_unknownObjectRelease();
      v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid] = 0;
      v21 = (v34 & 1) == 0;
      v22 = 1;
      goto LABEL_10;
    }
  }

  v21 = 0;
  v22 = 0;
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid] = 1;
LABEL_10:
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowButton] = v21;
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage] = v22;
  v23 = [v13 isFromMe];
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImageLeft] = v23 ^ 1;
  v24 = [v13 rootKey];
  if (!v24)
  {
    sub_1000AC06C();
    v24 = sub_1000AC02C();
  }

  if (v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid])
  {
    goto LABEL_17;
  }

  v25 = sub_1000AC06C();
  v27 = v26;
  if (v25 == sub_1000AC06C() && v27 == v28)
  {

LABEL_17:
    a2 = BCBubbleViewStyleIcon;
    goto LABEL_18;
  }

  v29 = sub_1000AC7AC();

  if (v29)
  {
    goto LABEL_17;
  }

LABEL_18:
  v30 = a2;
  sub_10004EA70(v11);
  sub_10001E764(v11, v9);
  v31 = sub_10003F008(v34 & 1, v30, v9, v3);

  sub_10001E7C8(v11);
  return v31;
}

void sub_100081094()
{
  v1 = v0;
  sub_100005A24(0, &qword_1000F2AA8, BCOAuth2Request_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1000AC02C();
  v5 = sub_1000AC02C();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_1000AC06C();
  v9 = v8;

  v17 = [objc_allocWithZone(NSMutableAttributedString) init];
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
  }

  else
  {
    v10._countAndFlagsBits = v7;
    v10._object = v9;
  }

  sub_1000AC12C(v10);

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_1000AC02C();

  v13 = [v11 initWithString:v12];

  [v17 appendAttributedString:v13];
  v14 = *&v1[OBJC_IVAR____TtC8Business15IMBWebTitleView_titleLabel];
  [v14 setNumberOfLines:0];
  v15 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v14 setFont:v15];

  v16 = [objc_opt_self() labelColor];
  [v14 setTextColor:v16];

  [v14 setAttributedText:v17];
  [v14 setTextAlignment:1];
  [v1 addSubview:v14];
}

void sub_100081360()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business15IMBWebTitleView_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_10002CE60();
  v4 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000B04D0;
  v6 = [v2 topAnchor];
  v7 = [v1 topAnchor];
  if (v3 == 2)
  {
    v8 = [v6 constraintEqualToAnchor:v7 constant:8.0];

    *(v5 + 32) = v8;
    v9 = [v2 leadingAnchor];
    v10 = [v1 layoutMarginsGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v5 + 40) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [v1 layoutMarginsGuide];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v5 + 48) = v16;
    v17 = [v2 centerYAnchor];
    v18 = [v1 layoutMarginsGuide];
    v19 = [v18 centerYAnchor];
  }

  else
  {
    v20 = [v6 constraintEqualToAnchor:v7];

    *(v5 + 32) = v20;
    v21 = [v2 leadingAnchor];
    v22 = [v1 layoutMarginsGuide];
    v23 = [v22 leadingAnchor];

    v24 = [v21 constraintEqualToAnchor:v23];
    *(v5 + 40) = v24;
    v25 = [v2 trailingAnchor];
    v26 = [v1 layoutMarginsGuide];
    v27 = [v26 trailingAnchor];

    v28 = [v25 constraintEqualToAnchor:v27];
    *(v5 + 48) = v28;
    v17 = [v2 bottomAnchor];
    v19 = [v1 bottomAnchor];
  }

  v29 = [v17 constraintEqualToAnchor:v19];

  *(v5 + 56) = v29;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v4 activateConstraints:isa];
}

id sub_1000817B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBWebTitleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100081820(char *result)
{
  if (result)
  {
    v1 = result + 56;
    v2 = 1 << result[32];
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(result + 7);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v17 = result;
    if (v4)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        return v7;
      }

      v4 = *&v1[8 * v8];
      ++v6;
      if (v4)
      {
        v6 = v8;
        do
        {
LABEL_9:
          v9 = *(*(result + 6) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
          v10 = sub_1000AC06C();
          v12 = v11;
          v13 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_10003859C(0, *(v7 + 2) + 1, 1, v7);
          }

          v15 = *(v7 + 2);
          v14 = *(v7 + 3);
          if (v15 >= v14 >> 1)
          {
            v7 = sub_10003859C((v14 > 1), v15 + 1, 1, v7);
          }

          v4 &= v4 - 1;

          *(v7 + 2) = v15 + 1;
          v16 = &v7[16 * v15];
          *(v16 + 4) = v10;
          *(v16 + 5) = v12;
          result = v17;
        }

        while (v4);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100081990(uint64_t a1)
{
  v1 = &_swiftEmptySetSingleton;
  v31 = &_swiftEmptySetSingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = a1 + 40; ; i += 16)
    {
      v4 = sub_1000AC0DC();
      v6 = v5;
      sub_1000AC06C();
      v7 = sub_1000AC0DC();
      v9 = v8;

      if (v7 == v4 && v9 == v6)
      {
        break;
      }

      v11 = sub_1000AC7AC();

      if (v11)
      {
        goto LABEL_10;
      }

      sub_1000AC06C();
      v13 = sub_1000AC0DC();
      v15 = v14;

      if (v13 == v4 && v15 == v6)
      {

LABEL_18:

        v12 = PKContactFieldName;
        goto LABEL_11;
      }

      v16 = sub_1000AC7AC();

      if (v16)
      {
        goto LABEL_18;
      }

      sub_1000AC06C();
      v17 = sub_1000AC0DC();
      v19 = v18;

      if (v17 == v4 && v19 == v6)
      {

LABEL_23:

        v12 = PKContactFieldPhoneticName;
        goto LABEL_11;
      }

      v20 = sub_1000AC7AC();

      if (v20)
      {
        goto LABEL_23;
      }

      sub_1000AC06C();
      v21 = sub_1000AC0DC();
      v23 = v22;

      if (v21 == v4 && v23 == v6)
      {

LABEL_28:

        v12 = PKContactFieldPhoneNumber;
        goto LABEL_11;
      }

      v24 = sub_1000AC7AC();

      if (v24)
      {
        goto LABEL_28;
      }

      sub_1000AC06C();
      v25 = sub_1000AC0DC();
      v27 = v26;

      if (v25 == v4 && v27 == v6)
      {
      }

      else
      {
        v28 = sub_1000AC7AC();

        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v12 = PKContactFieldEmailAddress;
LABEL_11:
      sub_10009F308(&v30, v12);

LABEL_12:
      if (!--v2)
      {
        return v31;
      }
    }

LABEL_10:

    v12 = PKContactFieldPostalAddress;
    goto LABEL_11;
  }

  return v1;
}

uint64_t sub_100081D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10001E824();
  result = sub_1000AC40C();
  *a4 = result;
  return result;
}

uint64_t sub_100081D74()
{
  v0 = sub_1000ABA8C();
  sub_100081DF4(v0, qword_1000FC018);
  sub_10004212C(v0, qword_1000FC018);
  return sub_1000ABA7C();
}

uint64_t *sub_100081DF4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100081E7C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  type metadata accessor for PKPaymentNetwork(0);
  isa = sub_1000AC18C().super.isa;
  v5 = [v3 canMakePaymentsUsingNetworks:isa capabilities:a2];

  return v5;
}

void sub_100081EF4()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  [v6 setDataSource:v1];
  [v6 setDelegate:v1];
  [v6 setRowHeight:UITableViewAutomaticDimension];
  [v6 setEstimatedRowHeight:128.0];
  [v6 setSeparatorStyle:1];
  v17 = [objc_allocWithZone(UIView) init];
  [v6 setTableFooterView:v17];

  if (sub_10002CE60() >= 2u)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    v18 = qword_1000FBEF0;
  }

  else
  {
    v18 = [v4 systemGroupedBackgroundColor];
  }

  v19 = v18;
  [v6 setBackgroundColor:v18];

  sub_100082370();
  v20 = sub_10005867C();

  [v6 setInsetsContentViewsToSafeArea:!v20];
  v21 = sub_1000822D8();
  [v6 setTableHeaderView:v21];

  v22 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  v23 = [v4 labelColor];
  [v22 setTextColor:v23];

  [v22 setTextAlignment:1];
  [v22 setHidden:1];
  [v22 setUserInteractionEnabled:0];
  v24 = [v1 view];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  [v24 addSubview:v6];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v27 = v26;
  [v26 addSubview:v22];

  LOBYTE(v27) = sub_10005867C();

  if (v27)
  {
    v28 = sub_10008240C();
    sub_1000931A4(v28);
  }
}

id sub_1000822D8()
{
  v1 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader;
  v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x118))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100082370()
{
  v1 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel;
  if (*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel);
  }

  else
  {
    v2 = (*((swift_isaMask & *v0) + 0x120))();
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_10008240C()
{
  v1 = v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController);
  }

  else
  {
    v4 = sub_100082370();
    if (sub_10002CE60() == 2)
    {
      v5 = objc_allocWithZone(type metadata accessor for MacFooterToolbarViewController());
      v6 = sub_1000A55F8(v4);
      v7 = &off_1000DDFF8;
    }

    else
    {
      v8 = objc_allocWithZone(type metadata accessor for iOSFooterToolbarViewController());
      v6 = sub_10002D06C(v4);
      v7 = &off_1000DB7A0;
    }

    swift_getObjectType();
    v9 = v7[3];
    v10 = swift_unknownObjectRetain();
    v9(v10, &off_1000DD9E0);
    (v7[8])();
    v11 = *v1;
    *v1 = v6;
    *(v1 + 8) = v7;
    v3 = v6;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_10008254C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  p_attr = &stru_1000E5FF8.attr;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v2 topAnchor];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor:v7];
  v9 = &stru_1000E5FF8.attr;
  [v8 setActive:1];

  v10 = [v2 rightAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 rightAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v2 leftAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 leftAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  sub_100082370();
  LOBYTE(v19) = sub_10005867C();

  if ((v19 & 1) != 0 && (v20 = sub_10008240C(), v21 = [v20 view], v20, v21))
  {
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000B04D0;
    v23 = [v21 topAnchor];
    v24 = [v2 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v22 + 32) = v25;
    v26 = [v21 leadingAnchor];
    v27 = [v1 view];
    if (!v27)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v28 = v27;
    v29 = [v27 leadingAnchor];

    v30 = [v26 constraintEqualToAnchor:v29];
    *(v22 + 40) = v30;
    v31 = [v21 trailingAnchor];
    v32 = [v1 view];
    if (!v32)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v33 = v32;
    v34 = [v32 trailingAnchor];

    v35 = [v31 constraintEqualToAnchor:v34];
    *(v22 + 48) = v35;
    v36 = [v21 bottomAnchor];
    v37 = [v1 view];
    if (!v37)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 bottomAnchor];

    v41 = [v36 constraintEqualToAnchor:v40];
    *(v22 + 56) = v41;
    sub_10000F840();
    v42.super.isa = sub_1000AC18C().super.isa;

    [v39 activateConstraints:v42.super.isa];

    v9 = (&stru_1000E5FF8 + 8);
    p_attr = (&stru_1000E5FF8 + 8);
  }

  else
  {
    v43 = [v2 bottomAnchor];
    v44 = [v1 view];
    if (!v44)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v45 = v44;
    v46 = [v44 bottomAnchor];

    v42.super.isa = [v43 constraintEqualToAnchor:v46];
    [(objc_class *)v42.super.isa setActive:1];
  }

  v47 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  [v47 p_attr[286]];
  v48 = [v47 leftAnchor];
  v49 = [v1 view];
  if (!v49)
  {
    goto LABEL_20;
  }

  v50 = v49;
  v51 = [v49 layoutMarginsGuide];

  v52 = [v51 leftAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  [v53 v9[316]];
  v54 = [v47 rightAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = v55;
  v57 = [v55 layoutMarginsGuide];

  v58 = [v57 rightAnchor];
  v59 = [v54 constraintEqualToAnchor:v58];

  [v59 v9[316]];
  v60 = [v47 centerYAnchor];
  v61 = [v2 centerYAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  [v62 v9[316]];
}

char *sub_100082C90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v2 = [v1 receivedMessage];
  if (v2 && (v3 = v2, v4 = [v2 title], v3, v4))
  {
    v5 = sub_1000AC06C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 receivedMessage];
  if (v8 && (v9 = v8, v10 = [v8 subtitle], v9, v10))
  {
    v11 = sub_1000AC06C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v15 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v5, v7, v11, v13, v14);
}

double sub_100082DD8()
{
  type metadata accessor for FooterToolbarModel();
  v0 = swift_allocObject();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *&result = 2;
  *(v0 + 56) = xmmword_1000B1160;
  *(v0 + 72) = 0xE000000000000000;
  return result;
}

void sub_100082ED0(uint64_t a1, uint64_t a2)
{
  v26.receiver = v2;
  v26.super_class = type metadata accessor for IMBDetailedMessageTableViewController();
  objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  v3 = sub_1000822D8();
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  Width = CGRectGetWidth(v27);
  v13 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader;
  LODWORD(v14) = 1148846080;
  LODWORD(v15) = 1112014848;
  [*&v2[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader] systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v14, v15}];
  [*&v2[v13] setFrame:{v5, v7, v9, v16}];
  if (sub_10002CE60() == 2)
  {
    v17 = *&v2[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
    [v17 contentSize];
    v19 = v18;
    [v17 bounds];
    Height = CGRectGetHeight(v28);
    v21 = sub_100082370();
    v22 = *(v21 + 96);
    if (Height >= v19)
    {
      *(v21 + 96) = 0;
      if (v22)
      {
        v23 = *(v21 + 80);
        if (v23)
        {
          v24 = *(v21 + 88);

          v25 = 0;
          goto LABEL_9;
        }
      }
    }

    else
    {
      *(v21 + 96) = 1;
      if (!v22)
      {
        v23 = *(v21 + 80);
        if (v23)
        {
          v24 = *(v21 + 88);

          v25 = 1;
LABEL_9:
          v23(v25);

          sub_100026FE0(v23, v24);
          return;
        }
      }
    }
  }
}

id sub_100083410(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView;
  *&v1[v3] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader] = 0;
  *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel] = 0;
  v5 = &v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController];
  v6 = type metadata accessor for IMBDetailedMessageTableViewController();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100083524()
{

  v1 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController);
}

id sub_100083594(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IMBDetailedMessageTableViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000836E0()
{
  v1 = v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);
      v6 = type metadata accessor for IMBDetailedMessageTableViewController();
      v5(v0, v6, ObjectType, v3);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.displayDomainString.getter()
{
  v0 = sub_1000AB5AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB64C();
  v4 = objc_allocWithZone(NSURL);
  v5 = sub_1000AC02C();

  v6 = [v4 initWithString:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 safari_userVisibleStringConsideringLongURLs];
  if (!v7)
  {
    sub_1000AC06C();
    v7 = sub_1000AC02C();
  }

  v8 = [v7 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  v9 = sub_1000AC06C();
  v11 = v10;

  v14[0] = v9;
  v14[1] = v11;
  sub_1000AB58C();
  sub_10002BD70();
  v12 = sub_1000AC43C();

  (*(v1 + 8))(v3, v0);

  return v12;
}

id sub_100083984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  if (a3)
  {
    v7 = sub_1000AC02C();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for IMBImageTableViewCell();
  v8 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  sub_100083B54();
  sub_100083CD8();

  return v9;
}

id sub_100083A98(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for IMBImageTableViewCell();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_100083B54();
    sub_100083CD8();
  }

  return v5;
}

void sub_100083B54()
{
  if (sub_10002CE60() == 2)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor:qword_1000FBEF0];
  }

  [v0 setBounds:{0.0, 0.0, 350.0, 10000.0}];
  [v0 setSelectionStyle:0];
  v1 = *&v0[OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView];
  v2 = [v1 layer];
  [v2 setMasksToBounds:1];

  v3 = [v1 layer];
  [v3 setCornerRadius:8.0];

  [v1 setContentMode:2];
  v4 = [v0 contentView];
  [v4 addSubview:v1];
}

void sub_100083CD8()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = sub_10002CE60();
  v6 = 20.0;
  if (v5 == 2)
  {
    v6 = 10.0;
  }

  v7 = [v2 constraintEqualToAnchor:v4 constant:v6];

  [v7 setActive:1];
  v8 = [v1 leftAnchor];
  v9 = [v0 contentView];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 leftAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [v1 rightAnchor];
  v14 = [v0 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 rightAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];

  [v17 setActive:1];
  v18 = [v1 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = sub_10002CE60();
  v22 = -20.0;
  if (v21 == 2)
  {
    v22 = -10.0;
  }

  v23 = [v18 constraintEqualToAnchor:v20 constant:v22];

  [v23 setActive:1];
}

id sub_100083FDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBImageTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100084044()
{

  return swift_deallocClassInstance();
}

void *sub_100084118()
{
  v1 = *(v0 + 40);
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v2 = *(v0 + 16);
  if (v1 >= *(v2 + 16))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_1000AC7EC();
    __break(1u);
  }

  else
  {
    v3 = v2 + 32 * v1;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v50 = &type metadata for String;
    *&v49 = v4;
    *(&v49 + 1) = v5;
    sub_100006910(&v49, v48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v48, 0xD000000000000012, 0x80000001000BC8C0, isUniquelyReferenced_nonNull_native);
    v50 = &type metadata for Int;
    *&v49 = v1;
    sub_100006910(&v49, v48);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v48, 0x64657463656C6573, 0xED00007865646E49, v7);
    v47 = *(v2 + 16);
    if (v47)
    {
      v8 = 0;
      v9 = (v2 + 56);
      v10 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v11 = v2;
        v12 = *(v9 - 1);
        v13 = *v9;
        v14 = *(v9 - 3);
        v15 = *(v9 - 2);
        v50 = &type metadata for String;
        *&v49 = v14;
        *(&v49 + 1) = v15;
        sub_100006910(&v49, v48);
        swift_bridgeObjectRetain_n();

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
        v19 = _swiftEmptyDictionarySingleton[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_35;
        }

        v23 = v18;
        if (_swiftEmptyDictionarySingleton[3] < v22)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_11;
        }

        v26 = v17;
        sub_10003A9B0();
        v17 = v26;
        if (v23)
        {
LABEL_12:
          v25 = (_swiftEmptyDictionarySingleton[7] + 32 * v17);
          sub_10000E738(v25);
          sub_100006910(v48, v25);
          goto LABEL_16;
        }

LABEL_14:
        _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
        v27 = (_swiftEmptyDictionarySingleton[6] + 16 * v17);
        *v27 = 0x696669746E656469;
        v27[1] = 0xEA00000000007265;
        sub_100006910(v48, (_swiftEmptyDictionarySingleton[7] + 32 * v17));
        v28 = _swiftEmptyDictionarySingleton[2];
        v21 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v21)
        {
          goto LABEL_37;
        }

        _swiftEmptyDictionarySingleton[2] = v29;
LABEL_16:
        v50 = &type metadata for String;
        *&v49 = v12;
        *(&v49 + 1) = v13;
        sub_100006910(&v49, v48);

        v30 = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
        v33 = _swiftEmptyDictionarySingleton[2];
        v34 = (v32 & 1) == 0;
        v21 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v21)
        {
          goto LABEL_36;
        }

        v36 = v32;
        if (_swiftEmptyDictionarySingleton[3] < v35)
        {
          sub_100038E6C(v35, v30);
          v31 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_41;
          }

LABEL_21:
          if (v36)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        }

        if (v30)
        {
          goto LABEL_21;
        }

        v39 = v31;
        sub_10003A9B0();
        v31 = v39;
        if (v36)
        {
LABEL_22:
          v38 = (_swiftEmptyDictionarySingleton[7] + 32 * v31);
          sub_10000E738(v38);
          sub_100006910(v48, v38);

          goto LABEL_26;
        }

LABEL_24:
        _swiftEmptyDictionarySingleton[(v31 >> 6) + 8] |= 1 << v31;
        v40 = (_swiftEmptyDictionarySingleton[6] + 16 * v31);
        *v40 = 0x656C746974;
        v40[1] = 0xE500000000000000;
        sub_100006910(v48, (_swiftEmptyDictionarySingleton[7] + 32 * v31));

        v41 = _swiftEmptyDictionarySingleton[2];
        v21 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v21)
        {
          goto LABEL_38;
        }

        _swiftEmptyDictionarySingleton[2] = v42;
LABEL_26:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000387AC(0, v10[2] + 1, 1, v10);
        }

        v44 = v10[2];
        v43 = v10[3];
        if (v44 >= v43 >> 1)
        {
          v10 = sub_1000387AC((v43 > 1), v44 + 1, 1, v10);
        }

        ++v8;
        v10[2] = v44 + 1;
        v10[v44 + 4] = _swiftEmptyDictionarySingleton;
        v9 += 4;
        v2 = v11;
        if (v47 == v8)
        {
          goto LABEL_33;
        }
      }

      sub_100038E6C(v22, v16);
      v17 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_41;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_33:
    v50 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&v49 = v10;
    sub_100006910(&v49, v48);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v48, 0x736D657469, 0xE500000000000000, v45);
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100084660(char a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = type metadata accessor for URLHelper(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v5[OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_bubbleState] = 1;
  v17 = &v5[OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model];
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;

  v18 = a5;
  v19 = a3;
  sub_10004EA70(v16);
  sub_10001E764(v16, v14);
  v20 = sub_10003F008(a1 & 1, a2, v14, v5);
  sub_10001E7C8(v16);
  v21 = v20;
  sub_100084820();
  sub_100084964();

  return v21;
}

void sub_100084820()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 8);
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 16);
  v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_bubbleState);
  v4 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model);
  v5 = v2;

  v6 = sub_10005ED9C(v3, v4, v1);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  *v13 = v6;
  v13[1] = v8;

  sub_1000A9FF0();
  v14 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle);
  *v14 = v10;
  v14[1] = v12;

  v15 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel);
  if (v12)
  {

    v16 = sub_1000AC02C();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText:v16];
}

void sub_100084964()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 16);
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_bubbleState);
  v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model);
  v4 = v1;

  v5 = sub_10005EF88(v2, v3);
  v7 = v6;

  v8 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = v5;
  v9 = v5;

  sub_1000AA2B0();
  v10 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
  if (v7)
  {
    v11 = sub_1000AC02C();
  }

  else
  {
    v11 = 0;
  }

  [v10 setAccessibilityLabel:v11];
}

double sub_100084A8C()
{
  v1 = v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model);

  return result;
}

id sub_100084AD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBJITAppKitBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100084B84(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100084BFC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100084D38(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_100084F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_1000ABF0C();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  sub_1000041E8(&qword_1000F2E08, &qword_1000B4938);
  v9 = sub_1000ABC7C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v23 = v4;
  v24 = v5;
  v25 = v2;
  sub_1000ABD1C();
  sub_1000ABEFC();
  v28 = *(v2 + *(a1 + 36));

  sub_1000ABD9C();
  WitnessTable = swift_getWitnessTable();
  sub_1000ABE3C();

  (*(v21 + 8))(v8, v6);
  v17 = sub_100085320();
  v26 = WitnessTable;
  v27 = v17;
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v13, v9);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v18(v22, v15, v9);
  return (v19)(v15, v9);
}

uint64_t sub_10008521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

unint64_t sub_100085320()
{
  result = qword_1000F2E10;
  if (!qword_1000F2E10)
  {
    sub_1000041E8(&qword_1000F2E08, &qword_1000B4938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F2E10);
  }

  return result;
}

uint64_t sub_100085384(void *a1)
{
  sub_1000ABF0C();
  sub_1000041E8(&qword_1000F2E08, &qword_1000B4938);
  sub_1000ABC7C();
  swift_getWitnessTable();
  sub_100085320();
  return swift_getWitnessTable();
}

id sub_100085428()
{
  result = [objc_allocWithZone(BCLogger) init];
  qword_1000FC030 = result;
  return result;
}

id sub_10008545C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = sub_1000AC02C();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IMBInfoTableViewCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_100085674();
  sub_10008592C();

  return v10;
}

id sub_100085594(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IMBInfoTableViewCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_100085674();
    sub_10008592C();
  }

  return v6;
}

void sub_100085674()
{
  if (sub_10002CE60() == 2)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor:qword_1000FBEF0];
    v1 = [v0 contentView];
    [v1 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  [v0 setBounds:{0.0, 0.0, 350.0, 10000.0}];
  [v0 setSelectionStyle:0];
  v2 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel];
  v3 = sub_10002CE60();
  v4 = objc_opt_self();
  if (v3 == 2)
  {
    v5 = &selRef_secondaryLabelColor;
  }

  else
  {
    v5 = &selRef_labelColor;
  }

  v6 = [v4 *v5];
  [v2 setTextColor:v6];

  if (qword_1000EEEA0 != -1)
  {
    swift_once();
  }

  v7 = qword_1000F2E18;
  [v2 setFont:qword_1000F2E18];
  [v2 setNumberOfLines:0];
  v8 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel];
  v9 = sub_10002CE60();
  v10 = objc_opt_self();
  if (v9 == 2)
  {
    v11 = &selRef_labelColor;
  }

  else
  {
    v11 = &selRef_secondaryLabelColor;
  }

  v12 = [v10 *v11];
  [v8 setTextColor:v12];

  [v8 setFont:v7];
  [v8 setNumberOfLines:0];
  v13 = [v0 contentView];
  [v13 addSubview:v2];

  v14 = [v0 contentView];
  [v14 addSubview:v8];
}

id sub_10008592C()
{
  result = UIApp;
  if (UIApp)
  {
    v2 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v4 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    p_attr = &stru_1000E5FF8.attr;
    v7 = &stru_1000E5FF8.attr;
    if (IsAccessibilityContentSizeCategory)
    {
      v8 = [v4 topAnchor];
      v9 = [v0 contentView];
      v10 = [v9 topAnchor];

      v11 = sub_10002CE60();
      v12 = 20.0;
      if (v11 == 2)
      {
        v12 = 10.0;
      }

      v13 = [v8 constraintEqualToAnchor:v10 constant:v12];

      [v13 setActive:1];
      v14 = [v4 leadingAnchor];
      v15 = [v0 contentView];
      v16 = [v15 layoutMarginsGuide];

      v17 = [v16 leadingAnchor];
      v18 = [v14 constraintEqualToAnchor:v17];

      [v18 setActive:1];
      v19 = [v4 trailingAnchor];
      v20 = [v0 contentView];
      v21 = [v20 layoutMarginsGuide];

      v22 = [v21 trailingAnchor];
      v23 = [v19 constraintEqualToAnchor:v22];

      [v23 setActive:1];
      v24 = [v5 firstBaselineAnchor];
      v25 = [v4 lastBaselineAnchor];
      v26 = [v24 constraintEqualToSystemSpacingBelowAnchor:v25 multiplier:1.0];

      [v26 setActive:1];
      v27 = [v5 leadingAnchor];
      v28 = [v0 contentView];
      v29 = [v28 layoutMarginsGuide];

      v7 = (&stru_1000E5FF8 + 8);
      v30 = [v29 leadingAnchor];

      p_attr = (&stru_1000E5FF8 + 8);
      v31 = [v27 constraintEqualToAnchor:v30];
      v32 = 0;
    }

    else
    {
      v33 = [v4 leadingAnchor];
      v34 = [v0 contentView];
      v35 = [v34 layoutMarginsGuide];

      v36 = [v35 leadingAnchor];
      v37 = [v33 constraintEqualToAnchor:v36];

      [v37 setActive:1];
      v38 = [v4 trailingAnchor];
      v39 = [v5 leadingAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:-8.0];

      [v40 setActive:1];
      v41 = [v4 topAnchor];
      v42 = [v0 contentView];
      v43 = [v42 topAnchor];

      if (sub_10002CE60() == 2)
      {
        v44 = 10.0;
      }

      else
      {
        v44 = 20.0;
      }

      v45 = [v41 constraintEqualToAnchor:v43 constant:v44];

      [v45 setActive:1];
      LODWORD(v46) = 1148846080;
      [v4 setContentCompressionResistancePriority:0 forAxis:v46];
      v27 = [v5 topAnchor];
      v47 = [v0 contentView];
      v30 = [v47 topAnchor];

      if (sub_10002CE60() == 2)
      {
        v48 = 10.0;
      }

      else
      {
        v48 = 20.0;
      }

      v31 = [v27 constraintEqualToAnchor:v30 constant:v48];
      v32 = 2;
    }

    v49 = v31;

    [v49 setActive:1];
    v50 = [v5 trailingAnchor];
    v51 = [v0 p_attr[339]];
    v52 = [v51 layoutMarginsGuide];

    v53 = [v52 trailingAnchor];
    v54 = [v50 constraintEqualToAnchor:v53];

    [v54 setActive:1];
    v55 = [v5 bottomAnchor];
    v56 = [v0 p_attr[339]];
    v57 = [v56 bottomAnchor];

    v58 = sub_10002CE60();
    v59 = -20.0;
    if (v58 == 2)
    {
      v59 = -10.0;
    }

    v60 = [v55 v7[300]];

    [v60 setActive:1];

    return [v5 setTextAlignment:v32];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000860B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBInfoTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100086158()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v1 = [objc_opt_self() systemFontOfSize:13.0];
    v2 = [v0 scaledFontForFont:v1];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  qword_1000F2E18 = v2;
}

Swift::String __swiftcall String.sha256()()
{
  v0 = sub_1000AC0BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AC0AC();
  v4 = sub_1000AC07C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
    v10 = sub_1000864A0(isa);

    sub_100086570(v10);
    v11 = sub_1000AC0FC();
    v13 = v12;

    sub_10000E950(v4, v6);
    v8 = v13;
    v7 = v11;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1000863A8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_10002BD70();
    sub_1000AC44C();
    v2 = sub_1000AC44C();

    return v2;
  }

  return v3;
}

unint64_t sub_1000864A0(void *a1)
{
  v2 = sub_1000AC1CC();
  *(v2 + 16) = 32;
  *(v2 + 32) = 0u;
  v3 = (v2 + 32);
  *(v2 + 48) = 0u;
  v4 = [a1 bytes];
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    CC_SHA256(v4, result, v3);
    v6 = [objc_allocWithZone(NSData) initWithBytes:v3 length:32];

    return v6;
  }

  __break(1u);
  return result;
}

size_t sub_100086570(void *a1)
{
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v3 = result;
      v4 = sub_1000AC1CC();
      v4[2] = v3;
      bzero(v4 + 4, v3);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    [a1 getBytes:v4 + 4 length:{objc_msgSend(a1, "length")}];
    v5 = v4[2];
    if (v5)
    {
      v6 = 32;
      do
      {
        v7 = *(v4 + v6);
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000AF0E0;
        *(v8 + 56) = &type metadata for UInt8;
        *(v8 + 64) = &protocol witness table for UInt8;
        *(v8 + 32) = v7;
        v9._countAndFlagsBits = sub_1000AC09C();
        sub_1000AC12C(v9);

        ++v6;
        --v5;
      }

      while (v5);

      return 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1000866E4(void *a1)
{
  v2 = v1;
  v4 = sub_10000413C(&qword_1000F2E58, &qword_1000B4958);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = sub_1000AB6EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 _data];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1000AB73C();
    v18 = v17;

    v19.super.isa = sub_1000AB72C().super.isa;
    sub_10000E964(v16, v18);
  }

  else
  {
    v19.super.isa = 0;
  }

  v20 = [a1 URL];
  if (v20)
  {
    v21 = v20;
    sub_1000AB6AC();

    sub_1000AB67C(v22);
    v24 = v23;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 session];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 identifier];

    if (v27)
    {
      sub_1000AB80C();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v31 = sub_1000AB81C();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v7, v28, 1, v31);
    sub_100086A7C(v7, v9);
    isa = 0;
    if ((*(v32 + 48))(v9, 1, v31) != 1)
    {
      isa = sub_1000AB7FC().super.isa;
      (*(v32 + 8))(v9, v31);
    }
  }

  else
  {
    v29 = sub_1000AB81C();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    isa = 0;
  }

  v33 = [objc_allocWithZone(v2) initWithData:v19.super.isa url:v24 sessionIdentifier:isa isFromMe:{objc_msgSend(a1, "isFromMe")}];

  return v33;
}

uint64_t sub_100086A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F2E58, &qword_1000B4958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100086AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!*(a1 + 16) || (v6 = sub_10004F0CC(0x736E6F6974636573, 0xE800000000000000), (v7 & 1) == 0))
  {

LABEL_25:

    if (qword_1000EEE80 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v6, &v43);

  sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = *&v41[0];
  v42 = _swiftEmptyArrayStorage;
  v9 = *(*&v41[0] + 16);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
LABEL_26:
        v30 = qword_1000FC008;
        v31 = sub_1000AC2AC();
        sub_1000ABA5C("Unable to create proposed list request: SectionsDictionaryKey is missing", 72, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);
        type metadata accessor for IMBListRequest();
        swift_deallocPartialClassInstance();
        return 0;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v11[2];

      if (!v12)
      {
        break;
      }

      v13 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0);
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_1000068B4(v11[7] + 32 * v13, &v43);
      if (!swift_dynamicCast())
      {
        break;
      }

LABEL_20:
      type metadata accessor for IMBListSection();
      swift_allocObject();

      sub_100056694(v11, a2);

      sub_1000AC17C();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000AC1BC();
      }

      ++v10;
      sub_1000AC1DC();

      v29 = v42;

      v42 = v29;
      if (v9 == v10)
      {

        goto LABEL_29;
      }
    }

    v44 = &type metadata for Bool;
    LOBYTE(v43) = 0;
    sub_100006910(&v43, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v11;
    v16 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0);
    v18 = v11[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_43;
    }

    v22 = v17;
    if (v11[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v16;
        sub_10003A9B0();
        v16 = v25;
        v11 = v40;
        if ((v22 & 1) == 0)
        {
LABEL_18:
          v11[(v16 >> 6) + 8] |= 1 << v16;
          v26 = (v11[6] + 16 * v16);
          *v26 = 0xD000000000000011;
          v26[1] = 0x80000001000B9DC0;
          sub_100006910(v41, (v11[7] + 32 * v16));
          v27 = v11[2];
          v20 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (v20)
          {
            goto LABEL_45;
          }

          v11[2] = v28;
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_100038E6C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0);
      if ((v22 & 1) != (v23 & 1))
      {
        sub_1000AC7EC();
        __break(1u);

        type metadata accessor for IMBListRequest();
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v24 = (v11[7] + 32 * v16);
    sub_10000E738(v24);
    sub_100006910(v41, v24);
    goto LABEL_20;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_29:
  if (v29 >> 62)
  {
    v32 = sub_1000AC65C();
    if (v32)
    {
      goto LABEL_31;
    }

LABEL_48:
    if (v29 >> 62)
    {
      v37 = sub_1000AC65C();
    }

    else
    {
      v37 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v37 > 1;
    goto LABEL_52;
  }

  v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_48;
  }

LABEL_31:
  v33 = 0;
  while ((v29 & 0xC000000000000001) != 0)
  {
    v34 = sub_1000AC5AC();
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_40;
    }

LABEL_35:
    if (*(v34 + 48))
    {
      goto LABEL_41;
    }

    ++v33;
    if (v35 == v32)
    {
      goto LABEL_48;
    }
  }

  if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

  v34 = *(v29 + 8 * v33 + 32);

  v35 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  v36 = 1;
LABEL_52:
  *(v3 + 16) = v36;

  *&v43 = sub_100087E54(v38, sub_1000A4D28, sub_1000A7528);
  sub_100087444(&v43);

  *(v3 + 24) = v43;

  return v3;
}

void sub_1000870EC()
{
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = _swiftEmptyArrayStorage;
LABEL_16:
    v12 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&v11 = v4;
    sub_100006910(&v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v10, 0x736E6F6974636573, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    return;
  }

  v2 = sub_1000AC65C();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
      }

      else
      {
      }

      sub_100056B64();
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1000387AC(0, v4[2] + 1, 1, v4);
      }

      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1000387AC((v7 > 1), v8 + 1, 1, v4);
      }

      ++v3;

      v4[2] = v8 + 1;
      v4[v8 + 4] = v6;
    }

    while (v2 != v3);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_100087298()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000872F4()
{
  sub_1000AC58C(29);

  if (*(v0 + 16))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1000AC12C(v1);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001000BC9E0;
  sub_1000AC12C(v4);

  type metadata accessor for IMBListSection();
  v5._countAndFlagsBits = sub_1000AC1AC();
  sub_1000AC12C(v5);

  v6._countAndFlagsBits = 0x6E6F697463657320;
  v6._object = 0xEB00000000203A73;
  sub_1000AC12C(v6);

  return 0;
}

double sub_100087444(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000A4D24(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000874C0(v6);
  sub_1000AC5FC();
  return result;
}

Swift::Int sub_1000874C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000AC77C(v2);
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
        type metadata accessor for IMBListSection();
        v6 = sub_1000AC1CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100087630(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1000875C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000875C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 32) >= *(*v9 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100087630(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000A2CCC(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_100087BA0((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000A2CCC(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1000A2C40(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_1000386A8((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_100087BA0((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000A2CCC(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1000A2C40(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 32) >= *(*v29 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100087BA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 32) < *(*v4 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 32) < *(*v17 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_100087E54(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = sub_1000AC65C();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100087F0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

uint64_t (*sub_100087F80())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1000897AC;
}

void sub_100088038(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v3;
}

uint64_t sub_1000880B8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000ABC3C();
}

uint64_t sub_10008812C()
{
  v1 = OBJC_IVAR____TtCCV8Business34NotificationOptionsMacCatalystView9ViewModel6Option__label;
  v2 = sub_10000413C(&qword_1000F3230, &qword_1000B4CE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCCV8Business34NotificationOptionsMacCatalystView9ViewModel6Option__enabled;
  v4 = sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCCV8Business34NotificationOptionsMacCatalystView9ViewModel6Option__onSelect;
  v6 = sub_10000413C(&qword_1000F3238, &qword_1000B4CF8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_10008826C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NotificationOptionsMacCatalystView.ViewModel.Option(0);
  result = sub_1000AC59C();
  *a2 = result;
  return result;
}

uint64_t sub_1000882B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NotificationOptionsMacCatalystView.ViewModel.Option(0);
  result = sub_1000ABBFC();
  *a2 = result;
  return result;
}

uint64_t sub_100088304(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v3;
}

uint64_t sub_100088370()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

void sub_1000883E4(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_100088460(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000ABC3C();
}

void sub_1000884E0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v3;
}

uint64_t sub_100088560(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000ABC3C();
}

uint64_t sub_1000885DC()
{
  v1 = OBJC_IVAR____TtCV8Business34NotificationOptionsMacCatalystView9ViewModel__label;
  v2 = sub_10000413C(&qword_1000F3230, &qword_1000B4CE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV8Business34NotificationOptionsMacCatalystView9ViewModel__options;
  v4 = sub_10000413C(&qword_1000F3240, &qword_1000B4D00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1000886F8(uint64_t a1)
{
  sub_10008894C(319, &qword_1000F2F60, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100088998(319, &qword_1000F2F68, &unk_1000F2F70, &qword_1000B49C0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100088810(uint64_t a1)
{
  sub_10008894C(319, &qword_1000F2F60, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10008894C(319, &qword_1000F2730, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_100088998(319, &qword_1000F30A8, &unk_1000F30B0, &qword_1000B49D0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10008894C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000ABC4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100088998(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000041E8(a3, a4);
    v5 = sub_1000ABC4C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000889EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100088A34(uint64_t result, int a2, int a3)
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

uint64_t sub_100088A9C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NotificationOptionsMacCatalystView.ViewModel(0);
  result = sub_1000ABBFC();
  *a2 = result;
  return result;
}

__n128 sub_100088ADC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000413C(&qword_1000F31D0, &qword_1000B4B20);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-v8];
  v17 = a1;
  v18 = a2;
  v15 = a1;
  v16 = a2;
  sub_10000413C(&qword_1000F31D8, &qword_1000B4B28);
  sub_1000891E4();
  sub_1000ABDEC();
  sub_1000ABF2C();
  sub_1000ABC8C();
  (*(v7 + 32))(a3, v9, v6);
  v10 = a3 + *(sub_10000413C(&qword_1000F3218, &qword_1000B4B48) + 36);
  v11 = v24;
  *(v10 + 64) = v23;
  *(v10 + 80) = v11;
  *(v10 + 96) = v25;
  v12 = v20;
  *v10 = v19;
  *(v10 + 16) = v12;
  result = v22;
  *(v10 + 32) = v21;
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_100088CB4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  sub_10000413C(&unk_1000F2F70, &qword_1000B49C0);
  sub_10000413C(&qword_1000F31F0, &qword_1000B4B30);
  sub_10002C5BC(&qword_1000F3220, &unk_1000F2F70, &qword_1000B49C0, &protocol conformance descriptor for [A]);
  sub_100089268();
  sub_1000893B4();
  return sub_1000ABF1C();
}

uint64_t sub_100088DEC@<X0>(uint64_t a2@<X8>)
{

  sub_1000ABEEC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v7 & 1) == 0;
  result = sub_10000413C(&qword_1000F31F0, &qword_1000B4B30);
  v6 = (a2 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = sub_100089618;
  v6[2] = v4;
  return result;
}

double sub_100088F20(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  if (v3)
  {
    v3(v1);
    return sub_100026FE0(v3, v4);
  }

  return result;
}

uint64_t sub_100088FB4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  sub_10002BD70();
  result = sub_1000ABE0C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10008905C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  sub_10002BD70();
  v3 = sub_1000ABE0C();
  v5 = v4;
  v7 = v6;
  if (qword_1000EEDF8 != -1)
  {
    swift_once();
  }

  v8 = qword_1000FBF28;
  sub_1000ABDDC();
  v9 = sub_1000ABDFC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_10008939C(v3, v5, v7 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

unint64_t sub_1000891E4()
{
  result = qword_1000F31E0;
  if (!qword_1000F31E0)
  {
    sub_1000041E8(&qword_1000F31D8, &qword_1000B4B28);
    sub_100089268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F31E0);
  }

  return result;
}

unint64_t sub_100089268()
{
  result = qword_1000F31E8;
  if (!qword_1000F31E8)
  {
    sub_1000041E8(&qword_1000F31F0, &qword_1000B4B30);
    sub_10002C5BC(&qword_1000F31F8, &qword_1000F3200, &qword_1000B4B38, &protocol conformance descriptor for Button<A>);
    sub_10002C5BC(&qword_1000F3208, &qword_1000F3210, &qword_1000B4B40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F31E8);
  }

  return result;
}

void sub_10008939C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000893B4()
{
  result = qword_1000F3228;
  if (!qword_1000F3228)
  {
    type metadata accessor for NotificationOptionsMacCatalystView.ViewModel.Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3228);
  }

  return result;
}

double sub_100089424@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000894A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1000896C0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_10002A1E0(v2, v3);

  return sub_1000ABC3C();
}

uint64_t sub_1000895B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000ABCDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100089688()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000896EC()
{
  result = qword_1000F3248;
  if (!qword_1000F3248)
  {
    sub_1000041E8(&qword_1000F3218, &qword_1000B4B48);
    sub_10002C5BC(&qword_1000F3250, &qword_1000F31D0, &qword_1000B4B20, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3248);
  }

  return result;
}

uint64_t sub_1000897B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0228, &qword_1000B1528);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100089828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000413C(&qword_1000F0228, &qword_1000B1528);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1000898D0(uint64_t a1)
{
  sub_1000899A8(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1000AB6EC();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1000899A8(uint64_t a1)
{
  if (!qword_1000F32D8)
  {
    sub_1000041E8(&qword_1000F1DD0, &unk_1000B07A0);
    sub_1000AB6EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000F32D8);
    }
  }
}

id sub_100089A28()
{
  type metadata accessor for Request(0);
  v0 = objc_allocWithZone(NSMutableURLRequest);
  sub_1000AB67C(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2];

  v5 = sub_1000AC02C();

  [v4 setHTTPMethod:v5];

  v6 = sub_1000AC02C();
  v7 = sub_1000AC02C();
  [v4 setValue:v6 forHTTPHeaderField:v7];

  v8 = sub_1000AC02C();
  v9 = sub_1000AC02C();
  [v4 setValue:v8 forHTTPHeaderField:v9];

  v10 = objc_opt_self();
  isa = sub_1000ABFAC().super.isa;
  v38 = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:&v38];

  v13 = v38;
  if (v12)
  {
    v14 = sub_1000AB73C();
    v16 = v15;

    v17 = sub_1000AB72C().super.isa;
    sub_10000E964(v14, v16);
    [v4 setHTTPBody:v17];

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v18 = qword_1000FC008;
    v19 = sub_1000AC28C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000AF0E0;
    v21 = [v4 HTTPBody];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1000AB73C();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    v38 = v23;
    v39 = v25;
    sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
    v34 = sub_1000AC0CC();
    v36 = v35;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10000587C();
    *(v20 + 32) = v34;
    *(v20 + 40) = v36;
    sub_1000ABA5C("Created request body with parameters: %@", 40, 2, &_mh_execute_header, v18, v19, v20);
  }

  else
  {
    v26 = v13;
    sub_1000AB63C();

    swift_willThrow();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v27 = qword_1000FC008;
    v28 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v38 = sub_1000AC7FC();
    v39 = v30;
    v31 = sub_1000AC14C();
    v33 = v32;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_10000587C();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    sub_1000ABA5C("Error creating request body %@", 30, 2, &_mh_execute_header, v27, v28, v29);

    return 0;
  }

  return v4;
}

Swift::Int sub_100089F3C()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100089FE4(uint64_t a1)
{
  sub_1000AC11C();
}

Swift::Int sub_10008A078()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

unint64_t sub_10008A11C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008A4B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10008A14C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5522759;
  v4 = 0xE300000000000000;
  v5 = 5526864;
  if (*v1 != 2)
  {
    v5 = 0x4554454C4544;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1414745936;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10008A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000AB6EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10008A298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000AB6EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10008A354(uint64_t a1)
{
  sub_1000AB6EC();
  if (v1 <= 0x3F)
  {
    sub_10008A3E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008A3E8()
{
  if (!qword_1000F3368)
  {
    v0 = sub_1000ABFEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F3368);
    }
  }
}

unint64_t sub_10008A460()
{
  result = qword_1000F33A0;
  if (!qword_1000F33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F33A0);
  }

  return result;
}

unint64_t sub_10008A4B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA7D8;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008A500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = xmmword_1000B4DD0;
  *(v4 + 32) = 0xA600000000000000;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0xE000000000000000;
  *(v4 + 56) = [objc_allocWithZone(NSAttributedString) init];
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0xE000000000000000;
  *(v4 + 96) = 0;
  *(v4 + 16) = a1;

  if (!a3)
  {
    type metadata accessor for IMBApplePayViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v10 = sub_1000AC02C();
    v11 = sub_1000AC02C();
    v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

    a2 = sub_1000AC06C();
    a3 = v13;
  }

  *(v4 + 40) = a2;
  *(v4 + 48) = a3;

  if (a1 && (*(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) & 1) == 0)
  {
    v22 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000AF0E0;
    v24 = sub_10005FCE8(v22);
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_10000587C();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    v27 = sub_1000AC3FC();
    v28 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: IMBApplePayViewModel creating title/subtitle with state = %@", 74, 2, &_mh_execute_header, v27, v28, v23);

    sub_10008A804(v22);
  }

  else
  {
    type metadata accessor for IMBApplePayViewModel();
    v14 = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass:v14];
    v16 = sub_1000AC02C();
    v17 = sub_1000AC02C();
    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    v19 = sub_1000AC06C();
    v21 = v20;

    *(v4 + 40) = v19;
    *(v4 + 48) = v21;
  }

  return v4;
}

void sub_10008A804(uint64_t a1)
{
  v1[8] = 0;
  v1[9] = 0;

  v3 = sub_10008B1B8();
  if (v4)
  {
    if (a1 <= 3)
    {
      if (a1 > 1)
      {
        if (a1 != 2)
        {

          v22 = sub_10008B730();
          goto LABEL_24;
        }

        v5 = sub_10008AFD8(v21);
        goto LABEL_13;
      }

      if (a1)
      {
        if (a1 == 1)
        {

          v5 = sub_10008C140();
LABEL_13:
          v22 = v7;
          v1[5] = v5;
          v1[6] = v6;

LABEL_24:
          v40 = v1[7];
          v1[7] = v22;

          sub_10000413C(&qword_1000F0060, &unk_1000B0470);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1000AF0F0;
          v43 = v1[5];
          v42 = v1[6];
          *(v41 + 56) = &type metadata for String;
          v44 = sub_10000587C();
          *(v41 + 64) = v44;
          *(v41 + 32) = v43;
          *(v41 + 40) = v42;
          v45 = v1[7];

          v46 = [v45 debugDescription];
          v47 = sub_1000AC06C();
          v49 = v48;

          *(v41 + 96) = &type metadata for String;
          *(v41 + 104) = v44;
          *(v41 + 72) = v47;
          *(v41 + 80) = v49;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v51 = sub_1000AC3FC();
          v50 = sub_1000AC2BC();
          sub_1000ABA5C("BusinessChat: IMBApplePayViewModel returning title = %@\tsubtitle = %@", 69, 2, &_mh_execute_header, v51, v50, v41);

          v12 = v51;
          goto LABEL_25;
        }

LABEL_28:
        sub_1000AC63C();
        __break(1u);
        return;
      }

LABEL_17:

      v26 = sub_10008B468();
      if (v26)
      {
LABEL_19:
        v22 = v26;
        goto LABEL_24;
      }

LABEL_18:
      v26 = [objc_allocWithZone(NSAttributedString) init];
      goto LABEL_19;
    }

    if (a1 > 5)
    {
      if (a1 == 6)
      {

        sub_10008B1B8();
        if (v23)
        {
          v24 = objc_allocWithZone(NSAttributedString);
          v25 = sub_1000AC02C();

          v22 = [v24 initWithString:v25];

          goto LABEL_24;
        }

        goto LABEL_18;
      }

      if (a1 != 7)
      {
        goto LABEL_28;
      }

      v27 = v3;
      v28 = v4;
      type metadata accessor for IMBApplePayViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v31 = sub_1000AC02C();
      v32 = sub_1000AC02C();
      v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

      sub_1000AC06C();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000AF0E0;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_10000587C();
      *(v34 + 32) = v27;
      *(v34 + 40) = v28;
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_17;
      }

      v13 = v4;
      v14 = v3;
      type metadata accessor for IMBApplePayViewModel();
      v15 = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass:v15];
      v17 = sub_1000AC02C();
      v18 = sub_1000AC02C();
      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      sub_1000AC06C();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000AF0E0;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_10000587C();
      *(v20 + 32) = v14;
      *(v20 + 40) = v13;
    }

    v35 = sub_1000AC03C();
    v37 = v36;

    v1[10] = v35;
    v1[11] = v37;

    v38 = objc_allocWithZone(NSAttributedString);
    v39 = sub_1000AC02C();

    v22 = [v38 initWithString:v39];

    goto LABEL_24;
  }

  v8 = sub_10008C140();
  v10 = v9;
  v1[5] = v8;
  v1[6] = v11;

  v12 = v1[7];
  v1[7] = v10;
LABEL_25:
}

uint64_t sub_10008AD70()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1000AB7EC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *(v0 + 16);
  if (v12)
  {

    if (sub_10000A744())
    {
      v13 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
      swift_beginAccess();
      sub_10008C0D0(v12 + v13, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_10004D744(v4);
      }

      else
      {
        (*(v6 + 32))(v11, v4, v5);
        sub_1000AB7DC();
        v14 = sub_1000AB78C();
        v15 = *(v6 + 8);
        v15(v9, v5);
        v15(v11, v5);
        if (v14)
        {
          v16 = 2;
LABEL_10:
          sub_10008A804(v16);

          goto LABEL_11;
        }
      }

      v16 = 1;
      goto LABEL_10;
    }
  }

  sub_10008A804(1);
LABEL_11:
  v17 = *(v1 + 40);
  v18 = *(v1 + 56);

  v19 = v18;
  return v17;
}

uint64_t sub_10008AFD8(uint64_t a1)
{
  v2 = sub_10008B1B8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    type metadata accessor for IMBApplePayViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v8 = sub_1000AC02C();
    v9 = sub_1000AC02C();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    sub_1000AC06C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000AF0E0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10000587C();
    *(v11 + 32) = v4;
    *(v11 + 40) = v5;
    sub_1000AC03C();

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = sub_1000AC02C();

    v14 = [v12 initWithString:v13];

    v15 = *(v1 + 56);
    *(v1 + 56) = v14;
  }

  v16 = *(v1 + 40);
  v17 = *(v1 + 56);

  v18 = v17;
  return v16;
}

unint64_t sub_10008B1B8()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v2)
  {

    v3 = [v2 paymentSummaryItems];
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v4 = sub_1000AC19C();

    if (!(v4 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_4:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  v5 = sub_1000AC65C();
  if (!v5)
  {
LABEL_21:

    return 0;
  }

LABEL_5:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_26:
    v8 = sub_1000AC5AC();
LABEL_10:
    v9 = v8;

    v10 = [v9 amount];

    if (v10)
    {
      v11 = *(v0 + 16);
      if (v11 && (v12 = *(v11 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest)) != 0)
      {
        v13 = [v12 currencyCode];
        if (!v13)
        {
          sub_1000AC06C();
          v13 = sub_1000AC02C();
        }

        v14 = v10;
        [v14 floatValue];
        v16 = roundf(v15);
        [v14 floatValue];
        v18 = v17;

        v19 = [objc_allocWithZone(NSNumberFormatter) init];
        v20 = v19;
        if (v16 == v18)
        {
          [v19 setMinimumFractionDigits:0];
          [v20 setMaximumFractionDigits:0];
        }

        [v20 setCurrencyCode:v13];

        [v20 setNumberStyle:10];
        v21 = [v20 stringFromNumber:v14];
        if (v21)
        {
          v22 = v21;
          v23 = sub_1000AC06C();

          return v23;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_10008B468()
{
  v1 = sub_10008B1B8();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v27 = v1;
  type metadata accessor for IMBApplePayViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v7 = sub_1000AC02C();
  v8 = sub_1000AC02C();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  sub_1000AC06C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000AF0E0;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_10000587C();
  *(v10 + 64) = v11;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;

  v12 = sub_1000AC03C();
  v14 = v13;

  v0[8] = v12;
  v0[9] = v14;

  v15 = [v5 bundleForClass:ObjCClassFromMetadata];
  v16 = sub_1000AC02C();
  v17 = sub_1000AC02C();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  sub_1000AC06C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000AF0F0;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = v11;
  *(v19 + 32) = v27;
  *(v19 + 40) = v3;
  v21 = v0[3];
  v20 = v0[4];
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v11;
  *(v19 + 72) = v21;
  *(v19 + 80) = v20;

  v22 = sub_1000AC03C();
  v24 = v23;

  v25 = sub_10008BA24(v22, v24);

  return v25;
}

id sub_10008B730()
{
  v1 = sub_10008B1B8();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v28 = v1;
    type metadata accessor for IMBApplePayViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();
    v6 = [v5 bundleForClass:ObjCClassFromMetadata];
    v7 = sub_1000AC02C();
    v8 = sub_1000AC02C();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    sub_1000AC06C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000AF0E0;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_10000587C();
    *(v10 + 64) = v11;
    *(v10 + 32) = v4;
    *(v10 + 40) = v3;

    v12 = sub_1000AC03C();
    v14 = v13;

    v0[8] = v12;
    v0[9] = v14;

    v15 = [v5 bundleForClass:ObjCClassFromMetadata];
    v16 = sub_1000AC02C();
    v17 = sub_1000AC02C();
    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    sub_1000AC06C();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000AF0F0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v11;
    *(v19 + 32) = v28;
    *(v19 + 40) = v3;
    v21 = v0[3];
    v20 = v0[4];
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v11;
    *(v19 + 72) = v21;
    *(v19 + 80) = v20;

    v22 = sub_1000AC03C();
    v24 = v23;

    v25 = sub_10008BA24(v22, v24);

    return v25;
  }

  else
  {
    v27 = v0[7];

    return v27;
  }
}

id sub_10008BA24(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  result = UIApp;
  if (UIApp)
  {
    v4 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      v6 = sub_1000AC02C();
      v7 = sub_1000AC02C();
      v8 = sub_1000AC02C();
      v9 = [v6 stringByReplacingOccurrencesOfString:v7 withString:v8];

      v10 = sub_1000AC06C();
      v12 = v11;

      *(v2 + 80) = v10;
      *(v2 + 88) = v12;
    }

    v13 = objc_allocWithZone(NSAttributedString);

    v14 = sub_1000AC02C();

    v15 = [v13 initWithString:v14];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008BB80()
{

  return v0;
}

uint64_t sub_10008BBD0()
{
  sub_10008BB80();

  return swift_deallocClassInstance();
}

void sub_10008BC28(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  [v8 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v21.receiver = v8;
  v21.super_class = type metadata accessor for WinterpegTextAttachment();
  objc_msgSendSuper2(&v21, "attachmentBoundsForTextContainer:proposedLineFragment:glyphPosition:characterIndex:", a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = [v8 image];
  if (v17)
  {
    v18 = v17;
    if (UIApp)
    {
      v19 = [UIApp preferredContentSizeCategory];
      v20 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v19];

      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      [v18 size];
      [v18 size];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10008BE78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = 0;
  *&v4[OBJC_IVAR____TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment_fontDescender] = 0;
  if (a2 >> 60 != 15)
  {
    isa = sub_1000AB72C().super.isa;
  }

  if (a4)
  {
    v9 = sub_1000AC02C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for WinterpegTextAttachment();
  v10 = objc_msgSendSuper2(&v12, "initWithData:ofType:", isa, v9);
  sub_10000E950(a1, a2);

  return v10;
}

id sub_10008C074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WinterpegTextAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008C0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C140()
{
  type metadata accessor for IMBApplePayViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_1000AC02C();
  v3 = sub_1000AC02C();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1000AC06C();
  [objc_allocWithZone(NSAttributedString) init];
  return v5;
}

void sub_10008C238(uint64_t *a1@<X8>)
{
  type metadata accessor for IMBApplePayViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v5 = sub_1000AC02C();
  v6 = sub_1000AC02C();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v24 = sub_1000AC06C();
  v9 = v8;

  v10 = [v3 bundleForClass:ObjCClassFromMetadata];
  v11 = sub_1000AC02C();
  v12 = sub_1000AC02C();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_1000AC06C();
  v16 = v15;

  v17 = [v3 bundleForClass:ObjCClassFromMetadata];
  v18 = sub_1000AC02C();
  v19 = sub_1000AC02C();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = sub_1000AC06C();
  v23 = v22;

  *a1 = v24;
  a1[1] = v9;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v21;
  a1[5] = v23;
}

void sub_10008C45C()
{
  sub_10008C238(v11);
  v0 = v11[0];
  v1 = v11[1];
  v2 = v11[2];
  v3 = v11[3];
  v4 = v11[4];
  v5 = v11[5];
  sub_10000413C(&qword_1000F3590, "м");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B0620;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 40) = v0;
  *(inited + 48) = v1;
  *(inited + 56) = kCFUserNotificationAlertMessageKey;
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 88) = v4;
  *(inited + 96) = v5;
  v7 = kCFUserNotificationDefaultButtonTitleKey;
  v8 = kCFUserNotificationAlertHeaderKey;
  v9 = kCFUserNotificationAlertMessageKey;
  sub_10005009C(inited);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F3598, &qword_1000B4E60);
  swift_arrayDestroy();
  LODWORD(v11[0]) = -1;
  sub_10000413C(&qword_1000F35A0, &qword_1000B4E68);
  sub_10008C600();
  isa = sub_1000ABFAC().super.isa;
}