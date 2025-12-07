__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CE54D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_21CE54DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CE54E08()
{
  result = qword_27CE40D98;
  if (!qword_27CE40D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40D98);
  }

  return result;
}

uint64_t EnvironmentValues.settingsFeatureDescriptionViewSupported.getter()
{
  sub_21CE54EC0();
  sub_21CE6C290();
  return v1;
}

unint64_t sub_21CE54EC0()
{
  result = qword_27CE40DA8;
  if (!qword_27CE40DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40DA8);
  }

  return result;
}

uint64_t static SettingsFeatureDescriptionViewSupportedTrait.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CE40DA0 = a1;
  return result;
}

uint64_t sub_21CE5502C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CE40DA0;
  return result;
}

uint64_t UITraitCollection.settingsFeatureDescriptionViewSupported.getter()
{
  sub_21CE550B0();

  return sub_21CE6CFD0();
}

unint64_t sub_21CE550B0()
{
  result = qword_27CE40DB0;
  if (!qword_27CE40DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40DB0);
  }

  return result;
}

unint64_t sub_21CE55128()
{
  result = qword_27CE40DB8;
  if (!qword_27CE40DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40DB8);
  }

  return result;
}

uint64_t sub_21CE5517C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE550B0();

  return MEMORY[0x2821DCE18](a1, &type metadata for SettingsFeatureDescriptionViewSupportedTrait, &type metadata for SettingsFeatureDescriptionViewSupportedTrait, v6, a2, a3);
}

uint64_t sub_21CE551DC@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE550B0();
  result = sub_21CE6CFD0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21CE55220(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return sub_21CE5517C(v2, v3, v4);
}

uint64_t sub_21CE5526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E48, &qword_21CE73C98);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v64 - v4;
  v5 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = v5 - 8;
  v71 = v5 - 8;
  MEMORY[0x28223BE20](v5 - 8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E50, &qword_21CE73CA0);
  MEMORY[0x28223BE20](v69);
  v68 = &v64 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E58, &qword_21CE73CA8);
  v75 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v73 = &v64 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E60, &qword_21CE73CB0);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v64 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E68, &qword_21CE73CB8);
  MEMORY[0x28223BE20](v81);
  v80 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E70, &qword_21CE73CC0);
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x28223BE20](v13);
  v82 = &v64 - v14;
  v15 = *(v8 + 36);
  v16 = v2;
  v65 = v2;
  v17 = v2 + v15;
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v89 = *v17;
  v19 = v89;
  v90 = v18;
  LOBYTE(v91) = v20;
  v92 = v21;
  v70 = v21;
  v79 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier;
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE5A690(v16, v64, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  v22 = *(v6 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = v23 + v7;
  v25 = swift_allocObject();
  sub_21CE59070(&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23);
  sub_21CE037E4(v19, v18, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E78, &qword_21CE73CC8);
  sub_21CDE4158(&qword_27CE40E80, &qword_27CE40E78, &qword_21CE73CC8, MEMORY[0x277CE04B0]);
  sub_21CE59154();
  v26 = v68;
  v27 = v69;
  sub_21CE6C8D0();
  v28 = v26;

  sub_21CE037F4(v19, v18, v20);

  v29 = v65;
  v30 = v64;
  sub_21CE5A690(v65, v64, v79);
  v79 = v22;
  v86 = v24;
  v31 = swift_allocObject();
  v87 = v23;
  v32 = v30;
  sub_21CE59070(v30, v31 + v23);
  v33 = &v26[*(v27 + 36)];
  *v33 = sub_21CE59368;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v29;
  v35 = (v29 + *(v71 + 32));
  v37 = *v35;
  v36 = v35[1];
  v71 = v37;
  v89 = v37;
  v90 = v36;
  v67 = v36;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  v38 = v88;
  swift_getKeyPath();
  v89 = v38;
  v66 = sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();
  v39 = 1;

  v40 = *(v38 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);
  v41 = v72;

  if (v40 <= 0.0)
  {
    sub_21CE6C480();
    v39 = 0;
  }

  v42 = sub_21CE6C490();
  (*(*(v42 - 8) + 56))(v41, v39, 1, v42);
  v43 = sub_21CE593C8();
  v44 = v73;
  sub_21CE6C8A0();
  sub_21CDE5494(v41, &qword_27CE40E48, &qword_21CE73C98);
  v45 = sub_21CDE5494(v28, &qword_27CE40E50, &qword_21CE73CA0);
  MEMORY[0x28223BE20](v45);
  *(&v64 - 2) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EA8, &qword_21CE73D00);
  v89 = v27;
  v90 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EB0, &qword_21CE73D08);
  v47 = sub_21CE594E0();
  v89 = v46;
  v90 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = v74;
  v49 = v77;
  sub_21CE6C890();
  (*(v75 + 8))(v44, v49);
  v50 = v32;
  v77 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier;
  sub_21CE5A690(v34, v32, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  v51 = swift_allocObject();
  sub_21CE59070(v32, v51 + v87);
  v52 = v80;
  (*(v76 + 32))(v80, v48, v78);
  v53 = v81;
  v54 = (v52 + *(v81 + 36));
  *v54 = sub_21CE567B0;
  v54[1] = 0;
  v54[2] = sub_21CE595D4;
  v54[3] = v51;
  v89 = v71;
  v90 = v67;
  sub_21CE6C9C0();
  v55 = v88;
  swift_getKeyPath();
  v89 = v55;
  sub_21CE6BB70();

  v56 = *(v55 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);

  v89 = v56;
  sub_21CE5A690(v34, v50, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  v57 = swift_allocObject();
  v58 = v87;
  sub_21CE59070(v50, v57 + v87);
  v59 = sub_21CE596D0();
  v60 = v82;
  sub_21CE6C8E0();

  sub_21CDE5494(v52, &qword_27CE40E68, &qword_21CE73CB8);
  swift_getKeyPath();
  sub_21CE5A690(v34, v50, v77);
  v61 = swift_allocObject();
  sub_21CE59070(v50, v61 + v58);
  v89 = v53;
  v90 = MEMORY[0x277D839F8];
  v91 = v59;
  v92 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40EE8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  v62 = v84;
  sub_21CE6C820();

  return (*(v83 + 8))(v60, v62);
}

uint64_t sub_21CE55D4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_21CE6C280();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *a2;
  v9 = (a3 + *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) + 24));
  v11 = *v9;
  v10 = v9[1];
  v16[4] = v11;
  v16[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  sub_21CE58948(v8);
  v12 = sub_21CE6C670();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  sub_21CE55EC0(v12, v14);
}

uint64_t sub_21CE55EC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  v6 = *(v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title) == a1 && *(v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8) == a2;
  if (v6 || (sub_21CE6D400() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
    sub_21CE6BB60();
  }
}

uint64_t sub_21CE5602C(uint64_t a1)
{
  v13 = sub_21CE6C280();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) + 24));
  v7 = *v5;
  v6 = v5[1];
  v14 = v7;
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  sub_21CE58948(v4);
  v8 = sub_21CE6C670();
  v10 = v9;
  (*(v2 + 8))(v4, v13);
  sub_21CE55EC0(v8, v10);
}

uint64_t sub_21CE561B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F00, &qword_21CE73DB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = v25 - v6;
  v7 = sub_21CE6C420();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EC0, &qword_21CE73D10);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EB0, &qword_21CE73D08);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v25 - v15;
  if (*(a1 + *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) + 32)))
  {
    (*(v5 + 56))(v14, 1, 1, v4);
    v17 = sub_21CDE4158(&qword_27CE40EC8, &qword_27CE40EC0, &qword_21CE73D10, MEMORY[0x277CDD7A8]);
    v28 = v8;
    v29 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF1A450](v14, v4, OpaqueTypeConformance2);
    sub_21CDE5494(v14, &qword_27CE40EB0, &qword_21CE73D08);
  }

  else
  {
    v19 = sub_21CE6C410();
    v25[0] = v11;
    MEMORY[0x28223BE20](v19);
    v25[1] = a2;
    v25[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F08, &qword_21CE73DB8);
    sub_21CE5A1EC();
    sub_21CE6BF60();
    v11 = v25[0];
    v20 = sub_21CDE4158(&qword_27CE40EC8, &qword_27CE40EC0, &qword_21CE73D10, MEMORY[0x277CDD7A8]);
    v21 = v27;
    MEMORY[0x21CF1A440](v10, v8, v20);
    (*(v5 + 16))(v14, v21, v4);
    (*(v5 + 56))(v14, 0, 1, v4);
    v28 = v8;
    v29 = v20;
    v22 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF1A450](v14, v4, v22);
    sub_21CDE5494(v14, &qword_27CE40EB0, &qword_21CE73D08);
    (*(v5 + 8))(v21, v4);
    (*(v26 + 8))(v10, v8);
  }

  v23 = sub_21CE594E0();
  MEMORY[0x21CF1A440](v16, v11, v23);
  return sub_21CDE5494(v16, &qword_27CE40EB0, &qword_21CE73D08);
}

uint64_t sub_21CE56648@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  sub_21CE6C660();
  v3 = sub_21CE6C740();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v10 = *(v12 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_21CE567DC(double *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  if (*(v5 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) == v2)
  {
    *(v5 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
    sub_21CE6BB60();
  }
}

uint64_t sub_21CE56974(uint64_t a1)
{
  v2 = sub_21CE6C570();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  if (*(a1 + *(result + 32)) == 1)
  {
    v7 = (a1 + *(result + 24));
    v9 = *v7;
    v8 = v7[1];
    v10[2] = v9;
    v10[3] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
    sub_21CE6C9C0();
    sub_21CE58B28(v5);
    sub_21CE56AA8();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_21CE56AA8()
{
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v2 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    swift_getKeyPath();
    sub_21CE6BB70();

    MEMORY[0x28223BE20](v4);

    sub_21CE6C560();
  }

  return result;
}

uint64_t sub_21CE56C14(uint64_t a1)
{
  v2 = sub_21CE6BF30();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C100();
}

uint64_t sub_21CE56CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21CE6C570();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  if (*(a3 + *(result + 32)) == 1)
  {
    v9 = (a3 + *(result + 24));
    v11 = *v9;
    v10 = v9[1];
    v12[2] = v11;
    v12[3] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
    sub_21CE6C9C0();
    sub_21CE58B28(v7);
    sub_21CE56AA8();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21CE56E10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v3 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  return sub_21CDFAA5C(v5 + v3, a1, &qword_27CE40F18, &qword_21CE73DD0);
}

uint64_t sub_21CE56EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v4 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  return sub_21CDFAA5C(v3 + v4, a2, &qword_27CE40F18, &qword_21CE73DD0);
}

uint64_t sub_21CE56FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21CDFAA5C(a1, &v6 - v3, &qword_27CE40F18, &qword_21CE73DD0);
  return sub_21CE5706C(v4);
}

uint64_t sub_21CE5706C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  sub_21CDFAA5C(v1 + v6, v5, &qword_27CE40F18, &qword_21CE73DD0);
  v7 = sub_21CE5A288(v5, a1);
  sub_21CDE5494(v5, &qword_27CE40F18, &qword_21CE73DD0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
    sub_21CE6BB60();
  }

  else
  {
    swift_beginAccess();
    sub_21CE5A5A8(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_21CDE5494(a1, &qword_27CE40F18, &qword_21CE73DD0);
}

uint64_t sub_21CE57258(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  sub_21CE5A5A8(a2, a1 + v4);
  return swift_endAccess();
}

double sub_21CE572D8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  return *(v2 + *a2);
}

double sub_21CE57378@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, double *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  result = *(v6 + *a3);
  *a4 = result;
  return result;
}

void *sub_21CE57454(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (*(v4 + *result) == a4)
  {
    *(v4 + *result) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
    sub_21CE6BB60();
  }

  return result;
}

uint64_t sub_21CE57560()
{
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v1 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);

  return v1;
}

double sub_21CE5761C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v4 = *(v3 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  a2[1] = v4;

  return result;
}

uint64_t sub_21CE576D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F30, &qword_21CE73E08);
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  v9 = sub_21CE6D020();
  v10 = *(v9 - 8);
  v15 = *(v10 + 56);
  v16 = v10 + 56;
  v15(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) = 0;
  *(v1 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = 0;
  v11 = (v1 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  sub_21CE6BB80();
  v12 = [objc_opt_self() defaultCenter];
  sub_21CE5A634();
  sub_21CE6D030();
  swift_allocObject();
  swift_weakInit();
  sub_21CDE4158(&qword_27CE40F40, &qword_27CE40F30, &qword_21CE73E08, MEMORY[0x277CC9D98]);
  sub_21CE6CFE0();

  (*(v17 + 8))(v4, v2);
  v15(v7, 0, 1, v9);
  sub_21CE5706C(v7);
  return v1;
}

uint64_t sub_21CE579A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 <= 0.0 || (v3 = *(a1 + 40), swift_beginAccess(), (Strong = swift_weakLoadStrong()) == 0))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    if (*(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) == 0.0)
    {
      *(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = 0;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
    goto LABEL_16;
  }

  v5 = Strong;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
  sub_21CE6BB70();

  v6 = *(v5 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset);

  v7 = (v6 - v3) / v2;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) == v8)
    {
      *(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = v8;
    }

    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
LABEL_16:
    sub_21CE6BB60();
  }

  return result;
}

uint64_t sub_21CE57C98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_21CE6D020();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_21CE5706C(v3);
  sub_21CDE5494(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token, &qword_27CE40F18, &qword_21CE73DD0);

  v5 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState___observationRegistrar;
  v6 = sub_21CE6BB90();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

