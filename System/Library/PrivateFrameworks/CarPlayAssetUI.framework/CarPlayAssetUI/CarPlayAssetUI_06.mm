uint64_t sub_242CC86F0()
{
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CC8734(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickType.displayValue.getter()
{
  v1 = 0x7261646E6F636553;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726554;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697250;
  }
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_242F05CD0();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickType.rawValue.getter()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_242CC889C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7972616974726574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

void sub_242CC89B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242CC8AD8()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CC8B80(uint64_t a1)
{
  sub_242F04DD0();
}

uint64_t sub_242CC8C14(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.primaryColorIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.secondaryColorIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.tertiaryColorIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.redlineCrossedColorIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_242CC8E3C()
{
  v1 = *v0;
  v2 = 0x437972616D697270;
  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242CC8EE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CD2C44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CC8F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CCFB78(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CC8F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CCFB78(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BE8, &unk_242F114B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v17 = v10;
  v16[3] = *(v1 + 32);
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCFB78(v11, v12, v13);

  sub_242F064C0();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {
    v14 = v18;

    v21 = v19;
    v20 = 1;
    sub_242F05F20();
    v21 = v14;
    v20 = 2;
    sub_242F05EB0();
    v21 = v17;
    v20 = 3;
    sub_242F05EB0();
    LOBYTE(v21) = 4;
    sub_242F05ED0();
  }

  return (*(v5 + 8))(v7, v4);
}

double Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_242C79508(a1, *v1);
  sub_242C79508(a1, v3);
  if (!v5)
  {
    sub_242F063B0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_242F063B0();
    goto LABEL_6;
  }

  sub_242F063B0();
  sub_242C79508(a1, v5);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_242F063B0();
  sub_242C79508(a1, v4);
LABEL_6:
  sub_242F063B0();
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_242F06390();
  sub_242C79508(v6, v1);
  sub_242C79508(v6, v2);
  if (!v4)
  {
    sub_242F063B0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_242F063B0();
    goto LABEL_6;
  }

  sub_242F063B0();
  sub_242C79508(v6, v4);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_242F063B0();
  sub_242C79508(v6, v3);
LABEL_6:
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C08, &qword_242F114C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCFB78(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  v21 = 0;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  sub_242F05E00();
  v20 = v22;
  v21 = 1;
  sub_242F05E00();
  v18 = 0;
  v19 = v22;
  v21 = 2;
  sub_242F05D90();
  v17 = v22;
  v21 = 3;
  sub_242F05D90();
  v12 = v22;
  LOBYTE(v22) = 4;
  v13 = sub_242F05DB0();
  (*(v6 + 8))(v8, v5);
  v15 = v19;
  *a2 = v20;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CC97A0()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242CC97F8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.startColorIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.progressColorIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.limitColorIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.trackColorIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.init(startColorIDs:progressColorIDs:limitColorIDs:trackColorIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_242CC99AC()
{
  v1 = 0x6C6F437472617473;
  v2 = 0x6C6F4374696D696CLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6F436B63617274;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242CC9A2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CD2E04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CC9A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CCFD60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CC9A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CCFD60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C18, &qword_242F114C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v17 = v10;
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCFD60(v11, v12, v13);

  sub_242F064C0();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05EB0();

  if (!v2)
  {
    v14 = v17;
    v15 = v18;
    v21 = v19;
    v20 = 1;
    sub_242F05EB0();
    v21 = v15;
    v20 = 2;
    sub_242F05EB0();
    v21 = v14;
    v20 = 3;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (*v1)
  {
    sub_242F063B0();
    sub_242C79508(a1, v4);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_242F063B0();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_242F063B0();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_242F063B0();
  sub_242C79508(a1, v3);
  if (v6)
  {
LABEL_4:
    sub_242F063B0();
    sub_242C79508(a1, v6);
    goto LABEL_8;
  }

LABEL_7:
  sub_242F063B0();
LABEL_8:

  return sub_242C79508(a1, v5);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C28, &qword_242F114D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCFD60(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v20 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    v21 = 0;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05D90();
    v13 = v22;
    v21 = 1;
    sub_242F05D90();
    v19 = a2;
    v14 = v22;
    v21 = 2;
    sub_242F05D90();
    v15 = v22;
    v21 = 3;
    sub_242F05E00();
    (*(v20 + 8))(v8, v5);
    v16 = v22;
    v17 = v19;
    *v19 = v13;
    v17[1] = v14;
    v17[2] = v15;
    v17[3] = v16;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242CCA1E8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242CCA240(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t sub_242CCA298()
{
  if (*v0)
  {
    return 0x6954656C676E6973;
  }

  else
  {
    return 1819044198;
  }
}

uint64_t sub_242CCA2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819044198 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6954656C676E6973 && a2 == 0xEA00000000006B63)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CCA3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CCFFFC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CCA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CCFFFC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CCA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD00F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CCA468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD00F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CCA4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CCA534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0050(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CCA570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0050(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C30, &qword_242F114D8);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C38, &qword_242F114E0);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C40, &qword_242F114E8);
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v31 - v9;
  v11 = v1[1];
  v35 = *v1;
  v36 = v11;
  v12 = v1[3];
  v37 = v1[2];
  v38 = v12;
  v13 = *(v1 + 32);
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCFFFC(v14, v15, v16);
  v17 = sub_242F064C0();
  if (v13 < 0)
  {
    LOBYTE(v40) = 1;
    sub_242CD0050(v17, v18, v19);
    v25 = v31;
    v26 = v39;
    v27 = sub_242F05E40();
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = v38;
    sub_242CD00A4(v27, v28, v29);
    v30 = v33;
    sub_242F05F20();
    (*(v32 + 8))(v25, v30);
    return (*(v8 + 8))(v10, v26);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_242CD00F8(v17, v18, v19);
    v20 = v39;
    v21 = sub_242F05E40();
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = v38;
    v44 = v13 & 1;
    sub_242CD014C(v21, v22, v23);
    sub_242F05F20();
    (*(v34 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v20);
  }
}

double Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 32) < 0)
  {
    MEMORY[0x245D279A0](1);
    Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(a1);
    return result;
  }

  MEMORY[0x245D279A0](0);
  sub_242C79508(a1, v4);
  sub_242C79508(a1, v3);
  if (!v6)
  {
    sub_242F063B0();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_242F063B0();
    goto LABEL_8;
  }

  sub_242F063B0();
  sub_242C79508(a1, v6);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_242F063B0();
  sub_242C79508(a1, v5);
LABEL_8:
  sub_242F063B0();
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_242F06390();
  if ((v5 & 0x80000000) == 0)
  {
    MEMORY[0x245D279A0](0);
    sub_242C79508(v7, v2);
    sub_242C79508(v7, v1);
    if (v4)
    {
      sub_242F063B0();
      sub_242C79508(v7, v4);
      if (v3)
      {
LABEL_4:
        sub_242F063B0();
        sub_242C79508(v7, v3);
LABEL_8:
        sub_242F063B0();
        return sub_242F063E0();
      }
    }

    else
    {
      sub_242F063B0();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    goto LABEL_8;
  }

  MEMORY[0x245D279A0](1);
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(v7);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C70, &qword_242F114F0);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C78, &qword_242F114F8);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C80, &qword_242F11500);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = a1[3];
  v57 = a1;
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242CCFFFC(v15, v16, v17);
  v18 = v48;
  sub_242F06480();
  if (!v18)
  {
    v48 = v11;
    v19 = v47;
    v20 = sub_242F05E10();
    v21 = (2 * *(v20 + 16)) | 1;
    v53 = v20;
    v54 = v20 + 32;
    v55 = 0;
    v56 = v21;
    v22 = sub_242C7FBE4();
    v25 = v10;
    if (v22 == 2 || v55 != v56 >> 1)
    {
      v28 = sub_242F05B10();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v30 = &type metadata for Instrument.GaugeStyle.TicksConfiguration.TicksProgressType;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v48 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        LOBYTE(v49) = 1;
        sub_242CD0050(v22, v23, v24);
        v26 = sub_242F05D10();
        v27 = v48;
        sub_242CD01A0(v26, v36, v37);
        v38 = v45;
        sub_242F05E00();
        (*(v46 + 8))(v6, v38);
        (*(v27 + 8))(v13, v25);
        swift_unknownObjectRelease();
        v39 = v49;
        v40 = 0x80;
        v41 = v50;
        v42 = v51;
      }

      else
      {
        LOBYTE(v49) = 0;
        sub_242CD00F8(v22, v23, v24);
        v32 = sub_242F05D10();
        v33 = v48;
        sub_242CD01F4(v32, v34, v35);
        sub_242F05E00();
        (*(v44 + 8))(v9, v7);
        (*(v33 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v39 = v49;
        v41 = v50;
        v42 = v51;
        v40 = v52;
      }

      *v19 = v39;
      *(v19 + 16) = v41;
      *(v19 + 24) = v42;
      *(v19 + 32) = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v57);
}

void sub_242CCB07C(uint64_t a1)
{
  if (*(v1 + 32) < 0)
  {
    MEMORY[0x245D279A0](1);
    Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.hash(into:)(a1);
  }
}

uint64_t sub_242CCB118(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_242F06390();
  if (v2 < 0)
  {
    MEMORY[0x245D279A0](1);
    Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.Fill.hash(into:)(v4);
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.progressType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  return sub_242CD0248(v2, v3, v4, v5, v6);
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.progressType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242CD02AC(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.init(ticksCount:tickWidth:tickWidthInset:tickLength:tickInset:lineCap:primaryColorID:secondaryColorID:tertiaryColorID:redlineCrossedColorID:hideFirstTick:redlineColorStatic:progressType:continuousFill:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, uint64_t *a14, char a15)
{
  v23 = result;
  v25 = *a2;
  v26 = *(a14 + 32);
  if (v26 < 0xFE)
  {
    v29 = a14[2];
    v30 = a14[3];
    v27 = *a14;
    v28 = a14[1];

    a3 = v27;
    a4 = v28;
    a5 = v29;
    a6 = v30;
  }

  else
  {
    LOBYTE(v26) = a8 & 1;
  }

  *a9 = v23;
  *(a9 + 8) = a10;
  *(a9 + 12) = a11;
  *(a9 + 16) = a12;
  *(a9 + 20) = a13;
  *(a9 + 24) = v25;
  *(a9 + 25) = a7 & 1;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = v26;
  *(a9 + 65) = a15 & 1;
  return result;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.init(ticksCount:tickWidth:tickWidthInset:tickLength:tickInset:lineCap:hideFirstTick:progressType:continuousFill:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>, float a10@<S3>)
{
  v10 = *a2;
  v11 = *(a4 + 32);
  *a6 = a1;
  *(a6 + 8) = a7;
  *(a6 + 12) = a8;
  *(a6 + 16) = a9;
  *(a6 + 20) = a10;
  *(a6 + 24) = v10;
  *(a6 + 25) = a3;
  result = *a4;
  v13 = *(a4 + 16);
  *(a6 + 32) = *a4;
  *(a6 + 48) = v13;
  *(a6 + 64) = v11;
  *(a6 + 65) = a5;
  return result;
}

void Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  MEMORY[0x245D279A0](*v1);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v3);
  sub_242F063B0();
  if ((v8 & 0x80000000) == 0)
  {
    MEMORY[0x245D279A0](0);
    sub_242C79508(a1, v5);
    sub_242C79508(a1, v4);
    if (v7)
    {
      sub_242F063B0();
      sub_242C79508(a1, v7);
      if (v6)
      {
LABEL_4:
        sub_242F063B0();
        sub_242C79508(a1, v6);
LABEL_8:
        sub_242F063B0();
        goto LABEL_9;
      }
    }

    else
    {
      sub_242F063B0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    goto LABEL_8;
  }

  MEMORY[0x245D279A0](1);
  Instrument.GaugeStyle.TicksConfiguration.TicksProgressType.SingleTick.hash(into:)(a1);
LABEL_9:
  sub_242F063B0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CCB6D8()
{
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CCB71C(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.primaryColorID.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.secondaryColorID.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.tertiaryColorID.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.init(primaryColorID:secondaryColorID:tertiaryColorID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_242CCB864()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437972616D697270;
  }
}

uint64_t sub_242CCB8DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CD2F7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CCB904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0450(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CCB940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0450(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1C98, &qword_242F11508);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = v1[2];
  v17 = v8;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CD0450(v10, v11, v12);

  sub_242F064C0();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();

  if (!v2)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_242F05F20();
    v19 = v13;
    v18 = 2;
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

double Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  sub_242C79508(a1, *v1);
  sub_242C79508(a1, v3);
  if (v4)
  {
    sub_242F063B0();

    sub_242C79508(a1, v4);
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F06390();
  sub_242C79508(v5, v1);
  sub_242C79508(v5, v2);
  sub_242F063B0();
  if (v3)
  {
    sub_242C79508(v5, v3);
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelColors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1CA8, &unk_242F11510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CD0450(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  v19 = 0;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  sub_242F05E00();
  v17 = a2;
  v18 = v20;
  v19 = 1;
  sub_242F05E00();
  v16 = v20;
  v19 = 2;
  sub_242F05D90();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v13 = v17;
  v14 = v16;
  *v17 = v18;
  v13[1] = v14;
  v13[2] = v12;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CCBFC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F06390();
  sub_242C79508(v5, v1);
  sub_242C79508(v5, v2);
  sub_242F063B0();
  if (v3)
  {
    sub_242C79508(v5, v3);
  }

  return sub_242F063E0();
}

double sub_242CCC050(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  sub_242C79508(a1, *v1);
  sub_242C79508(a1, v3);
  if (v4)
  {
    sub_242F063B0();

    sub_242C79508(a1, v4);
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t sub_242CCC0D4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_242F06390();
  sub_242C79508(v6, v2);
  sub_242C79508(v6, v3);
  sub_242F063B0();
  if (v4)
  {
    sub_242C79508(v6, v4);
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.tickTypeConfigurations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.tickLabelsConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 152);
  v16[8] = *(v1 + 136);
  v16[9] = v2;
  v3 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v16[11] = v3;
  v4 = *(v1 + 88);
  v16[4] = *(v1 + 72);
  v16[5] = v4;
  v5 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v5;
  v6 = *(v1 + 24);
  v16[0] = *(v1 + 8);
  v16[1] = v6;
  v7 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v7;
  v8 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v8;
  v9 = *(v1 + 184);
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  v10 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v10;
  v11 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  v12 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v12;
  v13 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  return sub_242CCFA30(v16, &v15);
}

__n128 Instrument.GaugeStyle.TicksConfiguration.tickLabelsConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 152);
  v16[8] = *(v1 + 136);
  v16[9] = v3;
  v4 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v16[11] = v4;
  v5 = *(v1 + 88);
  v16[4] = *(v1 + 72);
  v16[5] = v5;
  v6 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v6;
  v7 = *(v1 + 24);
  v16[0] = *(v1 + 8);
  v16[1] = v7;
  v8 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v8;
  sub_242CCFA68(v16);
  v9 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v9;
  v10 = *(a1 + 176);
  *(v1 + 168) = *(a1 + 160);
  *(v1 + 184) = v10;
  v11 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v11;
  v12 = *(a1 + 112);
  *(v1 + 104) = *(a1 + 96);
  *(v1 + 120) = v12;
  v13 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v13;
  result = *(a1 + 32);
  v15 = *(a1 + 48);
  *(v1 + 40) = result;
  *(v1 + 56) = v15;
  return result;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  result = *(v1 + 200);
  v4 = *(v1 + 216);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.style.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 200) = *a1;
  *(v1 + 216) = v4;
  *(v1 + 232) = v2;
  return result;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.init(tickTypeConfigurations:tickLabelsConfiguration:angleConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (qword_27ECEEF98 != -1)
  {
    v14 = a1;
    v15 = a2;
    v16 = a4;
    v17 = *(a3 + 24);
    v18 = *a3;
    swift_once();
    v6 = v17;
    v4 = v18;
    a2 = v15;
    a1 = v14;
    a4 = v16;
  }

  v7 = *(a2 + 144);
  *(a4 + 136) = *(a2 + 128);
  *(a4 + 152) = v7;
  v8 = *(a2 + 176);
  *(a4 + 168) = *(a2 + 160);
  *(a4 + 184) = v8;
  v9 = *(a2 + 80);
  *(a4 + 72) = *(a2 + 64);
  *(a4 + 88) = v9;
  v10 = *(a2 + 112);
  *(a4 + 104) = *(a2 + 96);
  *(a4 + 120) = v10;
  v11 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  *(a4 + 40) = result;
  *a4 = a1;
  *(a4 + 56) = v13;
  *(a4 + 200) = v4;
  *(a4 + 216) = v5;
  *(a4 + 224) = v6;
  return result;
}

double Instrument.GaugeStyle.TicksConfiguration.init(tickTypeConfigurations:tickLabelsConfiguration:linearConfiguration:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  if (qword_27ECEEF98 != -1)
  {
    v12 = a1;
    v13 = a2;
    v14 = a4;
    swift_once();
    a2 = v13;
    a1 = v12;
    a4 = v14;
  }

  v5 = a2[9];
  *(a4 + 136) = a2[8];
  *(a4 + 152) = v5;
  v6 = a2[11];
  *(a4 + 168) = a2[10];
  *(a4 + 184) = v6;
  v7 = a2[5];
  *(a4 + 72) = a2[4];
  *(a4 + 88) = v7;
  v8 = a2[7];
  *(a4 + 104) = a2[6];
  *(a4 + 120) = v8;
  v9 = a2[1];
  *(a4 + 8) = *a2;
  *(a4 + 24) = v9;
  v10 = a2[3];
  *(a4 + 40) = a2[2];
  *a4 = a1;
  *(a4 + 56) = v10;
  *(a4 + 200) = v4;
  result = 0.0;
  *(a4 + 208) = xmmword_242F113F0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  return result;
}

void *Instrument.GaugeStyle.TicksConfiguration.assets.getter()
{
  v1 = *(v0 + 40);
  v44[0] = *(v0 + 24);
  v44[1] = v1;
  v44[2] = *(v0 + 56);
  v45 = *(v0 + 72);
  v2 = *(v0 + 152);
  v46[0] = *(v0 + 136);
  v46[1] = v2;
  v3 = *(v0 + 184);
  v46[2] = *(v0 + 168);
  v46[3] = v3;
  v40[3] = &type metadata for RasterFont;
  v40[4] = &protocol witness table for RasterFont;
  v4 = swift_allocObject();
  v40[0] = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 56);
  *(v4 + 64) = *(v0 + 72);
  if (*&v46[0])
  {
    *(&v42 + 1) = &type metadata for RasterFont;
    v43 = &protocol witness table for RasterFont;
    v6 = swift_allocObject();
    *&v41 = v6;
    v7 = *(v0 + 160);
    *(v6 + 16) = *(v0 + 144);
    *(v6 + 32) = v7;
    *(v6 + 48) = *(v0 + 176);
    *(v6 + 64) = *(v0 + 192);
    sub_242C94884(v46 + 8, &v36);
  }

  else
  {
    v43 = 0;
    v42 = 0u;
    v41 = 0u;
  }

  sub_242C94884(v44, &v36);
  sub_242CA321C(v40, &v36, &qword_27ECEFAD8, &qword_242F092D8);
  v30 = v36;
  v31 = v37;
  v32 = v38;
  if (*(&v37 + 1))
  {
    sub_242C65564(&v30, v33);
    v8 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_242C82D10(0, v8[2] + 1, 1, v8);
      v39[0] = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_242C82D10((v10 > 1), v11 + 1, 1, v8);
      v39[0] = v8;
    }

    v12 = v34;
    v13 = v35;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    sub_242CCEB08(v11, v17, v39, v12, v13);
    __swift_destroy_boxed_opaque_existential_2Tm(v33);
  }

  else
  {
    sub_242C6D138(&v30, &qword_27ECEFAD8, &qword_242F092D8);
    v8 = MEMORY[0x277D84F90];
  }

  sub_242CA321C(&v41, &v36, &qword_27ECEFAD8, &qword_242F092D8);
  v30 = v36;
  v31 = v37;
  v32 = v38;
  if (*(&v37 + 1))
  {
    sub_242C65564(&v30, v33);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v8;
    if ((v19 & 1) == 0)
    {
      v8 = sub_242C82D10(0, v8[2] + 1, 1, v8);
      v39[0] = v8;
    }

    v21 = v8[2];
    v20 = v8[3];
    if (v21 >= v20 >> 1)
    {
      v8 = sub_242C82D10((v20 > 1), v21 + 1, 1, v8);
      v39[0] = v8;
    }

    v22 = v34;
    v23 = v35;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v25 = MEMORY[0x28223BE20](v24);
    v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);
    sub_242CCEB08(v21, v27, v39, v22, v23);
    __swift_destroy_boxed_opaque_existential_2Tm(v33);
  }

  else
  {
    sub_242C6D138(&v30, &qword_27ECEFAD8, &qword_242F092D8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8, &qword_242F092D8);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_242CCC9CC()
{
  v1 = 0x656C797473;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_242CCCA28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CD30AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CCCA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0760(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CCCA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0760(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1CB0, &qword_242F11520);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = *v1;
  v8 = *(v1 + 19);
  v60 = *(v1 + 17);
  v61 = v8;
  v9 = *(v1 + 23);
  v62 = *(v1 + 21);
  v63 = v9;
  v10 = *(v1 + 11);
  v56 = *(v1 + 9);
  v57 = v10;
  v11 = *(v1 + 15);
  v58 = *(v1 + 13);
  v59 = v11;
  v12 = *(v1 + 3);
  v52 = *(v1 + 1);
  v53 = v12;
  v13 = *(v1 + 7);
  v54 = *(v1 + 5);
  v55 = v13;
  v14 = *(v1 + 25);
  v31 = *(v1 + 27);
  v32 = v14;
  v33 = v1[29];
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  v19 = __swift_project_boxed_opaque_existential_2Tm(v16, v15);
  sub_242CD0760(v19, v20, v21);

  sub_242F064C0();
  *&v40 = v7;
  LOBYTE(v38[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1CC0, &qword_242F11528);
  sub_242CD07B4(&qword_27ECF1CC8, sub_242CD0838, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v22 = v64;
  sub_242F05F20();
  if (v22)
  {
  }

  else
  {
    v23 = v33;

    v48 = v60;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v39 = 1;
    v24 = sub_242CCFA30(&v52, v38);
    sub_242CD088C(v24, v25, v26);
    sub_242F05F20();
    v38[8] = v48;
    v38[9] = v49;
    v38[10] = v50;
    v38[11] = v51;
    v38[4] = v44;
    v38[5] = v45;
    v38[6] = v46;
    v38[7] = v47;
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    v27 = sub_242CCFA68(v38);
    v36 = v31;
    v35 = v32;
    v37 = v23;
    v34 = 2;
    sub_242CD08E0(v27, v28, v29);
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v18);
}

void Instrument.GaugeStyle.TicksConfiguration.hash(into:)(__int128 *a1)
{
  sub_242C79DEC(a1, *v1);
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(a1);
  sub_242CCEA14();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 216);
  *&v4[9] = *(v0 + 200);
  *&v4[11] = v2;
  v4[13] = *(v0 + 232);
  sub_242F06390();
  sub_242C79DEC(v4, v1);
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(v4);
  sub_242CCEA14();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1CE8, &qword_242F11530);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  if (qword_27ECEEF98 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CD0760(v8, v9, v10);
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1CC0, &qword_242F11528);
  LOBYTE(v29[0]) = 0;
  sub_242CD07B4(&qword_27ECF1CF0, sub_242CD0934, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v11 = sub_242F05E00();
  v13 = v30[0];
  v32 = 1;
  sub_242CD0988(v11, v14, v15);
  sub_242F05E00();
  v28 = v13;
  v53 = v41;
  v54 = v42;
  v55 = v43;
  v56 = v44;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v31 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1D08, &qword_242F11538);
  sub_242C7E000(&qword_27ECF1D10, &qword_27ECF1D08, &qword_242F11538, &protocol conformance descriptor for DecodableDefault<A>);
  sub_242F05D90();
  if (v30[2] >> 1 == 0xFFFFFFFFLL)
  {
    v26 = xmmword_27ECF19B8;
    v27 = *&qword_27ECF19C8;
    v16 = qword_27ECF19D8;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v26 = *v30;
    v27 = *&v30[2];
    v16 = v30[4];
  }

  v17 = v28;
  *&v29[0] = v28;
  *(&v29[8] + 8) = v53;
  *(&v29[9] + 8) = v54;
  *(&v29[10] + 8) = v55;
  *(&v29[11] + 8) = v56;
  *(&v29[4] + 8) = v49;
  *(&v29[5] + 8) = v50;
  *(&v29[6] + 8) = v51;
  *(&v29[7] + 8) = v52;
  *(v29 + 8) = v45;
  *(&v29[1] + 8) = v46;
  *(&v29[2] + 8) = v47;
  *(&v29[3] + 8) = v48;
  *(&v29[12] + 8) = v26;
  *(&v29[13] + 8) = v27;
  *(&v29[14] + 1) = v16;
  v18 = v29[9];
  v19 = v57;
  v57[8] = v29[8];
  v19[9] = v18;
  v20 = v29[11];
  v19[10] = v29[10];
  v19[11] = v20;
  v21 = v29[5];
  v19[4] = v29[4];
  v19[5] = v21;
  v22 = v29[7];
  v19[6] = v29[6];
  v19[7] = v22;
  v23 = v29[1];
  *v19 = v29[0];
  v19[1] = v23;
  v24 = v29[3];
  v19[2] = v29[2];
  v19[3] = v24;
  v25 = v29[13];
  v19[12] = v29[12];
  v19[13] = v25;
  v19[14] = v29[14];
  sub_242CD09DC(v29, v30);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  *&v30[17] = v53;
  *&v30[19] = v54;
  *&v30[21] = v55;
  *&v30[23] = v56;
  *&v30[9] = v49;
  *&v30[11] = v50;
  *&v30[13] = v51;
  *&v30[15] = v52;
  *&v30[1] = v45;
  *&v30[3] = v46;
  *&v30[5] = v47;
  *&v30[7] = v48;
  *&v30[25] = v26;
  *&v30[27] = v27;
  v30[0] = v17;
  v30[29] = v16;
  return sub_242CD0A14(v30);
}

unint64_t sub_242CCD3F0(char a1)
{
  result = 0x756F43736B636974;
  switch(a1)
  {
    case 1:
      result = 0x746469576B636974;
      break;
    case 2:
      result = 0x746469576B636974;
      break;
    case 3:
      result = 0x676E654C6B636974;
      break;
    case 4:
      result = 0x65736E496B636974;
      break;
    case 5:
      result = 0x706143656E696CLL;
      break;
    case 6:
      result = 0x437972616D697270;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7972616974726574;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x7372694665646968;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x73736572676F7270;
      break;
    case 13:
      result = 0x6F756E69746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242CCD608()
{
  v1 = *v0;
  v2 = *(v0 + 216);
  *&v4[9] = *(v0 + 200);
  *&v4[11] = v2;
  v4[13] = *(v0 + 232);
  sub_242F06390();
  sub_242C79DEC(v4, v1);
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(v4);
  sub_242CCEA14();
  return sub_242F063E0();
}

void sub_242CCD67C(__int128 *a1)
{
  sub_242C79DEC(a1, *v1);
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(a1);
  sub_242CCEA14();
}

uint64_t sub_242CCD6D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 216);
  *&v5[9] = *(v1 + 200);
  *&v5[11] = v3;
  v5[13] = *(v1 + 232);
  sub_242F06390();
  sub_242C79DEC(v5, v2);
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(v5);
  sub_242CCEA14();
  return sub_242F063E0();
}

uint64_t sub_242CCD74C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_242CCD3F0(*a1);
  v5 = v4;
  if (v3 == sub_242CCD3F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242CCD7D4()
{
  v1 = *v0;
  sub_242F06390();
  sub_242CCD3F0(v1);
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CCD838(uint64_t a1)
{
  sub_242CCD3F0(*v1);
  sub_242F04DD0();
}

uint64_t sub_242CCD88C(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  sub_242CCD3F0(v2);
  sub_242F04DD0();

  return sub_242F063E0();
}

unint64_t sub_242CCD8EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242CD31D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_242CCD91C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_242CCD3F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_242CCD964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CD31D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CCD98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0A44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CCD9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CD0A44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1D18, &qword_242F11540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CD0A44(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v48) = 0;
  v12 = sub_242F05DE0();
  LOBYTE(v48) = 1;
  sub_242F05DD0();
  v14 = v13;
  LOBYTE(v48) = 3;
  sub_242F05DD0();
  v17 = v16;
  LOBYTE(v48) = 4;
  v18 = sub_242F05DD0();
  v20 = v19;
  LOBYTE(v43) = 5;
  sub_242CD0A98(v18, v21, v22);
  sub_242F05E00();
  v23 = v48;
  LOBYTE(v48) = 10;
  v61 = sub_242F05DB0();
  LOBYTE(v48) = 2;
  v24 = sub_242F05D60();
  if ((v24 & 0x100000000) != 0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = *&v24;
  }

  LOBYTE(v43) = 12;
  sub_242CD0AEC(v24, v25, v26);
  sub_242F05E00();
  v41 = v48;
  v39 = v49;
  v38 = v50;
  v40 = v51;
  v42 = v52;
  LOBYTE(v58) = 13;
  v28 = sub_242F05DB0();
  v61 &= 1u;
  (*(v6 + 8))(v8, v5);
  v37 = v28 & 1;
  *&v43 = v12;
  *(&v43 + 1) = __PAIR64__(LODWORD(v27), v14);
  *&v44 = __PAIR64__(v20, v17);
  BYTE8(v44) = v23;
  BYTE9(v44) = v61;
  HIWORD(v44) = v60;
  *(&v44 + 10) = v59;
  v29 = v41;
  v30 = v39;
  *&v45 = v41;
  *(&v45 + 1) = v39;
  v31 = v38;
  v32 = v40;
  *&v46 = v38;
  *(&v46 + 1) = v40;
  LOBYTE(v47) = v42;
  HIBYTE(v47) = v37;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  *(a2 + 64) = v47;
  *(a2 + 32) = v35;
  *(a2 + 48) = v36;
  *a2 = v33;
  *(a2 + 16) = v34;
  sub_242C7FA98(&v43, &v48);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v48 = v12;
  v49 = __PAIR64__(LODWORD(v27), v14);
  v50 = __PAIR64__(v20, v17);
  LOBYTE(v51) = v23;
  BYTE1(v51) = v61;
  *(&v51 + 2) = v59;
  HIWORD(v51) = v60;
  v52 = v29;
  v53 = v30;
  v54 = v31;
  v55 = v32;
  v56 = v42;
  v57 = v37;
  return sub_242C7FAF4(&v48);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1D38, &qword_242F11548);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v38 = *(v1 + 24);
  v31 = *(v1 + 25);
  v7 = *(v1 + 32);
  v29 = *(v1 + 40);
  v30 = v7;
  v8 = *(v1 + 56);
  v28 = *(v1 + 48);
  v26 = v8;
  v27 = *(v1 + 64);
  v9 = *(v1 + 65);
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CD0A44(v10, v11, v12);
  sub_242F064C0();
  LOBYTE(v33) = 0;
  v13 = v6;
  v14 = v32;
  sub_242F05F00();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v38;
  v17 = v28;
  v16 = v29;
  v18 = v30;
  LODWORD(v32) = v9;
  LOBYTE(v33) = 1;
  sub_242F05EF0();
  LOBYTE(v33) = 3;
  sub_242F05EF0();
  LOBYTE(v33) = 4;
  v19 = sub_242F05EF0();
  LOBYTE(v33) = v15;
  v39 = 5;
  sub_242CD0B40(v19, v20, v21);
  sub_242F05F20();
  LOBYTE(v33) = 10;
  sub_242F05ED0();
  LOBYTE(v33) = 2;
  sub_242F05EF0();
  v33 = v18;
  v34 = v16;
  v35 = v17;
  v36 = v26;
  v37 = v27;
  v39 = 12;
  v22 = sub_242CD0248(v18, v16, v17, v26, v27);
  sub_242CD0B94(v22, v23, v24);
  sub_242F05F20();
  sub_242CD02AC(v33, v34, v35, v36, v37);
  LOBYTE(v33) = 13;
  sub_242F05ED0();
  return MEMORY[8](v13, v3);
}

double sub_242CCE504()
{
  v0 = sub_242CE7008(&unk_28557A6E0);
  sub_242C6D138(&unk_28557A700, &qword_27ECF1F18, &qword_242F131D0);
  v1 = sub_242CE7008(&unk_28557A720);
  sub_242C6D138(&unk_28557A740, &qword_27ECF1F18, &qword_242F131D0);
  *&xmmword_27ECF19E0 = 2;
  *&result = 1082130432;
  *(&xmmword_27ECF19E0 + 8) = xmmword_242F11400;
  word_27ECF19F8 = 0;
  *&xmmword_27ECF1A00 = v0;
  *(&xmmword_27ECF1A00 + 1) = v1;
  qword_27ECF1A10 = 0;
  unk_27ECF1A18 = 0;
  word_27ECF1A20 = 0;
  return result;
}

uint64_t static Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.defaultPrimary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFA0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_27ECF1A10;
  v8[2] = xmmword_27ECF1A00;
  v8[3] = *&qword_27ECF1A10;
  v2 = word_27ECF1A20;
  v9 = word_27ECF1A20;
  v4 = xmmword_27ECF19E0;
  v3 = unk_27ECF19F0;
  v8[0] = xmmword_27ECF19E0;
  v8[1] = unk_27ECF19F0;
  *(a1 + 32) = xmmword_27ECF1A00;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242C7FA98(v8, v7);
}

double sub_242CCE648()
{
  v0 = sub_242CE7008(&unk_28557A760);
  sub_242C6D138(&unk_28557A780, &qword_27ECF1F18, &qword_242F131D0);
  v1 = sub_242CE7008(&unk_28557A7A0);
  sub_242C6D138(&unk_28557A7C0, &qword_27ECF1F18, &qword_242F131D0);
  *&xmmword_27ECF1A28 = 4;
  *&result = 0x40000000;
  *(&xmmword_27ECF1A28 + 8) = xmmword_242F11410;
  word_27ECF1A40 = 0;
  *&xmmword_27ECF1A48 = v0;
  *(&xmmword_27ECF1A48 + 1) = v1;
  qword_27ECF1A58 = 0;
  unk_27ECF1A60 = 0;
  word_27ECF1A68 = 0;
  return result;
}

uint64_t static Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.defaultSecondary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFA8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_27ECF1A58;
  v8[2] = xmmword_27ECF1A48;
  v8[3] = *&qword_27ECF1A58;
  v2 = word_27ECF1A68;
  v9 = word_27ECF1A68;
  v4 = xmmword_27ECF1A28;
  v3 = *algn_27ECF1A38;
  v8[0] = xmmword_27ECF1A28;
  v8[1] = *algn_27ECF1A38;
  *(a1 + 32) = xmmword_27ECF1A48;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242C7FA98(v8, v7);
}

double sub_242CCE78C()
{
  v0 = sub_242CE7008(&unk_28557A7E0);
  sub_242C6D138(&unk_28557A800, &qword_27ECF1F18, &qword_242F131D0);
  v1 = sub_242CE7008(&unk_28557A820);
  sub_242C6D138(&unk_28557A840, &qword_27ECF1F18, &qword_242F131D0);
  *&xmmword_27ECF1A70 = 1;
  *&result = 0x40000000;
  *(&xmmword_27ECF1A70 + 8) = xmmword_242F11420;
  word_27ECF1A88 = 0;
  *&xmmword_27ECF1A90 = v0;
  *(&xmmword_27ECF1A90 + 1) = v1;
  qword_27ECF1AA0 = 0;
  unk_27ECF1AA8 = 0;
  word_27ECF1AB0 = 0;
  return result;
}

uint64_t static Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.defaultTertiary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFB0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_27ECF1AA0;
  v8[2] = xmmword_27ECF1A90;
  v8[3] = *&qword_27ECF1AA0;
  v2 = word_27ECF1AB0;
  v9 = word_27ECF1AB0;
  v4 = xmmword_27ECF1A70;
  v3 = unk_27ECF1A80;
  v8[0] = xmmword_27ECF1A70;
  v8[1] = unk_27ECF1A80;
  *(a1 + 32) = xmmword_27ECF1A90;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242C7FA98(v8, v7);
}

double sub_242CCE8D0()
{
  v0 = sub_242CE7008(&unk_28557A860);
  sub_242C6D138(&unk_28557A880, &qword_27ECF1F18, &qword_242F131D0);
  v1 = sub_242CE7008(&unk_28557A8A0);
  sub_242C6D138(&unk_28557A8C0, &qword_27ECF1F18, &qword_242F131D0);
  *&xmmword_27ECF1AB8 = 0;
  *&result = 1082130432;
  *(&xmmword_27ECF1AB8 + 8) = xmmword_242F11400;
  word_27ECF1AD0 = 256;
  *&xmmword_27ECF1AD8 = v0;
  *(&xmmword_27ECF1AD8 + 1) = v1;
  qword_27ECF1AE8 = 0;
  unk_27ECF1AF0 = 0;
  word_27ECF1AF8 = 0;
  return result;
}

uint64_t static Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.noTicks.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFB8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_27ECF1AE8;
  v8[2] = xmmword_27ECF1AD8;
  v8[3] = *&qword_27ECF1AE8;
  v2 = word_27ECF1AF8;
  v9 = word_27ECF1AF8;
  v4 = xmmword_27ECF1AB8;
  v3 = *algn_27ECF1AC8;
  v8[0] = xmmword_27ECF1AB8;
  v8[1] = *algn_27ECF1AC8;
  *(a1 + 32) = xmmword_27ECF1AD8;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242C7FA98(v8, v7);
}

void sub_242CCEA14()
{
  if (((*(v0 + 17) | ((*(v0 + 21) | (v0[23] << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
  }

  else
  {
    v2 = *(v0 + 3);
    v1 = *(v0 + 4);
    v3 = *(v0 + 1);
    v4 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
    v5 = *v0 | (v4 << 8);
    MEMORY[0x245D279A0](0);
    if (v4 & 0x7FF00000000000 | v5 & 0xFFFFFFFFFFFFFLL)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x245D279D0](v6);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();

    sub_242C9457C(v2, v1);
  }
}

uint64_t sub_242CCEB08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_242C65564(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO05TicksG0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < 0)
  {
    v6 = *a2 ^ *a1 ^ 1;
    if (v3 >= 0)
    {
      v6 = 0;
    }

    return v6 & 1;
  }

  else if (v3 < 0)
  {
    return 0;
  }

  else
  {
    v4 = vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24))));
    v4.i16[0] = vminv_u16(v4);
    return v4.i32[0] & (v3 ^ v2 ^ 1) & 1;
  }
}

unint64_t sub_242CCEC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B30;
  if (!qword_27ECF1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B30);
  }

  return result;
}

unint64_t sub_242CCEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B38;
  if (!qword_27ECF1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B38);
  }

  return result;
}

unint64_t sub_242CCECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B40;
  if (!qword_27ECF1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B40);
  }

  return result;
}

unint64_t sub_242CCED20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B48;
  if (!qword_27ECF1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B48);
  }

  return result;
}

unint64_t sub_242CCED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B50;
  if (!qword_27ECF1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B50);
  }

  return result;
}

