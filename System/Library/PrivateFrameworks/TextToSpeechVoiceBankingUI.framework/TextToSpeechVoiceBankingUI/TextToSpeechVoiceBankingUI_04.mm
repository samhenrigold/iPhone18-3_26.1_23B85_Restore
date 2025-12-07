uint64_t type metadata accessor for PrepareForCloudView(uint64_t a1)
{
  result = qword_2806CC120;
  if (!qword_2806CC120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE78A14()
{
  v1 = sub_26EF3872C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v6 = swift_allocObject();
  if (v5)
  {
    *(v6 + 16) = xmmword_26EF3D070;
    sub_26EF386EC();
    sub_26EF3871C();
  }

  else
  {
    *(v6 + 16) = xmmword_26EF3C6B0;
    sub_26EF386EC();
  }

  v8[1] = v6;
  sub_26EE7A9C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_26EE78BFC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &countAndFlagsBits - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8020, &qword_26EF3FAC0);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &countAndFlagsBits - v7;
  v9 = sub_26EE17094();
  v10._object = 0x800000026EF45C80;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v10, v11, 0)._countAndFlagsBits;
  v12 = sub_26EE17094();
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x800000026EF45CA0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, v12 & 1, 0);
  v14 = type metadata accessor for PrepareForCloudView(0);
  sub_26EE13B88(v1 + *(v14 + 24), v4, &qword_2806C8018, &qword_26EF41830);
  v27 = v1;
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8028, &qword_26EF3FAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  sub_26EE154C8(&qword_2806C8038, &qword_2806C8028, &qword_26EF3FAC8, MEMORY[0x277CE76B0]);
  sub_26EE79320();
  sub_26EF386BC();
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8050, &qword_26EF3FAD8);
  sub_26EE154C8(&qword_2806C8058, &qword_2806C8020, &qword_26EF3FAC0, MEMORY[0x277CE7668]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  v17 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  v28 = v16;
  v29 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v15;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_26EF3A8EC();
  return (*(v23 + 8))(v8, v19);
}

uint64_t sub_26EE78FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8060, &unk_26EF3FAF0);
  sub_26EE154C8(&qword_2806C8068, &qword_2806C8060, &unk_26EF3FAF0, MEMORY[0x277CE14C0]);

  return sub_26EF387CC();
}

void sub_26EE79088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrepareForCloudView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_26EE17094();
  v8._object = 0xEB0000000045554ELL;
  v9 = v7 & 1;
  v8._countAndFlagsBits = 0x49544E4F435F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v8, v9, 0);
  sub_26EE7A4C8(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_26EE7A530(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  CGSizeMake();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_26EF3A3DC();
  sub_26EF3962C();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v24;
  *(a2 + 72) = 0;
}

uint64_t sub_26EE79224(uint64_t a1)
{
  v2 = sub_26EF3988C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrepareForCloudView(0);
  (*(a1 + *(v6 + 20)))();
  sub_26EE7A5AC(v5);
  sub_26EF3987C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_26EE79320()
{
  result = qword_2806C8040;
  if (!qword_2806C8040)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8030, &qword_26EF3FAD0);
    sub_26EE793AC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8040);
  }

  return result;
}

unint64_t sub_26EE793AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8048;
  if (!qword_2806C8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8048);
  }

  return result;
}

uint64_t sub_26EE79400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_26EF3A0DC();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  sub_26EF397CC();
  v12 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  MEMORY[0x274382230](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26EE796C8@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v1 = sub_26EF387BC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x800000026EF45CD0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, 1, 0);
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x800000026EF45CF0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, 1, 0);
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v17 = sub_26EE17094();
  v18._object = 0x800000026EF45D10;
  v19 = v17 & 1;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v18, v19, 0);
  v20 = sub_26EE17094();
  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x800000026EF45D30;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v20 & 1, 0);
  v22 = [v15 systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v23 = *(v2 + 16);
  v23(v7, v12, v1);
  v24 = v29;
  v23(v29, v10, v1);
  v25 = v30;
  v23(v30, v7, v1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8078, &unk_26EF3FB70);
  v23(&v25[*(v26 + 48)], v24, v1);
  v27 = *(v2 + 8);
  v27(v10, v1);
  v27(v12, v1);
  v27(v24, v1);
  return (v27)(v7, v1);
}

uint64_t sub_26EE79A54(uint64_t a1)
{
  v2 = type metadata accessor for PrepareForCloudView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_26EE17094() & 1;
  v9._countAndFlagsBits = 0x45434E41435F4256;
  v9._object = 0xE90000000000004CLL;
  v17 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v9, v8, 0);
  sub_26EF3960C();
  v10 = sub_26EF3961C();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_26EE7A4C8(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = sub_26EE7A530(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_26EE12538(v13, v14, v15);
  return sub_26EF3AB5C();
}

uint64_t sub_26EE79C44(uint64_t a1)
{
  v15 = sub_26EF39DDC();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_26EF3988C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE13B88(a1, v7, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_26EF3B46C();
    v12 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_26EF3987C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26EE79EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  swift_storeEnumTagMultiPayload();
  v6 = (a3 + *(type metadata accessor for PrepareForCloudView(0) + 20));
  *v6 = a1;
  v6[1] = a2;
  return sub_26EE78A14();
}

uint64_t sub_26EE79F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26EE7A0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26EE7A204(uint64_t a1)
{
  sub_26EE7A300(319, &qword_2806C7570, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE3FF38();
    if (v2 <= 0x3F)
    {
      sub_26EE7A300(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE7A300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EE7A364()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8020, &qword_26EF3FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8050, &qword_26EF3FAD8);
  sub_26EE154C8(&qword_2806C8058, &qword_2806C8020, &qword_26EF3FAC0, MEMORY[0x277CE7668]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE7A4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrepareForCloudView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE7A530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrepareForCloudView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE7A5AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26EE13B88(v2, &v14 - v9, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26EF3988C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26EF3B46C();
    v13 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for PrepareForCloudView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26EF3988C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v8 = sub_26EF3872C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE7A950(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PrepareForCloudView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_26EE7A9C4()
{
  result = qword_2806C8088;
  if (!qword_2806C8088)
  {
    sub_26EF3872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8088);
  }

  return result;
}

uint64_t VBAuthenticationChallengeModel.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t VBAuthenticationChallengeModel.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

id sub_26EE7AA60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(sub_26EF3914C()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t VBAuthenticationChallengeModel.presentAuthenticationChallenge(localizedReason:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26EF3883C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_26EF3B2DC();
  v3[9] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_26EE7ABC8, v6, v5);
}

uint64_t sub_26EE7ABC8()
{
  v1 = v0[4];
  if (*(v1 + 24))
  {

    v2 = v0[1];

    return v2(0);
  }

  else
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    *(v1 + 24) = 1;
    v7 = sub_26EE27DAC();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_26EF3881C();
    v9 = sub_26EF3B43C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26EE01000, v8, v9, "Issuing authentication challenge", v10, 2u);
      MEMORY[0x2743842A0](v10, -1, -1);
    }

    v11 = v0[7];
    v12 = v0[5];
    v13 = v0[6];
    v15 = v0[3];
    v14 = v0[4];
    v16 = v0[2];

    (*(v13 + 8))(v11, v12);
    v17 = sub_26EF3B2CC();
    v0[12] = v17;
    v18 = swift_task_alloc();
    v0[13] = v18;
    v18[2] = v14;
    v18[3] = v16;
    v18[4] = v15;
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_26EE7AE00;
    v20 = MEMORY[0x277D85700];
    v21 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 15, v17, v20, 0xD000000000000030, 0x800000026EF45D60, sub_26EE7B144, v18, v21);
  }
}

uint64_t sub_26EE7AE00()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE7AF60, v3, v2);
}

uint64_t sub_26EE7AF60()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 120);
  *(v1 + 24) = 0;

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_26EE7AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = sub_26EE7AA60();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  sub_26EF3912C();
}

uint64_t sub_26EE7B150(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v41 = sub_26EF38A4C();
  v3 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = sub_26EF3883C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  sub_26EE7B7C8(a1, &v37 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v41;
    (*(v3 + 32))(v8, v18, v41);
    v20 = sub_26EE27DAC();
    (*(v10 + 16))(v13, v20, v9);
    (*(v3 + 16))(v6, v8, v19);
    v21 = sub_26EF3881C();
    v22 = sub_26EF3B45C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v38 = v8;
      v39 = v9;
      v24 = v23;
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136315138;
      v37 = sub_26EF389AC();
      v27 = v26;
      v28 = v6;
      v29 = *(v3 + 8);
      v29(v28, v41);
      v30 = sub_26EE40670(v37, v27, &v43);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_26EE01000, v21, v22, "Authentication challenge failed: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2743842A0](v25, -1, -1);
      v8 = v38;
      MEMORY[0x2743842A0](v24, -1, -1);

      (*(v10 + 8))(v13, v39);
    }

    else
    {

      v36 = v6;
      v29 = *(v3 + 8);
      v29(v36, v41);
      (*(v10 + 8))(v13, v9);
    }

    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
    sub_26EF3B2BC();
    return (v29)(v8, v41);
  }

  else
  {
    v31 = sub_26EE27DAC();
    (*(v10 + 16))(v15, v31, v9);
    v32 = sub_26EF3881C();
    v33 = sub_26EF3B43C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26EE01000, v32, v33, "Authentication challenge succeeded", v34, 2u);
      MEMORY[0x2743842A0](v34, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
    sub_26EF3B2BC();
    return sub_26EE7B838(v18);
  }
}

uint64_t VBAuthenticationChallengeModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_26EE7B6B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE7B74C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EE7B150(a1, v4);
}

uint64_t sub_26EE7B7C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE7B838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26EE7B8A0()
{
  result = qword_2806C6C38;
  if (!qword_2806C6C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806C6C38);
  }

  return result;
}

uint64_t sub_26EE7B8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_26EF3872C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v7 - 8);
  v25[0] = v25 - v8;
  v25[2] = sub_26EE7BDC8();
  v25[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26EF3C6B0;
  sub_26EF386CC();
  v30[0] = v10;
  sub_26EE82EA0(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  (*(v4 + 8))(v6, v3);
  v29 = v2;
  v28 = v2;
  v27 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A8, &unk_26EF3FC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80B0, &qword_26EF3FC50);
  sub_26EE154C8(&qword_2806C80B8, &qword_2806C80A8, &unk_26EF3FC40, MEMORY[0x277CE14C0]);
  sub_26EE7D75C(&qword_2806C8040, &qword_2806C8030, &qword_26EF3FAD0, sub_26EE793AC);
  sub_26EE7D75C(&qword_2806C80C0, &qword_2806C80B0, &qword_26EF3FC50, sub_26EE7D7E0);
  v11 = v26;
  sub_26EF386BC();
  v12 = swift_allocObject();
  v13 = *(v2 + 48);
  v12[3] = *(v2 + 32);
  v12[4] = v13;
  v14 = *(v2 + 80);
  v12[5] = *(v2 + 64);
  v12[6] = v14;
  v15 = *(v2 + 16);
  v12[1] = *v2;
  v12[2] = v15;
  v16 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80F8, &qword_26EF3FC80) + 36));
  sub_26EF3990C();
  sub_26EE201F8(v2, v30);
  sub_26EF3B2EC();
  *v16 = &unk_26EF3FC78;
  v16[1] = v12;
  v17 = *(v2 + 56);
  v18 = swift_allocObject();
  v19 = *(v2 + 48);
  *(v18 + 3) = *(v2 + 32);
  *(v18 + 4) = v19;
  v20 = *(v2 + 80);
  *(v18 + 5) = *(v2 + 64);
  *(v18 + 6) = v20;
  v21 = *(v2 + 16);
  *(v18 + 1) = *v2;
  *(v18 + 2) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8100, &qword_26EF3FC88);
  *(v11 + *(v22 + 52)) = v17;
  v23 = (v11 + *(v22 + 56));
  *v23 = sub_26EE7EA90;
  v23[1] = v18;
  sub_26EE201F8(v2, v30);
}

uint64_t sub_26EE7BDC8()
{
  v1 = v0;
  v2 = sub_26EF3925C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = sub_26EF39DDC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v0 + 24);
  v14 = *(v0 + 16);
  v35 = v14;
  if (v36 == 1)
  {
    v15 = v14;
  }

  else
  {
    v32 = v11;

    sub_26EF3B46C();
    v16 = v6;
    v17 = v8;
    v18 = v1;
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    v1 = v18;
    v8 = v17;
    v6 = v16;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(&v35, &qword_2806C8178, &qword_26EF3FE00);
    (*(v10 + 8))(v13, v32);
    v15 = v34;
  }

  (*(v3 + 16))(v8, v15 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v2);

  (*(v3 + 104))(v6, *MEMORY[0x277D70688], v2);
  sub_26EE82EA0(&qword_2806C8278, MEMORY[0x277D70698], MEMORY[0x277D706A8]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v34 == v33)
  {
    v20 = *(v3 + 8);
    v20(v6, v2);
    v20(v8, v2);
  }

  else
  {
    v21 = sub_26EF3B82C();
    v22 = *(v3 + 8);
    v22(v6, v2);
    v22(v8, v2);

    if ((v21 & 1) == 0)
    {
      v29 = sub_26EE17094();
      v27 = 0x800000026EF45ED0;
      v28 = v29 & 1;
      v26 = 0xD000000000000019;
      return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v26, v28, 0)._countAndFlagsBits;
    }
  }

  v34 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  v23 = v33;
  v24 = sub_26EE17094();
  if (v23 == 1)
  {
    v25 = "VB_PROCESSING_VOICE_TITLE_PV2";
    v26 = 0xD000000000000026;
  }

  else
  {
    v25 = "VB_PROCESSING_VOICE_TITLE";
    v26 = 0xD00000000000001DLL;
  }

  v27 = v25 | 0x8000000000000000;
  v28 = v24 & 1;
  return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v26, v28, 0)._countAndFlagsBits;
}

uint64_t sub_26EE7C1F8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8110, &qword_26EF3FC98);
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8258, &qword_26EF3FF38);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8260, &qword_26EF3FF40);
  MEMORY[0x28223BE20](v32);
  v10 = &v28 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8158, &qword_26EF3FDB8);
  MEMORY[0x28223BE20](v33);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8268, &qword_26EF3FF48);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v36 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  v19 = sub_26EF3AAFC();
  if (v35 == 1)
  {
    *v12 = sub_26EF39F5C();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8108, &qword_26EF3FC90);
    sub_26EE80748(a1, &v12[*(v20 + 44)]);
    sub_26EE13B88(v12, v10, &qword_2806C8158, &qword_26EF3FDB8);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8150, &qword_2806C8158, &qword_26EF3FDB8, MEMORY[0x277CE1198]);
    v21 = sub_26EE154C8(&qword_2806C8140, &qword_2806C8110, &qword_26EF3FC98, MEMORY[0x277CE76B0]);
    *&v36 = v34;
    *(&v36 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    sub_26EE14578(v12, &qword_2806C8158, &qword_26EF3FDB8);
  }

  else
  {
    v29 = v6;
    MEMORY[0x28223BE20](v19);
    *(&v28 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8118, &qword_26EF3FCA0);
    sub_26EE80B64();
    sub_26EF387CC();
    v22 = sub_26EE154C8(&qword_2806C8140, &qword_2806C8110, &qword_26EF3FC98, MEMORY[0x277CE76B0]);
    v23 = v34;
    sub_26EF3A5EC();
    (*(v30 + 8))(v5, v23);
    v24 = v31;
    v25 = v29;
    (*(v31 + 16))(v10, v8, v29);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8150, &qword_2806C8158, &qword_26EF3FDB8, MEMORY[0x277CE1198]);
    *&v36 = v23;
    *(&v36 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    (*(v24 + 8))(v8, v25);
  }

  sub_26EE13B88(v18, v16, &qword_2806C8268, &qword_26EF3FF48);
  sub_26EE13B88(v16, a2, &qword_2806C8268, &qword_26EF3FF48);
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8270, &unk_26EF3FF50) + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_26EE14578(v18, &qword_2806C8268, &qword_26EF3FF48);
  return sub_26EE14578(v16, &qword_2806C8268, &qword_26EF3FF48);
}

void sub_26EE7C7DC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v26[0] = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  v4 = sub_26EE17094();
  if (v27 == 1)
  {
    v5 = v4 & 1;
    v6 = 0x454E4F445F4256;
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEB0000000045554ELL;
    v5 = v4 & 1;
    v6 = 0x49544E4F435F4256;
  }

  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v6, v5, 0);
  v8 = swift_allocObject();
  v9 = v3[1];
  v8[1] = *v3;
  v8[2] = v9;
  v10 = v3[5];
  v12 = v3[2];
  v11 = v3[3];
  v8[5] = v3[4];
  v8[6] = v10;
  v8[3] = v12;
  v8[4] = v11;
  sub_26EE201F8(v3, v26);
  CGSizeMake();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_26EF3A3DC();
  sub_26EF3962C();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 48) = v23;
  *(a1 + 56) = v24;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
}

uint64_t sub_26EE7C94C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  if (*a1)
  {

    VoiceBankingNavigationModel.dismissSheet()();

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      sub_26EF17564();

      v7 = sub_26EF3B30C();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      sub_26EF3B2DC();
      sub_26EE201F8(a1, v18);
      v8 = sub_26EF3B2CC();
      v9 = swift_allocObject();
      v10 = MEMORY[0x277D85700];
      *(v9 + 16) = v8;
      *(v9 + 24) = v10;
      v11 = *(a1 + 48);
      *(v9 + 64) = *(a1 + 32);
      *(v9 + 80) = v11;
      v12 = *(a1 + 80);
      *(v9 + 96) = *(a1 + 64);
      *(v9 + 112) = v12;
      v13 = *(a1 + 16);
      *(v9 + 32) = *a1;
      *(v9 + 48) = v13;
      sub_26EE2C388(0, 0, v4, &unk_26EF3FF30, v9);
    }

    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    v15 = &qword_2806C9BB0;
    v16 = type metadata accessor for VoiceBankingAudioServiceViewModel;
    v17 = &unk_26EF44398;
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    v15 = &qword_2806C6C20;
    v16 = type metadata accessor for VoiceBankingNavigationModel;
    v17 = &protocol conformance descriptor for VoiceBankingNavigationModel;
  }

  sub_26EE82EA0(v15, v16, v17);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE7CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EE7CBF4, v6, v5);
}

uint64_t sub_26EE7CBF4()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26EE7CD18;

    return sub_26EF1262C();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE82EA0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE7CD18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26EE6002C, v4, v3);
}

