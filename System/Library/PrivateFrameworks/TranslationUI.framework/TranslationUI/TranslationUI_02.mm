uint64_t sub_26F3D38F0(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F3D3940@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26F4A02A8();

  *a2 = v3 != 0;
  return result;
}

const char *TranslateFeatures.feature.getter()
{
  v1 = *v0;
  v2 = "EnableVisualIntelligenceUI";
  v3 = "refresh_system_translation";
  v4 = "lowConfidenceLID";
  if (v1 != 4)
  {
    v4 = "onDeviceFirst";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "asset_services";
  if (v1 != 1)
  {
    v5 = "asset_services_adaptive_refresh";
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_26F3D3A7C()
{
  result = _UISolariumEnabled();
  byte_2806DF590 = result;
  return result;
}

uint64_t static TranslateFeatures.isSolariumEnabled.getter()
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2806DF590;
}

uint64_t static TranslateFeatures.isSolariumEnabled.setter(char a1)
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2806DF590 = a1 & 1;
  return result;
}

uint64_t (*static TranslateFeatures.isSolariumEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26F3D3C14@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_2806DF590;
  return result;
}

uint64_t sub_26F3D3C90(char *a1)
{
  v1 = *a1;
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2806DF590 = v1;
  return result;
}

uint64_t TranslateFeatures.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for TranslateFeatures;
  v4[4] = sub_26F3D3D60();
  LOBYTE(v4[0]) = v1;
  v2 = sub_26F49DB58();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_26F3D3D60()
{
  result = qword_280F66AD8[0];
  if (!qword_280F66AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F66AD8);
  }

  return result;
}

uint64_t TranslateFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

unint64_t sub_26F3D3E40()
{
  result = qword_2806DF598;
  if (!qword_2806DF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF598);
  }

  return result;
}

const char *sub_26F3D3EA8()
{
  v1 = *v0;
  v2 = "EnableVisualIntelligenceUI";
  v3 = "refresh_system_translation";
  v4 = "lowConfidenceLID";
  if (v1 != 4)
  {
    v4 = "onDeviceFirst";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "asset_services";
  if (v1 != 1)
  {
    v5 = "asset_services_adaptive_refresh";
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t getEnumTagSinglePayload for TranslateFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslateFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F3D40A4()
{
  result = qword_2806DF5A0;
  if (!qword_2806DF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5A0);
  }

  return result;
}

uint64_t GenderDisambiguationLearnMoreView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);

  return swift_storeEnumTagMultiPayload();
}

uint64_t GenderDisambiguationLearnMoreView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5A8, &qword_26F4A44B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B0, &qword_26F4A44C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B8, &qword_26F4A44C8);
  sub_26F3D4E94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5D0, &qword_26F4A44D0);
  sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26F49E318();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_26F49F298();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5E0, &qword_26F4A4508);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_26F3D4330(uint64_t a1)
{
  sub_26F49EC68();
  sub_26F49E328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5B0, &qword_26F4A44C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5B8, &qword_26F4A44C8);
  sub_26F3D4E94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5D0, &qword_26F4A44D0);
  sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return sub_26F49F148();
}

uint64_t sub_26F3D4464(uint64_t a1)
{
  v2 = sub_26F49E998();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5D0, &qword_26F4A44D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_26F49E968();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF610, &qword_26F4A46A8);
  sub_26F3D55C0();
  sub_26F49E028();
  v7 = sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0, MEMORY[0x277CDD7A8]);
  MEMORY[0x27438F7E0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F3D461C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenderDisambiguationLearnMoreView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_26F49DF68();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF628, &qword_26F4A46B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  sub_26F49DF58();
  sub_26F3D56A4(a1, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_26F3D5708(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  MEMORY[0x2743901A0](v9, sub_26F3D576C, v15);
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = 0;
  if ((byte_2806DF590 & 1) == 0)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v16 = sub_26F49F298();
  }

  KeyPath = swift_getKeyPath();
  (*(v11 + 32))(a2, v13, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF610, &qword_26F4A46A8);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v16;
  return result;
}

uint64_t sub_26F3D4900(uint64_t a1)
{
  v2 = sub_26F49E678();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = sub_26F49E148();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3D57CC(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_26F49E138();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26F3D4B68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5A8, &qword_26F4A44B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B0, &qword_26F4A44C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B8, &qword_26F4A44C8);
  sub_26F3D4E94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5D0, &qword_26F4A44D0);
  sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26F49E318();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_26F49F298();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5E0, &qword_26F4A4508);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_26F3D4D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3D51C0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F3D4DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3D51C0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F3D4E40(uint64_t a1)
{
  sub_26F3D51C0();
  sub_26F49EB98();
  __break(1u);
}

unint64_t sub_26F3D4E94()
{
  result = qword_2806DF5C0;
  if (!qword_2806DF5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B0, &qword_26F4A44C0);
    sub_26F3D4F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5C0);
  }

  return result;
}

unint64_t sub_26F3D4F20()
{
  result = qword_2806DF5C8;
  if (!qword_2806DF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5C8);
  }

  return result;
}

uint64_t sub_26F3D4F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E648();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for GenderDisambiguationLearnMoreView(uint64_t a1)
{
  result = qword_280F65828;
  if (!qword_280F65828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3D505C(uint64_t a1)
{
  sub_26F3B6E18(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_26F3D50C8()
{
  result = qword_2806DF5E8;
  if (!qword_2806DF5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5E0, &qword_26F4A4508);
    sub_26F3B18CC(&qword_2806DF5F0, &qword_2806DF5F8, &qword_26F4A4598, MEMORY[0x277CDDA18]);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5E8);
  }

  return result;
}

unint64_t sub_26F3D51C0()
{
  result = qword_2806DF600;
  if (!qword_2806DF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF600);
  }

  return result;
}

void sub_26F3D5214()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_26F3D5564();
  v3 = sub_26F49F898();
  v4 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = [v1 bundleForClass_];
  v6 = sub_26F49F898();
  v7 = [objc_opt_self() colorNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    v8 = [v4 imageWithTintColor_];

LABEL_5:
    sub_26F49D7D8();
    v9 = objc_allocWithZone(MEMORY[0x277D37688]);
    v10 = v8;
    v11 = sub_26F49F898();

    v12 = [v9 initWithTitle:v11 detailText:0 icon:{v10, 0xE000000000000000}];

    sub_26F49D7D8();
    v13 = sub_26F49F898();

    [v12 addSectionWithHeader:0 content:{v13, 0xE000000000000000}];

    sub_26F49D7D8();
    v14 = sub_26F49F898();

    [v12 addSectionWithHeader:0 content:{v14, 0xE000000000000000}];

    sub_26F49D7D8();
    v15 = sub_26F49F898();

    [v12 addSectionWithHeader:0 content:{v15, 0xE000000000000000}];

    return;
  }

  __break(1u);
}

unint64_t sub_26F3D5564()
{
  result = qword_2806DF608;
  if (!qword_2806DF608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DF608);
  }

  return result;
}

unint64_t sub_26F3D55C0()
{
  result = qword_2806DF618;
  if (!qword_2806DF618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF610, &qword_26F4A46A8);
    sub_26F3B18CC(&qword_2806DF620, &qword_2806DF628, &qword_26F4A46B0, MEMORY[0x277CDF028]);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF618);
  }

  return result;
}

uint64_t sub_26F3D56A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenderDisambiguationLearnMoreView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D5708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenderDisambiguationLearnMoreView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D576C()
{
  v1 = *(type metadata accessor for GenderDisambiguationLearnMoreView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F3D4900(v2);
}

uint64_t sub_26F3D57CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.bindGeometry(to:reader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v21[0] = a2;
  v21[1] = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  v13 = sub_26F49E308();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v21[4] = a3;
  v21[5] = a4;

  sub_26F49F5A8();
  sub_26F3D5A7C();
  sub_26F49EF28();

  v17 = swift_allocObject();
  v18 = v21[0];
  *(v17 + 16) = a1;
  *(v17 + 24) = v18;
  *(v17 + 32) = a8;
  v19 = sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
  v21[2] = a6;
  v21[3] = v19;

  swift_getWitnessTable();
  sub_26F3D5C50();
  sub_26F3D5CA4();
  sub_26F49F068();

  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_26F3D5A7C()
{
  result = qword_280F65C18[0];
  if (!qword_280F65C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F65C18);
  }

  return result;
}

void *sub_26F3D5AD0(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_26F3D5B2C@<X0>(void (**a1)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_26F3D5DB8;
  a1[1] = v5;
}

unint64_t sub_26F3D5C50()
{
  result = qword_280F65AD0;
  if (!qword_280F65AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65AD0);
  }

  return result;
}

unint64_t sub_26F3D5CA4()
{
  result = qword_280F66390;
  if (!qword_280F66390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F66390);
  }

  return result;
}

uint64_t sub_26F3D5D08(uint64_t *a1, int a2)
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

uint64_t sub_26F3D5D50(uint64_t result, int a2, int a3)
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

void sub_26F3D5DB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_26F49F248();
  v7 = v5(a1);
  *a2 = v6;
  *(a2 + 8) = v7;
}

uint64_t GrayCapsuleButton.init(title:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t GrayCapsuleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_26F49E7E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF648, &qword_26F4A47E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v11;
  v13[5] = v12;
  v25 = v10;
  v26 = v9;
  v27 = v11;
  v28 = v12;

  sub_26F49F398();
  v14 = sub_26F49F288();
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(v6 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  sub_26F49E7D8();
  sub_26F3D61AC();
  sub_26F3D6290();
  v17 = v24;
  sub_26F49EF48();
  (*(v3 + 8))(v5, v2);
  sub_26F3D62E8(v8);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF660, &qword_26F4A4818) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF668, &qword_26F4A4820);
  sub_26F49E3F8();
  *v18 = swift_getKeyPath();
  v19 = sub_26F49F228();
  v20 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF670, &qword_26F4A4888);
  v22 = (v17 + *(result + 36));
  *v22 = v20;
  v22[1] = v19;
  return result;
}

uint64_t sub_26F3D60D8@<X0>(uint64_t a3@<X8>)
{
  sub_26F3BDC0C();

  result = sub_26F49EED8();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_26F3D6154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E468();
  *a1 = result;
  return result;
}

unint64_t sub_26F3D61AC()
{
  result = qword_2806DF650;
  if (!qword_2806DF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF648, &qword_26F4A47E0);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF650);
  }

  return result;
}

unint64_t sub_26F3D6290()
{
  result = qword_2806DF658;
  if (!qword_2806DF658)
  {
    sub_26F49E7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF658);
  }

  return result;
}

uint64_t sub_26F3D62E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF648, &qword_26F4A47E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3D6350(uint64_t a1)
{
  v2 = sub_26F49E408();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26F49E528();
}

unint64_t sub_26F3D6444()
{
  result = qword_2806DF678;
  if (!qword_2806DF678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF670, &qword_26F4A4888);
    sub_26F3D64FC();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF678);
  }

  return result;
}

unint64_t sub_26F3D64FC()
{
  result = qword_2806DF680;
  if (!qword_2806DF680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF660, &qword_26F4A4818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF648, &qword_26F4A47E0);
    sub_26F49E7E8();
    sub_26F3D61AC();
    sub_26F3D6290();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF688, &qword_2806DF668, &qword_26F4A4820, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF680);
  }

  return result;
}

id sub_26F3D6680(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v10 = a3;
  LanguageDownloadView.init(context:headerView:)(&v10, 0, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
  v7 = sub_26F49E858();

  return v7;
}

uint64_t sub_26F3D6740(char a1)
{
  v2 = type metadata accessor for LanguageDownloadView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v7 = a1;
  LanguageDownloadView.init(context:headerView:)(&v7, 0, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
  return sub_26F49E858();
}

id HostedDownloadViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HostedDownloadViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedDownloadViewBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HostedDownloadViewBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HostedDownloadViewBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s13TranslationUI24HostedDownloadViewBridgeC018personalTranslatorE28ControllerWithAnimatedHeader3forSo06UIViewI0CAG_tFZ_0(void *a1)
{
  v2 = type metadata accessor for LanguageDownloadView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6B0, &unk_26F4A4970);
  if (swift_dynamicCastClass())
  {
    v5 = a1;
    sub_26F49E868();
    v6 = v13;
    v12 = 4;

    LanguageDownloadView.init(context:headerView:)(&v12, v6, v4);
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
    v8 = sub_26F49E858();

    return v8;
  }

  else
  {
    v14 = 4;
    LanguageDownloadView.init(context:headerView:)(&v14, 0, v4);
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
    return sub_26F49E858();
  }
}

uint64_t _s13TranslationUI24HostedDownloadViewBridgeC015presentLanguagedE35InSettingContextWithTraitCollection_9specifierySo07UITraitN0C_So11PSSpecifierCtFZ_0()
{
  v0 = sub_26F49DB88();
  v18 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F49DBB8();
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49DB98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  sub_26F49FEA8();
  (*(v7 + 104))(v9, *MEMORY[0x277D40278], v6);
  sub_26F3D6E44(&qword_2806DF698, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_26F49FA98();
  sub_26F49FA98();
  v13 = *(v7 + 8);
  v13(v9, v6);
  result = (v13)(v12, v6);
  if (v20 == v19)
  {
    sub_26F49FE98();
    type metadata accessor for LanguageDownloadView(0);
    sub_26F3D6E44(&qword_2806DF6A0, type metadata accessor for LanguageDownloadView, &protocol conformance descriptor for LanguageDownloadView);
    sub_26F49DB78();
    sub_26F3D6E44(&qword_2806DF6A8, MEMORY[0x277D40260], MEMORY[0x277D40268]);
    sub_26F49DBA8();
    (*(v18 + 8))(v2, v0);
    return (*(v16 + 8))(v5, v17);
  }

  return result;
}

uint64_t sub_26F3D6E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ImageTranslationButtonStyle.Style.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F3D6F18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6B8, &qword_26F4A49B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ImageTranslationButtonStyle(0);
  sub_26F3B8DD4(v1 + *(v10 + 24), v9, &qword_2806DF6B8, &qword_26F4A49B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F3BBAEC(v9, a1, &qword_2806DF700, &qword_26F4A4B20);
  }

  sub_26F49FDE8();
  v12 = sub_26F49EC18();
  sub_26F49DBC8();

  sub_26F49E668();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImageTranslationButtonStyle.init(style:highlighted:)@<X0>(char *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v7 = *(type metadata accessor for ImageTranslationButtonStyle(0) + 24);
  *&a3[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6B8, &qword_26F4A49B0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v6;
  a3[1] = a2;
  return result;
}

uint64_t type metadata accessor for ImageTranslationButtonStyle(uint64_t a1)
{
  result = qword_280F66258;
  if (!qword_280F66258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageTranslationButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_26F49EAC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6C0, &qword_26F4A49B8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6C8, &qword_26F4A49C0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6D0, &qword_26F4A49C8);
  MEMORY[0x28223BE20](v42);
  v17 = &v41 - v16;
  v43 = a1;
  sub_26F49EAD8();
  v18 = v3;
  sub_26F49F5A8();
  sub_26F49E0C8();
  (*(v6 + 32))(v12, v8, v5);
  v19 = &v12[*(v10 + 44)];
  v20 = v46;
  *v19 = v45;
  *(v19 + 1) = v20;
  *(v19 + 2) = v47;
  if (v3[1] == 1)
  {
    v21 = sub_26F49F238();
  }

  else
  {
    v21 = sub_26F49F278();
  }

  v22 = v21;
  KeyPath = swift_getKeyPath();
  sub_26F3BBAEC(v12, v15, &qword_2806DF6C0, &qword_26F4A49B8);
  v24 = &v15[*(v13 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  if (*v18)
  {
    v25 = sub_26F49ECA8();
  }

  else
  {
    v25 = sub_26F49ECC8();
  }

  v26 = v25;
  v27 = swift_getKeyPath();
  sub_26F3BBAEC(v15, v17, &qword_2806DF6C8, &qword_26F4A49C0);
  v28 = &v17[*(v42 + 36)];
  *v28 = v27;
  v28[1] = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6D8, &qword_26F4A4A30);
  v30 = v44;
  v31 = v44 + *(v29 + 36);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_26F49E7C8();
  (*(*(v33 - 8) + 104))(v31, v32, v33);
  v34 = sub_26F3D758C(v43);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6E0, &qword_26F4A4A38);
  *(v31 + *(v35 + 52)) = v34;
  *(v31 + *(v35 + 56)) = 256;
  v36 = sub_26F49F5A8();
  v38 = v37;
  v39 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6E8, &qword_26F4A4A40) + 36));
  *v39 = v36;
  v39[1] = v38;
  return sub_26F3BBAEC(v17, v30, &qword_2806DF6D0, &qword_26F4A49C8);
}

uint64_t sub_26F3D758C(uint64_t a1)
{
  v3 = sub_26F49F568();
  MEMORY[0x28223BE20](v3);
  v29 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F49EA38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF730, &qword_26F4A4B48);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF700, &qword_26F4A4B20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  if (*(v1 + 1) != 1)
  {
    v27[1] = v3;
    v27[2] = a1;
    sub_26F3D6F18(v27 - v18);
    (*(v6 + 104))(v16, *MEMORY[0x277CE0558], v5);
    (*(v6 + 56))(v16, 0, 1, v5);
    v20 = *(v8 + 48);
    sub_26F3B8DD4(v19, v10, &qword_2806DF700, &qword_26F4A4B20);
    sub_26F3B8DD4(v16, &v10[v20], &qword_2806DF700, &qword_26F4A4B20);
    v21 = *(v6 + 48);
    if (v21(v10, 1, v5) == 1)
    {
      sub_26F3B6B4C(v16, &qword_2806DF700, &qword_26F4A4B20);
      sub_26F3B6B4C(v19, &qword_2806DF700, &qword_26F4A4B20);
      if (v21(&v10[v20], 1, v5) == 1)
      {
        sub_26F3B6B4C(v10, &qword_2806DF700, &qword_26F4A4B20);
LABEL_13:
        if ((sub_26F49EAE8() & 1) == 0)
        {
          LODWORD(v30) = sub_26F49EA18();
          return sub_26F49E0D8();
        }

        sub_26F49F258();
        goto LABEL_15;
      }
    }

    else
    {
      sub_26F3B8DD4(v10, v13, &qword_2806DF700, &qword_26F4A4B20);
      if (v21(&v10[v20], 1, v5) != 1)
      {
        v22 = v28;
        (*(v6 + 32))(v28, &v10[v20], v5);
        sub_26F3D7FF0(&qword_2806DF738, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v23 = sub_26F49F868();
        v24 = *(v6 + 8);
        v24(v22, v5);
        sub_26F3B6B4C(v16, &qword_2806DF700, &qword_26F4A4B20);
        sub_26F3B6B4C(v19, &qword_2806DF700, &qword_26F4A4B20);
        v24(v13, v5);
        sub_26F3B6B4C(v10, &qword_2806DF700, &qword_26F4A4B20);
        if (v23)
        {
          goto LABEL_13;
        }

LABEL_9:
        if ((sub_26F49EAE8() & 1) == 0)
        {
          sub_26F49F548();
          return sub_26F49E0D8();
        }

        sub_26F49F238();
LABEL_15:
        v25 = sub_26F49F268();

        v30 = v25;
        return sub_26F49E0D8();
      }

      sub_26F3B6B4C(v16, &qword_2806DF700, &qword_26F4A4B20);
      sub_26F3B6B4C(v19, &qword_2806DF700, &qword_26F4A4B20);
      (*(v6 + 8))(v13, v5);
    }

    sub_26F3B6B4C(v10, &qword_2806DF730, &qword_26F4A4B48);
    goto LABEL_9;
  }

  v30 = sub_26F49F258();
  return sub_26F49E0D8();
}

uint64_t sub_26F3D7AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF700, &qword_26F4A4B20);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v5 - v3, &qword_2806DF700, &qword_26F4A4B20);
  return sub_26F49E548();
}

unint64_t sub_26F3D7B7C()
{
  result = qword_2806DF6F0;
  if (!qword_2806DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF6F0);
  }

  return result;
}

void sub_26F3D7C14(uint64_t a1)
{
  sub_26F3D7C98(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26F3D7C98(uint64_t a1)
{
  if (!qword_280F65758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF700, &qword_26F4A4B20);
    v1 = sub_26F49DFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F65758);
    }
  }
}

unint64_t sub_26F3D7D0C()
{
  result = qword_2806DF708;
  if (!qword_2806DF708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6D8, &qword_26F4A4A30);
    sub_26F3D7DC4();
    sub_26F3B18CC(&qword_2806DF728, &qword_2806DF6E8, &qword_26F4A4A40, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF708);
  }

  return result;
}

unint64_t sub_26F3D7DC4()
{
  result = qword_2806DF710;
  if (!qword_2806DF710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6D0, &qword_26F4A49C8);
    sub_26F3D7E7C();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF710);
  }

  return result;
}

unint64_t sub_26F3D7E7C()
{
  result = qword_2806DF718;
  if (!qword_2806DF718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6C8, &qword_26F4A49C0);
    sub_26F3D7F34();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF718);
  }

  return result;
}