void sub_21CE57DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EF0, &unk_21CE73D78);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v28 - v7;
  if (v6)
  {
    v9 = [v6 navigationItem];
    if (v9)
    {
      v10 = v9;
      v31 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
      v11 = [v31 titleTextAttributes];
      type metadata accessor for Key(0);
      sub_21CE59380(&qword_27CE3FC58, type metadata accessor for Key, &unk_21CE6F22C);
      v12 = sub_21CE6CB60();

      v36 = v12;
      v13 = *(v12 + 16);
      v14 = *MEMORY[0x277D740C0];
      v15 = v14;
      if (v13 && (v16 = sub_21CE669F0(v14), (v17 & 1) != 0) && (sub_21CDE66C8(*(v12 + 56) + 32 * v16, &v34), v18 = sub_21CE59A40(), (swift_dynamicCast() & 1) != 0))
      {
        v30 = *&v33[0];
        swift_getKeyPath();
        v29 = v18;
        *&v34 = a2;
        sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, "9}<e0|");
        sub_21CE6BB70();

        v19 = *(a2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);
        v20 = v30;
        v21 = [v30 colorWithAlphaComponent_];

        v35 = v29;
        *&v34 = v21;
        sub_21CDFA678(&v34, v33);
        v22 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v22;
        sub_21CE06BA8(v33, v15, isUniquelyReferenced_nonNull_native);

        v36 = v32;
      }

      else
      {
        sub_21CE599A0(v15, &v34);

        sub_21CDE5494(&v34, &qword_27CE40410, &qword_21CE71B10);
      }

      v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v25 = sub_21CE6CC20();
      v26 = sub_21CE6CB50();
      [v24 initWithString:v25 attributes:v26];

      sub_21CE6B8D0();
      v27 = sub_21CE6B8A0();
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
      sub_21CE6CF40();
    }
  }
}

uint64_t sub_21CE58224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v30 = a2;
  v31 = a4;
  v36 = a8;
  v12 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = a5;
  v39 = a6;
  v32 = MEMORY[0x277CDE888];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v33 = OpaqueTypeMetadata2;
  v34 = v16;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v29 - v17;
  a3 &= 1u;
  sub_21CE6C800();
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v19 = v12[5];
  *(v14 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC8, &qword_21CE73B98);
  swift_storeEnumTagMultiPayload();
  v20 = (v14 + v12[6]);
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState(0);
  v21 = swift_allocObject();
  sub_21CE576D4();
  v37 = v21;
  sub_21CE6C9B0();
  v22 = v39;
  *v20 = v38;
  v20[1] = v22;
  v23 = v14 + v12[7];
  v24 = v30;
  v25 = v31;
  *v23 = a1;
  *(v23 + 1) = v24;
  v23[16] = a3;
  *(v23 + 3) = v25;
  *(v14 + v12[8]) = v35;
  sub_21CE037E4(a1, v24, a3);

  v38 = a5;
  v39 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v33;
  MEMORY[0x21CF1A890](v14, v33, v12, OpaqueTypeConformance2);
  sub_21CE5A6F8(v14, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  return (*(v34 + 8))(v18, v27);
}

uint64_t sub_21CE58500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21CE6C780();
  v11 = v10;
  v13 = v12;
  a6();
  sub_21CE037F4(v9, v11, v13 & 1);
}

uint64_t sub_21CE58648(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_21CE6B960();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_21CE6C770();
  v11 = v10;
  v13 = v12;
  a4();
  sub_21CE037F4(v9, v11, v13 & 1);
}

uint64_t sub_21CE58778@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21CDFAA5C(v2, &v13 - v9, &qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21CE3B624(v10, a1);
  }

  sub_21CE6CF20();
  v12 = sub_21CE6C580();
  sub_21CE6BD70();

  sub_21CE6C270();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21CE58948@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC8, &qword_21CE73B98);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21CDFAA5C(v2, &v13 - v9, &qword_27CE40DC8, &qword_21CE73B98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_21CE6CF20();
  v12 = sub_21CE6C580();
  sub_21CE6BD70();

  sub_21CE6C270();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21CE58B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21CDFAA5C(v2, &v14 - v9, &qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CE6C570();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21CE6CF20();
    v13 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_21CE58D74(uint64_t a1)
{
  sub_21CE58FF0(319, &qword_27CE40E08, MEMORY[0x277CC9D88], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CE6BB90();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CE58EAC(uint64_t a1)
{
  sub_21CE58FF0(319, &qword_281213230, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21CE58FF0(319, &qword_27CE40E38, MEMORY[0x277CE0040], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21CE58FF0(319, &qword_27CE40E40, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CE58FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21CE59070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE590D4(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CE55D4C(a1, a2, v6);
}

unint64_t sub_21CE59154()
{
  result = qword_27CE40E88;
  if (!qword_27CE40E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40E88);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CE6C570();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC8, &qword_21CE73B98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CE6C280();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21CE037F4(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8), *(v5 + *(v1 + 28) + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CE59380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CE593C8()
{
  result = qword_27CE40EA0;
  if (!qword_27CE40EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E50, &qword_21CE73CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E78, &qword_21CE73CC8);
    sub_21CDE4158(&qword_27CE40E80, &qword_27CE40E78, &qword_21CE73CC8, MEMORY[0x277CE04B0]);
    sub_21CE59154();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40EA0);
  }

  return result;
}

unint64_t sub_21CE594E0()
{
  result = qword_27CE40EB8;
  if (!qword_27CE40EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EB0, &qword_21CE73D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EC0, &qword_21CE73D10);
    sub_21CDE4158(&qword_27CE40EC8, &qword_27CE40EC0, &qword_21CE73D10, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40EB8);
  }

  return result;
}

uint64_t sub_21CE595D4(double *a1)
{
  v3 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CE567DC(a1, v4);
}

uint64_t sub_21CE5965C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CE596D0()
{
  result = qword_27CE40ED0;
  if (!qword_27CE40ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E68, &qword_21CE73CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E58, &qword_21CE73CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EA8, &qword_21CE73D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E50, &qword_21CE73CA0);
    sub_21CE593C8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EB0, &qword_21CE73D08);
    sub_21CE594E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CDE4158(&qword_27CE40ED8, &qword_27CE40EE0, &qword_21CE73D18, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40ED0);
  }

  return result;
}

uint64_t sub_21CE59870(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CE56CDC(a1, a2, v6);
}

double sub_21CE598FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21CE66850(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CE470C0();
      v10 = v12;
    }

    sub_21CDFA678((*(v10 + 56) + 32 * v8), a3);
    sub_21CE59E08(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_21CE599A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21CE669F0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CE473EC();
      v9 = v11;
    }

    sub_21CDFA678((*(v9 + 56) + 32 * v7), a2);
    sub_21CE59FB8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_21CE59A40()
{
  result = qword_27CE40EF8;
  if (!qword_27CE40EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE40EF8);
  }

  return result;
}

unint64_t sub_21CE59A8C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v25 = (sub_21CE6D1D0() + 1) & ~v10;
    v26 = v12;
    v13 = *(v5 + 72);
    do
    {
      v14 = v13;
      v15 = v13 * v11;
      sub_21CE5A690(*(a2 + 48) + v13 * v11, v8, type metadata accessor for SettingsPaneRecipe);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      sub_21CE6CCA0();
      sub_21CE6BA60();
      sub_21CE59380(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_21CE6CB80();
      type metadata accessor for NSBundle.PluginLocation(0);
      sub_21CE6CCA0();
      sub_21CDFAA5C(&v8[*(v4 + 28)], &v29, qword_27CE40D00, &qword_21CE706F0);
      if (*(&v30 + 1))
      {
        v27[0] = v29;
        v27[1] = v30;
        v28 = v31;
        sub_21CE6D4D0();
        sub_21CE6D220();
        sub_21CE00770(v27);
      }

      else
      {
        sub_21CE6D4D0();
      }

      v16 = sub_21CE6D4E0();
      result = sub_21CE5A6F8(v8, type metadata accessor for SettingsPaneRecipe);
      v17 = v16 & v26;
      if (a1 >= v25)
      {
        v13 = v14;
        if (v17 < v25)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v14;
        if (v17 >= v25)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v17)
      {
LABEL_13:
        v18 = *(a2 + 48);
        result = v18 + v13 * a1;
        if (v13 * a1 < v15 || result >= v18 + v15 + v13)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v15)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * a1);
        v21 = (v19 + 8 * v11);
        if (a1 != v11 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          a1 = v11;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v26;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CE59E08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CE6D1D0() + 1) & ~v5;
    do
    {
      sub_21CE6D4B0();

      sub_21CE6CCA0();
      v10 = sub_21CE6D4E0();

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

void sub_21CE59FB8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CE6D1D0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_21CE6CC50();
      sub_21CE6D4B0();
      v11 = v10;
      sub_21CE6CCA0();
      v12 = sub_21CE6D4E0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_21CE5A180()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  *v2 = v0[3];
  v2[1] = v1;
}

double sub_21CE5A1CC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) = result;
  return result;
}

unint64_t sub_21CE5A1EC()
{
  result = qword_27CE40F10;
  if (!qword_27CE40F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40F08, &qword_21CE73DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F10);
  }

  return result;
}

double sub_21CE5A270()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = result;
  return result;
}

uint64_t sub_21CE5A288(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6D020();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F20, &qword_21CE73E00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21CDFAA5C(a1, &v21 - v13, &qword_27CE40F18, &qword_21CE73DD0);
  sub_21CDFAA5C(a2, &v14[v15], &qword_27CE40F18, &qword_21CE73DD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_21CDFAA5C(v14, v10, &qword_27CE40F18, &qword_21CE73DD0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21CE59380(&qword_27CE40F28, MEMORY[0x277CC9D88], MEMORY[0x277CC9D90]);
      v18 = sub_21CE6CBA0();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21CDE5494(v14, &qword_27CE40F18, &qword_21CE73DD0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21CDE5494(v14, &qword_27CE40F20, &qword_21CE73E00);
    v17 = 1;
    return v17 & 1;
  }

  sub_21CDE5494(v14, &qword_27CE40F18, &qword_21CE73DD0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21CE5A5A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE5A634()
{
  result = qword_27CE40F38;
  if (!qword_27CE40F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F38);
  }

  return result;
}

uint64_t sub_21CE5A690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CE5A6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CE5A788()
{
  v1 = sub_21CE6C280();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    sub_21CDED370(*(v0 + 16), *(v0 + 24));
  }

  else
  {

    sub_21CE6CF20();
    v7 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();
    sub_21CE5BA9C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_21CE5A8EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SettingsFeatureDescriptionView(0);
  sub_21CE5C234(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CE6C570();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21CE6CF20();
    v13 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21CE5AB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  v18 = type metadata accessor for SettingsFeatureDescriptionView(0);
  v19 = v18[6];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v20 = v18[7];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  result = swift_storeEnumTagMultiPayload();
  v22 = a9 + v18[8];
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3 & 1;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  *(v22 + 48) = a7 & 1;
  *(v22 + 56) = a8;
  *(v22 + 64) = a10;
  *(v22 + 72) = a11;
  *(v22 + 80) = a12;
  return result;
}

uint64_t sub_21CE5ACB0@<X0>(uint64_t a3@<X4>, uint64_t a4@<X5>, char a5@<W6>, uint64_t a6@<X8>)
{
  sub_21CE6C370();
  v8 = sub_21CE6C750();
  v26 = v9;
  v27 = v8;
  v11 = v10;
  v13 = v12;
  sub_21CE6C370();
  v14 = sub_21CE6C750();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  v21 = type metadata accessor for SettingsFeatureDescriptionView(0);
  v22 = v21[6];
  *(a6 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v23 = v21[7];
  *(a6 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  result = swift_storeEnumTagMultiPayload();
  v25 = a6 + v21[8];
  *v25 = v27;
  *(v25 + 8) = v26;
  *(v25 + 16) = v11 & 1;
  *(v25 + 24) = v13;
  *(v25 + 32) = v14;
  *(v25 + 40) = v16;
  *(v25 + 48) = v18 & 1;
  *(v25 + 56) = v20;
  *(v25 + 64) = a3;
  *(v25 + 72) = a4;
  *(v25 + 80) = a5;
  return result;
}

uint64_t sub_21CE5AE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v9 = sub_21CE6B960();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v13(v12, a1, v9);
  v14 = sub_21CE6C770();
  v33 = v15;
  v34 = v14;
  v17 = v16;
  v35 = v18;
  v13(v12, a2, v9);
  v19 = sub_21CE6C770();
  v21 = v20;
  LOBYTE(v12) = v22;
  v32 = v23;
  v24 = *(v10 + 8);
  v24(a2, v9);
  v24(a1, v9);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  v25 = type metadata accessor for SettingsFeatureDescriptionView(0);
  v26 = v25[6];
  *(a6 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v27 = v25[7];
  *(a6 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  result = swift_storeEnumTagMultiPayload();
  v43 = v17 & 1;
  v41 = v12 & 1;
  v39 = v36;
  v29 = a6 + v25[8];
  *v29 = v34;
  *(v29 + 8) = v33;
  *(v29 + 16) = v17 & 1;
  *(v29 + 17) = *v42;
  *(v29 + 20) = *&v42[3];
  *(v29 + 24) = v35;
  *(v29 + 32) = v19;
  *(v29 + 40) = v21;
  *(v29 + 48) = v12 & 1;
  *(v29 + 49) = *v40;
  *(v29 + 52) = *&v40[3];
  v31 = v37;
  v30 = v38;
  *(v29 + 56) = v32;
  *(v29 + 64) = v31;
  *(v29 + 72) = v30;
  *(v29 + 80) = v39;
  return result;
}

uint64_t SettingsFeatureDescriptionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SettingsFeatureDescriptionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = v1 + *(MEMORY[0x28223BE20](v3 - 8) + 40);
  v7 = *(v6 + 32);
  v8 = *(v6 + 64);
  v24 = *(v6 + 48);
  v25 = v8;
  v26 = *(v6 + 80);
  v9 = *(v6 + 16);
  v21 = *v6;
  v22 = v9;
  v23 = v7;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView(0) + 20);
  v11 = v24;
  v12 = v25;
  *(v10 + 2) = v23;
  *(v10 + 3) = v11;
  *(v10 + 4) = v12;
  v10[80] = v26;
  v13 = v22;
  *v10 = v21;
  *(v10 + 1) = v13;
  KeyPath = swift_getKeyPath();
  sub_21CE5BA38(v1, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_21CE5BAA8(&v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F48, &unk_21CE73F00) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F50, &qword_21CE74AB0);
  sub_21CE5BB10(&v21, v20);
  result = sub_21CE6C000();
  *v17 = KeyPath;
  return result;
}

uint64_t sub_21CE5B304(uint64_t a1)
{
  v2 = sub_21CE6C010();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C260();
}

void sub_21CE5B3CC(uint64_t a1)
{
  v2 = sub_21CE6C570();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CE5A788();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v6(a1);
    sub_21CE6BFF0();

    sub_21CDEEA58(v8, v9);
    return;
  }

  v10 = sub_21CE6BA30();
  if (v11)
  {
    if (v10 == 0x74696B706C6568 && v11 == 0xE700000000000000)
    {

      goto LABEL_10;
    }

    v12 = sub_21CE6D400();

    if (v12)
    {
LABEL_10:
      v13 = sub_21CE6B9B0();
      v14 = [objc_opt_self() helpViewControllerWithURL_];

      if (v14)
      {
        [v14 setShowTopicViewOnLoad_];
        v15 = sub_21CE5A8EC(v5);
        MEMORY[0x28223BE20](v15);
        *(&v16 - 2) = v14;
        sub_21CE6C560();
        (*(v3 + 8))(v5, v2);
        sub_21CE6BFF0();

        return;
      }
    }
  }

  MEMORY[0x282130C20](a1);
}

void sub_21CE5B638(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v3 setModalPresentationStyle_];
  if (a1)
  {
    [a1 presentViewController:v3 animated:1 completion:0];
  }
}

uint64_t sub_21CE5B6C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = v2 + *(MEMORY[0x28223BE20](a1 - 8) + 40);
  v7 = *(v6 + 32);
  v8 = *(v6 + 64);
  v24 = *(v6 + 48);
  v25 = v8;
  v26 = *(v6 + 80);
  v9 = *(v6 + 16);
  v21 = *v6;
  v22 = v9;
  v23 = v7;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView(0) + 20);
  v11 = v24;
  v12 = v25;
  *(v10 + 2) = v23;
  *(v10 + 3) = v11;
  *(v10 + 4) = v12;
  v10[80] = v26;
  v13 = v22;
  *v10 = v21;
  *(v10 + 1) = v13;
  KeyPath = swift_getKeyPath();
  sub_21CE5BA38(v2, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_21CE5BAA8(&v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F48, &unk_21CE73F00) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F50, &qword_21CE74AB0);
  sub_21CE5BB10(&v21, v20);
  result = sub_21CE6C000();
  *v17 = KeyPath;
  return result;
}

uint64_t sub_21CE5B8B8()
{
  sub_21CE5C2A4();
  sub_21CE6C2B0();
  return v1;
}

uint64_t View.onSettingsFeatureDescriptionOpenURL(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_21CDED370(a1, a2);
  sub_21CE6C7B0();

  return sub_21CDEEA58(a1, a2);
}

uint64_t sub_21CE5B998(uint64_t *a1)
{
  sub_21CDED370(*a1, a1[1]);
  sub_21CE5C2A4();
  return sub_21CE6C2C0();
}

uint64_t type metadata accessor for SettingsFeatureDescriptionView(uint64_t a1)
{
  result = qword_27CE40F58;
  if (!qword_27CE40F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE5BA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5BA9C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_21CDEEA58(result, a2);
  }

  else
  {
  }
}

uint64_t sub_21CE5BAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21CE5BBB0(uint64_t a1)
{
  sub_21CE5BC9C();
  if (v1 <= 0x3F)
  {
    sub_21CE5BCEC(319, &qword_27CE40F70, &qword_27CE40F78, &unk_21CE73FB0);
    if (v2 <= 0x3F)
    {
      sub_21CE5BCEC(319, &qword_281213238, &qword_27CE40C28, &qword_21CE73360);
      if (v3 <= 0x3F)
      {
        sub_21CE5BD40(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CE5BC9C()
{
  if (!qword_27CE40F68)
  {
    v0 = sub_21CE6BF50();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE40F68);
    }
  }
}

void sub_21CE5BCEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CE6BF50();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21CE5BD40(uint64_t a1)
{
  if (!qword_281213230)
  {
    sub_21CE6C570();
    v1 = sub_21CE6BF50();
    if (!v2)
    {
      atomic_store(v1, &qword_281213230);
    }
  }
}

unint64_t sub_21CE5BD98()
{
  result = qword_27CE40F80;
  if (!qword_27CE40F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40F48, &unk_21CE73F00);
    sub_21CE5BE3C();
    sub_21CE5BF18(&qword_2812131B0, &qword_27CE40F50, &qword_21CE74AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F80);
  }

  return result;
}

unint64_t sub_21CE5BE3C()
{
  result = qword_27CE40F88;
  if (!qword_27CE40F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40F90, &qword_21CE73FC0);
    sub_21CE5BEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F88);
  }

  return result;
}

unint64_t sub_21CE5BEC0()
{
  result = qword_27CE40F98;
  if (!qword_27CE40F98)
  {
    type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F98);
  }

  return result;
}

uint64_t sub_21CE5BF18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for SettingsFeatureDescriptionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_21CE54C34(*(v0 + v4), *(v0 + v4 + 8));
  sub_21CE5BA9C(*(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CE6C4A0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CE6C570();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[8];
  sub_21CE037F4(*v11, *(v11 + 8), *(v11 + 16));

  sub_21CE037F4(*(v11 + 32), *(v11 + 40), *(v11 + 48));

  sub_21CDEFF7C(*(v11 + 64), *(v11 + 72));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_21CE5C234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE5C2A4()
{
  result = qword_27CE40FB0;
  if (!qword_27CE40FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FB0);
  }

  return result;
}

uint64_t sub_21CE5C314@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41018, &qword_21CE74308);
  MEMORY[0x28223BE20](v25);
  v26 = &v23 - v2;
  v3 = sub_21CE6C280();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40FF8, &qword_21CE742F0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v1 + 48);
  v14 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v15 = sub_21CE6CC20();
  if (v13)
  {
    [v14 initWithType_];

    v30 = *(v1 + 8);
    v16 = *v1;
    v29 = v16;
    if (v30 == 1)
    {
      v17 = v16;
    }

    else
    {

      sub_21CE6CF20();
      v20 = sub_21CE6C580();
      sub_21CE6BD70();

      sub_21CE6C270();
      swift_getAtKeyPath();
      sub_21CDE5494(&v29, &qword_27CE41020, &qword_21CE74310);
      (*(v23 + 8))(v5, v24);
      v17 = v28;
    }

    [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v17}];
    sub_21CE6BD10();
    v12 = v10;
  }

  else
  {
    [v14 initWithBundleIdentifier_];

    v30 = *(v1 + 8);
    v18 = *v1;
    v29 = v18;
    if (v30 == 1)
    {
      v19 = v18;
    }

    else
    {

      sub_21CE6CF20();
      v21 = sub_21CE6C580();
      sub_21CE6BD70();

      sub_21CE6C270();
      swift_getAtKeyPath();
      sub_21CDE5494(&v29, &qword_27CE41020, &qword_21CE74310);
      (*(v23 + 8))(v5, v24);
      v19 = v28;
    }

    [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v19}];
    sub_21CE6BD10();
  }

  (*(v7 + 16))(v26, v12, v6);
  swift_storeEnumTagMultiPayload();
  sub_21CDE4158(&qword_27CE40FF0, &qword_27CE40FF8, &qword_21CE742F0, MEMORY[0x277D7EA70]);
  sub_21CE6C400();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_21CE5C7C0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a1 + 24);
  v9 = *(a1 + 16);
  v12 = v9;
  if (v13 != 1)
  {

    sub_21CE6CF20();
    v10 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();
    sub_21CDE5494(&v12, &qword_27CE41010, &qword_21CE74300);
    result = (*(v5 + 8))(v8, v4);
    LOBYTE(v9) = v11[15];
  }

  *a2 = (v9 & 1) == 0;
  return result;
}

