BOOL sub_271C(id a1, DNDMode *a2)
{
  v2 = a2;
  v3 = [(DNDMode *)v2 visibility]== &dword_0 + 1;
  v4 = +[FSUIPlatformEligibility isIntelligenceAvailable];
  v5 = [(DNDMode *)v2 semanticType];

  if (v5 == &dword_8 + 1)
  {
    return v3 & v4;
  }

  else
  {
    return v3;
  }
}

BOOL sub_280C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPlaceholder])
  {
    v4 = [v3 semanticType] == *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSNumber *__cdecl sub_3238(id a1, NSNumber *a2, DNDMode *a3)
{
  v4 = a2;
  if ([(DNDMode *)a3 visibility])
  {
    v5 = v4;
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedInteger:[(NSNumber *)v4 unsignedIntegerValue]+ 1];
  }

  v6 = v5;

  return v6;
}

int64_t sub_32B0(id a1, DNDMode *a2, DNDMode *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(DNDMode *)v4 semanticType])
  {
    if ([(DNDMode *)v5 semanticType])
    {
      v6 = [(DNDMode *)v4 isPlaceholder];
      if (v6 == [(DNDMode *)v5 isPlaceholder])
      {
        v8 = [(DNDMode *)v4 name];
        v9 = [(DNDMode *)v5 name];
        v7 = [v8 localizedStandardCompare:v9];
      }

      else if ([(DNDMode *)v4 isPlaceholder])
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_34D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

void sub_3B84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_4CC8(id a1)
{
  qword_27A60 = [NSBundle bundleWithIdentifier:@"com.apple.FocusSettings"];

  _objc_release_x1();
}

void sub_56FC(uint64_t a1)
{
  v10 = [*(a1 + 32) objectForKey:@"path"];
  if ([v10 isEqual:@"setup"])
  {
    v2 = [*(a1 + 32) objectForKey:@"type"];
    v3 = [v2 integerValue];

    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = [v4 _configuredModeForSemanticType:v3];
      v6 = v5;
      v7 = *(a1 + 40);
      if (v5)
      {
        v8 = [v5 modeIdentifier];
        [v7 showConfigurationForModeIdentifier:v8 animate:0];
      }

      else
      {
        [*(a1 + 40) _handleSetupRequestForSemanticType:v3];
      }
    }

    else
    {
      [v4 _presentSetupControllerForUnknownMode];
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

BOOL sub_5D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 semanticType] == *(a1 + 32) && objc_msgSend(v3, "visibility") == 0;

  return v4;
}

int64_t sub_6BAC(id a1, DNDMode *a2, DNDMode *a3)
{
  v4 = a3;
  v5 = [(DNDMode *)a2 name];
  v6 = [(DNDMode *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_6DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6E00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained navigationController];
  v3 = [_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController welcomeControllerWithAllReservedModes:*(a1 + 32)];
  [v2 pushViewController:v3 animated:1];
}

void sub_6FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6FE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [DNDMode alloc];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 32) modeIdentifier];
  v5 = [*(a1 + 32) symbolImageName];
  v6 = [*(a1 + 32) tintColorName];
  v7 = [v2 initWithName:v3 modeIdentifier:v4 symbolImageName:v5 tintColorName:v6 semanticType:{objc_msgSend(*(a1 + 32), "semanticType")}];

  v8 = [WeakRetained navigationController];
  v9 = [_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController welcomeControllerWithMode:v7];
  [v8 pushViewController:v9 animated:1];
}

void FCUISettingsRegisterLogging(uint64_t result, uint64_t a2)
{
  if (qword_27A70[0] != -1)
  {
    sub_13390();
  }
}

void sub_7198(id a1)
{
  FCUILogSettings = os_log_create("com.apple.focus.settings", "FocusSettings");

  _objc_release_x1();
}

uint64_t sub_770C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [objc_opt_self() fcui_focusSettingsLocalizationBundle];
  v16._countAndFlagsBits = a4;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  v18.value._countAndFlagsBits = a5;
  v18.value._object = a6;
  v13.super.isa = v12;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v14 = sub_13414(v17, v18, v13, v19, a3, v16);

  return v14;
}

id sub_77C0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_77F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusStatusConfigurationViewController();
  return objc_msgSendSuper2(&v2, "initWithNibName:bundle:", 0, 0);
}

id sub_789C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_7998()
{
  v1 = v0;
  v2 = sub_134C4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v61 - v7;
  v9 = type metadata accessor for FocusStatusConfigurationViewController();
  v63.receiver = v1;
  v63.super_class = v9;
  objc_msgSendSuper2(&v63, "viewDidLoad");
  v10 = [v1 navigationItem];
  v11 = sub_7700();
  sub_770C(0x54535F5355434F46, 0xEC00000053555441, v11, v12, 0, 0);

  v13 = sub_13844();

  [v10 setTitle:v13];

  sub_134B4();
  (*(v3 + 16))(v6, v8, v2);
  v14 = objc_allocWithZone(sub_80B0(&qword_27570, &unk_16A20));
  v15 = sub_136A4();
  [v1 addChildViewController:v15];
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor:v18];

  v19 = [v15 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = [v1 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v19 setFrame:{v23, v25, v27, v29}];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;
  v32 = [v15 view];

  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v31 addSubview:v32];

  v33 = [v15 view];
  if (!v33)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v62 = v8;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_80B0(&unk_278E0, qword_16AC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_16A10;
  v35 = [v15 view];

  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = [v35 topAnchor];

  v37 = [v1 view];
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v34 + 32) = v40;
  v41 = [v15 view];

  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = [v41 leadingAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45];
  *(v34 + 40) = v46;
  v47 = [v1 view];
  if (!v47)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v15 view];
  if (!v50)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = [v50 trailingAnchor];

  v52 = [v49 constraintEqualToAnchor:v51];
  *(v34 + 48) = v52;
  v53 = [v1 view];
  if (!v53)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = v53;
  v55 = [v53 bottomAnchor];

  v56 = [v15 view];
  if (v56)
  {
    v57 = objc_opt_self();
    v58 = [v56 bottomAnchor];

    v59 = [v55 constraintEqualToAnchor:v58];
    *(v34 + 56) = v59;
    sub_80F8();
    isa = sub_138D4().super.isa;

    [v57 activateConstraints:isa];

    [v15 didMoveToParentViewController:v1];
    (*(v3 + 8))(v62, v2);
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_80B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_80F8()
{
  result = qword_27578;
  if (!qword_27578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27578);
  }

  return result;
}

id sub_818C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_13844();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_8264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusStatusConfigurationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_8298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_13674();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_80B0(&qword_275A8, "NA");
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_9928(v2, &v14 - v9, &qword_275A8, "NA");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_13694();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_13974();
    v13 = sub_136C4();
    sub_13594();

    sub_13664();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_8498@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_80B0(&qword_275A8, "NA");

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_851C(uint64_t a1)
{
  v2 = sub_13694();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_13654();
}