id sub_26EE7CE58@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = sub_26EF39F4C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v79 = sub_26EF3A2EC();
  v4 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80D8, &qword_26EF3FC60);
  MEMORY[0x28223BE20](v7);
  v9 = (&v67 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81F0, &qword_26EF3FE90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80D0, &qword_26EF3FC58);
  v14 = MEMORY[0x28223BE20](v69);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v68 = &v67 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v73 = &v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80B0, &qword_26EF3FC50);
  v76 = *(v22 - 8);
  v77 = v22;
  MEMORY[0x28223BE20](v22);
  v72 = &v67 - v23;
  *v9 = sub_26EF3AE4C();
  v9[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81F8, &qword_26EF3FE98);
  sub_26EE7D990(a1, v9 + *(v25 + 44));
  v26 = sub_26EF3A3DC();
  sub_26EF3962C();
  v27 = v9 + *(v7 + 36);
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_26EF3A2DC();
  v32 = sub_26EE7D8D8();
  sub_26EF3A7DC();
  (*(v4 + 8))(v6, v79);
  sub_26EE14578(v9, &qword_2806C80D8, &qword_26EF3FC60);
  v82 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  LODWORD(v9) = v80;
  v33 = sub_26EE17094();
  v34 = "play.circle.fill";
  if (v9)
  {
    v34 = "VB_PROCESSING_PROGRESS_TRAINING";
  }

  v35._object = (v34 | 0x8000000000000000);
  v36 = v33 & 1;
  v35._countAndFlagsBits = 0xD00000000000001FLL;
  v82 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v35, v36, 0);
  v80 = v7;
  v81 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26EE12538(OpaqueTypeConformance2, v38, v39);
  sub_26EF3A78C();

  (*(v11 + 8))(v13, v10);
  v82 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v80)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    v82 = a1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
    sub_26EF3AAFC();
    result = AXFormatFloatWithPercentage();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v43 = result;
    v40 = sub_26EF3B0FC();
    v41 = v44;
  }

  v82._countAndFlagsBits = v40;
  v82._object = v41;
  v45 = v68;
  sub_26EF39A7C();

  sub_26EE14578(v16, &qword_2806C80D0, &qword_26EF3FC58);
  v46 = v71;
  sub_26EF39EFC();
  v47 = v70;
  sub_26EF39A8C();
  v48 = *(v74 + 8);
  v49 = v75;
  v48(v46, v75);
  sub_26EE14578(v45, &qword_2806C80D0, &qword_26EF3FC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AB0, &unk_26EF3D7E0);
  v50 = swift_allocObject();
  v79 = xmmword_26EF3D070;
  *(v50 + 16) = xmmword_26EF3D070;
  sub_26EF39F2C();
  sub_26EF39EDC();
  v82._countAndFlagsBits = v50;
  sub_26EE82EA0(&qword_2806C6AB8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AC0, qword_26EF3D0B0);
  sub_26EE154C8(&qword_2806C6AC8, &qword_2806C6AC0, qword_26EF3D0B0, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  v51 = v73;
  sub_26EF39A9C();
  v48(v46, v49);
  sub_26EE14578(v47, &qword_2806C80D0, &qword_26EF3FC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8200, &qword_26EF3FEA0);
  inited = swift_initStackObject();
  *(inited + 16) = v79;
  LOBYTE(v46) = sub_26EF3A3CC();
  *(inited + 32) = v46;
  v53 = sub_26EF3A3DC();
  *(inited + 33) = v53;
  v54 = sub_26EF3A3FC();
  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v46)
  {
    v54 = sub_26EF3A3FC();
  }

  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v53)
  {
    v54 = sub_26EF3A3FC();
  }

  _UISolariumEnabled();
  sub_26EF3962C();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v72;
  sub_26EE14D98(v51, v72, &qword_2806C80D0, &qword_26EF3FC58);
  v64 = v77;
  v65 = v63 + *(v77 + 36);
  *v65 = v54;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  v66 = v78;
  sub_26EE14D98(v63, v78, &qword_2806C80B0, &qword_26EF3FC50);
  return (*(v76 + 56))(v66, 0, 1, v64);
}

uint64_t sub_26EE7D75C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE7D7E0()
{
  result = qword_2806C80C8;
  if (!qword_2806C80C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C80D0, &qword_26EF3FC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C80D8, &qword_26EF3FC60);
    sub_26EE7D8D8();
    swift_getOpaqueTypeConformance2();
    sub_26EE82EA0(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C80C8);
  }

  return result;
}

unint64_t sub_26EE7D8D8()
{
  result = qword_2806C80E0;
  if (!qword_2806C80E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C80D8, &qword_26EF3FC60);
    sub_26EE154C8(&qword_2806C80E8, &qword_2806C80F0, &qword_26EF3FC68, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C80E0);
  }

  return result;
}

uint64_t sub_26EE7D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3AF6C();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_26EF3AF4C();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8208, &qword_26EF3FEA8);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v75 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8210, &qword_26EF3FEB0);
  MEMORY[0x28223BE20](v79);
  v78 = &v75 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8218, &qword_26EF3FEB8);
  MEMORY[0x28223BE20](v83);
  v82 = &v75 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8220, &qword_26EF3FEC0);
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95 - 8);
  v76 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8228, &qword_26EF3FEC8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v94 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v75 - v15;
  v103 = sub_26EF3A9CC();
  v16 = _UISolariumEnabled();
  v17 = objc_opt_self();
  v18 = &selRef_systemBlueColor;
  if (!v16)
  {
    v18 = &selRef_systemGreenColor;
  }

  v19 = [v17 *v18];
  sub_26EF3AA5C();
  v102 = sub_26EF3AA2C();

  sub_26EF3979C();
  v20 = v174;
  v98 = v176;
  v99 = v175;
  v21 = v177;
  v97 = v178;
  v22 = v179;
  v23 = sub_26EF3AE4C();
  v100 = v24;
  v101 = v23;
  _UISolariumEnabled();
  _UISolariumEnabled();
  sub_26EF3AE4C();
  sub_26EF3984C();
  v118[0] = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  sub_26EF3AAFC();
  v25 = *&v111[0];
  v93 = sub_26EF3A9CC();
  v26 = _UISolariumEnabled();
  v27 = objc_opt_self();
  if (v26)
  {
    v28 = &selRef_systemBlueColor;
  }

  else
  {
    v28 = &selRef_systemGreenColor;
  }

  v29 = [v27 *v28];
  v92 = sub_26EF3AA5C();
  v30 = 1;
  sub_26EF3979C();
  v31 = sub_26EF3AE4C();
  v90 = v32;
  v91 = v31;
  _UISolariumEnabled();
  _UISolariumEnabled();
  sub_26EF3AE4C();
  sub_26EF3984C();
  sub_26EF3AF2C();
  v34 = v33;
  v36 = v35;
  v118[0] = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (LOBYTE(v111[0]) == 1)
  {
    sub_26EF3AA8C();
    _UISolariumEnabled();
    v37 = v77;
    sub_26EF3AACC();

    v38 = _UISolariumEnabled();
    v39 = objc_opt_self();
    v40 = &selRef_systemGreenColor;
    if (v38)
    {
      v40 = &selRef_systemBlueColor;
    }

    v41 = [v39 *v40];
    v42 = sub_26EF3AA5C();
    v43 = v78;
    (*(v80 + 32))(v78, v37, v81);
    *(v43 + *(v79 + 36)) = v42;
    v44 = v84;
    sub_26EF3AF3C();
    v45 = v86;
    sub_26EF3AF5C();
    v46 = v76;
    v47 = v82;
    v48 = &v82[*(v83 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F30, &qword_26EF3D7A0);
    sub_26EE82EA0(&qword_2806C6F38, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    v49 = v87;
    sub_26EF39BCC();
    (*(v88 + 8))(v45, v89);
    (*(v85 + 8))(v44, v49);
    *v48 = swift_getKeyPath();
    sub_26EE14D98(v43, v47, &qword_2806C8210, &qword_26EF3FEB0);
    sub_26EE82BB0();
    sub_26EF3A88C();
    sub_26EE14578(v47, &qword_2806C8218, &qword_26EF3FEB8);
    (*(v96 + 32))(v104, v46, v95);
    v30 = 0;
  }

  v50 = v104;
  (*(v96 + 56))(v104, v30, 1, v95);
  v51 = v50;
  v52 = v94;
  sub_26EE13B88(v51, v94, &qword_2806C8228, &qword_26EF3FEC8);
  *&v105 = v20;
  *(&v105 + 1) = __PAIR64__(v98, v99);
  *&v106 = v21;
  *(&v106 + 1) = v97;
  *&v107 = v22;
  *(&v107 + 1) = v102;
  LOWORD(v108) = 256;
  *(&v108 + 2) = v172;
  WORD3(v108) = v173;
  *(&v108 + 1) = v103;
  LOWORD(v109) = 256;
  WORD3(v109) = v171;
  *(&v109 + 2) = v170;
  *(&v109 + 1) = v101;
  *v110 = v100;
  *&v110[40] = v169;
  *&v110[24] = v168;
  *&v110[8] = v167;
  v53 = v105;
  v54 = v106;
  v55 = v108;
  *(a2 + 32) = v107;
  *(a2 + 48) = v55;
  *a2 = v53;
  *(a2 + 16) = v54;
  v56 = v109;
  v57 = *v110;
  v58 = *&v110[16];
  v59 = *&v110[32];
  *(a2 + 128) = *&v110[48];
  *(a2 + 96) = v58;
  *(a2 + 112) = v59;
  *(a2 + 64) = v56;
  *(a2 + 80) = v57;
  *&v111[0] = 0;
  *(&v111[0] + 1) = v25;
  v111[1] = v164;
  v111[2] = v165;
  v61 = v92;
  v60 = v93;
  *&v112 = v166;
  *(&v112 + 1) = v92;
  LOWORD(v113) = 256;
  *(&v113 + 2) = v162;
  WORD3(v113) = v163;
  *(&v113 + 1) = 0;
  *&v114 = v25;
  *(&v114 + 1) = v93;
  LOWORD(v115) = 256;
  WORD3(v115) = v161;
  *(&v115 + 2) = v160;
  v63 = v90;
  v62 = v91;
  *(&v115 + 1) = v91;
  *&v116[0] = v90;
  *(v116 + 8) = v157;
  *(&v116[2] + 8) = v159;
  *(&v116[1] + 8) = v158;
  *(&v116[3] + 1) = 0x4012D97C7F3321D2;
  *&v117 = v34;
  *(&v117 + 1) = v36;
  v64 = v111[0];
  v65 = v164;
  v66 = v165;
  *(a2 + 184) = v112;
  *(a2 + 168) = v66;
  *(a2 + 152) = v65;
  *(a2 + 136) = v64;
  v67 = v113;
  v68 = v114;
  v69 = v115;
  *(a2 + 248) = v116[0];
  *(a2 + 232) = v69;
  *(a2 + 216) = v68;
  *(a2 + 200) = v67;
  v70 = v116[1];
  v71 = v116[2];
  v72 = v117;
  *(a2 + 296) = v116[3];
  *(a2 + 312) = v72;
  *(a2 + 264) = v70;
  *(a2 + 280) = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8230, &qword_26EF3FED0);
  sub_26EE13B88(v52, a2 + *(v73 + 64), &qword_2806C8228, &qword_26EF3FEC8);
  sub_26EE13B88(&v105, v118, &qword_2806C8238, &qword_26EF3FED8);
  sub_26EE13B88(v111, v118, &qword_2806C8240, &unk_26EF3FEE0);
  sub_26EE14578(v104, &qword_2806C8228, &qword_26EF3FEC8);
  sub_26EE14578(v52, &qword_2806C8228, &qword_26EF3FEC8);
  *&v118[0] = 0;
  *(&v118[0] + 1) = v25;
  v118[1] = v164;
  v118[2] = v165;
  v119 = v166;
  v120 = v61;
  v121 = 256;
  v122 = v162;
  v123 = v163;
  v124 = 0;
  v125 = v25;
  v126 = v60;
  v127 = 256;
  v129 = v161;
  v128 = v160;
  v130 = v62;
  v131 = v63;
  v132 = v157;
  v133 = v158;
  v134 = v159;
  v135 = 0x4012D97C7F3321D2;
  v136 = v34;
  v137 = v36;
  sub_26EE14578(v118, &qword_2806C8240, &unk_26EF3FEE0);
  v138 = v20;
  v139 = v99;
  v140 = v98;
  v141 = v21;
  v142 = v97;
  v143 = v22;
  v144 = v102;
  v145 = 256;
  v146 = v172;
  v147 = v173;
  v148 = v103;
  v149 = 256;
  v150 = v170;
  v151 = v171;
  v152 = v101;
  v153 = v100;
  v156 = v169;
  v155 = v168;
  v154 = v167;
  return sub_26EE14578(&v138, &qword_2806C8238, &qword_26EF3FED8);
}

uint64_t sub_26EE7E518(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v1[6] = swift_task_alloc();
  v2 = sub_26EF39DDC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[10] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_26EE7E644, v4, v3);
}

uint64_t sub_26EE7E644()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(v0 + 16, &qword_2806C8178, &qword_26EF3FE00);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 32);
    v1 = *(v0 + 40);
  }

  *(v0 + 104) = v4;
  v9 = *(v0 + 48);
  v10 = *(v1 + 48);
  v11 = sub_26EF37EDC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_26EE17094();
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_26EE7E818;
  v14 = *(v0 + 48);

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(v10, v14, v12 & 1);
}

uint64_t sub_26EE7E818()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 48);

  sub_26EE14578(v3, &qword_2806C9CB0, &qword_26EF3DD20);
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26EE7E984, v5, v4);
}

uint64_t sub_26EE7E984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE7E9FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE7E518(v0 + 16);
}

uint64_t sub_26EE7EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_26EF3A30C();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = sub_26EF3883C();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v7 = sub_26EF37EDC();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81D8, &qword_26EF3FE60);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_26EF38DBC();
  v4[37] = v8;
  v9 = *(v8 - 8);
  v4[38] = v9;
  v4[39] = *(v9 + 64);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v10 = sub_26EF39DDC();
  v4[46] = v10;
  v4[47] = *(v10 - 8);
  v4[48] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[49] = sub_26EF3B2CC();
  v12 = sub_26EF3B29C();
  v4[50] = v12;
  v4[51] = v11;

  return MEMORY[0x2822009F8](sub_26EE7EE1C, v12, v11);
}

uint64_t sub_26EE7EE1C()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;
  *(v0 + 416) = v3;
  *(v0 + 145) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 368);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(v0 + 136, &qword_2806C8178, &qword_26EF3FE00);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 152);
  }

  *(v0 + 424) = v4;
  v9 = swift_task_alloc();
  *(v0 + 432) = v9;
  *v9 = v0;
  v9[1] = sub_26EE7EF9C;

  return VoiceBankingSession.refreshModels()();
}