uint64_t sub_21CE5C938()
{
  sub_21CE5D360();
  sub_21CE6C2B0();
  return v1;
}

void *sub_21CE5C974@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE5D360();
  result = sub_21CE6C2B0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CE5CA10@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40FD0, &qword_21CE742E0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v9;
  v18[2] = *(v1 + 32);
  v19 = *(v1 + 48);
  sub_21CE5C314(&v16[-v7]);
  v10 = sub_21CE6CAC0();
  v12 = v11;
  sub_21CE5C7C0(v18, &v17);
  v13 = &v8[*(v3 + 36)];
  *v13 = v17;
  *(v13 + 1) = v10;
  *(v13 + 2) = v12;
  if (qword_27CE3F9F0 != -1)
  {
    swift_once();
  }

  sub_21CDFAA5C(v8, v6, &qword_27CE40FD0, &qword_21CE742E0);
  sub_21CE5D48C();
  v14 = sub_21CE6CA40();
  result = sub_21CDE5494(v8, &qword_27CE40FD0, &qword_21CE742E0);
  *a1 = v14;
  return result;
}

uint64_t sub_21CE5CB90@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41030, &qword_21CE743E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41038, &qword_21CE743E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41040, &qword_21CE743F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41048, &qword_21CE743F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41050, &qword_21CE74400);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v30[0] = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - v16;
  v18 = sub_21CE6B900();
  MEMORY[0x28223BE20](v18 - 8);
  sub_21CE5D620();
  v19 = sub_21CE6D100();
  if (!v19)
  {
    v19 = [objc_opt_self() mainBundle];
  }

  v20 = v19;
  v21 = sub_21CE6B8E0();
  v23 = v22;

  v30[2] = v21;
  v30[3] = v23;
  sub_21CE1570C();
  sub_21CE6D180();

  sub_21CE6B8F0();
  sub_21CE6B8B0();
  sub_21CE6C6A0();
  v24 = sub_21CE6C6B0();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  sub_21CE6C6C0();
  v25 = sub_21CE6C6D0();
  (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
  sub_21CE6C6E0();
  v26 = sub_21CE6C6F0();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  v27 = sub_21CE6C690();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
  sub_21CE6C920();
  sub_21CE6C700();
  v28 = sub_21CE6C710();
  (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
  sub_21CDFAA5C(v17, v30[0], &qword_27CE41050, &qword_21CE74400);
  sub_21CE5D66C();
  sub_21CE6B8C0();
  return sub_21CDE5494(v17, &qword_27CE41050, &qword_21CE74400);
}

double sub_21CE5D084@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41028, &qword_21CE74378);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_21CE6B8A0();
  MEMORY[0x28223BE20](v5 - 8);
  sub_21CE5CB90(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_21CE6C760();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_21CE6CAD0();
  sub_21CE6BFA0();
  v13 = v10 & 1;
  v28 = v10 & 1;
  sub_21CE6C610();
  v14 = *MEMORY[0x277CE09A0];
  v15 = sub_21CE6C5F0();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = sub_21CE6C620();
  sub_21CDE5494(v4, &qword_27CE41028, &qword_21CE74378);
  KeyPath = swift_getKeyPath();
  v19 = sub_21CE6C940();
  v20 = swift_getKeyPath();
  LOBYTE(v14) = sub_21CE6C590();
  sub_21CE6BF20();
  *a1 = v27;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  v21 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v21;
  *(a1 + 64) = v31;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v17;
  *(a1 + 96) = v20;
  *(a1 + 104) = v19;
  *(a1 + 112) = v14;
  *(a1 + 120) = v22;
  *(a1 + 128) = v23;
  *(a1 + 136) = v24;
  *(a1 + 144) = v25;
  *(a1 + 152) = 0;
  result = 17.0;
  *(a1 + 160) = xmmword_21CE74090;
  return result;
}

uint64_t View.settingsFeatureDescriptionShowOverlayBetaBadge(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21CE6C7B0();
}

unint64_t sub_21CE5D360()
{
  result = qword_27CE40FC8;
  if (!qword_27CE40FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FC8);
  }

  return result;
}

uint64_t sub_21CE5D3C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21CE5D40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_21CE5D48C()
{
  result = qword_27CE40FD8;
  if (!qword_27CE40FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FD0, &qword_21CE742E0);
    sub_21CE5D544();
    sub_21CDE4158(&qword_27CE41000, &qword_27CE41008, &qword_21CE742F8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FD8);
  }

  return result;
}

unint64_t sub_21CE5D544()
{
  result = qword_27CE40FE0;
  if (!qword_27CE40FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FE8, &qword_21CE742E8);
    sub_21CDE4158(&qword_27CE40FF0, &qword_27CE40FF8, &qword_21CE742F0, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FE0);
  }

  return result;
}

unint64_t sub_21CE5D620()
{
  result = qword_27CE41058;
  if (!qword_27CE41058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE41058);
  }

  return result;
}

unint64_t sub_21CE5D66C()
{
  result = qword_27CE41060;
  if (!qword_27CE41060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41060);
  }

  return result;
}

unint64_t sub_21CE5D6C0()
{
  result = qword_27CE41068;
  if (!qword_27CE41068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41070, &qword_21CE74408);
    sub_21CE5D74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41068);
  }

  return result;
}

unint64_t sub_21CE5D74C()
{
  result = qword_27CE41078;
  if (!qword_27CE41078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41080, &qword_21CE74410);
    sub_21CE5D7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41078);
  }

  return result;
}

unint64_t sub_21CE5D7D8()
{
  result = qword_27CE41088;
  if (!qword_27CE41088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41090, &qword_21CE74418);
    sub_21CE5D890();
    sub_21CDE4158(&qword_27CE410C8, &qword_27CE410D0, &qword_21CE74438, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41088);
  }

  return result;
}

unint64_t sub_21CE5D890()
{
  result = qword_27CE41098;
  if (!qword_27CE41098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE410A0, &qword_21CE74420);
    sub_21CE5D948();
    sub_21CDE4158(&qword_27CE410B8, &qword_27CE410C0, &qword_21CE74430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41098);
  }

  return result;
}