unint64_t sub_242CCEDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B70;
  if (!qword_27ECF1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B70);
  }

  return result;
}

unint64_t sub_242CCEE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B78;
  if (!qword_27ECF1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B78);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV010TickLabelsI0V012OrnamentTextI0V2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v24[0] = *(a1 + 8);
  v24[1] = v5;
  v24[2] = *(a1 + 40);
  v25 = *(a1 + 56);
  v6 = *a2;
  v7 = *(a2 + 24);
  v26[0] = *(a2 + 8);
  v26[1] = v7;
  v26[2] = *(a2 + 40);
  v27 = *(a2 + 56);
  if (sub_242C73210(v4, v6))
  {
    v8 = *(a1 + 24);
    v16 = *(a1 + 8);
    v17 = v8;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v9 = *(a2 + 24);
    v12 = *(a2 + 8);
    v13 = v9;
    v14 = *(a2 + 40);
    v15 = *(a2 + 56);
    sub_242C94884(v24, v22);
    sub_242C94884(v26, v22);
    v10 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v16, &v12);
    v20[0] = v12;
    v20[1] = v13;
    v20[2] = v14;
    v21 = v15;
    sub_242C954DC(v20);
    v22[0] = v16;
    v22[1] = v17;
    v22[2] = v18;
    v23 = v19;
    sub_242C954DC(v22);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_242CCEF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1B88;
  if (!qword_27ECF1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B88);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV15TickLabelColorsV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_242C75A30(*a1, *a2) & 1) != 0 && (sub_242C75A30(v2, v4))
  {
    if (v3)
    {
      if (v5)
      {

        v6 = sub_242C75A30(v3, v5);

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV010TickLabelsI0V2eeoiySbAI_AItFZ_0(float *a1, float *a2)
{
  result = 0;
  v4 = *a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 2);
  v89[0] = *(a1 + 1);
  v89[1] = v7;
  v89[2] = *(a1 + 3);
  v90 = *(a1 + 8);
  v8 = *(a1 + 72);
  v9 = *(a1 + 73);
  v11 = *(a1 + 10);
  v10 = *(a1 + 11);
  v12 = *(a1 + 12);
  v13 = *(a1 + 13);
  v15 = *(a1 + 14);
  v14 = *(a1 + 15);
  v16 = *(a1 + 10);
  *&v91[48] = *(a1 + 11);
  *&v91[32] = v16;
  v17 = *(a1 + 8);
  *&v91[16] = *(a1 + 9);
  *v91 = v17;
  v18 = *a2;
  v20 = a2[2];
  v19 = a2[3];
  v93 = *(a2 + 8);
  v21 = *(a2 + 3);
  v92[1] = *(a2 + 2);
  v92[2] = v21;
  v92[0] = *(a2 + 1);
  v22 = *(a2 + 72);
  v23 = *(a2 + 73);
  v25 = *(a2 + 10);
  v24 = *(a2 + 11);
  v26 = *(a2 + 12);
  v27 = *(a2 + 13);
  v29 = *(a2 + 14);
  v28 = *(a2 + 15);
  v30 = *(a2 + 8);
  v31 = *(a2 + 9);
  v32 = *(a2 + 11);
  *&v94[32] = *(a2 + 10);
  *&v94[48] = v32;
  *v94 = v30;
  *&v94[16] = v31;
  if (v4 == v18 && v6 == v20 && v5 == v19)
  {
    v43 = v29;
    v44 = v15;
    v41 = v28;
    v42 = v14;
    v45 = v10;
    v46 = v26;
    v47 = v24;
    v33 = *(a1 + 2);
    *v70 = *(a1 + 1);
    *&v70[16] = v33;
    *&v70[32] = *(a1 + 3);
    *&v70[48] = *(a1 + 8);
    v34 = *(a2 + 2);
    *v69 = *(a2 + 1);
    *&v69[16] = v34;
    *&v69[32] = *(a2 + 3);
    *&v69[48] = *(a2 + 8);
    sub_242C94884(v89, v64);
    sub_242C94884(v92, v64);
    v35 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(v70, v69);
    v85[0] = *v69;
    v85[1] = *&v69[16];
    v85[2] = *&v69[32];
    v86 = *&v69[48];
    sub_242C954DC(v85);
    v87[0] = *v70;
    v87[1] = *&v70[16];
    v87[2] = *&v70[32];
    v88 = *&v70[48];
    sub_242C954DC(v87);
    if ((v35 & 1) == 0 || v8 != v22 || v9 != v23 || v11 != v25)
    {
      return 0;
    }

    if (sub_242C75A30(v45, v47) & 1) != 0 && (sub_242C75A30(v12, v46))
    {
      if (!v13)
      {

        if (!v27)
        {

LABEL_20:
          if (v44)
          {
            if (!v43 || (sub_242C73210(v44, v43) & 1) == 0)
            {
              return 0;
            }
          }

          else if (v43)
          {
            return 0;
          }

          if (v42 == v41)
          {
            v81 = *&v91[8];
            v82 = *&v91[24];
            v83 = *&v91[40];
            v37 = *v91;
            v84 = *&v91[56];
            v77 = *&v94[8];
            v78 = *&v94[24];
            v79 = *&v94[40];
            v38 = *v94;
            v80 = *&v94[56];
            if (*v91)
            {
              *&v70[8] = *&v91[8];
              *&v70[24] = *&v91[24];
              *&v70[40] = *&v91[40];
              *v70 = *v91;
              v71 = *&v91[56];
              v65 = *&v91[8];
              v66 = *&v91[24];
              v67 = *&v91[40];
              v68 = *&v91[56];
              if (*v94)
              {
                *&v64[8] = *&v94[8];
                *&v64[24] = *&v94[24];
                *&v64[40] = *&v94[40];
                *v64 = *v94;
                *&v64[56] = *&v94[56];
                *v69 = *v64;
                *&v69[16] = *&v64[16];
                *&v69[32] = *&v64[32];
                *&v69[48] = *&v64[48];
                v63 = *&v91[56];
                v61 = *&v91[24];
                v62 = *&v91[40];
                v60 = *&v91[8];
                if (sub_242C73210(*v91, *v94))
                {
                  v52 = v60;
                  v53 = v61;
                  v54 = v62;
                  v55 = v63;
                  v48 = *&v69[8];
                  v49 = *&v69[24];
                  v50 = *&v69[40];
                  v51 = *&v69[56];
                  sub_242CA321C(v91, v58, &qword_27ECF1B98, &qword_242F11490);
                  sub_242CA321C(v94, v58, &qword_27ECF1B98, &qword_242F11490);
                  sub_242CA321C(v70, v58, &qword_27ECF1B98, &qword_242F11490);
                  sub_242C94884(&v60, v58);
                  sub_242C94884(&v69[8], v58);
                  v39 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v52, &v48);
                  *v56 = v48;
                  *&v56[16] = v49;
                  *&v56[32] = v50;
                  *&v56[48] = v51;
                  sub_242C954DC(v56);
                  *v58 = v52;
                  *&v58[16] = v53;
                  *&v58[32] = v54;
                  *&v58[48] = v55;
                  sub_242C954DC(v58);
                  sub_242C6D138(v64, &qword_27ECF1B98, &qword_242F11490);
                  if (v39)
                  {
                    *&v56[8] = v65;
                    *&v56[24] = v66;
                    *&v56[40] = v67;
                    *v56 = v37;
                    v57 = v68;
                    sub_242CCF024(v56);
                    *&v58[8] = v81;
                    *&v58[24] = v82;
                    *&v58[40] = v83;
                    *v58 = v37;
                    v59 = v84;
                    v40 = v58;
LABEL_38:
                    sub_242C6D138(v40, &qword_27ECF1B98, &qword_242F11490);
                    return 1;
                  }
                }

                else
                {
                  sub_242CA321C(v91, v58, &qword_27ECF1B98, &qword_242F11490);
                  sub_242CA321C(v94, v58, &qword_27ECF1B98, &qword_242F11490);
                  sub_242CA321C(v70, v58, &qword_27ECF1B98, &qword_242F11490);
                  sub_242C6D138(v64, &qword_27ECF1B98, &qword_242F11490);
                }

                *&v56[8] = v65;
                *&v56[24] = v66;
                *&v56[40] = v67;
                *v56 = v37;
                v57 = v68;
                sub_242CCF024(v56);
                *&v58[8] = v81;
                *&v58[24] = v82;
                *&v58[40] = v83;
                *v58 = v37;
                v59 = v84;
                sub_242C6D138(v58, &qword_27ECF1B98, &qword_242F11490);
                return 0;
              }

              *&v69[8] = *&v91[8];
              *&v69[24] = *&v91[24];
              *&v69[40] = *&v91[40];
              *v69 = *v91;
              *&v69[56] = *&v91[56];
              sub_242CA321C(v91, v64, &qword_27ECF1B98, &qword_242F11490);
              sub_242CA321C(v94, v64, &qword_27ECF1B98, &qword_242F11490);
              sub_242CA321C(v70, v64, &qword_27ECF1B98, &qword_242F11490);
              sub_242CCF024(v69);
            }

            else
            {
              if (!*v94)
              {
                *&v70[8] = *&v91[8];
                *&v70[24] = *&v91[24];
                *&v70[40] = *&v91[40];
                *v70 = 0;
                v71 = *&v91[56];
                sub_242CA321C(v91, v69, &qword_27ECF1B98, &qword_242F11490);
                sub_242CA321C(v94, v69, &qword_27ECF1B98, &qword_242F11490);
                v40 = v70;
                goto LABEL_38;
              }

              sub_242CA321C(v91, v70, &qword_27ECF1B98, &qword_242F11490);
              sub_242CA321C(v94, v70, &qword_27ECF1B98, &qword_242F11490);
            }

            *&v70[8] = v81;
            *&v70[24] = v82;
            *&v70[40] = v83;
            v73 = v77;
            *v70 = v37;
            v71 = v84;
            v74 = v78;
            v75 = v79;
            v72 = v38;
            v76 = v80;
            sub_242C6D138(v70, &qword_27ECF1F20, &unk_242F131D8);
          }

          return 0;
        }

LABEL_15:

        return 0;
      }

      if (v27)
      {

        v36 = sub_242C75A30(v13, v27);

        swift_bridgeObjectRelease_n();
        if ((v36 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_15;
  }

  return result;
}

unint64_t sub_242CCF88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1BA8;
  if (!qword_27ECF1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1BA8);
  }

  return result;
}

unint64_t sub_242CCF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1BB0;
  if (!qword_27ECF1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1BB0);
  }

  return result;
}

unint64_t sub_242CCF934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1BB8;
  if (!qword_27ECF1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1BB8);
  }

  return result;
}