uint64_t sub_26EE7EF9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = *(v3 + 400);
    v5 = *(v3 + 408);
    v6 = sub_26EE7FA5C;
  }

  else
  {

    v4 = *(v3 + 400);
    v5 = *(v3 + 408);
    v6 = sub_26EE7F0B8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EE7F0B8()
{
  v110 = v0;
  v1 = *(v0 + 440);

  v108 = v1;
  result = *(v0 + 440);
  v106 = *(v1 + 16);
  if (!v106)
  {
LABEL_15:

    goto LABEL_22;
  }

  v3 = 0;
  v4 = *(v0 + 304);
  v5 = *(v4 + 80);
  v81 = ~v5;
  v82 = v5;
  v99 = result + ((v5 + 32) & ~v5);
  v6 = *(v0 + 240);
  v87 = (*(v0 + 376) + 8);
  v83 = (v6 + 32);
  v86 = (v6 + 8);
  v89 = *(v0 + 256);
  v91 = *(v0 + 416);
  v101 = v4;
  v104 = (v4 + 8);
  v7 = &qword_2806C9CB0;
  v93 = (v6 + 48);
  v95 = (v6 + 56);
  while (1)
  {
    if (v3 >= *(v108 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = v7;
    v10 = *(v0 + 145);
    v11 = *(v0 + 288);
    v12 = *(v0 + 232);
    v88 = *(v101 + 16);
    v88(*(v0 + 344), v99 + *(v101 + 72) * v3, *(v0 + 296));
    sub_26EF38DAC();
    (*v95)(v11, 0, 1, v12);
    if (v10 == 1)
    {
      v13 = v91;
    }

    else
    {
      v14 = *(v0 + 384);
      v15 = *(v0 + 368);

      sub_26EF3B46C();
      v16 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE14578(v0 + 136, &qword_2806C8178, &qword_26EF3FE00);
      (*v87)(v14, v15);
      v13 = *(v0 + 160);
    }

    v18 = *(v0 + 280);
    v17 = *(v0 + 288);
    v19 = *(v0 + 264);
    v20 = *(v0 + 232);
    v21 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    v22 = v13 + v21;
    v23 = v9;
    sub_26EE13B88(v22, v18, v9, &qword_26EF3DD20);

    v24 = *(v89 + 48);
    sub_26EE13B88(v17, v19, v23, &qword_26EF3DD20);
    v25 = v18;
    v7 = v23;
    sub_26EE13B88(v25, v19 + v24, v23, &qword_26EF3DD20);
    v26 = *v93;
    v27 = (*v93)(v19, 1, v20);
    v28 = *(v0 + 232);
    if (v27 == 1)
    {
      break;
    }

    sub_26EE13B88(*(v0 + 264), *(v0 + 272), v7, &qword_26EF3DD20);
    v29 = v26(v19 + v24, 1, v28);
    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    v32 = *(v0 + 272);
    if (v29 == 1)
    {
      v33 = *(v0 + 232);
      sub_26EE14578(*(v0 + 280), v7, &qword_26EF3DD20);
      sub_26EE14578(v30, v7, &qword_26EF3DD20);
      (*v86)(v32, v33);
      goto LABEL_4;
    }

    v84 = *(v0 + 288);
    v85 = *(v0 + 264);
    v34 = *(v0 + 248);
    v35 = *(v0 + 232);
    (*v83)(v34, v19 + v24, v35);
    sub_26EE82EA0(&qword_2806C81E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v36 = sub_26EF3B0AC();
    v37 = *v86;
    (*v86)(v34, v35);
    sub_26EE14578(v31, v7, &qword_26EF3DD20);
    sub_26EE14578(v84, v7, &qword_26EF3DD20);
    v37(v32, v35);
    sub_26EE14578(v85, v7, &qword_26EF3DD20);
    if (v36)
    {
      goto LABEL_18;
    }

LABEL_5:
    ++v3;
    result = (*v104)(*(v0 + 344), *(v0 + 296));
    if (v106 == v3)
    {
      goto LABEL_15;
    }
  }

  v8 = *(v0 + 288);
  sub_26EE14578(*(v0 + 280), v7, &qword_26EF3DD20);
  sub_26EE14578(v8, v7, &qword_26EF3DD20);
  if (v26(v19 + v24, 1, v28) != 1)
  {
LABEL_4:
    sub_26EE14578(*(v0 + 264), &qword_2806C81D8, &qword_26EF3FE60);
    goto LABEL_5;
  }

  sub_26EE14578(*(v0 + 264), &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_18:
  v38 = *(v0 + 352);
  v39 = *(v0 + 360);
  v40 = *(v0 + 344);
  v100 = *(v0 + 336);
  v102 = *(v0 + 328);
  v42 = *(v0 + 296);
  v41 = *(v0 + 304);
  v43 = *(v0 + 224);
  v44 = *(v0 + 208);
  v96 = *(v0 + 200);

  v45 = *(v41 + 32);
  v45(v38, v40, v42);
  v107 = v45;
  v45(v39, v38, v42);
  v46 = sub_26EE27DAC();
  (*(v44 + 16))(v43, v46, v96);
  v88(v100, v39, v42);
  v88(v102, v39, v42);
  v47 = sub_26EF3881C();
  v48 = sub_26EF3B43C();
  v49 = os_log_type_enabled(v47, v48);
  v51 = *(v0 + 328);
  v50 = *(v0 + 336);
  v52 = *(v0 + 296);
  v53 = *(v0 + 224);
  v55 = *(v0 + 200);
  v54 = *(v0 + 208);
  if (v49)
  {
    v97 = *(v0 + 200);
    v56 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v109 = v92;
    *v56 = 134218242;
    sub_26EF38D4C();
    v58 = v57;
    v59 = *v104;
    (*v104)(v50, v52);
    *(v56 + 4) = v58 * 10.0;
    *(v56 + 12) = 2080;
    v60 = sub_26EF38D7C();
    v90 = v48;
    v62 = v61;
    v103 = v59;
    v59(v51, v52);
    v63 = sub_26EE40670(v60, v62, &v109);

    *(v56 + 14) = v63;
    _os_log_impl(&dword_26EE01000, v47, v90, "ProcessingVoiceView: Refreshed models. Training progress %f - %s", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x2743842A0](v92, -1, -1);
    MEMORY[0x2743842A0](v56, -1, -1);

    (*(v54 + 8))(v53, v97);
  }

  else
  {

    v64 = *v104;
    (*v104)(v51, v52);
    v103 = v64;
    v64(v50, v52);
    (*(v54 + 8))(v53, v55);
  }

  v65 = *(v0 + 360);
  v66 = *(v0 + 312);
  v67 = *(v0 + 320);
  v68 = *(v0 + 296);
  v69 = *(v0 + 192);
  v98 = *(v0 + 184);
  v70 = *(v0 + 168);
  v105 = *(v0 + 176);
  v71 = swift_task_alloc();
  *(v71 + 16) = v70;
  *(v71 + 24) = v65;
  v94 = v65;
  v88(v67, v65, v68);
  v72 = (v82 + 16) & v81;
  v73 = (v72 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v107(v74 + v72, v67, v68);
  v75 = (v74 + v73);
  v76 = v70[1];
  *v75 = *v70;
  v75[1] = v76;
  v77 = v70[5];
  v79 = v70[2];
  v78 = v70[3];
  v75[4] = v70[4];
  v75[5] = v77;
  v75[2] = v79;
  v75[3] = v78;
  sub_26EE201F8(v70, v0 + 16);
  sub_26EF3AEAC();
  sub_26EF3A2FC();
  sub_26EF3991C();

  (*(v98 + 8))(v69, v105);

  v103(v94, v68);
LABEL_22:

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_26EE7FA5C()
{
  v1 = v0[53];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  v5 = sub_26EE27DAC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[56];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "ProcessingVoiceView: failed to refresh models.", v13, 2u);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_26EE7FC48(uint64_t a1, uint64_t a2)
{
  result = sub_26EF38CFC();
  if ((result & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    sub_26EF3AEAC();
    sub_26EF3992C();

    sub_26EF3947C();
    sub_26EF3B57C();

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_26EF3948C();
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t sub_26EE7FD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8168, &qword_26EF3FDF0);
  MEMORY[0x28223BE20](v68);
  v73 = &v61 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8130, &qword_26EF3FCA8);
  MEMORY[0x28223BE20](v69);
  v66 = &v61 - v4;
  v72 = sub_26EF387BC();
  v5 = *(v72 - 8);
  v6 = MEMORY[0x28223BE20](v72);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8170, &qword_26EF3FDF8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v13;
  v14 = sub_26EF3925C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = sub_26EF39DDC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(a1 + 24);
  v26 = *(a1 + 16);
  v75 = v26;
  v70 = v5;
  if (v76 == 1)
  {
    v27 = v26;
  }

  else
  {
    v62 = v23;

    sub_26EF3B46C();
    v28 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(&v75, &qword_2806C8178, &qword_26EF3FE00);
    (*(v22 + 8))(v25, v62);
    v27 = v74;
  }

  (*(v15 + 16))(v20, v27 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v14);

  (*(v15 + 104))(v18, *MEMORY[0x277D70688], v14);
  sub_26EE82EA0(&qword_2806C8180, MEMORY[0x277D70698], MEMORY[0x277D706A0]);
  v29 = sub_26EF3B0AC();
  v30 = *(v15 + 8);
  v30(v18, v14);
  v30(v20, v14);
  v31 = v72;
  if (v29)
  {
    v32 = sub_26EE17094();
    v33._object = 0x800000026EF45D10;
    v34 = v32 & 1;
    v33._countAndFlagsBits = 0xD00000000000001ALL;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v33, v34, 0);
    v35 = sub_26EE17094();
    v36._countAndFlagsBits = 0xD000000000000020;
    v36._object = 0x800000026EF45E40;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v36, v35 & 1, 0);
    v37 = [objc_opt_self() systemBlueColor];
    sub_26EF3AA5C();
    sub_26EF387AC();
    v38 = v70;
    (*(v70 + 16))(v73, v9, v31);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8128, &qword_2806C8130, &qword_26EF3FCA8, MEMORY[0x277CE14C0]);
    sub_26EE82EA0(&qword_2806C8138, MEMORY[0x277CE76A8], MEMORY[0x277CE76A0]);
    sub_26EF3A06C();
    return (*(v38 + 8))(v9, v31);
  }

  else
  {
    if (TTSDeviceSupportsBattery())
    {
      v40._countAndFlagsBits = 0xD00000000000001BLL;
      v40._object = 0x800000026EF45CD0;
      TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v40, 1, 0);
      v41._countAndFlagsBits = 0xD00000000000001DLL;
      v41._object = 0x800000026EF45CF0;
      TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v41, 1, 0);
      v42 = [objc_opt_self() systemBlueColor];
      sub_26EF3AA5C();
      sub_26EF387AC();
      v43 = v9;
      v44 = v70;
      v45 = v67;
      v46 = v43;
      (*(v70 + 32))(v67);
      v47 = 0;
    }

    else
    {
      v47 = 1;
      v46 = v9;
      v44 = v70;
      v45 = v67;
    }

    (*(v44 + 56))(v45, v47, 1, v31);
    v48 = v31;
    v49 = sub_26EE17094();
    v50._object = 0x800000026EF45D10;
    v51 = v49 & 1;
    v50._countAndFlagsBits = 0xD00000000000001ALL;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v50, v51, 0);
    v52 = sub_26EE17094();
    v53._countAndFlagsBits = 0xD00000000000001CLL;
    v53._object = 0x800000026EF45E20;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v53, v52 & 1, 0);
    v54 = [objc_opt_self() systemBlueColor];
    sub_26EF3AA5C();
    v63 = v46;
    sub_26EF387AC();
    v55 = v64;
    sub_26EE13B88(v45, v64, &qword_2806C8170, &qword_26EF3FDF8);
    v56 = *(v44 + 16);
    v57 = v65;
    v56(v65, v46, v48);
    v58 = v66;
    sub_26EE13B88(v55, v66, &qword_2806C8170, &qword_26EF3FDF8);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8188, &qword_26EF3FE08);
    v56((v58 + *(v59 + 48)), v57, v48);
    v60 = *(v44 + 8);
    v60(v57, v48);
    sub_26EE14578(v55, &qword_2806C8170, &qword_26EF3FDF8);
    sub_26EE13B88(v58, v73, &qword_2806C8130, &qword_26EF3FCA8);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8128, &qword_2806C8130, &qword_26EF3FCA8, MEMORY[0x277CE14C0]);
    sub_26EE82EA0(&qword_2806C8138, MEMORY[0x277CE76A8], MEMORY[0x277CE76A0]);
    sub_26EF3A06C();
    sub_26EE14578(v58, &qword_2806C8130, &qword_26EF3FCA8);
    v60(v63, v48);
    return sub_26EE14578(v67, &qword_2806C8170, &qword_26EF3FDF8);
  }
}

uint64_t sub_26EE80748@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = sub_26EF39B6C();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8190, &qword_26EF3FE10);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8198, &qword_26EF3FE18);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  v19 = a1[3];
  v18[3] = a1[2];
  v18[4] = v19;
  v20 = a1[5];
  v18[5] = a1[4];
  v18[6] = v20;
  v21 = a1[1];
  v18[1] = *a1;
  v18[2] = v21;
  sub_26EE201F8(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81A0, &qword_26EF3FE20);
  sub_26EE154C8(&qword_2806C81A8, &qword_2806C81A0, &qword_26EF3FE20, MEMORY[0x277CE1198]);
  sub_26EF3AB4C();
  sub_26EF39B5C();
  sub_26EE154C8(&qword_2806C81B0, &qword_2806C8190, &qword_26EF3FE10, MEMORY[0x277CDF028]);
  sub_26EE82EA0(&qword_2806C6BB8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v22 = v32;
  v23 = v34;
  sub_26EF3A65C();
  (*(v35 + 8))(v6, v23);
  (*(v33 + 8))(v10, v22);
  v24 = *(v12 + 16);
  v24(v15, v17, v11);
  v25 = v36;
  *v36 = 0;
  *(v25 + 8) = 1;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81B8, &qword_26EF3FE28);
  v24(&v26[*(v27 + 48)], v15, v11);
  v28 = &v26[*(v27 + 64)];
  *v28 = 0;
  v28[8] = 1;
  v29 = *(v12 + 8);
  v29(v17, v11);
  return (v29)(v15, v11);
}

unint64_t sub_26EE80B64()
{
  result = qword_2806C8120;
  if (!qword_2806C8120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8118, &qword_26EF3FCA0);
    sub_26EE154C8(&qword_2806C8128, &qword_2806C8130, &qword_26EF3FCA8, MEMORY[0x277CE14C0]);
    sub_26EE82EA0(&qword_2806C8138, MEMORY[0x277CE76A8], MEMORY[0x277CE76A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8120);
  }

  return result;
}

double sub_26EE80C4C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, _BYTE *, uint64_t, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-v8];
  v10 = sub_26EF3B30C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_26EF3B2DC();
  sub_26EE201F8(a1, v18);
  v11 = sub_26EF3B2CC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = a1[3];
  *(v12 + 64) = a1[2];
  *(v12 + 80) = v14;
  v15 = a1[5];
  *(v12 + 96) = a1[4];
  *(v12 + 112) = v15;
  v16 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v16;
  a4(0, 0, v9, a3, v12);

  return result;
}

uint64_t sub_26EE80D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26EF3883C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_26EF37EDC();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81D8, &qword_26EF3FE60);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = sub_26EF38AAC();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = sub_26EF39DDC();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[28] = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  v4[29] = v10;
  v4[30] = v9;

  return MEMORY[0x2822009F8](sub_26EE81030, v10, v9);
}

uint64_t sub_26EE81030()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 248) = v3;
  *(v0 + 49) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(v0 + 40, &qword_2806C8178, &qword_26EF3FE00);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 56);
  }

  *(v0 + 256) = v4;
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_26EE811B0;

  return VoiceBankingSession.fetchVoices()();
}

uint64_t sub_26EE811B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 240);
    v6 = sub_26EE81BD0;
  }

  else
  {

    v4 = *(v3 + 232);
    v5 = *(v3 + 240);
    v6 = sub_26EE812CC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void sub_26EE812CC()
{
  v59 = *(v0 + 272);
  v58 = *(v59 + 16);
  if (!v58)
  {
LABEL_15:

    v36 = *(v0 + 8);

    v36();
    return;
  }

  v1 = 0;
  v2 = *(v0 + 176);
  v56 = v59 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v57 = v2;
  v3 = *(v0 + 112);
  v55 = (v3 + 56);
  v46 = (v3 + 32);
  v49 = (v3 + 8);
  v50 = (*(v0 + 208) + 8);
  v52 = *(v0 + 128);
  v53 = *(v0 + 248);
  v51 = (v2 + 8);
  v4 = &qword_2806C9CB0;
  v54 = (v3 + 48);
  while (1)
  {
    if (v1 >= *(v59 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v4;
    v7 = *(v0 + 49);
    v8 = *(v0 + 160);
    v9 = *(v0 + 104);
    v10 = (*(v57 + 16))(*(v0 + 184), v56 + *(v57 + 72) * v1, *(v0 + 168));
    MEMORY[0x274380B50](v10);
    (*v55)(v8, 0, 1, v9);
    if (v7 == 1)
    {
      v11 = v53;
    }

    else
    {
      v12 = *(v0 + 216);
      v13 = *(v0 + 200);

      sub_26EF3B46C();
      v14 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE14578(v0 + 40, &qword_2806C8178, &qword_26EF3FE00);
      (*v50)(v12, v13);
      v11 = *(v0 + 64);
    }

    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 104);
    v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    v20 = v11 + v19;
    v21 = v6;
    sub_26EE13B88(v20, v16, v6, &qword_26EF3DD20);

    v22 = *(v52 + 48);
    sub_26EE13B88(v15, v17, v21, &qword_26EF3DD20);
    v23 = v16;
    v4 = v21;
    sub_26EE13B88(v23, v17 + v22, v21, &qword_26EF3DD20);
    v24 = *v54;
    v25 = (*v54)(v17, 1, v18);
    v26 = *(v0 + 104);
    if (v25 == 1)
    {
      break;
    }

    sub_26EE13B88(*(v0 + 136), *(v0 + 144), v4, &qword_26EF3DD20);
    v27 = v24(v17 + v22, 1, v26);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 144);
    if (v27 == 1)
    {
      v31 = *(v0 + 104);
      sub_26EE14578(*(v0 + 152), v4, &qword_26EF3DD20);
      sub_26EE14578(v28, v4, &qword_26EF3DD20);
      (*v49)(v30, v31);
      goto LABEL_4;
    }

    v47 = *(v0 + 160);
    v48 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    (*v46)(v32, v17 + v22, v33);
    sub_26EE82EA0(&qword_2806C81E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v34 = sub_26EF3B0AC();
    v35 = *v49;
    (*v49)(v32, v33);
    sub_26EE14578(v29, v4, &qword_26EF3DD20);
    sub_26EE14578(v47, v4, &qword_26EF3DD20);
    v35(v30, v33);
    sub_26EE14578(v48, v4, &qword_26EF3DD20);
    if (v34)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v1;
    (*v51)(*(v0 + 184), *(v0 + 168));
    if (v58 == v1)
    {
      goto LABEL_15;
    }
  }

  v5 = *(v0 + 160);
  sub_26EE14578(*(v0 + 152), v4, &qword_26EF3DD20);
  sub_26EE14578(v5, v4, &qword_26EF3DD20);
  if (v24(v17 + v22, 1, v26) != 1)
  {
LABEL_4:
    sub_26EE14578(*(v0 + 136), &qword_2806C81D8, &qword_26EF3FE60);
    goto LABEL_5;
  }

  sub_26EE14578(*(v0 + 136), &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_19:
  v37 = *(v0 + 72);
  (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 184), *(v0 + 168));
  v38 = *(v37 + 32);
  *(v0 + 288) = v38;
  if (v38)
  {
    v38;

    v39 = sub_26EF38A6C();
    v41 = v40;
    *(v0 + 296) = v40;
    v42 = sub_26EF38A9C();
    v44 = v43;
    *(v0 + 304) = v43;
    v45 = swift_task_alloc();
    *(v0 + 312) = v45;
    *v45 = v0;
    v45[1] = sub_26EE819A4;

    sub_26EF1E820(v39, v41, v42, v44);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE82EA0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    sub_26EF39BFC();
  }
}

uint64_t sub_26EE819A4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_26EE81CC0;
  }

  else
  {
    v6 = v2[36];

    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_26EE81AD8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EE81AD8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EE81BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE81CC0()
{
  v1 = v0[40];
  v2 = v0[36];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  v6 = sub_26EE27DAC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B45C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[40];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_26EE01000, v8, v9, "ProcessingVoiceView: Unable to preview personal voice. %@", v11, 0xCu);
    sub_26EE14578(v12, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v12, -1, -1);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  v15 = v0[40];
  v16 = v0[24];
  v17 = v0[21];
  v18 = v0[22];
  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[10];

  (*(v20 + 8))(v19, v21);
  (*(v18 + 8))(v16, v17);

  v22 = v0[1];

  return v22();
}

uint64_t sub_26EE81F08@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26EF39F5C();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81C0, &qword_26EF3FE30);
  return sub_26EE81F58(a2 + *(v3 + 44));
}

uint64_t sub_26EE81F58@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81C8, &qword_26EF3FE38);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  sub_26EF3AA8C();
  sub_26EF3AACC();

  v7 = objc_opt_self();
  v8 = [v7 systemBlueColor];
  v9 = sub_26EF3AA5C();
  v10 = [v7 systemBlueColor];
  sub_26EF3AA5C();
  v11 = sub_26EF3AA2C();

  v12 = &v6[*(v2 + 44)];
  *v12 = v9;
  v12[1] = v11;
  v13 = sub_26EE17094() & 1;
  v14._countAndFlagsBits = 0x49564552505F4256;
  v14._object = 0xEA00000000005745;
  v38 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v13, 0);
  sub_26EE12538(v38._countAndFlagsBits, v38._object, v15);
  v16 = sub_26EF3A5DC();
  v18 = v17;
  LOBYTE(v9) = v19;
  v20 = sub_26EF3A5AC();
  v22 = v21;
  v24 = v23;
  sub_26EE12ABC(v16, v18, v9 & 1);

  sub_26EF3A4BC();
  v25 = sub_26EF3A5BC();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_26EE12ABC(v20, v22, v24 & 1);

  v32 = v36;
  sub_26EE13B88(v6, v36, &qword_2806C81C8, &qword_26EF3FE38);
  v33 = v37;
  sub_26EE13B88(v32, v37, &qword_2806C81C8, &qword_26EF3FE38);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81D0, &unk_26EF3FE40) + 48);
  *v34 = v25;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29 & 1;
  *(v34 + 24) = v31;
  sub_26EE13B20(v25, v27, v29 & 1);

  sub_26EE14578(v6, &qword_2806C81C8, &qword_26EF3FE38);
  sub_26EE12ABC(v25, v27, v29 & 1);

  return sub_26EE14578(v32, &qword_2806C81C8, &qword_26EF3FE38);
}

uint64_t sub_26EE82254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C30, &qword_26EF3D3D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EE82EA0(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  v24 = sub_26EF39C1C();
  v7 = v6;
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE82EA0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  v8 = sub_26EF3973C();
  v10 = v9;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE82EA0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  v11 = sub_26EF39C1C();
  v13 = v12;
  sub_26EE7B8A0();
  v14 = [objc_opt_self() mainRunLoop];
  v15 = sub_26EF3B5BC();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_26EF3B59C();

  sub_26EE14578(v5, &qword_2806C6C30, &qword_26EF3D3D0);
  v27 = v16;
  sub_26EF3B58C();
  sub_26EE82EA0(&qword_2806C6C40, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v17 = sub_26EF394CC();

  v26 = 0x3F847AE147AE147BLL;
  sub_26EF3AAEC();
  v18 = v27;
  v19 = v28;
  LOBYTE(v26) = 0;
  result = sub_26EF3AAEC();
  v21 = v27;
  v22 = v28;
  *a2 = v24;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10 & 1;
  *(a2 + 25) = v27;
  *(a2 + 28) = *(&v27 + 3);
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v25;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v21;
  v23 = v26;
  *(a2 + 84) = *(&v26 + 3);
  *(a2 + 81) = v23;
  *(a2 + 88) = v22;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26EE82638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE82680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for TTSVBSiriTTSTrainerTaskMode()
{
  if (!qword_2806C8160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2806C8160);
    }
  }
}