unint64_t sub_26F3D7F34()
{
  result = qword_2806DF720;
  if (!qword_2806DF720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6C0, &qword_26F4A49B8);
    sub_26F3D7FF0(&qword_2806DECF8, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF720);
  }

  return result;
}

uint64_t sub_26F3D7FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LanguageDownloadView.init(context:headerView:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49F528();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = *a1;
  v14 = type metadata accessor for LanguageDownloadView(0);
  v15 = v14[5];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v14[6];
  LOBYTE(v34) = 0;
  sub_26F49F338();
  v17 = *(&v35 + 1);
  *v16 = v35;
  *(v16 + 8) = v17;
  v18 = a3 + v14[7];
  LOBYTE(v34) = 0;
  sub_26F49F338();
  v19 = *(&v35 + 1);
  *v18 = v35;
  *(v18 + 8) = v19;
  v20 = a3 + v14[8];
  LOBYTE(v34) = 0;
  sub_26F49F338();
  v21 = *(&v35 + 1);
  *v20 = v35;
  *(v20 + 8) = v21;
  v22 = v14[9];
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF748, &qword_26F4A4BA8);
  sub_26F49F338();
  *(a3 + v22) = v35;
  (*(v7 + 104))(v12, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v9, v12, v6);
  sub_26F49F338();
  (*(v7 + 8))(v12, v6);
  v23 = (a3 + v14[11]);
  v24 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  sub_26F49F338();
  v25 = *(&v35 + 1);
  *v23 = v35;
  v23[1] = v25;
  v26 = (a3 + v14[12]);
  v34 = v24;
  sub_26F49F338();
  v27 = *(&v35 + 1);
  *v26 = v35;
  v26[1] = v27;
  v28 = v14[13];
  v29 = v14[14];
  type metadata accessor for AudioAccessoryAssetDownLoadService();
  swift_allocObject();
  *(a3 + v29) = AudioAccessoryAssetDownLoadService.init()();
  v30 = v14[15];
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a3 + v30) = [objc_opt_self() bundleForClass_];
  *(a3 + v14[16]) = v13;
  *(a3 + v28) = a2;
  LOBYTE(v35) = 2 * (v13 == 4);
  type metadata accessor for LanguagesService(0);
  swift_allocObject();
  result = LanguagesService.init(task:)(&v35);
  *a3 = sub_26F3E1168;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_26F3D83D8()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LanguageListItem(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26F49FDE8();
    v7 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26F3D8530@<X0>(void *a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LanguageListItem(0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v6 = sub_26F49D9F8();
  v7 = sub_26F49D9F8();
  v8 = [v6 lt:0 displayNameForContext:v7 inTargetLocale:?];

  if (v8)
  {
    v9 = sub_26F49F8C8();
    v11 = v10;

    (*(v3 + 8))(v5, v2);
    v29[2] = v9;
    v29[3] = v11;
    v29[0] = v11;
    sub_26F3BDC0C();

    v12 = sub_26F49EED8();
    v14 = v13;
    v16 = v15;
    v17 = sub_26F3D83D8();
    v18 = objc_opt_self();
    v19 = &selRef_labelColor;
    if ((v17 & 1) == 0)
    {
      v19 = &selRef_secondaryLabelColor;
    }

    v20 = [v18 *v19];
    sub_26F49F218();
    v8 = sub_26F49EE68();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_26F3B8D40(v12, v14, v16 & 1);

    v28 = v24 & 1;
  }

  else
  {
    result = (*(v3 + 8))(v5, v2);
    v22 = 0;
    v28 = 0;
    v26 = 0;
  }

  *a1 = v8;
  a1[1] = v22;
  a1[2] = v28;
  a1[3] = v26;
  return result;
}

__n128 sub_26F3D8780@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E808();
  sub_26F3D8530(v6);
  result = v6[0];
  v5 = v6[1];
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_26F3D87DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26F49E6D8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF890, &qword_26F4A4EC8);
  return sub_26F3D8834(a1, a2 + *(v4 + 44));
}

uint64_t sub_26F3D8834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for LanguageListItem(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = &v26 + *(v5 + 32) - v8;
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *v9 = v10;
  *(v9 + 1) = v11;
  *(v9 + 2) = v12;
  v9[24] = v13;
  *(v9 + 4) = v14;
  *(v9 + 5) = v15;
  swift_bridgeObjectRetain_n();

  sub_26F49D978();
  if (v13)
  {
    type metadata accessor for LanguageDownloadButton(0);
    if (sub_26F49F518())
    {
      v17 = 0;
      v18 = -256;
      goto LABEL_10;
    }

    v28 = 0;
    v29 = 257;
  }

  else
  {
    v28 = v12;
    v29 = 0;
  }

  sub_26F3E1D4C();
  sub_26F49E928();
  v17 = v30;
  if (v32)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v18 = v19 | v31;
LABEL_10:
  v20 = v26;
  sub_26F3E1DA0(v9, v26, type metadata accessor for LanguageListItem);
  v21 = v27;
  sub_26F3E1DA0(v20, v27, type metadata accessor for LanguageListItem);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8A0, &qword_26F4A4F00);
  v23 = v21 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v21 + *(v22 + 64);
  *v24 = v17;
  *(v24 + 8) = v18;
  sub_26F3E2D18(v9, type metadata accessor for LanguageListItem);
  return sub_26F3E2D18(v20, type metadata accessor for LanguageListItem);
}

uint64_t sub_26F3D8A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F3E1DA0(v2, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LanguageDownloadButton);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26F3E2090(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for LanguageDownloadButton);
  v10 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF878, &qword_26F4A4EB8);
  sub_26F3B18CC(&qword_2806DF880, &qword_2806DF878, &qword_26F4A4EB8, MEMORY[0x277CE1138]);
  sub_26F49F398();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF888, &qword_26F4A4EC0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

double sub_26F3D8C1C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return result;
}

uint64_t LanguageDownloadView.ContextView.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F3D8CF8()
{
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v0 = (v8 + 56);
  v1 = *(v8 + 16) + 1;
  while (--v1)
  {
    v2 = *(v0 - 1);
    v3 = *v0;
    v0 += 48;
    if (v3 == 1 && v2 == 0)
    {

      type metadata accessor for LanguageDownloadView(0);
      type metadata accessor for _BundleObject();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      sub_26F49D7D8();

      sub_26F3BDC0C();
      return sub_26F49EED8();
    }
  }

  return 0;
}

uint64_t sub_26F3D8F04()
{
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v0 = Array<A>.downloadable.getter(v5);

  v1 = *(v0 + 16);

  if (!v1)
  {
    return 0;
  }

  type metadata accessor for LanguageDownloadView(0);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26F49D7D8();

  sub_26F3BDC0C();
  return sub_26F49EED8();
}

uint64_t sub_26F3D9104()
{
  v1 = sub_26F49E758();
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v27 = ObjCClassFromMetadata;
  v4 = [v3 bundleForClass_];
  v5 = sub_26F49D7D8();

  sub_26F3BDC0C();
  v6 = sub_26F49EED8();
  v8 = v7;
  LOBYTE(v4) = v9;
  sub_26F49F228();
  v10 = sub_26F49EE68();
  v28 = v11;
  v13 = v12;

  sub_26F3B8D40(v6, v8, v4 & 1);

  v14 = type metadata accessor for LanguageDownloadView(0);
  v15 = *(v0 + *(v14 + 64));
  if (!*(v0 + *(v14 + 64)) || v15 == 1 || v15 == 4)
  {
    sub_26F3B8D40(v10, v28, v13 & 1);

    return 0;
  }

  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  if (v5)
  {
    goto LABEL_8;
  }

  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v18 = v17;
  v19 = sub_26F49F898();
  v20 = [v18 BOOLForKey_];

  v21 = [objc_opt_self() sharedConnection];
  if (!v21)
  {

    if (v20)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_26F49E748();
    sub_26F49E738();
    sub_26F49E718();
    sub_26F49E738();
    sub_26F49E778();
    v26 = [v3 bundleForClass_];
    v25 = sub_26F49EEC8();
    sub_26F3B8D40(v10, v28, v13 & 1);
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 isOnDeviceOnlyTranslationForced];

  if (((v23 | v20) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_26F49E768();
  v24 = [v3 bundleForClass_];
  v25 = sub_26F49EEC8();
  sub_26F3B8D40(v10, v28, v13 & 1);
LABEL_11:

  return v25;
}

uint64_t sub_26F3D95CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_26F49D878();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F3D9104();
  if (v12)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    sub_26F49D868();
    result = (*(v6 + 48))(v4, 1, v5);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v18 = (*(v6 + 32))(v8, v4, v5);
      MEMORY[0x28223BE20](v18);
      *(&v22 - 4) = v13;
      *(&v22 - 3) = v14;
      *(&v22 - 16) = v15 & 1;
      *(&v22 - 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB30, &qword_26F4A51A0);
      sub_26F3E35C8();
      sub_26F49EDA8();
      sub_26F3B8D40(v13, v14, v15 & 1);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9E0, &unk_26F4A50A0);
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9E0, &unk_26F4A50A0);
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }

  return result;
}

double sub_26F3D98B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X8>)
{
  sub_26F3B0EE4(a1, a2, a3 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB30, &qword_26F4A51A0);
  swift_dynamicCast();
  result = *&v7;
  *a5 = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 33) = v11;
  return result;
}

uint64_t sub_26F3D9954(char a1)
{
  if (*(v1 + *(type metadata accessor for LanguageDownloadView(0) + 64)) == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v3 = *(v12._rawValue + 2);
    if (v3)
    {
      v13 = MEMORY[0x277D84F90];
      sub_26F403380(0, v3, 0);
      v4 = v13;
      v5 = (v12._rawValue + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v13 + 16);
        v8 = *(v13 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_26F403380((v8 > 1), v9 + 1, 1);
        }

        *(v13 + 16) = v9 + 1;
        v10 = v13 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 6;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    sub_26F3B3364(v4, a1 & 1, sub_26F3D9C1C, 0);
  }

  else
  {
    type metadata accessor for LanguagesService(0);
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    *(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_useCellular) = a1 & 1;

    sub_26F49DFF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    LanguagesService.download(_:)(v12);

    sub_26F49F348();

    sub_26F49F358();
  }
}

void sub_26F3D9C1C(uint64_t a1)
{
  if (a1)
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v1 = sub_26F49DCA8();
    __swift_project_value_buffer(v1, qword_280F67E98);
    oslog = sub_26F49DC88();
    v2 = sub_26F49FDF8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v14 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_26F3B38D0(0xD00000000000001FLL, 0x800000026F4AD5F0, &v14);
      _os_log_impl(&dword_26F39E000, oslog, v2, "%s:  language download successful", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x274391F70](v4, -1, -1);
      v5 = v3;
LABEL_10:
      MEMORY[0x274391F70](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v6 = sub_26F49DCA8();
    __swift_project_value_buffer(v6, qword_280F67E98);
    oslog = sub_26F49DC88();
    v7 = sub_26F49FDD8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_26F3B38D0(0xD00000000000001FLL, 0x800000026F4AD5F0, &v14);
      *(v8 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF748, &qword_26F4A4BA8);
      v10 = sub_26F49FFB8();
      v12 = sub_26F3B38D0(v10, v11, &v14);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26F39E000, oslog, v7, "%s:  language download failed error:%s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x274391F70](v9, -1, -1);
      v5 = v8;
      goto LABEL_10;
    }
  }
}

uint64_t sub_26F3D9ED8()
{
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  type metadata accessor for LanguageDownloadView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(v1);

  sub_26F49F348();

  sub_26F49F358();
}

uint64_t LanguageDownloadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v2 - 8);
  v105 = &v75 - v3;
  v109 = sub_26F49D878();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v75 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26F49D818();
  v106 = *(v76 - 8);
  v107 = v76 - 8;
  v103 = v106;
  MEMORY[0x28223BE20](v76 - 8);
  v102 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_26F49E6A8();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_26F49E9D8();
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF758, &qword_26F4A4BC0);
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v75 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF760, &qword_26F4A4BC8);
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v75 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF768, &qword_26F4A4BD0);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v80 = &v75 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF770, &qword_26F4A4BD8);
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v82 = &v75 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF778, &qword_26F4A4BE0);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v86 = &v75 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF780, &qword_26F4A4BE8);
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v75 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF788, &qword_26F4A4BF0);
  MEMORY[0x28223BE20](v110 - 8);
  v83 = &v75 - v16;
  v114 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF790, &qword_26F4A4BF8);
  sub_26F3B18CC(&qword_2806DF798, &qword_2806DF790, &qword_26F4A4BF8, MEMORY[0x277CE14C0]);
  sub_26F49EDB8();
  v17 = type metadata accessor for LanguageDownloadView(0);
  v18 = *(v17 + 32);
  v89 = v17;
  v19 = (v1 + v18);
  v20 = *v19;
  v21 = *(v19 + 1);
  v119 = v20;
  v120 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F368();
  v113 = v1;
  v22 = sub_26F3B18CC(&qword_2806DF7A0, &qword_2806DF758, &qword_26F4A4BC0, MEMORY[0x277CDE5A0]);
  sub_26F49F0F8();

  (*(v81 + 8))(v10, v8);
  v23 = (v1 + *(v17 + 28));
  v24 = *v23;
  v25 = *(v23 + 1);
  v119 = v24;
  v120 = v25;
  sub_26F49F368();
  v112 = v1;
  v26 = v1;
  v79 = v1;
  v115 = v8;
  v116 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v80;
  v29 = v84;
  v30 = v78;
  sub_26F49F0F8();

  v31 = v30;
  v32 = v29;
  (*(v85 + 8))(v31, v29);
  v33 = v91;
  sub_26F49E9C8();
  v115 = v32;
  v116 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x277CDE0D0];
  v36 = v82;
  v37 = v33;
  v38 = v87;
  v39 = v94;
  sub_26F49F198();
  v40 = v39;
  (*(v95 + 8))(v37, v39);
  (*(v88 + 8))(v28, v38);
  v111 = v26;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7A8, &qword_26F4A4C08);
  v115 = v38;
  v116 = v40;
  v117 = v34;
  v118 = v35;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_26F3B18CC(&qword_2806DF7B0, &qword_2806DF7A8, &qword_26F4A4C08, MEMORY[0x277CDDF68]);
  v44 = v86;
  v45 = v90;
  sub_26F49F148();
  v46 = v45;
  (*(v92 + 8))(v36, v45);
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [objc_opt_self() bundleForClass_];
  v49 = sub_26F49EEC8();
  v51 = v50;
  LOBYTE(v36) = v52;
  v115 = v46;
  v116 = v41;
  v117 = v42;
  v118 = v43;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v93;
  v55 = v96;
  sub_26F49F008();
  v56 = v36 & 1;
  v57 = v103;
  v58 = v51;
  v59 = v105;
  sub_26F3B8D40(v49, v58, v56);
  v60 = v102;

  v61 = v55;
  (*(v97 + 8))(v44, v55);
  v62 = v101;
  v63 = v100;
  v64 = v104;
  (*(v101 + 104))(v100, *MEMORY[0x277CDDDC0], v104);
  v115 = v61;
  v116 = v53;
  swift_getOpaqueTypeConformance2();
  v65 = v83;
  v66 = v98;
  sub_26F49F0D8();
  (*(v62 + 8))(v63, v64);
  (*(v99 + 8))(v54, v66);
  KeyPath = swift_getKeyPath();
  v68 = (v65 + *(v110 + 36));
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7B8, &qword_26F4A4C40) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  sub_26F49F368();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C8, &qword_26F4A4C50);
  (*(*(v70 - 8) + 56))(v68 + v69, 0, 1, v70);
  *v68 = KeyPath;
  sub_26F49D7D8();
  sub_26F49D808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7D0, &qword_26F4A4C58);
  *(swift_allocObject() + 16) = xmmword_26F4A3B80;
  sub_26F49D7D8();
  sub_26F49D808();
  sub_26F49D7D8();
  v71 = v108;
  v72 = v109;
  sub_26F49D808();
  sub_26F49D868();
  result = (*(v71 + 48))(v59, 1, v72);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v74 = v75;
    (*(v71 + 32))(v75, v59, v72);
    sub_26F3E1190();
    sub_26F49EEE8();

    (*(v71 + 8))(v74, v72);
    (*(v57 + 8))(v60, v76);
    return sub_26F3B6B4C(v65, &qword_2806DF788, &qword_26F4A4BF0);
  }

  return result;
}

uint64_t sub_26F3DAFE0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF938, &qword_26F4A4FE8);
  v137 = *(v3 - 8);
  v138 = v3;
  MEMORY[0x28223BE20](v3);
  v144 = v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = v110 - v6;
  v129 = sub_26F49E358();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v124 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF940, &qword_26F4A4FF0);
  MEMORY[0x28223BE20](v125);
  v122 = v110 - v8;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF948, &qword_26F4A4FF8);
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = v110 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF950, &qword_26F4A5000);
  MEMORY[0x28223BE20](v131);
  v130 = v110 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF958, &qword_26F4A5008);
  MEMORY[0x28223BE20](v132);
  v140 = (v110 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF960, &qword_26F4A5010);
  v133 = *(v12 - 8);
  v134 = v12;
  MEMORY[0x28223BE20](v12);
  v142 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v146 = v110 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF968, &qword_26F4A5018);
  MEMORY[0x28223BE20](v111);
  v110[1] = v110 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF970, &qword_26F4A5020);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v110[0] = v110 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF978, &qword_26F4A5028);
  MEMORY[0x28223BE20](v18 - 8);
  v141 = v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v147 = v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF980, &qword_26F4A5030);
  MEMORY[0x28223BE20](v22);
  v24 = v110 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF988, &qword_26F4A5038);
  v114 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v110 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF990, &qword_26F4A5040);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v29 = v110 - v28;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF998, &qword_26F4A5048);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v31 = v110 - v30;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9A0, &qword_26F4A5050);
  v32 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v113 = v110 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9A8, &qword_26F4A5058);
  MEMORY[0x28223BE20](v34 - 8);
  v139 = v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = v110 - v37;
  v112 = type metadata accessor for LanguageDownloadView(0);
  v39 = *(v112 + 52);
  v135 = a1;
  v40 = *(a1 + v39);
  v145 = v38;
  if (v40)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA78, &qword_26F4A50E8);
    sub_26F3E2874();
    sub_26F49F4F8();
    *&v24[*(v22 + 36)] = sub_26F49F438();
    sub_26F49EC38();
    v41 = sub_26F3E28F8();
    sub_26F49F048();
    sub_26F3B6B4C(v24, &qword_2806DF980, &qword_26F4A5030);
    sub_26F49EC88();
    v148 = v22;
    v149 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26F49F048();
    (*(v114 + 8))(v27, v25);
    sub_26F49E068();
    v148 = v25;
    v149 = OpaqueTypeConformance2;
    v43 = v145;
    v44 = swift_getOpaqueTypeConformance2();
    v45 = v116;
    sub_26F49F028();
    (*(v115 + 8))(v29, v45);
    sub_26F49EC48();
    v148 = v45;
    v149 = v44;
    swift_getOpaqueTypeConformance2();
    v46 = v113;
    v47 = v118;
    sub_26F49EFC8();

    (*(v117 + 8))(v31, v47);
    v48 = v119;
    (*(v32 + 32))(v43, v46, v119);
    (*(v32 + 56))(v43, 0, 1, v48);
  }

  else
  {
    (*(v32 + 56))(v38, 1, 1, v119);
  }

  v151 = &type metadata for TranslateFeatures;
  v152 = sub_26F3D3D60();
  LOBYTE(v148) = 3;
  v49 = sub_26F49DB58();
  __swift_destroy_boxed_opaque_existential_0(&v148);
  if ((v49 & 1) != 0 && *(v135 + *(v112 + 64)) != 4)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    v54 = sub_26F49D7D8();
    v56 = v55;

    v148 = v54;
    v149 = v56;
    sub_26F3BDC0C();
    v57 = sub_26F49EED8();
    v59 = v58;
    v61 = v60;
    v63 = v62 & 1;
    KeyPath = swift_getKeyPath();
    v148 = v57;
    v149 = v59;
    v150 = v63;
    v151 = v61;
    v152 = KeyPath;
    v153 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA60, &qword_26F4A50E0);
    sub_26F3E2700();
    sub_26F49F0C8();
    sub_26F3B8D40(v57, v59, v63);

    sub_26F3E27B8(&qword_2806DFA70, &qword_2806DF968, &qword_26F4A5018, sub_26F3E2700);
    v65 = v110[0];
    sub_26F49F508();
    v66 = v121;
    v67 = v65 + *(v121 + 36);
    *v67 = xmmword_26F4A4B60;
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    sub_26F3BBAEC(v65, v147, &qword_2806DF970, &qword_26F4A5020);
    v51 = v66;
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v51 = v121;
  }

  (*(v120 + 56))(v147, v50, 1, v51);
  v68 = sub_26F3D8CF8();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v148 = v68;
  v149 = v69;
  v150 = v71;
  v151 = v73;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
  sub_26F3E2158();
  sub_26F49F0C8();
  sub_26F3E21D4(v68, v70, v72, v74);
  v75 = v122;
  sub_26F3D95CC(v122);
  v76 = swift_getKeyPath();
  v77 = v125;
  v78 = v75 + *(v125 + 36);
  *v78 = v76;
  *(v78 + 8) = 0;
  v79 = v124;
  sub_26F49E348();
  v80 = sub_26F3E2218();
  v81 = sub_26F3E1FB4(&qword_2806DF160, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v82 = v123;
  v83 = v129;
  sub_26F49EF48();
  (*(v127 + 8))(v79, v83);
  sub_26F3B6B4C(v75, &qword_2806DF940, &qword_26F4A4FF0);
  v148 = v77;
  v149 = v83;
  v150 = v80;
  v151 = v81;
  swift_getOpaqueTypeConformance2();
  v84 = v128;
  sub_26F49F0C8();
  v85 = (*(v126 + 8))(v82, v84);
  MEMORY[0x28223BE20](v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9F8, &qword_26F4A50B0);
  v129 = sub_26F3E27B8(&qword_2806DFA00, &qword_2806DF958, &qword_26F4A5008, sub_26F3E2158);
  sub_26F3B18CC(&qword_2806DFA08, &qword_2806DF9F8, &qword_26F4A50B0, MEMORY[0x277CE14C0]);
  sub_26F3E2388();
  sub_26F49F4E8();
  v86 = sub_26F3D8F04();
  v88 = v87;
  LOBYTE(v79) = v89;
  v91 = v90;
  v148 = v86;
  v149 = v87;
  v150 = v89;
  v151 = v90;
  sub_26F49F0C8();
  v92 = sub_26F3E21D4(v86, v88, v79, v91);
  MEMORY[0x28223BE20](v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA18, &qword_26F4A50B8);
  sub_26F3E24D8();
  v93 = v143;
  sub_26F49F4D8();
  v94 = v139;
  sub_26F3A396C(v145, v139);
  v95 = v141;
  sub_26F3B8DD4(v147, v141, &qword_2806DF978, &qword_26F4A5028);
  v97 = v133;
  v96 = v134;
  v140 = *(v133 + 16);
  v98 = v142;
  v140(v142, v146, v134);
  v99 = v137;
  v135 = *(v137 + 16);
  v100 = v93;
  v101 = v138;
  v135(v144, v100, v138);
  v102 = v94;
  v103 = v136;
  sub_26F3A396C(v102, v136);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA58, &qword_26F4A50D8);
  sub_26F3B8DD4(v95, v103 + v104[12], &qword_2806DF978, &qword_26F4A5028);
  v140((v103 + v104[16]), v98, v96);
  v105 = (v103 + v104[20]);
  v106 = v144;
  v135(v105, v144, v101);
  v107 = *(v99 + 8);
  v107(v143, v101);
  v108 = *(v97 + 8);
  v108(v146, v96);
  sub_26F3B6B4C(v147, &qword_2806DF978, &qword_26F4A5028);
  sub_26F3B6B4C(v145, &qword_2806DF9A8, &qword_26F4A5058);
  v107(v106, v101);
  v108(v142, v96);
  sub_26F3B6B4C(v141, &qword_2806DF978, &qword_26F4A5028);
  return sub_26F3B6B4C(v139, &qword_2806DF9A8, &qword_26F4A5058);
}

