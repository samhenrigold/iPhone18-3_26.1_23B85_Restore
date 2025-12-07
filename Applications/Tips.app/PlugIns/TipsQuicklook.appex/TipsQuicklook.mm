id sub_1000018CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PreviewViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000019DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10000773C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_100001A40()
{
  v1 = [objc_opt_self() sharedInstance];
  v7 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryAmbient error:&v7];

  if (v2)
  {
    v3 = v7;
  }

  else
  {
    v4 = v7;
    sub_10000774C();

    swift_willThrow();
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for PreviewViewController();
  return objc_msgSendSuper2(&v6, "viewDidLoad");
}

__n128 sub_100001D48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001D58(uint64_t a1, int a2)
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

uint64_t sub_100001D78(uint64_t result, int a2, int a3)
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
  if (!qword_100010790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010790);
    }
  }
}

void sub_100001DF0(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void))
{
  v8 = objc_allocWithZone(sub_100007C9C());

  v9 = sub_100007C5C();
  if (v9)
  {
    v49 = v9;
    sub_100007C6C();
    if (v10)
    {
      sub_100007C8C();
      sub_100007C7C();
      if (!v11)
      {
        sub_100007CDC();
      }

      v12 = sub_100007CCC();

      v13 = sub_100007CCC();

      v14 = [objc_opt_self() helpViewControllerWithIdentifier:v12 version:v13];

      if (!v14)
      {

        a4[2](a4, 0);
        v47 = v49;
LABEL_21:

        return;
      }

      v15 = *&a3[OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController];
      *&a3[OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController] = v14;
      v48 = v14;

      [v48 setShouldDisallowOffSiteRedirects:1];
      [v48 setDisplayHelpTopicsOnly:1];
      v16 = sub_100007CCC();
      [v48 setSelectedHelpTopicID:v16];

      [v48 setShowTopicViewOnLoad:1];
      v17 = [v48 view];
      if (!v17)
      {

        goto LABEL_20;
      }

      v18 = v17;
      v19 = [a3 view];
      if (v19)
      {
        v20 = v19;
        [v19 addSubview:v18];

        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        v21 = [a3 view];
        if (v21)
        {
          v22 = v21;
          sub_100002A6C(&qword_1000107A0, &qword_1000083E0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_100008380;
          v24 = [v18 leadingAnchor];
          v25 = [a3 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 leadingAnchor];

            v28 = [v24 constraintEqualToAnchor:v27];
            *(v23 + 32) = v28;
            v29 = [v18 topAnchor];
            v30 = [a3 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 topAnchor];

              v33 = [v29 constraintEqualToAnchor:v32];
              *(v23 + 40) = v33;
              v34 = [v18 trailingAnchor];
              v35 = [a3 view];
              if (v35)
              {
                v36 = v35;
                v37 = [v35 trailingAnchor];

                v38 = [v34 constraintEqualToAnchor:v37];
                *(v23 + 48) = v38;
                v39 = [v18 bottomAnchor];
                v40 = [a3 view];
                if (v40)
                {
                  v41 = v40;

                  v42 = [v41 bottomAnchor];

                  v43 = [v39 constraintEqualToAnchor:v42];
                  *(v23 + 56) = v43;
                  sub_100002AB4();
                  isa = sub_100007CFC().super.isa;

                  [v22 addConstraints:isa];

                  [v48 didMoveToParentViewController:a3];
LABEL_20:
                  a4[2](a4, 0);

                  v47 = v48;
                  goto LABEL_21;
                }

LABEL_29:
                _Block_release(a4);
                __break(1u);
                return;
              }

LABEL_28:
              _Block_release(a4);
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            _Block_release(a4);
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          _Block_release(a4);
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        _Block_release(a4);
        __break(1u);
      }

      _Block_release(a4);
      __break(1u);
      goto LABEL_26;
    }
  }

  sub_100002A18();
  swift_allocError();
  *v45 = a1;
  v45[1] = a2;

  v46 = sub_10000773C();
  (a4)[2](a4, v46);
}

void sub_1000023D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TipPreviewView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = &v8[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = sub_100002B38;
  v10[1] = v9;
  v13 = v4;
  sub_100002B48(v11, v12);
  v14 = v8;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v13 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  [v15 addSubview:v14];

  v17 = [v13 view];
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  v41 = a3;
  sub_100002A6C(&qword_1000107A0, &qword_1000083E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100008380;
  v20 = [v14 leadingAnchor];
  v21 = [v13 view];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v19 + 32) = v24;
  v25 = [v14 topAnchor];
  v26 = [v13 view];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v19 + 40) = v29;
  v30 = [v14 trailingAnchor];
  v31 = [v13 view];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v19 + 48) = v34;
  v35 = [v14 bottomAnchor];

  v36 = [v13 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 bottomAnchor];

    v39 = [v35 constraintEqualToAnchor:v38];
    *(v19 + 56) = v39;
    sub_100002AB4();
    isa = sub_100007CFC().super.isa;

    [v18 addConstraints:isa];

    sub_100004668(a1, a2, v41, a4);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000027A4(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5, void *a6)
{
  v18 = a5;
  v17 = sub_100007C3C();
  v11 = *(v17 - 8);
  __chkstk_darwin(v17);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  _Block_copy(a6);
  sub_100007C2C();
  v15 = 0xE000000000000000;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_100007D5C(64);
  v21._object = 0x8000000100008730;
  v21._countAndFlagsBits = 0xD00000000000002DLL;
  sub_100007CEC(v21);
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  sub_100007CEC(v22);
  v23._countAndFlagsBits = 0x537972657571202CLL;
  v23._object = 0xEF203A676E697274;
  sub_100007CEC(v23);
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    a3 = 0;
  }

  v24._countAndFlagsBits = a3;
  v24._object = v15;
  sub_100007CEC(v24);

  sub_100007CAC();

  (*(v11 + 8))(v13, v17);
  sub_100007C9C();
  if (sub_100007C4C())
  {
    _Block_copy(a6);
    sub_100001DF0(a1, a2, v18, a6);
    _Block_release(a6);
  }

  else
  {
    sub_1000023D4(a1, a2, sub_100002A10, v14);
  }
}

