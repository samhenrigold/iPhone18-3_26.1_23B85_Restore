id ASLogCategoryDefaultLogger(uint64_t a1)
{
  if (ASLogCategoryDefaultLogger_onceToken != -1)
  {
    ASLogCategoryDefaultLogger_cold_1();
  }

  v2 = ASLogCategoryDefaultLogger_logger;

  return v2;
}

void ASDisableAccessibilitySizing()
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v0 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v0, "preferredContentSizeCategory");
    if (InstanceMethod)
    {
      v2 = InstanceMethod;
      originalPreferredContentSizeCategory = method_getImplementation(InstanceMethod);
      method_setImplementation(v2, UIContentSizeCategoryPreference_preferredContentSizeCategory);
      NSLog(@"Accessibility sizing disabled for dynamic type");
    }

    else
    {
      NSLog(@"Could not disable accessibility sizing for dynamic type");
    }
  }
}

UIContentSizeCategory UIContentSizeCategoryPreference_preferredContentSizeCategory()
{
  v0 = originalPreferredContentSizeCategory();
  if (UIContentSizeCategoryIsAccessibilityCategory(v0))
  {
    v1 = UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else
  {
    v1 = v0;
  }

  v2 = v1;

  return v1;
}

uint64_t sub_6A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_305A58();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_305E28();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB640, &qword_3172E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB648, &qword_3172E8);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB650, &qword_3172F0);
  v20 = *(v19 - 8);
  v34 = v19;
  v35 = v20;
  __chkstk_darwin(v19);
  v22 = &v32 - v21;
  v40 = a1;
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB658, &qword_3172F8);
  sub_D2F8();
  sub_3062B8();
  sub_305E18();
  v23 = sub_EC8C(&qword_3FB690, &qword_3FB640, &qword_3172E0, &protocol conformance descriptor for List<A, B>);
  sub_306808();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  sub_305B28();
  v42 = v11;
  v43 = v7;
  v44 = v23;
  v45 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_306648();

  v26 = v25;
  (*(v33 + 8))(v18, v25);
  v27 = v36;
  v28 = v37;
  v29 = v38;
  (*(v37 + 104))(v36, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v38);
  v42 = v26;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_306788();
  (*(v28 + 8))(v27, v29);
  return (*(v35 + 8))(v22, v30);
}

uint64_t sub_6F08(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB698, &unk_317310);
  sub_306A18();
  sub_30A7F8();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB6A0, &qword_317338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB670, &unk_317300);
  sub_EC8C(&qword_3FB6A8, &qword_3FB6A0, &qword_317338, &protocol conformance descriptor for [A]);
  sub_B778(&qword_3FB6B0, &type metadata accessor for AccountSettingsSection, &protocol conformance descriptor for AccountSettingsSection);
  sub_D3C4();
  return sub_306B38();
}

uint64_t sub_7068(uint64_t a1)
{
  sub_309EC8();
  if (v1)
  {
    sub_3063A8();
  }

  sub_309EB8();
  if (v2)
  {
    sub_3063A8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB680, &qword_31CCD0);
  type metadata accessor for AccountSettingsSectionView(0);
  sub_D484();
  sub_B778(&qword_3FB688, type metadata accessor for AccountSettingsSectionView, &unk_31738C);
  return sub_306B78();
}

uint64_t sub_71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountSettingsSectionView(0);
  sub_D97C(a1, a2 + *(v4 + 20), &type metadata accessor for AccountSettingsSection);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_725C@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7A8, &qword_3173E0);
  v94 = *(v1 - 8);
  __chkstk_darwin(v1);
  v93 = &v82 - v2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7B0, &qword_3173E8);
  __chkstk_darwin(v102);
  v105 = &v82 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7B8, &qword_3173F0);
  __chkstk_darwin(v111);
  v5 = &v82 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7C0, &qword_3173F8);
  v90 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v82 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7C8, &qword_317400);
  v86 = *(v99 - 8);
  __chkstk_darwin(v99);
  v84 = &v82 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7D0, &qword_317408);
  v92 = *(v103 - 8);
  __chkstk_darwin(v103);
  v91 = &v82 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7D8, &qword_317410);
  v88 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v82 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7E0, &qword_317418);
  __chkstk_darwin(v108);
  v110 = &v82 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7E8, &qword_317420);
  __chkstk_darwin(v96);
  v98 = &v82 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7F0, &qword_317428);
  __chkstk_darwin(v109);
  v100 = &v82 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7F8, &qword_317430);
  __chkstk_darwin(v97);
  v87 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB800, &qword_317438);
  __chkstk_darwin(v14 - 8);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v82 - v18;
  v19 = type metadata accessor for AccountSettingsSectionView(0);
  v20 = v19 - 8;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808, &qword_317440);
  v83 = *(v107 - 8);
  __chkstk_darwin(v107);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  KeyPath = &v82 - v26;
  v27 = sub_309ED8();
  __chkstk_darwin(v27);
  v29 = (&v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v20 + 28);
  v31 = v113;
  sub_D97C(v113 + v30, v29, &type metadata accessor for AccountSettingsSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v118 = *v29;
      KeyPath = swift_getKeyPath();
      sub_D97C(v31, &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountSettingsSectionView);
      v40 = *(v21 + 80);
      v113 = v1;
      v41 = (v40 + 16) & ~v40;
      v42 = swift_allocObject();
      sub_D9E8(&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB818, &qword_317468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB820, &qword_317470);
      sub_EC8C(&qword_3FB828, &qword_3FB818, &qword_317468, &protocol conformance descriptor for [A]);
      sub_B778(&qword_3FB830, &type metadata accessor for AccountSetting, &protocol conformance descriptor for AccountSetting);
      v43 = sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
      v44 = sub_EC8C(&qword_3FB840, &qword_3FB7C0, &qword_3173F8, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
      v45 = v101;
      v114 = v107;
      v115 = v101;
      v116 = v43;
      v117 = v44;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v46 = v93;
      sub_306B38();
      v47 = v94;
      v48 = v113;
      (*(v94 + 16))(v105, v46, v113);
      swift_storeEnumTagMultiPayload();
      v49 = sub_EC8C(&qword_3FB848, &qword_3FB7C8, &qword_317400, &protocol conformance descriptor for Button<A>);
      v114 = v99;
      v115 = v45;
      v116 = v49;
      v117 = v44;
      swift_getOpaqueTypeConformance2();
      sub_DA64();
      sub_305D48();
      sub_DBB8(v5, v110);
      swift_storeEnumTagMultiPayload();
      sub_DC28();
      sub_DD90();
      sub_305D48();
      sub_DEEC(v5);
      return (*(v47 + 8))(v46, v48);
    }

    else
    {
      v105 = sub_305B28();
      sub_D97C(v31, &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountSettingsSectionView);
      v69 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v70 = swift_allocObject();
      sub_D9E8(&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v70 + v69);
      sub_306A88();
      if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
      {
        v71 = 1;
        v72 = v107;
        v73 = v95;
        v74 = v83;
      }

      else
      {
        v105 = sub_305B28();
        sub_D97C(v113, &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountSettingsSectionView);
        v75 = swift_allocObject();
        sub_D9E8(&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v75 + v69);
        sub_306A88();
        v74 = v83;
        v73 = v95;
        v72 = v107;
        (*(v83 + 32))(v95, v24, v107);
        v71 = 0;
      }

      (*(v74 + 56))(v73, v71, 1, v72);
      v76 = *(v74 + 16);
      v76(v24, KeyPath, v72);
      sub_EB00(v73, v16, &qword_3FB800, &qword_317438);
      v77 = v87;
      v76(v87, v24, v72);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FB8A0, &unk_3174A0);
      sub_EB00(v16, v77 + *(v78 + 48), &qword_3FB800, &qword_317438);
      sub_EB68(v16, &qword_3FB800, &qword_317438);
      v79 = *(v74 + 8);
      v79(v24, v72);
      sub_EB00(v77, v98, &qword_3FB7F8, &qword_317430);
      swift_storeEnumTagMultiPayload();
      sub_EC8C(&qword_3FB860, &qword_3FB7F8, &qword_317430, &protocol conformance descriptor for TupleView<A>);
      sub_DCE0();
      v80 = v100;
      sub_305D48();
      sub_EB00(v80, v110, &qword_3FB7F0, &qword_317428);
      swift_storeEnumTagMultiPayload();
      sub_DC28();
      sub_DD90();
      sub_305D48();
      sub_EB68(v80, &qword_3FB7F0, &qword_317428);
      sub_EB68(v77, &qword_3FB7F8, &qword_317430);
      sub_EB68(v95, &qword_3FB800, &qword_317438);
      return (v79)(KeyPath, v72);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v51 = *v29;
    v50 = v29[1];
    v107 = v5;
    v52 = v31;
    v54 = v29[2];
    v53 = v29[3];
    v55 = v29[4];
    sub_D97C(v52, &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountSettingsSectionView);
    v56 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v57 = swift_allocObject();
    v58 = sub_D9E8(&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v56);
    __chkstk_darwin(v58);
    *(&v82 - 6) = v51;
    *(&v82 - 5) = v50;
    *(&v82 - 4) = v54;
    *(&v82 - 3) = v53;
    OpaqueTypeConformance2 = v55;
    sub_DFC8();
    v59 = v84;
    sub_306A68();

    v60 = v89;
    sub_305D78();
    v61 = sub_EC8C(&qword_3FB848, &qword_3FB7C8, &qword_317400, &protocol conformance descriptor for Button<A>);
    v62 = sub_EC8C(&qword_3FB840, &qword_3FB7C0, &qword_3173F8, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
    v63 = v91;
    v64 = v99;
    v65 = v101;
    sub_3064E8();
    (*(v90 + 8))(v60, v65);
    (*(v86 + 8))(v59, v64);
    v66 = v92;
    v67 = v103;
    (*(v92 + 16))(v105, v63, v103);
    swift_storeEnumTagMultiPayload();
    v114 = v64;
    v115 = v65;
    v116 = v61;
    v117 = v62;
    swift_getOpaqueTypeConformance2();
    sub_DA64();
    v68 = v107;
    sub_305D48();
    sub_DBB8(v68, v110);
    swift_storeEnumTagMultiPayload();
    sub_DC28();
    sub_DD90();
    sub_305D48();

    sub_DEEC(v68);
    return (*(v66 + 8))(v63, v67);
  }

  else
  {
    v114 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB810, &qword_317460) + 48));
    swift_getKeyPath();
    sub_D97C(v31, &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountSettingsSectionView);
    v33 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v34 = swift_allocObject();
    sub_D9E8(&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB880, &qword_317490);
    sub_EC8C(&qword_3FB888, &qword_3FB880, &qword_317490, &protocol conformance descriptor for [A]);
    sub_B778(&qword_3FB890, &type metadata accessor for AccountLink, &protocol conformance descriptor for AccountLink);
    OpaqueTypeConformance2 = sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
    v35 = v85;
    sub_306B38();
    v36 = v88;
    v37 = v104;
    (*(v88 + 16))(v98, v35, v104);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_3FB860, &qword_3FB7F8, &qword_317430, &protocol conformance descriptor for TupleView<A>);
    sub_DCE0();
    v38 = v100;
    sub_305D48();
    sub_EB00(v38, v110, &qword_3FB7F0, &qword_317428);
    swift_storeEnumTagMultiPayload();
    sub_DC28();
    sub_DD90();
    sub_305D48();
    sub_EB68(v38, &qword_3FB7F0, &qword_317428);
    (*(v36 + 8))(v35, v37);
    return sub_EB68(v29, &qword_3FB898, &qword_317498);
  }
}