uint64_t sub_26F3DC2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F49F5A8();
  sub_26F49E3D8();
  *(a2 + 56) = v8;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  *(a2 + 104) = v11;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  *a2 = a1;
  *(a2 + 40) = v7;
}

uint64_t sub_26F3DC390@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = sub_26F49F528();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for LanguageDownloadView(0);
  v5 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v67 = v6;
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAB0, &qword_26F4A5158);
  MEMORY[0x28223BE20](v58);
  v56 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAB8, &qword_26F4A5160);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v49 - v12;
  v54 = a1;
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v13 = Array<A>.installed.getter(v71);

  v70[0] = v13;
  KeyPath = swift_getKeyPath();
  v55 = type metadata accessor for LanguageDownloadView;
  sub_26F3E1DA0(a1, v7, type metadata accessor for LanguageDownloadView);
  v14 = *(v5 + 80);
  v15 = ((v14 + 16) & ~v14);
  v16 = swift_allocObject();
  v52 = type metadata accessor for LanguageDownloadView;
  sub_26F3E2090(v7, v15 + v16, type metadata accessor for LanguageDownloadView);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAC0, &qword_26F4A5168);
  v49 = sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0, MEMORY[0x277D83980]);
  v17 = type metadata accessor for LanguageListItem(255);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAC8, &qword_26F4A5170);
  v19 = sub_26F3E1FB4(&qword_2806DFAD0, type metadata accessor for LanguageListItem, &unk_26F4A4DDC);
  v20 = v7;
  v21 = v57;
  v22 = sub_26F3B18CC(&qword_2806DFAD8, &qword_2806DFAC8, &qword_26F4A5170, MEMORY[0x277CDF028]);
  v71 = v17;
  v72 = v18;
  v73 = v19;
  v74 = v22;
  v68 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v56;
  sub_26F49F4B8(v70, KeyPath, sub_26F3E2D80, v16, v51, v50, v49, MEMORY[0x277D837E0], OpaqueTypeConformance2);
  v25 = v54;
  sub_26F3E1DA0(v54, v20, v55);
  KeyPath = v14;
  v26 = swift_allocObject();
  v55 = v15;
  v27 = v20;
  sub_26F3E2090(v20, v15 + v26, v52);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26F3E2E2C;
  *(v28 + 24) = v26;
  v29 = &v24[*(v58 + 36)];
  v30 = v24;
  *v29 = sub_26F3E2E9C;
  v29[1] = v28;
  v31 = v25 + *(v21 + 24);
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v70[0]) = v32;
  v70[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F368();
  v69 = v25;
  sub_26F3E2ECC();
  v34 = v59;
  sub_26F49F0F8();

  sub_26F3B6B4C(v30, &qword_2806DFAB0, &qword_26F4A5158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  v35 = v60;
  sub_26F49F348();
  LOBYTE(v30) = sub_26F49F518();
  (*(v61 + 8))(v35, v62);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v30)
  {
    if (*(v25 + *(v21 + 64)) == 4)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v68 = 1;
    }

    else
    {
      sub_26F3E1DA0(v25, v27, type metadata accessor for LanguageDownloadView);
      v39 = v55;
      v38 = swift_allocObject();
      sub_26F3E2090(v27, v39 + v38, type metadata accessor for LanguageDownloadView);
      LOBYTE(v70[0]) = 0;
      sub_26F49F338();
      v36 = v71;
      v68 = v72;

      v37 = sub_26F3E3168;
    }
  }

  v41 = v63;
  v40 = v64;
  v42 = *(v64 + 16);
  v43 = v65;
  v42(v63, v34, v65);
  v44 = v66;
  v42(v66, v41, v43);
  v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB08, &unk_26F4A5188) + 48)];
  v46 = v68;
  sub_26F3E30C8(v36, v68, v37, v38);
  sub_26F3E3118(v36, v46, v37, v38);
  *v45 = v36;
  v45[1] = v46;
  v45[2] = v37;
  v45[3] = v38;
  v47 = *(v40 + 8);
  v47(v34, v43);
  sub_26F3E3118(v36, v46, v37, v38);
  return (v47)(v41, v43);
}

uint64_t sub_26F3DCC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  MEMORY[0x2743907E0](*a1, *(a1 + 8));
  MEMORY[0x2743907E0](32, 0xE100000000000000);
  result = sub_26F400C68(v3, v4);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_26F3DCC9C(_OWORD *a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for LanguageListItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[2];
  v17[1] = a1[1];
  v17[2] = v8;
  v17[0] = *a1;
  v10 = v7 + *(v9 + 24);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a1[2];
  v7[1] = a1[1];
  v7[2] = v11;
  *v7 = *a1;
  sub_26F3E2CA4(v17, v16);

  sub_26F49D978();
  v14 = a2;
  v15 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAC8, &qword_26F4A5170);
  sub_26F3E1FB4(&qword_2806DFAD0, type metadata accessor for LanguageListItem, &unk_26F4A4DDC);
  sub_26F3B18CC(&qword_2806DFAD8, &qword_2806DFAC8, &qword_26F4A5170, MEMORY[0x277CDF028]);
  sub_26F49EFA8();
  return sub_26F3E2D18(v7, type metadata accessor for LanguageListItem);
}

uint64_t sub_26F3DCE78(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-v8];
  sub_26F49DF48();
  v10 = sub_26F49DF68();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_26F3E1DA0(a1, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LanguageDownloadView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_26F3E2090(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for LanguageDownloadView);
  v13 = (v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  sub_26F3E2CA4(a2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
  return sub_26F49F388();
}

void *sub_26F3DD0E0(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = (a1 + *(v4 + 44));
  v6 = *v5;
  v7 = v5[1];
  v22 = *v5;
  v23 = v7;
  sub_26F3E2CA4(a2, &v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  v8 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_26F446268(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_26F446268((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[48 * v10];
  v12 = *a2;
  v13 = a2[2];
  *(v11 + 3) = a2[1];
  *(v11 + 4) = v13;
  *(v11 + 2) = v12;
  v20 = v6;
  v21 = v7;
  sub_26F49F358();

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 voiceOverImageCaptionsEnabled];

  v16 = a1 + *(v4 + 24);
  v18 = *(v16 + 8);
  LOBYTE(v20) = *v16;
  v17 = v20;
  v21 = v18;
  LOBYTE(v22) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F358();
  LOBYTE(v20) = v17;
  v21 = v18;
  result = sub_26F49F348();
  if ((v22 & 1) == 0)
  {
    return sub_26F3D9ED8();
  }

  return result;
}

uint64_t sub_26F3DD2D0()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49D7D8();

  sub_26F3BDC0C();
  return sub_26F49F328();
}

void *sub_26F3DD3B0(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v3 = Array<A>.installed.getter(v11);

  v9[2] = v3;
  v9[3] = a2;
  sub_26F3DD724(sub_26F3E3268, v9);

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 voiceOverImageCaptionsEnabled];

  v6 = a2 + *(type metadata accessor for LanguageDownloadView(0) + 24);
  v7 = *(v6 + 1);
  LOBYTE(v11) = *v6;
  LOBYTE(v3) = v11;
  v12 = v7;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F358();
  LOBYTE(v11) = v3;
  v12 = v7;
  result = sub_26F49F348();
  if ((v10 & 1) == 0)
  {
    return sub_26F3D9ED8();
  }

  return result;
}

uint64_t *sub_26F3DD58C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) == 0 && v3 < *(a2 + 16))
  {
    v4 = a2 + 48 * v3;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = *(v4 + 48);
    v14 = *(v4 + 56);
    v8 = *(v4 + 72);
    v13 = *(v4 + 64);
    type metadata accessor for LanguageDownloadView(0);

    v15 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v9 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26F446268(0, *(v16 + 16) + 1, 1, v16);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_26F446268((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[48 * v11];
    *(v12 + 4) = v6;
    *(v12 + 5) = v15;
    *(v12 + 6) = v7;
    v12[56] = v14;
    *(v12 + 8) = v13;
    *(v12 + 9) = v8;
    sub_26F49F358();
  }

  return result;
}

uint64_t sub_26F3DD724(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[0] = a1;
  v24[1] = a2;
  v26 = sub_26F49DAC8();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F49DAD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB10, &qword_26F4A5198);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  (*(v9 + 16))(v11, v4, v8, v13);
  v16 = MEMORY[0x277CC9A28];
  sub_26F3E1FB4(&qword_2806DFB18, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
  sub_26F49FA78();
  sub_26F3E1FB4(&qword_2806DFB20, v16, MEMORY[0x277CC9A50]);
  v17 = (v5 + 8);
  do
  {
    sub_26F49FD78();
    sub_26F3E1FB4(&qword_2806DFB28, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v18 = v26;
    v19 = sub_26F49F868();
    (*v17)(v7, v18);
    if (v19)
    {
      break;
    }

    v20 = sub_26F49FD98();
    v22 = *v21;
    v20(v25, 0);
    sub_26F49FD88();
    v25[0] = v22;
    (v24[0])(v25);
  }

  while (!v3);
  return sub_26F3B6B4C(v15, &qword_2806DFB10, &qword_26F4A5198);
}

uint64_t sub_26F3DDA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = type metadata accessor for LanguageDownloadView(0);
  v4 = v3 - 8;
  v96 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v97 = v5;
  v98 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49F208();
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v86 - v9;
  v10 = sub_26F49DAB8();
  v102 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v86 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v86 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v86 - v24;
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v92 = objc_opt_self();
  v93 = ObjCClassFromMetadata;
  v27 = [v92 bundleForClass_];
  v28 = sub_26F49D7D8();
  v94 = v29;
  v95 = v28;

  v30 = *(v4 + 52);
  v99 = a1;
  v31 = (a1 + v30);
  v33 = *v31;
  v32 = v31[1];
  v105 = v33;
  v106 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  if (*(v104 + 16))
  {
    swift_bridgeObjectRetain_n();

    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v34 = sub_26F49D9F8();
    v35 = sub_26F49D9F8();
    v36 = [v34 lt:3 displayNameForContext:v35 inTargetLocale:?];

    v37 = MEMORY[0x277D837D0];
    if (v36)
    {
      v38 = sub_26F49F8C8();
      v88 = v39;
      v89 = v38;

      v40 = *(v102 + 8);
      v40(v22, v10);
      v40(v25, v10);
      v41 = [v92 bundleForClass_];
      sub_26F49D7D8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_26F4A3150;
      *(v42 + 56) = v37;
      *(v42 + 64) = sub_26F3CDADC();
      v43 = v88;
      *(v42 + 32) = v89;
      *(v42 + 40) = v43;
      v44 = sub_26F49F8F8();
      v88 = v45;
      v89 = v44;
    }

    else
    {
      v40 = *(v102 + 8);
      v40(v22, v10);
      v40(v25, v10);
      v88 = 0xE000000000000000;
      v89 = 0;
    }

    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v50 = sub_26F49D9F8();
    v51 = sub_26F49D9F8();
    v52 = [v50 lt:2 displayNameForContext:v51 inTargetLocale:?];

    if (v52)
    {
      v87 = sub_26F49F8C8();
      v54 = v53;

      v40(v16, v10);
      v40(v19, v10);
      v55 = v91;
      sub_26F49D978();
      v56 = v90;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v57 = sub_26F49D9F8();
      v58 = sub_26F49D9F8();
      v59 = [v57 lt:3 displayNameForContext:v58 inTargetLocale:?];

      if (v59)
      {
        v60 = sub_26F49F8C8();
        v62 = v61;

        v40(v56, v10);
        v40(v55, v10);
        v63 = [v92 bundleForClass_];
        sub_26F49D7D8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_26F4A3B80;
        v65 = MEMORY[0x277D837D0];
        *(v64 + 56) = MEMORY[0x277D837D0];
        v66 = sub_26F3CDADC();
        *(v64 + 32) = v87;
        *(v64 + 40) = v54;
        *(v64 + 96) = v65;
        *(v64 + 104) = v66;
        *(v64 + 64) = v66;
        *(v64 + 72) = v60;
        *(v64 + 80) = v62;
        v46 = sub_26F49F8F8();
        v48 = v67;

LABEL_12:
        v49 = v88;
        v47 = v89;
        goto LABEL_13;
      }

      v40(v56, v10);
      v40(v55, v10);
    }

    else
    {

      v40(v16, v10);
      v40(v19, v10);
    }

    v46 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_12;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0xE000000000000000;
  v49 = 0xE000000000000000;
LABEL_13:
  v105 = v47;
  v106 = v49;
  sub_26F3BDC0C();
  v102 = sub_26F49EED8();
  v92 = v69;
  v93 = v68;
  LODWORD(v91) = v70;
  v105 = v46;
  v106 = v48;
  v71 = sub_26F49EED8();
  v89 = v72;
  v90 = v71;
  v88 = v73;
  v87 = v74 & 1;
  v86 = type metadata accessor for LanguageDownloadView;
  v75 = v98;
  v76 = v99;
  sub_26F3E1DA0(v99, v98, type metadata accessor for LanguageDownloadView);
  v77 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v78 = swift_allocObject();
  sub_26F3E2090(v75, v78 + v77, type metadata accessor for LanguageDownloadView);
  sub_26F49F1E8();

  v105 = v95;
  v106 = v94;
  v79 = sub_26F49EED8();
  v81 = v80;
  v83 = v82;
  sub_26F3E1DA0(v76, v75, v86);
  v84 = swift_allocObject();
  sub_26F3E2090(v75, v84 + v77, type metadata accessor for LanguageDownloadView);
  sub_26F49F1D8();
  sub_26F3B8D40(v79, v81, v83 & 1);

  return sub_26F49F1C8();
}

uint64_t sub_26F3DE3E0(uint64_t a1)
{
  type metadata accessor for LanguageDownloadView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();

  sub_26F49F358();
}

uint64_t sub_26F3DE494(uint64_t *a1)
{
  v1 = sub_26F49F528();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  LanguagesService.deleteAll()();

  (*(v2 + 104))(v7, *MEMORY[0x277CDF0D8], v1);
  type metadata accessor for LanguageDownloadView(0);
  (*(v2 + 16))(v4, v7, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  sub_26F49F358();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_26F3DE670(uint64_t *a1)
{
  v2 = type metadata accessor for LanguageDownloadView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v5 = Array<A>.downloadable.getter(v15);

  v15 = v5;
  KeyPath = swift_getKeyPath();
  sub_26F3E1DA0(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26F3E2090(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LanguageDownloadView);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA30, &qword_26F4A50C0);
  v11 = sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0, MEMORY[0x277D83980]);
  v12 = sub_26F3E255C();
  return sub_26F49F4B8(&v15, KeyPath, sub_26F3E2C8C, v8, v9, v10, v11, MEMORY[0x277D837E0], v12);
}

uint64_t sub_26F3DE918@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = sub_26F49F528();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  MEMORY[0x28223BE20](v7);
  v79 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = v75 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v75 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v75 - v16;
  v18 = type metadata accessor for LanguageDownloadView(0);
  v19 = v18 - 8;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = type metadata accessor for LanguageDownloadButton(0);
  MEMORY[0x28223BE20](v22);
  v24 = (v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA40, &qword_26F4A50C8);
  MEMORY[0x28223BE20](v76);
  v85 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v78 = v75 - v27;
  v28 = a1[2];
  v91 = a1[1];
  v92 = v28;
  v90 = *a1;
  v29 = *(v19 + 48);
  sub_26F3E2CA4(&v90, &v88);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  v75[3] = v29;
  v75[2] = v30;
  sub_26F49F348();
  v81 = a2;
  sub_26F3E1DA0(a2, v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
  v31 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v32 = swift_allocObject();
  sub_26F3E2090(v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for LanguageDownloadView);
  v33 = (v32 + ((v21 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  v34 = v90;
  v35 = v91;
  *v33 = v90;
  v33[1] = v35;
  v36 = v92;
  v33[2] = v92;
  *v24 = v34;
  v24[1] = v35;
  v24[4] = v35;
  v24[5] = v36;
  v24[2] = v36;
  v24[3] = v34;
  v37 = (v24 + *(v22 + 28));
  *v37 = sub_26F3E2D00;
  v37[1] = v32;
  v38 = v90;
  sub_26F3E2CA4(&v90, &v88);
  sub_26F3E2CA4(&v90, &v88);

  v75[1] = v38;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v39 = sub_26F49D9F8();
  v40 = sub_26F49D9F8();
  v41 = [v39 lt:0 displayNameForContext:v40 inTargetLocale:?];

  if (v41)
  {
    v42 = sub_26F49F8C8();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  v46 = v87 + 8;
  v45 = *(v87 + 8);
  v47 = v14;
  v48 = v86;
  v45(v47, v86);
  v87 = v46;
  v45(v17, v48);
  v88 = v42;
  v89 = v44;
  sub_26F3BDC0C();
  v49 = sub_26F49EED8();
  v51 = v50;
  v53 = v52;
  sub_26F3E1FB4(&qword_2806DFA48, type metadata accessor for LanguageDownloadButton, &unk_26F4A4E64);
  sub_26F49EFB8();
  sub_26F3B8D40(v49, v51, v53 & 1);

  sub_26F3E2D18(v24, type metadata accessor for LanguageDownloadButton);

  v54 = v77;
  sub_26F49D978();
  v55 = v79;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v56 = sub_26F49D9F8();
  v57 = sub_26F49D9F8();
  v58 = [v56 lt:0 displaySubnameForContext:v57 inTargetLocale:?];

  if (v58)
  {
    v59 = sub_26F49F8C8();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xE000000000000000;
  }

  v62 = v86;
  v45(v55, v86);
  v45(v54, v62);
  v88 = v59;
  v89 = v61;
  v63 = sub_26F49EED8();
  v65 = v64;
  LOBYTE(v62) = v66;
  v67 = v78;
  v68 = v85;
  sub_26F49E2F8();
  sub_26F3B8D40(v63, v65, v62 & 1);

  sub_26F3B6B4C(v68, &qword_2806DFA40, &qword_26F4A50C8);
  v69 = v80;
  sub_26F49F348();
  LOBYTE(v68) = sub_26F49F518();
  (*(v82 + 8))(v69, v83);
  KeyPath = swift_getKeyPath();
  v71 = swift_allocObject();
  *(v71 + 16) = v68 & 1;
  v72 = v84;
  sub_26F3BBAEC(v67, v84, &qword_2806DFA40, &qword_26F4A50C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA30, &qword_26F4A50C0);
  v74 = (v72 + *(result + 36));
  *v74 = KeyPath;
  v74[1] = sub_26F3E2D78;
  v74[2] = v71;
  return result;
}

int *sub_26F3DF0CC(uint64_t *a1, __int128 *a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  result = type metadata accessor for LanguageDownloadView(0);
  v65 = result;
  v66 = a1;
  if (*(a1 + result[16]) == 1)
  {
    v70 = 0x53555F6E65;
    v71 = 0xE500000000000000;
    v72 = 45;
    v73 = 0xE100000000000000;
    v67 = 95;
    v68 = 0xE100000000000000;
    sub_26F3BDC0C();
    v15 = sub_26F49FFF8();
    v17 = v16;
    LOBYTE(v70) = 1;

    v64 = v15;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v18 = sub_26F49D9F8();
    v19 = sub_26F49D9F8();
    v20 = [v18 lt:0 displayNameForContext:v19 inTargetLocale:?];

    if (v20)
    {
      v63 = sub_26F49F8C8();
      v22 = v21;

      v23 = *(v5 + 8);
      v23(v10, v4);
      v23(v13, v4);
    }

    else
    {
      v24 = v10;
      v25 = *(v5 + 8);
      v25(v24, v4);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v26 = sub_26F49D9F8();
      v27 = sub_26F49D9F8();
      v28 = [v26 lt:0 displaySubnameForContext:v27 inTargetLocale:?];

      if (v28)
      {
        v63 = sub_26F49F8C8();
        v22 = v29;

        v25(v7, v4);
        v25(v13, v4);
      }

      else
      {
        v25(v7, v4);
        v25(v13, v4);

        v63 = v64;
        v22 = v17;
      }
    }

    v30 = v70;
    v31 = (v66 + v65[12]);
    v32 = *v31;
    v33 = v31[1];
    v70 = *v31;
    v71 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v34 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_26F446268(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_26F446268((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[48 * v36];
    *(v37 + 4) = v64;
    *(v37 + 5) = v17;
    *(v37 + 6) = 1;
    v37[56] = v30;
    *(v37 + 8) = v63;
    *(v37 + 9) = v22;
    v72 = v32;
    v73 = v33;
    v69 = v34;
    sub_26F49F358();
  }

  if (*(a2 + 24))
  {
    v38 = v66;
    if (!*(a2 + 2))
    {
      return result;
    }

    v39 = (v66 + v65[12]);
    v40 = *v39;
    v41 = v39[1];
    v72 = *v39;
    v73 = v41;
    sub_26F3E2CA4(a2, &v70);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v42 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_26F446268(0, *(v42 + 2) + 1, 1, v42);
    }

    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_26F446268((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[48 * v44];
    v46 = *a2;
    v47 = a2[2];
    *(v45 + 3) = a2[1];
    *(v45 + 4) = v47;
    *(v45 + 2) = v46;
    v70 = v40;
    v71 = v41;
    v69 = v42;
    sub_26F49F358();

    type metadata accessor for LanguagesService(0);
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    if (*(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_reachability))
    {

      Reachability.networkStatus.getter(&v70);

      if (v70 > 1u)
      {
        if (v70 == 2)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_30;
        }
      }

      else
      {
        v57 = sub_26F4A0458();

        if (v57)
        {
LABEL_30:
          v58 = *(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_askedUser);

          if ((v58 & 1) == 0)
          {
            v59 = v38 + v65[7];
            v60 = *v59;
            v61 = *(v59 + 1);
            LOBYTE(v70) = v60;
            v71 = v61;
            LOBYTE(v72) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
            return sub_26F49F358();
          }
        }
      }
    }

    else
    {
    }

    return sub_26F3D9954(0);
  }

  v48 = (v66 + v65[11]);
  v49 = *v48;
  v50 = v48[1];
  v72 = *v48;
  v73 = v50;
  sub_26F3E2CA4(a2, &v70);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  v51 = v67;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_26F446268(0, *(v51 + 2) + 1, 1, v51);
  }

  v53 = *(v51 + 2);
  v52 = *(v51 + 3);
  if (v53 >= v52 >> 1)
  {
    v51 = sub_26F446268((v52 > 1), v53 + 1, 1, v51);
  }

  *(v51 + 2) = v53 + 1;
  v54 = &v51[48 * v53];
  v55 = *a2;
  v56 = a2[2];
  *(v54 + 3) = a2[1];
  *(v54 + 4) = v56;
  *(v54 + 2) = v55;
  v70 = v49;
  v71 = v50;
  v69 = v51;
  sub_26F49F358();

  return sub_26F3D9ED8();
}

void *sub_26F3DF8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF928, &qword_26F4A4FD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  sub_26F49E768();
  v6 = type metadata accessor for LanguageDownloadView(0);
  v7 = *(a1 + *(v6 + 60));
  v8 = sub_26F49EEC8();
  v27[2] = v9;
  v27[3] = v8;
  v27[1] = v10;
  v30 = *(a1 + *(v6 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF930, &qword_26F4A4FE0);
  result = sub_26F49F348();
  v12 = v29;
  if (v29)
  {
    ErrorValue = swift_getErrorValue();
    v14 = v28;
    v15 = *(v28 - 8);
    v16 = MEMORY[0x28223BE20](ErrorValue);
    v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);

    v19 = sub_26F4A04D8();
    v21 = v20;
    (*(v15 + 8))(v18, v14);
    *&v30 = v19;
    *(&v30 + 1) = v21;
    sub_26F3BDC0C();
    sub_26F49EED8();
    sub_26F49E768();
    v22 = sub_26F49EEC8();
    v24 = v23;
    LOBYTE(v15) = v25;
    sub_26F49F1F8();
    sub_26F3B8D40(v22, v24, v15 & 1);

    v26 = sub_26F49F208();
    (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
    return sub_26F49F1B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26F3DFC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_26F49E758();
  MEMORY[0x28223BE20](v3 - 8);
  v72[1] = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26F49DA98();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v72 - v7;
  v8 = sub_26F49DAB8();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = v72 - v11;
  v12 = type metadata accessor for LanguageDownloadView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = v12 - 8;
  v81 = v12 - 8;
  MEMORY[0x28223BE20](v12 - 8);
  v16 = sub_26F49F208();
  v86 = *(v16 - 8);
  v87 = v16;
  MEMORY[0x28223BE20](v16);
  v84 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v83 = v72 - v19;
  MEMORY[0x28223BE20](v20);
  v90 = v72 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v72 - v23;
  sub_26F49E768();
  v25 = *(v15 + 68);
  v80 = a1;
  v82 = *(a1 + v25);
  v26 = sub_26F49EEC8();
  v28 = v27;
  v30 = v29;
  sub_26F3E1DA0(a1, v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
  v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v32 = swift_allocObject();
  sub_26F3E2090(v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for LanguageDownloadView);
  sub_26F49F1F8();
  sub_26F3B8D40(v26, v28, v30 & 1);

  sub_26F49E768();
  v33 = sub_26F49EEC8();
  v35 = v34;
  LOBYTE(v14) = v36;
  sub_26F49F1F8();
  sub_26F3B8D40(v33, v35, v14 & 1);

  v37 = v80;
  type metadata accessor for LanguagesService(0);
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  *(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_askedUser) = 1;

  v38 = (v37 + *(v81 + 56));
  v40 = *v38;
  v39 = v38[1];
  v92 = v40;
  v93 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  v41 = *(v91 + 16);
  v85 = v24;
  if (!v41)
  {

    goto LABEL_5;
  }

  sub_26F49D978();
  v42 = v74;
  sub_26F49DAA8();
  v43 = v77;
  sub_26F49DA58();
  (*(v75 + 8))(v42, v76);
  v44 = sub_26F49D9B8();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    (*(v78 + 8))(v89, v79);
    sub_26F3B6B4C(v43, &qword_2806DF918, &qword_26F4A5810);
LABEL_5:
    v46 = v86;
    goto LABEL_6;
  }

  sub_26F49D998();
  v60 = v79;
  v61 = *(v78 + 8);
  v61(v89, v79);
  (*(v45 + 8))(v43, v44);
  v62 = v73;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  sub_26F49D9C8();
  v64 = v63;

  v61(v62, v60);
  v46 = v86;
  if (v64)
  {
    sub_26F49E748();
    sub_26F49E738();
    sub_26F49E728();

    sub_26F49E738();
    sub_26F49E778();
    v65 = v82;
    v89 = sub_26F49EEC8();
    v81 = v67;
    v82 = v66;
    LODWORD(v80) = v68;
    sub_26F49E768();
    v69 = sub_26F49EEC8();
    v78 = v70;
    v79 = v69;
    v53 = v46;
    v71 = *(v46 + 16);
    v55 = v85;
    v56 = v87;
    v71(v83, v85, v87);
    v57 = v90;
    v71(v84, v90, v56);
    goto LABEL_7;
  }

LABEL_6:
  sub_26F49E768();
  v47 = v82;
  v89 = sub_26F49EEC8();
  v86 = v48;
  LODWORD(v81) = v49;
  v82 = v50;
  sub_26F49E768();
  v51 = sub_26F49EEC8();
  v79 = v52;
  v80 = v51;
  v53 = v46;
  v54 = *(v46 + 16);
  v55 = v85;
  v56 = v87;
  v54(v83, v85, v87);
  v57 = v90;
  v54(v84, v90, v56);
LABEL_7:
  sub_26F49F1C8();
  v58 = *(v53 + 8);
  v58(v57, v56);
  return (v58)(v55, v56);
}

uint64_t sub_26F3E06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8B0, &qword_26F4A4F10);
  MEMORY[0x28223BE20](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8B8, &qword_26F4A4F18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = sub_26F49E998();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8C0, &qword_26F4A4F20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  sub_26F49E958();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8C8, &qword_26F4A4F28);
  sub_26F3E1E1C();
  sub_26F49E3C8();
  sub_26F49E988();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF908, &qword_26F4A4F48);
  sub_26F3E2004();
  sub_26F49E3C8();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_26F49E838();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26F3E09C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8F0, &unk_26F4A4F38);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8E0, &qword_26F4A4F30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  if (*(a1 + *(type metadata accessor for LanguageDownloadView(0) + 64)) == 3)
  {
    type metadata accessor for LanguagesService(0);
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    sub_26F49DFF8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    v11 = (v22 + 56);
    v12 = *(v22 + 16) + 1;
    while (--v12)
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 48;
      if (v14 == 1 && v13 == 0)
      {

        sub_26F49DF88();
        sub_26F49ECA8();
        v16 = sub_26F49ECB8();

        KeyPath = swift_getKeyPath();
        v18 = &v6[*(v4 + 36)];
        *v18 = KeyPath;
        v18[1] = v16;
        sub_26F3E1ECC();
        sub_26F49F0C8();
        sub_26F3B6B4C(v6, &qword_2806DF8F0, &unk_26F4A4F38);
        sub_26F3BBAEC(v10, a2, &qword_2806DF8E0, &qword_26F4A4F30);
        v19 = 0;
        return (*(v8 + 56))(a2, v19, 1, v7);
      }
    }
  }

  v19 = 1;
  return (*(v8 + 56))(a2, v19, 1, v7);
}

uint64_t sub_26F3E0CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8F0, &unk_26F4A4F38);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8E0, &qword_26F4A4F30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8C8, &qword_26F4A4F28);
  v28 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*(a1 + *(type metadata accessor for LanguageDownloadView(0) + 64)) == 3)
  {
    v14 = *(v28 + 56);

    return v14(a2, 1, 1, v11);
  }

  else
  {
    v26 = v7;
    v27 = a2;
    type metadata accessor for LanguagesService(0);
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    sub_26F49DFF8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    v16 = (v29 + 56);
    v17 = *(v29 + 16) + 1;
    while (--v17)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 48;
      if (v19 == 1 && v18 == 0)
      {

        sub_26F49DF88();
        sub_26F49ECA8();
        v21 = sub_26F49ECB8();

        KeyPath = swift_getKeyPath();
        v23 = &v6[*(v4 + 36)];
        *v23 = KeyPath;
        v23[1] = v21;
        sub_26F3E1ECC();
        sub_26F49F0C8();
        sub_26F3B6B4C(v6, &qword_2806DF8F0, &unk_26F4A4F38);
        sub_26F3BBAEC(v10, v13, &qword_2806DF8E0, &qword_26F4A4F30);
        v24 = 0;
        goto LABEL_14;
      }
    }

    v24 = 1;
LABEL_14:
    (*(v8 + 56))(v13, v24, 1, v26);
    v25 = v27;
    sub_26F3BBAEC(v13, v27, &qword_2806DF8C8, &qword_26F4A4F28);
    return (*(v28 + 56))(v25, 0, 1, v11);
  }
}

uint64_t sub_26F3E1098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8A8, &qword_26F4A4F08);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v5 - v3, &qword_2806DF8A8, &qword_26F4A4F08);
  return sub_26F49E5D8();
}

