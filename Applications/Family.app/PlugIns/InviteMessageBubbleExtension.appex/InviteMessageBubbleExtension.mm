uint64_t sub_100001BEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FamilyFetcher();
  result = sub_10001EFD0();
  a1[3] = v2;
  a1[4] = &off_1000318A8;
  *a1 = result;
  return result;
}

uint64_t sub_100001C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001CB0()
{
  v1 = (v0 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100001D08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100001DFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001ED8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100001F68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_100008798(v4 + v8, a4, a2, a3);
}

uint64_t sub_100001FF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_100002064(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_100002064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *sub_100002134()
{
  v1 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100002180(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10000224C()
{
  v1 = v0 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_100002298(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

void sub_10000235C(double a1)
{
  v2 = v1;
  v4 = sub_100027D5C();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v51 - v7;
  v8 = type metadata accessor for InviteMessageView(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001DFC(&qword_100034798, &qword_100029618);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for InviteMessageDetails(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v51 - v20;
  v22 = (*((swift_isaMask & *v1) + 0xE0))(v19);
  if ((v23 & 1) == 0)
  {
    return;
  }

  v53 = v4;
  v24 = (*((swift_isaMask & *v1) + 0xC8))(v22);
  if (!v24)
  {
    return;
  }

  v25 = v24;
  (*((swift_isaMask & *v1) + 0xB0))();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_100008800(v13, &qword_100034798, &qword_100029618);
    return;
  }

  v26 = v21;
  sub_1000029C4(v13, v21);
  sub_100002A28(v21, v18);
  if (qword_100035170 != -1)
  {
    swift_once();
  }

  if (*&qword_100035178 < a1)
  {
    a1 = *&qword_100035178;
  }

  v27 = sub_100004480();
  v28 = sub_100004480();
  v29 = v2;
  sub_10000B5A8(v18, *&a1, 0, v2, &off_100031028, v27 & 1, v28 & 1, v10);
  sub_100027F5C();
  v30 = v25;
  v31 = [v30 view];
  v32 = v56;
  if (!v31)
  {
    __break(1u);
    goto LABEL_21;
  }

  v33 = v31;
  [v31 invalidateIntrinsicContentSize];

  v34 = [v30 view];
  v35 = v55;
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v34;
  v52 = a1;
  [v34 layoutSubviews];

  v37 = [v30 view];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  [v37 intrinsicContentSize];
  v40 = v39;

  v41 = [v30 view];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v41 intrinsicContentSize];
  v43 = v42;

  sub_100027CCC();
  v44 = sub_100027D4C();
  v45 = sub_10002850C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218240;
    *(v46 + 4) = v43;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v44, v45, "content size width: %f, height: %f", v46, 0x16u);
  }

  v47 = *(v54 + 8);
  v47(v32, v53);
  sub_100027CCC();
  v48 = sub_100027D4C();
  v49 = sub_10002850C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    *(v50 + 4) = a1;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v48, v49, "contentSizeThatFits %f,%f", v50, 0x16u);
  }

  v47(v35, v53);
  (*((swift_isaMask & *v29) + 0xE8))(COERCE_DOUBLE(*&v52), v40, 0);

  sub_100008A60(v26, type metadata accessor for InviteMessageDetails);
}

uint64_t sub_1000029C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100002AE0(char a1)
{
  v2 = v1;
  v4 = sub_100027D5C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessagesViewController(0);
  v13.receiver = v2;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  sub_100027CCC();
  v9 = sub_100027D4C();
  v10 = sub_10002850C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Register for family update notification", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v2 selector:"handleFamilyDidUpdate" name:FAFamilyUpdateNotification object:0];
}

void sub_100002CEC(char a1)
{
  v2 = v1;
  v4 = sub_100027D5C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessagesViewController(0);
  v13.receiver = v2;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  sub_100027CCC();
  v9 = sub_100027D4C();
  v10 = sub_10002850C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unregister for family update notification", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver:v2 name:FAFamilyUpdateNotification object:0];
}

id sub_100002EF0(void *a1)
{
  v2 = v1;
  v4 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  __chkstk_darwin(v4 - 8);
  v83 = &v77 - v5;
  v89 = sub_100027D5C();
  v6 = *(v89 - 8);
  v7 = __chkstk_darwin(v89);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v77 - v11;
  v13 = __chkstk_darwin(v10);
  v84 = &v77 - v14;
  __chkstk_darwin(v13);
  v16 = &v77 - v15;
  v17 = sub_100001DFC(&qword_100034790, &qword_100029610);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  v86 = sub_100027B1C();
  v88 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100027BEC();
  v85 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v27 = [a1 selectedMessage];
  if (v27)
  {
    v28 = v27;
    v80 = v24;
    v81 = v2;
    v29 = [v27 URL];
    if (v29)
    {
      v30 = v29;
      sub_100027BCC();

      v79 = v26;
      sub_100027B0C();
      v31 = v88;
      v32 = v86;
      if ((*(v88 + 48))(v22, 1, v86) == 1)
      {
        sub_100008800(v22, &qword_100034790, &qword_100029610);
        sub_100027CCC();
        v33 = sub_100027D4C();
        v34 = sub_10002850C();
        v35 = os_log_type_enabled(v33, v34);
        v36 = v81;
        if (v35)
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Missing url components for invite message url", v37, 2u);
        }

        (*(v6 + 8))(v12, v89);
        result = [v36 view];
        v39 = v80;
        if (result)
        {
          v40 = result;
          v41 = [objc_opt_self() blackColor];
          [v40 setBackgroundColor:v41];

          return (*(v85 + 8))(v79, v39);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        (*(v31 + 32))(v87, v22, v32);
        sub_100027CBC();
        v45 = v28;
        v46 = sub_100027D4C();
        v47 = sub_10002850C();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v81;
        if (v48)
        {
          v50 = swift_slowAlloc();
          *v50 = 67109120;
          *(v50 + 4) = [v45 isPending];

          _os_log_impl(&_mh_execute_header, v46, v47, "in compose screen %{BOOL}d", v50, 8u);
        }

        else
        {

          v46 = v45;
        }

        v51 = v84;

        v52 = v89;
        v78 = *(v6 + 8);
        v78(v16, v89);
        v53 = v88;
        (*(v88 + 16))(v20, v87, v32);
        (*(v53 + 56))(v20, 0, 1, v32);
        (*((swift_isaMask & *v49) + 0xA0))(v20);
        sub_100027CBC();
        v54 = v82;
        v55 = sub_100027D4C();
        v56 = sub_10002850C();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v90 = v58;
          *v57 = 136315138;
          v59 = [v54 recipientAddresses];
          v60 = v45;
          sub_10002845C();

          v61 = sub_10002846C();
          v63 = v62;
          v32 = v86;

          v64 = sub_100006B88(v61, v63, &v90);
          v45 = v60;

          *(v57 + 4) = v64;
          v49 = v81;
          _os_log_impl(&_mh_execute_header, v55, v56, "recipientAddresses from conversation %s", v57, 0xCu);
          sub_100007038(v58);

          v65 = v84;
          v66 = v89;
        }

        else
        {

          v65 = v51;
          v66 = v52;
        }

        v78(v65, v66);
        v67 = [v54 recipientAddresses];
        v68 = sub_10002845C();

        if (v68[2])
        {
          v69 = v68[4];
          v70 = v68[5];
        }

        else
        {

          v69 = 0;
          v70 = 0xE000000000000000;
        }

        (*((swift_isaMask & *v49) + 0x88))(v69, v70);
        v71 = [v45 isPending];
        v72 = [v45 time];
        v73 = v83;
        if (v72)
        {
          v74 = v72;
          sub_100027BFC();

          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = sub_100027C1C();
        (*(*(v76 - 8) + 56))(v73, v75, 1, v76);
        (*((swift_isaMask & *v49) + 0x100))(v71, v73);

        sub_100008800(v73, &qword_1000347A0, &unk_100029620);
        (*(v88 + 8))(v87, v32);
        return (*(v85 + 8))(v79, v80);
      }

      return result;
    }
  }

  sub_100027CCC();
  v42 = sub_100027D4C();
  v43 = sub_10002850C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Missing invite message url", v44, 2u);
  }

  return (*(v6 + 8))(v9, v89);
}

void sub_10000392C(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v32 = v3;
    v4 = [v1 view];
    if (v4)
    {
      v30 = v4;
      v5 = [v1 childViewControllers];
      sub_100007FAC(0, &qword_100034808, UIViewController_ptr);
      v6 = sub_10002845C();

      v31 = a1;
      if (v6 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000285DC())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_1000285AC();
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          [v9 willMoveToParentViewController:0];
          v12 = [v10 view];
          [v12 removeFromSuperview];

          [v10 removeFromParentViewController];
          ++v8;
          if (v11 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_self() systemGray5Color];
        [v14 setBackgroundColor:v15];

        [v1 _balloonMaskEdgeInsets];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v1 addChildViewController:v31];
        v24 = [v1 view];
        if (v24)
        {
          v25 = v24;
          [v24 addSubview:v32];

          [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
          sub_100001DFC(&qword_100034810, &qword_100029740);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100029600;
          *(inited + 32) = 1952867692;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = v19;
          *(inited + 72) = &type metadata for CGFloat;
          *(inited + 80) = 0x7468676972;
          *(inited + 88) = 0xE500000000000000;
          *(inited + 96) = v23;
          *(inited + 120) = &type metadata for CGFloat;
          *(inited + 128) = 7368564;
          *(inited + 136) = 0xE300000000000000;
          *(inited + 144) = v17;
          *(inited + 168) = &type metadata for CGFloat;
          *(inited + 176) = 0x6D6F74746F62;
          *(inited + 184) = 0xE600000000000000;
          *(inited + 216) = &type metadata for CGFloat;
          *(inited + 192) = v21;
          v27 = sub_1000079CC(inited);
          swift_setDeallocating();
          sub_100001DFC(&qword_100034818, &qword_100029748);
          swift_arrayDestroy();

          v28 = v32;
          sub_100007AFC(&off_100030F20, v27, v28);
          swift_bridgeObjectRelease_n();

          swift_arrayDestroy();
          sub_100007FAC(0, &qword_100034820, NSLayoutConstraint_ptr);
          isa = sub_10002844C().super.isa;

          [v30 addConstraints:isa];

          [v31 didMoveToParentViewController:v1];
          [v1 requestResize];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_100003DB8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v35 = sub_100027D5C();
  v4 = *(v35 - 8);
  v5 = __chkstk_darwin(v35);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_100001DFC(&qword_100034798, &qword_100029618);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for InviteMessageDetails(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xB0))(v18);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_1000029C4(v15, v20);
    v42 = v20[232];
    v41 = 2;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (aBlock == v39 && v45 == v40)
    {
    }

    else
    {
      v26 = sub_10002863C();

      if ((v26 & 1) == 0)
      {
        sub_100027CCC();
        v30 = sub_100027D4C();
        v31 = sub_10002850C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Snapshot normal fallback", v32, 2u);
        }

        (*(v4 + 8))(v10, v35);
        v48 = v36;
        v49 = v37;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1000043A8;
        v47 = &unk_100030F88;
        v33 = _Block_copy(&aBlock);

        v34 = type metadata accessor for MessagesViewController(0);
        v38.receiver = v3;
        v38.super_class = v34;
        objc_msgSendSuper2(&v38, "updateSnapshotWithCompletionBlock:", v33);
        _Block_release(v33);
        goto LABEL_15;
      }
    }

    sub_100027CCC();
    v27 = sub_100027D4C();
    v28 = sub_10002850C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Snapshot, state is pending. Don't use cached view", v29, 2u);
    }

    (*(v4 + 8))(v12, v35);
    v36(0);
LABEL_15:
    sub_100008A60(v20, type metadata accessor for InviteMessageDetails);
    return;
  }

  sub_100008800(v15, &qword_100034798, &qword_100029618);
  sub_100027CCC();
  v21 = sub_100027D4C();
  v22 = sub_1000284EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Snapshot fallback, no bubble", v23, 2u);
  }

  (*(v4 + 8))(v7, v35);
  v48 = v36;
  v49 = v37;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1000043A8;
  v47 = &unk_100030F60;
  v24 = _Block_copy(&aBlock);

  v25 = type metadata accessor for MessagesViewController(0);
  v43.receiver = v3;
  v43.super_class = v25;
  objc_msgSendSuper2(&v43, "updateSnapshotWithCompletionBlock:", v24);
  _Block_release(v24);
}

void sub_1000043A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100004488(char a1, uint64_t a2)
{
  v5 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_1000284CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100008798(a2, v8, &qword_1000347A0, &unk_100029620);
  sub_1000284AC();
  v13 = v2;
  v14 = sub_10002849C();
  v15 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = v13;
  *(v16 + 40) = a1;
  sub_100006DE8(v8, v16 + v15);
  sub_100005128(0, 0, v11, &unk_100029638, v16);
}

uint64_t sub_100004684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 200) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 32) = type metadata accessor for InviteMessageView(0);
  *(v6 + 40) = swift_task_alloc();
  sub_100001DFC(&qword_100034798, &qword_100029618);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for InviteMessageDetails(0);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_100027D5C();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  sub_100001DFC(&qword_100034790, &qword_100029610);
  *(v6 + 128) = swift_task_alloc();
  v9 = sub_100027B1C();
  *(v6 + 136) = v9;
  *(v6 + 144) = *(v9 - 8);
  *(v6 + 152) = swift_task_alloc();
  sub_1000284AC();
  *(v6 + 160) = sub_10002849C();
  v11 = sub_10002848C();
  *(v6 + 168) = v11;
  *(v6 + 176) = v10;

  return _swift_task_switch(sub_1000048F8, v11, v10);
}

uint64_t sub_1000048F8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*((swift_isaMask & **(v0 + 16)) + 0x98))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 128);

    sub_100008800(v4, &qword_100034790, &qword_100029610);
    sub_100027CCC();
    v5 = sub_100027D4C();
    v6 = sub_1000284EC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Message bubble missing urlComponents", v7, 2u);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v12 = (*((swift_isaMask & *v10) + 0x80))(v11);
    v14 = v13;
    *(v0 + 184) = v13;
    v15 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher;
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = sub_100004BE4;
    v17 = *(v0 + 152);
    v18 = *(v0 + 56);
    v19 = *(v0 + 24);
    v20 = *(v0 + 200);

    return sub_100021790(v18, v17, v20, v12, v14, v10 + v15, v19);
  }
}

uint64_t sub_100004BE4()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_100004D28, v3, v2);
}

uint64_t sub_100004D28()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008800(v0[7], &qword_100034798, &qword_100029618);
    sub_100027CCC();
    v4 = sub_100027D4C();
    v5 = sub_1000284EC();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Message bubble could not build inviteMessageDetail", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[2];
    sub_1000029C4(v0[7], v11);
    (*((swift_isaMask & *v16) + 0xE8))(0, 0, 1);
    sub_100002A28(v11, v15);
    (*(v14 + 56))(v15, 0, 1, v13);
    (*((swift_isaMask & *v16) + 0xB8))(v15);
    sub_100002A28(v11, v12);
    if (qword_100035170 != -1)
    {
      swift_once();
    }

    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[2];
    v22 = qword_100035178;
    v23 = sub_100004480();
    v24 = sub_100004480();
    v25 = v21;
    sub_10000B5A8(v18, v22, 0, v21, &off_100031028, v23 & 1, v24 & 1, v19);
    v26 = *((swift_isaMask & *v25) + 0x110);
    v27 = sub_100008A08();
    v28 = v26(v19, v20, v27);
    sub_100008A60(v19, type metadata accessor for InviteMessageView);
    v29 = *((swift_isaMask & *v25) + 0xD0);
    v30 = v28;
    v29(v28);
    sub_10000392C(v30);
    [v25 setReadyForDisplay];

    sub_100008A60(v17, type metadata accessor for InviteMessageDetails);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100005128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008798(a3, v25 - v10, &qword_1000347B0, &qword_100029840);
  v12 = sub_1000284CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008800(v11, &qword_1000347B0, &qword_100029840);
  }

  else
  {
    sub_1000284BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10002848C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10002840C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008800(a3, &qword_1000347B0, &qword_100029840);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008800(a3, &qword_1000347B0, &qword_100029840);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

BOOL sub_100005428()
{
  v1 = sub_100001DFC(&qword_100034798, &qword_100029618);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  (*((swift_isaMask & *v0) + 0xB0))(v2);
  v5 = type metadata accessor for InviteMessageDetails(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_100008800(v4, &qword_100034798, &qword_100029618);
  return v6;
}

uint64_t sub_100005658()
{
  v1 = v0;
  v2 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100027D5C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027CCC();
  v9 = sub_100027D4C();
  v10 = sub_10002850C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received notification for family update", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_100027C1C();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  (*((swift_isaMask & *v1) + 0x100))(0, v4);
  return sub_100008800(v4, &qword_1000347A0, &unk_100029620);
}

void *sub_1000058D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027F6C();
  (*(v5 + 16))(v7, a1, a2);
  v8 = sub_100027F4C();
  sub_100027F3C();
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    sub_100027DCC();
    if (swift_dynamicCastClass())
    {
      sub_100027DBC();
    }
  }

  return v8;
}

id sub_100005A18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000283DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100005A90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher];
  v8 = type metadata accessor for FamilyFetcher();
  v9 = sub_10001EFD0();
  v7[3] = v8;
  v7[4] = &off_1000318A8;
  *v7 = v9;
  v10 = &v4[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_urlComponents;
  v12 = sub_100027B1C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_inviteMessageDetails;
  v14 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler] = 0;
  v15 = &v4[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  if (a2)
  {
    v16 = sub_1000283DC();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for MessagesViewController(0);
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_100005C7C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_100005CC0(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher];
  v5 = type metadata accessor for FamilyFetcher();
  v6 = sub_10001EFD0();
  v4[3] = v5;
  v4[4] = &off_1000318A8;
  *v4 = v6;
  v7 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_urlComponents;
  v9 = sub_100027B1C();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_inviteMessageDetails;
  v11 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler] = 0;
  v12 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for MessagesViewController(0);
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_100005E48(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShouldBeSheetPresentationControllerDelegate:a1 & 1];
}

id sub_100005E8C(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher];
  v5 = type metadata accessor for FamilyFetcher();
  v6 = sub_10001EFD0();
  v4[3] = v5;
  v4[4] = &off_1000318A8;
  *v4 = v6;
  v7 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_urlComponents;
  v9 = sub_100027B1C();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_inviteMessageDetails;
  v11 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler] = 0;
  v12 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for MessagesViewController(0);
  return objc_msgSendSuper2(&v14, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

id sub_100005FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000060D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = sub_1000283DC();
  v9 = sub_1000283DC();
  v10 = sub_1000283DC();
  v12[4] = nullsub_1;
  v12[5] = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000068AC;
  v12[3] = &unk_100031220;
  v11 = _Block_copy(v12);
  [v7 _presentAlertWithTitle:v8 message:v9 buttonTitle:v10 completion:v11];
  _Block_release(v11);
}

void sub_1000061D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = sub_1000283DC();
  v9 = sub_1000283DC();
  v10 = sub_1000283DC();
  v12[4] = nullsub_1;
  v12[5] = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000068AC;
  v12[3] = &unk_100030FD8;
  v11 = _Block_copy(v12);
  [v7 _presentAlertWithTitle:v8 message:v9 buttonTitle:v10 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000062E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000063B4;

  return sub_1000064B0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000063B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000064B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  sub_1000284AC();
  v7[25] = sub_10002849C();
  v9 = sub_10002848C();
  v7[26] = v9;
  v7[27] = v8;

  return _swift_task_switch(sub_100006554, v9, v8);
}