uint64_t sub_8608(uint64_t a1)
{
  v2 = sub_305A08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    v6 = sub_30C7A8();
    v7 = sub_306088();
    sub_304108(v6, &dword_0, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_C5D4();
}

void sub_8754(uint64_t a1)
{
  v2 = sub_30B898();
  __chkstk_darwin(v2 - 8);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30AA18();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_30A4E8();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_308778();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_305A08();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    v16 = sub_30C7A8();
    v17 = sub_306088();
    sub_304108(v16, &dword_0, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
  }

  sub_3084E8();
  sub_30B8C8();

  v18 = v33;
  if (v33)
  {
    v19 = v33;
    sub_3084D8();
  }

  else
  {
    v20 = sub_301CB8();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  (*(v9 + 104))(v11, enum case for FlowDestination.finance(_:), v8);
  (*(v6 + 104))(v27, enum case for FlowPresentationContext.infer(_:), v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0, qword_328430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v22 = sub_30AF68();
  *(inited + 32) = v22;
  v23 = sub_30AF98();
  *(inited + 33) = v23;
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v22)
  {
    sub_30AFB8();
  }

  sub_30AFB8();
  if (sub_30AFB8() != v23)
  {
    sub_30AFB8();
  }

  (*(v28 + 104))(v30, enum case for FlowDestinationPageHeader.standard(_:), v29);
  sub_30B868();
  sub_3076F8();
  swift_allocObject();
  v24 = sub_307708();
  sub_C26C(v24, v32, &type metadata accessor for FlowAction, &unk_3FB8B0, &type metadata accessor for FlowAction);
}

uint64_t sub_8C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_307978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for AccountSettingsSectionView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v15[0] = sub_307958();
  v15[1] = v10;
  sub_D97C(a2, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountSettingsSectionView);
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_D9E8(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  (*(v5 + 32))(v13 + v12, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_E504();
  return sub_306A98();
}

void sub_8EA0(uint64_t a1)
{
  v2 = sub_30B898();
  __chkstk_darwin(v2 - 8);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30AA18();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_30A4E8();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v29 = sub_308778();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_305A08();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    v18 = sub_30C7A8();
    v19 = sub_306088();
    sub_304108(v18, &dword_0, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
  }

  sub_3084E8();
  sub_30B8C8();

  v20 = v37;
  if (v37)
  {
    v21 = v37;
    sub_3084C8();

    v22 = sub_301CB8();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v10, 1, v22) != 1)
    {
      (*(v23 + 32))(v13, v10, v22);
      goto LABEL_9;
    }
  }

  else
  {
    v22 = sub_301CB8();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  }

  v24 = ASKFinanceTypeGetUrl();
  sub_301C38();

  sub_301CB8();
  if ((*(*(v22 - 8) + 48))(v10, 1, v22) != 1)
  {
    sub_EB68(v10, &qword_3FB8E0, &qword_317E00);
  }

LABEL_9:
  sub_301CB8();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  (*(v11 + 104))(v13, enum case for FlowDestination.finance(_:), v29);
  (*(v6 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0, qword_328430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v26 = sub_30AF68();
  *(inited + 32) = v26;
  v27 = sub_30AF98();
  *(inited + 33) = v27;
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v26)
  {
    sub_30AFB8();
  }

  sub_30AFB8();
  if (sub_30AFB8() != v27)
  {
    sub_30AFB8();
  }

  (*(v32 + 104))(v34, enum case for FlowDestinationPageHeader.standard(_:), v33);
  sub_30B868();
  sub_3076F8();
  swift_allocObject();
  v28 = sub_307708();
  sub_C26C(v28, v36, &type metadata accessor for FlowAction, &unk_3FB8B0, &type metadata accessor for FlowAction);
}

uint64_t sub_954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7C0, &qword_3173F8);
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  __chkstk_darwin(v4);
  v27 = &v25 - v6;
  v7 = sub_308518();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for AccountSettingsSectionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808, &qword_317440);
  v14 = *(v26 - 8);
  __chkstk_darwin(v26);
  v16 = &v25 - v15;
  v31 = sub_308508();
  v32 = v17;
  sub_D97C(v25, v13, type metadata accessor for AccountSettingsSectionView);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = (v12 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_D9E8(v13, v20 + v18);
  (*(v8 + 32))(v20 + v19, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_E504();
  sub_306A98();
  v21 = v27;
  sub_305D78();
  sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
  sub_EC8C(&qword_3FB840, &qword_3FB7C0, &qword_3173F8, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  v22 = v26;
  v23 = v28;
  sub_3064E8();
  (*(v29 + 8))(v21, v23);
  return (*(v14 + 8))(v16, v22);
}

uint64_t sub_9930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = sub_306918();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_305BE8();
  LOBYTE(v16[0]) = 0;
  sub_9AB0(v12);
  *&v11[7] = v12[0];
  *&v11[55] = v13;
  *&v11[39] = v12[2];
  *&v11[23] = v12[1];
  v7 = v16[0];
  *&v14 = v6;
  *(&v14 + 1) = 0x3FF0000000000000;
  v15[0] = v16[0];
  *&v15[1] = *v11;
  *&v15[64] = *(&v13 + 1);
  *&v15[49] = *&v11[48];
  *&v15[33] = *&v11[32];
  *&v15[17] = *&v11[16];

  sub_EB00(&v14, v16, &qword_3FB920, &qword_3176C8);

  *a2 = v5;
  v8 = *&v15[32];
  *(a2 + 40) = *&v15[16];
  *(a2 + 56) = v8;
  *(a2 + 72) = *&v15[48];
  *(a2 + 88) = *&v15[64];
  v9 = *v15;
  *(a2 + 8) = v14;
  *(a2 + 24) = v9;
  v16[0] = v6;
  v16[1] = 0x3FF0000000000000;
  v17 = v7;
  v18 = *v11;
  *&v21[15] = *&v11[63];
  *v21 = *&v11[48];
  v20 = *&v11[32];
  v19 = *&v11[16];
  sub_EB68(v16, &qword_3FB920, &qword_3176C8);
}

uint64_t sub_9AB0@<X0>(uint64_t a2@<X8>)
{
  sub_E504();

  v3 = sub_3063C8();
  v5 = v4;
  v7 = v6;
  sub_306168();
  v8 = sub_306388();
  v31 = v9;
  v32 = v8;
  v30 = v10;
  v33 = v11;

  sub_EBC8(v3, v5, v7 & 1);

  v12 = sub_3063C8();
  v14 = v13;
  v16 = v15;
  sub_306258();
  v17 = sub_306388();
  v19 = v18;
  v21 = v20;

  sub_EBC8(v12, v14, v16 & 1);

  sub_305E98();
  v22 = sub_306348();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_EBC8(v17, v19, v21 & 1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_EBD8(v32, v31, v30 & 1);

  sub_EBD8(v22, v24, v26 & 1);

  sub_EBC8(v22, v24, v26 & 1);

  sub_EBC8(v32, v31, v30 & 1);
}

double sub_9CE8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v3;
  v20 = *(v1 + 32);
  v4 = sub_305AA8();
  v18 = 0;
  sub_9930(v19, &v11);
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v21 = v11;
  v22 = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[0] = v11;
  v27[1] = v12;
  sub_EB00(&v21, &v10, &qword_3FB918, &qword_3176C0);
  sub_EB68(v27, &qword_3FB918, &qword_3176C0);
  *&v17[39] = v23;
  *&v17[55] = v24;
  *&v17[71] = v25;
  *&v17[87] = v26;
  *&v17[7] = v21;
  *&v17[23] = v22;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = v5;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v9;
  *(a1 + 112) = *&v17[95];
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_9E04()
{
  v0 = sub_30BF38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_30BF58();
  __swift_allocate_value_buffer(v1, qword_3FA8F8);
  __swift_project_value_buffer(v1, qword_3FA8F8);
  sub_30BF28();
  return sub_30BF48();
}

id sub_9ED0(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_30B6E8();
  v9 = __chkstk_darwin(v8 - 8);
  if (a1)
  {

    return [a3 presentViewController:a4 animated:1 completion:{0, v9}];
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_3FA8F0 != -1)
    {
      swift_once();
    }

    v11 = sub_30BF58();
    __swift_project_value_buffer(v11, qword_3FA8F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
    sub_30B708();
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B6D8();
    v17._countAndFlagsBits = 0xD000000000000028;
    v17._object = 0x8000000000335F10;
    sub_30B6C8(v17);
    swift_getErrorValue();
    v12 = sub_30D788();
    v15[3] = &type metadata for String;
    v15[0] = v12;
    v15[1] = v13;
    sub_30B6A8();
    sub_EB68(v15, &unk_3FBB70, &unk_3174C0);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_30B6C8(v18);
    sub_30B6F8();
    sub_30BDC8();
  }

  else
  {
    if (qword_3FA8F0 != -1)
    {
      swift_once();
    }

    v14 = sub_30BF58();
    __swift_project_value_buffer(v14, qword_3FA8F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
    sub_30B708();
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B698();
    sub_30BDC8();
  }
}

void sub_A28C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_A304()
{
  result = [objc_allocWithZone(type metadata accessor for Delegate()) init];
  qword_3FA918 = result;
  return result;
}

id sub_A664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroBorder.BorderShape(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HeroBorder.BorderShape(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_A7C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A7E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_A984(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_A9FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_AA58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_AA84@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_AB3C(uint64_t a1, uint64_t a2)
{
  result = sub_30C508();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_AB90(uint64_t a1, uint64_t a2)
{
  v3 = sub_30C518();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_AC18(uint64_t a1, uint64_t a2)
{
  result = sub_302E08();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_AC6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_302E18();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

Swift::Int sub_AD00()
{
  v1 = *v0;
  sub_30D7F8();
  sub_30D808(v1);
  return sub_30D858();
}

Swift::Int sub_AD74(uint64_t a1)
{
  v2 = *v1;
  sub_30D7F8();
  sub_30D808(v2);
  return sub_30D858();
}

uint64_t sub_ADB8(uint64_t a1, id *a2)
{
  result = sub_30C0B8();
  *a2 = 0;
  return result;
}

uint64_t sub_AE30(uint64_t a1, id *a2)
{
  v3 = sub_30C0C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_AEB0@<X0>(uint64_t *a1@<X8>)
{
  sub_30C0D8();
  v2 = sub_30C098();

  *a1 = v2;
  return result;
}

void sub_AEFC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_30D838(*&v1);
}

double sub_AF5C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_AF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_30C0D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_AFD4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_B004@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_B030@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_B104@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_C820(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_B150(uint64_t a1)
{
  sub_B778(&qword_3FB400, type metadata accessor for TextStyle, &unk_315C84);
  sub_B778(&qword_3FB408, type metadata accessor for TextStyle, &unk_315C24);

  return sub_30D6A8();
}

uint64_t sub_B220(uint64_t a1)
{
  sub_B778(&qword_3FB6F8, type metadata accessor for Weight, &unk_31689C);
  sub_B778(&qword_3FB700, type metadata accessor for Weight, &unk_31683C);
  sub_D55C();
  return sub_30D6A8();
}

uint64_t sub_B2FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_D5B0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_B33C(uint64_t a1)
{
  sub_B778(&qword_3FB928, type metadata accessor for AIDAServiceType, &unk_3175E8);
  sub_B778(&qword_3FB930, type metadata accessor for AIDAServiceType, &unk_317590);

  return sub_30D6A8();
}

uint64_t sub_B3F8(uint64_t a1)
{
  sub_B778(&unk_404010, type metadata accessor for OpenExternalURLOptionsKey, &unk_31729C);
  sub_B778(&qword_3FB6E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_316EF0);

  return sub_30D6A8();
}

uint64_t sub_B4B4(uint64_t a1)
{
  sub_B778(&qword_3FB3F0, type metadata accessor for CAGradientLayerType, &unk_315FF4);
  sub_B778(&qword_3FB3F8, type metadata accessor for CAGradientLayerType, &unk_315F94);

  return sub_30D6A8();
}

uint64_t sub_B570(uint64_t a1)
{
  sub_B778(&qword_3FB968, type metadata accessor for URLResourceKey, &unk_3177C8);
  sub_B778(&unk_3FB970, type metadata accessor for URLResourceKey, &unk_317768);

  return sub_30D6A8();
}

uint64_t sub_B62C(uint64_t a1)
{
  sub_B778(&qword_3FB420, type metadata accessor for UIContentSizeCategory, &unk_315900);
  sub_B778(&qword_3FB428, type metadata accessor for UIContentSizeCategory, &unk_3158A0);

  return sub_30D6A8();
}

uint64_t sub_B778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B808(uint64_t a1)
{
  sub_B778(&qword_3FB410, type metadata accessor for Key, &unk_316364);
  sub_B778(&qword_3FB418, type metadata accessor for Key, &unk_315A40);

  return sub_30D6A8();
}

_DWORD *sub_BBDC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_BBEC@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_BBF8(uint64_t a1)
{
  sub_B778(&qword_3FB6E8, type metadata accessor for UILayoutPriority, &unk_316DF8);
  sub_B778(&qword_3FB6F0, type metadata accessor for UILayoutPriority, &unk_316D98);
  return sub_30D6A8();
}

uint64_t sub_BCB4(uint64_t a1)
{
  sub_B778(&qword_3FB6C8, type metadata accessor for TraitKey, &unk_317064);
  sub_B778(&unk_3FB6D0, type metadata accessor for TraitKey, &unk_317004);

  return sub_30D6A8();
}

uint64_t sub_BD70@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_30C098();

  *a2 = v3;
  return result;
}

uint64_t sub_BDB8(uint64_t a1)
{
  sub_B778(&qword_3FB6B8, type metadata accessor for AttributeName, &unk_317258);
  sub_B778(&qword_3FB6C0, type metadata accessor for AttributeName, &unk_31715C);

  return sub_30D6A8();
}

uint64_t sub_BE74()
{
  sub_30C0D8();
  v0 = sub_30C2C8();

  return v0;
}

uint64_t sub_BEB0(uint64_t a1)
{
  sub_30C0D8();
  sub_30C1F8();
}

Swift::Int sub_BF04(uint64_t a1)
{
  sub_30C0D8();
  sub_30D7F8();
  sub_30C1F8();
  v1 = sub_30D858();

  return v1;
}

void sub_BF80()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_30D828(LODWORD(v1));
}

uint64_t sub_BFBC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_BFD8(void *a1, uint64_t *a2)
{
  v2 = sub_30C0D8();
  v4 = v3;
  if (v2 == sub_30C0D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_30D728();
  }

  return v7 & 1;
}

uint64_t sub_C26C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v25[0] = sub_302558();
  v10 = *(v25[0] - 8);
  __chkstk_darwin(v25[0]);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_305A08();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = (a3)(0, v15);
  v26[4] = sub_B778(a4, a5, &protocol conformance descriptor for Action);
  v26[0] = a1;
  v18 = *a2;
  v19 = *(a2 + 8);

  if ((v19 & 1) == 0)
  {
    v20 = sub_30C7A8();
    v21 = sub_306088();
    sub_304108(v20, &dword_0, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60, &qword_3174B0);
  sub_30B8E8();

  (*(v10 + 104))(v12, enum case for ActionMetricsBehavior.notProcessed(_:), v25[0]);
  if (v19)
  {
    v25[1] = v18;
  }

  else
  {

    v22 = sub_30C7A8();
    v23 = sub_306088();
    sub_304108(v22, &dword_0, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v13);
  }

  swift_getObjectType();
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v10 + 8))(v12, v25[0]);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_C5D4()
{
  v0 = [objc_allocWithZone(AAUISignInController) init];
  v12 = v0;
  if (qword_3FA910 != -1)
  {
    swift_once();
    v0 = v12;
  }

  [v0 setDelegate:qword_3FA918];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FB8C0, &qword_3174B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_315430;
  v2 = AIDAServiceTypeStore;
  *(v1 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v3 = v2;
  isa = sub_30C358().super.isa;

  [v12 setServiceTypes:isa];

  v5 = [objc_opt_self() mt_rootViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mt_topViewController];

    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v12;
      aBlock[4] = sub_E3BC;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_A28C;
      aBlock[3] = &block_descriptor;
      v9 = _Block_copy(aBlock);
      v10 = v7;
      v11 = v12;

      [v11 prepareInViewController:v10 completion:v9];
      _Block_release(v9);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_C820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_C950(uint64_t *a1, int a2)
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

uint64_t sub_C998(uint64_t result, int a2, int a3)
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

uint64_t sub_CA54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CA74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_D2F8()
{
  result = qword_3FB660;
  if (!qword_3FB660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB658, &qword_3172F8);
    sub_D3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB660);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_D3C4()
{
  result = qword_3FB668;
  if (!qword_3FB668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB670, &unk_317300);
    sub_D484();
    sub_B778(&qword_3FB688, type metadata accessor for AccountSettingsSectionView, &unk_31738C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB668);
  }

  return result;
}

unint64_t sub_D484()
{
  result = qword_3FB678;
  if (!qword_3FB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB680, &qword_31CCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB678);
  }

  return result;
}

uint64_t type metadata accessor for AccountSettingsSectionView(uint64_t a1)
{
  result = qword_3FB768;
  if (!qword_3FB768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_D55C()
{
  result = qword_3FB708;
  if (!qword_3FB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB708);
  }

  return result;
}

uint64_t sub_D5B0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_D5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_309ED8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_D6B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_309ED8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_D754(uint64_t a1)
{
  sub_D7D8(319);
  if (v1 <= 0x3F)
  {
    sub_309ED8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_D7D8(uint64_t a1)
{
  if (!qword_3FB778)
  {
    sub_30B9A8();
    v1 = sub_3050B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3FB778);
    }
  }
}

uint64_t sub_D830()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB650, &qword_3172F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB648, &qword_3172E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB640, &qword_3172E0);
  sub_305E28();
  sub_EC8C(&qword_3FB690, &qword_3FB640, &qword_3172E0, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_D9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettingsSectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_DA64()
{
  result = qword_3FB850;
  if (!qword_3FB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7A8, &qword_3173E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB808, &qword_317440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7C0, &qword_3173F8);
    sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
    sub_EC8C(&qword_3FB840, &qword_3FB7C0, &qword_3173F8, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB850);
  }

  return result;
}

uint64_t sub_DBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7B8, &qword_3173F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DC28()
{
  result = qword_3FB858;
  if (!qword_3FB858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7F0, &qword_317428);
    sub_EC8C(&qword_3FB860, &qword_3FB7F8, &qword_317430, &protocol conformance descriptor for TupleView<A>);
    sub_DCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB858);
  }

  return result;
}

unint64_t sub_DCE0()
{
  result = qword_3FB868;
  if (!qword_3FB868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7D8, &qword_317410);
    sub_EC8C(&qword_3FB838, &qword_3FB808, &qword_317440, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB868);
  }

  return result;
}

unint64_t sub_DD90()
{
  result = qword_3FB870;
  if (!qword_3FB870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7B8, &qword_3173F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7C8, &qword_317400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB7C0, &qword_3173F8);
    sub_EC8C(&qword_3FB848, &qword_3FB7C8, &qword_317400, &protocol conformance descriptor for Button<A>);
    sub_EC8C(&qword_3FB840, &qword_3FB7C0, &qword_3173F8, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
    swift_getOpaqueTypeConformance2();
    sub_DA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB870);
  }

  return result;
}

uint64_t sub_DEEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB7B8, &qword_3173F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DF6C@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v5;
}

unint64_t sub_DFC8()
{
  result = qword_3FB878;
  if (!qword_3FB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB878);
  }

  return result;
}

uint64_t sub_E034(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AccountSettingsSectionView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AccountSettingsSectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  sub_309ED8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {

      goto LABEL_9;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    v7 = sub_307948();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5, 1, v7))
    {
      (*(v8 + 8))(v5, v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB810, &qword_317460);
  }

LABEL_9:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E2A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountSettingsSectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_E37C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E3F4()
{
  v1 = *(type metadata accessor for AccountSettingsSectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_307978();
  v3 = sub_307968();
  sub_C26C(v3, (v0 + v2), &type metadata accessor for Action, &qword_3FBDA0, &type metadata accessor for Action);
}

unint64_t sub_E504()
{
  result = qword_3FB8D0;
  if (!qword_3FB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB8D0);
  }

  return result;
}

uint64_t objectdestroy_149Tm(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for AccountSettingsSectionView(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*v3 + 64);
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);

  v11 = v1 + v5 + v3[7];
  sub_309ED8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {

      goto LABEL_9;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    v13 = sub_307948();
    v16 = *(v13 - 8);
    if (!(*(v16 + 48))(v11, 1, v13))
    {
      (*(v16 + 8))(v11, v13);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB810, &qword_317460);
  }

LABEL_9:
  v14 = (v5 + v6 + v9) & ~v9;
  (*(v8 + 8))(v1 + v14, v7);

  return _swift_deallocObject(v1, v14 + v10, v4 | v9 | 7);
}

uint64_t sub_E7B8()
{
  v1 = *(type metadata accessor for AccountSettingsSectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_308518();
  v3 = sub_3084F8();
  sub_C26C(v3, (v0 + v2), &type metadata accessor for FlowAction, &unk_3FB8B0, &type metadata accessor for FlowAction);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_E8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_E924(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_E980()
{
  result = qword_3FB8F0;
  if (!qword_3FB8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB8F8, &qword_317528);
    sub_DC28();
    sub_DD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB8F0);
  }

  return result;
}

uint64_t sub_EB00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_EB68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_EBC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_EBD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_EBFC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_EC8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AlertActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_308778();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_30BE28();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_30C438();
  v3[14] = sub_30C428();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_F004;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v6, v6);
}

uint64_t sub_F004()
{
  *(*v1 + 128) = v0;

  v3 = sub_30C3F8();
  if (v0)
  {
    v4 = sub_F384;
  }

  else
  {
    v4 = sub_F160;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_F160()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v22 = v0[7];
  v6 = v0[5];

  v23 = v0[3];
  sub_F400();
  (*(v2 + 16))(v1, v6, v3);

  v8 = sub_F644(v7, v1);

  ObjectType = swift_getObjectType();
  *v4 = v8;
  (*(v5 + 104))(v4, enum case for FlowDestination.viewController(_:), v22);
  v10 = qword_3FAC80;
  v11 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  v16 = type metadata accessor for FlowPresentationHints(0);
  v17 = __swift_project_value_buffer(v16, qword_40A540);
  (*(v23 + 32))(v13, v17, 0, 0, ObjectType);
  swift_unknownObjectRelease();

  (*(v12 + 8))(v13, v14);
  v18 = enum case for ActionOutcome.performed(_:);
  v19 = sub_30B8A8();
  (*(*(v19 - 8) + 104))(v15, v18, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_F384()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_F400()
{
  result = qword_3FBAE0;
  if (!qword_3FBAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FBAE0);
  }

  return result;
}

uint64_t sub_F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_F4FC;

  return AlertActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_F4FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_F9C0();

  return sub_30BD08();
}

id sub_F644(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_30BDF8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30BDE8();
  if (v7)
  {
    v8 = sub_30C098();
  }

  else
  {
    v8 = 0;
  }

  sub_30BE18();
  if (v9)
  {
    v10 = sub_30C098();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = v11;
  v13 = sub_30BE08();
  v14 = *(v13 + 16);
  if (v14)
  {
    v23[1] = v13;
    v24 = a2;
    v15 = v12;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v16 = v18;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v16(v6, v19, v3);
      sub_30C918();
      (*(v17 - 8))(v6, v3);
      v19 += v20;
      --v14;
    }

    while (v14);

    a2 = v24;
    v12 = v15;
  }

  else
  {
  }

  v21 = sub_30BE28();
  (*(*(v21 - 8) + 8))(a2, v21);
  return v12;
}

unint64_t sub_F880()
{
  result = qword_3FBAA0;
  if (!qword_3FBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertActionImplementation(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AlertActionImplementation(_WORD *result, int a2, int a3)
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

unint64_t sub_F9C0()
{
  result = qword_3FBAA8;
  if (!qword_3FBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAA8);
  }

  return result;
}

uint64_t AlertSheetActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_308778();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_308B08();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_30C438();
  v3[14] = sub_30C428();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_FBAC;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v6, v6);
}

uint64_t sub_FBAC()
{
  *(*v1 + 128) = v0;

  v3 = sub_30C3F8();
  if (v0)
  {
    v4 = sub_F384;
  }

  else
  {
    v4 = sub_FD08;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_FD08()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v22 = v0[7];
  v6 = v0[5];

  v23 = v0[3];
  sub_F400();
  (*(v2 + 16))(v1, v6, v3);

  v8 = sub_10030(v7, v1);

  ObjectType = swift_getObjectType();
  *v4 = v8;
  (*(v5 + 104))(v4, enum case for FlowDestination.viewController(_:), v22);
  v10 = qword_3FAC80;
  v11 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  v16 = type metadata accessor for FlowPresentationHints(0);
  v17 = __swift_project_value_buffer(v16, qword_40A540);
  (*(v23 + 32))(v13, v17, 0, 0, ObjectType);
  swift_unknownObjectRelease();

  (*(v12 + 8))(v13, v14);
  v18 = enum case for ActionOutcome.performed(_:);
  v19 = sub_30B8A8();
  (*(*(v19 - 8) + 104))(v15, v18, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_F4FC;

  return AlertSheetActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_FFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1032C();

  return sub_30BD08();
}

id sub_10030(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_30BDF8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_308AD8();
  if (v7)
  {
    v8 = sub_30C098();
  }

  else
  {
    v8 = 0;
  }

  sub_308AF8();
  if (v9)
  {
    v10 = sub_30C098();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v10 preferredStyle:0];

  v12 = v11;
  v13 = sub_308AE8();
  v14 = *(v13 + 16);
  if (v14)
  {
    v23[1] = v13;
    v24 = a2;
    v15 = v12;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v16 = v18;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v16(v6, v19, v3);
      sub_30C918();
      (*(v17 - 8))(v6, v3);
      v19 += v20;
      --v14;
    }

    while (v14);

    a2 = v24;
    v12 = v15;
  }

  else
  {
  }

  v21 = sub_308B08();
  (*(*(v21 - 8) + 8))(a2, v21);
  return v12;
}

unint64_t sub_1026C()
{
  result = qword_3FBAB0;
  if (!qword_3FBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAB0);
  }

  return result;
}

unint64_t sub_102C4()
{
  result = qword_3FBAB8;
  if (!qword_3FBAB8)
  {
    sub_308B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAB8);
  }

  return result;
}

unint64_t sub_1032C()
{
  result = qword_3FBAC0;
  if (!qword_3FBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAC0);
  }

  return result;
}

uint64_t TextFieldAlertActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_308778();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_309CA8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_30C438();
  v3[14] = sub_30C428();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_10518;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v6, v6);
}