unint64_t sub_26F3E1190()
{
  result = qword_2806DF7D8;
  if (!qword_2806DF7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF788, &qword_26F4A4BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF780, &qword_26F4A4BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF778, &qword_26F4A4BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF770, &qword_26F4A4BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF7A8, &qword_26F4A4C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF768, &qword_26F4A4BD0);
    sub_26F49E9D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF760, &qword_26F4A4BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF758, &qword_26F4A4BC0);
    sub_26F3B18CC(&qword_2806DF7A0, &qword_2806DF758, &qword_26F4A4BC0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF7B0, &qword_2806DF7A8, &qword_26F4A4C08, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF7E0, &qword_2806DF7B8, &qword_26F4A4C40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF7D8);
  }

  return result;
}

unint64_t sub_26F3E1460()
{
  result = qword_2806DF7E8;
  if (!qword_2806DF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF7E8);
  }

  return result;
}

void sub_26F3E14F8(uint64_t a1)
{
  sub_26F3E1700(319);
  if (v1 <= 0x3F)
  {
    sub_26F3E1A90(319, &qword_2806DF818, &qword_2806DF820, &qword_26F4A4D48, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26F3E1BF4(319, &qword_2806DF468, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_26F3E1A90(319, &qword_2806DF828, &qword_2806DF748, &qword_26F4A4BA8, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26F3E1794(319);
          if (v5 <= 0x3F)
          {
            sub_26F3E1A90(319, &qword_2806DF838, &qword_2806DF750, &unk_26F4A4BB0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_26F3E1BF4(319, &qword_2806DF840, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for AudioAccessoryAssetDownLoadService();
                if (v8 <= 0x3F)
                {
                  sub_26F3E17EC();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26F3E1700(uint64_t a1)
{
  if (!qword_2806DF808)
  {
    type metadata accessor for LanguagesService(255);
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    v1 = sub_26F49E008();
    if (!v2)
    {
      atomic_store(v1, &qword_2806DF808);
    }
  }
}

void sub_26F3E1794(uint64_t a1)
{
  if (!qword_2806DF830)
  {
    sub_26F49F528();
    v1 = sub_26F49F378();
    if (!v2)
    {
      atomic_store(v1, &qword_2806DF830);
    }
  }
}

unint64_t sub_26F3E17EC()
{
  result = qword_2806DF848;
  if (!qword_2806DF848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DF848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageDownloadView.ContextView(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguageDownloadView.ContextView(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_26F3E19D0(uint64_t a1)
{
  sub_26F49F528();
  if (v1 <= 0x3F)
  {
    sub_26F3E1A90(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F3E1A90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26F3E1B3C(uint64_t a1)
{
  sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    sub_26F3E1BF4(319, &qword_2806DF870, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F3E1BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26F3E1C44()
{
  result = qword_280F65E00;
  if (!qword_280F65E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65E00);
  }

  return result;
}

uint64_t sub_26F3E1CD0()
{
  v1 = type metadata accessor for LanguageDownloadButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_26F3E1D4C()
{
  result = qword_2806DF898;
  if (!qword_2806DF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF898);
  }

  return result;
}

uint64_t sub_26F3E1DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3E1E08(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_26F3E1E1C()
{
  result = qword_2806DF8D0;
  if (!qword_2806DF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF8C8, &qword_26F4A4F28);
    sub_26F3E27B8(&qword_2806DF8D8, &qword_2806DF8E0, &qword_26F4A4F30, sub_26F3E1ECC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF8D0);
  }

  return result;
}

unint64_t sub_26F3E1ECC()
{
  result = qword_2806DF8E8;
  if (!qword_2806DF8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF8F0, &unk_26F4A4F38);
    sub_26F3E1FB4(&qword_2806DF8F8, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF8E8);
  }

  return result;
}

uint64_t sub_26F3E1FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F3E2004()
{
  result = qword_2806DF910;
  if (!qword_2806DF910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF908, &qword_26F4A4F48);
    sub_26F3E1E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF910);
  }

  return result;
}

uint64_t sub_26F3E2090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F3E2158()
{
  result = qword_2806DF9B8;
  if (!qword_2806DF9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9B0, &qword_26F4A5060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9B8);
  }

  return result;
}

uint64_t sub_26F3E21D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26F3B8D40(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26F3E2218()
{
  result = qword_2806DF9C0;
  if (!qword_2806DF9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF940, &qword_26F4A4FF0);
    sub_26F3E22D0();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9C0);
  }

  return result;
}

unint64_t sub_26F3E22D0()
{
  result = qword_2806DF9C8;
  if (!qword_2806DF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9D0, &qword_26F4A5098);
    sub_26F3B18CC(&qword_2806DF9D8, &qword_2806DF9E0, &unk_26F4A50A0, MEMORY[0x277CDE598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9C8);
  }

  return result;
}

unint64_t sub_26F3E2388()
{
  result = qword_2806DFA10;
  if (!qword_2806DFA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF950, &qword_26F4A5000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF940, &qword_26F4A4FF0);
    sub_26F49E358();
    sub_26F3E2218();
    sub_26F3E1FB4(&qword_2806DF160, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_26F3E1FB4(&qword_2806DF900, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA10);
  }

  return result;
}

unint64_t sub_26F3E24D8()
{
  result = qword_2806DFA20;
  if (!qword_2806DFA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA18, &qword_26F4A50B8);
    sub_26F3E255C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA20);
  }

  return result;
}

unint64_t sub_26F3E255C()
{
  result = qword_2806DFA28;
  if (!qword_2806DFA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA30, &qword_26F4A50C0);
    sub_26F3E2614();
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA28);
  }

  return result;
}

unint64_t sub_26F3E2614()
{
  result = qword_2806DFA38;
  if (!qword_2806DFA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA40, &qword_26F4A50C8);
    sub_26F3E1FB4(&qword_2806DFA48, type metadata accessor for LanguageDownloadButton, &unk_26F4A4E64);
    sub_26F3E1FB4(&qword_2806DF900, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA38);
  }

  return result;
}

unint64_t sub_26F3E2700()
{
  result = qword_2806DFA68;
  if (!qword_2806DFA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA60, &qword_26F4A50E0);
    sub_26F3E2158();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA68);
  }

  return result;
}

uint64_t sub_26F3E27B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26F3E1FB4(&qword_2806DF900, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F3E2874()
{
  result = qword_2806DFA80;
  if (!qword_2806DFA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA78, &qword_26F4A50E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA80);
  }

  return result;
}

unint64_t sub_26F3E28F8()
{
  result = qword_2806DFA88;
  if (!qword_2806DFA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF980, &qword_26F4A5030);
    sub_26F3E29B0();
    sub_26F3B18CC(&qword_2806DFAA0, &qword_2806DFAA8, &qword_26F4A50F8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA88);
  }

  return result;
}

unint64_t sub_26F3E29B0()
{
  result = qword_2806DFA90;
  if (!qword_2806DFA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA98, &qword_26F4A50F0);
    sub_26F3E2874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA90);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for LanguageDownloadView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  sub_26F3E2088(*v2, v2[1]);
  v3 = v2 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48) + 32);
    v6 = sub_26F49E378();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  v7 = v2 + v1[10];
  v8 = sub_26F49F528();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);

  return swift_deallocObject();
}

uint64_t sub_26F3E2D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F3E2D98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *sub_26F3E2E2C(uint64_t a1)
{
  v3 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_26F3DD3B0(a1, v4);
}

unint64_t sub_26F3E2ECC()
{
  result = qword_2806DFAE0;
  if (!qword_2806DFAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAB0, &qword_26F4A5158);
    sub_26F3E2F84();
    sub_26F3B18CC(&qword_2806DFAF8, &qword_2806DFB00, &qword_26F4A5180, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFAE0);
  }

  return result;
}

unint64_t sub_26F3E2F84()
{
  result = qword_2806DFAE8;
  if (!qword_2806DFAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAF0, &qword_26F4A5178);
    type metadata accessor for LanguageListItem(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAC8, &qword_26F4A5170);
    sub_26F3E1FB4(&qword_2806DFAD0, type metadata accessor for LanguageListItem, &unk_26F4A4DDC);
    sub_26F3B18CC(&qword_2806DFAD8, &qword_2806DFAC8, &qword_26F4A5170, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFAE8);
  }

  return result;
}

void sub_26F3E30C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_26F3ACF68(a3, a4);
  }
}

void sub_26F3E3118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_26F3ACE98(a3, a4);
  }
}

