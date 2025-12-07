void sub_1DA8(void *a1)
{
  v1 = a1;
  if (qword_396D8[0] != -1)
  {
    sub_29970();
  }

  if (qword_396D0)
  {
    v2 = getCTGreenTeaOsLogHandle();
    v3 = v2;
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 bundleIdentifier];
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", &v6, 0x16u);
    }
  }
}

void sub_1EBC(uint64_t a1)
{
  v2 = sub_2A324();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29B74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppsSettingsDestinationOption(0);
  __chkstk_darwin(v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F78(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2A904(2uLL);
      sub_2A414();
    }

    else
    {
      sub_2A904(3uLL);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v12, v2);
    sub_2A904(1uLL);
    sub_2FDC(&qword_38B88, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
    sub_2A3B4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_2A904(0);
    sub_2FDC(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_2A3B4();
    (*(v7 + 8))(v9, v6);
  }
}

Swift::Int sub_21B4()
{
  sub_2A8F4();
  sub_1EBC(v1);
  return sub_2A914();
}

Swift::Int sub_21F8(uint64_t a1)
{
  sub_2A8F4();
  sub_1EBC(v2);
  return sub_2A914();
}

Swift::Int sub_2238()
{
  sub_2A8F4();
  sub_2A414();
  return sub_2A914();
}

Swift::Int sub_228C(uint64_t a1)
{
  sub_2A8F4();
  sub_2A414();
  return sub_2A914();
}

uint64_t sub_22D4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2A8A4();
  }
}

uint64_t sub_237C(uint64_t *a1)
{
  if (sub_294A8(2, 26, 0, 0))
  {
    sub_29FC4();

    return sub_29D64();
  }

  else
  {
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    sub_29D64();
    sub_2A694();
    swift_getWitnessTable();
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    return sub_29D64();
  }
}

uint64_t sub_24E0(uint64_t *a1)
{
  if (sub_294A8(2, 26, 0, 0))
  {
    sub_29FC4();
    sub_29D64();
  }

  else
  {
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    sub_29D64();
    sub_2A694();
    swift_getWitnessTable();
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    sub_29D64();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_26EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A324();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29B74();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppsSettingsDestinationOption(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = sub_2B4C(&qword_38B98, &unk_2B570);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = (&v36 + *(v19 + 56) - v20);
  sub_2F78(a1, &v36 - v20);
  sub_2F78(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2F78(v21, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v38 + 8))(v15, v39);
        goto LABEL_19;
      }

      v29 = v38;
      v28 = v39;
      v30 = v36;
      (*(v38 + 32))(v36, v22, v39);
      v31 = sub_2A314();
      v32 = *(v29 + 8);
      v32(v30, v28);
      v32(v15, v28);
    }

    else
    {
      sub_2F78(v21, v17);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v37 + 8))(v17, v6);
LABEL_19:
        sub_3024(v21);
        goto LABEL_20;
      }

      v33 = v37;
      (*(v37 + 32))(v8, v22, v6);
      v31 = sub_29B54();
      v34 = *(v33 + 8);
      v34(v8, v6);
      v34(v17, v6);
    }

    sub_308C(v21);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  sub_2F78(v21, v12);
  v25 = *v12;
  v24 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_19;
  }

  if (v25 == *v22 && v24 == v22[1])
  {

    goto LABEL_24;
  }

  v27 = sub_2A8A4();

  if (v27)
  {
LABEL_24:
    sub_308C(v21);
    v31 = 1;
    return v31 & 1;
  }

  sub_308C(v21);
LABEL_20:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_2B4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2B94(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void type metadata accessor for HFHomeSettingsVisibilityState()
{
  if (!qword_38AA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_38AA8);
    }
  }
}

__n128 sub_2BF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2C04(uint64_t a1, int a2)
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

uint64_t sub_2C4C(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for AppsSettingsDestinationOption(uint64_t a1)
{
  result = qword_38B20;
  if (!qword_38B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2D44(uint64_t a1)
{
  sub_2E04(319, &qword_38B30, &type metadata accessor for PreferencesControllerRecipe);
  if (v1 <= 0x3F)
  {
    sub_2E04(319, &qword_38B38, &type metadata accessor for SettingsPaneRecipe);
    if (v2 <= 0x3F)
    {
      sub_2E50();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_2E50()
{
  result = qword_38B40;
  if (!qword_38B40)
  {
    result = &type metadata for InstalledApplicationSettings;
    atomic_store(&type metadata for InstalledApplicationSettings, &qword_38B40);
  }

  return result;
}

unint64_t sub_2ECC()
{
  result = qword_38B78;
  if (!qword_38B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38B78);
  }

  return result;
}

unint64_t sub_2F24()
{
  result = qword_38B80;
  if (!qword_38B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38B80);
  }

  return result;
}

uint64_t sub_2F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsSettingsDestinationOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3024(uint64_t a1)
{
  v2 = sub_2B4C(&qword_38B98, &unk_2B570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_308C(uint64_t a1)
{
  v2 = type metadata accessor for AppsSettingsDestinationOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_2A604();
  __chkstk_darwin(v10 - 8);
  v11 = sub_2A634();
  __chkstk_darwin(v11 - 8);
  v18 = 0;
  if (a4 <= 1)
  {
    if (!a4)
    {
      sub_2A624();
LABEL_14:
      sub_2A304();
      type metadata accessor for AppsSettingsDestinationOption(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (a4 == 1)
    {
LABEL_22:
      sub_2A614();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (a4 == 2)
  {
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v13.super.isa = qword_3AD50;
    v17._countAndFlagsBits = 0x800000000002D720;
    v20._countAndFlagsBits = 0x70696C4320707041;
    v20._object = 0xE900000000000073;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_29A34(v20, v21, v13, v22, 0xD000000000000014, v17);
    v14 = sub_2A3E4();

    v15 = [objc_allocWithZone(PSSpecifier) initWithName:v14 target:0 set:0 get:0 detail:0 cell:1 edit:0];

    if (!v15)
    {
      __break(1u);
      JUMPOUT(0x3840);
    }

    sub_2A5F4();
    sub_29B64();
LABEL_19:
    type metadata accessor for AppsSettingsDestinationOption(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (a4 != 3)
  {
LABEL_8:
    swift_bridgeObjectRetain_n();
    if (sub_7330(a3, a4) != 33)
    {
      sub_3B0C(a3, a4);
      switch(v16)
      {
        case 21:
          sub_38C4(&v18, a1, a2, a3, a4);
          sub_2A5E4();
          sub_29B64();

          goto LABEL_19;
        case 31:
          sub_2A5E4();
          sub_29B44();
          goto LABEL_19;
        default:
          goto LABEL_22;
      }
    }

    *a5 = a3;
    a5[1] = a4;
    type metadata accessor for AppsSettingsDestinationOption(0);
    goto LABEL_10;
  }

  type metadata accessor for AppsSettingsDestinationOption(0);
LABEL_10:

  return swift_storeEnumTagMultiPayload();
}

id sub_38C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v8 = sub_3950(a2, a3, a4, a5);
    swift_beginAccess();
    v9 = *a1;
    *a1 = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

id sub_3950(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_2A3E4();
  v7 = [objc_allocWithZone(PSSpecifier) initWithName:v6 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  if (v7)
  {
    sub_2B94(a3, a4);
    v8 = sub_2A3E4();

    [v7 setIdentifier:v8];

    return v7;
  }

  else
  {
    result = sub_2A844();
    __break(1u);
  }

  return result;
}

uint64_t sub_3B0C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_3B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B4C(&qword_38C00, &qword_2B580);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2B4C(&qword_38C08, &qword_2B588);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_3C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2B4C(&qword_38C00, &qword_2B580);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2B4C(&qword_38C08, &qword_2B588);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for HiddenAppsSettingsList(uint64_t a1)
{
  result = qword_38C68;
  if (!qword_38C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3DB0(uint64_t a1)
{
  sub_3E94(319, &qword_38C78, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_3E94(319, &unk_38C80, type metadata accessor for HiddenAppsSettingsListViewModel, &type metadata accessor for Bindable);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_3F14@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HiddenAppsSettingsList(0);
  v4 = v3 - 8;
  v82 = *(v3 - 8);
  __chkstk_darwin(v3);
  v83 = v5;
  v84 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29ED4();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B4C(&qword_38CB0, &qword_2B5F8);
  v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = sub_2B4C(&qword_38CB8, &qword_2B600);
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  v86 = sub_2B4C(&qword_38CC0, &qword_2B608);
  __chkstk_darwin(v86);
  v72 = &v65 - v14;
  v15 = sub_2B4C(&qword_38CC8, &qword_2B610);
  v79 = *(v15 - 8);
  __chkstk_darwin(v15);
  v78 = &v65 - v16;
  v17 = sub_2B4C(&qword_38CD0, &qword_2B618);
  v81 = *(v17 - 8);
  __chkstk_darwin(v17);
  v80 = &v65 - v18;
  v85 = sub_2B4C(&qword_38CD8, &qword_2B620);
  __chkstk_darwin(v85);
  v20 = &v65 - v19;
  v21 = *(v4 + 28);
  v87 = v1;
  v22 = v1 + v21;
  v69 = sub_2B4C(&qword_38C08, &qword_2B588);
  v70 = v22;
  sub_2A284();
  v23 = v88;
  swift_getKeyPath();
  v88 = v23;
  v68 = sub_56D4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel, &unk_2B728);
  sub_29AD4();

  v24 = *&v23[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps];

  v25 = *(v24 + 16);

  if (v25)
  {
    v65 = v15;
    v66 = v17;
    v67 = a1;
    __chkstk_darwin(v26);
    sub_2B4C(&qword_38CE0, &qword_2B650);
    sub_4FC8();
    sub_2A094();
    sub_29F24();
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v27 = qword_3AD50;
    v28 = sub_2A0B4();
    v30 = v29;
    v32 = v31;
    v33 = sub_55DC(&qword_38CF8, &qword_38CB0, &qword_2B5F8, &protocol conformance descriptor for List<A, B>);
    sub_2A154();
    sub_50E8(v28, v30, v32 & 1);

    (*(v71 + 8))(v10, v8);
    v35 = v75;
    v34 = v76;
    v36 = v77;
    (*(v76 + 104))(v75, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v77);
    v88 = v8;
    v89 = v33;
    swift_getOpaqueTypeConformance2();
    v37 = v72;
    v38 = v74;
    sub_2A1B4();
    (*(v34 + 8))(v35, v36);
    (*(v73 + 8))(v13, v38);
    v39 = sub_2A2B4();
    sub_2A284();
    v40 = v88;
    swift_getKeyPath();
    v88 = v40;
    sub_29AD4();

    v41 = *&v40[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps];

    v42 = v86;
    v43 = (v37 + *(v86 + 36));
    *v43 = v39;
    v43[1] = v41;
    v44 = sub_50F8();
    v45 = v78;
    sub_2A0D4();
    sub_5264(v37);
    swift_getKeyPath();
    v46 = v84;
    sub_52F4(v87, v84);
    v47 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v48 = swift_allocObject();
    sub_54B4(v46, v48 + v47);
    v88 = v42;
    v89 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = sub_56D4(&qword_38D20, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
    v51 = v80;
    v52 = v65;
    sub_2A174();

    (*(v79 + 8))(v45, v52);
    v53 = v81;
    v54 = v66;
    (*(v81 + 16))(v20, v51, v66);
    swift_storeEnumTagMultiPayload();
    sub_5588();
    v55 = sub_29CB4();
    v88 = v52;
    v89 = v55;
    v90 = OpaqueTypeConformance2;
    v91 = v50;
    swift_getOpaqueTypeConformance2();
    sub_29F44();
    return (*(v53 + 8))(v51, v54);
  }

  else
  {
    sub_29F24();
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v57 = qword_3AD50;
    *v20 = sub_2A0B4();
    *(v20 + 1) = v58;
    v20[16] = v59 & 1;
    *(v20 + 3) = v60;
    *(v20 + 4) = 0xD00000000000001DLL;
    *(v20 + 5) = 0x800000000002DB40;
    swift_storeEnumTagMultiPayload();
    sub_5588();
    v61 = sub_29CB4();
    v62 = sub_50F8();
    v88 = v86;
    v89 = v62;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = sub_56D4(&qword_38D20, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
    v88 = v15;
    v89 = v61;
    v90 = v63;
    v91 = v64;
    swift_getOpaqueTypeConformance2();
    return sub_29F44();
  }
}

uint64_t sub_4A98()
{
  type metadata accessor for HiddenAppsSettingsList(0);
  sub_2B4C(&qword_38C08, &qword_2B588);
  sub_2A284();
  swift_getKeyPath();
  sub_56D4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel, &unk_2B728);
  sub_29AD4();

  sub_2B4C(&qword_395C0, &qword_2CB70);
  sub_55DC(&qword_38D30, &qword_395C0, &qword_2CB70, &protocol conformance descriptor for [A]);
  sub_5094();
  sub_5624();
  return sub_2A264();
}

__n128 sub_4C20@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13[0] = v3;
  *(v13 + 9) = *(a1 + 57);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  type metadata accessor for AppsSettingsListViewModel(0);
  sub_5678(&v10, v14);
  sub_56D4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  v5 = sub_29CD4();
  *&v14[7] = v10;
  *&v14[23] = v11;
  *&v14[39] = v12;
  *&v14[55] = v13[0];
  *&v14[64] = *(v13 + 9);
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  v7 = *&v14[16];
  *(a2 + 9) = *v14;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 73) = *&v14[64];
  *(a2 + 57) = v9;
  *(a2 + 41) = result;
  *(a2 + 25) = v7;
  return result;
}

uint64_t sub_4D1C(uint64_t a1)
{
  v2 = sub_29CB4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29DF4();
}

uint64_t sub_4DE4(uint64_t a1)
{
  v1 = sub_29D14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_29CB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for ScenePhase.background(_:), v5);
  v9 = sub_29CA4();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    sub_13C80(v4);
    sub_29D04();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

unint64_t sub_4FC8()
{
  result = qword_38CE8;
  if (!qword_38CE8)
  {
    sub_504C(&qword_38CE0, &qword_2B650);
    sub_5094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38CE8);
  }

  return result;
}

uint64_t sub_504C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_5094()
{
  result = qword_38CF0;
  if (!qword_38CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38CF0);
  }

  return result;
}

uint64_t sub_50E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_50F8()
{
  result = qword_38D00;
  if (!qword_38D00)
  {
    sub_504C(&qword_38CC0, &qword_2B608);
    sub_504C(&qword_38CB8, &qword_2B600);
    sub_504C(&qword_38CB0, &qword_2B5F8);
    sub_55DC(&qword_38CF8, &qword_38CB0, &qword_2B5F8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_55DC(&qword_38D08, &qword_38D10, &qword_2B658, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D00);
  }

  return result;
}

uint64_t sub_5264(uint64_t a1)
{
  v2 = sub_2B4C(&qword_38CC0, &qword_2B608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_52F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HiddenAppsSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5358()
{
  v1 = type metadata accessor for HiddenAppsSettingsList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_2B4C(&qword_38D18, &unk_2B690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_29D14();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = sub_2B4C(&qword_38C08, &qword_2B588);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_54B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HiddenAppsSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5518(uint64_t a1)
{
  type metadata accessor for HiddenAppsSettingsList(0);

  return sub_4DE4(a1);
}

unint64_t sub_5588()
{
  result = qword_38D28;
  if (!qword_38D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D28);
  }

  return result;
}

uint64_t sub_55DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_504C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5624()
{
  result = qword_38D38;
  if (!qword_38D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D38);
  }

  return result;
}

uint64_t sub_56D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_5720()
{
  result = qword_38D40;
  if (!qword_38D40)
  {
    sub_504C(&qword_38D48, &unk_2B6A0);
    sub_5588();
    sub_504C(&qword_38CC8, &qword_2B610);
    sub_29CB4();
    sub_504C(&qword_38CC0, &qword_2B608);
    sub_50F8();
    swift_getOpaqueTypeConformance2();
    sub_56D4(&qword_38D20, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D40);
  }

  return result;
}

uint64_t sub_587C()
{
  swift_getKeyPath();
  sub_6848();
  sub_29AD4();
}

uint64_t sub_58F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps;
  if (sub_9080(*(v1 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6848();
    sub_29AC4();
  }
}

char *sub_5A14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__currentSelection] = xmmword_2B6B0;
  *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription] = 0;
  sub_29AE4();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "init");
  sub_2A544();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = v5;
  v8 = [objc_msgSend(ObjCClassFromMetadata "subjectMonitorRegistry")];

  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription] = v8;
  swift_unknownObjectRelease();
  sub_2A4A4();
  v9 = sub_2A4C4();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v11 = v7;
  sub_642C(0, 0, v4, &unk_2B798, v10);

  sub_6958(v4);
  return v11;
}

id sub_5C44()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for HiddenAppsSettingsListViewModel(uint64_t a1)
{
  result = qword_38D98;
  if (!qword_38D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5E10(uint64_t a1)
{
  result = sub_29AF4();
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

uint64_t sub_5EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;

  return _swift_task_switch(sub_5F54, 0, 0);
}

uint64_t sub_5F54()
{
  v35 = v0;
  v1 = [objc_opt_self() hiddenApplications];
  sub_2A544();
  v2 = sub_2A454();

  if (v2 >> 62)
  {
    v3 = sub_2A854();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
    v33 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  v4 = 0;
  v33 = _swiftEmptyArrayStorage;
  v30 = v0;
  v31 = v2 & 0xC000000000000001;
  v5 = &APSubjectMonitorSubscription__prots;
  v28 = v3;
  v29 = v2;
  do
  {
    if (v31)
    {
      v7 = sub_2A824();
    }

    else
    {
      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = [v7 v5[221].count];
    if (!v9)
    {
      sub_2A3F4();
      v9 = sub_2A3E4();
    }

    v10 = objc_allocWithZone(LSApplicationRecord);
    v0[2] = 0;
    v11 = [v10 initWithBundleIdentifier:v9 allowPlaceholder:0 error:v0 + 2];

    v12 = v0[2];
    if (v11)
    {
      v13 = v12;
      v14 = [v11 localizedName];
      v15 = sub_2A3F4();
      v17 = v16;

      v18 = [v8 v5[221].count];
      v19 = sub_2A3F4();
      v21 = v20;

      LOBYTE(v34) = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_223F8(0, *(v33 + 2) + 1, 1, v33);
      }

      v23 = *(v33 + 2);
      v22 = *(v33 + 3);
      if (v23 >= v22 >> 1)
      {
        v33 = sub_223F8((v22 > 1), v23 + 1, 1, v33);
      }

      *(v33 + 2) = v23 + 1;
      v24 = &v33[80 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      *(v24 + 6) = v19;
      *(v24 + 7) = v21;
      v24[64] = 0;
      v24[71] = 0;
      *(v24 + 69) = 0;
      *(v24 + 65) = 0;
      *(v24 + 9) = v15;
      *(v24 + 10) = v17;
      *(v24 + 11) = 0;
      v32 &= 1u;
      v24[104] = v32;
      v2 = v29;
      v0 = v30;
      v3 = v28;
      v5 = &APSubjectMonitorSubscription__prots;
    }

    else
    {
      v6 = v12;
      sub_29A44();

      swift_willThrow();
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_20:

  v0[7] = v33;
  v34 = v33;

  sub_22F20(&v34);
  v0[8] = v34;
  swift_unknownObjectWeakInit();
  sub_2A494();
  v0[9] = sub_2A484();
  v26 = sub_2A474();

  return _swift_task_switch(sub_6350, v26, v25);
}

uint64_t sub_6350()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_58F8(*(v0 + 64));
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_69C0(a3, v25 - v10);
  v12 = sub_2A4C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_6958(v11);
  }

  else
  {
    sub_2A4B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2A474();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2A404() + 32;
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

uint64_t sub_6804()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps) = *(v0 + 24);
}

unint64_t sub_6848()
{
  result = qword_395E0;
  if (!qword_395E0)
  {
    type metadata accessor for HiddenAppsSettingsListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395E0);
  }

  return result;
}

uint64_t sub_68A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6DD8;

  return sub_5EC4(a1, v4, v5, v6);
}

uint64_t sub_6958(uint64_t a1)
{
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_69C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&unk_38E10, &qword_2B770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6A30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6A68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6DD8;

  return sub_22208(a1, v4);
}

uint64_t sub_6B20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6BD8;

  return sub_22208(a1, v4);
}

uint64_t sub_6BD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6CCC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6BD8;

  return sub_5EC4(a1, v4, v5, v6);
}

uint64_t sub_6DC0(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_3B0C(a1, a2);
  }

  return a1;
}

unint64_t sub_6DDC(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 7:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 9:
    case 27:
    case 29:
    case 30:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 10:
    case 31:
      result = 0xD000000000000016;
      break;
    case 11:
    case 15:
    case 21:
    case 23:
    case 24:
    case 32:
      return result;
    case 12:
    case 19:
    case 26:
      result = 0xD000000000000010;
      break;
    case 13:
    case 16:
    case 17:
    case 20:
    case 22:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

Swift::Int sub_7124()
{
  v1 = *v0;
  sub_2A8F4();
  sub_6DDC(v1);
  sub_2A414();

  return sub_2A914();
}

uint64_t sub_7188(uint64_t a1)
{
  sub_6DDC(*v1);
  sub_2A414();
}

Swift::Int sub_71DC(uint64_t a1)
{
  v2 = *v1;
  sub_2A8F4();
  sub_6DDC(v2);
  sub_2A414();

  return sub_2A914();
}

unint64_t sub_723C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7330(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_726C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_6DDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_7298(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_6DDC(*a1);
  v5 = v4;
  if (v3 == sub_6DDC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2A8A4();
  }

  return v8 & 1;
}

unint64_t sub_7330(uint64_t a1, uint64_t a2)
{
  v2 = sub_2A8B4();

  if (v2 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for AppleSystemApplicationBundleIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleSystemApplicationBundleIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_74F8()
{
  result = qword_38E20;
  if (!qword_38E20)
  {
    sub_504C(&qword_38E28, qword_2B7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E20);
  }

  return result;
}

unint64_t sub_7560()
{
  result = qword_38E30;
  if (!qword_38E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E30);
  }

  return result;
}

uint64_t sub_75B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_75CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_767C(void *result, int a2)
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

Swift::Int sub_76AC()
{
  v1 = *(v0 + 8);
  sub_2A8F4();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      sub_2A904(v2);
      return sub_2A914();
    }
  }

  sub_2A904(2uLL);
  sub_2A414();
  return sub_2A914();
}

void sub_7764(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_13;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_13:
      sub_2A904(v3);
      return;
    }
  }

  sub_2A904(2uLL);

  sub_2A414();
}

Swift::Int sub_7814(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2A8F4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      sub_2A904(v3);
      return sub_2A914();
    }
  }

  sub_2A904(2uLL);
  sub_2A414();
  return sub_2A914();
}

uint64_t sub_78C8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return sub_2A8A4();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_7958()
{
  result = qword_38E38;
  if (!qword_38E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E38);
  }

  return result;
}

uint64_t sub_79AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2B94(v2, v3);
}

unint64_t sub_79B8(Swift::String a1)
{
  if (a1._object > 1)
  {
    if (a1._object != &dword_0 + 2)
    {
      if (a1._object == &dword_0 + 3)
      {
        return 0xD00000000000001ELL;
      }

      goto LABEL_8;
    }

    return 0xD000000000000020;
  }

  else
  {
    if (a1._object)
    {
      if (a1._object == &dword_0 + 1)
      {
        return 0xD000000000000027;
      }

LABEL_8:
      v4[4] = v1;
      v4[5] = v2;
      strcpy(v4, "application: ");
      HIWORD(v4[1]) = -4864;
      sub_2A424(a1);
      return v4[0];
    }

    return 0xD000000000000023;
  }
}

unint64_t sub_7ABC()
{
  result = qword_38E40;
  if (!qword_38E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E40);
  }

  return result;
}

uint64_t sub_7B10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x800000000002DAB0 == a2;
  if (v3 || (v4 = a1, (sub_2A8A4() & 1) != 0) || v4 == 0xD000000000000027 && 0x800000000002DA80 == a2 || (sub_2A8A4() & 1) != 0 || v4 == 0xD000000000000022 && 0x800000000002DC10 == a2 || (sub_2A8A4() & 1) != 0 || v4 == 0xD000000000000020 && 0x800000000002DA50 == a2 || (sub_2A8A4() & 1) != 0 || (v6 = objc_opt_self(), v7 = sub_2A3E4(), v8 = [v6 applicationWithBundleIdentifier:v7], v7, LODWORD(v7) = objc_msgSend(v8, "isHidden"), v8, v7))
  {

    return 0;
  }

  return v4;
}

__n128 sub_7CDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_7D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_7D50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2 * -a2;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_7DCC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_84CC(v5, v7);
}

BOOL sub_7E28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_827C(v7, v9);
}

unint64_t sub_7E84()
{
  v2._countAndFlagsBits = sub_79B8(*v0);
  sub_2A424(v2);

  return 0xD00000000000001ALL;
}

unint64_t sub_7EE8()
{
  result = qword_38E48;
  if (!qword_38E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E48);
  }

  return result;
}