uint64_t sub_100006554()
{
  if (v0[19])
  {
    v1 = sub_1000283DC();
  }

  else
  {
    v1 = 0;
  }

  v0[28] = v1;
  if (v0[21])
  {
    v2 = sub_1000283DC();
  }

  else
  {
    v2 = 0;
  }

  v0[29] = v2;
  v3 = v0[24];
  isa = sub_10002844C().super.isa;
  v0[30] = isa;
  sub_100007FAC(0, &qword_1000347B8, NSNumber_ptr);
  v5 = sub_10002844C().super.isa;
  v0[31] = v5;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_100006710;
  v6 = swift_continuation_init();
  v0[17] = sub_100001DFC(&qword_1000347C0, &qword_100029648);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000068F0;
  v0[13] = &unk_100031000;
  v0[14] = v6;
  [v3 family_presentAlertSheetWithTitle:v1 message:v2 buttonTitles:isa styles:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100006710()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return _swift_task_switch(sub_100006818, v2, v1);
}

uint64_t sub_100006818()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);

  v5 = *(v0 + 256);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1000068AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000068F0(uint64_t a1, int a2)
{
  v3 = *sub_100008754((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10000694C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006A44;

  return v6(a1);
}

uint64_t sub_100006A44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for MessagesViewController(uint64_t a1)
{
  result = qword_100035180;
  if (!qword_100035180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006B88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007338(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007094(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007038(v11);
  return v7;
}

uint64_t sub_100006C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006C6C()
{
  result = qword_1000347A8;
  if (!qword_1000347A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347A8);
  }

  return result;
}

uint64_t sub_100006CC0()
{
  v1 = *(sub_100001DFC(&qword_1000347A0, &unk_100029620) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_100027C1C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100006DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E58()
{
  v2 = *(sub_100001DFC(&qword_1000347A0, &unk_100029620) - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100006F44;

  return sub_100004684(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_100006F44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007038(void *a1)
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

uint64_t sub_100007094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100007114(uint64_t a1)
{
  sub_10000723C(319, &qword_1000347F0, &type metadata accessor for URLComponents);
  if (v1 <= 0x3F)
  {
    sub_10000723C(319, &qword_1000347F8, type metadata accessor for InviteMessageDetails);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000723C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002853C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100007290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000072A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000072C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_100034800)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100034800);
    }
  }
}

unint64_t sub_100007338(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007444(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000285CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100007444(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007490(a1, a2);
  sub_1000075C0(&off_100030EF8);
  return v3;
}

char *sub_100007490(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000076AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000285CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002842C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000076AC(v10, 0);
        result = sub_10002859C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000075C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100007720(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000076AC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001DFC(&qword_100034850, &unk_10002A410);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007720(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DFC(&qword_100034850, &unk_10002A410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100007814(uint64_t a1, uint64_t a2)
{
  sub_10002867C();
  sub_10002841C();
  v4 = sub_10002868C();

  return sub_10000788C(a1, a2, v4);
}

unint64_t sub_10000788C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002863C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_100007944(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000285AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000079C4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000079CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DFC(&qword_100034830, &qword_100029750);
    v3 = sub_10002860C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008798(v4, &v13, &qword_100034818, &qword_100029748);
      v5 = v13;
      v6 = v14;
      result = sub_100007814(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007FF4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100007AFC(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = 0;
  v40 = &_swiftEmptyArrayStorage;
  while (1)
  {

    v5 = sub_1000283DC();
    v6.super.isa = sub_10002836C().super.isa;
    v44[0] = 2003134838;
    v44[1] = 0xE400000000000000;
    v44[5] = sub_100007FAC(0, &qword_100034828, UIView_ptr);
    v44[2] = a3;
    sub_100001DFC(&qword_100034830, &qword_100029750);
    v7 = sub_10002860C();
    v8 = a3;
    sub_100008798(v44, &v41, &qword_100034818, &qword_100029748);
    v9 = v41;
    v10 = v42;
    result = sub_100007814(v41, v42);
    if (v11)
    {
      break;
    }

    v7[(result >> 6) + 8] |= 1 << result;
    v12 = (v7[6] + 16 * result);
    *v12 = v9;
    v12[1] = v10;
    result = sub_100007FF4(&v43, (v7[7] + 32 * result));
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_38;
    }

    v7[2] = v15;
    v16 = objc_opt_self();
    sub_100008800(v44, &qword_100034818, &qword_100029748);
    isa = sub_10002836C().super.isa;

    v18 = [v16 constraintsWithVisualFormat:v5 options:0 metrics:v6.super.isa views:isa];

    sub_100007FAC(0, &qword_100034820, NSLayoutConstraint_ptr);
    v19 = sub_10002845C();

    v20 = v19 >> 62;
    v45 = v3;
    if (v19 >> 62)
    {
      v21 = sub_1000285DC();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v40 >> 62;
    if (v40 >> 62)
    {
      v36 = sub_1000285DC();
      v24 = v36 + v21;
      if (__OFADD__(v36, v21))
      {
LABEL_34:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v23 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 + v21;
      if (__OFADD__(v23, v21))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v22)
      {
        v25 = v40 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_1000285DC();
      goto LABEL_17;
    }

    if (v22)
    {
      goto LABEL_16;
    }

LABEL_17:
    result = sub_1000285BC();
    v40 = result;
    v25 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v20)
    {
      result = sub_1000285DC();
      v28 = result;
      if (!result)
      {
LABEL_3:

        if (v21 > 0)
        {
          goto LABEL_39;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_3;
      }
    }

    if (((v27 >> 1) - v26) < v21)
    {
      goto LABEL_40;
    }

    v39 = v21;
    v29 = v25 + 8 * v26 + 32;
    if (v20)
    {
      if (v28 < 1)
      {
        goto LABEL_42;
      }

      sub_100008004();
      for (i = 0; i != v28; ++i)
      {
        sub_100001DFC(&qword_100034838, &qword_100029758);
        v31 = sub_100007944(&v41, i, v19);
        v33 = *v32;
        (v31)(&v41, 0);
        *(v29 + 8 * i) = v33;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    if (v39 >= 1)
    {
      v34 = *(v25 + 16);
      v14 = __OFADD__(v34, v39);
      v35 = v34 + v39;
      if (v14)
      {
        goto LABEL_41;
      }

      *(v25 + 16) = v35;
    }

LABEL_4:
    v3 = v45 + 1;
    if (v45 + 1 == v37)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100007FAC(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_100007FF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008004()
{
  result = qword_100034840;
  if (!qword_100034840)
  {
    sub_100008068(&qword_100034838, &qword_100029758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034840);
  }

  return result;
}

uint64_t sub_100008068(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000080B0(void *a1, void (**a2)(void, void))
{
  v4 = sub_100027D5C();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - v8;
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = sub_100001DFC(&qword_100034798, &qword_100029618);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for InviteMessageDetails(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  *(v43 + 16) = a2;
  v19 = *((swift_isaMask & *a1) + 0xB0);
  v20 = _Block_copy(a2);
  v40 = a1;
  v19(v20);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_1000029C4(v14, v18);
    v48 = v18[232];
    v47 = 2;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    v26 = v18;
    if (aBlock == v45 && v51 == v46)
    {
    }

    else
    {
      v27 = sub_10002863C();

      v28 = v43;
      if ((v27 & 1) == 0)
      {
        v32 = v39;
        sub_100027CCC();
        v33 = sub_100027D4C();
        v34 = sub_10002850C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Snapshot normal fallback", v35, 2u);
        }

        (*(v41 + 8))(v32, v42);
        v54 = sub_100008740;
        v55 = v28;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1000043A8;
        v53 = &unk_1000311F8;
        v36 = _Block_copy(&aBlock);

        v37 = type metadata accessor for MessagesViewController(0);
        v44.receiver = v40;
        v44.super_class = v37;
        objc_msgSendSuper2(&v44, "updateSnapshotWithCompletionBlock:", v36);
        _Block_release(v36);
        goto LABEL_15;
      }
    }

    sub_100027CCC();
    v29 = sub_100027D4C();
    v30 = sub_10002850C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Snapshot, state is pending. Don't use cached view", v31, 2u);
    }

    (*(v41 + 8))(v9, v42);
    a2[2](a2, 0);
LABEL_15:
    sub_100008A60(v26, type metadata accessor for InviteMessageDetails);
  }

  sub_100008800(v14, &qword_100034798, &qword_100029618);
  sub_100027CCC();
  v21 = sub_100027D4C();
  v22 = sub_1000284EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Snapshot fallback, no bubble", v23, 2u);
  }

  (*(v41 + 8))(v11, v42);
  v54 = sub_100008740;
  v55 = v43;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000043A8;
  v53 = &unk_1000311D0;
  v24 = _Block_copy(&aBlock);

  v25 = type metadata accessor for MessagesViewController(0);
  v49.receiver = v40;
  v49.super_class = v25;
  objc_msgSendSuper2(&v49, "updateSnapshotWithCompletionBlock:", v24);
  _Block_release(v24);
}

uint64_t sub_100008708()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100008754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008798(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008860()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008AE0;

  return sub_10000694C(a1, v4);
}

uint64_t sub_100008950(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006F44;

  return sub_10000694C(a1, v4);
}

unint64_t sub_100008A08()
{
  result = qword_100034848;
  if (!qword_100034848)
  {
    type metadata accessor for InviteMessageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034848);
  }

  return result;
}

uint64_t sub_100008A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100008B78()
{
  v1 = *(v0 + *(type metadata accessor for InviteMessageView(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t sub_100008BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InviteMessageView(0) + 28);

  return sub_100001C40(v3, a1);
}

uint64_t sub_100008BF8()
{
  type metadata accessor for InviteMessageView(0);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return v1;
}

uint64_t sub_100008C60(char a1)
{
  type metadata accessor for InviteMessageView(0);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  return sub_1000282DC();
}

uint64_t (*sub_100008CD0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for InviteMessageView(0) + 32));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return sub_10001A6F8;
}

uint64_t sub_100008D8C()
{
  type metadata accessor for InviteMessageView(0);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282EC();
  return v1;
}

uint64_t sub_100008E38()
{
  type metadata accessor for InviteMessageView(0);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return v1;
}

uint64_t sub_100008EA0(char a1)
{
  type metadata accessor for InviteMessageView(0);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  return sub_1000282DC();
}

uint64_t (*sub_100008F10(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for InviteMessageView(0) + 36));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return sub_100008FCC;
}

void sub_100008FD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_1000282DC();

  free(v1);
}

uint64_t sub_100009038()
{
  type metadata accessor for InviteMessageView(0);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282EC();
  return v1;
}

void sub_1000090A4()
{
  v0 = sub_100027CAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v0);
  sub_100027C9C();
  (*(v1 + 8))(v3, v0);
  nullsub_1();
}

uint64_t sub_1000091C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_100001DFC(&qword_100034860, &qword_1000297D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v61 - v4;
  v6 = sub_100001DFC(&qword_100034868, &qword_1000297E0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v61 = sub_100001DFC(&qword_100034870, &qword_1000297E8);
  __chkstk_darwin(v61);
  v10 = &v61 - v9;
  v62 = sub_100001DFC(&qword_100034878, &qword_1000297F0);
  __chkstk_darwin(v62);
  v12 = &v61 - v11;
  v63 = sub_100001DFC(&qword_100034880, &qword_1000297F8);
  __chkstk_darwin(v63);
  v64 = &v61 - v13;
  v14 = sub_100027F1C();
  nullsub_1();
  *v5 = v14;
  *(v5 + 1) = v15;
  v5[16] = 0;
  v16 = sub_100001DFC(&qword_100034888, &qword_100029800);
  sub_100009820(v2, &v5[*(v16 + 44)]);
  sub_100001DFC(&qword_100034890, &qword_100029808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100029790;
  LOBYTE(v14) = sub_10002804C();
  *(inited + 32) = v14;
  v18 = sub_10002806C();
  *(inited + 33) = v18;
  v19 = sub_10002805C();
  sub_10002805C();
  if (sub_10002805C() != v14)
  {
    v19 = sub_10002805C();
  }

  sub_10002805C();
  if (sub_10002805C() != v18)
  {
    v19 = sub_10002805C();
  }

  nullsub_1();
  sub_100027D6C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100016F44(v5, v8, &qword_100034860, &qword_1000297D8);
  v28 = &v8[*(v6 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_10002803C();
  v68 = *(v2 + 232);
  v67 = 2;
  sub_100006C6C();
  sub_10002843C();
  sub_10002843C();
  if (v69 != v66)
  {
    sub_10002863C();
  }

  nullsub_1();
  sub_100027D6C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100016F44(v8, v10, &qword_100034868, &qword_1000297E0);
  v38 = &v10[*(v61 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_10002802C();
  nullsub_1();
  sub_100027D6C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_100016F44(v10, v12, &qword_100034870, &qword_1000297E8);
  v48 = &v12[*(v62 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  type metadata accessor for InviteMessageView(0);
  sub_10002831C();
  sub_100027E1C();
  v49 = v64;
  sub_100016F44(v12, v64, &qword_100034878, &qword_1000297F0);
  v50 = (v49 + *(v63 + 36));
  v51 = v74;
  v50[4] = v73;
  v50[5] = v51;
  v50[6] = v75;
  v52 = v70;
  *v50 = v69;
  v50[1] = v52;
  v53 = v72;
  v50[2] = v71;
  v50[3] = v53;
  v54 = [objc_opt_self() systemGray5Color];
  v55 = sub_1000281FC();
  v56 = sub_10002801C();
  v57 = v49;
  v58 = v65;
  sub_100016F44(v57, v65, &qword_100034880, &qword_1000297F8);
  result = sub_100001DFC(&qword_100034898, &qword_100029810);
  v60 = v58 + *(result + 36);
  *v60 = v55;
  *(v60 + 8) = v56;
  return result;
}

uint64_t sub_100009820@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v166 = a2;
  v143 = sub_100001DFC(&qword_100034D70, &qword_10002A168);
  v3 = __chkstk_darwin(v143);
  v137 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v138 = &v135 - v5;
  v145 = sub_100001DFC(&qword_100034D78, &qword_10002A170);
  __chkstk_darwin(v145);
  v147 = &v135 - v6;
  v141 = sub_100001DFC(&qword_100034D80, &qword_10002A178);
  __chkstk_darwin(v141);
  v142 = (&v135 - v7);
  v146 = sub_100001DFC(&qword_100034D88, &qword_10002A180);
  __chkstk_darwin(v146);
  v144 = &v135 - v8;
  v157 = sub_100001DFC(&qword_100034D90, &qword_10002A188);
  __chkstk_darwin(v157);
  v152 = &v135 - v9;
  v155 = sub_100001DFC(&qword_100034D98, &qword_10002A190);
  __chkstk_darwin(v155);
  v156 = &v135 - v10;
  v151 = type metadata accessor for InviteActionsView(0);
  v11 = __chkstk_darwin(v151);
  v136 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v139 = &v135 - v13;
  v148 = sub_100001DFC(&qword_100034DA0, &qword_10002A198);
  __chkstk_darwin(v148);
  v149 = &v135 - v14;
  v159 = type metadata accessor for InviteMessageView(0);
  __chkstk_darwin(v159);
  v140 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_100001DFC(&qword_100034DA8, &qword_10002A1A0);
  __chkstk_darwin(v153);
  v150 = &v135 - v16;
  v167 = sub_100001DFC(&qword_100034DB0, &qword_10002A1A8);
  v162 = *(v167 - 1);
  __chkstk_darwin(v167);
  v154 = &v135 - v17;
  v18 = sub_100001DFC(&qword_100034DB8, &qword_10002A1B0);
  v19 = __chkstk_darwin(v18 - 8);
  v165 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v173 = &v135 - v21;
  v163 = sub_100027FFC();
  v161 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_100001DFC(&qword_100034DC0, &qword_10002A1B8);
  v164 = *(v176 - 8);
  v23 = __chkstk_darwin(v176);
  v175 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v177 = &v135 - v25;
  v26 = sub_100001DFC(&qword_100034DC8, &qword_10002A1C0);
  v27 = v26 - 8;
  v28 = __chkstk_darwin(v26);
  v174 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v135 - v30;
  v32 = sub_100027CAC();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SettingsView(0);
  __chkstk_darwin(v36);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100001DFC(&qword_100034DD0, &qword_10002A1C8);
  v170 = *(v39 - 8);
  v171 = v39;
  v40 = __chkstk_darwin(v39);
  v169 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v135 - v42;
  v158 = a1;
  sub_1000166C8(a1, v38, type metadata accessor for InviteMessageView);
  sub_1000166C8(a1, &v38[*(v36 + 20)], type metadata accessor for InviteMessageDetails);
  (*(v33 + 104))(v35, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v32);
  sub_100027C9C();
  (*(v33 + 8))(v35, v32);
  v44 = v159;
  sub_100018568(&qword_100034DD8, type metadata accessor for SettingsView, &unk_100029988);
  v168 = v43;
  sub_10002817C();
  sub_10001A0F4(v38, type metadata accessor for SettingsView);
  sub_10001A154();
  sub_1000281DC();
  LOBYTE(v38) = sub_10002802C();
  v45 = v158;
  sub_100027D6C();
  v46 = *(v27 + 44);
  v172 = v31;
  v47 = &v31[v46];
  *v47 = v38;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  v52 = sub_100027F1C();
  nullsub_1();
  v54 = v53;
  LOBYTE(v178) = 0;
  sub_10000B168(v45, &v182);
  v187 = v183[1];
  v188 = v183[2];
  v189 = v183[3];
  v185 = v182;
  v186 = v183[0];
  v190[2] = v183[1];
  v190[3] = v183[2];
  v191 = v183[3];
  v190[0] = v182;
  v190[1] = v183[0];
  sub_100008798(&v185, v192, &qword_100034DE8, &qword_10002A1D0);
  sub_100008800(v190, &qword_100034DE8, &qword_10002A1D0);
  *(v181 + 7) = v185;
  *(&v181[3] + 7) = v188;
  *(&v181[2] + 7) = v187;
  *(&v181[1] + 7) = v186;
  *(&v182 + 1) = v54;
  *(&v183[1] + 1) = v181[1];
  *(&v183[2] + 1) = v181[2];
  *(&v181[4] + 7) = v189;
  *&v182 = v52;
  LOBYTE(v183[0]) = v178;
  *(&v183[3] + 1) = v181[3];
  *(&v183[3] + 10) = *(&v181[3] + 9);
  *(v183 + 1) = v181[0];
  v55 = v160;
  sub_100027FEC();
  sub_100001DFC(&qword_100034DF0, &qword_10002A1D8);
  sub_10001A1A8(&qword_100034DF8, &qword_100034DF0, &qword_10002A1D8, &protocol conformance descriptor for VStack<A>);
  sub_1000281EC();
  (*(v161 + 8))(v55, v163);
  v192[2] = v183[1];
  v192[3] = v183[2];
  v193[0] = v183[3];
  *(v193 + 10) = *(&v183[3] + 10);
  v192[0] = v182;
  v192[1] = v183[0];
  v56 = v45;
  sub_100008800(v192, &qword_100034DF0, &qword_10002A1D8);
  v57 = *(v45 + 224);
  v58 = *(v45 + *(type metadata accessor for InviteMessageDetails(0) + 108));
  v163 = v57;
  if ((v58 & 1) == 0)
  {
    v61 = v167;
    if (*(v45 + 233) == 1)
    {
      LOBYTE(v182) = *(v45 + 232);
      LOBYTE(v178) = 4;
      sub_10001697C();

      v62 = sub_1000283AC();
      v63 = v61;
      v64 = v154;
      if (v62)
      {
        v65 = v56;
        v66 = v139;
        sub_1000166C8(v65, v139, type metadata accessor for InviteMessageView);
        sub_1000166C8(v66, v149, type metadata accessor for InviteActionsView);
        swift_storeEnumTagMultiPayload();
        sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
        sub_10001A2AC();
        sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView, &unk_100029938);
        v67 = v150;
        sub_100027F7C();
        sub_10001A0F4(v66, type metadata accessor for InviteActionsView);
      }

      else
      {
        v85 = v140;
        sub_1000166C8(v56, v140, type metadata accessor for InviteMessageView);
        sub_100016520(v85, &v182);
        LOBYTE(v85) = sub_10002802C();
        nullsub_1();
        sub_100027D6C();
        LOBYTE(v178) = 0;
        v86 = v183[2];
        v87 = v149;
        *(v149 + 32) = v183[1];
        *(v87 + 48) = v86;
        *(v87 + 64) = v183[3];
        *(v87 + 80) = *&v183[4];
        v88 = v183[0];
        *v87 = v182;
        *(v87 + 16) = v88;
        *(v87 + 88) = v85;
        *(v87 + 96) = v89;
        *(v87 + 104) = v90;
        *(v87 + 112) = v91;
        *(v87 + 120) = v92;
        *(v87 + 128) = 0;
        swift_storeEnumTagMultiPayload();
        sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
        sub_10001A2AC();
        sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView, &unk_100029938);
        v67 = v150;
        sub_100027F7C();
      }

      v93 = v162;
      sub_100008798(v67, v156, &qword_100034DA8, &qword_10002A1A0);
      swift_storeEnumTagMultiPayload();
      sub_10001A1F0();
      sub_10001A38C();
      sub_100027F7C();
      sub_100008800(v67, &qword_100034DA8, &qword_10002A1A0);
      goto LABEL_18;
    }

    v68 = v45 + *(v44 + 32);
    v69 = *v68;
    v70 = *(v68 + 8);
    LOBYTE(v182) = v69;
    *(&v182 + 1) = v70;

    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    sub_1000282CC();
    v64 = v154;
    if ((v178 & 1) != 0 || (v71 = v45 + *(v44 + 36), v72 = *v71, v73 = *(v71 + 8), LOBYTE(v182) = v72, *(&v182 + 1) = v73, sub_1000282CC(), v178 == 1))
    {
      v75 = *(v45 + 48);
      v74 = *(v45 + 56);

      sub_10002831C();
      sub_100027E1C();
      v76 = v142;
      *v142 = v75;
      v76[1] = v74;
      v77 = v183[4];
      *(v76 + 5) = v183[3];
      *(v76 + 6) = v77;
      *(v76 + 7) = v184;
      v78 = v183[0];
      *(v76 + 1) = v182;
      *(v76 + 2) = v78;
      v79 = v183[2];
      *(v76 + 3) = v183[1];
      *(v76 + 4) = v79;
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E50, &qword_10002A1F0);
      sub_10001A528();
      sub_10001A608();
      v80 = v144;
      sub_100027F7C();
      sub_100008798(v80, v147, &qword_100034D88, &qword_10002A180);
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
      sub_10001A49C();
      sub_10001A2AC();
      v81 = v152;
      sub_100027F7C();
      v82 = v80;
      v83 = &qword_100034D88;
      v84 = &qword_10002A180;
LABEL_15:
      sub_100008800(v82, v83, v84);
LABEL_16:
      v105 = sub_100001DFC(&qword_100034E00, &qword_10002A1E0);
      (*(*(v105 - 8) + 56))(v81, 0, 1, v105);
LABEL_17:
      sub_100008798(v81, v156, &qword_100034D90, &qword_10002A188);
      swift_storeEnumTagMultiPayload();
      sub_10001A1F0();
      sub_10001A38C();
      sub_100027F7C();
      sub_100008800(v81, &qword_100034D90, &qword_10002A188);
      v93 = v162;
      v63 = v167;
LABEL_18:
      v106 = sub_100001DFC(&qword_100034E68, &qword_10002A1F8);
      (*(*(v106 - 8) + 56))(v64, 0, 1, v106);
      v60 = v173;
      sub_100016F44(v64, v173, &qword_100034DB0, &qword_10002A1A8);
      (*(v93 + 56))(v60, 0, 1, v63);
      goto LABEL_19;
    }

    v94 = *(v45 + 232);
    v180 = v94;
    v179 = 2;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (v182 == v178)
    {
      goto LABEL_12;
    }

    v95 = sub_10002863C();

    if (v95)
    {
      goto LABEL_14;
    }

    v180 = v94;
    v179 = 4;
    sub_10002843C();
    sub_10002843C();
    if (v182 == v178)
    {
LABEL_12:

LABEL_14:
      v96 = v136;
      sub_1000166C8(v45, v136, type metadata accessor for InviteMessageView);
      sub_10002831C();
      sub_100027E1C();
      v97 = v96;
      v98 = v137;
      sub_10001603C(v97, v137, type metadata accessor for InviteActionsView);
      v99 = (v98 + *(v143 + 36));
      v100 = v183[4];
      v99[4] = v183[3];
      v99[5] = v100;
      v99[6] = v184;
      v101 = v183[0];
      *v99 = v182;
      v99[1] = v101;
      v102 = v183[2];
      v99[2] = v183[1];
      v99[3] = v102;
      v103 = v138;
      sub_100016F44(v98, v138, &qword_100034D70, &qword_10002A168);
      sub_100008798(v103, v142, &qword_100034D70, &qword_10002A168);
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E50, &qword_10002A1F0);
      sub_10001A528();
      sub_10001A608();
      v104 = v144;
      sub_100027F7C();
      sub_100008798(v104, v147, &qword_100034D88, &qword_10002A180);
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
      sub_10001A49C();
      sub_10001A2AC();
      v81 = v152;
      sub_100027F7C();
      sub_100008800(v104, &qword_100034D88, &qword_10002A180);
      v82 = v103;
      v83 = &qword_100034D70;
      v84 = &qword_10002A168;
      goto LABEL_15;
    }

    v122 = sub_10002863C();

    if (v122)
    {
      goto LABEL_14;
    }

    v180 = v94;
    v179 = 0;
    sub_10002843C();
    sub_10002843C();
    if (v182 != v178)
    {
      v123 = sub_10002863C();

      if (v123)
      {
        goto LABEL_25;
      }

      v180 = v94;
      v179 = 1;
      sub_10002843C();
      sub_10002843C();
      if (v182 != v178)
      {
        v132 = sub_10002863C();

        if (v132)
        {
          goto LABEL_25;
        }

        v180 = v94;
        v179 = 3;
        sub_10002843C();
        sub_10002843C();
        if (v182 != v178)
        {
          v133 = sub_10002863C();

          if ((v133 & 1) == 0)
          {
            v134 = sub_100001DFC(&qword_100034E00, &qword_10002A1E0);
            v81 = v152;
            (*(*(v134 - 8) + 56))(v152, 1, 1, v134);
            goto LABEL_17;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_25:
    v124 = v140;
    sub_1000166C8(v45, v140, type metadata accessor for InviteMessageView);
    sub_100016520(v124, &v182);
    LOBYTE(v124) = sub_10002802C();
    nullsub_1();
    sub_100027D6C();
    LOBYTE(v178) = 0;
    v125 = v183[2];
    v126 = v147;
    *(v147 + 32) = v183[1];
    *(v126 + 48) = v125;
    *(v126 + 64) = v183[3];
    *(v126 + 80) = *&v183[4];
    v127 = v183[0];
    *v126 = v182;
    *(v126 + 16) = v127;
    *(v126 + 88) = v124;
    *(v126 + 96) = v128;
    *(v126 + 104) = v129;
    *(v126 + 112) = v130;
    *(v126 + 120) = v131;
    *(v126 + 128) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
    sub_10001A49C();
    sub_10001A2AC();
    v81 = v152;
    sub_100027F7C();
    goto LABEL_16;
  }

  v59 = v173;
  (*(v162 + 56))(v173, 1, 1, v167);

  v60 = v59;
LABEL_19:
  v107 = v169;
  v108 = *(v170 + 16);
  v109 = v171;
  v108(v169, v168, v171);
  v110 = v174;
  sub_100008798(v172, v174, &qword_100034DC8, &qword_10002A1C0);
  v111 = v164;
  v167 = *(v164 + 16);
  (v167)(v175, v177, v176);
  v112 = v60;
  v113 = v165;
  sub_100008798(v112, v165, &qword_100034DB8, &qword_10002A1B0);
  v114 = v166;
  v108(v166, v107, v109);
  v115 = sub_100001DFC(&qword_100034E70, &qword_10002A200);
  sub_100008798(v110, &v114[v115[12]], &qword_100034DC8, &qword_10002A1C0);
  v116 = v175;
  v117 = v176;
  (v167)(&v114[v115[16]], v175, v176);
  *&v114[v115[20]] = v163;
  sub_100008798(v113, &v114[v115[24]], &qword_100034DB8, &qword_10002A1B0);

  sub_100008800(v173, &qword_100034DB8, &qword_10002A1B0);
  v118 = *(v111 + 8);
  v118(v177, v117);
  sub_100008800(v172, &qword_100034DC8, &qword_10002A1C0);
  v119 = v171;
  v120 = *(v170 + 8);
  v120(v168, v171);
  sub_100008800(v113, &qword_100034DB8, &qword_10002A1B0);

  v118(v116, v117);
  sub_100008800(v174, &qword_100034DC8, &qword_10002A1C0);
  return (v120)(v169, v119);
}

uint64_t sub_10000B0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001603C(a1, a3, type metadata accessor for InviteMessageView);
  v5 = type metadata accessor for SettingsView(0);
  return sub_10001603C(a2, a3 + *(v5 + 20), type metadata accessor for InviteMessageDetails);
}

uint64_t sub_10000B168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000280CC();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v6 = a1[1];
  v59 = *a1;
  v60 = v6;
  v48 = sub_100017000();

  v7 = sub_10002816C();
  v9 = v8;
  v11 = v10;
  sub_10002807C();
  v12 = sub_10002813C();
  v14 = v13;
  v16 = v15;

  sub_100018604(v7, v9, v11 & 1);

  sub_10002809C();
  v17 = sub_10002811C();
  v19 = v18;
  LOBYTE(v7) = v20;
  sub_100018604(v12, v14, v16 & 1);

  sub_10002824C();
  v21 = sub_10002812C();
  v51 = v22;
  v52 = v21;
  v50 = v23;
  v53 = v24;

  sub_100018604(v17, v19, v7 & 1);

  v25 = v49[3];
  v59 = v49[2];
  v60 = v25;

  v26 = sub_10002816C();
  v28 = v27;
  LOBYTE(v9) = v29;
  sub_10002824C();
  v30 = sub_10002812C();
  v32 = v31;
  LOBYTE(v17) = v33;

  sub_100018604(v26, v28, v9 & 1);

  sub_10002810C();
  v35 = v54;
  v34 = v55;
  v36 = v56;
  (*(v55 + 104))(v54, enum case for Font.Leading.tight(_:), v56);
  sub_1000280EC();

  (*(v34 + 8))(v35, v36);
  v37 = sub_10002813C();
  v39 = v38;
  LOBYTE(v35) = v40;
  v42 = v41;

  sub_100018604(v30, v32, v17 & 1);

  v43 = v50 & 1;
  LOBYTE(v59) = v50 & 1;
  v58 = v50 & 1;
  v57 = v35 & 1;
  v45 = v51;
  v44 = v52;
  *a2 = v52;
  *(a2 + 8) = v45;
  *(a2 + 16) = v43;
  *(a2 + 24) = v53;
  *(a2 + 32) = v37;
  *(a2 + 40) = v39;
  *(a2 + 48) = v35 & 1;
  *(a2 + 56) = v42;
  *(a2 + 64) = 256;
  v46 = v44;
  sub_100016FF0(v44, v45, v43);

  sub_100016FF0(v37, v39, v35 & 1);

  sub_100018604(v37, v39, v35 & 1);

  sub_100018604(v46, v45, v59);
}

double sub_10000B520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100016520(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void sub_10000B5A8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v32 = a7;
  v15 = sub_100027CAC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001603C(a1, a8, type metadata accessor for InviteMessageDetails);
  v19 = type metadata accessor for InviteMessageView(0);
  v20 = a8 + v19[5];
  *v20 = a2;
  *(v20 + 8) = a3 & 1;
  v21 = (a8 + v19[6]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a8 + v19[7]);
  v23 = type metadata accessor for FamilyFetcher();
  v24 = sub_10001EFD0();
  v22[3] = v23;
  v22[4] = &off_1000318A8;
  *v22 = v24;
  v25 = a8 + v19[8];
  v33 = a6;
  sub_1000282BC();
  v26 = v35;
  *v25 = v34;
  *(v25 + 8) = v26;
  v27 = a8 + v19[9];
  v33 = v32;
  sub_1000282BC();
  v28 = v35;
  *v27 = v34;
  *(v27 + 8) = v28;
  (*(v16 + 104))(v18, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v15);
  sub_100027C9C();
  (*(v16 + 8))(v18, v15);
  v29 = v19[10];
  nullsub_1();
  *(a8 + v29) = v30;
}

uint64_t sub_10000B7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100027E9C();
  nullsub_1();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = sub_100001DFC(&qword_1000348A0, &qword_100029818);
  return sub_10000B864(v1, a1 + *(v5 + 44));
}

uint64_t sub_10000B864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = sub_100001DFC(&qword_100034CF8, &qword_10002A0F0);
  __chkstk_darwin(v152);
  v5 = v128 - v4;
  v142 = sub_100001DFC(&qword_100034D00, &qword_10002A0F8);
  v6 = __chkstk_darwin(v142);
  v144 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v143 = v128 - v9;
  v10 = __chkstk_darwin(v8);
  v141 = v128 - v11;
  v12 = __chkstk_darwin(v10);
  v145 = v128 - v13;
  v14 = __chkstk_darwin(v12);
  v138 = v128 - v15;
  __chkstk_darwin(v14);
  v146 = v128 - v16;
  v150 = sub_100001DFC(&qword_100034D08, &qword_10002A100);
  __chkstk_darwin(v150);
  v151 = v128 - v17;
  v18 = type metadata accessor for InviteActionsView(0);
  *&v147 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v154 = v19;
  v148 = v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_100001DFC(&qword_100034D10, &qword_10002A108);
  v149 = *(v156 - 8);
  v20 = __chkstk_darwin(v156);
  v139 = v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v135 = v128 - v23;
  __chkstk_darwin(v22);
  v25 = v128 - v24;
  v155 = sub_100001DFC(&qword_100034D18, &qword_10002A110);
  v26 = __chkstk_darwin(v155);
  v28 = v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v136 = v128 - v30;
  __chkstk_darwin(v29);
  v32 = v128 - v31;
  v157 = sub_100001DFC(&qword_100034D20, &qword_10002A118);
  v33 = __chkstk_darwin(v157);
  v140 = v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v137 = v128 - v36;
  __chkstk_darwin(v35);
  v38 = v128 - v37;
  v158 = sub_100001DFC(&qword_100034D28, &qword_10002A120);
  v39 = __chkstk_darwin(v158);
  v40 = __chkstk_darwin(v39);
  v41 = __chkstk_darwin(v40);
  v43 = v128 - v42;
  __chkstk_darwin(v41);
  v47 = v128 - v46;
  v48 = *(a1 + 234);
  v153 = a2;
  if ((v48 & 1) == 0)
  {
    v131 = v45;
    v132 = v44;
    v133 = v28;
    v134 = v5;
    v160 = *(a1 + 232);
    v159 = 4;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (v168 == v161)
    {
    }

    else
    {
      v49 = sub_10002863C();

      if ((v49 & 1) == 0)
      {
        v130 = a1;
        v74 = v148;
        sub_1000166C8(a1, v148, type metadata accessor for InviteActionsView);
        v75 = (*(v147 + 80) + 32) & ~*(v147 + 80);
        v76 = swift_allocObject();
        v147 = xmmword_1000297A0;
        *(v76 + 16) = xmmword_1000297A0;
        sub_10001603C(v74, v76 + v75, type metadata accessor for InviteActionsView);
        v77 = v135;
        sub_1000282FC();
        nullsub_1();
        sub_10002831C();
        sub_100027E1C();
        v78 = v136;
        v135 = *(v149 + 32);
        (v135)(v136, v77, v156);
        v79 = (v78 + *(v155 + 36));
        v80 = v166;
        v79[4] = v165;
        v79[5] = v80;
        v79[6] = v167;
        v81 = v162;
        *v79 = v161;
        v79[1] = v81;
        v82 = v164;
        v79[2] = v163;
        v79[3] = v82;
        v129 = objc_opt_self();
        v83 = [v129 secondarySystemFillColor];
        v84 = sub_1000281FC();
        v85 = sub_10002801C();
        v86 = v137;
        sub_100016F44(v78, v137, &qword_100034D18, &qword_10002A110);
        v87 = v86 + *(v157 + 36);
        *v87 = v84;
        *(v87 + 8) = v85;
        nullsub_1();
        v89 = v88;
        v90 = v131;
        v91 = (v131 + *(v158 + 36));
        v149 = sub_100027E0C();
        v92 = *(v149 + 20);
        v93 = enum case for RoundedCornerStyle.continuous(_:);
        v94 = sub_100027F0C();
        v95 = *(v94 - 8);
        v96 = *(v95 + 104);
        LODWORD(v136) = v93;
        v97 = v93;
        v98 = v96;
        v128[1] = v95 + 104;
        v96(&v91[v92], v97, v94);
        *v91 = v89;
        *(v91 + 1) = v89;
        v99 = sub_100001DFC(&qword_100034D30, &qword_10002A128);
        *&v91[*(v99 + 36)] = 256;
        sub_100016F44(v86, v90, &qword_100034D20, &qword_10002A118);
        v100 = v138;
        sub_100016F44(v90, v138, &qword_100034D28, &qword_10002A120);
        v101 = v142;
        *(v100 + *(v142 + 36)) = 0;
        sub_100016F44(v100, v146, &qword_100034D00, &qword_10002A0F8);
        sub_1000166C8(v130, v74, type metadata accessor for InviteActionsView);
        v102 = swift_allocObject();
        *(v102 + 16) = v147;
        sub_10001603C(v74, v102 + v75, type metadata accessor for InviteActionsView);
        v103 = v139;
        sub_1000282FC();
        nullsub_1();
        sub_10002831C();
        sub_100027E1C();
        v104 = v133;
        (v135)(v133, v103, v156);
        v105 = (v104 + *(v155 + 36));
        v106 = v171;
        v107 = v173;
        v108 = v174;
        v105[4] = v172;
        v105[5] = v107;
        v105[6] = v108;
        v109 = v169;
        v110 = v170;
        *v105 = v168;
        v105[1] = v109;
        v105[2] = v110;
        v105[3] = v106;
        v111 = [v129 systemBlueColor];
        v112 = sub_1000281FC();
        LOBYTE(v86) = sub_10002801C();
        v113 = v104;
        v114 = v140;
        sub_100016F44(v113, v140, &qword_100034D18, &qword_10002A110);
        v115 = v114 + *(v157 + 36);
        *v115 = v112;
        *(v115 + 8) = v86;
        nullsub_1();
        v117 = v116;
        v118 = v132;
        v119 = (v132 + *(v158 + 36));
        v98(&v119[*(v149 + 20)], v136, v94);
        *v119 = v117;
        *(v119 + 1) = v117;
        *&v119[*(v99 + 36)] = 256;
        sub_100016F44(v114, v118, &qword_100034D20, &qword_10002A118);
        v120 = v118;
        v121 = v141;
        sub_100016F44(v120, v141, &qword_100034D28, &qword_10002A120);
        *(v121 + *(v101 + 36)) = 0;
        v70 = &qword_100034D00;
        v71 = &qword_10002A0F8;
        v122 = v145;
        sub_100016F44(v121, v145, &qword_100034D00, &qword_10002A0F8);
        v123 = v146;
        v124 = v143;
        sub_100008798(v146, v143, &qword_100034D00, &qword_10002A0F8);
        v125 = v144;
        sub_100008798(v122, v144, &qword_100034D00, &qword_10002A0F8);
        v126 = v134;
        sub_100008798(v124, v134, &qword_100034D00, &qword_10002A0F8);
        v127 = sub_100001DFC(&qword_100034D38, &qword_10002A130);
        sub_100008798(v125, v126 + *(v127 + 48), &qword_100034D00, &qword_10002A0F8);
        sub_100008800(v125, &qword_100034D00, &qword_10002A0F8);
        sub_100008800(v124, &qword_100034D00, &qword_10002A0F8);
        sub_100008798(v126, v151, &qword_100034CF8, &qword_10002A0F0);
        swift_storeEnumTagMultiPayload();
        sub_100019378();
        sub_10001A1A8(&qword_100034D68, &qword_100034CF8, &qword_10002A0F0, &protocol conformance descriptor for TupleView<A>);
        sub_100027F7C();
        sub_100008800(v126, &qword_100034CF8, &qword_10002A0F0);
        sub_100008800(v122, &qword_100034D00, &qword_10002A0F8);
        v72 = v123;
        return sub_100008800(v72, v70, v71);
      }
    }
  }

  v50 = v148;
  sub_1000166C8(a1, v148, type metadata accessor for InviteActionsView);
  v51 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1000297A0;
  v53 = sub_10001603C(v50, v52 + v51, type metadata accessor for InviteActionsView);
  __chkstk_darwin(v53);
  sub_1000282FC();
  nullsub_1();
  sub_10002831C();
  sub_100027E1C();
  (*(v149 + 32))(v32, v25, v156);
  v54 = &v32[*(v155 + 36)];
  v55 = v171;
  v56 = v173;
  v57 = v174;
  *(v54 + 4) = v172;
  *(v54 + 5) = v56;
  *(v54 + 6) = v57;
  v58 = v169;
  v59 = v170;
  *v54 = v168;
  *(v54 + 1) = v58;
  *(v54 + 2) = v59;
  *(v54 + 3) = v55;
  v60 = [objc_opt_self() systemBlueColor];
  v61 = sub_1000281FC();
  v62 = sub_10002801C();
  sub_100016F44(v32, v38, &qword_100034D18, &qword_10002A110);
  v63 = &v38[*(v157 + 36)];
  *v63 = v61;
  v63[8] = v62;
  nullsub_1();
  v65 = v64;
  v66 = &v43[*(v158 + 36)];
  v67 = *(sub_100027E0C() + 20);
  v68 = enum case for RoundedCornerStyle.continuous(_:);
  v69 = sub_100027F0C();
  (*(*(v69 - 8) + 104))(&v66[v67], v68, v69);
  *v66 = v65;
  *(v66 + 1) = v65;
  *&v66[*(sub_100001DFC(&qword_100034D30, &qword_10002A128) + 36)] = 256;
  sub_100016F44(v38, v43, &qword_100034D20, &qword_10002A118);
  v70 = &qword_100034D28;
  v71 = &qword_10002A120;
  sub_100016F44(v43, v47, &qword_100034D28, &qword_10002A120);
  sub_100008798(v47, v151, &qword_100034D28, &qword_10002A120);
  swift_storeEnumTagMultiPayload();
  sub_100019378();
  sub_10001A1A8(&qword_100034D68, &qword_100034CF8, &qword_10002A0F0, &protocol conformance descriptor for TupleView<A>);
  sub_100027F7C();
  v72 = v47;
  return sub_100008800(v72, v70, v71);
}

void sub_10000CB1C(uint64_t a1)
{
  v2 = type metadata accessor for InviteActionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for InviteMessageView(0);
  v10 = a1 + *(v9 + 24);
  v11 = *v10;
  if (*v10)
  {
    v25 = *(v10 + 8);
    v12 = (a1 + *(v9 + 36));
    v13 = *v12;
    v14 = *(v12 + 1);
    v27 = v13;
    v28 = v14;
    v26 = 1;
    v15 = v11;
    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    sub_1000282DC();
    sub_100027D0C();
    v16 = sub_100027CFC();
    sub_10001A708(*(a1 + 232));
    sub_100027CDC();

    v17 = sub_1000284CC();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    sub_1000166C8(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteActionsView);
    sub_1000284AC();
    v18 = v15;
    v19 = sub_10002849C();
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_10001603C(v5, v22 + v20, type metadata accessor for InviteActionsView);
    v23 = (v22 + v21);
    v24 = v25;
    *v23 = v18;
    v23[1] = v24;
    sub_100005128(0, 0, v8, &unk_10002A140, v22);
  }
}

uint64_t sub_10000CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v6[7] = swift_task_alloc();
  sub_1000284AC();
  v6[8] = sub_10002849C();
  v8 = sub_10002848C();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_10000CECC, v8, v7);
}

uint64_t sub_10000CECC()
{
  v1 = v0[4];
  sub_100027BDC();
  v2 = type metadata accessor for InviteMessageView(0);
  v0[11] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10000CFA8;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  return sub_10000D1B8(v6, v7, v5, v1 + v3, 0xD000000000000014, 0x800000010002A870);
}

uint64_t sub_10000CFA8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_100008800(v2, &qword_1000348A8, &unk_10002A420);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_10000D0FC, v4, v3);
}

uint64_t sub_10000D0FC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  v3 = (v2 + *(v1 + 36));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 104) = 0;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_100027D5C();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_100027C3C();
  v6[16] = swift_task_alloc();
  sub_1000283CC();
  v6[17] = swift_task_alloc();
  sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v6[18] = swift_task_alloc();
  v8 = sub_100027BEC();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000D378, 0, 0);
}

uint64_t sub_10000D378()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_100008798(v0[6], v3, &qword_1000348A8, &unk_10002A420);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008800(v0[18], &qword_1000348A8, &unk_10002A420);
    sub_100027CCC();
    v4 = sub_100027D4C();
    v5 = sub_1000284EC();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "invalid url in openFamilyInvite", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    v13 = v0[9];
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v14 = v13[3];
    v15 = v13[4];
    sub_100008754(v13, v14);
    v0[22] = swift_getObjectType();
    v21 = (*(v15 + 56) + **(v15 + 56));
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_10000D65C;
    v17 = v0[21];
    v18 = v0[10];
    v19 = v0[11];
    v20 = v0[7];

    return v21(v17, v20, v18, v19, v14, v15);
  }
}

uint64_t sub_10000D65C(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10000D75C, 0, 0);
}

uint64_t sub_10000D75C()
{
  v1 = [*(v0 + 192) error];
  if (v1)
  {
    v2 = v1;
    v30 = *(v0 + 176);
    v3 = *(v0 + 64);
    sub_1000283BC();
    sub_100027C2C();
    v4 = sub_1000283FC();
    v6 = v5;
    swift_getErrorValue();
    v7 = sub_10002866C();
    v9 = v8;
    sub_1000283BC();
    sub_100027C2C();
    v10 = sub_1000283FC();
    (*(v3 + 8))(v4, v6, v7, v9, v10, v11, v30, v3);
  }

  v12 = *(v0 + 192);
  sub_100027CCC();
  v13 = v12;
  v14 = sub_100027D4C();
  v15 = sub_10002850C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 192);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v16;
    *v18 = v16;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v14, v15, "Did present Family invite: %@", v17, 0xCu);
    sub_100008800(v18, &qword_1000348B0, &qword_100029830);
  }

  v20 = *(v0 + 192);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = *(v0 + 120);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);

  (*(v26 + 8))(v24, v25);
  v27 = [v20 success];

  (*(v22 + 8))(v21, v23);

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t sub_10000DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008798(a3, v25 - v10, &qword_1000347B0, &qword_100029840);
  v12 = sub_1000284CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008800(v11, &qword_1000347B0, &qword_100029840);
  }

  else
  {
    sub_1000284BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10002848C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10002840C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008800(a3, &qword_1000347B0, &qword_100029840);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008800(a3, &qword_1000347B0, &qword_100029840);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000DD80(uint64_t a1)
{
  v2 = type metadata accessor for InviteActionsView(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v4 - 8);
  v34 = &v30 - v5;
  v6 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_100027BEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = type metadata accessor for InviteMessageDetails(0);
  sub_100008798(a1 + *(v16 + 100), v8, &qword_1000348A8, &unk_10002A420);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100008800(v8, &qword_1000348A8, &unk_10002A420);
  }

  v18 = *(v10 + 32);
  v30 = v10 + 32;
  v31 = v18;
  v19 = v15;
  v18(v15, v8, v9);
  v20 = (a1 + *(type metadata accessor for InviteMessageView(0) + 32));
  v21 = *v20;
  v22 = *(v20 + 1);
  v36 = v21;
  v37 = v22;
  v35 = 1;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();
  sub_100027D0C();
  v23 = sub_100027CFC();
  sub_10001A708(*(a1 + 232));
  sub_100027CDC();

  v24 = sub_1000284CC();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v25 = v33;
  sub_1000166C8(a1, v33, type metadata accessor for InviteActionsView);
  (*(v10 + 16))(v13, v19, v9);
  sub_1000284AC();
  v26 = sub_10002849C();
  v27 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v28 = (v3 + *(v10 + 80) + v27) & ~*(v10 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  sub_10001603C(v25, v29 + v27, type metadata accessor for InviteActionsView);
  v31(v29 + v28, v13, v9);
  sub_100005128(0, 0, v34, &unk_10002A160, v29);

  return (*(v10 + 8))(v19, v9);
}

uint64_t sub_10000E210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1000284AC();
  v5[3] = sub_10002849C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10000E2D0;

  return sub_10000E46C(a5, 2);
}

uint64_t sub_10000E2D0()
{

  v1 = sub_10002848C();

  return _swift_task_switch(sub_10000E40C, v1, v0);
}

uint64_t sub_10000E40C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000E46C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = sub_100027BEC();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v3[18] = swift_task_alloc();
  v6 = sub_100027CAC();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_100027D5C();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = sub_1000284AC();
  v3[28] = sub_10002849C();
  v9 = sub_10002848C();
  v3[29] = v9;
  v3[30] = v8;

  return _swift_task_switch(sub_10000E720, v9, v8);
}

uint64_t sub_10000E720(uint64_t a1)
{
  sub_100027CCC();
  v2 = sub_100027D4C();
  v3 = sub_10002850C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 56);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "User didTap %ld button", v5, 0xCu);
  }

  v6 = *(v1 + 208);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  v9 = *(v1 + 64);

  v10 = *(v8 + 8);
  *(v1 + 248) = v10;
  *(v1 + 256) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  v11 = type metadata accessor for InviteMessageView(0);
  *(v1 + 264) = v11;
  v12 = v9 + *(v11 + 24);
  v13 = *v12;
  *(v1 + 272) = *v12;
  if (!v13)
  {
    v34 = v11;

    sub_100027CCC();
    v35 = sub_100027D4C();
    v36 = sub_1000284EC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No presenter, return", v37, 2u);
    }

    v38 = *(v1 + 192);
    v39 = *(v1 + 176);
    v40 = *(v1 + 64);

    v10(v38, v39);
    v41 = (v40 + *(v34 + 32));
    v42 = *v41;
    v43 = *(v41 + 1);
    *(v1 + 16) = v42;
    *(v1 + 24) = v43;
    *(v1 + 364) = 0;
    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    goto LABEL_10;
  }

  v15 = *(v1 + 160);
  v14 = *(v1 + 168);
  v16 = *(v1 + 152);
  v17 = *(v12 + 8);
  *(v1 + 280) = v17;
  (*(v15 + 104))(v14, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v16);
  v18 = v13;
  v19 = sub_100027C9C();
  (*(v15 + 8))(v14, v16);
  if (v19)
  {
    if (*(v1 + 56) == 1)
    {
      v21 = *(v1 + 136);
      v20 = *(v1 + 144);
      v23 = *(v1 + 120);
      v22 = *(v1 + 128);
      v24 = *(v1 + 64);

      v25 = sub_1000284CC();
      (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
      sub_1000166C8(v24, v21, type metadata accessor for InviteActionsView);
      v26 = v18;
      v27 = sub_10002849C();
      v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = &protocol witness table for MainActor;
      sub_10001603C(v21, v29 + v28, type metadata accessor for InviteActionsView);
      v30 = (v29 + ((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v30 = v26;
      v30[1] = v17;
      sub_100005128(0, 0, v20, &unk_100029870, v29);

      v31 = (*(v1 + 64) + *(*(v1 + 264) + 32));
      v32 = *v31;
      v33 = *(v31 + 1);
      *(v1 + 32) = v32;
      *(v1 + 40) = v33;
      *(v1 + 365) = 0;
      sub_100001DFC(&qword_100034858, &qword_1000297D0);
LABEL_10:
      sub_1000282DC();

      v44 = *(v1 + 8);

      return v44();
    }

    sub_100001DFC(&qword_1000348B8, &qword_100029858);
    v48 = swift_allocObject();
    *(v1 + 288) = v48;
    *(v48 + 16) = xmmword_100029790;
    v49 = objc_opt_self();
    v50 = [v49 mainBundle];
    v72._countAndFlagsBits = 0xE000000000000000;
    v79._object = 0x800000010002A7B0;
    v79._countAndFlagsBits = 0xD000000000000017;
    v83.value._countAndFlagsBits = 0;
    v83.value._object = 0;
    v51.super.isa = v50;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    v52 = sub_100027B4C(v79, v83, v51, v87, 0, v72);
    v54 = v53;

    *(v48 + 32) = v52;
    *(v48 + 40) = v54;
    v55 = [v49 mainBundle];
    v73._countAndFlagsBits = 0xE000000000000000;
    v80._countAndFlagsBits = 0x6C65636E6143;
    v80._object = 0xE600000000000000;
    v84.value._countAndFlagsBits = 0;
    v84.value._object = 0;
    v56.super.isa = v55;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v57 = sub_100027B4C(v80, v84, v56, v88, 0, v73);
    v59 = v58;

    *(v48 + 48) = v57;
    *(v48 + 56) = v59;
    ObjectType = swift_getObjectType();
    v60 = [v49 mainBundle];
    v74._countAndFlagsBits = 0xE000000000000000;
    v81._countAndFlagsBits = 0xD00000000000001CLL;
    v81._object = 0x800000010002A7D0;
    v85.value._countAndFlagsBits = 0;
    v85.value._object = 0;
    v61.super.isa = v60;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v62 = sub_100027B4C(v81, v85, v61, v89, 0, v74);
    v64 = v63;

    *(v1 + 296) = v64;
    v65 = [v49 mainBundle];
    v75._countAndFlagsBits = 0xE000000000000000;
    v82._countAndFlagsBits = 0xD00000000000001ELL;
    v82._object = 0x800000010002A7F0;
    v86.value._countAndFlagsBits = 0;
    v86.value._object = 0;
    v66.super.isa = v65;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v67 = sub_100027B4C(v82, v86, v66, v90, 0, v75);
    v69 = v68;

    *(v1 + 304) = v69;
    sub_100001DFC(&qword_1000348C0, &qword_100029860);
    v70 = swift_allocObject();
    *(v1 + 312) = v70;
    *(v70 + 16) = xmmword_1000297B0;
    sub_100016788();
    *(v70 + 32) = sub_10002852C(2);
    *(v70 + 40) = sub_10002852C(1);
    v76 = (*(v17 + 16) + **(v17 + 16));
    v71 = swift_task_alloc();
    *(v1 + 320) = v71;
    *v71 = v1;
    v71[1] = sub_10000EF40;

    return v76(v62, v64, v67, v69, v48, v70, ObjectType, v17);
  }

  else
  {
    v46 = swift_task_alloc();
    *(v1 + 344) = v46;
    *v46 = v1;
    v46[1] = sub_10000F73C;
    v47 = *(v1 + 72);

    return sub_1000107D4(v47);
  }
}

uint64_t sub_10000EF40(int a1)
{
  v2 = *v1;
  *(*v1 + 360) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return _swift_task_switch(sub_10000F0E8, v4, v3);
}

uint64_t sub_10000F0E8(uint64_t a1)
{
  sub_100027CCC();
  v2 = sub_100027D4C();
  v3 = sub_10002850C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 360);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "User in tap in alert sheet: %d", v5, 8u);
  }

  v6 = *(v1 + 360);
  v7 = *(v1 + 248);
  v8 = *(v1 + 200);
  v9 = *(v1 + 176);

  v7(v8, v9);
  if (v6)
  {
    v10 = *(v1 + 272);

    v11 = (*(v1 + 64) + *(*(v1 + 264) + 32));
    v12 = *v11;
    v13 = *(v11 + 1);
    *(v1 + 32) = v12;
    *(v1 + 40) = v13;
    *(v1 + 365) = 0;
    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    sub_1000282DC();

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    *(v1 + 328) = v16;
    *v16 = v1;
    v16[1] = sub_10000F340;
    v17 = *(v1 + 80);

    return sub_1000107D4(v17);
  }
}