unint64_t sub_21CE5D948()
{
  result = qword_27CE410A8;
  if (!qword_27CE410A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE410B0, &qword_21CE74428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE410A8);
  }

  return result;
}

uint64_t sub_21CE5D9D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CE5DA1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CE5DA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21CE5DAD8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21CE5DB58@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v46 = sub_21CE6C3B0();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE410F8, &qword_21CE746A8);
  MEMORY[0x28223BE20](v42);
  v43 = &v42 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41100, &qword_21CE746B0);
  v48 = *(v49 - 8);
  v6 = MEMORY[0x28223BE20](v49);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v8;
  sub_21CE6C630();
  v9 = sub_21CE6C740();
  v11 = v10;
  v13 = v12;

  sub_21CE6C600();
  v14 = sub_21CE6C680();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_21CE037F4(v9, v11, v13 & 1);
  v21 = v42;

  v51 = v14;
  v52 = v16;
  v18 &= 1u;
  LOBYTE(v53) = v18;
  v54 = v20;
  sub_21CE6C3A0();
  v22 = v43;
  sub_21CE6C830();
  (*(v44 + 8))(v4, v46);
  sub_21CE037F4(v14, v16, v18);

  v23 = swift_allocObject();
  v24 = *(v2 + 48);
  *(v23 + 48) = *(v2 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(v2 + 64);
  *(v23 + 96) = *(v2 + 80);
  v25 = *(v2 + 16);
  *(v23 + 16) = *v2;
  *(v23 + 32) = v25;
  v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41108, &qword_21CE746B8) + 36));
  *v26 = sub_21CE5E128;
  v26[1] = 0;
  v26[2] = sub_21CE5EA94;
  v26[3] = v23;
  v27 = swift_allocObject();
  v28 = *(v2 + 48);
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(v2 + 64);
  *(v27 + 96) = *(v2 + 80);
  v29 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v29;
  v30 = v21;
  v31 = (v22 + *(v21 + 36));
  *v31 = sub_21CE5E2C8;
  v31[1] = 0;
  v31[2] = sub_21CE5EAFC;
  v31[3] = v27;
  v32 = *(v2 + 16);
  v55 = *v2;
  v56 = v32;
  v57 = *(v2 + 32);
  v58 = *(v2 + 48);
  sub_21CE549B8(v2, &v51);
  sub_21CE549B8(v2, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41110, &qword_21CE746C0);
  sub_21CE6C9C0();
  v33 = v51;
  v34 = v52;
  LOBYTE(v16) = v53;
  v35 = sub_21CE5EB34(&qword_27CE41118, &qword_27CE410F8, &qword_21CE746A8, sub_21CE5EB04);
  v36 = sub_21CE5EBE4();
  v37 = v45;
  sub_21CE6C8D0();
  sub_21CE037F4(v33, v34, v16);

  sub_21CDE5494(v22, &qword_27CE410F8, &qword_21CE746A8);
  if (qword_27CE3F9F0 != -1)
  {
    swift_once();
  }

  v38 = v48;
  v39 = v49;
  (*(v48 + 16))(v47, v37, v49);
  v51 = v30;
  v52 = &_s15TitleLayoutInfoVN;
  v53 = v35;
  v54 = v36;
  swift_getOpaqueTypeConformance2();
  v40 = sub_21CE6CA40();
  result = (*(v38 + 8))(v37, v39);
  *v50 = v40;
  return result;
}

uint64_t sub_21CE5E128@<X0>(void *a1@<X8>)
{
  result = sub_21CE6BFC0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CE5E154(uint64_t *a1, __int128 *a2)
{
  v3 = *(a2 + 6);
  v19 = *a2;
  v20 = *(a2 + 16);
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v17 = v3;
  v18 = v5;
  v12 = *a2;
  v13 = v4;
  v14 = v5;
  v15 = a2[2];
  v16 = v3;
  sub_21CE5EC38(&v19, &v7);
  sub_21CDFAA5C(&v18, &v7, &qword_27CE41140, &qword_21CE746D0);
  sub_21CDFAA5C(&v17, &v7, &qword_27CE41148, qword_21CE746D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41110, &qword_21CE746C0);
  sub_21CE6C9C0();
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = v5;
  v10 = a2[2];
  v11 = v3;
  sub_21CE6C9D0();
  sub_21CE5EC94(&v19);
  sub_21CDE5494(&v18, &qword_27CE41140, &qword_21CE746D0);
  return sub_21CDE5494(&v17, &qword_27CE41148, qword_21CE746D8);
}

void sub_21CE5E2C8(CGFloat *a1@<X8>)
{
  v2 = sub_21CE6C430();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6C4B0();
  sub_21CE6BFD0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetMinY(v15);
}

uint64_t sub_21CE5E3E4(uint64_t *a1, __int128 *a2)
{
  v3 = *(a2 + 6);
  v19 = *a2;
  v20 = *(a2 + 16);
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v17 = v3;
  v18 = v5;
  v12 = *a2;
  v13 = v4;
  v14 = v5;
  v15 = a2[2];
  v16 = v3;
  sub_21CE5EC38(&v19, &v7);
  sub_21CDFAA5C(&v18, &v7, &qword_27CE41140, &qword_21CE746D0);
  sub_21CDFAA5C(&v17, &v7, &qword_27CE41148, qword_21CE746D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41110, &qword_21CE746C0);
  sub_21CE6C9C0();
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = v5;
  v10 = a2[2];
  v11 = v3;
  sub_21CE6C9D0();
  sub_21CE5EC94(&v19);
  sub_21CDE5494(&v18, &qword_27CE41140, &qword_21CE746D0);
  return sub_21CDE5494(&v17, &qword_27CE41148, qword_21CE746D8);
}

uint64_t sub_21CE5E558(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = objc_opt_self();
  sub_21CE037E4(v2, v3, v4);

  v6 = [v5 defaultCenter];
  sub_21CE5A634();
  sub_21CE6D040();

  sub_21CE037F4(v2, v3, v4);
}

uint64_t sub_21CE5E694@<X0>(uint64_t *a5@<X8>)
{
  v31 = a5;
  v5 = sub_21CE6C3B0();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE410D8, &qword_21CE74698);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  sub_21CE6C5D0();
  v12 = sub_21CE6C740();
  v14 = v13;
  v16 = v15;

  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE410E0, &qword_21CE746A0);
  sub_21CDE4158(&qword_27CE410E8, &qword_27CE410E0, &qword_21CE746A0, MEMORY[0x277CE0848]);
  v17 = sub_21CE6C720();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_21CE037F4(v12, v14, v16 & 1);

  v32 = v17;
  v33 = v19;
  v21 &= 1u;
  v34 = v21;
  v35 = v23;
  sub_21CE6C3A0();
  sub_21CE6C830();
  (*(v27 + 8))(v7, v28);
  sub_21CE037F4(v17, v19, v21);

  if (qword_27CE3F9F0 != -1)
  {
    swift_once();
  }

  sub_21CDFAA5C(v11, v29, &qword_27CE410D8, &qword_21CE74698);
  sub_21CE5E9B0();
  v24 = sub_21CE6CA40();
  result = sub_21CDE5494(v11, &qword_27CE410D8, &qword_21CE74698);
  *v31 = v24;
  return result;
}

unint64_t sub_21CE5E9B0()
{
  result = qword_27CE410F0;
  if (!qword_27CE410F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE410D8, &qword_21CE74698);
    sub_21CE5EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE410F0);
  }

  return result;
}

unint64_t sub_21CE5EA3C()
{
  result = qword_2812131A0;
  if (!qword_2812131A0)
  {
    sub_21CE6C550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131A0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  sub_21CE037F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_21CE037F4(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21CE5EB34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21CDE4158(&qword_27CE41128, &qword_27CE41130, &qword_21CE746C8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CE5EBE4()
{
  result = qword_27CE41138;
  if (!qword_27CE41138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41138);
  }

  return result;
}

uint64_t sub_21CE5ECF8(uint64_t a1, int a2)
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

uint64_t sub_21CE5ED40(uint64_t result, int a2, int a3)
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

BOOL sub_21CE5ED9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v6 = sub_21CE6C730();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_21CE5EE24()
{
  v0 = sub_21CE6C900();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_21CE6C950();
  qword_27CE41150 = result;
  return result;
}

uint64_t SettingsButtonPlacardView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41160, &qword_21CE74828);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820, &protocol conformance descriptor for SettingsPlacardView<A>);
  sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828, MEMORY[0x277CDF028]);
  return sub_21CE6C040();
}

uint64_t sub_21CE5F028(uint64_t a1)
{
  v2 = type metadata accessor for SettingsButtonPlacardView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28));
  v6 = v5[1];
  v10[0] = *v5;
  v10[1] = v6;
  sub_21CE5FB8C(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21CE5F508(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_21CE1570C();

  return sub_21CE6CA00();
}

uint64_t SettingsButtonPlacardView.init(title:subtitle:buttonTitle:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a6;
  v35 = a8;
  v31 = a5;
  v32 = a7;
  v33 = a4;
  v36 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41170, &qword_21CE74830);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v31 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  v19 = type metadata accessor for SettingsButtonPlacardView(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  SettingsPlacardView<>.init(title:subtitle:)(a1, a2, a3, v33, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_21CE5F430(v14);
    v23 = 1;
    v24 = v36;
  }

  else
  {
    sub_21CE5F498(v14, v18);
    sub_21CE5F498(v18, v22);
    v25 = &v22[*(v19 + 20)];
    v26 = v34;
    *v25 = v31;
    v25[1] = v26;
    v27 = &v22[*(v19 + 24)];
    v28 = v35;
    v29 = v36;
    *v27 = v32;
    v27[1] = v28;
    sub_21CE5F508(v22, v29);
    v23 = 0;
    v24 = v29;
  }

  return (*(v20 + 56))(v24, v23, 1, v19);
}

uint64_t type metadata accessor for SettingsButtonPlacardView(uint64_t a1)
{
  result = qword_27CE41178;
  if (!qword_27CE41178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE5F430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41170, &qword_21CE74830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CE5F498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5F508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsButtonPlacardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SettingsButtonPlacardView.init(title:subtitle:iconUTType:buttonTitle:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 2) = a5;
  *(v18 + 3) = a6;
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v20 = v19[9];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v21 = (a9 + v19[15]);
  *v21 = 0x74696B706C6568;
  v21[1] = 0xE700000000000000;
  v22 = (a9 + v19[16]);

  sub_21CE6C9B0();
  *v22 = v34;
  v22[1] = v35;
  v23 = (a9 + v19[17]);
  sub_21CE6C9B0();
  *v23 = v34;
  v23[1] = v35;
  v24 = (a9 + v19[10]);
  *v24 = sub_21CE5F8A0;
  v24[1] = v18;
  v25 = (a9 + v19[11]);
  *v25 = a1;
  v25[1] = a2;
  v26 = (a9 + v19[12]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v19[14]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a9 + v19[13]);
  result = type metadata accessor for SettingsButtonPlacardView(0);
  *v28 = 0;
  v28[1] = 0;
  v30 = (a9 + *(result + 20));
  *v30 = a7;
  v30[1] = a8;
  v31 = (a9 + *(result + 24));
  *v31 = a10;
  v31[1] = a11;
  return result;
}

uint64_t sub_21CE5F77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41160, &qword_21CE74828);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820, &protocol conformance descriptor for SettingsPlacardView<A>);
  sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828, MEMORY[0x277CDF028]);
  return sub_21CE6C040();
}

void sub_21CE5F8F0(uint64_t a1)
{
  sub_21CE5F97C(319);
  if (v1 <= 0x3F)
  {
    sub_21CE00D24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CE5F97C(uint64_t a1)
{
  if (!qword_27CE41188)
  {
    v2 = type metadata accessor for SettingsIconView(255);
    v3 = sub_21CE5F9E0();
    v5 = type metadata accessor for SettingsPlacardView(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CE41188);
    }
  }
}

unint64_t sub_21CE5F9E0()
{
  result = qword_27CE41190;
  if (!qword_27CE41190)
  {
    type metadata accessor for SettingsIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41190);
  }

  return result;
}

unint64_t sub_21CE5FA38()
{
  result = qword_27CE41198;
  if (!qword_27CE41198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411A0, &qword_21CE74930);
    sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820, &protocol conformance descriptor for SettingsPlacardView<A>);
    sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41198);
  }

  return result;
}

uint64_t sub_21CE5FB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5FB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsButtonPlacardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5FC64(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_21CE6CB10();
}