uint64_t sub_26EE827CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE80D90(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE8285C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE7EADC(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE828EC()
{
  v5 = *(*(v0 + 16) + 64);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_26EE13B88(&v7, &v4, &qword_2806C81E8, &unk_26EF3FE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  sub_26EF3AAFC();
  v1 = *&v4;
  sub_26EF38D4C();
  if (v1 > v2)
  {
    v2 = v1;
  }

  v5 = v6;
  v4 = *&v2;
  sub_26EF3AB0C();
  if ((sub_26EF38CFC() & 1) == 0)
  {
    v5 = v6;
    v4 = 0x3FF0000000000000;
    sub_26EF3AB0C();
  }

  return sub_26EE14578(&v6, &qword_2806C6F88, &qword_26EF3D830);
}

uint64_t sub_26EE829F4()
{
  v1 = sub_26EF38DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_26EE05C9C(*(v0 + v5 + 16), *(v0 + v5 + 24));

  return MEMORY[0x2821FE8E8](v0, v5 + 96, v3 | 7);
}

uint64_t sub_26EE82AC0()
{
  v1 = *(sub_26EF38DBC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26EE7FC48(v0 + v2, v3);
}

unint64_t sub_26EE82BB0()
{
  result = qword_2806C8248;
  if (!qword_2806C8248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8218, &qword_26EF3FEB8);
    sub_26EE82C68();
    sub_26EE154C8(&qword_2806C6F60, &qword_2806C6F30, &qword_26EF3D7A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8248);
  }

  return result;
}

unint64_t sub_26EE82C68()
{
  result = qword_2806C8250;
  if (!qword_2806C8250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8210, &qword_26EF3FEB0);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8250);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  sub_26EE05C9C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  sub_26EE05C9C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_26EE82E10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE7CB5C(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE82EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26EE82F2C(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D76438];
  v3 = sub_26EF3B0BC();
  UIAccessibilityPostNotification(v2, v3);
}

uint64_t sub_26EE82FB8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v37 = a1;
  v36 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v39 = sub_26EF3A07C();
  v24 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v26 = &v34 - v25;
  if (v37)
  {
    v35(v38);
    v27 = *(v18 + 16);
    v27(v23, v21, a5);
    v38 = a8;
    v28 = *(v18 + 8);
    v28(v21, a5);
    v27(v21, v23, a5);
    sub_26EE83348(v21, a5, a4, v40, v41);
    v28(v21, a5);
    v28(v23, a5);
    a8 = v38;
  }

  else
  {
    v29 = v36;
    v30 = *(v36 + 16);
    v30(v16, v38, a4);
    v30(v13, v16, a4);
    sub_26EE83440(v13, a5, a4, v40, v41);
    v31 = *(v29 + 8);
    v31(v13, a4);
    v31(v16, a4);
  }

  v42 = v40;
  v43 = v41;
  v32 = v39;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v26, v32);
  return (*(v24 + 8))(v26, v32);
}

uint64_t sub_26EE83348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26EF3A05C();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_26EF3A06C();
}

uint64_t sub_26EE83440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26EF3A05C();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_26EF3A06C();
}

uint64_t sub_26EE83538(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v10[8] = 0;
    v10[9] = result;
    v3 = MEMORY[0x28223BE20](result);
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = v3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
    v7 = sub_26EF3B27C();
    v8 = sub_26EE83E28();
    return sub_26EE6E328(sub_26EE83714, v10, v6, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  }

  return result;
}

uint64_t sub_26EE83618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  result = sub_26EF3B26C();
  if (a3)
  {
    v14[5] = v9;
    v14[6] = result;
    v14[7] = a3;
    MEMORY[0x28223BE20](result);
    v14[2] = a4;
    v14[3] = a2;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8288, &unk_26EF3FF60);
    v12 = sub_26EE83F44();
    result = sub_26EE83734(sub_26EE83F14, v14, v11, a4, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE83734(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_26EF3B5CC();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_26EF3B1CC();
  v63 = sub_26EF3B76C();
  v58 = sub_26EF3B77C();
  sub_26EF3B74C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_26EF3B1BC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26EF3B5DC();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_26EF3B75C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_26EF3B5DC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_26EF3B75C();
      sub_26EF3B5DC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

unint64_t sub_26EE83E28()
{
  result = qword_2806C8280;
  if (!qword_2806C8280)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F98, &qword_26EF3D860);
    sub_26EE2767C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8280);
  }

  return result;
}

unint64_t sub_26EE83F44()
{
  result = qword_2806C8290;
  if (!qword_2806C8290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8288, &unk_26EF3FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8290);
  }

  return result;
}

uint64_t sub_26EE83FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22[0] = a6;
  v22[1] = a7;
  v24 = a8;
  v23 = sub_26EF387EC();
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82A8, &qword_26EF3FF80);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82F0, &unk_26EF3FFA0);
  sub_26EE84834();
  sub_26EF3AB4C();
  sub_26EF396AC();
  sub_26EE154C8(&qword_2806C82B0, &qword_2806C82A8, &qword_26EF3FF80, MEMORY[0x277CDF028]);
  sub_26EE85E54(&qword_2806C82B8, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  v20 = v23;
  sub_26EF3A66C();
  (*(v12 + 8))(v14, v20);
  return (*(v16 + 8))(v18, v15);
}

uint64_t type metadata accessor for TrayButtonStyle(uint64_t a1)
{
  result = qword_2806CC350;
  if (!qword_2806CC350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26EE842D4()
{
  result = qword_2806C82C8;
  if (!qword_2806C82C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82C0, &qword_26EF3FF88);
    sub_26EE154C8(&qword_2806C82D0, &qword_2806C82D8, &unk_26EF3FF90, MEMORY[0x277CDF028]);
    sub_26EE154C8(&qword_2806C82E0, &qword_2806C7A80, &qword_26EF3EEF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C82C8);
  }

  return result;
}

uint64_t sub_26EE843B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TrayButtonStyle(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82C0, &qword_26EF3FF88);
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-v12];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8320, &qword_26EF3FFB8);
  sub_26EE154C8(&qword_2806C8328, &qword_2806C8320, &qword_26EF3FFB8, MEMORY[0x277CE1138]);
  sub_26EF3AB4C();
  v15 = &v13[*(v11 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
  v17 = *MEMORY[0x277CDF420];
  v18 = sub_26EF396EC();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *v10 = KeyPath;
  v10[8] = 0;
  v28 = 0x402C000000000000;
  sub_26EE8560C(KeyPath, v20, v21);
  sub_26EF397EC();
  sub_26EE842D4();
  sub_26EE85E54(&qword_2806C82E8, type metadata accessor for TrayButtonStyle, &unk_26EF40098);
  sub_26EF3A66C();
  sub_26EE85660(v10);
  return sub_26EE856BC(v13);
}

uint64_t sub_26EE846BC@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_26EF39E4C();
  sub_26EE12538(v4, v5, v6);

  v7 = sub_26EF3A5DC();
  v9 = v8;
  v11 = v10;
  v13 = v12 & 1;
  sub_26EE13B20(v7, v8, v12 & 1);

  sub_26EE12ABC(v7, v9, v13);

  v14 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82F0, &unk_26EF3FFA0) + 36);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_26EF39ECC();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8318, &qword_26EF3FFB0);
  *(v14 + *(result + 36)) = 0;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = v13;
  *(a3 + 64) = v11;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  return result;
}

unint64_t sub_26EE84834()
{
  result = qword_2806C82F8;
  if (!qword_2806C82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82F0, &unk_26EF3FFA0);
    sub_26EE154C8(&qword_2806C8300, &qword_2806C8308, &unk_26EF43760, MEMORY[0x277CE1138]);
    sub_26EE154C8(&qword_2806C8310, &qword_2806C8318, &qword_26EF3FFB0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C82F8);
  }

  return result;
}

uint64_t sub_26EE84918@<X0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83B8, &unk_26EF40140);
  return sub_26EE8497C(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t sub_26EE8497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  MEMORY[0x28223BE20](v42);
  v6 = &v42 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C8, &unk_26EF40150);
  v45 = *(v46 - 8);
  v7 = MEMORY[0x28223BE20](v46);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v42 - v10;
  *&v53[0] = a1;
  *(&v53[0] + 1) = a2;
  sub_26EE12538(v9, v11, v12);

  v13 = sub_26EF3A5DC();
  v15 = v14;
  v17 = v16;
  sub_26EF3A43C();
  v18 = sub_26EF3A5BC();
  v20 = v19;
  v22 = v21;

  sub_26EE12ABC(v13, v15, v17 & 1);

  v23 = sub_26EF3A5AC();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  sub_26EE12ABC(v18, v20, v22 & 1);

  v29 = sub_26EF3A3BC();
  v52 = v15 & 1;
  v51 = 1;
  *&v48 = v23;
  *(&v48 + 1) = v25;
  LOBYTE(v49) = v15 & 1;
  *(&v49 + 1) = v28;
  v50[0] = v29;
  memset(&v50[8], 0, 32);
  v50[40] = 1;
  v30 = *MEMORY[0x277CDF9B8];
  v31 = sub_26EF39A3C();
  (*(*(v31 - 8) + 104))(v6, v30, v31);
  sub_26EE85E54(&qword_2806C83D0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A70, &qword_26EF3D058);
    sub_26EE15444();
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210, MEMORY[0x277D84470]);
    v33 = v43;
    sub_26EF3A73C();
    sub_26EE14578(v6, &qword_2806C83C0, &qword_26EF40210);
    v53[2] = *v50;
    v54[0] = *&v50[16];
    *(v54 + 9) = *&v50[25];
    v53[0] = v48;
    v53[1] = v49;
    sub_26EE14578(v53, &qword_2806C6A70, &qword_26EF3D058);
    v34 = v45;
    v35 = *(v45 + 16);
    v36 = v44;
    v37 = v46;
    v35(v44, v33, v46);
    v38 = v47;
    *v47 = 0;
    *(v38 + 8) = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83E0, &unk_26EF40160);
    v35(v38 + *(v39 + 48), v36, v37);
    v40 = v38 + *(v39 + 64);
    *v40 = 0;
    v40[8] = 1;
    v41 = *(v34 + 8);
    v41(v33, v37);
    return (v41)(v36, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE84E14()
{
  sub_26EF3AE2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8298, &qword_26EF3FF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82A0, &qword_26EF3FF78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82A8, &qword_26EF3FF80);
  sub_26EF387EC();
  sub_26EE154C8(&qword_2806C82B0, &qword_2806C82A8, &qword_26EF3FF80, MEMORY[0x277CDF028]);
  sub_26EE85E54(&qword_2806C82B8, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82C0, &qword_26EF3FF88);
  type metadata accessor for TrayButtonStyle(255);
  sub_26EE842D4();
  sub_26EE85E54(&qword_2806C82E8, type metadata accessor for TrayButtonStyle, &unk_26EF40098);
  swift_getOpaqueTypeConformance2();
  return sub_26EF3AE3C();
}

uint64_t sub_26EE8502C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8340, &qword_26EF40028);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8348, &qword_26EF40030);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  sub_26EF3A26C();
  v15 = sub_26EE85424();
  v16 = sub_26EF3A3BC();
  v17 = &v11[*(v9 + 44)];
  *v17 = v15;
  v17[8] = v16;
  v18 = *v3;
  if (*(v3 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = [objc_opt_self() lightGrayColor];
      v20 = sub_26EF3AA5C();
      goto LABEL_8;
    }
  }

  else
  {

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    v36 = v4;
    v22 = v12;
    v23 = v21;
    sub_26EF3880C();

    v12 = v22;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v18, 0);
    (*(v5 + 8))(v7, v36);
    if (v39 != 1)
    {
      goto LABEL_3;
    }
  }

  if (sub_26EF3A27C())
  {
    v24 = v12;
    v25 = [objc_opt_self() whiteColor];
    v26 = [v25 colorWithAlphaComponent_];

    v12 = v24;
    v20 = sub_26EF3AA5C();
  }

  else
  {
    v20 = sub_26EF3A9EC();
  }

LABEL_8:
  v27 = v20;
  sub_26EE14D98(v11, v14, &qword_2806C8340, &qword_26EF40028);
  *&v14[*(v12 + 36)] = v27;
  type metadata accessor for TrayButtonStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  sub_26EF397FC();
  v28 = v38;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8350, &qword_26EF40038);
  v30 = v37;
  v31 = (v37 + *(v29 + 36));
  v32 = *(sub_26EF39B7C() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_26EF39ECC();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = v28;
  v31[1] = v28;
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8358, &qword_26EF40040) + 36)) = 256;
  return sub_26EE14D98(v14, v30, &qword_2806C8348, &qword_26EF40030);
}

uint64_t sub_26EE85424()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = [objc_opt_self() systemExtraLightGrayColor];
      return sub_26EF3AA5C();
    }
  }

  else
  {

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v12[15] != 1)
    {
      goto LABEL_3;
    }
  }

  v8 = sub_26EF3A27C();
  v9 = [objc_opt_self() systemBlueColor];
  if (v8)
  {
    v10 = v9;
    [v9 colorWithAlphaComponent_];
  }

  return sub_26EF3AA5C();
}

unint64_t sub_26EE8560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8330;
  if (!qword_2806C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8330);
  }

  return result;
}

uint64_t sub_26EE85660(uint64_t a1)
{
  v2 = type metadata accessor for TrayButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE856BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82C0, &qword_26EF3FF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE85780(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EE85848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EE858F4(uint64_t a1)
{
  sub_26EE85978();
  if (v1 <= 0x3F)
  {
    sub_26EE859C8(319, v1, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EE85978()
{
  if (!qword_2806C8360)
  {
    v0 = sub_26EF3972C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8360);
    }
  }
}

void sub_26EE859C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_2806C8368)
  {
    sub_26EE8560C(0, a2, a3);
    v3 = sub_26EF3980C();
    if (!v4)
    {
      atomic_store(v3, &qword_2806C8368);
    }
  }
}

unint64_t sub_26EE85A28()
{
  result = qword_2806C8370;
  if (!qword_2806C8370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8378, &qword_26EF40128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82A8, &qword_26EF3FF80);
    sub_26EF387EC();
    sub_26EE154C8(&qword_2806C82B0, &qword_2806C82A8, &qword_26EF3FF80, MEMORY[0x277CDF028]);
    sub_26EE85E54(&qword_2806C82B8, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82C0, &qword_26EF3FF88);
    type metadata accessor for TrayButtonStyle(255);
    sub_26EE842D4();
    sub_26EE85E54(&qword_2806C82E8, type metadata accessor for TrayButtonStyle, &unk_26EF40098);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8370);
  }

  return result;
}

unint64_t sub_26EE85BFC()
{
  result = qword_2806C8380;
  if (!qword_2806C8380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8350, &qword_26EF40038);
    sub_26EE85CB4();
    sub_26EE154C8(&qword_2806C83B0, &qword_2806C8358, &qword_26EF40040, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8380);
  }

  return result;
}

unint64_t sub_26EE85CB4()
{
  result = qword_2806C8388;
  if (!qword_2806C8388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8348, &qword_26EF40030);
    sub_26EE85D6C();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8388);
  }

  return result;
}

unint64_t sub_26EE85D6C()
{
  result = qword_2806C8390;
  if (!qword_2806C8390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8340, &qword_26EF40028);
    sub_26EE85E54(&qword_2806C8398, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_26EE154C8(&qword_2806C83A0, &qword_2806C83A8, &unk_26EF40130, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8390);
  }

  return result;
}

uint64_t sub_26EE85E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EE85EF8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v78 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v8 = sub_26EF3A2EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8400, &qword_26EF40218);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8408, &qword_26EF40220);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v71 = &v70 - v19;
    v72 = v13;
    v73 = v21;
    v74 = v12;
    v75 = v20;
    v76 = v18;
    v78 = a3;
    v22 = a1;
    v23 = sub_26EF0FE94();
    v77 = v5;
    v82 = v7;
    v83 = v15;
    v80 = v9;
    v81 = v8;
    v79 = v11;
    if (v23)
    {
      v26 = v23;
      v27 = [v23 portName];

      v28 = sub_26EF3B0FC();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v84 = v28;
    v85 = v30;
    sub_26EE12538(v23, v24, v25);
    v31 = sub_26EF3A5DC();
    v33 = v32;
    v35 = v34;
    sub_26EF3A4BC();
    v36 = sub_26EF3A5BC();
    v38 = v37;
    v40 = v39;

    sub_26EE12ABC(v31, v33, v35 & 1);

    sub_26EF3AA4C();
    v41 = sub_26EF3A57C();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_26EE12ABC(v36, v38, v40 & 1);

    v48 = sub_26EF0FE94();

    if (v48)
    {

      v49 = 1.0;
    }

    else
    {
      v49 = 0.0;
    }

    v50 = v82;
    v51 = v79;
    v52 = v80;
    v84 = v41;
    v85 = v43;
    v53 = v45 & 1;
    v86 = v45 & 1;
    v87 = v47;
    v88 = v49;
    sub_26EF3A2DC();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8410, &qword_26EF40228);
    v55 = sub_26EE866BC();
    sub_26EF3A7DC();
    (*(v52 + 8))(v51, v81);
    sub_26EE12ABC(v41, v43, v53);

    v56 = *MEMORY[0x277CDF9A8];
    v57 = sub_26EF39A3C();
    (*(*(v57 - 8) + 104))(v50, v56, v57);
    sub_26EE86740(&qword_2806C83D0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_26EF3B0AC())
    {
      v84 = v54;
      v85 = v55;
      swift_getOpaqueTypeConformance2();
      sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210, MEMORY[0x277D84470]);
      v58 = v83;
      v59 = v71;
      v60 = v74;
      sub_26EF3A73C();
      sub_26EE86788(v50);
      (*(v72 + 8))(v58, v60);
      v62 = v75;
      v61 = v76;
      v63 = *(v75 + 16);
      v64 = v73;
      v63(v73, v59, v76);
      v65 = v78;
      *v78 = 0;
      *(v65 + 8) = 1;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8420, &qword_26EF40230);
      v63(v65 + *(v66 + 48), v64, v61);
      v67 = v65 + *(v66 + 64);
      *v67 = 0;
      v67[8] = 1;
      v68 = *(v62 + 8);
      v68(v59, v61);
      return (v68)(v64, v61);
    }

    __break(1u);
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE86740(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE86574()
{
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE86740(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

  return sub_26EF39C1C();
}

uint64_t sub_26EE86604@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  *a2 = sub_26EF39F5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83E8, qword_26EF40170);
  return sub_26EE85EF8(v5, v4, (a2 + *(v6 + 44)));
}

unint64_t sub_26EE866BC()
{
  result = qword_2806C8418;
  if (!qword_2806C8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8410, &qword_26EF40228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8418);
  }

  return result;
}

uint64_t sub_26EE86740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE86788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VoiceList.voiceFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceList(0) + 28);

  return sub_26EE7354C(v3, a1);
}

uint64_t VoiceList.extraOptions.getter()
{
  type metadata accessor for VoiceList(0);
}

uint64_t sub_26EE8688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VoiceList(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8440, &qword_26EF40260);
  sub_26EF3AB0C();
  v5[0] = 0;
  v5[1] = 0;
  sub_26EE86988(a3, v5);
  sub_26EF3AB0C();
}