unint64_t sub_242CCF988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1BC8;
  if (!qword_27ECF1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1BC8);
  }

  return result;
}

unint64_t sub_242CCF9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1BE0;
  if (!qword_27ECF1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1BE0);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV0H12ProgressTypeO4FillV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((sub_242C75A30(*a1, *a2) & 1) == 0 || (sub_242C75A30(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    v10 = sub_242C75A30(v4, v8);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {

      v11 = sub_242C75A30(v3, v7);

      if (v11)
      {
        return v5 ^ v9 ^ 1u;
      }
    }
  }

  else if (!v7)
  {
    return v5 ^ v9 ^ 1u;
  }

  return 0;
}

unint64_t sub_242CCFB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1BF0;
  if (!qword_27ECF1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1BF0);
  }

  return result;
}

uint64_t sub_242CCFBCC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1BF8, &qword_242F180D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV0H12ProgressTypeO10SingleTickV2eeoiySbAK_AKtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = sub_242C75A30(v3, v7);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    v11 = sub_242C75A30(v2, v6);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v12 = sub_242C75A30(v5, v9);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_14:

  return sub_242C75A30(v4, v8);
}

unint64_t sub_242CCFD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C20;
  if (!qword_27ECF1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C20);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV0H12ProgressTypeO2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      v21 = *a1;
      v22 = v2;
      v23 = v5;
      v24 = v4;
      v16 = v8;
      v17 = v7;
      v18 = v10;
      v19 = v9;
      sub_242CD0248(v8, v7, v10, v9, v11);
      sub_242CD0248(v3, v2, v5, v4, v6);
      sub_242CD0248(v3, v2, v5, v4, v6);
      sub_242CD0248(v8, v7, v10, v9, v11);
      v12 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV0H12ProgressTypeO10SingleTickV2eeoiySbAK_AKtFZ_0(&v21, &v16);
      goto LABEL_7;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    v21 = *a1;
    v22 = v2;
    v23 = v5;
    v24 = v4;
    v25 = v6 & 1;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = v11 & 1;
    sub_242CD0248(v8, v7, v10, v9, v11);
    sub_242CD0248(v3, v2, v5, v4, v6);
    sub_242CD0248(v3, v2, v5, v4, v6);
    sub_242CD0248(v8, v7, v10, v9, v11);
    v12 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV0H12ProgressTypeO4FillV2eeoiySbAK_AKtFZ_0(&v21, &v16);