uint64_t SettingsPlacardView<>.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_21CE62C18();
  if (v10)
  {
    v11 = v10;
    if (!a2)
    {
      v12 = [v10 localizedName];
      a1 = sub_21CE6CC50();
      a2 = v13;
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *a5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
    v16 = v15[9];
    *(a5 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
    swift_storeEnumTagMultiPayload();
    v17 = (a5 + v15[15]);
    *v17 = 0x74696B706C6568;
    v17[1] = 0xE700000000000000;
    v18 = (a5 + v15[16]);
    v19 = v11;
    sub_21CE6C9B0();
    v20 = v43;
    *v18 = v42;
    v18[1] = v20;
    v21 = (a5 + v15[17]);
    sub_21CE6C9B0();

    v22 = v43;
    *v21 = v42;
    v21[1] = v22;
    v23 = (a5 + v15[10]);
    *v23 = sub_21CE62E98;
    v23[1] = v14;
    v24 = (a5 + v15[11]);
    *v24 = a1;
    v24[1] = a2;
    v25 = (a5 + v15[12]);
    *v25 = a3;
    v25[1] = a4;
    v26 = (a5 + v15[14]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (a5 + v15[13]);
    *v27 = 0;
    v27[1] = 0;
    return (*(*(v15 - 1) + 56))(a5, 0, 1, v15);
  }

  else
  {

    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v29 = sub_21CE6BDA0();
    __swift_project_value_buffer(v29, qword_27CE412C0);
    v30 = sub_21CE6BD80();
    v31 = sub_21CE6CF10();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136446978;
      v34 = sub_21CE6D2B0();
      v36 = sub_21CDF2CC8(v34, v35, &v42);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 178;
      *(v32 + 22) = 2082;
      v37 = sub_21CE6D2B0();
      v39 = sub_21CDF2CC8(v37, v38, &v42);

      *(v32 + 24) = v39;
      *(v32 + 32) = 2082;
      *(v32 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v42);
      _os_log_impl(&dword_21CDE1000, v30, v31, "%{public}s:%ld %{public}s %{public}s", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v33, -1, -1);
      MEMORY[0x21CF1BD50](v32, -1, -1);
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
    v41 = *(*(v40 - 8) + 56);

    return v41(a5, 1, 1, v40);
  }
}

double SettingsPlacardView<>.init(title:subtitle:iconUTType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = a6;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v16 = v15[9];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v17 = (a7 + v15[15]);
  *v17 = 0x74696B706C6568;
  v17[1] = 0xE700000000000000;
  v18 = (a7 + v15[16]);

  sub_21CE6C9B0();
  *v18 = v26;
  *(v18 + 1) = v27;
  v19 = (a7 + v15[17]);
  sub_21CE6C9B0();
  result = v26;
  *v19 = v26;
  *(v19 + 1) = v27;
  v21 = (a7 + v15[10]);
  *v21 = sub_21CE5F8A0;
  v21[1] = v14;
  v22 = (a7 + v15[11]);
  *v22 = a1;
  v22[1] = a2;
  v23 = (a7 + v15[12]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a7 + v15[14]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a7 + v15[13]);
  *v25 = 0;
  v25[1] = 0;
  return result;
}

uint64_t sub_21CE604A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CE6C280();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21CE5C234(v2 + *(a1 + 36), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CE6C570();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21CE6CF20();
    v14 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_21CE6068C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  sub_21CE6C9C0();
  return v2;
}

double sub_21CE6078C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  sub_21CE6C9C0();
  return v2;
}

uint64_t sub_21CE607EC(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  sub_21CE6C9D0();
  result = a1;
  v5 = *(v2 + *(a1 + 56));
  if (v5)
  {
    v6 = sub_21CE6078C(result);
    return v5(v6);
  }

  return result;
}

uint64_t SettingsPlacardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = *(a1 + 16);
  sub_21CE6C0D0();
  v3 = sub_21CE6C0D0();
  v27 = *(a1 + 24);
  v4 = MEMORY[0x277CDF918];
  v45 = v27;
  v46 = MEMORY[0x277CDF918];
  v30 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v44 = v4;
  v5 = swift_getWitnessTable();
  v39 = v3;
  v40 = MEMORY[0x277D839F8];
  v41 = v5;
  v42 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411A8, &qword_21CE749A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411B0, &unk_21CE749B0);
  swift_getTupleTypeMetadata3();
  sub_21CE6CB00();
  v25[1] = swift_getWitnessTable();
  v6 = sub_21CE6CA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40058, &qword_21CE70E60);
  v10 = sub_21CE6C0D0();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = sub_21CE6C0D0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - v18;
  v32 = v28;
  v33 = v27;
  v34 = v29;
  sub_21CE6C3D0();
  sub_21CE6CA20();
  v20 = swift_getWitnessTable();
  sub_21CE6C840();
  (*(v7 + 8))(v9, v6);
  sub_21CE6CAD0();
  v21 = sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60, MEMORY[0x277CE0868]);
  v37 = v20;
  v38 = v21;
  v24 = swift_getWitnessTable();
  sub_21CE6C870();
  (*(v26 + 8))(v12, v10);
  v35 = v24;
  v36 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_21CE328C8();
  v22 = *(v14 + 8);
  v22(v17, v13);
  sub_21CE328C8();
  return (v22)(v19, v13);
}

uint64_t sub_21CE60DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a1;
  v142 = a4;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411C0, &qword_21CE74A68);
  MEMORY[0x28223BE20](v158);
  v139 = &v127 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411B0, &unk_21CE749B0);
  v140 = *(v7 - 8);
  v141 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v161 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v160 = &v127 - v10;
  v11 = sub_21CE6C3B0();
  v135 = *(v11 - 8);
  v136 = v11;
  MEMORY[0x28223BE20](v11);
  v133 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CE6C640();
  v129 = *(v13 - 8);
  v130 = v13;
  MEMORY[0x28223BE20](v13);
  v128 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411C8, &qword_21CE74A70);
  MEMORY[0x28223BE20](v159);
  v132 = &v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411A8, &qword_21CE749A8);
  v137 = *(v16 - 8);
  v138 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v157 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v156 = &v127 - v19;
  v21 = type metadata accessor for SettingsPlacardView(0, a2, a3, v20);
  v166 = *(v21 - 8);
  v165 = *(v166 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v162 = &v127 - v23;
  v152 = *(a2 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21CE6C0D0();
  v151 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v127 - v27;
  v29 = sub_21CE6C0D0();
  v134 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v143 = &v127 - v30;
  v31 = MEMORY[0x277CDF918];
  v181 = a3;
  v182 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v179 = WitnessTable;
  v180 = v31;
  OpaqueTypeConformance2 = v29;
  v127 = swift_getWitnessTable();
  *&v183 = v29;
  *(&v183 + 1) = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D839F8];
  *&v184 = v127;
  *(&v184 + 1) = MEMORY[0x277D83A28];
  v155 = MEMORY[0x277CE0D48];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  v153 = OpaqueTypeMetadata2;
  v154 = v34;
  v35 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v163 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v164 = &v127 - v38;
  v39 = v21;
  v40 = *(v21 + 40);
  v41 = v145;
  (*(v145 + v40))(v37);
  sub_21CE6C5A0();
  v149 = a3;
  sub_21CE6C880();
  v42 = *(v152 + 1);
  v148 = a2;
  v42(v25, a2);
  sub_21CE6C5B0();
  sub_21CE6C880();
  (*(v151 + 8))(v28, v26);
  v43 = v166;
  v44 = *(v166 + 16);
  v151 = v166 + 16;
  v152 = v44;
  v45 = v162;
  v44(v162, v41, v39);
  WitnessTable = *(v43 + 80);
  v46 = (WitnessTable + 32) & ~WitnessTable;
  v146 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  *(v47 + 24) = a3;
  v48 = *(v43 + 32);
  v166 = v43 + 32;
  v147 = v48;
  v144 = v39;
  v48(v47 + v46, v45, v39);
  v49 = MEMORY[0x277D83A28];
  v50 = v163;
  v51 = OpaqueTypeConformance2;
  v52 = v127;
  v53 = v143;
  sub_21CE6C810();

  (*(v134 + 8))(v53, v51);
  *&v183 = v51;
  *(&v183 + 1) = v32;
  *&v184 = v52;
  *(&v184 + 1) = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v153;
  sub_21CE328C8();
  v55 = *(v154 + 8);
  v134 = v154 + 8;
  v143 = v55;
  (v55)(v50, v54);
  v56 = (v41 + *(v39 + 44));
  v57 = v56[1];
  *&v183 = *v56;
  *(&v183 + 1) = v57;
  sub_21CE1570C();

  v58 = sub_21CE6C780();
  v60 = v59;
  LOBYTE(v49) = v61;
  sub_21CE6C630();
  v63 = v128;
  v62 = v129;
  v64 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x277CE0A08], v130);
  sub_21CE6C650();

  (*(v62 + 8))(v63, v64);
  sub_21CE6C5E0();

  v65 = sub_21CE6C740();
  v67 = v66;
  LOBYTE(v62) = v68;
  v70 = v69;

  sub_21CE037F4(v58, v60, v49 & 1);

  LOBYTE(v57) = sub_21CE6C5B0();
  sub_21CE6BF20();
  LOBYTE(v174[0]) = v62 & 1;
  LOBYTE(v173[0]) = 0;
  *&v175 = v65;
  *(&v175 + 1) = v67;
  LOBYTE(v176) = v62 & 1;
  *(&v176 + 1) = v70;
  LOBYTE(v177) = v57;
  *(&v177 + 1) = v71;
  *&v178[0] = v72;
  *(&v178[0] + 1) = v73;
  *&v178[1] = v74;
  BYTE8(v178[1]) = 0;
  v75 = v133;
  sub_21CE6C3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411D0, &qword_21CE74A78);
  sub_21CE631C4();
  v76 = v132;
  sub_21CE6C830();
  (*(v135 + 8))(v75, v136);
  v185 = v177;
  v186[0] = v178[0];
  *(v186 + 9) = *(v178 + 9);
  v183 = v175;
  v184 = v176;
  sub_21CDE5494(&v183, &qword_27CE411D0, &qword_21CE74A78);
  v77 = v162;
  v79 = v144;
  v78 = v145;
  v152(v162, v145, v144);
  v80 = v146;
  v81 = swift_allocObject();
  v82 = v149;
  *(v81 + 16) = v148;
  *(v81 + 24) = v82;
  v147(v81 + v80, v77, v79);
  v136 = sub_21CE632B0();
  sub_21CE6C810();

  sub_21CDE5494(v76, &qword_27CE411C8, &qword_21CE74A70);
  v83 = v78;

  sub_21CE6C370();
  v84 = sub_21CE6C750();
  v86 = v85;
  LOBYTE(v67) = v87;
  sub_21CE6C5C0();
  v135 = sub_21CE6C740();
  v132 = v89;
  v133 = v88;
  LOBYTE(v78) = v90;

  sub_21CE037F4(v84, v86, v67 & 1);

  LODWORD(v130) = sub_21CE6C5B0();
  sub_21CE6BF20();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  LOBYTE(v67) = v78 & 1;
  LOBYTE(v175) = v78 & 1;
  LOBYTE(v174[0]) = 0;
  KeyPath = swift_getKeyPath();
  v100 = v162;
  v101 = v144;
  v152(v162, v83, v144);
  v102 = v146;
  v103 = swift_allocObject();
  v105 = v148;
  v104 = v149;
  *(v103 + 16) = v148;
  *(v103 + 24) = v104;
  v147(v103 + v102, v100, v101);
  v106 = v139;
  v107 = &v139[*(v158 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F50, &qword_21CE74AB0);
  sub_21CE6C000();
  *v107 = KeyPath;
  v108 = v133;
  *v106 = v135;
  *(v106 + 8) = v108;
  *(v106 + 16) = v67;
  *(v106 + 24) = v132;
  *(v106 + 32) = v130;
  *(v106 + 40) = v92;
  *(v106 + 48) = v94;
  *(v106 + 56) = v96;
  *(v106 + 64) = v98;
  *(v106 + 72) = 0;
  v167 = v105;
  v168 = v104;
  v169 = v83;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41160, &qword_21CE74828);
  v109 = sub_21CE633D4();
  v110 = sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828, MEMORY[0x277CDF028]);
  v111 = v160;
  sub_21CE6C850();
  sub_21CDE5494(v106, &qword_27CE411C0, &qword_21CE74A68);
  v112 = v153;
  v113 = v163;
  (*(v154 + 16))(v163, v164, v153);
  v174[0] = v113;
  v115 = v137;
  v114 = v138;
  v117 = v156;
  v116 = v157;
  (*(v137 + 16))(v157, v156, v138);
  v174[1] = v116;
  v118 = v140;
  v119 = v161;
  v120 = v111;
  v121 = v141;
  (*(v140 + 16))(v161, v120, v141);
  v174[2] = v119;
  v173[0] = v112;
  v173[1] = v114;
  v122 = v114;
  v173[2] = v121;
  v170 = OpaqueTypeConformance2;
  *&v175 = v159;
  *(&v175 + 1) = MEMORY[0x277D839F8];
  *&v176 = v136;
  *(&v176 + 1) = MEMORY[0x277D83A28];
  v171 = swift_getOpaqueTypeConformance2();
  *&v175 = v158;
  *(&v175 + 1) = v166;
  *&v176 = v109;
  *(&v176 + 1) = v110;
  v172 = swift_getOpaqueTypeConformance2();
  sub_21CE5FC64(v174, 3uLL, v173);
  v123 = *(v118 + 8);
  v123(v160, v121);
  v124 = *(v115 + 8);
  v124(v117, v122);
  v125 = v143;
  (v143)(v164, v112);
  v123(v161, v121);
  v124(v157, v122);
  return v125(v163, v112);
}

void sub_21CE61D20(CGFloat *a1@<X8>)
{
  v2 = sub_21CE6C430();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6C4B0();
  sub_21CE6BFD0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetMinY(v15);
}

void sub_21CE61E3C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 > 0.0)
  {
    v5 = type metadata accessor for SettingsPlacardView(0, a4, a5, a4);
    v6 = 0.0;
LABEL_7:
    sub_21CE607EC(v5, v6);
    return;
  }

  v7 = fabs(*a2);
  v8 = type metadata accessor for SettingsPlacardView(0, a4, a5, a4);
  if (v7 == sub_21CE6068C(v8) || sub_21CE6068C(v8) < v7)
  {
    v6 = 1.0;
LABEL_6:
    v5 = v8;
    goto LABEL_7;
  }

  if (v7 < sub_21CE6068C(v8))
  {
    v6 = v7 / sub_21CE6068C(v8);
    goto LABEL_6;
  }
}