uint64_t sub_26EE86988(uint64_t a1, uint64_t *a2)
{
  v28 = type metadata accessor for PickerGroupWithChildren(0);
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v27 = v2;
    v33 = MEMORY[0x277D84F90];
    sub_26EE8EC80(0, v8, 0);
    v9 = v33;
    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v31 = v7;
    v10 = (a1 + v30);
    v29 = *(v5 + 72);
    v32 = a2;
    do
    {
      sub_26EE936C8(v10, v7, type metadata accessor for PickerGroupWithChildren);
      v12 = *a2;
      v11 = a2[1];
      v13 = *(type metadata accessor for VoicePickerGroup(0) + 32);
      if (*(v10 + v13) == 2)
      {

        v14 = sub_26EF37F2C();
        if (!v15)
        {
          v14 = sub_26EF37EFC();
        }

        v16 = v14;
        v17 = v15;
        v7 = v31;
        if (!v11)
        {
LABEL_7:

LABEL_13:
          v7[*(v28 + 24)] = 1;
          goto LABEL_14;
        }
      }

      else
      {
        v16 = *v10;
        v17 = v10[1];

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if (v12 == v16 && v11 == v17)
      {
      }

      else
      {
        v18 = sub_26EF3B82C();

        if ((v18 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      if (*(v10 + v13) == 2)
      {
        v19 = sub_26EF37F2C();
        a2 = v32;
        if (!v20)
        {
          v19 = sub_26EF37EFC();
        }

        v21 = v19;
        v22 = v20;
        v7 = v31;
      }

      else
      {
        v21 = *v10;
        v22 = v10[1];

        a2 = v32;
      }

      *a2 = v21;
      a2[1] = v22;

      v33 = v9;
      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_26EE8EC80((v23 > 1), v24 + 1, 1);
        v9 = v33;
      }

      *(v9 + 16) = v24 + 1;
      v25 = v29;
      sub_26EE93734(v7, v9 + v30 + v24 * v29, type metadata accessor for PickerGroupWithChildren);
      v10 = (v10 + v25);
      --v8;
    }

    while (v8);
  }

  return v9;
}

void *sub_26EE86C68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8470, &qword_26EF40290);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v41 - v4;
  v49 = type metadata accessor for PickerGroupWithChildren(0);
  v42 = *(v49 - 8);
  v5 = MEMORY[0x28223BE20](v49);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = (v1 + *(type metadata accessor for VoiceList(0) + 44));
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[3];
  v16 = *v12;
  v51 = *v12;
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8448, &qword_26EF40268);
  MEMORY[0x274382CF0](v50);
  v18 = v50[0];
  v19 = v50[1];

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v51 = v16;
    v52 = v13;
    v53 = v14;
    v54 = v15;
    MEMORY[0x274382CF0](v50, v17);
    v45 = sub_26EF3B11C();
    v22 = v21;

    v23 = *(a1 + 16);
    if (v23)
    {
      v46 = v22;
      v24 = *(v49 + 20);
      v41 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v25 = a1 + v41;
      v26 = *(v42 + 72);
      v43 = (v42 + 56);
      v44 = v24;
      v42 += 48;
      v27 = MEMORY[0x277D84F90];
      do
      {
        sub_26EE936C8(v25, v11, type metadata accessor for PickerGroupWithChildren);
        v28 = sub_26EE936C8(v11, v7, type metadata accessor for PickerGroupWithChildren);
        v29 = *&v11[v44];
        MEMORY[0x28223BE20](v28);
        v31 = v45;
        v30 = v46;
        *(&v41 - 4) = v11;
        *(&v41 - 3) = v31;
        *(&v41 - 2) = v30;

        v32 = sub_26EE872F4(sub_26EE87464, (&v41 - 6), v29);
        v33 = *(v49 + 20);

        *&v7[v33] = v32;
        v34 = *(v32 + 16);

        if (v34)
        {
          v35 = v47;
          sub_26EE936C8(v7, v47, type metadata accessor for PickerGroupWithChildren);
          v36 = 0;
        }

        else
        {
          v36 = 1;
          v35 = v47;
        }

        v37 = v49;
        (*v43)(v35, v36, 1, v49);
        sub_26EE95DC4(v7, type metadata accessor for PickerGroupWithChildren);
        sub_26EE95DC4(v11, type metadata accessor for PickerGroupWithChildren);
        if ((*v42)(v35, 1, v37) == 1)
        {
          sub_26EE14578(v35, &qword_2806C8470, &qword_26EF40290);
        }

        else
        {
          sub_26EE93734(v35, v48, type metadata accessor for PickerGroupWithChildren);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_26EE8E824(0, v27[2] + 1, 1, v27);
          }

          v39 = v27[2];
          v38 = v27[3];
          if (v39 >= v38 >> 1)
          {
            v27 = sub_26EE8E824((v38 > 1), v39 + 1, 1, v27);
          }

          v27[2] = v39 + 1;
          sub_26EE93734(v48, v27 + v41 + v39 * v26, type metadata accessor for PickerGroupWithChildren);
        }

        v25 += v26;
        --v23;
      }

      while (v23);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    return a1;
  }

  return v27;
}

uint64_t sub_26EE8713C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for VoicePickerGroup(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[1];
  ObjectType = swift_getObjectType();
  v27 = (*(v10 + 40))(ObjectType, v10);
  v28 = v12;
  v13 = sub_26EF37F2C();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x274383240](v13, v15);

  (*(v10 + 32))(ObjectType, v10);
  v16 = *v9;
  v17 = v9[1];

  sub_26EE95DC4(v9, type metadata accessor for VoicePickerGroup);
  MEMORY[0x274383240](v16, v17);

  v18 = sub_26EF3B11C();
  v20 = v19;

  v27 = v18;
  v28 = v20;
  v26[0] = a3;
  v26[1] = a4;
  sub_26EE12538(v21, v22, v23);
  v24 = sub_26EF3B62C();

  return v24 & 1;
}

uint64_t sub_26EE872F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v12 = *(a3 + 16 * v7 + 32);
      v13 = v12;
      swift_unknownObjectRetain();
      v9 = v6(&v13);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v8;
      }

      if (v9)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v14 = v8;
        if ((result & 1) == 0)
        {
          result = sub_26EE7123C(0, *(v8 + 16) + 1, 1);
          v8 = v14;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          result = sub_26EE7123C((v10 > 1), v11 + 1, 1);
          v8 = v14;
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + 16 * v11 + 32) = v12;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    return v8;
  }

  return result;
}

uint64_t sub_26EE87498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26EE8E9FC(a1, a2, a3);

  return sub_26EF39DEC();
}

uint64_t sub_26EE874E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26EE8E9FC(a2, a3, a4);
  result = sub_26EF39DEC();
  *a1 = v6;
  return result;
}

uint64_t sub_26EE87550@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for VoiceList(0);
  v52 = *(v3 - 1);
  v4 = *(v52 + 8);
  MEMORY[0x28223BE20](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86B0, &qword_26EF407E8);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v55 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v47 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86B8, &qword_26EF407F0);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v47 - v11;
  v12 = sub_26EF39DDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86C0, &qword_26EF407F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v53 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v47 - v19;
  v21 = *(v2 + v3[8]);
  if (!*(v21 + 16))
  {
    v24 = 1;
    v25 = v51;
    goto LABEL_8;
  }

  v47[1] = v4;
  v48 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2 + v3[15];
  v23 = *v22;
  LODWORD(v22) = *(v22 + 8);
  v49 = v2;
  if (v22 != 1)
  {

    sub_26EF3B46C();
    v26 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v23, 0);
    (*(v13 + 8))(v15, v12);
    if (v59 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v63 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8718, &qword_26EF40820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8720, &qword_26EF40828);
    sub_26EE154C8(&qword_2806C8728, &qword_2806C8718, &qword_26EF40820, MEMORY[0x277D83980]);
    v59 = MEMORY[0x277CE0BD8];
    v60 = MEMORY[0x277D837D0];
    v61 = MEMORY[0x277CE0BC8];
    v62 = MEMORY[0x277D837E0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26EE962D4(OpaqueTypeConformance2, v28, v29);
    v30 = v50;
    sub_26EF3ACFC();
    v31 = v51;
    (*(v10 + 32))(v20, v30, v51);
    v25 = v31;
    v24 = 0;
    v5 = v48;
    v2 = v49;
    goto LABEL_8;
  }

  if (v23)
  {
    goto LABEL_7;
  }

LABEL_4:
  v24 = 1;
  v5 = v48;
  v2 = v49;
  v25 = v51;
LABEL_8:
  (*(v10 + 56))(v20, v24, 1, v25);
  v32 = (v2 + v3[10]);
  v34 = *v32;
  v33 = v32[1];
  v59 = v34;
  v60 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8440, &qword_26EF40260);
  sub_26EF3AAFC();
  sub_26EE936C8(v2, v5, type metadata accessor for VoiceList);
  v35 = (v52[80] + 16) & ~v52[80];
  v36 = swift_allocObject();
  sub_26EE93734(v5, v36 + v35, type metadata accessor for VoiceList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86C8, &qword_26EF40800);
  sub_26EE154C8(&qword_2806C86D0, &qword_2806C8438, &qword_26EF40258, MEMORY[0x277D83980]);
  sub_26EE96154();
  sub_26EE9429C(&qword_2806C8708, type metadata accessor for PickerGroupWithChildren, &unk_26EF404F4);
  v37 = v54;
  sub_26EF3ACFC();
  v38 = v53;
  sub_26EE13B88(v20, v53, &qword_2806C86C0, &qword_26EF407F8);
  v40 = v55;
  v39 = v56;
  v41 = *(v56 + 16);
  v42 = v57;
  v41(v55, v37, v57);
  v52 = v20;
  v43 = v58;
  sub_26EE13B88(v38, v58, &qword_2806C86C0, &qword_26EF407F8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8710, &qword_26EF40818);
  v41((v43 + *(v44 + 48)), v40, v42);
  v45 = *(v39 + 8);
  v45(v37, v42);
  sub_26EE14578(v52, &qword_2806C86C0, &qword_26EF407F8);
  v45(v40, v42);
  return sub_26EE14578(v38, &qword_2806C86C0, &qword_26EF407F8);
}

uint64_t sub_26EE87CEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  sub_26EE12538(a1, a2, a3);

  result = sub_26EF3A5DC();
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v10;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
  *(a4 + 48) = 1;
  return result;
}

uint64_t sub_26EE87D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8700, &qword_26EF40810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8738, &unk_26EF40830);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86E8, &qword_26EF40808);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  v16 = type metadata accessor for PickerGroupWithChildren(0);
  if (*(a1 + *(v16 + 24)) == 1)
  {
    if (*(a1 + *(type metadata accessor for VoicePickerGroup(0) + 32)) == 2)
    {
      v17 = sub_26EF37F2C();
      if (!v18)
      {
        v17 = sub_26EF37EFC();
      }

      v19 = v17;
      v20 = v18;
    }

    else
    {
      v19 = *a1;
    }

    v25[2] = v19;
    v25[3] = v20;
    MEMORY[0x28223BE20](v20);
    v25[-2] = a1;
    v25[-1] = a2;
    type metadata accessor for PickerGroupView(0);
    v22 = sub_26EE9429C(&qword_2806C86F0, type metadata accessor for PickerGroupView, &unk_26EF404A4);
    sub_26EE12538(v22, v23, v24);
    sub_26EF3AD3C();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_26EE96220(&qword_2806C86E0, &qword_2806C86E8, &qword_26EF40808, MEMORY[0x277CE0BC8]);
    sub_26EE96220(&qword_2806C86F8, &qword_2806C8700, &qword_26EF40810, MEMORY[0x277CE1410]);
    sub_26EF3A06C();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    MEMORY[0x28223BE20](v16);
    v25[-2] = a1;
    v25[-1] = a2;
    type metadata accessor for PickerGroupView(0);
    sub_26EE9429C(&qword_2806C86F0, type metadata accessor for PickerGroupView, &unk_26EF404A4);
    sub_26EF3AD6C();
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_26EE96220(&qword_2806C86E0, &qword_2806C86E8, &qword_26EF40808, MEMORY[0x277CE0BC8]);
    sub_26EE96220(&qword_2806C86F8, &qword_2806C8700, &qword_26EF40810, MEMORY[0x277CE1410]);
    sub_26EF3A06C();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_26EE88220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PickerGroupWithChildren(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE936C8(a1, v9, type metadata accessor for PickerGroupWithChildren);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2 + *(type metadata accessor for VoiceList(0) + 44);
  v14 = *v13;
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  v29 = v14;
  v30 = v16;
  v31 = v15;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8448, &qword_26EF40268);
  MEMORY[0x274382CF0](v28, v17);
  v19 = v28[0];
  v18 = v28[1];

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v21 = v20 != 0;
  v22 = type metadata accessor for PickerGroupView(0);
  v23 = a3 + v22[6];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_26EE936C8(v9, a3, type metadata accessor for PickerGroupWithChildren);
  v24 = (a3 + v22[5]);
  *v24 = v10;
  v24[1] = v11;
  v24[2] = v12;
  *(a3 + v22[8]) = v21;
  v25 = *(*&v9[*(v7 + 28)] + 16) < 7uLL;
  result = sub_26EE95DC4(v9, type metadata accessor for PickerGroupWithChildren);
  v27 = a3 + v22[7];
  *v27 = v25;
  *(v27 + 8) = 0;
  return result;
}

uint64_t sub_26EE883F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8508, &qword_26EF40358);
  v43 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v42 = v40 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8670, &qword_26EF40790);
  v45 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v44 = v40 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8678, &qword_26EF40798);
  MEMORY[0x28223BE20](v46);
  v48 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84D0, &qword_26EF40338);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84C8, &qword_26EF40330);
  MEMORY[0x28223BE20](v47);
  v10 = v40 - v9;
  v11 = sub_26EF39DDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VoiceList(0);
  v40[1] = v15;
  v16 = v2 + *(v15 + 60);
  v17 = *v16;
  if (v16[8] == 1)
  {
    v54 = v17 & 1;
    if ((v17 & 1) == 0)
    {
LABEL_3:
      MEMORY[0x28223BE20](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8680, &qword_26EF407A0);
      sub_26EE154C8(&qword_2806C8690, &qword_2806C8680, &qword_26EF407A0, MEMORY[0x277CE14C0]);
      v18 = sub_26EF3A50C();
      v45 = v40;
      MEMORY[0x28223BE20](v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84D8, &qword_26EF40340);
      sub_26EE154C8(&qword_2806C84E0, &qword_2806C84D0, &qword_26EF40338, MEMORY[0x277CDE5A0]);
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84E8, &qword_26EF40348);
      v20 = sub_26EE154C8(&qword_2806C84F0, &qword_2806C84E8, &qword_26EF40348, MEMORY[0x277CDD7A8]);
      v52 = v19;
      v53 = v20;
      swift_getOpaqueTypeConformance2();
      sub_26EF3A8EC();
      (*(v41 + 8))(v8, v6);
      KeyPath = swift_getKeyPath();
      v22 = &v10[*(v47 + 36)];
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8500, &qword_26EF40350) + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
      sub_26EF3AB1C();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
      (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
      *v22 = KeyPath;
      sub_26EE13B88(v10, v48, &qword_2806C84C8, &qword_26EF40330);
      swift_storeEnumTagMultiPayload();
      sub_26EE93BA4();
      v25 = sub_26EE154C8(&qword_2806C8510, &qword_2806C8508, &qword_26EF40358, MEMORY[0x277CDF038]);
      v52 = v49;
      v53 = v25;
      swift_getOpaqueTypeConformance2();
      sub_26EF3A06C();
      return sub_26EE14578(v10, &qword_2806C84C8, &qword_26EF40330);
    }
  }

  else
  {

    sub_26EF3B46C();
    v27 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v17, 0);
    v15 = (*(v12 + 8))(v14, v11);
    if ((v54 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v41 = sub_26EF39EAC();
  v28 = *v2;
  v29 = v2[1];
  v30 = v2[2];
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v28;
  v31[5] = v29;
  v31[6] = v30;
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v32[5] = v29;
  v32[6] = v30;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78E0, &qword_26EF40680);
  v33 = sub_26EF3AC7C();
  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8680, &qword_26EF407A0);
  sub_26EE9604C();
  sub_26EE154C8(&qword_2806C8690, &qword_2806C8680, &qword_26EF407A0, MEMORY[0x277CE14C0]);
  v34 = v42;
  sub_26EF3AB9C();
  v35 = sub_26EE154C8(&qword_2806C8510, &qword_2806C8508, &qword_26EF40358, MEMORY[0x277CDF038]);
  v36 = v44;
  v37 = v49;
  sub_26EF3A6BC();
  (*(v43 + 8))(v34, v37);
  v38 = v45;
  v39 = v50;
  (v45[2])(v48, v36, v50);
  swift_storeEnumTagMultiPayload();
  sub_26EE93BA4();
  v52 = v37;
  v53 = v35;
  swift_getOpaqueTypeConformance2();
  sub_26EF3A06C();
  return (v38[1])(v36, v39);
}

uint64_t sub_26EE88DA8@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_26EF3AE0C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84E8, &qword_26EF40348);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  type metadata accessor for VoiceList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
  sub_26EF3AAFC();
  (*(v2 + 104))(v5, *MEMORY[0x277CDF0D0], v1);
  v13 = sub_26EF3ADEC();
  v14 = *(v2 + 8);
  v14(v5, v1);
  v14(v7, v1);
  if (v13)
  {
    sub_26EF3A10C();
  }

  else
  {
    sub_26EF3A0CC();
  }

  sub_26EF3964C();
  sub_26EE9429C(&qword_2806C86A8, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
  sub_26EF397CC();
  v15 = sub_26EE154C8(&qword_2806C84F0, &qword_2806C84E8, &qword_26EF40348, MEMORY[0x277CDD7A8]);
  MEMORY[0x274382230](v12, v9, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26EE890E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26EE13B88(a1, &v5 - v3, &qword_2806C86A0, &qword_26EF407E0);
  return sub_26EF39D7C();
}

uint64_t VoiceList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8480, &qword_26EF402C8);
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x28223BE20](v2);
  v71 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8488, &qword_26EF402D0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8490, &qword_26EF402D8);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - v7;
  sub_26EE883F0(&v61 - v7);
  KeyPath = swift_getKeyPath();
  v10 = *(v1 + 24);
  OpaqueTypeConformance2 = v6;
  v11 = &v8[*(v6 + 36)];
  *v11 = KeyPath;
  v11[8] = v10;
  v75 = type metadata accessor for VoiceList(0);
  v12 = *(v75 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v75);
  v66 = v1;
  sub_26EE936C8(v1, &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceList);
  sub_26EF3B2DC();
  v14 = sub_26EF3B2CC();
  v15 = *(v12 + 80);
  v16 = ~v15;
  v17 = (v15 + 32) & ~v15;
  v68 = v13;
  v76 = v15;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v14;
  *(v18 + 24) = v19;
  sub_26EE93734(&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for VoiceList);
  v20 = sub_26EF3B30C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v61 - v23;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v64 = sub_26EF39A1C();
    v65 = &v61;
    v63 = *(v64 - 1);
    MEMORY[0x28223BE20](v64);
    v62 = v20;
    v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v79 = 0;
    *&v79[8] = 0xE000000000000000;
    sub_26EF3B70C();

    *v79 = 0xD00000000000003BLL;
    *&v79[8] = 0x800000026EF45F40;
    v78 = 117;
    v27 = sub_26EF3B7FC();
    v61 = v8;
    MEMORY[0x274383240](v27);

    MEMORY[0x28223BE20](v28);
    v29 = &v61 - v23;
    v30 = &v61 - v23;
    v31 = v62;
    (*(v21 + 16))(v29, v30, v62);
    sub_26EF39A0C();
    (*(v21 + 8))(v24, v31);
    v32 = v77;
    sub_26EE93864(v61, v77);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8498, &qword_26EF40318);
    (*(v63 + 4))(v32 + *(v33 + 36), v26, v64);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8530, &qword_26EF40368);
    v35 = v77;
    v36 = (v77 + *(v34 + 36));
    v37 = sub_26EF3990C();
    (*(v21 + 32))(&v36[*(v37 + 20)], &v61 - v23, v20);
    *v36 = &unk_26EF40310;
    *(v36 + 1) = v18;
    sub_26EE93864(v8, v35);
  }

  v38 = v66;
  v39 = v66 + *(v75 + 48);
  *v79 = *v39;
  *&v79[8] = *(v39 + 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8450, &qword_26EF40270);
  v41 = MEMORY[0x274382CF0](&v78, v40);
  v62 = v78;
  v42 = v68;
  MEMORY[0x28223BE20](v41);
  v64 = type metadata accessor for VoiceList;
  v65 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE936C8(v38, &v61 - v65, type metadata accessor for VoiceList);
  v43 = (v76 + 16) & v16;
  v44 = swift_allocObject();
  v63 = type metadata accessor for VoiceList;
  sub_26EE93734(&v61 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for VoiceList);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84A0, &qword_26EF40320);
  v46 = sub_26EE939E8();
  *v79 = OpaqueTypeConformance2;
  *&v79[8] = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_26EE154C8(&qword_2806C8528, &qword_2806C84A0, &qword_26EF40320, MEMORY[0x277D83B60]);
  v48 = v70;
  v49 = v71;
  v50 = v77;
  sub_26EF3A8FC();

  (*(v69 + 8))(v50, v48);
  v51 = v38 + *(v75 + 44);
  v52 = *v51;
  v54 = *(v51 + 16);
  v53 = *(v51 + 24);
  *v79 = v52;
  *&v79[16] = v54;
  v80 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8448, &qword_26EF40268);
  v56 = MEMORY[0x274382CF0](&v78, v55);
  MEMORY[0x28223BE20](v56);
  v57 = (&v61 - v65);
  sub_26EE936C8(v38, &v61 - v65, v64);
  v58 = swift_allocObject();
  sub_26EE93734(v57, v58 + v43, v63);
  *v79 = v48;
  *&v79[8] = v45;
  *&v79[16] = OpaqueTypeConformance2;
  v80 = v47;
  swift_getOpaqueTypeConformance2();
  v59 = v74;
  sub_26EF3A8FC();

  return (*(v73 + 8))(v49, v59);
}