uint64_t sub_1000029D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100002A18()
{
  result = qword_100010798;
  if (!qword_100010798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010798);
  }

  return result;
}

uint64_t sub_100002A6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002AB4()
{
  result = qword_1000107A8;
  if (!qword_1000107A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000107A8);
  }

  return result;
}

uint64_t sub_100002B00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002B58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100002B70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100002C24(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t TipPreviewView.contentSizeUpdatedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100002CCC(*v1, v1[1]);
  return v2;
}

uint64_t sub_100002CCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t TipPreviewView.contentSizeUpdatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100002B48(v6, v7);
}

void sub_100002DAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier);
    v6 = *(Strong + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier + 8);
    v8 = Strong;

    if (v6)
    {
      if (v7 == a2 && v6 == a3)
      {
      }

      else
      {
        v10 = sub_100007D7C();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        sub_100002EA8(a2, a3);
      }
    }
  }
}

uint64_t sub_100002EA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100007C3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  v11 = *&v2[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel];
  v12 = sub_1000077DC();

  if (v12)
  {
    v13 = [v3 traitCollection];
    [v13 userInterfaceStyle];

    v14 = *&v3[v10];
    v15 = v12;
    sub_1000077AC();

    v16 = *&v3[v10];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = v17;
    v19 = v16;

    sub_1000077CC();
  }

  else
  {
    sub_100007C2C();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_100007D5C(30);

    v21 = 0xD00000000000001CLL;
    v22 = 0x8000000100008920;
    v24._countAndFlagsBits = a1;
    v24._object = a2;
    sub_100007CEC(v24);
    sub_100007CBC();

    (*(v7 + 8))(v9, v6);
    return sub_100003648(a1, a2, 0);
  }
}