LABEL_7:
    v15 = v12;
    sub_242CD02AC(v3, v2, v5, v4, v6);
    sub_242CD02AC(v8, v7, v10, v9, v11);
    sub_242CD02AC(v8, v7, v10, v9, v11);
    sub_242CD02AC(v3, v2, v5, v4, v6);
    v13 = v15;
    return v13 & 1;
  }

  sub_242CD0248(*a1, v2, v5, v4, v6);
  sub_242CD0248(v8, v7, v10, v9, v11);
  sub_242CD02AC(v3, v2, v5, v4, v6);
  sub_242CD02AC(v8, v7, v10, v9, v11);
  v13 = 0;
  return v13 & 1;
}

unint64_t sub_242CCFFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C48;
  if (!qword_27ECF1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C48);
  }

  return result;
}

unint64_t sub_242CD0050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C50;
  if (!qword_27ECF1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C50);
  }

  return result;
}

unint64_t sub_242CD00A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C58;
  if (!qword_27ECF1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C58);
  }

  return result;
}

unint64_t sub_242CD00F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C60;
  if (!qword_27ECF1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C60);
  }

  return result;
}

unint64_t sub_242CD014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C68;
  if (!qword_27ECF1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C68);
  }

  return result;
}

unint64_t sub_242CD01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C88;
  if (!qword_27ECF1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C88);
  }

  return result;
}

unint64_t sub_242CD01F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1C90;
  if (!qword_27ECF1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C90);
  }

  return result;
}

uint64_t sub_242CD0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
}

uint64_t sub_242CD02AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV08TickTypeI0V2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*(a1 + 8), *(a2 + 8))))) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *a1 == *a2 && ((*(a1 + 25) ^ *(a2 + 25)) & 1) == 0)
  {
    v27 = v2;
    v28 = v3;
    v6 = *(a1 + 65);
    v7 = *(a2 + 65);
    v9 = *(a2 + 48);
    v8 = *(a2 + 56);
    v11 = *(a2 + 32);
    v10 = *(a2 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v15 = *(a1 + 64);
    v16 = *(a2 + 64);
    v22 = *(a1 + 32);
    v23 = v14;
    v24 = v12;
    v25 = v13;
    v26 = v15;
    v17 = v11;
    v18 = v10;
    v19 = v9;
    v20 = v8;
    v21 = v16;
    sub_242CD0248(v22, v14, v12, v13, v15);
    sub_242CD0248(v11, v10, v9, v8, v16);
    LOBYTE(v8) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV0H12ProgressTypeO2eeoiySbAI_AItFZ_0(&v22, &v17);
    sub_242CD02AC(v17, v18, v19, v20, v21);
    sub_242CD02AC(v22, v23, v24, v25, v26);
    if (v8)
    {
      return v6 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_242CD0450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1CA0;
  if (!qword_27ECF1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1CA0);
  }

  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 152);
  v69[8] = *(a1 + 136);
  v69[9] = v5;
  v6 = *(a1 + 184);
  v69[10] = *(a1 + 168);
  v69[11] = v6;
  v7 = *(a1 + 88);
  v69[4] = *(a1 + 72);
  v69[5] = v7;
  v8 = *(a1 + 120);
  v69[6] = *(a1 + 104);
  v69[7] = v8;
  v9 = *(a1 + 24);
  v69[0] = *(a1 + 8);
  v69[1] = v9;
  v10 = *(a1 + 56);
  v69[2] = *(a1 + 40);
  v69[3] = v10;
  v11 = *(a1 + 200);
  v40 = *(a1 + 208);
  v12 = *(a1 + 216);
  v41 = *(a1 + 224);
  v13 = *a2;
  v14 = *(a2 + 152);
  v70[8] = *(a2 + 136);
  v70[9] = v14;
  v15 = *(a2 + 184);
  v70[10] = *(a2 + 168);
  v70[11] = v15;
  v16 = *(a2 + 88);
  v70[4] = *(a2 + 72);
  v70[5] = v16;
  v17 = *(a2 + 120);
  v70[6] = *(a2 + 104);
  v70[7] = v17;
  v18 = *(a2 + 24);
  v70[0] = *(a2 + 8);
  v70[1] = v18;
  v19 = *(a2 + 56);
  v70[2] = *(a2 + 40);
  v70[3] = v19;
  v20 = *(a2 + 200);
  v38 = *(a2 + 208);
  v21 = *(a2 + 216);
  v39 = *(a2 + 224);
  if ((sub_242C78328(v4, v13) & 1) == 0)
  {
    return 0;
  }

  v22 = *(a1 + 152);
  v63 = *(a1 + 136);
  v64 = v22;
  v23 = *(a1 + 184);
  v65 = *(a1 + 168);
  v66 = v23;
  v24 = *(a1 + 88);
  v59 = *(a1 + 72);
  v60 = v24;
  v25 = *(a1 + 120);
  v61 = *(a1 + 104);
  v62 = v25;
  v26 = *(a1 + 24);
  v55 = *(a1 + 8);
  v56 = v26;
  v27 = *(a1 + 56);
  v57 = *(a1 + 40);
  v58 = v27;
  v28 = *(a2 + 152);
  v51 = *(a2 + 136);
  v52 = v28;
  v29 = *(a2 + 184);
  v53 = *(a2 + 168);
  v54 = v29;
  v30 = *(a2 + 88);
  v47 = *(a2 + 72);
  v48 = v30;
  v31 = *(a2 + 120);
  v49 = *(a2 + 104);
  v50 = v31;
  v32 = *(a2 + 24);
  v43 = *(a2 + 8);
  v44 = v32;
  v33 = *(a2 + 56);
  v45 = *(a2 + 40);
  v46 = v33;
  sub_242CCFA30(v69, v42);
  sub_242CCFA30(v70, v42);
  v34 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV010TickLabelsI0V2eeoiySbAI_AItFZ_0(&v55, &v43);
  v67[8] = v51;
  v67[9] = v52;
  v67[10] = v53;
  v67[11] = v54;
  v67[4] = v47;
  v67[5] = v48;
  v67[6] = v49;
  v67[7] = v50;
  v67[0] = v43;
  v67[1] = v44;
  v67[2] = v45;
  v67[3] = v46;
  sub_242CCFA68(v67);
  v68[8] = v63;
  v68[9] = v64;
  v68[10] = v65;
  v68[11] = v66;
  v68[4] = v59;
  v68[5] = v60;
  v68[6] = v61;
  v68[7] = v62;
  v68[0] = v55;
  v68[1] = v56;
  v68[2] = v57;
  v68[3] = v58;
  sub_242CCFA68(v68);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

  if (v12 < 0)
  {
    return v21 < 0 && ((LODWORD(v20) ^ LODWORD(v11)) & 1) == 0;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v35.f64[0] = v11;
    v35.f64[1] = v40;
    v36.f64[0] = v20;
    v36.f64[1] = v38;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v35, v36), vceqq_f64(v41, v39)))) & 1) != 0 && ((v21 ^ v12) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_242CD0760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1CB8;
  if (!qword_27ECF1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1CB8);
  }

  return result;
}

uint64_t sub_242CD07B4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1CC0, &qword_242F11528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CD0838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1CD0;
  if (!qword_27ECF1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1CD0);
  }

  return result;
}

unint64_t sub_242CD088C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1CD8;
  if (!qword_27ECF1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1CD8);
  }

  return result;
}

unint64_t sub_242CD08E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1CE0;
  if (!qword_27ECF1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1CE0);
  }

  return result;
}

unint64_t sub_242CD0934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1CF8;
  if (!qword_27ECF1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1CF8);
  }

  return result;
}

unint64_t sub_242CD0988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D00;
  if (!qword_27ECF1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D00);
  }

  return result;
}

unint64_t sub_242CD0A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D20;
  if (!qword_27ECF1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D20);
  }

  return result;
}

unint64_t sub_242CD0A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D28;
  if (!qword_27ECF1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D28);
  }

  return result;
}

unint64_t sub_242CD0AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D30;
  if (!qword_27ECF1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D30);
  }

  return result;
}

unint64_t sub_242CD0B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D40;
  if (!qword_27ECF1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D40);
  }

  return result;
}

unint64_t sub_242CD0B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D48;
  if (!qword_27ECF1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D48);
  }

  return result;
}

unint64_t sub_242CD0BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D50;
  if (!qword_27ECF1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D50);
  }

  return result;
}

unint64_t sub_242CD0C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D58;
  if (!qword_27ECF1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D58);
  }

  return result;
}

unint64_t sub_242CD0C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D60;
  if (!qword_27ECF1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D60);
  }

  return result;
}

unint64_t sub_242CD0CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D68;
  if (!qword_27ECF1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D68);
  }

  return result;
}

unint64_t sub_242CD0D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D70;
  if (!qword_27ECF1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D70);
  }

  return result;
}

unint64_t sub_242CD0DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D88;
  if (!qword_27ECF1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D88);
  }

  return result;
}

unint64_t sub_242CD0E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D90;
  if (!qword_27ECF1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D90);
  }

  return result;
}

unint64_t sub_242CD0E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1D98;
  if (!qword_27ECF1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1D98);
  }

  return result;
}

unint64_t sub_242CD0EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DA0;
  if (!qword_27ECF1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DA0);
  }

  return result;
}

unint64_t sub_242CD0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DA8;
  if (!qword_27ECF1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DA8);
  }

  return result;
}

unint64_t sub_242CD0FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DB0;
  if (!qword_27ECF1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DB0);
  }

  return result;
}

unint64_t sub_242CD0FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DB8;
  if (!qword_27ECF1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinearTicksConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10TicksStyleOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t _s10TicksStyleOwst(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
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

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV010TickLabelsI0V012OrnamentTextI0VSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_242CD123C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_242CD1284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_242CD1344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_242CD138C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242CD1420(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_242CD1468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_242CD14F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242CD1548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_242CD15D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_242CD1620(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_242CD1674(uint64_t a1, int a2)
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

uint64_t sub_242CD16BC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_242CD1730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242CD1784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s18TicksConfigurationV23TickLabelsConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18TicksConfigurationV23TickLabelsConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242CD1A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DC0;
  if (!qword_27ECF1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DC0);
  }

  return result;
}

unint64_t sub_242CD1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DC8;
  if (!qword_27ECF1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DC8);
  }

  return result;
}

unint64_t sub_242CD1AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DD0;
  if (!qword_27ECF1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DD0);
  }

  return result;
}

unint64_t sub_242CD1B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DD8;
  if (!qword_27ECF1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DD8);
  }

  return result;
}

unint64_t sub_242CD1B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DE0;
  if (!qword_27ECF1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DE0);
  }

  return result;
}

unint64_t sub_242CD1BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DE8;
  if (!qword_27ECF1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DE8);
  }

  return result;
}

unint64_t sub_242CD1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DF0;
  if (!qword_27ECF1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DF0);
  }

  return result;
}

unint64_t sub_242CD1C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1DF8;
  if (!qword_27ECF1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1DF8);
  }

  return result;
}

unint64_t sub_242CD1CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E00;
  if (!qword_27ECF1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E00);
  }

  return result;
}

unint64_t sub_242CD1D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E08;
  if (!qword_27ECF1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E08);
  }

  return result;
}

unint64_t sub_242CD1D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E10;
  if (!qword_27ECF1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E10);
  }

  return result;
}

unint64_t sub_242CD1DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E18;
  if (!qword_27ECF1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E18);
  }

  return result;
}

unint64_t sub_242CD1E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E20;
  if (!qword_27ECF1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E20);
  }

  return result;
}

unint64_t sub_242CD1E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E28;
  if (!qword_27ECF1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E28);
  }

  return result;
}

unint64_t sub_242CD1EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E30;
  if (!qword_27ECF1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E30);
  }

  return result;
}

unint64_t sub_242CD1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E38;
  if (!qword_27ECF1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E38);
  }

  return result;
}

unint64_t sub_242CD1FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E40;
  if (!qword_27ECF1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E40);
  }

  return result;
}

unint64_t sub_242CD1FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E48;
  if (!qword_27ECF1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E48);
  }

  return result;
}

unint64_t sub_242CD2050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E50;
  if (!qword_27ECF1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E50);
  }

  return result;
}

unint64_t sub_242CD20A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E58;
  if (!qword_27ECF1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E58);
  }

  return result;
}

unint64_t sub_242CD2100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E60;
  if (!qword_27ECF1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E60);
  }

  return result;
}

unint64_t sub_242CD2158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E68;
  if (!qword_27ECF1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E68);
  }

  return result;
}

unint64_t sub_242CD21B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E70;
  if (!qword_27ECF1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E70);
  }

  return result;
}

unint64_t sub_242CD2208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E78;
  if (!qword_27ECF1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E78);
  }

  return result;
}

unint64_t sub_242CD2260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E80;
  if (!qword_27ECF1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E80);
  }

  return result;
}

unint64_t sub_242CD22B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E88;
  if (!qword_27ECF1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E88);
  }

  return result;
}

unint64_t sub_242CD2310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E90;
  if (!qword_27ECF1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E90);
  }

  return result;
}

unint64_t sub_242CD2368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1E98;
  if (!qword_27ECF1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1E98);
  }

  return result;
}

unint64_t sub_242CD23C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EA0;
  if (!qword_27ECF1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EA0);
  }

  return result;
}

unint64_t sub_242CD2418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EA8;
  if (!qword_27ECF1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EA8);
  }

  return result;
}

unint64_t sub_242CD2470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EB0;
  if (!qword_27ECF1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EB0);
  }

  return result;
}

unint64_t sub_242CD24C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EB8;
  if (!qword_27ECF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EB8);
  }

  return result;
}

unint64_t sub_242CD2520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EC0;
  if (!qword_27ECF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EC0);
  }

  return result;
}

unint64_t sub_242CD2578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EC8;
  if (!qword_27ECF1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EC8);
  }

  return result;
}

unint64_t sub_242CD25D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1ED0;
  if (!qword_27ECF1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1ED0);
  }

  return result;
}

unint64_t sub_242CD2628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1ED8;
  if (!qword_27ECF1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1ED8);
  }

  return result;
}