uint64_t sub_26F3E3198(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_65Tm()
{
  v1 = type metadata accessor for LanguageDownloadView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  sub_26F3E2088(*v2, v2[1]);
  v3 = v2 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48) + 32);
    v6 = sub_26F49E378();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  v7 = v2 + v1[10];
  v8 = sub_26F49F528();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);

  return swift_deallocObject();
}

uint64_t sub_26F3E3510(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

unint64_t sub_26F3E35C8()
{
  result = qword_2806DFB38;
  if (!qword_2806DFB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFB30, &qword_26F4A51A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFB38);
  }

  return result;
}

unint64_t sub_26F3E364C()
{
  result = qword_2806DFB40;
  if (!qword_2806DFB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF888, &qword_26F4A4EC0);
    sub_26F3B18CC(&qword_2806DFB48, &qword_2806DFB50, &unk_26F4A51F0, MEMORY[0x277CDF028]);
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFB40);
  }

  return result;
}

uint64_t sub_26F3E3738()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  MEMORY[0x28223BE20](v7);
  v40 = &v30 - v8;
  v9 = *(type metadata accessor for LanguageMenu(0) + 24);
  v10 = MEMORY[0x277D84F90];
  if (*(v0 + v9))
  {
    v11 = *(v0 + v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_26F404250(v11);

  v14 = *v0;
  v32 = *(*v0 + 16);
  if (v32)
  {
    v15 = 0;
    v38 = v12 + 56;
    v39 = v2 + 16;
    v16 = (v2 + 8);
    v33 = (v2 + 32);
    v30 = v14;
    v31 = v2;
    while (v15 < *(v14 + 16))
    {
      v35 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = v10;
      v17 = *(v2 + 72);
      v37 = v15;
      v18 = *(v2 + 16);
      v18(v40, v14 + v35 + v17 * v15, v1);
      if (*(v12 + 16) && (sub_26F3E5E14(&qword_2806DFC18, MEMORY[0x277CC9798]), v19 = sub_26F49F818(), v20 = -1 << *(v12 + 32), v21 = v19 & ~v20, ((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = v12;
          v18(v6, *(v12 + 48) + v21 * v17, v1);
          sub_26F3E5E14(qword_2806E07F0, MEMORY[0x277CC97A0]);
          v24 = sub_26F49F868();
          v25 = *v16;
          (*v16)(v6, v1);
          if (v24)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          v12 = v23;
          if (((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        result = (v25)(v40, v1);
        v12 = v23;
        v10 = v36;
      }

      else
      {
LABEL_14:
        v26 = *v33;
        (*v33)(v34, v40, v1);
        v10 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26F40333C(0, *(v10 + 16) + 1, 1);
          v10 = v41;
        }

        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_26F40333C((v28 > 1), v29 + 1, 1);
          v10 = v41;
        }

        *(v10 + 16) = v29 + 1;
        result = (v26)(v10 + v35 + v29 * v17, v34, v1);
      }

      v15 = v37 + 1;
      v2 = v31;
      v14 = v30;
      if (v37 + 1 == v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return v10;
  }

  return result;
}

uint64_t sub_26F3E3AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LanguageMenu(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26F3E5C28(a2, &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26F3E5C8C(&v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v11);
  (*(v5 + 32))(v13 + v12, v7, v4);
  v16 = a1;
  return sub_26F49F398();
}

uint64_t sub_26F3E3CF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  type metadata accessor for LanguageMenu(0);
  sub_26F3B8DD4(v8, v5, &qword_2806DEFD8, &qword_26F4A3670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  sub_26F49F458();
  return sub_26F3B6B4C(v8, &qword_2806DEFD8, &qword_26F4A3670);
}

uint64_t sub_26F3E3E70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v6 = sub_26F49D9F8();
  v7 = sub_26F49D9F8();
  v8 = [v6 lt:0 displayNameForContext:v7 inTargetLocale:?];

  if (v8)
  {
    v9 = sub_26F49F8C8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  (*(v3 + 8))(v5, v2);
  v16[0] = v9;
  v16[1] = v11;
  sub_26F3BDC0C();
  result = sub_26F49EED8();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t LanguageMenu.init(locales:selection:suggestedLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for LanguageMenu(0);
  v9 = v8[6];
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  result = sub_26F3E5840(a2, a4 + v8[5]);
  *(a4 + v9) = a3;
  return result;
}

uint64_t type metadata accessor for LanguageMenu(uint64_t a1)
{
  result = qword_2806DFB90;
  if (!qword_2806DFB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LanguageMenu.body.getter()
{
  sub_26F49E768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB78, &qword_26F4A5240);
  sub_26F3B18CC(&qword_2806DFB80, &qword_2806DFB78, &qword_26F4A5240, MEMORY[0x277CE14C0]);
  return sub_26F49EDD8();
}

uint64_t sub_26F3E41C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  v101 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v109 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v85 - v5;
  v6 = type metadata accessor for LanguageMenu(0);
  v7 = v6 - 8;
  v104 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v99 = v8;
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBC8, &qword_26F4A52C0);
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBD0, &qword_26F4A52C8);
  MEMORY[0x28223BE20](v97);
  v95 = &v85 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBD8, &qword_26F4A52D0);
  MEMORY[0x28223BE20](v98);
  v15 = (&v85 - v14);
  v16 = sub_26F49F4A8();
  v102 = *(v16 - 8);
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  v110 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBE0, &qword_26F4A52D8);
  v90 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v89 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v85 - v23;
  MEMORY[0x28223BE20](v24);
  v91 = &v85 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBE8, &qword_26F4A52E0);
  MEMORY[0x28223BE20](v29 - 8);
  v107 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v106 = &v85 - v32;
  v33 = *(a1 + *(v7 + 32));
  v96 = v9;
  v94 = a1;
  if (v33 && *(v33 + 16) && (v115 = &type metadata for TranslateFeatures, v116 = sub_26F3D3D60(), LOBYTE(v112) = 4, v34 = sub_26F49DB58(), __swift_destroy_boxed_opaque_existential_0(&v112), (v34 & 1) != 0))
  {
    sub_26F49E768();
    v35 = sub_26F49EEC8();
    v93 = v15;
    v112 = v35;
    v113 = v36;
    v114 = v37 & 1;
    v115 = v38;
    MEMORY[0x28223BE20](v35);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
    sub_26F3E2158();
    v39 = sub_26F3E5CF4();
    v40 = v28;
    v88 = v28;
    v87 = v39;
    sub_26F49F4D8();
    v41 = v111;
    sub_26F49F498();
    sub_26F49E768();
    v112 = sub_26F49EEC8();
    v113 = v42;
    v114 = v43 & 1;
    v115 = v44;
    MEMORY[0x28223BE20](v112);
    v45 = v91;
    sub_26F49F4D8();
    v46 = v90;
    v47 = *(v90 + 16);
    v48 = v92;
    v47(v92, v40, v20);
    v86 = v10;
    v49 = v110;
    v85 = *(v102 + 16);
    v85(v110, v41, v103);
    v50 = v89;
    v47(v89, v45, v20);
    v51 = v93;
    v47(v93, v48, v20);
    v52 = v20;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC10, &qword_26F4A5320);
    v54 = v103;
    v85((v51 + *(v53 + 48)), v49, v103);
    v47((v51 + *(v53 + 64)), v50, v52);
    v55 = *(v46 + 8);
    v55(v50, v52);
    v56 = *(v102 + 8);
    v56(v49, v54);
    v55(v92, v52);
    sub_26F3B8DD4(v51, v95, &qword_2806DFBD8, &qword_26F4A52D0);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFBF8, &qword_2806DFBD8, &qword_26F4A52D0, MEMORY[0x277CE14C0]);
    v57 = v106;
    sub_26F49E928();
    sub_26F3B6B4C(v51, &qword_2806DFBD8, &qword_26F4A52D0);
    v55(v91, v52);
    v56(v111, v103);
    v55(v88, v52);
  }

  else
  {
    v112 = *a1;
    KeyPath = swift_getKeyPath();
    sub_26F3E5C28(a1, v9);
    v59 = (*(v104 + 80) + 16) & ~*(v104 + 80);
    v60 = v95;
    v61 = swift_allocObject();
    sub_26F3E5C8C(v9, v61 + v59);

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
    v63 = sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83980]);
    v64 = sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
    sub_26F49F4B8(&v112, KeyPath, sub_26F3E5CF0, v61, v62, v105, v63, MEMORY[0x277D837E0], v64);
    v65 = v93;
    v93[2](v60, v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFBF8, &qword_2806DFBD8, &qword_26F4A52D0, MEMORY[0x277CE14C0]);
    sub_26F3E5CF4();
    v57 = v106;
    sub_26F49E928();
    (v65[1])(v12, v10);
  }

  v66 = v111;
  sub_26F49F498();
  v67 = v96;
  sub_26F3E5C28(v94, v96);
  v68 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v69 = swift_allocObject();
  sub_26F3E5C8C(v67, v69 + v68);
  v70 = v108;
  sub_26F49F398();
  v71 = v107;
  sub_26F3B8DD4(v57, v107, &qword_2806DFBE8, &qword_26F4A52E0);
  v72 = v102;
  v104 = *(v102 + 16);
  v73 = v110;
  v74 = v66;
  v75 = v103;
  (v104)(v110, v74, v103);
  v76 = v101;
  v77 = *(v101 + 16);
  v78 = v105;
  v77(v109, v70, v105);
  v79 = v100;
  sub_26F3B8DD4(v71, v100, &qword_2806DFBE8, &qword_26F4A52E0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC08, &qword_26F4A5318);
  (v104)(v79 + *(v80 + 48), v73, v75);
  v81 = v109;
  v77((v79 + *(v80 + 64)), v109, v78);
  v82 = *(v76 + 8);
  v82(v108, v78);
  v83 = *(v72 + 8);
  v83(v111, v75);
  sub_26F3B6B4C(v106, &qword_2806DFBE8, &qword_26F4A52E0);
  v82(v81, v78);
  v83(v110, v75);
  return sub_26F3B6B4C(v107, &qword_2806DFBE8, &qword_26F4A52E0);
}

uint64_t sub_26F3E4ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageMenu(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v16 = a2;
  KeyPath = swift_getKeyPath();
  sub_26F3E5C28(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26F3E5C8C(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  v12 = sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83980]);
  v13 = sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
  return sub_26F49F4B8(&v16, KeyPath, sub_26F3E6188, v9, v10, v11, v12, MEMORY[0x277D837E0], v13);
}

uint64_t sub_26F3E50C0(uint64_t a1)
{
  v2 = type metadata accessor for LanguageMenu(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v14 = sub_26F3E3738();
  KeyPath = swift_getKeyPath();
  sub_26F3E5C28(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26F3E5C8C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  v10 = sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83980]);
  v11 = sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
  return sub_26F49F4B8(&v14, KeyPath, sub_26F3E6188, v7, v8, v9, v10, MEMORY[0x277D837E0], v11);
}

uint64_t sub_26F3E52AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_26F49D878();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49E1B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E554C(v10);
  sub_26F49D868();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_26F49E188();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_26F3E54D4@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  result = sub_26F49EEC8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26F3E554C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LanguageMenu(0);
  sub_26F3B8DD4(v1 + *(v10 + 28), v9, &qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E1B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26F3E5778(uint64_t a1)
{
  v2 = sub_26F49E1B8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26F49E508();
}

uint64_t sub_26F3E5840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3E58D4()
{
  sub_26F49E768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB78, &qword_26F4A5240);
  sub_26F3B18CC(&qword_2806DFB80, &qword_2806DFB78, &qword_26F4A5240, MEMORY[0x277CE14C0]);
  return sub_26F49EDD8();
}

void sub_26F3E59F4(uint64_t a1)
{
  sub_26F3E5BC4(319, &qword_2806DFBA0, MEMORY[0x277CC9788], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26F3E5B60(319, &qword_2806DFBA8, &qword_2806DEFD8, &qword_26F4A3670, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_280F65708, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26F3E5BC4(319, &qword_2806DFBB0, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F3E5B60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26F3E5BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26F3E5C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageMenu(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3E5C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F3E5CF4()
{
  result = qword_2806DFC00;
  if (!qword_2806DFC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFBC8, &qword_26F4A52C0);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFC00);
  }

  return result;
}

uint64_t sub_26F3E5DA4()
{
  type metadata accessor for LanguageMenu(0);

  return sub_26F3E52AC();
}

uint64_t sub_26F3E5E14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26F49DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for LanguageMenu(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238) + 32);
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F49E1B8();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3E6034(uint64_t a1)
{
  v3 = *(type metadata accessor for LanguageMenu(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F3E3AE0(a1, v4);
}

uint64_t sub_26F3E60B4()
{
  v1 = *(type metadata accessor for LanguageMenu(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F49DAB8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F3E3CF0(v0 + v2, v5);
}

uint64_t Locale.title(_:)(unint64_t a1)
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v10 = Locale.sqDisplayName(context:in:)(a1);
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v9, v3);
  if (!v12)
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v14 = sub_26F49DCA8();
    __swift_project_value_buffer(v14, qword_280F67E98);
    (*(v4 + 16))(v6, v1, v3);
    v15 = sub_26F49DC88();
    v16 = sub_26F49FDD8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      sub_26F3E735C(&unk_280F66398, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v19 = sub_26F4A0428();
      v21 = v20;
      v13(v6, v3);
      v22 = sub_26F3B38D0(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_26F39E000, v15, v16, "Locale %{public}s has no value for sqDisplayName()", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x274391F70](v18, -1, -1);
      MEMORY[0x274391F70](v17, -1, -1);
    }

    else
    {

      v13(v6, v3);
    }

    return 0;
  }

  return v10;
}

uint64_t Locale.subtitle(opposite:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E718C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26F3B6B4C(v5, &qword_2806DEFD8, &qword_26F4A3670);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (MEMORY[0x27438E800](v1, v9))
    {
      type metadata accessor for _BundleObject();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_26F49D7D8();

      (*(v7 + 8))(v9, v6);
      return v12;
    }

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t LanguageOption.title(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E7248(v2, v10);
  if ((*(v5 + 48))(v10, 2, v4))
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_26F49D7D8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = Locale.title(_:)(a1);
    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

uint64_t LanguageOption.subtitle(opposite:)(uint64_t a1)
{
  v3 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_26F49DAB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_26F3E718C(a1, v11);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
  }

  else
  {
    v26 = v15;
    v27 = v8;
    v20 = *(v13 + 32);
    v20(v18, v11, v12);
    sub_26F3E7248(v1, v5);
    if (!v19(v5, 2, v12))
    {
      v22 = v26;
      v20(v26, v5, v12);
      v23 = v27;
      (*(v13 + 16))(v27, v18, v12);
      (*(v13 + 56))(v23, 0, 1, v12);
      v24 = Locale.subtitle(opposite:)(v23);
      sub_26F3B6B4C(v23, &qword_2806DEFD8, &qword_26F4A3670);
      v25 = *(v13 + 8);
      v25(v22, v12);
      v25(v18, v12);
      return v24;
    }

    (*(v13 + 8))(v18, v12);
    sub_26F3C03B0(v5);
  }

  return 0;
}

uint64_t LanguageOption.id.getter()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E7248(v0, v7);
  if ((*(v2 + 48))(v7, 2, v1))
  {
    return LanguageOption.title(_:)(0);
  }

  (*(v2 + 32))(v4, v7, v1);
  v9 = sub_26F49D988();
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t LanguageOption.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E7248(v1, v5);
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 2, v6))
  {
    sub_26F3C03B0(v5);
    v8 = 1;
  }

  else
  {
    (*(v7 + 32))(a1, v5, v6);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC28, &qword_26F4A8110);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_26F3E7248(a1, &v21 - v12);
  sub_26F3E7248(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_26F3E7248(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = MEMORY[0x27438E800](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_26F3C03B0(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_26F3B6B4C(v13, &qword_2806DFC28, &qword_26F4A8110);
    v18 = 0;
    return v18 & 1;
  }

  sub_26F3C03B0(v13);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_26F3E718C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LanguageOption(uint64_t a1)
{
  result = qword_280F65D30;
  if (!qword_280F65D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3E7248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3E72AC(uint64_t a1)
{
  result = sub_26F3E735C(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F3E7304(uint64_t a1)
{
  result = sub_26F3E735C(&qword_2806DFC20, type metadata accessor for LanguageOption, &protocol conformance descriptor for LanguageOption);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F3E735C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F3E73F4(uint64_t a1)
{
  v1 = sub_26F49DAB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void *sub_26F3E744C@<X0>(void *a1@<X8>)
{
  sub_26F3EA5CC();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t sub_26F3E74E8()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LanguagePicker(0) + 36);
  result = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {
    v7 = *v5;

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return result;
}

uint64_t LanguagePicker.init(selectedLocale:preferredLocales:oppositeLocale:languageModels:disabledLanguages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LanguagePicker(0);
  v13 = v12[5];
  v14 = v12[8];
  v15 = a6 + v12[9];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  sub_26F3E7760(a1, a6);
  *(a6 + v13) = a2;
  v16 = v12[6];
  v17 = sub_26F49DAB8();
  result = (*(*(v17 - 8) + 32))(a6 + v16, a3, v17);
  *(a6 + v12[7]) = a4;
  *(a6 + v14) = a5;
  return result;
}

uint64_t type metadata accessor for LanguagePicker(uint64_t a1)
{
  result = qword_280F65CB0;
  if (!qword_280F65CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3E7760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = sub_26F49F628();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC38, &qword_26F4A5400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  v13 = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC48, &unk_26F4A5410);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806DFC50, &qword_2806DFC48, &unk_26F4A5410, MEMORY[0x277CE14C0]);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806DFC58, &qword_2806DFC38, &qword_26F4A5400, MEMORY[0x277CDE5B0]);
  sub_26F49F1A8();
  (*(v2 + 8))(v4, v11);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26F3E7A48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v63 = sub_26F49F4A8();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCC8, &qword_26F4A5640);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v54 - v8;
  v9 = type metadata accessor for LanguagePicker(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCD0, &qword_26F4A5648);
  v67 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v54 - v14;
  MEMORY[0x28223BE20](v15);
  v58 = &v54 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  sub_26F3E808C();
  v21 = v20;
  v60 = v22;
  v72[0] = v20;
  KeyPath = swift_getKeyPath();
  v64 = a1;
  sub_26F3EA100(a1, &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v56 = v11;
  v25 = swift_allocObject();
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3EA164(v55, v25 + v24);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCD8, &unk_26F4A5678);
  v28 = sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0, MEMORY[0x277D83980]);
  v29 = sub_26F3EA1C8();
  v71 = v19;
  v59 = v26;
  v57 = v27;
  sub_26F49F4B8(v72, KeyPath, sub_26F3EA620, v25, v26, v27, v28, MEMORY[0x277D837E0], v29);
  v30 = *(v21 + 16);

  if (v30)
  {
    v31 = v54;
    sub_26F49F498();
    v32 = v61;
    v33 = v70;
    v34 = v31;
    v35 = v63;
    (*(v61 + 32))(v70, v34, v63);
    v36 = 0;
    v37 = v35;
    v38 = v32;
  }

  else
  {
    v36 = 1;
    v33 = v70;
    v37 = v63;
    v38 = v61;
  }

  (*(v38 + 56))(v33, v36, 1, v37);
  v72[0] = v60;
  v39 = swift_getKeyPath();
  v40 = v55;
  sub_26F3EA100(v64, v55);
  v41 = swift_allocObject();
  sub_26F3EA164(v40, v41 + v24);
  v42 = v58;
  sub_26F49F4B8(v72, v39, sub_26F3EA43C, v41, v59, v57, v28, MEMORY[0x277D837E0], v29);
  v43 = v67;
  v44 = *(v67 + 16);
  v45 = v65;
  v46 = v62;
  v44(v65, v71, v62);
  v47 = v33;
  v48 = v68;
  sub_26F3B8DD4(v47, v68, &qword_2806DFCC8, &qword_26F4A5640);
  v49 = v66;
  v44(v66, v42, v46);
  v50 = v69;
  v44(v69, v45, v46);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCE0, &qword_26F4A5688);
  sub_26F3B8DD4(v48, &v50[*(v51 + 48)], &qword_2806DFCC8, &qword_26F4A5640);
  v44(&v50[*(v51 + 64)], v49, v46);
  v52 = *(v43 + 8);
  v52(v42, v46);
  sub_26F3B6B4C(v70, &qword_2806DFCC8, &qword_26F4A5640);
  v52(v71, v46);
  v52(v49, v46);
  sub_26F3B6B4C(v48, &qword_2806DFCC8, &qword_26F4A5640);
  return (v52)(v45, v46);
}

void sub_26F3E808C()
{
  v43 = sub_26F49DAB8();
  v1 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for LanguagePicker(0);
  v11 = v10;
  v12 = *(v0 + *(v10 + 20));
  if (v12)
  {
  }

  else
  {
    v31 = *(v0 + *(v10 + 28));
    if (!*(v31 + 16))
    {
      goto LABEL_35;
    }

    sub_26F49D9D8();
    v55 = sub_26F49FAD8();

    v32 = *(v31 + 16);
    if (v32)
    {
      v53 = v11;
      v54 = v0;
      v57 = MEMORY[0x277D84F90];
      sub_26F40333C(0, v32, 0);
      v33 = v57;
      v56 = v1 + 32;
      v34 = v31 + 40;
      v35 = v43;
      do
      {

        sub_26F49D978();
        v57 = v33;
        v37 = *(v33 + 16);
        v36 = *(v33 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_26F40333C((v36 > 1), v37 + 1, 1);
          v35 = v43;
          v33 = v57;
        }

        *(v33 + 16) = v37 + 1;
        (*(v1 + 32))(v33 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v37, v9, v35);
        v34 += 48;
        --v32;
      }

      while (v32);
      v11 = v53;
      v0 = v54;
    }

    v38 = objc_opt_self();
    v39 = sub_26F49FAD8();

    v40 = v55;
    v41 = [v38 lt:v55 bestMatchesForPreferredLocales:v39 fromSupportedLocales:?];

    if (!v41)
    {
      goto LABEL_35;
    }

    v12 = sub_26F49FAF8();
  }

  v55 = *(v12 + 16);
  if (!v55)
  {

LABEL_35:

    return;
  }

  v13 = *(v0 + *(v11 + 28));
  v46 = *(v13 + 16);
  if (v46)
  {
    v14 = 0;
    v45 = v13 + 32;
    v54 = v1 + 16;
    v15 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v16 = v43;
    v44 = v13;
    while (v14 < *(v13 + 16))
    {
      v20 = (v45 + 48 * v14);
      v21 = v20[1];
      v56 = *v20;
      v51 = v20[2];
      v50 = *(v20 + 24);
      v22 = v20[5];
      v49 = v20[4];
      v52 = v14 + 1;
      v53 = v15;

      v48 = v22;

      v23 = 0;
      do
      {
        if (v55 == v23)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v13 = v44;
            v15 = v53;
            v29 = v47;
          }

          else
          {
            v29 = sub_26F446268(0, *(v47 + 2) + 1, 1, v47);
            v13 = v44;
            v15 = v53;
          }

          v27 = *(v29 + 2);
          v30 = *(v29 + 3);
          v28 = (v27 + 1);
          if (v27 < v30 >> 1)
          {
            v47 = v29;
            v17 = v29;
          }

          else
          {
            v53 = (v27 + 1);
            v17 = sub_26F446268((v30 > 1), v27 + 1, 1, v29);
            v28 = v53;
            v47 = v17;
          }

          goto LABEL_7;
        }

        if (v23 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        (*(v1 + 16))(v6, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v23++, v16);

        sub_26F49D978();
        v24 = MEMORY[0x27438E800](v6, v3);
        v25 = *(v1 + 8);
        v25(v3, v16);
        v25(v6, v16);
      }

      while ((v24 & 1) == 0);
      v15 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_26F446268(0, *(v15 + 2) + 1, 1, v15);
      }

      v13 = v44;
      v27 = *(v15 + 2);
      v26 = *(v15 + 3);
      v28 = (v27 + 1);
      if (v27 >= v26 >> 1)
      {
        v53 = (v27 + 1);
        v17 = sub_26F446268((v26 > 1), v27 + 1, 1, v15);
        v28 = v53;
        v15 = v17;
      }

      else
      {
        v17 = v15;
      }

LABEL_7:
      *(v17 + 2) = v28;
      v18 = &v17[48 * v27];
      *(v18 + 4) = v56;
      *(v18 + 5) = v21;
      *(v18 + 6) = v51;
      v18[56] = v50;
      v19 = v48;
      *(v18 + 8) = v49;
      *(v18 + 9) = v19;
      v14 = v52;
      if (v52 == v46)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_31:
  }
}

uint64_t sub_26F3E8600@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26F49DAB8();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v49 - v11;
  v56 = type metadata accessor for LanguagePicker(0);
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v56);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v64 = *a1;
  v65 = v15;
  v66 = a1[2];
  sub_26F3EA100(v3, v14);
  sub_26F49FBD8();
  sub_26F3E2CA4(&v64, &v61);
  v16 = sub_26F49FBC8();
  v17 = *(v12 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  v20 = v65;
  *(v18 + 32) = v64;
  *(v18 + 48) = v20;
  *(v18 + 64) = v66;
  sub_26F3EA164(v14, v18 + ((v17 + 80) & ~v17));
  v60 = v3;
  sub_26F3EA100(v3, v14);
  sub_26F3E2CA4(&v64, &v61);
  v21 = sub_26F49FBC8();
  v22 = (v17 + 32) & ~v17;
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v19;
  v25 = v51;
  v26 = v24 + v22;
  v27 = v50;
  sub_26F3EA164(v14, v26);
  v28 = (v24 + v23);
  v29 = v65;
  *v28 = v64;
  v28[1] = v29;
  v28[2] = v66;
  sub_26F49F478();
  v55 = *(&v61 + 1);
  v30 = v61;
  v54 = v62;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v31 = sub_26F49D9F8();
  v32 = sub_26F49D9F8();
  v33 = [v31 lt:0 displayNameForContext:v32 inTargetLocale:?];

  if (v33)
  {
    v53 = sub_26F49F8C8();
    v52 = v34;
  }

  else
  {
    v53 = 0;
    v52 = 0xE000000000000000;
  }

  v35 = v59;
  v36 = *(v58 + 8);
  v36(v25, v59);
  v36(v27, v35);

  v37 = v57;
  sub_26F49D978();
  v38 = MEMORY[0x27438E800](v37, v60 + *(v56 + 24));
  v36(v37, v35);
  if (v38)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass_];
    v41 = sub_26F49D7D8();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v61 = v64;
  v62 = v65;
  v63 = v66;
  v44 = sub_26F3E933C(&v61);
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = !v44;
  v47 = v55;
  *a2 = v30;
  *(a2 + 8) = v47;
  *(a2 + 16) = v54;
  v48 = v52;
  *(a2 + 24) = v53;
  *(a2 + 32) = v48;
  *(a2 + 40) = v41;
  *(a2 + 48) = v43;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = sub_26F3E2D78;
  *(a2 + 72) = result;
  return result;
}

__n128 sub_26F3E8B24@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_26F3E8600(&v9, v14);
  v7 = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v14[4];
  result = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_26F3E8B94@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCC0, &qword_26F4A5638);
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  MEMORY[0x274390240](v15);
  v16 = sub_26F3E74E8();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v17 = Locale.sqDisplayName(context:in:)(v16);
  v19 = v18;
  v20 = *(v2 + 8);
  v20(v4, v1);
  v20(v7, v1);
  if (v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v19)
  {
    v22 = v19;
  }

  v31 = v21;
  v32 = v22;
  sub_26F3BDC0C();
  sub_26F49F328();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
  sub_26F3E900C();
  v23 = v28;
  sub_26F49EF38();
  (*(v29 + 8))(v11, v23);
  v24 = v30;
  (*(v12 + 32))(v30, v14, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  v26 = (v24 + *(result + 36));
  *v26 = sub_26F3E9060;
  v26[1] = 0;
  return result;
}

unint64_t sub_26F3E8EFC()
{
  result = qword_280F65740;
  if (!qword_280F65740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFC40, &qword_26F4A5408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF358, &qword_26F4A3E78);
    sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
    sub_26F3E900C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65740);
  }

  return result;
}