uint64_t sub_100003154(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v24 = a5;
  v28 = a3;
  v8 = sub_100007BFC();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007C1C();
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007C3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_100007C2C();
    aBlock = 0;
    v31 = 0xE000000000000000;
    sub_100007D5C(36);
    v36._object = 0x8000000100008950;
    v36._countAndFlagsBits = 0xD00000000000001ELL;
    sub_100007CEC(v36);
    v37._countAndFlagsBits = v28;
    v37._object = a4;
    sub_100007CEC(v37);
    v38._countAndFlagsBits = 8250;
    v38._object = 0xE200000000000000;
    sub_100007CEC(v38);
    v29 = a2;
    sub_100002A6C(&qword_1000108A8, &qword_100008510);
    sub_100007D6C();
    sub_100007CBC();

    (*(v15 + 8))(v17, v14);
  }

  sub_100004B48(0, &qword_100010888, OS_dispatch_queue_ptr);
  v18 = sub_100007D0C();
  v19 = swift_allocObject();
  v20 = v28;
  v19[2] = v24;
  v19[3] = v20;
  v19[4] = a4;
  v19[5] = a1;
  v34 = sub_100004BD8;
  v35 = v19;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100003604;
  v33 = &unk_10000CAF0;
  v21 = _Block_copy(&aBlock);
  v22 = a1;

  sub_100007C0C();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100004BFC();
  sub_100002A6C(&qword_100010898, &qword_100008508);
  sub_100004D48(&qword_1000108A0, &qword_100010898, &qword_100008508, &protocol conformance descriptor for [A]);
  sub_100007D4C();
  sub_100007D1C();
  _Block_release(v21);

  (*(v27 + 8))(v10, v8);
  return (*(v25 + 8))(v13, v26);
}

void sub_10000358C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100003648(a2, a3, a4);
  }
}