uint64_t sub_10000F340()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10000F460, v3, v2);
}

uint64_t sub_10000F460()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[14];
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, v0[6], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100008800(v0[10], &qword_1000348A8, &unk_10002A420);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = v0[34];
  v8 = v0[35];
  v9 = swift_task_alloc();
  v0[42] = v9;
  *v9 = v0;
  v9[1] = sub_10000F5B8;
  v10 = v0[14];
  v11 = v0[7];

  return sub_1000113A0(v10, v11, v7, v8);
}

uint64_t sub_10000F5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return _swift_task_switch(sub_10001A6F4, v6, v5);
}

uint64_t sub_10000F73C()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10000F85C, v3, v2);
}

uint64_t sub_10000F85C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[13];
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, v0[6], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100008800(v0[9], &qword_1000348A8, &unk_10002A420);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = v0[34];
  v8 = v0[35];
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_10000F9B4;
  v10 = v0[13];
  v11 = v0[7];

  return sub_1000113A0(v10, v11, v7, v8);
}

uint64_t sub_10000F9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return _swift_task_switch(sub_10000FB38, v6, v5);
}

uint64_t sub_10000FB38()
{
  v1 = *(v0 + 272);

  v2 = (*(v0 + 64) + *(*(v0 + 264) + 32));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 365) = 0;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000FC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100027C3C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100027B7C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000283CC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100027B8C();
  __chkstk_darwin(v5 - 8);
  sub_1000283BC();
  sub_100027B6C();
  sub_100027C2C();
  sub_100027B9C();
  v6 = sub_10002815C();
  v8 = v7;
  v10 = v9;
  sub_10002807C();
  v11 = sub_10002813C();
  v13 = v12;
  v15 = v14;

  sub_100018604(v6, v8, v10 & 1);

  sub_10002824C();
  v16 = sub_10002812C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_100018604(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_10000FEDC(uint64_t a1)
{
  v2 = type metadata accessor for InviteActionsView(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v4 - 8);
  v34 = &v30 - v5;
  v6 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_100027BEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = type metadata accessor for InviteMessageDetails(0);
  sub_100008798(a1 + *(v16 + 96), v8, &qword_1000348A8, &unk_10002A420);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100008800(v8, &qword_1000348A8, &unk_10002A420);
  }

  v18 = *(v10 + 32);
  v30 = v10 + 32;
  v31 = v18;
  v19 = v15;
  v18(v15, v8, v9);
  v20 = (a1 + *(type metadata accessor for InviteMessageView(0) + 32));
  v21 = *v20;
  v22 = *(v20 + 1);
  v36 = v21;
  v37 = v22;
  v35 = 1;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();
  sub_100027D0C();
  v23 = sub_100027CFC();
  sub_10001A708(*(a1 + 232));
  sub_100027CDC();

  v24 = sub_1000284CC();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v25 = v33;
  sub_1000166C8(a1, v33, type metadata accessor for InviteActionsView);
  (*(v10 + 16))(v13, v19, v9);
  sub_1000284AC();
  v26 = sub_10002849C();
  v27 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v28 = (v3 + *(v10 + 80) + v27) & ~*(v10 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  sub_10001603C(v25, v29 + v27, type metadata accessor for InviteActionsView);
  v31(v29 + v28, v13, v9);
  sub_100005128(0, 0, v34, &unk_10002A150, v29);

  return (*(v10 + 8))(v19, v9);
}

uint64_t sub_100010368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1000284AC();
  v5[3] = sub_10002849C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100010428;

  return sub_10000E46C(a5, 1);
}