uint64_t sub_85E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_80B0(&qword_275A8, "NA");
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for FocusCustomizationInvitationView(0);
  *(a4 + *(result + 20)) = a1;
  v9 = (a4 + *(result + 24));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t type metadata accessor for FocusCustomizationInvitationView(uint64_t a1)
{
  result = qword_27B10;
  if (!qword_27B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_86B4@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_13484();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_13474();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_80B0(&qword_275B0, &qword_16AA8);
  v7 = __chkstk_darwin(v51);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v48 = sub_80B0(&qword_275B8, &qword_16AB0);
  __chkstk_darwin(v48);
  v49 = &v38 - v12;
  v50 = sub_134A4();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for FocusCustomizationInvitationView(0) + 20);
  v47 = v1;
  v17 = *(v1 + v16);
  v18 = [v17 semanticType];
  v52 = a1;
  if (v18 == &dword_8 + 1 || v18 == -1)
  {
    v19 = [v17 name];
    v46 = sub_13874();
    v45 = v20;

    v21 = [v17 symbolImageName];
    if (v21)
    {
      v22 = v21;
      sub_13874();
    }

    v28 = [v17 tintColorName];
    if (v28)
    {
      v29 = v28;
      sub_13874();
    }

    [v17 semanticType];

    sub_13494();
    v30 = v50;
    (*(v13 + 16))(v49, v15, v50);
    swift_storeEnumTagMultiPayload();
    sub_9A94(&qword_275C0, &type metadata accessor for FocusInformationView, &protocol conformance descriptor for FocusInformationView);
    sub_9990();
    sub_136B4();
    return (*(v13 + 8))(v15, v30);
  }

  else
  {
    v23 = [v17 name];
    v42 = sub_13874();
    v41 = v24;

    v25 = [v17 symbolImageName];
    if (v25)
    {
      v26 = v25;
      v40 = sub_13874();
      v39 = v27;
    }

    else
    {
      v40 = 0;
      v39 = 0xE000000000000000;
    }

    v32 = [v17 tintColorName];
    if (v32)
    {
      v33 = v32;
      sub_13874();
    }

    [v17 semanticType];
    (*(v43 + 104))(v4, enum case for SemanticFocusInformationViewStyle.imagery(_:), v44);

    sub_13464();
    sub_13794();
    sub_13634();
    (*(v45 + 32))(v9, v6, v46);
    v34 = &v9[*(v51 + 36)];
    v35 = v58;
    *(v34 + 4) = v57;
    *(v34 + 5) = v35;
    *(v34 + 6) = v59;
    v36 = v54;
    *v34 = v53;
    *(v34 + 1) = v36;
    v37 = v56;
    *(v34 + 2) = v55;
    *(v34 + 3) = v37;
    sub_98B8(v9, v11);
    sub_9928(v11, v49, &qword_275B0, &qword_16AA8);
    swift_storeEnumTagMultiPayload();
    sub_9A94(&qword_275C0, &type metadata accessor for FocusInformationView, &protocol conformance descriptor for FocusInformationView);
    sub_9990();
    sub_136B4();
    return sub_9ADC(v11);
  }
}

id sub_8EA0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode] = a1;
  v4 = a1;
  v5 = [v4 semanticType];
  if (v5 == &dword_8 + 1 || v5 + 1 == 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v8 = sub_13844();
  v9 = sub_13844();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v8, v9, 0, v7);

  return v10;
}

void sub_8F6C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FocusCustomizationInvitationView(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = objc_opt_self();
  v7 = *&v0[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode];
  v8 = [v7 tintColorName];
  v9 = [v6 colorForColorName:v8];

  v10 = [v0 addBoldTrayButtonWithColor:v9];
  v11 = sub_7700();
  sub_770C(0xD000000000000023, 0x800000000001A4F0, v11, v12, 0, 0);

  v13 = sub_13844();

  [v10 setTitle:v13 forState:0];

  [v10 addTarget:v0 action:"_nextButtonPressed:" forControlEvents:64];
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *v5 = swift_getKeyPath();
  sub_80B0(&qword_275A8, "NA");
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v3 + 28)) = v7;
  v15 = (v5 + *(v3 + 32));
  *v15 = sub_9B7C;
  v15[1] = v14;
  v16 = objc_allocWithZone(sub_80B0(&qword_275E0, &qword_16AB8));
  v17 = v7;
  v18 = v0;
  v19 = sub_13624();
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v18 contentView];
  [v20 addSubview:v19];

  sub_80B0(&unk_278E0, qword_16AC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_16A10;
  v22 = [v19 leadingAnchor];
  v23 = [v18 contentView];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v21 + 32) = v25;
  v26 = [v19 trailingAnchor];
  v27 = [v18 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v21 + 40) = v29;
  v30 = [v19 topAnchor];
  v31 = [v18 contentView];
  v32 = [v31 topAnchor];

  v33 = [objc_opt_self() currentDevice];
  v34 = [v33 userInterfaceIdiom];

  v35 = -36.0;
  if (v34 == &dword_0 + 1)
  {
    v35 = -60.0;
  }

  v36 = [v30 constraintEqualToAnchor:v32 constant:v35];

  *(v21 + 48) = v36;
  v37 = [v19 bottomAnchor];

  v38 = [v18 contentView];
  v39 = [v38 bottomAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v21 + 56) = v40;
  v41 = objc_opt_self();
  sub_9ED4(0, &qword_27578, NSLayoutConstraint_ptr);
  isa = sub_138D4().super.isa;

  [v41 activateConstraints:isa];
}

void sub_9528()
{
  v1 = [v0 setupNavigationController];
  if (v1)
  {
    v2 = v1;
    [v1 createDefaultModeConfigurationForMode:*&v0[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode]];
  }
}