uint64_t sub_10518()
{
  *(*v1 + 128) = v0;

  v3 = sub_30C3F8();
  if (v0)
  {
    v4 = sub_F384;
  }

  else
  {
    v4 = sub_10674;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10674()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v22 = v0[7];
  v6 = v0[5];

  v23 = v0[3];
  sub_124C4(0, &qword_3FBAE0, UIAlertController_ptr);
  (*(v2 + 16))(v1, v6, v3);

  v8 = sub_108A0(v7, v1);
  ObjectType = swift_getObjectType();
  *v4 = v8;
  (*(v5 + 104))(v4, enum case for FlowDestination.viewController(_:), v22);
  v10 = qword_3FAC80;
  v11 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  v16 = type metadata accessor for FlowPresentationHints(0);
  v17 = __swift_project_value_buffer(v16, qword_40A540);
  (*(v23 + 32))(v13, v17, 0, 0, ObjectType);
  swift_unknownObjectRelease();

  (*(v12 + 8))(v13, v14);
  v18 = enum case for ActionOutcome.performed(_:);
  v19 = sub_30B8A8();
  (*(*(v19 - 8) + 104))(v15, v18, v19);

  v20 = v0[1];

  return v20();
}

id sub_108A0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = sub_309BF8();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_309C58();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_309C28();
  v9 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_309C88();
  v12 = sub_30C098();

  sub_309C98();
  if (v13)
  {
    v14 = sub_30C098();
  }

  else
  {
    v14 = 0;
  }

  v15 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  v16 = v15;
  sub_309C68();
  v17 = v26;

  (*(v9 + 8))(v11, v22);
  sub_309C78();
  v18 = sub_10F60(v17, v8);
  (*(v6 + 8))(v8, v23);
  sub_309BB8();
  sub_111F4(v5, v18);
  (*(v24 + 8))(v5, v25);
  [v16 setPreferredAction:v18];

  v19 = sub_309CA8();
  (*(*(v19 - 8) + 8))(a2, v19);
  return v16;
}

uint64_t sub_10BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_F4FC;

  return TextFieldAlertActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_10C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_12144();

  return sub_30BD08();
}

id sub_10CE0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_309C28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = sub_309C08();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v5 + 32))(v11 + v9, v7, v4);
  *(v11 + v10) = a1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  v12 = sub_30C098();

  aBlock[4] = sub_127DC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AB10;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  v14 = [objc_opt_self() actionWithTitle:v12 style:1 handler:v13];
  _Block_release(v13);

  [v18 addAction:v14];
  return v14;
}

id sub_10F60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_309C58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = sub_309C38();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v5 + 32))(v11 + v9, v7, v4);
  *(v11 + v10) = a1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  v12 = sub_30C098();

  aBlock[4] = sub_12498;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AB10;
  aBlock[3] = &block_descriptor_19;
  v13 = _Block_copy(aBlock);

  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v14 setEnabled:0];
  [v18 addAction:v14];
  return v14;
}

void sub_111F4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_309BF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a2;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1223C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AB10;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);
  v15 = a2;

  [v2 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
}

uint64_t sub_113D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 text];
  if (v8)
  {
    v9 = v8;
    v10 = *(v5 + OBJC_IVAR____TtCE23ShelfKitCollectionViewsCSo17UIAlertControllerP33_006C8966AE5A6C51837270F17692605817TextFieldDelegate_action);
    v11 = sub_30C098();
    v12 = [v9 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

    v13 = sub_30C0D8();
    v15 = v14;

    v17 = v13;
    sub_120F0();
    LOBYTE(v13) = sub_30C5A8();

    [v10 setEnabled:{v13 & 1, v17, v15}];
  }

  return 1;
}

id DownloadsCVCLibraryActionControllerBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_115F4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_309BC8();
  if (v6)
  {
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {

      v9 = sub_309BE8();
      if (!v10)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v8 = sub_30C098();

    [a1 setPlaceholder:v8];
  }

  v9 = sub_309BE8();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_30C098();

    [a1 setText:v12];

    [a3 setEnabled:1];
  }

  else
  {
  }

LABEL_14:
  [a1 setKeyboardType:sub_309BD8()];
  v13 = _s17TextFieldDelegateCMa();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtCE23ShelfKitCollectionViewsCSo17UIAlertControllerP33_006C8966AE5A6C51837270F17692605817TextFieldDelegate_action] = a3;
  v20.receiver = v14;
  v20.super_class = v13;
  v15 = a3;
  v16 = objc_msgSendSuper2(&v20, "init");
  [a1 setDelegate:v16];
  if (qword_3FA920 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = off_3FBAD0;
  off_3FBAD0 = 0x8000000000000000;
  sub_122FC(v17, a1, isUniquelyReferenced_nonNull_native, &v19);
  off_3FBAD0 = v19;
  swift_endAccess();
}

void sub_117F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_308668();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3041E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v13 = Strong, v14 = [Strong textFields], v13, !v14))
  {
LABEL_11:
    sub_304158();
    v18 = sub_3041D8();
    v19 = sub_30C798();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Unable to perform cancel action because no text field exists!", v20, 2u);
    }

    (*(v9 + 8))(v11, v8);
    return;
  }

  sub_124C4(0, &qword_3FBB38, UITextField_ptr);
  v15 = sub_30C368();

  if (v15 >> 62)
  {
    if (sub_30D668())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_30D578();
    goto LABEL_8;
  }

  if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
  {
    v16 = *(v15 + 32);
LABEL_8:
    v17 = v16;

    sub_309C18();

    sub_308678();
    sub_308658();

    (*(v5 + 8))(v7, v4);
    sub_1250C(v17);

    return;
  }

  __break(1u);
}

void sub_11AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v4 = sub_308668();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3041E8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_24;
  }

  v18 = Strong;
  v19 = [Strong textFields];

  if (!v19)
  {
    goto LABEL_24;
  }

  sub_124C4(0, &qword_3FBB38, UITextField_ptr);
  v20 = sub_30C368();

  if (v20 >> 62)
  {
    if (sub_30D668())
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_23:

LABEL_24:
    sub_304158();
    v36 = sub_3041D8();
    v37 = sub_30C798();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Unable to perform submit action because no text field exists!", v38, 2u);
    }

    (*(v8 + 8))(v16, v7);
    return;
  }

LABEL_5:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_30D578();
LABEL_8:
    v22 = v21;

    [v22 resignFirstResponder];
    v23 = [v22 text];
    if (v23)
    {
      v24 = v23;
      v25 = sub_30C0D8();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = sub_309C48();
        v29(&v42, v25, v27);

        if (v43)
        {
          sub_12658(&v42, v44);
          sub_12670(v44, &v42);

          sub_308678();
          sub_308658();

          (*(v40 + 8))(v6, v4);
          __swift_destroy_boxed_opaque_existential_1(v44);
        }

        else
        {
          sub_125F0(&v42);
          sub_304158();
          v33 = sub_3041D8();
          v34 = sub_30C798();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_0, v33, v34, "Unable to perform submit action because factory returned nil!", v35, 2u);
          }

          (*(v8 + 8))(v13, v7);
        }

LABEL_18:
        sub_1250C(v22);

        return;
      }
    }

    sub_304158();
    v30 = sub_3041D8();
    v31 = sub_30C798();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Unable to perform submit action because text is empty!", v32, 2u);
    }

    (*(v8 + 8))(v10, v7);
    goto LABEL_18;
  }

  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
    v21 = *(v20 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_1200C()
{
  result = qword_3FBAE8;
  if (!qword_3FBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAE8);
  }

  return result;
}

unint64_t sub_12064()
{
  result = qword_3FBAF0;
  if (!qword_3FBAF0)
  {
    sub_309CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBAF0);
  }

  return result;
}

unint64_t sub_120F0()
{
  result = qword_401950;
  if (!qword_401950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401950);
  }

  return result;
}

unint64_t sub_12144()
{
  result = qword_3FBB30;
  if (!qword_3FBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBB30);
  }

  return result;
}

uint64_t sub_12198()
{
  v1 = sub_309BF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1223C(void *a1)
{
  v3 = *(sub_309BF8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_115F4(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_122FC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  result = sub_191978(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_292914(v14, a3 & 1);
      result = sub_191978(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_30D778();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_296A28();
      result = v17;
    }
  }

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_12448()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_124C4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1250C(uint64_t a1)
{
  if (qword_3FA920 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_191978(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = off_3FBAD0;
    v8 = off_3FBAD0;
    off_3FBAD0 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_296A28();
      v6 = v8;
    }

    swift_unknownObjectRelease();
    sub_1B3CFC(v4, v6);
    off_3FBAD0 = v6;
  }

  return swift_endAccess();
}

uint64_t sub_125F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB40, &qword_31EF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12658(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_12670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_12808(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v3 + 16);

  return a3(a1, v10, v3 + v6, v8, v9);
}

uint64_t RootActionRunner.__allocating_init(target:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning(0)) init];
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t RootActionRunner.init(target:)(void *a1)
{
  *(v1 + 16) = [objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning(0)) init];
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v1;
}

void *sub_12A18()
{
  v1 = sub_30BF58();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [result nextResponder];

    if (!v7)
    {
      return 0;
    }

    v8 = sub_30C678();

    result = v8;
    if (v8 && v8 == v0)
    {
      sub_30BF18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
      sub_30B708();
      *(swift_allocObject() + 16) = xmmword_315430;
      sub_30B698();
      sub_30BDC8();
      swift_unknownObjectRelease();

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_12C40(void *a1)
{
  v103 = a1;
  v1 = sub_30B6E8();
  __chkstk_darwin(v1 - 8);
  v82 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_30BF58();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_30A7A8();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_309CA8();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v69 - v7;
  v74 = sub_3083A8();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_308368();
  __chkstk_darwin(v9 - 8);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB50, &unk_317B10);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v69 - v11;
  v91 = sub_30B8B8();
  v86 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = &v69 - v14;
  v95 = sub_308C18();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v69 - v17;
  v18 = sub_30ADA8();
  v97 = *(v18 - 8);
  v98 = v18;
  __chkstk_darwin(v18);
  v96 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = sub_30AA88();
  v99 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  v29 = sub_30B8A8();
  v30 = *(v29 - 8);
  v100 = v29;
  v101 = v30;
  __chkstk_darwin(v29);
  v102 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  sub_30B968();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = UIResponder.nearestFlowController.getter();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v106[0] = v34;
  v106[1] = v36;
  v37 = sub_30B918();

  swift_unknownObjectRelease();
  sub_12670(v103, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
  sub_3076F8();
  if (swift_dynamicCast())
  {
    sub_14330(v104[0], v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v101 + 104))(v102, enum case for ActionOutcome.performed(_:), v100);
    v38 = sub_30BEC8();
LABEL_6:

    goto LABEL_17;
  }

  sub_308A48();
  if (swift_dynamicCast())
  {
    sub_17764(v104[0], v37);
    goto LABEL_16;
  }

  sub_307B58();
  if (swift_dynamicCast())
  {
    sub_14CCC(v104[0], v37);
    goto LABEL_16;
  }

  sub_3079D8();
  if (swift_dynamicCast())
  {
    sub_156D8(v104[0], v37);
    goto LABEL_16;
  }

  sub_30A568();
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    __swift_project_boxed_opaque_existential_1Tm(v104, v105);
    sub_30A898();
    __swift_destroy_boxed_opaque_existential_1(v104);
    goto LABEL_16;
  }

  sub_3077E8();
  if (swift_dynamicCast())
  {
    v40 = sub_17CFC(v104[0], v37);
LABEL_33:
    v38 = v40;
    goto LABEL_6;
  }

  sub_3088B8();
  if (swift_dynamicCast())
  {
    v40 = sub_18148(v104[0], v37);
    goto LABEL_33;
  }

  sub_308E88();
  if (swift_dynamicCast())
  {
    v40 = sub_18594(v104[0], v37);
    goto LABEL_33;
  }

  sub_30A178();
  if (swift_dynamicCast())
  {
    v40 = sub_19424(v104[0], v37);
    goto LABEL_33;
  }

  sub_308F48();
  if (swift_dynamicCast())
  {
    v40 = sub_1A8C4(v104[0], v37);
    goto LABEL_33;
  }

  sub_30A208();
  if (swift_dynamicCast())
  {
    v40 = sub_1AC9C(v104[0], v37);
    goto LABEL_33;
  }

  sub_308F68();
  if (swift_dynamicCast())
  {
    v40 = sub_1B074(v104[0], v37);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    v41 = v99;
    (*(v99 + 32))(v25, v28, v23);
    sub_1B60C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v101 + 104))(v102, enum case for ActionOutcome.performed(_:), v100);
    v38 = sub_30BEC8();

    (*(v41 + 8))(v25, v23);
    goto LABEL_18;
  }

  sub_30A2A8();
  if (swift_dynamicCast())
  {
    v40 = sub_1B850(v104[0], v37);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    v42 = v97;
    v43 = v96;
    v44 = v22;
    v45 = v98;
    (*(v97 + 32))(v96, v44, v98);
    sub_1BDE8();
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v101 + 104))(v102, enum case for ActionOutcome.performed(_:), v100);
    v38 = sub_30BEC8();

    (*(v42 + 8))(v43, v45);
    goto LABEL_18;
  }

  sub_309B08();
  if (swift_dynamicCast())
  {
    v40 = sub_1C04C(v104[0], v37);
    goto LABEL_33;
  }

  sub_308048();
  if (swift_dynamicCast())
  {
    v46 = sub_308038();
    v46();

    goto LABEL_16;
  }

  sub_308498();
  if (swift_dynamicCast())
  {
    sub_1C890(v104[0]);
    goto LABEL_16;
  }

  sub_309298();
  if (swift_dynamicCast())
  {
    sub_30B8C8();
    if (v104[0])
    {
      v47 = v104[1];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v49 = sub_309278();
      (*(v47 + 56))(v49, ObjectType, v47);
      swift_unknownObjectRelease_n();
    }

    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v42 = v93;
    v43 = v92;
    v45 = v95;
    (*(v93 + 32))(v92, v94, v95);
    sub_1D0F8(v43);
    goto LABEL_40;
  }

  sub_308078();
  if (swift_dynamicCast())
  {
    sub_1D364(v104[0]);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v50 = v86;
      v51 = v85;
      v52 = v91;
      (*(v86 + 32))(v85, v90, v91);
      sub_30B9A8();
      v53 = v87;
      sub_30BD48();
      v54 = v89;
      v38 = sub_30BD38();

      (*(v88 + 8))(v53, v54);
      (*(v50 + 8))(v51, v52);
      goto LABEL_18;
    }

    sub_3085E8();
    if (swift_dynamicCast())
    {
      sub_163A0();
    }

    else
    {
      sub_3083B8();
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v60 = v76;
          v61 = v75;
          v62 = v78;
          (*(v76 + 32))(v75, v71, v78);
          sub_12144();
          v38 = sub_30BD08();

          (*(v60 + 8))(v61, v62);
          goto LABEL_18;
        }

        if (swift_dynamicCast())
        {
          (*(v79 + 8))(v77, v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
          v63 = &enum case for ActionOutcome.performed(_:);
        }

        else
        {
          if (sub_12A18())
          {
            swift_getObjectType();
            v38 = sub_307C18();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }

          v64 = v81;
          sub_30BF18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
          sub_30B708();
          *(swift_allocObject() + 16) = xmmword_315430;
          sub_30B6D8();
          v107._object = 0x80000000003360F0;
          v107._countAndFlagsBits = 0xD00000000000001DLL;
          sub_30B6C8(v107);
          v65 = v103[3];
          v66 = __swift_project_boxed_opaque_existential_1Tm(v103, v65);
          v105 = v65;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v104);
          (*(*(v65 - 8) + 16))(boxed_opaque_existential_0Tm, v66, v65);
          sub_30B6B8();
          sub_EB68(v104, &unk_3FBB70, &unk_3174C0);
          v108._countAndFlagsBits = 46;
          v108._object = 0xE100000000000000;
          sub_30B6C8(v108);
          sub_30B6F8();
          v68 = v84;
          sub_30BDC8();

          (*(v83 + 8))(v64, v68);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
          v63 = &enum case for ActionOutcome.unsupported(_:);
        }

        (*(v101 + 104))(v102, *v63, v100);
        v38 = sub_30BEC8();
        goto LABEL_17;
      }

      v55 = v70;
      sub_308388();
      v56 = objc_allocWithZone(type metadata accessor for HUDLoadingController(0));
      v57 = sub_25AB14(v55);
      v58 = sub_308378();
      v59 = v72;
      sub_25AF3C(v72);
      v58(v59);

      (*(v73 + 8))(v59, v74);
      sub_25BA1C();
    }
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
  (*(v101 + 104))(v102, enum case for ActionOutcome.performed(_:), v100);
  v38 = sub_30BEC8();

LABEL_17:

LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v106);
  return v38;
}

uint64_t sub_1403C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_30B6E8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_30BF58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_12A18())
  {
    swift_getObjectType();
    sub_307C28();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_30BF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
    sub_30B708();
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B6D8();
    v15._object = 0x8000000000336110;
    v15._countAndFlagsBits = 0xD00000000000001DLL;
    sub_30B6C8(v15);
    v10 = a1[3];
    v11 = __swift_project_boxed_opaque_existential_1Tm(a1, v10);
    v13[3] = v10;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v13);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0Tm, v11, v10);
    sub_30B6B8();
    sub_EB68(v13, &unk_3FBB70, &unk_3174C0);
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    sub_30B6C8(v16);
    sub_30B6F8();
    sub_30BDC8();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_14330(uint64_t a1, uint64_t a2)
{
  v4 = sub_3041E8();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v50);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_308778();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v48 - v15);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v20 - 8);
  v48 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  sub_30B8C8();
  v49 = *(&v60[0] + 1);
  v59 = *&v60[0];
  v25 = sub_307C08();
  sub_30B8C8();
  sub_309A28();
  v53 = a2;
  sub_30B8C8();
  v58 = *&v60[0];
  sub_307698();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v57 = a1;
    v52 = v24;
    (*(v11 + 32))(v19, v9, v10);
    v36 = *(v11 + 16);
    v36(v16, v19, v10);
    v37 = *(v11 + 88);
    if (v37(v16, v10) == enum case for FlowDestination.writeReview(_:))
    {
      (*(v11 + 96))(v16, v10);
      sub_166F0(*v16);

      swift_unknownObjectRelease();
      (*(v11 + 8))(v19, v10);
    }

    else
    {
      v56 = *(v11 + 8);
      (v56)(v16, v10);
      v36(v13, v19, v10);
      if (v37(v13, v10) == enum case for FlowDestination.inAppProductPage(_:))
      {
        (*(v11 + 96))(v13, v10);
        sub_17408(*v13, v13[1], v13[2]);

        swift_unknownObjectRelease();
        (v56)(v19, v10);
      }

      else
      {
        v38 = v56;
        (v56)(v13, v10);
        v24 = v52;
        if (!v59)
        {

          v38(v19, v10);
          goto LABEL_7;
        }

        v54 = v11 + 8;
        v55 = v10;
        if (v58)
        {
          swift_unknownObjectRetain();

          v53 = sub_309A18();
        }

        else
        {
          swift_unknownObjectRetain();
          v53 = 0;
        }

        v39 = v48;
        sub_EB00(v24, v48, &qword_3FBD68, &qword_317BF0);
        if ((*(*(v25 - 8) + 48))(v39, 1, v25) == 1)
        {
          sub_EB68(v39, &qword_3FBD68, &qword_317BF0);
          memset(v60, 0, sizeof(v60));
        }

        else
        {
          sub_EB00(v39 + *(v25 + 20), v60, &unk_3FBB70, &unk_3174C0);
          sub_1DCCC(v39, &type metadata accessor for ActionOrigin);
        }

        ObjectType = swift_getObjectType();
        v41 = v51;
        sub_3076C8();
        v42 = sub_3076B8();
        v43 = v50;
        sub_EB00(v60, v41 + *(v50 + 36), &unk_3FBB70, &unk_3174C0);
        sub_3076E8();
        sub_EB68(v60, &unk_3FBB70, &unk_3174C0);
        *(v41 + v43[5]) = v42;
        v44 = v41 + v43[6];
        *(v44 + 32) = 0;
        *v44 = 0u;
        *(v44 + 16) = 0u;
        *(v44 + 40) = -1;
        *(v41 + v43[8]) = v53;
        v45 = sub_3076A8();
        (*(v49 + 32))(v19, v41, v45, v46, ObjectType);
        swift_unknownObjectRelease_n();

        sub_1DCCC(v41, type metadata accessor for FlowPresentationHints);
        (v56)(v19, v55);
      }
    }

    v35 = v52;
    return sub_EB68(v35, &qword_3FBD68, &qword_317BF0);
  }

  sub_EB68(v9, &qword_3FBD60, &unk_317DD0);
  v26 = v55;
  sub_304128();

  v27 = sub_3041D8();
  v28 = sub_30C798();

  if (!os_log_type_enabled(v27, v28))
  {

    swift_unknownObjectRelease();
    (*(v56 + 8))(v26, v57);
LABEL_7:
    v35 = v24;
    return sub_EB68(v35, &qword_3FBD68, &qword_317BF0);
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *&v60[0] = v30;
  *v29 = 136315138;
  v61 = a1;
  sub_3076F8();

  v31 = sub_30C148();
  v33 = v24;
  v34 = sub_191264(v31, v32, v60);

  *(v29 + 4) = v34;
  _os_log_impl(&dword_0, v27, v28, "Could not create destination for %s", v29, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v30);

  swift_unknownObjectRelease();
  (*(v56 + 8))(v26, v57);
  v35 = v33;
  return sub_EB68(v35, &qword_3FBD68, &qword_317BF0);
}