unint64_t sub_242CD2680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EE0;
  if (!qword_27ECF1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EE0);
  }

  return result;
}

unint64_t sub_242CD26D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EE8;
  if (!qword_27ECF1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EE8);
  }

  return result;
}

unint64_t sub_242CD2730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EF0;
  if (!qword_27ECF1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EF0);
  }

  return result;
}

unint64_t sub_242CD2788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1EF8;
  if (!qword_27ECF1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1EF8);
  }

  return result;
}

unint64_t sub_242CD27E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1F00;
  if (!qword_27ECF1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1F00);
  }

  return result;
}

unint64_t sub_242CD2838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1F08;
  if (!qword_27ECF1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1F08);
  }

  return result;
}

uint64_t sub_242CD288C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C78616DLL && a2 == 0xEE00746E756F4373;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736E69 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6562614C6F72657ALL && a2 == 0xEE007465736E496CLL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46736C6562616CLL && a2 == 0xEA0000000000746ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F756E69746E6F63 && a2 == 0xEE006C6C69467375 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7372694665646968 && a2 == 0xEE006C6562614C74 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7669446C6562616CLL && a2 == 0xEC00000072656469 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F436C6562616CLL && a2 == 0xEB0000000073726FLL || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65764F6C6562616CLL && a2 == 0xEE00736564697272 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F59C80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F59CA0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_242CD2C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972616D697270 && a2 == 0xEF734449726F6C6FLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59CC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59CE0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F59D00 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F57890 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242CD2E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F437472617473 && a2 == 0xED0000734449726FLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59D20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F4374696D696CLL && a2 == 0xED0000734449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F436B63617274 && a2 == 0xED0000734449726FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242CD2F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972616D697270 && a2 == 0xEE004449726F6C6FLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F57830 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xEF4449726F6C6F43)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242CD30AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x8000000242F59D40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F59D60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_242CD31D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_242F05CD0();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_242CD321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1F10;
  if (!qword_27ECF1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1F10);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t NotificationModel.Action.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NotificationModel.Action.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*NotificationModel.Action.handler.getter())(char a1)
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_242CD3440;
  }

  else
  {
    v4 = 0;
  }

  sub_242C5573C(v1, v2);
  return v4;
}

uint64_t sub_242CD3440(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t NotificationModel.Action.handler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_242CD34F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result = sub_242C655DC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = v6;
  *(v2 + 40) = v5;
  return result;
}

uint64_t (*NotificationModel.Action.handler.modify(uint64_t (**a1)(char)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = sub_242CD606C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;
  sub_242C5573C(v4, v3);
  return sub_242CD35B0;
}

uint64_t sub_242CD35B0(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_242CD6074;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v9 = *(a1 + 16);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    sub_242C5573C(v3, v4);
    sub_242C655DC(v10, v11);
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;

    return sub_242C655DC(v3, v4);
  }

  else
  {
    if (v3)
    {
      v7 = *(a1 + 8);
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v3 = sub_242CD6074;
    }

    else
    {
      v8 = 0;
    }

    v13 = *(a1 + 16);
    result = sub_242C655DC(*(v13 + 32), *(v13 + 40));
    *(v13 + 32) = v3;
    *(v13 + 40) = v8;
  }

  return result;
}

uint64_t NotificationModel.Action.init(id:title:highlighted:handler:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  if (a5)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a5;
    *(v10 + 24) = a6;
    v11 = sub_242CD6074;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  result = sub_242C655DC(0, 0);
  *(a7 + 32) = v11;
  *(a7 + 40) = v10;
  return result;
}

uint64_t NotificationModel.Action.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_242F05A80();

  v4 = sub_242F05F60();
  MEMORY[0x245D26660](v4);

  MEMORY[0x245D26660](0x3A656C746974203ALL, 0xE900000000000020);
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](0x696C68676968203ALL, 0xEF203A6465746867);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x245D26660](v5, v6);

  return 540697705;
}

uint64_t static NotificationModel.Action.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[24];
  v3 = a2[24];
  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v4 || (sub_242F06110() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242CD3910(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[24];
  v3 = a2[24];
  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v4 || (sub_242F06110() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t NotificationModel.ButtonType.description.getter()
{
  v1 = *v0;
  if (v0[4])
  {
    v2 = v0[1];
    strcpy(v23, "symbolButton:");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x245D26660](v1, v2);
  }

  else
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v22 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v3, 0);
      v4 = (v1 + 72);
      do
      {
        v6 = *(v4 - 4);
        v5 = *(v4 - 3);
        v7 = *(v4 - 16);
        v8 = *(v4 - 1);
        v9 = *v4;

        sub_242C5573C(v8, v9);
        sub_242F05A80();

        v23[0] = 540697705;
        v23[1] = 0xE400000000000000;
        v10 = sub_242F05F60();
        MEMORY[0x245D26660](v10);

        MEMORY[0x245D26660](0x3A656C746974203ALL, 0xE900000000000020);
        MEMORY[0x245D26660](v6, v5);
        MEMORY[0x245D26660](0x696C68676968203ALL, 0xEF203A6465746867);
        if (v7)
        {
          v11 = 1702195828;
        }

        else
        {
          v11 = 0x65736C6166;
        }

        if (v7)
        {
          v12 = 0xE400000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        MEMORY[0x245D26660](v11, v12);

        sub_242C655DC(v8, v9);
        v13 = v23[0];
        v14 = v23[1];
        v16 = *(v22 + 16);
        v15 = *(v22 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_242E3BC70((v15 > 1), v16 + 1, 1);
        }

        v4 += 6;
        *(v22 + 16) = v16 + 1;
        v17 = v22 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        --v3;
      }

      while (v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    sub_242CD4ED4();
    v18 = sub_242F04E40();
    v20 = v19;

    strcpy(v23, "buttons: (");
    BYTE3(v23[1]) = 0;
    HIDWORD(v23[1]) = -369098752;
    MEMORY[0x245D26660](v18, v20);

    MEMORY[0x245D26660](41, 0xE100000000000000);
  }

  return v23[0];
}

void NotificationModel.InferredNotificationModel.text.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_242CD52B8(v2, v3, v4, v5, v6);
}

__n128 NotificationModel.InferredNotificationModel.text.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242CD5324(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t NotificationModel.InferredNotificationModel.buttonType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  return sub_242CD5390(v2, v3, v4, v5, v6);
}

__n128 NotificationModel.InferredNotificationModel.buttonType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242CD53F8(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  return result;
}

void NotificationModel.InferredNotificationModel.symbol.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_242CD5460(v2, v3, v4);
}

__n128 NotificationModel.InferredNotificationModel.symbol.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_242CD54A4(v1[10], v1[11], v1[12]);
  result = v4;
  *(v1 + 5) = v4;
  v1[12] = v2;
  return result;
}

uint64_t (*NotificationModel.InferredNotificationModel.dismissalHandler.getter())()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242CD54E8;
}

uint64_t NotificationModel.InferredNotificationModel.dismissalHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 112) = sub_242CD5510;
  *(v2 + 120) = v5;
  return result;
}

uint64_t (*NotificationModel.InferredNotificationModel.dismissalHandler.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242CD6070;
  a1[1] = v5;

  return sub_242CD3FEC;
}

uint64_t sub_242CD3FEC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 112) = sub_242CD607C;
    *(v4 + 120) = v5;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    *(v4 + 112) = sub_242CD607C;
    *(v4 + 120) = v7;
  }

  return result;
}

uint64_t NotificationModel.InferredNotificationModel.init(text:buttonType:symbol:blocking:dismissalHandler:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  v18 = *a3;
  v14 = *(a3 + 2);
  *(a7 + 128) = 2;
  v15 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v15;
  *(a7 + 32) = v12;
  sub_242CD53F8(0, 0, 0, 0, 255);
  v16 = *a2;
  *(a7 + 56) = a2[1];
  *(a7 + 40) = v16;
  *(a7 + 72) = v13;
  sub_242CD54A4(0, 0, 0);
  *(a7 + 80) = v18;
  *(a7 + 96) = v14;
  *(a7 + 104) = a4;
  result = swift_allocObject();
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(a7 + 112) = sub_242CD607C;
  *(a7 + 120) = result;
  return result;
}

char *NotificationModel.InferredNotificationModel.validate(errors:automakerSymbolValidator:)(char *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  v10 = *(v3 + 32);
  v61 = v3[6];
  v62 = v3[5];
  v11 = v3[8];
  v12 = *(v3 + 72);
  v64 = v3[10];
  v65 = v3[11];
  v63 = v3[12];
  v59 = v3[16];
  v60 = v3[7];

  v57 = a3;
  if (v10 <= 1)
  {

    v13 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v13 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = a1;
      if (v10)
      {
LABEL_6:
        v6 = v9;
        v7 = v8;
        goto LABEL_8;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_242C832C4(0, *(a1 + 2) + 1, 1, a1);
      }

      v21 = *(a1 + 2);
      v20 = *(a1 + 3);
      if (v21 >= v20 >> 1)
      {
        a1 = sub_242C832C4((v20 > 1), v21 + 1, 1, a1);
      }

      *(a1 + 2) = v21 + 1;
      v22 = &a1[40 * v21];
      *(v22 + 4) = 1;
      *(v22 + 5) = 0;
      *(v22 + 6) = 0;
      *(v22 + 7) = 0;
      v22[64] = 5;
      v14 = a1;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v16 = v62;
    if (v12 == 255)
    {
      goto LABEL_67;
    }

    goto LABEL_25;
  }

  v14 = a1;
LABEL_8:

  v15 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v16 = v62;
  if (v15)
  {
    if (v12 == 255)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      v14 = sub_242C832C4((v17 > 1), v18 + 1, 1, v14);
    }

    *(v14 + 2) = v18 + 1;
    v19 = &v14[40 * v18];
    *(v19 + 4) = 2;
    *(v19 + 5) = 0;
    *(v19 + 6) = 0;
    *(v19 + 7) = 0;
    v19[64] = 5;
    if (v12 == 255)
    {
LABEL_67:
      v26 = v64;
      v25 = v65;
      v27 = v63;
      if (!v65)
      {
        return v14;
      }

      goto LABEL_68;
    }
  }

LABEL_25:
  if (v12)
  {
    sub_242CD53A8(v16, v61, v60, v11, 1);

    goto LABEL_67;
  }

  v23 = *(v16 + 16);
  if (v23)
  {
    sub_242CD53A8(v16, v61, v60, v11, 0);
    v24 = v59;
    if (v59 >= v23)
    {
      goto LABEL_41;
    }

    v26 = v64;
    v25 = v65;
    v27 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
    }

    v29 = *(v14 + 2);
    v28 = *(v14 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v14 = sub_242C832C4((v28 > 1), v29 + 1, 1, v14);
    }

    v31 = 4;
  }

  else
  {
    sub_242CD53A8(v16, v61, v60, v11, 0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = v64;
    v25 = v65;
    v27 = v63;
    v24 = v59;
    v29 = *(v14 + 2);
    v32 = *(v14 + 3);
    v30 = v29 + 1;
    if (v29 >= v32 >> 1)
    {
      v14 = sub_242C832C4((v32 > 1), v29 + 1, 1, v14);
    }

    v31 = 3;
  }

  *(v14 + 2) = v30;
  v33 = &v14[40 * v29];
  *(v33 + 4) = v31;
  *(v33 + 5) = 0;
  *(v33 + 6) = 0;
  *(v33 + 7) = 0;
  v33[64] = 5;
  if ((v24 & 0x8000000000000000) == 0)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_41:
  v26 = v64;
  v25 = v65;
  v27 = v63;
LABEL_42:
  if (*(v16 + 16) >= v24)
  {
    v34 = v24;
  }

  else
  {
    v34 = *(v16 + 16);
  }

  if (v24 && v34)
  {
    v35 = (v16 + 72);
    do
    {
      v36 = *(v35 - 40);
      v37 = *(v35 - 4);
      v38 = *(v35 - 3);
      v39 = *(v35 - 16);
      v41 = *(v35 - 1);
      v40 = *v35;

      sub_242C5573C(v41, v40);
      if (v39 == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
        }

        v43 = *(v14 + 2);
        v42 = *(v14 + 3);
        if (v43 >= v42 >> 1)
        {
          v14 = sub_242C832C4((v42 > 1), v43 + 1, 1, v14);
        }

        *(v14 + 2) = v43 + 1;
        v44 = &v14[40 * v43];
        *(v44 + 4) = v36;
        *(v44 + 5) = 0;
        *(v44 + 6) = 0;
        *(v44 + 7) = 0;
        v44[64] = 4;
      }

      v45 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v45 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {

        sub_242C655DC(v41, v40);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
        }

        v47 = *(v14 + 2);
        v46 = *(v14 + 3);
        if (v47 >= v46 >> 1)
        {
          v14 = sub_242C832C4((v46 > 1), v47 + 1, 1, v14);
        }

        sub_242C655DC(v41, v40);
        *(v14 + 2) = v47 + 1;
        v48 = &v14[40 * v47];
        *(v48 + 4) = v36;
        *(v48 + 5) = 0;
        *(v48 + 6) = 0;
        *(v48 + 7) = 0;
        v48[64] = 0;
      }

      v35 += 6;
      --v34;
    }

    while (v34);
    swift_unknownObjectRelease();
    goto LABEL_67;
  }

  swift_unknownObjectRelease();
  if (!v25)
  {
    return v14;
  }

LABEL_68:
  v49 = objc_opt_self();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v50 = sub_242F04F00();
  v51 = [v49 _systemImageNamed_];

  if (v51)
  {

LABEL_70:
    sub_242CD54A4(v26, v25, v27);
    sub_242CD54A4(v26, v25, v27);
    return v14;
  }

  if (a2)
  {

    v52 = a2(v26, v25);
    sub_242C655DC(a2, v57);
    if (v52)
    {
      goto LABEL_70;
    }
  }

  sub_242CD54A4(v26, v25, v27);
  sub_242CD54A4(v26, v25, v27);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
  }

  v54 = *(v14 + 2);
  v53 = *(v14 + 3);
  if (v54 >= v53 >> 1)
  {
    v14 = sub_242C832C4((v53 > 1), v54 + 1, 1, v14);
  }

  *(v14 + 2) = v54 + 1;
  v55 = &v14[40 * v54];
  *(v55 + 4) = v26;
  *(v55 + 5) = v25;
  *(v55 + 6) = 0;
  *(v55 + 7) = 0;
  v55[64] = 1;
  return v14;
}

