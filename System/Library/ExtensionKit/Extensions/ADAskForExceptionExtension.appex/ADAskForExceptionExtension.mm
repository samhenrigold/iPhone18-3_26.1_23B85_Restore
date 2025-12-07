id LALogHandleForCategory(uint64_t a1)
{
  if (qword_100025B28 != -1)
  {
    sub_1000171FC();
  }

  v2 = qword_100025B20[a1];

  return v2;
}

void sub_10000219C(id a1)
{
  qword_100025B20[0] = os_log_create("com.apple.AppDistributionLaunchAngel", "LaunchAngel");

  _objc_release_x1();
}

id sub_10000266C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100025B48;
  v7 = qword_100025B48;
  if (!qword_100025B48)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002E64;
    v3[3] = &unk_100021038;
    v3[4] = &v4;
    sub_100002E64(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000274C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100025B50;
  v9 = qword_100025B50;
  if (!qword_100025B50)
  {
    v1 = sub_100002C98();
    v7[3] = dlsym(v1, "ASCLockupKindApp");
    qword_100025B50 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_100017210();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

Class sub_100002C40(uint64_t a1)
{
  sub_100002C98();
  result = objc_getClass("ASCMiniProductPageView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000173B8();
  }

  qword_100025B30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002C98()
{
  v3[0] = 0;
  if (!qword_100025B38)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100002D98;
    v3[4] = &unk_100021070;
    v3[5] = v3;
    v4 = off_100021058;
    v5 = 0;
    qword_100025B38 = _sl_dlopen();
  }

  v0 = qword_100025B38;
  v1 = v3[0];
  if (!qword_100025B38)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100002D98(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100025B38 = result;
  return result;
}

Class sub_100002E0C(uint64_t a1)
{
  sub_100002C98();
  result = objc_getClass("ASCAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000173E0();
  }

  qword_100025B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100002E64(uint64_t a1)
{
  sub_100002C98();
  result = objc_getClass("ASCLockupRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100017408();
  }

  qword_100025B48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002EBC(uint64_t a1)
{
  v2 = sub_100002C98();
  result = dlsym(v2, "ASCLockupKindApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100025B50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002F0C(uint64_t a1)
{
  v2 = sub_100002C98();
  result = dlsym(v2, "ASCLockupContextAppStoreInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100025B58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002F5C(uint64_t a1)
{
  v2 = sub_100002C98();
  result = dlsym(v2, "ASCLockupContextAppDistributionInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100025B60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002FAC()
{
  swift_getObjectType();
  sub_100003360(&qword_1000252E8, &qword_100018E10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100018D50;
  *(v1 + 32) = sub_100017960();
  *(v1 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v2 = sub_100017E40();

  *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_traitChangeRegistration) = v2;

  return swift_unknownObjectRelease();
}

id sub_100003108()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MiniProductPageView(uint64_t a1)
{
  result = qword_100025270;
  if (!qword_100025270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003240(uint64_t a1)
{
  sub_100003308(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100003308(uint64_t a1)
{
  if (!qword_100025280)
  {
    sub_100017550();
    v1 = sub_100017ED0();
    if (!v2)
    {
      atomic_store(v1, &qword_100025280);
    }
  }
}

uint64_t sub_100003360(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_1000033A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_10000343C(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError, &unk_100018EF8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000034A8(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError, &unk_100018EF8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003514(void *a1, uint64_t a2)
{
  v4 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError, &unk_100018EF8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000035C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError, &unk_100018EF8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100018000();
  sub_100017CF0();
  return sub_100018010();
}

void *sub_1000036A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000036C8(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025310, type metadata accessor for LAError, &unk_10001904C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003734(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025310, type metadata accessor for LAError, &unk_10001904C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000037A4(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError, &unk_100018EF8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError, &unk_100018EF8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

id sub_100003898(void *a1)
{
  v2 = [a1 layer];
  v3 = objc_allocWithZone(UIColor);
  v8[4] = sub_100017124;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000033A8;
  v8[3] = &unk_1000211D0;
  v4 = _Block_copy(v8);
  v5 = [v3 initWithDynamicProvider:v4];
  _Block_release(v4);

  v6 = [v5 CGColor];

  [v2 setBorderColor:v6];
  return [a1 setNeedsDisplay];
}

uint64_t sub_1000039C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039E0(uint64_t a1)
{
  v2 = sub_100003360(&qword_1000252F0, &qword_100018E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100003B48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100003D00()
{
  result = qword_100025338;
  if (!qword_100025338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025338);
  }

  return result;
}

id sub_100003DEC(void *a1, void *a2)
{
  v3 = v2;
  v76 = a2;
  v5 = sub_1000176E0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v72 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v71 = v69 - v10;
  v11 = __chkstk_darwin(v9);
  v73 = v69 - v12;
  __chkstk_darwin(v11);
  v74 = v69 - v13;
  v14 = sub_100003360(&qword_100025558, &qword_100019240);
  __chkstk_darwin(v14 - 8);
  v16 = v69 - v15;
  v17 = sub_1000175C0();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin(v17);
  v77 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v3[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_primaryButton;
  *&v3[v20] = [objc_opt_self() boldButton];
  v21 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_secondaryButton;
  *&v3[v21] = [objc_opt_self() linkButton];
  v22 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad;
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v3[v22] = v24 == 1;
  v25 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  v26 = *(v6 + 16);
  v27 = v5;
  (v26)(&v3[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context], a1, v5);
  v28 = v76;
  *&v3[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_customBodyView] = v76;
  v29 = v28;
  v30 = v78;
  v75 = v29;
  v76 = a1;
  sub_100017670();
  v31 = v79;
  if ((*(v30 + 48))(v16, 1, v79) == 1)
  {
    sub_10000C4D4(v16, &qword_100025558, &qword_100019240);
    v32 = v74;
    (v26)(v74, &v3[v25], v27);
    sub_1000176A0();
    v33 = *(v6 + 8);
    v33(v32, v27);
    v79 = sub_100017D00();

    v34 = v73;
    (v26)(v73, &v3[v25], v27);
    sub_1000176D0();
    v36 = v35;
    v33(v34, v27);
    if (v36)
    {
      v37 = sub_100017D00();
    }

    else
    {
      v37 = 0;
    }

    v60 = type metadata accessor for ConfirmationSheetViewController(0);
    v82.receiver = v3;
    v82.super_class = v60;
    v61 = v79;
    v62 = objc_msgSendSuper2(&v82, "initWithTitle:detailText:symbolName:contentLayout:", v79, v37, 0, 3);

    v33(v76, v27);
  }

  else
  {
    v69[1] = v6 + 16;
    v70 = v6;
    v38 = v25;
    v73 = v26;
    v69[0] = v27;
    (*(v30 + 32))(v77, v16, v31);
    v39 = sub_1000175B0();
    if (v39 == 2 || (v39 & 1) == 0)
    {
      v54 = v73;
      v53 = v74;
      v46 = v69[0];
      (v73)(v74, &v3[v25], v69[0]);
      sub_1000176A0();
      v55 = *(v70 + 8);
      v70 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v55(v53, v46);
      v48 = sub_100017D00();

      v56 = v72;
      v54(v72, &v3[v25], v46);
      sub_1000176D0();
      v58 = v57;
      v59 = v56;
      v47 = v55;
      v55(v59, v46);
      if (v58)
      {
        v52 = sub_100017D00();
      }

      else
      {
        v52 = 0;
      }

      v63 = v77;
      sub_1000175A0();
      v64 = sub_100017D00();

      v65 = type metadata accessor for ConfirmationSheetViewController(0);
      v81.receiver = v3;
      v81.super_class = v65;
      v66 = objc_msgSendSuper2(&v81, "initWithTitle:detailText:symbolName:contentLayout:", v48, v52, v64, 3);
      v44 = v75;
    }

    else
    {
      v40 = [objc_opt_self() tintColor];
      v41 = [objc_opt_self() configurationWithHierarchicalColor:v40];

      v42 = v41;
      sub_1000175A0();
      v43 = sub_100017D00();

      v44 = [objc_opt_self() systemImageNamed:v43 withConfiguration:v42];

      v72 = v42;
      v45 = v74;
      v46 = v69[0];
      (v73)(v74, &v3[v38], v69[0]);
      sub_1000176A0();
      v47 = *(v70 + 8);
      v70 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47(v45, v46);
      v48 = sub_100017D00();

      v49 = v71;
      (v73)(v71, &v3[v38], v46);
      sub_1000176D0();
      v51 = v50;
      v47(v49, v46);
      if (v51)
      {
        v52 = sub_100017D00();
      }

      else
      {
        v52 = 0;
      }

      v67 = type metadata accessor for ConfirmationSheetViewController(0);
      v80.receiver = v3;
      v80.super_class = v67;
      v66 = objc_msgSendSuper2(&v80, "initWithTitle:detailText:icon:contentLayout:", v48, v52, v44, 3);

      v63 = v77;
      v64 = v72;
    }

    v62 = v66;
    v47(v76, v46);
    (*(v78 + 8))(v63, v79);
  }

  return v62;
}

id sub_1000045E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConfirmationSheetViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ConfirmationSheetViewController(uint64_t a1)
{
  result = qword_100025488;
  if (!qword_100025488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004874()
{
  v1 = v0;
  v2 = sub_100003360(&qword_100025548, &unk_100019200);
  __chkstk_darwin(v2 - 8);
  v105 = &v99 - v3;
  v4 = sub_100017890();
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003360(&qword_100025528, &qword_1000191E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v99 - v7;
  v9 = sub_100017820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 navigationItem];
  [v12 setTitle:0];

  [v1 setModalInPresentation:1];
  [v1 setDefinesPresentationContext:1];
  if (v1[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad])
  {
    v13 = 88.0;
  }

  else
  {
    v13 = 38.0;
  }

  v14 = [v1 contentView];
  [v14 setDirectionalLayoutMargins:{0.0, v13, 0.0, v13}];

  v15 = [v1 headerView];
  v16 = [v15 bottomAnchor];

  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
  [v19 setActive:1];

  v20 = [v1 contentView];
  v21 = [v20 topAnchor];

  v108 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  sub_100017650();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C4D4(v8, &qword_100025528, &qword_1000191E8);
    v22 = &_ASCMiniProductPageViewDelegate__prots;
  }

  else
  {
    v23 = *(v10 + 32);
    v101 = v9;
    v23(v104, v8, v9);
    v24 = sub_10000556C();
    v100 = objc_opt_self();
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000190D0;
    v26 = [v24 topAnchor];
    v27 = [v26 constraintEqualToAnchor:v21 constant:4.0];

    *(v25 + 32) = v27;
    v28 = [v24 leadingAnchor];
    v29 = [v1 contentView];
    v30 = [v29 leadingAnchor];
    v103 = v21;
    v31 = v30;

    v32 = [v28 constraintEqualToAnchor:v31 constant:v13];
    *(v25 + 40) = v32;
    v33 = [v24 trailingAnchor];
    v34 = [v1 contentView];
    v35 = [v34 trailingAnchor];

    v36 = [v33 constraintLessThanOrEqualToAnchor:v35 constant:-v13];
    *(v25 + 48) = v36;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    isa = sub_100017D60().super.isa;

    [v100 activateConstraints:isa];

    v21 = [v24 bottomAnchor];
    (*(v10 + 8))(v104, v101);
    v22 = &_ASCMiniProductPageViewDelegate__prots;
  }

  v38 = sub_100017630();
  if (v38)
  {
    v39 = &_ASCMiniProductPageViewDelegate__prots;
    if (*(v38 + 16))
    {
      v40 = sub_100005B88(v38);

      v104 = objc_opt_self();
      sub_100003360(&qword_100025538, &qword_1000191F8);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1000190D0;
      v42 = [v40 topAnchor];
      v43 = [v42 constraintEqualToAnchor:v21 constant:16.0];

      *(v41 + 32) = v43;
      v44 = [v40 leadingAnchor];
      v45 = [v1 contentView];
      v46 = v21;
      v47 = [v45 leadingAnchor];

      v48 = [v44 constraintEqualToAnchor:v47 constant:v13];
      *(v41 + 40) = v48;
      v49 = [v40 trailingAnchor];
      v50 = [v1 contentView];
      v51 = [v50 trailingAnchor];

      v22 = &_ASCMiniProductPageViewDelegate__prots;
      v52 = [v49 constraintEqualToAnchor:v51 constant:-v13];

      *(v41 + 48) = v52;
      sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
      v53 = sub_100017D60().super.isa;

      [v104 activateConstraints:v53];

      v21 = [v40 bottomAnchor];
    }

    else
    {
    }
  }

  else
  {
    v39 = &_ASCMiniProductPageViewDelegate__prots;
  }

  v54 = *&v1[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_customBodyView];
  if (v54)
  {
    v55 = v54;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [v1 contentView];
    [v56 addSubview:v55];

    v104 = objc_opt_self();
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1000190D0;
    v58 = v55;
    v59 = [v58 v39[312].count];
    v60 = [v59 constraintEqualToAnchor:v21 constant:16.0];

    *(v57 + 32) = v60;
    v61 = [v58 leadingAnchor];
    v62 = [v1 contentView];
    v63 = v21;
    v64 = [v62 leadingAnchor];

    v65 = [v61 constraintEqualToAnchor:v64 constant:v13];
    *(v57 + 40) = v65;
    v66 = [v58 trailingAnchor];
    v22 = &_ASCMiniProductPageViewDelegate__prots;
    v67 = [v1 contentView];
    v68 = [v67 trailingAnchor];

    v69 = [v66 constraintEqualToAnchor:v68 constant:-v13];
    *(v57 + 48) = v69;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    v70 = sub_100017D60().super.isa;

    [v104 activateConstraints:v70];

    v21 = [v58 bottomAnchor];
  }

  v71 = v105;
  sub_100017690();
  v72 = v106;
  v73 = v107;
  if ((*(v106 + 48))(v71, 1, v107) == 1)
  {

    return sub_10000C4D4(v71, &qword_100025548, &unk_100019200);
  }

  else
  {
    v75 = v102;
    (*(v72 + 32))(v102, v71, v73);
    v76 = v22;
    v77 = sub_100017870();
    v79 = v78;
    v80 = sub_100017880();
    v103 = v21;
    v81 = v80;
    v83 = v82;
    v84 = sub_100017840();
    v86 = v85;
    v87 = sub_100017850();
    v88 = sub_100006A34(v77, v79, v81, v83, v84, v86, v87 & 1);

    v89 = objc_opt_self();
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1000190E0;
    v91 = [v88 topAnchor];
    v92 = v103;
    v93 = [v91 constraintEqualToAnchor:v103 constant:24.0];

    *(v90 + 32) = v93;
    v94 = [v88 v76[297].count];
    v95 = [v1 contentView];
    v96 = [v95 v76[297].count];

    v97 = [v94 constraintEqualToAnchor:v96];
    *(v90 + 40) = v97;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    v98 = sub_100017D60().super.isa;

    [v89 activateConstraints:v98];

    return (*(v106 + 8))(v75, v107);
  }
}

id sub_10000556C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_100017D00();
  v4 = [objc_opt_self() systemImageNamed:v3];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = objc_opt_self();
  v7 = [v6 systemBlueColor];
  [v5 setTintColor:v7];

  v8 = v5;
  [v8 setContentMode:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [objc_allocWithZone(UILabel) init];
  sub_100017810();
  v10 = sub_100017D00();

  [v9 setText:v10];

  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v11];

  v12 = [v6 systemBlueColor];
  [v9 setTextColor:v12];

  v13 = v9;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"moreInformationPressed"];
  [v2 addGestureRecognizer:v41];
  [v2 setUserInteractionEnabled:1];
  [v2 addSubview:v8];
  [v2 addSubview:v13];
  v14 = [v1 contentView];
  [v14 addSubview:v2];

  v40 = objc_opt_self();
  sub_100003360(&qword_100025538, &qword_1000191F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000190F0;
  v16 = [v8 leadingAnchor];
  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v8 centerYAnchor];
  v20 = [v2 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v8 widthAnchor];
  v23 = [v22 constraintEqualToConstant:20.0];

  *(v15 + 48) = v23;
  v24 = [v8 heightAnchor];
  v25 = [v24 constraintEqualToConstant:20.0];

  *(v15 + 56) = v25;
  v26 = [v13 leadingAnchor];
  v27 = [v8 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];
  *(v15 + 64) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v2 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v15 + 72) = v31;
  v32 = [v13 trailingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v15 + 80) = v34;
  v35 = [v2 heightAnchor];
  v36 = [v13 heightAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v15 + 88) = v37;
  sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
  isa = sub_100017D60().super.isa;

  [v40 activateConstraints:isa];

  return v2;
}

id sub_100005B88(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = *(a1 + 16);
  if (!v5)
  {
    v91 = [v3 heightAnchor];
    v90 = [v91 constraintEqualToConstant:0.0];

    [v90 setActive:1];
    goto LABEL_9;
  }

  v104 = v3;
  v97 = objc_opt_self();
  v96 = objc_opt_self();
  v95 = objc_opt_self();
  v94 = objc_opt_self();
  v103 = objc_opt_self();
  v101 = 0;
  v6 = *(sub_100017750() - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v102 = v5 - 1;
  v93 = *(v6 + 72);
  while (1)
  {
    v105 = [objc_allocWithZone(UIView) init];
    [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_allocWithZone(UIImageView) init];
    v14 = [v97 systemBlueColor];
    v15 = [v96 configurationWithHierarchicalColor:v14];

    sub_100017730();
    v16 = v15;
    v17 = sub_100017D00();

    v18 = [v95 _systemImageNamed:v17 withConfiguration:v16];

    v100 = v16;
    [v13 setImage:v18];

    v106 = v13;
    [v106 setContentMode:1];
    [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_allocWithZone(UIView) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [objc_allocWithZone(UILabel) init];
    sub_100017740();
    v21 = sub_100017D00();

    [v20 setText:v21];

    v22 = [v94 preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v20 setFont:v22];

    v23 = [v97 labelColor];
    [v20 setTextColor:v23];

    [v20 setNumberOfLines:0];
    v24 = v20;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [objc_allocWithZone(UILabel) init];
    v98 = v7;
    sub_100017710();
    v26 = sub_100017D00();

    [v25 setText:v26];

    v27 = [v94 preferredFontForTextStyle:UIFontTextStyleBody];
    [v25 setFont:v27];

    v28 = [v97 secondaryLabelColor];
    [v25 setTextColor:v28];

    [v25 setNumberOfLines:0];
    v29 = v25;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v24];
    [v19 addSubview:v29];
    [v105 addSubview:v106];
    [v105 addSubview:v19];
    [v104 addSubview:v105];
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100019100;
    v31 = [v24 topAnchor];
    v32 = [v19 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v30 + 32) = v33;
    v34 = [v24 leadingAnchor];
    v35 = [v19 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v30 + 40) = v36;
    v37 = [v24 trailingAnchor];
    v38 = [v19 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v30 + 48) = v39;
    v40 = [v29 topAnchor];
    v41 = [v24 bottomAnchor];

    v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];
    *(v30 + 56) = v42;
    v43 = [v29 leadingAnchor];
    v44 = [v19 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v30 + 64) = v45;
    v46 = [v29 trailingAnchor];
    v47 = [v19 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v30 + 72) = v48;
    v49 = [v29 bottomAnchor];
    v99 = v29;

    v50 = [v19 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v30 + 80) = v51;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    isa = sub_100017D60().super.isa;

    [v103 activateConstraints:isa];

    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000190F0;
    v54 = [v106 leadingAnchor];
    v55 = [v105 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v53 + 32) = v56;
    v57 = [v106 topAnchor];
    v58 = [v105 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v53 + 40) = v59;
    v60 = [v106 widthAnchor];
    v61 = [v60 constraintEqualToConstant:36.0];

    *(v53 + 48) = v61;
    v62 = [v106 heightAnchor];
    v63 = [v62 constraintEqualToConstant:36.0];

    *(v53 + 56) = v63;
    v64 = [v19 leadingAnchor];
    v65 = [v106 trailingAnchor];

    v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];
    *(v53 + 64) = v66;
    v67 = [v19 topAnchor];
    v68 = [v105 topAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v53 + 72) = v69;
    v70 = [v19 trailingAnchor];
    v71 = [v105 trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v53 + 80) = v72;
    v73 = [v19 bottomAnchor];
    v74 = [v105 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v53 + 88) = v75;
    v76 = sub_100017D60().super.isa;

    [v103 activateConstraints:v76];

    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000190E0;
    v78 = [v105 leadingAnchor];
    v79 = [v104 leadingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v77 + 32) = v80;
    v81 = [v105 trailingAnchor];
    v82 = [v104 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v77 + 40) = v83;
    v84 = sub_100017D60().super.isa;

    [v103 activateConstraints:v84];

    if (v101)
    {
      break;
    }

    v8 = [v105 topAnchor];
    v9 = [v104 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setActive:1];
    v11 = v102;
    v12 = &_ASCMiniProductPageViewDelegate__prots;
    if (!v102)
    {
      goto LABEL_7;
    }

LABEL_4:
    v102 = v11 - 1;
    v7 = v98 + v93;
    v101 = v105;
  }

  v85 = [v105 topAnchor];
  v86 = [v101 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:24.0];

  [v87 setActive:1];
  v11 = v102;
  v12 = &_ASCMiniProductPageViewDelegate__prots;
  if (v102)
  {
    goto LABEL_4;
  }

LABEL_7:
  v3 = v104;
  v88 = [v104 v12[297].count];
  v89 = [v105 v12[297].count];
  v90 = [v88 constraintEqualToAnchor:v89];

  [v90 setActive:1];
LABEL_9:

  return v3;
}

char *sub_100006A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = sub_1000176C0();
  v16 = v15;
  v52 = type metadata accessor for MiniProductPageView(0);
  v17 = objc_allocWithZone(v52);
  *&v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_traitChangeRegistration] = 0;
  v18 = OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_context;
  v19 = sub_100017550();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_itemID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_versionID];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_distributorID];
  *v22 = a5;
  v22[1] = a6;
  v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_isForAppStore] = a7;
  v23 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_logKey];
  *v23 = v14;
  v23[1] = v16;
  v24 = objc_allocWithZone(AppStoreComponentsWrapper);
  v25 = v8;

  v26 = sub_100017D00();

  v27 = [v24 initWithLogKey:v26];

  *&v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_appStoreComponentsWrapper] = v27;
  v53.receiver = v17;
  v53.super_class = v52;
  v28 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10000AAB8(v8, v28);
  sub_100002FAC();
  v29 = v28;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v25 contentView];
  [v30 addSubview:v29];

  if (*(v25 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad) == 1)
  {
    v31 = [v25 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v29 leadingAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:-88.0];

    LODWORD(v35) = 1140457472;
    [v34 setPriority:v35];
    [v34 setActive:1];
    v36 = [v25 contentView];
    v37 = [v36 centerXAnchor];

    v38 = [v29 centerXAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setActive:1];
    v40 = [v29 widthAnchor];
    v41 = [v40 constraintLessThanOrEqualToConstant:360.0];

    [v41 setActive:1];
  }

  else
  {
    v42 = [v29 leadingAnchor];
    v43 = [v25 contentView];
    v44 = [v43 leadingAnchor];

    v45 = [v42 constraintEqualToAnchor:v44 constant:24.0];
    [v45 setActive:1];

    v46 = [v29 trailingAnchor];
    v47 = [v25 contentView];
    v48 = [v47 trailingAnchor];

    v41 = [v46 constraintEqualToAnchor:v48 constant:-24.0];
    [v41 setActive:1];
  }

  return v29;
}

void sub_100006F24()
{
  v1 = v0;
  v2 = sub_100003360(&qword_100025530, &qword_1000191F0);
  v3 = __chkstk_darwin(v2 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v70 = &v62 - v6;
  v7 = __chkstk_darwin(v5);
  v64 = &v62 - v8;
  __chkstk_darwin(v7);
  v63 = &v62 - v9;
  v68 = sub_100017770();
  v10 = *(v68 - 8);
  v11 = __chkstk_darwin(v68);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v62 - v13;
  v14 = sub_100017590();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v0[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_primaryButton];
  v19 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  sub_100017640();
  sub_100017570();
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = sub_100017D00();

  [v18 setTitle:v21 forState:0];

  v71 = v1;
  v69 = v19;
  sub_100017640();
  v22 = v66;
  sub_100017580();
  v20(v17, v14);
  v24 = v67;
  v23 = v68;
  (*(v10 + 104))(v67, enum case for ConfirmationSheetButtonStyle.white(_:), v68);
  LOBYTE(v21) = sub_100017760();
  v25 = *(v10 + 8);
  v25(v24, v23);
  v25(v22, v23);
  if (v21)
  {
    v26 = v63;
    sub_100017EB0();
    v27 = sub_100017EA0();
    v28 = *(*(v27 - 8) + 48);
    if (v28(v26, 1, v27))
    {
      sub_10000C2C4(v26, v70, &qword_100025530, &qword_1000191F0);
      sub_100017EC0();
      sub_10000C4D4(v26, &qword_100025530, &qword_1000191F0);
    }

    else
    {
      v29 = [objc_opt_self() systemBlueColor];
      sub_100017E90();
      sub_100017EC0();
    }

    v30 = v64;
    sub_100017EB0();
    if (v28(v30, 1, v27))
    {
      sub_10000C2C4(v30, v70, &qword_100025530, &qword_1000191F0);
      sub_100017EC0();
      sub_10000C4D4(v30, &qword_100025530, &qword_1000191F0);
    }

    else
    {
      v31 = [objc_opt_self() clearColor];
      sub_100017E80();
      sub_100017EC0();
    }
  }

  v32 = v71;
  [v18 addTarget:v71 action:"primaryButtonPressed" forControlEvents:64];
  v33 = [v32 buttonTray];
  [v33 addButton:v18];

  sub_100017660();
  v34 = &_ASCMiniProductPageViewDelegate__prots;
  if (v35)
  {
    v36 = *&v32[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_secondaryButton];
    v37 = sub_100017D00();

    [v36 setTitle:v37 forState:0];

    v38 = v65;
    sub_100017EB0();
    v39 = sub_100017EA0();
    if ((*(*(v39 - 8) + 48))(v38, 1, v39))
    {
      sub_10000C2C4(v38, v70, &qword_100025530, &qword_1000191F0);
      sub_100017EC0();
      v32 = v71;
      sub_10000C4D4(v38, &qword_100025530, &qword_1000191F0);
    }

    else
    {
      v40 = [objc_opt_self() systemBlueColor];
      sub_100017E90();
      sub_100017EC0();
    }

    [v36 addTarget:v32 action:"secondaryButtonPressed" forControlEvents:64];
    v41 = [v32 buttonTray];
    [v41 addButton:v36];

    v42 = [v18 heightAnchor];
    v43 = [v36 heightAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    v34 = &_ASCMiniProductPageViewDelegate__prots;
    [v44 setActive:1];

    v32 = v71;
  }

  v45 = v32[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad];
  v46 = [v32 buttonTray];
  v47 = v46;
  if (v45 == 1)
  {
    v48 = [v46 widthAnchor];

    v49 = [v48 constraintLessThanOrEqualToConstant:360.0];
    [v49 v34[292].count];

    v50 = *&v32[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_secondaryButton];
    v51 = [v50 superview];
    if (v51)
    {

      v52 = [v50 bottomAnchor];
    }

    else
    {
      v52 = [v18 bottomAnchor];
    }

    v53 = [v32 buttonTray];
    v59 = [v53 bottomAnchor];

    v60 = [v52 constraintEqualToAnchor:v59 constant:-24.0];
  }

  else
  {
    v54 = [v46 leadingAnchor];

    v55 = [v18 leadingAnchor];
    v56 = v32;
    v57 = [v54 constraintEqualToAnchor:v55 constant:-24.0];

    [v57 v34[292].count];
    v58 = [v56 buttonTray];
    v52 = [v58 trailingAnchor];

    v59 = [v18 trailingAnchor];
    v60 = [v52 constraintEqualToAnchor:v59 constant:24.0];
  }

  v61 = v60;

  [v61 v34[292].count];
}

id sub_100007870()
{
  v0 = sub_100003360(&qword_100025500, &qword_1000191B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1000174E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003360(&qword_100025528, &qword_1000191E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_100017820();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017650();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000C4D4(v9, &qword_100025528, &qword_1000191E8);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_1000177F0();
  sub_1000174D0();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return sub_10000C4D4(v2, &qword_100025500, &qword_1000191B0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v16 = result;
      sub_1000174C0(v15);
      v18 = v17;
      [v16 openSensitiveURL:v17 withOptions:0];

      (*(v4 + 8))(v6, v3);
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100007C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100003360(&qword_100025550, &unk_100019520);
  v4[3] = swift_task_alloc();
  v5 = sub_100017830();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_100017DA0();
  v4[7] = sub_100017D90();
  v7 = sub_100017D70();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_100007D44, v7, v6);
}

uint64_t sub_100007D44()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100017680();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    v5 = v0[3];

    sub_10000C4D4(v5, &qword_100025550, &unk_100019520);
    v6 = v4 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
    v7 = *(v4 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v7)
    {
      v8 = *(v6 + 8);

      v7(1);
      sub_10000A854(v7, v8);
    }

    v9 = v0[2];
    v10 = [objc_opt_self() defaultCenter];
    [v10 removeObserver:v9 name:STRestrictionsPINControllerDidFinishNotification object:0];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_100007F2C;
    v14 = v0[6];

    return sub_10000861C(v14);
  }
}

uint64_t sub_100007F2C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10000804C, v3, v2);
}

uint64_t sub_10000804C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000080E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C2C4(a3, v25 - v10, &qword_100025A30, &qword_1000194F0);
  v12 = sub_100017DC0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C4D4(v11, &qword_100025A30, &qword_1000194F0);
  }

  else
  {
    sub_100017DB0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100017D70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100017D20() + 32;
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

      sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);

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

  sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);
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

void sub_100008514()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

    v2(0);
    sub_10000A854(v2, v3);
  }

  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v1 name:STRestrictionsPINControllerDidFinishNotification object:0];
}

uint64_t sub_10000861C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000177E0();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_100003360(&qword_100025500, &qword_1000191B0);
  v2[11] = swift_task_alloc();
  v4 = sub_100017540();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_100017830();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  sub_100017DA0();
  v2[18] = sub_100017D90();
  v6 = sub_100017D70();
  v2[19] = v6;
  v2[20] = v7;

  return _swift_task_switch(sub_100008834, v6, v7);
}

uint64_t sub_100008834()
{
  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[7].super_class;
  receiver[2](super_class, v0[3].receiver, v3);
  v4 = (receiver[11])(super_class, v3);
  if (v4 == enum case for ConfirmationSheetPostPrimaryButtonAction.osloAuthentication(_:))
  {
    v5 = v0[8].super_class;
    v6 = v0[7].receiver;
    v7 = v0[6].receiver;
    v8 = v0[6].super_class;
    (*(v0[8].receiver + 12))(v5, v0[7].super_class);
    (*(v8 + 4))(v6, v5, v7);
    v9 = [objc_allocWithZone(LAContext) init];
    v0[2].receiver = 0;
    v0[10].super_class = v9;
    LODWORD(v7) = [(objc_class *)v9 canEvaluatePolicy:1005 error:&v0[2]];
    v10 = v0[2].receiver;
    v0[11].receiver = v10;
    v11 = v10;
    if (v7)
    {
      v12 = v0[5].super_class;
      v13 = sub_100017510();
      v92 = v14;
      v93 = v13;
      v91 = sub_100017500();
      v16 = v15;
      v17 = sub_100017520();
      v19 = v18;
      sub_100017530();
      v20 = type metadata accessor for OsloAuthenticationTask(0);
      v21 = objc_allocWithZone(v20);
      v22 = OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalizedContinuation;
      v23 = sub_100003360(&unk_100025980, &qword_1000191C8);
      (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
      v21[OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalResult] = 0;
      v24 = &v21[OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent];
      v25 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
      sub_10000C2C4(v12, v24 + *(v25 + 28), &qword_100025500, &qword_1000191B0);
      *v24 = v93;
      v24[1] = v92;
      v24[2] = v91;
      v24[3] = v16;
      v24[4] = v17;
      v24[5] = v19;
      v0[1].receiver = v21;
      v0[1].super_class = v20;
      v0[11].super_class = objc_msgSendSuper2(v0 + 1, "init");
      sub_10000C4D4(v12, &qword_100025500, &qword_1000191B0);
      v26 = swift_task_alloc();
      v0[12].receiver = v26;
      *v26 = v0;
      v26[1] = sub_100009370;

      return sub_1000139F4();
    }

    v34 = v11;

    if (v34)
    {
      type metadata accessor for Code(0);
      v0[2].super_class = -5;
      sub_10000BF78();
      v35 = v34;
      if (sub_100017430())
      {
        if (qword_1000251F0 != -1)
        {
          swift_once();
        }

        v36 = sub_1000178E0();
        sub_10000BEDC(v36, qword_100025420);
        v37 = sub_1000178C0();
        v38 = sub_100017E20();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Passcode not set, continuing without additional confirmation", v39, 2u);
        }

        v40 = v0[3].super_class;

        v41 = v40 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
        v42 = *(v40 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
        if (v42)
        {
          v43 = *(v41 + 1);

          v42(1);
          sub_10000A854(v42, v43);
        }

        v45 = v0[6].super_class;
        v44 = v0[7].receiver;
        v46 = v0[6].receiver;
        v47 = v0[3].super_class;
        v48 = [objc_opt_self() defaultCenter];
        [v48 removeObserver:v47 name:STRestrictionsPINControllerDidFinishNotification object:0];

        (*(v45 + 1))(v44, v46);
LABEL_47:

        v90 = v0->super_class;

        return v90();
      }
    }

    if (qword_1000251F0 != -1)
    {
      swift_once();
    }

    v71 = sub_1000178E0();
    sub_10000BEDC(v71, qword_100025420);
    v72 = sub_1000178C0();
    v73 = sub_100017E00();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[6].super_class;
    v76 = v0[7].receiver;
    v77 = v0[6].receiver;
    if (v74)
    {
      v94 = v0[7].receiver;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138543362;
      *(v78 + 4) = v34;
      *v79 = v10;
      v34 = v34;
      _os_log_impl(&_mh_execute_header, v72, v73, "Error evaluating LAPolicyOslo policy: %{public}@", v78, 0xCu);
      sub_10000C4D4(v79, &qword_100025508, &qword_1000191C0);

      (*(v75 + 1))(v94, v77);
    }

    else
    {

      (*(v75 + 1))(v76, v77);
    }

    goto LABEL_47;
  }

  if (v4 != enum case for ConfirmationSheetPostPrimaryButtonAction.localAuthentication(_:))
  {
    v49 = enum case for ConfirmationSheetPostPrimaryButtonAction.parentScreentimePinCode(_:);
    v50 = v4;

    if (v50 == v49)
    {
      v51 = objc_opt_self();
      if ([v51 isRestrictionsPasscodeSet])
      {
        if (qword_1000251F0 != -1)
        {
          swift_once();
        }

        v52 = sub_1000178E0();
        sub_10000BEDC(v52, qword_100025420);
        v53 = sub_1000178C0();
        v54 = sub_100017E20();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Activating Screen Time Pin UI", v55, 2u);
        }

        v56 = v0[3].super_class;

        [v51 activateRemotePINUI];
        v57 = [objc_opt_self() defaultCenter];
        [v57 addObserver:v56 selector:"handleScreenTimePinCompletionNotificationWithNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];
      }

      else
      {
        if (qword_1000251F0 != -1)
        {
          swift_once();
        }

        v80 = sub_1000178E0();
        sub_10000BEDC(v80, qword_100025420);
        v81 = sub_1000178C0();
        v82 = sub_100017E20();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "Screen Time Passcode not set, continuing without it", v83, 2u);
        }

        v84 = v0[3].super_class;

        v85 = v84 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
        v86 = *(v84 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
        if (v86)
        {
          v87 = *(v85 + 1);

          v86(1);
          sub_10000A854(v86, v87);
        }

        v88 = v0[3].super_class;
        v89 = [objc_opt_self() defaultCenter];
        [v89 removeObserver:v88 name:STRestrictionsPINControllerDidFinishNotification object:0];
      }
    }

    else
    {
      if (qword_1000251F0 != -1)
      {
        swift_once();
      }

      v58 = sub_1000178E0();
      sub_10000BEDC(v58, qword_100025420);
      v59 = sub_1000178C0();
      v60 = sub_100017E00();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Unknown post primary button action", v61, 2u);
      }

      v62 = v0[3].super_class;

      v63 = v62 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
      v64 = *(v62 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
      if (v64)
      {
        v65 = *(v63 + 1);

        v64(1);
        sub_10000A854(v64, v65);
      }

      v67 = v0[8].receiver;
      v66 = v0[8].super_class;
      v68 = v0[7].super_class;
      v69 = v0[3].super_class;
      v70 = [objc_opt_self() defaultCenter];
      [v70 removeObserver:v69 name:STRestrictionsPINControllerDidFinishNotification object:0];

      v67[1](v66, v68);
    }

    goto LABEL_47;
  }

  v28 = v0[8].super_class;
  v30 = v0[4].super_class;
  v29 = v0[5].receiver;
  v31 = v0[4].receiver;
  (*(v0[8].receiver + 12))(v28, v0[7].super_class);
  (*(v30 + 4))(v29, v28, v31);
  v32 = swift_task_alloc();
  v0[12].super_class = v32;
  *v32 = v0;
  *(v32 + 1) = sub_100009694;
  v33 = v0[5].receiver;

  return sub_10000B040(v33);
}

uint64_t sub_100009370(char a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_1000094CC, v4, v3);
}

uint64_t sub_1000094CC()
{
  v1 = *(v0 + 208);

  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

      v3(1);
      sub_10000A854(v3, v4);
      v2 = *(v0 + 56);
    }

    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = [objc_opt_self() defaultCenter];
    [v11 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v5 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100009694(char a1)
{
  v2 = *v1;
  *(*v1 + 209) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_1000097F0, v4, v3);
}

uint64_t sub_1000097F0()
{
  v1 = *(v0 + 209);

  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

      v3(1);
      sub_10000A854(v3, v4);
      v2 = *(v0 + 56);
    }

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000099B8(uint64_t a1)
{
  result = sub_1000176E0();
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

void sub_100009A80(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = STRestrictionsPINControllerDidFinishNotification;
  [v5 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_100017CC0();

  *&v21 = sub_100017D10();
  *(&v21 + 1) = v10;

  sub_100017F00();
  if (!*(v9 + 16) || (v11 = sub_10000A750(v20), (v12 & 1) == 0))
  {

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v11;

  sub_10000A794(*(v9 + 56) + 32 * v13, v19);

  sub_10000A7F0(v20);
  sub_10000A844(v19, &v21);
  sub_10000C094(0, &qword_1000254F8, NSNumber_ptr);
  swift_dynamicCast();
  v14 = v18;
  if ([v18 BOOLValue])
  {
    v15 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v15)
    {
      v16 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

      v15(1);
      sub_10000A854(v15, v16);
    }

    v17 = [v4 defaultCenter];
    [v17 removeObserver:v2 name:v6 object:0];

    v14 = v17;
  }
}

uint64_t sub_100009D1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_100017EE0(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10000A9A4(*(a2 + 48) + 40 * v5, v9);
      v7 = sub_100017EF0();
      sub_10000A7F0(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100009DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000C038((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003360(&qword_100025520, &qword_1000191E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_100017CC0();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100009EF0()
{
  v0 = sub_1000178E0();
  sub_10000BF14(v0, qword_100025420);
  v1 = sub_10000BEDC(v0, qword_100025420);
  if (qword_1000251F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BEDC(v0, qword_100026288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100009FB8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A0B0;

  return v6(a1);
}

uint64_t sub_10000A0B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000A1A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000A274(v11, 0, 0, 1, a1, a2);
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
    sub_10000A794(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BFE8(v11);
  return v7;
}

unint64_t sub_10000A274(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A380(a5, a6);
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
    result = sub_100017F30();
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

char *sub_10000A380(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000A3CC(a1, a2);
  sub_10000A4FC(&off_1000211A8);
  return v3;
}

char *sub_10000A3CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000A5E8(v5, 0);
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

  result = sub_100017F30();
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
        v10 = sub_100017D50();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000A5E8(v10, 0);
        result = sub_100017F10();
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

uint64_t sub_10000A4FC(uint64_t result)
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

  result = sub_10000A65C(result, v11, 1, v3);
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

void *sub_10000A5E8(uint64_t a1, uint64_t a2)
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

  sub_100003360(&qword_100025518, &qword_1000191D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A65C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003360(&qword_100025518, &qword_1000191D8);
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

unint64_t sub_10000A750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100017EE0(*(v2 + 40));

  return sub_10000A8DC(a1, v4);
}

uint64_t sub_10000A794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A844(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A854(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000A864(uint64_t a1, uint64_t a2)
{
  sub_100018000();
  sub_100017D30();
  v4 = sub_100018010();

  return sub_10000AA00(a1, a2, v4);
}

unint64_t sub_10000A8DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000A9A4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100017EF0();
      sub_10000A7F0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000AA00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100017FB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10000AAB8(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_appStoreComponentsWrapper];
  v5 = sub_100017D00();
  if (*&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_versionID + 8])
  {
    v6 = sub_100017D00();
  }

  else
  {
    v6 = 0;
  }

  if (*&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_distributorID + 8])
  {
    v7 = sub_100017D00();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 lockupWithItemID:v5 versionID:v6 distributorID:v7 isForAppStore:a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_isForAppStore] delegate:a1];

  v9 = objc_allocWithZone(UIColor);
  v38 = sub_100017100;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000033A8;
  v37 = &unk_100021268;
  v10 = _Block_copy(&aBlock);
  v11 = [v9 initWithDynamicProvider:v10];
  _Block_release(v10);

  [v8 setBackgroundColor:v11];

  [a2 addSubview:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [a2 leadingAnchor];
  v13 = [v8 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];

  [v14 setActive:1];
  v15 = [a2 trailingAnchor];
  v16 = [v8 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:16.0];

  [v17 setActive:1];
  v18 = [a2 topAnchor];
  v19 = [v8 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-16.0];

  [v20 setActive:1];
  v21 = [a2 bottomAnchor];
  v22 = [v8 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];

  [v23 setActive:1];
  v24 = [a2 layer];
  [v24 setCornerRadius:20.0];

  v25 = [a2 layer];
  v26 = objc_allocWithZone(UIColor);
  v38 = sub_100017124;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000033A8;
  v37 = &unk_100021290;
  v27 = _Block_copy(&aBlock);
  v28 = [v26 initWithDynamicProvider:v27];
  _Block_release(v27);

  v29 = [v28 CGColor];

  [v25 setBorderColor:v29];
  v30 = [a2 layer];
  [v30 setBorderWidth:1.0];

  v31 = objc_allocWithZone(UIColor);
  v38 = sub_100017100;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000033A8;
  v37 = &unk_1000212B8;
  v32 = _Block_copy(&aBlock);
  v33 = [v31 initWithDynamicProvider:v32];
  _Block_release(v32);

  [a2 setBackgroundColor:v33];
}

uint64_t sub_10000B040(uint64_t a1)
{
  v1[22] = a1;
  sub_100017DA0();
  v1[23] = sub_100017D90();
  v2 = sub_100017D70();
  v1[24] = v2;
  v1[25] = v3;

  return _swift_task_switch(sub_10000B10C, v2, v3);
}

uint64_t sub_10000B10C()
{
  v1 = [objc_allocWithZone(LAContext) init];
  v0[26] = v1;
  sub_10000C094(0, &qword_1000254F8, NSNumber_ptr);
  isa = sub_100017E50(60).super.super.isa;
  [v1 setOptionMaxCredentialAge:isa];

  v0[10] = 0;
  LODWORD(isa) = [v1 canEvaluatePolicy:2 error:v0 + 10];
  v3 = v0[10];
  v0[27] = v3;
  v4 = v3;
  if (isa)
  {
    v5 = v0 + 18;
    sub_1000177D0();
    v6 = sub_100017D00();

    [v1 setLocalizedReason:v6];

    v0[10] = 0;
    v7 = [v1 evaluationMechanismsForPolicy:2 error:v0 + 10];
    v8 = v0[10];
    if (v7)
    {
      v9 = v7;
      v10 = sub_100017DD0();
      v11 = v8;

      *v5 = 1;
      sub_100017F00();
      v12 = sub_100009D1C((v0 + 10), v10);

      sub_10000A7F0((v0 + 10));
      if (v12)
      {
        sub_100017780();
        v13 = sub_100017D00();

        [v1 setOptionAuthenticationTitle:v13];

        sub_1000177A0();
        v14 = sub_100017D00();

        [v1 setLocalizedReason:v14];
      }
    }

    else
    {
      v22 = v8;
      sub_1000174A0();

      swift_willThrow();
    }

    sub_100017790();
    v23 = sub_100017D00();

    [v1 setOptionPasscodeTitle:v23];

    sub_1000177B0();
    v24 = sub_100017D00();

    [v1 setOptionPasswordAuthenticationReason:v24];

    v0[2] = v0;
    v0[7] = v5;
    v0[3] = sub_10000B72C;
    v25 = swift_continuation_init();
    v0[17] = sub_100003360(&qword_100025510, &qword_1000191D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100009DF4;
    v0[13] = &unk_100021240;
    v0[14] = v25;
    [v1 evaluatePolicy:2 options:0 reply:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  v15 = v4;

  if (!v15)
  {
    goto LABEL_17;
  }

  type metadata accessor for Code(0);
  v0[10] = -5;
  sub_10000BF78();
  v16 = v15;
  if ((sub_100017430() & 1) == 0)
  {

LABEL_17:
    if (qword_1000251F0 != -1)
    {
      swift_once();
    }

    v26 = sub_1000178E0();
    sub_10000BEDC(v26, qword_100025420);
    v21 = sub_1000178C0();
    v27 = sub_100017E00();
    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v15;
      *v29 = v3;
      v15 = v15;
      _os_log_impl(&_mh_execute_header, v21, v27, "Local Authentication failed when checking if deviceOwnerAuthentication can be evaluated: %@", v28, 0xCu);
      sub_10000C4D4(v29, &qword_100025508, &qword_1000191C0);
    }

    v20 = 0;
    v16 = v1;
    goto LABEL_22;
  }

  if (qword_1000251F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000178E0();
  sub_10000BEDC(v17, qword_100025420);
  v15 = sub_1000178C0();
  v18 = sub_100017E20();
  if (os_log_type_enabled(v15, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v15, v18, "Passcode not set, continuing without additional confirmation", v19, 2u);
  }

  v20 = 1;
  v21 = v16;
LABEL_22:

  v30 = v0[1];

  return v30(v20);
}

uint64_t sub_10000B72C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_10000BC04;
  }

  else
  {
    v5 = sub_10000B888;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000B888()
{
  v24 = v0;

  v1 = *(v0 + 144);
  if (v1)
  {
    *(v0 + 232) = 3;
    sub_100017F00();
    if (*(v1 + 16) && (v2 = sub_10000A750(v0 + 80), (v3 & 1) != 0))
    {
      sub_10000A794(*(v1 + 56) + 32 * v2, v0 + 144);
      sub_10000A7F0(v0 + 80);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 232) == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000A7F0(v0 + 80);
    }

    *(v0 + 232) = 1;
    sub_100017F00();
    if (*(v1 + 16) && (v4 = sub_10000A750(v0 + 80), (v5 & 1) != 0))
    {
      sub_10000A794(*(v1 + 56) + 32 * v4, v0 + 144);
      sub_10000A7F0(v0 + 80);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 232) == 1)
      {
LABEL_12:
        v6 = *(v0 + 216);

        v7 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      sub_10000A7F0(v0 + 80);
    }

    if (qword_1000251F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1000178E0();
    sub_10000BEDC(v8, qword_100025420);

    v9 = sub_1000178C0();
    v10 = sub_100017E00();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    if (v11)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = sub_100017CD0();
      v18 = v17;

      v19 = sub_10000A1A8(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed local authentication evaluation with results: %{public}s", v14, 0xCu);
      sub_10000BFE8(v15);
    }

    else
    {
    }
  }

  else
  {
    v20 = *(v0 + 216);
  }

  v7 = 0;
LABEL_22:
  v21 = *(v0 + 8);

  return v21(v7);
}

uint64_t sub_10000BC04()
{
  v1 = v0[27];
  v2 = v0[26];

  swift_willThrow();

  if (qword_1000251F0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000178E0();
  sub_10000BEDC(v3, qword_100025420);
  swift_errorRetain();
  v4 = sub_1000178C0();
  v5 = sub_100017E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not handle local authentication for confirmation sheet: %@", v6, 0xCu);
    sub_10000C4D4(v7, &qword_100025508, &qword_1000191C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10000BEDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000BF14(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10000BF78()
{
  result = qword_100025328;
  if (!qword_100025328)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025328);
  }

  return result;
}

uint64_t sub_10000BFE8(void *a1)
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

void *sub_10000C038(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C094(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000C0DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C1D0;

  return sub_100007C18(a1, v4, v5, v6);
}

uint64_t sub_10000C1D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000C2C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003360(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C32C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C540;

  return sub_100009FB8(a1, v4);
}

uint64_t sub_10000C41C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C1D0;

  return sub_100009FB8(a1, v4);
}

uint64_t sub_10000C4D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003360(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C54C()
{
  v0 = sub_1000178E0();
  sub_10000BF14(v0, qword_100026288);
  sub_10000BEDC(v0, qword_100026288);
  return sub_1000178D0();
}

id sub_10000C5C8(uint64_t a1)
{

  v1 = sub_100017D00();

  return v1;
}

uint64_t sub_10000C698@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003360(&qword_100025668, &qword_100019338);
  v3 = __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  type metadata accessor for ApprovalSheetView(0);
  v8 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10000C2C4(v7, v5, &qword_100025668, &qword_100019338);
  sub_100017BC0();
  return sub_10000C4D4(v7, &qword_100025668, &qword_100019338);
}

uint64_t sub_10000C7F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppStoreRemoteView();
  type metadata accessor for ApprovalSheetView(0);
  sub_100012298(&qword_100025660, 255, type metadata accessor for ApprovalSheetView, &unk_100019490);
  return sub_1000179B0();
}

uint64_t sub_10000C8BC()
{
  v0 = type metadata accessor for AppStoreRemoteView();
  v2 = sub_100012298(&qword_100025658, v1, type metadata accessor for AppStoreRemoteView, "M{");

  return ResponseUIExtension.configuration.getter(v0, v2);
}

uint64_t sub_10000C93C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100017A10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C2C4(v2, v10, &qword_100025820, &qword_100019570);
  if (v11 == 1)
  {
    return sub_100013210(v10, a1);
  }

  sub_100017E10();
  v9 = sub_100017B00();
  sub_1000178B0();

  sub_100017A00();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000CAAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppStoreRemoteView();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10000CAE0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v25 = sub_100003360(&qword_100025828, &qword_100019578);
  __chkstk_darwin(v25);
  v2 = &v24 - v1;
  v3 = sub_100003360(&qword_100025830, &qword_100019580);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v26 = sub_100003360(&qword_100025838, &qword_100019588);
  v6 = __chkstk_darwin(v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_100003360(&qword_100025668, &qword_100019338);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ApprovalSheetView(0);
  sub_100003360(&qword_100025710, "~3");
  sub_100017BD0();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000C4D4(v13, &qword_100025668, &qword_100019338);
    *v5 = sub_100017A30();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v18 = sub_100003360(&qword_100025840, &qword_100019590);
    sub_10000CF78(&v5[*(v18 + 44)]);
    sub_100017BF0();
    sub_1000179E0();
    sub_100013228(v5, v8, &qword_100025830, &qword_100019580);
    v19 = &v8[*(v26 + 36)];
    v20 = v33;
    *(v19 + 4) = v32;
    *(v19 + 5) = v20;
    *(v19 + 6) = v34;
    v21 = v29;
    *v19 = v28;
    *(v19 + 1) = v21;
    v22 = v31;
    *(v19 + 2) = v30;
    *(v19 + 3) = v22;
    sub_100013228(v8, v10, &qword_100025838, &qword_100019588);
    sub_100013290(v10, v2);
    swift_storeEnumTagMultiPayload();
    sub_100012298(&qword_1000257D0, 255, type metadata accessor for ApprovalSheetViewControllerWrapper, &unk_1000193C8);
    sub_100013300();
    sub_100017A40();
    return sub_1000133B8(v10);
  }

  else
  {
    sub_100013420(v13, v17, type metadata accessor for ApprovalSheetViewControllerWrapper);
    sub_100013488(v17, v2, type metadata accessor for ApprovalSheetViewControllerWrapper);
    swift_storeEnumTagMultiPayload();
    sub_100012298(&qword_1000257D0, 255, type metadata accessor for ApprovalSheetViewControllerWrapper, &unk_1000193C8);
    sub_100013300();
    sub_100017A40();
    return sub_1000134F0(v17);
  }
}

uint64_t sub_10000CF78@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_100017A60();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003360(&qword_100025858, &qword_100019598);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v42 = sub_100003360(&qword_100025860, &qword_1000195A0);
  v40 = *(v42 - 8);
  v9 = v40;
  v10 = __chkstk_darwin(v42);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v39 - v12;
  sub_1000179C0();
  sub_100017A50();
  sub_10001354C(&qword_100025868, &qword_100025858, &qword_100019598, &protocol conformance descriptor for ProgressView<A, B>);
  sub_100012298(&qword_100025870, 255, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
  sub_100017B90();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  sub_100017A20();
  v13 = sub_100017B60();
  v15 = v14;
  LOBYTE(v4) = v16;
  sub_100017B30();
  v17 = sub_100017B50();
  v19 = v18;
  LOBYTE(v6) = v20;

  sub_100013594(v13, v15, v4 & 1);

  sub_100017BB0();
  v21 = sub_100017B40();
  v23 = v22;
  v25 = v24;
  v39 = v26;

  sub_100013594(v17, v19, v6 & 1);

  LOBYTE(v5) = sub_100017B20();
  v25 &= 1u;
  LOBYTE(v50[0]) = v25;
  LOBYTE(v47) = 1;
  v27 = *(v9 + 16);
  v28 = v44;
  v29 = v41;
  v30 = v42;
  v27(v44, v41, v42);
  v31 = v43;
  v27(v43, v28, v30);
  v32 = &v31[*(sub_100003360(&qword_100025878, &qword_1000195A8) + 48)];
  *&v47 = v21;
  *(&v47 + 1) = v23;
  v33 = v23;
  LOBYTE(v48) = v25;
  *(&v48 + 1) = *v46;
  DWORD1(v48) = *&v46[3];
  v34 = v39;
  *(&v48 + 1) = v39;
  v49[0] = v5;
  *&v49[1] = *v45;
  *&v49[4] = *&v45[3];
  memset(&v49[8], 0, 32);
  v49[40] = 1;
  v35 = v48;
  *v32 = v47;
  *(v32 + 1) = v35;
  v36 = *&v49[16];
  *(v32 + 2) = *v49;
  *(v32 + 3) = v36;
  *(v32 + 57) = *&v49[25];
  sub_10000C2C4(&v47, v50, &qword_100025880, &qword_1000195B0);
  v37 = *(v40 + 8);
  v37(v29, v30);
  v50[0] = v21;
  v50[1] = v33;
  v51 = v25;
  *v52 = *v46;
  *&v52[3] = *&v46[3];
  v53 = v34;
  v54 = v5;
  *v55 = *v45;
  *&v55[3] = *&v45[3];
  v56 = 0u;
  v57 = 0u;
  v58 = 1;
  sub_10000C4D4(v50, &qword_100025880, &qword_1000195B0);
  return (v37)(v44, v30);
}

void sub_10000D4F4()
{
  v1 = v0;
  v2 = sub_1000178E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ApprovalSheetView(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100003360(&qword_1000257E8, &qword_1000194F8);
  __chkstk_darwin(v11 - 8);
  v13 = (&v31 - v12);
  sub_10000C93C(v34);
  sub_10000C038(v34, v34[3]);
  v14 = sub_100017970();
  if (v14)
  {
    v15 = v14;
    sub_10000BFE8(v34);
    sub_1000178F0();
    v16 = sub_100017910();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v13, 1, v16) == 1)
    {

      sub_10000C4D4(v13, &qword_1000257E8, &qword_1000194F8);
    }

    else
    {
      if ((*(v17 + 88))(v13, v16) == enum case for ATQuestion.TopicMetadata.contentAgeRestrictionException(_:))
      {
        (*(v17 + 96))(v13, v16);
        v18 = *v13;
        v19 = sub_100017DC0();
        (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
        v20 = v33;
        sub_100013488(v1, v33, type metadata accessor for ApprovalSheetView);
        sub_100017DA0();
        v21 = v18;
        v22 = v15;
        v23 = sub_100017D90();
        v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
        v26 = swift_allocObject();
        *(v26 + 16) = v23;
        *(v26 + 24) = &protocol witness table for MainActor;
        sub_100013420(v20, v26 + v24, type metadata accessor for ApprovalSheetView);
        *(v26 + v25) = v21;
        *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
        sub_1000080E4(0, 0, v10, &unk_100019508, v26);

        return;
      }

      (*(v17 + 8))(v13, v16);
    }
  }

  else
  {
    sub_10000BFE8(v34);
  }

  if (qword_100025200 != -1)
  {
    swift_once();
  }

  v27 = sub_10000BEDC(v2, qword_100025590);
  (*(v3 + 16))(v5, v27, v2);
  v28 = sub_1000178C0();
  v29 = sub_100017E00();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Missing question or askToTopicMetadata", v30, 2u);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100003360(&qword_100025668, &qword_100019338);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  sub_100003360(&qword_1000257F0, &qword_100019510);
  v9 = swift_task_alloc();
  v6[7] = v9;
  v10 = sub_1000176E0();
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = sub_100017DA0();
  v6[12] = sub_100017D90();
  v11 = swift_task_alloc();
  v6[13] = v11;
  *v11 = v6;
  v11[1] = sub_10000DBB8;

  return sub_10000DF10(v9, a5, a6);
}

uint64_t sub_10000DBB8()
{

  v1 = sub_100017D70();

  return _swift_task_switch(sub_10000DCF4, v1, v0);
}

uint64_t sub_10000DCF4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000C4D4(v0[7], &qword_1000257F0, &qword_100019510);
  }

  else
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    (*(v5 + 32))(v4, v0[7], v6);
    v11 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
    (*(v5 + 16))(&v7[*(v11 + 24)], v4, v6);
    sub_10000C93C(&v7[*(v11 + 28)]);
    *v7 = v9;
    *(v7 + 1) = v10;
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    type metadata accessor for ApprovalSheetView(0);
    sub_10000C2C4(v7, v8, &qword_100025668, &qword_100019338);
    v12 = v9;
    v13 = v10;
    sub_100003360(&qword_100025710, "~3");
    sub_100017BE0();
    sub_10000C4D4(v7, &qword_100025668, &qword_100019338);
    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000DF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[85] = v3;
  v4[84] = a3;
  v4[83] = a2;
  v4[82] = a1;
  v5 = sub_1000178E0();
  v4[86] = v5;
  v4[87] = *(v5 - 8);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  sub_100003360(&qword_100025550, &unk_100019520);
  v4[91] = swift_task_alloc();
  v6 = sub_100017770();
  v4[92] = v6;
  v4[93] = *(v6 - 8);
  v4[94] = swift_task_alloc();
  sub_100017590();
  v4[95] = swift_task_alloc();
  sub_100003360(&qword_100025548, &unk_100019200);
  v4[96] = swift_task_alloc();
  sub_100003360(&qword_100025558, &qword_100019240);
  v4[97] = swift_task_alloc();
  v7 = sub_1000177E0();
  v4[98] = v7;
  v4[99] = *(v7 - 8);
  v4[100] = swift_task_alloc();
  v8 = sub_100017890();
  v4[101] = v8;
  v4[102] = *(v8 - 8);
  v4[103] = swift_task_alloc();
  v9 = sub_1000174E0();
  v4[104] = v9;
  v4[105] = *(v9 - 8);
  v4[106] = swift_task_alloc();
  sub_100003360(&qword_100025500, &qword_1000191B0);
  v4[107] = swift_task_alloc();
  v10 = sub_100017620();
  v4[108] = v10;
  v4[109] = *(v10 - 8);
  v4[110] = swift_task_alloc();
  v11 = sub_100017700();
  v4[111] = v11;
  v4[112] = *(v11 - 8);
  v4[113] = swift_task_alloc();
  sub_100003360(&qword_1000257F8, &unk_100019530);
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v12 = sub_1000175F0();
  v4[116] = v12;
  v4[117] = *(v12 - 8);
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  sub_100003360(&qword_100025528, &qword_1000191E8);
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  sub_100017DA0();
  v4[135] = sub_100017D90();
  v14 = sub_100017D70();
  v4[136] = v14;
  v4[137] = v13;

  return _swift_task_switch(sub_10000E4EC, v14, v13);
}

uint64_t sub_10000E4EC()
{
  v1 = sub_100017920();
  v2 = v1;
  v121 = v0;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100017F50())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100017F20();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (sub_100017940() == 0x65766F72707061 && v8 == 0xE700000000000000)
      {

LABEL_15:

        goto LABEL_20;
      }

      v9 = sub_100017FB0();

      if (v9)
      {
        goto LABEL_15;
      }

      ++v4;
      if (v7 == i)
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

  v6 = 0;
LABEL_20:
  v0[138] = v6;
  v10 = sub_100017920();
  v11 = v10;
  v115 = v6;
  if (v10 >> 62)
  {
    goto LABEL_37;
  }

  for (j = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100017F50())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_100017F20();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (sub_100017940() == 0x656E696C636564 && v17 == 0xE700000000000000)
      {

LABEL_34:

        goto LABEL_39;
      }

      v18 = sub_100017FB0();

      if (v18)
      {
        goto LABEL_34;
      }

      ++v13;
      if (v16 == j)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  v15 = 0;
LABEL_39:
  v113 = v15;
  v19 = v121;
  v121[139] = v15;
  v20 = v121[134];
  v21 = sub_100017820();
  v121[140] = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v121[141] = v23;
  v121[142] = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v20, 1, 1, v21);
  v121[78] = &_swiftEmptyArrayStorage;
  if (sub_100017C70())
  {
    v24 = sub_100017C30();
    sub_100003360(&qword_100025800, &qword_100019540);
    if (v24)
    {
      v109 = v121[134];
      v117 = v121[117];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100019270;
      *(inited + 32) = 0x6F74736575716572;
      *(inited + 40) = 0xE900000000000072;
      *(inited + 48) = sub_100017C90();
      *(inited + 56) = v25;
      *(inited + 64) = 0x656372756F73;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = sub_100017C10();
      *(inited + 88) = v26;
      sub_10001308C(inited);
      swift_setDeallocating();
      sub_100003360(&qword_100025808, &qword_100019548);
      swift_arrayDestroy();
      sub_1000175D0();
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_100018D50;
      *(v27 + 32) = 0x676E69746172;
      *(v27 + 40) = 0xE600000000000000;
      *(v27 + 48) = sub_100017C40();
      *(v27 + 56) = v28;
      sub_10001308C(v27);
      swift_setDeallocating();
      sub_10000C4D4(v27 + 32, &qword_100025808, &qword_100019548);
      sub_1000175D0();
      sub_100003360(&qword_100025810, &unk_100019550);
      v29 = *(v117 + 72);
      LODWORD(inited) = *(v117 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100019280;
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      v118 = v29;
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      sub_1000112B4(v31);
      sub_10000C4D4(v109, &qword_100025528, &qword_1000191E8);
      v23(v109, 1, 1, v21);
      v32 = 1;
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v120 = v121[128];
      v53 = v121[117];
      v107 = v121[129];
      v111 = v121[116];
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_100019260;
      *(v54 + 32) = 0x6F74736575716572;
      *(v54 + 40) = 0xE900000000000072;
      *(v54 + 48) = sub_100017C90();
      *(v54 + 56) = v55;
      *(v54 + 64) = 0x656D614E707061;
      *(v54 + 72) = 0xE700000000000000;
      *(v54 + 80) = sub_100017C60();
      *(v54 + 88) = v56;
      *(v54 + 96) = 0x656372756F73;
      *(v54 + 104) = 0xE600000000000000;
      *(v54 + 112) = sub_100017C50();
      *(v54 + 120) = v57;
      sub_10001308C(v54);
      swift_setDeallocating();
      sub_100003360(&qword_100025808, &qword_100019548);
      swift_arrayDestroy();
      sub_1000175D0();
      v58 = swift_initStackObject();
      *(v58 + 16) = xmmword_100019270;
      *(v58 + 32) = 0x676E69746172;
      *(v58 + 40) = 0xE600000000000000;
      *(v58 + 48) = sub_100017C40();
      *(v58 + 56) = v59;
      *(v58 + 64) = 0x65706F6C65766564;
      *(v58 + 72) = 0xE900000000000072;
      *(v58 + 80) = sub_100017C10();
      *(v58 + 88) = v60;
      sub_10001308C(v58);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1000175D0();
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      (*(v53 + 16))(v120, v107, v111);
      v61 = sub_100012EB4(0, 1, 1, &_swiftEmptyArrayStorage);
      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      if (v63 >= v62 >> 1)
      {
        v61 = sub_100012EB4((v62 > 1), v63 + 1, 1, v61);
      }

      v19 = v121;
      v64 = v121[129];
      v65 = v121[128];
      v66 = v121[117];
      v67 = v121[116];
      v68 = v121[115];
      *(v61 + 2) = v63 + 1;
      v69 = *(v66 + 32);
      v66 += 32;
      inited = *(v66 + 48);
      v118 = *(v66 + 40);
      v69(&v61[((inited + 32) & ~inited) + v118 * v63], v65, v67);
      v121[78] = v61;
      v69(v68, v64, v67);
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }
  }

  else
  {
    v119 = v121[126];
    v35 = v121[117];
    v106 = v121[127];
    v110 = v121[116];
    sub_100003360(&qword_100025800, &qword_100019540);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100019260;
    *(v36 + 32) = 0x6F74736575716572;
    *(v36 + 40) = 0xE900000000000072;
    *(v36 + 48) = sub_100017C90();
    *(v36 + 56) = v37;
    *(v36 + 64) = 0x656D614E707061;
    *(v36 + 72) = 0xE700000000000000;
    *(v36 + 80) = sub_100017C60();
    *(v36 + 88) = v38;
    *(v36 + 96) = 0x656372756F73;
    *(v36 + 104) = 0xE600000000000000;
    *(v36 + 112) = sub_100017C50();
    *(v36 + 120) = v39;
    sub_10001308C(v36);
    swift_setDeallocating();
    sub_100003360(&qword_100025808, &qword_100019548);
    swift_arrayDestroy();
    sub_1000175D0();
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_100019270;
    *(v40 + 32) = 0x676E69746172;
    *(v40 + 40) = 0xE600000000000000;
    *(v40 + 48) = sub_100017C40();
    *(v40 + 56) = v41;
    *(v40 + 64) = 0x6C7074656B72616DLL;
    *(v40 + 72) = 0xEF656D614E656361;
    *(v40 + 80) = sub_100017C50();
    *(v40 + 88) = v42;
    sub_10001308C(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000175D0();
    v105 = sub_100017C20();
    v34 = v43;
    sub_10001308C(&_swiftEmptyArrayStorage);
    sub_1000175D0();
    (*(v35 + 16))(v119, v106, v110);
    v44 = sub_100012EB4(0, 1, 1, &_swiftEmptyArrayStorage);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_100012EB4((v45 > 1), v46 + 1, 1, v44);
    }

    v19 = v121;
    v47 = v121[127];
    v48 = v121[126];
    v49 = v121[117];
    v50 = v121[116];
    v51 = v121[115];
    *(v44 + 2) = v46 + 1;
    v52 = *(v49 + 32);
    v49 += 32;
    inited = *(v49 + 48);
    v118 = *(v49 + 40);
    v52(&v44[((inited + 32) & ~inited) + v118 * v46], v48, v50);
    v121[78] = v44;
    v52(v51, v47, v50);
    v32 = 0;
    v33 = v105;
  }

  v19[144] = v34;
  v19[143] = v33;
  (*(v19[117] + 56))(v19[115], v32, 1, v19[116]);
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  if (v115)
  {
    v70 = v115;
    v71 = sub_100017950();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v121[146] = v73;
  v121[145] = v71;
  if (v113)
  {
    v74 = v113;
    v75 = sub_100017950();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v121[148] = v77;
  v121[147] = v75;
  if (v73)
  {
    if (v77)
    {
LABEL_56:
      v78 = (inited + 32) & ~inited;
      v79 = v118;
      goto LABEL_67;
    }
  }

  else
  {
    sub_10001308C(&_swiftEmptyArrayStorage);
    sub_1000175D0();
    v80 = v121[78];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_100012EB4(0, v80[2] + 1, 1, v80);
    }

    v82 = v80[2];
    v81 = v80[3];
    if (v82 >= v81 >> 1)
    {
      v80 = sub_100012EB4((v81 > 1), v82 + 1, 1, v80);
    }

    v83 = v121[120];
    v84 = v121[117];
    v85 = v121[116];
    v80[2] = v82 + 1;
    (*(v84 + 32))(v80 + ((inited + 32) & ~inited) + v82 * v118, v83, v85);
    v121[78] = v80;
    if (v77)
    {
      goto LABEL_56;
    }
  }

  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  v86 = v121[78];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v86 = sub_100012EB4(0, *(v86 + 2) + 1, 1, v86);
  }

  v88 = *(v86 + 2);
  v87 = *(v86 + 3);
  v89 = v118;
  if (v88 >= v87 >> 1)
  {
    v103 = sub_100012EB4((v87 > 1), v88 + 1, 1, v86);
    v89 = v118;
    v86 = v103;
  }

  v90 = v121[119];
  v91 = v121[117];
  v92 = v121[116];
  *(v86 + 2) = v88 + 1;
  v78 = (inited + 32) & ~inited;
  v79 = v89;
  (*(v91 + 32))(&v86[v78 + v88 * v89], v90, v92);
  v121[78] = v86;
LABEL_67:
  v93 = v121[131];
  v94 = v121[130];
  v95 = v121[125];
  v108 = v121[124];
  v112 = v121[123];
  v114 = v121[122];
  v116 = v121[121];
  v96 = v121[117];
  v97 = v121[116];
  sub_100003360(&qword_100025810, &unk_100019550);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100019290;
  v99 = v98 + v78;
  v100 = *(v96 + 16);
  v100(v99, v93, v97);
  v100(v99 + v79, v94, v97);
  v100(v99 + 2 * v79, v95, v97);
  v100(v99 + 3 * v79, v108, v97);
  v100(v99 + 4 * v79, v112, v97);
  v100(v99 + 5 * v79, v114, v97);
  v100(v99 + 6 * v79, v116, v97);
  sub_1000112B4(v98);
  sub_100017610();
  v101 = swift_task_alloc();
  v121[149] = v101;
  *v101 = v121;
  v101[1] = sub_10000F5AC;
  v102 = v121[113];

  return LocalizedStringsRequest.run()(v102);
}

uint64_t sub_10000F5AC()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v4 = *(*v1 + 872);
  v5 = *(*v1 + 864);
  *(*v1 + 1200) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    v6 = *(v2 + 1096);
    v7 = *(v2 + 1088);
    v8 = sub_100010DA8;
  }

  else
  {
    v6 = *(v2 + 1096);
    v7 = *(v2 + 1088);
    v8 = sub_10000F74C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000F74C()
{
  v179 = v0;
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];

  v4 = sub_1000176F0();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    sub_10000A864(0xD000000000000025, 0x8000000100019F10);
    if (v5)
    {
    }

    if (*(v4 + 16))
    {
      sub_10000A864(0xD000000000000025, 0x8000000100019F40);
      if (v6)
      {
      }
    }
  }

  v7 = v0[107];
  v8 = v0[105];
  v9 = v0[104];
  sub_100017900();
  v175 = v4;
  if ((*(v8 + 48))(v7, 1, v9))
  {
    sub_10000C4D4(v0[107], &qword_100025500, &qword_1000191B0);
  }

  else
  {
    v10 = v0[117];
    v11 = v0[116];
    v12 = v0[115];
    v13 = v0[114];
    v14 = v0[107];
    v15 = v0[106];
    v16 = v0[105];
    v17 = v0[104];
    (*(v16 + 16))(v15, v14, v17);
    sub_10000C4D4(v14, &qword_100025500, &qword_1000191B0);
    sub_1000174B0();
    (*(v16 + 8))(v15, v17);
    sub_10000C2C4(v12, v13, &qword_1000257F8, &unk_100019530);
    if ((*(v10 + 48))(v13, 1, v11) != 1)
    {
      (*(v0[117] + 32))(v0[118], v0[114], v0[116]);
      v19 = sub_1000175E0();
      v4 = v175;
      if (*(v175 + 16))
      {
        sub_10000A864(v19, v20);
        v22 = v21;

        if (v22)
        {
          v165 = v0[141];
          v157 = v0[140];
          v23 = v0[134];
          v24 = v0[133];
          v25 = v0[118];
          v26 = v0[117];
          v27 = v0[116];

          sub_100017800();
          (*(v26 + 8))(v25, v27);
          v4 = v175;
          sub_10000C4D4(v23, &qword_100025528, &qword_1000191E8);
          v165(v24, 0, 1, v157);
          sub_1000131A0(v24, v23);
          goto LABEL_17;
        }
      }

      else
      {
      }

      v28 = v0[118];
      v29 = v0[117];
      v30 = v0[116];

      (*(v29 + 8))(v28, v30);
      goto LABEL_17;
    }

    v18 = v0[114];

    sub_10000C4D4(v18, &qword_1000257F8, &unk_100019530);
    v4 = v175;
  }

LABEL_17:
  sub_1000113E0(v0[83], v4);
  v0[79] = sub_100017C80();
  sub_100017F90();
  v0[80] = sub_100017C00();
  sub_100017F90();
  sub_100017860();
  v31 = sub_1000175E0();
  if (!*(v175 + 16))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_10000A864(v31, v32);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_41:

    if (qword_100025200 != -1)
    {
      swift_once();
    }

    v69 = v0[89];
    v70 = v0[87];
    v71 = v0[86];
    v72 = sub_10000BEDC(v71, qword_100025590);
    (*(v70 + 16))(v69, v72, v71);

    v73 = sub_1000178C0();
    LOBYTE(v69) = sub_100017E00();

    v143 = v69;
    v74 = os_log_type_enabled(v73, v69);
    v152 = v0[139];
    v75 = v0[134];
    v76 = v0[131];
    v77 = v0[130];
    v169 = v0[123];
    v171 = v0[124];
    v167 = v0[122];
    v161 = v0[138];
    v163 = v0[121];
    v78 = v0[117];
    v79 = v0[116];
    v173 = v0[115];
    v176 = v0[125];
    v80 = v0[102];
    v155 = v0[101];
    v159 = v0[103];
    v81 = v0[87];
    v146 = v0[86];
    v149 = v0[89];
    if (v74)
    {
      v140 = v0[134];
      v82 = swift_slowAlloc();
      v137 = v76;
      v83 = swift_slowAlloc();
      v178[0] = v83;
      *v82 = 136446210;
      v84 = sub_100017CE0();
      v134 = v77;
      v86 = v85;

      v87 = sub_10000A1A8(v84, v86, v178);

      *(v82 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v73, v143, "Missing authentication related localized strings: %{public}s", v82, 0xCu);
      sub_10000BFE8(v83);

      (*(v81 + 8))(v149, v146);
      (*(v80 + 8))(v159, v155);
      v88 = *(v78 + 8);
      v88(v163, v79);
      v88(v167, v79);
      v88(v169, v79);
      v88(v171, v79);
      v88(v176, v79);
      sub_10000C4D4(v173, &qword_1000257F8, &unk_100019530);
      v88(v134, v79);
      v88(v137, v79);
      v89 = v140;
    }

    else
    {

      (*(v81 + 8))(v149, v146);
      (*(v80 + 8))(v159, v155);
      v90 = *(v78 + 8);
      v90(v163, v79);
      v90(v167, v79);
      v90(v169, v79);
      v90(v171, v79);
      v90(v176, v79);
      sub_10000C4D4(v173, &qword_1000257F8, &unk_100019530);
      v90(v77, v79);
      v90(v76, v79);
      v89 = v75;
    }

    goto LABEL_46;
  }

  v35 = sub_1000175E0();
  if (!*(v175 + 16))
  {
LABEL_39:

    goto LABEL_40;
  }

  sub_10000A864(v35, v36);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_40;
  }

  v39 = sub_1000175E0();
  if (!*(v175 + 16))
  {
LABEL_38:

    goto LABEL_39;
  }

  sub_10000A864(v39, v40);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    goto LABEL_39;
  }

  v43 = sub_1000175E0();
  if (!*(v175 + 16))
  {
    goto LABEL_37;
  }

  sub_10000A864(v43, v44);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
    goto LABEL_38;
  }

  v47 = sub_1000175E0();
  if (!*(v175 + 16))
  {

    goto LABEL_37;
  }

  sub_10000A864(v47, v48);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_37:

    goto LABEL_38;
  }

  sub_1000177C0();
  v51 = sub_1000175E0();
  if (*(v175 + 16))
  {
    sub_10000A864(v51, v52);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_54;
    }

    v55 = sub_1000175E0();
    if (*(v175 + 16))
    {
      sub_10000A864(v55, v56);
      v58 = v57;

      if (v58)
      {
        v123 = v0[139];
        v124 = v0[138];
        v59 = v0[134];
        v158 = v0[132];
        v139 = v0[130];
        v142 = v0[131];
        v129 = v0[123];
        v131 = v0[124];
        v125 = v0[121];
        v127 = v0[122];
        v60 = v0[117];
        v122 = v0[116];
        v133 = v0[115];
        v136 = v0[125];
        v166 = v0[103];
        v148 = v0[101];
        v151 = v0[102];
        v121 = v0[100];
        v154 = v0[99];
        v120 = v0[98];
        v61 = v0[97];
        v145 = v0[96];
        v117 = v0[94];
        v62 = v0[93];
        v118 = v0[92];
        v119 = v0[91];

        v178[0] = 5396549;
        v178[1] = 0xE300000000000000;
        v0[81] = sub_100017C80();
        v181._countAndFlagsBits = sub_100017F90();
        sub_100017D40(v181);

        v63 = sub_1000175C0();
        (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
        sub_10000C2C4(v59, v158, &qword_100025528, &qword_1000191E8);
        (*(v151 + 16))(v145, v166, v148);
        (*(v151 + 56))(v145, 0, 1, v148);
        (*(v62 + 104))(v117, enum case for ConfirmationSheetButtonStyle.white(_:), v118);
        sub_100017560();
        (*(v154 + 16))(v119, v121, v120);
        v64 = enum case for ConfirmationSheetPostPrimaryButtonAction.localAuthentication(_:);
        v65 = sub_100017830();
        v66 = *(v65 - 8);
        (*(v66 + 104))(v119, v64, v65);
        (*(v66 + 56))(v119, 0, 1, v65);
        sub_1000176B0();

        (*(v154 + 8))(v121, v120);
        (*(v151 + 8))(v166, v148);
        v67 = *(v60 + 8);
        v67(v125, v122);
        v67(v127, v122);
        v67(v129, v122);
        v67(v131, v122);
        v67(v136, v122);
        sub_10000C4D4(v133, &qword_1000257F8, &unk_100019530);
        v67(v139, v122);
        v67(v142, v122);
        sub_10000C4D4(v59, &qword_100025528, &qword_1000191E8);
        v68 = 0;
        goto LABEL_47;
      }
    }

    else
    {
    }
  }

LABEL_54:

  if (qword_100025200 != -1)
  {
    swift_once();
  }

  v95 = v0[90];
  v96 = v0[87];
  v97 = v0[86];
  v98 = sub_10000BEDC(v97, qword_100025590);
  (*(v96 + 16))(v95, v98, v97);

  v99 = sub_1000178C0();
  LOBYTE(v97) = sub_100017E00();

  v135 = v97;
  v153 = v99;
  v100 = os_log_type_enabled(v99, v97);
  v150 = v0[139];
  v156 = v0[138];
  v101 = v0[134];
  v102 = v0[131];
  v103 = v0[130];
  v170 = v0[123];
  v172 = v0[124];
  v164 = v0[121];
  v168 = v0[122];
  v104 = v0[117];
  v105 = v0[116];
  v174 = v0[115];
  v177 = v0[125];
  v106 = v0[102];
  v160 = v0[101];
  v162 = v0[103];
  v107 = v0[99];
  v144 = v0[98];
  v147 = v0[100];
  v141 = v0[90];
  v108 = v0[87];
  v138 = v0[86];
  if (v100)
  {
    v132 = v0[134];
    v109 = swift_slowAlloc();
    v126 = v106;
    v110 = swift_slowAlloc();
    v178[0] = v110;
    *v109 = 136446210;
    v128 = v103;
    v130 = v102;
    v111 = sub_100017CE0();
    v113 = v112;

    v114 = sub_10000A1A8(v111, v113, v178);

    *(v109 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v153, v135, "Missing title/subtitle localized strings: %{public}s", v109, 0xCu);
    sub_10000BFE8(v110);

    (*(v108 + 8))(v141, v138);
    (*(v107 + 8))(v147, v144);
    (*(v126 + 8))(v162, v160);
    v115 = *(v104 + 8);
    v115(v164, v105);
    v115(v168, v105);
    v115(v170, v105);
    v115(v172, v105);
    v115(v177, v105);
    sub_10000C4D4(v174, &qword_1000257F8, &unk_100019530);
    v115(v128, v105);
    v115(v130, v105);
    v89 = v132;
  }

  else
  {

    (*(v108 + 8))(v141, v138);
    (*(v107 + 8))(v147, v144);
    (*(v106 + 8))(v162, v160);
    v116 = *(v104 + 8);
    v116(v164, v105);
    v116(v168, v105);
    v116(v170, v105);
    v116(v172, v105);
    v116(v177, v105);
    sub_10000C4D4(v174, &qword_1000257F8, &unk_100019530);
    v116(v103, v105);
    v116(v102, v105);
    v89 = v101;
  }

LABEL_46:
  sub_10000C4D4(v89, &qword_100025528, &qword_1000191E8);
  v68 = 1;
LABEL_47:
  v91 = v0[82];
  v92 = sub_1000176E0();
  (*(*(v92 - 8) + 56))(v91, v68, 1, v92);

  v93 = v0[1];

  return v93();
}

uint64_t sub_100010DA8()
{

  if (qword_100025200 != -1)
  {
    swift_once();
  }

  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = sub_10000BEDC(v3, qword_100025590);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_1000178C0();
  v6 = sub_100017E00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error fetching localized strings for approval sheet: %{public}@", v7, 0xCu);
    sub_10000C4D4(v8, &qword_100025508, &qword_1000191C0);
  }

  v10 = v5;
  v11 = v0[139];
  v12 = v0[138];
  v30 = v0[131];
  v31 = v0[134];
  v28 = v0[125];
  v29 = v0[130];
  v25 = v0[123];
  v26 = v0[124];
  v24 = v0[122];
  v13 = v0[121];
  v14 = v0[117];
  v15 = v0[116];
  v27 = v0[115];
  v16 = v0[88];
  v17 = v0[87];
  v18 = v0[86];

  (*(v17 + 8))(v16, v18);
  v19 = *(v14 + 8);
  v19(v13, v15);
  v19(v24, v15);
  v19(v25, v15);
  v19(v26, v15);
  v19(v28, v15);
  sub_10000C4D4(v27, &qword_1000257F8, &unk_100019530);
  v19(v29, v15);
  v19(v30, v15);
  sub_10000C4D4(v31, &qword_100025528, &qword_1000191E8);
  v20 = v0[82];
  v21 = sub_1000176E0();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000112B4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100012EB4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1000175F0();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000113E0(uint64_t a1, uint64_t a2)
{
  if (sub_100017C70() & 1) != 0 && (sub_100017C30())
  {
    if (*(a2 + 16))
    {
      sub_10000A864(0xD00000000000003BLL, 0x800000010001A0A0);
      if (v3)
      {
        if (*(a2 + 16))
        {

          sub_10000A864(0xD00000000000003ALL, 0x800000010001A0E0);
          if ((v4 & 1) != 0 && *(a2 + 16))
          {

            sub_10000A864(0xD000000000000040, 0x800000010001A120);
            if ((v5 & 1) != 0 && *(a2 + 16))
            {

              sub_10000A864(0xD00000000000003FLL, 0x800000010001A170);
              if (v6)
              {
                sub_100003360(&qword_100025818, &qword_100019560);
                sub_100017750();
                v7 = swift_allocObject();
                *(v7 + 16) = xmmword_100019270;

                sub_100017720();
                sub_100017720();
                return v7;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100011678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000CAE0(a2);
  v6 = sub_1000179D0();
  v7 = sub_100017B10();
  v8 = a2 + *(sub_100003360(&qword_1000257D8, &qword_1000194E0) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  sub_100013488(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApprovalSheetView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_100013420(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ApprovalSheetView);
  result = sub_100003360(&qword_1000257E0, &qword_1000194E8);
  v12 = (a2 + *(result + 36));
  *v12 = sub_100012B64;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

id sub_1000117E8()
{
  v1 = v0;
  v2 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_1000176E0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = *(v7 + 16);
  v13(&v27 - v11, v1 + *(v3 + 32), v6);
  v13(v10, v12, v6);
  v14 = objc_allocWithZone(type metadata accessor for ConfirmationSheetViewController(0));
  v15 = sub_100003DEC(v10, 0);
  (*(v7 + 8))(v12, v6);
  sub_100013488(v1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApprovalSheetViewControllerWrapper);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_100013420(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ApprovalSheetViewControllerWrapper);
  v18 = &v15[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction];
  v19 = *&v15[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction];
  v20 = *&v15[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8];
  *v18 = sub_1000135A8;
  v18[1] = v17;
  sub_10000A854(v19, v20);
  v21 = v15;
  v22 = [v21 navigationItem];
  sub_10000C094(0, &qword_100025888, UIBarButtonItem_ptr);
  sub_10000C094(0, &qword_100025890, UIAction_ptr);
  sub_100013488(v1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApprovalSheetViewControllerWrapper);
  v23 = swift_allocObject();
  sub_100013420(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v16, type metadata accessor for ApprovalSheetViewControllerWrapper);
  v28.value.super.super.isa = sub_100017E70();
  v28.is_nil = 0;
  isa = sub_100017E30(UIBarButtonSystemItemClose, v28, v29).super.super.isa;
  [v22 setRightBarButtonItem:isa];

  v25 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v21];
  return v25;
}

void sub_100011B68(uint64_t a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_19;
  }

  v2 = sub_100017920();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_18:

LABEL_19:
    v10 = sub_100017920();
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_38;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_39:

      return;
    }

LABEL_21:
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_100017F20();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          v12 = sub_100017F50();
          if (!v12)
          {
            goto LABEL_39;
          }

          goto LABEL_21;
        }

        v14 = *(v11 + 8 * v13 + 32);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_32;
        }
      }

      v20 = v14;
      if (sub_100017940() == 0x656E696C636564 && v16 == 0xE700000000000000)
      {
        goto LABEL_33;
      }

      v17 = sub_100017FB0();

      if (v17)
      {
        goto LABEL_34;
      }

      ++v13;
      if (v15 == v12)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_100017F20();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v4 = sub_100017F50();
        if (!v4)
        {
          goto LABEL_18;
        }

        goto LABEL_4;
      }
    }

    v20 = v6;
    if (sub_100017940() == 0x65766F72707061 && v8 == 0xE700000000000000)
    {
      break;
    }

    v9 = sub_100017FB0();

    if (v9)
    {
      goto LABEL_34;
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_18;
    }
  }

LABEL_33:

LABEL_34:

  v18 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  sub_10000C038((a2 + *(v18 + 28)), *(a2 + *(v18 + 28) + 24));
  sub_100017980();
}

uint64_t sub_100011E3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  sub_10000C038((a2 + *(v3 + 28)), *(a2 + *(v3 + 28) + 24));
  return sub_100017990();
}

uint64_t sub_100011EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012298(&qword_100025898, 255, type metadata accessor for ApprovalSheetViewControllerWrapper, &unk_100019418);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100011F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012298(&qword_100025898, 255, type metadata accessor for ApprovalSheetViewControllerWrapper, &unk_100019418);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100012014(uint64_t a1)
{
  sub_100012298(&qword_100025898, 255, type metadata accessor for ApprovalSheetViewControllerWrapper, &unk_100019418);
  sub_100017AD0();
  __break(1u);
}

uint64_t sub_100012070()
{
  v0 = sub_1000178E0();
  sub_10000BF14(v0, qword_100025590);
  v1 = sub_10000BEDC(v0, qword_100025590);
  if (qword_1000251F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BEDC(v0, qword_100026288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppStoreRemoteView();
  sub_100012298(&qword_1000255A8, v3, type metadata accessor for AppStoreRemoteView, &unk_1000192F4);
  sub_1000178A0();
  return 0;
}

uint64_t sub_100012298(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100012344(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012390(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000176E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100012450(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000176E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000124F4(uint64_t a1)
{
  result = sub_100017CA0();
  if (v2 <= 0x3F)
  {
    result = sub_100017930();
    if (v3 <= 0x3F)
    {
      result = sub_1000176E0();
      if (v4 <= 0x3F)
      {
        result = sub_1000125A8();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000125A8()
{
  result = qword_1000256D8;
  if (!qword_1000256D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000256D8);
  }

  return result;
}

uint64_t sub_100012620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003360(&qword_100025710, "~3");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000126E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = sub_100003360(&qword_100025710, "~3");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100012794(uint64_t a1)
{
  sub_1000128B8(319, &qword_100025780, &qword_100025788, "V3", &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000128B8(319, &unk_100025790, &qword_100025668, &qword_100019338, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100012870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1000128B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100012870(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000129D4()
{
  v1 = type metadata accessor for ApprovalSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3 + 40))
  {
    sub_10000BFE8((v0 + v3));
  }

  else
  {
  }

  v5 = (v0 + v3 + *(v1 + 20));
  v6 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_1000176E0();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
    sub_10000BFE8((v5 + *(v6 + 28)));
  }

  sub_100003360(&qword_100025710, "~3");

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012BC0()
{
  v1 = type metadata accessor for ApprovalSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  if (*(v0 + v3 + 40))
  {
    sub_10000BFE8((v0 + v3));
  }

  else
  {
  }

  v5 = (v0 + v3 + *(v1 + 20));
  v6 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_1000176E0();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
    sub_10000BFE8((v5 + *(v6 + 28)));
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100003360(&qword_100025710, "~3");

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_100012D7C(uint64_t a1)
{
  v4 = *(type metadata accessor for ApprovalSheetView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000C1D0;

  return sub_10000DA00(a1, v7, v8, v1 + v5, v9, v10);
}

void *sub_100012EB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_100003360(&qword_100025810, &unk_100019550);
  v10 = *(sub_1000175F0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000175F0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10001308C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003360(&unk_100025A70, &qword_100019568);
    v3 = sub_100017F80();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000A864(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1000131A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025528, &qword_1000191E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013210(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003360(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013290(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025838, &qword_100019588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100013300()
{
  result = qword_100025848;
  if (!qword_100025848)
  {
    sub_100012870(&qword_100025838, &qword_100019588);
    sub_10001354C(&qword_100025850, &qword_100025830, &qword_100019580, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025848);
  }

  return result;
}

uint64_t sub_1000133B8(uint64_t a1)
{
  v2 = sub_100003360(&qword_100025838, &qword_100019588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000134F0(uint64_t a1)
{
  v2 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001354C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100012870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013594(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1000135A8(uint64_t a1)
{
  v3 = *(type metadata accessor for ApprovalSheetViewControllerWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100011B68(a1, v4);
}

uint64_t sub_100013618()
{
  v1 = (type metadata accessor for ApprovalSheetViewControllerWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1000176E0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_10000BFE8((v0 + v3 + v1[9]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001371C(uint64_t a1)
{
  v3 = *(type metadata accessor for ApprovalSheetViewControllerWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100011E3C(a1, v4);
}

unint64_t sub_100013790()
{
  result = qword_1000258A0;
  if (!qword_1000258A0)
  {
    sub_100012870(&qword_1000257E0, &qword_1000194E8);
    sub_10001381C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258A0);
  }

  return result;
}

unint64_t sub_10001381C()
{
  result = qword_1000258A8;
  if (!qword_1000258A8)
  {
    sub_100012870(&qword_1000257D8, &qword_1000194E0);
    sub_1000138A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258A8);
  }

  return result;
}

unint64_t sub_1000138A8()
{
  result = qword_1000258B0;
  if (!qword_1000258B0)
  {
    sub_100012870(&qword_1000258B8, &qword_1000195B8);
    sub_10001392C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258B0);
  }

  return result;
}

unint64_t sub_10001392C()
{
  result = qword_1000258C0;
  if (!qword_1000258C0)
  {
    sub_100012870(&qword_1000258C8, &unk_1000195C0);
    sub_100012298(&qword_1000257D0, 255, type metadata accessor for ApprovalSheetViewControllerWrapper, &unk_1000193C8);
    sub_100013300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258C0);
  }

  return result;
}

uint64_t sub_1000139F4()
{
  v1[132] = v0;
  sub_100003360(&qword_100025500, &qword_1000191B0);
  v1[133] = swift_task_alloc();
  v2 = sub_1000174E0();
  v1[134] = v2;
  v1[135] = *(v2 - 8);
  v1[136] = swift_task_alloc();
  v1[137] = sub_100017DA0();
  v1[138] = sub_100017D90();
  v3 = sub_100017D70();
  v1[139] = v3;
  v1[140] = v4;

  return _swift_task_switch(sub_100013B5C, v3, v4);
}

uint64_t sub_100013B5C()
{
  v1 = *(v0 + 1056);
  v2 = [objc_allocWithZone(PKPaymentRequest) init];
  *(v0 + 1128) = v2;
  [v2 setRequestType:15];
  [v2 setConfirmationStyle:3];
  v3 = v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent;
  v5 = *(v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent);
  v4 = *(v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent + 8);
  v6 = sub_100017D00();
  [v2 setLocalizedNavigationTitle:v6];

  v7 = sub_100017D00();
  [v2 setLocalizedAuthorizingTitle:v7];

  sub_100003360(&qword_100025A40, &qword_100019688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018D50;
  *(v0 + 1000) = sub_100017D10();
  *(v0 + 1008) = v9;
  sub_100017F00();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000033;
  *(inited + 80) = 0x800000010001A3F0;
  v10 = sub_100016C3C(inited);
  swift_setDeallocating();
  sub_10000C4D4(inited + 32, &qword_100025A48, &qword_100019690);
  v11 = objc_opt_self();
  *(v0 + 1048) = 0;
  v12 = [v11 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 1048];
  v13 = *(v0 + 1048);
  if (v12)
  {
    v14 = sub_1000174F0();
    v16 = v15;

    *(v0 + 1032) = sub_100017D10();
    *(v0 + 1040) = v17;
    sub_100017F00();
    *(v0 + 896) = &type metadata for Data;
    *(v0 + 872) = v14;
    *(v0 + 880) = v16;
    sub_10000A844((v0 + 872), (v0 + 904));
    sub_100017048(v14, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000168D0((v0 + 904), v0 + 704, isUniquelyReferenced_nonNull_native);
    sub_10001709C(v14, v16);
    sub_10000A7F0(v0 + 704);
  }

  else
  {
    v19 = v13;
    sub_1000174A0();

    swift_willThrow();
  }

  *(v0 + 1136) = v10;
  v20 = *(v0 + 1080);
  v21 = *(v0 + 1072);
  v22 = *(v0 + 1064);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100019260;
  *(v0 + 936) = 0x656C746974;
  *(v0 + 944) = 0xE500000000000000;
  sub_100017F00();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 72) = v5;
  *(v23 + 80) = v4;
  *(v0 + 952) = 0x6567617373656DLL;
  *(v0 + 960) = 0xE700000000000000;

  sub_100017F00();
  v25 = *(v3 + 16);
  v24 = *(v3 + 24);
  *(v23 + 168) = &type metadata for String;
  *(v23 + 144) = v25;
  *(v23 + 152) = v24;
  *(v0 + 968) = 0x63536E6565726373;
  *(v0 + 976) = 0xEB00000000656C61;

  sub_100017F00();
  PKScreenScale();
  *(v23 + 240) = &type metadata for CGFloat;
  *(v23 + 216) = v26;
  v27 = sub_100016C3C(v23);
  *(v0 + 1144) = v27;
  swift_setDeallocating();
  sub_100003360(&qword_100025A48, &qword_100019690);
  swift_arrayDestroy();
  v28 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  sub_10000C2C4(v3 + *(v28 + 28), v22, &qword_100025500, &qword_1000191B0);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    sub_10000C4D4(*(v0 + 1064), &qword_100025500, &qword_1000191B0);
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1128);
    v31 = *(v0 + 1056);
    *(v0 + 984) = sub_100017D10();
    *(v0 + 992) = v32;
    sub_100017F00();
    *(v0 + 768) = sub_100003360(&qword_100025A50, &qword_100019698);
    *(v0 + 744) = v27;
    sub_10000A844((v0 + 744), (v0 + 776));
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000168D0((v0 + 776), v0 + 624, v33);
    sub_10000A7F0(v0 + 624);
    v34 = sub_100017D00();
    [v30 setClientViewSourceIdentifier:{v34, v29}];

    isa = sub_100017CB0().super.isa;

    [v30 setClientViewSourceParameter:isa];

    v36 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v30];
    *(v0 + 1192) = v36;
    [v36 setDelegate:v31];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1224;
    *(v0 + 24) = sub_100014800;
    v37 = swift_continuation_init();
    *(v0 + 552) = sub_100003360(&qword_100025A58, &qword_1000196A0);
    *(v0 + 528) = v37;
    *(v0 + 496) = _NSConcreteStackBlock;
    *(v0 + 504) = 1107296256;
    *(v0 + 512) = sub_100015290;
    *(v0 + 520) = &unk_1000214C0;
    [v36 presentWithCompletion:v0 + 496];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    (*(*(v0 + 1080) + 32))(*(v0 + 1088), *(v0 + 1064), *(v0 + 1072));
    *(v0 + 1152) = [objc_opt_self() sharedSession];
    v38 = swift_task_alloc();
    *(v0 + 1160) = v38;
    *v38 = v0;
    v38[1] = sub_1000142EC;
    v39 = *(v0 + 1088);

    return NSURLSession.data(from:delegate:)(v39, 0);
  }
}

uint64_t sub_1000142EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v4;
  v8 = *v4;

  v10 = v8[144];
  if (v3)
  {

    v11 = v9[140];
    v12 = v9[139];
    v13 = sub_100014FD0;
  }

  else
  {

    v9[146] = a3;
    v9[147] = a2;
    v9[148] = a1;
    v11 = v9[140];
    v12 = v9[139];
    v13 = sub_100014484;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_100014484()
{
  v1 = v0;
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  *(v0 + 1016) = 1852793705;
  *(v0 + 1024) = 0xE400000000000000;
  sub_100017F00();
  *(v0 + 832) = &type metadata for Data;
  *(v0 + 808) = v2;
  *(v0 + 816) = v3;
  sub_10000A844((v1 + 808), (v1 + 840));
  sub_100017048(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000168D0((v1 + 840), v1 + 664, isUniquelyReferenced_nonNull_native);
  sub_10001709C(v2, v3);
  sub_10000A7F0(v0 + 664);
  (*(v6 + 8))(v5, v7);
  v9 = *(v0 + 1128);
  v10 = *(v0 + 1056);
  *(v0 + 984) = sub_100017D10();
  *(v0 + 992) = v11;
  sub_100017F00();
  *(v0 + 768) = sub_100003360(&qword_100025A50, &qword_100019698);
  *(v0 + 744) = v4;
  sub_10000A844((v1 + 744), (v1 + 776));
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000168D0((v1 + 776), v1 + 624, v12);
  sub_10000A7F0(v0 + 624);
  v13 = sub_100017D00();
  [v9 setClientViewSourceIdentifier:v13];

  isa = sub_100017CB0().super.isa;

  [v9 setClientViewSourceParameter:isa];

  v15 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v9];
  *(v0 + 1192) = v15;
  [v15 setDelegate:v10];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1224;
  *(v0 + 24) = sub_100014800;
  v16 = swift_continuation_init();
  *(v0 + 552) = sub_100003360(&qword_100025A58, &qword_1000196A0);
  *(v0 + 528) = v16;
  *(v0 + 496) = _NSConcreteStackBlock;
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_100015290;
  *(v0 + 520) = &unk_1000214C0;
  [v15 presentWithCompletion:?];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100014800()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);

  return _swift_task_switch(sub_100014934, v2, v1);
}

uint64_t sub_100014934()
{
  if (*(v0 + 1224) == 1)
  {
    v1 = *(v0 + 1056);
    v2 = sub_100017D90();
    *(v0 + 1200) = v2;
    v3 = swift_task_alloc();
    *(v0 + 1208) = v3;
    *(v3 + 16) = v1;
    v4 = swift_task_alloc();
    *(v0 + 1216) = v4;
    *v4 = v0;
    v4[1] = sub_100014AF0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1225, v2, &protocol witness table for MainActor, 0x29286E7572, 0xE500000000000000, sub_100017040, v3, &type metadata for Bool);
  }

  else
  {
    v5 = *(v0 + 1192);

    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_100014AF0()
{
  v1 = *v0;

  v2 = *(v1 + 1120);
  v3 = *(v1 + 1112);

  return _swift_task_switch(sub_100014C84, v3, v2);
}

uint64_t sub_100014C84()
{
  v1 = *(v0 + 1192);
  *(v0 + 1226) = *(v0 + 1225);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100014DD8;
  v2 = swift_continuation_init();
  *(v0 + 616) = sub_100003360(&qword_100025A60, &qword_1000196A8);
  *(v0 + 592) = v2;
  *(v0 + 560) = _NSConcreteStackBlock;
  *(v0 + 568) = 1107296256;
  *(v0 + 576) = sub_100015424;
  *(v0 + 584) = &unk_1000214E8;
  [v1 dismissWithCompletion:v0 + 560];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100014DD8()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);

  return _swift_task_switch(sub_100014F0C, v2, v1);
}

uint64_t sub_100014F0C()
{
  v1 = *(v0 + 1192);

  v2 = *(v0 + 1226);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100014FD0()
{
  v1 = v0;
  (*(v1[135] + 8))(v1[136], v1[134]);
  v2 = v0[143];
  v3 = v0[141];
  v4 = v0[132];
  v0[123] = sub_100017D10();
  v0[124] = v5;
  sub_100017F00();
  v0[96] = sub_100003360(&qword_100025A50, &qword_100019698);
  v0[93] = v2;
  sub_10000A844(v1 + 93, v1 + 97);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000168D0(v1 + 97, (v1 + 78), isUniquelyReferenced_nonNull_native);
  sub_10000A7F0((v0 + 78));
  v7 = sub_100017D00();
  [v3 setClientViewSourceIdentifier:v7];

  isa = sub_100017CB0().super.isa;

  [v3 setClientViewSourceParameter:isa];

  v9 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v3];
  v0[149] = v9;
  [v9 setDelegate:v4];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_100014800;
  v10 = swift_continuation_init();
  v0[69] = sub_100003360(&qword_100025A58, &qword_1000196A0);
  v0[66] = v10;
  v0[62] = _NSConcreteStackBlock;
  v0[63] = 1107296256;
  v0[64] = sub_100015290;
  v0[65] = &unk_1000214C0;
  [v9 presentWithCompletion:v0 + 62];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100015290(uint64_t a1, char a2)
{
  v3 = *sub_10000C038((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000152EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025A38, &qword_100019678);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_100003360(&unk_100025980, &qword_1000191C8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  sub_100016F5C(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_100015424(uint64_t a1)
{
  v1 = *sub_10000C038((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100015648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = sub_100017DA0();
  v4[5] = sub_100017D90();
  v6 = sub_100017D70();

  return _swift_task_switch(sub_1000156E4, v6, v5);
}

uint64_t sub_1000156E4()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_100017D90();
  v5 = sub_100017D70();

  return _swift_task_switch(sub_100015790, v5, v4);
}

uint64_t sub_100015790()
{
  v1 = v0[6];
  v2 = v0[3];

  v2[OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalResult] = 1;
  v3 = [objc_allocWithZone(PKPaymentAuthorizationResult) initWithStatus:0 errors:0];

  (v1)[2](v1, v3);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

void sub_1000158FC(uint64_t a1)
{
  type metadata accessor for OsloAuthenticationTask.LocalizedContent(319);
  if (v1 <= 0x3F)
  {
    sub_1000159F0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000159F0(uint64_t a1)
{
  if (!qword_100025978)
  {
    sub_100012870(&unk_100025980, &qword_1000191C8);
    v1 = sub_100017ED0();
    if (!v2)
    {
      atomic_store(v1, &qword_100025978);
    }
  }
}

uint64_t sub_100015A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003360(&qword_100025500, &qword_1000191B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100015B38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003360(&qword_100025500, &qword_1000191B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100015BE8(uint64_t a1)
{
  sub_100015C6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100015C6C(uint64_t a1)
{
  if (!qword_1000259F8)
  {
    sub_1000174E0();
    v1 = sub_100017ED0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000259F8);
    }
  }
}

uint64_t sub_100015CC4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015D14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000C1D0;

  return sub_100015648(v2, v3, v5, v4);
}

uint64_t sub_100015DD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000C540;

  return v6();
}

uint64_t sub_100015EBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000C540;

  return sub_100015DD4(v2, v3, v4);
}

uint64_t sub_100015F7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000C1D0;

  return v7();
}

uint64_t sub_100016068()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000160A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C540;

  return sub_100015F7C(a1, v4, v5, v6);
}

uint64_t sub_100016174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000C2C4(a3, v23 - v10, &qword_100025A30, &qword_1000194F0);
  v12 = sub_100017DC0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000C4D4(v11, &qword_100025A30, &qword_1000194F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100017DB0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100017D70();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100017D20() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);

    return v21;
  }

LABEL_8:
  sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100016470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000164A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C540;

  return sub_100009FB8(a1, v4);
}

uint64_t sub_100016560(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C1D0;

  return sub_100009FB8(a1, v4);
}

uint64_t sub_100016618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003360(&qword_100025A68, qword_1000196B0);
  result = sub_100017F70();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10000A844((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10000A9A4(v23, &v36);
        sub_10000A794(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100017EE0(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10000A844(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_1000168D0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000A750(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100016A98();
      goto LABEL_7;
    }

    sub_100016618(v13, a3 & 1);
    v19 = sub_10000A750(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10000A9A4(a2, v21);
      return sub_100016A1C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100017FC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000BFE8(v17);

  return sub_10000A844(a1, v17);
}

_OWORD *sub_100016A1C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000A844(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100016A98()
{
  v1 = v0;
  sub_100003360(&qword_100025A68, qword_1000196B0);
  v2 = *v0;
  v3 = sub_100017F60();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10000A9A4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A794(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000A844(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100016C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003360(&qword_100025A68, qword_1000196B0);
    v3 = sub_100017F80();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C2C4(v4, v13, &qword_100025A48, &qword_100019690);
      result = sub_10000A750(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000A844(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100016D78()
{
  v1 = v0;
  v2 = sub_100003360(&qword_100025A38, &qword_100019678);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_100003360(&unk_100025980, &qword_1000191C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v9, 1, v5))
  {
    (*(v6 + 16))(v8, v1 + v9, v5);
    v11[0] = *(v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalResult);
    sub_100017D80();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_100016F5C(v4, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100016F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025A38, &qword_100019678);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016FCC(uint64_t a1)
{
  v2 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017048(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001709C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_100017140(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v11 = a4;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

void sub_100017210()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_100017234(v1, v2, v3);
}

void sub_100017234(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] Mini product page failed with error: %{public}@", &v4, 0x16u);
}

void sub_1000172C0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page content size did invalidate", &v3, 0xCu);
}

void sub_10001733C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page did present description", &v3, 0xCu);
}