void sub_21CE61EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21CE6C570();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411D8, &qword_21CE74AB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_21CE6BA30();
  if (!v14)
  {
LABEL_7:
    v18 = v3 + *(a2 + 52);
    v19 = *v18;
    if (*v18)
    {
      v20 = *(v18 + 8);

      v19(a1);

      sub_21CE5C308(v19, v20);
    }

    return;
  }

  v15 = (v3 + *(a2 + 60));
  if (v13 == *v15 && v14 == v15[1])
  {
  }

  else
  {
    v17 = sub_21CE6D400();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_21CE6B880();
  v21 = sub_21CE6B890();
  v22 = (*(*(v21 - 8) + 48))(v12, 1, v21);
  sub_21CDE5494(v12, &qword_27CE411D8, &qword_21CE74AB8);
  if (v22 != 1)
  {
    v23 = sub_21CE6B9B0();
    v24 = [objc_opt_self() helpViewControllerWithURL_];

    if (v24)
    {
      [v24 setShowTopicViewOnLoad_];
      v25 = sub_21CE604A0(a2, v9);
      MEMORY[0x28223BE20](v25);
      *(&v26 - 2) = v24;
      sub_21CE6C560();

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_21CE621D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SettingsPlacardView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = (a1 + *(v9 + 48));
  v13 = v12[1];
  v17[0] = *v12;
  v17[1] = v13;
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v8 + 32))(v15 + v14, v11, v7);
  sub_21CE1570C();

  return sub_21CE6CA00();
}

uint64_t sub_21CE62350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsPlacardView(0, a2, a3, v12);
  sub_21CE62508(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CDE5494(v7, &unk_27CE40310, &qword_21CE71470);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_21CE61EE8(v11, v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CE62508@<X0>(uint64_t a3@<X8>)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21CE6BA60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v35[0] = 0;
  v9 = [v8 initWithTypes:32 error:v35];
  if (v9)
  {
    v10 = v9;
    v11 = v35[0];
    v12 = sub_21CE6CC20();
    v13 = [v10 matchesInString:v12 options:0 range:{0, sub_21CE6CCB0()}];

    sub_21CE63780();
    v14 = sub_21CE6CD40();

    v33 = a3;
    v34 = v4;
    v31 = v7;
    v32 = v5;
    if (v14 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CE6D360())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CF1B2A0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ([v17 resultType] == 32)
        {
          v20 = [v18 URL];
          if (v20)
          {
            v21 = v20;

            v22 = v31;
            sub_21CE6B9F0();

            v24 = v32;
            v23 = v33;
            v25 = v22;
            v26 = v34;
            (*(v32 + 32))(v33, v25, v34);
            return (*(v24 + 56))(v23, 0, 1, v26);
          }
        }

        ++v16;
        if (v19 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    return (*(v32 + 56))(v33, 1, 1, v34);
  }

  else
  {
    v28 = v35[0];
    v29 = sub_21CE6B910();

    swift_willThrow();
    return (*(v5 + 56))(a3, 1, 1, v4);
  }
}

double SettingsPlacardView.init(localizedTitle:localizedSubtitle:updateNavigationTitleAlpha:linkAction:icon:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for SettingsPlacardView(0, a12, a13, v18);
  v20 = v19[9];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v21 = (a9 + v19[15]);
  *v21 = 0x74696B706C6568;
  v21[1] = 0xE700000000000000;
  v22 = (a9 + v19[16]);
  sub_21CE6C9B0();
  *v22 = v34;
  *(v22 + 1) = v35;
  v23 = (a9 + v19[17]);
  sub_21CE6C9B0();
  result = v34;
  *v23 = v34;
  *(v23 + 1) = v35;
  v25 = (a9 + v19[10]);
  *v25 = a10;
  v25[1] = a11;
  v26 = (a9 + v19[11]);
  *v26 = a1;
  v26[1] = a2;
  v27 = (a9 + v19[12]);
  *v27 = a3;
  v27[1] = a4;
  v28 = (a9 + v19[14]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a9 + v19[13]);
  *v29 = a7;
  v29[1] = a8;
  return result;
}

uint64_t sub_21CE629FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 icon];

  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v5 = *(type metadata accessor for SettingsIconView(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_21CE62AC0@<X0>(uint64_t x8_0@<X8>)
{

  return sub_21CE62B38(x8_0);
}

uint64_t sub_21CE62B38@<X0>(uint64_t a4@<X8>)
{

  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_21CE6CC20();

  v7 = [v5 initWithType_];

  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v8 = *(type metadata accessor for SettingsIconView(0) + 24);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  *a4 = v7;
  *(a4 + 8) = v10;
  return result;
}

id sub_21CE62C18()
{
  v0 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5DD8]) initWithApplicationExtensionRecord_];

      return v3;
    }
  }

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  __swift_project_value_buffer(v5, qword_27CE412C0);
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF10();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446978;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 166;
    *(v8 + 22) = 2082;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v16);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2082;
    *(v8 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v16);
    _os_log_impl(&dword_21CDE1000, v6, v7, "%{public}s:%ld %{public}s %{public}s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  return 0;
}

void sub_21CE62F10(uint64_t a1)
{
  sub_21CE63074(319, &qword_281213238, &qword_27CE40C28, &qword_21CE73360, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21CE5BD40(319);
    if (v2 <= 0x3F)
    {
      sub_21CE00D24();
      if (v3 <= 0x3F)
      {
        sub_21CE63074(319, &qword_2812117D0, &qword_27CE411B8, qword_21CE74A50, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21CE630D8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CE63074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21CE630D8()
{
  if (!qword_281213190)
  {
    v0 = sub_21CE6C9F0();
    if (!v1)
    {
      atomic_store(v0, &qword_281213190);
    }
  }
}

void sub_21CE63128(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SettingsPlacardView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_21CE61E3C(a1, a2, v10, v7, v8);
}

unint64_t sub_21CE631C4()
{
  result = qword_281213228;
  if (!qword_281213228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411D0, &qword_21CE74A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213228);
  }

  return result;
}

unint64_t sub_21CE632B0()
{
  result = qword_281213210;
  if (!qword_281213210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411C8, &qword_21CE74A70);
    sub_21CE631C4();
    sub_21CE5EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213210);
  }

  return result;
}

uint64_t sub_21CE6333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SettingsPlacardView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_21CE61EE8(a1, v6);

  return sub_21CE6BFF0();
}

unint64_t sub_21CE633D4()
{
  result = qword_281213218;
  if (!qword_281213218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411C0, &qword_21CE74A68);
    sub_21CE631C4();
    sub_21CDE4158(&qword_2812131B0, &qword_27CE40F50, &qword_21CE74AB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213218);
  }

  return result;
}

uint64_t objectdestroy_10Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SettingsPlacardView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CE6C4A0();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v4 + v7, 1, v10))
    {
      (*(v11 + 8))(v4 + v7, v10);
    }
  }

  else
  {
  }

  v12 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CE6C570();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
  }

  if (*(v9 + v5[13]))
  {
  }

  if (*(v9 + v5[14]))
  {
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_21CE636FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SettingsPlacardView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_21CE62350(v8, v5, v6);
}

unint64_t sub_21CE63780()
{
  result = qword_27CE411E0;
  if (!qword_27CE411E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE411E0);
  }

  return result;
}

double sub_21CE6388C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = [objc_opt_self() mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v19}];
  [v20 setDrawBorder_];
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = v20;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F8, &qword_21CE74B58);
  v23 = v22[9];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v24 = (a9 + v22[15]);
  *v24 = 0x74696B706C6568;
  v24[1] = 0xE700000000000000;
  v25 = (a9 + v22[16]);
  v26 = v20;
  sub_21CE6C9B0();
  *v25 = v37;
  *(v25 + 1) = v38;
  v27 = (a9 + v22[17]);
  sub_21CE6C9B0();

  result = v37;
  *v27 = v37;
  *(v27 + 1) = v38;
  v29 = (a9 + v22[10]);
  *v29 = a11;
  v29[1] = v21;
  v30 = (a9 + v22[11]);
  *v30 = a1;
  v30[1] = a2;
  v31 = (a9 + v22[12]);
  *v31 = a3;
  v31[1] = a4;
  v32 = (a9 + v22[14]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a9 + v22[13]);
  *v33 = a7;
  v33[1] = a8;
  return result;
}

double sub_21CE63B24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = [objc_opt_self() mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v21}];
  [v22 setDrawBorder_];
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = v22;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F8, &qword_21CE74B58);
  v25 = v24[9];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v26 = (a9 + v24[15]);
  *v26 = 0x74696B706C6568;
  v26[1] = 0xE700000000000000;
  v27 = (a9 + v24[16]);
  v28 = v22;
  sub_21CE6C9B0();
  *v27 = v39;
  *(v27 + 1) = v40;
  v29 = (a9 + v24[17]);
  sub_21CE6C9B0();

  result = v39;
  *v29 = v39;
  *(v29 + 1) = v40;
  v31 = (a9 + v24[10]);
  *v31 = a13;
  v31[1] = v23;
  v32 = (a9 + v24[11]);
  *v32 = a1;
  v32[1] = a2;
  v33 = (a9 + v24[12]);
  *v33 = a3;
  v33[1] = a4;
  v34 = (a9 + v24[14]);
  *v34 = a7;
  v34[1] = a8;
  v35 = (a9 + v24[13]);
  *v35 = a10;
  v35[1] = a11;
  return result;
}

uint64_t sub_21CE63D8C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_21CE6CC20();
  [v6 *a4];

  v8 = a3;

  return sub_21CE6BD10();
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t SettingsTogglePlacardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_21CE6C310();
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41200, &unk_21CE74B90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  type metadata accessor for SettingsTogglePlacardView(0);
  v21 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820, &protocol conformance descriptor for SettingsPlacardView<A>);
  sub_21CE6CA10();
  sub_21CE6C300();
  sub_21CDE4158(&qword_27CE41208, &qword_27CE41200, &unk_21CE74B90, MEMORY[0x277CDF068]);
  sub_21CE649D8(&qword_27CE41210, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v10 = v20;
  v11 = v18;
  sub_21CE6C7E0();
  (*(v19 + 8))(v5, v11);
  (*(v7 + 8))(v9, v6);
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41218, &qword_21CE74BA0) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41220, &qword_21CE74BA8) + 28);
  v14 = *MEMORY[0x277CDF438];
  v15 = sub_21CE6BF40();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  result = swift_getKeyPath();
  *v12 = result;
  return result;
}

uint64_t type metadata accessor for SettingsTogglePlacardView(uint64_t a1)
{
  result = qword_27CE41228;
  if (!qword_27CE41228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsTogglePlacardView.init(title:subtitle:toggle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v31 = a6;
  v32 = a5;
  v30 = a4;
  v33 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41170, &qword_21CE74830);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28[-v16];
  v18 = type metadata accessor for SettingsTogglePlacardView(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v28[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SettingsPlacardView<>.init(title:subtitle:)(a1, a2, a3, v30, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_21CE5F430(v13);
    v22 = 1;
    v23 = v33;
  }

  else
  {
    sub_21CE5F498(v13, v17);
    sub_21CE5F498(v17, v21);
    v24 = &v21[*(v18 + 20)];
    v25 = v31;
    *v24 = v32;
    *(v24 + 1) = v25;
    v24[16] = v29 & 1;
    v26 = v33;
    sub_21CE648AC(v21, v33);
    v22 = 0;
    v23 = v26;
  }

  return (*(v19 + 56))(v23, v22, 1, v18);
}

uint64_t sub_21CE644AC@<X0>(uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_21CE6C310();
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41200, &unk_21CE74B90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v22 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820, &protocol conformance descriptor for SettingsPlacardView<A>);
  sub_21CE6CA10();
  sub_21CE6C300();
  sub_21CDE4158(&qword_27CE41208, &qword_27CE41200, &unk_21CE74B90, MEMORY[0x277CDF068]);
  sub_21CE649D8(&qword_27CE41210, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v11 = v21;
  v12 = v19;
  sub_21CE6C7E0();
  (*(v20 + 8))(v6, v12);
  (*(v8 + 8))(v10, v7);
  v13 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41218, &qword_21CE74BA0) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41220, &qword_21CE74BA8) + 28);
  v15 = *MEMORY[0x277CDF438];
  v16 = sub_21CE6BF40();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  result = swift_getKeyPath();
  *v13 = result;
  return result;
}

uint64_t sub_21CE647E4(uint64_t a1)
{
  v2 = sub_21CE6BF40();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x21CF1A100](v4);
}

uint64_t sub_21CE648AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsTogglePlacardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21CE64954(uint64_t a1)
{
  sub_21CE5F97C(319);
  if (v1 <= 0x3F)
  {
    sub_21CE64A20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CE649D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21CE64A20()
{
  if (!qword_27CE41238)
  {
    v0 = sub_21CE6CA90();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE41238);
    }
  }
}

unint64_t sub_21CE64A70()
{
  result = qword_27CE41240;
  if (!qword_27CE41240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41218, &qword_21CE74BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41200, &unk_21CE74B90);
    sub_21CE6C310();
    sub_21CDE4158(&qword_27CE41208, &qword_27CE41200, &unk_21CE74B90, MEMORY[0x277CDF068]);
    sub_21CE649D8(&qword_27CE41210, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    swift_getOpaqueTypeConformance2();
    sub_21CDE4158(&qword_27CE41248, &qword_27CE41220, &qword_21CE74BA8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41240);
  }

  return result;
}

id sub_21CE64BE8()
{
  v0 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5DD8]) initWithApplicationExtensionRecord_];

      return v3;
    }
  }

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  __swift_project_value_buffer(v5, qword_27CE412C0);
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF10();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446978;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 21;
    *(v8 + 22) = 2082;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v16);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2082;
    *(v8 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v16);
    _os_log_impl(&dword_21CDE1000, v6, v7, "%{public}s:%ld %{public}s %{public}s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  return 0;
}

id sub_21CE64E68()
{
  type metadata accessor for SettingsExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CE44240 = result;
  return result;
}