uint64_t sub_14C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = sub_3089E8();
  v8 = sub_308A28();
  v9 = sub_308A38();
  v10 = sub_3089F8();
  v11 = sub_308A08();
  (*(a2 + 40))(v7, v8, v9 & 1, v10 & 1, v11 & 1, a4, ObjectType, a2);

  return sub_1DB3C(v7);
}

void *sub_14CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_308778();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v10 - 8);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v73 - v13;
  __chkstk_darwin(v14);
  v16 = &v73 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  result = sub_30B8C8();
  v18 = aBlock;
  if (!aBlock)
  {
    return result;
  }

  v78 = v9;
  v79 = v7;
  v80 = v6;
  v75 = *(&aBlock + 1);
  v74 = sub_307C08();
  sub_30B8C8();
  sub_307B18();
  v20 = v19;
  v86 = a1;
  sub_307B48();
  v22 = v21;
  if (v20)
  {
    v23 = sub_30C098();

    if (v22)
    {
LABEL_4:
      v24 = sub_30C098();

      goto LABEL_7;
    }
  }

  else
  {
    v23 = 0;
    if (v21)
    {
      goto LABEL_4;
    }
  }

  v24 = 0;
LABEL_7:
  v77 = v16;
  v87 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:0];

  v25 = sub_307B38();
  v26 = v25;
  v76 = v18;
  if (v25 >> 62)
  {
    v42 = v25;
    v43 = sub_30D668();
    v26 = v42;
    v27 = v43;
    if (!v43)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v27 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    if (!v27)
    {
      goto LABEL_21;
    }
  }

  v28 = v26;
  result = objc_opt_self();
  v85 = result;
  if (v27 < 1)
  {
    __break(1u);
    return result;
  }

  v29 = 0;
  v30 = v28;
  v83 = &v90;
  v84 = v28 & 0xC000000000000001;
  v31 = v28;
  do
  {
    if (v84)
    {
      v32 = sub_30D578();
    }

    else
    {
      v32 = *(v30 + 8 * v29 + 32);
    }

    sub_30B008();
    v33 = sub_30AF58();
    sub_30AFB8();
    v34 = sub_30AFB8() == v33;
    sub_30B018();
    v36 = v35;
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = v32;
    v37[4] = a2;

    if (v36)
    {
      v38 = sub_30C098();
    }

    else
    {
      v38 = 0;
    }

    v39 = 2 * v34;
    v91 = sub_1DB54;
    v92 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v90 = sub_25AB10;
    *(&v90 + 1) = &block_descriptor_44;
    v40 = _Block_copy(&aBlock);

    v41 = [v85 actionWithTitle:v38 style:v39 handler:v40];
    _Block_release(v40);

    sub_30B008();
    LOBYTE(v39) = sub_30AFA8();
    sub_30AFB8();
    if (sub_30AFB8() == v39)
    {
      [v41 _setChecked:1];
    }

    ++v29;
    [v87 addAction:v41];

    v30 = v31;
  }

  while (v27 != v29);
LABEL_21:

  if (sub_307B28())
  {
    v44 = [objc_opt_self() mainBundle];
    v72._countAndFlagsBits = 0xE000000000000000;
    v93._countAndFlagsBits = 0x435F4E4F49544341;
    v93._object = 0xED00004C45434E41;
    v94.value._countAndFlagsBits = 0;
    v94.value._object = 0;
    v45.super.isa = v44;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    sub_301AB8(v93, v94, v45, v95, 0, v72);

    v46 = sub_30C098();

    v47 = [objc_opt_self() actionWithTitle:v46 style:1 handler:0];

    v48 = v87;
    [v87 addAction:v47];
    [v48 setPreferredAction:v47];
  }

  v49 = v77;
  v50 = v81;
  sub_EB00(v77, v81, &qword_3FBD68, &qword_317BF0);
  v51 = v74;
  v52 = *(*(v74 - 8) + 48);
  v53 = v52(v50, 1, v74);
  v55 = v79;
  v54 = v80;
  v56 = v78;
  if (v53 == 1)
  {
    sub_EB68(v50, &qword_3FBD68, &qword_317BF0);
    aBlock = 0u;
    v90 = 0u;
    v57 = v82;
LABEL_31:
    sub_EB68(&aBlock, &unk_3FBB70, &unk_3174C0);
    goto LABEL_32;
  }

  sub_EB00(v50 + *(v51 + 20), &aBlock, &unk_3FBB70, &unk_3174C0);
  sub_1DCCC(v50, &type metadata accessor for ActionOrigin);
  v57 = v82;
  if (!*(&v90 + 1))
  {
    goto LABEL_31;
  }

  sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
  if (swift_dynamicCast())
  {
    v58 = v88;
    v59 = v87;
    v60 = [v59 popoverPresentationController];
    if (v60)
    {
      v61 = v60;
      [v60 setBarButtonItem:v58];
    }

    v62 = [v59 popoverPresentationController];

    if (!v62)
    {
      goto LABEL_41;
    }

    [v62 _setIgnoreBarButtonItemSiblings:1];
    goto LABEL_40;
  }

LABEL_32:
  sub_EB00(v49, v57, &qword_3FBD68, &qword_317BF0);
  if (v52(v57, 1, v51) == 1)
  {
    sub_EB68(v57, &qword_3FBD68, &qword_317BF0);
    aBlock = 0u;
    v90 = 0u;
LABEL_42:
    sub_EB68(&aBlock, &unk_3FBB70, &unk_3174C0);
    goto LABEL_43;
  }

  sub_EB00(v57 + *(v51 + 20), &aBlock, &unk_3FBB70, &unk_3174C0);
  sub_1DCCC(v57, &type metadata accessor for ActionOrigin);
  if (!*(&v90 + 1))
  {
    goto LABEL_42;
  }

  sub_124C4(0, &qword_3FBD90, UIView_ptr);
  if (swift_dynamicCast())
  {
    v58 = v88;
    v63 = v87;
    v64 = [v63 popoverPresentationController];
    if (v64)
    {
      v65 = v64;
      [v64 setSourceView:v58];
    }

    v62 = [v63 popoverPresentationController];

    if (!v62)
    {
      goto LABEL_41;
    }

    [v58 bounds];
    [v62 setSourceRect:?];
LABEL_40:

LABEL_41:
  }

LABEL_43:
  ObjectType = swift_getObjectType();
  v67 = v87;
  *v56 = v87;
  (*(v55 + 104))(v56, enum case for FlowDestination.viewController(_:), v54);
  v68 = qword_3FAC80;
  v69 = v67;
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for FlowPresentationHints(0);
  v71 = __swift_project_value_buffer(v70, qword_40A540);
  (*(v75 + 32))(v56, v71, 0, 0, ObjectType);

  swift_unknownObjectRelease();
  (*(v55 + 8))(v56, v54);
  return sub_EB68(v49, &qword_3FBD68, &qword_317BF0);
}

void sub_156D8(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v70 = sub_3041E8();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_308778();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v74 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_308AC8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v69 - v10;
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  sub_30B8C8();
  v73 = *(&aBlock + 1);
  v78 = aBlock;
  v83 = a1;
  sub_3079B8();
  v77 = *(v7 + 104);
  v77(v14, enum case for AlertActionStyle.normal(_:), v6);
  sub_1DD2C(&unk_3FBDB0, 255, &type metadata accessor for AlertActionStyle, &protocol conformance descriptor for AlertActionStyle);
  sub_30C338();
  sub_30C338();
  v82 = v11;
  if (aBlock == v89)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_30D728();
  }

  v19 = *(v7 + 8);
  v19(v14, v6);
  v19(v17, v6);

  if ((v18 & 1) == 0)
  {
    v27 = v82;
    sub_3079B8();
    v28 = v79;
    v77(v79, enum case for AlertActionStyle.authenticateEnableAccountCreation(_:), v6);
    sub_30C338();
    sub_30C338();
    if (aBlock == v89)
    {
      v19(v28, v6);
      v19(v27, v6);
    }

    else
    {
      v29 = sub_30D728();
      v19(v28, v6);
      v19(v27, v6);

      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v30 = [objc_allocWithZone(AMSAuthenticateOptions) init];
    [v30 setEnableAccountCreation:1];
    v31 = [objc_opt_self() mt_rootViewController];
    if (!v31 || (v32 = v31, v33 = [v31 mt_topViewController], v32, !v33))
    {
      v36 = v71;
      sub_3041C8();
      v37 = sub_3041D8();
      v38 = sub_30C798();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "Unable to display AMSUIAuthenticationTask because could not get topVC.", v39, 2u);
      }

      else
      {
      }

      swift_unknownObjectRelease();
      (*(v72 + 8))(v36, v70);
      return;
    }

    v34 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:0 presentingViewController:v33 options:v30];
    v35 = [v34 performAuthentication];

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  v20 = v83;
  sub_30B018();
  v22 = v21;
  sub_3079C8();
  v24 = v23;
  if (v22)
  {
    v25 = sub_30C098();

    if (v24)
    {
LABEL_7:
      v26 = sub_30C098();

      goto LABEL_19;
    }
  }

  else
  {
    v25 = 0;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
LABEL_19:
  v82 = [objc_opt_self() alertControllerWithTitle:v25 message:v26 preferredStyle:1];

  v40 = sub_3079A8();
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v42 = sub_307998();
  v83 = v41;
  v43 = v41 >> 62;
  if (v42)
  {
    if (v43)
    {
      v44 = sub_30D668();
    }

    else
    {
      v44 = *(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8));
    }

    v45 = [objc_opt_self() mainBundle];
    v68._countAndFlagsBits = 0xE000000000000000;
    if (v44)
    {
      v46._countAndFlagsBits = 0x435F4E4F49544341;
      v46._object = 0xED00004C45434E41;
    }

    else
    {
      v46._countAndFlagsBits = 0x4F5F4E4F49544341;
      v46._object = 0xE90000000000004BLL;
    }

    v90.value._countAndFlagsBits = 0;
    v90.value._object = 0;
    v47.super.isa = v45;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    v24 = sub_301AB8(v46, v90, v47, v91, 0, v68);

    v48 = sub_30C098();

    v49 = [objc_opt_self() actionWithTitle:v48 style:1 handler:0];

    v50 = v82;
    [v82 addAction:v49];
    [v50 setPreferredAction:v49];
  }

  if (v43)
  {
    ObjectType = sub_30D668();
    if (ObjectType)
    {
      goto LABEL_33;
    }
  }

  else
  {
    ObjectType = *(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8));
    if (ObjectType)
    {
LABEL_33:
      v79 = objc_opt_self();
      if (ObjectType < 1)
      {
        __break(1u);
        goto LABEL_48;
      }

      v52 = 0;
      v53 = v83 & 0xC000000000000001;
      do
      {
        if (v53)
        {
          v57 = sub_30D578();
        }

        else
        {
          v57 = *(v83 + 8 * v52 + 32);
        }

        v58 = sub_30B008();
        v59 = v58 == sub_30AF58();
        sub_30B018();
        v61 = v60;
        v62 = swift_allocObject();
        v63 = v80;
        v62[2] = v81;
        v62[3] = v57;
        v62[4] = v63;

        if (v61)
        {
          v54 = sub_30C098();
        }

        else
        {
          v54 = 0;
        }

        ++v52;
        v87 = sub_1DBDC;
        v88 = v62;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v85 = sub_25AB10;
        v86 = &block_descriptor_50;
        v55 = _Block_copy(&aBlock);

        v56 = [v79 actionWithTitle:v54 style:2 * v59 handler:v55];
        _Block_release(v55);

        [v82 addAction:v56];
      }

      while (ObjectType != v52);
    }
  }

  if (v78)
  {
    ObjectType = swift_getObjectType();
    v6 = v74;
    v20 = v75;
    v64 = v82;
    *v74 = v82;
    v43 = v76;
    (*(v20 + 104))(v6, enum case for FlowDestination.viewController(_:), v76);
    v65 = qword_3FAC80;
    swift_unknownObjectRetain();
    v24 = v64;
    if (v65 == -1)
    {
LABEL_45:
      v66 = type metadata accessor for FlowPresentationHints(0);
      v67 = __swift_project_value_buffer(v66, qword_40A540);
      (*(v73 + 32))(v6, v67, 0, 0, ObjectType);

      swift_unknownObjectRelease_n();
      (*(v20 + 8))(v6, v43);
      return;
    }

LABEL_48:
    swift_once();
    goto LABEL_45;
  }
}

uint64_t sub_161EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v7 = sub_302558();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = sub_30B038();
  v14[4] = sub_1DD2C(&qword_3FBDA0, 255, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  v14[0] = a3;
  (*(v8 + 104))(v10, *a5, v7);
  type metadata accessor for FlowActionRunner();
  sub_1DD2C(&qword_3FBDA8, v11, type metadata accessor for FlowActionRunner, &protocol conformance descriptor for FlowActionRunner);

  sub_307C38();

  (*(v8 + 8))(v10, v7);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void *sub_163A0()
{
  v1 = v0;
  v2 = sub_308778();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  result = sub_30B8C8();
  if (v23[0])
  {
    v21 = v23[1];
    sub_3085C8();
    sub_3085D8();
    v7 = sub_3085A8();
    v8 = type metadata accessor for ModelViewOverflowViewController();
    v9 = objc_allocWithZone(v8);
    sub_12670(v23, &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_model]);
    v10 = [objc_allocWithZone(UIScrollView) init];
    *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_scrollView] = v10;
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v12 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_modelView];
      *v12 = v11;
      *(v12 + 1) = result;
      *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_objectGraph] = v7;
      v13 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_preflightHandler];
      *v13 = 0;
      *(v13 + 1) = 0;
      v22.receiver = v9;
      v22.super_class = v8;
      v14 = v11;

      v15 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
      [*&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_scrollView] setContentInsetAdjustmentBehavior:2];

      __swift_destroy_boxed_opaque_existential_1(v23);
      v16 = *(v1 + 16);
      *(v16 + OBJC_IVAR____TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning_transitionFromAccessoryView) = 1;
      v17 = v15;
      [v17 setTransitioningDelegate:v16];
      [v17 setModalPresentationStyle:4];
      ObjectType = swift_getObjectType();
      *v5 = v17;
      (*(v3 + 104))(v5, enum case for FlowDestination.viewController(_:), v2);
      if (qword_3FAC80 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for FlowPresentationHints(0);
      v20 = __swift_project_value_buffer(v19, qword_40A540);
      (*(v21 + 32))(v5, v20, 0, 0, ObjectType);

      swift_unknownObjectRelease();
      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_166F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48, &qword_319CA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 view];

      if (v8)
      {
        v9 = [v8 window];

        if (v9)
        {
          v10 = [v9 windowScene];

          if (v10)
          {
            if (qword_3FAFA8 != -1)
            {
              swift_once();
            }

            v11 = qword_40DB70;
            v12 = objc_opt_self();
            v13 = v11;
            v14 = [v12 currentProcess];
            v21 = a1;
            sub_1D770();
            sub_30D438();
            v15 = objc_allocWithZone(sub_304088());
            v16 = sub_304078();
            v17 = [objc_opt_self() sharedInstance];
            sub_3040A8();
            swift_allocObject();
            v18 = sub_304098();
            v19 = sub_30C468();
            (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
            v20 = swift_allocObject();
            v20[2] = 0;
            v20[3] = 0;
            v20[4] = v18;
            v20[5] = v10;
            v20[6] = v16;
            v20[7] = v17;
            sub_45AA4(0, 0, v4, &unk_317BD8, v20);
          }
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_169BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD58, &unk_317BE0);
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  v14 = (&async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:) + async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:));
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_16AD0;

  return v14(v11, a5, a6, a7);
}