uint64_t sub_26EE89A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26EE94020(a1, a2, a3);
  sub_26EF39DEC();
  return v4;
}

uint64_t sub_26EE89AB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26EE94020(a2, a3, a4);
  result = sub_26EF39DEC();
  *a1 = v6;
  return result;
}

uint64_t sub_26EE89B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a3;
  v4 = sub_26EF3883C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8660, &qword_26EF40780);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8668, &qword_26EF40788);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = sub_26EF3B2DC();
  v3[17] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v3[18] = v8;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_26EE89D40, v8, v7);
}

uint64_t sub_26EE89D40()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = type metadata accessor for VoiceList(0);
  v0[20] = v5;
  v6 = (v4 + *(v5 + 28));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 8))(v7, v8);
  sub_26EF3B31C();
  (*(v2 + 8))(v1, v3);
  v0[21] = 0;
  v9 = sub_26EF3B2CC();
  v0[22] = v9;
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_26EE89E94;
  v11 = v0[13];
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 4, v9, v12, v11);
}

uint64_t sub_26EE89E94()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26EE89FD8, v3, v2);
}

uint64_t sub_26EE89FD8()
{
  v1 = v0 + 4;
  v2 = v0[4];
  if (v2)
  {
    sub_26EF3866C();

    v3 = sub_26EF3881C();
    v4 = sub_26EF3B44C();
    if (os_log_type_enabled(v3, v4))
    {
      v35 = v4;
      v36 = v0;
      v37 = v0 + 4;
      v5 = -1;
      v6 = swift_slowAlloc();
      v10 = 0;
      v34 = v6;
      *v6 = 134217984;
      v11 = (v2 + 40);
      v0 = -*(v2 + 16);
      while (1)
      {
        if ((v0 + v5) == -1)
        {
          *(v34 + 1) = v10;

          _os_log_impl(&dword_26EE01000, v3, v35, "VoiceList received new voice list from fetcher. Personal voices: %ld", v34, 0xCu);
          MEMORY[0x2743842A0](v34, -1, -1);
          v0 = v36;
          v1 = v37;
          goto LABEL_14;
        }

        if (++v5 >= *(v2 + 16))
        {
          break;
        }

        v12 = v2;
        v13 = v11 + 2;
        v14 = *v11;
        ObjectType = swift_getObjectType();
        v16 = *(v14 + 48);
        swift_unknownObjectRetain();
        v16(ObjectType, v14);
        v17 = sub_26EF3B0BC();

        v18 = TTSVoiceIDHasPersonalVoicePrefix();

        v6 = swift_unknownObjectRelease();
        v19 = __OFADD__(v10, v18);
        v10 += v18;
        v11 = v13;
        v2 = v12;
        if (v19)
        {
          __break(1u);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_14:

      v22 = v0[20];
      v23 = v0[21];
      v24 = v0[6];
      (*(v0[8] + 8))(v0[9], v0[7]);
      v25 = (v24 + *(v22 + 52));
      v27 = *v25;
      v26 = v25[1];
      v0[2] = v27;
      v0[3] = v26;
      v0[5] = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8460, &qword_26EF40280);
      sub_26EF3AB0C();
      sub_26EE8A3A0(v2);
      v29 = v28;

      v30 = sub_26EE86C68(v29);
      v31 = swift_task_alloc();
      v31[2] = v24;
      v31[3] = v29;
      v31[4] = v30;
      sub_26EF3AEAC();
      sub_26EF3992C();

      v0[21] = v23;
      v32 = sub_26EF3B2CC();
      v0[22] = v32;
      v33 = swift_task_alloc();
      v0[23] = v33;
      *v33 = v0;
      v33[1] = sub_26EE89E94;
      v9 = v0[13];
      v8 = MEMORY[0x277D85700];
      v6 = v1;
      v7 = v32;
    }

    return MEMORY[0x2822003E8](v6, v7, v8, v9);
  }

  else
  {
LABEL_9:
    (*(v0[14] + 8))(v0[15], v0[13]);

    v20 = v0[1];

    return v20();
  }
}

void sub_26EE8A3A0(uint64_t a1)
{
  v122 = a1;
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8470, &qword_26EF40290);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v98 - v4;
  v5 = type metadata accessor for VoicePickerGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for PickerGroupWithChildren(0);
  v101 = *(v108 - 8);
  v7 = MEMORY[0x28223BE20](v108);
  v107 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v98 - v9;
  v103 = sub_26EF39DDC();
  v118 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8630, &unk_26EF40750);
  MEMORY[0x28223BE20](v12 - 8);
  v117 = &v98 - v13;
  v127 = sub_26EF37FCC();
  v120 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_26EF37FEC();
  v121 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26EF37F1C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v135 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  *&v130 = &v98 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v113 = &v98 - v23;
  MEMORY[0x28223BE20](v22);
  v129 = &v98 - v24;
  v110 = type metadata accessor for VoiceList(0);
  v25 = *(v110 + 48);
  v112 = v1;
  v26 = v1 + v25;
  v136 = *v26;
  v137 = *(v26 + 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8450, &qword_26EF40270);
  MEMORY[0x274382CF0](&v138, v27);
  v28 = *(v138 + 56);
  v128 = v138 + 56;
  v29 = 1 << *(v138 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v132 = v17 + 16;
  v114 = v17;
  v133 = (v17 + 8);
  v131 = v138;

  v134 = MEMORY[0x277D84FA0];
  v115 = 0;
  v106 = v10;
  v33 = v130;
  if (v31)
  {
    while (1)
    {
      v34 = v2;
LABEL_9:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v114;
      v37 = *(v114 + 16);
      v38 = v129;
      v37(v129, *(v131 + 48) + *(v114 + 72) * (v35 | (v34 << 6)), v16);
      v136 = v134;
      v37(v33, v38, v16);

      v39 = v113;
      sub_26EE91D24(v113, v33);
      v40 = *(v36 + 8);
      v40(v39, v16);
      v41 = sub_26EF37F0C();
      v42 = sub_26EE8C024(v136, v41);

      v40(v38, v16);
      v134 = v42;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v34 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_47:
      v97 = *(v34 - 256);
      goto LABEL_49;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v128 + 8 * v34);
    ++v2;
    if (v31)
    {
      v2 = v34;
      goto LABEL_9;
    }
  }

  v123 = *(v122 + 16);
  if (v123)
  {
    v43 = 0;
    v122 += 32;
    ++v121;
    ++v120;
    v119 = (v114 + 48);
    v116 = (v114 + 32);
    v131 = v134 + 56;
    v99 = (v118 + 8);
    v105 = (v101 + 56);
    v118 = MEMORY[0x277D84F98];
    v100 = (v101 + 48);
    v104 = xmmword_26EF3C6B0;
    v44 = v117;
    while (1)
    {
      v129 = v43;
      v130 = *(v122 + 16 * v43);
      ObjectType = swift_getObjectType();
      v46 = *(&v130 + 1);
      v47 = *(*(&v130 + 1) + 72);
      swift_unknownObjectRetain();
      v48 = v124;
      v128 = ObjectType;
      v47(ObjectType, v46);
      v49 = v126;
      sub_26EF37FDC();
      (*v121)(v48, v125);
      sub_26EF37FBC();
      (*v120)(v49, v127);
      if ((*v119)(v44, 1, v16) == 1)
      {
        swift_unknownObjectRelease();
        sub_26EE14578(v44, &qword_2806C8630, &unk_26EF40750);
      }

      else
      {
        v50 = v135;
        (*v116)(v135, v44, v16);
        v51 = v134;
        if (*(v134 + 16))
        {
          sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
          v52 = sub_26EF3B04C();
          v53 = -1 << *(v51 + 32);
          v54 = v52 & ~v53;
          if (((*(v131 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
LABEL_21:
            swift_unknownObjectRelease();
            (*v133)(v135, v16);
            goto LABEL_38;
          }

          v55 = v46;
          v56 = ~v53;
          v57 = *(v114 + 72);
          v58 = *(v114 + 16);
          v59 = v113;
          while (1)
          {
            v58(v59, *(v134 + 48) + v57 * v54, v16);
            sub_26EE9429C(&qword_2806C8640, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
            v60 = sub_26EF3B0AC();
            (*v133)(v59, v16);
            if (v60)
            {
              break;
            }

            v54 = (v54 + 1) & v56;
            if (((*(v131 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v50 = v135;
        }

        else
        {
          v55 = v46;
        }

        v61 = v112 + *(v110 + 60);
        v62 = *v61;
        if (*(v61 + 8) == 1)
        {
          if ((v62 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_26EF3B46C();
          v63 = sub_26EF3A36C();
          sub_26EF3880C();

          v64 = v102;
          sub_26EF39DCC();
          swift_getAtKeyPath();
          sub_26EE54224(v62, 0);
          (*v99)(v64, v103);
          if (v136 != 1)
          {
            goto LABEL_30;
          }
        }

        (*(v55 + 88))(&v136, v128, v55);
        v44 = v117;
        if (BYTE4(v136) == 1)
        {
LABEL_30:
          v65 = *(v55 + 32);
          v66 = v109;
          v65(v128, v55);
          v67 = VoicePickerGroup.id.getter();
          v69 = v68;
          sub_26EE95DC4(v66, type metadata accessor for VoicePickerGroup);
          if (*(v118 + 16))
          {
            v70 = sub_26EE1FCF4(v67, v69);
            v72 = v71;

            if (v72)
            {
              v73 = v101;
              v74 = v111;
              sub_26EE936C8(*(v118 + 56) + *(v101 + 72) * v70, v111, type metadata accessor for PickerGroupWithChildren);
              v75 = v108;
              (*(v73 + 56))(v74, 0, 1, v108);
              v76 = v106;
              sub_26EE93734(v74, v106, type metadata accessor for PickerGroupWithChildren);
              goto LABEL_36;
            }
          }

          else
          {
          }

          v77 = v111;
          v75 = v108;
          (*v105)(v111, 1, 1, v108);
          v76 = v106;
          v65(v128, v55);
          *(v76 + *(v75 + 20)) = MEMORY[0x277D84F90];
          *(v76 + *(v75 + 24)) = 0;
          if ((*v100)(v77, 1, v75) != 1)
          {
            sub_26EE14578(v111, &qword_2806C8470, &qword_26EF40290);
          }

LABEL_36:
          v78 = *(v75 + 20);
          v79 = *(v76 + v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC0, &qword_26EF3F8A8);
          inited = swift_initStackObject();
          v81 = v130;
          *(inited + 16) = v104;
          *(inited + 32) = v81;
          v136 = v79;
          swift_unknownObjectRetain();

          sub_26EE8EE78(inited);
          v82 = v136;

          v136 = v82;

          v83 = v115;
          sub_26EE8F03C(&v136);
          v34 = &v137 + 8;
          v115 = v83;
          if (v83)
          {
            goto LABEL_47;
          }

          swift_bridgeObjectRelease_n();
          *(v76 + v78) = v136;
          v84 = VoicePickerGroup.id.getter();
          v86 = v85;
          v87 = v107;
          sub_26EE936C8(v76, v107, type metadata accessor for PickerGroupWithChildren);
          v88 = v118;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136 = v88;
          sub_26EE8F420(v87, v84, v86, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();

          (*v133)(v135, v16);
          v118 = v136;
          sub_26EE95DC4(v76, type metadata accessor for PickerGroupWithChildren);
LABEL_38:
          v44 = v117;
          goto LABEL_14;
        }

        (*v133)(v50, v16);
        swift_unknownObjectRelease();
      }

LABEL_14:
      v43 = v129 + 1;
      if (v129 + 1 == v123)
      {
        goto LABEL_40;
      }
    }
  }

  v118 = MEMORY[0x277D84F98];
LABEL_40:

  v91 = v118;
  v92 = *(v118 + 16);
  if (!v92)
  {
    goto LABEL_43;
  }

  v93 = sub_26EE8EB84(*(v118 + 16), 0);
  v94 = sub_26EE93444(&v136, v93 + ((*(v101 + 80) + 32) & ~*(v101 + 80)), v92, v91);
  v95 = v136;

  v90 = sub_26EE74A10(v95);
  if (v94 != v92)
  {
    __break(1u);
LABEL_43:
    v93 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v90);
  *(&v98 - 2) = v112;
  v136 = v93;

  v96 = v115;
  sub_26EE8EF7C(sub_26EE95D94, (&v98 - 4));
  if (!v96)
  {

    return;
  }

  v97 = v96;
LABEL_49:

  __break(1u);
}

double sub_26EE8B3C0(uint64_t a1)
{
  v2 = type metadata accessor for VoiceList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_26EF3B30C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_26EE936C8(a1, v5, type metadata accessor for VoiceList);
  sub_26EF3B2DC();
  v10 = sub_26EF3B2CC();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_26EE93734(v5, v12 + v11, type metadata accessor for VoiceList);
  sub_26EE2C388(0, 0, v8, &unk_26EF40740, v12);

  return result;
}

uint64_t sub_26EE8B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_26EF3B2DC();
  *(v4 + 48) = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE8B638, v6, v5);
}

uint64_t sub_26EE8B638()
{
  v1 = v0[5];

  v2 = (v1 + *(type metadata accessor for VoiceList(0) + 36));
  v3 = *v2;
  v4 = v2[1];
  v0[2] = *v2;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8440, &qword_26EF40260);
  sub_26EF3AAFC();
  v5 = v0[4];
  v0[2] = v3;
  v0[3] = v4;
  sub_26EF3AAFC();
  v6 = sub_26EE86C68(v0[4]);

  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v6;
  sub_26EF3AEAC();
  sub_26EF3992C();

  v8 = v0[1];

  return v8();
}

BOOL sub_26EE8B78C(void *a1, void *a2, uint64_t a3)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v86 - v8;
  v10 = sub_26EF37FEC();
  v93 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v86 - v13;
  v14 = type metadata accessor for VoicePickerGroup(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  sub_26EE936C8(a1, &v86 - v18, type metadata accessor for VoicePickerGroup);
  v20 = sub_26EE936C8(a2, v17, type metadata accessor for VoicePickerGroup);
  v23 = v14[8];
  v24 = v19[v23];
  v25 = v17[v23];
  if (v24 == 2)
  {
    if (v25 == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v96) = v19[v23];
    if (v25 != 2)
    {
      LOBYTE(v94) = v25 & 1;
      sub_26EE2988C(v20, v21, v22);
      v20 = sub_26EF3B0AC();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v96) = v24;
    LOBYTE(v94) = 0;
    sub_26EE2988C(v20, v21, v22);
    v20 = sub_26EF3B0AC();
    if (v20)
    {
      goto LABEL_55;
    }

    if (v25 == 2)
    {
      LODWORD(v87) = 1;
      goto LABEL_12;
    }
  }

  LOBYTE(v96) = v25;
  LOBYTE(v94) = 0;
  sub_26EE2988C(v20, v21, v22);
  v20 = sub_26EF3B0AC();
  if (v20)
  {
    goto LABEL_58;
  }

  if (v24 == 2)
  {
LABEL_14:
    LOBYTE(v96) = v25;
    LOBYTE(v94) = 1;
    sub_26EE2988C(v20, v21, v22);
    if (sub_26EF3B0AC())
    {
      goto LABEL_55;
    }

LABEL_15:
    v26 = v14[7];
    if (v19[v26 + 8] & 1) != 0 || (v17[v26 + 8])
    {
      goto LABEL_17;
    }

    v44 = *&v19[v26];
    v45 = *&v17[v26];
    v46 = (a1 + v26);
    v47 = *(a1 + v26 + 8);
    v48 = (a2 + v26);
    v49 = *(a2 + v26 + 8);
    if (v47)
    {
      if (v49)
      {
LABEL_17:
        v27 = v93[2];
        v28 = v91;
        v27(v91, a1 + v14[6], v10);
        v29 = a2 + v14[6];
        v88 = v10;
        (v27)(v92, v29);
        v30 = sub_26EF37EFC();
        v32 = v31;
        if (v30 == sub_26EF37EFC() && v32 == v33)
        {

LABEL_21:
          v38 = a1[1];
          v96 = *a1;
          v97 = v38;
          v39 = a2[1];
          v94 = *a2;
          v95 = v39;
          sub_26EE12538(v34, v35, v36);
          v40 = sub_26EF3B61C();
          v41 = v93[1];
          v42 = v88;
          v41(v92, v88);
          v41(v28, v42);
LABEL_22:
          sub_26EE95DC4(v17, type metadata accessor for VoicePickerGroup);
          sub_26EE95DC4(v19, type metadata accessor for VoicePickerGroup);
          return v40 == -1;
        }

        v37 = sub_26EF3B82C();

        if (v37)
        {
          goto LABEL_21;
        }

        v50 = sub_26EF37EFC();
        v52 = v51;
        v87 = *(type metadata accessor for VoiceList(0) + 24);
        sub_26EE13B88(v90 + v87, v9, &qword_2806C8430, &qword_26EF40250);
        v53 = v93;
        v54 = v88;
        v86 = v93[6];
        if (v86(v9, 1, v88) == 1)
        {
          sub_26EE14578(v9, &qword_2806C8430, &qword_26EF40250);

LABEL_28:
          v55 = sub_26EF37EFC();
          v57 = v56;
          v58 = v89;
          sub_26EE13B88(v90 + v87, v89, &qword_2806C8430, &qword_26EF40250);
          v59 = v88;
          if (v86(v58, 1, v88) == 1)
          {
            sub_26EE14578(v58, &qword_2806C8430, &qword_26EF40250);

LABEL_30:
            v60 = v91;
            v61 = sub_26EF37F2C();
            if (v62)
            {
              v63 = v61;
            }

            else
            {
              v63 = 0;
            }

            if (v62)
            {
              v64 = v62;
            }

            else
            {
              v64 = 0xE000000000000000;
            }

            v96 = v63;
            v97 = v64;
            v65 = v59;
            v66 = v92;
            v67 = sub_26EF37F2C();
            if (v68)
            {
              v70 = v67;
            }

            else
            {
              v70 = 0;
            }

            if (v68)
            {
              v71 = v68;
            }

            else
            {
              v71 = 0xE000000000000000;
            }

            v94 = v70;
            v95 = v71;
            sub_26EE12538(v67, v68, v69);
            v40 = sub_26EF3B61C();

            v72 = v93[1];
            v72(v66, v65);
            v72(v60, v65);
            goto LABEL_22;
          }

          v78 = v58;
          v79 = sub_26EF37EFC();
          v81 = v80;
          v82 = v93[1];
          v82(v78, v59);
          if (v55 == v79 && v57 == v81)
          {
          }

          else
          {
            v85 = sub_26EF3B82C();

            if ((v85 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v82(v92, v59);
          v82(v91, v59);
          goto LABEL_58;
        }

        v73 = sub_26EF37EFC();
        v75 = v74;
        v76 = v54;
        v77 = v53[1];
        v77(v9, v76);
        if (v50 == v73 && v52 == v75)
        {
        }

        else
        {
          v83 = sub_26EF3B82C();

          if ((v83 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v84 = v88;
        v77(v92, v88);
        v77(v91, v84);
LABEL_55:
        sub_26EE95DC4(v17, type metadata accessor for VoicePickerGroup);
        sub_26EE95DC4(v19, type metadata accessor for VoicePickerGroup);
        return 1;
      }
    }

    else
    {
      if (*v46 != *v48)
      {
        v49 = 1;
      }

      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_26EE95DC4(v17, type metadata accessor for VoicePickerGroup);
    sub_26EE95DC4(v19, type metadata accessor for VoicePickerGroup);
    return v44 < v45;
  }

  LODWORD(v87) = 0;
LABEL_12:
  LOBYTE(v96) = v24;
  LOBYTE(v94) = 1;
  sub_26EE2988C(v20, v21, v22);
  v20 = sub_26EF3B0AC();
  if ((v20 & 1) == 0)
  {
    if (v87)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_58:
  sub_26EE95DC4(v17, type metadata accessor for VoicePickerGroup);
  sub_26EE95DC4(v19, type metadata accessor for VoicePickerGroup);
  return 0;
}

uint64_t sub_26EE8C024(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF37F1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_26EE91D24(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t VoiceList.init(preferredLocale:voiceFetcher:searchText:languages:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a7;
  v50 = a8;
  v43 = a5;
  v44 = a6;
  v45 = a2;
  v46 = a4;
  v42 = a3;
  v47 = a1;
  v48 = a10;
  v11 = sub_26EF3AE0C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v51 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v18 = v54;
  *a9 = v53;
  *(a9 + 8) = v18;
  *(a9 + 24) = 0;
  v19 = type metadata accessor for VoiceList(0);
  v20 = v19[6];
  v21 = sub_26EF37FEC();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = (a9 + v19[9]);
  v23 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v24 = v54;
  *v22 = v53;
  v22[1] = v24;
  v25 = (a9 + v19[10]);
  v51 = v23;
  sub_26EF3AAEC();
  v26 = v54;
  *v25 = v53;
  v25[1] = v26;
  v27 = (a9 + v19[13]);
  v51 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v28 = v54;
  *v27 = v53;
  v27[1] = v28;
  (*(v12 + 104))(v17, *MEMORY[0x277CDF0D8], v11);
  (*(v12 + 16))(v15, v17, v11);
  sub_26EF3AAEC();
  v29 = v11;
  v30 = v45;
  (*(v12 + 8))(v17, v29);
  v31 = a9 + v19[15];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  v32 = v47;
  sub_26EE7354C(v30, a9 + v19[7]);
  sub_26EE94074(v32, a9 + v20);
  v33 = v46;
  if (v46)
  {
    v35 = v43;
    v34 = v44;
    v36 = v42;
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_26EF3AC8C();
    v36 = v53;
    v35 = *(&v54 + 1);
    v33 = v54;
    v34 = v55;
  }

  v37 = (a9 + v19[11]);
  *v37 = v36;
  v37[1] = v33;
  v37[2] = v35;
  v37[3] = v34;
  v38 = (a9 + v19[12]);
  v39 = v50;
  *v38 = v49;
  v38[1] = v39;
  v38[2] = v48;
  __swift_destroy_boxed_opaque_existential_1(v30);
  result = sub_26EE14578(v32, &qword_2806C8430, &qword_26EF40250);
  *(a9 + v19[8]) = v23;
  return result;
}

double VoiceList.init(preferredLocale:voiceFetcher:selection:searchText:languages:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, char *a13)
{
  v59 = a8;
  v65 = a5;
  v66 = a6;
  v67 = a4;
  v68 = a3;
  v71 = a11;
  v72 = a7;
  v73 = a10;
  v64 = a13;
  v58 = a12;
  v16 = sub_26EF3AE0C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v56 - v24;
  v70 = a1;
  sub_26EE13B88(a1, &v56 - v24, &qword_2806C8430, &qword_26EF40250);
  v69 = a2;
  sub_26EE7354C(a2, v79);
  v74 = MEMORY[0x277D84FA0];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v63 = v76;
  v61 = *(&v77 + 1);
  v62 = v77;
  *(a9 + 24) = 0;
  v26 = type metadata accessor for VoiceList(0);
  v27 = v26[6];
  v57 = v27;
  v28 = sub_26EF37FEC();
  (*(*(v28 - 8) + 56))(a9 + v27, 1, 1, v28);
  v29 = (a9 + v26[9]);
  v30 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v31 = v77;
  *v29 = v76;
  v29[1] = v31;
  v32 = (a9 + v26[10]);
  v74 = v30;
  sub_26EF3AAEC();
  v33 = v77;
  *v32 = v76;
  v32[1] = v33;
  v34 = (a9 + v26[13]);
  v74 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v35 = v77;
  *v34 = v76;
  v34[1] = v35;
  (*(v17 + 104))(v22, *MEMORY[0x277CDF0D8], v16);
  (*(v17 + 16))(v20, v22, v16);
  sub_26EF3AAEC();
  (*(v17 + 8))(v22, v16);
  v36 = a9 + v26[15];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = a9 + v26[12];
  *v37 = v58;
  *(v37 + 16) = v64;
  sub_26EE7354C(v79, a9 + v26[7]);
  v38 = v59;
  v64 = v25;
  sub_26EE94074(v25, a9 + v57);
  if (v38)
  {
    v40 = v71;
    v39 = v72;
    v41 = v71;
    v42 = v73;
    v43 = v38;
    v44 = v72;
  }

  else
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_26EF3AC8C();
    v44 = v76;
    v42 = *(&v77 + 1);
    v43 = v77;
    v41 = v78;
    v40 = v71;
    v39 = v72;
  }

  v45 = (a9 + v26[11]);
  *v45 = v44;
  v45[1] = v43;
  v45[2] = v42;
  v45[3] = v41;
  sub_26EF3B2DC();
  sub_26EE940E4(v39, v38, v73, v40);
  v46 = v66;

  v47 = v68;

  v48 = v67;

  v49 = sub_26EF3B2CC();
  v50 = swift_allocObject();
  v51 = MEMORY[0x277D85700];
  v50[2] = v49;
  v50[3] = v51;
  v50[4] = v47;
  v50[5] = v48;
  v52 = v65;
  v50[6] = v65;
  v50[7] = v46;

  v53 = sub_26EF3B2CC();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v51;
  v54[4] = v47;
  v54[5] = v48;
  v54[6] = v52;
  v54[7] = v46;
  sub_26EF3AC7C();

  sub_26EE9414C(v72, v38, v73, v71);
  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_26EE14578(v70, &qword_2806C8430, &qword_26EF40250);
  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_26EE14578(v64, &qword_2806C8430, &qword_26EF40250);

  *a9 = v76;
  result = *&v77;
  *(a9 + 8) = v77;
  *(a9 + v26[8]) = MEMORY[0x277D84F90];
  return result;
}

double VoiceList.init(preferredLocale:voiceFetcher:selection:searchText:languages:extraOptions:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v67 = a7;
  v68 = a1;
  v60 = a5;
  v61 = a6;
  v62 = a4;
  v63 = a3;
  v69 = a2;
  v65 = a8;
  v66 = a11;
  v55 = a10;
  v64 = a14;
  v54 = a13;
  v53 = a12;
  v15 = sub_26EF3AE0C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v70 = MEMORY[0x277D84FA0];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v58 = v73;
  v59 = v72;
  v57 = *(&v73 + 1);
  *(a9 + 24) = 0;
  v22 = type metadata accessor for VoiceList(0);
  v23 = v22[6];
  v24 = sub_26EF37FEC();
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = (a9 + v22[9]);
  v26 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v27 = v73;
  *v25 = v72;
  v25[1] = v27;
  v28 = (a9 + v22[10]);
  v70 = v26;
  sub_26EF3AAEC();
  v29 = v73;
  *v28 = v72;
  v28[1] = v29;
  v30 = (a9 + v22[13]);
  v70 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v31 = v73;
  *v30 = v72;
  v30[1] = v31;
  (*(v16 + 104))(v21, *MEMORY[0x277CDF0D8], v15);
  (*(v16 + 16))(v19, v21, v15);
  sub_26EF3AAEC();
  (*(v16 + 8))(v21, v15);
  v32 = a9 + v22[15];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v33 = a9 + v22[12];
  *v33 = v53;
  *(v33 + 16) = v54;
  sub_26EE7354C(v69, a9 + v22[7]);
  v34 = v65;
  sub_26EE94074(v68, a9 + v23);
  if (v34)
  {
    v36 = v66;
    v35 = v67;
    v37 = v66;
    v38 = v55;
    v39 = v55;
    v40 = v34;
    v41 = v67;
  }

  else
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_26EF3AC8C();
    v41 = v72;
    v39 = *(&v73 + 1);
    v40 = v73;
    v37 = v74;
    v36 = v66;
    v35 = v67;
    v38 = v55;
  }

  v42 = (a9 + v22[11]);
  *v42 = v41;
  v42[1] = v40;
  v42[2] = v39;
  v42[3] = v37;
  sub_26EF3B2DC();
  sub_26EE940E4(v35, v34, v38, v36);
  v43 = v61;

  v44 = v63;

  v45 = v62;

  v46 = sub_26EF3B2CC();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  v47[2] = v46;
  v47[3] = v48;
  v47[4] = v44;
  v47[5] = v45;
  v49 = v60;
  v47[6] = v60;
  v47[7] = v43;

  v50 = sub_26EF3B2CC();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v48;
  v51[4] = v44;
  v51[5] = v45;
  v51[6] = v49;
  v51[7] = v43;
  sub_26EF3AC7C();

  sub_26EE9414C(v67, v65, v38, v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_26EE14578(v68, &qword_2806C8430, &qword_26EF40250);

  *a9 = v72;
  result = *&v73;
  *(a9 + 8) = v73;
  *(a9 + v22[8]) = v64;
  return result;
}

uint64_t sub_26EE8D05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](&v13, v6);
  v7 = v14;
  if (v14)
  {
    v8 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26EF3C6B0;
    *(inited + 32) = v8;
    v10 = inited + 32;
    *(inited + 40) = v7;
    v11 = sub_26EE9592C(inited);
    swift_setDeallocating();
    result = sub_26EE95A18(v10);
  }

  else
  {
    result = sub_26EE9592C(MEMORY[0x277D84F90]);
    v11 = result;
  }

  *a5 = v11;
  return result;
}

uint64_t sub_26EE8D130(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_26EE8D1A8(*a1);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
    return sub_26EF3AC3C();
  }

  return result;
}

uint64_t sub_26EE8D1A8(uint64_t a1)
{
  v2 = sub_26EF3B69C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_26EE959C4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t VoiceList.init(preferredLocale:voiceFetcher:selection:searchText:languages:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a6;
  v54 = a8;
  v46 = a7;
  v47 = a2;
  v59 = a4;
  v60 = a5;
  v57 = a13;
  v58 = a3;
  v55 = a11;
  v56 = a12;
  v51 = a1;
  v52 = a10;
  v14 = sub_26EF3AE0C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v61 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v49 = *(&v63 + 1);
  v50 = v63;
  v48 = v64;
  v21 = type metadata accessor for VoiceList(0);
  v22 = v21[6];
  v23 = sub_26EF37FEC();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = (a9 + v21[9]);
  v25 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v26 = *(&v63 + 1);
  *v24 = v63;
  v24[1] = v26;
  v27 = (a9 + v21[10]);
  v61 = v25;
  sub_26EF3AAEC();
  v28 = *(&v63 + 1);
  *v27 = v63;
  v27[1] = v28;
  v29 = v25;
  v30 = v46;
  v31 = (a9 + v21[13]);
  v61 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v32 = *(&v63 + 1);
  *v31 = v63;
  v31[1] = v32;
  (*(v15 + 104))(v20, *MEMORY[0x277CDF0D8], v14);
  (*(v15 + 16))(v18, v20, v14);
  v33 = v47;
  sub_26EF3AAEC();
  (*(v15 + 8))(v20, v14);
  v34 = a9 + v21[15];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = v51;
  sub_26EE7354C(v33, a9 + v21[7]);
  sub_26EE94074(v35, a9 + v22);
  if (v30)
  {
    v37 = v53;
    v36 = v54;
    *&v63 = v53;
    *(&v63 + 1) = v30;
    v38 = v52;
    v64 = v54;
    v65 = v52;
  }

  else
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_26EF3AC8C();
    v37 = v53;
    v36 = v54;
    v38 = v52;
  }

  sub_26EE940E4(v37, v30, v36, v38);

  sub_26EE9414C(v37, v30, v36, v38);
  v39 = v64;
  v40 = v65;
  v41 = a9 + v21[11];
  *v41 = v63;
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  v42 = (a9 + v21[12]);
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  v42[2] = v57;
  v44 = v59;
  *a9 = v58;
  *(a9 + 8) = v44;
  *(a9 + 16) = v60;
  *(a9 + 24) = 1;
  __swift_destroy_boxed_opaque_existential_1(v33);
  result = sub_26EE14578(v35, &qword_2806C8430, &qword_26EF40250);
  *(a9 + v21[8]) = v29;
  return result;
}

uint64_t VoiceList.ExtraOption.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VoiceList.ExtraOption.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VoiceList.ExtraOption.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VoiceList.ExtraOption.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

TextToSpeechVoiceBankingUI::VoiceList::ExtraOption __swiftcall VoiceList.ExtraOption.init(title:id:)(Swift::String title, Swift::String id)
{
  v2[1] = title;
  *v2 = id;
  result.title = id;
  result.id = title;
  return result;
}

uint64_t sub_26EE8D718@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t VoiceListPicker.init(selectedVoiceId:preferredLocale:fetcher:languages:extraOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v16 = type metadata accessor for VoiceListPicker(0);
  sub_26EE941BC(a5, a9 + v16[5]);
  result = sub_26EE9422C(a6, a9 + v16[6]);
  v18 = (a9 + v16[8]);
  *v18 = a7;
  v18[1] = a8;
  v18[2] = a10;
  *(a9 + v16[7]) = a11;
  return result;
}

uint64_t VoiceListPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF3AE0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v48 = &v44 - v10;
  v12 = type metadata accessor for VoiceListPicker(0);
  sub_26EE13B88(v1 + v12[5], v11, &qword_2806C8430, &qword_26EF40250);
  sub_26EE7354C(v1 + v12[6], v60);
  v13 = *(v1 + 8);
  *v59 = *v1;
  *&v59[8] = v13;
  *&v59[16] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  v47 = v56;
  v49 = v57;
  v14 = v58;
  v51 = *(&v57 + 1);
  v15 = v1 + v12[8];
  *v59 = *v15;
  *&v59[8] = *(v15 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8450, &qword_26EF40270);
  sub_26EF3AC5C();
  v45 = v56;
  v44 = v57;
  v55 = *(v1 + v12[7]);
  v56 = MEMORY[0x277D84FA0];

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v53 = *&v59[8];
  v54 = *v59;
  v52 = *&v59[16];
  *(a1 + 24) = 0;
  v16 = type metadata accessor for VoiceList(0);
  v17 = v16[6];
  v18 = sub_26EF37FEC();
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  v19 = (a1 + v16[9]);
  v20 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v21 = *&v59[8];
  *v19 = *v59;
  v19[1] = v21;
  v22 = (a1 + v16[10]);
  v56 = v20;
  sub_26EF3AAEC();
  v23 = *&v59[8];
  *v22 = *v59;
  v22[1] = v23;
  v24 = (a1 + v16[13]);
  v56 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v25 = *&v59[8];
  *v24 = *v59;
  v24[1] = v25;
  (*(v4 + 104))(v8, *MEMORY[0x277CDF0D8], v3);
  (*(v4 + 16))(v46, v8, v3);
  sub_26EF3AAEC();
  (*(v4 + 8))(v8, v3);
  v26 = a1 + v16[15];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a1 + v16[12];
  *v27 = v45;
  *(v27 + 8) = v44;
  sub_26EE7354C(v60, a1 + v16[7]);
  v28 = v48;
  sub_26EE94074(v48, a1 + v17);
  v56 = 0;
  *&v57 = 0xE000000000000000;
  sub_26EF3AC8C();
  v29 = *&v59[16];
  v30 = *&v59[24];
  v31 = a1 + v16[11];
  *v31 = *v59;
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  sub_26EF3B2DC();

  v32 = v47;

  v33 = v49;

  v34 = sub_26EF3B2CC();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  v35[2] = v34;
  v35[3] = v36;
  v37 = v32;
  v35[4] = v32;
  v35[5] = v33;
  v38 = v51;
  v35[6] = v51;
  v35[7] = v14;

  v39 = sub_26EF3B2CC();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v36;
  v40[4] = v37;
  v40[5] = v33;
  v40[6] = v38;
  v40[7] = v14;
  sub_26EF3AC7C();

  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_26EE14578(v28, &qword_2806C8430, &qword_26EF40250);

  *a1 = *v59;
  *(a1 + 8) = *&v59[8];
  *(a1 + v16[8]) = v55;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8540, &qword_26EF40378);
  v43 = a1 + *(result + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 1;
  return result;
}

uint64_t sub_26EE8DDB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 48))(ObjectType, v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_26EE8DE00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2 + *(type metadata accessor for PickerGroupView(0) + 20);
  v17 = *v6;
  v18 = *(v6 + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  sub_26EF3AC5C();
  v7 = v14;
  v8 = v15;
  v9 = sub_26EEC9124();
  v11 = v10;
  sub_26EE17094();
  v12 = sub_26EE17094();
  sub_26EEC915C(&v17);
  LOBYTE(v15) = v18;
  v14 = v17;
  return sub_26EEC682C(v4, v5, v7, v8, v16, v9, v11 & 1, a3, v12 & 1, &v14);
}

uint64_t sub_26EE8DF08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8550, &qword_26EF40390);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8558, &qword_26EF40398);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for PickerGroupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8560, &qword_26EF403A0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  LODWORD(v14) = *(v2 + 16);
  v34 = v13;
  if (v14 == 1)
  {
    v32 = v7;
    v33 = v3;
    v16 = *(v2 + 8);
    v39 = *v2;
    v40 = v16;
    if (*(v2 + *(v8 + 32)) == 1)
    {
      v37[0] = 1;

      sub_26EF3AC8C();
    }

    else
    {
      v22 = v2 + *(v8 + 28);
      v23 = *v22;
      v24 = *(v22 + 8);
      v37[0] = v23;
      v38 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
      sub_26EF3AB1C();
    }

    v31 = v36;
    sub_26EE936C8(v2, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerGroupView);
    v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v26 = swift_allocObject();
    sub_26EE93734(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PickerGroupView);
    v30 = sub_26EE942E4();
    sub_26EE12538(v30, v27, v28);
    sub_26EF39A2C();
    v29 = v34;
    (*(v12 + 16))(v32, v15, v34);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8578, &qword_2806C8560, &qword_26EF403A0, MEMORY[0x277CDD9E8]);
    sub_26EF3A06C();
    return (*(v12 + 8))(v15, v29);
  }

  else
  {
    v36 = *(v2 + *(type metadata accessor for PickerGroupWithChildren(0) + 20));
    swift_getKeyPath();
    sub_26EE936C8(v2, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerGroupView);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    sub_26EE93734(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PickerGroupView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
    type metadata accessor for VoicePickerPickableView(0);
    sub_26EE154C8(&qword_2806C8568, &qword_2806C8458, &qword_26EF40278, MEMORY[0x277D83980]);
    sub_26EE9429C(&qword_2806C8570, type metadata accessor for VoicePickerPickableView, &protocol conformance descriptor for VoicePickerPickableView);
    v19 = v32;
    sub_26EF3ACEC();
    v20 = v33;
    (*(v33 + 16))(v7, v19, v3);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8578, &qword_2806C8560, &qword_26EF403A0, MEMORY[0x277CDD9E8]);
    sub_26EE942E4();
    sub_26EF3A06C();
    return (*(v20 + 8))(v19, v3);
  }
}

uint64_t sub_26EE8E500(uint64_t a1)
{
  v2 = type metadata accessor for PickerGroupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *(a1 + *(type metadata accessor for PickerGroupWithChildren(0) + 20));
  swift_getKeyPath();
  sub_26EE936C8(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerGroupView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26EE93734(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PickerGroupView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  type metadata accessor for VoicePickerPickableView(0);
  sub_26EE154C8(&qword_2806C8568, &qword_2806C8458, &qword_26EF40278, MEMORY[0x277D83980]);
  sub_26EE9429C(&qword_2806C8570, type metadata accessor for VoicePickerPickableView, &protocol conformance descriptor for VoicePickerPickableView);
  return sub_26EF3ACEC();
}

uint64_t sub_26EE8E718@<X0>(uint64_t *a1@<X8>)
{
  result = VoicePickerGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTSPickerMode.hashValue.getter()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE8E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26EE94618(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *sub_26EE8E824(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8650, &qword_26EF40770);
  v10 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
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

unint64_t sub_26EE8E9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8478;
  if (!qword_2806C8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8478);
  }

  return result;
}

void *sub_26EE8EA50(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC0, &qword_26EF3F8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26EE8EB84(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8650, &qword_26EF40770);
  v4 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26EE8EC80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE8ECA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EE8ECA0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8650, &qword_26EF40770);
  v10 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
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

void *sub_26EE8EE78(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26EE8EA50(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26EE8EF7C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for PickerGroupWithChildren(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_26EE9341C(v5);
  }

  result = sub_26EE8F890(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_26EE8F03C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26EE93430(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26EE8F9CC(v5);
  *a1 = v2;
  return result;
}

void sub_26EE8F0A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PickerGroupWithChildren(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8648, &unk_26EF40760);
  v41 = v4;
  v8 = sub_26EF3B7BC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_26EE93734(v28, v42, type metadata accessor for PickerGroupWithChildren);
      }

      else
      {
        sub_26EE936C8(v28, v42, type metadata accessor for PickerGroupWithChildren);
      }

      sub_26EF3B87C();
      sub_26EF3B16C();
      v29 = sub_26EF3B8CC();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_26EE93734(v42, *(v9 + 56) + v27 * v17, type metadata accessor for PickerGroupWithChildren);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

uint64_t sub_26EE8F420(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26EE1FCF4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PickerGroupWithChildren(0);
      return sub_26EE94558(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PickerGroupWithChildren);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_26EE8F638();
    goto LABEL_7;
  }

  sub_26EE8F0A8(v15, a4 & 1);
  v22 = sub_26EE1FCF4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_26EF3B86C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_26EE8F58C(v12, a2, a3, a1, v18);
}

uint64_t sub_26EE8F58C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PickerGroupWithChildren(0);
  result = sub_26EE93734(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for PickerGroupWithChildren);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_26EE8F638()
{
  v1 = v0;
  v2 = type metadata accessor for PickerGroupWithChildren(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8648, &unk_26EF40760);
  v4 = *v0;
  v5 = sub_26EF3B7AC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_26EE936C8(*(v4 + 56) + v26, v30, type metadata accessor for PickerGroupWithChildren);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_26EE93734(v25, *(v27 + 56) + v26, type metadata accessor for PickerGroupWithChildren);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

uint64_t sub_26EE8F890(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_26EF3B7EC();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PickerGroupWithChildren(0);
        v9 = sub_26EF3B24C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
      v11[0] = (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));
      v11[1] = v8;
      sub_26EE8FED8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_26EE8FAD4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_26EE8F9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
        v5 = sub_26EF3B24C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26EE909D0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_26EE8FD4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EE8FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for PickerGroupWithChildren(0);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_26EE936C8(v22, v17, type metadata accessor for PickerGroupWithChildren);
      sub_26EE936C8(v23, v13, type metadata accessor for PickerGroupWithChildren);
      v24 = v37(v17, v13);
      sub_26EE95DC4(v13, type metadata accessor for PickerGroupWithChildren);
      result = sub_26EE95DC4(v17, type metadata accessor for PickerGroupWithChildren);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_26EE93734(v22, v35, type metadata accessor for PickerGroupWithChildren);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26EE93734(v25, v23, type metadata accessor for PickerGroupWithChildren);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26EE8FD4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v19 = a3;
    v6 = *(v22 + 16 * a3);
    v17 = v5;
    v18 = v4;
    while (1)
    {
      v20 = *(&v6 + 1);
      v7 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v20 + 40);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9(ObjectType, v20);
      v10 = swift_getObjectType();
      v21 = (*(v7 + 40))(v10, v7);
      sub_26EE12538(v21, v11, v12);
      v13 = sub_26EF3B61C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v13 != -1)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 16;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v14;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EE8FED8(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for PickerGroupWithChildren(0);
  v140 = *(v135 - 8);
  v10 = MEMORY[0x28223BE20](v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v119 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v119 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_26EE936C8(v34, v125, type metadata accessor for PickerGroupWithChildren);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_26EE936C8(v36, v126, type metadata accessor for PickerGroupWithChildren);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_26EE95DC4(v37, type metadata accessor for PickerGroupWithChildren);
        v118 = v35;
        goto LABEL_112;
      }

      sub_26EE95DC4(v37, type metadata accessor for PickerGroupWithChildren);
      result = sub_26EE95DC4(v35, type metadata accessor for PickerGroupWithChildren);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_26EE936C8(v38, v21, type metadata accessor for PickerGroupWithChildren);
        v40 = v21;
        v41 = v136;
        sub_26EE936C8(v34, v136, type metadata accessor for PickerGroupWithChildren);
        v42 = v142(v40, v41);
        sub_26EE95DC4(v41, type metadata accessor for PickerGroupWithChildren);
        result = sub_26EE95DC4(v40, type metadata accessor for PickerGroupWithChildren);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_26EE93734(v50 + v49, v132, type metadata accessor for PickerGroupWithChildren);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_26EE93734(v132, v50 + v45, type metadata accessor for PickerGroupWithChildren);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_26EE936C8(v105, v17, type metadata accessor for PickerGroupWithChildren);
        v106 = v17;
        v107 = v133;
        sub_26EE936C8(v103, v133, type metadata accessor for PickerGroupWithChildren);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_26EE95DC4(v107, type metadata accessor for PickerGroupWithChildren);
          v118 = v106;
LABEL_112:
          sub_26EE95DC4(v118, type metadata accessor for PickerGroupWithChildren);
        }

        v109 = v108;
        v110 = v43;
        sub_26EE95DC4(v107, type metadata accessor for PickerGroupWithChildren);
        result = sub_26EE95DC4(v106, type metadata accessor for PickerGroupWithChildren);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_26EE93734(v105, v134, type metadata accessor for PickerGroupWithChildren);
        swift_arrayInitWithTakeFrontToBack();
        sub_26EE93734(v111, v103, type metadata accessor for PickerGroupWithChildren);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_26EE12E30((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_26EE91210(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_26EE13990(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_26EE5C168(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  result = sub_26EE13990(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_26EE91210(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_26EE13990(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_26EE5C168(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_26EE909D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v108 = result;
    while (1)
    {
      v11 = v9;
      v109 = v9;
      if ((v9 + 1) >= v8)
      {
        v22 = v9 + 1;
      }

      else
      {
        v114 = v8;
        v107 = v5;
        v12 = *(*v6 + 16 * (v9 + 1) + 8);
        v111 = 16 * v9;
        v13 = *v6 + 16 * v9;
        v9 = *v13;
        v14 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        v16 = *(v12 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v16(ObjectType, v12);
        v17 = swift_getObjectType();
        v119 = (*(v14 + 40))(v17, v14);
        sub_26EE12538(v119, v18, v19);
        v116 = sub_26EF3B61C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v20 = v11 + 2;
        v21 = (v13 + 24);
        while (1)
        {
          v22 = v114;
          if (v114 == v20)
          {
            break;
          }

          v23 = *v21;
          v24 = v21 + 2;
          v25 = v21[2];
          v9 = *(v21 - 1);
          v26 = swift_getObjectType();
          v27 = *(v25 + 40);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v27(v26, v25);
          v28 = swift_getObjectType();
          (*(v23 + 40))(v28, v23);
          v29 = sub_26EF3B61C();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          ++v20;
          v21 = v24;
          if ((v116 == -1) == (v29 != -1))
          {
            v22 = v20 - 1;
            break;
          }
        }

        v5 = v107;
        v6 = a3;
        v7 = v108;
        v11 = v109;
        if (v116 == -1)
        {
          if (v22 < v109)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            return result;
          }

          if (v109 < v22)
          {
            v30 = 16 * v22 - 16;
            v31 = v109;
            v32 = v22;
            v33 = v111;
            do
            {
              if (v31 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_128;
                }

                v34 = *(v35 + v33);
                *(v35 + v33) = *(v35 + v30);
                *(v35 + v30) = v34;
              }

              ++v31;
              v30 -= 16;
              v33 += 16;
            }

            while (v31 < v32);
            v11 = v109;
          }
        }
      }

      v36 = v6[1];
      if (v22 >= v36)
      {
        break;
      }

      if (__OFSUB__(v22, v11))
      {
        goto LABEL_120;
      }

      if (v22 - v11 >= a4)
      {
        v38 = v22;
        if (v22 < v109)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v11 = v109;
        if (__OFADD__(v109, a4))
        {
          goto LABEL_121;
        }

        if (&v109[a4] >= v36)
        {
          v37 = v6[1];
        }

        else
        {
          v37 = &v109[a4];
        }

        if (v37 < v109)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v22 == v37)
        {
          break;
        }

        v106 = v10;
        v117 = *v6;
        v39 = *v6 + 16 * v22 - 16;
        v40 = v109 - v22;
        v110 = v37;
        do
        {
          v113 = v39;
          v115 = v22;
          v41 = *(v117 + 16 * v22);
          v112 = v40;
          do
          {
            v118 = *(&v41 + 1);
            v42 = *(v39 + 8);
            v9 = v41;
            v43 = swift_getObjectType();
            v44 = *(v118 + 40);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v44(v43, v118);
            v45 = swift_getObjectType();
            v120 = (*(v42 + 40))(v45, v42);
            sub_26EE12538(v120, v46, v47);
            v48 = sub_26EF3B61C();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            if (v48 != -1)
            {
              break;
            }

            if (!v117)
            {
              goto LABEL_125;
            }

            v49 = *v39;
            v41 = *(v39 + 16);
            *v39 = v41;
            *(v39 + 16) = v49;
            v39 -= 16;
          }

          while (!__CFADD__(v40++, 1));
          v22 = v115 + 1;
          v39 = v113 + 16;
          v38 = v110;
          v40 = v112 - 1;
        }

        while (v115 + 1 != v110);
        v10 = v106;
        v6 = a3;
        v7 = v108;
        if (v110 < v109)
        {
          goto LABEL_119;
        }
      }

LABEL_41:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26EE12E30(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v52 = *(v10 + 2);
      v51 = *(v10 + 3);
      v53 = v52 + 1;
      v54 = v109;
      if (v52 >= v51 >> 1)
      {
        result = sub_26EE12E30((v51 > 1), v52 + 1, 1, v10);
        v54 = v109;
        v10 = result;
      }

      *(v10 + 2) = v53;
      v55 = &v10[16 * v52];
      *(v55 + 4) = v54;
      *(v55 + 5) = v38;
      v56 = *v7;
      if (!v56)
      {
        goto LABEL_129;
      }

      v9 = v38;
      if (v52)
      {
        while (1)
        {
          v57 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v58 = *(v10 + 4);
            v59 = *(v10 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_60:
            if (v61)
            {
              goto LABEL_108;
            }

            v74 = &v10[16 * v53];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_111;
            }

            v80 = &v10[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_115;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v53 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v84 = &v10[16 * v53];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_74:
          if (v79)
          {
            goto LABEL_110;
          }

          v87 = &v10[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_113;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_81:
          v95 = v57 - 1;
          if (v57 - 1 >= v53)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v6)
          {
            goto LABEL_126;
          }

          v96 = *&v10[16 * v95 + 32];
          v97 = *&v10[16 * v57 + 40];
          sub_26EE91858((*v6 + 16 * v96), (*v6 + 16 * *&v10[16 * v57 + 32]), (*v6 + 16 * v97), v56);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_26EE13990(v10);
          }

          if (v95 >= *(v10 + 2))
          {
            goto LABEL_105;
          }

          v98 = &v10[16 * v95];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          result = sub_26EE5C168(v57);
          v53 = *(v10 + 2);
          if (v53 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v10[16 * v53 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_106;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_107;
        }

        v69 = &v10[16 * v53];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_109;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_112;
        }

        if (v73 >= v65)
        {
          v91 = &v10[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_116;
          }

          if (v60 < v94)
          {
            v57 = v53 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v108;
      if (v9 >= v8)
      {
        goto LABEL_92;
      }
    }

    v38 = v22;
    if (v22 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_41;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_92:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_130;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_123:
    result = sub_26EE13990(v10);
    v10 = result;
  }

  v99 = *(v10 + 2);
  if (v99 >= 2)
  {
    while (*v6)
    {
      v100 = v10;
      v10 = (v99 - 1);
      v101 = *&v100[16 * v99];
      v102 = *&v100[16 * v99 + 24];
      sub_26EE91858((*v6 + 16 * v101), (*v6 + 16 * *&v100[16 * v99 + 16]), (*v6 + 16 * v102), v9);
      if (v5)
      {
      }

      if (v102 < v101)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_26EE13990(v100);
      }

      if (v99 - 2 >= *(v100 + 2))
      {
        goto LABEL_118;
      }

      v103 = &v100[16 * v99];
      *v103 = v101;
      *(v103 + 1) = v102;
      result = sub_26EE5C168(v99 - 1);
      v10 = v100;
      v99 = *(v100 + 2);
      if (v99 <= 1)
      {
      }
    }

    goto LABEL_127;
  }
}

unint64_t sub_26EE91210(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for PickerGroupWithChildren(0);
  v11 = MEMORY[0x28223BE20](v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_26EE936C8(a2, v22, type metadata accessor for PickerGroupWithChildren);
          sub_26EE936C8(a4, v19, type metadata accessor for PickerGroupWithChildren);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_26EE95DC4(v19, type metadata accessor for PickerGroupWithChildren);
          sub_26EE95DC4(v22, type metadata accessor for PickerGroupWithChildren);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_26EE95DC4(v19, type metadata accessor for PickerGroupWithChildren);
        sub_26EE95DC4(v22, type metadata accessor for PickerGroupWithChildren);
      }

LABEL_64:
      sub_26EE91C40(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_26EE936C8(v38 + v37, v16, type metadata accessor for PickerGroupWithChildren);
              sub_26EE936C8(v50, v13, type metadata accessor for PickerGroupWithChildren);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_26EE95DC4(v13, type metadata accessor for PickerGroupWithChildren);
                sub_26EE95DC4(v16, type metadata accessor for PickerGroupWithChildren);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_26EE95DC4(v13, type metadata accessor for PickerGroupWithChildren);
              sub_26EE95DC4(v16, type metadata accessor for PickerGroupWithChildren);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_26EE91858(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v44 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v38 = v4;
LABEL_26:
      v37 = v6 - 16;
      v25 = v5 - 16;
      v26 = v44;
      v39 = v6;
      do
      {
        v41 = v25;
        v27 = v25 + 16;
        v28 = *(v26 - 1);
        v26 -= 16;
        v29 = *(v6 - 1);
        ObjectType = swift_getObjectType();
        v31 = *(v28 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v31(ObjectType, v28);
        v32 = swift_getObjectType();
        v43 = (*(v29 + 40))(v32, v29);
        sub_26EE12538(v43, v33, v34);
        v35 = sub_26EF3B61C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v35 == -1)
        {
          v4 = v38;
          v5 = v41;
          if (v27 != v39)
          {
            *v41 = *v37;
          }

          if (v44 <= v38 || (v6 = v37, v37 <= v7))
          {
            v6 = v37;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v4 = v38;
        if (v27 != v44)
        {
          *v41 = *v26;
        }

        v25 = v41 - 16;
        v44 = v26;
        v6 = v39;
      }

      while (v26 > v38);
      v44 = v26;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v44 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v40 = v5;
      while (1)
      {
        v14 = *(v6 + 1);
        v15 = v6;
        v16 = *(v4 + 1);
        v17 = swift_getObjectType();
        v18 = *(v14 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18(v17, v14);
        v19 = swift_getObjectType();
        v42 = (*(v16 + 40))(v19, v16);
        sub_26EE12538(v42, v20, v21);
        v22 = sub_26EF3B61C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v22 != -1)
        {
          break;
        }

        v23 = v15;
        v6 = v15 + 16;
        if (v7 != v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v44 || v6 >= v40)
        {
          goto LABEL_36;
        }
      }

      v23 = v4;
      v24 = v7 == v4;
      v4 += 16;
      v6 = v15;
      if (v24)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v23;
      goto LABEL_15;
    }

LABEL_36:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v44 - v4 + (v44 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v44 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26EE91C40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PickerGroupWithChildren(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}