uint64_t sub_242CD4848(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t NotificationModel.InferredNotificationModel.correct(validationError:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 80);
  v6 = *(v3 + 112);
  v76 = *(v3 + 96);
  v77 = v6;
  v7 = *(v3 + 48);
  v8 = *(v3 + 64);
  v9 = *(v3 + 16);
  v72 = *(v3 + 32);
  v73 = v7;
  v74 = v8;
  v75 = v5;
  v10 = *(v3 + 16);
  v71[0] = *v3;
  v71[1] = v10;
  v11 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = *(a1 + 32);
  v78 = *(v3 + 128);
  v68 = v71[0];
  v69 = v9;
  v70 = *(v3 + 32);
  v16 = *(&v72 + 1);
  v17 = v73;
  v18 = v8;
  v47 = *(&v73 + 1);
  v19 = BYTE8(v8);
  v67[0] = *(v3 + 73);
  *(v67 + 3) = *(v3 + 76);
  v20 = *(&v5 + 1);
  v21 = v5;
  v22 = v76;
  if (!v15)
  {
    goto LABEL_7;
  }

  if (v15 == 1)
  {
    sub_242CD5538(v71, &v60);
    sub_242CD54A4(v21, v20, v22);
    v30 = v19;
    v22 = 0;
    v20 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  if (v15 != 5)
  {
LABEL_17:
    sub_242CD5538(v71, &v60);
    v30 = v19;
    v31 = v21;
    goto LABEL_18;
  }

  v23 = v14 | v12;
  if (v23 | v11 | v13)
  {
    v24 = v23 | v13;
    if ((v11 - 1) > 1 || v24)
    {
      if (v11 == 3 && !v24)
      {
        v51 = v74;
        sub_242CD5538(v71, &v60);
        sub_242CD53F8(v16, v17, v47, v51, v19);
        v31 = v21;
        v18 = 0;
        v29 = 0;
        v17 = 0;
        v16 = 0;
        v30 = -1;
LABEL_19:
        v48 = v31;
        v50 = v18;
        v32 = *(v3 + 32);
        v33 = *(v3 + 16);
        v54[0] = *v3;
        v54[1] = v33;
        *&v55 = v32;
        *(&v55 + 1) = v16;
        *&v56 = v17;
        *(&v56 + 1) = v29;
        *&v57 = v18;
        BYTE8(v57) = v30;
        HIDWORD(v57) = *(v67 + 3);
        *(&v57 + 9) = v67[0];
        *&v58 = v31;
        *(&v58 + 1) = v20;
        *v59 = v22;
        v34 = *(v3 + 104);
        *&v59[24] = *(v3 + 120);
        *&v59[8] = v34;
        v62 = v55;
        v63 = v56;
        v60 = v54[0];
        v61 = v33;
        *&v66[32] = *&v59[32];
        *v66 = *v59;
        *&v66[16] = *&v59[16];
        v64 = v57;
        v65 = v58;
        LOBYTE(v19) = v30;
        nullsub_2();
        v35 = *&v66[16];
        *(a3 + 96) = *v66;
        *(a3 + 112) = v35;
        *(a3 + 128) = *&v66[32];
        v36 = v63;
        *(a3 + 32) = v62;
        *(a3 + 48) = v36;
        v37 = v65;
        *(a3 + 64) = v64;
        *(a3 + 80) = v37;
        v38 = v61;
        *a3 = v60;
        *(a3 + 16) = v38;
        sub_242CD5538(v54, v53);
        goto LABEL_20;
      }

      if (v11 == 4 && !v24)
      {
        if (BYTE8(v8) != 255)
        {
          v49 = v75;
          v52 = v74;
          if (BYTE8(v8))
          {
            sub_242CD5538(v71, &v60);
            v29 = v47;
            sub_242CD5390(v16, v17, v47, v52, v19);

            v30 = v19;
            v31 = v49;
            v18 = v52;
            goto LABEL_19;
          }

          v46 = BYTE8(v8);
          if ((v78 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v40 = *(*(&v72 + 1) + 16);
            if (v40 >= v78)
            {
              v40 = v78;
            }

            v41 = 2 * v40;
            if (v78)
            {
              v19 = v41 + 1;
            }

            else
            {
              v19 = 1;
            }

            swift_unknownObjectRetain();
            sub_242CD5538(v71, &v60);
            v21 = v47;
            sub_242CD5390(v16, v17, v47, v52, v46);
            sub_242F061F0();
            swift_unknownObjectRetain();
            v42 = swift_dynamicCastClass();
            if (!v42)
            {
              swift_unknownObjectRelease();
              v42 = MEMORY[0x277D84F90];
            }

            v45 = *(v42 + 16);

            if (v45 == v19 >> 1)
            {
              v43 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v43)
              {
LABEL_34:
                sub_242CD53F8(v16, v17, v21, v52, v46);
                v30 = 0;
                v18 = 0;
                v29 = 0;
                v17 = 0;
                v16 = v43;
                v31 = v49;
                goto LABEL_19;
              }

              v43 = MEMORY[0x277D84F90];
LABEL_33:
              swift_unknownObjectRelease();
              goto LABEL_34;
            }
          }

          swift_unknownObjectRelease();
          sub_242CD4FC4(v16, v16 + 32, 0, v19);
          v43 = v44;
          goto LABEL_33;
        }

        sub_242CD5538(v71, &v60);
        v31 = v21;
        v30 = -1;
LABEL_18:
        v29 = v47;
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

LABEL_7:
  v48 = v75;
  v50 = v74;
  sub_242CD55A0(&v60);
  v25 = *&v66[16];
  *(a3 + 96) = *v66;
  *(a3 + 112) = v25;
  *(a3 + 128) = *&v66[32];
  v26 = v63;
  *(a3 + 32) = v62;
  *(a3 + 48) = v26;
  v27 = v65;
  *(a3 + 64) = v64;
  *(a3 + 80) = v27;
  v28 = v61;
  *a3 = v60;
  *(a3 + 16) = v28;
  sub_242CD5538(v71, v54);
  v29 = v47;
LABEL_20:
  v60 = v68;
  v61 = v69;
  *&v62 = v70;
  *(&v62 + 1) = v16;
  *&v63 = v17;
  *(&v63 + 1) = v29;
  *&v64 = v50;
  BYTE8(v64) = v19;
  *(&v64 + 9) = v67[0];
  HIDWORD(v64) = *(v67 + 3);
  *&v65 = v48;
  *(&v65 + 1) = v20;
  *v66 = v22;
  *&v66[24] = *(v3 + 120);
  *&v66[8] = *(v3 + 104);
  return sub_242CD5570(&v60);
}

uint64_t NotificationModel.InferredNotificationModel.description.getter()
{
  v1 = 7104878;
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000020, 0x8000000242F59D80);
  v4 = NotificationModel.Text.description.getter();
  MEMORY[0x245D26660](v4);

  MEMORY[0x245D26660](0x6E6F74747562202CLL, 0xEE00203A65707954);
  if (v2 == 255)
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    v5 = NotificationModel.ButtonType.description.getter();
    v7 = v6;
  }

  MEMORY[0x245D26660](v5, v7);

  MEMORY[0x245D26660](0x6C6F626D7973202CLL, 0xEA0000000000203ALL);
  if (v3)
  {
    v1 = NotificationModel.Symbol.description.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x245D26660](v1, v9);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_242CD4ED4()
{
  result = qword_27ECF0168;
  if (!qword_27ECF0168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0160, &qword_242F0A500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0168);
  }

  return result;
}

void *sub_242CD4F38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_242CDD814(*(v1 + 16), 0);
  v5 = sub_242CDFA50(v8, (v4 + 4), v2);
  sub_242C90A34(a1, v7);
  sub_242CD5F68(v8);
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_242CD4FC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1F30, &qword_242F13590);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_242CD50AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0340, &qword_242F0A818);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s14CarPlayAssetUI17NotificationModelV10ButtonTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      if (v2 == v7 && v3 == v8)
      {
        v15 = 1;
        goto LABEL_13;
      }

      v13 = sub_242F06110();
      goto LABEL_11;
    }
  }

  else if ((*(a2 + 32) & 1) == 0)
  {
    v13 = sub_242C72D78(*a1, *a2);
LABEL_11:
    v15 = v13;
    goto LABEL_13;
  }

  v15 = 0;
LABEL_13:
  sub_242CD53A8(v7, v8, v9, v10, v11);
  sub_242CD53A8(v2, v3, v4, v5, v6);
  sub_242CD5410(v2, v3, v4, v5, v6);
  sub_242CD5410(v7, v8, v9, v10, v11);
  return v15 & 1;
}

void sub_242CD52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

void sub_242CD5324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t sub_242CD5390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_242CD53A8(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_242CD53A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_242CD53F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_242CD5410(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_242CD5410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

void sub_242CD5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_242CD54A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

double sub_242CD55A0(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL _s14CarPlayAssetUI17NotificationModelV08InferredeF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v49 = *(a1 + 80);
  v48 = *(a1 + 88);
  v50 = *(a1 + 96);
  v44 = *(a1 + 104);
  v42 = *(a1 + 128);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v51 = *(a2 + 40);
  v52 = *(a1 + 48);
  v53 = *(a2 + 48);
  v54 = *(a2 + 56);
  v55 = *(a2 + 64);
  v56 = *a2;
  v13 = *(a2 + 72);
  v46 = *(a2 + 80);
  v47 = *(a2 + 88);
  v45 = *(a2 + 96);
  v43 = *(a2 + 104);
  v41 = *(a2 + 128);
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v61 = v2;
  v62 = v3;
  v63 = v4;
  v64 = v5;
  v65 = v14;
  v57 = v10;
  v58 = v11;
  v59 = v12;
  v60 = v15;
  sub_242CD52B8(v2, v3, v4, v5, v14);
  sub_242CD52B8(v56, v10, v11, v12, v15);
  v16 = _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(&v61, &v56);
  sub_242CD5324(v56, v57, v58, v59, v60);
  sub_242CD5324(v61, v62, v63, v64, v65);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = v9;
  if (v9 == 255)
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    if (v13 == 255)
    {
      v17 = -1;
      v21 = v52;
      sub_242CD5390(v6, v52, v19, v8, 255);
      sub_242CD5390(v51, v53, v54, v55, 255);
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v18 = v8;
  v19 = v7;
  v20 = v6;
  if (v13 == 255)
  {
LABEL_10:
    sub_242CD5390(v20, v52, v19, v18, v9);
    sub_242CD5390(v51, v53, v54, v55, v13);
    sub_242CD53F8(v20, v52, v19, v18, v9);
    v22 = v51;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v26 = v13;
LABEL_13:
    sub_242CD53F8(v22, v23, v24, v25, v26);
    return 0;
  }

  v21 = v52;
  if ((v9 & 1) == 0)
  {
    if ((v13 & 1) == 0)
    {
      v28 = sub_242C72D78(v6, v51);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if ((v13 & 1) == 0)
  {
LABEL_12:
    sub_242CD5390(v6, v52, v19, v8, v9);
    sub_242CD5390(v51, v53, v54, v55, v13);
    sub_242CD5390(v6, v52, v19, v8, v9);
    sub_242CD5410(v6, v52, v19, v8, v9 & 1);
    sub_242CD5410(v51, v53, v54, v55, v13 & 1);
    v22 = v6;
    v23 = v52;
    v24 = v19;
    v25 = v8;
    v26 = v9;
    goto LABEL_13;
  }

  if (v6 == v51 && v52 == v53)
  {
    sub_242CD5390(v6, v52, v19, v8, v9);
    sub_242CD5390(v6, v52, v54, v55, v13);
    sub_242CD5390(v6, v52, v19, v8, v9);
    sub_242CD5410(v6, v52, v19, v8, 1);
    sub_242CD5410(v6, v52, v54, v55, 1);
LABEL_17:
    sub_242CD53F8(v20, v21, v19, v18, v17);
    goto LABEL_21;
  }

  v28 = sub_242F06110();
LABEL_20:
  v40 = v28;
  sub_242CD5390(v6, v52, v19, v8, v9);
  sub_242CD5390(v51, v53, v54, v55, v13);
  sub_242CD5390(v6, v52, v19, v8, v9);
  sub_242CD5410(v6, v52, v19, v8, v9 & 1);
  sub_242CD5410(v51, v53, v54, v55, v13 & 1);
  sub_242CD53F8(v6, v52, v19, v8, v9);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (!v48)
  {
    v30 = v49;
    v29 = v50;
    sub_242CD5460(v49, 0, v50);
    v32 = v46;
    v31 = v47;
    v33 = v45;
    if (!v47)
    {
      sub_242CD5460(v46, 0, v45);
      sub_242CD54A4(v49, 0, v50);
      if (v44 == v43)
      {
        return v42 == v41;
      }

      return 0;
    }

    sub_242CD5460(v46, v47, v45);
    goto LABEL_33;
  }

  v30 = v49;
  v29 = v50;
  v32 = v46;
  v31 = v47;
  v33 = v45;
  if (!v47)
  {
    sub_242CD5460(v49, v48, v50);
    sub_242CD5460(v46, 0, v45);
    sub_242CD5460(v49, v48, v50);

LABEL_33:
    sub_242CD54A4(v30, v48, v29);
    sub_242CD54A4(v32, v31, v33);
    return 0;
  }

  if ((v49 != v46 || v48 != v47) && (sub_242F06110() & 1) == 0)
  {
    sub_242CD5460(v49, v48, v50);
    sub_242CD5460(v46, v47, v45);
    v37 = v49;
    v38 = v48;
    v39 = v50;
LABEL_42:
    sub_242CD5460(v37, v38, v39);
    sub_242CD54A4(v46, v47, v45);
LABEL_43:
    v36 = 1;
    goto LABEL_44;
  }

  if (!v50)
  {
    sub_242CD5460(v49, v48, 0);
    v35 = 0;
    if (!v45)
    {
      sub_242CD5460(v46, v47, 0);
      sub_242CD5460(v49, v48, 0);
      sub_242CD54A4(v46, v47, 0);
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  if (!v45)
  {
    sub_242CD5460(v49, v48, v50);
    v35 = v50;
LABEL_41:
    sub_242CD5460(v46, v47, v45);
    v37 = v49;
    v38 = v48;
    v39 = v35;
    goto LABEL_42;
  }

  sub_242CD5460(v49, v48, v50);
  sub_242CD5460(v46, v47, v45);
  sub_242CD5460(v49, v48, v50);

  v34 = sub_242F04710();

  sub_242CD54A4(v46, v47, v45);
  if ((v34 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  v36 = 0;
LABEL_44:

  sub_242CD54A4(v49, v48, v50);
  result = 0;
  if ((v36 & 1) == 0 && ((v44 ^ v43) & 1) == 0)
  {
    return v42 == v41;
  }

  return result;
}

unint64_t sub_242CD5C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_242CD5C9C(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242CD5C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1F28;
  if (!qword_27ECF1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1F28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lys5UInt8VytIsegnr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_242CD5D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242CD5D64(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_242CD5DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_242CD5E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV10ButtonTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV6SymbolVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242CD5EB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242CD5EF8(uint64_t result, int a2, int a3)
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
      *(result + 112) = (a2 - 1);
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

uint64_t sub_242CD5F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF07E8, &unk_242F13580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242CD5FD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_242F05020();

    return sub_242F05140();
  }

  return result;
}

uint64_t sub_242CD6080(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_242F05570();
  if (!v19)
  {
    return sub_242F05350();
  }

  v41 = v19;
  v45 = sub_242F05BE0();
  v32 = sub_242F05BF0();
  sub_242F05B90();
  result = sub_242F05560();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_242F05650();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_242F05BD0();
      result = sub_242F055B0();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Sequence<>.flatten()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_242F05350();
  sub_242F053E0();
  sub_242F051A0();

  return v4;
}

uint64_t static Pair<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_242F04EE0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Pair(0, a3, a4, v8);
  return sub_242F04EE0() & 1;
}

uint64_t Pair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for Pair(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

void *Pair.subscript.getter()
{
  return swift_getAtKeyPath();
}

{
  return swift_getAtKeyPath();
}

uint64_t static Pair<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_242F04E60())
  {
    return 1;
  }

  if ((sub_242F04EE0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Pair(0, a3, a4, v9);
  return sub_242F04E60() & 1;
}

uint64_t Pair<>.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  sub_242F04D90();
  sub_242F04D90();
  return sub_242F063E0();
}

uint64_t sub_242CD6990(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  Pair<>.hash(into:)(v4, a2);
  return sub_242F063E0();
}

uint64_t Pair<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v32 = a4;
  v34 = a3;
  v30 = a5;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v13;
  v16 = type metadata accessor for Pair(0, v13, v14, v15);
  v28 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06460();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v26 = v18;
  v27 = a1;
  v25 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v19 = v33;
  sub_242F05F80();
  v20 = v26;
  (*(v31 + 32))(v26, v19, v37);
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  sub_242F05F80();
  v21 = v25;
  (*(v29 + 32))(&v20[*(v25 + 36)], v9, a2);
  __swift_destroy_boxed_opaque_existential_2Tm(v35);
  v22 = v28;
  (*(v28 + 16))(v30, v20, v21);
  __swift_destroy_boxed_opaque_existential_2Tm(v27);
  return (*(v22 + 8))(v20, v21);
}

uint64_t Pair<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064A0();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_242F05FA0();
  if (!v6)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_242F05FA0();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v8);
}

uint64_t ClosedRange<>.doubleValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 16);
  *&result = COERCE_DOUBLE(v3(v4));
  if (v6)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&result;
  *&result = COERCE_DOUBLE((v3)(v4, a2));
  if ((v8 & 1) == 0)
  {
    if (v7 <= *&result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t Array<A>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11[10] = a1;
  v11[8] = a3;
  v11[9] = a4;
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();
  v11[11] = v13;
  v12 = v14;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1F38, &qword_242F13598);
  return sub_242CD7194(sub_242CD90E0, v11, MEMORY[0x277D84A98], a3, v9, a5);
}

uint64_t sub_242CD7010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_242F05860();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, v8);
  v12 = sub_242F053E0();
  return sub_242CD91B0(v10, a3, v12, v6);
}

uint64_t Array<A>.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_242CD91B0(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a2, AssociatedTypeWitness);
}

uint64_t sub_242CD7194@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

void (*Array<A>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a3 + 16);
  v13 = sub_242F05860();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[7] = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  Array<A>.subscript.getter(a2, *v4, v12, a4, v17);
  return sub_242CD761C;
}

void sub_242CD761C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[8];
  v3 = (*a1)[9];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v11 = *v2;
    (*(v9 + 16))(v7, v5, v8);
    sub_242CD91B0(v7, v3, v11, v10);
    (*(v4 + 8))(v3, v6);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    sub_242CD91B0((*a1)[6], v3, *v2, v2[1]);
    (*(v4 + 8))(v3, v6);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

void Array<A>.move(id:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getWitnessTable();
  sub_242F055D0();

  if ((v7 & 1) == 0)
  {

    if (a2 >= 1 && __OFSUB__(sub_242F05380(), 1))
    {
      __break(1u);
    }

    v5 = sub_242F05620();

    if (v5)
    {
      Array.move(at:to:)(to, to);
    }
  }
}

uint64_t sub_242CD7884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  v8 = sub_242F04EE0();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v8 & 1;
}