uint64_t sub_100010428()
{

  v1 = sub_10002848C();

  return _swift_task_switch(sub_10001A700, v1, v0);
}

uint64_t sub_100010564@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100027C3C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100027B7C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000283CC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100027B8C();
  __chkstk_darwin(v5 - 8);
  sub_1000283BC();
  sub_100027B6C();
  sub_100027C2C();
  sub_100027B9C();
  v6 = sub_10002815C();
  v8 = v7;
  v10 = v9;
  sub_10002807C();
  v11 = sub_10002813C();
  v13 = v12;
  v15 = v14;

  sub_100018604(v6, v8, v10 & 1);

  sub_10002823C();
  v16 = sub_10002812C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_100018604(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_1000107D4(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_100027D5C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_100027BEC();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  sub_1000284AC();
  v1[25] = sub_10002849C();
  v5 = sub_10002848C();
  v1[26] = v5;
  v1[27] = v4;

  return _swift_task_switch(sub_100010924, v5, v4);
}

uint64_t sub_100010924()
{
  v1 = v0[24];
  v0[28] = [objc_allocWithZone(FAURLConfiguration) init];
  v2 = [objc_allocWithZone(FAURLConfiguration) init];
  v0[29] = v2;
  v3 = FAURLEndpointPendingInviteActionFromMessagesV1;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100010A88;
  v4 = swift_continuation_init();
  v0[17] = sub_100001DFC(&qword_1000348C8, &qword_100029878);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100010E74;
  v0[13] = &unk_1000312E8;
  v0[14] = v4;
  [v2 URLForEndpoint:v3 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100010A88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_100010C94;
  }

  else
  {
    v5 = sub_100010BB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100010BB8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 144);

  (*(v4 + 32))(v5, v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100010C94()
{
  v1 = v0[29];

  swift_willThrow();

  sub_100027CCC();
  swift_errorRetain();
  v2 = sub_100027D4C();
  v3 = sub_1000284EC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve PendingInviteActionFromMessagesV1 from config bag. Falling back to url from messages payload. Error: %@", v6, 0xCu);
    sub_100008800(v7, &qword_1000348B0, &qword_100029830);
  }

  else
  {
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v10 + 56))(v11, 1, 1, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100010E74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100027BEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_100008754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_100027BCC();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100010FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v6[7] = swift_task_alloc();
  sub_1000284AC();
  v6[8] = sub_10002849C();
  v8 = sub_10002848C();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_1000110B8, v8, v7);
}

uint64_t sub_1000110B8()
{
  v1 = v0[4];
  sub_100027BDC();
  v2 = type metadata accessor for InviteMessageView(0);
  v0[11] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_100011190;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  return sub_10000D1B8(v6, v7, v5, v1 + v3, 0x7542747065636341, 0xEC0000006E6F7474);
}

uint64_t sub_100011190()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_100008800(v2, &qword_1000348A8, &unk_10002A420);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_1000112E4, v4, v3);
}