BOOL static NSBundle.PluginLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_21CE6B9E0())
  {
    v4 = *(type metadata accessor for NSBundle.PluginLocation(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_21CE6D400() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

id static NSBundle.settingsExperiencePlugin(name:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_21CE6B9C0();
  type metadata accessor for NSBundle.PluginLocation(0);
  v13 = v10;
  sub_21CE6B9D0();
  v14 = *(v7 + 8);
  v14(v10, v6);
  if ((_sSo8NSBundleC8SettingsE30settingsExperiencePluginExists4name8locationSbSS_AbCE0E8LocationVtFZ_0(a1, a2, a3) & 1) != 0 && (v15 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v16 = sub_21CE6B9B0(), v13 = [v15 initWithURL_], v16, v13))
  {
    v14(v12, v6);
  }

  else
  {
    sub_21CE025C0();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v14(v12, v6);
  }

  return v13;
}

uint64_t NSBundle.settingsExperiencePluginLoaderName.getter()
{
  v1 = [v0 infoDictionary];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1;
  v3 = sub_21CE6CB60();

  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_21CE66850(0xD00000000000001CLL, 0x800000021CE78C90);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21CDE66C8(*(v3 + 56) + 32 * v4, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  if (!*(v12 + 16) || (v6 = sub_21CE66850(0xD000000000000024, 0x800000021CE78CB0), (v7 & 1) == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v6, v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v8 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v14[0] = v12;
    v14[1] = v13;

    MEMORY[0x21CF1ACB0](0x6F4C6E6967756C50, 0xEC00000072656461);

    return v14[0];
  }

  v10 = 2;
LABEL_14:
  sub_21CE025C0();
  swift_allocError();
  *v11 = v10;
  return swift_willThrow();
}

uint64_t sub_21CE65308()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  __swift_allocate_value_buffer(v7, qword_2812119A8);
  __swift_project_value_buffer(v7, qword_2812119A8);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v8 = sub_21CE6BA60();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_21CE6BA50();
}

uint64_t static NSBundle.SettingsPluginVariant.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812119A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  v3 = __swift_project_value_buffer(v2, qword_2812119A8);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.SettingsPluginVariant);
}

uint64_t sub_21CE65534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  __swift_allocate_value_buffer(v7, qword_27CE41250);
  __swift_project_value_buffer(v7, qword_27CE41250);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v8 = sub_21CE6BA60();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_21CE6BA50();
}

uint64_t static NSBundle.SettingsPluginVariant.appleInternal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3FA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE41250);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.SettingsPluginVariant);
}

uint64_t NSBundle.SettingsPluginVariant.description.getter()
{
  sub_21CE6D290();
  type metadata accessor for NSBundle.SettingsPluginVariant(0);
  v0 = sub_21CE6D4F0();

  MEMORY[0x21CF1ACB0](0xD000000000000013, 0x800000021CE78CE0);
  v1 = sub_21CE6B980();
  MEMORY[0x21CF1ACB0](v1);

  MEMORY[0x21CF1ACB0](32039, 0xE200000000000000);
  return v0;
}

id static NSBundle.settingsPlugin(name:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21CE6BA60();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_21CE6B9C0();
  v12 = v9;
  sub_21CE6B9D0();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((_sSo8NSBundleC8SettingsE20settingsPluginExists4name7variantSbSS_AbCE0bD7VariantVtFZ_0(a1, a2) & 1) != 0 && (v14 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v15 = sub_21CE6B9B0(), v12 = [v14 initWithURL_], v15, v12))
  {
    v13(v11, v5);
  }

  else
  {
    sub_21CE025C0();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v13(v11, v5);
  }

  return v12;
}

uint64_t NSBundle.PluginType.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static NSBundle.PluginType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CE6D400();
  }
}

uint64_t NSBundle.PluginType.hashValue.getter()
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE65B00()
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE65B54(uint64_t a1)
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE65B9C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21CE65BCC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CE6D400();
  }
}

uint64_t sub_21CE65BFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v7, qword_2812118A8);
  v8 = __swift_project_value_buffer(v7, qword_2812118A8);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v9 = sub_21CE6BA60();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  result = sub_21CE6BA50();
  v11 = (v8 + *(v7 + 20));
  *v11 = 0x73676E6974746573;
  v11[1] = 0xE800000000000000;
  return result;
}

uint64_t NSBundle.PluginLocation.init(path:pluginType:)@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_21CE6B970();
  MEMORY[0x28223BE20](v9);
  v12 = *a3;
  v11 = a3[1];
  (*(v13 + 104))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91C0]);
  v14 = sub_21CE6BA60();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_21CE6BA50();
  result = type metadata accessor for NSBundle.PluginLocation(0);
  v16 = (a4 + *(result + 20));
  *v16 = v12;
  v16[1] = v11;
  return result;
}

uint64_t static NSBundle.PluginLocation.settings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812118A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_2812118A8);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CE65FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v7, qword_27CE41268);
  v8 = __swift_project_value_buffer(v7, qword_27CE41268);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v9 = sub_21CE6BA60();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  result = sub_21CE6BA50();
  v11 = (v8 + *(v7 + 20));
  *v11 = 0x73676E6974746573;
  v11[1] = 0xE800000000000000;
  return result;
}

uint64_t static NSBundle.PluginLocation.appleInternalSettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3FA18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE41268);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CE66240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v7, qword_27CE41280);
  v8 = __swift_project_value_buffer(v7, qword_27CE41280);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v9 = sub_21CE6BA60();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  result = sub_21CE6BA50();
  v11 = (v8 + *(v7 + 20));
  *v11 = 0x656C646E7562;
  v11[1] = 0xE600000000000000;
  return result;
}

uint64_t static NSBundle.PluginLocation.privacyPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3FA20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE41280);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t NSBundle.PluginLocation.hash(into:)(uint64_t a1)
{
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CE6CB80();
  type metadata accessor for NSBundle.PluginLocation(0);

  return sub_21CE6CCA0();
}

uint64_t NSBundle.PluginLocation.hashValue.getter()
{
  sub_21CE6D4B0();
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CE6CB80();
  type metadata accessor for NSBundle.PluginLocation(0);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE665E0(uint64_t a1)
{
  sub_21CE6D4B0();
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CE6CB80();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE66688(uint64_t a1, uint64_t a2)
{
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CE6CB80();

  return sub_21CE6CCA0();
}

uint64_t sub_21CE66724(uint64_t a1, uint64_t a2)
{
  sub_21CE6D4B0();
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CE6CB80();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE667C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_21CE6B9E0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21CE6D400();
}

unint64_t sub_21CE66850(uint64_t a1, uint64_t a2)
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v4 = sub_21CE6D4E0();

  return sub_21CE66A84(a1, a2, v4);
}

unint64_t sub_21CE668C8(char a1)
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();

  v2 = sub_21CE6D4E0();

  return sub_21CE66B3C(a1 & 1, v2);
}

unint64_t sub_21CE66984(uint64_t *a1)
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)(v4);
  v2 = sub_21CE6D4E0();

  return sub_21CE66C98(a1, v2);
}

unint64_t sub_21CE669F0(uint64_t a1)
{
  sub_21CE6CC50();
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v2 = sub_21CE6D4E0();

  return sub_21CE66F84(a1, v2);
}

unint64_t sub_21CE66A84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21CE6D400())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21CE66B3C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746163696C707061;
    }

    else
    {
      v6 = 0x4963696870617267;
    }

    if (a1)
    {
      v7 = 0xEF6E6F63496E6F69;
    }

    else
    {
      v7 = 0xEB000000006E6F63;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746163696C707061 : 0x4963696870617267;
      v9 = *(*(v2 + 48) + v4) ? 0xEF6E6F63496E6F69 : 0xEB000000006E6F63;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_21CE6D400();

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

unint64_t sub_21CE66C98(uint64_t *a1, uint64_t a2)
{
  v28 = type metadata accessor for SettingsPaneRecipe(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2 + 64;
  v29 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return v10;
  }

  v11 = ~v9;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(v5 + 72);
  while (1)
  {
    sub_21CDE9794(*(v29 + 48) + v14 * v10, v7, type metadata accessor for SettingsPaneRecipe);
    v15 = *v7 == v12 && v7[1] == v13;
    if (!v15 && (sub_21CE6D400() & 1) == 0)
    {
      goto LABEL_5;
    }

    v16 = v7[2] == a1[2] && v7[3] == a1[3];
    if (!v16 && (sub_21CE6D400() & 1) == 0)
    {
      goto LABEL_5;
    }

    v17 = *(v28 + 24);
    v18 = v7 + v17;
    v19 = a1 + v17;
    if ((sub_21CE6B9E0() & 1) == 0)
    {
      goto LABEL_5;
    }

    v20 = *(type metadata accessor for NSBundle.PluginLocation(0) + 20);
    v21 = *&v18[v20];
    v22 = *&v18[v20 + 8];
    v23 = &v19[v20];
    v24 = v21 == *v23 && v22 == *(v23 + 1);
    if (!v24 && (sub_21CE6D400() & 1) == 0)
    {
      goto LABEL_5;
    }

    v25 = *(v28 + 28);
    sub_21CE00700(v7 + v25, v33);
    sub_21CE00700(a1 + v25, &v35);
    if (!v34)
    {
      break;
    }

    sub_21CE00700(v33, v32);
    if (!*(&v36 + 1))
    {
      sub_21CE00770(v32);
      goto LABEL_4;
    }

    v30[0] = v35;
    v30[1] = v36;
    v31 = v37;
    v26 = MEMORY[0x21CF1B1E0](v32, v30);
    sub_21CE00770(v30);
    sub_21CE00770(v32);
    sub_21CDE5494(v33, qword_27CE40D00, &qword_21CE706F0);
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_5:
    sub_21CE07D30(v7);
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return v10;
    }
  }

  if (*(&v36 + 1))
  {
LABEL_4:
    sub_21CDE5494(v33, &qword_27CE3FF58, &qword_21CE74E00);
    goto LABEL_5;
  }

  sub_21CDE5494(v33, qword_27CE40D00, &qword_21CE706F0);
LABEL_29:
  sub_21CE07D30(v7);
  return v10;
}

unint64_t sub_21CE66F84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21CE6CC50();
      v8 = v7;
      if (v6 == sub_21CE6CC50() && v8 == v9)
      {
        break;
      }

      v11 = sub_21CE6D400();

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

uint64_t _sSo8NSBundleC8SettingsE20settingsPluginExists4name7variantSbSS_AbCE0bD7VariantVtFZ_0(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  sub_21CE6B9C0();
  sub_21CE6B9D0();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v15 = 0;
  v10 = [objc_opt_self() defaultManager];
  sub_21CE6BA10();
  v11 = sub_21CE6CC20();

  v12 = [v10 fileExistsAtPath:v11 isDirectory:&v15];

  v9(v8, v2);
  return (v12 & v15);
}

unint64_t sub_21CE67284()
{
  result = qword_27CE41298;
  if (!qword_27CE41298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41298);
  }

  return result;
}

uint64_t sub_21CE67348(uint64_t a1)
{
  result = sub_21CE6BA60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t (*sub_21CE67408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return sub_21CE67530;
}

uint64_t sub_21CE67470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  v4();
  return sub_21CE6CA40();
}

uint64_t sub_21CE67500@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t sub_21CE6753C()
{
  v0 = sub_21CE6CC10();
  __swift_allocate_value_buffer(v0, qword_2812132F0);
  __swift_project_value_buffer(v0, qword_2812132F0);
  sub_21CE6CC00();
  return sub_21CE6CBF0();
}

uint64_t sub_21CE67598()
{
  type metadata accessor for Log();
  result = swift_initStaticObject();
  qword_27CE412A8 = result;
  return result;
}

uint64_t static Log.shared.getter()
{
  type metadata accessor for Log();

  return swift_initStaticObject();
}

void sub_21CE6763C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  if ((a10() & 1) == 0)
  {
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v12 = sub_21CE6BDA0();
    __swift_project_value_buffer(v12, qword_27CE412C0);

    oslog = sub_21CE6BD80();
    v13 = sub_21CE6CF10();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v22 = a1;
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446978;
      v16 = sub_21CE6D2B0();
      v18 = sub_21CDF2CC8(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = a9;
      *(v14 + 22) = 2082;
      v19 = sub_21CE6D2B0();
      v21 = sub_21CDF2CC8(v19, v20, &v24);

      *(v14 + 24) = v21;
      *(v14 + 32) = 2082;
      *(v14 + 34) = sub_21CDF2CC8(v22, a2, &v24);
      _os_log_impl(&dword_21CDE1000, oslog, v13, "%{public}s:%ld %{public}s %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v15, -1, -1);
      MEMORY[0x21CF1BD50](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21CE678D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v11 = sub_21CE6BDA0();
  __swift_project_value_buffer(v11, qword_27CE412C0);

  oslog = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136447235;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a9;
    *(v13 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, &v23);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    *(v13 + 44) = sub_21CDF2CC8(v21, a2, &v23);
    _os_log_impl(&dword_21CDE1000, oslog, v12, "%{public}s:%ld %{public}s %{private,mask.hash}s", v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v14, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }
}

void sub_21CE67BF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, uint64_t a10, uint64_t (*a11)(void), char a12, const char *a13)
{
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v15 = sub_21CE6BDA0();
  __swift_project_value_buffer(v15, qword_27CE412C0);

  oslog = sub_21CE6BD80();
  v16 = a11();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = vuzp1_s8(a9, v19).u32[0];
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, &v28);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a10;
    *(v17 + 22) = a12;
    *(v17 + 23) = 8;
    v23 = sub_21CE6D2B0();
    v25 = sub_21CDF2CC8(v23, v24, &v28);

    *(v17 + 24) = v25;
    *(v17 + 32) = a12;
    *(v17 + 33) = 8;
    *(v17 + 34) = sub_21CDF2CC8(a1, a2, &v28);
    _os_log_impl(&dword_21CDE1000, oslog, v16, a13, v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v18, -1, -1);
    MEMORY[0x21CF1BD50](v17, -1, -1);
  }
}

uint64_t sub_21CE67E4C()
{
  v0 = sub_21CE6BDA0();
  __swift_allocate_value_buffer(v0, qword_2812165C0);
  __swift_project_value_buffer(v0, qword_2812165C0);

  return sub_21CE6BD90();
}

uint64_t sub_21CE67EFC()
{
  v0 = sub_21CE6BDA0();
  __swift_allocate_value_buffer(v0, qword_2812165D8);
  __swift_project_value_buffer(v0, qword_2812165D8);

  return sub_21CE6BD90();
}