Swift::Void __swiftcall Array.move(at:to:)(Swift::Int at, Swift::Int to)
{
  MEMORY[0x28223BE20](at);
  sub_242F053C0();
  sub_242F053B0();
}

uint64_t Mirror.values<A>(of:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_242F06440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1F40, &unk_242F26F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v28 = _s14CarPlayAssetUI10EmptyArrayO7defaultSayxGvgZ_0();
  sub_242F06420();
  v14 = sub_242F06410();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  sub_242CA321C(v13, v10, &qword_27ECF1F40, &unk_242F26F40);
  if ((*(v15 + 88))(v10, v14) != *MEMORY[0x277D84C00])
  {
    (*(v15 + 8))(v10, v14);
LABEL_7:
    v20 = sub_242F06430();
    MEMORY[0x28223BE20](v20);
    *(&v22 - 4) = a2;
    *(&v22 - 3) = a1;
    *(&v22 - 2) = &v28;
    sub_242F05C10();

LABEL_8:
    sub_242C6D138(v13, &qword_27ECF1F40, &unk_242F26F40);
    return v28;
  }

  v22 = v5;
  v23 = v4;
  v24 = a1;
  v16 = *(sub_242F06430() + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25 = v16;
  v17 = sub_242F05AB0();
  swift_getObjectType();
  result = sub_242F05AB0();
  if (v17 == result)
  {
    v19 = sub_242F05AC0();
    swift_unknownObjectRelease();
    if (v19)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_242F05C50();
      swift_unknownObjectRelease();

      v27[0] = v26[0];
      v27[1] = v26[1];
      v27[2] = v26[2];
      sub_242CA321C(v27, v26, &qword_27ECF1F48, &qword_242F135A0);

      sub_242F063F0();
      v21 = Mirror.values<A>(of:)(v24, a2);
      (*(v22 + 8))(v7, v23);
      *&v26[0] = v21;
      sub_242F053E0();
      swift_getWitnessTable();
      sub_242F05390();
      sub_242C6D138(v27, &qword_27ECF1F48, &qword_242F135A0);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

{
  v9[5] = Mirror.values<A>(of:)(a1, a2);
  v9[2] = a2;
  v3 = sub_242F053E0();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_242CD6080(sub_242CD9530, v9, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v7 = sub_242C86440(v6);

  return v7;
}

uint64_t sub_242CD7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  MEMORY[0x28223BE20](a1);
  v7 = sub_242F06440();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, &v17, &qword_27ECF1F48, &qword_242F135A0);

  sub_242F063F0();
  v11 = sub_242F06400();
  v12 = *(v8 + 8);
  v12(v10, v7);
  sub_242CA321C(a1, &v17, &qword_27ECF1F48, &qword_242F135A0);

  if (v11 == a2)
  {
    sub_242CD9C00(&v18, &v16);
    swift_dynamicCast();
    sub_242F053E0();
    return sub_242F053A0();
  }

  else
  {
    sub_242F063F0();
    v13 = Mirror.values<A>(of:)(a2, a4);
    v12(v10, v7);
    v17 = v13;
    sub_242F053E0();
    swift_getWitnessTable();
    return sub_242F05390();
  }
}

uint64_t sub_242CD81C8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_242F04F90();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Mirror.values<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = Mirror.values<A>(of:)(a1, a2);
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v7 = sub_242F053E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_242CD6080(sub_242CD9550, v13, v7, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v14 = v11;
  sub_242F053E0();
  swift_getWitnessTable();
  return sub_242F05530();
}

uint64_t sub_242CD83D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = sub_242F04E60();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Dictionary.mapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a1;
  v14[8] = a2;
  v9 = sub_242F04D40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
  WitnessTable = swift_getWitnessTable();
  result = sub_242CD6080(sub_242CD9C10, v14, v9, TupleTypeMetadata2, v11, WitnessTable, MEMORY[0x277D84950], &v15);
  if (!v8)
  {
    v16 = result;
    sub_242F053E0();
    swift_getWitnessTable();
    return sub_242F04D10();
  }

  return result;
}

uint64_t Dictionary.mapKeys<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a1;
  v23 = a2;
  v11 = sub_242F04D40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
  WitnessTable = swift_getWitnessTable();
  result = sub_242CD6080(sub_242CD9584, v16, v11, TupleTypeMetadata2, v13, WitnessTable, MEMORY[0x277D84950], &v24);
  if (!v10)
  {
    v25 = result;
    sub_242F053E0();
    swift_getWitnessTable();
    return sub_242F04D50();
  }

  return result;
}

uint64_t sub_242CD8830@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v19[1] = a5;
  v20 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = v19 - v15;
  result = a2(a1, v14);
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v13 + 16))(v16, a1, TupleTypeMetadata2);
    (*(*(a4 - 8) + 32))(a6 + v18, &v16[*(TupleTypeMetadata2 + 48)], a4);
    return (*(*(v20 - 8) + 8))(v16);
  }

  return result;
}

uint64_t Dictionary.zipValues(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_242F04D20();

  swift_getWitnessTable();
  sub_242F05530();

  v17 = sub_242F05510();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a2;
  v16[6] = a1;
  v10 = sub_242F05520();
  sub_242F05860();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_242CD6080(sub_242CD95D4, v16, v10, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v17 = v14;
  sub_242F053E0();
  swift_getWitnessTable();
  return sub_242F04D10();
}

uint64_t sub_242CD8BE8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a7@<X8>)
{
  sub_242F05860();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  (*(*(a4 - 8) + 16))(a7, a1, a4);
  sub_242F04D60();
  return sub_242F04D60();
}

uint64_t Sequence.merge<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_242F04C80();
  sub_242F04D40();
  sub_242F05190();
  return v6;
}

uint64_t sub_242CD8DB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_242F04D40();

  return sub_242F04D30();
}

uint64_t sub_242CD8E3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_242F053E0();
  swift_checkMetadataState();
  swift_getWitnessTable();
  return sub_242F05670();
}

uint64_t Sequence<>.set.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v5);
  swift_getAssociatedTypeWitness();
  return sub_242F05530();
}

uint64_t sub_242CD90E0@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_242F05400();
  return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
}

uint64_t sub_242CD915C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_242CD91B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = *(a3 + 16);
  v28 = sub_242F05860();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v26 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v26 = &v26 - v16;
  v27 = v4;
  v33 = *v4;
  v30 = v7;
  v31 = a4;
  v32 = a2;

  swift_getWitnessTable();
  sub_242F055D0();

  if (v35)
  {
    return (*(v8 + 8))(v29, v28);
  }

  v18 = v34;
  v19 = v28;
  (*(v8 + 16))(v10, v29, v28);
  if ((*(v11 + 48))(v10, 1, v7) == 1)
  {
    v20 = *(v8 + 8);
    v20(v10, v19);
    sub_242F053C0();
    v20(v29, v19);
    return (*(v11 + 8))(v14, v7);
  }

  else
  {
    v21 = v26;
    (*(v11 + 32))(v26, v10, v7);
    v22 = v27;
    sub_242F05340();
    v23 = *v22;
    sub_242CD915C(v18, v23, v7);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    (*(v8 + 8))(v29, v19);
    v25 = v23 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v25 = v23;
    }

    return (*(v11 + 40))(v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, v21, v7);
  }
}