BOOL sub_7F3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_86B4(v7, v9);
}

BOOL sub_7F98(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v9[2] = a1[2];
  v10[0] = v4;
  *(v10 + 9) = *(a1 + 57);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v12[0] = v6;
  *(v12 + 9) = *(a2 + 57);
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  return sub_7FF4(v9, v11, a3, a4);
}

BOOL sub_7FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (*(a2 + 72) < 0)
  {
    if (v4 < 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return !v5;
  }

  if (v4 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_8228();
  v5 = sub_2A6D4() == -1;
  return !v5;
}

BOOL sub_8074(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v9[2] = a1[2];
  v10[0] = v4;
  *(v10 + 9) = *(a1 + 57);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v12[0] = v6;
  *(v12 + 9) = *(a2 + 57);
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  return sub_80D0(v9, v11, a3, a4);
}

BOOL sub_80D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 72);
  if (*(a1 + 72) < 0)
  {
    if (v4 < 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return !v5;
  }

  if (v4 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_8228();
  v5 = sub_2A6D4() == -1;
  return !v5;
}

BOOL sub_8150(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v9[2] = a1[2];
  v10[0] = v4;
  *(v10 + 9) = *(a1 + 57);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v12[0] = v6;
  *(v12 + 9) = *(a2 + 57);
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  return sub_81AC(v9, v11, a3, a4);
}

BOOL sub_81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (*(a2 + 72) < 0)
  {
    if (v4 < 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
LABEL_3:
    sub_8228();
    return sub_2A6D4() == -1;
  }

  return 0;
}

unint64_t sub_8228()
{
  result = qword_38E50;
  if (!qword_38E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E50);
  }

  return result;
}

BOOL sub_827C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 8);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }

        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }

        goto LABEL_18;
      }

LABEL_10:
      if (v6 < 4 || (v4 != *a2 || v5 != v6) && (sub_2A8A4() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v6)
    {
      return 0;
    }
  }

LABEL_18:
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 72);
  if (v13 < 0)
  {
    if (v20 < 0)
    {
      v21 = *(a1 + 63);
      v22 = *(a1 + 61);
      v23 = *(a1 + 57);
      v24 = a1[8];
      v25 = *(a2 + 64);
      if (v9)
      {
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v7 != v14 || v8 != v15)
      {
        v34 = v23;
        v32 = v22;
        v33 = v21;
        v26 = sub_2A8A4();
        v22 = v32;
        v21 = v33;
        v23 = v34;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      if (v10 != v17 || v11 != v19)
      {
        v27 = v23;
        v28 = v21;
        v29 = v22;
        v30 = sub_2A8A4();
        v22 = v29;
        v21 = v28;
        v23 = v27;
        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      return ((v12 | ((v23 | ((v22 | (v21 << 16)) << 32)) << 8)) == v18 && v24 == v25 || (sub_2A8A4() & 1) != 0) && ((v13 ^ v20) & 1) == 0;
    }

    return 0;
  }

  if (v20 < 0)
  {
    return 0;
  }

  if (a1[4])
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v16)
  {
    return 0;
  }

LABEL_28:
  if ((v7 != v14 || v8 != v15) && (sub_2A8A4() & 1) == 0)
  {
    return 0;
  }

  if (v10 == v17 && v11 == v19)
  {
    if ((v12 & 1) != (v18 & 1))
    {
      return 0;
    }
  }

  else if (sub_2A8A4() & 1) == 0 || ((v12 ^ v18))
  {
    return 0;
  }

  return 1;
}

BOOL sub_84CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *a2;
  v12 = a2[1];
  if (v10 < 0)
  {
    v16 = *(a2 + 56);
    if (v16 < 0)
    {
      v17 = *(a1 + 47);
      v18 = *(a1 + 45);
      v19 = *(a1 + 41);
      v20 = a1[6];
      v21 = a2[3];
      v22 = a2[4];
      v23 = a2[5];
      v24 = a2[6];
      v25 = *(a2 + 4);
      if (v6)
      {
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }

      if (v4 != v11 || v5 != v12)
      {
        v35 = v19;
        v36 = v20;
        v34 = v17;
        v26 = sub_2A8A4();
        v17 = v34;
        v19 = v35;
        v20 = v36;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      if (v7 != v21 || v8 != v22)
      {
        v27 = v20;
        v28 = v19;
        v29 = v17;
        v30 = sub_2A8A4();
        v17 = v29;
        v19 = v28;
        v20 = v27;
        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v9 | ((v19 | ((v18 | (v17 << 16)) << 32)) << 8)) != v23 || v20 != v24)
      {
        v32 = sub_2A8A4();
        return ((v10 ^ v16) & 1) == 0 && (v32 & 1) != 0;
      }

      if (((v10 ^ v16) & 1) == 0)
      {
        return 1;
      }
    }
  }

  else if ((a2[7] & 0x80000000) == 0)
  {
    v13 = a2[3];
    v14 = a2[4];
    v15 = *(a2 + 40);
    if (a1[2])
    {
      if ((a2[2] & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if ((a2[2] & 1) == 0)
    {
LABEL_11:
      if ((v4 != v11 || v5 != v12) && (sub_2A8A4() & 1) == 0)
      {
        return 0;
      }

      if (v7 == v13 && v8 == v14)
      {
        if ((v9 & 1) != (v15 & 1))
        {
          return 0;
        }
      }

      else if (sub_2A8A4() & 1) == 0 || ((v9 ^ v15))
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL sub_86B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (*(a1 + 72) < 0)
  {
    if (v2 < 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
LABEL_3:
    sub_8228();
    return sub_2A6D4() == -1;
  }

  return 0;
}

__n128 sub_8730(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_874C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_879C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8814(uint64_t result, char a2)
{
  v2 = *(result + 56) & 1 | (a2 << 7);
  *(result + 16) &= 1uLL;
  *(result + 56) = v2;
  return result;
}

unint64_t sub_8848()
{
  result = qword_38E58;
  if (!qword_38E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E58);
  }

  return result;
}

uint64_t sub_889C(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0x41746C7561666564;
  }

  if (a2 == &dword_0 + 1)
  {
    return 0x7370696C43707061;
  }

  if (a2 == &dword_0 + 2)
  {
    return 0x6E6564646968;
  }

  sub_2A814(18);

  strcpy(v9, "applications.");
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  sub_2A424(v10);
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_2A424(v11);
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  sub_2A424(v12);
  return v9[0];
}

Swift::Int sub_89B8()
{
  v1 = *(v0 + 8);
  sub_2A8F4();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        sub_2A904(1uLL);
        sub_2A414();
        sub_2A414();
        return sub_2A914();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  sub_2A904(v2);
  return sub_2A914();
}

void sub_8A64(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      goto LABEL_7;
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      sub_2A904(v3);
      return;
  }

  sub_2A904(1uLL);
  sub_2A414();

  sub_2A414();
}

Swift::Int sub_8B1C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2A8F4();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        sub_2A904(1uLL);
        sub_2A414();
        sub_2A414();
        return sub_2A914();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  sub_2A904(v3);
  return sub_2A914();
}

uint64_t sub_8BD0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  if (*a1 == *a2 && v3 == v4 || (v10 = sub_2A8A4(), result = 0, (v10 & 1) != 0))
  {
    if (v6 == v8 && v7 == v9)
    {
      return 1;
    }

    return sub_2A8A4();
  }

  return result;
}

uint64_t sub_8CC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_8CDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_8CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_8D98(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_8DCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_8DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8E80(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[4];
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v6 >= 3)
    {
      if (v9 = a1[2], v10 = a1[3], v11 = a2[2], v12 = a2[3], *a1 == *a2) && v4 == v6 || (v13 = v5, v14 = v7, v15 = sub_2A8A4(), v7 = v14, v16 = v15, v5 = v13, (v16))
      {
        if (v9 == v11 && v10 == v12)
        {
          goto LABEL_18;
        }

        v17 = v5;
        v18 = v7;
        v19 = sub_2A8A4();
        v7 = v18;
        v20 = v19;
        v5 = v17;
        if (v20)
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_18:

  return sub_9080(v5, v7);
}

void sub_8FB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_9380(v2, v3, v4, v5);
}

unint64_t sub_8FC4()
{
  v2._countAndFlagsBits = sub_889C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  sub_2A424(v2);

  return 0xD00000000000001DLL;
}

unint64_t sub_902C()
{
  result = qword_38E60;
  if (!qword_38E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E60);
  }

  return result;
}

uint64_t sub_9080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      v10 = v4[2];
      v9 = v4[3];
      v53 = *(v4 + 32);
      v11 = *(v4 + 39);
      v12 = *(v4 + 37);
      v13 = *(v4 + 33);
      v14 = v4[5];
      v15 = *(v4 + 48);
      v16 = *(v3 - 2);
      v17 = *(v3 - 1);
      v18 = *v3;
      v19 = *(v3 + 8);
      v21 = v3[2];
      v20 = v3[3];
      v54 = v3[4];
      v22 = v3[5];
      v23 = *(v3 + 48);
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v16 != 2)
          {
            return 0;
          }

          goto LABEL_25;
        }

        if (v5 == 3)
        {
          if (v16 != 3)
          {
            return 0;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (!v5)
        {
          if (v16)
          {
            return 0;
          }

          goto LABEL_25;
        }

        if (v5 == 1)
        {
          if (v16 != 1)
          {
            return 0;
          }

          goto LABEL_25;
        }
      }

      if (v16 < 4)
      {
        return 0;
      }

      if (*(v4 - 3) != *(v3 - 3) || v5 != v16)
      {
        v43 = *v4;
        v44 = *(v4 - 1);
        v41 = *v3;
        v42 = *(v3 - 1);
        v49 = v3[5];
        v51 = v4[3];
        v39 = *(v4 + 33);
        v40 = v4[5];
        v45 = *(v4 + 37);
        v47 = *(v4 + 39);
        v24 = sub_2A8A4();
        v12 = v45;
        v11 = v47;
        v13 = v39;
        v14 = v40;
        v22 = v49;
        v9 = v51;
        v18 = v41;
        v17 = v42;
        v25 = v24;
        v7 = v43;
        v6 = v44;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_25:
      if (v15 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          return 0;
        }

        if (v8)
        {
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v19)
        {
          return 0;
        }

        if (v6 != v17 || v7 != v18)
        {
          v50 = v22;
          v52 = v9;
          v30 = v14;
          v31 = v13;
          v46 = v12;
          v48 = v11;
          v32 = sub_2A8A4();
          v12 = v46;
          v11 = v48;
          v13 = v31;
          v22 = v50;
          v9 = v52;
          v14 = v30;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }

        if (v10 != v21 || v9 != v20)
        {
          v33 = v14;
          v34 = v22;
          v35 = v13;
          v36 = v11;
          v37 = v12;
          v38 = sub_2A8A4();
          v12 = v37;
          v11 = v36;
          v13 = v35;
          v22 = v34;
          v14 = v33;
          if ((v38 & 1) == 0)
          {
            return 0;
          }
        }

        if ((v53 | ((v13 | ((v12 | (v11 << 16)) << 32)) << 8)) != v54 || v14 != v22) && (sub_2A8A4() & 1) == 0 || ((v15 ^ v23))
        {
          return 0;
        }
      }

      else
      {
        if (v23 < 0)
        {
          return 0;
        }

        if (v8)
        {
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v19)
        {
          return 0;
        }

        if (v6 != v17 || v7 != v18)
        {
          v26 = v9;
          v27 = sub_2A8A4();
          v9 = v26;
          if ((v27 & 1) == 0)
          {
            return 0;
          }
        }

        if (v10 == v21 && v9 == v20)
        {
          if ((v53 & 1) != (v54 & 1))
          {
            return 0;
          }
        }

        else
        {
          v28 = sub_2A8A4();
          result = 0;
          if (v28 & 1) == 0 || ((v53 ^ v54))
          {
            return result;
          }
        }
      }

      v3 += 10;
      v4 += 10;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_9380(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 3)
  {
  }
}