uint64_t sub_1000112E4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  v3 = (v2 + *(v1 + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 104) = 0;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000113A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  sub_100027C3C();
  v5[15] = swift_task_alloc();
  sub_1000283CC();
  v5[16] = swift_task_alloc();
  v6 = sub_100027D5C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  sub_1000284AC();
  v5[21] = sub_10002849C();
  v8 = sub_10002848C();
  v5[22] = v8;
  v5[23] = v7;

  return _swift_task_switch(sub_100011500, v8, v7);
}

uint64_t sub_100011500()
{
  v1 = v0[14];
  v2 = (v1 + *(type metadata accessor for InviteMessageView(0) + 28));
  v3 = v2[3];
  v4 = v2[4];
  sub_100008754(v2, v3);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v11 = (*(v4 + 24) + **(v4 + 24));
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_100011650;
  v9 = v0[10];
  v8 = v0[11];

  return v11(v9, v5, v6, v8, v3, v4);
}

uint64_t sub_100011650(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;

  v5 = *(v3 + 184);
  v6 = *(v3 + 176);

  return _swift_task_switch(sub_10001177C, v6, v5);
}

uint64_t sub_10001177C()
{
  v37 = v0;
  v1 = *(v0 + 208);

  if (v1)
  {
    v2 = *(v0 + 200);
    sub_100027D0C();
    swift_errorRetain();
    v3 = sub_100027CFC();
    sub_100027CEC();

    sub_100027CCC();
    swift_errorRetain();
    v4 = sub_100027D4C();
    v5 = sub_1000284EC();
    sub_10001690C(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 160);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_10002866C();
      v14 = sub_100006B88(v12, v13, &v36);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Updating invite status failed with error %s", v10, 0xCu);
      sub_100007038(v11);

      (*(v8 + 8))(v7, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    v23 = *(v0 + 200);
    v24 = *(v0 + 104);
    ObjectType = swift_getObjectType();
    sub_1000283BC();
    sub_100027C2C();
    v25 = sub_1000283FC();
    v27 = v26;
    swift_getErrorValue();
    v28 = sub_10002866C();
    v30 = v29;
    sub_1000283BC();
    sub_100027C2C();
    v31 = sub_1000283FC();
    (*(v24 + 8))(v25, v27, v28, v30, v31, v32, ObjectType, v24);
    sub_10001690C(v23, 1);

    sub_10001690C(v23, 1);
  }

  else
  {
    sub_100027D0C();
    v15 = sub_100027CFC();
    sub_100027CEC();

    sub_100027CCC();
    v16 = sub_100027D4C();
    v17 = sub_10002850C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 88);
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updated invite status to %ld", v19, 0xCu);
    }

    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 136);

    (*(v21 + 8))(v20, v22);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100011C2C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SettingsView(0) + 20);

  return sub_100016918(a1, v3);
}

uint64_t sub_100011CB8()
{
  v1 = v0 + *(type metadata accessor for SettingsView(0) + 20);
  if (*(v1 + 233) != 1)
  {
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (v9 == v7 && v10 == v8)
    {
    }

    else
    {
      v3 = sub_10002863C();

      if ((v3 & 1) == 0)
      {
        sub_10002843C();
        sub_10002843C();
        if (v9 == v7 && v10 == v8)
        {
        }

        else
        {
          v6 = sub_10002863C();

          if ((v6 & 1) == 0)
          {
            return 0;
          }
        }

        if (*(v1 + 234))
        {
          return 0;
        }

        v4 = 192;
LABEL_9:
        v2 = *(v1 + v4);

        return v2;
      }
    }

LABEL_8:
    v4 = 176;
    goto LABEL_9;
  }

  sub_10001697C();
  if ((sub_1000283AC() & 1) == 0)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_100011EA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100027E9C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100001DFC(&qword_1000348D8, &qword_100029880);
  return sub_100011EF4(v1, a1 + *(v3 + 44));
}

uint64_t sub_100011EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v60 = a2;
  v2 = type metadata accessor for SettingsView(0);
  v51 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v52 = v3;
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100001DFC(&qword_100034CA0, &qword_10002A088);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v50 - v4;
  v6 = sub_100001DFC(&qword_100034CA8, &qword_10002A090);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_100001DFC(&qword_100034CB0, &qword_10002A098);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_100001DFC(&qword_100034CB8, &qword_10002A0A0);
  v15 = __chkstk_darwin(v14 - 8);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = sub_100027F1C();
  v20 = 1;
  v65 = 1;
  v21 = sub_10002825C();
  v22 = sub_10002821C();
  KeyPath = swift_getKeyPath();
  nullsub_1();
  v24 = sub_10002808C();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = sub_1000280BC();
  sub_100008800(v13, &qword_100034CB0, &qword_10002A098);
  v26 = swift_getKeyPath();
  v61 = v19;
  LOBYTE(v62) = v65;
  *(&v62 + 1) = v21;
  *&v63 = KeyPath;
  *(&v63 + 1) = v22;
  *&v64 = v26;
  *(&v64 + 1) = v25;
  sub_100001DFC(&qword_100034CC0, &qword_10002A0A8);
  sub_10001A1A8(&qword_100034CC8, &qword_100034CC0, &qword_10002A0A8, &protocol conformance descriptor for VStack<A>);
  v55 = v18;
  sub_1000281DC();
  v66[0] = v61;
  v66[1] = v62;
  v66[2] = v63;
  v66[3] = v64;
  v27 = v54;
  sub_100008800(v66, &qword_100034CC0, &qword_10002A0A8);
  v28 = sub_100011CB8();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    *v5 = sub_100027F2C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    sub_100001DFC(&qword_100034CD8, &qword_10002A0B8);
    v32 = v53;
    sub_1000166C8(v27, v53, type metadata accessor for SettingsView);
    v33 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v34 = swift_allocObject();
    v35 = sub_10001603C(v32, v34 + v33, type metadata accessor for SettingsView);
    __chkstk_darwin(v35);
    *(&v50 - 2) = v30;
    *(&v50 - 1) = v31;
    sub_100001DFC(&qword_100034CE0, &unk_10002A0C0);
    sub_100018F2C();
    sub_1000282FC();

    v36 = sub_10002802C();
    nullsub_1();
    sub_100027D6C();
    v37 = v57;
    v38 = &v5[*(v57 + 36)];
    *v38 = v36;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    sub_100016F44(v5, v10, &qword_100034CA0, &qword_10002A088);
    v20 = 0;
    v43 = v37;
  }

  else
  {
    v43 = v57;
  }

  (*(v58 + 56))(v10, v20, 1, v43);
  v44 = v55;
  v45 = v56;
  sub_100008798(v55, v56, &qword_100034CB8, &qword_10002A0A0);
  v46 = v59;
  sub_100008798(v10, v59, &qword_100034CA8, &qword_10002A090);
  v47 = v60;
  sub_100008798(v45, v60, &qword_100034CB8, &qword_10002A0A0);
  v48 = sub_100001DFC(&qword_100034CD0, &qword_10002A0B0);
  sub_100008798(v46, v47 + *(v48 + 48), &qword_100034CA8, &qword_10002A090);
  sub_100008800(v10, &qword_100034CA8, &qword_10002A090);
  sub_100008800(v44, &qword_100034CB8, &qword_10002A0A0);
  sub_100008800(v46, &qword_100034CA8, &qword_10002A090);
  return sub_100008800(v45, &qword_100034CB8, &qword_10002A0A0);
}

void sub_1000125C0()
{
  v1 = v0;
  v2 = sub_100027D5C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsView(0);
  v7 = v6 - 8;
  v43[0] = *(v6 - 8);
  v8 = *(v43[0] + 64);
  __chkstk_darwin(v6);
  v9 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  __chkstk_darwin(v12 - 8);
  v14 = v43 - v13;
  v15 = sub_100011CB8();
  if (!v16)
  {
LABEL_7:
    v20 = v0 + *(type metadata accessor for InviteMessageView(0) + 24);
    v21 = *v20;
    if (*v20)
    {
      v22 = *(v20 + 8);
      sub_100027D0C();
      v23 = v21;
      v24 = sub_100027CFC();
      sub_10001A708(*(v1 + 232));
      sub_100027CDC();

      v25 = sub_1000284CC();
      (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
      sub_1000166C8(v1, v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsView);
      sub_1000284AC();
      v26 = v23;
      v27 = sub_10002849C();
      v28 = (*(v43[0] + 80) + 32) & ~*(v43[0] + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = &protocol witness table for MainActor;
      sub_10001603C(v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for SettingsView);
      v30 = (v29 + ((v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v30 = v26;
      v30[1] = v22;
      sub_10000DA88(0, 0, v11, &unk_100029890, v29);
    }

    else
    {
      sub_100027CCC();
      v38 = sub_100027D4C();
      v39 = sub_1000284EC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "No presenter, return", v40, 2u);
      }

      (*(v3 + 8))(v5, v2);
    }

    return;
  }

  v17 = v0 + *(v7 + 28);
  if (v15 == *(v17 + 176) && v16 == *(v17 + 184))
  {
  }

  else
  {
    v19 = sub_10002863C();

    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_100027D0C();
  v31 = sub_100027CFC();
  sub_10001A708(*(v1 + 232));
  sub_100027CDC();

  v32 = objc_opt_self();
  v44 = 0;
  v33 = [v32 urlDestinationTo:1 error:&v44];
  v34 = v44;
  if (v33)
  {
    v35 = v33;
    sub_100027BCC();
    v36 = v34;

    v37 = 0;
  }

  else
  {
    v41 = v44;
    sub_100027B5C();

    swift_willThrow();

    v37 = 1;
  }

  v42 = sub_100027BEC();
  (*(*(v42 - 8) + 56))(v14, v37, 1, v42);
  sub_100012E0C(v14);
  sub_100008800(v14, &qword_1000348A8, &unk_10002A420);
}

__n128 sub_100012B60@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100027EEC();
  __chkstk_darwin(v6 - 8);
  sub_100027EDC();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100027ECC(v35);
  v36._countAndFlagsBits = a1;
  v36._object = a2;
  sub_100027EBC(v36);
  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  sub_100027ECC(v37);
  sub_10002825C();
  sub_100027EAC();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100027ECC(v38);
  sub_100027EFC();
  v7 = sub_10002814C();
  v9 = v8;
  LOBYTE(a1) = v10;
  sub_10002810C();
  v11 = sub_10002813C();
  v13 = v12;
  v15 = v14;

  sub_100018604(v7, v9, a1 & 1);

  sub_1000280AC();
  v16 = sub_10002811C();
  v18 = v17;
  LOBYTE(a1) = v19;
  sub_100018604(v11, v13, v15 & 1);

  sub_10002821C();
  v20 = sub_10002812C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100018604(v16, v18, a1 & 1);

  sub_10002833C();
  sub_100027E1C();
  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v24 & 1;
  *(a3 + 24) = v26;
  *(a3 + 96) = v32;
  *(a3 + 112) = v33;
  *(a3 + 128) = v34;
  *(a3 + 32) = v28;
  *(a3 + 48) = v29;
  result = v31;
  *(a3 + 64) = v30;
  *(a3 + 80) = v31;
  return result;
}

id sub_100012E0C(uint64_t a1)
{
  v2 = sub_100027D5C();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v50 - v7;
  v9 = __chkstk_darwin(v6);
  v54 = &v50 - v10;
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_100027BEC();
  v17 = __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v23 = v22;
  sub_100008798(a1, v15, &qword_1000348A8, &unk_10002A420);
  if ((*(v23 + 48))(v15, 1, v16) == 1)
  {
    sub_100008800(v15, &qword_1000348A8, &unk_10002A420);
    sub_100027CCC();
    v24 = sub_100027D4C();
    v25 = sub_1000284EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "invalid url", v26, 2u);
    }

    (*(v55 + 8))(v5, v56);
    return 0;
  }

  (*(v23 + 32))(v21, v15, v16);
  v53 = [objc_opt_self() defaultWorkspace];
  if (!v53)
  {
    sub_100027CCC();
    v36 = sub_100027D4C();
    v37 = sub_1000284EC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "no workspace", v38, 2u);
    }

    (*(v55 + 8))(v8, v56);
    (*(v23 + 8))(v21, v16);
    return 0;
  }

  sub_100027CCC();
  (*(v23 + 16))(v19, v21, v16);
  v27 = sub_100027D4C();
  v28 = sub_10002850C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v57 = v31;
    *v30 = 136315138;
    sub_100018568(&qword_1000348E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = sub_10002862C();
    v34 = v33;
    v52 = *(v23 + 8);
    v52(v19, v16);
    v35 = sub_100006B88(v32, v34, &v57);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Opening url %s", v30, 0xCu);
    sub_100007038(v31);

    v21 = v51;
  }

  else
  {

    v52 = *(v23 + 8);
    v52(v19, v16);
  }

  v40 = v56;
  v41 = *(v55 + 8);
  v41(v12, v56);
  sub_100027BBC(v42);
  v44 = v43;
  sub_1000079CC(&_swiftEmptyArrayStorage);
  isa = sub_10002836C().super.isa;

  v46 = [v53 openSensitiveURL:v44 withOptions:isa];

  sub_100027CCC();
  v47 = sub_100027D4C();
  v48 = sub_10002850C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109120;
    *(v49 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "Did open Family Settings: %{BOOL}d", v49, 8u);
  }

  v41(v54, v40);
  v52(v21, v16);
  return v46;
}

uint64_t sub_1000134D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v6[6] = swift_task_alloc();
  sub_1000284AC();
  v6[7] = sub_10002849C();
  v8 = sub_10002848C();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_1000135A4, v8, v7);
}

uint64_t sub_1000135A4()
{
  v1 = v0[3];
  type metadata accessor for SettingsView(0);
  sub_100027BDC();
  v2 = *(type metadata accessor for InviteMessageView(0) + 28);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100013690;
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];

  return sub_10000D1B8(v5, v6, v4, v1 + v2, 0x726F4D6E7261654CLL, 0xED00006B6E694C65);
}

uint64_t sub_100013690(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 88) = a1;

  sub_100008800(v3, &qword_1000348A8, &unk_10002A420);
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_1000137EC, v5, v4);
}

uint64_t sub_1000137EC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

double sub_100013868@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10002826C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002829C();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = sub_10002828C();

  (*(v3 + 8))(v5, v2);
  nullsub_1();
  nullsub_1();
  sub_10002832C();
  sub_100027D9C();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  result = *&v16;
  *(a1 + 40) = v16;
  return result;
}

__n128 sub_100013A4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001DFC(&qword_1000348E8, &qword_100029898);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_100027F1C();
  nullsub_1();
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = 0;
  v11 = sub_100001DFC(&qword_1000348F0, &qword_1000298A0);
  sub_100013C34(a1, a2, &v8[*(v11 + 44)]);
  nullsub_1();
  sub_10002831C();
  sub_100027E1C();
  sub_100016F44(v8, a3, &qword_1000348E8, &qword_100029898);
  v12 = a3 + *(sub_100001DFC(&qword_1000348F8, &qword_1000298A8) + 36);
  v13 = v16[6];
  *(v12 + 64) = v16[5];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[7];
  v14 = v16[2];
  *v12 = v16[1];
  *(v12 + 16) = v14;
  result = v16[4];
  *(v12 + 32) = v16[3];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_100013C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v4 = sub_100001DFC(&qword_100034C48, &qword_100029FF8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  nullsub_1();
  sub_10002831C();
  sub_100027D9C();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v31;
  v23 = v30;
  v34 = 1;
  v33 = v27;
  v32 = v29;
  v15 = sub_100027F1C();
  nullsub_1();
  *v9 = v15;
  *(v9 + 1) = v16;
  v9[16] = 0;
  v17 = &v9[*(sub_100001DFC(&qword_100034C50, &qword_10002A000) + 44)];
  v18 = sub_100027E9C();
  nullsub_1();
  *v17 = v18;
  *(v17 + 1) = v19;
  v17[16] = 0;
  v20 = sub_100001DFC(&qword_100034C58, &qword_10002A008);
  sub_100013E5C(v24, v25, &v17[*(v20 + 44)]);
  sub_100008798(v9, v7, &qword_100034C48, &qword_100029FF8);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  *(a3 + 48) = v23;
  *(a3 + 56) = v14;
  *(a3 + 64) = 257;
  v21 = sub_100001DFC(&qword_100034C60, &qword_10002A010);
  sub_100008798(v7, a3 + *(v21 + 64), &qword_100034C48, &qword_100029FF8);
  sub_100008800(v9, &qword_100034C48, &qword_100029FF8);
  return sub_100008800(v7, &qword_100034C48, &qword_100029FF8);
}