uint64_t SettingsExperiencePluginError.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE68174()
{
  result = qword_27CE412D8;
  if (!qword_27CE412D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412D8);
  }

  return result;
}

unint64_t sub_21CE681EC()
{
  result = qword_27CE412E0;
  if (!qword_27CE412E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412E0);
  }

  return result;
}

uint64_t View.settingsIconSize(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE328C8();
  sub_21CE328C8();
  return (*(v5 + 8))(v7, a2);
}

uint64_t SettingsIconView.init<A>(icon:style:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 8))(a2, a3);
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v6 = *(type metadata accessor for SettingsIconView(0) + 24);
  *(a4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  return result;
}

uint64_t type metadata accessor for SettingsIconView(uint64_t a1)
{
  result = qword_281212028;
  if (!qword_281212028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsIconView.init<A>(utType:style:label:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_21CE6CC20();

  v13 = [v11 initWithType_];

  (*(v8 + 16))(v10, a3, a4);
  SettingsIconView.init<A>(icon:style:label:)(v13, v10, a4, a5);
  return (*(v8 + 8))(a3, a4);
}

uint64_t SettingsIconView.init(url:style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CE6BA60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v9 = sub_21CE6B9B0();
  v10 = [v8 initWithURL_];

  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(a1, v4);
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v12 = *(type metadata accessor for SettingsIconView(0) + 24);
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  *a2 = v10;
  *(a2 + 8) = v14;
  return result;
}

uint64_t SettingsIconView.init<A>(url:style:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CE6BA60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v15 = sub_21CE6B9B0();
  v16 = [v14 initWithURL_];

  v17 = *(v11 + 8);
  v17(v13, v10);
  (*(v7 + 16))(v9, a2, a3);
  SettingsIconView.init<A>(icon:style:label:)(v16, v9, a3, v20);
  (*(v7 + 8))(a2, a3);
  return (v17)(a1, v10);
}

uint64_t SettingsIconView.init(utType:style:)@<X0>(uint64_t a3@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v5 = sub_21CE6CC20();

  v6 = [v4 initWithType_];

  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v7 = *(type metadata accessor for SettingsIconView(0) + 24);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  *a3 = v6;
  *(a3 + 8) = v9;
  return result;
}

uint64_t SettingsIconView.init(image:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = *(type metadata accessor for SettingsIconView(0) + 24);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 1;
  return result;
}

void SettingsIconView.init<A>(image:style:label:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11, v12);
  SettingsIconView.init<A>(icon:style:label:)(0, v10, a3, a4);
  (*(v8 + 8))(a2, a3);
  sub_21CE693D4(*a4, *(a4 + 8));
  *a4 = a1;
  *(a4 + 8) = 1;
}

void *sub_21CE68C24@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v20[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41340, &qword_21CE75320);
  MEMORY[0x28223BE20](v3);
  v5 = (v20 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41348, &qword_21CE75328);
  MEMORY[0x28223BE20](v6);
  v8 = (v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41328, &qword_21CE75290);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41338, &qword_21CE75298);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - v14;
  v16 = *(a1 + 8);
  if (v16 == 255)
  {
    *v5 = sub_21CE6C930();
    swift_storeEnumTagMultiPayload();
    sub_21CE69798();
    return sub_21CE6C400();
  }

  else
  {
    v20[1] = v9;
    v20[2] = v3;
    v17 = *a1;
    if (v16)
    {
      *v8 = v17;
      swift_storeEnumTagMultiPayload();
      sub_21CE69950(v17, v16);
      sub_21CE69968(v17, 1);
      sub_21CE69824();
      sub_21CE6C400();
      sub_21CE69974(v11, v5);
      swift_storeEnumTagMultiPayload();
      sub_21CE69798();
      sub_21CE6C400();
      sub_21CE693D4(v17, v16);
      return sub_21CE699E4(v11);
    }

    else
    {
      v19 = v13;
      sub_21CE69950(v17, v16);
      sub_21CE69968(v17, 0);
      sub_21CE6BD00();
      (*(v19 + 16))(v8, v15, v12);
      swift_storeEnumTagMultiPayload();
      sub_21CE69824();
      sub_21CE6C400();
      sub_21CE69974(v11, v5);
      swift_storeEnumTagMultiPayload();
      sub_21CE69798();
      sub_21CE6C400();
      sub_21CE693D4(v17, v16);
      sub_21CE699E4(v11);
      return (*(v19 + 8))(v15, v12);
    }
  }
}

uint64_t sub_21CE69058@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21CE6C930();
  *a2 = result;
  return result;
}

unint64_t SettingsIconView.Style.description.getter()
{
  v1 = *v0;
  v2 = 0x2072616265646973;
  v3 = 0x616D73206D726F66;
  v4 = 0x64656D206D726F66;
  if (v1 != 4)
  {
    v4 = 0x72616C206D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SettingsIconView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE691FC()
{
  v1 = *v0;
  v2 = 0x2072616265646973;
  v3 = 0x616D73206D726F66;
  v4 = 0x64656D206D726F66;
  if (v1 != 4)
  {
    v4 = 0x72616C206D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21CE6930C(uint64_t a1)
{
  v2 = sub_21CE6C0A0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C190();
}

void sub_21CE693D4(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_21CE693EC(result, a2 & 1);
  }
}

void sub_21CE693EC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_21CE69418()
{
  result = qword_27CE412E8;
  if (!qword_27CE412E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412E8);
  }

  return result;
}

unint64_t sub_21CE69470()
{
  result = qword_27CE412F0;
  if (!qword_27CE412F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412F0);
  }

  return result;
}

void sub_21CE694EC(uint64_t a1)
{
  sub_21CE695D0(319, qword_281212038, &type metadata for SettingsIconView.ViewType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CE695D0(319, &qword_281213250, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21CE69620(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CE695D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21CE69620(uint64_t a1)
{
  if (!qword_281213248)
  {
    sub_21CE6C0A0();
    v1 = sub_21CE6BF50();
    if (!v2)
    {
      atomic_store(v1, &qword_281213248);
    }
  }
}

unint64_t sub_21CE69688()
{
  result = qword_27CE41300;
  if (!qword_27CE41300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41308, &qword_21CE75280);
    sub_21CE6970C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41300);
  }

  return result;
}

unint64_t sub_21CE6970C()
{
  result = qword_27CE41310;
  if (!qword_27CE41310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41318, &qword_21CE75288);
    sub_21CE69798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41310);
  }

  return result;
}

unint64_t sub_21CE69798()
{
  result = qword_27CE41320;
  if (!qword_27CE41320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41328, &qword_21CE75290);
    sub_21CE69824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41320);
  }

  return result;
}

unint64_t sub_21CE69824()
{
  result = qword_27CE41330;
  if (!qword_27CE41330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41338, &qword_21CE75298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41330);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21CE698A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21CE698F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_21CE69950(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_21CE69968(result, a2 & 1);
  }

  return result;
}

id sub_21CE69968(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_21CE69974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41328, &qword_21CE75290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE699E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41328, &qword_21CE75290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SettingsNamedIconSize.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t SettingsNamedIconSize.description.getter()
{
  v1 = *v0;
  v2 = 0x2072616265646973;
  v3 = 0x616D73206D726F66;
  v4 = 0x64656D206D726F66;
  if (v1 != 4)
  {
    v4 = 0x72616C206D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21CE69BDC()
{
  result = qword_27CE41350;
  if (!qword_27CE41350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41350);
  }

  return result;
}

unint64_t sub_21CE69C34()
{
  result = qword_27CE41358;
  if (!qword_27CE41358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41358);
  }

  return result;
}

uint64_t NumberStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t ManagedBy.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t SettingsRestrictionView.init(in:by:symbol:symbolRenderingMode:text:textStyle:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 *a10)
{
  v12 = *a1;
  v13 = *a2;
  v24 = a7;
  if (a3)
  {
    v14 = a5;
  }

  else
  {
    v14 = a5;
    if (*a2 > 2u)
    {
      v15 = sub_21CE6C990();
    }

    else
    {
      v15 = sub_21CE6C970();
    }

    a3 = v15;
  }

  *a9 = a3;
  v16 = type metadata accessor for SettingsRestrictionView(0);
  v17 = v16[5];
  v18 = sub_21CE6C3F0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a4, v18);
  v28 = v12;
  v27 = v13;
  sub_21CE6A724(&v28, &v27, v14, a6, v24, a8, 1, v29);
  (*(v19 + 8))(a4, v18);
  v20 = &a9[v16[6]];
  v21 = v29[1];
  *v20 = v29[0];
  *(v20 + 1) = v21;
  v22 = &a9[v16[7]];

  return sub_21CDE4CD8(a10, v22);
}

uint64_t type metadata accessor for SettingsRestrictionView(uint64_t a1)
{
  result = qword_27CE41380;
  if (!qword_27CE41380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsRestrictionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C360();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for SettingsRestrictionView(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v5 + 28)), *(v1 + *(v5 + 28) + 24));
  sub_21CE6C350();
  sub_21CE6C340();
  sub_21CE6C330();
  sub_21CE6C340();
  sub_21CE6C320();
  sub_21CE6C340();
  sub_21CE6C380();
  if (qword_27CE3F9F8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE44240;
  v7 = sub_21CE6C750();
  v9 = v8;
  v11 = v10;
  v12 = sub_21CE6C720();
  v14 = v13;
  v16 = v15;
  v24 = v17;
  sub_21CE037F4(v7, v9, v11 & 1);

  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41360, &qword_21CE75480) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41368, &qword_21CE75488) + 28);
  v20 = *(v5 + 20);
  v21 = sub_21CE6C3F0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v18[v19], v2 + v20, v21);
  (*(v22 + 56))(&v18[v19], 0, 1, v21);
  result = swift_getKeyPath();
  *v18 = result;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v24;
  return result;
}

void *sub_21CE6A284@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413B0, &qword_21CE75728);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413B8, &qword_21CE75730);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  if (v2[4])
  {
    v19 = *v2;
    v20 = a2;
    v18 = *(v2 + 16);
    v17[1] = v2[3];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413C0, &qword_21CE75738);
    v13 = sub_21CDE4158(&qword_27CE413C8, &qword_27CE413C0, &qword_21CE75738, MEMORY[0x277CE04B0]);
    sub_21CE6C860();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v21 = v12;
    v22 = v13;
    swift_getOpaqueTypeConformance2();
    sub_21CE6C400();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413C0, &qword_21CE75738);
    (*(*(v15 - 8) + 16))(v7, a1, v15);
    swift_storeEnumTagMultiPayload();
    v16 = sub_21CDE4158(&qword_27CE413C8, &qword_27CE413C0, &qword_21CE75738, MEMORY[0x277CE04B0]);
    v21 = v15;
    v22 = v16;
    swift_getOpaqueTypeConformance2();
    return sub_21CE6C400();
  }
}

uint64_t View.settingsRestrictionHelp(in:by:text:visible:)(_BYTE *a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a7;
  v12 = a5;
  v15 = *a2;
  LOBYTE(v17[0]) = *a1;
  LOBYTE(v22) = v15;
  sub_21CE6AD50(a3, a4, a5, a6);
  sub_21CE6A724(v17, &v22, a3, a4, v12, a6, v10, &v19);
  v24 = *(&v20 + 1);
  v22 = v19;
  v23 = v20;
  v17[0] = v19;
  v17[1] = v20;
  v18 = v21;
  MEMORY[0x21CF1A890](v17, a8, &type metadata for SettingsRestrictionHelp, a9);
  sub_21CE5EC94(&v22);
  return sub_21CE6AD94(&v24);
}

uint64_t sub_21CE6A694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413D0, &qword_21CE75740);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CE6B328(a1, &v5 - v3);
  return sub_21CE6C1F0();
}

_BYTE *sub_21CE6A724@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (!a6)
  {
    v8 = *a2;
    if (*result)
    {
      v9 = a8;
      v10 = a7;
      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v8 == 2)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (v8 == 3)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v9 = a8;
      v10 = a7;
      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
LABEL_30:
            v11 = qword_27CE44240;
            result = sub_21CE6C750();
            a5 = v12;
            a3 = result;
            a6 = v13;
            a4 = v14;
            a7 = v10;
            a8 = v9;
            goto LABEL_31;
          }
        }

        else
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v8 == 2)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (v8 == 3)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }
    }

    swift_once();
    goto LABEL_30;
  }

LABEL_31:
  *a8 = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5 & 1;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7 & 1;
  return result;
}

double sub_21CE6AD50(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21CE037E4(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21CE6AD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41140, &qword_21CE746D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CE6AE00()
{
  result = qword_27CE41370;
  if (!qword_27CE41370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41370);
  }

  return result;
}

unint64_t sub_21CE6AE58()
{
  result = qword_27CE41378;
  if (!qword_27CE41378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41378);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedBy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedBy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CE6B050(uint64_t a1)
{
  result = sub_21CE6C3F0();
  if (v2 <= 0x3F)
  {
    result = sub_21CE6B0EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21CE6B0EC()
{
  result = qword_27CE41390;
  if (!qword_27CE41390)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CE41390);
  }

  return result;
}

unint64_t sub_21CE6B150()
{
  result = qword_27CE41398;
  if (!qword_27CE41398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41360, &qword_21CE75480);
    sub_21CDE4158(&qword_27CE413A0, &qword_27CE41368, &qword_21CE75488, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41398);
  }

  return result;
}

unint64_t sub_21CE6B208()
{
  result = qword_27CE413A8;
  if (!qword_27CE413A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE413A8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CE6B270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21CE6B2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CE6B328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413D0, &qword_21CE75740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE6B398()
{
  result = qword_27CE413D8;
  if (!qword_27CE413D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE413E0, &qword_21CE75748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE413C0, &qword_21CE75738);
    sub_21CDE4158(&qword_27CE413C8, &qword_27CE413C0, &qword_21CE75738, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE413D8);
  }

  return result;
}

double gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshRecentsNotificationName(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshSuggestionsNotificationName(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x2__OBJC_CLASS___ATXSettingsAction(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClient(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClientRequest(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}