unint64_t sub_26F3E900C()
{
  result = qword_280F658C0[0];
  if (!qword_280F658C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F658C0);
  }

  return result;
}

uint64_t sub_26F3E9088@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;

  sub_26F49D978();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  MEMORY[0x274390240](v10);
  v11 = MEMORY[0x27438E800](v9, v6);
  v12 = *(v4 + 8);
  v12(v6, v3);
  result = (v12)(v9, v3);
  *a2 = v11 & 1;
  return result;
}

void sub_26F3E91E0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  if (*a1 == 1)
  {

    sub_26F49D978();
    (*(v7 + 16))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
    sub_26F49F458();
    (*(v7 + 8))(v12, v6);
  }
}

BOOL sub_26F3E933C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v22 = *a1;
  v23 = v8;
  v24 = a1[2];
  v9 = type metadata accessor for LanguagePicker(0);
  if (sub_26F47A5A4(&v22, *(v2 + *(v9 + 32))))
  {
    return 0;
  }

  sub_26F49D978();
  v11 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v11 initWithSourceLocale:v12 targetLocale:v13];

  (*(v5 + 8))(v7, v4);
  if ([v14 isVariantPair])
  {

    return 0;
  }

  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v16 = v15;
  v17 = sub_26F49F898();
  v18 = [v16 BOOLForKey_];

  v19 = [objc_opt_self() sharedConnection];
  if (!v19)
  {

    if (v18)
    {
      goto LABEL_7;
    }

    return 1;
  }

  v20 = v19;
  v21 = [v19 isOnDeviceOnlyTranslationForced];

  if (((v21 | v18) & 1) == 0)
  {
    return 1;
  }

LABEL_7:
  if ((BYTE8(v23) & 1) == 0)
  {
    return 0;
  }

  return v23 == 0;
}

uint64_t sub_26F3E9594@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = sub_26F49F628();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC38, &qword_26F4A5400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  v13 = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC48, &unk_26F4A5410);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806DFC50, &qword_2806DFC48, &unk_26F4A5410, MEMORY[0x277CE14C0]);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806DFC58, &qword_2806DFC38, &qword_26F4A5400, MEMORY[0x277CDE5B0]);
  sub_26F49F1A8();
  (*(v2 + 8))(v4, v11);
  return (*(v6 + 8))(v8, v5);
}

uint64_t LanguagePickerLabelStyle.makeBody(configuration:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26F49E6D8();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC60, &qword_26F4A5420);
  return sub_26F3E9868(a2 + *(v3 + 44));
}

uint64_t sub_26F3E9868@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC78, &qword_26F4A5528);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC80, &qword_26F4A5530);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_26F49EA78();
  sub_26F49ED78();
  sub_26F49ED28();
  v15 = sub_26F49ED58();

  KeyPath = swift_getKeyPath();
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2F0, &qword_26F4A3DD0) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC88, &qword_26F4A5570);
  sub_26F49E2B8();
  v18 = swift_getKeyPath();
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC90, &qword_26F4A55A8) + 36)];
  *v19 = v18;
  v19[8] = 1;
  v20 = swift_getKeyPath();
  v21 = &v14[*(v9 + 44)];
  *v21 = v20;
  *(v21 + 1) = 1;
  v21[16] = 0;
  sub_26F49EA68();
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC98, &qword_26F4A55E0) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA0, &qword_26F4A55E8) + 28);
  v24 = *MEMORY[0x277CE1050];
  v25 = sub_26F49F2E8();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA8, &qword_26F4A5620) + 36)];
  sub_26F49E2B8();
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCB0, &qword_26F4A5628) + 36)] = 1053609165;
  sub_26F49ED78();
  sub_26F49ED28();
  v27 = sub_26F49ED58();

  v28 = swift_getKeyPath();
  v29 = &v7[*(v2 + 44)];
  *v29 = v28;
  v29[1] = v27;
  sub_26F3B8DD4(v14, v11, &qword_2806DFC80, &qword_26F4A5530);
  sub_26F3B8DD4(v7, v4, &qword_2806DFC78, &qword_26F4A5528);
  v30 = v34;
  sub_26F3B8DD4(v11, v34, &qword_2806DFC80, &qword_26F4A5530);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCB8, &qword_26F4A5630);
  sub_26F3B8DD4(v4, v30 + *(v31 + 48), &qword_2806DFC78, &qword_26F4A5528);
  sub_26F3B6B4C(v7, &qword_2806DFC78, &qword_26F4A5528);
  sub_26F3B6B4C(v14, &qword_2806DFC80, &qword_26F4A5530);
  sub_26F3B6B4C(v4, &qword_2806DFC78, &qword_26F4A5528);
  return sub_26F3B6B4C(v11, &qword_2806DFC80, &qword_26F4A5530);
}

uint64_t sub_26F3E9C44@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26F49E6D8();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC60, &qword_26F4A5420);
  return sub_26F3E9868(a2 + *(v3 + 44));
}

uint64_t _s13TranslationUI14LanguagePickerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  MEMORY[0x274390240]();
  MEMORY[0x274390240](v11);
  v12 = MEMORY[0x27438E800](v10, v7);
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for LanguagePicker(0);
  if ((MEMORY[0x27438E800](a1 + v14[6], a2 + v14[6]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (v17)
    {

      v18 = sub_26F42DB78(v16, v17);

      if (v18)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = sub_26F42DD8C(*(a1 + v14[7]), *(a2 + v14[7]));
  return v19 & 1;
}

void sub_26F3E9EC0(uint64_t a1)
{
  sub_26F3E9FEC(319);
  if (v1 <= 0x3F)
  {
    sub_26F3C0298(319);
    if (v2 <= 0x3F)
    {
      sub_26F49DAB8();
      if (v3 <= 0x3F)
      {
        sub_26F3EA0A0(319, &qword_280F656F8, &type metadata for LanguageModel, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26F3EA044(319);
          if (v5 <= 0x3F)
          {
            sub_26F3EA0A0(319, &qword_280F65768, &type metadata for DisplayNameContext, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26F3E9FEC(uint64_t a1)
{
  if (!qword_280F65718)
  {
    sub_26F49DAB8();
    v1 = sub_26F49F488();
    if (!v2)
    {
      atomic_store(v1, &qword_280F65718);
    }
  }
}

void sub_26F3EA044(uint64_t a1)
{
  if (!qword_280F656A0)
  {
    sub_26F3E1C44();
    v1 = sub_26F49FD68();
    if (!v2)
    {
      atomic_store(v1, &qword_280F656A0);
    }
  }
}

void sub_26F3EA0A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26F3EA100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3EA164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F3EA1C8()
{
  result = qword_280F65748;
  if (!qword_280F65748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFCD8, &unk_26F4A5678);
    sub_26F3EA280();
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65748);
  }

  return result;
}

unint64_t sub_26F3EA280()
{
  result = qword_280F65AC8;
  if (!qword_280F65AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65AC8);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for LanguagePicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8) + 32);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);

  v5(v2 + v1[8], v4);

  sub_26F3E1E08(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

double sub_26F3EA440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LanguagePicker(0);
  *&result = sub_26F3E8B24(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_26F3EA4B4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for LanguagePicker(0);

  return sub_26F3E9088(a1);
}

void sub_26F3EA52C(_BYTE *a1)
{
  v3 = *(type metadata accessor for LanguagePicker(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26F3E91E0(a1, v5, v6, v1 + v4, v7);
}

unint64_t sub_26F3EA5CC()
{
  result = qword_280F657C8;
  if (!qword_280F657C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F657C8);
  }

  return result;
}

uint64_t LanguagePickerItem.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  sub_26F49F468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCE8, &qword_26F4A56C8);
  sub_26F3B18CC(&qword_2806DFCF0, &qword_2806DFCE8, &qword_26F4A56C8, MEMORY[0x277CDD6A8]);
  return sub_26F49F408();
}

uint64_t sub_26F3EA740(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD08, &unk_26F4A57B0);
  sub_26F3B18CC(&qword_2806DFD10, &qword_2806DFD08, &unk_26F4A57B0, MEMORY[0x277CE14C0]);
  return sub_26F49DF98();
}

uint64_t sub_26F3EA7EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F3BDC0C();

  v4 = sub_26F49EED8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a1[6])
  {

    v11 = sub_26F49EED8();
    v13 = v12;
    v15 = v14;
    v17 = v16 & 1;
    sub_26F3B0EE4(v11, v12, v16 & 1);
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v15 = 0;
  }

  v18 = v8 & 1;
  sub_26F3B0EE4(v4, v6, v18);

  sub_26F3EAC9C(v11, v13, v17, v15);
  sub_26F3E21D4(v11, v13, v17, v15);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v17;
  *(a2 + 56) = v15;
  sub_26F3E21D4(v11, v13, v17, v15);
  sub_26F3B8D40(v4, v6, v18);
}

uint64_t sub_26F3EA95C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  sub_26F49F468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCE8, &qword_26F4A56C8);
  sub_26F3B18CC(&qword_2806DFCF0, &qword_2806DFCE8, &qword_26F4A56C8, MEMORY[0x277CDD6A8]);
  return sub_26F49F408();
}

uint64_t _s13TranslationUI18LanguagePickerItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  *v16 = a1[5];
  *&v16[16] = a1[6];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v15 = a2[5];
  *&v16[8] = a2[6];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v17);
  v12 = v17;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  MEMORY[0x274390240](&v17, v11);
  if (v12 == v17 && (v4 == v9 && v5 == v10 || (sub_26F4A0458() & 1) != 0))
  {
    v13 = *&v16[8] == 0;
    if (*&v16[16] && *&v16[8])
    {
      if (__PAIR128__(*&v16[16], v15) == *v16)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_26F4A0458();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26F3EABF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26F3EAC38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_26F3EAC9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26F3B0EE4(a1, a2, a3 & 1);
  }

  return result;
}

double sub_26F3EACE4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  result = *(v3 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress);
  *a2 = result;
  return result;
}

double sub_26F3EADBC()
{
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  return *(v0 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress);
}

uint64_t type metadata accessor for LanguageSelectionDownloadModel(uint64_t a1)
{
  result = qword_2806DFD48;
  if (!qword_2806DFD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3EAEB0(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) == a1)
  {
    *(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }
}

uint64_t sub_26F3EAFE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  *a2 = *(v3 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state);
  return result;
}

uint64_t sub_26F3EB0B8()
{
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  return *(v0 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state);
}

uint64_t sub_26F3EB160(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  return result;
}

uint64_t sub_26F3EB28C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  return result;
}