uint64_t sub_100013E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v44 = a3;
  v3 = sub_100027FDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001DFC(&qword_100034C68, &qword_10002A018);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = sub_100001DFC(&qword_100034C70, &qword_10002A020);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  sub_100027D8C();
  sub_100027FCC();
  sub_10001A1A8(&qword_100034C78, &qword_100034C68, &qword_10002A018, &protocol conformance descriptor for ProgressView<A, B>);
  sub_100018568(&qword_100034C80, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
  sub_1000281AC();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  *&v16[*(sub_100001DFC(&qword_100034C88, &qword_10002A028) + 36)] = 257;
  v17 = &v16[*(v12 + 44)];
  v18 = *(sub_100001DFC(&qword_100034C90, &qword_10002A030) + 28);
  v19 = enum case for ControlSize.small(_:);
  v20 = sub_100027D7C();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v45 = v41;
  v46 = v42;
  sub_100017000();

  v21 = sub_10002816C();
  v23 = v22;
  LOBYTE(v3) = v24;
  sub_1000280FC();
  v25 = sub_10002813C();
  v27 = v26;
  v29 = v28;

  sub_100018604(v21, v23, v3 & 1);

  v30 = [objc_opt_self() secondaryLabelColor];
  sub_1000281FC();
  v31 = sub_10002812C();
  v33 = v32;
  LOBYTE(v6) = v34;
  v36 = v35;

  sub_100018604(v25, v27, v29 & 1);

  v37 = v43;
  sub_100008798(v16, v43, &qword_100034C70, &qword_10002A020);
  v38 = v44;
  sub_100008798(v37, v44, &qword_100034C70, &qword_10002A020);
  v39 = v38 + *(sub_100001DFC(&qword_100034C98, &qword_10002A068) + 48);
  *v39 = v31;
  *(v39 + 8) = v33;
  *(v39 + 16) = v6 & 1;
  *(v39 + 24) = v36;
  sub_100016FF0(v31, v33, v6 & 1);

  sub_100008800(v16, &qword_100034C70, &qword_10002A020);
  sub_100018604(v31, v33, v6 & 1);

  return sub_100008800(v37, &qword_100034C70, &qword_10002A020);
}

uint64_t sub_10001432C()
{
  v1 = *v0;
  sub_100016FAC(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

uint64_t sub_10001437C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1000143B4()
{
  v1 = *(v0 + 56);
  sub_100016FF0(v1, *(v0 + 64), *(v0 + 72));

  return v1;
}

double sub_100014414@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100027F1C();
  nullsub_1();
  v7 = v6;
  v26 = 0;
  sub_1000145E8(v3, &v15);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v27 = v15;
  v28 = v16;
  v37[6] = v21;
  v37[7] = v22;
  v37[8] = v23;
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v37[5] = v20;
  v36 = v24;
  v38 = v24;
  v37[0] = v15;
  v37[1] = v16;
  sub_100008798(&v27, v14, &qword_100034900, &qword_1000298B0);
  sub_100008800(v37, &qword_100034900, &qword_1000298B0);
  *(&v25[3] + 7) = v30;
  *(&v25[2] + 7) = v29;
  *(&v25[6] + 7) = v33;
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(v25 + 7) = v27;
  *(&v25[9] + 7) = v36;
  *(&v25[1] + 7) = v28;
  v8 = v26;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v9 = v25[7];
  *(a2 + 113) = v25[6];
  *(a2 + 129) = v9;
  *(a2 + 145) = v25[8];
  *(a2 + 160) = *(&v25[8] + 15);
  v10 = v25[3];
  *(a2 + 49) = v25[2];
  *(a2 + 65) = v10;
  v11 = v25[5];
  *(a2 + 81) = v25[4];
  *(a2 + 97) = v11;
  result = *v25;
  v13 = v25[1];
  *(a2 + 17) = v25[0];
  *(a2 + 33) = v13;
  return result;
}

uint64_t sub_1000145E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_100027F1C();
  nullsub_1();
  v4 = v3;
  v65 = 0;
  v55 = sub_100027E9C();
  nullsub_1();
  v6 = v5;
  LOBYTE(v81) = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  if (!a1[3])
  {
    v19 = 0;
    v20 = a1[5];
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    KeyPath = 0;
    v22 = 0;
    v24 = 0;
    goto LABEL_6;
  }

  sub_100016FF0(*a1, a1[1], v9 & 1);

  sub_1000280FC();
  v53 = sub_10002813C();
  v11 = v10;
  v13 = v12;

  sub_1000280AC();
  v14 = sub_10002811C();
  v16 = v15;
  v54 = v17;
  v19 = v18;
  sub_100018604(v7, v8, v9 & 1);

  sub_100018604(v53, v11, v13 & 1);

  v9 = v54 & 1;
  sub_100016FF0(v14, v16, v54 & 1);

  v7 = v14;
  v8 = v16;
  v20 = a1[5];
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_3:

  v21 = sub_10002825C();
  v22 = sub_1000280FC();
  KeyPath = swift_getKeyPath();
  v24 = a1[6];
  v20 = swift_getKeyPath();
  swift_retain_n();

LABEL_6:
  sub_100016FAC(v7, v8, v9, v19);
  sub_1000187D0(v21, KeyPath, v22, v20, v24);
  sub_100018840(v7, v8, v9, v19);
  sub_100018884(v21, KeyPath, v22, v20, v24);
  sub_100018884(v21, KeyPath, v22, v20, v24);
  sub_100018840(v7, v8, v9, v19);
  *&v92 = v7;
  *(&v92 + 1) = v8;
  *&v93 = v9;
  *(&v93 + 1) = v19;
  *&v94 = v21;
  *(&v94 + 1) = KeyPath;
  *&v95 = v22;
  *(&v95 + 1) = v20;
  v96 = v24;
  *&v66 = v7;
  *(&v66 + 1) = v8;
  *&v67 = v9;
  *(&v67 + 1) = v19;
  *&v68 = v21;
  *(&v68 + 1) = KeyPath;
  *&v69 = v22;
  *(&v69 + 1) = v20;
  *&v70 = v24;
  sub_100008798(&v92, &v83, &qword_100034C38, &qword_100029FB8);
  sub_100008800(&v66, &qword_100034C38, &qword_100029FB8);
  *&v74[23] = v93;
  *&v74[39] = v94;
  *&v74[55] = v95;
  *&v74[71] = v96;
  *&v74[7] = v92;
  v25 = v81;
  sub_1000280FC();
  v26 = sub_10002813C();
  v28 = v27;
  v30 = v29;

  v31 = [objc_opt_self() secondaryLabelColor];
  sub_1000281FC();
  v32 = sub_10002812C();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_100018604(v26, v28, v30 & 1);

  *&v81 = v55;
  *(&v81 + 1) = v6;
  v82[0] = v25;
  *&v82[1] = *v74;
  *&v82[49] = *&v74[48];
  *&v82[33] = *&v74[32];
  *&v82[17] = *&v74[16];
  *&v82[64] = *&v74[63];
  v91 = v36 & 1;
  v58 = v81;
  v59 = *v82;
  v62 = *&v82[48];
  v63 = *&v74[63];
  v60 = *&v82[16];
  v61 = *&v82[32];
  sub_100008798(&v81, &v83, &qword_100034C40, &qword_100029FC0);
  sub_100016FF0(v32, v34, v36 & 1);

  sub_100018604(v32, v34, v36 & 1);

  v83 = v55;
  v84 = v6;
  v85 = v25;
  v87 = *&v74[16];
  v88 = *&v74[32];
  v89[0] = *&v74[48];
  *(v89 + 15) = *&v74[63];
  v86 = *v74;
  sub_100008800(&v83, &qword_100034C40, &qword_100029FC0);
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  v66 = v58;
  v67 = v59;
  *v74 = v58;
  *&v74[16] = v59;
  *&v72 = v32;
  *(&v72 + 1) = v34;
  LOBYTE(v73) = v36 & 1;
  DWORD1(v73) = *(&v81 + 3);
  *(&v73 + 1) = v81;
  *(&v73 + 1) = v38;
  *&v74[64] = v62;
  v75 = v63;
  *&v74[32] = v60;
  *&v74[48] = v61;
  v76 = v32;
  v77 = v34;
  v78 = v36 & 1;
  *&v79[3] = *(&v81 + 3);
  *v79 = v81;
  v80 = v38;
  sub_100008798(&v66, &v83, &qword_100034C28, &qword_100029FA8);
  sub_100008800(v74, &qword_100034C28, &qword_100029FA8);
  *&v64[71] = v70;
  *&v64[87] = v71;
  *&v64[103] = v72;
  *&v64[119] = v73;
  *&v64[7] = v66;
  *&v64[23] = v67;
  *&v64[39] = v68;
  *&v64[55] = v69;
  v39 = v65;
  *&v81 = v56;
  *(&v81 + 1) = v4;
  v82[0] = v65;
  *&v82[97] = *&v64[96];
  v41 = *&v64[80];
  v40 = *&v64[96];
  *&v82[81] = *&v64[80];
  v42 = *&v64[112];
  *&v82[113] = *&v64[112];
  *&v82[17] = *&v64[16];
  v43 = *&v64[16];
  v44 = *&v64[32];
  *&v82[33] = *&v64[32];
  *&v82[49] = *&v64[48];
  v45 = *&v64[48];
  v46 = *&v64[64];
  *&v82[65] = *&v64[64];
  v47 = *v64;
  *&v82[1] = *v64;
  v48 = *&v82[96];
  *(a2 + 96) = *&v82[80];
  *(a2 + 112) = v48;
  *(a2 + 128) = *&v82[112];
  v49 = *&v82[32];
  *(a2 + 32) = *&v82[16];
  *(a2 + 48) = v49;
  v50 = *&v82[64];
  *(a2 + 64) = *&v82[48];
  *(a2 + 80) = v50;
  v51 = *v82;
  *a2 = v81;
  *(a2 + 16) = v51;
  v84 = v4;
  v89[2] = v41;
  v89[3] = v40;
  *v90 = v42;
  v87 = v43;
  v88 = v44;
  v89[0] = v45;
  *&v82[128] = *&v64[127];
  *(a2 + 144) = *&v64[127];
  v83 = v56;
  v85 = v39;
  *&v90[15] = *&v64[127];
  v89[1] = v46;
  v86 = v47;
  sub_100008798(&v81, &v58, &qword_100034C30, &qword_100029FB0);
  return sub_100008800(&v83, &qword_100034C30, &qword_100029FB0);
}

uint64_t sub_100014C70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  return result;
}

uint64_t sub_100014CD0(uint64_t a1)
{
  v1 = 144;
  if (*(a1 + 233))
  {
    v1 = 128;
  }

  v2 = *(a1 + v1);

  return v2;
}

uint64_t sub_100014D24(uint64_t a1)
{
  if (a1 == 1)
  {
    return sub_10002820C();
  }

  if (a1)
  {
    return sub_10002821C();
  }

  return sub_10002822C();
}

double sub_100014D40@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() opaqueSeparatorColor];
  v3 = sub_1000281FC();
  nullsub_1();
  sub_10002831C();
  sub_100027D9C();
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_100014DE8(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_100014E34(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 - 1;
  if (v1 > 3)
  {
    v2 = 3;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= v2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = 2 * v2 + 3;
  if (v1 == v3 >> 1)
  {
  }

  else
  {
    sub_100016240(result, result + 32, 0, v3);
  }
}

void sub_100014E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 5)
  {
    sub_100016240(a1, a1 + 32, 4, (2 * v1) | 1);
  }
}

uint64_t sub_100014EA8(uint64_t a1)
{
  v2 = sub_100027FFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DFC(&qword_100034908, &qword_1000298B8);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = sub_100027E8C();
  nullsub_1();
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = 0;
  v11 = sub_100001DFC(&qword_100034910, &qword_1000298C0);
  sub_100015074(a1, &v8[*(v11 + 44)]);
  sub_100027FEC();
  sub_10001A1A8(&qword_100034918, &qword_100034908, &qword_1000298B8, &protocol conformance descriptor for HStack<A>);
  sub_1000281EC();
  (*(v3 + 8))(v5, v2);
  return sub_100008800(v8, &qword_100034908, &qword_1000298B8);
}

uint64_t sub_100015074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_100001DFC(&qword_100034C00, &qword_100029F88);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = sub_100027F1C();
  nullsub_1();
  *v14 = v15;
  *(v14 + 1) = v16;
  v14[16] = 0;
  sub_100001DFC(&qword_100034C08, &qword_100029F90);
  sub_100014E34(a1);

  *(swift_allocObject() + 16) = a1;
  sub_1000186D0();

  sub_10002830C();
  v17 = sub_100027F1C();
  nullsub_1();
  *v12 = v17;
  *(v12 + 1) = v18;
  v12[16] = 0;
  v19 = *(a1 + 16);
  if (v19 >= 5)
  {
    sub_100016240(a1, a1 + 32, 4, (2 * v19) | 1);
  }

  *(swift_allocObject() + 16) = a1;

  sub_10002830C();
  sub_100008798(v14, v9, &qword_100034C00, &qword_100029F88);
  sub_100008798(v12, v6, &qword_100034C00, &qword_100029F88);
  v20 = v24;
  sub_100008798(v9, v24, &qword_100034C00, &qword_100029F88);
  v21 = sub_100001DFC(&qword_100034C18, &qword_100029F98);
  sub_100008798(v6, v20 + *(v21 + 48), &qword_100034C00, &qword_100029F88);
  sub_100008800(v12, &qword_100034C00, &qword_100029F88);
  sub_100008800(v14, &qword_100034C00, &qword_100029F88);
  sub_100008800(v6, &qword_100034C00, &qword_100029F88);
  return sub_100008800(v9, &qword_100034C00, &qword_100029F88);
}

uint64_t sub_100015384()
{
  v1 = sub_100027FFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001DFC(&qword_100034908, &qword_1000298B8);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = *v0;
  v9 = sub_100027E8C();
  nullsub_1();
  *v7 = v9;
  *(v7 + 1) = v10;
  v7[16] = 0;
  v11 = sub_100001DFC(&qword_100034910, &qword_1000298C0);
  sub_100015074(v8, &v7[*(v11 + 44)]);
  sub_100027FEC();
  sub_10001A1A8(&qword_100034918, &qword_100034908, &qword_1000298B8, &protocol conformance descriptor for HStack<A>);
  sub_1000281EC();
  (*(v2 + 8))(v4, v1);
  return sub_100008800(v7, &qword_100034908, &qword_1000298B8);
}

uint64_t sub_100015550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a1;
}

uint64_t sub_1000155A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_1000155F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v7 = sub_100001DFC(&qword_100034920, &qword_1000298C8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = sub_100027ABC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;

  sub_100027AAC();
  sub_100017000();
  v15 = sub_10002855C();
  v17 = v16;
  (*(v12 + 8))(v14, v11);

  v27 = v15;
  v28 = v17;
  v23 = a1;
  v24 = a2;
  v25 = v20;
  v26 = v21;
  sub_100001DFC(&qword_100034930, &qword_1000298D0);
  sub_1000170BC();
  sub_1000282AC();

  sub_10001A1A8(&qword_100034950, &qword_100034920, &qword_1000298C8, &protocol conformance descriptor for Label<A, B>);
  sub_100017174();
  sub_1000281BC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100015890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000280CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[2] = a1;
  v23[3] = a2;
  sub_100017000();

  v10 = sub_10002816C();
  v12 = v11;
  v14 = v13;
  sub_10002810C();
  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v6);
  sub_1000280EC();

  (*(v7 + 8))(v9, v6);
  v15 = sub_10002813C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_100018604(v10, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

uint64_t sub_100015A54@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_100027E9C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_100001DFC(&qword_100034960, &qword_1000298E0);
  return sub_100015AAC((a2 + *(v3 + 44)));
}

uint64_t sub_100015AAC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_100027FAC();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = sub_100027F8C();
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  sub_100027F9C();
  sub_100027FBC();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(sub_100001DFC(&qword_100034BF8, &qword_100029F50) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

void sub_100015D3C(uint64_t a1@<X8>)
{
  v2 = sub_100027CAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for InviteMessageDetails(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100021640(v8);
  sub_10001603C(v8, a1, type metadata accessor for InviteMessageDetails);
  v9 = type metadata accessor for InviteMessageView(0);
  v10 = a1 + v9[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  v13 = type metadata accessor for FamilyFetcher();
  v14 = sub_10001EFD0();
  v12[3] = v13;
  v12[4] = &off_1000318A8;
  *v12 = v14;
  v15 = a1 + v9[8];
  v22 = 0;
  sub_1000282BC();
  v16 = v24;
  *v15 = v23;
  *(v15 + 8) = v16;
  v17 = a1 + v9[9];
  v22 = 0;
  sub_1000282BC();
  v18 = v24;
  *v17 = v23;
  *(v17 + 8) = v18;
  (*(v3 + 104))(v5, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v2);
  sub_100027C9C();
  (*(v3 + 8))(v5, v2);
  v19 = v9[10];
  nullsub_1();
  *(a1 + v19) = v20;
}

uint64_t sub_100015F84(uint64_t a1)
{
  v2 = sub_1000185B0();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_100015FD0(uint64_t a1)
{
  v2 = sub_1000185B0();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_10001603C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000160A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027E4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000160FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027E6C();
  *a1 = result;
  return result;
}

uint64_t sub_100016178(uint64_t a1)
{
  v2 = sub_100027D7C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100027E3C();
}

void sub_100016240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100001DFC(&qword_100034C20, &qword_100029FA0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100016318(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10001640C;

  return v5(v2 + 32);
}

uint64_t sub_10001640C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100016520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100017000();

  v4 = sub_10002816C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 232);
  sub_10001697C();
  if (sub_1000283AC())
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *(a1 + 160);
  }

  v28 = v12;
  v29 = v10;
  v27 = v13;
  v14 = v8;
  v15 = v6;
  v16 = v4;
  if (v11 == 1)
  {
    v17 = sub_10002820C();
  }

  else if (v11)
  {
    v17 = sub_10002821C();
  }

  else
  {
    v17 = sub_10002822C();
  }

  v18 = v17;

  v19 = sub_10002816C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_10001A0F4(a1, type metadata accessor for InviteMessageView);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = v28;
  *(a2 + 40) = v27;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23 & 1;
  *(a2 + 80) = v25;
  return result;
}

uint64_t sub_1000166C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100016788()
{
  result = qword_1000347B8;
  if (!qword_1000347B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000347B8);
  }

  return result;
}

uint64_t sub_1000167D8()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100006F44;

  return sub_100010FE4(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_10001690C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100016918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001697C()
{
  result = qword_1000348D0;
  if (!qword_1000348D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000348D0);
  }

  return result;
}

uint64_t sub_1000169D0()
{
  v19 = type metadata accessor for SettingsView(0);
  v22 = *(*(v19 - 8) + 80);
  v20 = *(*(v19 - 8) + 64);
  swift_unknownObjectRelease();
  v23 = v0;
  v21 = (v22 + 32) & ~v22;
  v1 = v0 + v21;

  v2 = type metadata accessor for InviteMessageDetails(0);
  v3 = v2[24];
  v4 = sub_100027BEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v7 = v2[25];
  if (!v6(v1 + v7, 1, v4))
  {
    (*(v5 + 8))(v1 + v7, v4);
  }

  v8 = v2[26];
  v9 = sub_100027C1C();
  v18 = *(v9 - 8);
  v10 = *(v18 + 48);
  if (!v10(v1 + v8, 1, v9))
  {
    (*(v18 + 8))(v1 + v8, v9);
  }

  v11 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v1 + *(v11 + 28)));

  v12 = v1 + *(v19 + 20);

  v13 = v2[24];
  if (!v6(v12 + v13, 1, v4))
  {
    (*(v5 + 8))(v12 + v13, v4);
  }

  v14 = v2[25];
  if (!v6(v12 + v14, 1, v4))
  {
    (*(v5 + 8))(v12 + v14, v4);
  }

  v15 = v2[26];
  if (!v10(v12 + v15, 1, v9))
  {
    (*(v18 + 8))(v12 + v15, v9);
  }

  v16 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v23, v16 + 16, v22 | 7);
}

uint64_t sub_100016E28(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008AE0;

  return sub_1000134D0(a1, v9, v10, v1 + v5, v7, v8);
}

uint64_t sub_100016F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100016FAC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100016FF0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100016FF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100017000()
{
  result = qword_100034928;
  if (!qword_100034928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034928);
  }

  return result;
}

uint64_t sub_10001705C@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_10002827C();
  v3 = sub_1000280DC();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

unint64_t sub_1000170BC()
{
  result = qword_100034938;
  if (!qword_100034938)
  {
    sub_100008068(&qword_100034930, &qword_1000298D0);
    sub_10001A1A8(&qword_100034940, &qword_100034948, &qword_1000298D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034938);
  }

  return result;
}

unint64_t sub_100017174()
{
  result = qword_100034958;
  if (!qword_100034958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034958);
  }

  return result;
}

