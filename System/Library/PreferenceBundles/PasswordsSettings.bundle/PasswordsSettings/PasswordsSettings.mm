__n128 sub_1C00@<Q0>(uint64_t a1@<X8>)
{
  sub_E838(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C68()
{
  v0 = sub_23D4();

  return SettingsPane.init(makeContent:)(sub_1C00, 0, &type metadata for PMIOSAppSettingsView, v0);
}

uint64_t sub_1CC8(uint64_t *a1)
{
  if (sub_11E70(2, 26, 0, 0))
  {
    sub_12628();

    return sub_125A8();
  }

  else
  {
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    sub_125A8();
    sub_12A88();
    swift_getWitnessTable();
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    return sub_125A8();
  }
}

uint64_t sub_1E2C(uint64_t *a1)
{
  if (sub_11E70(2, 26, 0, 0))
  {
    sub_12628();
    sub_125A8();
  }

  else
  {
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    sub_125A8();
    sub_12A88();
    swift_getWitnessTable();
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    sub_125A8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_202C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_2048()
{
  v1 = *v0;
  sub_12BE8();
  sub_12BF8(v1);
  return sub_12C18();
}

Swift::Int sub_20BC(uint64_t a1)
{
  v2 = *v1;
  sub_12BE8();
  sub_12BF8(v2);
  return sub_12C18();
}

uint64_t sub_2108(uint64_t a1, uint64_t a2)
{
  result = sub_12908();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_215C(uint64_t a1, uint64_t a2)
{
  v3 = sub_12918();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

_DWORD *sub_21F0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_2200@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_220C(uint64_t a1)
{
  sub_25EC(&qword_1CEC8, type metadata accessor for UILayoutPriority, &unk_136C0);
  sub_25EC(&unk_1CED0, type metadata accessor for UILayoutPriority, &unk_13660);
  return sub_12BB8();
}

void sub_22D0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_12C08(LODWORD(v1));
}

uint64_t sub_230C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t sub_2364()
{
  result = qword_1CE78;
  if (!qword_1CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE78);
  }

  return result;
}

unint64_t sub_23D4()
{
  result = qword_1CE80;
  if (!qword_1CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE80);
  }

  return result;
}

void sub_2450(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_24B0()
{
  result = qword_1CE98;
  if (!qword_1CE98)
  {
    sub_2514(&qword_1CEA0, ",\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE98);
  }

  return result;
}

uint64_t sub_2514(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_26C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier];
  *v5 = 0xD00000000000001ELL;
  v5[1] = 0x8000000000015830;
  v3[OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet] = 0;
  *&v3[OBJC_IVAR___PMSettingsController_subscriptions] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR___PMSettingsController_appPolicy] = 0;
  *&v3[OBJC_IVAR___PMSettingsController__specifiers] = 0;
  if (a2)
  {
    v6 = sub_127F8();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for PMSettingsController();
  v7 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v6, a3);

  sub_12808();
  v8 = objc_allocWithZone(PSSystemPolicyForApp);
  v9 = v7;
  v10 = sub_127F8();

  v11 = [v8 initWithBundleIdentifier:v10];

  v12 = *&v9[OBJC_IVAR___PMSettingsController_appPolicy];
  *&v9[OBJC_IVAR___PMSettingsController_appPolicy] = v11;

  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v9 selector:"accountStoreDidChange" name:WBSSavedAccountStoreDidChangeNotification object:0];

  sub_5F2C();
  return v9;
}

uint64_t sub_2998(char a1)
{
  v3 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_123D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMSettingsController();
  v14.receiver = v1;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  sub_127C8();
  sub_127B8();
  sub_12808();
  sub_123C8();
  sub_12408();
  v11 = sub_12418();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v5, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_127A8();

    (*(v7 + 8))(v9, v6);
    return (*(v12 + 8))(v5, v11);
  }

  return result;
}

char *sub_2C3C()
{
  v1 = OBJC_IVAR___PMSettingsController__specifiers;
  if (*&v0[OBJC_IVAR___PMSettingsController__specifiers])
  {

    v3 = sub_2D84(v2);

    return v3;
  }

  else
  {
    v5 = sub_34AC();
    sub_2F80(v5);
    v6 = sub_6C88();
    sub_2F80(v6);
    v7 = sub_49BC();
    sub_2F80(v7);
    v8 = sub_36FC();
    sub_2F80(v8);
    v9 = sub_3CF0();
    sub_2F80(v9);
    v10 = sub_4104();
    sub_2F80(v10);
    v11 = sub_30D4();
    sub_2F80(v11);

    sub_2D84(v12);
    isa = sub_12858().super.isa;

    [v0 setSpecifiers:isa];

    *&v0[v1] = &_swiftEmptyArrayStorage;

    v14 = sub_2D84(&_swiftEmptyArrayStorage);

    return v14;
  }
}

char *sub_2D84(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_12B98();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_6524(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_12B18();
        sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_6524((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_715C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_6524((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_715C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_12B98();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_12B98();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_6484(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_6998(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

_OWORD *sub_30D4()
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_127F8();
  v7 = [v5 groupSpecifierWithID:v6];

  if (v7)
  {
    sub_12458();
    sub_12448();
    v8 = *(v2 + 8);
    v8(v4, v1);
    v9 = sub_127F8();

    v10 = [v5 preferenceSpecifierNamed:v9 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

    if (v10)
    {
      sub_12458();
      sub_12448();
      v8(v4, v1);
      v11 = sub_127F8();

      v12 = [v5 preferenceSpecifierNamed:v11 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

      if (v12)
      {
        [v10 setButtonAction:"openPasswordsApp"];
        [v12 setButtonAction:"openAutoFillSettings"];
        isa = sub_12898().super.super.isa;
        [v12 setProperty:isa forKey:PSAllowMultilineTitleKey];

        sub_7114(&qword_1D410, &qword_13820);
        result = swift_allocObject();
        result[1] = xmmword_13790;
        *(result + 4) = v7;
        *(result + 5) = v10;
        *(result + 6) = v12;
        return result;
      }
    }

    else
    {
      v10 = v7;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v15 = sub_124E8();
  sub_7088(v15, qword_1DA78);
  v16 = sub_124D8();
  v17 = sub_12968();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Unable to load the open passwords specifiers.", v18, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_34AC()
{
  v1 = *(v0 + OBJC_IVAR___PMSettingsController_appPolicy);
  if (v1)
  {
    v2 = [v1 specifiers];
    if (v2)
    {
      v3 = v2;
      v4 = sub_12868();

      v5 = sub_35F0(v4);

      if (v5)
      {
        return v5;
      }
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v7 = sub_124E8();
  sub_7088(v7, qword_1DA78);
  v8 = sub_124D8();
  v9 = sub_12968();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Unable to load the application policy settings.", v10, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_35F0(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_12B58();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_721C(i, v5);
    sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_12B38();
    sub_12B68();
    sub_12B78();
    sub_12B48();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

_OWORD *sub_36FC()
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_127F8();
  v7 = [v5 groupSpecifierWithID:v6];

  if (v7)
  {
    sub_12458();
    sub_12448();
    (*(v2 + 8))(v4, v1);
    v8 = sub_127F8();

    v9 = [v5 preferenceSpecifierNamed:v8 target:v0 set:"setPasswordBreachDetectionState:for:" get:"passwordBreachDetectionState" detail:0 cell:6 edit:0];

    if (v9)
    {
      v10 = sub_52E8();
      if (v10)
      {
        v13 = v10;
        v42[0] = v11;
        v42[1] = v12;
        isa = sub_12898().super.super.isa;
        [v9 setProperty:isa forKey:PSAllowMultilineTitleKey];

        sub_7114(&qword_1D018, &qword_13800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_137A0;
        v43 = sub_12808();
        v44 = v16;
        sub_12AF8();
        sub_74C0(0, &qword_1D040, PSFooterHyperlinkView_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v18 = NSStringFromClass(ObjCClassFromMetadata);
        v19 = sub_12808();
        v21 = v20;

        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v19;
        *(inited + 80) = v21;
        v43 = sub_12808();
        v44 = v22;
        sub_12AF8();
        *(inited + 168) = sub_74C0(0, &qword_1D058, NSString_ptr);
        *(inited + 144) = v13;
        v43 = sub_12808();
        v44 = v23;
        v24 = v13;
        sub_12AF8();

        v25 = sub_127F8();

        v26 = [v24 rangeOfString:v25];
        v28 = v27;

        v45.location = v26;
        v45.length = v28;
        v29 = NSStringFromRange(v45);
        v30 = sub_12808();
        v32 = v31;

        *(inited + 240) = &type metadata for String;
        *(inited + 216) = v30;
        *(inited + 224) = v32;
        v43 = sub_12808();
        v44 = v33;
        sub_12AF8();
        v34 = [objc_opt_self() valueWithNonretainedObject:v0];
        *(inited + 312) = sub_74C0(0, &qword_1D048, NSValue_ptr);
        *(inited + 288) = v34;
        v43 = sub_12808();
        v44 = v35;
        sub_12AF8();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = 0xD000000000000019;
        *(inited + 368) = 0x8000000000015700;
        sub_6B4C(inited);
        swift_setDeallocating();
        sub_7114(&qword_1D028, &qword_13810);
        swift_arrayDestroy();
        v36 = sub_127E8().super.isa;

        [v7 setProperties:v36];

        sub_7114(&qword_1D410, &qword_13820);
        v37 = swift_allocObject();
        v37[1] = xmmword_137B0;
        *(v37 + 4) = v7;
        *(v37 + 5) = v9;

        goto LABEL_13;
      }
    }

    else
    {
      v9 = v7;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v38 = sub_124E8();
  sub_7088(v38, qword_1DA78);
  v24 = sub_124D8();
  v39 = sub_12968();
  if (os_log_type_enabled(v24, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v24, v39, "Unable to load the password breach detection settings.", v40, 2u);
  }

  v37 = &_swiftEmptyArrayStorage;
LABEL_13:

  return v37;
}

_OWORD *sub_3CF0()
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_127F8();
  v7 = [v5 groupSpecifierWithID:v6];

  if (v7)
  {
    sub_12458();
    sub_12448();
    v8 = *(v2 + 8);
    v8(v4, v1);
    v9 = sub_127F8();

    v10 = [v5 preferenceSpecifierNamed:v9 target:v0 set:"setAutomaticStrongPasswordsEnabled:for:" get:"isAutomaticStrongPasswordsEnabled" detail:0 cell:6 edit:0];

    if (v10)
    {
      isa = sub_12898().super.super.isa;
      [v10 setProperty:isa forKey:PSAllowMultilineTitleKey];

      sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137C0;
      v23[1] = sub_12808();
      v23[2] = v13;
      sub_12AF8();
      sub_12458();
      v14 = sub_12448();
      v16 = v15;
      v8(v4, v1);
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v14;
      *(inited + 80) = v16;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7460(inited + 32, &qword_1D028, &qword_13810);
      v17 = sub_127E8().super.isa;

      [v7 setProperties:v17];

      sub_7114(&qword_1D410, &qword_13820);
      result = swift_allocObject();
      result[1] = xmmword_137B0;
      *(result + 4) = v7;
      *(result + 5) = v10;
      return result;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v19 = sub_124E8();
  sub_7088(v19, qword_1DA78);
  v20 = sub_124D8();
  v21 = sub_12968();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Unable to load the suggest strong passwords settings", v22, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

_OWORD *sub_4104()
{
  v1 = sub_7114(&qword_1D010, &qword_137F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v63 - v2;
  v4 = sub_12468();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_127F8();
  v10 = [v8 groupSpecifierWithID:v9];

  if (!v10)
  {
    goto LABEL_7;
  }

  v71 = v3;
  sub_12458();
  sub_12448();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_127F8();

  v70 = v0;
  v13 = [v8 preferenceSpecifierNamed:v12 target:v0 set:"setAllowAutomaticPasskeyUpgrades:for:" get:"allowAutomaticPasskeyUpgrades" detail:0 cell:6 edit:0];

  if (!v13)
  {

LABEL_7:
    if (qword_1CDD8 != -1)
    {
      swift_once();
    }

    v59 = sub_124E8();
    sub_7088(v59, qword_1DA78);
    v60 = sub_124D8();
    v61 = sub_12968();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "Unable to load the automatic passkey upgrades settings.", v62, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v64 = v10;
  isa = sub_12898().super.super.isa;
  v63 = v13;
  [v13 setProperty:isa forKey:PSAllowMultilineTitleKey];

  sub_12458();
  v15 = sub_12448();
  v17 = v16;
  v11(v7, v4);
  sub_12458();
  v18 = sub_12448();
  v67 = v19;
  v68 = v18;
  v11(v7, v4);
  v77 = v15;
  v78 = v17;
  v72 = v17;
  v75 = 0xD000000000000011;
  v76 = 0x80000000000154C0;
  v69 = 0x80000000000154C0;
  v20 = sub_12428();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v71;
  v65 = v21 + 56;
  v66 = v22;
  v22(v71, 1, 1, v20);
  sub_70C0();
  sub_12AA8();
  LOBYTE(v17) = v24;
  result = sub_7460(v23, &qword_1D010, &qword_137F8);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v77 = v15;
    v78 = v72;
    v75 = 0xD000000000000011;
    v26 = v68;
    v76 = v69;
    v27 = v67;
    v73 = v68;
    v74 = v67;
    v28 = sub_12A98();
    v29 = v27;
    v30 = v28;
    v77 = v28;
    v78 = v31;
    v69 = v31;
    v75 = v26;
    v76 = v29;
    v66(v23, 1, 1, v20);
    v32 = sub_12AA8();
    v34 = v33;
    v36 = v35;
    result = sub_7460(v23, &qword_1D010, &qword_137F8);
    if ((v36 & 1) == 0)
    {

      v77 = v32;
      v78 = v34;
      v37 = v69;
      v75 = v30;
      v76 = v69;

      sub_7114(&qword_1D030, &qword_13818);
      sub_7A3C(&qword_1D038, &qword_1D030, &qword_13818, &protocol conformance descriptor for Range<A>);
      v72 = sub_12A58();
      v39 = v38;
      sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137A0;
      v77 = sub_12808();
      v78 = v41;
      sub_12AF8();
      sub_74C0(0, &qword_1D040, PSFooterHyperlinkView_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = NSStringFromClass(ObjCClassFromMetadata);
      v44 = sub_12808();
      v46 = v45;

      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v44;
      *(inited + 80) = v46;
      v77 = sub_12808();
      v78 = v47;
      sub_12AF8();
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v30;
      *(inited + 152) = v37;
      v77 = sub_12808();
      v78 = v48;
      sub_12AF8();
      v79.location = v72;
      v79.length = v39;
      v49 = NSStringFromRange(v79);
      v50 = sub_12808();
      v52 = v51;

      *(inited + 240) = &type metadata for String;
      *(inited + 216) = v50;
      *(inited + 224) = v52;
      v77 = sub_12808();
      v78 = v53;
      sub_12AF8();
      v54 = [objc_opt_self() valueWithNonretainedObject:v70];
      *(inited + 312) = sub_74C0(0, &qword_1D048, NSValue_ptr);
      *(inited + 288) = v54;
      v77 = sub_12808();
      v78 = v55;
      sub_12AF8();
      *(inited + 384) = &type metadata for String;
      *(inited + 360) = 0xD00000000000001CLL;
      *(inited + 368) = 0x80000000000155C0;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7114(&qword_1D028, &qword_13810);
      swift_arrayDestroy();
      v56 = sub_127E8().super.isa;

      v57 = v64;
      [v64 setProperties:v56];

      sub_7114(&qword_1D410, &qword_13820);
      result = swift_allocObject();
      result[1] = xmmword_137B0;
      v58 = v63;
      *(result + 4) = v57;
      *(result + 5) = v58;
      return result;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_49BC()
{
  v1 = sub_7114(&qword_1D010, &qword_137F8);
  __chkstk_darwin(v1 - 8);
  v3 = v66 - v2;
  v4 = sub_12468();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_127F8();
  v10 = [v8 groupSpecifierWithID:v9];

  if (v10)
  {
    v73 = v0;
    v11 = [v8 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    if (v11)
    {
      v12 = v11;
      v68 = v10;
      v66[1] = sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137C0;
      v80 = sub_12808();
      v81 = v14;
      sub_12AF8();
      v15 = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
      *(inited + 96) = sub_7114(&qword_1D020, &qword_13808);
      *(inited + 72) = v15;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7460(inited + 32, &qword_1D028, &qword_13810);
      isa = sub_127E8().super.isa;

      v67 = v12;
      [v12 setProperties:isa];

      sub_12458();
      v17 = sub_12448();
      v19 = v18;
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_12458();
      v71 = sub_12448();
      v74 = v21;
      v20(v7, v4);
      v80 = v17;
      v81 = v19;
      v75 = v19;
      v78 = 0xD000000000000018;
      v79 = 0x8000000000015380;
      v22 = sub_12428();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v69 = v23 + 56;
      v70 = v24;
      v24(v3, 1, 1, v22);
      sub_70C0();
      sub_12AA8();
      v26 = v25;
      result = sub_7460(v3, &qword_1D010, &qword_137F8);
      if (v26)
      {
        __break(1u);
      }

      else
      {
        v80 = v17;
        v81 = v75;
        v78 = 0xD000000000000018;
        v79 = 0x8000000000015380;
        v28 = v71;
        v29 = v74;
        v76 = v71;
        v77 = v74;
        v30 = sub_12A98();
        v32 = v31;
        v72 = v30;
        v80 = v30;
        v81 = v31;
        v78 = v28;
        v79 = v29;
        v70(v3, 1, 1, v22);
        v33 = sub_12AA8();
        v35 = v34;
        v37 = v36;
        result = sub_7460(v3, &qword_1D010, &qword_137F8);
        if ((v37 & 1) == 0)
        {

          v80 = v33;
          v81 = v35;
          v78 = v72;
          v79 = v32;

          sub_7114(&qword_1D030, &qword_13818);
          sub_7A3C(&qword_1D038, &qword_1D030, &qword_13818, &protocol conformance descriptor for Range<A>);
          v38 = sub_12A58();
          v40 = v73;
          if (*(v73 + OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet) == 1)
          {
            v41 = v39;
            v42 = v38;
            v43 = swift_initStackObject();
            *(v43 + 16) = xmmword_137A0;
            v80 = sub_12808();
            v81 = v44;
            sub_12AF8();
            sub_74C0(0, &qword_1D040, PSFooterHyperlinkView_ptr);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v46 = NSStringFromClass(ObjCClassFromMetadata);
            v47 = sub_12808();
            v49 = v48;

            *(v43 + 96) = &type metadata for String;
            *(v43 + 72) = v47;
            *(v43 + 80) = v49;
            v80 = sub_12808();
            v81 = v50;
            sub_12AF8();
            *(v43 + 168) = &type metadata for String;
            *(v43 + 144) = v72;
            *(v43 + 152) = v32;
            v80 = sub_12808();
            v81 = v51;
            sub_12AF8();
            v82.location = v42;
            v82.length = v41;
            v52 = NSStringFromRange(v82);
            v53 = sub_12808();
            v55 = v54;

            *(v43 + 240) = &type metadata for String;
            *(v43 + 216) = v53;
            *(v43 + 224) = v55;
            v80 = sub_12808();
            v81 = v56;
            sub_12AF8();
            v57 = [objc_opt_self() valueWithNonretainedObject:v40];
            *(v43 + 312) = sub_74C0(0, &qword_1D048, NSValue_ptr);
            *(v43 + 288) = v57;
            v80 = sub_12808();
            v81 = v58;
            sub_12AF8();
            *(v43 + 384) = &type metadata for String;
            *(v43 + 360) = 0xD00000000000001ALL;
            *(v43 + 368) = 0x8000000000015440;
            sub_6B4C(v43);
            swift_setDeallocating();
            sub_7114(&qword_1D028, &qword_13810);
            swift_arrayDestroy();
            v59 = sub_127E8().super.isa;

            v60 = v68;
            [v68 setProperties:v59];
          }

          else
          {

            v60 = v68;
          }

          v65 = v67;
          sub_7114(&qword_1D410, &qword_13820);
          result = swift_allocObject();
          result[1] = xmmword_137B0;
          *(result + 4) = v60;
          *(result + 5) = v65;
          return result;
        }
      }

      __break(1u);
      return result;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v61 = sub_124E8();
  sub_7088(v61, qword_1DA78);
  v62 = sub_124D8();
  v63 = sub_12968();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_0, v62, v63, "Unable to load the show save passwords prompt preference settings.", v64, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

id sub_52E8()
{
  sub_6F34();
  v0 = sub_127F8();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  if (v1)
  {
    result = [v1 privacyFlow];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = [result localizedButtonTitle];

    if (v4)
    {
      sub_12808();

      sub_70C0();
      sub_12A98();

      v5 = sub_127F8();

      return v5;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v6 = sub_124E8();
  sub_7088(v6, qword_1DA78);
  v7 = sub_124D8();
  v8 = sub_12968();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Unable to load construct the password breach detection footer.", v9, 2u);
  }

  return 0;
}

uint64_t sub_5694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_124A8();
  v4[3] = swift_task_alloc();
  v5 = sub_12468();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_128C8();
  v4[7] = sub_128B8();
  v7 = sub_128A8();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_57B4, v7, v6);
}

uint64_t sub_57B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_74C0(0, &qword_1D070, LAContext_ptr);
  sub_12458();
  v4 = sub_12448();
  v6 = v5;
  v0[10] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_58D8;

  return static LAContext.pm_authenticate(reason:)(v4, v6);
}

uint64_t sub_58D8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_5AC4;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_59F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_59F4()
{
  v1 = *(v0 + 16);

  sub_12498();
  v2 = objc_allocWithZone(sub_7114(&qword_1D078, &qword_13848));
  v3 = sub_125E8();
  [v1 presentViewController:v3 animated:1 completion:0];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_5AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_7114(&qword_1D068, &qword_13830);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_79D0(a3, v22 - v9, &qword_1D068, &qword_13830);
  v11 = sub_128E8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_7460(v10, &qword_1D068, &qword_13830);
  }

  else
  {
    sub_128D8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_128A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_12818() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_7460(a3, &qword_1D068, &qword_13830);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_7460(a3, &qword_1D068, &qword_13830);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_5F2C()
{
  v1 = [objc_opt_self() sharedStore];
  v2 = [v1 savedAccountsWithNeverSaveMarker];

  if (v2)
  {
    sub_74C0(0, &qword_1D000, WBSSavedAccount_ptr);
    v3 = sub_12868();

    if (v3 >> 62)
    {
      v4 = sub_12B98();
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    v0[OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet] = v4 != 0;
    *&v0[OBJC_IVAR___PMSettingsController__specifiers] = 0;

    v5 = [v0 specifiers];
  }
}

void sub_6098()
{
  v1 = v0;
  v2 = [objc_allocWithZone(_ASPasskeysLearnMoreContentViewController) init];
  v3 = [v2 navigationItem];
  sub_74C0(0, &qword_1CFF0, UIBarButtonItem_ptr);
  sub_74C0(0, &qword_1CFF8, UIAction_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  v9.value.super.super.isa = sub_129C8();
  v9.is_nil = 0;
  isa = sub_12978(UIBarButtonSystemItemDone, v9, v10).super.super.isa;
  [v3 setRightBarButtonItem:{isa, 0, 0, 0, sub_646C, v4}];

  v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v5];
  [v1 presentViewController:v7 animated:1 completion:0];
}

void sub_629C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, SEL *a6)
{
  v8 = objc_opt_self();
  v9 = a3;
  [v8 *a6];
}

Class sub_6328(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  [objc_opt_self() *a4];
  v4.super.super.isa = sub_12898().super.super.isa;

  return v4.super.super.isa;
}

id sub_636C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PMSettingsController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_6434()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6484(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_12B98();
LABEL_9:
  result = sub_12B28();
  *v2 = result;
  return result;
}

char *sub_6524(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6544(char *result, int64_t a2, char a3, char *a4)
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
    sub_7114(&qword_1D098, &qword_13868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_6654(uint64_t a1)
{
  v2 = v1;
  v4 = sub_12AD8(*(v2 + 40));

  return sub_6710(a1, v4);
}

unint64_t sub_6698(uint64_t a1, uint64_t a2)
{
  sub_12BE8();
  sub_12828();
  v4 = sub_12C18();

  return sub_67D8(a1, a2, v4);
}

unint64_t sub_6710(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_716C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_12AE8();
      sub_71C8(v8);
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

unint64_t sub_67D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_12BC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_6890(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_12B18();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_6910;
  }

  __break(1u);
  return result;
}

void (*sub_6918(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_12B18();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_7A84;
  }

  __break(1u);
  return result;
}

uint64_t sub_6998(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_12B98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_12B98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_7A3C(&qword_1D0B0, &qword_1D0A8, qword_13878, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_7114(&qword_1D0A8, qword_13878);
            v9 = sub_6890(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_6B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7114(&qword_1D050, &qword_13828);
    v3 = sub_12BA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_79D0(v4, v13, &qword_1D028, &qword_13810);
      result = sub_6654(v13);
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
      result = sub_715C(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_6C88()
{
  v0 = objc_opt_self();
  v1 = sub_127F8();
  v2 = [v0 groupSpecifierWithID:v1];

  if (v2)
  {
    v3 = [v0 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:4 edit:0];
    if (v3)
    {
      v4 = v3;
      sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137C0;
      sub_12808();
      sub_12AF8();
      v6 = type metadata accessor for PMServiceNamesCellView();
      *(inited + 96) = sub_7114(&qword_1D0A0, &qword_13870);
      *(inited + 72) = v6;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7460(inited + 32, &qword_1D028, &qword_13810);
      isa = sub_127E8().super.isa;

      [v4 setProperties:isa];

      sub_7114(&qword_1D410, &qword_13820);
      result = swift_allocObject();
      result[1] = xmmword_137B0;
      *(result + 4) = v2;
      *(result + 5) = v4;
      return result;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v9 = sub_124E8();
  sub_7088(v9, qword_1DA78);
  v10 = sub_124D8();
  v11 = sub_12968();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Unable to load the show service names settings.", v12, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_6F34()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_12458();
  v5 = sub_12448();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_7088(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_70C0()
{
  result = qword_1D008;
  if (!qword_1D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D008);
  }

  return result;
}

uint64_t sub_7114(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_715C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_721C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_7278()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_72B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_736C;

  return sub_5694(a1, v4, v5, v6);
}

uint64_t sub_736C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_7460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7114(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_74C0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_7508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7114(&qword_1D088, &qword_13858);
    v3 = sub_12BA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_79D0(v4, &v13, &qword_1D090, &qword_13860);
      v5 = v13;
      v6 = v14;
      result = sub_6698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_715C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_79D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7114(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_7A3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2514(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7A88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v58 = sub_12468();
  v57 = *(v58 - 8);
  v3 = __chkstk_darwin(v58);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v54 - v6;
  v8 = sub_7114(&qword_1D0C0, &qword_13968);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v55 = sub_7114(&qword_1D0C8, &qword_13970);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v13 = &v54 - v12;
  v62 = sub_7114(&qword_1D0D0, &qword_13978);
  __chkstk_darwin(v62);
  v54 = &v54 - v14;
  v59 = sub_7114(&qword_1D0D8, &qword_13980);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = &v54 - v15;
  v64 = v2;
  sub_7114(&qword_1D0E0, &qword_13988);
  sub_7A3C(&qword_1D0E8, &qword_1D0E0, &qword_13988, &protocol conformance descriptor for TupleView<A>);
  sub_12638();
  v16 = sub_7A3C(&qword_1D0F0, &qword_1D0C0, &qword_13968, &protocol conformance descriptor for List<A, B>);
  sub_12668();
  (*(v9 + 8))(v11, v8);
  sub_12458();
  sub_12458();
  v17 = sub_12438();
  v19 = v18;
  v20 = *(v57 + 8);
  v21 = v5;
  v22 = v58;
  v20(v21, v58);
  v20(v7, v22);
  v65 = v17;
  v66 = v19;
  *&v69 = v8;
  *(&v69 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  sub_70C0();
  v23 = v54;
  v24 = v55;
  sub_126A8();

  (*(v56 + 8))(v13, v24);
  v25 = [objc_opt_self() defaultCenter];
  v26 = v62;
  sub_12988();

  v27 = swift_allocObject();
  v28 = *(v2 + 112);
  *(v27 + 112) = *(v2 + 96);
  *(v27 + 128) = v28;
  *(v27 + 144) = *(v2 + 128);
  v29 = *(v2 + 48);
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = v29;
  v30 = *(v2 + 80);
  *(v27 + 80) = *(v2 + 64);
  *(v27 + 96) = v30;
  v31 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v31;
  v32 = (v23 + *(v26 + 56));
  *v32 = sub_ED24;
  v32[1] = v27;
  v69 = *(v2 + 56);
  sub_ED2C(v2, &v65);
  v58 = sub_7114(&qword_1D0F8, &qword_13990);
  sub_12738();
  LODWORD(v56) = v67;
  v33 = swift_allocObject();
  v34 = *(v2 + 112);
  *(v33 + 112) = *(v2 + 96);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v2 + 128);
  v35 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v35;
  v36 = *(v2 + 80);
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = v36;
  v37 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v37;
  sub_ED2C(v2, &v65);
  v55 = sub_7114(&qword_1D100, &qword_13998);
  v38 = sub_7A3C(&qword_1D108, &qword_1D0D0, &qword_13978, &protocol conformance descriptor for SubscriptionView<A, B>);
  v39 = sub_124A8();
  v40 = sub_12618();
  v57 = v40;
  v41 = sub_ED6C(&qword_1D110, &type metadata accessor for PMNeverSavedPasswordsView, &protocol conformance descriptor for PMNeverSavedPasswordsView);
  v65 = v39;
  v66 = v40;
  v67 = v41;
  v68 = &protocol witness table for ZoomNavigationTransition;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v62;
  sub_126E8();

  sub_7460(v23, &qword_1D0D0, &qword_13978);
  v69 = *(v2 + 104);
  sub_12738();
  v44 = swift_allocObject();
  v45 = *(v2 + 112);
  *(v44 + 112) = *(v2 + 96);
  *(v44 + 128) = v45;
  *(v44 + 144) = *(v2 + 128);
  v46 = *(v2 + 48);
  *(v44 + 48) = *(v2 + 32);
  *(v44 + 64) = v46;
  v47 = *(v2 + 80);
  *(v44 + 80) = *(v2 + 64);
  *(v44 + 96) = v47;
  v48 = *(v2 + 16);
  *(v44 + 16) = *v2;
  *(v44 + 32) = v48;
  sub_ED2C(v2, &v65);
  sub_7114(&qword_1D118, &qword_139A0);
  v65 = v43;
  v66 = v55;
  v67 = v38;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = sub_12488();
  v50 = sub_ED6C(&qword_1D120, &type metadata accessor for PMPasskeysLearnMoreView, &protocol conformance descriptor for PMPasskeysLearnMoreView);
  v65 = v49;
  v66 = v57;
  v67 = v50;
  v68 = &protocol witness table for ZoomNavigationTransition;
  swift_getOpaqueTypeConformance2();
  v51 = v59;
  v52 = v63;
  sub_126E8();

  return (*(v60 + 8))(v52, v51);
}

uint64_t sub_83C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v114 = sub_7114(&qword_1D128, &qword_139A8);
  v122 = *(v114 - 8);
  v3 = __chkstk_darwin(v114);
  v98 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v106 = &v79 - v5;
  v112 = sub_7114(&qword_1D130, &qword_139B0);
  v121 = *(v112 - 8);
  v6 = __chkstk_darwin(v112);
  v108 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v79 - v8;
  v9 = sub_12468();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_7114(&qword_1D138, &qword_139B8);
  v120 = *(v110 - 8);
  v11 = __chkstk_darwin(v110);
  v113 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v79 - v13;
  v90 = sub_7114(&qword_1D140, &qword_139C0);
  __chkstk_darwin(v90);
  v88 = (&v79 - v14);
  v115 = sub_7114(&qword_1D148, &qword_139C8);
  v117 = *(v115 - 8);
  v15 = __chkstk_darwin(v115);
  v111 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = &v79 - v17;
  v107 = sub_7114(&qword_1D150, &qword_139D0);
  v119 = *(v107 - 8);
  v18 = __chkstk_darwin(v107);
  v109 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v89 = &v79 - v20;
  v93 = sub_7114(&qword_1D158, &qword_139D8);
  __chkstk_darwin(v93);
  v85 = (&v79 - v21);
  v104 = sub_7114(&qword_1D160, &qword_139E0);
  v118 = *(v104 - 8);
  v22 = __chkstk_darwin(v104);
  v105 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v91 = &v79 - v24;
  v25 = sub_7114(&qword_1D168, &qword_139E8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v79 - v27;
  v101 = sub_7114(&qword_1D170, &qword_139F0);
  v116 = *(v101 - 8);
  v29 = __chkstk_darwin(v101);
  v103 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v92 = &v79 - v31;
  v100 = sub_124C8();
  v96 = *(v100 - 8);
  v32 = __chkstk_darwin(v100);
  v102 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v95 = &v79 - v34;
  sub_12808();
  sub_124B8();
  v128 = a1;
  sub_7114(&qword_1D178, &qword_139F8);
  sub_EDC4();
  sub_12778();
  v129 = *(a1 + 16);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  v35 = swift_allocObject();
  v36 = *(a1 + 112);
  *(v35 + 112) = *(a1 + 96);
  *(v35 + 128) = v36;
  *(v35 + 144) = *(a1 + 128);
  v37 = *(a1 + 48);
  *(v35 + 48) = *(a1 + 32);
  *(v35 + 64) = v37;
  v38 = *(a1 + 80);
  *(v35 + 80) = *(a1 + 64);
  *(v35 + 96) = v38;
  v39 = *(a1 + 16);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v39;
  sub_ED2C(a1, &v129);
  sub_EEB4();
  sub_126F8();

  (*(v26 + 8))(v28, v25);
  v127 = a1;
  sub_A4FC(a1, v85);
  sub_7114(&qword_1D1A8, &qword_13A08);
  sub_EF4C();
  v80 = sub_F034();
  sub_12788();
  v126 = a1;
  sub_CF14(a1, sub_B554, &unk_190A0, sub_FAD8, v88);
  sub_7114(&qword_1D1F0, &qword_13A28);
  sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28, &protocol conformance descriptor for Toggle<A>);
  v79 = sub_F1C8();
  v40 = v99;
  sub_12788();
  v129 = *(a1 + 72);
  sub_12718();
  v41 = swift_allocObject();
  v42 = *(a1 + 112);
  *(v41 + 112) = *(a1 + 96);
  *(v41 + 128) = v42;
  *(v41 + 144) = *(a1 + 128);
  v43 = *(a1 + 48);
  *(v41 + 48) = *(a1 + 32);
  *(v41 + 64) = v43;
  v44 = *(a1 + 80);
  *(v41 + 80) = *(a1 + 64);
  *(v41 + 96) = v44;
  v45 = *(a1 + 16);
  *(v41 + 16) = *a1;
  *(v41 + 32) = v45;
  sub_ED2C(a1, &v129);
  sub_F254();
  v46 = v89;
  v47 = v115;
  sub_126F8();

  v48 = *(v117 + 1);
  v86 = v117 + 8;
  v87 = v48;
  v48(v40, v47);
  v125 = a1;
  v49 = v81;
  sub_12458();
  v50 = sub_12448();
  v52 = v51;
  v82[1](v49, v83);
  *&v129 = v50;
  *(&v129 + 1) = v52;
  sub_70C0();
  *&v129 = sub_12658();
  *(&v129 + 1) = v53;
  v130 = v54 & 1;
  v131 = v55;
  sub_7114(&qword_1D210, &qword_13A30);
  sub_F320();
  v56 = v94;
  sub_12788();
  v124 = a1;
  sub_C530(a1, v85);
  v57 = v97;
  sub_12788();
  v123 = a1;
  sub_CF14(a1, sub_D294, &unk_19050, sub_F4B0, v88);
  sub_12788();
  sub_7114(&qword_1D220, &qword_13A38);
  sub_7A3C(&qword_1D228, &qword_1D220, &qword_13A38, &protocol conformance descriptor for TupleView<A>);
  sub_12778();
  v80 = *(v96 + 16);
  v80(v102, v95, v100);
  v93 = *(v116 + 16);
  v93(v103, v92, v101);
  v90 = *(v118 + 16);
  v90(v105, v91, v104);
  v88 = *(v119 + 16);
  v88(v109, v46, v107);
  v85 = *(v120 + 16);
  v85(v113, v56, v110);
  v83 = *(v121 + 16);
  v83(v108, v57, v112);
  v58 = *(v117 + 2);
  v117 += 16;
  v82 = v58;
  (v58)(v111, v99, v115);
  v81 = *(v122 + 16);
  v59 = v98;
  (v81)(v98, v106, v114);
  v60 = v84;
  v80(v84, v102, v100);
  v61 = sub_7114(&qword_1D230, &qword_13A40);
  v93(&v60[v61[12]], v103, v101);
  v90(&v60[v61[16]], v105, v104);
  v88(&v60[v61[20]], v109, v107);
  v62 = v110;
  v85(&v60[v61[24]], v113, v110);
  v63 = v112;
  v83(&v60[v61[28]], v108, v112);
  v64 = v115;
  (v82)(&v60[v61[32]], v111, v115);
  v65 = &v60[v61[36]];
  v66 = v114;
  (v81)(v65, v59, v114);
  v67 = *(v122 + 8);
  v122 += 8;
  v117 = v67;
  (v67)(v106, v66);
  v87(v99, v64);
  v68 = *(v121 + 8);
  v121 += 8;
  v106 = v68;
  (v68)(v97, v63);
  v69 = *(v120 + 8);
  v120 += 8;
  v99 = v69;
  (v69)(v94, v62);
  v70 = *(v119 + 8);
  v119 += 8;
  v71 = v107;
  v70(v89, v107);
  v72 = *(v118 + 8);
  v118 += 8;
  v73 = v104;
  v72(v91, v104);
  v74 = *(v116 + 8);
  v116 += 8;
  v75 = v101;
  v74(v92, v101);
  v76 = *(v96 + 8);
  v77 = v100;
  v76(v95, v100);
  (v117)(v98, v114);
  v87(v111, v115);
  (v106)(v108, v112);
  (v99)(v113, v110);
  v70(v109, v71);
  v72(v105, v73);
  v74(v103, v75);
  return (v76)(v102, v77);
}

uint64_t sub_94B8(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7114(&qword_1D190, &qword_13A00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  sub_12458();
  v10 = sub_12448();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v15 = v10;
  v16 = v12;
  v14[2] = *(a1 + 16);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12738();
  sub_7114(&qword_1D2C0, &qword_13AE8);
  sub_7A3C(&qword_1D2C8, &qword_1D2C0, &qword_13AE8, &protocol conformance descriptor for TupleView<A>);
  sub_70C0();
  sub_12758();
  sub_7A3C(&qword_1D188, &qword_1D190, &qword_13A00, &protocol conformance descriptor for Picker<A, B, C>);
  sub_126C8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_97A0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_12468();
  v45 = v1;
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v48 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v43 - v5;
  v7 = sub_7114(&qword_1D2D0, &qword_13AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v43 - v9;
  v11 = sub_7114(&qword_1D2D8, &qword_13AF8);
  v12 = __chkstk_darwin(v11 - 8);
  v50 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v49 = v43 - v15;
  v16 = __chkstk_darwin(v14);
  v47 = v43 - v17;
  __chkstk_darwin(v16);
  v44 = v43 - v18;
  sub_12458();
  v19 = sub_12448();
  v21 = v20;
  v22 = *(v2 + 8);
  v22(v6, v1);
  v52 = v19;
  v53 = v21;
  v46 = sub_70C0();
  *v10 = sub_12658();
  *(v10 + 1) = v23;
  v10[16] = v24 & 1;
  *(v10 + 3) = v25;
  *(v10 + 16) = 257;
  v52 = &type metadata for Text;
  v53 = &type metadata for Bool;
  v54 = &protocol witness table for Text;
  v55 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_126C8();
  v26 = *(v8 + 8);
  v43[1] = v8 + 8;
  v26(v10, v7);
  sub_12458();
  v27 = v48;
  sub_12458();
  v28 = sub_12438();
  v30 = v29;
  v31 = v27;
  v32 = v45;
  v22(v31, v45);
  v22(v6, v32);
  v52 = v28;
  v53 = v30;
  *v10 = sub_12658();
  *(v10 + 1) = v33;
  v10[16] = v34 & 1;
  *(v10 + 3) = v35;
  *(v10 + 16) = 256;
  v36 = v47;
  sub_126C8();
  v26(v10, v7);
  v37 = v44;
  v38 = v49;
  sub_79D0(v44, v49, &qword_1D2D8, &qword_13AF8);
  v39 = v50;
  sub_79D0(v36, v50, &qword_1D2D8, &qword_13AF8);
  v40 = v51;
  sub_79D0(v38, v51, &qword_1D2D8, &qword_13AF8);
  v41 = sub_7114(&qword_1D2E0, &unk_13B00);
  sub_79D0(v39, v40 + *(v41 + 48), &qword_1D2D8, &qword_13AF8);
  sub_7460(v36, &qword_1D2D8, &qword_13AF8);
  sub_7460(v37, &qword_1D2D8, &qword_13AF8);
  sub_7460(v39, &qword_1D2D8, &qword_13AF8);
  return sub_7460(v38, &qword_1D2D8, &qword_13AF8);
}

id sub_9CA4(uint64_t a1)
{
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  return [objc_opt_self() setShouldShowServiceNamesForPasswordAndPasskeyItems:v2];
}

uint64_t sub_9D10(uint64_t a1)
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7114(&qword_1D1C0, &qword_13A10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_12458();
  v9 = sub_12448();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v13[4] = v9;
  v13[5] = v11;
  type metadata accessor for WBSPasswordSavingBehavior(0);
  sub_12568();
  sub_7114(&qword_1D290, &qword_13AC8);
  sub_ED6C(&qword_1D298, type metadata accessor for WBSPasswordSavingBehavior, &unk_1357C);
  sub_7A3C(&qword_1D2A0, &qword_1D290, &qword_13AC8, &protocol conformance descriptor for TupleView<A>);
  sub_70C0();
  sub_12758();
  sub_7A3C(&qword_1D1B8, &qword_1D1C0, &qword_13A10, &protocol conformance descriptor for Picker<A, B, C>);
  sub_126C8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_A020@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_12468();
  v44 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7114(&qword_1D2A8, &qword_13AD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v43 - v7;
  v9 = sub_7114(&qword_1D2B0, &qword_13AD8);
  v10 = __chkstk_darwin(v9 - 8);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = v43 - v13;
  v14 = __chkstk_darwin(v12);
  v46 = v43 - v15;
  __chkstk_darwin(v14);
  v43[0] = v43 - v16;
  sub_12458();
  v17 = sub_12448();
  v19 = v18;
  v20 = *(v2 + 8);
  v43[1] = v2 + 8;
  v45 = v20;
  v20(v4, v1);
  v50 = v17;
  v51 = v19;
  sub_70C0();
  *v8 = sub_12658();
  *(v8 + 1) = v21;
  v8[16] = v22 & 1;
  *(v8 + 3) = v23;
  *(v8 + 4) = 0;
  v8[40] = 1;
  type metadata accessor for WBSPasswordSavingBehavior(255);
  v25 = v24;
  v26 = sub_ED6C(&qword_1D298, type metadata accessor for WBSPasswordSavingBehavior, &unk_1357C);
  v50 = &type metadata for Text;
  v51 = v25;
  v52 = &protocol witness table for Text;
  v53 = v26;
  swift_getOpaqueTypeConformance2();
  sub_126C8();
  v27 = *(v6 + 8);
  v27(v8, v5);
  sub_12458();
  v28 = sub_12448();
  v30 = v29;
  v45(v4, v44);
  v50 = v28;
  v51 = v30;
  *v8 = sub_12658();
  *(v8 + 1) = v31;
  v8[16] = v32 & 1;
  *(v8 + 3) = v33;
  *(v8 + 4) = 1;
  v8[40] = 1;
  v34 = v46;
  sub_126C8();
  v27(v8, v5);
  v35 = v43[0];
  v36 = v47;
  sub_79D0(v43[0], v47, &qword_1D2B0, &qword_13AD8);
  v37 = v34;
  v38 = v34;
  v39 = v48;
  sub_79D0(v37, v48, &qword_1D2B0, &qword_13AD8);
  v40 = v49;
  sub_79D0(v36, v49, &qword_1D2B0, &qword_13AD8);
  v41 = sub_7114(&qword_1D2B8, &qword_13AE0);
  sub_79D0(v39, v40 + *(v41 + 48), &qword_1D2B0, &qword_13AD8);
  sub_7460(v38, &qword_1D2B0, &qword_13AD8);
  sub_7460(v35, &qword_1D2B0, &qword_13AD8);
  sub_7460(v39, &qword_1D2B0, &qword_13AD8);
  return sub_7460(v36, &qword_1D2B0, &qword_13AD8);
}

uint64_t sub_A4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_7114(&qword_1D1D0, &qword_13A18);
  __chkstk_darwin(v53);
  v52 = &v48 - v4;
  v5 = sub_7114(&qword_1D288, &unk_13AA8);
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v50 = &v48 - v6;
  v59 = sub_12368();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_12378();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_12398();
  __chkstk_darwin(v10 - 8);
  v11 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_12468();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7114(&qword_1D258, &qword_13A68);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  v61 = sub_123B8();
  v60 = *(v61 - 8);
  v21 = __chkstk_darwin(v61);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v54 = &v48 - v24;
  v51 = a1;
  v64 = *(a1 + 40);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  if (v65)
  {
    v25 = 1;
    v28 = v62;
    v27 = v63;
  }

  else
  {
    v49 = a2;
    sub_12458();
    sub_12448();
    (*(v15 + 8))(v17, v14);
    v26 = sub_12418();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    (*(v55 + 104))(v9, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v56);
    (*(v58 + 104))(v57, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v59);
    sub_12388();
    sub_123A8();
    v30 = v60;
    v31 = v61;
    (*(v60 + 56))(v20, 0, 1, v61);
    v32 = v54;
    (*(v30 + 32))(v54, v20, v31);
    (*(v30 + 16))(v23, v32, v31);
    v58 = sub_12648();
    v34 = v33;
    LODWORD(v57) = v35;
    v59 = v36;
    KeyPath = swift_getKeyPath();
    v38 = swift_allocObject();
    v39 = v51;
    v40 = *(v51 + 112);
    *(v38 + 112) = *(v51 + 96);
    *(v38 + 128) = v40;
    *(v38 + 144) = *(v39 + 128);
    v41 = *(v39 + 48);
    *(v38 + 48) = *(v39 + 32);
    *(v38 + 64) = v41;
    v42 = *(v39 + 80);
    *(v38 + 80) = *(v39 + 64);
    *(v38 + 96) = v42;
    v43 = *(v39 + 16);
    *(v38 + 16) = *v39;
    *(v38 + 32) = v43;
    v44 = v52;
    v45 = &v52[*(v53 + 36)];
    sub_7114(&qword_1D1E8, &qword_13A20);
    sub_ED2C(v39, &v64);
    sub_12588();
    *v45 = KeyPath;
    *v44 = v58;
    *(v44 + 8) = v34;
    *(v44 + 16) = v57 & 1;
    *(v44 + 24) = v59;
    *&v64 = 0x766153726576656ELL;
    *(&v64 + 1) = 0xEA00000000006465;
    sub_12798();
    sub_F108();
    v46 = v50;
    sub_126D8();
    sub_7460(v44, &qword_1D1D0, &qword_13A18);
    (*(v30 + 8))(v54, v31);
    v28 = v62;
    v47 = v63;
    a2 = v49;
    (*(v62 + 32))(v49, v46, v63);
    v27 = v47;
    v25 = 0;
  }

  return (*(v28 + 56))(a2, v25, 1, v27);
}

uint64_t sub_AD6C(uint64_t a1)
{
  v2 = sub_12598();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_125D8();
}

uint64_t sub_AE34(uint64_t a1, uint64_t a2)
{
  v3 = sub_7114(&qword_1D068, &qword_13830);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_128E8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_128C8();
  sub_ED2C(a2, v15);
  v7 = sub_128B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a2 + 112);
  *(v8 + 128) = *(a2 + 96);
  *(v8 + 144) = v9;
  *(v8 + 160) = *(a2 + 128);
  v10 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = v10;
  v11 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 64);
  *(v8 + 112) = v11;
  v12 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v12;
  sub_5B50(0, 0, v5, &unk_13AC0, v8);

  return sub_12578();
}

uint64_t sub_AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_12468();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_128C8();
  v4[8] = sub_128B8();
  v7 = sub_128A8();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_B084, v7, v6);
}

uint64_t sub_B084()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_74C0(0, &qword_1D070, LAContext_ptr);
  sub_12458();
  v4 = sub_12448();
  v6 = v5;
  v0[11] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_B1A8;

  return static LAContext.pm_authenticate(reason:)(v4, v6);
}

uint64_t sub_B1A8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_B374;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_B2C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_B2C4()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 56);
  *(v0 + 112) = 1;
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12728();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_B374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B3EC(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v6 = sub_12448();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v11 = v6;
  v12 = v8;
  v10[2] = *(a1 + 72);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12738();
  sub_70C0();
  return sub_12768();
}

id sub_B554@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_12368();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_12378();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_12398();
  __chkstk_darwin(v8 - 8);
  v9 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_F5B4();
  v14 = v13;
  v15 = sub_127F8();
  v16 = [objc_opt_self() bundleWithIdentifier:v15];

  if (v16)
  {
    v33 = v3;
    result = [v16 privacyFlow];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = [result localizedButtonTitle];

    if (v19)
    {
      v20 = sub_12808();
      v32 = v2;
      v21 = a1;
      v23 = v22;

      v41 = v12;
      v42 = v14;
      v39 = 0xD000000000000018;
      v40 = 0x8000000000015230;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_12B08(24);

      v37 = 91;
      v38 = 0xE100000000000000;
      v44._countAndFlagsBits = v20;
      v44._object = v23;
      sub_12838(v44);

      v45._object = 0x80000000000159D0;
      v45._countAndFlagsBits = 0xD000000000000015;
      sub_12838(v45);
      sub_70C0();
      sub_12A98();

      v24 = sub_12418();
      (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
      (*(v34 + 104))(v7, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v35);
      (*(v33 + 104))(v36, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v32);
      sub_12388();
      sub_123A8();

      v31 = sub_123B8();
      return (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v25 = sub_124E8();
  sub_7088(v25, qword_1DA78);
  v26 = sub_124D8();
  v27 = sub_12968();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "Unable to load construct the password breach detection footer.", v28, 2u);
  }

  v29 = sub_123B8();
  v30 = *(*(v29 - 8) + 56);

  return v30(a1, 1, 1, v29);
}

void sub_BB1C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_12AB8();
    sub_74C0(0, &qword_1D260, UIScene_ptr);
    sub_F53C();
    sub_12958();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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

  while (v1 < 0)
  {
    if (!sub_12AC8() || (sub_74C0(0, &qword_1D260, UIScene_ptr), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_F5A4(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_12848();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_12878();
      }

      sub_12888();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
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
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_BD88(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = &_swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_12B18();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_74C0(0, &qword_1D270, UIWindow_ptr);
      v8 = sub_12868();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_12B98();
      }

      else
      {
        v10 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_12B98();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_12B98();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_12B28();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_12B98();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_7A3C(&qword_1D280, &qword_1D278, &qword_13AA0, &protocol conformance descriptor for [A]);
            for (i = 0; i != v16; ++i)
            {
              sub_7114(&qword_1D278, &qword_13AA0);
              v19 = sub_6918(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_12B98();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return &_swiftEmptyArrayStorage;
}

id sub_C11C(uint64_t a1)
{
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  return [objc_opt_self() setPasswordBreachDetectionEnabled:v2];
}

uint64_t sub_C188(uint64_t a1)
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7114(&qword_1D1F0, &qword_13A28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_12458();
  v9 = sub_12448();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v13[4] = v9;
  v13[5] = v11;
  sub_12568();
  sub_70C0();
  sub_12768();
  sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28, &protocol conformance descriptor for Toggle<A>);
  sub_126C8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_C3DC(uint64_t a1)
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v5 = sub_12448();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v9[4] = v5;
  v9[5] = v7;
  sub_12568();
  sub_70C0();
  return sub_12768();
}

uint64_t sub_C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v58 = a2;
  v49 = sub_7114(&qword_1D1D0, &qword_13A18);
  __chkstk_darwin(v49);
  v48 = &v45 - v2;
  v57 = sub_7114(&qword_1D288, &unk_13AA8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v46 = &v45 - v3;
  v54 = sub_12368();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_12378();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_12398();
  __chkstk_darwin(v8 - 8);
  v9 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_12468();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7114(&qword_1D258, &qword_13A68);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v59 = sub_123B8();
  v55 = *(v59 - 8);
  v19 = __chkstk_darwin(v59);
  v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = &v45 - v21;
  sub_12458();
  sub_12448();
  (*(v13 + 8))(v15, v12);
  v22 = sub_12418();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  (*(v5 + 104))(v7, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v51);
  (*(v53 + 104))(v52, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v54);
  sub_12388();
  sub_123A8();
  v23 = v55;
  v24 = v59;
  (*(v55 + 56))(v18, 0, 1, v59);
  v25 = v50;
  (*(v23 + 32))(v50, v18, v24);
  (*(v23 + 16))(v45, v25, v24);
  v53 = sub_12648();
  v27 = v26;
  LOBYTE(v18) = v28;
  v54 = v29;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  v32 = v47;
  v33 = *(v47 + 112);
  *(v31 + 112) = *(v47 + 96);
  *(v31 + 128) = v33;
  *(v31 + 144) = *(v32 + 128);
  v34 = *(v32 + 48);
  *(v31 + 48) = *(v32 + 32);
  *(v31 + 64) = v34;
  v35 = *(v32 + 80);
  *(v31 + 80) = *(v32 + 64);
  *(v31 + 96) = v35;
  v36 = *(v32 + 16);
  *(v31 + 16) = *v32;
  *(v31 + 32) = v36;
  v37 = v48;
  v38 = &v48[*(v49 + 36)];
  sub_7114(&qword_1D1E8, &qword_13A20);
  sub_ED2C(v32, v60);
  sub_12588();
  *v38 = KeyPath;
  *v37 = v53;
  *(v37 + 8) = v27;
  *(v37 + 16) = v18 & 1;
  *(v37 + 24) = v54;
  v60[0] = 0xD000000000000011;
  v60[1] = 0x80000000000158D0;
  sub_12798();
  sub_F108();
  v39 = v46;
  sub_126D8();
  sub_7460(v37, &qword_1D1D0, &qword_13A18);
  (*(v23 + 8))(v50, v59);
  v40 = v56;
  v41 = v58;
  v42 = v39;
  v43 = v57;
  (*(v56 + 32))(v58, v42, v57);
  return (*(v40 + 56))(v41, 0, 1, v43);
}

uint64_t sub_CD5C(uint64_t a1, uint64_t a2)
{
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12728();
  return sub_12578();
}

uint64_t sub_CDC0(uint64_t a1)
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v5 = sub_12448();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v9[4] = v5;
  v9[5] = v7;
  sub_12568();
  sub_70C0();
  return sub_12768();
}

uint64_t sub_CF14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v7 = sub_7114(&qword_1D1D0, &qword_13A18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &KeyPath - v9;
  v11 = sub_7114(&qword_1D258, &qword_13A68);
  __chkstk_darwin(v11 - 8);
  v13 = &KeyPath - v12;
  v14 = sub_123B8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &KeyPath - v20;
  a2(v19);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_7460(v13, &qword_1D258, &qword_13A68);
    v22 = 1;
    v23 = v43;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    (*(v15 + 16))(v18, v21, v14);
    v39 = sub_12648();
    v38 = v24;
    v37 = v25;
    v40 = v26;
    KeyPath = swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = *(a1 + 112);
    *(v27 + 112) = *(a1 + 96);
    *(v27 + 128) = v28;
    *(v27 + 144) = *(a1 + 128);
    v29 = *(a1 + 48);
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 64) = v29;
    v30 = *(a1 + 80);
    *(v27 + 80) = *(a1 + 64);
    *(v27 + 96) = v30;
    v31 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v31;
    v32 = &v10[*(v7 + 36)];
    sub_7114(&qword_1D1E8, &qword_13A20);
    sub_ED2C(a1, v44);
    sub_12588();
    (*(v15 + 8))(v21, v14);
    *v32 = KeyPath;
    v33 = v38;
    *v10 = v39;
    *(v10 + 1) = v33;
    v10[16] = v37 & 1;
    *(v10 + 3) = v40;
    v34 = v43;
    sub_F4CC(v10, v43);
    v22 = 0;
    v23 = v34;
  }

  return (*(v8 + 56))(v23, v22, 1, v7);
}

id sub_D294@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_12368();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_12378();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12398();
  __chkstk_darwin(v7 - 8);
  v8 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_12468();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v15 = sub_12448();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v18 = sub_127F8();
  v19 = [objc_opt_self() bundleWithIdentifier:v18];

  if (!v19)
  {
    goto LABEL_6;
  }

  result = [v19 privacyFlow];
  if (result)
  {
    v21 = result;
    v22 = [result localizedButtonTitle];

    if (v22)
    {
      v23 = sub_12808();
      v25 = v24;

      v43 = v15;
      v44 = v17;
      v41 = 0xD000000000000018;
      v42 = 0x8000000000015230;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_12B08(24);

      v39 = 91;
      v40 = 0xE100000000000000;
      v45._countAndFlagsBits = v23;
      v45._object = v25;
      sub_12838(v45);

      v46._object = 0x80000000000159D0;
      v46._countAndFlagsBits = 0xD000000000000015;
      sub_12838(v46);
      sub_70C0();
      sub_12A98();

      v26 = sub_12418();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      (*(v34 + 104))(v6, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v35);
      (*(v36 + 104))(v3, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v37);
      sub_12388();
      v27 = v38;
      sub_123A8();
      v33 = 0;
LABEL_11:

      v32 = sub_123B8();
      return (*(*(v32 - 8) + 56))(v27, v33, 1, v32);
    }

LABEL_6:

    if (qword_1CDD8 != -1)
    {
      swift_once();
    }

    v28 = sub_124E8();
    sub_7088(v28, qword_1DA78);
    v19 = sub_124D8();
    v29 = sub_12968();
    v30 = os_log_type_enabled(v19, v29);
    v27 = v38;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v19, v29, "Unable to load construct the network fetching footer.", v31, 2u);
    }

    v33 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_D874(uint64_t a1, void *a2)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_74C0(0, &qword_1D260, UIScene_ptr);
  sub_F53C();
  v4 = sub_12948();

  sub_BB1C(v4);
  v6 = v5;

  v7 = sub_BD88(v6);

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_12B98())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_12B18();
      }

      else
      {
        if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v10 isKeyWindow])
      {
        goto LABEL_16;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  v16 = [v11 rootViewController];

  v13 = sub_127F8();
  v14 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v13];

  if (v14)
  {
    if (v16)
    {
      v15 = v16;
      [v14 setPresentingViewController:v15];
      [v14 present];

      v14 = v15;
    }
  }

  sub_12578();
}

uint64_t sub_DAC8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_12468();
  v31 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7114(&qword_1D238, &qword_13A48);
  v32 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v30 - v8;
  v10 = sub_7114(&qword_1D240, &qword_13A50);
  v11 = __chkstk_darwin(v10 - 8);
  v33 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  sub_12458();
  v15 = sub_12448();
  v17 = v16;
  v18 = *(v2 + 8);
  v30[2] = v2 + 8;
  v18(v4, v1);
  v36 = v15;
  v37 = v17;
  v30[1] = sub_70C0();
  sub_12748();
  sub_7A3C(&qword_1D248, &qword_1D238, &qword_13A48, &protocol conformance descriptor for Button<A>);
  sub_126C8();
  v19 = v32;
  v20 = *(v32 + 8);
  v20(v9, v5);
  sub_12458();
  v21 = sub_12448();
  v23 = v22;
  v18(v4, v31);
  v36 = v21;
  v37 = v23;
  sub_12748();
  v24 = v33;
  sub_F418(v14, v33);
  v25 = *(v19 + 16);
  v26 = v34;
  v25(v34, v9, v5);
  v27 = v35;
  sub_F418(v24, v35);
  v28 = sub_7114(&qword_1D250, &unk_13A58);
  v25((v27 + *(v28 + 48)), v26, v5);
  v20(v9, v5);
  sub_7460(v14, &qword_1D240, &qword_13A50);
  v20(v26, v5);
  return sub_7460(v24, &qword_1D240, &qword_13A50);
}

void sub_DF08()
{
  v0 = sub_12418();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() passwordManagerURL];
    sub_123F8();

    sub_123E8(v7);
    v9 = v8;
    (*(v1 + 8))(v3, v0);
    sub_7508(&_swiftEmptyArrayStorage);
    isa = sub_127E8().super.isa;

    [v5 openSensitiveURL:v9 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_E08C()
{
  v0 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_12418();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12408();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v9 = result;
      sub_123E8(v8);
      v11 = v10;
      sub_7508(&_swiftEmptyArrayStorage);
      isa = sub_127E8().super.isa;

      [v9 openSensitiveURL:v11 withOptions:isa];

      return (*(v4 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E2A0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedStore];
  v3 = [v2 savedAccountsWithNeverSaveMarker];

  if (v3)
  {
    sub_74C0(0, &qword_1D000, WBSSavedAccount_ptr);
    v4 = sub_12868();

    if (v4 >> 62)
    {
      sub_12B98();
    }
  }

  sub_7114(&qword_1D0F8, &qword_13990);
  return sub_12728();
}

uint64_t sub_E3B0(uint64_t a1)
{
  v1 = sub_12618();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_124A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12498();
  v10[0] = 0x766153726576656ELL;
  v10[1] = 0xEA00000000006465;
  sub_12798();
  sub_125F8();
  sub_ED6C(&qword_1D110, &type metadata accessor for PMNeverSavedPasswordsView, &protocol conformance descriptor for PMNeverSavedPasswordsView);
  sub_126B8();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_E5B8(uint64_t a1)
{
  v1 = sub_12618();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_12488();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12478();
  v10[0] = 0xD000000000000011;
  v10[1] = 0x80000000000158D0;
  sub_12798();
  sub_125F8();
  sub_ED6C(&qword_1D120, &type metadata accessor for PMPasskeysLearnMoreView, &protocol conformance descriptor for PMPasskeysLearnMoreView);
  sub_126B8();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_E838@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  [v2 shouldShowServiceNamesForPasswordAndPasskeyItems];
  sub_12708();
  sub_12808();
  v3 = objc_opt_self();
  v4 = [v3 pm_defaults];
  type metadata accessor for WBSPasswordSavingBehavior(0);
  sub_ED6C(&qword_1D0B8, type metadata accessor for WBSPasswordSavingBehavior, &unk_13750);
  v14 = sub_12558();
  v5 = [v2 sharedStore];
  v6 = [v5 savedAccountsWithNeverSaveMarker];

  if (v6)
  {
    sub_74C0(0, &qword_1D000, WBSSavedAccount_ptr);
    v7 = sub_12868();

    if (v7 >> 62)
    {
      sub_12B98();
    }
  }

  sub_12708();
  sub_12708();
  [objc_opt_self() isPasswordBreachDetectionEnabled];
  sub_12708();
  sub_12808();
  v8 = [v3 safari_browserDefaults];
  v9 = sub_12548();
  sub_12808();
  v10 = [v3 pm_defaults];
  v11 = sub_12548();
  sub_12708();
  [objc_opt_self() isNetworkFetchingForPasswordsEnabled];
  sub_12808();
  v12 = [v3 pm_defaults];
  result = sub_12548();
  *a1 = 0xD00000000000001ELL;
  *(a1 + 8) = 0x8000000000015830;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  *(a1 + 48) = v16;
  *(a1 + 56) = 0;
  *(a1 + 64) = v16;
  *(a1 + 72) = 0;
  *(a1 + 80) = v16;
  *(a1 + 88) = v9;
  *(a1 + 96) = v11;
  *(a1 + 104) = 0;
  *(a1 + 112) = v16;
  *(a1 + 120) = result;
  *(a1 + 128) = 0;
  return result;
}

__n128 sub_EC10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_EC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_EC8C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ED6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_EDC4()
{
  result = qword_1D180;
  if (!qword_1D180)
  {
    sub_2514(&qword_1D178, &qword_139F8);
    sub_7A3C(&qword_1D188, &qword_1D190, &qword_13A00, &protocol conformance descriptor for Picker<A, B, C>);
    sub_ED6C(&qword_1D198, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D180);
  }

  return result;
}

unint64_t sub_EEB4()
{
  result = qword_1D1A0;
  if (!qword_1D1A0)
  {
    sub_2514(&qword_1D168, &qword_139E8);
    sub_EDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1A0);
  }

  return result;
}

unint64_t sub_EF4C()
{
  result = qword_1D1B0;
  if (!qword_1D1B0)
  {
    sub_2514(&qword_1D1A8, &qword_13A08);
    sub_7A3C(&qword_1D1B8, &qword_1D1C0, &qword_13A10, &protocol conformance descriptor for Picker<A, B, C>);
    sub_ED6C(&qword_1D198, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1B0);
  }

  return result;
}

unint64_t sub_F034()
{
  result = qword_1D1C8;
  if (!qword_1D1C8)
  {
    sub_2514(&qword_1D158, &qword_139D8);
    sub_2514(&qword_1D1D0, &qword_13A18);
    sub_F108();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1C8);
  }

  return result;
}

unint64_t sub_F108()
{
  result = qword_1D1D8;
  if (!qword_1D1D8)
  {
    sub_2514(&qword_1D1D0, &qword_13A18);
    sub_7A3C(&qword_1D1E0, &qword_1D1E8, &qword_13A20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1D8);
  }

  return result;
}

unint64_t sub_F1C8()
{
  result = qword_1D200;
  if (!qword_1D200)
  {
    sub_2514(&qword_1D140, &qword_139C0);
    sub_F108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D200);
  }

  return result;
}

unint64_t sub_F254()
{
  result = qword_1D208;
  if (!qword_1D208)
  {
    sub_2514(&qword_1D148, &qword_139C8);
    sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28, &protocol conformance descriptor for Toggle<A>);
    sub_F1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D208);
  }

  return result;
}

unint64_t sub_F320()
{
  result = qword_1D218;
  if (!qword_1D218)
  {
    sub_2514(&qword_1D210, &qword_13A30);
    sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28, &protocol conformance descriptor for Toggle<A>);
    sub_ED6C(&qword_1D198, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D218);
  }

  return result;
}

uint64_t sub_F418(uint64_t a1, uint64_t a2)
{
  v4 = sub_7114(&qword_1D240, &qword_13A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7114(&qword_1D1D0, &qword_13A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_F53C()
{
  result = qword_1D268;
  if (!qword_1D268)
  {
    sub_74C0(255, &qword_1D260, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D268);
  }

  return result;
}

uint64_t sub_F5B4()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_12458();
  v5 = sub_12448();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_F708()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_F790()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_F818(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_736C;

  return sub_AF90(a1, v4, v5, v1 + 32);
}

uint64_t sub_F8C8()
{
  sub_2514(&qword_1D0D8, &qword_13980);
  sub_2514(&qword_1D118, &qword_139A0);
  sub_2514(&qword_1D0D0, &qword_13978);
  sub_2514(&qword_1D100, &qword_13998);
  sub_7A3C(&qword_1D108, &qword_1D0D0, &qword_13978, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_124A8();
  sub_12618();
  sub_ED6C(&qword_1D110, &type metadata accessor for PMNeverSavedPasswordsView, &protocol conformance descriptor for PMNeverSavedPasswordsView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_12488();
  sub_ED6C(&qword_1D120, &type metadata accessor for PMPasskeysLearnMoreView, &protocol conformance descriptor for PMPasskeysLearnMoreView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_FADC()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v4 = sub_12448();
  (*(v1 + 8))(v3, v0);
  return v4;
}

Class sub_FBDC(void *a1)
{
  v3 = sub_12468();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v26 = sub_74C0(0, &qword_1CFF8, UIAction_ptr);
  sub_12458();
  sub_12448();
  v27 = v10;
  v11 = *(v4 + 8);
  v11(v9, v3);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  v13 = v1;
  v14 = a1;
  v27 = sub_129C8();
  sub_12458();
  sub_12458();
  sub_12438();
  v11(v7, v3);
  v11(v9, v3);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = v13;
  v17 = v14;
  v18 = sub_129C8();
  v19 = v18;
  v20 = v27;
  if (v16[OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems])
  {
    v18 = v27;
  }

  [v18 setState:1];
  sub_74C0(0, &qword_1D318, UIMenu_ptr);
  sub_7114(&qword_1D410, &qword_13820);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_137B0;
  *(v21 + 32) = v20;
  *(v21 + 40) = v19;
  v24 = v21;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  v22.value = 0;
  return sub_129A8(v29, v30, v28, v22, 0xFFFFFFFFFFFFFFFFLL, v24, v25).super.super.isa;
}

id sub_FF30(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, char a5)
{
  a2[OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems] = a4;
  v8 = [objc_opt_self() sharedStore];
  [v8 setShouldShowServiceNamesForPasswordAndPasskeyItems:a5 & 1];

  return [a2 reloadWithSpecifier:a3 animated:1];
}

id sub_FFC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems;
  v9 = [objc_opt_self() sharedStore];
  v10 = [v9 shouldShowServiceNamesForPasswordAndPasskeyItems];

  v4[v8] = v10;
  if (a3)
  {
    v11 = sub_127F8();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for PMServiceNamesCellView();
  v12 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:specifier:", a1, v11, a4);

  if (v12)
  {
  }

  return v12;
}

id sub_10228(void *a1)
{
  v3 = OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems;
  v4 = [objc_opt_self() sharedStore];
  v5 = [v4 shouldShowServiceNamesForPasswordAndPasskeyItems];

  v1[v3] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PMServiceNamesCellView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10304(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PMServiceNamesCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1035C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_103E8()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v4 = sub_12448();
  (*(v1 + 8))(v3, v0);
  return v4;
}

Class sub_104F0(void *a1)
{
  v3 = sub_12468();
  v28 = v3;
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() pm_defaults];
  sub_74C0(0, &qword_1CFF8, UIAction_ptr);
  sub_12458();
  sub_12448();
  v8 = *(v4 + 8);
  v8(v6, v3);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = a1;
  v10 = v7;
  v11 = v1;
  v12 = a1;
  v13 = sub_129C8();
  sub_12458();
  sub_12448();
  v8(v6, v28);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = sub_129C8();
  v19 = [v15 integerForKey:WBSPasswordSavingBehaviorKey];
  v20 = v13;
  if (!v19)
  {
    goto LABEL_4;
  }

  if (v19 == &dword_0 + 1)
  {
    v20 = v18;
LABEL_4:
    [v20 setState:1];
  }

  sub_74C0(0, &qword_1D318, UIMenu_ptr);
  sub_7114(&qword_1D410, &qword_13820);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_137B0;
  *(v21 + 32) = v13;
  *(v21 + 40) = v18;
  v25 = v21;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  v22.value = 0;
  isa = sub_129A8(v30, v31, v29, v22, 0xFFFFFFFFFFFFFFFFLL, v25, v26).super.super.isa;

  return isa;
}

id sub_1085C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_127F8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_10A74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10AD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10B28(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  [v3 setInteger:a2 forKey:WBSPasswordSavingBehaviorKey];

  return [v4 reloadWithSpecifier:v5 animated:1];
}

void sub_10B90()
{
  v1 = *&v0[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView];
  if (v1)
  {
    v6 = v1;
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    v4 = sub_12998();
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    [v6 setAxis:v4 & 1];
    [v6 setAlignment:v5];
    [v6 setDistribution:v4 & 1];
    [v0 setNeedsLayout];
  }
}

void sub_10C9C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_129E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7114(&qword_1D3F0, &qword_13B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = sub_12A38();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = type metadata accessor for PMPopUpMenuCellView();
  v73.receiver = v1;
  v73.super_class = v17;
  v67 = a1;
  objc_msgSendSuper2(&v73, "refreshCellContentsWithSpecifier:", a1);
  v18 = OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration;
  if (!*(v1 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration))
  {
    sub_7114(&qword_1D3F8, &qword_13B98);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_137C0;
    *(v19 + 32) = sub_12538();
    *(v19 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    v20 = sub_129B8();

    *(v2 + v18) = v20;
    swift_unknownObjectRelease();
  }

  v21 = OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton;
  v22 = *(v2 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton);
  if (v22)
  {
    v23 = v22;
    v24 = [v23 superview];
    if (v24)
    {

      if (v67)
      {
        v25 = (*&stru_B8.segname[(swift_isaMask & *v2) - 8])();
        [v23 setMenu:v25];

        return;
      }

      goto LABEL_12;
    }
  }

  sub_12A28();
  sub_12518();
  v26 = sub_12528();
  (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  sub_12A18();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v4);
  sub_129F8();
  v27 = [objc_opt_self() secondaryLabelColor];
  sub_12A08();
  sub_129D8();
  sub_74C0(0, &qword_1D400, UIButton_ptr);
  (*(v68 + 16))(v14, v16, v69);
  v28 = sub_12A48();
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = v28;
  [v29 setShowsMenuAsPrimaryAction:1];
  [v29 setChangesSelectionAsPrimaryAction:1];
  [v29 setContentHorizontalAlignment:5];

  v30 = *(v2 + v21);
  *(v2 + v21) = v29;
  v31 = v29;

  v32 = [objc_allocWithZone(UILabel) init];
  (*&stru_B8.sectname[swift_isaMask & *v2])();
  v33 = sub_127F8();

  [v32 setText:v33];

  v34 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v32 setFont:v34];

  [v32 setNumberOfLines:0];
  [v32 setLineBreakMode:0];
  v35 = v32;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for UILayoutPriority(0);
  v71 = 1144750080;
  v70 = 1130430464;
  sub_11B68();
  sub_12508();
  LODWORD(v36) = v72;
  [v35 setContentHuggingPriority:0 forAxis:v36];
  LODWORD(v37) = 1132068864;
  [v35 setContentCompressionResistancePriority:0 forAxis:v37];
  sub_7114(&qword_1D410, &qword_13820);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_137B0;
  *(v38 + 32) = v35;
  *(v38 + 40) = v31;
  v65 = v31;
  v39 = objc_allocWithZone(UIStackView);
  sub_74C0(0, &qword_1D418, UIView_ptr);
  isa = sub_12858().super.isa;

  v41 = [v39 initWithArrangedSubviews:isa];

  v42 = v41;
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v42 setAxis:0];
  [v42 setAlignment:3];
  [v42 setSpacing:4.0];
  v43 = [v2 contentView];
  [v43 addSubview:v42];

  v44 = *(v2 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView);
  *(v2 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView) = v42;
  v45 = v42;

  v46 = [v2 contentView];
  v47 = [v46 layoutMarginsGuide];

  v66 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_13B60;
  v49 = [v45 topAnchor];
  v50 = [v47 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v48 + 32) = v51;
  v52 = [v45 rightAnchor];
  v53 = [v47 rightAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v48 + 40) = v54;
  v55 = [v45 bottomAnchor];
  v56 = [v47 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v48 + 48) = v57;
  v58 = [v45 leftAnchor];

  v59 = [v47 leftAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v48 + 56) = v60;
  sub_74C0(0, &unk_1D420, NSLayoutConstraint_ptr);
  v61 = sub_12858().super.isa;

  [v66 activateConstraints:v61];

  if (!v67)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v62 = (*&stru_B8.segname[(swift_isaMask & *v2) - 8])();
  v63 = v65;
  [v65 setMenu:v62];

  [v2 _setPopupMenuButton:v63];
  sub_10B90();
  [v2 setNeedsLayout];

  (*(v68 + 8))(v16, v69);
}

id sub_117CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration] = 0;
  *&v4[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView] = 0;
  *&v4[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton] = 0;
  if (a3)
  {
    v7 = sub_127F8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PMPopUpMenuCellView();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_11908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration] = 0;
  *&v3[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView] = 0;
  *&v3[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton] = 0;
  if (a3)
  {
    v5 = sub_127F8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PMPopUpMenuCellView();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_119FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PMPopUpMenuCellView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_11AB0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PMPopUpMenuCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_11B68()
{
  result = qword_1D408;
  if (!qword_1D408)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D408);
  }

  return result;
}

void sub_11BC0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView];
  if (v1)
  {
    v7 = v1;
    v3 = [a1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    v5 = sub_12998();
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    [v7 setAxis:v5 & 1];
    [v7 setAlignment:v6];
    [v7 setDistribution:v5 & 1];
    [a1 setNeedsLayout];
  }
}

uint64_t sub_11CC0()
{
  sub_11E1C();
  result = sub_12A78();
  qword_1DA70 = result;
  return result;
}

uint64_t sub_11D2C()
{
  v0 = sub_124E8();
  sub_11DB8(v0, qword_1DA78);
  sub_7088(v0, qword_1DA78);
  if (qword_1CDD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1DA70;
  return sub_124F8();
}

uint64_t *sub_11DB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_11E1C()
{
  result = qword_1D430;
  if (!qword_1D430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D430);
  }

  return result;
}

uint64_t sub_11E70(int a1, int a2, int a3, int a4)
{
  if (qword_1DA60 == -1)
  {
    if (qword_1DA68)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_12338();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1DA68)
    {
      return _availability_version_check();
    }
  }

  if (qword_1DA58 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_12350();
    a3 = v10;
    a4 = v9;
    v8 = dword_1DA48 < v11;
    if (dword_1DA48 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1DA4C > a3)
      {
        return 1;
      }

      if (dword_1DA4C >= a3)
      {
        return dword_1DA50 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1DA48 < a2;
  if (dword_1DA48 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_12004(uint64_t result)
{
  v1 = qword_1DA68;
  if (qword_1DA68)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1DA68 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1DA48, &dword_1DA4C, &dword_1DA50);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}