id sub_9618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_13844();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_13844();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_13844();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id sub_9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_13844();

  if (a4)
  {
    v12 = sub_13844();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id sub_9870()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_98B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_80B0(&qword_275B0, &qword_16AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_80B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_9990()
{
  result = qword_275C8;
  if (!qword_275C8)
  {
    sub_9A4C(&qword_275B0, &qword_16AA8);
    sub_9A94(&qword_275D0, &type metadata accessor for SemanticFocusInformationView, &protocol conformance descriptor for SemanticFocusInformationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_275C8);
  }

  return result;
}

uint64_t sub_9A4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_9A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_9ADC(uint64_t a1)
{
  v2 = sub_80B0(&qword_275B0, &qword_16AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9B44()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_9B7C()
{
  v1 = *(v0 + 16);
  v2 = [v1 setupNavigationController];
  if (v2)
  {
    v3 = v2;
    [v2 createDefaultModeConfigurationForMode:*&v1[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode]];
  }
}

uint64_t sub_9C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_80B0(&qword_275E8, qword_16B18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_9D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_80B0(&qword_275E8, qword_16B18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_9DD0(uint64_t a1)
{
  sub_9E7C(319);
  if (v1 <= 0x3F)
  {
    sub_9ED4(319, &unk_279A0, DNDMode_ptr);
    if (v2 <= 0x3F)
    {
      sub_9F1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_9E7C(uint64_t a1)
{
  if (!qword_27648)
  {
    sub_13694();
    v1 = sub_135F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27648);
    }
  }
}

uint64_t sub_9ED4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_9F1C()
{
  result = qword_27650;
  if (!qword_27650)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27650);
  }

  return result;
}

unint64_t sub_9F94()
{
  result = qword_276B0;
  if (!qword_276B0)
  {
    sub_9A4C(&qword_276B8, &unk_16B90);
    sub_9A94(&qword_275C0, &type metadata accessor for FocusInformationView, &protocol conformance descriptor for FocusInformationView);
    sub_9990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_276B0);
  }

  return result;
}

id sub_A078()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id sub_A0B0()
{
  v0 = objc_allocWithZone(FCUISettingsDeferredURLState);

  return [v0 init];
}

uint64_t sub_A0E8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_80B0(&qword_276C0, &qword_16BA0);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v26 = a1;
  v10 = a2;
  v25[1] = sub_80B0(&qword_276C8, &qword_16BA8);
  v11 = sub_9A4C(&qword_276D0, &qword_16BB0);
  v12 = sub_9ED4(255, &unk_279A0, DNDMode_ptr);
  v13 = sub_9A4C(&qword_276D8, &qword_16BB8);
  v14 = sub_13554();
  v15 = sub_CB8C(&qword_276E0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_A8F0();
  v18 = sub_BA84(&qword_276F0, &qword_276D8, &qword_16BB8, &protocol conformance descriptor for IDView<A, B>);
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = OpaqueTypeConformance2;
  v34 = v17;
  v35 = v18;
  swift_getOpaqueTypeConformance2();
  sub_13814();
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v26;
  *(v19 + 24) = v10;
  sub_BA84(&qword_276F8, &qword_276C0, &qword_16BA0, &protocol conformance descriptor for SettingsPane<A>);
  v21 = v20;
  v22 = v10;
  v23 = v27;
  sub_137D4();
  return (*(v28 + 8))(v8, v23);
}

uint64_t sub_A3E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_13584();
  __chkstk_darwin(v5 - 8);
  v6 = sub_13554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_80B0(&qword_276D0, &qword_16BB0);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  sub_9ED4(0, &qword_277C8, &off_207C0);
  v13 = [objc_allocWithZone(PSSpecifier) init];
  v29 = a1;
  [v13 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  v30 = a2;
  [v13 setProperty:a2 forKey:@"FCUISettingsDeferredURLStateKey"];
  v14 = sub_13844();
  [v13 setProperty:v14 forKey:PSDataSourceClassKey];

  sub_13564();
  sub_13544();
  sub_13684();
  sub_9ED4(0, &qword_277D0, NSBundle_ptr);
  if (!sub_139A4())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = sub_136D4();
  v18 = v17;
  v20 = v19;
  v21 = sub_CB8C(&qword_276E0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_13734();
  sub_CBD8(v16, v18, v20 & 1);

  (*(v7 + 8))(v9, v6);
  sub_9ED4(0, &unk_279A0, DNDMode_ptr);
  v22 = swift_allocObject();
  v23 = v29;
  v24 = v30;
  *(v22 + 16) = v29;
  *(v22 + 24) = v24;
  v25 = v23;
  v26 = v24;
  sub_80B0(&qword_276D8, &qword_16BB8);
  v34 = v6;
  v35 = v21;
  swift_getOpaqueTypeConformance2();
  sub_A8F0();
  sub_BA84(&qword_276F0, &qword_276D8, &qword_16BB8, &protocol conformance descriptor for IDView<A, B>);
  v27 = v32;
  sub_13744();

  return (*(v31 + 8))(v12, v27);
}

uint64_t sub_A8A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_A8F0()
{
  result = qword_276E8;
  if (!qword_276E8)
  {
    sub_9ED4(255, &unk_279A0, DNDMode_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_276E8);
  }

  return result;
}

id sub_A958@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_13584();
  __chkstk_darwin(v4 - 8);
  v9 = *a1;
  type metadata accessor for SettingsActivityViewController();
  v5 = [objc_allocWithZone(PSSpecifier) init];
  v6 = [v9 modeIdentifier];
  [v5 setIdentifier:v6];

  sub_CC04();

  v7 = sub_13844();

  [v5 setProperty:v9 forKey:v7];

  sub_13564();
  sub_13544();
  *(a2 + *(sub_80B0(&qword_276D8, &qword_16BB8) + 52)) = v9;

  return v9;
}

uint64_t sub_AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_13584();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_13614();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v7 = sub_13424();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  sub_80B0(&qword_277A0, &qword_16CA0);
  v4[31] = swift_task_alloc();
  v8 = sub_13404();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  sub_13904();
  v4[35] = sub_138F4();
  v10 = sub_138E4();

  return _swift_task_switch(sub_AD50, v10, v9);
}

uint64_t sub_AD50()
{
  v114 = v0;
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);

  sub_137F4();
  sub_133D4();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    sub_C224(*(v0 + 248));
    sub_137E4();
    sub_13804();
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));
    sub_137E4();
    v11 = sub_133E4();
    *(v0 + 56) = v11;
    *(v0 + 64) = v12;
    *(v0 + 72) = 47;
    *(v0 + 80) = 0xE100000000000000;
    sub_C28C(v11, v12, v13);
    v14 = sub_139E4();

    v15 = 0;
    v16 = *(v14 + 16);
    v17 = &_swiftEmptyArrayStorage;
LABEL_4:
    v18 = (v14 + 40 + 16 * v15);
    while (v16 != v15)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_92;
      }

      v20 = *(v18 - 1);
      v19 = *v18;
      v18 += 2;
      ++v15;
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {

        v113 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_C8F8(0, *(v17 + 2) + 1, 1);
          v17 = v113;
        }

        v1 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v1 >= v22 >> 1)
        {
          sub_C8F8((v22 > 1), v1 + 1, 1);
          v17 = v113;
        }

        *(v17 + 2) = v1 + 1;
        v23 = &v17[16 * v1];
        *(v23 + 4) = v20;
        *(v23 + 5) = v19;
        goto LABEL_4;
      }
    }

    v24 = *(v17 + 2);
    if (!v24)
    {
      sub_133F4();
      if (v32)
      {
        v33 = *(v0 + 152);

        v34 = sub_13844();

        [v33 setSpecifierIdentifierToScrollAndHighlight:v34];

        goto LABEL_94;
      }

      v24 = *(v17 + 2);
      if (!v24)
      {

        goto LABEL_94;
      }
    }

    v25 = (*(v0 + 176) + 8);
    while (1)
    {
      while (1)
      {
        v27 = *(v17 + 4);
        v26 = *(v17 + 5);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v24 - 1) > *(v17 + 3) >> 1)
        {
          v17 = sub_CA24(isUniquelyReferenced_nonNull_native, v24, 1, v17);
        }

        sub_CB30((v17 + 32));
        v29 = *(v17 + 2);
        memmove(v17 + 32, v17 + 48, 16 * v29 - 16);
        *(v17 + 2) = v29 - 1;
        if ((v27 != 0x7075746573 || v26 != 0xE500000000000000) && (sub_13B44() & 1) == 0)
        {
          break;
        }

        [*(v0 + 160) setShouldPresentSetupFlow:1];
        v24 = *(v17 + 2);
        if (!v24)
        {
          goto LABEL_28;
        }
      }

      if ((v27 != 0x7453207375636F46 || v26 != 0xEC00000073757461) && (sub_13B44() & 1) == 0)
      {
        break;
      }

      v30 = *(v0 + 184);
      v31 = *(v0 + 168);
      type metadata accessor for FocusStatusConfigurationViewController();
      sub_13574();
      sub_CB8C(&qword_277B0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_13604();
      (*v25)(v30, v31);
      v24 = *(v17 + 2);
      if (!v24)
      {
LABEL_28:

        goto LABEL_94;
      }
    }

    v35 = sub_13844();
    v36 = [objc_opt_self() serviceForClientIdentifier:v35];

    *(v0 + 88) = 0;
    v37 = [v36 allModesReturningError:v0 + 88];
    v38 = *(v0 + 88);
    v112 = sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    v102 = sub_A8F0();
    v39 = sub_13914();
    v104 = v38;

    v105 = v36;
    if ((v39 & 0xC000000000000001) == 0)
    {
      v56 = *(v39 + 32);
      v109 = ((1 << v56) + 63) >> 6;
      if ((v56 & 0x3Fu) <= 0xD)
      {
        goto LABEL_54;
      }

      goto LABEL_106;
    }

    v41 = &_swiftEmptySetSingleton;
    v113 = &_swiftEmptySetSingleton;
    sub_13A34();
    v42 = sub_13A94();
    if (!v42)
    {
LABEL_52:

      goto LABEL_69;
    }