uint64_t sub_26F3EB3A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_26F49DA98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = sub_26F49D9B8();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v19 = &v25 - v18;
  if (a1)
  {
    v28 = v17;
    v29 = v4;
    v30 = v9;
    sub_26F49DAB8();
    sub_26F3EBF04(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);

    if (sub_26F49F868())
    {

      v20 = 1;
    }

    else
    {
      sub_26F49DAA8();
      sub_26F49DA58();
      v32 = *(v30 + 8);
      v32(v14, v8);
      v21 = v31;
      v30 = *(v31 + 48);
      if ((v30)(v7, 1, v15) != 1)
      {
        v26 = *(v21 + 32);
        v27 = v21 + 32;
        v26(v19, v7, v15);
        sub_26F49DAA8();
        v7 = v29;
        sub_26F49DA58();
        v32(v11, v8);
        if ((v30)(v7, 1, v15) != 1)
        {
          v22 = v28;
          v26(v28, v7, v15);
          v20 = MEMORY[0x27438E7A0](v19, v22);

          v23 = *(v31 + 8);
          v23(v22, v15);
          v23(v19, v15);
          return v20 & 1;
        }

        (*(v31 + 8))(v19, v15);
      }

      sub_26F3EB7AC(v7);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_26F3EB7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3EB814()
{
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  return *(v0 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
}

uint64_t sub_26F3EB8BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  *a2 = *(v3 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
  return result;
}

uint64_t sub_26F3EB9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26F3EBA20(uint64_t a1)
{
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  return sub_26F49F828();
}

uint64_t LanguageSelectionDownloadModel.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v2 = sub_26F49DAB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_26F49DB48();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LanguageSelectionDownloadModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v2 = sub_26F49DAB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_26F49DB48();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_26F3EBC34()
{
  sub_26F4A0528();
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F3EBCD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v5 = sub_26F49DAB8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_26F3EBD4C()
{
  sub_26F4A0528();
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F3EBDEC(uint64_t a1)
{
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  return sub_26F49F828();
}

uint64_t sub_26F3EBF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F3EBF4C(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F3EC00C(uint64_t a1)
{
  result = sub_26F49DAB8();
  if (v2 <= 0x3F)
  {
    result = sub_26F49DB48();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_26F3EC228()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = result;
  return result;
}

double sub_26F3EC270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F49E6D8();
  v20 = 1;
  sub_26F3EC3FC(a1, &v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 9) = *(v18 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 9) = *(v18 + 9);
  sub_26F3B8DD4(&v21, &v11, &qword_2806DFD58, &qword_26F4A59E0);
  sub_26F3B6B4C(v28, &qword_2806DFD58, &qword_26F4A59E0);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  v6 = v19[7];
  *(a2 + 113) = v19[6];
  *(a2 + 129) = v6;
  v7 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v7;
  result = *&v19[2];
  v9 = v19[3];
  *(a2 + 49) = v19[2];
  v10 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 65) = v9;
  *(a2 + 145) = 0;
  return result;
}

uint64_t sub_26F3EC3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v8 = sub_26F49D9F8();
  v9 = sub_26F49D9F8();
  v10 = [v8 lt:0 displayNameForContext:v9 inTargetLocale:?];

  if (v10)
  {
    v11 = sub_26F49F8C8();
    v13 = v12;

    (*(v5 + 8))(v7, v4);
    *&v48[0] = v11;
    *(&v48[0] + 1) = v13;
    sub_26F3BDC0C();
    v14 = sub_26F49EED8();
    v38 = a1;
    v16 = v15;
    LOBYTE(v11) = v17;
    v18 = [objc_opt_self() labelColor];
    sub_26F49F218();
    v19 = sub_26F49EE68();
    v37 = v20;
    v22 = v21;
    v24 = v23;

    v25 = v16;
    a1 = v38;
    sub_26F3B8D40(v14, v25, v11 & 1);

    v26 = v22 & 1;
    v27 = v37;
    sub_26F3B0EE4(v19, v37, v26);

    sub_26F3B8D40(v19, v27, v26);

    sub_26F3B0EE4(v19, v27, v26);

    LOBYTE(v10) = 1;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v19 = 0;
    v27 = 0;
    v26 = 0;
    v24 = 0;
  }

  sub_26F3EC7E4(a1, &v40);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_26F49F298();
  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47[0] = v43;
  *&v47[1] = v30;
  BYTE8(v47[1]) = 0;
  sub_26F3EAC9C(v19, v27, v26, v24);
  sub_26F3B8DD4(&v44, v48, &qword_2806DFD60, &qword_26F4A59E8);
  sub_26F3E21D4(v19, v27, v26, v24);
  v31 = v43;
  *(v39 + 7) = v44;
  *(&v39[1] + 7) = v45;
  *(&v39[2] + 7) = v46;
  *(&v39[3] + 7) = v47[0];
  v39[4] = *(v47 + 9);
  *a2 = v19;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = v10;
  v32 = v39[1];
  *(a2 + 41) = v39[0];
  v33 = v39[3];
  *(a2 + 105) = v39[4];
  v34 = v39[2];
  *(a2 + 89) = v33;
  *(a2 + 73) = v34;
  *(a2 + 57) = v32;
  v48[2] = v42;
  v48[3] = v31;
  v48[0] = v40;
  v48[1] = v41;
  v49 = v30;
  v50 = 0;
  sub_26F3B6B4C(v48, &qword_2806DFD60, &qword_26F4A59E8);
  return sub_26F3E21D4(v19, v27, v26, v24);
}

__n128 sub_26F3EC7E4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_26F49F2C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v31 = a1;
  sub_26F3ECE34();
  sub_26F49DB28();

  v8 = *(a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      LOBYTE(v20[0]) = 0;
      v33[24] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
      sub_26F3ECE8C();
      sub_26F49E928();
      v14 = v22;
      v15 = v23;
      v16[0] = *v24;
      *(v16 + 9) = *&v24[9];
      LOBYTE(v26) = 1;
      BYTE9(v16[1]) = 1;
      goto LABEL_11;
    }

    if (v8 != 3)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      swift_getKeyPath();
      *&v31 = a1;
      sub_26F49DB28();

      v9 = *(a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress);
      LOBYTE(v20[0]) = 0;
      LOBYTE(v18[0]) = 1;
      *&v31 = v9;
      BYTE8(v31) = 0;
      v33[24] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
      sub_26F3ECE8C();
      sub_26F3E1D4C();
      sub_26F49E928();
      v14 = v22;
      v15 = v23;
      v16[0] = *v24;
      *(v16 + 9) = *&v24[9];
      LOBYTE(v26) = 0;
      BYTE9(v16[1]) = 0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD78, &qword_26F4A5A20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD80, &qword_26F4A5A28);
      sub_26F3ECF10();
      sub_26F3ECF9C();
      sub_26F49E928();
      goto LABEL_12;
    }

LABEL_8:
    sub_26F49F2B8();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = sub_26F49F2F8();

    (*(v5 + 8))(v7, v4);
    sub_26F49F5A8();
    sub_26F49E0C8();
    v21 = v27;
    v19 = v29;
    v17 = 1;
    *&v31 = v11;
    *(&v31 + 1) = v26;
    LOBYTE(v32) = v27;
    *(&v32 + 1) = v20[0];
    DWORD1(v32) = *(v20 + 3);
    *(&v32 + 1) = v28;
    v33[0] = v29;
    *&v33[1] = v18[0];
    *&v33[4] = *(v18 + 3);
    *&v33[8] = v30;
    v33[24] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
    sub_26F3ECE8C();
    sub_26F49E928();
    v31 = v22;
    v32 = v23;
    *v33 = *v24;
    *&v33[9] = *&v24[9];
    v25 = 1;
    v33[25] = 1;
    goto LABEL_9;
  }

  sub_26F49F2B8();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_26F49F2F8();

  (*(v5 + 8))(v7, v4);
  sub_26F49F5A8();
  sub_26F49E0C8();
  v21 = v27;
  v19 = v29;
  v17 = 0;
  *&v31 = v10;
  *(&v31 + 1) = v26;
  LOBYTE(v32) = v27;
  *(&v32 + 1) = v20[0];
  DWORD1(v32) = *(v20 + 3);
  *(&v32 + 1) = v28;
  v33[0] = v29;
  *&v33[1] = v18[0];
  *&v33[4] = *(v18 + 3);
  *&v33[8] = v30;
  v33[24] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
  sub_26F3ECE8C();
  sub_26F3E1D4C();
  sub_26F49E928();
  v31 = v22;
  v32 = v23;
  *v33 = *v24;
  *&v33[9] = *&v24[9];
  v25 = 0;
  v33[25] = 0;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD78, &qword_26F4A5A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD80, &qword_26F4A5A28);
  sub_26F3ECF10();
  sub_26F3ECF9C();
  sub_26F49E928();

  v31 = v14;
  v32 = v15;
  *v33 = v16[0];
  *&v33[10] = *(v16 + 10);
LABEL_12:
  v12 = v32;
  *a2 = v31;
  a2[1] = v12;
  a2[2] = *v33;
  result = *&v33[10];
  *(a2 + 42) = *&v33[10];
  return result;
}

unint64_t sub_26F3ECE34()
{
  result = qword_2806DFD20;
  if (!qword_2806DFD20)
  {
    type metadata accessor for LanguageSelectionDownloadModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD20);
  }

  return result;
}

unint64_t sub_26F3ECE8C()
{
  result = qword_2806DFD70;
  if (!qword_2806DFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFD68, &qword_26F4A5A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD70);
  }

  return result;
}

unint64_t sub_26F3ECF10()
{
  result = qword_2806DFD88;
  if (!qword_2806DFD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFD78, &qword_26F4A5A20);
    sub_26F3ECE8C();
    sub_26F3E1D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD88);
  }

  return result;
}

unint64_t sub_26F3ECF9C()
{
  result = qword_2806DFD90;
  if (!qword_2806DFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFD80, &qword_26F4A5A28);
    sub_26F3ECE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD90);
  }

  return result;
}

unint64_t sub_26F3ED028()
{
  result = qword_2806DFD98;
  if (!qword_2806DFD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFDA0, &qword_26F4A5A58);
    sub_26F3B18CC(&qword_2806DFDA8, &qword_2806DFDB0, &unk_26F4A5A60, MEMORY[0x277CE1138]);
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD98);
  }

  return result;
}

uint64_t sub_26F3ED134()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();
}

uint64_t sub_26F3ED1A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F3ED218()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F3ED28C()
{
  v1 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__sourceLocale;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE08, &qword_26F4A5B18);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__targetLocale, v2);
  v4 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__selection;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE10, &qword_26F4A5B20);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__suggestedLocales;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE18, &qword_26F4A5B28);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LanguageSelectionModel(uint64_t a1)
{
  result = qword_2806DFDD8;
  if (!qword_2806DFDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3ED450(uint64_t a1)
{
  sub_26F3ED5D4(319, &qword_2806DFDE8, &qword_2806DEFD8, &qword_26F4A3670);
  if (v1 <= 0x3F)
  {
    sub_26F3ED584();
    if (v2 <= 0x3F)
    {
      sub_26F3ED5D4(319, &qword_2806DFDF8, &qword_2806DFE00, &qword_26F4A5A90);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26F3ED584()
{
  if (!qword_2806DFDF0)
  {
    v0 = sub_26F49DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DFDF0);
    }
  }
}

void sub_26F3ED5D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26F49DDC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26F3ED628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE18, &qword_26F4A5B28);
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE10, &qword_26F4A5B20);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v25 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE08, &qword_26F4A5B18);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__sourceLocale;
  v14 = sub_26F49DAB8();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  sub_26F3E718C(v12, v9);
  sub_26F49DD68();
  sub_26F3EDA38(v12);
  v16 = *(v5 + 32);
  v25 = v5 + 32;
  v17 = v0 + v13;
  v18 = v27;
  v16(v17, v7, v27);
  v19 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__targetLocale;
  v15(v12, 1, 1, v14);
  sub_26F3E718C(v12, v9);
  sub_26F49DD68();
  sub_26F3EDA38(v12);
  v16(v0 + v19, v7, v18);
  v20 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__selection;
  v34 = 1;
  v21 = v28;
  sub_26F49DD68();
  (*(v29 + 32))(v0 + v20, v21, v30);
  v22 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__suggestedLocales;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE00, &qword_26F4A5A90);
  v23 = v31;
  sub_26F49DD68();
  (*(v32 + 32))(v0 + v22, v23, v33);
  return v0;
}

uint64_t sub_26F3ED9F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LanguageSelectionModel(0);
  result = sub_26F49DD48();
  *a2 = result;
  return result;
}

uint64_t sub_26F3EDA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double LanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LanguageSelectionView(0);
  v16 = v15[5];
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a8 + v16) = [objc_opt_self() bundleForClass_];
  v18 = v15[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  sub_26F49F338();
  *(a8 + v18) = v26;
  v19 = v15[13];
  sub_26F49F338();
  result = *&v26;
  *(a8 + v19) = v26;
  *(a8 + v15[9]) = a1;
  v21 = (a8 + v15[6]);
  *v21 = a2;
  v21[1] = a3;
  *(a8 + v15[7]) = 0;
  v22 = (a8 + v15[8]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a8 + v15[10]);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a8 + v15[11]);
  *v24 = a6;
  v24[1] = a7;
  return result;
}

double LanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:shouldAddDismissButton:didTapDismiss:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for LanguageSelectionView(0);
  v18 = v17[5];
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a8 + v18) = [objc_opt_self() bundleForClass_];
  v20 = v17[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  sub_26F49F338();
  *(a8 + v20) = v29;
  v21 = v17[13];
  sub_26F49F338();
  result = *&v29;
  *(a8 + v21) = v29;
  *(a8 + v17[9]) = a1;
  v23 = (a8 + v17[6]);
  *v23 = a2;
  v23[1] = a3;
  *(a8 + v17[7]) = a4;
  v24 = (a8 + v17[8]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a8 + v17[10]);
  *v25 = a7;
  v25[1] = a9;
  v26 = (a8 + v17[11]);
  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t LanguageSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE28, &qword_26F4A5C50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE30, &qword_26F4A5C58);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE38, &qword_26F4A5C60);
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v42 - v10;
  v12 = type metadata accessor for LanguageSelectionView(0);
  if (*(v1 + *(v12 + 28)) == 1)
  {
    v47 = &v42;
    MEMORY[0x28223BE20](v12);
    v46 = &v42 - 4;
    *(&v42 - 2) = v1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE88, &qword_26F4A5C88);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE90, &qword_26F4A5C90);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE98, &qword_26F4A5C98);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFEA0, &qword_26F4A5CA0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    v17 = v2;
    v18 = sub_26F49E9D8();
    v19 = sub_26F3F19F0();
    v50 = v16;
    v51 = v18;
    v52 = v19;
    v53 = MEMORY[0x277CDE0D0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F50]);
    v50 = v15;
    v51 = v14;
    v52 = OpaqueTypeConformance2;
    v53 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v50 = v13;
    v51 = v14;
    v52 = v22;
    v53 = v21;
    v23 = swift_getOpaqueTypeConformance2();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFEA8, &qword_26F4A5CA8);
    v25 = sub_26F3B18CC(&qword_2806DFEB0, &qword_2806DFEA8, &qword_26F4A5CA8, MEMORY[0x277CDD7A8]);
    v50 = v24;
    v51 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v50 = v17;
    v51 = v42;
    v52 = v23;
    v53 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_26F3BDC0C();
    v50 = v43;
    v51 = MEMORY[0x277D837D0];
    v52 = v27;
    v53 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v50 = v44;
    v51 = v29;
    swift_getOpaqueTypeConformance2();
    sub_26F49E318();
    v30 = v48;
    (*(v9 + 16))(v8, v11, v48);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFE40, &qword_2806DFE38, &qword_26F4A5C60, MEMORY[0x277CDDA18]);
    sub_26F49E928();
    return (*(v9 + 8))(v11, v30);
  }

  else
  {
    sub_26F3EEAC0(v5);
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFE40, &qword_2806DFE38, &qword_26F4A5C60, MEMORY[0x277CDDA18]);
    v32 = v2;
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    v37 = sub_26F49E9D8();
    v38 = sub_26F3F19F0();
    v50 = v36;
    v51 = v37;
    v52 = v38;
    v53 = MEMORY[0x277CDE0D0];
    v39 = swift_getOpaqueTypeConformance2();
    v40 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F50]);
    v50 = v35;
    v51 = v34;
    v52 = v39;
    v53 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v50 = v33;
    v51 = v34;
    v52 = v41;
    v53 = v40;
    swift_getOpaqueTypeConformance2();
    sub_26F49E928();
    return (*(v3 + 8))(v5, v32);
  }
}

uint64_t sub_26F3EE4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_26F49E6A8();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE28, &qword_26F4A5C50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE98, &qword_26F4A5C98);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE90, &qword_26F4A5C90);
  v14 = *(v13 - 8);
  v50 = v13;
  v51 = v14;
  MEMORY[0x28223BE20](v13);
  v47 = &v46 - v15;
  sub_26F3EEAC0(v8);
  v56 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEA0, &qword_26F4A5CA0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
  v21 = sub_26F49E9D8();
  v22 = sub_26F3F19F0();
  v59 = v20;
  v60 = v21;
  v61 = v22;
  v62 = MEMORY[0x277CDE0D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F50]);
  v59 = v19;
  v60 = v18;
  v61 = OpaqueTypeConformance2;
  v62 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v59 = v17;
  v60 = v18;
  v61 = v25;
  v62 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFEA8, &qword_26F4A5CA8);
  v28 = sub_26F3B18CC(&qword_2806DFEB0, &qword_2806DFEA8, &qword_26F4A5CA8, MEMORY[0x277CDD7A8]);
  v59 = v27;
  v60 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  sub_26F49F148();
  (*(v6 + 8))(v8, v5);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  v32 = sub_26F49D7D8();
  v34 = v33;

  v57 = v32;
  v58 = v34;
  v59 = v5;
  v60 = v16;
  v61 = v26;
  v62 = v29;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_26F3BDC0C();
  v37 = MEMORY[0x277D837D0];
  v39 = v47;
  v38 = v48;
  sub_26F49F018();

  v40 = v38;
  (*(v49 + 8))(v12, v38);
  v41 = v52;
  v42 = v53;
  v43 = v54;
  (*(v53 + 104))(v52, *MEMORY[0x277CDDDC0], v54);
  v59 = v40;
  v60 = v37;
  v61 = v35;
  v62 = v36;
  swift_getOpaqueTypeConformance2();
  v44 = v50;
  sub_26F49F0D8();
  (*(v42 + 8))(v41, v43);
  return (*(v51 + 8))(v39, v44);
}

uint64_t sub_26F3EEAC0@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v3 = sub_26F49E9D8();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LanguageSelectionView(0);
  v8 = *(v7 - 8);
  v51 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v9;
  v11 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE58, &qword_26F4A5C78);
  MEMORY[0x28223BE20](v49);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE50, &qword_26F4A5C70);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  MEMORY[0x28223BE20](v14);
  v40 = v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE48, &qword_26F4A5C68);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  MEMORY[0x28223BE20](v17);
  v50 = v39 - v19;
  v48 = v2;
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEE0, &qword_26F4A5D40);
  sub_26F3B18CC(&qword_2806DFEE8, &qword_2806DFEE0, &qword_26F4A5D40, MEMORY[0x277CE14C0]);
  sub_26F49EDB8();
  v39[0] = v11;
  sub_26F3F2160(v2, v11);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v39[1] = v10;
  v21 = swift_allocObject();
  sub_26F3F21C4(v11, v21 + v20);
  v22 = &v13[*(v49 + 36)];
  sub_26F49E1E8();
  sub_26F49FBE8();
  *v22 = &unk_26F4A5D50;
  *(v22 + 1) = v21;
  sub_26F49E9C8();
  v23 = sub_26F3F19F0();
  v24 = v41;
  sub_26F49F198();
  (*(v42 + 8))(v6, v24);
  sub_26F3B6B4C(v13, &qword_2806DFE58, &qword_26F4A5C78);
  v25 = v48;
  v53 = *(v48 + *(v51 + 56));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F348();
  v26 = v39[0];
  sub_26F3F2160(v25, v39[0]);
  v27 = swift_allocObject();
  v28 = v26;
  sub_26F3F21C4(v26, v27 + v20);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  *&v53 = v49;
  *(&v53 + 1) = v24;
  v54 = v23;
  v55 = MEMORY[0x277CDE0D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F50]);
  v32 = v43;
  v33 = v40;
  sub_26F49F168();

  (*(v44 + 8))(v33, v32);
  v34 = v48;
  v53 = *(v48 + *(v51 + 60));
  sub_26F49F348();
  sub_26F3F2160(v34, v28);
  v35 = swift_allocObject();
  sub_26F3F21C4(v28, v35 + v20);
  *&v53 = v32;
  *(&v53 + 1) = v29;
  v54 = OpaqueTypeConformance2;
  v55 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = v45;
  v37 = v50;
  sub_26F49F168();

  return (*(v46 + 8))(v37, v36);
}

uint64_t sub_26F3EF130(uint64_t a1)
{
  v2 = sub_26F49E998();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEA8, &qword_26F4A5CA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_26F49E958();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC70, &qword_26F4A2AE0);
  sub_26F3B18CC(&qword_2806DEC78, &qword_2806DEC70, &qword_26F4A2AE0, MEMORY[0x277CDF028]);
  sub_26F49E028();
  v7 = sub_26F3B18CC(&qword_2806DFEB0, &qword_2806DFEA8, &qword_26F4A5CA8, MEMORY[0x277CDD7A8]);
  MEMORY[0x27438F7E0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F3EF31C(uint64_t a1)
{
  v2 = type metadata accessor for LanguageSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3F2160(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F3F21C4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_26F49F398();
}

uint64_t sub_26F3EF448(uint64_t a1)
{
  v2 = sub_26F49E148();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for LanguageSelectionView(0) + 32);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);

    v7(v9);

    return sub_26F3ACE98(v7, v8);
  }

  else
  {
    sub_26F3EF578(v5);
    sub_26F49E138();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26F3EF578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F49E678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26F3B8DD4(v2, &v14 - v9, &qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E148();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26F3EF778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49F2B8();
  *a1 = result;
  return result;
}

uint64_t sub_26F3EF7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF8, &qword_26F4A5D60);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v6;
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - v8;
  MEMORY[0x28223BE20](v9);
  v46 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF00, &qword_26F4A5D68);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = &v39 - v14;
  sub_26F3EFCAC(&v39 - v14);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v18 = sub_26F49D7D8();
  v20 = v19;

  v21 = *(a1 + *(type metadata accessor for LanguageSelectionView(0) + 36));
  swift_getKeyPath();
  v39 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel___observationRegistrar;
  v49 = v21;
  sub_26F3F2FF4(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v22 = *(v21 + 24);
  v48[2] = a1;

  v23 = sub_26F442FE4(sub_26F3F2420, v48, v22);
  sub_26F3EFF58(v18, v20, v23, v46);

  v24 = [v16 bundleForClass_];
  v25 = sub_26F49D7D8();
  v27 = v26;

  swift_getKeyPath();
  v49 = v21;
  sub_26F49DB28();

  v28 = *(v21 + 16);
  v47[2] = a1;

  v29 = sub_26F442FE4(sub_26F3F2440, v47, v28);
  v30 = v42;
  sub_26F3EFF58(v25, v27, v29, v42);

  v32 = v40;
  v31 = v41;
  sub_26F3A4AB0(v40, v41);
  v33 = v46;
  v34 = v43;
  sub_26F3B8DD4(v46, v43, &qword_2806DFEF8, &qword_26F4A5D60);
  v35 = v44;
  sub_26F3B8DD4(v30, v44, &qword_2806DFEF8, &qword_26F4A5D60);
  v36 = v45;
  sub_26F3A4AB0(v31, v45);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF10, &qword_26F4A5DC0);
  sub_26F3B8DD4(v34, v36 + *(v37 + 48), &qword_2806DFEF8, &qword_26F4A5D60);
  sub_26F3B8DD4(v35, v36 + *(v37 + 64), &qword_2806DFEF8, &qword_26F4A5D60);
  sub_26F3F2460(v30);
  sub_26F3F2460(v33);
  sub_26F3B6B4C(v32, &qword_2806DFF00, &qword_26F4A5D68);
  sub_26F3F2460(v35);
  sub_26F3F2460(v34);
  return sub_26F3B6B4C(v31, &qword_2806DFF00, &qword_26F4A5D68);
}