unint64_t sub_1000172E4()
{
  result = qword_100034968;
  if (!qword_100034968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034968);
  }

  return result;
}

uint64_t sub_100017368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteMessageDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001743C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InviteMessageDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1000174F8(uint64_t a1)
{
  type metadata accessor for InviteMessageDetails(319);
  if (v1 <= 0x3F)
  {
    sub_1000176E0(319, &qword_1000349C8, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100017618(319);
      if (v3 <= 0x3F)
      {
        sub_10001767C();
        if (v4 <= 0x3F)
        {
          sub_1000176E0(319, &unk_1000349E8, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100017618(uint64_t a1)
{
  if (!qword_1000349D0)
  {
    sub_100008068(&qword_1000349D8, &qword_100029CA8);
    v1 = sub_10002853C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000349D0);
    }
  }
}

unint64_t sub_10001767C()
{
  result = qword_1000349E0;
  if (!qword_1000349E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000349E0);
  }

  return result;
}

void sub_1000176E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100017744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageView(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000177C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageView(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100017834(uint64_t a1)
{
  result = type metadata accessor for InviteMessageView(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000178B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteMessageView(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for InviteMessageDetails(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000179B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for InviteMessageView(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for InviteMessageDetails(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100017AB4(uint64_t a1)
{
  result = type metadata accessor for InviteMessageView(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InviteMessageDetails(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100017B48(uint64_t a1, int a2)
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

uint64_t sub_100017B90(uint64_t result, int a2, int a3)
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

uint64_t sub_100017BE8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100017C00(uint64_t a1, uint64_t a2)
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

uint64_t sub_100017C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100017C6C(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

__n128 sub_100017CF0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100017CFC(uint64_t a1, int a2)
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

uint64_t sub_100017D44(uint64_t result, int a2, int a3)
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

unint64_t sub_100017DB8()
{
  result = qword_100034B30;
  if (!qword_100034B30)
  {
    sub_100008068(&qword_100034898, &qword_100029810);
    sub_100017E70();
    sub_10001A1A8(&qword_100034B60, &qword_100034B68, &qword_100029F10, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B30);
  }

  return result;
}

unint64_t sub_100017E70()
{
  result = qword_100034B38;
  if (!qword_100034B38)
  {
    sub_100008068(&qword_100034880, &qword_1000297F8);
    sub_100017EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B38);
  }

  return result;
}

unint64_t sub_100017EFC()
{
  result = qword_100034B40;
  if (!qword_100034B40)
  {
    sub_100008068(&qword_100034878, &qword_1000297F0);
    sub_100017F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B40);
  }

  return result;
}

unint64_t sub_100017F88()
{
  result = qword_100034B48;
  if (!qword_100034B48)
  {
    sub_100008068(&qword_100034870, &qword_1000297E8);
    sub_100018014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B48);
  }

  return result;
}

unint64_t sub_100018014()
{
  result = qword_100034B50;
  if (!qword_100034B50)
  {
    sub_100008068(&qword_100034868, &qword_1000297E0);
    sub_10001A1A8(&qword_100034B58, &qword_100034860, &qword_1000297D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B50);
  }

  return result;
}

unint64_t sub_100018158()
{
  result = qword_100034B90;
  if (!qword_100034B90)
  {
    sub_100008068(&qword_100034B98, &qword_100029F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B90);
  }

  return result;
}

unint64_t sub_1000181E0()
{
  result = qword_100034BA0;
  if (!qword_100034BA0)
  {
    sub_100008068(&qword_1000348F8, &qword_1000298A8);
    sub_10001A1A8(&qword_100034BA8, &qword_1000348E8, &qword_100029898, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BA0);
  }

  return result;
}

unint64_t sub_1000182E0()
{
  result = qword_100034BC0;
  if (!qword_100034BC0)
  {
    sub_100008068(&qword_100034BC8, &qword_100029F38);
    sub_10001A1A8(&qword_100034BD0, &qword_100034BD8, &qword_100029F40, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BC0);
  }

  return result;
}

uint64_t sub_100018398()
{
  sub_100008068(&qword_100034908, &qword_1000298B8);
  sub_10001A1A8(&qword_100034918, &qword_100034908, &qword_1000298B8, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100018430()
{
  sub_100008068(&qword_100034920, &qword_1000298C8);
  sub_10001A1A8(&qword_100034950, &qword_100034920, &qword_1000298C8, &protocol conformance descriptor for Label<A, B>);
  sub_100017174();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100018568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000185B0()
{
  result = qword_100034BF0;
  if (!qword_100034BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BF0);
  }

  return result;
}

uint64_t sub_100018604(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100018614()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001864C(unint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100014E34(*(v2 + 16));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > a1)
  {
    v6 = (v5 + 32 * a1);
    v8 = v6[4];
    v7 = v6[5];
    v10 = v6[6];
    v9 = v6[7];

    *a2 = v8;
    a2[1] = v7;
    a2[2] = v10;
    a2[3] = v9;
    return;
  }

  __break(1u);
}

unint64_t sub_1000186D0()
{
  result = qword_100034C10;
  if (!qword_100034C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034C10);
  }

  return result;
}

void sub_100018724(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6 < 5)
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100016240(v5, v5 + 32, 4, (2 * v6) | 1);
    v8 = v7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8[2] > a1)
  {
    v9 = &v8[4 * a1];
    v11 = v9[4];
    v10 = v9[5];
    v13 = v9[6];
    v12 = v9[7];

    *a2 = v11;
    a2[1] = v10;
    a2[2] = v13;
    a2[3] = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_1000187D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100018840(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100018604(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100018884(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000188F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008AE0;

  return sub_100016318(a1, v4);
}

uint64_t sub_1000189E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006F44;

  return sub_100016318(a1, v4);
}

uint64_t sub_100018A98()
{
  v18 = type metadata accessor for SettingsView(0);
  v21 = *(*(v18 - 8) + 80);
  v19 = *(*(v18 - 8) + 64);
  v20 = (v21 + 16) & ~v21;
  v22 = v0;
  v1 = v0 + v20;

  v2 = type metadata accessor for InviteMessageDetails(0);
  v3 = v2[24];
  v4 = sub_100027BEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v7 = v2[25];
  if (!v6(v1 + v7, 1, v4))
  {
    (*(v5 + 8))(v1 + v7, v4);
  }

  v8 = v2[26];
  v9 = sub_100027C1C();
  v17 = *(v9 - 8);
  v10 = *(v17 + 48);
  if (!v10(v1 + v8, 1, v9))
  {
    (*(v17 + 8))(v1 + v8, v9);
  }

  v11 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v1 + *(v11 + 28)));

  v12 = v1 + *(v18 + 20);

  v13 = v2[24];
  if (!v6(v12 + v13, 1, v4))
  {
    (*(v5 + 8))(v12 + v13, v4);
  }

  v14 = v2[25];
  if (!v6(v12 + v14, 1, v4))
  {
    (*(v5 + 8))(v12 + v14, v4);
  }

  v15 = v2[26];
  if (!v10(v12 + v15, 1, v9))
  {
    (*(v17 + 8))(v12 + v15, v9);
  }

  return _swift_deallocObject(v22, v20 + v19, v21 | 7);
}

unint64_t sub_100018F2C()
{
  result = qword_100034CE8;
  if (!qword_100034CE8)
  {
    sub_100008068(&qword_100034CE0, &unk_10002A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CE8);
  }

  return result;
}

uint64_t sub_100018FCC()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(v1 + 64);
  v4 = v0 + v3;

  v5 = type metadata accessor for InviteMessageDetails(0);
  v6 = v5[24];
  v7 = sub_100027BEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[25];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[26];
  v12 = sub_100027C1C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v4 + *(v14 + 28)));

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_1000192B8(uint64_t a1)
{
  type metadata accessor for InviteActionsView(0);
  sub_10002835C();
  sub_10002834C();

  sub_100027DAC();
}

unint64_t sub_100019378()
{
  result = qword_100034D40;
  if (!qword_100034D40)
  {
    sub_100008068(&qword_100034D28, &qword_10002A120);
    sub_100019430();
    sub_10001A1A8(&qword_100034D60, &qword_100034D30, &qword_10002A128, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D40);
  }

  return result;
}

unint64_t sub_100019430()
{
  result = qword_100034D48;
  if (!qword_100034D48)
  {
    sub_100008068(&qword_100034D20, &qword_10002A118);
    sub_1000194E8();
    sub_10001A1A8(&qword_100034B60, &qword_100034B68, &qword_100029F10, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D48);
  }

  return result;
}

unint64_t sub_1000194E8()
{
  result = qword_100034D50;
  if (!qword_100034D50)
  {
    sub_100008068(&qword_100034D18, &qword_10002A110);
    sub_10001A1A8(&qword_100034D58, &qword_100034D10, &qword_10002A108, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D50);
  }

  return result;
}

uint64_t sub_1000195B8@<X0>(uint64_t a1@<X8>)
{
  sub_100017000();

  v2 = sub_10002816C();
  v4 = v3;
  v6 = v5;
  sub_10002807C();
  v7 = sub_10002813C();
  v9 = v8;
  v11 = v10;

  sub_100018604(v2, v4, v6 & 1);

  sub_10002823C();
  v12 = sub_10002812C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_100018604(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100019714()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v17 = *(v1 + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = type metadata accessor for InviteMessageDetails(0);
  v6 = v5[24];
  v7 = sub_100027BEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[25];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[26];
  v12 = sub_100027C1C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v4 + *(v15 + 28)));

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_100019A04()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008AE0;

  return sub_10000CDF8(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_100019B3C()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100027BEC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008AE0;

  return sub_100010368(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_100019C94()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v1 + 80);
  v18 = *(v1 + 64);
  v3 = sub_100027BEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v19 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);

  v7 = type metadata accessor for InviteMessageDetails(0);
  v8 = v7[24];
  v9 = *(v4 + 48);
  if (!v9(v6 + v8, 1, v3))
  {
    (*(v4 + 8))(v6 + v8, v3);
  }

  v10 = v7[25];
  if (!v9(v6 + v10, 1, v3))
  {
    (*(v4 + 8))(v6 + v10, v3);
  }

  v11 = v7[26];
  v12 = sub_100027C1C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v2 | v5;
  v15 = (((v2 + 32) & ~v2) + v18 + v5) & ~v5;
  v16 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v6 + *(v16 + 28)));

  (*(v4 + 8))(v0 + v15, v3);

  return _swift_deallocObject(v0, v15 + v19, v14 | 7);
}

uint64_t sub_100019FC8()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100027BEC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008AE0;

  return sub_10000E210(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10001A0F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001A154()
{
  result = qword_100034DE0;
  if (!qword_100034DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DE0);
  }

  return result;
}

uint64_t sub_10001A1A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008068(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001A1F0()
{
  result = qword_100034E08;
  if (!qword_100034E08)
  {
    sub_100008068(&qword_100034DA8, &qword_10002A1A0);
    sub_10001A2AC();
    sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView, &unk_100029938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E08);
  }

  return result;
}

unint64_t sub_10001A2AC()
{
  result = qword_100034E10;
  if (!qword_100034E10)
  {
    sub_100008068(&qword_100034E18, &qword_10002A1E8);
    sub_10001A338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E10);
  }

  return result;
}

unint64_t sub_10001A338()
{
  result = qword_100034E20;
  if (!qword_100034E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E20);
  }

  return result;
}

unint64_t sub_10001A38C()
{
  result = qword_100034E30;
  if (!qword_100034E30)
  {
    sub_100008068(&qword_100034D90, &qword_10002A188);
    sub_10001A410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E30);
  }

  return result;
}

unint64_t sub_10001A410()
{
  result = qword_100034E38;
  if (!qword_100034E38)
  {
    sub_100008068(&qword_100034E00, &qword_10002A1E0);
    sub_10001A49C();
    sub_10001A2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E38);
  }

  return result;
}

unint64_t sub_10001A49C()
{
  result = qword_100034E40;
  if (!qword_100034E40)
  {
    sub_100008068(&qword_100034D88, &qword_10002A180);
    sub_10001A528();
    sub_10001A608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E40);
  }

  return result;
}

unint64_t sub_10001A528()
{
  result = qword_100034E48;
  if (!qword_100034E48)
  {
    sub_100008068(&qword_100034E50, &qword_10002A1F0);
    sub_10001A5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E48);
  }

  return result;
}

unint64_t sub_10001A5B4()
{
  result = qword_100034E58;
  if (!qword_100034E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E58);
  }

  return result;
}

unint64_t sub_10001A608()
{
  result = qword_100034E60;
  if (!qword_100034E60)
  {
    sub_100008068(&qword_100034D70, &qword_10002A168);
    sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView, &unk_100029938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E60);
  }

  return result;
}

uint64_t sub_10001A708(unsigned __int8 a1)
{
  v1 = 0x6465747065636341;
  v2 = 0x676E69646E6550;
  v3 = 0x64657269707845;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E55;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x64656E696C636544;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001A7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64656E696C636544;
    }

    else
    {
      v3 = 0x6465747065636341;
    }

    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
    if (a1 == 2)
    {
      v3 = 0x676E69646E6550;
    }

    else if (a1 == 3)
    {
      v3 = 0x64657269707845;
    }

    else
    {
      v3 = 0x6E776F6E6B6E55;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x64656E696C636544;
    }

    else
    {
      v7 = 0x6465747065636341;
    }

    v6 = 0xE800000000000000;
    if (v3 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 0x64657269707845;
    if (a2 != 3)
    {
      v4 = 0x6E776F6E6B6E55;
    }

    if (a2 == 2)
    {
      v5 = 0x676E69646E6550;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE700000000000000;
    if (v3 != v5)
    {
      goto LABEL_25;
    }
  }

  if (v2 != v6)
  {
LABEL_25:
    v8 = sub_10002863C();
    goto LABEL_26;
  }

  v8 = 1;
LABEL_26:

  return v8 & 1;
}

Swift::Int sub_10001A934()
{
  sub_10002867C();
  sub_10002841C();

  return sub_10002868C();
}

uint64_t sub_10001AA18(uint64_t a1)
{
  sub_10002841C();
}

Swift::Int sub_10001AAE8(uint64_t a1)
{
  sub_10002867C();
  sub_10002841C();

  return sub_10002868C();
}