LABEL_38:
    *(v0 + 128) = v42;
    swift_dynamicCast();
    v43 = [*(v0 + 120) visibility];
    v44 = *(v0 + 120);
    if (v43 == &dword_0 + 1)
    {

      goto LABEL_37;
    }

    v45 = *(v41 + 16);
    if (*(v41 + 24) <= v45)
    {
      sub_C2E0(v45 + 1);
      v41 = v113;
    }

    v39 = v44;
    v46 = sub_139B4(*(v41 + 40));
    v47 = v41 + 56;
    v48 = -1 << *(v41 + 32);
    v49 = v46 & ~v48;
    v50 = v49 >> 6;
    if (((-1 << v49) & ~*(v41 + 56 + 8 * (v49 >> 6))) != 0)
    {
      v51 = __clz(__rbit64((-1 << v49) & ~*(v41 + 56 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_51;
    }

    v52 = 0;
    v53 = (63 - v48) >> 6;
    while (++v50 != v53 || (v52 & 1) == 0)
    {
      v54 = v50 == v53;
      if (v50 == v53)
      {
        v50 = 0;
      }

      v52 |= v54;
      v55 = *(v47 + 8 * v50);
      if (v55 != -1)
      {
        v51 = __clz(__rbit64(~v55)) + (v50 << 6);
LABEL_51:
        *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        *(*(v41 + 48) + 8 * v51) = v44;
        ++*(v41 + 16);
LABEL_37:
        v42 = sub_13A94();
        if (!v42)
        {
          goto LABEL_52;
        }

        goto LABEL_38;
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_106:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

LABEL_54:
        v108 = &v101;
        __chkstk_darwin(v40);
        v110 = &v101 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v110, v57);
        v111 = 0;
        v58 = 0;
        v59 = 1 << *(v39 + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v61 = v60 & *(v39 + 56);
        v62 = (v59 + 63) >> 6;
        while (v61)
        {
          v63 = __clz(__rbit64(v61));
          v61 &= v61 - 1;
LABEL_64:
          v66 = v63 | (v58 << 6);
          if ([*(*(v39 + 48) + 8 * v66) visibility] != &dword_0 + 1)
          {
            *&v110[(v66 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v66;
            if (__OFADD__(v111++, 1))
            {
              __break(1u);
LABEL_68:
              v41 = sub_C704(v110, v109, v111, v39);
              goto LABEL_69;
            }
          }
        }

        v64 = v58;
        while (1)
        {
          v58 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          if (v58 >= v62)
          {
            goto LABEL_68;
          }

          v65 = *(v39 + 56 + 8 * v58);
          ++v64;
          if (v65)
          {
            v63 = __clz(__rbit64(v65));
            v61 = (v65 - 1) & v65;
            goto LABEL_64;
          }
        }
      }

      v100 = swift_slowAlloc();
      v41 = sub_C674(v100, v109, v39, sub_BACC);

      v101 = 0;
LABEL_69:
      v110 = v41;
      if ((v41 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_13A34();
        sub_13944();
        v68 = *(v0 + 16);
        v69 = *(v0 + 24);
        v70 = *(v0 + 32);
        v71 = *(v0 + 40);
        v72 = *(v0 + 48);
      }

      else
      {
        v73 = -1 << *(v41 + 32);
        v69 = (v41 + 56);
        v74 = ~v73;
        v75 = -v73;
        v76 = v75 < 64 ? ~(-1 << v75) : -1;
        v72 = v76 & *(v41 + 56);

        v70 = v74;
        v71 = 0;
        v68 = v41;
      }

      v103 = v70;
      v77 = (v70 + 64) >> 6;
      v107 = v68;
      v108 = v69;
      v109 = v71;
      if (v68 < 0)
      {
        break;
      }

LABEL_76:
      v78 = v71;
      v79 = v72;
      v39 = v110;
      if (v72)
      {
LABEL_80:
        v80 = v72;
        v72 = (v79 - 1) & v79;
        v1 = v68;
        v81 = *(*(v68 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v79)))));
        if (v81)
        {
          goto LABEL_84;
        }

        goto LABEL_92;
      }

      while (1)
      {
        v71 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v71 >= v77)
        {
          v1 = v68;
          goto LABEL_92;
        }

        v79 = v69[v71];
        ++v78;
        if (v79)
        {
          goto LABEL_80;
        }
      }
    }

    while (1)
    {
      v1 = v68;
      v82 = sub_13A94();
      if (!v82)
      {
        break;
      }

      *(v0 + 112) = v82;
      swift_dynamicCast();
      v81 = *(v0 + 104);
      v80 = v72;
      if (!v81)
      {
        break;
      }

LABEL_84:
      v106 = v80;
      v111 = v81;
      v83 = [v81 modeIdentifier];
      v84 = sub_13874();
      v86 = v85;

      if (v84 == v27 && v86 == v26)
      {

LABEL_101:
        sub_CB84(v107);

        v97 = v111;
        if ([v111 isPlaceholder])
        {
          v98 = *(v0 + 152);
          v99 = sub_13844();

          [v98 setSpecifierIdentifierToScrollAndSelect:v99];
        }

        else
        {

          *(v0 + 96) = v97;
          sub_13604();
        }

        goto LABEL_93;
      }

      v88 = sub_13B44();

      if (v88)
      {
        goto LABEL_101;
      }

      v68 = v107;
      v69 = v108;
      v109 = v71;
      if ((v107 & 0x8000000000000000) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_92:

    sub_CB84(v1);

LABEL_93:

LABEL_94:
    v90 = *(v0 + 264);
    v89 = *(v0 + 272);
    v91 = *(v0 + 256);
    v93 = *(v0 + 200);
    v92 = *(v0 + 208);
    v94 = *(v0 + 192);
    sub_13804();
    (*(v93 + 8))(v92, v94);
    (*(v90 + 8))(v89, v91);
  }

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_B9D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_CBEC;

  return sub_AACC(a1, a2, v7, v6);
}

uint64_t sub_BA84(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_9A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_BB08()
{
  v0 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  [objc_allocWithZone(FCUISettingsDeferredURLState) init];
  return v0;
}

unint64_t sub_BB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27700;
  if (!qword_27700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27700);
  }

  return result;
}

uint64_t sub_BBD0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_80B0(&qword_276C0, &qword_16BA0);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v25 = v6;
  v9 = v7;
  v24[1] = sub_80B0(&qword_276C8, &qword_16BA8);
  v10 = sub_9A4C(&qword_276D0, &qword_16BB0);
  v11 = sub_9ED4(255, &unk_279A0, DNDMode_ptr);
  v12 = sub_9A4C(&qword_276D8, &qword_16BB8);
  v13 = sub_13554();
  v14 = sub_CB8C(&qword_276E0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v29 = v13;
  v30 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_A8F0();
  v17 = sub_BA84(&qword_276F0, &qword_276D8, &qword_16BB8, &protocol conformance descriptor for IDView<A, B>);
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = OpaqueTypeConformance2;
  v33 = v16;
  v34 = v17;
  swift_getOpaqueTypeConformance2();
  sub_13814();
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v25;
  *(v18 + 24) = v9;
  sub_BA84(&qword_276F8, &qword_276C0, &qword_16BA0, &protocol conformance descriptor for SettingsPane<A>);
  v20 = v19;
  v21 = v9;
  v22 = v26;
  sub_137D4();
  return (*(v27 + 8))(v5, v22);
}

id sub_BEC4@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(FCUISettingsDeferredURLState) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_BF44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_BF50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_BF98(uint64_t result, int a2, int a3)
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

uint64_t sub_BFE4()
{
  sub_9A4C(&qword_276C0, &qword_16BA0);
  sub_BA84(&qword_276F8, &qword_276C0, &qword_16BA0, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C07C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_C130;

  return sub_AACC(a1, a2, v7, v6);
}

uint64_t sub_C130()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_C224(uint64_t a1)
{
  v2 = sub_80B0(&qword_277A0, &qword_16CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_277A8;
  if (!qword_277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_277A8);
  }

  return result;
}

uint64_t sub_C2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_80B0(&qword_277B8, &qword_16CA8);
  result = sub_13AC4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_139B4(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_C508(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_C704(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_C674(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_C508(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_C704(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_80B0(&qword_277B8, &qword_16CA8);
  result = sub_13AD4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_139B4(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_C8F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_C918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_C918(char *result, int64_t a2, char a3, char *a4)
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
    sub_80B0(&qword_277C0, &unk_16CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CA24(char *result, int64_t a2, char a3, char *a4)
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
    sub_80B0(&qword_277C0, &unk_16CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_CB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_CBD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_CC74()
{
  sub_13454();
  swift_allocObject();
  return sub_13444();
}

id sub_CCB8()
{
  v1 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  sub_13454();
  swift_allocObject();
  *&v0[v1] = sub_13444();
  *&v0[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag] = &_swiftEmptySetSingleton;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SettingsActivityViewController();
  return objc_msgSendSuper2(&v3, "initWithNibName:bundle:", 0, 0);
}

void sub_CDF4()
{
  v1 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  sub_13454();
  swift_allocObject();
  *(v0 + v1) = sub_13444();
  *(v0 + OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag) = &_swiftEmptySetSingleton;
  sub_13B04();
  __break(1u);
}

void sub_CF3C()
{
  v79 = sub_13534();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_13524();
  v75 = *(v81 - 8);
  __chkstk_darwin(v81);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_80B0(&qword_277E8, &qword_16CF0);
  v82 = *(v4 - 1);
  v83 = v4;
  __chkstk_darwin(v4);
  v78 = &v75 - v5;
  v86 = sub_80B0(&qword_277F0, &qword_16CF8);
  v84 = *(v86 - 8);
  v6 = __chkstk_darwin(v86);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v75 - v8;
  v9 = sub_80B0(&qword_277F8, &qword_16D00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - v11;
  v13 = type metadata accessor for SettingsActivityViewController();
  v89.receiver = v0;
  v89.super_class = v13;
  objc_msgSendSuper2(&v89, "viewDidLoad");
  sub_13434();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BA84(&qword_27800, &qword_277F8, &qword_16D00, &protocol conformance descriptor for Published<A>.Publisher);
  sub_135E4();
  v14 = v0;

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  sub_135D4();
  swift_endAccess();

  v15 = sub_DE74();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 modeIdentifier];
    sub_13874();

    sub_13514();
    v19 = v76;
    v18 = v77;
    v20 = v79;
    (*(v77 + 104))(v76, enum case for ActivityConfigurationContext.iosSettings(_:), v79);
    v21 = sub_ED64(&qword_27808, &type metadata accessor for ActivityDetailView, &protocol conformance descriptor for ActivityDetailView);
    v22 = v78;
    v23 = v81;
    sub_136F4();
    (*(v18 + 8))(v19, v20);
    (*(v75 + 8))(v3, v23);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v87 = v23;
    v88 = v21;
    swift_getOpaqueTypeConformance2();
    v24 = v85;
    v25 = v83;
    sub_136E4();

    (*(v82 + 8))(v22, v25);

    (*(v84 + 16))(v80, v24, v86);
    v26 = objc_allocWithZone(sub_80B0(&qword_27810, qword_16D08));
    v27 = sub_136A4();
    [v14 addChildViewController:v27];
    v28 = [v27 view];
    if (v28)
    {
      v29 = v28;
      v30 = [objc_opt_self() clearColor];
      [v29 setBackgroundColor:v30];

      v31 = [v27 view];
      if (v31)
      {
        v32 = [v14 view];
        if (v32)
        {
          v33 = v32;
          [v32 bounds];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          [v31 setFrame:{v35, v37, v39, v41}];
          v42 = [v14 view];
          if (v42)
          {
            v43 = v42;
            v44 = [v27 view];

            if (v44)
            {
              [v43 addSubview:v44];

              v45 = [v27 view];
              if (v45)
              {
                v83 = v16;
                [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

                sub_80B0(&unk_278E0, qword_16AC0);
                v46 = swift_allocObject();
                *(v46 + 16) = xmmword_16A10;
                v47 = [v27 view];

                if (v47)
                {
                  v48 = [v47 topAnchor];

                  v49 = [v14 view];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = [v49 topAnchor];

                    v52 = [v48 constraintEqualToAnchor:v51];
                    *(v46 + 32) = v52;
                    v53 = [v27 view];

                    if (v53)
                    {
                      v54 = [v53 leadingAnchor];

                      v55 = [v14 view];
                      if (v55)
                      {
                        v56 = v55;
                        v57 = [v55 leadingAnchor];

                        v58 = [v54 constraintEqualToAnchor:v57];
                        *(v46 + 40) = v58;
                        v59 = [v14 view];
                        if (v59)
                        {
                          v60 = v59;
                          v61 = [v59 trailingAnchor];

                          v62 = [v27 view];
                          if (v62)
                          {
                            v63 = [v62 trailingAnchor];

                            v64 = [v61 constraintEqualToAnchor:v63];
                            *(v46 + 48) = v64;
                            v65 = [v14 view];
                            if (v65)
                            {
                              v66 = v65;
                              v67 = [v65 bottomAnchor];

                              v68 = [v27 view];
                              if (v68)
                              {
                                v69 = objc_opt_self();
                                v70 = [v68 bottomAnchor];

                                v71 = [v67 constraintEqualToAnchor:v70];
                                *(v46 + 56) = v71;
                                sub_9ED4(0, &qword_27578, NSLayoutConstraint_ptr);
                                isa = sub_138D4().super.isa;

                                [v69 activateConstraints:isa];

                                [v27 didMoveToParentViewController:v14];
                                v73 = [v14 navigationItem];
                                v74 = sub_E7B0();
                                [v73 setScrollEdgeAppearance:v74];

                                (*(v84 + 8))(v85, v86);
                                return;
                              }

LABEL_31:
                              __break(1u);
                              return;
                            }

LABEL_30:
                            __break(1u);
                            goto LABEL_31;
                          }

LABEL_29:
                          __break(1u);
                          goto LABEL_30;
                        }

LABEL_28:
                        __break(1u);
                        goto LABEL_29;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_DA9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DAD4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_137A4();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_137C4();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  sub_9ED4(0, &qword_27870, OS_dispatch_queue_ptr);
  v12 = sub_13984();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v10;
  v13[4] = v11;
  aBlock[4] = sub_EB88;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_DDE8;
  aBlock[3] = &unk_212E0;
  v14 = _Block_copy(aBlock);

  sub_137B4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_ED64(&qword_27878, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_80B0(&qword_27880, &qword_16D70);
  sub_BA84(&qword_27888, &qword_27880, &qword_16D70, &protocol conformance descriptor for [A]);
  sub_13A04();
  sub_13994();
  _Block_release(v14);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_DDE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_DE74()
{
  result = [v0 specifier];
  if (result)
  {
    v2 = result;
    v3 = sub_13844();
    v4 = [v2 propertyForKey:v3];

    if (v4)
    {
      sub_139F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      sub_9ED4(0, &unk_279A0, DNDMode_ptr);
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_EAE8(v8, &qword_27868, &qword_16D68);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_DFA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
    }
  }
}

id sub_E090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsActivityViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_E118(uint64_t a1, id *a2)
{
  result = sub_13854();
  *a2 = 0;
  return result;
}

uint64_t sub_E190(uint64_t a1, id *a2)
{
  v3 = sub_13864();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_E210@<X0>(uint64_t *a1@<X8>)
{
  sub_13874();
  v2 = sub_13844();

  *a1 = v2;
  return result;
}

uint64_t sub_E254()
{
  sub_13874();
  v0 = sub_138C4();

  return v0;
}

uint64_t sub_E290(uint64_t a1)
{
  sub_13874();
  sub_13894();
}

Swift::Int sub_E2E4(uint64_t a1)
{
  sub_13874();
  sub_13B64();
  sub_13894();
  v1 = sub_13B74();

  return v1;
}

uint64_t sub_E358(void *a1, uint64_t *a2)
{
  v2 = sub_13874();
  v4 = v3;
  if (v2 == sub_13874() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_13B44();
  }

  return v7 & 1;
}

uint64_t sub_E3E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_13844();

  *a2 = v3;
  return result;
}

uint64_t sub_E428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13874();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_E454(uint64_t a1)
{
  v2 = sub_ED64(&qword_27858, type metadata accessor for Key, &unk_16EE0);
  v3 = sub_ED64(&unk_278B0, type metadata accessor for Key, &unk_16E34);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_E510(uint64_t a1)
{
  sub_13874();
  sub_13B64();
  sub_13894();
  v2 = sub_13B74();

  return sub_E5A4(a1, v2);
}

unint64_t sub_E5A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_13874();
      v8 = v7;
      if (v6 == sub_13874() && v8 == v9)
      {
        break;
      }

      v11 = sub_13B44();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_80B0(&qword_27860, &qword_16D60);
    v3 = sub_13B14();
    v4 = a1 + 32;

    while (1)
    {
      sub_EA68(v4, &v11);
      v5 = v11;
      result = sub_E510(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_EAD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

id sub_E7B0()
{
  v0 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v0 configureWithTransparentBackground];
  sub_80B0(&qword_27840, &qword_16D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16CC0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v2 = objc_opt_self();
  v3 = NSForegroundColorAttributeName;
  v4 = [v2 clearColor];
  v5 = sub_9ED4(0, &qword_27848, UIColor_ptr);
  *(inited + 64) = v5;
  *(inited + 40) = v4;
  sub_E6A8(inited);
  swift_setDeallocating();
  sub_EAE8(inited + 32, &qword_27850, &qword_16D58);
  type metadata accessor for Key();
  sub_ED64(&qword_27858, type metadata accessor for Key, &unk_16EE0);
  isa = sub_13824().super.isa;

  [v0 setTitleTextAttributes:isa];

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_16CC0;
  *(v7 + 32) = v3;
  v8 = [v2 clearColor];
  *(v7 + 64) = v5;
  *(v7 + 40) = v8;
  sub_E6A8(v7);
  swift_setDeallocating();
  sub_EAE8(v7 + 32, &qword_27850, &qword_16D58);
  v9 = sub_13824().super.isa;

  [v0 setLargeTitleTextAttributes:v9];

  return v0;
}

void type metadata accessor for Key()
{
  if (!qword_27890)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27890);
    }
  }
}

uint64_t sub_EA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_80B0(&qword_27850, &qword_16D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_EAD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_EAE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_80B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_EB48()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_EB88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 navigationItem];
    v3 = sub_13844();
    [v2 setTitle:v3];

    v4 = [v1 navigationItem];
    v5 = sub_E7B0();
    [v4 setScrollEdgeAppearance:v5];
  }
}

uint64_t sub_EC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_ED64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_EDC8(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_EE20(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_EE6C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_EE9C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_EEF4()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_EF24(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_EF7C(uint64_t a1, uint64_t a2)
{
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13754();
  return v3;
}

uint64_t sub_F030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v42 = sub_134E4();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13904();
  sub_F4B8(v1, &v44);
  v6 = sub_138F4();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(v1 + 80);
  *(v7 + 96) = *(v1 + 64);
  *(v7 + 112) = v8;
  *(v7 + 128) = *(v1 + 96);
  *(v7 + 144) = *(v1 + 112);
  v9 = *(v1 + 16);
  *(v7 + 32) = *v1;
  *(v7 + 48) = v9;
  v10 = *(v1 + 48);
  *(v7 + 64) = *(v1 + 32);
  *(v7 + 80) = v10;
  sub_F4B8(v1, &v44);
  v11 = sub_138F4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = *(v1 + 80);
  *(v12 + 96) = *(v1 + 64);
  *(v12 + 112) = v13;
  *(v12 + 128) = *(v1 + 96);
  *(v12 + 144) = *(v1 + 112);
  v14 = *(v1 + 16);
  *(v12 + 32) = *v1;
  *(v12 + 48) = v14;
  v15 = *(v1 + 48);
  *(v12 + 64) = *(v1 + 32);
  *(v12 + 80) = v15;
  sub_13784();
  v40 = *(&v44 + 1);
  v41 = v44;
  v38 = v46;
  v39 = v45;
  sub_F4B8(v1, &v44);
  v16 = sub_138F4();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  v18 = *(v1 + 80);
  *(v17 + 96) = *(v1 + 64);
  *(v17 + 112) = v18;
  *(v17 + 128) = *(v1 + 96);
  *(v17 + 144) = *(v1 + 112);
  v19 = *(v1 + 16);
  *(v17 + 32) = *v1;
  *(v17 + 48) = v19;
  v20 = *(v1 + 48);
  *(v17 + 64) = *(v1 + 32);
  *(v17 + 80) = v20;
  sub_F4B8(v1, &v44);
  v21 = sub_138F4();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  v23 = *(v1 + 80);
  *(v22 + 96) = *(v1 + 64);
  *(v22 + 112) = v23;
  *(v22 + 128) = *(v1 + 96);
  *(v22 + 144) = *(v1 + 112);
  v24 = *(v1 + 16);
  *(v22 + 32) = *v1;
  *(v22 + 48) = v24;
  v25 = *(v1 + 48);
  *(v22 + 64) = *(v1 + 32);
  *(v22 + 80) = v25;
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13784();
  v37[1] = v44;
  sub_F4B8(v1, &v44);
  v26 = sub_138F4();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = &protocol witness table for MainActor;
  v28 = *(v1 + 80);
  *(v27 + 96) = *(v1 + 64);
  *(v27 + 112) = v28;
  *(v27 + 128) = *(v1 + 96);
  *(v27 + 144) = *(v1 + 112);
  v29 = *(v1 + 16);
  *(v27 + 32) = *v1;
  *(v27 + 48) = v29;
  v30 = *(v1 + 48);
  *(v27 + 64) = *(v1 + 32);
  *(v27 + 80) = v30;
  sub_F4B8(v1, &v44);
  v31 = sub_138F4();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = &protocol witness table for MainActor;
  v33 = *(v2 + 80);
  *(v32 + 96) = *(v2 + 64);
  *(v32 + 112) = v33;
  *(v32 + 128) = *(v2 + 96);
  *(v32 + 144) = *(v2 + 112);
  v34 = *(v2 + 16);
  *(v32 + 32) = *v2;
  *(v32 + 48) = v34;
  v35 = *(v2 + 48);
  *(v32 + 64) = *(v2 + 32);
  *(v32 + 80) = v35;
  sub_13784();
  v37[0] = v44;
  (*(v3 + 104))(v5, enum case for ActivityEditView.Use.setup(_:), v42);

  return sub_134F4();
}

void *sub_F4F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  sub_80B0(&qword_279E8, &qword_17120);
  sub_13764();
  v3(v5, v6, 0);

  result = sub_13764();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_F5B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  sub_80B0(&qword_279E8, &qword_17120);
  sub_13774();
  return (*(v1 + 64))(v2, v3, 0);
}

uint64_t sub_F644@<X0>(uint64_t *a1@<X8>)
{
  sub_80B0(&unk_279F0, &qword_17128);
  sub_13764();
  v3 = v9;
  if (v9)
  {
    v4 = v8;
  }

  else
  {
    v4 = sub_134D4();
    v3 = v6;
  }

  v5 = *(v1 + 64);

  v5(v4, v3, 1);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t *sub_F704(uint64_t *result)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;

    sub_80B0(&unk_279F0, &qword_17128);
    sub_13774();
    return (*(v1 + 64))(v3, v2, 1);
  }

  return result;
}

void *sub_F798@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  sub_80B0(&qword_279E8, &qword_17120);
  sub_13764();
  v3(v5, v6, 2);

  result = sub_13764();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_F85C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t *sub_F8E4(uint64_t *result)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;

    sub_80B0(&qword_279E8, &qword_17120);
    sub_13774();
    return (*(v1 + 64))(v3, v2, 2);
  }

  return result;
}

__n128 sub_F978@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_13754();
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13754();
  sub_13754();
  result = v15;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v15;
  *(a7 + 64) = v16;
  *(a7 + 72) = v15;
  *(a7 + 88) = v16;
  *(a7 + 96) = v15;
  *(a7 + 112) = v16;
  return result;
}

id sub_FB20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_isContentScrolling] = 0;
  *&v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_keyboardDismissalTapRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes] = a1;
  v7 = sub_13844();
  v8 = sub_13844();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithTitle:detailText:icon:contentLayout:", v7, v8, 0, 3);

  return v9;
}

id sub_FC24(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);

  return sub_FB20(v3);
}

void sub_FCE4()
{
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v1 = sub_7700();
  sub_770C(0xD00000000000001CLL, 0x800000000001A830, v1, v2, 0, 0);

  v3 = sub_13844();

  [v0 setHeaderViewTitle:v3];

  v4 = [v0 addBoldTrayButton];
  v5 = sub_7700();
  sub_770C(0xD000000000000016, 0x800000000001A850, v5, v6, 0, 0);

  v7 = sub_13844();

  [v4 setTitle:v7 forState:0];

  [v4 addTarget:v0 action:"_saveButtonPressed:" forControlEvents:64];

  sub_10370(v8);
  v10 = v9;

  sub_1222C(v10);

  v12 = sub_10608(v11);

  sub_1222C(v12);

  *(swift_allocObject() + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v4;
  v14 = v0;
  v15 = v4;
  sub_13754();
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13754();
  sub_13754();
  v16 = objc_allocWithZone(sub_80B0(&qword_278D8, qword_16F48));
  v17 = sub_13624();
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v14 contentView];
  [v18 addSubview:v17];

  sub_80B0(&unk_278E0, qword_16AC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_16A10;
  v20 = [v17 leadingAnchor];
  v21 = [v14 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v19 + 32) = v23;
  v24 = [v17 trailingAnchor];
  v25 = [v14 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v19 + 40) = v27;
  v28 = [v17 topAnchor];
  v29 = [v14 contentView];
  v30 = [v29 topAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v19 + 48) = v31;
  v32 = [v17 bottomAnchor];

  v33 = [v14 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v19 + 56) = v35;
  v36 = objc_opt_self();
  sub_9ED4(0, &qword_27578, NSLayoutConstraint_ptr);
  isa = sub_138D4().super.isa;
  [v36 activateConstraints:isa];

  sub_109A8(v15);
  v38 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v14 action:"_tapped"];
  [v38 setDelegate:v14];
  v39 = *&v14[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_keyboardDismissalTapRecognizer];
  *&v14[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_keyboardDismissalTapRecognizer] = v38;
  v40 = v38;

  v41 = [v14 view];
  if (v41)
  {
    v42 = v41;

    [v42 addGestureRecognizer:v40];
  }

  else
  {
    __break(1u);
  }
}

void sub_10370(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_13A34();
    sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    sub_A8F0();
    sub_13944();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = &_swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_13A94() || (sub_9ED4(0, &unk_279A0, DNDMode_ptr), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_CB84(v1);
      return;
    }

LABEL_17:
    v12 = [v11 symbolImageName];
    if (v12)
    {
      v13 = v12;
      v19 = sub_13874();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_CA24(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_CA24((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10608(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_13A34();
    sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    sub_A8F0();
    sub_13944();
    result = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = &_swiftEmptyArrayStorage;
  v22 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_CB84(v22);
      return v9;
    }

    while (1)
    {
      v15 = [v14 name];
      v16 = sub_13874();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_CA24(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_CA24((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v4 = v12;
      v5 = v13;
      result = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_13A94())
      {
        sub_9ED4(0, &unk_279A0, DNDMode_ptr);
        swift_dynamicCast();
        v14 = v28;
        v12 = v4;
        v13 = v5;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_108D4()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

  return 0;
}

id sub_109A8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName + 8);
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName + 8)) != 0 && ((v2 & 0x2000000000000000) != 0 ? (v4 = HIBYTE(v2) & 0xF) : (v4 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName) & 0xFFFFFFFFFFFFLL), v4))
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName) & 0xFFFFFFFFFFFFLL;
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setEnabled:v6];
}

uint64_t sub_10A18()
{

  sub_10A84(v0);
  v2 = v1;

  v3 = sub_1222C(v2);

  return v3;
}

void sub_10A84(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_13A74();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = &_swiftEmptyArrayStorage;
    sub_C8F8(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = sub_13A24();
    }

    else
    {
      v3 = sub_13A14();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_12008(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 modeIdentifier];
        v14 = sub_13874();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_C8F8((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_13A44())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_80B0(&unk_279D0, &unk_17108);
          v6 = sub_13934();
          sub_13AA4();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_131B4(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_131B4(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_131B4(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10DF4()
{
  if (qword_27F20 != -1)
  {
    swift_once();
  }

  v0 = sub_135C4();

  return sub_12DCC(v0, qword_27FB8);
}

uint64_t sub_11074()
{
  v0 = sub_135C4();
  sub_13044(v0, qword_27FB8);
  sub_12DCC(v0, qword_27FB8);
  return sub_135B4();
}

uint64_t sub_110F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F20 != -1)
  {
    swift_once();
  }

  v2 = sub_135C4();
  v3 = sub_12DCC(v2, qword_27FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1119C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_11268(v11, 0, 0, 1, a1, a2);
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
    sub_130F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_130A8(v11);
  return v7;
}

unint64_t sub_11268(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_11374(a5, a6);
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
    result = sub_13AF4();
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

char *sub_11374(uint64_t a1, unint64_t a2)
{
  v3 = sub_113C0(a1, a2);
  sub_114F0(&off_21340);
  return v3;
}

char *sub_113C0(uint64_t a1, unint64_t a2)
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

  v6 = sub_115DC(v5, 0);
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

  result = sub_13AF4();
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
        v10 = sub_138B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_115DC(v10, 0);
        result = sub_13AE4();
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

uint64_t sub_114F0(uint64_t result)
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

  result = sub_11650(result, v11, 1, v3);
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

void *sub_115DC(uint64_t a1, uint64_t a2)
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

  sub_80B0(&unk_279B0, ".?");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11650(char *result, int64_t a2, char a3, char *a4)
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
    sub_80B0(&unk_279B0, ".?");
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

uint64_t sub_11744(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_13B64();
  sub_13894();
  v8 = sub_13B74();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_13B44() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_11AF4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_11894(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_80B0(&qword_279E0, &qword_17118);
  result = sub_13AC4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_13B64();
      sub_13894();
      result = sub_13B74();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_11AF4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_11894(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_11C74();
      goto LABEL_16;
    }

    sub_11DD0(v8 + 1);
  }

  v10 = *v4;
  sub_13B64();
  sub_13894();
  result = sub_13B74();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_13B44();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_13B54();
  __break(1u);
  return result;
}

void *sub_11C74()
{
  v1 = v0;
  sub_80B0(&qword_279E0, &qword_17118);
  v2 = *v0;
  v3 = sub_13AB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_11DD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_80B0(&qword_279E0, &qword_17118);
  result = sub_13AC4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_13B64();

      sub_13894();
      result = sub_13B74();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_12008(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_13A84();
      sub_9ED4(0, &unk_279A0, DNDMode_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    if (sub_13A54() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_13A64();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_139B4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_139C4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1222C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_13924();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_11744(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_122C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12310()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_12350(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (v4 + *(&off_215D0)[a3]);
  *v6 = a1;
  v6[1] = a2;

  return sub_109A8(v5);
}

unint64_t sub_123B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_133C4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_13884();
  v11 = v10;
  sub_133A4();
  sub_133B4();
  v12 = *(v3 + 8);
  v13 = v12(v6, v2);
  v24 = v9;
  v25 = v11;
  sub_C28C(v13, v14, v15);
  v16 = sub_139D4();

  v24 = v16;
  sub_80B0(&qword_279C0, &qword_17100);
  sub_13150();
  v17 = sub_13834();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21._countAndFlagsBits = v17;
  }

  else
  {

    v19 = 0xE100000000000000;
    v21._countAndFlagsBits = 49;
  }

  v24 = 0xD00000000000001CLL;
  v25 = 0x800000000001A9A0;
  v21._object = v19;
  sub_138A4(v21);

  v22 = v24;
  v12(v8, v2);
  return v22;
}

void sub_125BC()
{
  swift_getObjectType();
  if (qword_27F20 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4();
  sub_12DCC(v1, qword_27FB8);
  v2 = v0;
  v3 = sub_135A4();
  v4 = sub_13954();

  p_base_meths = (&FCUIFocusCustomizationInvitationSwiftController + 32);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 7104878;
    v7 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    *v7 = 136446978;
    v8 = sub_13B84();
    v10 = sub_1119C(v8, v9, &p_isa);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = &v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName];
    if (*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName + 8])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_1119C(v12, v13, &p_isa);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    if (*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName + 8])
    {
      v15 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName];
      v16 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName + 8];
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v17 = sub_1119C(v15, v16, &p_isa);

    *(v7 + 24) = v17;
    *(v7 + 32) = 2080;
    if (*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName + 8])
    {
      v6 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName];
      v18 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName + 8];
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_1119C(v6, v18, &p_isa);

    *(v7 + 34) = v19;
    _os_log_impl(&dword_0, v3, v4, "[%{public}s] _nextButtonPressed name=%s symbolImageName: %s, tintColorName: %s", v7, 0x2Au);
    swift_arrayDestroy();

    p_base_meths = &FCUIFocusCustomizationInvitationSwiftController.base_meths;
  }

  else
  {
  }

  if (!*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName + 8])
  {
    osloga = sub_135A4();
    v51 = sub_13964();
    if (!os_log_type_enabled(osloga, v51))
    {
      goto LABEL_41;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    p_isa = v53;
    *v52 = 136446210;
    v54 = sub_13B84();
    v56 = sub_1119C(v54, v55, &p_isa);

    *(v52 + 4) = v56;
    v57 = "[%{public}s] textName is nil";
LABEL_40:
    _os_log_impl(&dword_0, osloga, v51, v57, v52, 0xCu);
    sub_130A8(v53);

    return;
  }

  v20 = (p_base_meths[288] + v2);
  v21 = v20[1];
  if (!v21)
  {
    osloga = sub_135A4();
    v51 = sub_13964();
    if (!os_log_type_enabled(osloga, v51))
    {
      goto LABEL_41;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    p_isa = v53;
    *v52 = 136446210;
    v58 = sub_13B84();
    v60 = sub_1119C(v58, v59, &p_isa);

    *(v52 + 4) = v60;
    v57 = "[%{public}s] symbolImageName is nil";
    goto LABEL_40;
  }

  if (!*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName + 8])
  {
    osloga = sub_135A4();
    v51 = sub_13964();
    if (os_log_type_enabled(osloga, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      p_isa = v53;
      *v52 = 136446210;
      v61 = sub_13B84();
      v63 = sub_1119C(v61, v62, &p_isa);

      *(v52 + 4) = v63;
      v57 = "[%{public}s] tintColorName is nil";
      goto LABEL_40;
    }

LABEL_41:

    return;
  }

  v22 = *v20;

  oslog = v22;
  v23 = sub_123B4(v22, v21);
  v25 = v24;
  v64 = OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes;
  v26 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes];

  sub_10A84(v26);
  v28 = v27;

  v29 = sub_1222C(v28);

  if (*(v29 + 16))
  {
    v30 = 1;
    do
    {
      sub_13B64();
      sub_13894();
      v31 = sub_13B74();
      v32 = -1 << *(v29 + 32);
      v33 = v31 & ~v32;
      if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        break;
      }

      v34 = ~v32;
      while (1)
      {
        v35 = (*(v29 + 48) + 16 * v33);
        v36 = *v35 == v23 && v35[1] == v25;
        if (v36 || (sub_13B44() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      swift_bridgeObjectRelease_n();
      p_isa = &oslog->isa;
      v68 = v21;

      v70._countAndFlagsBits = sub_13B34();
      sub_138A4(v70);

      v23 = sub_123B4(p_isa, v68);
      v25 = v37;

      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return;
      }

      v39 = *&v2[v64];

      sub_10A84(v39);
      v41 = v40;

      v29 = sub_1222C(v41);
    }

    while (*(v29 + 16));
  }

LABEL_31:

  v42 = sub_13844();

  v43 = objc_allocWithZone(DNDMode);
  v44 = sub_13844();

  v45 = sub_13844();

  v46 = sub_13844();

  v47 = [v43 initWithName:v44 modeIdentifier:v42 symbolImageName:v45 tintColorName:v46 semanticType:-1];

  v48 = [v2 navigationController];
  if (v48)
  {
    v49 = v48;
    type metadata accessor for FCUIFocusCustomizationInvitationSwiftController();
    v47 = v47;
    v50 = sub_8E28(v47);
    [v49 pushViewController:v50 animated:1];
  }
}

uint64_t sub_12DCC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 sub_12E20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_12E4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_12E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_12F0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_12F20(uint64_t a1, unsigned int a2)
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

uint64_t sub_12F68(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_12FEC()
{
  result = qword_27998;
  if (!qword_27998)
  {
    sub_13504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27998);
  }

  return result;
}

uint64_t *sub_13044(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_130A8(void *a1)
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

uint64_t sub_130F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_13150()
{
  result = qword_279C8;
  if (!qword_279C8)
  {
    sub_9A4C(&qword_279C0, &qword_17100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_279C8);
  }

  return result;
}

uint64_t sub_131B4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}