uint64_t sub_26F3EFCAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF68, &qword_26F4A5E48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v17[0] = *(v1 + *(type metadata accessor for LanguageSelectionView(0) + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  v8 = sub_26F49F348();
  v9 = v18;
  if (v18)
  {
    v15 = &v15;
    MEMORY[0x28223BE20](v8);
    v16 = a1;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v9;
    sub_26F3F179C(v2, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF70, &qword_26F4A5E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF78, &qword_26F4A5E58);
    sub_26F3F2A14();
    sub_26F3B18CC(&qword_2806DFFB8, &qword_2806DFF78, &qword_26F4A5E58, MEMORY[0x277CDF038]);
    a1 = v16;
    sub_26F49F4D8();

    v10 = &v7[*(v4 + 36)];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF40, &qword_26F4A5DE0) + 28);
    v12 = sub_26F49EE88();
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
    *v10 = swift_getKeyPath();
    sub_26F3A4D10(v7, a1);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a1, v13, 1, v4);
}

uint64_t sub_26F3EFF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF18, &qword_26F4A5DC8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  if (a3 >> 62)
  {
    v39 = v9;
    v34 = sub_26F4A00A8();
    v9 = v39;
    if (v34 >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v41 = a1;
    v42 = a2;
    v39 = v9;
    sub_26F3BDC0C();

    v13 = sub_26F49EED8();
    v15 = v14;
    v17 = v16;
    sub_26F49EC98();
    sub_26F49ED28();
    sub_26F49ED58();
    v38 = a4;

    v18 = sub_26F49EEA8();
    v36 = v12;
    v37 = v8;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_26F3B8D40(v13, v15, v17 & 1);

    v41 = v18;
    v42 = v20;
    v43 = v22 & 1;
    v44 = v24;
    MEMORY[0x28223BE20](v25);
    v26 = v40;
    *(&v36 - 2) = a3;
    *(&v36 - 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF20, &qword_26F4A5DD0);
    sub_26F3F25C4();
    v27 = v36;
    sub_26F49F4D8();
    v28 = v37;
    v29 = (v27 + *(v37 + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF40, &qword_26F4A5DE0) + 28);
    v31 = sub_26F49EE88();
    (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
    *v29 = swift_getKeyPath();
    v32 = v38;
    sub_26F3F2674(v27, v38);
    return (*(v39 + 56))(v32, 0, 1, v28);
  }

  v35 = *(v9 + 56);

  return v35(a4, 1, 1, v8, v10);
}

uint64_t sub_26F3F02A4(uint64_t a1)
{
  v1[5] = a1;
  sub_26F49FBD8();
  v1[6] = sub_26F49FBC8();
  v3 = sub_26F49FB68();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_26F3F033C, v3, v2);
}

uint64_t sub_26F3F033C()
{
  v1 = v0[5];
  v2 = type metadata accessor for LanguageSelectionView(0);
  v0[9] = v2;
  v0[10] = *(v1 + *(v2 + 36));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26F3F03E8;

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_26F3F03E8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26F3F0508, v3, v2);
}

uint64_t sub_26F3F0508()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v3 = sub_26F3F3A14();
  *(v0 + 16) = *(v2 + *(v1 + 48));
  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F358();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t *sub_26F3F05B0(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *result;
  v4 = *a2;
  if (*result)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

    if ((MEMORY[0x27438E800](v3 + v7, v4 + v7) & 1) == 0)
    {
      if (qword_2806DE7A0 != -1)
      {
        swift_once();
      }

      v8 = sub_26F49DCA8();
      __swift_project_value_buffer(v8, qword_2806EA8F0);

      v9 = sub_26F49DC88();
      v10 = sub_26F49FDB8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;
        v13 = sub_26F49D988();
        v15 = sub_26F3B38D0(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_26F39E000, v9, v10, "translate to %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x274391F70](v12, -1, -1);
        MEMORY[0x274391F70](v11, -1, -1);
      }

      v16 = *(a3 + *(type metadata accessor for LanguageSelectionView(0) + 40));
      if (v16)
      {

        v16(v17);
      }
    }
  }

  return result;
}

void sub_26F3F07E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = qword_2806DE7A0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_26F49DCA8();
    __swift_project_value_buffer(v6, qword_2806EA8F0);

    v7 = sub_26F49DC88();
    v8 = sub_26F49FDB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v17 = v10;
      *v9 = 136315138;
      v11 = sub_26F49D988();
      v13 = sub_26F3B38D0(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_26F39E000, v7, v8, "did select %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x274391F70](v10, -1, -1);
      MEMORY[0x274391F70](v9, -1, -1);
    }

    v14 = type metadata accessor for LanguageSelectionView(0);
    v15 = *(a3 + *(v14 + 44));
    if (v15)
    {
      v17 = *(a3 + *(v14 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
      sub_26F49F348();

      v15(v16, v3);
    }

    else
    {
    }
  }
}

uint64_t sub_26F3F0A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v17 = a1;
  KeyPath = swift_getKeyPath();
  sub_26F3F2160(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26F3F21C4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF50, &qword_26F4A5E40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF38, &qword_26F4A5DD8);
  v12 = sub_26F3B18CC(&qword_2806DFF58, &qword_2806DFF50, &qword_26F4A5E40, MEMORY[0x277D83980]);
  v13 = sub_26F3F2FF4(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v14 = sub_26F3B18CC(&qword_2806DFF30, &qword_2806DFF38, &qword_26F4A5DD8, MEMORY[0x277CDF028]);
  return sub_26F49F4B8(&v17, KeyPath, sub_26F3F28A0, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26F3F0C28(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  sub_26F3F2160(a2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26F3F21C4(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_26F3F29B8();

  return sub_26F49F398();
}

uint64_t sub_26F3F0D78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LanguageSelectionView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  return sub_26F49F358();
}

uint64_t sub_26F3F0DE8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26F49D7D8();

  type metadata accessor for LanguageSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFFC0, &qword_26F4A5EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFFC8, &qword_26F4A5EF8);
  sub_26F3F2CC8(&qword_2806DFFD0, &qword_2806DFFD8, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F48]);
  sub_26F3F2D64();
  sub_26F3BDC0C();
  sub_26F3F2EF4();
  return sub_26F49F3E8();
}

uint64_t sub_26F3F0FF8(uint64_t a1)
{
  type metadata accessor for LanguageSelectionView(0);
  swift_getKeyPath();
  sub_26F3F2FF4(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF50, &qword_26F4A5E40);
  sub_26F49DAB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFFF0, &qword_26F4A5F00);
  sub_26F3B18CC(&qword_2806DFF58, &qword_2806DFF50, &qword_26F4A5E40, MEMORY[0x277D83980]);
  sub_26F3F2DE8();
  sub_26F3F2FF4(&qword_2806E0010, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  return sub_26F49F4C8();
}

uint64_t sub_26F3F11A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0018, &qword_26F4A5F38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v12 lt:0 displayNameForContext:v13 inTargetLocale:?];

  if (v14)
  {
    v15 = sub_26F49F8C8();
    v17 = v16;

    (*(v8 + 8))(v10, v7);
    v25 = v15;
    v26 = v17;
    sub_26F3BDC0C();
    *v6 = sub_26F49EED8();
    *(v6 + 1) = v18;
    v6[16] = v19 & 1;
    *(v6 + 3) = v20;
    *(v6 + 4) = v11;
    v6[40] = 1;
    v21 = v24;
    (*(v4 + 32))(v24, v6, v3);
    (*(v4 + 56))(v21, 0, 1, v3);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return (*(v4 + 56))(v24, 1, 1, v3);
  }
}

uint64_t sub_26F3F1430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49E758();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v11 = sub_26F49D9F8();
  v12 = sub_26F49D9F8();
  v13 = [v11 lt:0 displayNameForContext:v12 inTargetLocale:?];

  if (v13)
  {
    v14 = sub_26F49F8C8();
    v16 = v15;

    (*(v8 + 8))(v10, v7);
    swift_getKeyPath();
    *&v34 = a1;
    sub_26F3F2FF4(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_26F49DB28();

    if (*(a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) == 1)
    {
      sub_26F49E748();
      sub_26F49E738();
      sub_26F49E728();

      sub_26F49E738();
      sub_26F49E778();
      v17 = *(a2 + *(type metadata accessor for LanguageSelectionView(0) + 20));
      v29 = sub_26F49EEC8();
      v30 = v18;
      v31 = v19 & 1;
      v32 = v20;
      v33 = 0;
    }

    else
    {
      *&v34 = v14;
      *(&v34 + 1) = v16;
      sub_26F3BDC0C();
      v29 = sub_26F49EED8();
      v30 = v26;
      v31 = v25 & 1;
      v32 = v27;
      v33 = 1;
    }

    result = sub_26F49E928();
    v24 = v35;
    v22 = v34;
    v23 = v36;
  }

  else
  {
    result = (*(v8 + 8))(v10, v7);
    v22 = 0uLL;
    v23 = -1;
    v24 = 0uLL;
  }

  *a3 = v22;
  *(a3 + 16) = v24;
  *(a3 + 32) = v23;
  return result;
}

double sub_26F3F179C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for LanguageSelectionView(0) + 24) + 8))
  {
    sub_26F3BDC0C();

    v3 = sub_26F49EED8();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_26F49F5A8();
    sub_26F49E3D8();
    v10 = v7 & 1;
    KeyPath = swift_getKeyPath();
    v12 = sub_26F49EC68();
    sub_26F49EC98();
    sub_26F49ED28();
    v13 = sub_26F49ED58();

    *&v29 = v3;
    *(&v29 + 1) = v5;
    LOBYTE(v30) = v10;
    *(&v30 + 1) = v9;
    *&v31 = KeyPath;
    BYTE8(v31) = 1;
    v32[0] = v12;
    memset(&v32[8], 0, 32);
    v32[40] = 1;
    *&v33 = swift_getKeyPath();
    *(&v33 + 1) = v13;
    CGPointMake();
    v44 = *v32;
    v45 = *&v32[16];
    v46 = *&v32[32];
    v47 = v33;
    v40 = v26;
    v41 = v27;
    v42 = v28;
    v43 = v31;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v34 = v29;
    v35 = v30;
  }

  else
  {
    sub_26F3F2C94(&v34);
  }

  v14 = v45;
  a2[10] = v44;
  a2[11] = v14;
  v15 = v47;
  a2[12] = v46;
  a2[13] = v15;
  v16 = v41;
  a2[6] = v40;
  a2[7] = v16;
  v17 = v43;
  a2[8] = v42;
  a2[9] = v17;
  v18 = v37;
  a2[2] = v36;
  a2[3] = v18;
  v19 = v39;
  a2[4] = v38;
  a2[5] = v19;
  result = *&v34;
  v21 = v35;
  *a2 = v34;
  a2[1] = v21;
  return result;
}

uint64_t type metadata accessor for LanguageSelectionView(uint64_t a1)
{
  result = qword_2806DFEB8;
  if (!qword_2806DFEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F3F19F0()
{
  result = qword_2806DFE60;
  if (!qword_2806DFE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    sub_26F3B18CC(&qword_2806DFE68, &qword_2806DFE70, &qword_26F4A5C80, MEMORY[0x277CDE5A0]);
    sub_26F3F2FF4(&qword_2806DFE78, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFE60);
  }

  return result;
}

BOOL sub_26F3F1AFC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LanguageSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F348();
  v2 = sub_26F3EB3A4(v4);

  return (v2 & 1) == 0;
}

uint64_t sub_26F3F1B90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for LanguageSelectionView(0);
  v5 = *(a2 + *(v4 + 36));
  swift_getKeyPath();
  *&v14 = v5;
  sub_26F3F2FF4(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v6 = *(v5 + 24);
  v13[2] = a2;

  v7 = sub_26F442FE4(sub_26F3F303C, v13, v6);
  *&v14 = v3;
  v12[2] = &v14;
  v8 = sub_26F4011AC(sub_26F3F2570, v12, v7);

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v14 = *(a2 + *(v4 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
    sub_26F49F348();
    v10 = sub_26F3EB3A4(v13[3]);

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

void sub_26F3F1D58(uint64_t a1)
{
  sub_26F3B6E18(319);
  if (v1 <= 0x3F)
  {
    sub_26F3E17EC();
    if (v2 <= 0x3F)
    {
      sub_26F3F1EA8();
      if (v3 <= 0x3F)
      {
        sub_26F3F1EF8(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LanguageSelectionViewModel(319);
          if (v5 <= 0x3F)
          {
            sub_26F3F1EF8(319, &qword_2806DFEC8, &qword_2806DFE20, &qword_26F4A5C48, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26F3F1EA8()
{
  if (!qword_280F66A08)
  {
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F66A08);
    }
  }
}

void sub_26F3F1EF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_26F3F1F5C()
{
  result = qword_2806DFED0;
  if (!qword_2806DFED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFED8, &unk_26F4A5D30);
    sub_26F3B18CC(&qword_2806DFE40, &qword_2806DFE38, &qword_26F4A5C60, MEMORY[0x277CDDA18]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    sub_26F49E9D8();
    sub_26F3F19F0();
    swift_getOpaqueTypeConformance2();
    sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F50]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFED0);
  }

  return result;
}

uint64_t sub_26F3F2160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3F21C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3F2228()
{
  v1 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F3EF448(v2);
}

uint64_t sub_26F3F2290()
{
  v2 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F3CEEAC;

  return sub_26F3F02A4(v0 + v3);
}

uint64_t sub_26F3F238C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_26F3F2460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF8, &qword_26F4A5D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3F24C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF48, &qword_26F4A5E18);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v5 - v3, &qword_2806DFF48, &qword_26F4A5E18);
  return sub_26F49E5F8();
}

unint64_t sub_26F3F25C4()
{
  result = qword_2806DFF28;
  if (!qword_2806DFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFF20, &qword_26F4A5DD0);
    sub_26F3B18CC(&qword_2806DFF30, &qword_2806DFF38, &qword_26F4A5DD8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF28);
  }

  return result;
}

uint64_t sub_26F3F2674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF18, &qword_26F4A5DC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for LanguageSelectionView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26F49E148();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + v1[8]))
  {
  }

  if (*(v3 + v1[10]))
  {
  }

  if (*(v3 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3F28A0(uint64_t *a1)
{
  v3 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F3F0C28(a1, v4);
}

uint64_t sub_26F3F2920()
{
  v1 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F3F0D78(v0 + v2, v3);
}

unint64_t sub_26F3F29B8()
{
  result = qword_2806DFF60;
  if (!qword_2806DFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF60);
  }

  return result;
}

unint64_t sub_26F3F2A14()
{
  result = qword_2806DFF80;
  if (!qword_2806DFF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFF70, &qword_26F4A5E50);
    sub_26F3F2A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF80);
  }

  return result;
}

unint64_t sub_26F3F2A98()
{
  result = qword_2806DFF88;
  if (!qword_2806DFF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFF90, &qword_26F4A5E60);
    sub_26F3F2B50();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF88);
  }

  return result;
}

unint64_t sub_26F3F2B50()
{
  result = qword_2806DFF98;
  if (!qword_2806DFF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFA0, &qword_26F4A5E68);
    sub_26F3F2BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF98);
  }

  return result;
}

unint64_t sub_26F3F2BDC()
{
  result = qword_2806DFFA8;
  if (!qword_2806DFFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFB0, &unk_26F4A5E70);
    sub_26F3B8C64();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFA8);
  }

  return result;
}

double sub_26F3F2C94(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26F3F2CC8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    sub_26F3F2FF4(a2, type metadata accessor for LanguageSelectionDownloadModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F3F2D64()
{
  result = qword_2806DFFE0;
  if (!qword_2806DFFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFC0, &qword_26F4A5EF0);
    sub_26F3F2DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFE0);
  }

  return result;
}

unint64_t sub_26F3F2DE8()
{
  result = qword_2806DFFE8;
  if (!qword_2806DFFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFF0, &qword_26F4A5F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    sub_26F3F2CC8(&qword_2806DFFD0, &qword_2806DFFD8, &protocol conformance descriptor for LanguageSelectionDownloadModel, MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFE8);
  }

  return result;
}

unint64_t sub_26F3F2EF4()
{
  result = qword_2806DFFF8;
  if (!qword_2806DFFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFC8, &qword_26F4A5EF8);
    sub_26F3F2F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFF8);
  }

  return result;
}

unint64_t sub_26F3F2F78()
{
  result = qword_2806E0000;
  if (!qword_2806E0000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0008, &qword_26F4A5F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0000);
  }

  return result;
}

uint64_t sub_26F3F2FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LanguageSelectionViewModel.prepare()()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0020, &qword_26F4A5F48);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50);
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v1[14] = *(v4 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0030, &qword_26F4A5F58);
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  sub_26F49FBD8();
  v1[20] = sub_26F49FBC8();
  v7 = sub_26F49FB68();
  v1[21] = v7;
  v1[22] = v6;

  return MEMORY[0x2822009F8](sub_26F3F323C, v7, v6);
}

uint64_t sub_26F3F323C()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer;
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask);
    v0[25] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[26] = v4;
      *v4 = v0;
      v4[1] = sub_26F3F3840;

      return MEMORY[0x282200460]();
    }

    else
    {

      v22 = v0[1];

      return v22();
    }
  }

  else
  {
    v5 = v0[16];
    v6 = v0[13];
    v25 = v0[15];
    v7 = v0[11];
    v24 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0040, &qword_26F4A5F60);
    (*(v8 + 104))(v7, *MEMORY[0x277D85778], v9);
    sub_26F49FC18();
    (*(v8 + 8))(v7, v9);
    v26 = *(v1 + 40);
    v10 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_useDedicatedMachPort);
    (*(v6 + 16))(v25, v5, v24);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v25, v24);
    v13 = objc_allocWithZone(MEMORY[0x277CE1B20]);
    v0[6] = sub_26F3F5194;
    v0[7] = v12;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26F3F71F8;
    v0[5] = &block_descriptor_2;
    v14 = _Block_copy(v0 + 2);
    v15 = [v13 initWithTaskHint:v26 useDedicatedMachPort:v10 observations:v14];
    v0[23] = v15;
    _Block_release(v14);

    *(swift_allocObject() + 16) = v15;
    v16 = v15;
    sub_26F49FC28();
    v17 = *(v1 + v2);
    *(v1 + v2) = v16;
    v18 = v16;

    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_26F3F363C;
    v20 = v0[19];
    v21 = v0[8];

    return sub_26F3F9C68(v20, v21);
  }
}

uint64_t sub_26F3F363C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26F3F375C, v3, v2);
}

uint64_t sub_26F3F375C()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26F3F3840()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26F3F3984, v3, v2);
}

uint64_t sub_26F3F3984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F3F3A14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  sub_26F3E718C(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_currentTranslateToLocale, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26F3EDA38(v4);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v11 = sub_26F49D988();
    v13 = v12;
    v14 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
    swift_beginAccess();
    v15 = *(v1 + v14);
    if (*(v15 + 16))
    {
      v16 = sub_26F45FD88(v11, v13);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v16);
        swift_endAccess();
        v20 = *(v6 + 8);

        v20(v10, v5);
        return v19;
      }
    }

    else
    {
    }

    swift_endAccess();
    (*(v6 + 8))(v10, v5);
  }

  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel___observationRegistrar;
  v52 = v1;
  v48 = sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  v49 = v21;
  sub_26F49DB28();

  v22 = *(v1 + 16);
  v50 = v6;
  v42 = v5;
  if (v22 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26F4A00A8())
  {

    if (i)
    {
      v24 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x274390F80](v24, v22);
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_37;
          }

          v19 = *(v22 + 8 * v24 + 32);

          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_20;
          }
        }

        swift_getKeyPath();
        v52 = v19;
        sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
        sub_26F49DB28();

        if (*(v19 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel))
        {
          goto LABEL_35;
        }

        ++v24;
      }

      while (v25 != i);
    }

    v47 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_preferredLanguages);
    v26 = v42;
    v43 = *(v47 + 16);
    if (!v43)
    {
      break;
    }

    v27 = 0;
    v22 = 0;
    v28 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
    v29 = v51;
    v45 = v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v44 = v50 + 16;
    v46 = (v50 + 8);
    while (v27 < *(v47 + 16))
    {
      (*(v50 + 16))(v51, v45 + *(v50 + 72) * v27, v26);
      v30 = sub_26F49D988();
      v32 = v31;
      swift_beginAccess();
      v33 = *(v1 + v28);
      if (*(v33 + 16))
      {
        v34 = sub_26F45FD88(v30, v32);
        v36 = v35;

        if (v36)
        {
          v19 = *(*(v33 + 56) + 8 * v34);
          swift_endAccess();
          v41 = *v46;

          v41(v51, v26);
          return v19;
        }
      }

      else
      {
      }

      swift_endAccess();
      swift_getKeyPath();
      v52 = v1;
      sub_26F49DB28();

      v38 = *(v1 + 16);
      MEMORY[0x28223BE20](v37);
      *(&v42 - 2) = v29;

      v19 = sub_26F4005B8(sub_26F3FABF0, (&v42 - 4), v38);

      (*v46)(v29, v26);
      if (v19)
      {
        return v19;
      }

      if (v43 == ++v27)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_30:
  swift_getKeyPath();
  v52 = v1;
  sub_26F49DB28();

  v39 = *(v1 + 16);
  if (!(v39 >> 62))
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_32;
    }

    return 0;
  }

  result = sub_26F4A00A8();
  if (!result)
  {
    return 0;
  }

LABEL_32:
  if ((v39 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x274390F80](0, v39);
LABEL_35:

    return v19;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v39 + 32);

    return v19;
  }

  __break(1u);
  return result;
}