unint64_t sub_10001ABC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001FC38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001ABF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6465747065636341;
  v5 = 0x676E69646E6550;
  v6 = 0x64657269707845;
  if (v2 != 3)
  {
    v6 = 0x6E776F6E6B6E55;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x64656E696C636544;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001ACC0()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[20] = v2;
  [v2 setCachePolicy:v1];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001AE14;
  v3 = swift_continuation_init();
  v0[17] = sub_100001DFC(&qword_100034E78, &qword_10002A238);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001B004;
  v0[13] = &unk_100031830;
  v0[14] = v3;
  [v2 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001AE14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10001AF88;
  }

  else
  {
    v2 = sub_10001AF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001AF24()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10001AF88(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_10001B004(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100008754((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10001B0DC()
{
  v4 = (*(*v0 + 80) + **(*v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001B1F0;

  return v4(1);
}

uint64_t sub_10001B1F0(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_10001B2F0, 0, 0);
}

uint64_t sub_10001B2F0()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) pendingMembers]) != 0)
  {
    v3 = v2;
    sub_100007FAC(0, &qword_100034E80, FAFamilyMember_ptr);
    v4 = sub_10002845C();
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10001B3B8(uint64_t result)
{
  if (result)
  {
    return sub_10002851C() & 1;
  }

  return result;
}

uint64_t sub_10001B3E8(void *a1, char *a2, __objc2_class_ro *a3)
{
  v6 = sub_100027D5C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v10 = a1;
  v11 = &Family_MSMessagesAppViewController__metaData;
  v12 = [v10 members];
  sub_100007FAC(0, &qword_100034E80, FAFamilyMember_ptr);
  v13 = sub_10002845C();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_22:

    return 0;
  }

LABEL_25:
  v27 = sub_1000285DC();

  if (!v27)
  {
    goto LABEL_22;
  }

LABEL_4:
  v15 = [v10 *(v11 + 1128)];
  v16 = sub_10002845C();

  v33 = v7;
  v34 = v6;
  v31 = a2;
  v32 = a3;
  if (v16 >> 62)
  {
    v17 = sub_1000285DC();
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_28:

    goto LABEL_29;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_6:
  v11 = 0;
  v6 = v16 & 0xC000000000000001;
  v7 = v16 & 0xFFFFFFFFFFFFFF8;
  a3 = &Family_MSMessagesAppViewController__metaData;
  while (1)
  {
    if (v6)
    {
      v18 = sub_1000285AC();
    }

    else
    {
      if (v11 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v18 = *(v16 + 8 * v11 + 32);
    }

    v19 = v18;
    a2 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ([v18 isOrganizer])
    {
      break;
    }

    ++v11;
    if (a2 == v17)
    {
      goto LABEL_28;
    }
  }

  v21 = [v19 appleID];
  if (!v21)
  {

    goto LABEL_29;
  }

  v22 = v21;
  v23 = sub_1000283EC();
  v25 = v24;

  if (v23 == v31 && v25 == v32)
  {

    return 0;
  }

  v26 = sub_10002863C();

  if (v26)
  {
    goto LABEL_22;
  }

LABEL_29:
  sub_100027CCC();
  v28 = sub_100027D4C();
  v29 = sub_10002850C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "orgranizerAppleID and senderHandle do not match, receiver is already in another family", v30, 2u);
  }

  (*(v33 + 8))(v9, v34);
  return 1;
}

void sub_10001B764(void *a1, unint64_t a2)
{
  v253 = a1;
  v3 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  __chkstk_darwin(v3 - 8);
  v238 = &v221 - v4;
  v5 = sub_100027C1C();
  v239 = *(v5 - 8);
  v240 = v5;
  __chkstk_darwin(v5);
  v236 = &v221 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for InviteMessageDetails(0);
  v7 = __chkstk_darwin(v237);
  v247 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v228 = &v221 - v10;
  v11 = __chkstk_darwin(v9);
  v226 = &v221 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v221 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v221 - v17;
  __chkstk_darwin(v16);
  v250 = &v221 - v19;
  v252 = sub_100027D5C();
  v20 = *(v252 - 8);
  v21 = __chkstk_darwin(v252);
  v23 = &v221 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v221 - v25;
  v27 = __chkstk_darwin(v24);
  v28 = __chkstk_darwin(v27);
  v229 = &v221 - v29;
  v30 = __chkstk_darwin(v28);
  v227 = &v221 - v31;
  v32 = __chkstk_darwin(v30);
  v33 = __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  v38 = &v221 - v37;
  v248 = v26;
  v249 = v23;
  v243 = v34;
  if (!a2)
  {
    goto LABEL_118;
  }

  v244 = v36;
  *&v245 = v18;
  v233 = v35;
  v234 = v15;
  v39 = [a2 members];
  v40 = sub_100007FAC(0, &qword_100034E80, FAFamilyMember_ptr);
  v41 = sub_10002845C();

  v42 = (*(*v241 + 104))(a2, v253[32], v253[33]);
  v251 = a2;
  if ((v42 & 1) == 0)
  {
    if (v41 >> 62)
    {
      goto LABEL_113;
    }

    v242 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v242)
    {
      goto LABEL_5;
    }
  }

LABEL_56:

  v74 = [a2 pendingMembersWithAllStatues];
  v34 = v243;
  if (!v74)
  {
LABEL_118:
    v154 = v34;
    sub_100027CCC();
    v155 = a2;
    v156 = sub_100027D4C();
    v157 = sub_10002850C();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = v20;
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v254 = v160;
      *v159 = 136315138;
      if (a2)
      {
        v161 = [v155 invites];
        if (v161)
        {
          v162 = v161;
          sub_100007FAC(0, &qword_100034E88, FAFamilyInvite_ptr);
          sub_10002845C();
        }
      }

      sub_100007FAC(0, &qword_100034E88, FAFamilyInvite_ptr);
      v163 = sub_10002846C();
      v165 = v164;

      v166 = sub_100006B88(v163, v165, &v254);

      *(v159 + 4) = v166;
      _os_log_impl(&_mh_execute_header, v156, v157, "invites %s", v159, 0xCu);
      sub_100007038(v160);

      v20 = v158;
      v251 = *(v158 + 8);
      v251(v243, v252);
      v26 = v248;
      v23 = v249;
      if (!a2)
      {
        goto LABEL_170;
      }
    }

    else
    {

      v251 = *(v20 + 8);
      v251(v154, v252);
      if (!a2)
      {
        goto LABEL_170;
      }
    }

    v167 = [v155 invites];
    if (v167)
    {
      v168 = v167;
      sub_100007FAC(0, &qword_100034E88, FAFamilyInvite_ptr);
      v169 = sub_10002845C();

      if (v169 >> 62)
      {
        goto LABEL_168;
      }

      for (i = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000285DC())
      {
        v172 = 0;
        v246 = v169 & 0xC000000000000001;
        v235 = (v169 & 0xFFFFFFFFFFFFFF8);
        *&v170 = 136315138;
        v245 = v170;
        v243 = v169;
        v244 = v20 + 8;
        v242 = i;
        while (1)
        {
          if (v246)
          {
            v173 = sub_1000285AC();
            v20 = v247;
            v174 = (v172 + 1);
            if (__OFADD__(v172, 1))
            {
              break;
            }

            goto LABEL_137;
          }

          v20 = v247;
          if (v172 >= v235[2])
          {
            goto LABEL_167;
          }

          v173 = *(v169 + 8 * v172 + 32);
          v174 = (v172 + 1);
          if (__OFADD__(v172, 1))
          {
            break;
          }

LABEL_137:
          v250 = v174;
          sub_100027CCC();
          sub_100002A28(v253, v20);
          v175 = sub_100027D4C();
          v176 = v26;
          v177 = sub_10002850C();
          if (os_log_type_enabled(v175, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v254 = v179;
            *v178 = v245;
            v181 = *(v20 + 96);
            v180 = *(v20 + 104);

            sub_10001FC9C(v20);
            v182 = sub_100006B88(v181, v180, &v254);
            v23 = v249;

            *(v178 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v175, v177, "Invite code from message url %s", v178, 0xCu);
            sub_100007038(v179);
          }

          else
          {

            sub_10001FC9C(v20);
          }

          v251(v176, v252);
          v26 = v176;
          sub_100027CCC();
          v183 = v173;
          v184 = sub_100027D4C();
          v185 = sub_10002850C();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v254 = v187;
            *v186 = v245;
            v188 = [v183 code];

            if (!v188)
            {
              goto LABEL_174;
            }

            v189 = sub_1000283EC();
            v191 = v190;

            v192 = sub_100006B88(v189, v191, &v254);

            *(v186 + 4) = v192;
            _os_log_impl(&_mh_execute_header, v184, v185, "Invite code from family circle %s", v186, 0xCu);
            sub_100007038(v187);

            v23 = v249;
            v251(v249, v252);
            v26 = v248;
          }

          else
          {

            v251(v23, v252);
          }

          v193 = [v183 organizerEmail];
          v169 = v243;
          if (v193)
          {
            v194 = v193;
            v195 = sub_1000283EC();
            v197 = v196;

            if (v195 == v253[32] && v197 == v253[33])
            {
            }

            else
            {
              v198 = sub_10002863C();

              if ((v198 & 1) == 0)
              {
                goto LABEL_154;
              }
            }

            v199 = [v183 inviteStatus];
            if (!v199)
            {
              goto LABEL_164;
            }

            v200 = v199;
            v201 = sub_1000283EC();
            v203 = v202;

            if (v201 == 0x64656E696C636544 && v203 == 0xE800000000000000)
            {
            }

            else
            {
              v204 = sub_10002863C();

              if ((v204 & 1) == 0)
              {
LABEL_164:

                return;
              }
            }
          }

LABEL_154:
          v205 = [v183 organizerEmail];
          if (!v205)
          {
            goto LABEL_129;
          }

          v206 = v205;
          v207 = sub_1000283EC();
          v209 = v208;

          if (v207 == v253[32] && v209 == v253[33])
          {
          }

          else
          {
            v210 = sub_10002863C();

            if ((v210 & 1) == 0)
            {
              goto LABEL_129;
            }
          }

          v211 = [v183 inviteStatus];
          if (!v211)
          {
LABEL_129:

            goto LABEL_130;
          }

          v212 = v211;
          v213 = sub_1000283EC();
          v215 = v214;

          if (v213 == 0x64656E696C636544 && v215 == 0xE800000000000000)
          {

            return;
          }

          v216 = sub_10002863C();

          if (v216)
          {

            return;
          }

LABEL_130:
          ++v172;
          if (v250 == v242)
          {
            goto LABEL_169;
          }
        }

        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        ;
      }

LABEL_169:
    }

LABEL_170:
    v217 = v238;
    sub_100008798(v253 + *(v237 + 104), v238, &qword_1000347A0, &unk_100029620);
    v219 = v239;
    v218 = v240;
    if ((*(v239 + 48))(v217, 1, v240) == 1)
    {
      sub_100008800(v217, &qword_1000347A0, &unk_100029620);
    }

    else
    {
      v220 = v236;
      (*(v219 + 32))(v236, v217, v218);
      (*(*v241 + 136))(v220);
      (*(v219 + 8))(v220, v218);
    }

    return;
  }

  v75 = v74;
  v40 = sub_10002845C();

  v225 = v20;
  if (v40 >> 62)
  {
    goto LABEL_116;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
LABEL_117:

    v20 = v225;
    v34 = v243;
    goto LABEL_118;
  }

LABEL_59:
  v20 = 0;
  v250 = (v40 & 0xC000000000000001);
  v232 = v40 & 0xFFFFFFFFFFFFFF8;
  v233 = v40;
  v230 = v41;
  while (1)
  {
    if (v250)
    {
      v77 = sub_1000285AC();
    }

    else
    {
      if (v20 >= *(v232 + 16))
      {
        goto LABEL_112;
      }

      v77 = *(v40 + 8 * v20 + 32);
    }

    v76 = v77;
    a2 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
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
      v242 = sub_1000285DC();
      if (!v242)
      {
        goto LABEL_56;
      }

LABEL_5:
      v246 = 0;
      v43 = v41 & 0xC000000000000001;
      v231 = v41 & 0xFFFFFFFFFFFFFF8;
      v230 = v41 + 32;
      v225 = v20;
      v222 = v38;
      v224 = v40;
      v232 = v41;
      v223 = v41 & 0xC000000000000001;
      while (1)
      {
        if (v43)
        {
          v44 = v246;
          v26 = sub_1000285AC();
          v45 = v250;
          v46 = __OFADD__(v44, 1);
          v47 = v44 + 1;
          if (v46)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v48 = v246;
          v45 = v250;
          if (v246 >= *(v231 + 16))
          {
            __break(1u);
LABEL_174:
            __break(1u);
            return;
          }

          v26 = *(v230 + 8 * v246);
          v46 = __OFADD__(v48, 1);
          v47 = v48 + 1;
          if (v46)
          {
LABEL_115:
            __break(1u);
LABEL_116:
            v41 = sub_1000285DC();
            if (!v41)
            {
              goto LABEL_117;
            }

            goto LABEL_59;
          }
        }

        v49 = [v26 appleID];
        if (v49)
        {
          v50 = v49;
          v41 = sub_1000283EC();
          v52 = v51;

          v53 = v41 == v253[30] && v52 == v253[31];
          if (v53)
          {

LABEL_104:

            v145 = v222;
            sub_100027CCC();
            sub_100002A28(v253, v45);
            v146 = sub_100027D4C();
            v147 = sub_10002850C();
            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v254 = v149;
              *v148 = 136315138;
              v150 = v20;
              v151 = *(v45 + 240);
              v152 = *(v45 + 248);

              sub_10001FC9C(v45);
              v153 = sub_100006B88(v151, v152, &v254);

              *(v148 + 4) = v153;
              _os_log_impl(&_mh_execute_header, v146, v147, "contact handle %s mapped to family member Apple Account", v148, 0xCu);
              sub_100007038(v149);

              (*(v150 + 8))(v145, v252);
            }

            else
            {

              sub_10001FC9C(v45);
              (*(v20 + 8))(v145, v252);
            }

            return;
          }

          v38 = sub_10002863C();

          if (v38)
          {
            goto LABEL_104;
          }
        }

        v54 = [v26 contact];
        if (v54)
        {
          v55 = v54;
          v38 = [v54 phoneNumbers];

          sub_100001DFC(&qword_100034E90, &qword_10002A250);
          v56 = sub_10002845C();
        }

        else
        {
          v56 = &_swiftEmptyArrayStorage;
        }

        v235 = v26;
        v246 = v47;
        if (v56 >> 62)
        {
          v26 = sub_1000285DC();
          if (v26)
          {
LABEL_23:
            a2 = 0;
            v23 = (v56 & 0xC000000000000001);
            v20 = v56 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v23)
              {
                v57 = sub_1000285AC();
              }

              else
              {
                if (a2 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_109;
                }

                v57 = *(v56 + 8 * a2 + 32);
              }

              v41 = v57;
              v40 = a2 + 1;
              if (__OFADD__(a2, 1))
              {
                goto LABEL_108;
              }

              v58 = [v57 value];
              v59 = [v58 stringValue];

              v38 = sub_1000283EC();
              v61 = v60;

              if (v38 == v253[30] && v61 == v253[31])
              {

LABEL_82:

                v102 = v244;
                sub_100027CCC();
                v103 = v245;
                sub_100002A28(v253, v245);
                v104 = sub_100027D4C();
                v105 = sub_10002850C();
                if (os_log_type_enabled(v104, v105))
                {
                  v106 = swift_slowAlloc();
                  v107 = swift_slowAlloc();
                  v254 = v107;
                  *v106 = 136315138;
                  v108 = *(v103 + 240);
                  v109 = *(v103 + 248);

                  sub_10001FC9C(v103);
                  v110 = sub_100006B88(v108, v109, &v254);

                  *(v106 + 4) = v110;
                  _os_log_impl(&_mh_execute_header, v104, v105, "contact handle %s mapped to family member phone number", v106, 0xCu);
                  sub_100007038(v107);
                }

                else
                {

                  sub_10001FC9C(v103);
                }

                (*(v225 + 8))(v102, v252);
                return;
              }

              v63 = sub_10002863C();

              if (v63)
              {
                goto LABEL_82;
              }

              ++a2;
            }

            while (v40 != v26);
          }
        }

        else
        {
          v26 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_23;
          }
        }

        v64 = [v235 contact];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 emailAddresses];

          sub_100001DFC(&qword_100034E90, &qword_10002A250);
          v67 = sub_10002845C();

          if (!(v67 >> 62))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v67 = &_swiftEmptyArrayStorage;
          if (!(&_swiftEmptyArrayStorage >> 62))
          {
LABEL_39:
            v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v26)
            {
              goto LABEL_40;
            }

            goto LABEL_55;
          }
        }

        v26 = sub_1000285DC();
        if (v26)
        {
LABEL_40:
          a2 = 0;
          v20 = v67 & 0xC000000000000001;
          v23 = (v67 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if (v20)
            {
              v68 = sub_1000285AC();
            }

            else
            {
              if (a2 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_111;
              }

              v68 = *(v67 + 8 * a2 + 32);
            }

            v41 = v68;
            v40 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_110;
            }

            v69 = [v68 value];
            v38 = sub_1000283EC();
            v71 = v70;

            if (v38 == v253[30] && v71 == v253[31])
            {

LABEL_87:

              v111 = v233;
              sub_100027CCC();
              v112 = v234;
              sub_100002A28(v253, v234);
              v113 = sub_100027D4C();
              v114 = sub_10002850C();
              v115 = os_log_type_enabled(v113, v114);
              v116 = v235;
              if (v115)
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v254 = v118;
                *v117 = 136315138;
                v119 = v112[30];
                v120 = v112[31];

                sub_10001FC9C(v112);
                v121 = sub_100006B88(v119, v120, &v254);

                *(v117 + 4) = v121;
                _os_log_impl(&_mh_execute_header, v113, v114, "contact handle %s mapped to family member email address", v117, 0xCu);
                sub_100007038(v118);
              }

              else
              {

                sub_10001FC9C(v112);
              }

              (*(v225 + 8))(v111, v252);
              return;
            }

            v73 = sub_10002863C();

            if (v73)
            {
              goto LABEL_87;
            }

            ++a2;
          }

          while (v40 != v26);
        }

LABEL_55:

        v20 = v225;
        v26 = v248;
        v23 = v249;
        a2 = v251;
        v40 = v224;
        v41 = v232;
        v43 = v223;
        if (v246 == v242)
        {
          goto LABEL_56;
        }
      }
    }

    v78 = [v77 inviteEmail];
    if (!v78)
    {
      goto LABEL_62;
    }

    v79 = v78;
    v246 = sub_1000283EC();
    v81 = v80;
    v82 = [v76 statusString];
    if (v82)
    {
      break;
    }

    v38 = v76;
    v76 = v79;
LABEL_61:

LABEL_62:
    ++v20;
    v53 = a2 == v41;
    a2 = v251;
    if (v53)
    {
      goto LABEL_117;
    }
  }

  v83 = v82;
  v231 = sub_1000283EC();
  *&v245 = v84;

  v85 = [objc_allocWithZone(CNPhoneNumber) initWithStringValue:v79];
  v86 = v253[30];
  v87 = v253[31];
  v88 = objc_allocWithZone(CNPhoneNumber);
  v244 = v87;
  v89 = sub_1000283DC();
  v38 = [v88 initWithStringValue:v89];

  v90 = [v85 fullyQualifiedDigits];
  if (!v90)
  {
    goto LABEL_77;
  }

  v234 = v85;
  v235 = v76;
  v242 = v38;
  v91 = v90;
  v92 = sub_1000283EC();
  v94 = v93;

  v38 = v242;
  v95 = [v242 fullyQualifiedDigits];
  if (!v95)
  {

    v76 = v235;
    v85 = v234;
    goto LABEL_77;
  }

  v96 = v95;
  v97 = sub_1000283EC();
  v99 = v98;

  if (v92 != v97 || v94 != v99)
  {
    v100 = sub_10002863C();

    v23 = v249;
    v76 = v235;
    v85 = v234;
    v38 = v242;
    if (v100)
    {
      goto LABEL_98;
    }

LABEL_77:
    if (v246 == v86 && v81 == v244)
    {
      v242 = v38;
      v122 = v85;

      v123 = v245;
    }

    else
    {
      v101 = sub_10002863C();

      if ((v101 & 1) == 0)
      {

        v26 = v248;
        v40 = v233;
        v41 = v230;
        goto LABEL_61;
      }

      v123 = v245;
      v242 = v38;
      v122 = v85;
    }

    v124 = v229;
    sub_100027CCC();
    v125 = v228;
    sub_100002A28(v253, v228);

    v126 = sub_100027D4C();
    v127 = sub_10002850C();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      *v128 = 136315394;
      v129 = *(v125 + 240);
      v130 = *(v125 + 248);

      sub_10001FC9C(v125);
      v131 = sub_100006B88(v129, v130, &v254);

      *(v128 + 4) = v131;
      v132 = v245;
      *(v128 + 12) = 2080;
      v133 = v231;
      v123 = v132;
      *(v128 + 14) = sub_100006B88(v231, v132, &v254);
      _os_log_impl(&_mh_execute_header, v126, v127, "contact handle %s found in pending members with status %s", v128, 0x16u);
      swift_arrayDestroy();

      (*(v225 + 8))(v124, v252);
    }

    else
    {

      sub_10001FC9C(v125);
      (*(v225 + 8))(v124, v252);
      v133 = v231;
    }

    sub_10001FC38(v133, v123);

    goto LABEL_102;
  }

LABEL_98:

  v134 = v227;
  sub_100027CCC();
  v135 = v226;
  sub_100002A28(v253, v226);
  v136 = v245;

  v137 = sub_100027D4C();
  v138 = sub_10002850C();

  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *v139 = 136315394;
    v140 = *(v135 + 240);
    v141 = *(v135 + 248);

    sub_10001FC9C(v135);
    v142 = sub_100006B88(v140, v141, &v254);

    *(v139 + 4) = v142;
    v136 = v245;
    *(v139 + 12) = 2080;
    v143 = v231;
    *(v139 + 14) = sub_100006B88(v231, v136, &v254);
    _os_log_impl(&_mh_execute_header, v137, v138, "contact handle %s found in pending members with status %s", v139, 0x16u);
    swift_arrayDestroy();

    (*(v225 + 8))(v134, v252);
    v144 = v235;
  }

  else
  {

    sub_10001FC9C(v135);
    (*(v225 + 8))(v134, v252);
    v144 = v235;
    v143 = v231;
  }

  sub_10001FC38(v143, v136);

LABEL_102:
}

uint64_t sub_10001D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  v5 = sub_100027BEC();
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  v6 = sub_100027D5C();
  v4[45] = v6;
  v4[46] = *(v6 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();

  return _swift_task_switch(sub_10001D530, 0, 0);
}

uint64_t sub_10001D530(uint64_t a1)
{
  v34 = v1;
  v3 = v1[43];
  v2 = v1[44];
  v4 = v1[42];
  v5 = v1[38];
  sub_100027CCC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_100027D4C();
  v7 = sub_10002850C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[48];
  v11 = v1[45];
  v10 = v1[46];
  v13 = v1[43];
  v12 = v1[44];
  v14 = v1[42];
  if (v8)
  {
    v32 = v1[45];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = sub_100027BAC();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100006B88(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v30, "Loading url for updateFamilyStatus %s", v15, 0xCu);
    sub_100007038(v16);

    v21 = *(v10 + 8);
    v21(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v1[49] = v21;
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = sub_1000283EC();
    v26 = v25;
  }

  else
  {
    v26 = 0x800000010002A940;
    v24 = 0xD00000000000002DLL;
  }

  v1[50] = v24;
  v1[51] = v26;
  v1[52] = objc_opt_self();
  sub_1000284AC();
  v1[53] = sub_10002849C();
  v28 = sub_10002848C();

  return _swift_task_switch(sub_10001D7E8, v28, v27);
}

uint64_t sub_10001D7E8()
{
  v1 = *(v0 + 416);

  *(v0 + 449) = [v1 canSendText];

  return _swift_task_switch(sub_10001D864, 0, 0);
}

uint64_t sub_10001D864()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 328);
  if (*(v0 + 449))
  {
    v4 = 49;
  }

  else
  {
    v4 = 48;
  }

  sub_100001DFC(&qword_100034E98, &qword_10002A260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002A210;
  *(inited + 32) = sub_1000283EC();
  *(inited + 40) = v6;
  *(inited + 48) = 0x6E65726566657250;
  *(inited + 56) = 0xEB00000000736563;
  *(inited + 64) = sub_1000283EC();
  *(inited + 72) = v7;
  *(inited + 80) = v2;
  *(inited + 88) = v1;
  *(inited + 96) = sub_1000283EC();
  *(inited + 104) = v8;
  *(inited + 112) = v4;
  *(inited + 120) = 0xE100000000000000;
  v9 = sub_10001FFF0(inited);
  swift_setDeallocating();
  sub_100001DFC(&qword_100034EA0, &qword_10002A268);
  swift_arrayDestroy();
  sub_10001DF1C(v9);

  v10 = objc_allocWithZone(FAUpdateFamilyInviteStatusRequest);
  v11 = sub_1000283DC();
  isa = sub_10002836C().super.isa;

  v13 = [v10 initWithInviteCode:v11 inviteStatus:v3 responseFormat:1 additionalRequestParameters:isa];
  *(v0 + 432) = v13;

  if (v13)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_10001DB70;
    v14 = swift_continuation_init();
    *(v0 + 264) = sub_100001DFC(&qword_100034EA8, &qword_10002A270);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10001E1E4;
    *(v0 + 232) = &unk_100031858;
    *(v0 + 240) = v14;
    [v13 startRequestWithCompletionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15(0, 0);
  }
}