uint64_t sub_100003604(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003648(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100007C3C();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A6C(&qword_100010870, &qword_1000084F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v72 - v11;
  v13 = type metadata accessor for SingleTipView(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v20 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView;
  [*&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView] removeFromSuperview];
  sub_100003D68(a1, a2, a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004928(v12);
    sub_100007A0C();
    v21 = sub_100007AFC();
    v23 = v22;
    v25 = v24;
    sub_100007A9C();
    v26 = sub_100007AEC();
    v28 = v27;
    v30 = v29;
    v72 = v20;

    sub_100004990(v21, v23, v25 & 1);

    sub_100007B8C();
    v31 = sub_100007ADC();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_100004990(v26, v28, v30 & 1);
    v38 = v72;

    v76 = v31;
    v77 = v33;
    v78 = v35 & 1;
    v79 = v37;
    v39 = objc_allocWithZone(sub_100002A6C(&qword_100010878, &qword_1000084F8));
    v40 = sub_1000079CC();
    v41 = *&v4[v38];
    *&v4[v38] = v40;

    v42 = *&v4[v38];
    if (!v42)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_1000049A0(v12, v19);
  sub_100004A04(v19, v17);
  v43 = objc_allocWithZone(sub_100002A6C(&qword_100010880, &qword_100008500));
  v44 = sub_1000079CC();
  v45 = *&v4[v20];
  *&v4[v20] = v44;

  v46 = objc_opt_self();
  if ([v46 isPhoneUI])
  {
    v47 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
    swift_beginAccess();
    v48 = *v47;
    if (!*v47)
    {
      goto LABEL_11;
    }

    v49 = *(v47 + 1);

    v51.n128_u64[0] = 0x407AC00000000000;
    v52 = 738.0;
    goto LABEL_10;
  }

  if ([v46 isPadUI])
  {
    v53 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
    swift_beginAccess();
    v48 = *v53;
    if (*v53)
    {
      v49 = *(v53 + 1);

      v51.n128_u64[0] = 0x408F400000000000;
      v52 = 1200.0;
LABEL_10:
      v48(v50, v51, v52);
      sub_100002B48(v48, v49);
    }
  }

LABEL_11:
  sub_100004A68(v19);
  v42 = *&v4[v20];
  if (v42)
  {
LABEL_12:
    v54 = v42;
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v54];
    sub_100002A6C(&qword_1000107A0, &qword_1000083E0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100008380;
    v56 = [v54 leadingAnchor];
    v57 = [v4 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v55 + 32) = v58;
    v59 = [v54 topAnchor];
    v60 = [v4 topAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v55 + 40) = v61;
    v62 = [v54 trailingAnchor];
    v63 = [v4 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    *(v55 + 48) = v64;
    v65 = [v54 bottomAnchor];
    v66 = [v4 bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v55 + 56) = v67;
    sub_100004B48(0, &qword_1000107A8, NSLayoutConstraint_ptr);
    isa = sub_100007CFC().super.isa;

    [v4 addConstraints:isa];
  }

LABEL_13:
  v69 = v73;
  sub_100007C2C();
  sub_100007CAC();
  (*(v74 + 8))(v69, v75);
  v70 = *&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];

  v70(0);
}

uint64_t sub_100003D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v43 = a3;
  v9 = sub_100007C3C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  v14 = *(v4 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel);
  v15 = sub_10000778C();

  if (!v15)
  {
    goto LABEL_9;
  }

  v42 = v15;
  v16 = *(v5 + v13);
  v17 = sub_1000077DC();

  v41 = v17;
  if (!v17)
  {

LABEL_9:
    sub_100007C2C();
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_100007D5C(44);

    v45 = 0xD00000000000002ALL;
    v46 = 0x8000000100008860;
    v47._countAndFlagsBits = a1;
    v47._object = a2;
    sub_100007CEC(v47);
    sub_100007CBC();

    (*(v10 + 8))(v12, v9);
    v29 = type metadata accessor for SingleTipView(0);
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }

  v18 = *(v5 + v13);
  v19 = sub_10000777C();

  if (v19 && (v20 = [v19 tip], v19, v21 = objc_msgSend(v20, "compact"), v20, v21))
  {
    v22 = [v21 width];
    v23 = [v22 integerValue];

    v24 = [v21 height];
    v25 = [v24 integerValue];

    v26 = v23;
    v27 = v25;
  }

  else
  {
    v28 = objc_opt_self();
    if ([v28 isPadUI])
    {
      v27 = 1500.0;
      v26 = 2500.0;
    }

    else
    {
      v31 = [v28 isMacUI];
      if (v31)
      {
        v26 = 3200.0;
      }

      else
      {
        v26 = 0.0;
      }

      if (v31)
      {
        v27 = 2000.0;
      }

      else
      {
        v27 = 0.0;
      }
    }
  }

  v32 = v42;
  LOBYTE(v44) = 0;
  sub_100007B9C();
  v33 = v46;
  *(a4 + 16) = v45;
  *(a4 + 24) = v33;
  v34 = type metadata accessor for SingleTipView(0);
  v35 = v34[6];
  *(a4 + v35) = swift_getKeyPath();
  sub_100002A6C(&qword_100010868, &qword_1000084E8);
  swift_storeEnumTagMultiPayload();
  *(a4 + v34[7]) = 0x4040000000000000;
  sub_1000077FC();
  v36 = v32;
  v37 = v41;
  sub_1000077EC();
  sub_10000789C();
  swift_allocObject();
  v38 = v43;
  v44 = sub_10000783C();
  sub_100007B9C();

  v39 = v46;
  *a4 = v45;
  *(a4 + 8) = v39;
  v40 = (a4 + v34[8]);
  *v40 = v26;
  v40[1] = v27;
  return (*(*(v34 - 1) + 56))(a4, 0, 1, v34);
}

id TipPreviewView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id TipPreviewView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  sub_1000077FC();
  *&v4[v9] = sub_1000077EC();
  v10 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView] = 0;
  *&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_cancellables] = &_swiftEmptySetSingleton;
  v11 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];
  *v11 = nullsub_2;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
  *v12 = nullsub_2;
  v12[1] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TipPreviewView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id TipPreviewView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TipPreviewView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  sub_1000077FC();
  *&v1[v3] = sub_1000077EC();
  v4 = &v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView] = 0;
  *&v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_cancellables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];
  *v5 = nullsub_2;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
  *v6 = nullsub_2;
  v6[1] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TipPreviewView();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id TipPreviewView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TipPreviewView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000045A0(uint64_t a1)
{
  v2 = sub_10000799C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000079FC();
}