uint64_t sub_16AD0()
{

  if (v0)
  {

    v1 = sub_16CA4;
  }

  else
  {
    v1 = sub_16BE8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_16BE8()
{
  v1 = *(v0 + 16);
  v2 = sub_304068();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_EB68(v1, &qword_3FBD58, &unk_317BE0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_16CA4()
{
  v1 = *(v0 + 16);
  v2 = sub_304068();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_EB68(v1, &qword_3FBD58, &unk_317BE0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_16D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  sub_30C438();
  v7[41] = sub_30C428();
  v9 = sub_30C3F8();
  v7[42] = v9;
  v7[43] = v8;

  return _swift_task_switch(sub_16DFC, v9, v8);
}

uint64_t sub_16DFC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD70, &qword_317C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = sub_30C0D8();
  *(inited + 40) = v4;
  *(v0 + 288) = v2;
  sub_1D770();
  v5 = sub_30D438();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  sub_2B6EF8(inited);
  swift_setDeallocating();
  sub_EB68(inited + 32, &qword_3FBD78, &qword_317C10);
  if (v1)
  {
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    v9 = sub_30C0D8();
    v11 = v10;
    *(v0 + 224) = v8;
    *(v0 + 248) = &type metadata for String;
    *(v0 + 232) = v7;
    sub_1DA94((v0 + 224), (v0 + 256));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23F44((v0 + 256), v9, v11, isUniquelyReferenced_nonNull_native);
  }

  v13 = *(v0 + 320);
  isa = sub_30BF88().super.isa;
  *(v0 + 352) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 368;
  *(v0 + 24) = sub_17078;
  v15 = swift_continuation_init();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD80, &qword_317C18);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_1728C;
  *(v0 + 184) = &block_descriptor_1;
  *(v0 + 192) = v15;
  [v13 loadProductWithParameters:isa completionBlock:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_17078()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_17214;
  }

  else
  {
    v5 = sub_171A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_171A8()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_17214()
{
  v1 = *(v0 + 352);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1728C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88, &unk_317C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t RootActionRunner.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void *sub_17408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_308778();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48, &qword_319CA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  result = sub_30B8C8();
  if (v28)
  {
    v26 = a1;
    v27 = a2;
    v14 = v29;
    v15 = [objc_allocWithZone(SKStoreProductViewController) init];
    result = [v15 view];
    if (result)
    {
      v16 = result;
      v17 = [objc_opt_self() systemBlueColor];
      [v16 setTintColor:v17];

      v18 = sub_30C468();
      (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
      sub_30C438();

      v19 = v15;
      v20 = sub_30C428();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = &protocol witness table for MainActor;
      v22 = v27;
      v21[4] = v26;
      v21[5] = v22;
      v21[6] = a3;
      v21[7] = v19;
      sub_270768(0, 0, v12, &unk_317C00, v21);

      ObjectType = swift_getObjectType();
      *v9 = v19;
      (*(v7 + 104))(v9, enum case for FlowDestination.viewController(_:), v6);
      if (qword_3FAC80 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for FlowPresentationHints(0);
      v25 = __swift_project_value_buffer(v24, qword_40A540);
      (*(v14 + 32))(v9, v25, 0, 0, ObjectType, v14);

      swift_unknownObjectRelease();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_17764(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  result = sub_30B8C8();
  v5 = v8[0];
  if (v8[0])
  {
    v6 = v8[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
    v7 = swift_allocObject();
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = a1;
    v7[5] = a2;
    swift_unknownObjectRetain();

    sub_30A888();

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

uint64_t sub_17884(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v24 = a4;
  v23 = a3;
  v22 = a2;
  v25 = a1;
  v4 = sub_303748();
  __chkstk_darwin(v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  __chkstk_darwin(v10);
  v12 = &v21[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v21[-v17];
  sub_30A528();
  sub_30B8C8();
  if (v27[0])
  {
    sub_30A508();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
  sub_30B8E8();
  v19 = sub_307C08();
  sub_30B8C8();
  sub_307CB8();
  sub_303B08();
  sub_3039A8();

  sub_1DC68(v12, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1DC68(v9, v6);
    if (v6[16])
    {
      if ((v24 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1Tm(v27, v28);
        sub_30A9B8();
      }

      __swift_project_boxed_opaque_existential_1Tm(v27, v28);
      sub_30A848();
    }

    else if (v24)
    {
      __swift_project_boxed_opaque_existential_1Tm(v27, v28);
      if (v22)
      {
        sub_30A868();
      }

      else
      {
        sub_30A898();
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1Tm(v27, v28);
      sub_30A9B8();
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    sub_EB00(v18, v15, &qword_3FBD68, &qword_317BF0);
    if ((*(*(v19 - 8) + 48))(v15, 1, v19) == 1)
    {
      sub_EB68(v15, &qword_3FBD68, &qword_317BF0);
      memset(v26, 0, sizeof(v26));
    }

    else
    {
      sub_EB00(&v15[*(v19 + 20)], v26, &unk_3FBB70, &unk_3174C0);
      sub_1DCCC(v15, &type metadata accessor for ActionOrigin);
    }

    sub_30A988();

    sub_EB68(v26, &unk_3FBB70, &unk_3174C0);
  }

  sub_1DCCC(v12, &type metadata accessor for EpisodePlayState);
  sub_EB68(v18, &qword_3FBD68, &qword_317BF0);
  sub_1DCCC(v9, &type metadata accessor for EpisodePlayState);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_17CFC(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_302558();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_30B8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307CF8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3030A8();
  v30 = v16;
  v31 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v29);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v16);
  LOBYTE(v16) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if (v16)
  {
    sub_30B8E8();
    v30 = sub_3077E8();
    v31 = sub_1DD2C(&qword_3FBDC8, 255, &type metadata accessor for PlayAction, &protocol conformance descriptor for Action);
    v18 = v26;
    v29[0] = v27;
    v19 = v25;
    (*(v25 + 104))(v4, enum case for ActionMetricsBehavior.notProcessed(_:), v26);

    v20 = sub_30B9E8();
    (*(v19 + 8))(v4, v18);
    (*(v24 + 8))(v7, v5);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v20;
  }

  else
  {
    sub_3077A8();
    v22 = sub_3077D8();
    sub_17884(v15, 0, v22, v23 & 1);
    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    return sub_30BEC8();
  }
}

uint64_t sub_18148(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_302558();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_30B8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307CF8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3030A8();
  v30 = v16;
  v31 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v29);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v16);
  LOBYTE(v16) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if (v16)
  {
    sub_30B8E8();
    v30 = sub_3088B8();
    v31 = sub_1DD2C(&qword_3FBDD8, 255, &type metadata accessor for PlayPauseAction, &protocol conformance descriptor for Action);
    v18 = v26;
    v29[0] = v27;
    v19 = v25;
    (*(v25 + 104))(v4, enum case for ActionMetricsBehavior.notProcessed(_:), v26);

    v20 = sub_30B9E8();
    (*(v19 + 8))(v4, v18);
    (*(v24 + 8))(v7, v5);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v20;
  }

  else
  {
    sub_308878();
    v22 = sub_3088A8();
    sub_17884(v15, 1, v22, v23 & 1);
    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    return sub_30BEC8();
  }
}

uint64_t sub_18594(uint64_t a1, uint64_t a2)
{
  v3 = sub_302558();
  v86 = *(v3 - 8);
  v87 = v3;
  __chkstk_darwin(v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v85 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v73 - v7;
  v77 = sub_302268();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_30B8A8();
  v91 = *(v10 - 8);
  v92 = v10;
  __chkstk_darwin(v10);
  v90 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE0, &qword_317C38);
  __chkstk_darwin(v12 - 8);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v73 - v15;
  v16 = sub_303748();
  __chkstk_darwin(v16);
  v79 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v89 = &v73 - v19;
  __chkstk_darwin(v20);
  v88 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v22 - 8);
  v82 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  __chkstk_darwin(v27);
  v29 = &v73 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE8, &unk_317C40);
  __chkstk_darwin(v30 - 8);
  v81 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v83 = &v73 - v33;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  v37 = sub_3030A8();
  v95 = v37;
  v96 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v94);
  (*(*(v37 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v37);
  LOBYTE(v37) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v94);
  if (v37)
  {
    sub_30B8E8();
    v95 = sub_308E88();
    v96 = sub_1DD2C(&qword_3FBDF0, 255, &type metadata accessor for LibraryPlayAction, &protocol conformance descriptor for Action);
    v94[0] = a1;
    v40 = v86;
    v39 = v87;
    (*(v86 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v87);

    v41 = sub_30B9E8();
    (*(v40 + 8))(v5, v39);
    (*(v85 + 8))(v8, v6);
    __swift_destroy_boxed_opaque_existential_1(v94);
    return v41;
  }

  v87 = sub_308E48();
  v44 = v43;
  sub_308E68();
  v45 = sub_308E58();
  v85 = sub_308E78();
  LODWORD(v86) = v46;
  sub_30A528();
  sub_30B8C8();
  v78 = v36;
  if (v94[0])
  {
    sub_30A508();
  }

  v47 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
  sub_30B8E8();
  v48 = *&v93[0];
  v49 = sub_307C08();
  sub_30B8C8();
  sub_303B18();
  v50 = v88;
  sub_3039A8();

  sub_1DC68(v50, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

LABEL_12:
    sub_1DCCC(v47, &type metadata accessor for EpisodePlayState);
    v55 = v90;
    v54 = v91;
    if (v45 == 2 || (v45 & 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v94, v95);
      sub_30A898();
    }

    sub_1DCCC(v50, &type metadata accessor for EpisodePlayState);
    sub_EB68(v29, &qword_3FBD68, &qword_317BF0);
    sub_EB68(v78, &qword_3FBDE8, &unk_317C40);
    v53 = v92;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v79 = v44;
    v89 = v48;
    sub_EB00(v29, v26, &qword_3FBD68, &qword_317BF0);
    v57 = *(*(v49 - 8) + 48);
    v58 = v57(v26, 1, v49);
    v74 = v57;
    if (v58 == 1)
    {
      sub_EB68(v26, &qword_3FBD68, &qword_317BF0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1DCCC(v26, &type metadata accessor for ActionOrigin);
      if (Strong)
      {
        v60 = v75;
        sub_30CE78();

        sub_302238();
        (*(v76 + 8))(v60, v77);
        v61 = 0;
        goto LABEL_21;
      }
    }

    v61 = 1;
LABEL_21:
    v62 = sub_302218();
    v63 = *(v62 - 8);
    v64 = v84;
    (*(v63 + 56))(v84, v61, 1, v62);
    v65 = v80;
    sub_EB00(v64, v80, &qword_3FBDE0, &qword_317C38);
    if ((*(v63 + 48))(v65, 1, v62) == 1)
    {
      sub_EB68(v65, &qword_3FBDE0, &qword_317C38);
      v66 = sub_303978();
      v67 = v81;
      (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
      v68 = v82;
    }

    else
    {
      v67 = v81;
      sub_3021E8();
      sub_1DCCC(v65, &type metadata accessor for InteractionContext.Page);
      v66 = sub_303978();
      v69 = *(v66 - 8);
      v70 = (*(v69 + 48))(v67, 1, v66);
      v68 = v82;
      if (v70 != 1)
      {
        v71 = v83;
        (*(v69 + 32))(v83, v67, v66);
        (*(v69 + 56))(v71, 0, 1, v66);
LABEL_27:
        __swift_project_boxed_opaque_existential_1Tm(v94, v95);
        sub_EB00(v29, v68, &qword_3FBD68, &qword_317BF0);
        if (v74(v68, 1, v49) == 1)
        {
          sub_EB68(v68, &qword_3FBD68, &qword_317BF0);
          memset(v93, 0, sizeof(v93));
        }

        else
        {
          sub_EB00(v68 + *(v49 + 20), v93, &unk_3FBB70, &unk_3174C0);
          sub_1DCCC(v68, &type metadata accessor for ActionOrigin);
        }

        v54 = v91;
        v53 = v92;
        v55 = v90;
        v72 = v83;
        sub_30A958();

        sub_EB68(v93, &unk_3FBB70, &unk_3174C0);
        sub_EB68(v72, &qword_3FBDE8, &unk_317C40);
        sub_EB68(v84, &qword_3FBDE0, &qword_317C38);
        sub_1DCCC(v50, &type metadata accessor for EpisodePlayState);
        sub_EB68(v29, &qword_3FBD68, &qword_317BF0);
        sub_EB68(v78, &qword_3FBDE8, &unk_317C40);
        v56 = v47;
        goto LABEL_31;
      }
    }

    sub_EB00(v78, v83, &qword_3FBDE8, &unk_317C40);
    sub_303978();
    if ((*(*(v66 - 8) + 48))(v67, 1, v66) != 1)
    {
      sub_EB68(v67, &qword_3FBDE8, &unk_317C40);
    }

    goto LABEL_27;
  }

  v52 = v79;
  sub_1DC68(v47, v79);
  if ((*(v52 + 16) & 1) == 0)
  {
    goto LABEL_12;
  }

  v54 = v91;
  v53 = v92;
  v55 = v90;
  if ((v86 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v94, v95);
    sub_30A9A8();
  }

  __swift_project_boxed_opaque_existential_1Tm(v94, v95);
  sub_30A848();

  sub_1DCCC(v50, &type metadata accessor for EpisodePlayState);
  sub_EB68(v29, &qword_3FBD68, &qword_317BF0);
  sub_EB68(v78, &qword_3FBDE8, &unk_317C40);
  v56 = v47;
LABEL_31:
  sub_1DCCC(v56, &type metadata accessor for EpisodePlayState);
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
  (*(v54 + 104))(v55, enum case for ActionOutcome.performed(_:), v53);
  return sub_30BEC8();
}

uint64_t sub_19424(uint64_t a1, uint64_t a2)
{
  v3 = sub_302558();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v86 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v78 = sub_302268();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30B8A8();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin(v11);
  v87 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE0, &qword_317C38);
  __chkstk_darwin(v13 - 8);
  v80 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v68 - v16;
  v85 = sub_303748();
  __chkstk_darwin(v85);
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v68 - v19;
  __chkstk_darwin(v20);
  v90 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v22 - 8);
  v82 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  __chkstk_darwin(v27);
  v92 = &v68 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE8, &unk_317C40);
  __chkstk_darwin(v29 - 8);
  v81 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v83 = &v68 - v32;
  __chkstk_darwin(v33);
  v35 = &v68 - v34;
  v36 = sub_3030A8();
  v95 = v36;
  v96 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v94);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v36);
  LOBYTE(v36) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v94);
  if (v36)
  {
    sub_30B8E8();
    v95 = sub_30A178();
    v96 = sub_1DD2C(&qword_3FBDF8, 255, &type metadata accessor for LibraryPlayPauseAction, &protocol conformance descriptor for Action);
    v94[0] = a1;
    (*(v4 + 104))(v6, enum case for ActionMetricsBehavior.notProcessed(_:), v3);

    v38 = sub_30B9E8();
    (*(v4 + 8))(v6, v3);
    (*(v86 + 8))(v9, v7);
    __swift_destroy_boxed_opaque_existential_1(v94);
    return v38;
  }

  v86 = sub_30A0F8();
  sub_30A148();
  sub_30A128();
  v72 = sub_30A0C8();
  v74 = sub_30A168();
  v75 = v40;
  v71 = sub_30A138();
  v73 = sub_30A0D8();
  v41 = 15;
  if ((v73 & 1) == 0)
  {
    v41 = 0;
  }

  v70 = v41;
  v69 = sub_30A118();
  sub_30A528();
  sub_30B8C8();
  v42 = v35;
  if (v94[0])
  {
    sub_30A508();
  }

  v44 = v90;
  v43 = v91;
  v45 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
  sub_30B8E8();
  v46 = *&v93[0];
  v47 = sub_307C08();
  sub_30B8C8();
  sub_303B18();
  sub_3039A8();

  sub_1DC68(v44, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v85 = v46;
    sub_EB00(v45, v26, &qword_3FBD68, &qword_317BF0);
    v53 = *(*(v47 - 8) + 48);
    v54 = v53(v26, 1, v47);
    v68 = v42;
    if (v54 == 1)
    {
      sub_EB68(v26, &qword_3FBD68, &qword_317BF0);
      v55 = 1;
      v56 = v82;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1DCCC(v26, &type metadata accessor for ActionOrigin);
      v56 = v82;
      if (Strong)
      {
        v58 = v76;
        sub_30CE78();

        sub_302238();
        (*(v77 + 8))(v58, v78);
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }
    }

    v59 = sub_302218();
    v60 = *(v59 - 8);
    v61 = v84;
    (*(v60 + 56))(v84, v55, 1, v59);
    v62 = v80;
    sub_EB00(v61, v80, &qword_3FBDE0, &qword_317C38);
    if ((*(v60 + 48))(v62, 1, v59) == 1)
    {
      sub_EB68(v62, &qword_3FBDE0, &qword_317C38);
      v63 = sub_303978();
      v64 = v81;
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
    }

    else
    {
      v64 = v81;
      sub_3021E8();
      sub_1DCCC(v62, &type metadata accessor for InteractionContext.Page);
      v63 = sub_303978();
      v65 = *(v63 - 8);
      if ((*(v65 + 48))(v64, 1, v63) != 1)
      {
        v66 = v83;
        (*(v65 + 32))(v83, v64, v63);
        (*(v65 + 56))(v66, 0, 1, v63);
LABEL_26:
        __swift_project_boxed_opaque_existential_1Tm(v94, v95);
        sub_EB00(v45, v56, &qword_3FBD68, &qword_317BF0);
        if (v53(v56, 1, v47) == 1)
        {
          sub_EB68(v56, &qword_3FBD68, &qword_317BF0);
          memset(v93, 0, sizeof(v93));
        }

        else
        {
          sub_EB00(v56 + *(v47 + 20), v93, &unk_3FBB70, &unk_3174C0);
          sub_1DCCC(v56, &type metadata accessor for ActionOrigin);
        }

        v50 = v88;
        v52 = v89;
        v51 = v87;
        v67 = v83;
        sub_30A958();

        sub_EB68(v93, &unk_3FBB70, &unk_3174C0);
        sub_EB68(v67, &qword_3FBDE8, &unk_317C40);
        sub_EB68(v84, &qword_3FBDE0, &qword_317C38);
        sub_1DCCC(v90, &type metadata accessor for EpisodePlayState);
        sub_EB68(v92, &qword_3FBD68, &qword_317BF0);
        sub_EB68(v68, &qword_3FBDE8, &unk_317C40);
        sub_1DCCC(v91, &type metadata accessor for EpisodePlayState);
        goto LABEL_30;
      }
    }

    sub_EB00(v68, v83, &qword_3FBDE8, &unk_317C40);
    sub_303978();
    if ((*(*(v63 - 8) + 48))(v64, 1, v63) != 1)
    {
      sub_EB68(v64, &qword_3FBDE8, &unk_317C40);
    }

    goto LABEL_26;
  }

  v49 = v79;
  sub_1DC68(v43, v79);
  if (*(v49 + 16))
  {
    v51 = v87;
    v50 = v88;
    if ((v75 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v94, v95);
      sub_30A9A8();
    }

    __swift_project_boxed_opaque_existential_1Tm(v94, v95);
    sub_30A848();

    sub_1DCCC(v44, &type metadata accessor for EpisodePlayState);
    sub_EB68(v92, &qword_3FBD68, &qword_317BF0);
    sub_EB68(v35, &qword_3FBDE8, &unk_317C40);
    sub_1DCCC(v43, &type metadata accessor for EpisodePlayState);
    v52 = v89;
    goto LABEL_30;
  }

LABEL_14:
  sub_1DCCC(v43, &type metadata accessor for EpisodePlayState);
  __swift_project_boxed_opaque_existential_1Tm(v94, v95);
  sub_30A868();

  sub_1DCCC(v44, &type metadata accessor for EpisodePlayState);
  sub_EB68(v45, &qword_3FBD68, &qword_317BF0);
  sub_EB68(v35, &qword_3FBDE8, &unk_317C40);
  v50 = v88;
  v52 = v89;
  v51 = v87;
LABEL_30:
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
  (*(v50 + 104))(v51, enum case for ActionOutcome.performed(_:), v52);
  return sub_30BEC8();
}

uint64_t sub_1A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = a5;
  v34 = a3;
  v35 = a4;
  v31 = a1;
  v32 = a2;
  v5 = sub_303748();
  __chkstk_darwin(v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v33 = &v29[-v9];
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v29[-v17];
  __chkstk_darwin(v19);
  v36 = &v29[-v20];
  sub_30A528();
  sub_30B8C8();
  if (v39[0])
  {
    sub_30A508();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
  sub_30B8E8();
  v21 = sub_307C08();
  v22 = v36;
  sub_30B8C8();
  if (v35)
  {
    sub_303B18();
    v23 = v12;
    sub_3039A8();

    v24 = v12;
    v25 = v33;
    sub_1DC68(v24, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 3)
      {
        __swift_project_boxed_opaque_existential_1Tm(v39, v40);
        sub_EB00(v36, v18, &qword_3FBD68, &qword_317BF0);
        if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
        {
          sub_EB68(v18, &qword_3FBD68, &qword_317BF0);
          v37 = 0u;
          v38 = 0u;
        }

        else
        {
          sub_EB00(&v18[*(v21 + 20)], &v37, &unk_3FBB70, &unk_3174C0);
          sub_1DCCC(v18, &type metadata accessor for ActionOrigin);
        }

        sub_30A968();

        sub_EB68(&v37, &unk_3FBB70, &unk_3174C0);
        goto LABEL_21;
      }

      sub_1DC68(v25, v7);
      if (v7[16] == 1)
      {
        __swift_project_boxed_opaque_existential_1Tm(v39, v40);
        sub_30A848();

LABEL_21:
        sub_1DCCC(v23, &type metadata accessor for EpisodePlayState);
        sub_EB68(v36, &qword_3FBD68, &qword_317BF0);
        sub_1DCCC(v25, &type metadata accessor for EpisodePlayState);
        return __swift_destroy_boxed_opaque_existential_1(v39);
      }
    }

    sub_1DCCC(v25, &type metadata accessor for EpisodePlayState);
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    if (v30)
    {
      sub_30A868();
    }

    else
    {
      sub_30A898();
    }

    sub_1DCCC(v23, &type metadata accessor for EpisodePlayState);
    v27 = v36;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    sub_EB00(v22, v15, &qword_3FBD68, &qword_317BF0);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      sub_EB68(v15, &qword_3FBD68, &qword_317BF0);
      v37 = 0u;
      v38 = 0u;
    }

    else
    {
      sub_EB00(&v15[*(v21 + 20)], &v37, &unk_3FBB70, &unk_3174C0);
      sub_1DCCC(v15, &type metadata accessor for ActionOrigin);
    }

    sub_30A968();

    sub_EB68(&v37, &unk_3FBB70, &unk_3174C0);
    v27 = v22;
  }

  sub_EB68(v27, &qword_3FBD68, &qword_317BF0);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1A8C4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_302558();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_30B8A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3030A8();
  v27 = v14;
  v28 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v26);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v14);
  LOBYTE(v14) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (v14)
  {
    sub_30B8E8();
    v27 = sub_308F48();
    v28 = sub_1DD2C(&qword_3FBE00, 255, &type metadata accessor for PlayStationAction, &protocol conformance descriptor for Action);
    v26[0] = a1;
    (*(v4 + 104))(v6, enum case for ActionMetricsBehavior.notProcessed(_:), v3);

    v16 = sub_30B9E8();
    (*(v4 + 8))(v6, v3);
    (*(v24 + 8))(v9, v7);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v16;
  }

  else
  {
    v18 = sub_308F38();
    v20 = v19;
    v21 = sub_308F28();
    sub_1A310(v18, v20, v21, v22, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v11 + 104))(v13, enum case for ActionOutcome.performed(_:), v10);
    return sub_30BEC8();
  }
}

uint64_t sub_1AC9C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_302558();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_30B8A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3030A8();
  v27 = v14;
  v28 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v26);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v14);
  LOBYTE(v14) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (v14)
  {
    sub_30B8E8();
    v27 = sub_30A208();
    v28 = sub_1DD2C(&qword_3FBE08, 255, &type metadata accessor for PlayPauseStationAction, &protocol conformance descriptor for Action);
    v26[0] = a1;
    (*(v4 + 104))(v6, enum case for ActionMetricsBehavior.notProcessed(_:), v3);

    v16 = sub_30B9E8();
    (*(v4 + 8))(v6, v3);
    (*(v24 + 8))(v9, v7);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v16;
  }

  else
  {
    v18 = sub_30A1F8();
    v20 = v19;
    v21 = sub_30A1E8();
    sub_1A310(v18, v20, v21, v22, 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v11 + 104))(v13, enum case for ActionOutcome.performed(_:), v10);
    return sub_30BEC8();
  }
}

uint64_t sub_1B074(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_30B8A8();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v23 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v18 = sub_3030A8();
  v29 = v18;
  v30 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v28);
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v18);
  LOBYTE(v18) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v18)
  {
    sub_30B8E8();
    v29 = sub_308F68();
    v30 = sub_1DD2C(&qword_3FBE10, 255, &type metadata accessor for PodcastPlayAction, &protocol conformance descriptor for Action);
    v28[0] = v26;
    (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);

    v20 = sub_30B9E8();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_30A528();
    sub_30B8C8();
    if (v28[0])
    {
      sub_30A508();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    v21 = sub_307C08();
    sub_30B8C8();
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    sub_308F58();
    sub_EB00(v17, v14, &qword_3FBD68, &qword_317BF0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_EB68(v14, &qword_3FBD68, &qword_317BF0);
      memset(v27, 0, sizeof(v27));
    }

    else
    {
      sub_EB00(&v14[*(v21 + 20)], v27, &unk_3FBB70, &unk_3174C0);
      sub_1DCCC(v14, &type metadata accessor for ActionOrigin);
    }

    sub_30A978();
    sub_EB68(v27, &unk_3FBB70, &unk_3174C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v24 + 104))(v23, enum case for ActionOutcome.performed(_:), v25);
    v20 = sub_30BEC8();
    sub_EB68(v17, &qword_3FBD68, &qword_317BF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v20;
}

uint64_t sub_1B60C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  sub_30A528();
  sub_30B8C8();
  if (v9[0])
  {
    sub_30A508();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
  sub_30B8E8();
  v6 = sub_307C08();
  sub_30B8C8();
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_30AA78();
  sub_EB00(v5, v2, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
  {
    sub_EB68(v2, &qword_3FBD68, &qword_317BF0);
    memset(v8, 0, sizeof(v8));
  }

  else
  {
    sub_EB00(&v2[*(v6 + 20)], v8, &unk_3FBB70, &unk_3174C0);
    sub_1DCCC(v2, &type metadata accessor for ActionOrigin);
  }

  sub_30A998();
  sub_EB68(v8, &unk_3FBB70, &unk_3174C0);
  sub_EB68(v5, &qword_3FBD68, &qword_317BF0);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1B850(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_30B8A8();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v23 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v18 = sub_3030A8();
  v29 = v18;
  v30 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v28);
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v18);
  LOBYTE(v18) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v18)
  {
    sub_30B8E8();
    v29 = sub_30A2A8();
    v30 = sub_1DD2C(&qword_3FBE18, 255, &type metadata accessor for StoreEpisodePlayAction, &protocol conformance descriptor for Action);
    v28[0] = v26;
    (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);

    v20 = sub_30B9E8();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_30A528();
    sub_30B8C8();
    if (v28[0])
    {
      sub_30A508();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    v21 = sub_307C08();
    sub_30B8C8();
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    sub_30A298();
    sub_EB00(v17, v14, &qword_3FBD68, &qword_317BF0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_EB68(v14, &qword_3FBD68, &qword_317BF0);
      memset(v27, 0, sizeof(v27));
    }

    else
    {
      sub_EB00(&v14[*(v21 + 20)], v27, &unk_3FBB70, &unk_3174C0);
      sub_1DCCC(v14, &type metadata accessor for ActionOrigin);
    }

    sub_30A938();
    sub_EB68(v27, &unk_3FBB70, &unk_3174C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v24 + 104))(v23, enum case for ActionOutcome.performed(_:), v25);
    v20 = sub_30BEC8();
    sub_EB68(v17, &qword_3FBD68, &qword_317BF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v20;
}

uint64_t sub_1BDE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  sub_30A528();
  sub_30B8C8();
  if (v9[0])
  {
    sub_30A508();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
  sub_30B8E8();
  v6 = sub_307C08();
  sub_30B8C8();
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_30AD78();
  sub_30AD98();
  sub_EB00(v5, v2, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
  {
    sub_EB68(v2, &qword_3FBD68, &qword_317BF0);
    memset(v8, 0, sizeof(v8));
  }

  else
  {
    sub_EB00(&v2[*(v6 + 20)], v8, &unk_3FBB70, &unk_3174C0);
    sub_1DCCC(v2, &type metadata accessor for ActionOrigin);
  }

  sub_30A948();
  sub_EB68(v8, &unk_3FBB70, &unk_3174C0);
  sub_EB68(v5, &qword_3FBD68, &qword_317BF0);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1C04C(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_30B8A8();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_307CF8();
  v49 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = sub_303748();
  __chkstk_darwin(v15);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v38 - v18;
  __chkstk_darwin(v19);
  v48 = &v38 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v21 - 8);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v46 = &v38 - v25;
  v26 = sub_3030A8();
  v52 = v26;
  v53 = sub_1DD2C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
  (*(*(v26 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.experimentalPlayActionImplementations(_:), v26);
  LOBYTE(v26) = sub_302E88();
  __swift_destroy_boxed_opaque_existential_1(v51);
  if (v26)
  {
    sub_30B8E8();
    v52 = sub_309B08();
    v53 = sub_1DD2C(&qword_3FBE20, 255, &type metadata accessor for PlayPauseQueueAction, &protocol conformance descriptor for Action);
    v51[0] = v47;
    (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);

    v28 = sub_30B9E8();
    (*(v3 + 8))(v5, v2);
    (*(v39 + 8))(v8, v6);
  }

  else
  {
    sub_30A528();
    sub_30B8C8();
    if (v51[0])
    {
      sub_30A508();
    }

    v29 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
    sub_30B8E8();
    v30 = sub_307C08();
    sub_30B8C8();
    sub_309AD8();
    sub_307CB8();
    v31 = *(v49 + 8);
    v49 += 8;
    v31(v14, v45);
    sub_303B08();
    v32 = v48;
    sub_3039A8();

    v33 = v32;
    v34 = v44;
    sub_1DC68(v33, v44);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v38;
      sub_1DC68(v34, v38);
      LOBYTE(v35) = *(v35 + 16);
      __swift_project_boxed_opaque_existential_1Tm(v51, v52);
      if (v35)
      {
        sub_30A848();
      }

      else
      {
        sub_30A868();
      }
    }

    else
    {
      v39 = v53;
      __swift_project_boxed_opaque_existential_1Tm(v51, v52);
      sub_309AD8();
      sub_309AE8();
      sub_EB00(v29, v23, &qword_3FBD68, &qword_317BF0);
      if ((*(*(v30 - 8) + 48))(v23, 1, v30) == 1)
      {
        sub_EB68(v23, &qword_3FBD68, &qword_317BF0);
        memset(v50, 0, sizeof(v50));
      }

      else
      {
        sub_EB00(&v23[*(v30 + 20)], v50, &unk_3FBB70, &unk_3174C0);
        sub_1DCCC(v23, &type metadata accessor for ActionOrigin);
      }

      v36 = v40;
      sub_30A988();

      sub_EB68(v50, &unk_3FBB70, &unk_3174C0);
      v31(v36, v45);
      v29 = v46;
      v34 = v44;
    }

    sub_1DCCC(v34, &type metadata accessor for EpisodePlayState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    v28 = sub_30BEC8();

    sub_1DCCC(v48, &type metadata accessor for EpisodePlayState);
    sub_EB68(v29, &qword_3FBD68, &qword_317BF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v51);
  return v28;
}

void *sub_1C890(uint64_t a1)
{
  v52 = sub_3041E8();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v2 = &v44[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v3);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44[-v7];
  v9 = sub_308778();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v44[-v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  result = sub_30B8C8();
  v54 = *&v60[0];
  if (*&v60[0])
  {
    v50 = v3;
    v49 = *(&v60[0] + 1);
    v19 = sub_307C08();
    sub_30B8C8();
    sub_308478();
    sub_307698();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_EB68(v8, &qword_3FBD60, &unk_317DD0);
      sub_304128();

      v20 = sub_3041D8();
      v21 = sub_30C798();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = v17;
        v24 = swift_slowAlloc();
        *&v60[0] = v24;
        *v22 = 136315138;
        *&v59[0] = sub_308478();
        sub_3076F8();
        v25 = sub_30C148();
        v27 = sub_191264(v25, v26, v60);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_0, v20, v21, "Could not create destination for %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);

        swift_unknownObjectRelease();

        (*(v51 + 8))(v2, v52);
        v28 = v23;
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v51 + 8))(v2, v52);
        v28 = v17;
      }

      return sub_EB68(v28, &qword_3FBD68, &qword_317BF0);
    }

    v51 = v10;
    v29 = *(v10 + 32);
    v52 = v9;
    v29(v53, v8, v9);
    sub_308478();
    sub_EB00(v17, v14, &qword_3FBD68, &qword_317BF0);
    if ((*(*(v19 - 8) + 48))(v14, 1, v19) == 1)
    {
      sub_EB68(v14, &qword_3FBD68, &qword_317BF0);
      memset(v60, 0, 32);
    }

    else
    {
      sub_EB00(&v14[*(v19 + 20)], v60, &unk_3FBB70, &unk_3174C0);
      sub_1DCCC(v14, &type metadata accessor for ActionOrigin);
    }

    memset(v59, 0, sizeof(v59));
    sub_EB00(v60, v57, &unk_3FBB70, &unk_3174C0);
    v48 = v17;
    if (v58)
    {
      sub_EB00(v57, v56, &unk_3FBB70, &unk_3174C0);
      sub_124C4(0, &qword_3FBD90, UIView_ptr);
      v30 = v5;
      if (swift_dynamicCast())
      {
        v31 = v55;
        [v55 bounds];
        v47 = v32;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1(v56);
        v39 = 0;
LABEL_17:
        ObjectType = swift_getObjectType();
        sub_EB68(v57, &unk_3FBB70, &unk_3174C0);
        sub_3076C8();
        v45 = sub_3076B8();
        v40 = v50;
        sub_EB00(v59, v30 + v50[9], &unk_3FBB70, &unk_3174C0);
        v41 = v47;
        sub_1DD74(v31, v47, v34, v36, v38, v39);
        sub_3076E8();

        sub_1DD98(v31, v41, v34, v36, v38, v39);
        sub_EB68(v59, &unk_3FBB70, &unk_3174C0);
        sub_EB68(v60, &unk_3FBB70, &unk_3174C0);
        *(v30 + v40[5]) = v45;
        v42 = v30 + v40[6];
        *v42 = v31;
        *(v42 + 8) = v41;
        *(v42 + 16) = v34;
        *(v42 + 24) = v36;
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
        *(v30 + v40[8]) = 0;
        v43 = v53;
        (*(v49 + 32))(v53, v30, 0, 0, ObjectType);
        swift_unknownObjectRelease();
        sub_1DCCC(v30, type metadata accessor for FlowPresentationHints);
        (*(v51 + 8))(v43, v52);
        v28 = v48;
        return sub_EB68(v28, &qword_3FBD68, &qword_317BF0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBE28, &unk_317C50);
      if (swift_dynamicCast())
      {
        v31 = v55;
        __swift_destroy_boxed_opaque_existential_1(v56);
        v47 = 0;
        v34 = 0;
        v36 = 0;
        v38 = 0;
        v39 = 1;
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    else
    {
      v30 = v5;
    }

    v31 = 0;
    v47 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v39 = -1;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D0F8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = sub_307C08();
  sub_30B8C8();
  sub_EB00(v6, v3, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    sub_EB68(v3, &qword_3FBD68, &qword_317BF0);
    v10 = 0u;
    v11 = 0u;
LABEL_6:
    sub_EB68(&v10, &unk_3FBB70, &unk_3174C0);
    return sub_EB68(v6, &qword_3FBD68, &qword_317BF0);
  }

  sub_EB00(&v3[*(v7 + 20)], &v10, &unk_3FBB70, &unk_3174C0);
  sub_1DCCC(v3, &type metadata accessor for ActionOrigin);
  if (!*(&v11 + 1))
  {
    goto LABEL_6;
  }

  sub_124C4(0, &qword_3FBD90, UIView_ptr);
  if (swift_dynamicCast())
  {
    v8 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    __swift_project_boxed_opaque_existential_1Tm(&v10, *(&v11 + 1));
    sub_30A8A8();

    sub_EB68(v6, &qword_3FBD68, &qword_317BF0);
    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  return sub_EB68(v6, &qword_3FBD68, &qword_317BF0);
}

void *sub_1D364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v15 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  result = sub_30B8C8();
  v9 = v18[0];
  if (v18[0])
  {
    v10 = v18[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
    sub_30B8E8();
    v11 = sub_307C08();
    sub_30B8C8();
    sub_EB00(v7, v4, &qword_3FBD68, &qword_317BF0);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
    {
      swift_unknownObjectRelease();
      sub_EB68(v4, &qword_3FBD68, &qword_317BF0);
      v16 = 0u;
      v17 = 0u;
    }

    else
    {
      sub_EB00(&v4[*(v11 + 20)], &v16, &unk_3FBB70, &unk_3174C0);
      sub_1DCCC(v4, &type metadata accessor for ActionOrigin);
      if (*(&v17 + 1))
      {
        sub_124C4(0, &qword_3FBE30, UIViewController_ptr);
        if (swift_dynamicCast())
        {
          v12 = v15[1];
          __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = v12;
          v13[5] = a1;
          swift_unknownObjectRetain();
          v14 = v12;

          sub_30A888();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    sub_EB68(&v16, &unk_3FBB70, &unk_3174C0);
LABEL_9:
    sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t sub_1D664@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t sub_1D770()
{
  result = qword_3FBD50;
  if (!qword_3FBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBD50);
  }

  return result;
}

uint64_t sub_1D7C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1D81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_F4FC;

  return sub_169BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D8F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1D938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_F4FC;

  return sub_16D60(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1DA94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DAE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1DB3C(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_40Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_303748();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1DD74(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1DD8C(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

id sub_1DD8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1DD98(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1DDB0(result, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_1DDB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1DDBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1DE04()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v4 = sub_308058();
  return (*(v1 + 48))(v2, v4, ObjectType, v1);
}

uint64_t sub_1DE7C(void *a1, uint64_t a2)
{
  v3 = sub_30B8A8();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_30B6E8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_30BF58();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = [Strong nextResponder], v12, v13) && (v14 = sub_30C678(), v13, v14))
  {
    swift_getObjectType();
    v15 = sub_307C18();
    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    sub_30BF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
    sub_30B708();
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B6D8();
    v23._object = 0x80000000003360F0;
    v23._countAndFlagsBits = 0xD00000000000001DLL;
    sub_30B6C8(v23);
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1Tm(a1, v17);
    v22[3] = v17;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v22);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_0Tm, v18, v17);
    sub_30B6B8();
    sub_EB68(v22, &unk_3FBB70, &unk_3174C0);
    v24._countAndFlagsBits = 46;
    v24._object = 0xE100000000000000;
    sub_30B6C8(v24);
    sub_30B6F8();
    sub_30BDC8();

    (*(v8 + 8))(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v20 + 104))(v5, enum case for ActionOutcome.unsupported(_:), v21);
    return sub_30BEC8();
  }
}

uint64_t sub_1E23C(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v5 = sub_30B6E8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_30BF58();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBEE8, &qword_317CD8);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v43 - v10;
  v52 = sub_30BC28();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_302268();
  __chkstk_darwin(v12 - 8);
  v43[3] = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_307C08();
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v44 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC140, &unk_317CE0);
  __chkstk_darwin(v16 - 8);
  v46 = v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v18 - 8);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v43 - v22;
  v45 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v25 = a1, v26 = Strong, v27 = [Strong nextResponder], v26, a1 = v25, v27) && (v28 = sub_30C678(), v43[2] = v29, v27, v28))
  {
    v43[1] = v28;
    sub_30B8C8();
    sub_12670(a1, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC150, &unk_317DE0);
    if (swift_dynamicCast())
    {
      sub_12658(v56, v59);
      v30 = *(v45 + 24);
      if (v30)
      {
        v31 = *(v45 + 32);
        sub_1EB60(v23, v20);
        v33 = v53 + 48;
        v32 = *(v53 + 48);
        if (v32(v20, 1, v14) == 1)
        {

          v53 = v33;
          sub_302228();
          memset(v58, 0, 32);
          v34 = v44;
          sub_307BF8();
          if (v32(v20, 1, v14) != 1)
          {
            sub_EB68(v20, &qword_3FBD68, &qword_317BF0);
          }
        }

        else
        {
          v34 = v44;
          sub_1EC3C(v20, v44);
        }

        v40 = v46;
        v30(v59, v34);
        sub_1EBD0(v30, v31);
        sub_1EBE0(v34);
      }

      else
      {
        v39 = sub_309F08();
        v40 = v46;
        (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      }

      v41 = v47;
      sub_30BBD8();
      sub_309F08();
      v42 = v48;
      sub_30BB38();
      (*(v49 + 8))(v41, v51);
      swift_getObjectType();
      sub_307C28();
      swift_unknownObjectRelease();
      (*(v50 + 8))(v42, v52);
      sub_EB68(v40, &unk_3FC140, &unk_317CE0);
      __swift_destroy_boxed_opaque_existential_1(v59);
    }

    else
    {
      v57 = 0;
      memset(v56, 0, sizeof(v56));
      sub_EB68(v56, &unk_3FBEF0, &qword_317D00);
      swift_getObjectType();
      sub_307C28();
      swift_unknownObjectRelease();
    }

    return sub_EB68(v23, &qword_3FBD68, &qword_317BF0);
  }

  else
  {
    sub_30BF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
    sub_30B708();
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B6D8();
    v60._object = 0x8000000000336110;
    v60._countAndFlagsBits = 0xD00000000000001DLL;
    sub_30B6C8(v60);
    v35 = a1[3];
    v36 = __swift_project_boxed_opaque_existential_1Tm(a1, v35);
    v59[3] = v35;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v59);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_0Tm, v36, v35);
    sub_30B6B8();
    sub_EB68(v59, &unk_3FBB70, &unk_3174C0);
    v61._countAndFlagsBits = 46;
    v61._object = 0xE100000000000000;
    sub_30B6C8(v61);
    sub_30B6F8();
    sub_30BDC8();

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1EAF4()
{
  swift_unknownObjectWeakDestroy();
  sub_1EBD0(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1EB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EBD0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1EBE0(uint64_t a1)
{
  v2 = sub_307C08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1EC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_307C08();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ECA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_30B6E8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_30BF58();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_303748();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0, &qword_317C30);
  sub_30B8C8();
  if (!v18[0])
  {
    sub_30BF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
    sub_30B708();
    v16 = a2;
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B6D8();
    v19._object = 0x8000000000336280;
    v19._countAndFlagsBits = 0xD000000000000021;
    sub_30B6C8(v19);
    v12 = a1[3];
    v13 = __swift_project_boxed_opaque_existential_1Tm(a1, v12);
    v18[3] = v12;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v18);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0Tm, v13, v12);
    sub_30B6B8();
    sub_EB68(v18, &unk_3FBB70, &unk_3174C0);
    v20._countAndFlagsBits = 0x6D206B63696C6320;
    v20._object = 0xEF21736369727465;
    sub_30B6C8(v20);
    sub_30B6F8();
    sub_30BDD8();

    (*(v17 + 8))(v7, v5);
    return (*(v9 + 56))(v16, 1, 1, v8);
  }

  sub_12670(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
  sub_3088B8();
  if (swift_dynamicCast())
  {
    sub_308898();
    sub_303B08();
    sub_3039A8();

LABEL_7:

    goto LABEL_8;
  }

  sub_309B08();
  if (swift_dynamicCast())
  {
    sub_309AF8();
    sub_303B08();
    sub_3039A8();

    goto LABEL_7;
  }

  sub_30A178();
  if (!swift_dynamicCast())
  {

    (*(v9 + 56))(a2, 1, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_30A0F8();
  sub_303B18();

  sub_3039A8();

  if (sub_3036F8())
  {
    sub_3037C8();
  }

  else
  {
    sub_3037A8();
  }

  sub_30A158();

  sub_28D58(v11, a2, &type metadata accessor for EpisodePlayState);
LABEL_8:
  (*(v9 + 56))(a2, 0, 1, v8);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t RootActionRunner.performEffects(of:asPartOf:)(void *a1)
{
  v2 = v1;
  v83 = a1;
  v65 = sub_30AE08();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v59 - v5;
  v69 = sub_30AB38();
  v63 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v59 - v8;
  v71 = sub_30A828();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v59 - v11;
  v77 = sub_30A7D8();
  v73 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v59 - v14;
  v78 = sub_30A0B8();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  v19 = sub_302F18();
  v79 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  v25 = sub_30B8A8();
  v26 = *(v25 - 8);
  v80 = v25;
  v81 = v26;
  __chkstk_darwin(v25);
  v82 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBF00, &unk_317D20);
  sub_30B968();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = UIResponder.nearestFlowController.getter();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v87[0] = v30;
  v87[1] = v32;
  v33 = sub_30B918();

  swift_unknownObjectRelease();
  sub_12670(v83, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
  sub_308DC8();
  if (!swift_dynamicCast())
  {
    sub_307778();
    if (swift_dynamicCast())
    {
      v35 = v86;
      sub_307768();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = v2;
      v36[4] = v33;
      v37 = swift_allocObject();
      v37[2] = v35;
      v37[3] = v2;
      v37[4] = v33;
      v38 = sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v39 = sub_30C8F8();
      v84[3] = v38;
      v84[4] = &protocol witness table for OS_dispatch_queue;
      v84[0] = v39;
      sub_30BEA8();

      __swift_destroy_boxed_opaque_existential_1(v84);
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
      (*(v81 + 104))(v82, enum case for ActionOutcome.performed(_:), v80);
      v34 = sub_30BEC8();

      goto LABEL_25;
    }

    sub_309268();
    if (swift_dynamicCast())
    {
      v40 = v86;
      sub_30B8C8();
      v41 = v33;
      v42 = v84[0];
      if (v84[0])
      {
        v43 = v84[1];
        v44 = type metadata accessor for HttpTemplateController();
        v45 = objc_allocWithZone(v44);
        v47 = sub_28990(&qword_3FBF18, v46, type metadata accessor for RootActionRunner, &protocol conformance descriptor for FlowActionRunner);
        *&v45[OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_textFields] = _swiftEmptyArrayStorage;
        *&v45[OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_okAction] = 0;
        v45[OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_hasRequiredParameters] = 0;
        *&v45[OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_objectGraph] = v41;
        v48 = &v45[OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_actionRunner];
        *v48 = v2;
        v48[1] = v47;
        *&v45[OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_templateAction] = v40;
        v85.receiver = v45;
        v85.super_class = v44;

        v49 = objc_msgSendSuper2(&v85, "init");
        sub_258A18(v42, v43);
        swift_unknownObjectRelease();
      }

      goto LABEL_24;
    }

    sub_309308();
    if (swift_dynamicCast())
    {
      sub_24828(v84[0]);
      goto LABEL_24;
    }

    sub_309208();
    if (swift_dynamicCast())
    {
      sub_24A94(v84[0]);
      goto LABEL_24;
    }

    sub_30AAA8();
    if (swift_dynamicCast())
    {
      sub_24EF8(v84[0]);
      goto LABEL_24;
    }

    sub_30AAC8();
    if (swift_dynamicCast())
    {
      sub_25368();
      goto LABEL_24;
    }

    sub_30ACE8();
    if (swift_dynamicCast())
    {
      sub_2564C(v84[0]);
      goto LABEL_24;
    }

    sub_309168();
    if (swift_dynamicCast())
    {
      sub_25A30(v84[0]);
      goto LABEL_24;
    }

    if (swift_dynamicCast())
    {
      v51 = v79;
      (*(v79 + 32))(v21, v24, v19);
      sub_260A0(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
      (*(v81 + 104))(v82, enum case for ActionOutcome.performed(_:), v80);
      v34 = sub_30BEC8();

      (*(v51 + 8))(v21, v19);
      goto LABEL_26;
    }

    sub_3088D8();
    if (swift_dynamicCast())
    {
      sub_261A8();
      goto LABEL_24;
    }

    sub_309EA8();
    if (swift_dynamicCast())
    {
      sub_205FC(v84[0], v33);
      goto LABEL_24;
    }

    sub_307AC8();
    if (swift_dynamicCast())
    {
      sub_2090C(v84[0], v33);
      goto LABEL_24;
    }

    sub_30A2F8();
    if (swift_dynamicCast())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
      (*(v81 + 104))(v82, enum case for ActionOutcome.performed(_:), v80);
      v52 = sub_30BEC8();
LABEL_37:
      v34 = v52;
      goto LABEL_25;
    }

    sub_308F88();
    if (swift_dynamicCast())
    {
      sub_26338(v84[0]);
      goto LABEL_24;
    }

    if (swift_dynamicCast())
    {
      v53 = v75;
      v54 = v74;
      v55 = v78;
      (*(v75 + 32))(v74, v18, v78);
      sub_26650(v54, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
      (*(v81 + 104))(v82, enum case for ActionOutcome.performed(_:), v80);
      v34 = sub_30BEC8();

      (*(v53 + 8))(v54, v55);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v56 = v73;
      v57 = v72;
      v58 = v77;
      (*(v73 + 32))(v72, v76, v77);
      sub_26BC4(v57);
    }

    else
    {
      sub_30AD68();
      if (swift_dynamicCast())
      {
        sub_30AED8();
        sub_30B8E8();
        sub_30AEB8();

        goto LABEL_24;
      }

      if (swift_dynamicCast())
      {
        v56 = v67;
        v57 = v66;
        v58 = v71;
        (*(v67 + 32))(v66, v70, v71);
        sub_26EC4();
      }

      else if (swift_dynamicCast())
      {
        v56 = v63;
        v57 = v62;
        v58 = v69;
        (*(v63 + 32))(v62, v68, v69);
        sub_27060(v57);
      }

      else
      {
        if (!swift_dynamicCast())
        {
          v52 = sub_12C40(v83);
          goto LABEL_37;
        }

        v56 = v61;
        v57 = v60;
        v58 = v65;
        (*(v61 + 32))(v60, v64, v65);
        sub_27378(v57);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
    (*(v81 + 104))(v82, enum case for ActionOutcome.performed(_:), v80);
    v34 = sub_30BEC8();

    (*(v56 + 8))(v57, v58);
    goto LABEL_26;
  }

  sub_201D4(v84[0], v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10, &qword_317D30);
  (*(v81 + 104))(v82, enum case for ActionOutcome.performed(_:), v80);
  v34 = sub_30BEC8();

LABEL_25:

LABEL_26:
  __swift_destroy_boxed_opaque_existential_1(v87);
  return v34;
}

void sub_201D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_301CB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_302558();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_124C4(0, &unk_3FC170, ACAccountStore_ptr);
  sub_30B8E8();
  v10 = v25[0];
  if (sub_308DA8())
  {
    v11 = [v10 ams_activeiTunesAccount];
    if (!v11)
    {
      v22 = sub_3079D8();
      v23 = sub_307988();
      v25[3] = v22;
      v25[4] = sub_28990(&unk_3FC180, 255, &type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
      v25[0] = v23;
      (*(v7 + 104))(v9, enum case for ActionMetricsBehavior.notProcessed(_:), v6);
      type metadata accessor for FlowActionRunner();
      sub_28990(&qword_3FBDA8, 255, type metadata accessor for FlowActionRunner, &protocol conformance descriptor for FlowActionRunner);
      sub_307C38();

      (*(v7 + 8))(v9, v6);
      __swift_destroy_boxed_opaque_existential_1(v25);
      return;
    }
  }

  if (sub_308D98())
  {
    v12 = [objc_opt_self() defaultWorkspace];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v12;
    sub_308DB8();
    sub_301C08(v14);
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    [v13 openSensitiveURL:v16 withOptions:0];
  }

  else
  {
    v17 = [objc_opt_self() sharedApplication];
    sub_308DB8();
    sub_301C08(v18);
    v20 = v19;
    (*(v3 + 8))(v5, v2);
    sub_2D6B88(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_28990(&unk_404010, 255, type metadata accessor for OpenExternalURLOptionsKey, &unk_31729C);
    isa = sub_30BF88().super.isa;

    [v17 openURL:v20 options:isa completionHandler:0];
  }
}

void sub_205FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_302558();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_124C4(0, &unk_3FC170, ACAccountStore_ptr);
  sub_30B8E8();
  v7 = aBlock[0];
  if (sub_309E88())
  {
    v8 = [v7 ams_activeiTunesAccount];
    if (!v8)
    {
      v13 = sub_3079D8();
      v14 = sub_307988();
      v16 = v13;
      v17 = sub_28990(&unk_3FC180, 255, &type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
      aBlock[0] = v14;
      (*(v4 + 104))(v6, enum case for ActionMetricsBehavior.notProcessed(_:), v3);
      type metadata accessor for FlowActionRunner();
      sub_28990(&qword_3FBDA8, 255, type metadata accessor for FlowActionRunner, &protocol conformance descriptor for FlowActionRunner);
      sub_307C38();

      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      return;
    }
  }

  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    sub_309E98();
    v11 = sub_30C098();

    v17 = sub_28ADC;
    v18 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A28C;
    v16 = &block_descriptor_2;
    v12 = _Block_copy(aBlock);

    [v10 openApplicationWithBundleIdentifier:v11 usingConfiguration:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2090C(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_301CB8();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v66 - v8;
  v9 = sub_302558();
  v71 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3041E8();
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = &v66 - v15;
  __chkstk_darwin(v16);
  v67 = &v66 - v17;
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v21 - 8);
  v23 = &v66 - v22;
  sub_124C4(0, &unk_3FC170, ACAccountStore_ptr);
  sub_30B8E8();
  v24 = v82[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190, &qword_317E08);
  sub_30B8E8();
  sub_308858();
  sub_30B8E8();
  v77 = v79;
  sub_307C08();
  v78 = v23;
  v25 = v24;
  sub_30B8C8();
  v26 = [v24 ams_activeiTunesAccount];
  if (v26)
  {

    v27 = v74;
    sub_307AB8();
    v28 = v73;
    if ((*(v73 + 48))(v4, 1, v5) == 1)
    {
      sub_EB68(v4, &qword_3FB8E0, &qword_317E00);
      sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
      v29 = v69;
      sub_30D358();
      v30 = sub_3041D8();
      v31 = sub_30C798();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v78;
      if (v32)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v30, v31, "Unable to get authorizationURL from OAuthAction.", v34, 2u);
      }

      (*(v75 + 8))(v29, v76);
      v60 = v33;
    }

    else
    {
      v43 = *(v28 + 32);
      v44 = v70;
      v43(v70, v4, v5);
      v45 = v78;
      sub_231E8(v78);
      if (v46)
      {
        v69 = v43;
        v71 = v46;
        v72 = v25;
        sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
        v47 = v67;
        sub_30D358();
        v48 = sub_3041D8();
        v49 = sub_30C7B8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v48, v49, "User is signed-in and authorizationURL is present. Starting OAuthSession.", v50, 2u);
        }

        (*(v75 + 8))(v47, v76);
        v51 = v27;
        v52 = sub_307AA8();
        v75 = v53;
        v76 = v52;
        v54 = v68;
        (*(v28 + 16))(v68, v44, v5);
        sub_12670(v82, &v79);
        v55 = (*(v28 + 80) + 16) & ~*(v28 + 80);
        v56 = v5;
        v57 = (v6 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = swift_allocObject();
        (v69)(v58 + v55, v54, v56);
        *(v58 + v57) = v51;
        sub_12658(&v79, v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));

        v59 = v71;
        sub_308848();

        (*(v28 + 8))(v44, v56);
        v60 = v78;
      }

      else
      {
        sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
        v61 = v66;
        sub_30D358();
        v62 = sub_3041D8();
        v63 = sub_30C798();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_0, v62, v63, "Could not provide a UIWindow for OAuth. Unable to present the ASWebAuthenticationSession web view.", v64, 2u);
        }

        (*(v75 + 8))(v61, v76);
        (*(v28 + 8))(v44, v5);
        v60 = v45;
      }
    }

    sub_EB68(v60, &qword_3FBD68, &qword_317BF0);
    v42 = v82;
  }

  else
  {
    v35 = v11;
    v36 = v71;
    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    sub_30D358();
    v37 = sub_3041D8();
    v38 = sub_30C7B8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "User is not signed-in. Presenting AMS Auth sheet and not starting OAuth.", v39, 2u);
    }

    (*(v75 + 8))(v20, v76);
    v40 = sub_3079D8();
    v41 = sub_307988();
    v80 = v40;
    v81 = sub_28990(&unk_3FC180, 255, &type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
    *&v79 = v41;
    v36[13](v35, enum case for ActionMetricsBehavior.notProcessed(_:), v9);
    type metadata accessor for FlowActionRunner();
    sub_28990(&qword_3FBDA8, 255, type metadata accessor for FlowActionRunner, &protocol conformance descriptor for FlowActionRunner);
    sub_307C38();

    (v36[1])(v35, v9);
    sub_EB68(v78, &qword_3FBD68, &qword_317BF0);
    __swift_destroy_boxed_opaque_existential_1(v82);
    v42 = &v79;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t RootActionRunner.processMetrics(of:using:asPartOf:)(void *a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF28, qword_317D38);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_303748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_276B8(a1, a2, a3);
  if (v13[2])
  {
    sub_1ECA0(a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_EB68(v8, &qword_3FBF28, qword_317D38);
    }

    else
    {
      v15 = sub_28D58(v8, v12, &type metadata accessor for EpisodePlayState);
      __chkstk_darwin(v15);
      *&v17[-16] = v12;
      v16 = sub_21914(sub_28910, &v17[-32], v13, &type metadata accessor for MetricsData, sub_175204);

      sub_28930(v12, &type metadata accessor for EpisodePlayState);
      v13 = v16;
    }

    sub_281DC(v13, a2);
  }

  else
  {
  }
}

uint64_t sub_215A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_30B7E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = sub_3031F8();
  v7 = v6;
  if (sub_3036F8())
  {
    v8 = sub_3037C8();
  }

  else
  {
    v8 = sub_3037A8();
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_30B7B8();
  v14[3] = &type metadata for String;
  v14[0] = v10;
  v14[1] = v11;
  sub_23E74(v14, v5, v7);
  return v12(v15, 0);
}

void *sub_216A8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v7 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement(0);
  v23 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v29 = _swiftEmptyArrayStorage;
  sub_175248(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v27 = v4;
    v12 = 0;
    v11 = v29;
    v13 = v26;
    if (v26 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v28 = a3 + v12;
      v15 = v9;
      v16 = v27;
      v24(&v28);
      v27 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v29 = v11;
      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_175248((v17 > 1), v18 + 1, 1);
        v11 = v29;
      }

      v11[2] = v18 + 1;
      v19 = v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18;
      v9 = v15;
      sub_28D58(v15, v19, type metadata accessor for CategorySelectionGridLayout.SubviewPlacement);
      if (v26 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *sub_21914(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v9 = *(v25 - 8);
  v10 = __chkstk_darwin(v25);
  v12 = &v22 - v11;
  v13 = *(a3 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (!v13)
  {
    return v14;
  }

  v28 = _swiftEmptyArrayStorage;
  v22 = a5;
  (a5)(0, v13, 0, v10);
  v14 = v28;
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a3 + v24;
  v23 = (v9 + 32);
  v16 = *(v9 + 72);
  while (1)
  {
    v17 = v12;
    v26(v15);
    if (v7)
    {
      break;
    }

    v7 = 0;
    v28 = v14;
    v19 = v14[2];
    v18 = v14[3];
    if (v19 >= v18 >> 1)
    {
      v22(v18 > 1, v19 + 1, 1);
      v14 = v28;
    }

    v14[2] = v19 + 1;
    v20 = v14 + v24 + v19 * v16;
    v12 = v17;
    (*v23)(v20, v17, v25);
    v15 += v16;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AE4(_BYTE *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0, &unk_31E140);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_3022E8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3041E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v23 = v12;
    sub_3041A8();
    v17 = sub_3041D8();
    v18 = sub_30C798();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v22 = a2;
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Unsubscribe unsuccessful", v19, 2u);
    }

    (*(v14 + 8))(v16, v13);
    v12 = v23;
  }

  sub_30ACD8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_EB68(v8, &qword_3FC1B0, &unk_31E140);
  }

  (*(v10 + 32))(v12, v8, v9);
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  sub_30ACC8();
  v21 = sub_30AF08();

  if (v21)
  {
    sub_3022C8();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21E04(uint64_t a1)
{
  v1 = sub_3041E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3041A8();
  swift_errorRetain();
  v5 = sub_3041D8();
  v6 = sub_30C798();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_30D788();
    v11 = sub_191264(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_21FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_3041E8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  if (a1)
  {
    v19 = sub_301B38();
    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    sub_30D358();
    v20 = v19;
    v21 = sub_3041D8();
    v22 = sub_30C798();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v52 = v24;
      *v23 = 136315138;
      v25 = [v20 localizedDescription];
      v50 = v10;
      v26 = v25;
      v27 = sub_30C0D8();
      v49 = v9;
      v28 = v27;
      v30 = v29;

      v31 = sub_191264(v28, v30, &v52);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_0, v21, v22, "ChannelOfferAction: purchase failed with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);

      (*(v50 + 8))(v18, v49);
    }

    else
    {

      (*(v10 + 8))(v18, v9);
    }

    sub_309168();
    sub_308D78(0);
  }

  else
  {
    v32 = sub_309138();
    if ((v33 & 1) == 0)
    {
      v34 = v32;
      v50 = v10;
      sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
      sub_30D358();
      v35 = sub_3041D8();
      v36 = sub_30C7B8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v49 = a2;
        v38 = v37;
        v48 = swift_slowAlloc();
        v51 = v34;
        v52 = v48;
        *v38 = 136315138;
        sub_28A88();
        v39 = sub_30D6D8();
        v41 = sub_191264(v39, v40, &v52);
        v47 = v34;
        v42 = v41;

        *(v38 + 4) = v42;
        _os_log_impl(&dword_0, v35, v36, "Following show %s for new subscription.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
      }

      v10 = v50;
      (*(v50 + 8))(v15, v9);
      __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
      v43 = sub_301CB8();
      (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
      sub_30AEA8();

      sub_EB68(v8, &qword_3FB8E0, &qword_317E00);
    }

    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    sub_30D358();
    v44 = sub_3041D8();
    v45 = sub_30C7B8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "Successfully purchased item.", v46, 2u);
    }

    (*(v10 + 8))(v12, v9);
    sub_309168();
    sub_308D78(1);
  }
}

uint64_t sub_2259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v5 = sub_302558();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_301CB8();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3041E8();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304128();

  v14 = sub_3041D8();
  v15 = sub_30C788();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v5;
    v18 = v17;
    v37[0] = v17;
    *v16 = 136315138;
    v29 = v11;
    sub_307758();
    v19 = sub_301BD8();
    v30 = a3;
    v20 = v6;
    v22 = v21;
    (*(v32 + 8))(v10, v33);
    v23 = sub_191264(v19, v22, v37);
    v6 = v20;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_0, v14, v15, "Completed %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v5 = v31;

    (*(v36 + 8))(v13, v29);
  }

  else
  {

    (*(v36 + 8))(v13, v11);
  }

  result = sub_307748();
  if (result)
  {
    v25 = result;
    v37[3] = sub_30B038();
    v37[4] = sub_28990(&qword_3FBDA0, 255, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    v37[0] = v25;
    v26 = v34;
    (*(v6 + 104))(v34, enum case for ActionMetricsBehavior.fromAction(_:), v5);
    type metadata accessor for RootActionRunner();
    sub_28990(&qword_3FBF18, v27, type metadata accessor for RootActionRunner, &protocol conformance descriptor for FlowActionRunner);

    sub_307C38();

    (*(v6 + 8))(v26, v5);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_229D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v5 = sub_302558();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_301CB8();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3041E8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304128();

  swift_errorRetain();
  v14 = sub_3041D8();
  v15 = sub_30C798();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v10;
    v17 = v16;
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v17 = 136315394;
    sub_307758();
    v18 = sub_301BD8();
    v33 = a2;
    v20 = v19;
    (*(v34 + 8))(v9, v35);
    v21 = sub_191264(v18, v20, v41);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v22 = sub_30D788();
    v24 = sub_191264(v22, v23, v41);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_0, v14, v15, "Could not complete %s, reason: %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v13, v32);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  result = sub_307738();
  if (result)
  {
    v26 = result;
    v41[3] = sub_30B038();
    v41[4] = sub_28990(&qword_3FBDA0, 255, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    v41[0] = v26;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    (*(v36 + 104))(v38, enum case for ActionMetricsBehavior.fromAction(_:), v37);
    type metadata accessor for RootActionRunner();
    sub_28990(&qword_3FBF18, v30, type metadata accessor for RootActionRunner, &protocol conformance descriptor for FlowActionRunner);

    sub_307C38();

    (*(v27 + 8))(v29, v28);
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  return result;
}

uint64_t sub_22E5C(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3041E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  if (a2 && (a1 & 1) == 0)
  {
    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    swift_errorRetain();
    sub_30D358();
    swift_errorRetain();

    v20 = sub_3041D8();
    v21 = sub_30C798();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = sub_309E98();
      v25 = sub_191264(v23, v24, &v30);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_30D788();
      v28 = sub_191264(v26, v27, &v30);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_0, v20, v21, "Failed to open application with bundleId: %s with error: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    sub_30D358();

    v12 = sub_3041D8();
    v13 = sub_30C7B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v16 = sub_309E98();
      v18 = sub_191264(v16, v17, &v30);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "Opened external application with bundleId: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_231E8(uint64_t a1)
{
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  sub_EB00(a1, &v25 - v10, &qword_3FBD68, &qword_317BF0);
  v12 = sub_307C08();
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    sub_EB68(v11, &qword_3FBD68, &qword_317BF0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_28930(v11, &type metadata accessor for ActionOrigin);
    if (Strong)
    {
      v14 = [Strong window];

      if (v14)
      {
        sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
        sub_30D358();
        v15 = sub_3041D8();
        v16 = sub_30C7B8();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_0, v15, v16, "Successfully got the view's window for the OAuthSession.", v17, 2u);
        }

        (*(v3 + 8))(v5, v2);
        return;
      }
    }
  }

  sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
  sub_30D358();
  v18 = sub_3041D8();
  v19 = sub_30C798();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Unable to get the view's window for the OAuthSession. This is bad and the OAuthSession may fail.", v20, 2u);
  }

  (*(v3 + 8))(v8, v2);
  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 windows];

  sub_124C4(0, &qword_3FC1C8, UIWindow_ptr);
  v23 = sub_30C368();

  if ((v23 & 0xC000000000000001) != 0)
  {
    sub_30D578();
    goto LABEL_13;
  }

  if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    v24 = *(v23 + 32);
LABEL_13:

    return;
  }

  __break(1u);
}

void sub_235E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_301CB8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3041E8();
  __chkstk_darwin(v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v34 = v18;
    v35 = v17;
    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    swift_errorRetain();
    sub_30D358();
    (*(v13 + 16))(v15, a3, v12);
    swift_errorRetain();
    v21 = sub_3041D8();
    v22 = sub_30C798();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v23 = 136315394;
      v24 = sub_301BD8();
      v26 = v25;
      (*(v13 + 8))(v15, v12);
      v27 = sub_191264(v24, v26, &v36);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2112;
      v28 = sub_301B38();
      *(v23 + 14) = v28;
      v29 = v32;
      *v32 = v28;
      _os_log_impl(&dword_0, v21, v22, "OAuthSession Authentication failed for authorizationURL: %s with error: %@", v23, 0x16u);
      sub_EB68(v29, &qword_3FC200, &unk_328360);

      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    (*(v34 + 8))(v20, v35);
  }

  else if (a1)
  {
    sub_307A98();
    if ((v30 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(a5, a5[3]);
      (*(v13 + 56))(v11, 1, 1, v12);
      sub_30AE88();

      sub_EB68(v11, &qword_3FB8E0, &qword_317E00);
    }
  }
}

uint64_t sub_239F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A0B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3041E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  if (a1)
  {
    swift_errorRetain();
    sub_3041B8();
    swift_errorRetain();
    v15 = sub_3041D8();
    v16 = sub_30C798();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_0, v15, v16, "[ChannelUpdaterUtil] Did not fetch channel and write to database with reason: %@", v17, 0xCu);
      sub_EB68(v18, &qword_3FC200, &unk_328360);
    }

    else
    {
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_3041B8();
    (*(v5 + 16))(v7, a2, v4);
    v20 = sub_3041D8();
    v21 = sub_30C7B8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29 = v22;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v22 = 136315138;
      v31 = sub_30A098();
      sub_28A88();
      v23 = sub_30D6D8();
      v25 = v24;
      (*(v5 + 8))(v7, v4);
      v26 = sub_191264(v23, v25, &v32);

      v27 = v29;
      *(v29 + 1) = v26;
      _os_log_impl(&dword_0, v20, v21, "[ChannelUpdaterUtil] Successfully fetched and saved channel to library with adamID: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v14, v8);
  }
}

double sub_23DD0@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_19182C(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_242B0();
      v10 = v12;
    }

    sub_1DA94((*(v10 + 56) + 32 * v8), a1);
    sub_24094(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_23E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DA94(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_23F44(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_EB68(a1, &unk_3FBB70, &unk_3174C0);
    sub_23DD0(v9, a2, a3);

    return sub_EB68(v9, &unk_3FBB70, &unk_3174C0);
  }

  return result;
}

_OWORD *sub_23F44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19182C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24454(v16, a4 & 1);
    v11 = sub_19182C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_30D778();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1DA94(a1, v22);
  }

  else
  {
    sub_24244(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_24094(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    do
    {
      sub_30D7F8();

      sub_30C1F8();
      v10 = sub_30D858();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_24244(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DA94(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_242B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC100, &qword_317D90);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1DA1C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DA94(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_24454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC100, &qword_317D90);
  v33 = v4;
  result = sub_30D688();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1DA94(v24, v34);
      }

      else
      {
        sub_1DA1C(v24, v34);
      }

      sub_30D7F8();
      sub_30C1F8();
      result = sub_30D858();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1DA94(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t *sub_2470C@<X0>(uint64_t a1@<X0>, unint64_t **a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1751E4(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC130, &unk_317DC0);
      v13 = v4;
      *&v11 = v7;
      v8 = v4[2];
      v9 = v4[3];

      if (v8 >= v9 >> 1)
      {
        sub_1751E4((v9 > 1), v8 + 1, 1);
        v4 = v13;
      }

      v4[2] = v8 + 1;
      sub_1DA94(&v11, &v4[4 * v8 + 4]);
      ++v6;
      --v3;
    }

    while (v3);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC168, &qword_317DF8);
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_24828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_30B628();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190, &qword_317E08);
  sub_30B8E8();
  sub_3092D8();
  v18 = v20[4];
  v19 = __swift_project_boxed_opaque_existential_1Tm(v20, v20[3]);
  sub_30B608();
  v17 = sub_30B5F8();
  sub_30B5E8();
  if (sub_30B5D8() != 2)
  {
    v15 = a1;
    v16 = v5;
    v9 = sub_3032D8();
    v11 = v10;
    if (v9 != sub_3032D8() || v11 != v12)
    {
      sub_30D728();
    }

    v5 = v16;
  }

  sub_3092E8();
  sub_30AE88();

  sub_EB68(v4, &qword_3FB8E0, &qword_317E00);
  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_24A94(uint64_t a1)
{
  v14 = a1;
  v1 = sub_303A58();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC198, &qword_317E10);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190, &qword_317E08);
  sub_30B8E8();
  v11 = sub_307C08();
  sub_30B8C8();
  sub_EB00(v10, v7, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {

    sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
    v15 = 0u;
    v16 = 0u;
LABEL_8:
    sub_EB68(&v15, &unk_3FBB70, &unk_3174C0);
LABEL_9:
    sub_EB68(v10, &qword_3FBD68, &qword_317BF0);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_EB00(&v7[*(v11 + 20)], &v15, &unk_3FBB70, &unk_3174C0);
  sub_28930(v7, &type metadata accessor for ActionOrigin);
  if (!*(&v16 + 1))
  {

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1A0, &qword_317E18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_3039A8();
  v12 = (*(v2 + 88))(v4, v1);
  if (v12 == enum case for EpisodeDownloadState.downloadable(_:))
  {
    (*(v2 + 96))(v4, v1);
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_30AE78();

LABEL_14:

    goto LABEL_9;
  }

  if (v12 == enum case for EpisodeDownloadState.downloading(_:))
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_3091F8();
    sub_30AE58();
    goto LABEL_14;
  }

  if (v12 == enum case for EpisodeDownloadState.unknown(_:))
  {
    sub_EB68(v10, &qword_3FBD68, &qword_317BF0);
  }

  else
  {
    sub_3091F8();
    sub_303AE8();

    sub_EB68(v10, &qword_3FBD68, &qword_317BF0);
    (*(v2 + 8))(v4, v1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24EF8(uint64_t a1)
{
  v14 = a1;
  v1 = sub_303A58();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC198, &qword_317E10);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190, &qword_317E08);
  sub_30B8E8();
  v11 = sub_307C08();
  sub_30B8C8();
  sub_EB00(v10, v7, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {

    sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
    v15 = 0u;
    v16 = 0u;
LABEL_8:
    sub_EB68(&v15, &unk_3FBB70, &unk_3174C0);
LABEL_9:
    sub_EB68(v10, &qword_3FBD68, &qword_317BF0);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_EB00(&v7[*(v11 + 20)], &v15, &unk_3FBB70, &unk_3174C0);
  sub_28930(v7, &type metadata accessor for ActionOrigin);
  if (!*(&v16 + 1))
  {

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1A0, &qword_317E18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_3039A8();
  v12 = (*(v2 + 88))(v4, v1);
  if (v12 == enum case for EpisodeDownloadState.downloadable(_:))
  {
    (*(v2 + 8))(v4, v1);
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_30AA98();
    sub_30AE78();
LABEL_14:

    goto LABEL_9;
  }

  if (v12 == enum case for EpisodeDownloadState.downloading(_:))
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_30AA98();
    sub_30AE68();
    goto LABEL_14;
  }

  if (v12 == enum case for EpisodeDownloadState.unknown(_:))
  {
    sub_EB68(v10, &qword_3FBD68, &qword_317BF0);
  }

  else
  {
    sub_30AA98();
    sub_303AE8();

    sub_EB68(v10, &qword_3FBD68, &qword_317BF0);
    (*(v2 + 8))(v4, v1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_25368()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10[-1] - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190, &qword_317E08);
  sub_30B8E8();
  v6 = sub_307C08();
  sub_30B8C8();
  sub_EB00(v5, v2, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
  {
    sub_EB68(v2, &qword_3FBD68, &qword_317BF0);
    v11 = 0u;
    v12 = 0u;
LABEL_10:
    sub_EB68(&v11, &unk_3FBB70, &unk_3174C0);
    goto LABEL_11;
  }

  sub_EB00(&v2[*(v6 + 20)], &v11, &unk_3FBB70, &unk_3174C0);
  sub_28930(v2, &type metadata accessor for ActionOrigin);
  if (!*(&v12 + 1))
  {
    goto LABEL_10;
  }

  sub_3039F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_EB68(v5, &qword_3FBD68, &qword_317BF0);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_3039E8();
  if (!v12)
  {
    goto LABEL_13;
  }

  if (v12 == 1)
  {

    goto LABEL_11;
  }

  if (v12 == 2 || (v7 = v11, sub_289D8(&v11), (v7 & 1) == 0))
  {
LABEL_13:
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    sub_30AAB8();
    sub_3092E8();
    sub_30AE98();

    goto LABEL_11;
  }

  sub_EB68(v5, &qword_3FBD68, &qword_317BF0);

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_2564C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68, &qword_317BF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190, &qword_317E08);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1A8, &unk_317E20);
  sub_30B8E8();
  v8 = sub_307C08();
  sub_30B8C8();
  sub_EB00(v7, v4, &qword_3FBD68, &qword_317BF0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) != 1)
  {
    sub_EB00(&v4[*(v8 + 20)], &v20, &unk_3FBB70, &unk_3174C0);
    sub_28930(v4, &type metadata accessor for ActionOrigin);
    if (!*(&v21 + 1))
    {
      sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
      __swift_destroy_boxed_opaque_existential_1(v18);
      goto LABEL_9;
    }

    sub_3039F8();
    if (swift_dynamicCast())
    {
      sub_3039E8();
      if (v21 >= 3 && (v20 & 1) != 0)
      {
        __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
        sub_30ACC8();
        sub_30AE38();

        sub_12670(v18, &v15);
        v9 = swift_allocObject();
        *(v9 + 16) = a1;
        sub_12658(&v15, v9 + 24);
        v10 = sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);

        v11 = sub_30C8F8();
        v16 = v10;
        v17 = &protocol witness table for OS_dispatch_queue;
        *&v15 = v11;
        sub_30BEA8();

        sub_289D8(&v20);
        sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v12 = &v15;
LABEL_12:
        __swift_destroy_boxed_opaque_existential_1(v12);
        return __swift_destroy_boxed_opaque_existential_1(v19);
      }

      sub_289D8(&v20);
    }

    sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
    v12 = v18;
    goto LABEL_12;
  }

  sub_EB68(v7, &qword_3FBD68, &qword_317BF0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_EB68(v4, &qword_3FBD68, &qword_317BF0);
  v20 = 0u;
  v21 = 0u;
LABEL_9:
  sub_EB68(&v20, &unk_3FBB70, &unk_3174C0);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}