uint64_t sub_242CD9674(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242CD9700(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_242CD98DC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

_OWORD *sub_242CD9C00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void EditableTheme.optimize(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v72 = MEMORY[0x277D84F98];
  KeyPath = swift_getKeyPath();
  v6 = *(v4 + 16);
  v69 = v4;
  if (v6)
  {
    v7 = sub_242CDD828(v6, 0);
    v67 = sub_242CDFAF8(&v73, v7 + 4, v6, v4);
    v8 = v73;

    sub_242C6548C(v8);
    if (v67 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  *&v73 = v7;
  sub_242CE1B7C(&v73, KeyPath);

  v9 = v73;
  v10 = *(v73 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    v13 = MEMORY[0x277D84F98];
    v68 = MEMORY[0x277D84F98];
    while (2)
    {
      v14 = (v12 + 56 * v11);
      while (1)
      {
        if (v11 >= v10)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        v76 = *(v14 + 6);
        v74 = v16;
        v75 = v17;
        v73 = v15;
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_44;
        }

        v19 = v74;

        sub_242C8745C(&v73, &v71);
        v20 = sub_242CE20AC(v13, v19, a1, &v73, &v72);

        v21 = v20;
        if (*(v20 + 16))
        {
          break;
        }

        sub_242CC50B0(&v73);
        ++v11;
        v14 = (v14 + 56);
        if (v18 == v10)
        {
          goto LABEL_16;
        }
      }

      v22 = *(&v73 + 1);
      v65 = v73;
      v23 = v9;
      v24 = v12;
      v25 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v68;
      v27 = v25;
      v12 = v24;
      v9 = v23;
      sub_242CDE950(v27, v65, v22, isUniquelyReferenced_nonNull_native, sub_242D0210C, sub_242D05E70, sub_242D0BFDC);

      sub_242CC50B0(&v73);
      v68 = v71;
      ++v11;
      if (v18 != v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v68 = MEMORY[0x277D84F98];
  }

LABEL_16:

  v28 = swift_getKeyPath();
  v29 = v69;
  v30 = *(v69 + 16);
  if (!v30)
  {

    v31 = MEMORY[0x277D84F90];
LABEL_20:
    v71 = v31;
    sub_242CE1B7C(&v71, v28);

    v34 = v71;
    v35 = *(v71 + 2);
    if (v35)
    {
      v71 = MEMORY[0x277D84F90];
      sub_242E3BDB0(0, v35, 0);
      v36 = v71;
      v37 = (v34 + 64);
      do
      {
        v38 = *(v37 - 4);
        v39 = *(v37 - 3);
        v40 = *(v37 - 1);
        v41 = *v37;
        v71 = v36;
        v43 = *(v36 + 2);
        v42 = *(v36 + 3);

        if (v43 >= v42 >> 1)
        {
          sub_242E3BDB0((v42 > 1), v43 + 1, 1);
          v36 = v71;
        }

        *(v36 + 2) = v43 + 1;
        v44 = &v36[32 * v43];
        *(v44 + 4) = v38;
        *(v44 + 5) = v39;
        *(v44 + 6) = v40;
        *(v44 + 7) = v41;
        v37 += 7;
        --v35;
      }

      while (v35);

      v29 = v69;
      if (*(v36 + 2))
      {
        goto LABEL_26;
      }
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1FD8, &qword_242F13810);
        v45 = sub_242F05CB0();
        goto LABEL_29;
      }
    }

    v45 = MEMORY[0x277D84F98];
LABEL_29:
    v71 = v45;
    sub_242CDDB98(v36, 1, &v71, sub_242D01734, sub_242D04A98);
    v70 = v71;
    v46 = swift_getKeyPath();
    v47 = *(v29 + 16);
    if (v47)
    {
      v48 = sub_242CDD828(*(v29 + 16), 0);
      v49 = sub_242CDFAF8(&v71, v48 + 4, v47, v29);
      v50 = v71;

      sub_242C6548C(v50);
      if (v49 == v47)
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    v48 = MEMORY[0x277D84F90];
LABEL_33:
    v71 = v48;
    sub_242CE1B7C(&v71, v46);

    v51 = v71;
    v52 = *(v71 + 2);
    if (v52)
    {
      v71 = MEMORY[0x277D84F90];
      sub_242E3BD90(0, v52, 0);
      v53 = v71;
      v54 = (v51 + 80);
      do
      {
        v56 = *(v54 - 6);
        v55 = *(v54 - 5);
        v57 = *(v54 - 1);
        v58 = *v54;
        v71 = v53;
        v60 = *(v53 + 2);
        v59 = *(v53 + 3);

        if (v60 >= v59 >> 1)
        {
          sub_242E3BD90((v59 > 1), v60 + 1, 1);
          v53 = v71;
        }

        *(v53 + 2) = v60 + 1;
        v61 = &v53[32 * v60];
        *(v61 + 4) = v56;
        *(v61 + 5) = v55;
        *(v61 + 6) = v57;
        *(v61 + 7) = v58;
        v54 += 7;
        --v52;
      }

      while (v52);

      if (*(v53 + 2))
      {
        goto LABEL_39;
      }
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_39:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1FE0, &qword_242F13818);
        v62 = sub_242F05CB0();
LABEL_42:
        v71 = v62;
        sub_242CDDB98(v53, 1, &v71, sub_242D01720, sub_242D04A84);
        v63 = v72;
        *a2 = xmmword_242F137E0;
        *(a2 + 16) = v63;
        *(a2 + 24) = v68;
        v64 = v71;
        *(a2 + 32) = v70;
        *(a2 + 40) = v64;
        *(a2 + 48) = 2;
        return;
      }
    }

    v62 = MEMORY[0x277D84F98];
    goto LABEL_42;
  }

  v31 = sub_242CDD828(*(v69 + 16), 0);
  v32 = sub_242CDFAF8(&v71, v31 + 4, v30, v69);
  v33 = v71;

  sub_242C6548C(v33);
  if (v32 == v30)
  {
    v29 = v69;
    goto LABEL_20;
  }

LABEL_45:
  __break(1u);

  __break(1u);
  swift_unexpectedError();
  __break(1u);

  __break(1u);
}

uint64_t sub_242CDA378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = swift_bridgeObjectRelease_n())
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    swift_bridgeObjectRetain_n();

    v18 = sub_242CDA518(MEMORY[0x277D84F98], v17, a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_242CDE950(v18, v15, v16, isUniquelyReferenced_nonNull_native, sub_242D01F1C, sub_242D05A90, sub_242D0BFDC);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242CDA518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  v65 = a2;

  v10 = 0;
LABEL_4:
  v11 = v10;
  v42 = a1;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v65 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v65 + 56) + 8 * v13);
    v18 = *(a3 + 16);
    v19 = *(v18 + 16);
    swift_bridgeObjectRetain_n();

    if (v19)
    {

      v20 = sub_242CE8370();
      if (v21)
      {
        v33 = (*(v18 + 56) + (v20 << 7));
        v35 = v33[2];
        v34 = v33[3];
        v36 = v33[1];
        v50 = *v33;
        v51 = v36;
        v52 = v35;
        v53 = v34;
        v37 = v33[4];
        v38 = v33[5];
        v39 = v33[6];
        *(v56 + 9) = *(v33 + 105);
        v55 = v38;
        v56[0] = v39;
        v54 = v37;
        sub_242C7DAC0(&v50, &v57);

        v47 = v54;
        v48 = v55;
        *v49 = v56[0];
        *&v49[9] = *(v56 + 9);
        v43 = v50;
        v44 = v51;
        v45 = v52;
        v46 = v53;
        Theme.Palette.merging(colors:)(v17, v64);
        v61 = v47;
        v62 = v48;
        v63[0] = *v49;
        *(v63 + 9) = *&v49[9];
        v57 = v43;
        v58 = v44;
        v59 = v45;
        v60 = v46;
        sub_242C7DAF8(&v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_242CDE800(v64, v16, v15, isUniquelyReferenced_nonNull_native);

        result = swift_bridgeObjectRelease_n();
        a1 = v42;
        goto LABEL_4;
      }
    }

    a1 = v42;
    v22 = sub_242CE8370();
    if (v23)
    {
      v24 = v22;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *&v50 = v42;
      if ((v25 & 1) == 0)
      {
        sub_242D01F30();
        a1 = v50;
      }

      v26 = (*(a1 + 56) + (v24 << 7));
      v28 = v26[2];
      v27 = v26[3];
      v29 = v26[1];
      v57 = *v26;
      v58 = v29;
      v59 = v28;
      v60 = v27;
      v30 = v26[4];
      v31 = v26[5];
      v32 = v26[6];
      *(v63 + 9) = *(v26 + 105);
      v62 = v31;
      v63[0] = v32;
      v61 = v30;
      sub_242ED056C(v24, a1);

      sub_242C7DAF8(&v57);

      goto LABEL_4;
    }

    result = swift_bridgeObjectRelease_n();
    v11 = v10;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242CDA814(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v50 = MEMORY[0x277D84F90];
  sub_242E3BE30(0, v1, 0);
  v2 = v50;
  v51 = a1 + 64;
  result = sub_242F05940();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 36);
    v39 = v1;
    v7 = 1;
    while (1)
    {
      v8 = v5 >> 6;
      if ((*(v51 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v9 = (*(a1 + 56) + (v5 << 7));
      v10 = v9[3];
      v12 = *v9;
      v11 = v9[1];
      v41[2] = v9[2];
      v41[3] = v10;
      v41[0] = v12;
      v41[1] = v11;
      v14 = v9[5];
      v13 = v9[6];
      v15 = v9[4];
      *(v42 + 9) = *(v9 + 105);
      v41[5] = v14;
      v42[0] = v13;
      v41[4] = v15;
      v16 = *v9;
      v17 = v9[1];
      v18 = v9[3];
      v45 = v9[2];
      v46 = v18;
      v43 = v16;
      v44 = v17;
      v19 = v9[4];
      v20 = v9[5];
      v21 = v9[6];
      *(v49 + 9) = *(v9 + 105);
      v48 = v20;
      v49[0] = v21;
      v47 = v19;

      sub_242C7DAC0(v41, v40);

      v50 = v2;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_242E3BE30((v22 > 1), v23 + 1, 1);
        v2 = v50;
      }

      *(v2 + 16) = v23 + 1;
      v24 = (v2 + (v23 << 7));
      v25 = v43;
      v26 = v44;
      v27 = v46;
      v24[4] = v45;
      v24[5] = v27;
      v24[2] = v25;
      v24[3] = v26;
      v28 = v47;
      v29 = v48;
      v30 = v49[0];
      *(v24 + 137) = *(v49 + 9);
      v24[7] = v29;
      v24[8] = v30;
      v24[6] = v28;
      v31 = 1 << *(a1 + 32);
      if (v5 >= v31)
      {
        goto LABEL_27;
      }

      v32 = *(v51 + 8 * v8);
      if ((v32 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v33 = v32 & (-2 << (v5 & 0x3F));
      if (v33)
      {
        v5 = __clz(__rbit64(v33)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v8 << 6;
        v35 = v8 + 1;
        v36 = (a1 + 72 + 8 * v8);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_242C9E060(v5, v6, 0);
            v5 = __clz(__rbit64(v37)) + v34;
            goto LABEL_19;
          }
        }

        result = sub_242C9E060(v5, v6, 0);
        v5 = v31;
      }

LABEL_19:
      if (v7 == v39)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        ++v7;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_242CDAAFC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 8)
  {
    v8 = i[5];
    v9 = i[3];
    v35 = i[4];
    v36 = v8;
    v10 = i[5];
    v37[0] = i[6];
    *(v37 + 9) = *(i + 105);
    v11 = i[1];
    v32[0] = *i;
    v32[1] = v11;
    v12 = i[3];
    v14 = *i;
    v13 = i[1];
    v33 = i[2];
    v34 = v12;
    v29 = v35;
    v30 = v10;
    v31[0] = i[6];
    *(v31 + 9) = *(i + 105);
    v25 = v14;
    v26 = v13;
    v27 = v33;
    v28 = v9;
    sub_242C7DAC0(v32, &v18);
    v15 = a1(&v25);
    if (v3)
    {
      break;
    }

    v16 = v15;
    v22 = v29;
    v23 = v30;
    v24[0] = v31[0];
    *(v24 + 9) = *(v31 + 9);
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    sub_242C7DAF8(&v18);
    if (v16)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v22 = v29;
  v23 = v30;
  v24[0] = v31[0];
  *(v24 + 9) = *(v31 + 9);
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  sub_242C7DAF8(&v18);
  return v6;
}

uint64_t sub_242CDAC68(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Component(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_242CDAD54(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a3 + 80); ; i += 7)
  {
    v6 = *(i - 5);
    v8 = *(i - 4);
    v7 = *(i - 3);
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    v15[0] = *(i - 6);
    v15[1] = v6;
    v15[2] = v8;
    v15[3] = v7;
    v15[4] = v10;
    v15[5] = v9;
    v15[6] = v11;

    v12 = v16(v15);

    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    if (v14 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

void ResolvedTheme.palettes(for:)()
{
  v1 = *v0;
  if (v1)
  {
    if (*(v1 + 16))
    {

      v2 = sub_242CE8370();
      if (v3)
      {
        v4 = *(*(v1 + 56) + 8 * v2);

        sub_242CDA814(v4);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_242CDAF08(void *a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  v148 = a5;
  v144 = a1;
  v154 = sub_242F06440();
  v146 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = (&v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = type metadata accessor for Layout(0);
  v9 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  *&v152 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v136 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v136 - v15;
  memcpy(v184, a2, 0x3B8uLL);
  v17 = *(a3 + 16);
  v145 = v9;
  if (v17)
  {
    v18 = *(v9 + 72);
    v150 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v19 = a3 + v150;
    v20 = MEMORY[0x277D84F90];
    v151 = a4;
    v21 = v13;
    while (1)
    {
      sub_242CE3500(v19, v16);
      v22 = &v16[*(v185 + 28)];
      v23 = *(v22 + 1);
      v24 = a4[1];
      if (v23)
      {
        if (v24)
        {
          v25 = *v22 == *a4 && v23 == v24;
          if (v25 || (sub_242F06110() & 1) != 0)
          {
            goto LABEL_15;
          }
        }
      }

      else if (!v24)
      {

LABEL_15:
        sub_242CE35C0(v16, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v155[0] = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BE70(0, *(v20 + 16) + 1, 1);
          v20 = *&v155[0];
        }

        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_242E3BE70((v27 > 1), v28 + 1, 1);
          v20 = *&v155[0];
        }

        *(v20 + 16) = v28 + 1;
        v29 = v20 + v150 + v28 * v18;
        v13 = v21;
        sub_242CE35C0(v21, v29);
        a4 = v151;
        goto LABEL_5;
      }

      sub_242CE3564(v16);
LABEL_5:
      v19 += v18;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_21:
  v30 = *(v20 + 16);
  if (!v30)
  {
  }

  v147 = &v184[17] + 8;
  *&v169 = MEMORY[0x277D84F90];
  sub_242E3BE50(0, v30, 0);
  v31 = v169;
  v32 = v20 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
  v33 = *(v145 + 72);
  v150 = v20;
  v151 = v33;
  v34 = (v146 + 8);
  do
  {
    v35 = v152;
    sub_242CE3500(v32, v152);
    *(&v155[1] + 1) = v185;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
    sub_242CE3500(v35, boxed_opaque_existential_1);
    v37 = v153;
    sub_242F063F0();
    v38 = sub_242D72660();
    (*v34)(v37, v154);
    v41 = sub_242C864D8(v38, v39, v40);

    sub_242CE3564(v35);
    *&v169 = v31;
    v43 = *(v31 + 16);
    v42 = *(v31 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_242E3BE50((v42 > 1), v43 + 1, 1);
      v31 = v169;
    }

    *(v31 + 16) = v43 + 1;
    *(v31 + 8 * v43 + 32) = v41;
    v32 += v151;
    --v30;
  }

  while (v30);

  v44 = *(v31 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x277D84FA0];
    while (v45 < *(v31 + 16))
    {
      v47 = v45 + 1;

      v46 = sub_242C80B30(v48, v46);
      v45 = v47;
      if (v44 == v47)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = MEMORY[0x277D84FA0];
LABEL_33:

  v50 = *&v184[59];
  sub_242CA321C(v184, v155, &qword_27ECF0A70, &qword_242F0C398);
  v142 = v50;

  v143 = *(&v184[0] + 1);
  v185 = *&v184[0];
  v169 = v184[0];
  sub_242C6CB78(v51, v52, v53);

  v54 = sub_242F058A0();
  v151 = v55;
  *&v152 = v54;
  v156 = sub_242CFFB34;
  v157 = 0;
  memcpy(v155, v184, sizeof(v155));
  v153 = ColorMap.explicit(colorIDs:colorSet:)(v46, v155);

  v56 = *(&v184[58] + 1);
  v57 = *(&v184[53] + 1);
  v154 = *(&v184[53] + 1);
  v58 = v184[54];
  v59 = *(&v184[55] + 1);
  v60 = *&v184[55];
  v61 = LOBYTE(v184[56]);
  v150 = *(&v184[56] + 1);
  v63 = *(&v184[57] + 1);
  v62 = *&v184[57];

  sub_242C7C708(v57, v58, *(&v58 + 1), v60, v59, v61);
  sub_242C7C77C(v62, v63);
  sub_242C7C7BC(v184);
  v64 = v147[648];
  v156 = v185;
  v157 = v143;
  v158 = v152;
  v159 = v151;
  v145 = v56;
  v146 = v60;
  v160 = v56;
  v161 = v153;
  v162 = v154;
  v138 = *(&v58 + 1);
  v139 = v58;
  v163 = v58;
  v164 = __PAIR128__(v59, v60);
  v65 = v59;
  v66 = v143;
  v165 = v61;
  v166 = v150;
  v137 = v62;
  v167 = __PAIR128__(v63, v62);
  v67 = v63;
  v68 = v64;
  v168 = v64;
  v69 = *v148;
  v70 = *(*v148 + 16);

  if (!v70)
  {
    v140 = v61;
    v141 = v65;
    v92 = v138;
    v94 = v139;
    v93 = v137;
LABEL_39:
    sub_242C7DAC0(&v156, v155);
    v97 = v185;
    v96 = v185;
    v95 = v66;
    goto LABEL_40;
  }

  v71 = sub_242CE8370();
  if ((v72 & 1) == 0)
  {
    v68 = v168;
    v67 = *(&v167 + 1);
    v93 = v167;
    v92 = *(&v163 + 1);
    v94 = v163;
    v141 = *(&v164 + 1);
    v140 = v165;
    v153 = v161;
    v154 = v162;
    v145 = v160;
    v146 = v164;
    *&v152 = v158;
    v150 = v166;
    v151 = v159;
    goto LABEL_39;
  }

  v73 = (*(v69 + 56) + (v71 << 7));
  v74 = v73[1];
  v76 = v73[2];
  v75 = v73[3];
  v155[0] = *v73;
  v155[1] = v74;
  v155[2] = v76;
  v155[3] = v75;
  v77 = v73[4];
  v78 = v73[5];
  v79 = v73[6];
  *(&v155[6] + 9) = *(v73 + 105);
  v155[5] = v78;
  v155[6] = v79;
  v155[4] = v77;
  v80 = v161;
  v81 = *(&v76 + 1);
  sub_242C7DAC0(v155, &v169);

  v82 = swift_isUniquelyReferenced_nonNull_native();
  *&v169 = v81;
  v83 = v149;
  sub_242C7CB44(v80, sub_242C7BD8C, 0, v82, &v169);
  v149 = v83;
  if (!v83)
  {

    v153 = v169;
    v137 = *(&v155[0] + 1);
    v138 = *&v155[0];
    v84 = *(&v155[1] + 1);
    *&v152 = *&v155[1];
    v139 = *(&v155[3] + 1);
    v85 = *&v155[3];
    v86 = *(&v155[4] + 1);
    v87 = *&v155[4];
    v88 = *&v155[5];
    v89 = BYTE8(v155[5]);
    v90 = *(&v155[6] + 1);
    v150 = *&v155[6];
    v91 = *&v155[7];
    v145 = *&v155[2];

    v151 = v84;

    v154 = v85;
    v67 = v91;
    v92 = v87;
    v93 = v90;
    v94 = v139;
    v146 = v86;
    v141 = v88;
    v140 = v89;
    sub_242C7C708(v85, v139, v92, v86, v88, v89);
    sub_242C7C77C(v93, v67);
    sub_242C7DAF8(v155);
    v95 = v137;
    v96 = v138;
    v68 = BYTE8(v155[7]);
    v66 = v143;
    v97 = v185;
LABEL_40:
    *&v169 = v96;
    *(&v169 + 1) = v95;
    v170 = v152;
    v171 = v151;
    v172 = v145;
    v173 = v153;
    v174 = v154;
    v175 = v94;
    v176 = v92;
    v177 = v146;
    v178 = v141;
    v179 = v140;
    v180 = v150;
    v181 = v93;
    v182 = v67;
    v183 = v68;
    v98 = v148;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    *&v155[0] = *v98;
    *v98 = 0x8000000000000000;
    sub_242CDE800(&v169, v97, v66, v99);

    *v98 = *&v155[0];
    v100 = *&v184[0];
    v154 = *(&v184[55] + 1);
    LODWORD(v153) = LOBYTE(v184[56]);
    v152 = *(&v184[56] + 8);
    v101 = *(&v184[57] + 1);
    v102 = v147;
    v103 = v147[648];
    v151 = *(&v184[58] + 1);
    v104 = *&v184[59];
    v105 = swift_allocObject();
    *(v105 + 16) = v100;
    *(v105 + 24) = *(v184 + 8);
    v106 = *(&v184[1] + 8);
    *(v105 + 56) = *(&v184[2] + 8);
    *(v105 + 40) = v106;
    v107 = *(&v184[3] + 8);
    *(v105 + 88) = *(&v184[4] + 8);
    *(v105 + 72) = v107;
    v108 = *(&v184[5] + 8);
    *(v105 + 120) = *(&v184[6] + 8);
    *(v105 + 104) = v108;
    v109 = *(&v184[7] + 8);
    *(v105 + 152) = *(&v184[8] + 8);
    *(v105 + 136) = v109;
    v110 = *(&v184[9] + 8);
    *(v105 + 184) = *(&v184[10] + 8);
    *(v105 + 168) = v110;
    v111 = *(&v184[11] + 8);
    *(v105 + 216) = *(&v184[12] + 8);
    *(v105 + 200) = v111;
    v112 = *(&v184[13] + 8);
    *(v105 + 248) = *(&v184[14] + 8);
    *(v105 + 232) = v112;
    v113 = *(&v184[16] + 8);
    *(v105 + 264) = *(&v184[15] + 8);
    *(v105 + 280) = v113;
    v114 = v102[1];
    *(v105 + 296) = *v102;
    *(v105 + 312) = v114;
    v115 = v102[3];
    *(v105 + 328) = v102[2];
    *(v105 + 344) = v115;
    v116 = v102[5];
    *(v105 + 360) = v102[4];
    *(v105 + 376) = v116;
    v117 = v102[7];
    *(v105 + 392) = v102[6];
    *(v105 + 408) = v117;
    v118 = v102[9];
    *(v105 + 424) = v102[8];
    *(v105 + 440) = v118;
    v119 = v102[11];
    *(v105 + 456) = v102[10];
    *(v105 + 472) = v119;
    v120 = v102[13];
    *(v105 + 488) = v102[12];
    *(v105 + 504) = v120;
    v121 = v102[15];
    *(v105 + 520) = v102[14];
    *(v105 + 536) = v121;
    v122 = v102[17];
    *(v105 + 552) = v102[16];
    *(v105 + 568) = v122;
    v123 = v102[19];
    *(v105 + 584) = v102[18];
    *(v105 + 600) = v123;
    v124 = v102[21];
    *(v105 + 616) = v102[20];
    *(v105 + 632) = v124;
    v125 = v102[23];
    *(v105 + 648) = v102[22];
    *(v105 + 664) = v125;
    v126 = v102[25];
    *(v105 + 680) = v102[24];
    *(v105 + 696) = v126;
    v127 = v102[27];
    *(v105 + 712) = v102[26];
    *(v105 + 728) = v127;
    v128 = v102[29];
    *(v105 + 744) = v102[28];
    *(v105 + 760) = v128;
    v129 = v102[31];
    *(v105 + 776) = v102[30];
    *(v105 + 792) = v129;
    v130 = v102[33];
    *(v105 + 808) = v102[32];
    *(v105 + 824) = v130;
    v131 = v102[35];
    *(v105 + 840) = v102[34];
    *(v105 + 856) = v131;
    v132 = v102[37];
    *(v105 + 872) = v102[36];
    *(v105 + 888) = v132;
    *(v105 + 904) = v154;
    *(v105 + 912) = v153;
    *(v105 + 920) = v152;
    *(v105 + 936) = v101;
    *(v105 + 944) = v103;
    *(v105 + 952) = v151;
    *(v105 + 960) = v104;
    sub_242CA321C(v184, v155, &qword_27ECF0A70, &qword_242F0C398);

    v133 = sub_242CE1C20(v142, sub_242CE3D4C);
    v134 = v144;
    v135 = swift_isUniquelyReferenced_nonNull_native();
    *&v155[0] = *v134;
    sub_242CDEAC8(v133, v185, v66, v135);

    result = sub_242C7DAF8(&v156);
    *v134 = *&v155[0];
    return result;
  }

LABEL_42:

  __break(1u);
  return result;
}