void sub_100004668(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = (v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier);
  *v10 = a1;
  v10[1] = a2;

  v11 = (v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler);
  *v11 = a3;
  v11[1] = a4;

  v12 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_cancellables;
  swift_beginAccess();
  *(v5 + v12) = &_swiftEmptySetSingleton;

  v13 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  v14 = *(v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel);
  sub_1000077BC();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100004CDC;
  *(v17 + 24) = v16;

  sub_100002A6C(&qword_1000108B0, &qword_100008518);
  sub_100004D48(&qword_1000108B8, &qword_1000108B0, &qword_100008518, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10000797C();

  swift_beginAccess();
  sub_10000796C();
  swift_endAccess();

  v18 = *(v5 + v13);
  v19 = sub_1000077DC();

  if (v19)
  {

    sub_100002EA8(a1, a2);
  }

  else
  {
    v20 = *(v5 + v13);
    sub_10000776C();
  }
}

uint64_t sub_100004928(uint64_t a1)
{
  v2 = sub_100002A6C(&qword_100010870, &qword_1000084F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000049A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A68(uint64_t a1)
{
  v2 = type metadata accessor for SingleTipView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004AC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004AFC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004B48(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100004B90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100004BFC()
{
  result = qword_100010890;
  if (!qword_100010890)
  {
    sub_100007BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010890);
  }

  return result;
}

uint64_t sub_100004C54(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004C9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004CE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004D48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004C54(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004DA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002A6C(&qword_1000108C0, &qword_100008520);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100004E74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002A6C(&qword_1000108C0, &qword_100008520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SingleTipView(uint64_t a1)
{
  result = qword_100010920;
  if (!qword_100010920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004F70(uint64_t a1)
{
  sub_1000050DC(319, &qword_100010930, &type metadata accessor for TipViewModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10000508C();
    if (v2 <= 0x3F)
    {
      sub_1000050DC(319, &unk_100010940, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000508C()
{
  if (!qword_100010938)
  {
    v0 = sub_100007BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_100010938);
    }
  }
}

void sub_1000050DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10000515C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a1;
  v3 = sub_10000795C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A6C(&qword_100010A30, &qword_1000085F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v19 = sub_10000794C();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000079BC();
  type metadata accessor for SingleTipView(0);
  sub_1000079BC();
  sub_100004B48(0, &qword_100010A38, UIFont_ptr);
  sub_100007D2C();
  v13 = sub_10000775C();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_10000791C();
  (*(v4 + 104))(v6, enum case for ConstellationContentParagraphStyle.newline(_:), v3);
  sub_10000793C();
  *a2 = sub_100007A3C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14 = sub_100002A6C(&qword_100010A40, &qword_100008600);
  sub_1000054D0(v18, v12, a2 + *(v14 + 44));
  sub_1000079BC();
  sub_100007BEC();
  sub_1000079AC();
  v15 = (a2 + *(sub_100002A6C(&qword_100010A48, &qword_100008608) + 36));
  v16 = v21;
  *v15 = v20;
  v15[1] = v16;
  v15[2] = v22;
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1000054D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_100002A6C(&qword_100010A50, &qword_100008610);
  __chkstk_darwin(v8 - 8);
  v10 = v56 - v9;
  v11 = sub_100002A6C(&qword_100010A58, &qword_100008618);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v56 - v13;
  v15 = sub_100002A6C(&qword_100010A60, &qword_100008620);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = v56 - v17;
  v19 = sub_100002A6C(&qword_100010A68, &qword_100008628);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v56 - v21;
  *v10 = sub_100007A4C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v23 = sub_100002A6C(&qword_100010A70, &qword_100008630);
  sub_10000585C(a1, a2, &v10[*(v23 + 44)]);
  sub_100007BEC();
  sub_1000079DC();
  sub_100007430(v10, v14, &qword_100010A50, &qword_100008610);
  v24 = &v14[*(v12 + 44)];
  v25 = v56[5];
  *(v24 + 4) = v56[4];
  *(v24 + 5) = v25;
  *(v24 + 6) = v56[6];
  v26 = v56[1];
  *v24 = v56[0];
  *(v24 + 1) = v26;
  v27 = v56[3];
  *(v24 + 2) = v56[2];
  *(v24 + 3) = v27;
  LOBYTE(v12) = sub_100007A6C();
  type metadata accessor for SingleTipView(0);
  sub_10000798C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100007430(v14, v18, &qword_100010A58, &qword_100008618);
  v36 = &v18[*(v16 + 44)];
  *v36 = v12;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(a1) = sub_100007A7C();
  sub_10000798C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_100007430(v18, v22, &qword_100010A60, &qword_100008620);
  v45 = &v22[*(v20 + 44)];
  *v45 = a1;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  LOBYTE(a1) = sub_100007A8C();
  sub_10000798C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_100007430(v22, a3, &qword_100010A68, &qword_100008628);
  result = sub_100002A6C(&qword_100010A78, &qword_100008638);
  v55 = a3 + *(result + 36);
  *v55 = a1;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  return result;
}

uint64_t sub_10000585C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a3;
  v6 = sub_100002A6C(&qword_100010A80, &qword_100008640);
  __chkstk_darwin(v6 - 8);
  v76 = &v64 - v7;
  v8 = sub_100002A6C(&qword_100010A88, &qword_100008648);
  __chkstk_darwin(v8 - 8);
  v73 = &v64 - v9;
  v78 = sub_100002A6C(&qword_100010A90, &qword_100008650) - 8;
  v10 = __chkstk_darwin(v78);
  v79 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v64 - v12;
  v13 = sub_100007A2C();
  v71 = *(v13 - 8);
  v72 = v13;
  __chkstk_darwin(v13);
  v70 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100002A6C(&qword_100010A98, &qword_100008658);
  __chkstk_darwin(v69);
  v65 = &v64 - v15;
  v16 = sub_100002A6C(&qword_100010AA0, &qword_100008660);
  v17 = __chkstk_darwin(v16 - 8);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v81 = &v64 - v19;
  v68 = *a1;
  v67 = a1[1];
  v82 = v68;
  v83 = v67;
  v66 = sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  v20 = sub_10000787C();
  v22 = v21;

  v82 = v20;
  v83 = v22;
  sub_100007498();
  v23 = sub_100007B0C();
  v25 = v24;
  v27 = v26;
  sub_100004B48(0, &qword_100010A38, UIFont_ptr);
  sub_100007D2C();
  sub_100007ABC();
  v28 = sub_100007AEC();
  v30 = v29;
  v32 = v31;

  sub_100004990(v23, v25, v27 & 1);

  sub_100007AAC();
  v33 = sub_100007ACC();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_100004990(v28, v30, v32 & 1);

  v82 = v33;
  v83 = v35;
  v84 = v37 & 1;
  v85 = v39;
  sub_100007D3C();
  v40 = v65;
  sub_100007B5C();
  sub_100004990(v33, v35, v37 & 1);

  LOBYTE(v33) = sub_100007A7C();
  sub_10000798C();
  v41 = v40 + *(v69 + 36);
  *v41 = v33;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v45;
  *(v41 + 40) = 0;
  v46 = v70;
  sub_100007A1C();
  sub_1000074EC();
  sub_100007B6C();
  (*(v71 + 8))(v46, v72);
  sub_100007680(v40, &qword_100010A98, &qword_100008658);
  v47 = v68;
  v48 = v67;
  v82 = v68;
  v83 = v67;
  sub_100007BAC();
  v72 = sub_10000786C();

  v82 = v47;
  v83 = v48;
  sub_100007BAC();
  v71 = sub_10000788C();

  v82 = v47;
  v83 = v48;
  sub_100007BAC();
  sub_10000784C();

  v82 = v47;
  v83 = v48;
  sub_100007BAC();
  sub_10000785C();

  v49 = sub_10000794C();
  v50 = *(v49 - 8);
  v51 = v76;
  (*(v50 + 16))(v76, v77, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  v82 = v47;
  v83 = v48;
  sub_100007BAC();
  v52 = v75;
  sub_10000792C();
  LOBYTE(v49) = sub_100007A7C();
  sub_10000798C();
  v53 = v52 + *(v78 + 44);
  *v53 = v49;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v81;
  v59 = v74;
  sub_1000075A8(v81, v74, &qword_100010AA0, &qword_100008660);
  v60 = v79;
  sub_100007610(v52, v79);
  v61 = v80;
  sub_1000075A8(v59, v80, &qword_100010AA0, &qword_100008660);
  v62 = sub_100002A6C(&qword_100010AB8, &qword_100008668);
  sub_100007610(v60, v61 + *(v62 + 48));
  sub_100007680(v52, &qword_100010A90, &qword_100008650);
  sub_100007680(v58, &qword_100010AA0, &qword_100008660);
  sub_100007680(v60, &qword_100010A90, &qword_100008650);
  return sub_100007680(v59, &qword_100010AA0, &qword_100008660);
}

uint64_t sub_100005FDC@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v6 = type metadata accessor for SingleTipView(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100002A6C(&qword_100010A08, &qword_1000085E0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v35 = sub_100002A6C(&qword_100010A10, &qword_1000085E8);
  v11 = *(v35 - 8);
  v12 = __chkstk_darwin(v35);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = v5[1];
  v42 = *v5;
  v43 = v17;
  sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  sub_10000780C();

  LOBYTE(v39) = 0;
  sub_100007BDC();
  sub_1000078AC();
  sub_100007BEC();
  sub_1000079AC();
  v18 = &v10[*(v8 + 36)];
  v19 = v40;
  *v18 = v39;
  *(v18 + 1) = v19;
  *(v18 + 2) = v41;
  sub_100007174();
  v33 = v16;
  sub_100007B1C();
  sub_100007680(v10, &qword_100010A08, &qword_1000085E0);
  sub_100004A04(v5, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_1000049A0(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_100007BEC();
  sub_1000079AC();
  v34 = v42;
  v32 = v44;
  v22 = v47;
  v31 = v46;
  v38 = v43;
  v37 = v45;
  v23 = v11;
  v24 = *(v11 + 16);
  v25 = v35;
  v24(v14, v16, v35);
  LOBYTE(v7) = v38;
  LOBYTE(v20) = v37;
  v26 = v36;
  v24(v36, v14, v25);
  v27 = &v26[*(sub_100002A6C(&qword_100010A28, &qword_1000085F0) + 48)];
  *v27 = sub_100007384;
  *(v27 + 1) = v21;
  *(v27 + 2) = v34;
  v27[24] = v7;
  *(v27 + 4) = v32;
  v27[40] = v20;
  *(v27 + 6) = v31;
  *(v27 + 7) = v22;
  v28 = *(v23 + 8);

  v28(v33, v25);

  return (v28)(v14, v25);
}

uint64_t sub_100006434@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SingleTipView(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v8;
  v10 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A6C(&qword_100010980, &qword_100008590);
  v27[0] = v11;
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  *v13 = sub_100007A3C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_100002A6C(&qword_100010988, &qword_100008598);
  sub_100006800(a1, a2);
  sub_100004A04(a2, v10);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_1000049A0(v10, v15 + v14);
  v16 = &v13[*(sub_100002A6C(&qword_100010990, &qword_1000085A0) + 36)];
  *v16 = sub_10000772C;
  *(v16 + 1) = v15;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  sub_100004A04(a2, v10);
  v30 = v9;
  v17 = swift_allocObject();
  sub_1000049A0(v10, v17 + v14);
  v18 = &v13[*(v11 + 36)];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = sub_100006E74;
  *(v18 + 3) = v17;
  v19 = *a2;
  v28 = a2[1];
  v29 = v19;
  v31 = v19;
  v32 = v28;
  v27[1] = sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  v20 = sub_10000781C();

  v21 = sub_10000779C();

  v31 = v21;
  sub_100004A04(a2, v10);
  v22 = swift_allocObject();
  sub_1000049A0(v10, v22 + v14);
  sub_100002A6C(&qword_1000109A0, &qword_1000085B0);
  sub_100006ED4();
  sub_100007018();
  sub_100007B7C();

  sub_100007680(v13, &qword_100010980, &qword_100008590);
  v31 = v29;
  v32 = v28;
  sub_100007BAC();
  sub_10000780C();

  v23 = sub_100002A6C(&qword_1000109E0, &qword_1000085C0);
  sub_1000078FC();

  sub_100004A04(a2, v10);
  v24 = swift_allocObject();
  result = sub_1000049A0(v10, v24 + v14);
  v26 = (a3 + *(v23 + 56));
  *v26 = sub_100007104;
  v26[1] = v24;
  return result;
}

uint64_t sub_100006800(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A6C(&qword_1000109F0, &qword_1000085D0);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_100002A6C(&qword_1000109F8, &qword_1000085D8);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  sub_1000079BC();
  v10 = v9;
  sub_1000079BC();
  sub_1000079BC();
  v12 = v11;
  v13 = (a2 + *(type metadata accessor for SingleTipView(0) + 32));
  v14 = v12 * (v13[1] / *v13);
  sub_1000079BC();
  if (v10 >= v15 || (sub_1000079BC(), v16 - v14 >= v10))
  {
    sub_1000079BC();
    sub_100005FDC(v8);
  }

  else
  {
    sub_1000079BC();
    sub_1000079BC();
    sub_1000079BC();
    sub_1000079BC();
    sub_100005FDC(v8);
  }

  sub_1000075A8(v8, v5, &qword_1000109F8, &qword_1000085D8);
  swift_storeEnumTagMultiPayload();
  sub_100004D48(&qword_100010A00, &qword_1000109F8, &qword_1000085D8, &protocol conformance descriptor for TupleView<A>);
  sub_100007A5C();
  return sub_100007680(v8, &qword_1000109F8, &qword_1000085D8);
}

uint64_t sub_100006A50()
{
  sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  v0 = sub_10000782C();

  sub_100002A6C(&qword_1000109E8, &qword_1000085C8);
  sub_100007BBC();
  sub_100007BAC();
  sub_100007BAC();
  sub_10000780C();

  if ((v0 & 1) == 1)
  {
    sub_1000078DC();

    sub_100007BAC();
    sub_10000780C();

    sub_10000790C();
  }

  else
  {
    sub_1000078EC();

    sub_100007BAC();
    sub_10000780C();

    sub_1000078CC();
  }
}

void *sub_100006C10(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_100002A6C(&qword_1000109E8, &qword_1000085C8);
  result = sub_100007BAC();
  if (v4 == 1)
  {
    return [v2 play];
  }

  return result;
}

uint64_t sub_100006CA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007C3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C2C();
  sub_100007CAC();
  (*(v9 + 8))(v11, v8);
  sub_100004A04(v3, v7);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  result = sub_1000049A0(v7, v13 + v12);
  *a2 = sub_100006E5C;
  a2[1] = v13;
  return result;
}

unint64_t sub_100006ED4()
{
  result = qword_1000109A8;
  if (!qword_1000109A8)
  {
    sub_100004C54(&qword_100010980, &qword_100008590);
    sub_100006F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A8);
  }

  return result;
}

unint64_t sub_100006F60()
{
  result = qword_1000109B0;
  if (!qword_1000109B0)
  {
    sub_100004C54(&qword_100010990, &qword_1000085A0);
    sub_100004D48(&qword_1000109B8, &qword_1000109C0, &qword_1000085B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109B0);
  }

  return result;
}

unint64_t sub_100007018()
{
  result = qword_1000109C8;
  if (!qword_1000109C8)
  {
    sub_100004C54(&qword_1000109A0, &qword_1000085B0);
    sub_10000709C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109C8);
  }

  return result;
}

unint64_t sub_10000709C()
{
  result = qword_1000109D0;
  if (!qword_1000109D0)
  {
    sub_100004B48(255, &qword_1000109D8, TPSTip_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109D0);
  }

  return result;
}

void *sub_100007104(void **a1)
{
  v3 = *(type metadata accessor for SingleTipView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100006C10(a1, v4);
}

unint64_t sub_100007174()
{
  result = qword_100010A18;
  if (!qword_100010A18)
  {
    sub_100004C54(&qword_100010A08, &qword_1000085E0);
    sub_100007200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A18);
  }

  return result;
}

unint64_t sub_100007200()
{
  result = qword_100010A20;
  if (!qword_100010A20)
  {
    sub_1000078BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A20);
  }

  return result;
}

uint64_t sub_100007258()
{
  v1 = (type metadata accessor for SingleTipView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_100002A6C(&qword_100010868, &qword_1000084E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10000799C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000739C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SingleTipView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100007430(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A6C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100007498()
{
  result = qword_100010AA8;
  if (!qword_100010AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AA8);
  }

  return result;
}

unint64_t sub_1000074EC()
{
  result = qword_100010AB0;
  if (!qword_100010AB0)
  {
    sub_100004C54(&qword_100010A98, &qword_100008658);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AB0);
  }

  return result;
}

uint64_t sub_1000075A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A6C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A6C(&qword_100010A90, &qword_100008650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}