uint64_t sub_93C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    do
    {
      v5 = *(v3 - 3);
      v6 = *v3;
      v7 = *(v4 - 3);
      v8 = *v4;
      if (v5)
      {
        if (v5 == 1)
        {
          if (v7 != 1)
          {
            return 0;
          }
        }

        else if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v7 < 3)
          {
            return 0;
          }

          v9 = *(v3 - 2);
          v10 = *(v3 - 1);
          v11 = *(v4 - 2);
          v12 = *(v4 - 1);
          if (*(v3 - 4) != *(v4 - 4) || v5 != v7)
          {
            v13 = *v3;
            v14 = *v4;
            v15 = sub_2A8A4();
            v8 = v14;
            v16 = v15;
            v6 = v13;
            if ((v16 & 1) == 0)
            {
              return 0;
            }
          }

          if (v9 != v11 || v10 != v12)
          {
            v17 = v6;
            v18 = v8;
            v19 = sub_2A8A4();
            v8 = v18;
            v20 = v19;
            v6 = v17;
            if ((v20 & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      else if (v7)
      {
        return 0;
      }

      if ((sub_9080(v6, v8) & 1) == 0)
      {
        return 0;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

id sub_9528()
{
  type metadata accessor for AppsSettingsListViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_3AD50 = result;
  return result;
}

uint64_t sub_9580()
{
  v0 = sub_29C14();
  sub_9608(v0, qword_3AD58);
  sub_966C(v0, qword_3AD58);

  return sub_29C04();
}

uint64_t *sub_9608(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_966C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_96A4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_2A3E4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_29A44();

    swift_willThrow();
  }

  return v6;
}

id sub_9780(uint64_t a1, uint64_t a2)
{
  v3 = sub_2A3E4();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_29A44();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_984C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_96A4(a1, a2, 1);
  if (v5 || (v6 = objc_allocWithZone(LSApplicationRecord), , (v5 = sub_9780(a1, a2)) != 0))
  {
    v7 = v5;
    v8 = [v5 localizedName];
    a1 = sub_2A3F4();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_994C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9A10@<X0>(uint64_t a2@<X8>)
{
  sub_8228();

  result = sub_2A0C4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_9A7C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v27 = sub_2B4C(&qword_38E98, &qword_2C0F8);
  __chkstk_darwin(v27);
  v28 = &v25 - v2;
  v3 = sub_29EC4();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B4C(&qword_38E90, &qword_2C0F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = *(v1 + 32);
  v14 = objc_allocWithZone(ISIcon);
  v15 = sub_2A3E4();
  if (v13)
  {
    [v14 initWithType:v15];

    v16 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v17 = *v1;
    v31 = *v1;
    v32 = *(v1 + 8);
    if (v32 == 1)
    {
      v18 = v17;
    }

    else
    {

      sub_2A574();
      v22 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v31);
      (*(v25 + 8))(v5, v26);
      v18 = v30;
    }

    [v16 setScale:v18];
    [v16 setDrawBorder:1];
    sub_29BC4();
    v12 = v10;
  }

  else
  {
    [v14 initWithBundleIdentifier:v15];

    v19 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v20 = *v1;
    v31 = *v1;
    v32 = *(v1 + 8);
    if (v32 == 1)
    {
      v21 = v20;
    }

    else
    {

      sub_2A574();
      v23 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v31);
      (*(v25 + 8))(v5, v26);
      v21 = v30;
    }

    [v19 setScale:v21];
    [v19 setDrawBorder:1];
    sub_29BC4();
  }

  (*(v7 + 16))(v28, v12, v6);
  swift_storeEnumTagMultiPayload();
  sub_55DC(&qword_38E88, &qword_38E90, &qword_2C0F0, &protocol conformance descriptor for AsyncIconImage<A>);
  sub_29F44();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_9F60()
{
  sub_2B4C(&qword_38E78, &qword_2C0E8);
  sub_A044();
  return sub_2A204();
}

unint64_t sub_A044()
{
  result = qword_38E80;
  if (!qword_38E80)
  {
    sub_504C(&qword_38E78, &qword_2C0E8);
    sub_55DC(&qword_38E88, &qword_38E90, &qword_2C0F0, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E80);
  }

  return result;
}

uint64_t sub_A0F4(uint64_t a1)
{
  v2 = sub_2B4C(&qword_38EA0, &qword_2C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A1A4()
{
  result = qword_38EB8;
  if (!qword_38EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38EB8);
  }

  return result;
}

uint64_t sub_A1F8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  if ((a1[2] & 1) == 0)
  {
    if (a2[2])
    {
      return 0;
    }

    if (v4 == v9 && v5 == v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  if (v4 != v9 || v5 != v10)
  {
LABEL_9:
    if ((sub_2A8A4() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_10:
  if (v6 == v11 && v7 == v12 || (sub_2A8A4() & 1) != 0)
  {
    return v8 ^ v13 ^ 1u;
  }

  return 0;
}

__n128 sub_A474(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_A488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A52C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A5F4@<X0>(uint64_t a2@<X8>)
{
  sub_8228();

  v3 = sub_2A0C4();
  v21 = v4;
  v22 = v3;
  v20 = v5;
  v23 = v6;

  v7 = sub_2A0C4();
  v9 = v8;
  v11 = v10;
  sub_2A074();
  v12 = sub_2A0A4();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_50E8(v7, v9, v11 & 1);

  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  sub_ADA4(v22, v21, v20 & 1);

  sub_ADA4(v12, v14, v16 & 1);

  sub_50E8(v12, v14, v16 & 1);

  sub_50E8(v22, v21, v20 & 1);
}

uint64_t sub_A788@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v27 = sub_2B4C(&qword_38E98, &qword_2C0F8);
  __chkstk_darwin(v27);
  v28 = &v25 - v2;
  v3 = sub_29EC4();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B4C(&qword_38E90, &qword_2C0F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = *(v1 + 32);
  v14 = objc_allocWithZone(ISIcon);
  v15 = sub_2A3E4();
  if (v13)
  {
    [v14 initWithType:v15];

    v16 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v17 = *v1;
    v31 = *v1;
    v32 = *(v1 + 8);
    if (v32 == 1)
    {
      v18 = v17;
    }

    else
    {

      sub_2A574();
      v22 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v31);
      (*(v25 + 8))(v5, v26);
      v18 = v30;
    }

    [v16 setScale:v18];
    [v16 setDrawBorder:1];
    sub_29BC4();
    v12 = v10;
  }

  else
  {
    [v14 initWithBundleIdentifier:v15];

    v19 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v20 = *v1;
    v31 = *v1;
    v32 = *(v1 + 8);
    if (v32 == 1)
    {
      v21 = v20;
    }

    else
    {

      sub_2A574();
      v23 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v31);
      (*(v25 + 8))(v5, v26);
      v21 = v30;
    }

    [v19 setScale:v21];
    [v19 setDrawBorder:1];
    sub_29BC4();
  }

  (*(v7 + 16))(v28, v12, v6);
  swift_storeEnumTagMultiPayload();
  sub_55DC(&qword_38E88, &qword_38E90, &qword_2C0F0, &protocol conformance descriptor for AsyncIconImage<A>);
  sub_29F44();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_AC6C()
{
  sub_2B4C(&qword_38EC0, &qword_2C360);
  sub_2B4C(&qword_38E78, &qword_2C0E8);
  sub_55DC(&qword_38EC8, &qword_38EC0, &qword_2C360, &protocol conformance descriptor for TupleView<A>);
  sub_A044();
  return sub_2A204();
}

uint64_t sub_ADA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_ADF8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 56);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = *(a2 + 56);
  if ((a1[2] & 1) == 0)
  {
    if (a2[2])
    {
      return 0;
    }

    if (v4 == v11 && v5 == v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  if (v4 != v11 || v5 != v12)
  {
LABEL_9:
    if ((sub_2A8A4() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_10:
  if (v6 == v13 && v7 == v14 || (sub_2A8A4()) && (v8 == v15 && v9 == v16 || (sub_2A8A4()))
  {
    return v10 ^ v17 ^ 1u;
  }

  return 0;
}

uint64_t sub_AF0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AF54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AppsSettingsListContentMessageView.init(with:)@<X0>(uint64_t a1@<X8>)
{
  sub_29F24();
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v2 = qword_3AD50;
  result = sub_2A0B4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0xD00000000000001DLL;
  *(a1 + 40) = 0x800000000002DB40;
  return result;
}

Swift::Int ContentMessageType.hashValue.getter()
{
  sub_2A8F4();
  sub_2A904(0);
  return sub_2A914();
}

Swift::Int sub_B12C(uint64_t a1)
{
  sub_2A8F4();
  sub_2A904(0);
  return sub_2A914();
}

__n128 AppsSettingsListContentMessageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_2B4C(&qword_38EE0, "T.");
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v12 = v1;
  sub_2B4C(&qword_38EE8, &qword_2C458);
  sub_55DC(&qword_38EF0, &qword_38EE8, &qword_2C458, &protocol conformance descriptor for Label<A, B>);
  sub_29F94();
  sub_2A2A4();
  sub_29DB4();
  (*(v4 + 32))(a1, v6, v3);
  v7 = a1 + *(sub_2B4C(&qword_38EF8, &qword_2C460) + 36);
  v8 = v18;
  *(v7 + 64) = v17;
  *(v7 + 80) = v8;
  *(v7 + 96) = v19;
  v9 = v14;
  *v7 = v13;
  *(v7 + 16) = v9;
  result = v16;
  *(v7 + 32) = v15;
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_B394(uint64_t a1)
{
  sub_2B4C(&qword_38F18, "l-");
  sub_B8C4();
  return sub_2A204();
}

uint64_t sub_B438@<X0>(uint64_t a2@<X8>)
{
  sub_2A064();
  v3 = sub_2A0A4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_B4C0@<X0>(uint64_t *a2@<X8>)
{

  v3 = sub_2A1E4();
  v4 = a2 + *(sub_2B4C(&qword_38F18, "l-") + 36);
  v5 = *(sub_2B4C(&qword_38F30, &qword_2C600) + 28);
  v6 = enum case for Image.Scale.large(_:);
  v7 = sub_2A1F4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  result = swift_getKeyPath();
  *v4 = result;
  *a2 = v3;
  return result;
}

unint64_t sub_B5A0()
{
  result = qword_38F00;
  if (!qword_38F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentMessageType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContentMessageType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_B740(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_B754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_B79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_B7FC()
{
  result = qword_38F08;
  if (!qword_38F08)
  {
    sub_504C(&qword_38EF8, &qword_2C460);
    sub_55DC(&qword_38F10, &qword_38EE0, "T.", &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F08);
  }

  return result;
}

unint64_t sub_B8C4()
{
  result = qword_38F20;
  if (!qword_38F20)
  {
    sub_504C(&qword_38F18, "l-");
    sub_55DC(&qword_38F28, &qword_38F30, &qword_2C600, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F20);
  }

  return result;
}

uint64_t sub_B9A0(uint64_t a1)
{
  v2 = sub_2A1F4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29DD4();
}

__n128 sub_BA6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_BA80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_BAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_BB28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2A8A4();
  }
}

__n128 sub_BB88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_BBAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_BBFC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 2 * -a2;
      result = 0.0;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BC98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v40 = sub_2A004();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2B4C(&qword_38A38, "\n9");
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_2B4C(&qword_38F38, &qword_2C920);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_2B4C(&qword_38F40, &qword_2C928);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v34 = sub_2B4C(&qword_38F48, &qword_2C930);
  __chkstk_darwin(v34);
  v15 = &v33 - v14;
  v41 = sub_2B4C(&qword_38F50, &qword_2C938);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v33 - v16;
  *v6 = sub_29F34();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v18 = sub_2B4C(&qword_38F58, &unk_2C940);
  sub_C1F8(v2, &v6[*(v18 + 44)]);
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = *(v2 + 72);
  v22 = *(v2 + 88);
  sub_DA18(v6, v9, &qword_38A38, "\n9");
  v23 = &v9[*(sub_2B4C(&qword_38A40, "Z9") + 36)];
  *v23 = v19;
  *(v23 + 1) = v20;
  v23[16] = 1;
  if (v22 < 0)
  {
    v21 = v22;
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v21 & 1;
  (*(v35 + 32))(v13, v9, v36);
  v26 = *(v11 + 44);
  v27 = v34;
  v28 = &v13[v26];
  *v28 = KeyPath;
  v28[1] = sub_DA00;
  v28[2] = v25;
  sub_DA18(v13, v15, &qword_38F40, &qword_2C928);
  v15[*(v27 + 36)] = v20 != 3;
  sub_2B94(v19, v20);
  v29 = v37;
  sub_29FF4();
  v30 = sub_DA80();
  sub_2A184();
  (*(v38 + 8))(v29, v40);
  sub_E02C(v15, &qword_38F48, &qword_2C930);
  sub_2B94(v19, v20);
  v43 = v27;
  v44 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_2A1A4();

  return (*(v39 + 8))(v17, v31);
}

uint64_t sub_C1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v93 = sub_2B4C(&qword_38F98, &qword_2C990);
  v82 = *(v93 - 8);
  __chkstk_darwin(v93);
  v81 = &v76 - v3;
  v91 = sub_2B4C(&qword_38FA0, &qword_2C998);
  v80 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v76 - v4;
  v95 = sub_2B4C(&qword_38FA8, &qword_2C9A0);
  v84 = *(v95 - 8);
  __chkstk_darwin(v95);
  v83 = &v76 - v5;
  v87 = sub_2B4C(&qword_38FB0, &qword_2C9A8);
  __chkstk_darwin(v87);
  v90 = &v76 - v6;
  v102 = sub_2B4C(&qword_38FB8, &qword_2C9B0);
  __chkstk_darwin(v102);
  v94 = &v76 - v7;
  v98 = sub_2B4C(&qword_38FC0, &qword_2C9B8);
  __chkstk_darwin(v98);
  v101 = &v76 - v8;
  v88 = sub_2B4C(&qword_38FC8, &qword_2C9C0);
  __chkstk_darwin(v88);
  v89 = &v76 - v9;
  v100 = sub_2B4C(&qword_38FD0, &qword_2C9C8);
  __chkstk_darwin(v100);
  v92 = &v76 - v10;
  v99 = sub_2B4C(&qword_38FD8, &qword_2C9D0);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v76 - v11;
  v12 = sub_2B4C(&qword_38FE0, &qword_2C9D8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v76 - v16;
  v86 = sub_2A324();
  v85 = *(v86 - 8);
  v18 = __chkstk_darwin(v86);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v76 - v21;
  v23 = sub_29B74();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppsSettingsDestinationOption(0);
  __chkstk_darwin(v27);
  v29 = (&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_30EC(*(a1 + 56), *(a1 + 64), *(a1 + 16), *(a1 + 24), v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v35 = v29[1];
      v107 = *v29;
      v108 = v35;
      __chkstk_darwin(EnumCaseMultiPayload);
      *(&v76 - 2) = a1;
      sub_2B4C(&qword_38FE8, &qword_2C9E0);
      sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
      sub_E08C();
      v36 = v96;
      sub_29D34();
      v37 = v97;
      v38 = v99;
      (*(v97 + 16))(v90, v36, v99);
      swift_storeEnumTagMultiPayload();
      sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0, &protocol conformance descriptor for NavigationLink<A, B>);
      v39 = sub_55DC(&qword_38FF8, &qword_38FA0, &qword_2C998, &protocol conformance descriptor for Button<A>);
      v40 = sub_55DC(&qword_39000, &qword_38F98, &qword_2C990, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
      v107 = v91;
      v108 = v93;
      v109 = v39;
      v110 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = v94;
      sub_29F44();
      sub_DD84(v41, v101);
      swift_storeEnumTagMultiPayload();
      sub_DDF4();
      sub_DEA4();
      sub_29F44();
      sub_E02C(v41, &qword_38FB8, &qword_2C9B0);
      return (*(v37 + 8))(v36, v38);
    }

    else
    {
      v50 = swift_allocObject();
      v51 = *(a1 + 48);
      v50[3] = *(a1 + 32);
      v50[4] = v51;
      v50[5] = *(a1 + 64);
      *(v50 + 89) = *(a1 + 73);
      v52 = *(a1 + 16);
      v50[1] = *a1;
      v50[2] = v52;
      __chkstk_darwin(v50);
      *(&v76 - 2) = a1;
      sub_DD4C(a1, &v107);
      sub_2B4C(&qword_38FE8, &qword_2C9E0);
      sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
      v53 = v79;
      sub_2A244();
      v54 = v81;
      sub_29F54();
      v55 = sub_55DC(&qword_38FF8, &qword_38FA0, &qword_2C998, &protocol conformance descriptor for Button<A>);
      v56 = sub_55DC(&qword_39000, &qword_38F98, &qword_2C990, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
      v57 = v83;
      v58 = v91;
      v59 = v93;
      sub_2A124();
      (*(v82 + 8))(v54, v59);
      (*(v80 + 8))(v53, v58);
      v60 = v84;
      v61 = v95;
      (*(v84 + 16))(v90, v57, v95);
      swift_storeEnumTagMultiPayload();
      sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0, &protocol conformance descriptor for NavigationLink<A, B>);
      v107 = v58;
      v108 = v59;
      v109 = v55;
      v110 = v56;
      swift_getOpaqueTypeConformance2();
      v62 = v94;
      sub_29F44();
      sub_DD84(v62, v101);
      swift_storeEnumTagMultiPayload();
      sub_DDF4();
      sub_DEA4();
      sub_29F44();
      sub_E02C(v62, &qword_38FB8, &qword_2C9B0);
      return (*(v60 + 8))(v57, v61);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v43 = v85;
    v44 = v86;
    (*(v85 + 32))(v20, v29, v86);
    (*(v43 + 16))(v15, v20, v44);
    v45 = (*(v43 + 56))(v15, 0, 1, v44);
    __chkstk_darwin(v45);
    *(&v76 - 2) = a1;
    sub_2B4C(&qword_38FE8, &qword_2C9E0);
    sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
    sub_E564(&qword_38B88, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
    v46 = v96;
    sub_29D34();
    v47 = v97;
    v48 = v99;
    (*(v97 + 16))(v89, v46, v99);
    swift_storeEnumTagMultiPayload();
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0, &protocol conformance descriptor for NavigationLink<A, B>);
    v49 = v92;
    sub_29F44();
    sub_E25C(v49, v101, &qword_38FD0, &qword_2C9C8);
    swift_storeEnumTagMultiPayload();
    sub_DDF4();
    sub_DEA4();
    sub_29F44();
    sub_E02C(v49, &qword_38FD0, &qword_2C9C8);
    (*(v47 + 8))(v46, v48);
    return (*(v43 + 8))(v20, v44);
  }

  else
  {
    (*(v24 + 32))(v26, v29, v23);
    sub_29B34();
    v31 = v85;
    v32 = v86;
    v33 = (*(v85 + 48))(v17, 1, v86);
    v78 = v23;
    v77 = v24;
    if (v33 == 1)
    {
      sub_E02C(v17, &qword_38FE0, &qword_2C9D8);
      v105 = v23;
      v106 = sub_E564(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      v34 = sub_E0FC(&v104);
      (*(v24 + 16))(v34, v26, v23);
    }

    else
    {
      v63 = *(v31 + 32);
      v63(v22, v17, v32);
      v105 = v32;
      v106 = sub_E564(&qword_38B88, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
      v64 = sub_E0FC(&v104);
      v63(v64, v22, v32);
    }

    sub_E160(&v104, &v107);
    v65 = v110;
    v95 = v111;
    v66 = sub_E178(&v107, v110);
    v67 = sub_2A694();
    __chkstk_darwin(v67 - 8);
    v69 = &v76 - v68;
    v70 = *(v65 - 8);
    (*(v70 + 16))(&v76 - v68, v66, v65);
    v71 = (*(v70 + 56))(v69, 0, 1, v65);
    __chkstk_darwin(v71);
    *(&v76 - 2) = a1;
    sub_2B4C(&qword_38FE8, &qword_2C9E0);
    sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
    v72 = v96;
    sub_29D34();
    v73 = v97;
    v74 = v99;
    (*(v97 + 16))(v89, v72, v99);
    swift_storeEnumTagMultiPayload();
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0, &protocol conformance descriptor for NavigationLink<A, B>);
    v75 = v92;
    sub_29F44();
    sub_E25C(v75, v101, &qword_38FD0, &qword_2C9C8);
    swift_storeEnumTagMultiPayload();
    sub_DDF4();
    sub_DEA4();
    sub_29F44();
    sub_E02C(v75, &qword_38FD0, &qword_2C9C8);
    (*(v73 + 8))(v72, v74);
    (*(v77 + 8))(v26, v78);
    return sub_E1BC(&v107);
  }
}

__n128 sub_D508@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  if (v9 < 0)
  {
    v11 = *(a1 + 49);
    v10 = a1 + 49;
    v12 = *(v10 + 4) | (*(v10 + 6) << 16);
    v16 = *(v10 + 31);
    v13 = v9 & 0x7F;
    swift_getKeyPath();
    v17[0] = v4;
    v17[1] = v3;
    v18 = v5;
    v21 = BYTE2(v12);
    v20 = v12;
    v19 = v11;
    v22 = v7;
    v23 = v6;
    v24 = v8;
    v25 = v16;
    v26 = v13;
    sub_E25C(v17, v27, &qword_39028, &unk_2CA18);
    sub_E2C4();
    sub_E318();
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    swift_getKeyPath();
    sub_E36C(v4, v3);
    sub_E2C4();
    sub_E318();
  }

  sub_29F44();
  v14 = v28[0];
  *(a2 + 32) = v27[2];
  *(a2 + 48) = v14;
  *(a2 + 58) = *(v28 + 10);
  result = v27[1];
  *a2 = v27[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_D704(uint64_t a1)
{
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = sub_29EC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  v9 = *a1;
  v16 = v9;
  if (v17 == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_2A574();
    v11 = sub_2A014();
    sub_29BE4();

    sub_29EB4();
    swift_getAtKeyPath();
    sub_E02C(&v16, &qword_39040, &qword_2CA28);
    (*(v6 + 8))(v8, v5);
    v10 = v15[1];
  }

  v12 = sub_2A4C4();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  sub_1EEAC(0, 0, v4, &unk_2CA30, v13);
}

uint64_t sub_D998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_DA18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B4C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_DA80()
{
  result = qword_38F60;
  if (!qword_38F60)
  {
    sub_504C(&qword_38F48, &qword_2C930);
    sub_DB38();
    sub_55DC(&qword_38F88, &qword_38F90, &qword_2C988, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F60);
  }

  return result;
}

unint64_t sub_DB38()
{
  result = qword_38F68;
  if (!qword_38F68)
  {
    sub_504C(&qword_38F40, &qword_2C928);
    sub_504C(&qword_38A38, "\n9");
    sub_55DC(&qword_38F70, &qword_38A38, "\n9", &protocol conformance descriptor for VStack<A>);
    sub_7ABC();
    swift_getOpaqueTypeConformance2();
    sub_55DC(&qword_38F78, &qword_38F80, &qword_2C980, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F68);
  }

  return result;
}

uint64_t sub_DC74()
{
  sub_DCD8(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 40) >= 4uLL)
  {
  }

  sub_DCE4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 105, 7);
}

void sub_DCD8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_DCE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 < 0)
  {
    sub_DD3C(a1, a2);
  }

  else
  {
    sub_DD3C(a1, a2);
  }
}

uint64_t sub_DD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_38FB8, &qword_2C9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DDF4()
{
  result = qword_39010;
  if (!qword_39010)
  {
    sub_504C(&qword_38FD0, &qword_2C9C8);
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39010);
  }

  return result;
}

unint64_t sub_DEA4()
{
  result = qword_39018;
  if (!qword_39018)
  {
    sub_504C(&qword_38FB8, &qword_2C9B0);
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_504C(&qword_38FA0, &qword_2C998);
    sub_504C(&qword_38F98, &qword_2C990);
    sub_55DC(&qword_38FF8, &qword_38FA0, &qword_2C998, &protocol conformance descriptor for Button<A>);
    sub_55DC(&qword_39000, &qword_38F98, &qword_2C990, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39018);
  }

  return result;
}

uint64_t sub_E02C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2B4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_E08C()
{
  result = qword_39020;
  if (!qword_39020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39020);
  }

  return result;
}

uint64_t *sub_E0FC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_E160(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_E178(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_E1BC(void *a1)
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

uint64_t sub_E25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_E2C4()
{
  result = qword_39030;
  if (!qword_39030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39030);
  }

  return result;
}

unint64_t sub_E318()
{
  result = qword_39038;
  if (!qword_39038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39038);
  }

  return result;
}

uint64_t sub_E374()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6BD8;

  return sub_1F460(a1, v4, v5, v6);
}

unint64_t sub_E46C()
{
  result = qword_39048;
  if (!qword_39048)
  {
    sub_504C(&qword_39050, &qword_2CA38);
    sub_504C(&qword_38F48, &qword_2C930);
    sub_DA80();
    swift_getOpaqueTypeConformance2();
    sub_E564(&qword_39058, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39048);
  }

  return result;
}

uint64_t sub_E564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E5DC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_2B4C(&qword_39060, &qword_2CAF8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v38 - v3);
  v5 = sub_29F14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_2B4C(&qword_39068, &qword_2CB00);
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v46 = &v38 - v13;
  v40 = sub_2B4C(&qword_39070, &qword_2CB08);
  __chkstk_darwin(v40);
  v47 = &v38 - v14;
  v15 = 0;
  v48 = v1;
  v16 = v1[1];
  v39 = v1[2];
  v17 = v1[4];
  v43 = v1[3];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    if (v16 >= 3)
    {
      v15 = *v1;

      v20 = _swiftEmptyArrayStorage;
      v19 = v16;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v49 = v15;
  v50 = v19;
  v51 = 0;
  v52 = v20;
  sub_2B4C(&qword_39078, &unk_2CB10);
  sub_2B4C(&qword_38CE0, &qword_2B650);
  sub_ED48();
  sub_4FC8();
  sub_2A274();
  v44 = v4;
  if (v16 < 3 || (, , v18))
  {
    sub_29F04();
  }

  else
  {
    sub_29EF4();
  }

  v21 = *(v6 + 32);
  v21(v11, v9, v5);
  v22 = *(sub_2B4C(&qword_39088, &qword_2CB20) + 36);
  v23 = v47;
  (*(v6 + 16))(v47 + v22, v11, v5);
  v24 = *(v6 + 56);
  v24(v23 + v22, 0, 1, v5);
  (*(v41 + 32))(v23, v46, v42);
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(v40 + 36));
  v27 = *(sub_2B4C(&qword_39090, &qword_2CB58) + 28);
  v21(v26 + v27, v11, v5);
  v24(v26 + v27, 0, 1, v5);
  *v26 = KeyPath;
  if (v16 >= 3)
  {

    v30 = v39;
    v31 = v43;
    sub_ADA4(v39, v43, 0);

    sub_EE7C(v30, v31, 0, _swiftEmptyArrayStorage);
    v29 = v44;
    *v44 = v30;
    *(v29 + 8) = v31;
    *(v29 + 16) = 0;
    *(v29 + 24) = _swiftEmptyArrayStorage;
    v32 = enum case for SectionIndexLabel.text(_:);
    v33 = sub_29EE4();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v29, v32, v33);
    (*(v34 + 56))(v29, 0, 1, v33);
  }

  else
  {
    v28 = sub_29EE4();
    v29 = v44;
    (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
  }

  v35 = sub_2B4C(&qword_39098, &qword_2CB60);
  v36 = v45;
  sub_DA18(v29, v45 + *(v35 + 36), &qword_39060, &qword_2CAF8);
  return sub_DA18(v47, v36, &qword_39070, &qword_2CB08);
}

uint64_t sub_EB60(uint64_t a1)
{

  sub_2B4C(&qword_395C0, &qword_2CB70);
  sub_55DC(&qword_38D30, &qword_395C0, &qword_2CB70, &protocol conformance descriptor for [A]);
  sub_5094();
  sub_5624();
  return sub_2A264();
}

__n128 sub_EC38@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13[0] = v3;
  *(v13 + 9) = *(a1 + 57);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  type metadata accessor for AppsSettingsListViewModel(0);
  sub_5678(&v10, v14);
  sub_EF30();
  v5 = sub_29CD4();
  *&v14[7] = v10;
  *&v14[23] = v11;
  *&v14[39] = v12;
  *&v14[55] = v13[0];
  *&v14[64] = *(v13 + 9);
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  v7 = *&v14[16];
  *(a2 + 9) = *v14;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 73) = *&v14[64];
  *(a2 + 57) = v9;
  *(a2 + 41) = result;
  *(a2 + 25) = v7;
  return result;
}

unint64_t sub_ED48()
{
  result = qword_39080;
  if (!qword_39080)
  {
    sub_504C(&qword_39078, &unk_2CB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39080);
  }

  return result;
}

uint64_t sub_EDE8(uint64_t a1)
{
  v2 = sub_2B4C(&qword_390A0, &qword_2CB68);
  __chkstk_darwin(v2 - 8);
  sub_EEC0(a1, &v5 - v3);
  return sub_29E34();
}

uint64_t sub_EE7C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_50E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_390A0, &qword_2CB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_EF30()
{
  result = qword_395B0;
  if (!qword_395B0)
  {
    type metadata accessor for AppsSettingsListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395B0);
  }

  return result;
}

unint64_t sub_EF8C()
{
  result = qword_390A8;
  if (!qword_390A8)
  {
    sub_504C(&qword_39098, &qword_2CB60);
    sub_F044();
    sub_55DC(&qword_390E0, &qword_390E8, &unk_2CB80, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390A8);
  }

  return result;
}

unint64_t sub_F044()
{
  result = qword_390B0;
  if (!qword_390B0)
  {
    sub_504C(&qword_39070, &qword_2CB08);
    sub_F0FC();
    sub_55DC(&qword_390D8, &qword_39090, &qword_2CB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390B0);
  }

  return result;
}

unint64_t sub_F0FC()
{
  result = qword_390B8;
  if (!qword_390B8)
  {
    sub_504C(&qword_39088, &qword_2CB20);
    sub_F1B4();
    sub_55DC(&qword_390C8, &qword_390D0, &qword_2CB78, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390B8);
  }

  return result;
}

unint64_t sub_F1B4()
{
  result = qword_390C0;
  if (!qword_390C0)
  {
    sub_504C(&qword_39068, &qword_2CB00);
    sub_ED48();
    sub_4FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390C0);
  }

  return result;
}

uint64_t sub_F260(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2B4C(&qword_390F0, &qword_2CBB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2B4C(&qword_390F8, &qword_2CBB8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2B4C(&qword_39100, &unk_2CBC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_F3EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2B4C(&qword_390F0, &qword_2CBB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2B4C(&qword_390F8, &qword_2CBB8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_2B4C(&qword_39100, &unk_2CBC0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AppsSettingsList(uint64_t a1)
{
  result = qword_39160;
  if (!qword_39160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F5AC(uint64_t a1)
{
  sub_F754(319, &qword_39170, &type metadata accessor for AppendSettingsNavigationPathAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_F754(319, &qword_39178, &type metadata accessor for ClearSettingsNavigationPathAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_F6F0(319);
      if (v3 <= 0x3F)
      {
        sub_F754(319, &unk_39190, type metadata accessor for AppsSettingsListViewModel, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_F6F0(uint64_t a1)
{
  if (!qword_39180)
  {
    sub_504C(&qword_39188, &qword_2CBE8);
    v1 = sub_29CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_39180);
    }
  }
}

void sub_F754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_F7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v126 = a1;
  v3 = sub_2B4C(&qword_391C8, &qword_2CC40);
  __chkstk_darwin(v3 - 8);
  v159 = &v117 - v4;
  v125 = sub_29A64();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v158 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2A2F4();
  v157 = *(v166 - 8);
  __chkstk_darwin(v166);
  v156 = (&v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = sub_29FE4();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v151 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_29ED4();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_29F74();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v134 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppsSettingsList(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = sub_2B4C(&qword_391D0, &qword_2CC48);
  __chkstk_darwin(v14);
  v16 = (&v117 - v15);
  v139 = sub_2B4C(&qword_391D8, &qword_2CC50);
  __chkstk_darwin(v139);
  v170 = &v117 - v17;
  v144 = sub_2B4C(&qword_391E0, &qword_2CC58);
  v141 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v117 - v18;
  v145 = sub_2B4C(&qword_391E8, &qword_2CC60);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v117 - v19;
  v172 = sub_2B4C(&qword_391F0, &qword_2CC68);
  __chkstk_darwin(v172);
  v146 = &v117 - v20;
  v152 = sub_2B4C(&qword_391F8, &qword_2CC70);
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v171 = &v117 - v21;
  v118 = sub_2B4C(&qword_39200, &qword_2CC78);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v153 = &v117 - v22;
  v121 = sub_2B4C(&qword_39208, &qword_2CC80);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v160 = &v117 - v23;
  v123 = sub_2B4C(&qword_39210, &qword_2CC88);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = &v117 - v24;
  sub_130AC(v2, &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v163 = *(v12 + 80);
  v162 = v25 + v13;
  v26 = swift_allocObject();
  v164 = v25;
  v161 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13114(v161, v26 + v25);
  v27 = sub_2A2A4();
  v29 = v28;
  v135 = v14;
  v30 = v16 + *(v14 + 36);
  sub_11F84(v2, v30);
  v31 = (v30 + *(sub_2B4C(&qword_39230, &qword_2CCA8) + 36));
  *v31 = v27;
  v31[1] = v29;
  *v16 = sub_13178;
  v16[1] = v26;
  v136 = v16;
  v32 = *(v11 + 36);
  v165 = v2;
  v33 = (v2 + v32);
  v35 = v33[1];
  v182 = *v33;
  v34 = v182;
  v183 = v35;
  v36 = sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A234();
  v37 = v178;
  v38 = v179;
  v39 = v180;
  swift_getKeyPath();
  v182 = v37;
  v183 = v38;
  v184 = v39;
  sub_2B4C(&qword_39240, &qword_2CCE0);
  sub_2A254();

  v132 = v179;
  v130 = v180;
  v131 = v181;

  v169 = v34;
  v173 = v34;
  v174 = v35;
  v168 = v35;
  v167 = v36;
  sub_2A234();
  v40 = v175;
  v41 = v176;
  v42 = v177;
  swift_getKeyPath();
  v175 = v40;
  v176 = v41;
  v177 = v42;
  sub_2A254();

  v129 = v173;
  v128 = v174;

  v43 = v134;
  sub_29F64();
  sub_29F24();
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v44 = qword_3AD50;
  v45 = qword_3AD50;
  v133 = v44;
  v46 = v45;
  v47 = sub_2A0B4();
  v49 = v48;
  v127 = v50;
  v52 = v51 & 1;
  sub_13208();
  v53 = v136;
  sub_2A114();
  sub_50E8(v47, v49, v52);

  (*(v137 + 8))(v43, v138);
  sub_E02C(v53, &qword_391D0, &qword_2CC48);
  v54 = sub_2A2B4();
  v178 = v169;
  v55 = v169;
  v179 = v168;
  v56 = v168;
  sub_2A224();
  v57 = v182;
  swift_getKeyPath();
  v178 = v57;
  v58 = sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v59 = *&v57[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections];

  v60 = sub_2B4C(&qword_39268, &qword_2CD40);
  v61 = v170;
  v62 = &v170[*(v60 + 36)];
  *v62 = v54;
  v62[1] = v59;
  v63 = sub_2A2B4();
  v178 = v55;
  v179 = v56;
  sub_2A224();
  v64 = v182;
  swift_getKeyPath();
  v178 = v64;
  sub_29AD4();

  v65 = *&v64[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems];

  v66 = v139;
  v67 = (v61 + *(v139 + 36));
  *v67 = v63;
  v67[1] = v65;
  v68 = sub_134CC();
  v69 = v140;
  sub_2A0D4();
  sub_E02C(v61, &qword_391D8, &qword_2CC50);
  sub_29F24();
  v70 = sub_2A0B4();
  v72 = v71;
  LOBYTE(v61) = v73;
  v178 = v66;
  v179 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v142;
  v76 = v144;
  sub_2A154();
  sub_50E8(v70, v72, v61 & 1);

  (*(v141 + 8))(v69, v76);
  v77 = v148;
  v78 = v147;
  v79 = v149;
  (*(v148 + 104))(v147, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v149);
  v178 = v76;
  v179 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v80 = v146;
  v81 = v145;
  sub_2A1B4();
  (*(v77 + 8))(v78, v79);
  (*(v143 + 8))(v75, v81);
  v82 = v161;
  sub_130AC(v165, v161);
  v83 = swift_allocObject();
  sub_13114(v82, v83 + v164);
  v84 = (v80 + *(v172 + 36));
  *v84 = sub_13678;
  v84[1] = v83;
  v84[2] = 0;
  v84[3] = 0;
  v178 = v169;
  v179 = v168;
  sub_2A224();
  v85 = v182;
  v86 = type metadata accessor for AppsSettingsListViewModel(0);
  v87 = sub_136D8();
  v170 = v58;
  sub_2A134();

  sub_E02C(v80, &qword_391F0, &qword_2CC68);
  v88 = v151;
  sub_29FD4();
  sub_2B4C(&qword_39298, &qword_2CD80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CB90;
  LOBYTE(v80) = sub_2A044();
  *(inited + 32) = v80;
  v90 = sub_2A024();
  *(inited + 33) = v90;
  sub_2A034();
  sub_2A034();
  if (sub_2A034() != v80)
  {
    sub_2A034();
  }

  sub_2A034();
  v91 = sub_2A034();
  v92 = v157;
  if (v91 != v90)
  {
    sub_2A034();
  }

  v93 = v159;
  v94 = v88;
  v95 = v153;
  v96 = v152;
  v97 = v171;
  v178 = v172;
  v179 = v86;
  v180 = v87;
  v181 = v170;
  v98 = swift_getOpaqueTypeConformance2();
  sub_2A164();
  (*(v154 + 8))(v94, v155);
  (*(v150 + 8))(v97, v96);
  v99 = v96;
  v100 = v156;
  *v156 = 0xD000000000000022;
  v100[1] = 0x800000000002DD40;
  (*(v92 + 104))(v100, enum case for SettingsEventImage.graphicIcon(_:), v166);
  v101 = v158;
  sub_29A54();
  sub_29A94();
  v102 = sub_29AA4();
  v103 = *(v102 - 8);
  result = (*(v103 + 48))(v93, 1, v102);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v178 = v99;
    v179 = v98;
    v105 = swift_getOpaqueTypeConformance2();
    v106 = v118;
    sub_2A0E4();
    (*(v124 + 8))(v101, v125);
    (*(v92 + 8))(v100, v166);
    (*(v117 + 8))(v95, v106);
    (*(v103 + 8))(v93, v102);
    if (qword_38A00 != -1)
    {
      swift_once();
    }

    v172 = sub_29CE4();
    sub_966C(v172, qword_3AD70);
    v107 = v165;
    v108 = v161;
    sub_130AC(v165, v161);
    v109 = swift_allocObject();
    v110 = v164;
    sub_13114(v108, v109 + v164);
    v178 = v106;
    v179 = v105;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v120;
    v113 = v121;
    v114 = v160;
    sub_2A1C4();

    (*(v119 + 8))(v114, v113);
    if (qword_38A08 != -1)
    {
      swift_once();
    }

    sub_966C(v172, qword_3AD88);
    sub_130AC(v107, v108);
    v115 = swift_allocObject();
    sub_13114(v108, v115 + v110);
    v178 = v113;
    v179 = v111;
    swift_getOpaqueTypeConformance2();
    v116 = v123;
    sub_2A1C4();

    return (*(v122 + 8))(v112, v116);
  }

  return result;
}

uint64_t sub_10DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v55 = a3;
  v4 = type metadata accessor for AppsSettingsList(0);
  v5 = v4 - 8;
  v52 = *(v4 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v4);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D94();
  v7 = *(v48 - 8);
  v47 = *(v7 + 64);
  __chkstk_darwin(v48);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2B4C(&qword_392D8, &qword_2CDD0);
  __chkstk_darwin(v46);
  v10 = &v42 - v9;
  v11 = sub_2B4C(&qword_392E0, &qword_2CDD8);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  __chkstk_darwin(v11);
  v56 = &v42 - v13;
  v14 = (a2 + *(v5 + 36));
  v44 = a2;
  v15 = v14[1];
  v43 = *v14;
  *&v63 = v43;
  *(&v63 + 1) = v15;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A234();
  v16 = v58;
  v17 = v59;
  swift_getKeyPath();
  v66 = v16;
  v67 = v17;
  sub_2B4C(&qword_39240, &qword_2CCE0);
  sub_2A254();

  v42 = v58;
  v18 = v59;
  v19 = v60;

  v63 = v42;
  v64 = v18;
  v65 = v19;
  v57 = a2;
  sub_2B4C(&qword_392E8, &unk_2CDE0);
  sub_7ABC();
  sub_13FF0();
  sub_2A084();
  *&v58 = v43;
  *(&v58 + 1) = v15;
  sub_2A224();
  v20 = v63;
  v21 = *(v63 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appsSettingsListScrollToItemSubject);

  v22 = v45;
  v23 = v48;
  (*(v7 + 16))(v45, v49, v48);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v24, v22, v23);
  v26 = v46;
  *&v10[*(v46 + 52)] = v21;
  v27 = &v10[*(v26 + 56)];
  *v27 = sub_1422C;
  v27[1] = v25;
  v28 = sub_2B4C(&qword_39310, &qword_2CDF8);
  v29 = sub_55DC(&qword_39318, &qword_392D8, &qword_2CDD0, &protocol conformance descriptor for SubscriptionView<A, B>);
  v30 = sub_E08C();
  v31 = sub_55DC(&qword_39320, &qword_39310, &qword_2CDF8, &protocol conformance descriptor for IDView<A, B>);
  sub_2A194();
  sub_E02C(v10, &qword_392D8, &qword_2CDD0);
  v32 = v50;
  sub_130AC(v44, v50);
  v33 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v34 = swift_allocObject();
  sub_13114(v32, v34 + v33);
  sub_2B4C(&qword_39328, &qword_2CE00);
  *&v58 = v26;
  *(&v58 + 1) = &type metadata for InstalledApplicationSettings;
  v59 = v28;
  v60 = v29;
  v61 = v30;
  v62 = v31;
  swift_getOpaqueTypeConformance2();
  sub_14588();
  v35 = type metadata accessor for HiddenAppsSettingsList(255);
  v36 = type metadata accessor for AppsSettingsListViewModel(255);
  v37 = sub_14600(&qword_39330, type metadata accessor for HiddenAppsSettingsList, &unk_2B5A8);
  v38 = sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  *&v58 = v35;
  *(&v58 + 1) = v36;
  v59 = v37;
  v60 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v56;
  sub_2A194();

  return (*(v54 + 8))(v40, v39);
}

uint64_t sub_114A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_2B4C(&qword_39300, &qword_2CDF0);
  v28 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v29 = sub_2B4C(&qword_39338, &qword_2CE40);
  __chkstk_darwin(v29);
  v6 = &v26 - v5;
  v30 = sub_2B4C(&qword_38CE0, &qword_2B650);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v26 - v7;
  v8 = (a1 + *(type metadata accessor for AppsSettingsList(0) + 28));
  v9 = *v8;
  v10 = v8[1];
  v34 = *v8;
  v35 = v10;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v11 = v33;
  swift_getKeyPath();
  v34 = v11;
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  LODWORD(a1) = v11[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching];

  if (a1 != 1)
  {
    goto LABEL_6;
  }

  v34 = v9;
  v35 = v10;
  sub_2A224();
  v12 = v33;
  swift_getKeyPath();
  v34 = v12;
  sub_29AD4();

  v13 = *&v12[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  v14 = *&v12[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8];

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v34 = v9;
    v35 = v10;
    sub_2A224();
    v16 = v33;
    swift_getKeyPath();
    v34 = v16;
    sub_29AD4();

    v17 = *&v16[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems];

    v34 = v17;
    sub_2B4C(&qword_395C0, &qword_2CB70);
    sub_55DC(&qword_38D30, &qword_395C0, &qword_2CB70, &protocol conformance descriptor for [A]);
    sub_5094();
    sub_5624();
    v18 = v26;
    sub_2A264();
    v19 = v27;
    v20 = v30;
    (*(v27 + 16))(v6, v18, v30);
    swift_storeEnumTagMultiPayload();
    sub_140D4(&qword_38CE8, &qword_38CE0, &qword_2B650, sub_5094);
    sub_140D4(&qword_392F8, &qword_39300, &qword_2CDF0, sub_14150);
    sub_29F44();
    return (*(v19 + 8))(v18, v20);
  }

  else
  {
LABEL_6:
    v34 = v9;
    v35 = v10;
    sub_2A224();
    v22 = v33;
    swift_getKeyPath();
    v34 = v22;
    sub_29AD4();

    v23 = *&v22[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections];

    v34 = v23;
    sub_2B4C(&qword_39340, &qword_2CE48);
    sub_55DC(&qword_39348, &qword_39340, &qword_2CE48, &protocol conformance descriptor for [A]);
    sub_14150();
    sub_1470C();
    sub_2A264();
    v24 = v28;
    v25 = v32;
    (*(v28 + 16))(v6, v4, v32);
    swift_storeEnumTagMultiPayload();
    sub_140D4(&qword_38CE8, &qword_38CE0, &qword_2B650, sub_5094);
    sub_140D4(&qword_392F8, &qword_39300, &qword_2CDF0, sub_14150);
    sub_29F44();
    return (*(v24 + 8))(v4, v25);
  }
}

__n128 sub_11B20@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13[0] = v3;
  *(v13 + 9) = *(a1 + 57);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  type metadata accessor for AppsSettingsListViewModel(0);
  sub_5678(&v10, v14);
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  v5 = sub_29CD4();
  *&v14[7] = v10;
  *&v14[23] = v11;
  *&v14[39] = v12;
  *&v14[55] = v13[0];
  *&v14[64] = *(v13 + 9);
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  v7 = *&v14[16];
  *(a2 + 9) = *v14;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 73) = *&v14[64];
  *(a2 + 57) = v9;
  *(a2 + 41) = result;
  *(a2 + 25) = v7;
  return result;
}

uint64_t sub_11C1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  sub_9380(v3, v2, v4, v5);
}

uint64_t sub_11C6C(__int128 *a1, uint64_t a2)
{
  sub_2A2B4();
  sub_29D24();
}

uint64_t sub_11CE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  sub_29BD4();
  v5 = (a2 + *(sub_2B4C(&qword_39310, &qword_2CDF8) + 52));
  *v5 = v3;
  v5[1] = v4;
}

uint64_t sub_11D58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HiddenAppsSettingsList(0);
  __chkstk_darwin(v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (a2 + *(type metadata accessor for AppsSettingsList(0) + 28));
  v8 = v6[1];
  v14 = *v6;
  v7 = v14;
  v15 = v8;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v9 = v13;
  sub_14FE0();

  *v5 = swift_getKeyPath();
  sub_2B4C(&qword_38D18, &unk_2B690);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for HiddenAppsSettingsListViewModel(0);
  sub_14600(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel, &unk_2B728);
  sub_2A294();
  v14 = v7;
  v15 = v8;
  sub_2A224();
  v10 = v13;
  type metadata accessor for AppsSettingsListViewModel(0);
  sub_14600(&qword_39330, type metadata accessor for HiddenAppsSettingsList, &unk_2B5A8);
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_2A134();

  return sub_14648(v5);
}

uint64_t sub_11F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_2B4C(&qword_392D0, &qword_2CDC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v31 - v5;
  v6 = (a1 + *(type metadata accessor for AppsSettingsList(0) + 28));
  v7 = *v6;
  v8 = v6[1];
  v35 = *v6;
  v36 = v8;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v9 = v34;
  swift_getKeyPath();
  v35 = v9;
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  LODWORD(a1) = v9[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching];

  if (a1 != 1)
  {
    goto LABEL_3;
  }

  v35 = v7;
  v36 = v8;
  sub_2A224();
  v10 = v34;
  swift_getKeyPath();
  v35 = v10;
  sub_29AD4();

  v11 = *&v10[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems];

  v12 = *(v11 + 16);

  if (v12)
  {
    goto LABEL_3;
  }

  v35 = v7;
  v36 = v8;
  sub_2A224();
  v16 = v34;
  swift_getKeyPath();
  v35 = v16;
  sub_29AD4();

  v17 = *&v16[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  v18 = *&v16[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8];

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v32;
    sub_29FA4();
    v21 = sub_2A2A4();
    v23 = v22;
    v24 = [objc_opt_self() systemGroupedBackgroundColor];
    v25 = sub_2A1D4();
    v26 = sub_29D74();
    v27 = sub_2A054();
    v28 = &v20[*(v3 + 36)];
    *v28 = v25;
    *(v28 + 1) = v26;
    v28[16] = v27;
    *(v28 + 3) = v21;
    *(v28 + 4) = v23;
    v29 = v20;
    v30 = v33;
    sub_13F78(v29, v33);
    v14 = v30;
    v13 = 0;
  }

  else
  {
LABEL_3:
    v13 = 1;
    v14 = v33;
  }

  return (*(v4 + 56))(v14, v13, 1, v3);
}

uint64_t sub_122A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v4 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter);
  a2[1] = v4;
}

uint64_t sub_12358(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AC4();
}

uint64_t sub_12428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching);
  return result;
}

uint64_t sub_124D8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AC4();
}

void sub_125A8(uint64_t a1)
{
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v1 = sub_29C14();
  sub_966C(v1, qword_3AD58);
  v2 = sub_29BF4();
  v3 = sub_2A584();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "onAppear called on AppsSettingsList", v4, 2u);
  }

  sub_127F0();
  type metadata accessor for AppsSettingsList(0);
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  sub_16894();

  sub_2A224();
  if (*&v6[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8] == 4)
  {
    *&v6[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection] = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
    sub_29AC4();
  }
}

void sub_127F0()
{
  v1 = sub_2B4C(&qword_392C0, &qword_2CD90);
  v2 = __chkstk_darwin(v1 - 8);
  v31 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = sub_2B4C(&qword_392C8, &qword_2CD98);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v30 = type metadata accessor for AppsSettingsList(0);
  v12 = *(v30 + 28);
  v32 = v0;
  v13 = (v0 + v12);
  v15 = *v13;
  v14 = v13[1];
  v38 = *v13;
  v39 = v14;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v16 = v36;
  v17 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_E25C(v16 + v17, v11, &qword_392C8, &qword_2CD98);

  v18 = sub_29BB4();
  v19 = *(v18 - 8);
  LODWORD(v16) = (*(v19 + 48))(v11, 1, v18);
  sub_E02C(v11, &qword_392C8, &qword_2CD98);
  if (v16 == 1)
  {
    v36 = v15;
    v37 = v14;
    sub_2A224();
    v20 = v33;
    sub_13CA8(&qword_39218, &qword_2CC90, &type metadata accessor for AppendSettingsNavigationPathAction, v9);
    (*(v19 + 56))(v9, 0, 1, v18);
    v21 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
    swift_beginAccess();
    sub_13EA8(v9, v20 + v21, &qword_392C8, &qword_2CD98);
    swift_endAccess();
  }

  v36 = v15;
  v37 = v14;
  sub_2A224();
  v22 = v33;
  v23 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
  swift_beginAccess();
  sub_E25C(v22 + v23, v5, &qword_392C0, &qword_2CD90);

  v24 = sub_29B94();
  v25 = *(v24 - 8);
  LODWORD(v23) = (*(v25 + 48))(v5, 1, v24);
  sub_E02C(v5, &qword_392C0, &qword_2CD90);
  if (v23 == 1)
  {
    v33 = v15;
    v34 = v14;
    sub_2A224();
    v26 = v35;
    v27 = v31;
    sub_13CA8(&qword_39220, &qword_2CC98, &type metadata accessor for ClearSettingsNavigationPathAction, v31);
    (*(v25 + 56))(v27, 0, 1, v24);
    v28 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
    swift_beginAccess();
    sub_13EA8(v27, v26 + v28, &qword_392C0, &qword_2CD90);
    swift_endAccess();
  }
}

uint64_t sub_12C44(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2A2C4();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2A2E4();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppsSettingsList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_127F0();
  sub_13908();
  v13 = sub_2A5A4();
  sub_130AC(v2, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_13114(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v19;
  v16[1] = a2;
  aBlock[4] = sub_13BD8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_13064;
  aBlock[3] = &unk_36580;
  v17 = _Block_copy(aBlock);

  sub_2A2D4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14600(&qword_392A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2B4C(&qword_392B0, &qword_2CD88);
  sub_55DC(&qword_392B8, &qword_392B0, &qword_2CD88, &protocol conformance descriptor for [A]);
  sub_2A6F4();
  sub_2A5B4();
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  return (*(v20 + 8))(v9, v21);
}

void sub_12FE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for AppsSettingsList(0);
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  sub_15054(a2, a3);
}

uint64_t sub_13064(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_130AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppsSettingsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10DA8(a1, v6, a2);
}

unint64_t sub_13208()
{
  result = qword_39248;
  if (!qword_39248)
  {
    sub_504C(&qword_391D0, &qword_2CC48);
    sub_55DC(&qword_39250, &qword_39258, &qword_2CD10, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_55DC(&qword_39260, &qword_39230, &qword_2CCA8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39248);
  }

  return result;
}

uint64_t sub_132EC()
{
  v0 = sub_29CE4();
  sub_9608(v0, qword_3AD70);
  sub_966C(v0, qword_3AD70);
  return sub_29CF4();
}

uint64_t sub_13350()
{
  v0 = sub_29CE4();
  sub_9608(v0, qword_3AD88);
  sub_966C(v0, qword_3AD88);
  return sub_29CF4();
}

uint64_t sub_133BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems);
}

unint64_t sub_134CC()
{
  result = qword_39270;
  if (!qword_39270)
  {
    sub_504C(&qword_391D8, &qword_2CC50);
    sub_13584();
    sub_55DC(&qword_38D08, &qword_38D10, &qword_2B658, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39270);
  }

  return result;
}

unint64_t sub_13584()
{
  result = qword_39278;
  if (!qword_39278)
  {
    sub_504C(&qword_39268, &qword_2CD40);
    sub_504C(&qword_391D0, &qword_2CC48);
    sub_13208();
    swift_getOpaqueTypeConformance2();
    sub_55DC(&qword_39280, &qword_39288, &unk_2CD70, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39278);
  }

  return result;
}

void sub_13678()
{
  v1 = *(type metadata accessor for AppsSettingsList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_125A8(v2);
}

unint64_t sub_136D8()
{
  result = qword_39290;
  if (!qword_39290)
  {
    sub_504C(&qword_391F0, &qword_2CC68);
    sub_504C(&qword_391E8, &qword_2CC60);
    sub_504C(&qword_391E0, &qword_2CC58);
    sub_504C(&qword_391D8, &qword_2CC50);
    sub_134CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39290);
  }

  return result;
}

unint64_t sub_13908()
{
  result = qword_392A0;
  if (!qword_392A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_392A0);
  }

  return result;
}

uint64_t sub_13954()
{
  v1 = type metadata accessor for AppsSettingsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_2B4C(&qword_39218, &qword_2CC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29BB4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_2B4C(&qword_39220, &qword_2CC98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_29B94();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_2B4C(&qword_39228, &qword_2CCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_29FB4();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_13BD8()
{
  v1 = *(type metadata accessor for AppsSettingsList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_12FE0(v0 + v2, v4, v5);
}

uint64_t sub_13C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_29EC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B4C(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_E25C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_2A574();
    v19 = sub_2A014();
    sub_29BE4();

    sub_29EB4();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_13EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B4C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_13F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_392D0, &qword_2CDC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_13FF0()
{
  result = qword_392F0;
  if (!qword_392F0)
  {
    sub_504C(&qword_392E8, &unk_2CDE0);
    sub_140D4(&qword_38CE8, &qword_38CE0, &qword_2B650, sub_5094);
    sub_140D4(&qword_392F8, &qword_39300, &qword_2CDF0, sub_14150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_392F0);
  }

  return result;
}

uint64_t sub_140D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_504C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_14150()
{
  result = qword_39308;
  if (!qword_39308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39308);
  }

  return result;
}

uint64_t sub_141A4()
{
  v1 = sub_29D94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1422C(__int128 *a1)
{
  v3 = *(sub_29D94() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_11C6C(a1, v4);
}

uint64_t sub_1429C()
{
  v1 = type metadata accessor for AppsSettingsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_2B4C(&qword_39218, &qword_2CC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29BB4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_2B4C(&qword_39220, &qword_2CC98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_29B94();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_2B4C(&qword_39228, &qword_2CCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_29FB4();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_14508(uint64_t a1)
{
  v3 = *(type metadata accessor for AppsSettingsList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_11D58(a1, v4);
}

unint64_t sub_14588()
{
  result = qword_394A0;
  if (!qword_394A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_394A0);
  }

  return result;
}

uint64_t sub_14600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14648(uint64_t a1)
{
  v2 = type metadata accessor for HiddenAppsSettingsList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1470C()
{
  result = qword_39350;
  if (!qword_39350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39350);
  }

  return result;
}

uint64_t sub_14760()
{
  sub_504C(&qword_39210, &qword_2CC88);
  sub_504C(&qword_39208, &qword_2CC80);
  sub_504C(&qword_39200, &qword_2CC78);
  sub_504C(&qword_391F8, &qword_2CC70);
  sub_504C(&qword_391F0, &qword_2CC68);
  type metadata accessor for AppsSettingsListViewModel(255);
  sub_136D8();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_14918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_283A4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel, &unk_2B728);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps);
}

uint64_t sub_149F8()
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v1 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  sub_280D4(v1, *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8));
  return v1;
}

uint64_t sub_14AB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v4 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v5 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_280D4(v4, v5);
}

uint64_t sub_14B70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_280D4(*a1, v2);
  return sub_14BB4(v1, v2);
}

uint64_t sub_14BB4(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v6 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v7 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  if (v7 != 4)
  {
    if (a2 == 4)
    {
      goto LABEL_7;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (a2 == 2)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      if (v7 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (!v7)
      {
        if (!a2)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      if (v7 == 1)
      {
        if (a2 == 1)
        {
          goto LABEL_3;
        }

LABEL_7:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
        sub_29AC4();
        sub_6DC0(a1, a2);
      }
    }

    if (a2 >= 4)
    {
      if (v6 == a1 && v7 == a2)
      {
        goto LABEL_3;
      }

      v11 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
      v12 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
      v13 = sub_2A8A4();
      v7 = v12;
      v14 = v13;
      v6 = v11;
      if (v14)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_7;
  }

  if (a2 != 4)
  {
    goto LABEL_7;
  }

LABEL_3:
  *v5 = a1;
  v5[1] = a2;

  return sub_6DC0(v6, v7);
}

uint64_t sub_14DB0()
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  return *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching);
}

uint64_t sub_14E58()
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v1 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter);

  return v1;
}

uint64_t sub_14F3C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();
}

id sub_14FE0()
{
  v1 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for HiddenAppsSettingsListViewModel(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_15054(uint64_t a1, unint64_t a2)
{
  v5 = sub_29BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B4C(&qword_38FE0, &qword_2C9D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v69 - v9;
  v11 = sub_2A324();
  isa = v11[-1].isa;
  v79 = v11;
  v12 = __chkstk_darwin(v11);
  v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v69 - v14;
  v77 = sub_29B74();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppsSettingsDestinationOption(0);
  __chkstk_darwin(v16);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_27200();
  v20 = sub_1DBD8(a1, a2, v19);

  if (v20)
  {
    v71 = v6;
    v21 = v5;
    v22 = sub_984C(a1, a2);
    v24 = v23;

    v70 = v2;
    sub_14BB4(a1, a2);
    sub_30EC(v22, v24, a1, a2, v18);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v42 = *v18;
        v41 = v18[1];
        v43 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
        v44 = v70;
        swift_beginAccess();
        v45 = v71;
        if (!(*(v71 + 48))(v44 + v43, 1, v21))
        {
          v46 = v44 + v43;
          v47 = v76;
          (*(v45 + 16))(v76, v46, v21);
          v80 = v42;
          v81 = v41;
          sub_E08C();
          sub_29BA4();
          (*(v45 + 8))(v47, v21);
        }
      }

      else
      {
        v55 = a1;
        if (qword_389F8 != -1)
        {
          swift_once();
        }

        v56 = sub_29C14();
        sub_966C(v56, qword_3AD58);

        v57 = sub_29BF4();
        v58 = sub_2A584();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v82[0] = v60;
          *v59 = 136446210;
          *(v59 + 4) = sub_22978(v55, a2, v82);
          _os_log_impl(&dword_0, v57, v58, "Unsupported destination for %{public}s", v59, 0xCu);
          sub_E1BC(v60);
        }

        sub_308C(v18);
      }
    }

    else
    {
      v26 = v21;
      if (EnumCaseMultiPayload)
      {
        v50 = isa;
        v49 = v79;
        v51 = v73;
        (*(isa + 4))(v73, v18, v79);
        v52 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
        v53 = v70;
        swift_beginAccess();
        v54 = v71;
        if ((*(v71 + 48))(v53 + v52, 1, v26))
        {
          (*(v50 + 1))(v51, v49);
          goto LABEL_27;
        }

        v63 = v53 + v52;
        v64 = v76;
        (*(v54 + 16))(v76, v63, v26);
        swift_endAccess();
        sub_283A4(&qword_38B88, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
        sub_29BA4();
        (*(v54 + 8))(v64, v26);
        (*(v50 + 1))(v51, v49);
      }

      else
      {
        v28 = v74;
        v27 = v75;
        v29 = v77;
        (*(v75 + 32))(v74, v18, v77);
        sub_29B34();
        v31 = isa;
        v30 = v79;
        v32 = (*(isa + 6))(v10, 1, v79);
        v33 = v70;
        v34 = v71;
        if (v32 == 1)
        {
          sub_E02C(v10, &qword_38FE0, &qword_2C9D8);
          v35 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
          swift_beginAccess();
          if ((*(v34 + 48))(v33 + v35, 1, v26))
          {
            (*(v27 + 8))(v28, v29);
LABEL_27:
            swift_endAccess();
            return;
          }

          v65 = v33 + v35;
          v66 = v76;
          (*(v34 + 16))(v76, v65, v26);
          swift_endAccess();
          sub_283A4(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
          sub_29BA4();
          (*(v34 + 8))(v66, v26);
          (*(v27 + 8))(v28, v29);
        }

        else
        {
          v61 = v72;
          (*(v31 + 4))(v72, v10, v30);
          v62 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
          swift_beginAccess();
          if ((*(v34 + 48))(v33 + v62, 1, v26))
          {
            (*(v31 + 1))(v61, v30);
            (*(v27 + 8))(v28, v77);
            goto LABEL_27;
          }

          v67 = v33 + v62;
          v68 = v76;
          (*(v34 + 16))(v76, v67, v26);
          swift_endAccess();
          sub_283A4(&qword_38B88, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
          sub_29BA4();
          (*(v34 + 8))(v68, v26);
          (*(v31 + 1))(v61, v30);
          (*(v27 + 8))(v28, v77);
        }
      }
    }
  }

  else
  {
    v36 = a1;
    if (qword_389F8 != -1)
    {
      swift_once();
    }

    v37 = sub_29C14();
    sub_966C(v37, qword_3AD58);

    v79 = sub_29BF4();
    v38 = sub_2A584();

    if (os_log_type_enabled(v79, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v82[0] = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_22978(v36, a2, v82);
      _os_log_impl(&dword_0, v79, v38, "Cannot select %{public}s as it is not in the list.", v39, 0xCu);
      sub_E1BC(v40);
    }

    else
    {
      v48 = v79;
    }
  }
}

uint64_t sub_15A7C()
{
  v0 = sub_272BC(&off_35A18);
  result = swift_arrayDestroy();
  off_39360 = v0;
  return result;
}

void *sub_15AC8()
{
  result = sub_27424(&off_35A78);
  qword_39368 = result;
  return result;
}

int *sub_15AF0()
{
  result = sub_27424(&off_35AA0);
  off_39370 = result;
  return result;
}

uint64_t sub_15B18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v4 = *(a1 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v5 = *(a1 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_280D4(a2, a3);
  return sub_6DC0(v4, v5);
}

uint64_t sub_15B70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections);
}

uint64_t sub_15C88(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((result & 1) == 0)
  {
    result = sub_15D50(_swiftEmptyArrayStorage, &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems, sub_9080, &unk_2D0E0, sub_2893C);
  }

  *(a2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching) = v3 & 1;
  return result;
}

uint64_t sub_15D50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  if (a3(*(v5 + *a2), a1))
  {
    *(v5 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
    sub_29AC4();
  }
}

uint64_t sub_15E9C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = &a1[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  *v9 = a2;
  *(v9 + 1) = a3;

  sub_2A4A4();
  v10 = sub_2A4C4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  swift_getKeyPath();
  v15[1] = a1;
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v11 = *&a1[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a1;

  v13 = a1;
  sub_642C(0, 0, v8, &unk_2D138, v12);

  return sub_E02C(v8, &unk_38E10, &qword_2B770);
}

uint64_t sub_1609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  return _swift_task_switch(sub_160C0, 0, 0);
}

uint64_t sub_160C0(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_19:
    v16 = *(v7 + 2);
    if (v16)
    {
      v17 = 0;
      v18 = v7 + 32;
      v19 = _swiftEmptyArrayStorage;
      do
      {
        v39 = v19;
        v20 = &v18[10 * v17];
        v21 = v17;
        while (1)
        {
          if (v21 >= *(v7 + 2))
          {
            __break(1u);
            goto LABEL_37;
          }

          v23 = *(v3 + 216);
          v22 = *(v3 + 224);
          v25 = v20[2];
          v24 = v20[3];
          v26 = v20[1];
          *(v3 + 73) = *(v20 + 57);
          *(v3 + 48) = v25;
          *(v3 + 64) = v24;
          *(v3 + 16) = *v20;
          *(v3 + 32) = v26;
          v17 = v21 + 1;
          v27 = *(v3 + 56);
          v28 = *(v3 + 64);

          *(v3 + 176) = v27;
          *(v3 + 184) = v28;
          *(v3 + 192) = v23;
          *(v3 + 200) = v22;
          sub_5678(v3 + 16, v3 + 96);
          sub_8228();
          LOBYTE(v22) = sub_2A6E4();

          if (v22)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = sub_28838(v3 + 16);
          v20 += 5;
          ++v21;
          if (v16 == v17)
          {
            v19 = v39;
            goto LABEL_33;
          }
        }

        v19 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_23C4C(0, v39[2] + 1, 1);
          v19 = v39;
        }

        v30 = v19[2];
        v29 = v19[3];
        if (v30 >= v29 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_23C4C((v29 > 1), v30 + 1, 1);
          v19 = v39;
        }

        v19[2] = v30 + 1;
        v31 = &v19[10 * v30];
        v31[2] = *(v3 + 16);
        v32 = *(v3 + 32);
        v33 = *(v3 + 48);
        v34 = *(v3 + 64);
        *(v31 + 89) = *(v3 + 73);
        v31[4] = v33;
        v31[5] = v34;
        v31[3] = v32;
        v18 = v7 + 32;
      }

      while (v16 - 1 != v21);
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

LABEL_33:
    *(v3 + 240) = v19;

    swift_unknownObjectWeakInit();
    sub_2A494();
    *(v3 + 248) = sub_2A484();
    v35 = sub_2A474();
    v37 = v36;
    isUniquelyReferenced_nonNull_native = sub_16418;
    a2 = v35;
    a3 = v37;

    return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v6 = (v4 + 64);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v6;
    v9 = *(*v6 + 16);
    v10 = *(v7 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= *(v7 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      isUniquelyReferenced_nonNull_native = sub_223F8(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v9)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v7 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_40;
          }

          *(v7 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_38;
    }

LABEL_4:
    v6 += 5;
    if (!--v5)
    {
      goto LABEL_19;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_16418()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_15D50(*(v0 + 240), &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems, sub_9080, &unk_2D0E0, sub_2893C);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();
  v2 = *(v0 + 8);

  return v2();
}

id sub_164F0()
{
  v1 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator;
  v2 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator);
  }

  else
  {
    v4 = [objc_allocWithZone(HFHomeSettingsVisibilityArbitrator) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_2839C;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_16840;
    v10[3] = &unk_36738;
    v6 = _Block_copy(v10);

    [v4 setVisibilityStateChangeHandler:v6];
    _Block_release(v6);
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1661C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_16670();
  }
}

uint64_t sub_16670()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_collation;
  v6 = [*&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_collation] sectionTitles];
  v7 = sub_2A454();

  v8 = [*&v0[v5] sectionIndexTitles];
  v9 = sub_2A454();

  v10 = sub_164F0();
  v11 = [v10 visibilityState];

  v12 = sub_27200();
  sub_2A4A4();
  v13 = sub_2A4C4();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = *&v0[v5];
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v7;
  v15[5] = v12;
  v15[6] = v14;
  v15[7] = v11;
  v15[8] = v9;
  v15[9] = v0;
  v15[10] = ObjectType;
  v16 = v14;
  v17 = v0;
  sub_1EEAC(0, 0, v4, &unk_2D008, v15);
}

uint64_t sub_16840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_16894()
{
  v1 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___oneTimeConfiguration;
  if (*(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___oneTimeConfiguration) == 1)
  {
    result = sub_16670();
    *(v0 + v1) = 0;
  }

  return result;
}

char *sub_168CC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2B4C(&qword_39510, &qword_2CFD0);
  __chkstk_darwin(v2 - 8);
  v53 = &v46 - v3;
  v54 = sub_2A5C4();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B4C(&qword_39518, &qword_2CFD8);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - v6;
  v7 = sub_2B4C(&qword_39520, &qword_2CFE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_2A684();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2B4C(&qword_39528, &qword_2CFE8);
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v48 = &v46 - v14;
  v15 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appsSettingsListScrollToItemSubject;
  sub_2B4C(&qword_39530, &unk_2CFF0);
  swift_allocObject();
  *&v0[v15] = sub_29C54();
  v16 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject;
  sub_2B4C(&qword_39500, &qword_2CFC8);
  swift_allocObject();
  *&v0[v16] = sub_29C54();
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel] = 0;
  v17 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
  v18 = sub_29BB4();
  (*(*(v18 - 8) + 56))(&v0[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
  v20 = sub_29B94();
  (*(*(v20 - 8) + 56))(&v0[v19], 1, 1, v20);
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection] = xmmword_2B6B0;
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching] = 0;
  v21 = &v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems] = _swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_collation;
  *&v0[v22] = [objc_opt_self() currentCollation];
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator] = 0;
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_cancellables] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___oneTimeConfiguration] = 1;
  sub_29AE4();
  v60.receiver = v0;
  v60.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v60, "init");
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 sharedConnection];
  if (result)
  {
    v27 = result;
    v28 = v25;
    [v27 registerObserver:v28];

    v30 = __chkstk_darwin(v29);
    *(&v46 - 2) = v28;
    __chkstk_darwin(v30);
    *(&v46 - 2) = v28;
    sub_29AB4();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_28338;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1752C;
    aBlock[3] = &unk_36620;
    v32 = _Block_copy(aBlock);

    SBSRegisterDisplayIdentifiersChangedBlock();
    _Block_release(v32);
    aBlock[0] = *&v28[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject];

    sub_2A674();
    v33 = [objc_opt_self() mainRunLoop];
    v58 = v33;
    v34 = sub_2A664();
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    sub_28600(0, &qword_39538, NSRunLoop_ptr);
    sub_55DC(&qword_39540, &qword_39500, &qword_2CFC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_28358(&qword_39548, &qword_39538, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v35 = v48;
    sub_29C84();
    sub_E02C(v9, &qword_39520, &qword_2CFE0);

    (*(v46 + 8))(v12, v47);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_55DC(&unk_39550, &qword_39528, &qword_2CFE8, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v36 = v50;
    sub_29C94();

    (*(v49 + 8))(v35, v36);
    swift_beginAccess();
    sub_29C24();
    swift_endAccess();

    v37 = [objc_opt_self() defaultCenter];
    v38 = sub_29B14();
    v39 = v51;
    sub_2A5D4();

    sub_28600(0, &qword_392A0, OS_dispatch_queue_ptr);
    v40 = sub_2A5A4();
    aBlock[0] = v40;
    v41 = sub_2A594();
    v42 = v53;
    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
    sub_283A4(&qword_39560, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    sub_28358(&qword_39568, &qword_392A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v43 = v54;
    v44 = v55;
    sub_29C74();
    sub_E02C(v42, &qword_39510, &qword_2CFD0);

    (*(v52 + 8))(v39, v43);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_55DC(&unk_39570, &qword_39518, &qword_2CFD8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v45 = v57;
    sub_29C94();

    (*(v56 + 8))(v44, v45);
    swift_beginAccess();
    sub_29C24();
    swift_endAccess();

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_173B0(uint64_t a1, uint64_t a2)
{
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v2 = sub_29C14();
  sub_966C(v2, qword_3AD58);
  v3 = sub_29BF4();
  v4 = sub_2A584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Did receive Display Identifiers Changed.", v5, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    sub_2B4C(&qword_39500, &qword_2CFC8);
    sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_29C64();
  }

  return result;
}

void sub_1752C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void *sub_17598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_2B4C(&qword_39500, &qword_2CFC8);
    sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_29C64();
  }

  return result;
}

void *sub_17684()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v20 = ObjectType;
    [result unregisterObserver:v1];

    SBSRegisterDisplayIdentifiersChangedBlock();
    v5 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_cancellables;
    swift_beginAccess();
    v6 = *&v1[v5];
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_2A734();
      sub_29C44();
      sub_283A4(&unk_395F0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      result = sub_2A524();
      v6 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
      v10 = v27;
    }

    else
    {
      v11 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v6 + 56);

      v9 = 0;
    }

    v14 = (v8 + 64) >> 6;
    if (v6 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        break;
      }

LABEL_13:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

      if (!v19)
      {
LABEL_19:
        sub_2892C(v6);
        *&v1[v5] = &_swiftEmptySetSingleton;

        v22.receiver = v1;
        v22.super_class = v20;
        return objc_msgSendSuper2(&v22, "dealloc");
      }

      while (1)
      {
        sub_29C34();

        v9 = v17;
        v10 = v18;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_2A794())
        {
          sub_29C44();
          swift_dynamicCast();
          v17 = v9;
          v18 = v10;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppsSettingsListViewModel(uint64_t a1)
{
  result = qword_39408;
  if (!qword_39408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_17AF4(uint64_t a1)
{
  sub_17C98(319, &qword_39418, &type metadata accessor for AppendSettingsNavigationPathAction);
  if (v1 <= 0x3F)
  {
    sub_17C98(319, &qword_39420, &type metadata accessor for ClearSettingsNavigationPathAction);
    if (v2 <= 0x3F)
    {
      sub_29AF4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_17C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2A694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_17CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a8;
  v8[41] = v12;
  v8[38] = a6;
  v8[39] = a7;
  v8[36] = a4;
  v8[37] = a5;
  v9 = sub_29A74();
  v8[42] = v9;
  v8[43] = *(v9 - 8);
  v8[44] = swift_task_alloc();

  return _swift_task_switch(sub_17DE8, 0, 0);
}

uint64_t sub_17DE8()
{
  v1 = [objc_opt_self() hiddenApplications];
  sub_2A544();
  v2 = sub_2A454();

  if (v2 >> 62)
  {
    v3 = sub_2A854();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_23C8C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  v16 = v0;
  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_2A824();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 bundleIdentifier];
    v8 = sub_2A3F4();
    v10 = v9;

    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      sub_23C8C((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = v8;
    v13[5] = v10;
  }

  while (v3 != v4);

  v0 = v16;
LABEL_14:
  *(v0 + 360) = sub_27F20(_swiftEmptyArrayStorage);

  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1803C;

  return static AppDistributor.shouldShowAppInstallationSettings()();
}

uint64_t sub_1803C(char a1)
{
  *(*v1 + 705) = a1;

  return _swift_task_switch(sub_18168, 0, 0);
}

uint64_t sub_18168()
{
  v201 = v0;
  v1 = *(v0[36] + 16);
  if (v1)
  {
    sub_23CAC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage[2];
    do
    {
      v200 = v2;
      v4 = v2[3];
      if (v3 >= v4 >> 1)
      {
        sub_23CAC((v4 > 1), v3 + 1, 1);
        v2 = v200;
      }

      v2[2] = v3 + 1;
      v2[v3++ + 4] = _swiftEmptyArrayStorage;
      --v1;
    }

    while (v1);
    v197 = v2;
  }

  else
  {
    v197 = _swiftEmptyArrayStorage;
  }

  v5 = v0[37];
  v6 = swift_allocObject();
  v0[47] = v6;
  *(v6 + 16) = &_swiftEmptySetSingleton;
  v7 = [objc_opt_self() enumeratorWithOptions:192];
  v0[48] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v0[6] = sub_285F8;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1E638;
  v0[5] = &unk_36710;
  v9 = _Block_copy(v0 + 2);

  [v7 setFilter:v9];
  _Block_release(v9);
  sub_2A534();
  sub_283A4(&qword_39580, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  sub_2A6A4();
  if (v0[16])
  {
    v10 = _swiftEmptyArrayStorage;
    do
    {
      sub_28140(v0 + 13, v0 + 17);
      sub_28150((v0 + 17), (v0 + 21));
      sub_28600(0, &unk_395A0, LSApplicationRecord_ptr);
      if (swift_dynamicCast() && (v11 = v0[35], v12 = [v11 bundleIdentifier], v11, v12))
      {
        v13 = sub_2A3F4();
        v15 = v14;

        sub_E1BC(v0 + 17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2286C(0, *(v10 + 2) + 1, 1, v10);
        }

        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        if (v17 >= v16 >> 1)
        {
          v10 = sub_2286C((v16 > 1), v17 + 1, 1, v10);
        }

        *(v10 + 2) = v17 + 1;
        v18 = &v10[16 * v17];
        *(v18 + 4) = v13;
        *(v18 + 5) = v15;
      }

      else
      {
        sub_E1BC(v0 + 17);
      }

      sub_2A6A4();
    }

    while (v0[16]);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  (*(v0[43] + 8))(v0[44], v0[42]);
  v19 = sub_27F20(v10);
  v0[49] = v19;

  v20 = [objc_opt_self() currentNotificationSettingsCenter];
  swift_beginAccess();

  isa = sub_2A4D4().super.isa;

  v22 = [v20 notificationSourcesWithIdentifiers:isa];

  sub_28600(0, &qword_39588, UNNotificationSource_ptr);
  sub_28358(&qword_39590, &qword_39588, UNNotificationSource_ptr, &protocol conformance descriptor for NSObject);
  v23 = sub_2A4F4();
  v0[50] = v23;

  sub_1D750(v23);
  v0[51] = sub_27F20(v24);

  v25 = *(v19 + 32);
  *(v0 + 706) = v25;
  v26 = 1 << v25;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v19 + 56);
  v0[52] = MCFeatureAccountModificationAllowed;
  v0[64] = v197;

  v29 = 0;
  v30 = 0;
LABEL_24:
  v193 = v29;
  *(v0 + 707) = v29 & 1;
  v0[53] = 0;
  if (!v28)
  {
    goto LABEL_26;
  }

  do
  {
    v31 = v0[49];
LABEL_30:
    v0[54] = v28;
    v0[55] = v30;
    v33 = (*(v31 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v28)))));
    v34 = *v33;
    v0[56] = *v33;
    v35 = v33[1];
    v0[57] = v35;
    v36 = qword_38A10;

    if (v36 != -1)
    {
      swift_once();
    }

    v28 &= v28 - 1;
    v37 = off_39360;
    if (*(&dword_10 + off_39360))
    {
      sub_2A8F4();
      sub_2A414();
      v38 = sub_2A914();
      v39 = -1 << *(&stru_20.cmd + v37);
      v40 = v38 & ~v39;
      if ((*(v37 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40))
      {
        v41 = ~v39;
        do
        {
          v42 = (*&stru_20.segname[v37 + 8] + 16 * v40);
          v43 = *v42 == v34 && v42[1] == v35;
          if (v43 || (sub_2A8A4() & 1) != 0)
          {
            goto LABEL_68;
          }

          v40 = (v40 + 1) & v41;
        }

        while (((*(v37 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) != 0);
      }
    }

    v203._countAndFlagsBits = 0xD00000000000001BLL;
    v203._object = 0x800000000002E0D0;
    v44 = sub_2A444(v203);
    v45 = objc_allocWithZone(LSApplicationRecord);
    v46 = sub_2A3E4();
    v0[28] = 0;
    v47 = [v45 initWithBundleIdentifier:v46 allowPlaceholder:v44 error:v0 + 28];
    v0[58] = v47;

    v48 = v0[28];
    if (v47)
    {
      v49 = v48;
      if ([v47 isWebApp])
      {
        v50 = v0[51];
        if (!*(v50 + 16) || (sub_2A8F4(), sub_2A414(), v51 = sub_2A914(), v52 = -1 << *(v50 + 32), v53 = v51 & ~v52, ((*(v50 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v53) & 1) == 0))
        {
LABEL_67:

LABEL_68:

          goto LABEL_70;
        }

        v54 = ~v52;
        v55 = v0[51];
        while (1)
        {
          v56 = (*(v55 + 48) + 16 * v53);
          v57 = *v56 == v34 && v56[1] == v35;
          if (v57 || (sub_2A8A4() & 1) != 0)
          {
            break;
          }

          v55 = v0[51];
          v53 = (v53 + 1) & v54;
          if (((*(v55 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v53) & 1) == 0)
          {
            goto LABEL_67;
          }
        }
      }

      v58 = [objc_opt_self() defaultWorkspace];
      if (!v58)
      {
        __break(1u);
      }

      v59 = v58;
      v60 = sub_2A3E4();
      v61 = [v59 applicationIsInstalled:v60];

      if (v61)
      {
        if ((v193 & 1) == 0)
        {
          v62 = [v47 appClipMetadata];
          if (v62)
          {

            v29 = 1;
            goto LABEL_24;
          }
        }

        v63 = v0[45];
        if (!*(v63 + 16) || (sub_2A8F4(), sub_2A414(), v64 = sub_2A914(), v65 = -1 << *(v63 + 32), v66 = v64 & ~v65, ((*(v63 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0))
        {
LABEL_115:
          v129 = [v47 localizedName];
          v130 = sub_2A3F4();
          v132 = v131;

          v0[59] = v130;
          v0[60] = v132;
          v0[61] = "localizedName";
          sub_2A494();
          v133 = v47;
          v0[62] = sub_2A484();
          v75 = sub_2A474();
          v77 = sub_19D78;
          goto LABEL_141;
        }

        v67 = ~v65;
        v68 = v0[45];
        while (1)
        {
          v69 = (*(v68 + 48) + 16 * v66);
          v70 = *v69 == v34 && v69[1] == v35;
          if (v70 || (sub_2A8A4() & 1) != 0)
          {
            break;
          }

          v68 = v0[45];
          v66 = (v66 + 1) & v67;
          if (((*(v68 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_67;
    }

    v71 = v48;

    sub_29A44();

    swift_willThrow();

LABEL_70:
    v0[53] = 0;
  }

  while (v28);
  while (1)
  {
LABEL_26:
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v31 = v0[49];
    if (v32 >= (((1 << *(v0 + 706)) + 63) >> 6))
    {
      break;
    }

    v28 = *(v31 + 8 * v32 + 56);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_30;
    }
  }

  v72 = v0[39];

  if (v72 == 1)
  {
    if (qword_389F0 == -1)
    {
LABEL_75:
      v73.super.isa = qword_3AD50;
      v189._countAndFlagsBits = 0x800000000002D720;
      v204._countAndFlagsBits = 1701670728;
      v204._object = 0xE400000000000000;
      v211.value._countAndFlagsBits = 0;
      v211.value._object = 0;
      v218._countAndFlagsBits = 0;
      v218._object = 0xE000000000000000;
      v0[65] = sub_29A34(v204, v211, v73, v218, 0xD000000000000014, v189);
      v0[66] = v74;
      v0[67] = sub_2A3E4();
      v0[68] = "collationString";
      sub_2A494();
      v0[69] = sub_2A484();
      v75 = sub_2A474();
      v77 = sub_1B710;
      goto LABEL_141;
    }

LABEL_148:
    swift_once();
    goto LABEL_75;
  }

  v78 = MobileGestalt_get_current_device();
  if (!v78)
  {
    __break(1u);
    JUMPOUT(0x19CF4);
  }

  v79 = v78;

  isSimulator = MobileGestalt_get_isSimulator();

  if ((isSimulator & 1) == 0)
  {
    if (qword_38A18 != -1)
    {
      swift_once();
    }

    v0[29] = qword_39368;
    v82 = qword_38A20;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = &stru_20.segname[off_39370 + 16];
    v84 = -1;
    v85 = -1 << *(&stru_20.cmd + off_39370);
    if (-v85 < 64)
    {
      v84 = ~(-1 << -v85);
    }

    v86 = v84 & *&stru_20.segname[off_39370 + 16];
    v87 = (63 - v85) >> 6;
    v194 = v0[53];
    v198 = off_39370;

    v88 = 0;
    while (1)
    {
      v89 = v88;
      if (!v86)
      {
        break;
      }

LABEL_90:
      v90 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      v91 = *(*(v198 + 6) + (v90 | (v88 << 6)));
      v92 = objc_allocWithZone(LSApplicationRecord);
      v93 = sub_2A3E4();

      v0[30] = 0;
      v94 = [v92 initWithBundleIdentifier:v93 allowPlaceholder:0 error:v0 + 30];

      v95 = v0[30];
      if (v94)
      {
        v96 = v95;

        sub_24148(&v200, v91);
      }

      else
      {
        v97 = v95;
        sub_29A44();

        swift_willThrow();

        v194 = 0;
      }
    }

    while (1)
    {
      v88 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_146;
      }

      if (v88 >= v87)
      {

        v98 = 0;
        v99 = v0[29];
        v0[71] = v99;
        v100 = *(v99 + 32);
        *(v0 + 708) = v100;
        v101 = 1 << v100;
        v102 = *(v99 + 56);
        if (v101 < 64)
        {
          v103 = ~(-1 << v101);
        }

        else
        {
          v103 = -1;
        }

        v104 = v103 & v102;
        v0[72] = v197;
        while (v104)
        {
          v105 = v0[71];
LABEL_104:
          v0[74] = v98;
          v0[73] = v104;
          v107 = v0[49];
          v108 = *(*(v105 + 48) + (__clz(__rbit64(v104)) | (v98 << 6)));
          *(v0 + 709) = v108;
          v109 = sub_6DDC(v108);
          v111 = v110;
          if (!*(v107 + 16) || (v112 = v109, v113 = v0[49], sub_2A8F4(), sub_2A414(), v114 = sub_2A914(), v115 = -1 << *(v113 + 32), v116 = v114 & ~v115, ((*(v113 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v116) & 1) == 0))
          {
LABEL_113:

            v121 = sub_6DDC(v108);
            v123 = v122;
            v124 = objc_allocWithZone(LSApplicationRecord);

            v125 = sub_2A3E4();

            v0[31] = 0;
            v126 = [v124 initWithBundleIdentifier:v125 allowPlaceholder:1 error:v0 + 31];

            v127 = v0[31];
            if (v126)
            {
              v128 = v194;
              goto LABEL_139;
            }

            v179 = v127;
            sub_29A44();

            swift_willThrow();

            v180 = objc_allocWithZone(LSApplicationRecord);

            v181 = sub_2A3E4();

            v0[32] = 0;
            v126 = [v180 initWithBundleIdentifierOfSystemPlaceholder:v181 error:v0 + 32];

            v127 = v0[32];
            if (v126)
            {
              v128 = 0;
LABEL_139:
              v182 = v127;
              v183 = [v126 localizedName];
              v121 = sub_2A3F4();
              v185 = v184;

              v123 = v185;
            }

            else
            {
              v187 = v127;
              sub_29A44();

              swift_willThrow();

              v128 = 0;
            }

            v0[77] = v123;
            v0[76] = v121;
            v0[75] = v128;
            v0[78] = sub_6DDC(v108);
            v0[79] = v186;
            v0[80] = sub_2A3E4();
            v0[81] = "collationString";
            sub_2A494();
            v0[82] = sub_2A484();
            v75 = sub_2A474();
            v77 = sub_1C99C;
            goto LABEL_141;
          }

          v104 &= v104 - 1;
          v117 = ~v115;
          v118 = v0[49];
          while (1)
          {
            v119 = (*(v118 + 48) + 16 * v116);
            v120 = *v119 == v112 && v119[1] == v111;
            if (v120 || (sub_2A8A4() & 1) != 0)
            {
              break;
            }

            v118 = v0[49];
            v116 = (v116 + 1) & v117;
            if (((*(v118 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v116) & 1) == 0)
            {
              goto LABEL_113;
            }
          }
        }

        while (1)
        {
          v106 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_147;
          }

          v105 = v0[71];
          if (v106 >= (((1 << *(v0 + 708)) + 63) >> 6))
          {

            v81 = v194;
            goto LABEL_117;
          }

          v104 = *(v105 + 8 * v106 + 56);
          ++v98;
          if (v104)
          {
            v98 = v106;
            goto LABEL_104;
          }
        }
      }

      v86 = *&v83[8 * v88];
      ++v89;
      if (v86)
      {
        goto LABEL_90;
      }
    }
  }

  v81 = v0[53];
LABEL_117:
  v0[84] = v197;
  v134 = v0[40];
  v135 = v0[36];

  v136 = sub_1E690(v135, v134, v197);
  v0[85] = v81;

  v0[33] = v136;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v137 = qword_3AD50;
  v189._countAndFlagsBits = 0x800000000002D720;
  v205._countAndFlagsBits = 0x20746C7561666544;
  v205._object = 0xEC00000073707041;
  v212.value._countAndFlagsBits = 0;
  v212.value._object = 0;
  v138.super.isa = qword_3AD50;
  v219._countAndFlagsBits = 0;
  v219._object = 0xE000000000000000;
  v139 = sub_29A34(v205, v212, v138, v219, 0xD000000000000014, v189);
  v141 = v140;
  v190._countAndFlagsBits = 0x800000000002DAE0;
  v206._countAndFlagsBits = 0xD00000000000001DLL;
  v206._object = 0x800000000002E120;
  v213.value._countAndFlagsBits = 0;
  v213.value._object = 0;
  v199 = v137;
  v142.super.isa = v137;
  v220._countAndFlagsBits = 0;
  v220._object = 0xE000000000000000;
  v143 = sub_29A34(v206, v213, v142, v220, 0xD000000000000010, v190);
  v145 = v144;
  LOBYTE(v200) = 1;
  v146 = sub_223F8(0, 1, 1, _swiftEmptyArrayStorage);
  v148 = *(v146 + 2);
  v147 = *(v146 + 3);
  if (v148 >= v147 >> 1)
  {
    v146 = sub_223F8((v147 > 1), v148 + 1, 1, v146);
  }

  v149 = *(v0 + 705);
  *(v146 + 2) = v148 + 1;
  v150 = &v146[80 * v148];
  *(v150 + 4) = 0;
  *(v150 + 5) = 0;
  *(v150 + 6) = 0xD000000000000023;
  *(v150 + 7) = 0x800000000002E0F0;
  *(v150 + 8) = 1;
  *(v150 + 9) = v139;
  *(v150 + 10) = v141;
  *(v150 + 11) = v143;
  *(v150 + 12) = v145;
  v150[104] = 0x80;
  if (v149 == 1)
  {
    v191._countAndFlagsBits = 0x800000000002D720;
    v207._object = 0x800000000002E070;
    v207._countAndFlagsBits = 0xD000000000000010;
    v214.value._countAndFlagsBits = 0;
    v214.value._object = 0;
    v151.super.isa = v199;
    v221._countAndFlagsBits = 0;
    v221._object = 0xE000000000000000;
    v152 = sub_29A34(v207, v214, v151, v221, 0xD000000000000014, v191);
    v154 = v153;
    v192._countAndFlagsBits = 0x800000000002DAE0;
    v208._countAndFlagsBits = 0xD000000000000020;
    v208._object = 0x800000000002E1D0;
    v215.value._countAndFlagsBits = 0;
    v215.value._object = 0;
    v155.super.isa = v199;
    v222._countAndFlagsBits = 0;
    v222._object = 0xE000000000000000;
    v156 = sub_29A34(v208, v215, v155, v222, 0xD000000000000010, v192);
    LOBYTE(v200) = 1;
    v159 = *(v146 + 2);
    v158 = *(v146 + 3);
    if (v159 >= v158 >> 1)
    {
      v195 = v157;
      v196 = v156;
      v146 = sub_223F8((v158 > 1), v159 + 1, 1, v146);
      v157 = v195;
      v156 = v196;
    }

    *(v146 + 2) = v159 + 1;
    v160 = &v146[80 * v159];
    *(v160 + 2) = xmmword_2CE70;
    *(v160 + 6) = 0xD000000000000027;
    *(v160 + 7) = 0x800000000002E1A0;
    *(v160 + 8) = 1;
    *(v160 + 9) = v152;
    *(v160 + 10) = v154;
    *(v160 + 11) = v156;
    *(v160 + 12) = v157;
    v160[104] = 0x80;
  }

  v161 = *(v0 + 707);
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  v0[12] = v146;
  sub_24C38(0, 0, v0 + 4);
  if (v161)
  {
    v191._countAndFlagsBits = 0x800000000002D720;
    v209._countAndFlagsBits = 0x70696C4320707041;
    v209._object = 0xE900000000000073;
    v216.value._countAndFlagsBits = 0;
    v216.value._object = 0;
    v162.super.isa = v199;
    v223._countAndFlagsBits = 0;
    v223._object = 0xE000000000000000;
    v163 = sub_29A34(v209, v216, v162, v223, 0xD000000000000014, v191);
    v165 = v164;
    LOBYTE(v200) = 1;
    sub_2B4C(&qword_39598, &unk_2D028);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_2CE80;
    *(v166 + 32) = xmmword_2CE90;
    *(v166 + 48) = 0xD000000000000020;
    *(v166 + 56) = 0x800000000002E170;
    *(v166 + 64) = 1;
    *(v166 + 71) = 0;
    *(v166 + 69) = 0;
    *(v166 + 65) = 0;
    *(v166 + 72) = v163;
    *(v166 + 80) = v165;
    *(v166 + 88) = 0;
    *(v166 + 104) = 0;
    v167 = v0[33];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = sub_22618(0, *(v167 + 2) + 1, 1, v167);
    }

    v169 = *(v167 + 2);
    v168 = *(v167 + 3);
    if (v169 >= v168 >> 1)
    {
      v167 = sub_22618((v168 > 1), v169 + 1, 1, v167);
    }

    *(v167 + 2) = v169 + 1;
    v170 = &v167[40 * v169];
    *(v170 + 2) = xmmword_2CE70;
    *(v170 + 6) = 0;
    *(v170 + 7) = 0;
    *(v170 + 8) = v166;
    v0[33] = v167;
  }

  else
  {
    v167 = v0[33];
  }

  v191._countAndFlagsBits = 0x800000000002D720;
  v210._countAndFlagsBits = 0x41206E6564646948;
  v210._object = 0xEB00000000737070;
  v217.value._countAndFlagsBits = 0;
  v217.value._object = 0;
  v171.super.isa = v199;
  v224._countAndFlagsBits = 0;
  v224._object = 0xE000000000000000;
  v172 = sub_29A34(v210, v217, v171, v224, 0xD000000000000014, v191);
  v174 = v173;
  *(v0 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_2CE80;
  *(v175 + 32) = xmmword_2CEA0;
  *(v175 + 48) = 0xD000000000000022;
  *(v175 + 56) = 0x800000000002E140;
  *(v175 + 64) = 1;
  *(v175 + 71) = 0;
  *(v175 + 69) = 0;
  *(v175 + 65) = 0;
  *(v175 + 72) = v172;
  *(v175 + 80) = v174;
  *(v175 + 88) = 0;
  *(v175 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v167 = sub_22618(0, *(v167 + 2) + 1, 1, v167);
  }

  v177 = *(v167 + 2);
  v176 = *(v167 + 3);
  if (v177 >= v176 >> 1)
  {
    v167 = sub_22618((v176 > 1), v177 + 1, 1, v167);
  }

  v0[86] = v167;
  *(v167 + 2) = v177 + 1;
  v178 = &v167[40 * v177];
  *(v178 + 2) = xmmword_2CE90;
  *(v178 + 6) = 0;
  *(v178 + 7) = 0;
  *(v178 + 8) = v175;
  swift_unknownObjectWeakInit();
  sub_2A494();
  v0[87] = sub_2A484();
  v75 = sub_2A474();
  v77 = sub_1D598;
LABEL_141:

  return _swift_task_switch(v77, v75, v76);
}

uint64_t sub_19D78()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[38];

  v0[63] = [v3 sectionForObject:v2 collationStringSelector:v1];

  return _swift_task_switch(sub_19E3C, 0, 0);
}

uint64_t sub_19E3C()
{
  v174 = v0;
  v2 = *(v0 + 456);
  v3 = *(v0 + 448) == 0xD000000000000012 && 0x800000000002D430 == v2;
  if (v3 || (sub_2A8A4() & 1) != 0)
  {
    v4 = [objc_opt_self() sharedConnection];
    if (!v4)
    {
      __break(1u);
      goto LABEL_146;
    }

    v5 = v4;
    v6 = [v4 BOOLRestrictionForFeature:*(v0 + 416)];

    v7 = v6 == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 480);
  *(v0 + 704) = 0;
  LOBYTE(v9) = 0;
  *(v0 + 704) = 0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 512);
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v0 + 504);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_140:
  v11 = sub_266B4(v11);
  v12 = *(v0 + 504);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_141;
  }

LABEL_11:
  if (v12 >= *(v11 + 16))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v171 = v8;
  v1 = v11 + 32;
  v8 = *(v11 + 32 + 8 * v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 32 + 8 * v12) = v8;
  if ((v13 & 1) == 0)
  {
LABEL_143:
    v8 = sub_223F8(0, *(v8 + 16) + 1, 1, v8);
    *(v1 + 8 * v12) = v8;
  }

  v170 = v11;
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  if (v15 >= v14 >> 1)
  {
    *(v1 + 8 * v12) = sub_223F8((v14 > 1), v15 + 1, 1, v8);
  }

  v16 = *(v0 + 472);
  v17 = *(v0 + 448);

  v18 = *(v1 + 8 * v12);
  *(v18 + 16) = v15 + 1;
  v19 = v18 + 80 * v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = v2;
  *(v19 + 48) = v17;
  *(v19 + 56) = v2;
  *(v19 + 64) = v9;
  *(v19 + 71) = 0;
  *(v19 + 69) = 0;
  *(v19 + 65) = 0;
  *(v19 + 72) = v16;
  *(v19 + 80) = v171;
  *(v19 + 88) = v7;
  *(v19 + 104) = 0;
  v8 = *(v0 + 424);
  v20 = (*(v0 + 432) - 1) & *(v0 + 432);
  v21 = *(v0 + 707);
  v171 = "B16@?0@LSApplicationRecord8";
  v11 = *(v0 + 440);
  *(v0 + 512) = v170;
  for (i = v21; ; i = 1)
  {
    v167 = i;
    *(v0 + 707) = i & 1;
    *(v0 + 424) = v8;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    v23 = *(v0 + 392);
LABEL_22:
    *(v0 + 432) = v20;
    *(v0 + 440) = v11;
    v25 = (*(v23 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v20)))));
    v9 = *v25;
    *(v0 + 448) = *v25;
    v7 = v25[1];
    *(v0 + 456) = v7;
    v26 = qword_38A10;

    if (v26 != -1)
    {
      swift_once();
    }

    v20 &= v20 - 1;
    v27 = off_39360;
    if (*(&dword_10 + off_39360))
    {
      sub_2A8F4();
      sub_2A414();
      v28 = sub_2A914();
      v2 = (v27 + 14);
      v29 = -1 << *(&stru_20.cmd + v27);
      v1 = v28 & ~v29;
      if ((*(v27 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v1))
      {
        v30 = ~v29;
        do
        {
          v31 = (*&stru_20.segname[v27 + 8] + 16 * v1);
          v32 = *v31 == v9 && v31[1] == v7;
          if (v32 || (sub_2A8A4() & 1) != 0)
          {
            goto LABEL_60;
          }

          v1 = (v1 + 1) & v30;
        }

        while (((*(v2 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
      }
    }

    v176._countAndFlagsBits = 0xD00000000000001BLL;
    v176._object = 0x800000000002E0D0;
    v33 = sub_2A444(v176);
    v34 = objc_allocWithZone(LSApplicationRecord);
    v35 = sub_2A3E4();
    *(v0 + 224) = 0;
    v1 = [v34 initWithBundleIdentifier:v35 allowPlaceholder:v33 error:v0 + 224];
    *(v0 + 464) = v1;

    v2 = *(v0 + 224);
    if (!v1)
    {
      break;
    }

    v36 = v2;
    if ([v1 isWebApp])
    {
      v37 = *(v0 + 408);
      if (!*(v37 + 16))
      {
        goto LABEL_59;
      }

      sub_2A8F4();
      sub_2A414();
      v38 = sub_2A914();
      v39 = -1 << *(v37 + 32);
      v2 = v38 & ~v39;
      if (((*(v37 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
      {
        goto LABEL_59;
      }

      v40 = ~v39;
      v41 = *(v0 + 408);
      while (1)
      {
        v42 = (*(v41 + 48) + 16 * v2);
        v43 = *v42 == v9 && v42[1] == v7;
        if (v43 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v41 = *(v0 + 408);
        v2 = (v2 + 1) & v40;
        if (((*(v41 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    v44 = [objc_opt_self() defaultWorkspace];
    if (!v44)
    {
      __break(1u);
    }

    v2 = v44;
    v45 = sub_2A3E4();
    v46 = [v2 applicationIsInstalled:v45];

    if ((v46 & 1) == 0)
    {
      goto LABEL_59;
    }

    if ((v167 & 1) != 0 || (v47 = [v1 appClipMetadata]) == 0)
    {
      v48 = *(v0 + 360);
      if (!*(v48 + 16) || (sub_2A8F4(), sub_2A414(), v49 = sub_2A914(), v50 = -1 << *(v48 + 32), v2 = v49 & ~v50, ((*(v48 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0))
      {
LABEL_111:
        v110 = [v1 localizedName];
        v111 = sub_2A3F4();
        v113 = v112;

        *(v0 + 472) = v111;
        *(v0 + 480) = v113;
        *(v0 + 488) = "localizedName";
        sub_2A494();
        v114 = v1;
        *(v0 + 496) = sub_2A484();
        v59 = sub_2A474();
        v61 = sub_19D78;
        goto LABEL_133;
      }

      v51 = ~v50;
      v52 = *(v0 + 360);
      while (1)
      {
        v53 = (*(v52 + 48) + 16 * v2);
        v54 = *v53 == v9 && v53[1] == v7;
        if (v54 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v52 = *(v0 + 360);
        v2 = (v2 + 1) & v51;
        if (((*(v52 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
        {
          goto LABEL_111;
        }
      }

LABEL_59:

LABEL_60:

      goto LABEL_62;
    }
  }

  v55 = v2;

  v2 = sub_29A44();

  swift_willThrow();

  v8 = 0;
LABEL_62:
  *(v0 + 424) = v8;
  if (v20)
  {
    goto LABEL_17;
  }

  while (1)
  {
LABEL_18:
    v24 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v23 = *(v0 + 392);
    if (v24 >= (((1 << *(v0 + 706)) + 63) >> 6))
    {
      break;
    }

    v20 = *(v23 + 8 * v24 + 56);
    ++v11;
    if (v20)
    {
      v11 = v24;
      goto LABEL_22;
    }
  }

  v56 = *(v0 + 312);

  if (v56 == 1)
  {
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v57.super.isa = qword_3AD50;
    v162._countAndFlagsBits = 0x800000000002D720;
    v177._countAndFlagsBits = 1701670728;
    v177._object = 0xE400000000000000;
    v184.value._countAndFlagsBits = 0;
    v184.value._object = 0;
    v191._countAndFlagsBits = 0;
    v191._object = 0xE000000000000000;
    *(v0 + 520) = sub_29A34(v177, v184, v57, v191, 0xD000000000000014, v162);
    *(v0 + 528) = v58;
    *(v0 + 536) = sub_2A3E4();
    *(v0 + 544) = "collationString";
    sub_2A494();
    *(v0 + 552) = sub_2A484();
    v59 = sub_2A474();
    v61 = sub_1B710;
    goto LABEL_133;
  }

  v62 = MobileGestalt_get_current_device();
  if (!v62)
  {
LABEL_146:
    __break(1u);
    JUMPOUT(0x1B68CLL);
  }

  v63 = v62;

  isSimulator = MobileGestalt_get_isSimulator();

  v7 = v170;
  if (isSimulator)
  {

    v65 = *(v0 + 424);
  }

  else
  {
    if (qword_38A18 != -1)
    {
      swift_once();
    }

    *(v0 + 232) = qword_39368;
    v2 = qword_38A20;

    if (v2 != -1)
    {
      swift_once();
    }

    v66 = &stru_20.segname[off_39370 + 16];
    v67 = -1;
    v68 = -1 << *(&stru_20.cmd + off_39370);
    if (-v68 < 64)
    {
      v67 = ~(-1 << -v68);
    }

    v7 = v67 & *&stru_20.segname[off_39370 + 16];
    v11 = (63 - v68) >> 6;
    v168 = *(v0 + 424);
    v171 = off_39370;

    v9 = 0;
    while (1)
    {
      v69 = v9;
      if (!v7)
      {
        break;
      }

LABEL_83:
      v70 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v8 = *(*(v171 + 6) + (v70 | (v9 << 6)));
      v71 = objc_allocWithZone(LSApplicationRecord);
      v72 = sub_2A3E4();

      *(v0 + 240) = 0;
      v73 = [v71 initWithBundleIdentifier:v72 allowPlaceholder:0 error:v0 + 240];

      v1 = *(v0 + 240);
      if (v73)
      {
        v74 = v1;

        v2 = v0 + 232;
        sub_24148(v173, v8);
      }

      else
      {
        v2 = v1;
        v75 = sub_29A44();

        v8 = v75;
        swift_willThrow();

        v168 = 0;
      }
    }

    while (1)
    {
      v9 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_138;
      }

      if (v9 >= v11)
      {
        break;
      }

      v7 = *&v66[8 * v9];
      ++v69;
      if (v7)
      {
        goto LABEL_83;
      }
    }

    v76 = 0;
    v77 = *(v0 + 232);
    *(v0 + 568) = v77;
    v78 = *(v77 + 32);
    *(v0 + 708) = v78;
    v8 = 1;
    v79 = 1 << v78;
    v80 = *(v77 + 56);
    if (v79 < 64)
    {
      v81 = ~(-1 << v79);
    }

    else
    {
      v81 = -1;
    }

    v1 = v81 & v80;
    v7 = v170;
    *(v0 + 576) = v170;
    while (v1)
    {
      v2 = *(v0 + 568);
LABEL_97:
      *(v0 + 592) = v76;
      *(v0 + 584) = v1;
      v83 = *(v0 + 392);
      v11 = *(*(v2 + 48) + (__clz(__rbit64(v1)) | (v76 << 6)));
      *(v0 + 709) = v11;
      v84 = sub_6DDC(v11);
      v86 = v85;
      if (!*(v83 + 16) || (v9 = v84, v87 = *(v0 + 392), sub_2A8F4(), sub_2A414(), v88 = sub_2A914(), v89 = -1 << *(v87 + 32), v2 = v88 & ~v89, ((*(v87 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0))
      {
LABEL_106:

        v94 = sub_6DDC(v11);
        v96 = v95;
        v97 = objc_allocWithZone(LSApplicationRecord);

        v98 = sub_2A3E4();

        *(v0 + 248) = 0;
        v99 = [v97 initWithBundleIdentifier:v98 allowPlaceholder:1 error:v0 + 248];

        v100 = *(v0 + 248);
        if (v99)
        {
          goto LABEL_109;
        }

        v101 = v100;
        sub_29A44();

        swift_willThrow();

        v102 = objc_allocWithZone(LSApplicationRecord);

        v103 = sub_2A3E4();

        *(v0 + 256) = 0;
        v99 = [v102 initWithBundleIdentifierOfSystemPlaceholder:v103 error:v0 + 256];

        v100 = *(v0 + 256);
        if (v99)
        {
          v168 = 0;
LABEL_109:
          v104 = v100;
          v105 = [v99 localizedName];
          v94 = sub_2A3F4();
          v107 = v106;

          v96 = v107;
          v108 = v168;
        }

        else
        {
          v160 = v100;
          sub_29A44();

          swift_willThrow();

          v108 = 0;
        }

        *(v0 + 616) = v96;
        *(v0 + 608) = v94;
        *(v0 + 600) = v108;
        *(v0 + 624) = sub_6DDC(v11);
        *(v0 + 632) = v109;
        *(v0 + 640) = sub_2A3E4();
        *(v0 + 648) = "collationString";
        sub_2A494();
        *(v0 + 656) = sub_2A484();
        v59 = sub_2A474();
        v61 = sub_1C99C;
        goto LABEL_133;
      }

      v1 &= v1 - 1;
      v90 = ~v89;
      v91 = *(v0 + 392);
      while (1)
      {
        v92 = (*(v91 + 48) + 16 * v2);
        v93 = *v92 == v9 && v92[1] == v86;
        if (v93 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v91 = *(v0 + 392);
        v2 = (v2 + 1) & v90;
        if (((*(v91 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      v7 = v170;
    }

    while (1)
    {
      v82 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_139;
      }

      v2 = *(v0 + 568);
      if (v82 >= (((1 << *(v0 + 708)) + 63) >> 6))
      {
        break;
      }

      v1 = *(v2 + 8 * v82 + 56);
      ++v76;
      if (v1)
      {
        v76 = v82;
        goto LABEL_97;
      }
    }

    v65 = v168;
  }

  *(v0 + 672) = v7;
  v115 = *(v0 + 320);
  v116 = *(v0 + 288);

  v117 = sub_1E690(v116, v115, v7);
  *(v0 + 680) = v65;

  *(v0 + 264) = v117;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v118 = qword_3AD50;
  v162._countAndFlagsBits = 0x800000000002D720;
  v178._countAndFlagsBits = 0x20746C7561666544;
  v178._object = 0xEC00000073707041;
  v185.value._countAndFlagsBits = 0;
  v185.value._object = 0;
  v119.super.isa = qword_3AD50;
  v192._countAndFlagsBits = 0;
  v192._object = 0xE000000000000000;
  v120 = sub_29A34(v178, v185, v119, v192, 0xD000000000000014, v162);
  v122 = v121;
  v163._countAndFlagsBits = 0x800000000002DAE0;
  v179._countAndFlagsBits = 0xD00000000000001DLL;
  v179._object = 0x800000000002E120;
  v186.value._countAndFlagsBits = 0;
  v186.value._object = 0;
  v172 = v118;
  v123.super.isa = v118;
  v193._countAndFlagsBits = 0;
  v193._object = 0xE000000000000000;
  v124 = sub_29A34(v179, v186, v123, v193, 0xD000000000000010, v163);
  v126 = v125;
  v173[0] = 1;
  v127 = sub_223F8(0, 1, 1, _swiftEmptyArrayStorage);
  v129 = *(v127 + 2);
  v128 = *(v127 + 3);
  if (v129 >= v128 >> 1)
  {
    v127 = sub_223F8((v128 > 1), v129 + 1, 1, v127);
  }

  v130 = *(v0 + 705);
  *(v127 + 2) = v129 + 1;
  v131 = &v127[80 * v129];
  *(v131 + 4) = 0;
  *(v131 + 5) = 0;
  *(v131 + 6) = 0xD000000000000023;
  *(v131 + 7) = 0x800000000002E0F0;
  *(v131 + 8) = 1;
  *(v131 + 9) = v120;
  *(v131 + 10) = v122;
  *(v131 + 11) = v124;
  *(v131 + 12) = v126;
  v131[104] = 0x80;
  if (v130 == 1)
  {
    v164._countAndFlagsBits = 0x800000000002D720;
    v180._object = 0x800000000002E070;
    v180._countAndFlagsBits = 0xD000000000000010;
    v187.value._countAndFlagsBits = 0;
    v187.value._object = 0;
    v132.super.isa = v172;
    v194._countAndFlagsBits = 0;
    v194._object = 0xE000000000000000;
    v133 = sub_29A34(v180, v187, v132, v194, 0xD000000000000014, v164);
    v135 = v134;
    v165._countAndFlagsBits = 0x800000000002DAE0;
    v181._countAndFlagsBits = 0xD000000000000020;
    v181._object = 0x800000000002E1D0;
    v188.value._countAndFlagsBits = 0;
    v188.value._object = 0;
    v136.super.isa = v172;
    v195._countAndFlagsBits = 0;
    v195._object = 0xE000000000000000;
    v137 = sub_29A34(v181, v188, v136, v195, 0xD000000000000010, v165);
    v173[0] = 1;
    v140 = *(v127 + 2);
    v139 = *(v127 + 3);
    if (v140 >= v139 >> 1)
    {
      v166 = v138;
      v169 = v137;
      v127 = sub_223F8((v139 > 1), v140 + 1, 1, v127);
      v138 = v166;
      v137 = v169;
    }

    *(v127 + 2) = v140 + 1;
    v141 = &v127[80 * v140];
    *(v141 + 2) = xmmword_2CE70;
    *(v141 + 6) = 0xD000000000000027;
    *(v141 + 7) = 0x800000000002E1A0;
    *(v141 + 8) = 1;
    *(v141 + 9) = v133;
    *(v141 + 10) = v135;
    *(v141 + 11) = v137;
    *(v141 + 12) = v138;
    v141[104] = 0x80;
  }

  v142 = *(v0 + 707);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = v127;
  sub_24C38(0, 0, (v0 + 64));
  if (v142)
  {
    v164._countAndFlagsBits = 0x800000000002D720;
    v182._countAndFlagsBits = 0x70696C4320707041;
    v182._object = 0xE900000000000073;
    v189.value._countAndFlagsBits = 0;
    v189.value._object = 0;
    v143.super.isa = v172;
    v196._countAndFlagsBits = 0;
    v196._object = 0xE000000000000000;
    v144 = sub_29A34(v182, v189, v143, v196, 0xD000000000000014, v164);
    v146 = v145;
    v173[0] = 1;
    sub_2B4C(&qword_39598, &unk_2D028);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_2CE80;
    *(v147 + 32) = xmmword_2CE90;
    *(v147 + 48) = 0xD000000000000020;
    *(v147 + 56) = 0x800000000002E170;
    *(v147 + 64) = 1;
    *(v147 + 71) = 0;
    *(v147 + 69) = 0;
    *(v147 + 65) = 0;
    *(v147 + 72) = v144;
    *(v147 + 80) = v146;
    *(v147 + 88) = 0;
    *(v147 + 104) = 0;
    v148 = *(v0 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v148 = sub_22618(0, *(v148 + 2) + 1, 1, v148);
    }

    v150 = *(v148 + 2);
    v149 = *(v148 + 3);
    if (v150 >= v149 >> 1)
    {
      v148 = sub_22618((v149 > 1), v150 + 1, 1, v148);
    }

    *(v148 + 2) = v150 + 1;
    v151 = &v148[40 * v150];
    *(v151 + 2) = xmmword_2CE70;
    *(v151 + 6) = 0;
    *(v151 + 7) = 0;
    *(v151 + 8) = v147;
    *(v0 + 264) = v148;
  }

  else
  {
    v148 = *(v0 + 264);
  }

  v164._countAndFlagsBits = 0x800000000002D720;
  v183._countAndFlagsBits = 0x41206E6564646948;
  v183._object = 0xEB00000000737070;
  v190.value._countAndFlagsBits = 0;
  v190.value._object = 0;
  v152.super.isa = v172;
  v197._countAndFlagsBits = 0;
  v197._object = 0xE000000000000000;
  v153 = sub_29A34(v183, v190, v152, v197, 0xD000000000000014, v164);
  v155 = v154;
  *(v0 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_2CE80;
  *(v156 + 32) = xmmword_2CEA0;
  *(v156 + 48) = 0xD000000000000022;
  *(v156 + 56) = 0x800000000002E140;
  *(v156 + 64) = 1;
  *(v156 + 71) = 0;
  *(v156 + 69) = 0;
  *(v156 + 65) = 0;
  *(v156 + 72) = v153;
  *(v156 + 80) = v155;
  *(v156 + 88) = 0;
  *(v156 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v148 = sub_22618(0, *(v148 + 2) + 1, 1, v148);
  }

  v158 = *(v148 + 2);
  v157 = *(v148 + 3);
  if (v158 >= v157 >> 1)
  {
    v148 = sub_22618((v157 > 1), v158 + 1, 1, v148);
  }

  *(v0 + 688) = v148;
  *(v148 + 2) = v158 + 1;
  v159 = &v148[40 * v158];
  *(v159 + 2) = xmmword_2CE90;
  *(v159 + 6) = 0;
  *(v159 + 7) = 0;
  *(v159 + 8) = v156;
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v0 + 696) = sub_2A484();
  v59 = sub_2A474();
  v61 = sub_1D598;
LABEL_133:

  return _swift_task_switch(v61, v59, v60);
}